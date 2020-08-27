class Room < ApplicationRecord
    belongs_to :user
    has_many :areas, -> { order("done ASC, position ASC").includes(:room) }, dependent: :destroy
   
end

