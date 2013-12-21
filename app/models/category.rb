class Category < ActiveRecord::Base
  has_and_belongs_to_many :products
  attr_accessible :description, :meta_tag_description, :meta_tag_keywords, :name

  validates_presence_of :name
end
