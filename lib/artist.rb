class Artist
  attr_accessor :name, :genre, :artist, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    songs.collect { |s| s.genre}
  end

end
