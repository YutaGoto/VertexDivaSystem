class Vocalist < ActiveRecord::Base
  has_many :vocalist_songs
  has_many :songs, through: :vocalist_songs
end
