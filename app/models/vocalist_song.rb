class VocalistSong < ActiveRecord::Base
  belongs_to :song
  belongs_to :vocalist
end
