# delcare array with items names
four_letter_animals = ["Calf", "Duck", "Elephant", "Goat", "Lamb", "Lion", "Mule", "Dog"]

#add item to end of array
four_letter_animals.push("Puma")

#add item to specific position in array
four_letter_animals.insert(4, "Joey")

#Remove item by name
four_letter_animals.delete("Dog")

#reverse the order of array items
four_letter_animals = four_letter_animals.reverse
 
#create a variable, then assign the index to it by searching the name
r = four_letter_animals.index("Elephant")

#assign a new name to the index by referencing the variable
four_letter_animals[r] = "Foal"

#add item to end of array
four_letter_animals.push("Bear")

#reverse the other of the array items
four_letter_animals = four_letter_animals.reverse

#print the array to the screen on a new line
puts four_letter_animals
