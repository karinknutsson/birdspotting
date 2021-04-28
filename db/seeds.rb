require 'open-uri'
require 'json'

magpie = Bird.create(name: "Eurasian magpie", latin_name: "Pica pica",
                     description: "The Eurasian magpie or common magpie (Pica pica) is a resident breeding bird throughout the northern part of the Eurasian continent. It is one of several birds in the crow family designated magpies, and belongs to the Holarctic radiation of \"monochrome\" magpies. In Europe, \"magpie\" is used by English speakers as a synonym for the Eurasian magpie: the only other magpie in Europe is the Iberian magpie (Cyanopica cooki), which is limited to the Iberian Peninsula.\n\nThe Eurasian magpie is one of the most intelligent birds, and it is believed to be one of the most intelligent of all non-human animals. The expansion of its nidopallium is approximately the same in its relative size as the brain of chimpanzees, gorillas, orangutans and humans. It is the only bird known to pass the mirror test, along with very few other non-avian species."
                    )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608440/Pica_pica_-_Compans_Caffarelli_-_2012-03-16_yij00c.jpg")
magpie.image.attach(io: image, filename: "magpie", content_type: "image/png")
magpie.save

turkey_vulture = Bird.create(name: "Turkey vulture", latin_name: "Cathartes aura",
                             description: "The turkey vulture (Cathartes aura), also known in some North American regions as the turkey buzzard (or just buzzard), and in some areas of the Caribbean as the John crow or carrion crow, is the most widespread of the New World vultures. One of three species in the genus Cathartes of the family Cathartidae, the turkey vulture ranges from southern Canada to the southernmost tip of South America. It inhabits a variety of open and semi-open areas, including subtropical forests, shrublands, pastures, and deserts.\n\nLike all New World vultures, it is not closely related to the Old World vultures of Europe, Africa, and Asia. The two groups strongly resemble each other because of convergent evolution; natural selection often leads to similar body plans in animals that adapt independently to the same conditions.\n\nThe turkey vulture is a scavenger and feeds almost exclusively on carrion. It finds its food using its keen eyes and sense of smell, flying low enough to detect the gasses produced by the beginnings of the process of decay in dead animals. In flight, it uses thermals to move through the air, flapping its wings infrequently. It roosts in large community groups. Lacking a syrinx—the vocal organ of birds—its only vocalizations are grunts or low hisses. It nests in caves, hollow trees, or thickets. Each year it generally raises two chicks, which it feeds by regurgitation. It has very few natural predators. In the United States, the vulture receives legal protection under the Migratory Bird Treaty Act of 1918."
                            )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608966/Cathartes_aura_-Santa_Teresa_County_Park__San_Jose__California__USA_-adult-8a_jqklu1.jpg")
turkey_vulture.image.attach(io: image, filename: "turkey_vulture", content_type: "image/png")
turkey_vulture.save

blue_tit = Bird.create(name: "Eurasian blue tit", latin_name: "Cyanistes caeruleus",
                       description: "The Eurasian blue tit (Cyanistes caeruleus) is a small passerine bird in the tit family, Paridae. It is easily recognisable by its blue and yellow plumage and small size.\n\nEurasian blue tits, usually resident and non-migratory birds, are widespread and a common resident breeder throughout temperate and subarctic Europe and the western Palearctic in deciduous or mixed woodlands with a high proportion of oak. They usually nest in tree holes, although they easily adapt to nest boxes where necessary. Their main rival for nests and in the search for food is the larger and more common great tit.\n\nThe Eurasian blue tit prefers insects and spiders for its diet. Outside the breeding season, they also eat seeds and other vegetable-based foods. The birds are famed for their acrobatic skills, as they can cling to the outermost branches and hang upside down when looking for food."
                      )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619609245/Eurasian_blue_tit_Lancashire_vutuk9.jpg")
blue_tit.image.attach(io: image, filename: "blue_tit", content_type: "image/png")
blue_tit.save

wilson_storm_petrel = Bird.create(name: "Wilson's storm petrel", latin_name: "Oceanites oceanicus",
                                  description: "Wilson's storm petrel (Oceanites oceanicus), also known as Wilson's petrel, is a small seabird of the austral storm petrel family Oceanitidae. It is one of the most abundant bird species in the world and has a circumpolar distribution mainly in the seas of the southern hemisphere but extending northwards during the summer of the northern hemisphere. The world population has been estimated to be more than 50 million pairs. The name commemorates the Scottish-American ornithologist Alexander Wilson. The genus name Oceanites refers to the mythical Oceanids, the three thousand daughters of Tethys. The species name is from Latin oceanus, \"ocean\"."
                                 )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619609588/Oceanites_oceanicus_-_SE_Tasmania_ftojvf.jpg")
wilson_storm_petrel.image.attach(io: image, filename: "wilson_storm_petrel", content_type: "image/png")
wilson_storm_petrel.save

egyptian_vulture = Bird.create(name: "Egyptian vulture", latin_name: "Neophron percnopterus",
                     description: "The Egyptian vulture (Neophron percnopterus), also called the white scavenger vulture or pharaoh's chicken, is a small Old World vulture and the only member of the genus Neophron. It is widely distributed from the Iberian Peninsula and North Africa to India. The contrasting underwing pattern and wedge-shaped tail make it distinctive in flight as it soars in thermals during the warmer parts of the day. Egyptian vultures feed mainly on carrion but are opportunistic and will prey on small mammals, birds, and reptiles. They also feed on the eggs of other birds, breaking larger ones by tossing a large pebble onto them.\n\nThe use of tools is rare in birds and apart from the use of a pebble as a hammer, Egyptian vultures also use twigs to roll up wool for use in their nest. Egyptian vultures that breed in the temperate regions migrate south in winter while tropical populations are relatively sedentary. Populations of this species declined in the 20th century and some island populations are endangered by hunting, accidental poisoning, and collision with power lines."
                     )
image = URI.open("https://res.cloudinary.com/diucx7fqo/image/upload/v1619608996/Neophron_percnopterus_-_01_uaexsw.jpg")
egyptian_vulture.image.attach(io: image, filename: "egyptian_vulture", content_type: "image/png")
egyptian_vulture.save
