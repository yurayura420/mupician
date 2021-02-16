class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :audio
  with_options presence: true do
    validates :text
    validates :musician
    validates :music
    validates :image
    validates :audio
  end  
end