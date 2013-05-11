class Link < ActiveRecord::Base
  attr_accessible :name, :url, :description
  validates :name, :presence=>true
  validates :url, :presence=>true, :uniqueness=>true
  validates :description, :presence=>true
end
