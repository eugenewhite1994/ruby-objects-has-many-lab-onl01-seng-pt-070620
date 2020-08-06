  
class Artist
  attr_accessor :name
  @@song_count = 0
  def initialize(name)
    @name = name
  end


  def add_song(song)
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @@song_count += 1
    song.artist = self
  end

  def songs
  Song.all.select{|song| song.artist = self}
  
  end

   def self.song_count
    song_count=0
    @@all_artists.each do |artist|
      array = artist.songs
      song_count += array.length
     end
    song_count
  end
end