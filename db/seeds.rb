Deck.delete_all
Card.delete_all

Deck.create(topic: "Math")
Deck.create(topic: "States")
Deck.create(topic: "Animals")
Deck.create(topic: "Basketball")

Card.create(question: "What is 2 + 2?", answer: "4", deck_id: "1")
Card.create(question: "What is 4 + 4?", answer: "8", deck_id: "1")
Card.create(question: "What is 8 + 8?", answer: "16", deck_id: "1")

Card.create(question: "What is the largest state?", answer: "Alaska", deck_id: "2")
Card.create(question: "What is the smallest state?", answer: "Rhode Island", deck_id: "2")
Card.create(question: "What is the highest populated state?", answer: "California", deck_id: "2")

Card.create(question: "What animal goes MOOOO?", answer: "Cow", deck_id: "3")
Card.create(question: "What animal goes MEOW?", answer: "Cat", deck_id: "3")
Card.create(question: "What animal goes HOOT?", answer: "Owl", deck_id: "3")

Card.create(question: "Who wore number 23 on the Chicago Bulls?", answer: "Michael Jordan", deck_id: "4")
Card.create(question: "Who wears number 23 on the Cleveland Cavaliers?", answer: "Lebron James", deck_id: "4")
Card.create(question: "Who wore number 8 and 24 on the Los Angeles Lakers?", answer: "Kobe Bryant", deck_id: "4")
