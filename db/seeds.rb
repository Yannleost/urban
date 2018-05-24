# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
p "deleting.."
Media.destroy_all
step = Step.all
step.destroy_all
Review.destroy_all
course = Course.all
course.destroy_all


p "deleting ok."


p "the computer is seeding"
p "start seeding the first Courses"

course1 = Course.create!(
title: Faker::Address.city,
description: Faker::VForVendetta.speech,
city: "Marseille",
photo_url: "https://picsum.photos/200/300/?random",
distance: Faker::Number.between(7, 22),
category: "Calanques",
)

p "courses Ok"
p "start seeding the steps..."

steps_array = []
[[53.45, 5.45],[53.45, 5.45],[53.45, 5.45],[53.45, 5.45]].each_with_index do |coord, index|
  step = Step.create!(
    step_num: index + 1,
    course: course1,
    latitude: coord[0],
    longitude: coord[1],
   )
  media = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
  media2 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/watch?v=C7mXGMcpA0g")
  step.medias << [media, media2]
end

p "step 1 Ok"

p "First courses seeded ! Let's start with the second one"

p "-----------------------------------"

p "start seeding the second Courses"

course2 = Course.create!(
title: Faker::Address.city,
description: Faker::VForVendetta.speech,
city: "Marseille",
photo_url: "https://picsum.photos/200/300/?random",
distance: Faker::Number.between(7, 22),
category: "Centre-ville",
)



p "courses Ok"
p "start seeding the steps..."

steps_array2 = []
[[43.29204, 5.35896],[43.29343, 5.35943],[43.29611, 5.36993],[43.28557, 5.35112]].each_with_index do |coord, index|
  step = Step.create!(

  step_num: index + 1,
    course: course2,
    latitude: coord[0],
    longitude: coord[1]
   )
  media3 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
media4 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/watch?v=C7mXGMcpA0g")
  step.medias << [media3, media4]
end

p "step 2 Ok"
p " -----------------------------------------"


p "Second courses seeded ! Let's start with the third one"

p "Start seeding the third Courses"

course3 = Course.create!(
title: Faker::Address.city,
description: Faker::VForVendetta.speech,
city: "Marseille",
photo_url: "https://picsum.photos/200/300/?random",
distance: Faker::Number.between(7, 22),
category: "Estaque",
)

p "courses Ok"
p "start seeding the steps..."

steps_array3 = []
[[53.45, 5.45],[53.45, 5.45],[53.45, 5.45],[53.45, 5.45]].each_with_index do |coord, index|
  step = Step.create!(
   step_num: index + 1,
    course: course3,
    latitude: coord[0],
    longitude: coord[1]
   )
  media5 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
media6 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/watch?v=C7mXGMcpA0g")

  step.medias << [media5, media6]
end

p "step 3 Ok"

p "Third courses seeded ! Let's start with the fourth and last one"

p "-------------------------------------"

p "start seeding the Last Courses"

course4 = Course.create!(
title: Faker::Address.city,
description: Faker::VForVendetta.speech,
city: "Marseille",
photo_url: "https://picsum.photos/200/300/?random",
distance: Faker::Number.between(7, 22),
category: "Campagne",
)


p "courses Ok"
p "start seeding the steps..."

steps_array4 = []
[[53.45, 5.45],[53.45, 5.45],[53.45, 5.45],[53.45, 5.45]].each_with_index do |coord, index|
  step = Step.create!(
   step_num: index + 1,
    course: course4,
    latitude: coord[0],
    longitude: coord[1]
   )
  media7 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
media8 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/watch?v=C7mXGMcpA0g")
  step.medias << [media7, media8]
end

p "step 4 Ok"

p "LAST courses seeded ! "
p "your app is ready to use ! What an amazing seed mates."


