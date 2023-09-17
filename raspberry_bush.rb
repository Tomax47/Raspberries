require_relative "raspberry.rb"

class RaspberryBush

  def initialize(number_of_raspberries)

    @raspberries = []

    number_of_raspberries.times do |i|
      #@raspberry = Raspberry.new(i)
      #@raspberries.append(@raspberry)
      # The following, does the same function as the above!
      @raspberries << Raspberry.new(i)
    end


    def grow_raspberries
      @raspberries.each(&:grow)
      puts "Growing your raspberries"
    end

    def clear_bush
      @raspberries.clear
    end

    def raspberries_ripe?
      @raspberries.all?(&:ripe?)
    end

    def raspberries_state
      @raspberries.last.state_is
    end

    def harvest
      if raspberries_ripe?
        clear_bush
        return 1
      else
        return 0

      end
    end
  end

  def bush_empty?
    @raspberries.length == 0
  end

  def number_of_raspberries
    return @raspberries.length
  end

end
