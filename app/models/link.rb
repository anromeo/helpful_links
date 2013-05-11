class Link < ActiveRecord::Base
  attr_accessible :rating, :url
  validates :rating, :numericality=>true, :numericality=>{:less_than => 10, :greater_than => 0}
end
