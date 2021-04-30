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

magpie = Bird.create(name: "Eurasian magpie", latin_name: "Pica pica", credit: "By Pierre-Selim - Flickr: Pica pica, CC BY-SA 2.0,\nhttps://commons.wikimedia.org/w/index.php?curid=19400996",
                     description: "The Eurasian magpie or common magpie (Pica pica) is a resident breeding bird throughout the northern part of the Eurasian continent. It is one of several birds in the crow family designated magpies, and belongs to the Holarctic radiation of \"monochrome\" magpies. In Europe, \"magpie\" is used by English speakers as a synonym for the Eurasian magpie: the only other magpie in Europe is the Iberian magpie (Cyanopica cooki), which is limited to the Iberian Peninsula.\n\nThe Eurasian magpie is one of the most intelligent birds, and it is believed to be one of the most intelligent of all non-human animals. The expansion of its nidopallium is approximately the same in its relative size as the brain of chimpanzees, gorillas, orangutans and humans. It is the only bird known to pass the mirror test, along with very few other non-avian species."
                    )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608440/Pica_pica_-_Compans_Caffarelli_-_2012-03-16_yij00c.jpg")
magpie.image.attach(io: image, filename: "magpie", content_type: "image/png")
magpie.save

turkey_vulture = Bird.create(name: "Turkey vulture", latin_name: "Cathartes aura", credit: "By Don DeBold from San Jose, CA, USA - Vulture Landing on Dead Tree BranchUploaded by Snowmanradio, CC BY 2.0,\nhttps://commons.wikimedia.org/w/index.php?curid=10572376",
                             description: "The turkey vulture (Cathartes aura), also known in some North American regions as the turkey buzzard (or just buzzard), and in some areas of the Caribbean as the John crow or carrion crow, is the most widespread of the New World vultures. One of three species in the genus Cathartes of the family Cathartidae, the turkey vulture ranges from southern Canada to the southernmost tip of South America. It inhabits a variety of open and semi-open areas, including subtropical forests, shrublands, pastures, and deserts.\n\nLike all New World vultures, it is not closely related to the Old World vultures of Europe, Africa, and Asia. The two groups strongly resemble each other because of convergent evolution; natural selection often leads to similar body plans in animals that adapt independently to the same conditions.\n\nThe turkey vulture is a scavenger and feeds almost exclusively on carrion. It finds its food using its keen eyes and sense of smell, flying low enough to detect the gasses produced by the beginnings of the process of decay in dead animals. In flight, it uses thermals to move through the air, flapping its wings infrequently. It roosts in large community groups. Lacking a syrinx—the vocal organ of birds—its only vocalizations are grunts or low hisses. It nests in caves, hollow trees, or thickets. Each year it generally raises two chicks, which it feeds by regurgitation. It has very few natural predators. In the United States, the vulture receives legal protection under the Migratory Bird Treaty Act of 1918."
                            )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608966/Cathartes_aura_-Santa_Teresa_County_Park__San_Jose__California__USA_-adult-8a_jqklu1.jpg")
turkey_vulture.image.attach(io: image, filename: "turkey_vulture", content_type: "image/png")
turkey_vulture.save

blue_tit = Bird.create(name: "Eurasian blue tit", latin_name: "Cyanistes caeruleus", credit: "By © Francis C. Franklin / CC-BY-SA-3.0, CC BY-SA 3.0,\nhttps://commons.wikimedia.org/w/index.php?curid=37675470",
                       description: "The Eurasian blue tit (Cyanistes caeruleus) is a small passerine bird in the tit family, Paridae. It is easily recognisable by its blue and yellow plumage and small size.\n\nEurasian blue tits, usually resident and non-migratory birds, are widespread and a common resident breeder throughout temperate and subarctic Europe and the western Palearctic in deciduous or mixed woodlands with a high proportion of oak. They usually nest in tree holes, although they easily adapt to nest boxes where necessary. Their main rival for nests and in the search for food is the larger and more common great tit.\n\nThe Eurasian blue tit prefers insects and spiders for its diet. Outside the breeding season, they also eat seeds and other vegetable-based foods. The birds are famed for their acrobatic skills, as they can cling to the outermost branches and hang upside down when looking for food."
                      )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619609245/Eurasian_blue_tit_Lancashire_vutuk9.jpg")
blue_tit.image.attach(io: image, filename: "blue_tit", content_type: "image/png")
blue_tit.save

wilson_storm_petrel = Bird.create(name: "Wilson's storm petrel", latin_name: "Oceanites oceanicus", credit: "By JJ Harrison (https://www.jjharrison.com.au/) - Own work, CC BY-SA 3.0,\nhttps://commons.wikimedia.org/w/index.php?curid=18808505",
                                  description: "Wilson's storm petrel (Oceanites oceanicus), also known as Wilson's petrel, is a small seabird of the austral storm petrel family Oceanitidae. It is one of the most abundant bird species in the world and has a circumpolar distribution mainly in the seas of the southern hemisphere but extending northwards during the summer of the northern hemisphere. The world population has been estimated to be more than 50 million pairs. The name commemorates the Scottish-American ornithologist Alexander Wilson. The genus name Oceanites refers to the mythical Oceanids, the three thousand daughters of Tethys. The species name is from Latin oceanus, \"ocean\"."
                                 )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619609588/Oceanites_oceanicus_-_SE_Tasmania_ftojvf.jpg")
