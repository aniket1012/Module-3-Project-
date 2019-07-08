# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all 

Question.delete_all

Round.delete_all

puts "made some categories "

cat1 = Category.create(name: "General Knowledge")
cat2 = Category.create(name: "Animals")
cat3 = Category.create(name: "Geography")
cat4 = Category.create(name: "History") 
cat5 = Category.create(name: "Movies")

user1 = User.create(name: "bill")

r1 = Round.create(user_id: user1.id)

# q1 = Question.create(category_id: cat1.id, difficulty: 'easy', question: 'Gumbo is a stew that originated in Louisiana.', correct_answer: 'True', round_id: r1.id)
# q2 = Question.create(category_id: cat2.id, difficulty: 'easy', question: 'A slug’s blood is green.', correct_answer: 'True', round_id: r1.id)
# q3 = Question.create(category_id: cat3.id, difficulty: 'easy', question: 'A group of islands is called an archipelago.', correct_answer: 'True', round_id: r1.id)
# q4 = Question.create(category_id: cat4.id, difficulty: 'easy', question: 'Japan was part of the Allied Powers during World War I.', correct_answer: 'True', round_id: r1.id)
# q5 = Question.create(category_id: cat5.id, difficulty: 'easy', question: 'Han Solo’s co-pilot and best friend, “Chewbacca”, is an Ewok.', correct_answer: 'False', round_id: r1.id)

q1 = Question.create(category_id: cat1.id, difficulty: "easy", question: "Gumbo is a stew that originated in Louisiana.", correct_answer: "True", round_id: r1.id)

q2 = Question.create(category_id: cat1.id, difficulty: "easy", question: "'Ananas' is mostly used as the word for Pineapple in other languages.", correct_answer: "True", round_id: r1.id)

q3 = Question.create(category_id: cat1.id, difficulty: "easy", question: "The color orange is named after the fruit.", correct_answer: "True", round_id: r1.id)

q4 = Question.create(category_id: cat1.id, difficulty: "easy", question: "Albert Einstein had trouble with mathematics when he was in school.", correct_answer: "False", round_id: r1.id)

q5 = Question.create(category_id: cat1.id, difficulty: "easy", question: "Sitting for more than three hours a day can cut two years off a person’s life expectancy.", correct_answer: "True", round_id: r1.id)


# cat1.id - MEDIUM (5)

q6 = Question.create(category_id: cat1.id, difficulty: "medium",question: "When you cry in space, your tears stick to your face.", correct_answer: "True", round_id: r1.id)

q7 = Question.create(category_id: cat1.id, difficulty: "medium", question: "One of Donald Trump’s 2016 Presidential Campaign promises was to build a border wall between the United States and Mexico.", correct_answer: "True", round_id: r1.id)

q8 = Question.create(category_id: cat1.id, difficulty: "medium", question: "There are 86400 seconds in a day.", correct_answer: "True", round_id: r1.id)

q9 = Question.create(category_id: cat1.id, difficulty: "medium", question: "The scientific name for the Southern Lights is Aurora Australis?", correct_answer: "True", round_id: r1.id)

q10 = Question.create(category_id: cat1.id, difficulty: "medium", question: "French is an official language in Canada.", correct_answer: "True", round_id: r1.id)

# cat1.id - HARD (5)

q11 = Question.create(category_id: cat1.id, difficulty: "hard", question: "Dihydrogen Monoxide was banned due to health risks after being discovered in 1983 inside swimming pools and drinking water.", correct_answer: "False", round_id: r1.id)

q12 = Question.create(category_id: cat1.id, difficulty: "hard", question: "The Lego Group was founded in 1932.", correct_answer: "True", round_id: r1.id)

q13 = Question.create(category_id: cat1.id, difficulty: "hard", question: "Scotland voted to become an independent country during the referendum of September 2014.", correct_answer: "False", round_id: r1.id)

q14 = Question.create(category_id: cat1.id, difficulty: "hard", question: "The bikini is named after the “Bikini Atoll”; an island where the United States conducted tests on atomic bombs.", correct_answer: "True", round_id: r1.id)

