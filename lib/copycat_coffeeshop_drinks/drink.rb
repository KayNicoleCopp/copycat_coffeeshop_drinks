class CopycatCoffeeshopDrinks::Drink
attr_accessor :title, :link

@@all = []
def initialize(title, link)
  @title = title
  @link = link
  @@all << self #saving or remembering the object
  #binding.pry
end

def self.all
  @@all
end

def save
  @@all << self
end

end