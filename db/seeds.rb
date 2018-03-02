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
