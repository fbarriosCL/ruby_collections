require_relative 'computer'

class Factory 
  begin
    puts 'Enter any type computer'
    klass = gets.gsub(/\n/,"").capitalize
    Computer.const_get(klass).is_a?(Class)
    puts 'Enter any brand computer'
    brand = gets
    puts 'Enter any model computer'
    model = gets
    puts "create object"
    object = Computer.const_get(klass)
    input = object.new(1, brand, model)
    puts "The object(#{object}) is create with attributes:"
    puts "id: #{input.id}"
    puts "brand: #{input.brand}"
    puts "model: #{input.model}"
  rescue Exception => e
    puts "error: #{e}"  
  end
end