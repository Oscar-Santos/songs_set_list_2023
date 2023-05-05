require 'rails_helper'
# as a visitor,
# when i visit /songs/1
#     then i see that songs title  and artist
#     and i dont see any of the other songs in my database

RSpec.describe 'songs show page' do
    it 'displays the song title' do
        artist = Artist.create(name: 'The Beatles')
        song = Song.create(title: 'And i love her', length: 27348, play_count: 29544)
        song_2 = Song.create(title: 'Yesterday', length: 193866, play_count: 99922)
        
        visit "/songs/#{song.id}"
        # expect(page).to have_content(song.title)
        # expect(page).to have_content(song.artist)

        # expect(page).to_not have_content(song_2.title)
        # expect(page).to_not have_content(song_2.artist)

    end

    it 'displays the name of the artist for the song'
end