q15 = Question.create(category_id: cat1.id, difficulty: "hard", question: "The French word for ‘glass’ is ‘glace’.", correct_answer: "False", round_id: r1.id)

# Animals - EASY (5)

q16 = Question.create(category_id: cat2.id, difficulty: "easy", question: "A slug’s blood is green.", correct_answer: "True", round_id: r1.id)

q17 = Question.create(category_id: cat2.id, difficulty: "easy", question: "Kangaroos keep food in their pouches next to their children.", correct_answer: "False", round_id: r1.id)

q18 = Question.create(category_id: cat2.id, difficulty: "easy", question: "A bear does NOT defecate during hibernation. ", correct_answer: "True", round_id: r1.id)

q19 = Question.create(category_id: cat2.id, difficulty: "easy", question: "Rabbits are rodents.", correct_answer: "False", round_id: r1.id)

q20 = Question.create(category_id: cat2.id, difficulty: "easy", question: "A flock of crows is known as a homicide.", correct_answer: "False", round_id: r1.id)

# Animals - MEDIUM (5)

q21 = Question.create(category_id: cat2.id, difficulty: "medium", question: "Cats have whiskers under their legs.", correct_answer: "True", round_id: r1.id)

q22 = Question.create(category_id: cat2.id, difficulty: "medium", question: "The Killer Whale is considered a type of dolphin.", correct_answer: "True", round_id: r1.id)

q23 = Question.create(category_id: cat2.id, difficulty: "medium", question: "The Platypus is a mammal.", correct_answer: "True", round_id: r1.id)

q24 = Question.create(category_id: cat2.id, difficulty: "medium", question: "The average lifespan of a wildcat is only around 5-6 years. ", correct_answer: "False", round_id: r1.id)

q25 = Question.create(category_id: cat2.id, difficulty: "medium", question: "A group of flamingos is called a ‘flamboyance’.", correct_answer: "True", round_id: r1.id)

# Animals - HARD (5)

q26 = Question.create(category_id: cat2.id, difficulty: "hard", question: "The Axolotl is an amphibian that can spend its whole life in a larval state.", correct_answer: "True", round_id: r1.id)

q27 = Question.create(category_id: cat2.id, difficulty: "hard", question: "In 2016, the IUCN reclassified the status of Giant Pandas from endangered to vulnerable.", correct_answer: "True", round_id: r1.id)

q28 = Question.create(category_id: cat2.id, difficulty: "hard", question: "A caterpillar has more muscles than humans do.", correct_answer: "True", round_id: r1.id)

q29 = Question.create(category_id: cat2.id, difficulty: "hard", question: "The Ceratosaurus, a dinosaur known for having a horn on the top of its nose, is also known to be a descendant of the Tyrannosaurus Rex.", correct_answer: "False", round_id: r1.id)

q30 = Question.create(category_id: cat2.id, difficulty: "hard", question: "Otters are known to hold lifelong grudges.", correct_answer: "False", round_id: r1.id)

# Geography - EASY (5)

q31 = Question.create(category_id: cat3.id, difficulty: "easy", question: "A group of islands is called an archipelago.", correct_answer: "True", round_id: r1.id)

q32 = Question.create(category_id: cat3.id, difficulty: "easy", question: "Greenland is covered with grass and Iceland covered with ice.", correct_answer: "False", round_id: r1.id)

q33 = Question.create(category_id: cat3.id, difficulty: "easy", question: "Vatican City is a country.", correct_answer: "True", round_id: r1.id)

q34 = Question.create(category_id: cat3.id, difficulty: "easy", question: "California is larger than Japan.", correct_answer: "True", round_id: r1.id)

q35 = Question.create(category_id: cat3.id, difficulty: "easy", question: "There are no deserts in Europe.", correct_answer: "True", round_id: r1.id)

# Geography - MEDIUM (5)

q36 = Question.create(category_id: cat3.id, difficulty: "medium", question: "Seoul is the capital of North Korea.", correct_answer: "False", round_id: r1.id)

