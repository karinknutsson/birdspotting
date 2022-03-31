require 'open-uri'
require 'json'
require 'faker'


puts ""
puts ""
puts "::::::::::::::::::: 💣💥 DESTROY ALL IN DB 🔥🔥 :::::::::::::::::::"

Spot.destroy_all
Bird.destroy_all
User.destroy_all



puts ""
puts "::::::::::::::::::::: 🐣🐥 CREATE BIRDS 🦅🦉 ::::::::::::::::::::::"

magpie = Bird.create(name: "Eurasian magpie", latin_name: "Pica pica", wiki_name: "Eurasian_magpie",
                     credit: "By Pierre-Selim - Flickr: Pica pica, CC BY-SA 2.0,\nhttps://commons.wikimedia.org/w/index.php?curid=19400996",
                     description: "The Eurasian magpie or common magpie (Pica pica) is a resident breeding bird throughout the northern part of the Eurasian continent. It is one of several birds in the crow family designated magpies, and belongs to the Holarctic radiation of \"monochrome\" magpies. In Europe, \"magpie\" is used by English speakers as a synonym for the Eurasian magpie: the only other magpie in Europe is the Iberian magpie (Cyanopica cooki), which is limited to the Iberian Peninsula.\n\nThe Eurasian magpie is one of the most intelligent birds, and it is believed to be one of the most intelligent of all non-human animals. The expansion of its nidopallium is approximately the same in its relative size as the brain of chimpanzees, gorillas, orangutans and humans. It is the only bird known to pass the mirror test, along with very few other non-avian species."
                    )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608440/Pica_pica_-_Compans_Caffarelli_-_2012-03-16_yij00c.jpg")
magpie.image.attach(io: image, filename: "magpie", content_type: "image/png")
magpie.save

turkey_vulture = Bird.create(name: "Turkey vulture", latin_name: "Cathartes aura", wiki_name: "Turkey_vulture",
                             credit: "By Don DeBold from San Jose, CA, USA - Vulture Landing on Dead Tree BranchUploaded by Snowmanradio, CC BY 2.0,\nhttps://commons.wikimedia.org/w/index.php?curid=10572376",
                             description: "The turkey vulture (Cathartes aura), also known in some North American regions as the turkey buzzard (or just buzzard), and in some areas of the Caribbean as the John crow or carrion crow, is the most widespread of the New World vultures. One of three species in the genus Cathartes of the family Cathartidae, the turkey vulture ranges from southern Canada to the southernmost tip of South America. It inhabits a variety of open and semi-open areas, including subtropical forests, shrublands, pastures, and deserts.\n\nLike all New World vultures, it is not closely related to the Old World vultures of Europe, Africa, and Asia. The two groups strongly resemble each other because of convergent evolution; natural selection often leads to similar body plans in animals that adapt independently to the same conditions.\n\nThe turkey vulture is a scavenger and feeds almost exclusively on carrion. It finds its food using its keen eyes and sense of smell, flying low enough to detect the gasses produced by the beginnings of the process of decay in dead animals. In flight, it uses thermals to move through the air, flapping its wings infrequently. It roosts in large community groups. Lacking a syrinx—the vocal organ of birds—its only vocalizations are grunts or low hisses. It nests in caves, hollow trees, or thickets. Each year it generally raises two chicks, which it feeds by regurgitation. It has very few natural predators. In the United States, the vulture receives legal protection under the Migratory Bird Treaty Act of 1918."
                            )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608966/Cathartes_aura_-Santa_Teresa_County_Park__San_Jose__California__USA_-adult-8a_jqklu1.jpg")
turkey_vulture.image.attach(io: image, filename: "turkey_vulture", content_type: "image/png")
turkey_vulture.save

