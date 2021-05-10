# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all


users = []
cities = []
gossips = []
gossips = []
tags = []
jtgossiptags = []
privatemessages = []

3.times do
  cities << c = City.create(city_name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end


13.times do
  users << u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph(sentence_count: 6), age: Faker::Number.within(range: 18..130), email: Faker::Internet.email, city: cities.sample)
end

22.times do
  gossips << g = Gossip.create(title: Faker::Lorem.word, content: Faker::Lorem.paragraph(sentence_count: 3), user: users.sample)
end

12.times do
  tags << t = Tag.create(title: Faker::Lorem.word)
end

50.times do
  jtgossiptags << jtgt = JoinTableGossipTag.create(gossip: gossips.sample, tag: tags.sample)
end

70.times do
  privatemessages << pm = PrivateMessage.create(sender: users.sample, recipient: users.sample, message: Faker::Lorem.paragraph(sentence_count: 3))
end