require 'faker'

User.destroy_all
Product.destroy_all

  user1 = {
    surname: "Jean",
    name: "Bonbeur",
    password: "123456",
    email: "jeanb@gmail.com",
    age: 23,
    address: "12 Rue de Tocqueville, 75017 Paris",
    profil_picture: "http://images.wisegeek.com/nerdy-man-in-checkered-shirt-with-computer.jpg",
    company_name: "Enron",
    failure_history: "Le géant américain, créé en 1931 et renommé Enron en 1985, fut l’une des entreprises américaines avec la plus grosse capitalisation boursière. Cette société texane était spécialiste dans le gaz naturel et avait créé tout un système de courtage par lequel elle achetait et revendait de l’électricité. Et pourtant, ce géant de l’énergie américain n’existe plus aujourd’hui. En 2001, l’entreprise fut frappée par un scandale lorsque ses escroqueries ont été dévoilées. La faillite de l’entreprise s’explique par le fait qu’elle démontrait une croissance exceptionnelle de ses ventes tout en dissimulant l’explosion considérable de sa dette. Le 2 décembre 2001, l’entreprise annonce officiellement sa faillite et la perte de 65,6 milliards de dollars d’actifs ainsi que la dissolution de son auditeur Arthur Anderson, cinquième plus grande entreprise d’audit financier et comptable au monde.",
  }


  item1 = {
    title: "MacBook pourri",
    quick_description: "Plus de clavier, écran sympa",
    price: 12,
    description: "VPour tester la situation et le terrain : j'ai déjà demandé à une autre amie d'appeler son assureur en lui disant que c'est elle qui a cassé mon MacBook, celui-ci lui a dit que « le propriétaire de la machine (moi) doit envoyer une lettre mentionnant les frais de dédommagement (pour l'assureur) et que ensuite ...",
    availability: true,
    photo: "http://img.macg.co/2009/06/macbook-air-bus-20091127-203134.jpg",
  }


  item2 = {
    title: "Lot de 102 imprimantes 3D",
    quick_description: "N'imprime que sur des feuilles A4",
    price: 110,
    description: "L'association Halte à l'Obsolescence Programmée (HOP) met en cause plusieurs marques, dont Canon, HP ou Epson, qu'elle accuse de «raccourcir délibérément la durée de vie des imprimantes et des cartouches». Les fabricants rétorquent qu'au contraire, ils travaillent depuis longtemps sur la durabilité de leurs produits. Il s'agit d'une première en France, se félicite Halte à l'Obsolescence Programmée (HOP). L'association née en 2015 et spécialisée dans la lutte contre l'obsolescence programmée - une technique imputée aux fabricants pour réduire volontairement la durée de vie d'un produit et inciter le consommateur à acheter davantage.",
    availability: true,
    photo: "http://annonces-gratuites.index-net.org/images/90402_16345az5NaYaQxoO.jpg",
  }


  item3 = {
    title: "Scooter de livraison",
    quick_description: "Roule, freiner avec les pieds",
    price: 159,
    description: "Dans le cadre d’un usage professionnel amenant à utiliser quotidiennement un scooter, de surcroît sur des longues distances, il faut convenablement peser le pour et le contre avant de l’acheter. Ainsi, les coursiers, livreurs de pizzas ou autres, seront amenés à se poser des questions essentielles, notamment sur les pannes connues, parfois récurrentes, qui surviennent sur certains modèles. Pour limiter ces risques, internet et les forums constituent une bonne source de vérification, comme la plupart des garagistes, non affiliés à une marque bien entendu.",
    availability: true,
    photo: "http://www.lapizz-foix.com/medias/album/images/scooter-livraison.jpg",
  }

  item4 = {
    title: "Canapé de burau (ou pas)",
    quick_description: "Canapé chill",
    price: 110,
    description: "La gamme Millbrae met l’accent sur l'aspect social des espaces de travail nouvelle génération. Élégant, le piètement horizontal en acier constitue un support simple et moderne qui s’associe parfaitement avec l’effet matelassé piquet. Avec ses coussins fermes, et son design alligné, la collection Millbrae Contract peut être intégrée à des halls d’entrée ou salons, ou peut être utilisée isolément. Cette collection, permet d'offrir un cadre de travail plus chaleureux.",
    availability: true,
    photo: "http://www.francecanape.com/images/canape/canape-design-maguelone/canape-design-maguelone-demo.jpg",
  }


