require 'humanize'

def welcome
    puts `clear`
    puts "Welcome to '4 Is The Magic Number'."
    
    get_user_response
end

def get_user_response
    puts "Please input a positive number or quit to end."

    user_number = gets.chomp
    exit if user_number.downcase == 'quit'
    
    if validate?(user_number)
        display_results(user_number.to_i)
    else
        puts "Invalid response, try again"
        get_user_response
    end
    
end


def display_results(number)
    if (number == 4)
        puts "And 4 is the magic number."
        sleep(4)
        get_user_response
    else
        number_length = number.humanize.length
        puts "#{number} is #{number_length}"

        display_results(number_length)
    end
    
end

def validate?(number)
    !!(number =~ /^\d+$/ )
end


welcome
