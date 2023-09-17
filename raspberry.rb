
class Raspberry
  attr_accessor :state, :i
  @@states = %w[Bruh Blossoming Unripe Ripe]

  def initialize(i)
    @i = i
    @state = @@states[0]
  end

  def grow
    @state = @@states[@@states.index(@state) + 1] unless @@states.last
  end

  def ripe?
    @state == @@states.last
  end

  def state_is
    puts "Growth state : "+@state
  end

end
