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
    key_array = []
    
    # Cycle through arguments to match with hash
    arguments.each do |argument|
      self.map do |key, value|
        key_array << key if argument == value 
      end
    end 

    binding.pry 
    key_array
  end
end