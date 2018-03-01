# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.delete_all
Question.delete_all
Answer.delete_all

10.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.safe_email,
    password: "password"
    )
  Question.create!(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    user_id: User.last.id
    )
  Answer.create!(
    description: Faker::Lorem.paragraph,
    user_id: User.last.id,
    question_id: Question.last.id
    )
end
