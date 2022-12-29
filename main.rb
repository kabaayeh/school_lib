require_relative 'app'

def main
  puts menu
end

 # App Menu
 def menu
  puts 'Welcome to School Library App!'
  loop do
    puts ''
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    puts ''
    user_input = gets.chomp.to_i
    puts ''

    app = App.new
    case user_input
    when 1..6 then app.run_option(user_input)
    when 7 then puts 'Thank you for using the app!'
    else puts 'Please enter valid option'
    end
    break unless user_input != 7
  end
end

main
