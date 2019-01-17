# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all

puts 'Creating 5 products...'
9.times do |i|
  event = Event.create!(
    name: Faker::Company.name,
    description: Faker::Company.catch_phrase,
  )
  puts "#{i + 1}. #{event.name}"
end
puts 'Finished!'

traiteur = Event.create!(name: 'Au Panier des Halles',
                         description: "« Des produits frais et élégants, un savoir-faire élégant » \n Le traiteur Panier des Halles, vous livre sur Paris. Idéal pour les déjeuners d'entreprises, vous pouvez commander des plateaux repas, des menus cocktails ainsi que des menus végétariens. Organisation de buffets et cocktails pour les entreprises. Le partenaire de vos réceptions et de vos livraisons dans la ville de Fresnes, organise vos réceptions avec professionnalisme et créativité.\n
Au panier des Halles est un réel partenaire de vos événements et mettra tout son savoir-faire à votre disposition afin de faire de votre réception une véritable réussite.',photo_url: 'https://photos.idealmeetingsevents.fr/20531/x1.jpg,q1483025051.pagespeed.ic.RmdJWeuhMW.webp",
                         photo_url: 'https://photos.idealmeetingsevents.fr/20531/x1.jpg,q1483025051.pagespeed.ic.RmdJWeuhMW.webp')
