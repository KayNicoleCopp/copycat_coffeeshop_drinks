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
    input = gets.strip.downcase
    if input.to_i.between?(1,22)
      actual_drink = CopycatCoffeeshopDrinks::Drink.all[input.to_i-1]
      ingredients
      display_drink_ingredients(actual_drink)
      directions
      display_drink_directions(actual_drink)
      second_menu
    elsif input == "choose drink" #this needs to be fixed to make it more user friendly
      choose_drink
    elsif input == "done"
      goodbye
    else
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
    puts "\nTo see the recipe for a drink, enter the corresponding drink number:"
    choose_drink
    end

def second_menu
    puts "\nType a new drink number to view another coffee drink recipe or 'done' at anytime to leave."
    choose_drink
  end

  def goodbye
    puts "\nThanks for stopping by! Come back soon for another fancy coffee drink recipe!"
  end


  end
