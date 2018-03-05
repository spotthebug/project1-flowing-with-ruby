# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Vote.delete_all
Answer.delete_all
Question.delete_all
User.delete_all

5.times do
  u = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.safe_email,
    password: "password"
    )
    2.times do
      q = Question.create!(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraph,
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
c = User.create(name: 'Maria', email: 'maria@email.com', password: 'password')
d = User.create(name: 'Karthik', email: 'karthik@email.com', password: 'password')
# one = Question.create(title: '', description: '', user: a)
two = Question.create(title: 'How do I get started with Rails?', description: "Hello, I am new to Rails and I am wondering how do I get started with it?  Thank you", user: a)
# three = Question.create(title: '', description: '', user: b)
# four = Question.create(title: '', description: '', user: b)
# five = Question.create(title: '', description: '', user: c)
# six = Question.create(title: '', description: '', user: c)
# seven = Question.create(title: '', description: '', user: d)
# eight = Question.create(title: '', description: '', user: d)
# nine = Question.create(title: '', description: '', user: b)
# ten = Question.create(title: '', description: '', user: c)

# Answer.create(description: '', user: c, question: one)
# Answer.create(description: '', user: d, question: one)
# Answer.create(description: '', user: b, question: one)
Answer.create(description: "Install Rails at the command prompt if you haven not yet:

$ gem install rails
At the command prompt, create a new Rails application:

$ rails new myapp
where “myapp” is the application name.

Change directory to myapp and start the web server:

$ cd myapp; rails server
Run with --help or -h for options.

Go to localhost:3000 and you will see:

Yay! You’re on Rails!", user: c, question: two)
# Answer.create(description: '', user: a, question: three)
# Answer.create(description: '', user: d, question: four)
# Answer.create(description: '', user: a, question: four)
# Answer.create(description: '', user: b, question: five)
# Answer.create(description: '', user: a, question: six)
# Answer.create(description: '', user: c, question: seven)
# Answer.create(description: '', user: b, question: eight)
# Answer.create(description: '', user: d, question: nine)