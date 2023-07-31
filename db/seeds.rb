# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts '----- Processing create new User -----'
  5.times do
    User.create!(name: Faker.name, email: Faker::Internet.email)
  end
puts '----- Done create new User -----'

puts '----- Processing create new Post -----'
  User.all.each do |user|
    5.times do
      user.posts.create!(
        title: Faker::Lorem.sentence(word_count: 3),
        content: Faker::Lorem.paragraphs
      )
    end
  end
puts '----- Done create new Post -----'

puts '----- Processing create new Comment -----'
  Post.all.each do |post|
    5.times do
      post.comments.create!(
        user_id: rand(1..5),
        content: Faker::Lorem.paragraphs
      )
    end
  end
puts '----- Done create new Comment -----'

puts '----- Processing create new Like -----'
  Post.all.each do |post|
    5.times do
      Like.create!(
        user_id: rand(1..5),
        like_type: 'Post',
        like_id: post.id,
      )
    end
  end
puts '----- Done create new Like -----'


