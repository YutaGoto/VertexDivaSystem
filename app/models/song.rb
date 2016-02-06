class Song < ActiveRecord::Base
  has_many :difficulty_songs
  has_many :difficulties, through: :difficulty_songs
end
