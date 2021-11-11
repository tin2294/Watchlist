class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  def self.names
    Movie.all.map do |movie|
      movie.title
    end
  end
end
