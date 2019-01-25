# our CLI Controller

class CopycatCoffeeshopDrinks::CLI

  def call  #instance method
    puts "Welcome Fellow Coffee Lovers!"
    puts "Please choose 1 of my 5 favorite coffee drinks from the list below that you'd like to make!"
    puts "Type either 'creamy caramel mocha', 'holiday peppermint mocha', 'creamy irish coffee', 'iced coffee latte', or 'hazelnut coffee'"
    input = gets.strip.downcase
    case input
    when "creamy caramel mocha"
      puts "in creamy caramel mocha"
      #Scrape the creamy caramel mocha page
      url = "https://www.tasteofhome.com/recipes/creamy-caramel-mocha/"
      CopycatCoffeeshopDrinks::Scraper.scrape_drink_names(url)
    when "holiday peppermint mocha"
      puts "in holiday peppermint mocha"
      #Scrape the holiday peppermint mocha page
      #https://www.tasteofhome.com/recipes/holiday-peppermint-mocha/
    when "creamy irish coffee"
      puts "in creamy irish coffee"
      #Scrape the creamy irish coffee page
      #https://www.tasteofhome.com/recipes/creamy-irish-coffee/
    when "iced coffee latte"
      puts "in iced coffee latte"
      #Scrape the iced coffee latte page
      #https://www.tasteofhome.com/recipes/iced-coffee-latte/
    when "hazelnut coffee"
      puts "in hazelnut coffee"
      #Scrape the hazelnut coffee page
      #https://www.tasteofhome.com/recipes/hazelnut-coffee/
    when "exit"
      puts "Goodbye!"
    else
      #they did not put in correct input
      puts "Invalid!"
    end
  end

end
