require './modules/Contactable.rb'
require './classes/Person.rb'
require "./classes/User.rb"

def create()
    puts "Enter your name: "
    name = gets.chomp
    
    puts "Enter your email: "
    email = gets.chomp
    
    puts "Enter your mobile: "
    mobile = gets.chomp
    
    user = User.new(name, email, mobile).create()
end

while true
    print"""
    +=======================================================================================+
    |                                      1. Create User                                   |
    |                                      2. List Users                                    |
    |                                      3. Exit                                          |
    +=======================================================================================+
    """
    user_choice = gets.chomp
    case user_choice.to_i
    when 1
        create
    when 2
        User.list
    when 3
        break;
    end
end