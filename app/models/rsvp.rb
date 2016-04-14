class RSVP < ActiveRecord::Base
  validates :name, presence: true
  validates :attending_ceremony, presence: true
  validates :attending_friday, presence: true
end
