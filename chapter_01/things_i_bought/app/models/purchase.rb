class Purchase < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :cost, :greater_than => 0
end
