class Lease < ActiveRecord::Base
  attr_accessible :end_date, :rent, :start_date
  
  belongs_to :unit
end
