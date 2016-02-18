class Song < ActiveRecord::Base
  has_many :difficulty_songs
  has_many :difficulties, through: :difficulty_songs

  has_many :vocalist_songs
  has_many :vocalists, through: :vocalist_songs
end
