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


animals.keys_of('Madagascar')   

    

=begin
  it "returns red-footed tortoise in an array for the animal hash when passed the argument 'Panama'" do
    result = animals.keys_of('Panama')
    expect(result).to include("red-footed tortoise")
    expect(result.length).to eq(1)
  end

  it "returns two species in an array for the animal hash when passed the argument 'Madagascar'" do
    result = animals.keys_of('Madagascar')
    ["aye-aye", "tomato frog"].each {|animal| expect(result).to include(animal) }
    expect(result.length).to eq(2)
  end
=end 

