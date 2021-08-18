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


# puts "creating stars"
# 10.times do
#   star = Star.create(performer_name: Faker::FunnyName.name,
#               first_name: Faker::Name.first_name,
#               last_name: Faker::Name.last_name,
#               address: Faker::Address.street_address,
#               email_address: Faker::Internet.email,
#               user: User.all.sample,
#               category: %w[dancer singer showman].sample,
#               decription: Faker::GreekPhilosophers.quote)
#               # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
#               # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
#   star.photo.attach(io: File.open('app/assets/images/photos_sample/cloco.png'), filename: 'cloco.png')

# end
# puts "#{Star.count} stars created"

cloclo = Star.create(performer_name: "Cloclo",
            first_name: "Jean",
            last_name: "François",
            address: "10 rue Alexandrie",
            email_address: "clocloforever@gmail.com",
            user: User.all.sample,
            category: "singer",
            decription: "les sirènes du port d'Alexandrie chantent ma mélooodie")
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
cloclo.photo.attach(io: File.open('app/assets/images/photos_sample/cloco.png'), filename: 'cloco.png')

cocluche = Star.create(performer_name: "Cocluche",
            first_name: "Jean",
            last_name: "Michel",
            address: "Rue du mec",
            email_address: "coluche.president@gmail.com",
            user: User.all.sample,
            category: "showman",
            decription: "Je suis la cocluche de vos soirées d'anniversaires. Les enfants m'adorent")
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
cocluche.photo.attach(io: File.open('app/assets/images/photos_sample/cocluche.png'), filename: 'cocluche.png')

ed = Star.create(performer_name: "Ed che ran",
            first_name: "Eddy",
            last_name: "Moidons",
            address: "48 cours des anges",
            email_address: "edche@gmail.com",
            user: User.all.sample,
            category: "singer",
            decription: "10/10 the Rolling Stones magazine")
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
ed.photo.attach(io: File.open('app/assets/images/photos_sample/edshi.png'), filename: 'edshi.png')

georges = Star.create(performer_name: "Georges cloné",
            first_name: "Hewat",
            last_name: "Else",
            address: "Faker::Address.street_address",
            email_address: "whatelse@gmail.com",
            user: User.all.sample,
            category: "showman",
            decription: "dispo même pour un café")
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
georges.photo.attach(io: File.open('app/assets/images/photos_sample/georges_cloné.png'), filename: 'georges_cloné.png')

jojo = Star.create(performer_name: "Johnny",
            first_name: "Hubert",
            last_name: "Delabatte",
            address: "11 rue Marie",
            email_address: "johnnyHubert@gmail.com",
            user: User.all.sample,
            category: "singer",
            decription: "Vous m'aimerez comme que je t'aime")
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
jojo.photo.attach(io: File.open('app/assets/images/photos_sample/johny_bg.png'), filename: 'johny_bg.png')

julien = Star.create(performer_name: "Julien Vapercé",
            first_name: "Marc",
            last_name: "Prefi",
            address: Faker::Address.street_address,
            email_address: Faker::Internet.email,
            user: User.all.sample,
            category: "showman",
            decription: "Quizz organisés, Blindtest ou chauffeur de salle")
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
julien.photo.attach(io: File.open('app/assets/images/photos_sample/julien_pas_percé.png'), filename: 'julien_pas_percé.png')

menon = Star.create(performer_name: "Nenel Meoui",
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            address: Faker::Address.street_address,
            email_address: Faker::Internet.email,
            user: User.all.sample,
            category: "showman",
            decription: "Multiple ballon d'or des anniversaires d'enfants")
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
menon.photo.attach(io: File.open('app/assets/images/photos_sample/ménon.png'), filename: 'ménon.png')

mylene = Star.create(performer_name: "Mylenial",
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            address: Faker::Address.street_address,
            email_address: Faker::Internet.email,
            user: User.all.sample,
            category: "singer",
            decription: Faker::GreekPhilosophers.quote)
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
mylene.photo.attach(io: File.open('app/assets/images/photos_sample/mylene_faipeur.png'), filename: 'mylene_faipeur.png')

depp = Star.create(performer_name: "johny sauvage",
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            address: Faker::Address.street_address,
            email_address: Faker::Internet.email,
            user: User.all.sample,
            category: "showman",
            decription: "concert et fete de village, sur Le Tourne en ce moment")
            # photo: Cloudinary::CarrierWave::StoredFile.new(original_model.image_cloudinary.identifier))
            # photo: attach(io: File.open('../assets/images/photos_sample/cloco.png'), filename: 'cloco.png', content_type: 'image/png'))
depp.photo.attach(io: File.open('app/assets/images/photos_sample/sauvage.png'), filename: 'sauvage.png')
