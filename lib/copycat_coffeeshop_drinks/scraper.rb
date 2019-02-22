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

 def self.scrape_drink_details(actual_drink)
    webpage = Nokogiri::HTML(open(actual_drink.link))
    array_of_ingredients = webpage.css(".recipe-ingredients li")
    actual_drink.ingredients = array_of_ingredients.map {|ingredient| ingredient.text}
    array_of_directions = webpage.css(".recipe-directions__list li")
    actual_drink.directions = array_of_directions.map {|step| step.text}
  end

end
