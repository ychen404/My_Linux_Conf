def is_word_guessed(secret_word, letters_guessed):
    '''
    secret_word: string, the word the user is guessing; assumes all letters are
      lowercase
    letters_guessed: list (of letters), which letters have been guessed so far;
      assumes that all letters are lowercase
    returns: boolean, True if all the letters of secret_word are in letters_guessed;
      False otherwise
    '''
    # FILL IN YOUR CODE HERE AND DELETE "pass"
    index = 0
    secret_list = []
    while index < len(secret_word):
        letter = secret_word[index]
        print letter
        secret_list.append(letter)
        index = index + 1

    #print(letters_guessed)
    #print(secret_word)
    print(secret_list)

    if (secret_list == letters_guessed):
        return True
    else:
        return False
if __name__ == "__main__":
    # pass

    # To test part 2, comment out the pass line above and
    # uncomment the following two lines.
    
    #secret_word = choose_word(wordlist)
    secret_word = "apple"
    letter_guessed = ['a','b','c','e','f','g']
    
    print(is_word_guessed(secret_word, letter_guessed))
    #print(is_word_guessed("apple",letter_guessed))
