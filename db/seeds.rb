# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Создаем пользователей

User.create([
    {name: 'Kate', email: 'kate@example.com', password: '123456'},
    {name: 'John', email: 'connor@gmail.com', password: '123456'}
    {name: 'Mike', email: 'mike@example.com', password: '123456'}
  ])

# Создаем категории
Category.create([
    {title:'front'},
    {title:'back'}
  ])

# Создаем тесты
Test.create([
    {title:'Ruby on Rails', level: 1, category_id:2},
    {title:'Node.js', level: 2, category_id:2},
    {title:'Go in practice', level: 1, category_id:2},
    {title:'React native', level: 3, category_id:1},
    {title:'CSS Grid', level: 2, category_id:1}
    ])

# Создаем ответы
UserTest.create([
    {user_id:1, test_id: 1},
    {user_id:1, test_id: 2},
    {user_id:1, test_id: 3},
    {user_id:2, test_id: 1},
    {user_id:2, test_id: 4}
  ])

# Создаем ответы
#Answer.create(body: '1939', question: question1, correct: true)
#nswer.create(body: 'Japan', question: question2, correct: false)
#Answer.create(body: 'a2+b2=c2', question: question3, correct: true)
#Answer.create(body: 'Mikhail Gorbachev', question: question4, correct: true)
