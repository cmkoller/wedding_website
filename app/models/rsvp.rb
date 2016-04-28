class RSVP < ActiveRecord::Base
  validates :name, presence: true
  validates :attending_ceremony, presence: true
  validates :attending_friday, inclusion: { in: [true, false] }
end
