class Illustration < ActiveRecord::Base
  belongs_to :song
  belongs_to :illustrator
end
