require_relative  'auto'
require_relative 'fleet'

def main
auto_one=Auto.new("BMW", "X5 3,0D", 2017, 9.5845574007079)
auto_two=Auto.new("ВАЗ", "ВАЗ-21312", 2000, 11.198584761909508)
#pp auto_one
#pp auto_two
#puts auto_one
#puts auto_two
list1=Fleet.new
list1.add(auto_one)
list1.add(auto_two)
list1.load_from_file
pp list1
puts "Cредний расход бензина у всех известных автомобилей: #{list1.average_consumption}"
puts "Количество найденных автомобилей данной марки: #{list1.number_by_brand("BMW")}"
puts "Cреднее потребление бензина для найденных автомобилей данной марки: #{list1.consumption_by_brand("BMW")}"

  end

  # Keep it in the bottom of the file
  if __FILE__ == $0
      main
  end