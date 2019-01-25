# our CLI Controller

class CopycatCoffeeshopDrinks::CLI

  def call  #instance method
    puts "Welcome fellow coffee lovers!"
    puts "Ready to save a little money and still enjoy a tasty cup-o-joe?"
    puts "Below are 22 coffee drinks you can make in the comfort of your own kitchen!"
    list_drinks
    main_menu
  end

end