#########

  user2 = {
    surname: "Pierre",
    name: "Dubrulle",
    password: "123456",
    email: "pierred@gmail.com",
    age: 25,
    address: "10 rue de la Pompe, 75016 Paris",
    profil_picture: "https://static1.jeanlouisdavid.com/articles/1/29/61/@/5411-homme-comment-entretenir-sa-barbe-article_full-2.jpg",
    company_name: "General Motors",
    failure_history: "General Motors, entreprise créée en 1908 à Détroit et véritable mastodonte de l’industrie automobile américaine et mondiale contrôlait plus d’une quinzaine de marques automobiles en 2000. Avec un premier risque de faillite en 2005, la sentence tombe le 1er juin 2009, à la suite de la crise de l’automobile qui avait rendu impossible le remboursement des dettes accumulées.

L’entreprise qui détenait 91 milliards de dollars est placée sous la couverture du Chapitre 11 de la constitution américaine afin de nationaliser l’entreprise et la sauver de la banqueroute totale. Cette intervention de l’État américain permet à General Motors de se sortir de la plus grosse faillite d’entreprise du secteur automobile.",
  }


  item5 = {
    title: "Super bureau",
    quick_description: "Classe, vrai bois aggloméré",
    price: 45,
    description: "A la recherche d'un nouveau bureau tout beau pour votre coin travail ? Nous avons tout ce qu'il vous faut. Minimaliste ou classique, vintage ou scandinave, mural ou modulable : les bureaux ne cessent de se faire de plus en plus attractifs. Jetez un coup d’œil à notre sélection et craquez pour un modèle aussi esthétique que pratique.",
    availability: true,
    photo: "http://www.royaledeco.com/78877/bureau-design-en-bois-et-gris-laque-1-porte-5-tiroirs-waki.jpg",
  }

