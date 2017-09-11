class Owner
  attr_accessor :name, :species
  @@all=[]

  def initialize(name)
    @name=name
    @species = "human"
    @@all.push(self)
  end

  def self.reset_all
    @@all=[]
  end

  def all
    @@all
  end

end
