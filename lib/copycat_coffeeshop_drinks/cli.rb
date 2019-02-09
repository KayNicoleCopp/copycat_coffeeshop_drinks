class CopycatCoffeeshopDrinks::CLI

  def call  #instance method
    puts "Welcome Fellow Coffee Lovers!"
    puts "Below is a list of fancy coffee drinks you can make in the comfort of your own kitchen!"
    puts ""
    list_drinks
    menu
  end

  def list_drinks
    CopycatCoffeeshopDrinks::Scraper.scrape_drinks
    all_drinks = CopycatCoffeeshopDrinks::Drink.all
    all_drinks.each.with_index(1) {|drink, index| puts "#{index}. #{drink.title}"}
  end

  def choose_drink
    puts "\nTo see the recipe for a drink, enter the corresponding number below:"
    input = gets.strip.to_i
    max = CopycatCoffeeshopDrinks::Drink.all.length
    if input.between?(1,max)
      actual_drink = CopycatCoffeeshopDrinks::Drink.all[input-1]
      display_drink_ingredients(actual_drink)
      display_drink_directions(actual_drink)
    else
      puts "\nPlease put in a valid number :)"
      list_drinks
      choose_drink
    end
  end

  def display_drink_ingredients(actual_drink)
    CopycatCoffeeshopDrinks::Scraper.scrape_ingredients(actual_drink)
    actual_drink.ingredients.each {|ingredient| puts ingredient}
  end

  def display_drink_directions(actual_drink)
    CopycatCoffeeshopDrinks::Scraper.scrape_directions(actual_drink)
    actual_drink.directions.each {|step| puts step}
  end

  def menu
    choose_drink
  end

  end
