require 'rails_helper'

RSpec.describe Artist, type: :model do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      it 'returns the average song length' do
        artist = Artist.create!(name: 'The Beatles')
        song = artist.songs.create!(title: 'And i love her', length: 27348, play_count: 29544)
        song_2 = artist.songs.create!(title: 'Yesterday', length: 193866, play_count: 99922)

        expect(artist.average_song_length).to eq(110607)
      end
    end

    describe '#average_song_play_count' do
      it 'returns the average song play count' do
        artist = Artist.create!(name: 'The Beatles')
        song = artist.songs.create!(title: 'And i love her', length: 27348, play_count: 29544)
        song_2 = artist.songs.create!(title: 'Yesterday', length: 193866, play_count: 99922)

        expect(artist.average_song_play_count).to eq(64733)
      end
    end
end
end
