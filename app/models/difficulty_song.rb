class DifficultySong < ActiveRecord::Base
  belongs_to :song
  belongs_to :difficulty
end
