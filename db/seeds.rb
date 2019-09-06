# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

user=User.create!(name:Faker::Name.name,
  email:Faker::Internet.email,
  password: "123456",
  desc: Faker::Quote.famous_last_words)
user.img.attach(io:File.open('app/assets/images/sean.jpg'), filename:'sean.jpg',content_type:'image/jpg')

Music.create!( name:Faker::Name.name,
  desc:Faker::Construction.subcontract_category,
  views:"50",
  favorite:nil,
  like:Faker::Code.isbn ,
  created: "3days ago",
  user: User.first,
  video: "assets/birds.mp4")
