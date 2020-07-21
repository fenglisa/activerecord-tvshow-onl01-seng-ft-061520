class Show < ActiveRecord::Base
  def self.highest_rating
    #return highest value in ratings
    self.maximum(:rating)
  end

  def self.most_popular_show
    #return show with highest rating
    self.find_by("rating = ?", self.highest_rating)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.find_by("rating = ?", self.lowest_rating)
  end

  def self.ratings_sum
    #return sum of all ratings
    self.sum(:rating)
  end

  def self.popular_shows
    #returns array of all shows with rating >5
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    #order by names
    self.order(:name)
  end

end
