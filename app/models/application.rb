class Application < ApplicationRecord
  has_many :pet_applications
  has_many :pets, -> { distinct }, through: :pet_applications

  validates :name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true



  def status
    # logic that searches all pets on this application, 
    # And returns a status based on those pets status's
    return 'In Progress'
  end
end