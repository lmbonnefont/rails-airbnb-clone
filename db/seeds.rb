require 'faker'

User.destroy_all
Product.destroy_all

  user1 = {
    surname: "Jean",
    name: "Bonbeur",
    password: "123456",
    email: "jeanb@gmail.com",
    age: 23,
    profil_picture: "http://images.wisegeek.com/nerdy-man-in-checkered-shirt-with-computer.jpg",
    company_name: "Thalasso de Paris",
    failure_history: "En vrai j'ai merdé grave ... Franchement je ne mérite que l'opprobe public",
  }


  item1 = {
    title: "MacBook pourri",
    quick_description: "Plus de clavier, écran sympa",
    price: 12,
    description: "Vieille edition de 2014, quand on croyait qu'on allait lever",
    availability: true,
    address: "12 rue de Tocqueville",
    photo: "http://img.macg.co/2009/06/macbook-air-bus-20091127-203134.jpg",
  }


  item2 = {
    title: "Lot de 102 imprimantes 3D",
    quick_description: "N'imprime que sur des feuilles A4",
    price: 110,
    description: "La base du business initialement prévu. J'en ai acheté 3 containers.",
    availability: true,
    address: "124 rue de la Chatière",
    photo: "http://annonces-gratuites.index-net.org/images/90402_16345az5NaYaQxoO.jpg",
  }


  item3 = {
    title: "Scooter de livraison",
    quick_description: "Roule, freiner avec les pieds",
    price: 159,
    description: "A une odeur permanente de fumier",
    availability: true,
    address: "12 rue de Tocqueville",
    photo: "http://www.lapizz-foix.com/medias/album/images/scooter-livraison.jpg",
  }

  item4 = {
    title: "Canapé de burau (ou pas)",
    quick_description: "Canapé chill",
    price: 110,
    description: "Canapé idéal pour chiller au boulot avec les reufs.",
    availability: true,
    address: "124 rue de la Chatière",
    photo: "http://www.francecanape.com/images/canape/canape-design-maguelone/canape-design-maguelone-demo.jpg",
  }


#########

  user2 = {
    surname: "Pierre",
    name: "Dubrulle",
    password: "123456",
    email: "pierred@gmail.com",
    age: 25,
    profil_picture: "https://static1.jeanlouisdavid.com/articles/1/29/61/@/5411-homme-comment-entretenir-sa-barbe-article_full-2.jpg",
    company_name: "DVD Land",
    failure_history: "Rien à dire, je touche le fond mais creuse toujours. Besoin urgent de pépettes.",
  }


  item5 = {
    title: "Super bureau",
    quick_description: "Classe, vrai bois aggloméré",
    price: 45,
    description: "La moitié de mon capital y est passé, prenez en soin.",
    availability: true,
    address: "10 rue de la Pompe",
    photo: "http://www.royaledeco.com/78877/bureau-design-en-bois-et-gris-laque-1-porte-5-tiroirs-waki.jpg",
  }

