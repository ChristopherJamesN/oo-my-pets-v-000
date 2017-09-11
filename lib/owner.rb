class Owner
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
  end

  def reset_all
    @@all=[]
  end
  
end
