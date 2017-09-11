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
    new_fish = New.fish(name)
    @pets{:fishes => new_fish}
  end

end
