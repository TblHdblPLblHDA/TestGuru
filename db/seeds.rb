# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Создаем пользователей
user1 = User.create(name: 'John', email: 'john@example.com', password: '123456')
user2 = User.create(name: 'Kate', email: 'kate@example.com', password: '123456')
user3 = User.create(name: 'Mike', email: 'mike@example.com', password: '123456')

# Создаем категории
category1 = Category.create(name: 'History')
category2 = Category.create(name: 'Math')

# Создаем тесты
test1 = Test.create(title: 'World War II', level: 2, category: category1)
test2 = Test.create(title: 'Algebra', level: 3, category: category2)
test3 = Test.create(title: 'USSR Presidents', level: 1, category: category1)

# Создаем вопросы
question1 = Question.create(body: 'When did WWII begin?', test: test1)
question2 = Question.create(body: 'What country was not involved in WWII?', test: test1)
question3 = Question.create(body: 'What is the Pythagorean theorem?', test: test2)
question4 = Question.create(body: 'Who was the first USSR President?', test: test3)

# Создаем ответы
Answer.create(body: '1939', question: question1, correct: true)
Answer.create(body: 'Japan', question: question2, correct: false)
Answer.create(body: 'a2+b2=c2', question: question3, correct: true)
Answer.create(body: 'Mikhail Gorbachev', question: question4, correct: true)
