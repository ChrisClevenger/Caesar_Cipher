## Input a string and a given shift factor 
## Method should resemble caesar_cipher("What a string!", 5)
def caesar_cipher(string, shift_factor)


## Convert the string to an array of characters using .split

    characters = string.split("")

## Convert characters in the array to ASCII numberical values using for each and .ord

    encrypted_characters = characters.map do |item| 
    ascii_value = item.ord 

## Create a method that adds the shift factor to each ord between 65..90 and 97..122

        if item.match?(/[A-Z]/)  ## For upcase
            shifted_value = (ascii_value - 65 + shift_factor) % 26 + 65
        elsif item.match?(/[a-z]/) ## For downcase
            shifted_value = (ascii_value - 97 + shift_factor) % 26 + 97
        else 
            ascii_value # For non alphabetical
        end



## Convert new ord # to chr. Edited chr method to account for nil

        shifted_value.nil? ? item : shifted_value.chr
    end 



## Join the array of new letters 

    encrypted_string = encrypted_characters.join("")



## Puts new cipher 

    puts encrypted_string 


end 

caesar_cipher("Test", 1)