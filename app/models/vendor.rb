class Vendor < ActiveRecord::Base

  has_many :obcs
  belongs_to :check

end
