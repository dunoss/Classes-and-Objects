class Cat
  attr_accessor :name, :preferred_food, :meal_time
    def initialize(name, preferred_food, meal_time)
      @name = name
      @preferred_food = preferred_food
      @meal_time = meal_time
    end

    def eat_at
      if @meal_time > 12
        return "#{@meal_time} PM"
      else
        return "#{@meal_time} AM"
      end
    end

    def meow
      "my name is #{@name} and I eat #{@preferred_food} at #{eat_at}."
    end
end

bumbum = Cat.new("Mr. BumBum" , "Mouse Mousse" , 22)
merlin = Cat.new("Merlin" , "CatNip Everdeen" , 5)
