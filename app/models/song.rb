class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def song_name=(name)
     self.song = Song.find_or_create_by(name: name)
   end

  def song_name
      self.song ? self.song.name : nil
  end

end
