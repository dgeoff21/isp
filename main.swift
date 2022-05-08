mport Foundation

//general questions
func General() {
    print("You picked General questions! Now let's begin")
    let questions = ["What does “www” stand for in a website browser?", "How long is an Olympic swimming pool (in meters)?", "What countries made up the original Axis powers in World War II?", "Which country do the cities of Perth, Adelade & Brisbane belong to?", "What geometric shape is generally used for stop signs?", "What is cynophobia?", "What punctuation mark ends an imperative sentence?", "Who named the Pacific Ocean?", "How many languages are written from right to left?", "How many countries still have Shilling as currency?", "What is the name of the man who launched eBay back in 1995?", "What is the name of the biggest technology company in South Korea?"]
    let answers = ["World Wide Web", "50", "Germany, Italy, and Japan", "Australia", "Octagon", "Fear of dogs", "period", "Ferdinand Magellan", "12", "4", "Pierre Omidyar", "Samsung"]
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
    let questions = ["What was the first toy to be advertised on television?", "What was the first feature-length animated movie ever released? (Hint: It was a Disney Movie)", "What TV series showed the first interracial kiss on American network television?", "What were the four main characters' names in the TV series Golden Girls that ran from 1985-1992?", "Who created Sherlock Holmes?", "What awards has an EGOT winner won?", "Which member of the Beatles married Yoko Ono?", "What are the names of Cinderella’s stepsisters?", "What famous US festival hosted over 350,000 fans in 1969?", "The biggest selling music single of all time is?", "When Walt Disney was a child, which character did he play in his school function?"]
    let answers = ["Mr Potato Head", "Snow White and the Seven Dwarfs", "Star Trek", "Dorothy, Rose, Blanche, and Sophia", "Arthur Conan Doyle", "Emmy, Grammy, Oscar, and a Tony", "John Lennon", "Anastasia and Drizella", "Woodstock", "Candle in the Wind", "Peter Pan"]
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

print("Hello user, would you like to play trivia? First, pick a category! The categories are General, Geography, Animal, Science, Entertainment, and Food so type which one you want!")
let genre = readLine()
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
