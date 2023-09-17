
class Farmer
  attr_accessor :name, :rasp_bush

  def initialize(name, rasp_bush)
    @name =name
    @rasp_bush = rasp_bush
  end

  def care_for_bush
    @rasp_bush.grow_raspberries
  end

  def harvest
    number_of_raspberries = @rasp_bush.number_of_raspberries
    if @rasp_bush.harvest == 0
      puts "Chill out, the fruit ain't ready yet!"
      @rasp_bush.raspberries_state
    else
      puts "You have harvested #{number_of_raspberries.to_s} raspberries!"

    end
  end

  def self.knowledge_base
    puts "Gardening Tips:"
    puts "- Raspberry plants go through several stages of ripening: None, Flowering, Green, Red."
    puts "- To take care of a raspberry bush, use the 'work!' method to help it grow."
    puts "- Use the 'harvest' method to check if all the raspberries are ripe and collect the harvest."
  end
  
end
