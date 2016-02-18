question=Question.find_or_create_by(question_text: "Who was the first president?")
Answer.find_or_create_by(question:question, answer_text: "George Washington", correct: true)
Answer.find_or_create_by(question:question, answer_text: "John Adams")
Answer.find_or_create_by(question:question, answer_text: "John Q. Adams")
Answer.find_or_create_by(question:question, answer_text: "Thomas Jefferson")

question=Question.find_or_create_by(question_text: "Who is the best?")
Answer.find_or_create_by(question:question, answer_text: "Liz", correct: true)
Answer.find_or_create_by(question:question, answer_text: "Zach", correct: true)

question=Question.find_or_create_by(question_text: "How many protons are in a lithium atom")
Answer.find_or_create_by(question:question, answer_text: "3", correct: true)
Answer.find_or_create_by(question:question, answer_text: "2")
Answer.find_or_create_by(question:question, answer_text: "32")
Answer.find_or_create_by(question:question, answer_text: "23")