blue_tit = Bird.create(name: "Eurasian blue tit", latin_name: "Cyanistes caeruleus", wiki_name: "Eurasian_blue_tit",
                       credit: "By © Francis C. Franklin / CC-BY-SA-3.0, CC BY-SA 3.0,\nhttps://commons.wikimedia.org/w/index.php?curid=37675470",
                       description: "The Eurasian blue tit (Cyanistes caeruleus) is a small passerine bird in the tit family, Paridae. It is easily recognisable by its blue and yellow plumage and small size.\n\nEurasian blue tits, usually resident and non-migratory birds, are widespread and a common resident breeder throughout temperate and subarctic Europe and the western Palearctic in deciduous or mixed woodlands with a high proportion of oak. They usually nest in tree holes, although they easily adapt to nest boxes where necessary. Their main rival for nests and in the search for food is the larger and more common great tit.\n\nThe Eurasian blue tit prefers insects and spiders for its diet. Outside the breeding season, they also eat seeds and other vegetable-based foods. The birds are famed for their acrobatic skills, as they can cling to the outermost branches and hang upside down when looking for food."
                      )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619609245/Eurasian_blue_tit_Lancashire_vutuk9.jpg")
blue_tit.image.attach(io: image, filename: "blue_tit", content_type: "image/png")
blue_tit.save

wilson_storm_petrel = Bird.create(name: "Wilson's storm petrel", latin_name: "Oceanites oceanicus", wiki_name: "Wilson%27s_storm_petrel",
                                  credit: "By JJ Harrison (https://www.jjharrison.com.au/) - Own work, CC BY-SA 3.0,\nhttps://commons.wikimedia.org/w/index.php?curid=18808505",
                                  description: "Wilson's storm petrel (Oceanites oceanicus), also known as Wilson's petrel, is a small seabird of the austral storm petrel family Oceanitidae. It is one of the most abundant bird species in the world and has a circumpolar distribution mainly in the seas of the southern hemisphere but extending northwards during the summer of the northern hemisphere. The world population has been estimated to be more than 50 million pairs. The name commemorates the Scottish-American ornithologist Alexander Wilson. The genus name Oceanites refers to the mythical Oceanids, the three thousand daughters of Tethys. The species name is from Latin oceanus, \"ocean\"."
                                 )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619609588/Oceanites_oceanicus_-_SE_Tasmania_ftojvf.jpg")
wilson_storm_petrel.image.attach(io: image, filename: "wilson_storm_petrel", content_type: "image/png")
wilson_storm_petrel.save

egyptian_vulture = Bird.create(name: "Egyptian vulture", latin_name: "Neophron percnopterus", wiki_name: "Egyptian_vulture",
                               credit: "By Carlos Delgado, CC BY-SA 3.0,\nhttps://commons.wikimedia.org/w/index.php?curid=25495449",
                               description: "The Egyptian vulture (Neophron percnopterus), also called the white scavenger vulture or pharaoh's chicken, is a small Old World vulture and the only member of the genus Neophron. It is widely distributed from the Iberian Peninsula and North Africa to India. The contrasting underwing pattern and wedge-shaped tail make it distinctive in flight as it soars in thermals during the warmer parts of the day. Egyptian vultures feed mainly on carrion but are opportunistic and will prey on small mammals, birds, and reptiles. They also feed on the eggs of other birds, breaking larger ones by tossing a large pebble onto them.\n\nThe use of tools is rare in birds and apart from the use of a pebble as a hammer, Egyptian vultures also use twigs to roll up wool for use in their nest. Egyptian vultures that breed in the temperate regions migrate south in winter while tropical populations are relatively sedentary. Populations of this species declined in the 20th century and some island populations are endangered by hunting, accidental poisoning, and collision with power lines."
                              )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608996/Neophron_percnopterus_-_01_uaexsw.jpg")
egyptian_vulture.image.attach(io: image, filename: "egyptian_vulture", content_type: "image/png")
egyptian_vulture.save

