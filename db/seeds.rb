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

array_user = [user1, user2, user3, user4]
array_item = [item1, item2, item3, item4, item5, item6, item7]
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
  b.save
end
