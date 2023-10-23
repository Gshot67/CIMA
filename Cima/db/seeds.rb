# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

more_feeds =[
    {:topic => 'general'},
    {:topic => 'sport'},
    {:topic => 'shows'}
]

more_feeds.each do |feed|
    Feed.create(feed)
end

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