american_crow = Bird.create(name: "American crow", latin_name: "Corvus brachyrhynchos", wiki_name: "American_crow",
                            credit: "CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2310490",
                            description: "The American crow is a large passerine bird species of the family Corvidae. It is a common bird found throughout much of North America. American crows are the New World counterpart to the carrion crow and the hooded crow. Although the American crow and the hooded crow are very similar in size, structure and behavior, their calls are different. The American crow, nevertheless, occupies the same role that the hooded crow does in Eurasia.From beak to tail, an American crow measures 40–50 cm (16–20 in), almost half of which is tail. Mass varies from about 300 to 600 g (11 to 21 oz). Males tend to be larger than females. The most usual call is CaaW!-CaaW!-CaaW!.The American crow is all black, with iridescent feathers. It looks much like other all-black corvids. They can be distinguished from the common raven (C. corax) because American crows are smaller, from the fish crow (C. ossifragus) because American crows do not hunch and fluff their throat feathers when they call and from the carrion crow (C. corone) by size, as the carrion crow is larger and of a stockier build.American crows are common, widespread, and susceptible to the West Nile virus, making them useful as a bioindicator to track the virus's spread. Direct transmission of the virus from crows to humans is impossible."
                           )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1648717227/Corvus-brachyrhynchos-001_d421gj.jpg")
american_crow.image.attach(io: image, filename: "american_crow", content_type: "image/png")
american_crow.save

eurasian_jay = Bird.create(name: "Eurasian jay", latin_name: "Garrulus glandarius", wiki_name: "Eurasian_jay",
                            credit: "By Luc Viatour, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=5933620",
                            description: "The Eurasian jay (Garrulus glandarius) is a species of passerine bird in the family Corvidae. It occurs over a vast region from western Europe and north-west Africa to the Indian subcontinent and further to the eastern seaboard of Asia and down into south-east Asia. Across this vast range, several distinct racial forms have evolved which look very different from each other, especially when comparing forms at the extremes of its range. The bird is called jay, without any epithets, by English speakers in Great Britain and Ireland. "
                            )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1648717490/Garrulus_glandarius_1_Luc_Viatour_frimzr.jpg")
eurasian_jay.image.attach(io: image, filename: "eurasian_jay", content_type: "image/png")
eurasian_jay.save

mute_swan = Bird.create(name: "Mute swan", latin_name: "Cygnus olor", wiki_name: "Mute_swan",
                            credit: "By Yerpo - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6117285",
                            description: "The mute swan (Cygnus olor) is a species of swan and a member of the waterfowl family Anatidae. It is native to much of Eurosiberia, and (as a rare winter visitor) the far north of Africa. It is an introduced species in North America, home to the largest populations outside of its native range, with additional smaller introductions in Australasia and southern Africa. The name 'mute' derives from it being less vocal than other swan species. Measuring 125 to 170 cm (49 to 67 in) in length, this large swan is wholly white in plumage with an orange beak bordered with black. It is recognisable by its pronounced knob atop the beak, which is larger in males."
                            )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1648717839/Mute_swan_Vrhnika_pkwqqo.jpg")
mute_swan.image.attach(io: image, filename: "mute_swan", content_type: "image/png")
mute_swan.save

antillean_crested_hummingbird = Bird.create(name: "Antillean crested hummingbird", latin_name: "Orthorhyncus cristatus", wiki_name: "Antillean_crested_hummingbird",
                            credit: "By Charles J. Sharp - Own work, from Sharp Photography, sharpphotography, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=12373840",
                            description: "The Antillean crested hummingbird (Orthorhyncus cristatus) is a species of hummingbird in the family Trochilidae. Found across Anguilla, Antigua and Barbuda, Barbados, Dominica, Grenada, Guadeloupe, Martinique, Montserrat, north-east Puerto Rico, Saba, Saint-Barthélemy, Saint Kitts and Nevis, Saint Lucia, Saint Martin, Saint Vincent and the Grenadines, Sint Eustatius, the British Virgin Islands, the U.S. Virgin Islands, and the Lesser Antilles, while it has also been recorded as a vagrant in Florida, USA."
                            )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1648718204/Antillean_crested_hummingbird_dkcxsg.jpg")
