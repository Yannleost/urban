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
title: "Running dans les calanques",
description: "Découvrirez les magnifiques calanques à Marseille. Lors de votre running vous verrez le bleu turquoise de la mer et les différents lieux de baignade paradisiaques. Parcours adapté pour les runneurs confirmés",
city: "Marseille",
photo_url: "calanquesok2",
distance: "15",
calories: "630",
category: "Les Calanques",
difficulty: "difficile",
time: "plus d'une heure",
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
  media2 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/C7mXGMcpA0g")
  step.medias << [media, media2]
end

p "step 1 Ok"

p "First courses seeded ! Let's ststartart with the second one"

p "-----------------------------------"

p "start seeding the second Courses"

course2 = Course.create!(
title: "Du Centre jusqu'aux Terrases du Port" ,
description: "A partir du Vieux Port , découvrez le quartier du Panier, le fort Saint Jean, le Mucem ...jusqu'à la découverte des Terrasses du port. Parcours assez court et facile.",
city: "Marseille",
photo_url: "centre1",
distance: "3",
calories: "150",
category: "Centre-ville",
difficulty: "moyen",
time: "entre 30 min et 1 h",
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
  media4 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/C7mXGMcpA0g")
  step.medias << [media3, media4]
end

p "step 2 Ok"
p " -----------------------------------------"


p "Second courses seeded ! Let's start with the third one"

p "Start seeding the third Courses"

course3 = Course.create!(
title: "Running dans la nature",
description: "Quartier populaire à l’âme forte, venez visiter l'Estaque en running.Au départ de la jetée du port, empruntez le chemin des peintres et laissez-vous conquérir vers la nature",
city: "Marseille",
photo_url: "estaque4",
distance: "10",
calories: "330",
category: "L'Estaque",
difficulty: "moyen",
time: "plus d'une heure",
)




p "courses Ok"
p "start sssssseeding the steps..."

steps_array3 = []
[[53.45, 5.45],[53.45, 5.45],[53.45, 5.45],[53.45, 5.45]].each_with_index do |coord, index|
  step = Step.create!(
   step_num: index + 1,
    course: course3,
    latitude: coord[0],
    longitude: coord[1]
   )
  media5 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
media6 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/C7mXGMcpA0g")

  step.medias << [media5, media6]
end

p "step 3 Ok"

p "Third courses seeded ! Let's start with the fourth and last one"

p "-------------------------------------"

p "start seeding the Last Courses"

course4 = Course.create!(
title: "Course à pied au Vieux Port",
description: "Au coeur de Marseille, de Pharo jusqu’à la Cathédrale La Major, vous longerez le port et vous passerez à côté de l’Eglise des Augustins et la Marie. Le parcours est assez facile et adapté pour tout type de runneurs.",
city: "Marseille",
photo_url: "vieuxport4",
distance: "5",
calories: "280",
category: "Le vieux port",
difficulty: "facile",
time: "moins de 30 min",
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
media8 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/UHltRjNXIzk")
  step.medias << [media7, media8]
end

course5 = Course.create!(
title: "Marche à pied dans les calanques",
description: "Entre Marseille et Cassis, vous découvrirez les magnifiques calanques. Parcourez les sentiers pour voir le bleu turquoise de la mer et les différents lieux de baignade paradisiaques. Ce parcours est facile et adapté pour une marche à pied.",
city: "Marseille",
photo_url: "calanques4",
distance: "16",
calories: "450",
category: "Les Calanques",
difficulty: "facile",
time: "plus d'une heure",
)



p "courses Ok"
p "start seeding the steps..."

steps_array5 = []
[[53.45, 5.45],[53.45, 5.45],[53.45, 5.45],[53.45, 5.45]].each_with_index do |coord, index|
  step = Step.create!(
    step_num: index + 1,
    course: course5,
    latitude: coord[0],
    longitude: coord[1],
   )
  media9 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
  media10 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/C7mXGMcpA0g")
  step.medias << [media9, media10]
end

p "step 1 Ok"

p "First courses seeded ! Let's start with the second one"

p "-----------------------------------"

p "start seeding the second Courses"

course6 = Course.create!(
title: "Du Centre aux Terrases du Port",
description: "A partir du Vieux Port , découvrez le quartier du Panier, le fort Saint Jean, le Mucem ...jusqu'à la découverte des Terrasses du port. Parcours assez court et facile.",
city: "Marseille",
photo_url: "centre3",
distance: "3",
calories: "150",
category: "Centre-ville",
difficulty: "facile",
time: "moins de 30 min",
)



p "courses Ok"
p "start seeding the steps..."

steps_array6 = []
[[43.29204, 5.35896],[43.29343, 5.35943],[43.29611, 5.36993],[43.28557, 5.35112]].each_with_index do |coord, index|
  step = Step.create!(

  step_num: index + 1,
    course: course6,
    latitude: coord[0],
    longitude: coord[1]
   )
  media11 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
  media12 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/C7mXGMcpA0g")
  step.medias << [media11, media12]
end

p "step 2 Ok"
p " -----------------------------------------"


p "Second courses seeded ! Let's start with the third one"

p "Start seeding the third Courses"

course7 = Course.create!(
title: "Incontournable pour tous",
description: "Parfait pour réaliser tous types d’exercices.Venir faire du sport dans ce parc est un bon endroit donc pour se refaire une santé",
city: "Marseille",
photo_url: "borely.jpg",
distance: "5",
category: "Parc Borély",
calories: "250",
difficulty: "moyen",
time: "plus d'une heure",
)


p "courses Ok"
p "start sssssseeding the steps..."

steps_array7 = []
[[53.45, 5.45],[53.45, 5.45],[53.45, 5.45],[53.45, 5.45]].each_with_index do |coord, index|
  step = Step.create!(
   step_num: index + 1,
    course: course7,
    latitude: coord[0],
    longitude: coord[1]
   )
  media13 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
  media14 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/C7mXGMcpA0g")

  step.medias << [media13, media14]
end

p "step 3 Ok"

p "Third courses seeded ! Let's start with the fourth and last one"

p "-------------------------------------"

p "start seeding the Last Courses"

course8 = Course.create!(
title: "De La Bonne Mère à la mer",
description: "Pour voir le plus beau panorama de Marseille,de La Bonne Mère à La Corniche. Ce parcours est réservée aux coureurs aguerris. ",
city: "Marseille",
photo_url: "corniche.jpg",
distance: Faker::Number.between(3, 15),
calories: "270",
category: "Centre-ville",
difficulty: "difficile",
time: "entre 30 min et 1 h",
)






p "courses Ok"
p "start seeding the steps..."

steps_array8 = []
[[53.45, 5.45],[53.45, 5.45],[53.45, 5.45],[53.45, 5.45]].each_with_index do |coord, index|
  step = Step.create!(
    step_num: index + 1,
    course: course8,
    latitude: coord[0],
    longitude: coord[1]
   )
  media20 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
  media21 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/UHltRjNXIzk")
  step.medias << [media20, media21]
end

course9 = Course.create!(
title: "Marche dans les calanques",
description: "Entre Marseille et Cassis, vous découvrirez les magnifiques calanques. Parcourez les sentiers pour voir le bleu turquoise de la mer et les différents lieux de baignade paradisiaques. Ce parcours est facile et adapté pour une marche à pied.",
city: "Marseille",
photo_url: "calanques3",
distance: "3",
calories: "150",
category: "Les Calanques",
difficulty: "facile",
time: "entre 30 min et 1 h",
)

p "courses Ok"
p "start seeding the steps..."

steps_array9 = []
[[53.45, 5.45],[53.45, 5.45],[53.45, 5.45],[53.45, 5.45]].each_with_index do |coord, index|
  step = Step.create!(
    step_num: index + 1,
    course: course9,
    latitude: coord[0],
    longitude: coord[1],
   )
  media18 = Media.create!(category_of_media: "photo", url: "https://picsum.photos/200/300/?random")
  media19 = Media.create!(category_of_media: "video", url: "https://www.youtube.com/embed/C7mXGMcpA0g")
  step.medias << [media18, media19]
end


p "step 1 Ok"

p "First courses seeded ! Let's start with the second one"

p "-----------------------------------"

p "start seeding the second Courses"


p "step 4 Ok"

p "LAST courses seeded ! "
p "your app is ready to use ! What an amazing seed mates."


