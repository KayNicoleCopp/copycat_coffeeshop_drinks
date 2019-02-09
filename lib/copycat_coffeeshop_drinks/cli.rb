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
    puts "\nTo see the recipe for a drink, enter the corresponding drink number:"
    input = gets.strip.to_i
    max = CopycatCoffeeshopDrinks::Drink.all.length
    if input.between?(1,max)
      actual_drink = CopycatCoffeeshopDrinks::Drink.all[input-1]
      ingredients
      display_drink_ingredients(actual_drink)
      directions
      display_drink_directions(actual_drink)
    elsif
      puts "\nWhoops, looks like you entered an invalid number."
      puts "Please put in a valid number :)"
      choose_drink
    end
  end

  def ingredients
    puts ""
    puts "* I N G R E D I E N T S *"
  end

  def directions
    puts ""
    puts "* D I R E C T I O N S *"
  end

  def display_drink_ingredients(actual_drink)
    puts ""
    CopycatCoffeeshopDrinks::Scraper.scrape_ingredients(actual_drink)
    actual_drink.ingredients.each {|ingredient| puts ingredient}
  end

  def display_drink_directions(actual_drink)
    puts ""
    CopycatCoffeeshopDrinks::Scraper.scrape_directions(actual_drink)
    actual_drink.directions.each {|step| puts step}
  end

  def menu
    choose_drink
  end


  end
