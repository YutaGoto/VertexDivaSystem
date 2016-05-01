class Song < ActiveRecord::Base
  has_many :difficulty_songs
  has_many :difficulties, through: :difficulty_songs

  has_many :vocalist_songs
  has_many :vocalists, through: :vocalist_songs

  belongs_to :illustration

  belongs_to :composer

  scope :by_vocalist, -> (vocalist_id) { joins(:vocalists).where('vocalists.id = ?', vocalist_id) }

  def easy?
    difficulties.find_by(name: 'Easy').present?
  end

  def exextreme?
    difficulties.find_by(name: 'Exextreme').present?
  end
end
