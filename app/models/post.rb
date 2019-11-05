class Post < ApplicationRecord
  belongs_to :user

  validates_presence_of :ime, :opis
  validates :ime, length: { maximum: 25 }
  validates :opis, length: { minimum: 50, message: 'Prosim vnesite daljši opis' }
end
