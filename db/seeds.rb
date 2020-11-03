# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'bcrypt'

Collaboration.destroy_all
Approval.destroy_all
Photo.destroy_all
Collection.destroy_all
User.destroy_all

10.times do User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Twitter.screen_name,
    password: 'password'
)
end

10.times do Collection.create(
    user_id: User.all.sample.id,
    name: Faker::Hipster.word,
    location: Faker::Address.city
)
end

20.times do Collaboration.create(
    user_id: User.all.sample.id,
    collection_id: Collection.all.sample.id
)
end

100.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/PlaceholderImage.png'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

200.times do Approval.create(
    approval: Faker::Boolean.boolean,
    photo_id: Photo.all.sample.id,
    user_id: User.all.sample.id
)
end

# User.create(
#     username: 'Matthew',
#     password: 'password'
# )

# 11.times do Note.create(
#     title: Faker::Book.title,
#     content: Faker::Quote.matz,
#     user_id: User.all.sample.id
# )   