antillean_crested_hummingbird.image.attach(io: image, filename: "antillean_crested_hummingbird", content_type: "image/png")
antillean_crested_hummingbird.save

rock_dove = Bird.create(name: "Rock dove", latin_name: "Columba livia", wiki_name: "Rock_dove",
                            credit: "By Diego Delso, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=18837175",
                            description: "The rock dove, rock pigeon, or common pigeon (/ˈpɪdʒ.ən/ also /ˈpɪdʒ.ɪn/; Columba livia) is a member of the bird family Columbidae (doves and pigeons). In common usage, it is often simply referred to as the \"pigeon\". The domestic pigeon (Columba livia domestica, which includes about 1,000 different breeds) descended from this species. Escaped domestic pigeons have increased the populations of feral pigeons around the world. Wild rock doves are pale grey with two black bars on each wing, whereas domestic and feral pigeons vary in colour and pattern. Few differences are seen between males and females. The species is generally monogamous, with two squabs (young) per brood. Both parents care for the young for a time. Habitats include various open and semi-open environments. Cliffs and rock ledges are used for roosting and breeding in the wild. Originally found wild in Europe, North Africa, and western Asia, pigeons have become established in cities around the world. The species is abundant, with an estimated population of 17 to 28 million feral and wild birds in Europe alone and up to 120 million worldwide. "
                            )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1648755507/Paloma_bravi%CC%81a__Columba_livia__Palacio_de_Nymphenburg__Mu%CC%81nich__Alemania01_zaldmp.jpg")
rock_dove.image.attach(io: image, filename: "rock_dove", content_type: "image/png")
rock_dove.save

demoiselle_crane = Bird.create(name: "Demoiselle crane", latin_name: "Grus virgo", wiki_name: "Demoiselle_crane",
                            credit: "By Sumeet Moghe - Own work, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=31029537",
                            description: "The demoiselle crane (Grus virgo) is a species of crane found in central Eurosiberia, ranging from the Black Sea to Mongolia and North Eastern China. There is also a small breeding population in Turkey. These cranes are migratory birds. Birds from western Eurasia will spend the winter in Africa while the birds from Asia, Mongolia and China will spend the winter in the Indian subcontinent. The bird is symbolically significant in the culture of India and Pakistan, where it is known as Koonj or Kurjaa."
                            )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1648755500/Demoiselle_Cranes_at_Tal_Chappar_esr1cw.jpg")
demoiselle_crane.image.attach(io: image, filename: "demoiselle_crane", content_type: "image/png")
demoiselle_crane.save


puts ""
puts "::::::::::::::::::::: 🧕👩‍🦱 CREATE USERS 🧓👵 ::::::::::::::::::::::"

@avatar_count = -1

