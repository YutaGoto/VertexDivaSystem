class Song < ActiveRecord::Base
  has_many :difficulty_songs
  has_many :difficulty, through: :difficulty_songs
end
