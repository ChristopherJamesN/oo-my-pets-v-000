class Owner
  attr_accessor :name
  attr_reader :species
  @@all=[]

  def initialize(name)
    @name=name
    @species = "human"
    @@all.push(self)
  end

  def self.reset_all
    @@all=[]
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    pets
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fish].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:fish].each do |fish|
      fish.mood = "nervous"
    end
  end

    def list_pets
      @pets[:dogs].each do |dog|
        dog
      end
      @pets[:cats].each do |cat|
        cat
      end
      @pets[:fish].each do |fish|
        fish
      end
    end


end