#########

  user3 = {
    surname: "Luc",
    name: "Levaultour",
    password: "123456",
    email: "lucv@gmail.com",
    age: 25,
    address: "28 rue de rennes 75006 Paris",
    profil_picture: "https://archzine.fr/wp-content/uploads/2017/08/vetement-homme-inspiration-film-suits-homme-d-affaire-costume-cravate-bleu-fonce%CC%81.jpg",
    company_name: "WorldCom",
    failure_history: "Les plus grandes faillites d’entreprises sont souvent entachées de grandes fraudes ou escroqueries. WorldCom est fondée en 1983 par le canadien Bernard Ebbers dans le Mississipi et est introduite en Bourse en 1989. Mais, dès 2000 et afin de surmonter les difficultés de l’industrie des télécoms, certains cadres de la compagnie ont effectué des manipulations comptables frauduleuses pour masquer des pertes de revenus. Avec des actifs de plus de 103 milliards de dollars, comme General Motors, l’entreprise est placée sous le Chapitre 11. La faillite de l’entreprise a conduit à un plan de restructuration en 2003 et à un changement de nom pour marquer le coup. WorldCom se prénomme donc désormais MCI.",
  }

  ########

  user4 = {
    surname: "Johnny",
    name: "Bigoud",
    password: "123456",
    email: "johnnyb@gmail.com",
    age: 35,
    address: "8 rue de Rome, Paris",
    profil_picture: "http://resize2-parismatch.ladmedia.fr/r/625,417,center-middle,ffffff/img/var/news/storage/images/paris-match/people/repliquant-aux-rumeurs-johnny-hallyday-prend-la-route-du-studio-1376894/22861601-1-fre-FR/Repliquant-aux-rumeurs-Johnny-Hallyday-prend-la-route-du-studio.jpg",
    company_name: "Lehman Brothers",
    failure_history: "Le numéro un des grandes faillites d’entreprises est sans surprise l’effondrement de Lehman Brothers. La banque d’investissement créée en 1850 a fait énormément parlé d’elle lors de sa disparition le 15 septembre 2008. Sa faillite a d’ailleurs lancé, selon les spécialistes, la crise financière mondiale née de la crise des « subprimes ». Selon le principe du « Too Big To Fail », l’entreprise aurait pu être placée sous le Chapitre 11, mais le gouvernement américain ne l’a pas sauvée pour autant.",
  }


  item6 = {
    title: "Oculus Rift",
    quick_description: "Utilisé pour faire du Excel",
    price: 12,
    description: "Avez-vous déjà entendu parlé des casques de réalité virtuelle ? L’Oculus rift, Le HTC Vive, le Galaxy Gear VR de Samsung et le Morpheus de Sony ? Aujourd’hui Detentation, le spécialiste de la location de Fauteuils de massage, chaise de massage et Table de massage et Lemondedelarealitevirtuelle.com vous propose la Location d’animation Oculus Rift, Casque de réalité virtuelle. Préparez vous, vous allez pouvoir voyagé dans l’espace temps, sans vous en rendre compte, grâce à un casque de réalité virtuelle.",
    availability: true,
    photo: "https://detentation-9ogin0n.netdna-ssl.com/wp-content/uploads/2014/12/oculus-rift-nouveau-detentation.jpg",
  }


  item7 = {
    title: "Téléphone Alcatel",
    quick_description: "Pour harceler vos clients",
    price: 110,
    description: "Si l'an passé, tu avais acheté pour 1000 EURO d'actions NortelNetworks, tu aurais aujourd'hui encore 59 EURO. Si l'an passé, tu avais acheté pour 1000 EURO d'actions LucentTechnologies, tu aurais aujourd'hui encore 70 EURO. Si l'an passé, tu avais acheté pour 1000 EURO d'actions Alcatel,tu aurais aujourd'hui encore 170 EURO. Si l'an passé, tu avais acheté pour 1000 EURO de caisses de Kro,tu aurais tout bu et aujourd'hui, il te resterait 380 EURO de consignes.",
    availability: true,
    photo: "http://www.ave.fr/photos/485/B234301.JPG",
  }

  ########

  user5 = {
    surname: "Benoît",
    name: "Van Poule",
    password: "123456",
    email: "benoitb@gmail.com",
    age: 33,
    address: "Rue du Prince Royal 3, 1050 Ixelles, Belgique",
    profil_picture: "https://universcinebelgique.files.wordpress.com/2010/12/20080802_benoitpopoelvoorde1.jpg",
    company_name: "Take it easy",
    failure_history: "C’est la fin d’une des plus belles success story de l'écosystème start-up en Belgique. Ce mardi 26 juillet, les quatre fondateurs de Take Eat Easy ont annoncé la fermeture de leur service de livraison de repas à domicile. C’est ici que prend fin l’aventure Take Eat Easy. Nous sommes fiers et heureux d’avoir été au centre de cette révolution et adoré pouvoir vous livrer les meilleurs restaurants de France, mais malheureusement, il est temps pour nous de vous dire au revoir, écrit Chloé Roose, co-fondatrice dans un post de blog intitulé Les mots justes pour vous dire au revoir ce mardi. Rien ne laissait présager une telle déconvenue. Lancé en septembre 2013 à Bruxelles, Take Eat Easy s’est en effet vite imposé comme un des leaders de la livraison de repas à domicile par coursiers en vélo avec l'allemand Foodora et l'anglais Deliveroo. Un marché prometteur puisque, selon des experts, il devrait atteindre 90 milliards d’euros dans le monde d’ici à 2019. En quelques années, nous sommes devenus leaders de la livraison de restaurants en Belgique et en France, avons ouvert la voie vers la livraison de plats à vélo en Europe, et nous avons permis de vous faire livrer les meilleurs restaurants à Bruxelles, Paris, Madrid, Londres et beaucoup d’autres villes… 20 villes au total en Europe, rappelle Chloé Roose. Une levée de fonds impossible L’entreprise, qui employait 160 salariés -sans compter les livreurs en vélo car non-salariés, venait même de dépasser le million de livraisons. La croissance mensuelle atteignait 30%, avec une base de 350.000 clients et 3.200 restaurants partenaires. Ils avaient réussi à lever, en deux fois, 16 millions d’euros. Alors pourquoi Take Eat Easy est aujourd’hui en redressement judiciaire? En réalité, la concurrence était trop rude pour la start-up belge. Sur ce marché florissant, chacune est lancée dans une course à la taille, une course de vitesse pour lever le plus de fonds possible et signer un nombre maximum de restaurants. Deliveroo a ainsi levé 170 millions de dollars depuis sa création en 2013 et Foodora est incubé par la puissante usine à start-up allemande Rocket Internet. Or, comme le détaille Adrien Roose, le CEO, dans un long message, les fondateurs ont échoué à procéder à une 3ème levée des fonds, les acculant à la faillite puisque le service n’est pas encore rentable.",
  }


  item8 = {
    title: "Flotte vélo livreurs",
    quick_description: "30 vélo légers et rapides",
    price: 10000,
    description: "Un vélo selon vos envies. Sablage et thermolathermolaquage époxy en ce qui concerne le cadre, la fourche et les jantes. ( toutes les teintes sont possibles) Il est également possible d'avoir les jantes en bois vernis. Le guidon et les gardes boue sont en chêne teinté selon votre choix et ensuite en finition par un vernis marin spécialement utilisé par les constructeurs de bateaux italiens. ( 4 couches ) Les différents accessoires s'adapteront suivant vos envies et votre budget. ",
    availability: true,
    photo: "http://www.chasejarvis.com/wp-content/uploads/2011/04/20110420_Bikes_BBB5199-576x324.jpg",
  }


  item9 = {
    title: "Delivery bags",
    quick_description: "Pour livrer sans renverser",
    price: 500,
    description: "Le courrier chic porte visiblement des messages non seulement dans l'intérieur de son sac, mais encore dehors, pour tout le monde. Le dispositif professionnel offre cher au lieu Bag de Messenger Par marque pour les prises de publicité supplémentaires ou une propre publicité. Einsteckfach transparent, étanche au dos prend des affiches d'A3. Aussi l'équipement intérieur a projeté CHER AU LIEU avec Insider-Knowhow : Le sac intérieur ausknöpfbare avec la fermeture éclair pour des chèques de transport, le plan de ville, les crayons est portable etc. aussi comme Hüftgurttasche. ",
    availability: true,
    photo: "https://tctechcrunch2011.files.wordpress.com/2015/09/img_5608.jpg",
  }

  item10 = {
    title: "2 brand-new macbook pro",
    quick_description: "Less would be a lack of respect",
    price: 800,
    description: "Le nouvel ultra portable Apple MacBook 12 pouces (MNYF2FN/A) est le résultat d'un défi presque impossible : concevoir le Mac portable le plus léger et le plus compact jamais créé, sans dénaturer l'expérience Mac. Pour en arriver là, Apple a repensé tous les éléments un à un, pour les rendre non seulement plus légers et plus fins, mais aussi plus perfectionnés. Le fruit de ce travail est bien plus qu'un nouvel ordinateur portable. C'est l'avenir de l'ordinateur portable.",
    availability: true,
    photo: "https://cdn-images-1.medium.com/max/1200/1*msFr4noPO5-qnGo30k6aHA.jpeg",
  }

array_user = [user1, user2, user3, user4, user5]
array_item = [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10]
users = []

array_user.each do |user|
  a = User.new(user)
  a.remote_profil_picture_url = user[:profil_picture]
  a.save
  b = Basket.new
  b.user = a
  b.save
  users << a
end

array_item.each do |item|
  c = Product.new(item)
  c.remote_photo_url = item[:photo]
  c.user = users.sample
  c.save
end
