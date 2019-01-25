# Commit 1 - Pseudocode for Daffy Duck Speech

  # input: 
  # output: 

  # Steps
  # 1 - 
  # 2 -
  # 3 - 


# Commit 2 - Initial Solution

# def daffify(message)
#   message = message.gsub(/ss/, 'th')
#   message.gsub(/[sS]/, 's' => 'th', 'S' => 'Th')

#   # message = message.gsub(/ss/, 'th')
#   # message = message.gsub(/s/, 'th')
#   # message = message.gsub(/S/, 'Th')

#   # write code here  
# end

# p daffify("this is awesome")
# puts daffify("This is ridiculous") == "Thith ith ridiculouth"
# puts daffify("That's why I always work solo") == "That'th why I alwayth work tholo"
# puts daffify("Such a sourpuss") == "Thuch a thourputh" # bonus, needs more logic
# p daffify("Such a sourpuss")

# Commit 4 - Refactor Solution

  # refactor daffify method


# Commit 3 - Write Runner Code / Tests

  # daffify runner code

# Bonus Commit 1 - Pseudocode for Porky Pig Speech

  # input: 
  # output: 

  # Steps
  # 1 - 
  # 2 -
  # 3 - 


# Bonus Commit 2 - Initial Solution

def porkify(message, dictionary)
  message = message.split
  vowels = ["a", "e", "i", "o", "u"]
  i = 0

  message.length.times do
    if dictionary.include?(message[i]) == true
      if vowels.include?(message[i][1]) == true
        message[i] = 'eh ' + message[i][0] + "uh " + message[i][0].upcase + "EH " + "eh " + message[i]
      else
        message[i] = 'eh ' + message[i][0] + message[i][1] + " " + message[i][0].upcase + message[i][1].upcase + " " + "eh " + message[i]
      end
    end
    i += 1
  end
  # message.each do |word|
  #     if dictionary.include?(word) == true 
  #       p word = word + "yes"
  #       p message
  #     end

  # end

  message = message.join(" ")
  message.insert(-1, ".")
  # write code here  
end

dictionary = ["this", "place", "tomorrow", "rust", "vowel"]

puts porkify("this is a nice place", dictionary) == "eh th TH eh this is a nice eh pl PL eh place."
puts porkify("this is a nice place", dictionary)
puts porkify("this is a vowel", dictionary)
# Bonus Commit 4 - Refactor Solution

    # refactor porkify method


# Bonus Commit 3 - Write Runner Code / Tests

    # porkify runner code
