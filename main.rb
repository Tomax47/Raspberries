require_relative "farmer.rb"
require_relative "raspberry_bush.rb"
class Main

  Farmer.knowledge_base
  puts "Enter the commands desired or q to quit"

  puts "Enter the farmer's name : "
  farmer_name = gets.chomp
  puts "How many raspberries you wanna grow in the bush? "
  raspberries_number = gets.chomp.to_i

  raspberry_bush = RaspberryBush.new(raspberries_number)
  farmer = Farmer.new(farmer_name,raspberry_bush)


  while true

    if raspberry_bush.bush_empty?
      puts "Opps! The bush is out of raspberries, would u like to plant more? [Y|N]"
      optional = gets.chomp

      if optional == "Y"
        puts "How many raspberries you wanna grow in the bush? "
        raspberries_number = gets.chomp.to_i
        raspberry_bush = RaspberryBush.new(raspberries_number)

        farmer.rasp_bush =raspberry_bush

      elsif optional == "N"
        puts "Enjoy your raspberries, and plant something irl :)"
        break
      else
        puts "Invalid input, bush is dead!"
        break
      end

    end

    print "Enter an action [1- take care of the bush, 2- harvest the raspberries] : "

    input = gets.chomp
    if input == "1"
      farmer.care_for_bush
    elsif input == "2"
      farmer.harvest
    elsif input == "q"
      puts "The bush is dead, plant another one!"
      break
    else
      puts "Incorrect input!"
    end
    puts
  end

end
