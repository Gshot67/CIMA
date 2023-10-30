# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do |i|
  User.create!(
    email: "email#{i+1}@example.com",
    password: "password",
    password_confirmation: "password"
  )
end

#SEED PER INFOS

infos = [
  { user_id: 2, username: "Raegan01", nome: "Raegan Smith", foto: "https://www.shutterstock.com/shutterstock/photos/1733598437/display_1500/stock-photo-close-up-headshot-portrait-picture-of-smiling-african-american-businesswoman-happy-attractive-1733598437.jpg", bio: "college girl currently studing in Rome", certificazione: "", tipo: 0 },
  { user_id: 3, username: "TheRealScoop", nome: "Anna Jones", foto: "https://www.shutterstock.com/shutterstock/photos/1655747050/display_1500/stock-photo-young-adult-profile-picture-with-red-hair-1655747050.jpg", bio: "Investigative reporter and podcast host. Breaking news and exposing the truth.", certificazione: "", tipo: 1 },
  { user_id: 4, username: "NewsFlash", nome: "Laura Smith", foto: "https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Award-winning journalist and anchor. Bringing you the latest stories from around the world.", certificazione: "", tipo: 1 },
  { user_id: 5, username: "FactCheck", nome: "Ali Khan", foto: "https://images.pexels.com/photos/1462980/pexels-photo-1462980.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Data journalist and analyst. Digging into the numbers and facts behind the headlines.", certificazione: "", tipo: 1 },
  { user_id: 6, username: "TheVoice", nome: "Maria Garcia", foto: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Opinion columnist and radio host. Giving you my perspective on the issues that matter.", certificazione: "", tipo: 1 },
  { user_id: 7, username: "StoryTeller	", nome: "James Wilson", foto: "https://images.pexels.com/photos/2080383/pexels-photo-2080383.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Feature writer and storyteller. Sharing human interest stories and inspiring profiles.", certificazione: "", tipo: 1 },
  { user_id: 8, username: "TravelBug", nome: "Noah Miller", foto: "https://images.pexels.com/photos/1031081/pexels-photo-1031081.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Photographer. Exploring new places and cultures.", certificazione: "", tipo: 1 },
  { user_id: 9, username: "GreenZone", nome: "Sara Lee", foto: "https://images.pexels.com/photos/3775156/pexels-photo-3775156.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Environmental journalist and activist. Reporting on climate change and sustainability.", certificazione: "", tipo: 1 },
  { user_id: 10, username: "TechTalk", nome: "Kevin Chen", foto: "https://images.pexels.com/photos/623305/pexels-photo-623305.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Technology journalist and reviewer. Testing new gadgets and software.", certificazione: "", tipo: 1 },
  { user_id: 11, username: "Foodie", nome: "Benedetta Ori", foto: "https://images.pexels.com/photos/2078149/pexels-photo-2078149.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Foodblogger", certificazione: "", tipo: 1 },
  { user_id: 12, username: "BookWorm", nome: "Tori Egan", foto: "https://images.pexels.com/photos/4769490/pexels-photo-4769490.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "appassionata di libri", certificazione: "", tipo: 0 },
  { user_id: 13, username: "LoScienziato", nome: "", foto: "https://images.pexels.com/photos/668435/pexels-photo-668435.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "scienziato di giorno, lettore di notte", certificazione: "", tipo: 0 },
  { user_id: 14, username: "PaulBlack", nome: "Paul Black", foto: "https://images.pexels.com/photos/64385/pexels-photo-64385.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "giornalista freelance. Mi occupo di cronaca nera.", certificazione: "", tipo: 1 },
  { user_id: 15, username: "LauraBianchi", nome: "Laura Bianchi", foto: "https://images.pexels.com/photos/4783536/pexels-photo-4783536.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "giornalista presso il Corriere della Sera. Scrivo di cultura e spettacolo.", certificazione: "Corriere della sera", tipo: 1 },
  { user_id: 16, username: "AlexMoro", nome: "Alessandro Moro", foto: "https://images.pexels.com/photos/756484/pexels-photo-756484.jpeg?auto=compress&cs=tinysrgb&w=300", bio: "Manager presso FAO", certificazione: "FAO", tipo: 1 },
  { user_id: 17, username: "FIFA", nome: "", foto: "https://th.bing.com/th?id=OIP.4GKxg4sr1Z9xRNnfA6_CNwHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2", bio: "FIFA official account", certificazione: "", tipo: 2 },
  { user_id: 18, username: "New York", nome: "", foto: "https://th.bing.com/th/id/OIP.HEuvLgxK-piUqcZqa6CySAHaEs?w=281&h=180&c=7&r=0&o=5&pid=1.7", bio: "the big apple", certificazione: "", tipo: 2 },
  { user_id: 19, username: "Greenpeace", nome: "", foto: "https://th.bing.com/th/id/OIP.6yLy6QmoKeFb1hOBgyTsVAHaEK?w=301&h=180&c=7&r=0&o=5&pid=1.7", bio: "official greepeace account, all post here are to be considered as statements of the organization", certificazione: "", tipo: 2 },
  { user_id: 20, username: "Le Monde", nome: "", foto: "https://th.bing.com/th/id/OIP.C3sMw53wBP0astQFRuFGUgHaBt?w=276&h=80&c=7&r=0&o=5&pid=1.7", bio: "french newspaper", certificazione: "", tipo: 2 },
  { user_id: 21, username: "RAI", nome: "radio televisione italiana", foto: "https://th.bing.com/th/id/OIP.YO3nNtt-qPzQv_kbGEZckwHaHa?w=178&h=180&c=7&r=0&o=5&pid=1.7", bio: "azienda di radiodiffusione pubblica italiana", certificazione: "", tipo: 2 },

]

infos.each do |info|
  Info.create!(info)
end





=begin
more_feeds =[
    {:topic => 'general'},
    {:topic => 'sport'},
    {:topic => 'shows'}
]

more_feeds.each do |feed|
    Feed.create(feed)
end
=end
=begin POSSIBILE SEED PER POSTS
Post.create!([
  {
    user_id: 1,
    tag: "#pesca",
    topic: "sport",
    content: "Oggi sono andato a pesca",
    titolo: "Giornata",
    fonte_esterna: "",
    lingua: "IT",
    editoriale: "",
    created_at: Mon, 23 Oct 2023 12:40:11.946662000 UTC +00:00,
    updated_at: Mon, 23 Oct 2023 12:40:11.946662000 UTC +00:00
  },
  {
    user_id: 1,
    tag: "#italiano",
    topic: "general",
    content:
      "Sull'importanza della nostra lingua e la sua conservazione , delle sue unicità e dei suoi suoni.\nCon le tecnologie moderne non si ha più la necessita di una lingua comune come l'inglese",
    titolo: "L'importanza della lingua italiana ",
    fonte_esterna: "",
    lingua: "IT",
    editoriale: "",
    created_at: Mon, 23 Oct 2023 13:30:04.694473000 UTC +00:00,
    updated_at: Mon, 23 Oct 2023 13:30:04.694473000 UTC +00:00
  },
  {
    user_id: 1,
    tag: "#plays",
    topic: "Shows",
    content:
      "It's good , not gonna lie",
    titolo:
      "Review of \"The importance of being earnest\"",
    fonte_esterna:
      "",
    lingua:
      "EN",
    editoriale:
      "",
    created_at:
      Mon, 23 Oct 2023 13:33:45.934605000 UTC +00:00,
    updated_at:
      Mon, 23 Oct 2023 13:33:45.934605000 UTC +00:00
  }
])

=end