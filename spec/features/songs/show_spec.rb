require 'rails_helper'
# as a visitor,
# when i visit /songs/1
#     then i see that songs title  and artist
#     and i dont see any of the other songs in my database

RSpec.describe 'songs show page' do
    it 'displays the song title' do
        song = Song.create(title: 'Cada dia', length: 27348, play_count: 29544)
        
        visit "/songs/#{song.id}"

    end

    it 'displays the name of the artist for the song'
end