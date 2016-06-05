class Illustration < ActiveRecord::Base
  has_one :song
  belongs_to :illustrator
end
