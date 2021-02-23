# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'bcrypt'

ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

Collaboration.destroy_all
Approval.destroy_all
Photo.destroy_all
Collection.destroy_all
User.destroy_all

User.create(
    first_name: 'Test',
    last_name: 'User',
    email: 'testuser@gmail.com',
    username: 'username',
    password: 'password'
)

6.times do User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Twitter.screen_name,
    password: 'password'
)
end

20.times do Collection.create(
    user_id: User.all.sample.id,
    name: Faker::Hipster.word,
    location: Faker::Address.city
)
end

30.times do Collaboration.create(
    user_id: User.all.sample.id,
    collection_id: Collection.all.sample.id
)
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/flowers-324175_1920.jpg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/fog-1535201_1920.jpg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/mountain-landscape-2031539_1920.jpg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/the-road-815297_1920.jpg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/yellowstone-national-park-1581879_1920.jpg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/candid-1.jpeg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/candid-3.jpeg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/candid-4.jpeg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/candid-5.jpeg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/candid-6.jpeg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/candid-7.jpeg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

15.times do Photo.create(
    collection_id: Collection.all.sample.id,
    caption: Faker::Quote.singular_siegler
).photo.attach(
  io: File.open('db/migrate/images/candid-8.jpeg'),
  filename: 'PlaceholderImage.png',
  content_type: 'application/png'
  )
end

500.times do Approval.create(
    approval: Faker::Boolean.boolean,
    photo_id: Photo.all.sample.id,
    user_id: User.all.sample.id
)
end