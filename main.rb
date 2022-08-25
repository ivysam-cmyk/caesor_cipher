
def caesor_cipher(phrase,shift_factor = 4 )
    alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    alphabet = alphabet.map do |each_alphabet|
        each_alphabet.downcase
    end
    new_index_array = []

    split_array = phrase.split('')

    split_array.each do |indiv_letter|#for each letter from phrase
        if !(alphabet.include?(indiv_letter)) 
            new_index_array.push(indiv_letter)#blank spaces now in the index array
        
        else
        alphabet.each_with_index do |indiv_alphabet,index|#check the match against the alphabet
            if indiv_letter == indiv_alphabet
                initial_pos = ((index +1) - shift_factor) #find the index of alphabet add 1 to find pos in the actual alphabet and account for the shift_factor
                new_index_array.push initial_pos
        end
            end
        end
    end

    p new_index_array
    new_alphabet_array =[]
    new_index_array.each do |new_index|
        if !((0..25).include?(new_index))
            new_alphabet_array.push(new_index)
        
        else
            new_alphabet_array.push(alphabet[new_index - 1])
        end
    end
    new_alphabet = new_alphabet_array.join
    p new_alphabet
end

caesor_cipher('hello you!')

