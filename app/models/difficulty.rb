class Difficulty < ActiveRecord::Base
  has_many :difficulty_songs
  has_many :songs, through: :difficulty_songs
end
