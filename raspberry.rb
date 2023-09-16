
class Raspberry
  attr_accessor :state, :i
  @@states = %w[Bruh Blossoming Unripe Ripe]

  def initialize(i)
    @i = i
    @state = @@states[0]
  end

  def grow
    if @state != @@states.last
      @state = @@states[@@states.index(@state) + 1]
    end
  end

  def ripe?
    @state == @@states.last
  end

  def state_is
    puts "Growth state : "+@state
  end

end
