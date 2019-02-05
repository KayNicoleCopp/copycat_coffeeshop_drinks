class CopycatCoffeeshopDrinks::Drinks
attr_accessor :title, :link

@@all = []
def initialize(title)
  @title = title
  #@link = link
  @@all << self #saving or remembering the object
  #binding.pry
end

def self.all
  @@all
end

end
