require 'faker'

8.times do
  user = User.new(
    name:   Faker::Name.name,
    email:  Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end
users = User.all

15.times do
  item = Item.create!(
    name:   Faker::Lorem.sentence
    )
end
items = Item.all

admin = User.new(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld'
 )
 admin.skip_confirmation!
 admin.save!


puts "Seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"