q37 = Question.create(category_id: cat3.id, difficulty: "medium", question: "Greenland is almost as big as Africa.", correct_answer: "False", round_id: r1.id)

q38 = Question.create(category_id: cat3.id, difficulty: "medium", question: "The surface area of Russia is slightly larger than that of the dwarf planet Pluto.", correct_answer: "True", round_id: r1.id)

q39 = Question.create(category_id: cat3.id, difficulty: "medium", question: "There are no roads in/out of Juneau, Alaska.", correct_answer: "True", round_id: r1.id)

q40 = Question.create(category_id: cat3.id, difficulty: "medium", question: "Alaska is the largest state in the United States.", correct_answer: "True", round_id: r1.id)

# Geography - HARD (5)

q41 = Question.create(category_id: cat3.id, difficulty: "hard", question: "The flag of South Africa features 7 colours.", correct_answer: "False", round_id: r1.id)

q42 = Question.create(category_id: cat3.id, difficulty: "hard", question: "St. Louis is the capital of the US State Missouri.", correct_answer: "False", round_id: r1.id)

q43 = Question.create(category_id: cat3.id, difficulty: "hard", question: "The two largest ethnic groups of Belgium are Flemish and Walloon. ", correct_answer: "True", round_id: r1.id)

q44 = Question.create(category_id: cat3.id, difficulty: "hard", question: "Antarctica is the largest desert in the world.", correct_answer: "True", round_id: r1.id)

q45 = Question.create(category_id: cat3.id, difficulty: "hard", question: "Liechtenstein does not have an airport.", correct_answer: "True", round_id: r1.id)

# History - EASY (5)

q46 = Question.create(category_id: cat4.id, difficulty: "easy", question: "Japan was part of the Allied Powers during World War I.", correct_answer: "True", round_id: r1.id)

q47 = Question.create(category_id: cat4.id, difficulty: "easy", question: "The first televised presidential debate was between Jimmy Carter and Gerald Ford.", correct_answer: "False", round_id: r1.id)

q48 = Question.create(category_id: cat4.id, difficulty: "easy", question: "The United States Department of Homeland Security was formed in response to the September 11th attacks.", correct_answer: "True", round_id: r1.id)

q49 = Question.create(category_id: cat4.id, difficulty: "easy", question: "The United States was a member of the League of Nations.", correct_answer: "False", round_id: r1.id)

q50 = Question.create(category_id: cat4.id, difficulty: "easy", question: "The United States of America was the first country to launch a man into space.", correct_answer: "False", round_id: r1.id)

# History - MEDIUM (5)

q51 = Question.create(category_id: cat4.id, difficulty: "medium", question: "The French Kingdom helped the United States gain their independence over Great Britain during the Revolutionary War.", correct_answer: "True", round_id: r1.id)

q52 = Question.create(category_id: cat4.id, difficulty: "medium", question: "Oxford University is older than the Aztec Empire. ", correct_answer: "True", round_id: r1.id)

q53 = Question.create(category_id: cat4.id, difficulty: "medium", question: "In World War ll, Great Britian used inflatable tanks on the ports of Great Britain to divert Hitler away from Normandy/D-day landing.", correct_answer: "True", round_id: r1.id)

q54 = Question.create(category_id: cat4.id, difficulty: "medium", question: "The Hundred Years’ War was fought for more than a hundred years.", correct_answer: "True", round_id: r1.id)

q55 = Question.create(category_id: cat4.id, difficulty: "medium", question: "Martin Luther King Jr. and Anne Frank were born the same year. ", correct_answer: "True", round_id: r1.id)

# History - HARD (5)

q56  = Question.create(category_id: cat4.id, difficulty: "hard", question: "The fourth funnel of the RMS Titanic was fake designed to make the ship look more powerful and symmetrical.", correct_answer: "True", round_id: r1.id)

q57 = Question.create(category_id: cat4.id, difficulty: "hard", question: "Former United States Presidents John Adams and Thomas Jefferson died within hours of each other.", correct_answer: "True", round_id: r1.id)

