# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "destroying users"
User.destroy_all
puts "destroying stars"
Star.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('photos')

puts "creating users"
10.times do
  User.create(email: Faker::Internet.email,
              password: "secret")
end
puts "#{User.count} users created"


puts "creating stars"
10.times do
  Star.create(performer_name: Faker::FunnyName.name,
              first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              address: Faker::Address.street_address,
              email_address: Faker::Internet.email,
              user: User.all.sample,
              category: %w[dancer singer showman].sample,
              decription: Faker::GreekPhilosophers.quote)
              # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
              # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
  star.photo.attach(io: File.open('app/assets/images/photos_sample/cloco.png'), filename: 'cloco.png')

end
puts "#{Star.count} stars created"
