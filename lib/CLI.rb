class CLI
  attr_accessor :state, :city, :category
  
  def start
    puts "Welcome to your Craigslist personal assistant!"
    puts "To start, please enter the full name of a state you would like to search in."
    @state = gets.strip.downcase
    while !valid_city?(@city)
    puts "Sorry, I can't seem to find that city.  "
  end
  
  def valid_state?(state)
  end
end