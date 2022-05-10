import Foundation
//general code, if selected
func General() {
    print("You picked General questions! Now let's begin")
//print trivia questions
    let questions = ["What does “www” stand for in a website browser?", "How long is an Olympic swimming pool (in meters)?", "What countries made up the original Axis powers in World War II?", "Which country do the cities of Perth, Adelade & Brisbane belong to?", "What geometric shape is generally used for stop signs?", "What is cynophobia?", "What punctuation mark ends an imperative sentence?", "Who named the Pacific Ocean?", "How many languages are written from right to left?", "How many countries still have Shilling as currency?", "What is the name of the man who launched eBay back in 1995?", "What is the name of the biggest technology company in South Korea?"]
    let answers = ["World Wide Web", "50", "Germany, Italy, and Japan", "Australia", "Octagon", "Fear of dogs", "period", "Ferdinand Magellan", "12", "4", "Pierre Omidyar", "Samsung"]
    var count = 0
    var points = 0
    for _ in questions {
//print questions
        print(questions[count])
        let input = readLine()
//if correct answer is typed
        if input == answers[count] {
//print this prompt
            print("You are right, you get 1 point!")
//plus 1 point if correct
            points += 1
        }
//if answer is wrong
        else {
//print prompt and display correct answer
            print("Sorry, your answer was wrong. The correct answer was " + answers[count] + ".")
        }
//print total points
        print("You currently have " + String(points) + " points")
        count += 1
    }
//print prompt if game is completed
    print("Great job! You have finished the game. You ended off with " + String(points) + " points")
}


//geography questions
func Geography() {
    print("You picked Geography questions! Now let's begin")
    let questions = ["What is Earth's largest continent?", "What is the smallest country in the world?", "Area 51 is located in which US state?", "What country touches the Indian Ocean, the Arabian Sea, and the Bay of Bengal?", "What's the city with the most diversity in terms of language?", "The ancient Phoenician city of Constantine is located in what modern-day Arab country?", "What country borders 14 nations and crosses 8 time zones?", "Havana is the capital of what country?", "What country has the most natural lakes?", "Riyadh is the capital of this Middle-Eastern country?", "Which Central American country has the name which translates to English as The Savior?", "What is the name of the biggest technology company in South Korea?"]
    let answers = ["Asia", "Vatican City", "Nevada", "India", "New York City", "Algeria", "Russia", "Cuba", "Canada","Saudi Arabia", "El Salvador"]
    var count = 0
    var points = 0
    for _ in questions {
        print(questions[count])
        let input = readLine()
        if input == answers[count] {
            print("You are right, you get 1 point!")
            points += 1
        }
        else {
            print("Sorry, your answer was wrong. The correct answer was " + answers[count] + ".")
        }
        print("You currently have " + String(points) + " points")
        count += 1
    }
    print("Great job! You have finished the game. You ended off with " + String(points) + " points")
}

func Animal() {
    print("You picked Animal questions! Now let's begin")
    let questions = ["What is the loudest animal on Earth?", "How many hearts does an octopus have?", "The unicorn is the national animal of which country?", "A group of ravens is known as?", "How many legs does a spider have?", "How long do elephant pregnancies last?", "What mammals lay eggs?", "What type of animal is a Flemish giant?", "The name of which African animal means river horse?"]
    let answers = ["Sperm Whale", "3", "Scotland", "Unkindness", "8", "22 months", "Spiny anteater and the duck-billed platypus", "Rabbit", "Hippopotamus"]
    var count = 0
    var points = 0
    for _ in questions {
        print(questions[count])
        let input = readLine()
        if input == answers[count] {
            print("You are right, you get 1 point!")
            points += 1
        }
        else {
            print("Sorry, your answer was wrong. The correct answer was " + answers[count] + ".")
        }
        print("You currently have " + String(points) + " points")
        count += 1
    }
    print("Great job! You have finished the game. You ended off with " + String(points) + " points")
}

