require "open-uri"

puts 'Cleaning database...'
User.destroy_all

puts 'Creating users...'
user_1 = User.create(email: "rox@example.com", password: "123456")
