# our CLI Controller

class CopycatCoffeeshopDrinks::CLI

  def call  #instance method
    puts "Welcome Fellow Coffee Lovers!"
    puts "Please choose 1 of my 5 favorite coffee drinks from the list below that you'd like to make!"
    puts "Type either 'creamy caramel mocha', 'holiday peppermint mocha', 'creamy irish coffee', 'iced coffee latte', or 'hazelnut coffee'"
    input = gets.strip.downcase
    puts input
  end

end