func Science() {
    print("You picked Science questions! Now let's begin")
    let questions = ["In what type of matter are atoms most tightly packed?", "What is the hottest planet in the solar system?", "What is the opposite of matter?", "Which of Newton’s Laws states that ‘for every action, there is an equal and opposite reaction?", "In 2004, what was discovered on the island of Flores in Indonesia?", "What is the nearest planet to the sun?", "What color is your blood when it’s inside your body?", "Is Pluto a planet?", "How many teeth does an adult human have?", "What tissues connect the muscles to the bones?"]
    let answers = ["Solids", "Venus", "Antimatter", "The third law of motion", "Remains of a hobbit-sized human", "Mercury", "Red", "No", "32", "Tendons"]
    var count = 0
    var points = 0
    for _ in questions {
        print(questions[count])
        let input = readLine()
        if input == answers[count] {
            print("You are right, you get 1 point!")
            points += 1
        }
        else {
            print("Sorry, your answer was wrong. The correct answer was " + answers[count] + ".")
        }
        print("You currently have " + String(points) + " points")
        count += 1
    }
    print("Great job! You have finished the game. You ended off with " + String(points) + " points")
}

func Entertainment() {
    print("You picked Entertainment questions! Now let's begin")
    let questions = ["What was the first toy to be advertised on television?", "What was the first feature-length animated movie ever released? (Hint: It was a Disney Movie)", "What is the highest grossing film?", "What is the name of Gumball's adopted brother in the TV series The Amazing World of Gumball?", "What production studio made Despicable Me?", "What is the musical play that won the 1960’s Oscar, where the story was based on Shakespeare’s Romeo & Juliet?", "Who is the voice of Marty, the Zebra in Madagascar?", "What is the only international movie that has received the Best Picture Oscar?", "What famous US festival hosted over 350,000 fans in 1969?", "The biggest selling music single of all time is?", "Where was Tupac Shakur born?"]
    let answers = ["Mr Potato Head", "Snow White and the Seven Dwarfs", "Avatar", "Darwin", "Illumination", "West Side Story", "Chris Rock", "Parasite", "Woodstock", "Candle in the Wind", "East Harlem"]
    var count = 0
    var points = 0
    for _ in questions {
        print(questions[count])
        let input = readLine()
        if input == answers[count] {
            print("You are right, you get 1 point!")
            points += 1
        }
        else {
            print("Sorry, your answer was wrong. The correct answer was " + answers[count] + ".")
        }
        print("You currently have " + String(points) + " points")
        count += 1
    }
    print("Great job! You have finished the game. You ended off with " + String(points) + " points")
}

func Food() {
    print("You picked Food questions! Now let's begin")
    let questions = ["What is the rarest M&M color?", "What is the common name for dried plums?", "Which country consumes the most chocolate per capita?", "What is the name given to Indian food cooked over charcoal in a clay oven?", "What was the first soft drink in space?", "What is the most consumed manufactured drink in the world?", "Which is the only edible food that never goes bad?", "Which country invented ice cream?", "From which country does Gouda cheese originate?"]
    let answers = ["Brown", "Prunes", "Switzerland", "Tandoori", "Coca Cola", "Tea", "Honey", "China", "Netherlands"]
    var count = 0
    var points = 0
    for _ in questions {
        print(questions[count])
        let input = readLine()
        if input == answers[count] {
            print("You are right, you get 1 point!")
            points += 1
        }
        else {
            print("Sorry, your answer was wrong. The correct answer was " + answers[count] + ".")
        }
        print("You currently have " + String(points) + " points")
        count += 1
    }
    print("Great job! You have finished the game. You ended off with " + String(points) + " points")
}
var userInput = ""
while userInput != "stop" {

//intro prompt
    print("Hello user, would you like to play trivia? First, pick a category! The categories are General, Geography, Animal, Science, Entertainment, and Food so type which one you want! If you can't decide, just click enter and you will get a random category!")
    let genre = readLine()
//checking which genre user picks
    if genre == "General" {
        General()
    }
    else if genre == "Geography" {
        Geography()
    }
    else if genre == "Animal" {
        Animal()
    }
    else if genre == "Science" {
        Science()
    }
    else if genre == "Entertainment" {
        Entertainment()
    }
    else if genre == "Food" {
        Food()
    }
    //if user doesn't pick a category
    // other option is random category generator
    else {
//random category generator
        let randomInt = Int.random(in: 0..<6)
        if randomInt == 0 {
            General()
        }
        else if randomInt == 1 {
            Geography()
        }
        else if randomInt == 2 {
            Animal()
        }
        else if randomInt == 3 {
            Science()
        }
        else if randomInt == 4 {
            Entertainment()
        }
        else if randomInt == 5 {
            Food()
        }
    }
    //print this prompt after game ends
    //option to end game or play again
    print("Would you like to play again? Type the word stop if you would like to stop or just click enter if you would like to play again!")
    userInput = readLine() ?? ""
}
