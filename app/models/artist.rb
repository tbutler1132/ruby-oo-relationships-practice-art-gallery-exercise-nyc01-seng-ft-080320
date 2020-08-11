class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select do |paintings|
      paintings.artist == self
    end
  end
  
  def galleries
    paintings.map do |paintings|
      paintings.gallery
    end
  end

  def cities
    paintings.map do |paintings|
      paintings.gallery.city
    end
  end

  def self.total_experience
    @@all.map do |artist|
      artist.years_experience
    end.sum
  end
  
  def self.most_prolific
    array = @@all.map do |artist|
      artist.paintings.count / artist.years_experience
    end
    highest = array.max
    painter = array.find_index(highest)
    @@all[painter]
  end

  def create_painting
    
  end
  
  def self.all
    @@all
  end


end
