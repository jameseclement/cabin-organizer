class Cabin < ActiveRecord::Base
  has_many :kids
  validates :name, presence: true
  validates :capacity, inclusion: {in: (3..20).to_a,  message: "must be between 6 and 20"}
  validates :year, inclusion: {in: (1..10).to_a , message: "must be between 1 and 10"}




end
