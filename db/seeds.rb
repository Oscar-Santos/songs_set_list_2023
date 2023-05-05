# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
artist = Artist.create!(name: 'The Beatles')
song = artist.songs.create!(title: 'And i love her', length: 27348, play_count: 29544)
song_2 = artist.songs.create!(title: 'Yesterday', length: 193866, play_count: 99922)