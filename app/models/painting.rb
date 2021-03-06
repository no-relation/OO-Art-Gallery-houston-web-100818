class Painting

  attr_reader :title, :style 
  attr_accessor :artist, :gallery
  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.styles
    Painting.all.map do | painting |
      painting.style
    end.uniq
  end

end
