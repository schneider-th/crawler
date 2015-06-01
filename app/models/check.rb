class Check < ActiveRecord::Base

  has_many :obcs
  has_many :vendors

end
