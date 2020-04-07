# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: '„First off the Bike“ hieß es bei Vera mit der drittschnellsten Radzeit des Tages und von dieser Position ließ sie sich auch beim Laufen nicht mehr vertreiben und siegte verdient mit einer Zeit von 2:17:31 Stunden.',
    topic_id: Topic.last.id
    )
end

puts '10 blog posts created'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts '5 skills created'

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: 'Ruby on Rails',
    body: 'Johanna und Melina beendeten den Triathlon ebenfalls in den Top 10 und sicherten somit den Kaifu Damen II hinter den starken Läuferinnen des TTS Tri Team den 2. Platz in der Tagesteamwertung.',
    main_image: 'http://placehold.it/600x400',
    thumb_image: 'http://placehold.it/350x200' 
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: 'Python',
    body: 'Johanna und Melina beendeten den Triathlon ebenfalls in den Top 10 und sicherten somit den Kaifu Damen II hinter den starken Läuferinnen des TTS Tri Team den 2. Platz in der Tagesteamwertung.',
    main_image: 'http://placehold.it/600x400',
    thumb_image: 'http://placehold.it/350x200' 
  )
end

puts '9 portfolio items created'