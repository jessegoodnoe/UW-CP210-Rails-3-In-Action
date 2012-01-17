class Author < ActiveRecord::Base
  validates :first_name, :presence => true
  validates :last_name, :presence => true

  has_many :books
  
  def full_name
    [first_name, middle_name, last_name].join(" ")
  end
end
