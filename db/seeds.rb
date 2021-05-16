require 'faker'

User.destroy_all

15.times do
  User.create!(name: Faker::Name.unique.name[1..15],
               email: Faker::Internet.unique.email, password: '123456',
               password_confirmation: '123456')
end

p 'Users created Successfully'