#########

  user3 = {
    surname: "Luc",
    name: "Levaultour",
    password: "123456",
    email: "lucv@gmail.com",
    age: 25,
    profil_picture: "https://archzine.fr/wp-content/uploads/2017/08/vetement-homme-inspiration-film-suits-homme-d-affaire-costume-cravate-bleu-fonce%CC%81.jpg",
    company_name: "Vault, Tour & Associés",
    failure_history: "Besoin de matos pour mes 15 stagiaires de l'été",
  }

  ########

  user4 = {
    surname: "Johnny",
    name: "Bigoud",
    password: "123456",
    email: "johnnyb@gmail.com",
    age: 35,
    profil_picture: "http://resize2-parismatch.ladmedia.fr/r/625,417,center-middle,ffffff/img/var/news/storage/images/paris-match/people/repliquant-aux-rumeurs-johnny-hallyday-prend-la-route-du-studio-1376894/22861601-1-fre-FR/Repliquant-aux-rumeurs-Johnny-Hallyday-prend-la-route-du-studio.jpg",
    company_name: "Optique 2000",
    failure_history: "Qu'est-ce qu'elle a ma gueule ?",
  }


  item6 = {
    title: "Oculus Rift",
    quick_description: "Utilisé pour faire du Excel",
    price: 12,
    description: "Il est beau il est chaud !",
    availability: true,
    address: "11 rue du P'tit Loulou",
    photo: "https://icdn5.digitaltrends.com/image/oculus-rift-on-matt-set-right-800x533-c.jpg?ver=1",
  }


  item7 = {
    title: "Téléphone Alcatel",
    quick_description: "Pour harceler vos clients",
    price: 110,
    description: "Incassable, sert aussi de matraque.",
    availability: true,
    address: "56 avenue de Moi",
    photo: "http://www.ave.fr/photos/485/B234301.JPG",
  }

  ########

  user5 = {
    surname: "Benoît",
    name: "Van Poule",
    password: "123456",
    email: "benoitb@gmail.com",
    age: 33,
    profil_picture: "https://universcinebelgique.files.wordpress.com/2010/12/20080802_benoitpopoelvoorde1.jpg",
    company_name: "Take it easy",
    failure_history: "C’est la fin d’une des plus belles success story de l'écosystème start-up en Belgique. Ce mardi 26 juillet, les quatre fondateurs de Take Eat Easy ont annoncé la fermeture de leur service de livraison de repas à domicile. C’est ici que prend fin l’aventure Take Eat Easy. Nous sommes fiers et heureux d’avoir été au centre de cette révolution et adoré pouvoir vous livrer les meilleurs restaurants de France, mais malheureusement, il est temps pour nous de vous dire au revoir, écrit Chloé Roose, co-fondatrice dans un post de blog intitulé Les mots justes pour vous dire au revoir ce mardi. Rien ne laissait présager une telle déconvenue. Lancé en septembre 2013 à Bruxelles, Take Eat Easy s’est en effet vite imposé comme un des leaders de la livraison de repas à domicile par coursiers en vélo avec l'allemand Foodora et l'anglais Deliveroo. Un marché prometteur puisque, selon des experts, il devrait atteindre 90 milliards d’euros dans le monde d’ici à 2019. En quelques années, nous sommes devenus leaders de la livraison de restaurants en Belgique et en France, avons ouvert la voie vers la livraison de plats à vélo en Europe, et nous avons permis de vous faire livrer les meilleurs restaurants à Bruxelles, Paris, Madrid, Londres et beaucoup d’autres villes… 20 villes au total en Europe, rappelle Chloé Roose. Une levée de fonds impossible L’entreprise, qui employait 160 salariés -sans compter les livreurs en vélo car non-salariés, venait même de dépasser le million de livraisons. La croissance mensuelle atteignait 30%, avec une base de 350.000 clients et 3.200 restaurants partenaires. Ils avaient réussi à lever, en deux fois, 16 millions d’euros. Alors pourquoi Take Eat Easy est aujourd’hui en redressement judiciaire? En réalité, la concurrence était trop rude pour la start-up belge. Sur ce marché florissant, chacune est lancée dans une course à la taille, une course de vitesse pour lever le plus de fonds possible et signer un nombre maximum de restaurants. Deliveroo a ainsi levé 170 millions de dollars depuis sa création en 2013 et Foodora est incubé par la puissante usine à start-up allemande Rocket Internet. Or, comme le détaille Adrien Roose, le CEO, dans un long message, les fondateurs ont échoué à procéder à une 3ème levée des fonds, les acculant à la faillite puisque le service n’est pas encore rentable.",
  }


  item8 = {
    title: "Flotte vélo livreurs",
    quick_description: "30 vélo légers et rapides",
    price: 10000,
    description: "Un vélo selon vos envies. Sablage et thermolathermolaquage époxy en ce qui concerne le cadre, la fourche et les jantes. ( toutes les teintes sont possibles) Il est également possible d'avoir les jantes en bois vernis. Le guidon et les gardes boue sont en chêne teinté selon votre choix et ensuite en finition par un vernis marin spécialement utilisé par les constructeurs de bateaux italiens. ( 4 couches ) Les différents accessoires s'adapteront suivant vos envies et votre budget. Il est possible de réaliser cette prestation sur tout types de vélos. ( ville, fixie etc...) Chaque réalisation est unique et ne sera produite qu'en un seul exemplaire. Le délai de réalisation est d'environ deux semaines. Le vélo est garanti un an pièces et main d'œuvre. N'hésitez pas à me contacter pour plus de renseignements et un devis rapide.",
    availability: true,
    address: "Rue du Prince Royal 3, 1050 Ixelles, Belgique",
    photo: "https://images.unsplash.com/photo-1472709171579-139831cdf19e",
  }


  item9 = {
    title: "Delivery bags",
    quick_description: "Pour livrer sans renverser",
    price: 500,
    description: "Le courrier chic porte visiblement des messages non seulement dans l'intérieur de son sac, mais encore dehors, pour tout le monde. Le dispositif professionnel offre cher au lieu Bag de Messenger Par marque pour les prises de publicité supplémentaires ou une propre publicité. Einsteckfach transparent, étanche au dos prend des affiches d'A3. Aussi l'équipement intérieur a projeté CHER AU LIEU avec Insider-Knowhow : Le sac intérieur ausknöpfbare avec la fermeture éclair pour des chèques de transport, le plan de ville, les crayons est portable etc. aussi comme Hüftgurttasche. Organizerfach pour les papiers importants crée l'ordre avec les subdivisions pratiques. Rollverschluss avec Klettband à la longueur de complément permet l'accès rapide et le transport des émissions encombrantes. Bag de Messenger Par est équipé parfaitement des réflecteurs étendus. le Smart Messenger bike only carry messages inside their bags, but le display them on the outside. Ortlieb's full-featured Messenger Bag Par has a le professionnel le display surface for additional advertising. The transparent, waterproof le dossier at the cuis offers space for size A3 du poster. The bag’s internal life has been designed with la personne bien informée le savoir-faire : the intérieur zippered pocket for receipts, maps, pens etc. is removable by means of deale des badges et can attached to the waist belt. The organizer with subdividers keeps important documents dans la commande. Presque Access et transport of bulky shipments is guaranteed by the roule closure with à part long Velcro. Security ranks high when biking tous day long dans le centre-ville traffic : Bag de Messenger the Par is kitted out with large sized reflectors.",
    availability: true,
    address: "Rue du Prince Royal 3, 1050 Ixelles, Belgique",
    photo: "https://images.unsplash.com/photo-1505308144658-03c69861061a",
  }

  item10 = {
    title: "2 brand-new macbook pro",
    quick_description: "Less would be a lack of respect",
    price: 800,
    description: "Le nouvel ultra portable Apple MacBook 12 pouces (MNYF2FN/A) est le résultat d'un défi presque impossible : concevoir le Mac portable le plus léger et le plus compact jamais créé, sans dénaturer l'expérience Mac. Pour en arriver là, Apple a repensé tous les éléments un à un, pour les rendre non seulement plus légers et plus fins, mais aussi plus perfectionnés. Le fruit de ce travail est bien plus qu'un nouvel ordinateur portable. C'est l'avenir de l'ordinateur portable.",
    availability: true,
    address: "Rue du Prince Royal 3, 1050 Ixelles, Belgique",
    photo: "https://images.unsplash.com/photo-1477327070293-75f15e291bb0",
  }

array_user = [user1, user2, user3, user4, user5]
array_item = [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10]
users = []

array_user.each do |user|
  a = User.new(user)
  a.remote_profil_picture_url = user[:profil_picture]
  a.save
  users << a
end

array_item.each do |item|
  b = Product.new(item)
  b.remote_photo_url = item[:photo]
  b.user = users.sample
  b.save!
end