wilson_storm_petrel.image.attach(io: image, filename: "wilson_storm_petrel", content_type: "image/png")
wilson_storm_petrel.save

egyptian_vulture = Bird.create(name: "Egyptian vulture", latin_name: "Neophron percnopterus", credit: "By Carlos Delgado, CC BY-SA 3.0,\nhttps://commons.wikimedia.org/w/index.php?curid=25495449",
                     description: "The Egyptian vulture (Neophron percnopterus), also called the white scavenger vulture or pharaoh's chicken, is a small Old World vulture and the only member of the genus Neophron. It is widely distributed from the Iberian Peninsula and North Africa to India. The contrasting underwing pattern and wedge-shaped tail make it distinctive in flight as it soars in thermals during the warmer parts of the day. Egyptian vultures feed mainly on carrion but are opportunistic and will prey on small mammals, birds, and reptiles. They also feed on the eggs of other birds, breaking larger ones by tossing a large pebble onto them.\n\nThe use of tools is rare in birds and apart from the use of a pebble as a hammer, Egyptian vultures also use twigs to roll up wool for use in their nest. Egyptian vultures that breed in the temperate regions migrate south in winter while tropical populations are relatively sedentary. Populations of this species declined in the 20th century and some island populations are endangered by hunting, accidental poisoning, and collision with power lines."
                     )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608996/Neophron_percnopterus_-_01_uaexsw.jpg")
egyptian_vulture.image.attach(io: image, filename: "egyptian_vulture", content_type: "image/png")
egyptian_vulture.save



puts ""
puts "::::::::::::::::::::: 🧕👩‍🦱 CREATE USERS 🧓👵 ::::::::::::::::::::::"

@avatar_count = -1

def avatar_generator
  avatar = [
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536655/adult-baseball-cap-black-t-shirt-1211480-ID12098-900x600_tfpxxh.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536673/action-adult-blur-620336-ID12049-900x600_tndkfe.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536681/abstract-art-bright-682025-ID12041-900x600_voqp24.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536702/Top_Hijab_Images_collection_Muslim_women_Girls_183_-ID180788-900x599_rvjwaq.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619536970/adult-automobile-automotive-839011-ID12089-900x600_et7pfl.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537033/adult-art-checking-phone-296654-ID12084-900x600_w9e7fq.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537121/adult-beautiful-cap-1191483-ID12116-900x600_uddjkm.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537114/adult-beautiful-beautiful-girl-892220-ID12105-900x600_u7pfss.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537131/adult-beautiful-beauty-1035682-ID12106-900x600_hwneh5.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537232/adult-close-up-cold-1002406-ID12134-599x900_uj8uot.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537247/adult-bob-marley-city-1194419-ID12125-900x609_tcg99h.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537253/adult-beautiful-beauty-1054422-ID12107-900x544_czxbiz.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537523/backpack-blur-city-1205379-ID12213-900x720_b0zoku.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537546/blurred-background-close-up-colorful-1229177-ID12278-900x600_zisykg.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537535/beautiful-beauty-face-1180023-ID12230-900x599_c3vlra.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537554/bow-tie-eyeglasses-eyewear-173295-ID12287-900x691_gzptyh.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537634/casual-emotional-facial-expression-1182312-ID12313-900x600_t64xns.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537715/cigarette-close-up-daytime-963444-ID12320-900x600_ge679g.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537725/face-facial-hair-fine-looking-614810-ID12346-900x769_coajyh.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537893/attractive-beautiful-beauty-1147395-ID12408-900x600_ojch6w.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537882/adult-blur-boardwalk-567459-ID12377-900x601_h7c9vj.jpg",
  "https://res.cloudinary.com/diucx7fqo/image/upload/v1619537904/environment-festival-girl-690729-ID12345-900x600_le89ww.jpg"
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

20.times do
  username = "123456789123456789"
  while username.length > 15
    username = Faker::Internet.username
  end
  user = User.create(email: Faker::Internet.email, username: username, password: "sdfjkl")
  image = URI.open(avatar_generator)
  user.avatar.attach(io: image, filename: "user#{counter}", content_type: "image/png")
  user.save
  counter += 1
end



puts ""
puts "::::::::::::::::::::: 🐣🐥 CREATE SPOTS 🦅🦉 :::::::::::::::::::::::"

locations = %w[Berlin Acapulco Toluca Cancun Quito Paris London Moscow Kyoto Vancouver Rome Palermo Cairo Khartoum Juba Abuja Abidjan Ulaanbaatar Dalian Bismarck Minneapolis Stockholm Oslo Helsinki Durango Toledo]

40.times do
  Spot.create!(bird: Bird.all.sample, user: User.all.sample, spot_date: Date.today-rand(1000), location: locations.sample, number: rand(20) + 1)
end



puts ""
puts ":::::::::::::::::::::: ✨✨ SEEDS DONE ✨✨ :::::::::::::::::::::::"
puts ""
puts ""
