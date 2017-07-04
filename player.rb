module MathGame 
  class Player

    attr_accessor :name, :lives
#initializes each players name and lives with a max of 3 lives
    def initialize(name)
      @name = name
      @lives = 3
    end
#defining a funciton wrong that takes away one life
    def wrong 
      @lives -= 1
    end

  end
end