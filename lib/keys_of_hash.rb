require 'pry'

animals = {
  "sugar glider"=>"Australia",
  "aye-aye"=> "Madagascar",
  "red-footed tortoise"=>"Panama",
  "kangaroo"=> "Australia",
  "tomato frog"=>"Madagascar",
  "koala"=>"Australia"
}

# Return array with every key marching input arguments
class Hash
  def keys_of(*arguments)
    # Create new array of keys when arguments match hash values. Replace false values with nil and then remove with compact.
    self.map { |key, value| arguments.include?(value) ? key : nil }.compact
  end
end