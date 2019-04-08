require 'pry'

# Return array with every key marching input arguments
class Hash
  def keys_of(*arguments)
    # Create new array of keys when arguments match hash values. Replace false values with nil and then remove with compact.
    self.map { |key, value| arguments.include?(value) ? key : nil }.compact
  end
end