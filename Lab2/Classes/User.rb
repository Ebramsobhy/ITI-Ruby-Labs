class User < Person
    include Contactable
    attr_accessor :email, :mobile
  
    def initialize(name, email, mobile)
      super(name)
      @email = email
      @mobile = mobile
    end
  
    # Check if the mobile number is valid
    def self.valid_mobile?(mobile)
      if /^[0]\d{10}$/.match(mobile)
        return true
      else
        puts "Invalid mobile number"
        return false
      end
    end
  
    # Check if the email is valid
    def self.valid_email?(email)
      if /^[a-zA-Z]+[0-9]*@[a-zA-Z]+\.[a-zA-Z]+$/.match(email)
        return true
      else
        puts "Invalid email"
        return false
      end
    end
  
    # Create a new user
    def create()
      if valid_name?() && self.class.valid_email?(email) && self.class.valid_mobile?(mobile)
        File.open('./db/db.txt', 'a') do |f|
          f.puts "#{@name}    |   #{@email}  |   #{@mobile}"
        end
        puts "User #{@name} created successfully"
      else
        puts "Invalid data try again"
        return false
      end
    end
  
    # List all users
    def self.list()
      File.open('./db/db.txt', 'r') do |f|
        f.each_line do |line|
          puts line
        end
      end
    end
  end