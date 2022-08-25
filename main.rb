require 'pry-byebug'
def caesor_cipher(phrase,shift_factor = 5 )
    phrase
    alphabet = ['A','a', 'B','b', 'C','c', 'D','d', 'E','e', 'F','f', 'G','g', 'H','h', 'I','i', 'J','j', 'K','k', 'L','l', 'M','m', 'N','n', 'O','o', 'P','p', 'Q','q', 'R','r', 'S','s', 'T','t', 'U','u', 'V','v', 'W','w', 'X','x', 'Y','y', 'Z','z']
    new_index_array = []

    split_array = phrase.split('')

    split_array.each do |indiv_letter|#for each letter from phrase
        if !(alphabet.include?(indiv_letter)) 
            new_index_array.push(indiv_letter)#blank spaces now in the index array
        
        else
        alphabet.each_with_index do |indiv_alphabet,index|#check the match against the alphabet
            if indiv_letter == indiv_alphabet
                initial_pos = ((index +1) + (2*shift_factor)) #find the index of alphabet add 1 to find pos in the actual alphabet and account for the shift_factor
                new_index_array.push initial_pos
        end
            end
        end
    end

    p new_index_array
    new_alphabet_array =[]
    new_index_array.each do |new_index|
        if (new_index.to_i > 51)
            new_index = (new_index - 52)#this num is found using trial and error. The number should allow it cycle from z-a accurately
        end
        if !((-50..51).include?(new_index))
            new_alphabet_array.push(new_index)
        
        else
            new_alphabet_array.push(alphabet[new_index - 1])
        end
    end
    new_alphabet = new_alphabet_array.join
    p new_alphabet
end

caesor_cipher('What a string!')

