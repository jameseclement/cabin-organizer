class Kid < ActiveRecord::Base
  belongs_to :cabin
  validates :name,  presence: true 

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
