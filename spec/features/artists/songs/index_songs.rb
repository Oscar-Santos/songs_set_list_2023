# As a user
# when i visit an artists songs index
#     then i see the titles all of that artists songs
#     and i see that each title is a link to the songs show page 

require 'rails_helper'

RSpec.describe 'Artists songs index page' do
    it 'shows all the titles of artists songs' do
        artist = Artist.create!(name: 'The Beatles')
        song = artist.songs.create!(title: 'And i love her', length: 27348, play_count: 29544)
        song_2 = artist.songs.create!(title: 'Yesterday', length: 193866, play_count: 99922)

        visit "/artists/#{artist.id}/songs"

        expect(page).to have_content(song.title)
        expect(page).to have_content(song_2.title)

    end

    it 'links to each songs show page'
end