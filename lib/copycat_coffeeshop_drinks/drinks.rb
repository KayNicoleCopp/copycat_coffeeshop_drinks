class CopycatCoffeeshopDrinks::Drinks
attr_accessor :title
@@all = []
def initialize(title)
  @title = title
  @@all << self #saving or remembering the object
end

def self.all
  @@all
end

end