def avatar_generator
  avatar = [
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1648756774/pexels-askar-abayev-5638645_vcztxw.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1648757162/pikwizard-african-american-senior-woman-painting-on-canvas-standing-in-the-balcony-at-home_xienag.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1648757147/pikwizard-businessman-smiling-at-camera_plbqb6.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1648756765/pexels-cliff-booth-4058316_gsym5d.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1648756547/pikwizard-portrait-of-asian-man-wearing-glasses-standing-at-the-terrace-of-corporate-park_wcmug7.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1648756477/pikwizard-active-senior-man-taking-a-nap-on-his-bag-in-forest_q42c1d.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1648756459/ravi-patel-VMGAbeeJTKo-unsplash_xzip1c.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536655/adult-baseball-cap-black-t-shirt-1211480-ID12098-900x600_tfpxxh.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536673/action-adult-blur-620336-ID12049-900x600_tndkfe.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536681/abstract-art-bright-682025-ID12041-900x600_voqp24.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536702/Top_Hijab_Images_collection_Muslim_women_Girls_183_-ID180788-900x599_rvjwaq.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536970/adult-automobile-automotive-839011-ID12089-900x600_et7pfl.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537033/adult-art-checking-phone-296654-ID12084-900x600_w9e7fq.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537121/adult-beautiful-cap-1191483-ID12116-900x600_uddjkm.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537114/adult-beautiful-beautiful-girl-892220-ID12105-900x600_u7pfss.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537232/adult-close-up-cold-1002406-ID12134-599x900_uj8uot.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537247/adult-bob-marley-city-1194419-ID12125-900x609_tcg99h.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537253/adult-beautiful-beauty-1054422-ID12107-900x544_czxbiz.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537523/backpack-blur-city-1205379-ID12213-900x720_b0zoku.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537546/blurred-background-close-up-colorful-1229177-ID12278-900x600_zisykg.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537554/bow-tie-eyeglasses-eyewear-173295-ID12287-900x691_gzptyh.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537634/casual-emotional-facial-expression-1182312-ID12313-900x600_t64xns.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537725/face-facial-hair-fine-looking-614810-ID12346-900x769_coajyh.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537893/attractive-beautiful-beauty-1147395-ID12408-900x600_ojch6w.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537882/adult-blur-boardwalk-567459-ID12377-900x601_h7c9vj.jpg",
  ]

  if @avatar_count < avatar.length
    @avatar_count += 1
    avatar[@avatar_count]
  else
    avatar_count = 0
    avatar[@avatar_count]
  end
end

counter = 0

locations = %w[Berlin Acapulco Toluca Cancun Quito Paris London Moscow Kyoto Vancouver Rome Palermo Cairo Khartoum Juba Abuja Abidjan Ulaanbaatar Dalian Bismarck Minneapolis Stockholm Oslo Helsinki Durango Toledo]

20.times do
  username = Faker::Internet.username
  while username.length > 15
    username = Faker::Internet.username
  end
  user = User.create(email: Faker::Internet.email, username: username, password: "sdfjkl",
                     bio: "My name is #{Faker::Name.first_name}, I live in #{locations.sample} and I love birds. My favorite bird is #{Bird.all.sample.name}. I do not actually exist. Do you?")
  image = URI.open(avatar_generator)
  user.avatar.attach(io: image, filename: "user#{counter}", content_type: "image/png")
  user.save
  counter += 1
end

user = User.create(email: "marge@email.com", username: "Marge", password: "sdfjkl",
                   bio: "Hello! My name is Marge and I do not actually exist. Do you?")
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1620026289/image_ikedfy.jpg")
user.avatar.attach(io: image, filename: "marge", content_type: "image/png")
user.save



puts ""
puts "::::::::::::::::::::: 🐧🐧 CREATE SPOTS 🔭🧔 :::::::::::::::::::::::"

time_of_days = ["early in the morning", "in the morning", "in the evening", "at sunset", "at sunrise", "at daybreak", "around noon", "in the afternoon", "late at night", "just before noon", "late afternoon", "early afternoon", "in the hour of the wolf"]
adjectives = ["beautiful", "majestic", "delightful", "cute", "pretty", "graceful", "bewitching", "magnificent", "sublime", "stately", "spectacular", "breathtaking"]

200.times do
  spot = Spot.create(bird: Bird.all.sample, user: User.all.sample, spot_date: Date.today-rand(1000), location: locations.sample, number: rand(10) + 1)
  if spot.number == 1
    adjective = adjectives.sample
    spot.note = "Spotted a #{adjective} #{spot.bird.name.downcase} #{time_of_days.sample}."
  else
    spot.note = "Spotted some #{adjectives.sample} #{spot.bird.name.downcase}s #{time_of_days.sample}."
  end
  spot.save
end



puts ""
puts ":::::::::::::::::::::: ✨✨ SEEDS DONE ✨✨ :::::::::::::::::::::::"
puts ""
puts ""