q58 = Question.create(category_id: cat4.id, difficulty: "hard", question: "Theodore Roosevelt Jr. was the only General involved in the initial assault on D-Day.", correct_answer: "True", round_id: r1.id)

q59 = Question.create(category_id: cat4.id, difficulty: "hard", question: "In 1967, a magazine published a story about extracting hallucinogenic chemicals from bananas to raise moral questions about banning drugs.", correct_answer: "True", round_id: r1.id)

q50 = Question.create(category_id: cat4.id, difficulty: "hard", question: "Kublai Khan is the grandchild of Genghis Khan?", correct_answer: "True", round_id: r1.id)

# Movies - EASY (5)

q61 = Question.create(category_id: cat5.id, difficulty: "easy", question: "Han Solo’s co-pilot and best friend, 'Chewbacca', is an Ewok.", correct_answer: "False", round_id: r1.id)

q62= Question.create(category_id: cat5.id, difficulty: "easy", question: "The movie 'The Nightmare before Christmas' was all done with physical objects.", correct_answer: "True", round_id: r1.id)

q63 = Question.create(category_id: cat5.id, difficulty: "easy", question: "The 2010 film 'The Social Network' is a biographical drama film about MySpace founder Tom Anderson.", correct_answer: "False", round_id: r1.id)

q64 = Question.create(category_id: cat5.id, difficulty: "easy", question: "The word 'Inception' came from the 2010 blockbuster hit, ‘Inception’.", correct_answer: "False", round_id: r1.id)

q65 = Question.create(category_id: cat5.id, difficulty: "easy", question: "In the original Star Wars trilogy, Alec Guinness provided the voice for Darth Vader.", correct_answer: "False", round_id: r1.id)

# Movies - MEDIUM (5)

q66 = Question.create(category_id: cat5.id, difficulty: "medium", question: "There aren’t any live-action clones in 'Star Wars: Episode III - Revenge of the Sith'.", correct_answer: "True", round_id: r1.id)

q67 = Question.create(category_id: cat5.id, difficulty: "medium", question: "Samuel L. Jackson had the words, “Bad Motherf*cker” inscripted on his lightsaber during the filming of Star Wars.", correct_answer: "True", round_id: r1.id)

q68 = Question.create(category_id: cat5.id, difficulty: "medium", question: "In Alfred Hitchcock’s film “Psycho” it is said he used chocolate syrup to simulate the blood in the famous shower scene from ", correct_answer: "True", round_id: r1.id)

q69 = Question.create(category_id: cat5.id, difficulty: "medium", question: "The film '2001: A Space Odyssey' was released on December 31st, 2000.", correct_answer: "False", round_id: r1.id)

q70 = Question.create(category_id: cat5.id, difficulty: "medium", question: "The colour of the pills in the Matrix were Blue and Yellow.", correct_answer: "False", round_id: r1.id)

# Movies - HARD (5)

q71 = Question.create(category_id: cat5.id, difficulty: "hard", question: "The weapon Clint Eastwood uses in 'Dirty Harry' was a .44 Automag.", correct_answer: "False", round_id: r1.id)

q72 = Question.create(category_id: cat5.id, difficulty: "hard", question: "In the original script of The 'Matrix', the machines used humans as additional computing power instead of batteries.", correct_answer: "True", round_id: r1.id)

q73 = Question.create(category_id: cat5.id, difficulty: "hard", question: "In the original Star Wars trilogy, David Prowse was the actor who physically portrayed Darth Vader.", correct_answer: "True", round_id: r1.id)

q74 = Question.create(category_id: cat5.id, difficulty: "hard", question: "Brandon Routh plays the titular character in the movie 'John Wick'.", correct_answer: "False", round_id: r1.id)

q75 = Question.create(category_id: cat5.id, difficulty: "hard", question: "Joan Cusack starred in the 2009 disaster movie, ‘2012’.", correct_answer: "False", round_id: r1.id)




puts "finished making categories and questions"