class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select do |paintings|
      paintings.gallery = self
    end
  end

  def artists
    paintings.map do |paintings|
      paintings.artist
    end
  end

  def artist_names
    artists.map do |artists|
      artists.name
    end 
  end

  def most_expensive_painting
    price = paintings.map do |paintings|
      paintings.price
    end.max
    paintings.select do |paintings|
      paintings.price == price
    end   
  end


  def self.all
    @@all
  end 

end
