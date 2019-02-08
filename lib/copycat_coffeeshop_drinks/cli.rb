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
      drink = CopycatCoffeeshopDrinks::Drink.all[input-1]
      display_drink_recipe(drink)
    else
      puts "\nPlease put in a valid number :)"
      choose_drink
    end
  end

  def display_drink_recipe(drink)
    binding.pry 
  end

    def menu
       choose_drink
        #if input.to_i > 0 #&& <= CopycatCoffeeshopDrinks::Drinks.size
        #CopycatCoffeeshopDrinks::Scraper.scrape_instruction_card
        #need to see ingredients and instructions
        #elsif input == "exit"
        #puts "Thanks for stopping by!"
        #end
     end

  end





# # our CLI Controller
#
# class CopycatCoffeeshopDrinks::CLI
#
#   def call  #instance method
#     puts "Welcome Fellow Coffee Lovers!"
#     puts "Please choose 1 of my 5 favorite coffee drinks from the list below that you'd like to make!"
#     puts "Type either 'creamy caramel mocha', 'holiday peppermint mocha', 'creamy irish coffee', 'iced coffee latte', or 'hazelnut coffee'"
#     input = gets.strip.downcase
#     case input
#     when "creamy caramel mocha"
#       puts "in creamy caramel mocha"
#       #Scrape the creamy caramel mocha page
#       url = "https://www.tasteofhome.com/recipes/creamy-caramel-mocha/"
#       CopycatCoffeeshopDrinks::Scraper.scrape_drinks(url)
#     when "holiday peppermint mocha"
#       puts "in holiday peppermint mocha"
#       #Scrape the holiday peppermint mocha page
#       url = "https://www.tasteofhome.com/recipes/holiday-peppermint-mocha/"
#       CopycatCoffeeshopDrinks::Scraper.scrape_drinks(url)
#     when "creamy irish coffee"
#       puts "in creamy irish coffee"
#       #Scrape the creamy irish coffee page
#       url = "https://www.tasteofhome.com/recipes/creamy-irish-coffee/"
#       CopycatCoffeeshopDrinks::Scraper.scrape_drinks(url)
#     when "iced coffee latte"
#       puts "in iced coffee latte"
#       #Scrape the iced coffee latte page
#       url = "https://www.tasteofhome.com/recipes/iced-coffee-latte/"
#       CopycatCoffeeshopDrinks::Scraper.scrape_drinks(url)
#     when "hazelnut coffee"
#       puts "in hazelnut coffee"
#       #Scrape the hazelnut coffee page
#       url = "https://www.tasteofhome.com/recipes/hazelnut-coffee/"
#       CopycatCoffeeshopDrinks::Scraper.scrape_drinks(url)
#     when "exit"
#       puts "Goodbye!"
#     else
#       #they did not put in correct input
#       puts "Invalid!"
#     end
#   end
#
# end
