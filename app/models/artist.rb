class Artist < ApplicationRecord
  has_many :songs 
  
  def average_song_length
    self.songs.average(:length).round
  end

  def average_song_play_count
    self.songs.average(:play_count)
  end
end
