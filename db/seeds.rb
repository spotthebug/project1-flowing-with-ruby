# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Vote.delete_all
Answer.delete_all
Question.delete_all
User.delete_all

5.times do
  User.create!(
    name: "Garima Jain",
    email: garima@example.com,
    password: "password"
    )
  
    2.times do
      Question.create!(
        title: 
        description: 
        user: u
        )
      q.votes << Vote.create(is_upvote: true, user: u)
    end
    3.times do
       a = Answer.create!(
        description: Faker::Lorem.paragraph,
        user_id: User.last.id,
        question_id: Question.last.id,
        )
        a.votes << Vote.create(is_upvote: true, user: u)
    end
end

a = User.create(name: 'Omar', email: 'omar@email.com', password: 'password')
b = User.create(name: 'Garima', email: 'garima@email.com', password: 'password')
c = User.create(name: 'Mario', email: 'mario@email.com', password: 'password')
d = User.create(name: 'Karthik', email: 'karthik@email.com', password: 'password')
one = Question.create(title: '', description: '', user: '')
two = Question.create(title: '', description: '', user: '')
three = Question.create(title: '', description: '', user: '')
four = Question.create(title: '', description: '', user: '')
five = Question.create(title: '', description: '', user: '')
six = Question.create(title: '', description: '', user: '')
seven = Question.create(title: '', description: '', user: '')
eight = Question.create(title: '', description: '', user: '')
nine = Question.create(title: '', description: '', user: '')
ten = Question.create(title: '', description: '', user: '')

Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
Answer.create(description: '', user: , question: ,)
