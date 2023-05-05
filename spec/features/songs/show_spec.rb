require 'rails_helper'
# as a visitor,
# when i visit /songs/1
#     then i see that songs title  and artist
#     and i dont see any of the other songs in my database

RSpec.describe 'songs show page' do
    it 'displays the song title' do
        artist = Artist.create!(name: 'The Beatles')
        song = artist.songs.create!(title: 'And i love her', length: 27348, play_count: 29544)
        song_2 = artist.songs.create!(title: 'Yesterday', length: 193866, play_count: 99922)
        
        visit "/songs/#{song.id}"

        expect(page).to have_content(song.title)
        expect(page).to_not have_content(song_2.title)
        

    end

    # it 'displays the name of the artist for the song' do
    #     artist = Artist.create!(name: 'The Beatles')
    #     song = artist.songs.create!(title: 'And i love her', length: 27348, play_count: 29544)
    #     song_2 = artist.songs.create!(title: 'Yesterday', length: 193866, play_count: 99922)

    #     visit "/songs/#{song.id}"

    #     expect(page).to have_content(artist.name)
    # end
end