require 'humanize'

def welcome
    puts `clear`
    puts "Welcome to 4 is the magic number."
    
    get_user_response
end

def get_user_response
    puts "Please input a positive number."

    user_number = gets.chomp
    
    
    if validate?(user_number)
        display_results(user_number.to_i)
    else
        puts "Invalid response, try again"
        get_user_response
    end
    
end


def display_results(number)
    if (number == 4)
        puts "And the magic number is 4."
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
