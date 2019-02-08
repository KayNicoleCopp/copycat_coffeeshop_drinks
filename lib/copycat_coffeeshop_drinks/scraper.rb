class CopycatCoffeeshopDrinks::Scraper

  def self.scrape_drinks
    webpage = Nokogiri::HTML(open("https://www.tasteofhome.com/collection/homemade-coffee-shop-drinks/view-all/"))
    drinks = webpage.css("div.listicle-page")
    drinks.each do |drink_card|
      title = drink_card.css("h4.listicle-page__title a").text
      link = drink_card.css("h4.listicle-page__title a").attribute("href").value
      drink = CopycatCoffeeshopDrinks::Drink.new(title, link)
    end
  end

 def self.scrape_ingredients(actual_drink)
    webpage = Nokogiri::HTML(open(actual_drink.link))
    ingredients = webpage.css(".recipe-ingredients")
    binding.pry
  end

    #ingredient_card.map do |link|
      #binding.pry
      #CopycatCoffeeshopDrinks::Ingredients.new(link, text)

end
