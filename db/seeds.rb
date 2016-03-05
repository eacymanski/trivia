Category.find_or_create_by(name: "General")
Category.find_or_create_by(name: "Sports")
Category.find_or_create_by(name: "History")
Category.find_or_create_by(name: "Geography")
Category.find_or_create_by(name: "Science")
Category.find_or_create_by(name: "Pop Culture")



question=Question.find_or_create_by(question_text: "Who was the first president?", category: Category.find_by(name: "History"))
Answer.find_or_create_by(question:question, answer_text: "George Washington", correct: true)
Answer.find_or_create_by(question:question, answer_text: "John Adams")
Answer.find_or_create_by(question:question, answer_text: "John Q. Adams")
Answer.find_or_create_by(question:question, answer_text: "Thomas Jefferson")

question=Question.find_or_create_by(question_text: "Who is the best?",category: Category.find_by(name: "General"))
Answer.find_or_create_by(question:question, answer_text: "Liz", correct: true)
Answer.find_or_create_by(question:question, answer_text: "Zach", correct: true)

question=Question.find_or_create_by(question_text: "How many protons are in a lithium atom", category: Category.find_by(name: "Science"))
Answer.find_or_create_by(question:question, answer_text: "3", correct: true)
Answer.find_or_create_by(question:question, answer_text: "2")
Answer.find_or_create_by(question:question, answer_text: "32")
Answer.find_or_create_by(question:question, answer_text: "23")


question=Question.find_or_create_by(question_text: "Who has been nominated for the most Academy Awards in acting?", category: Category.find_by(name:"Pop Culture"))
Answer.find_or_create_by(question:question, answer_text: "Meryl Streep", correct: true)
Answer.find_or_create_by(question:question, answer_text: "Peter O'Toole")
Answer.find_or_create_by(question:question, answer_text: "Bette Davis")
Answer.find_or_create_by(question:question, answer_text: "Jack Nicholson")

