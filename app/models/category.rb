class Category < ActiveRecord::Base
  attr_accessible :description, :meta_tag_description, :meta_tag_keywords, :name

  has_and_belongs_to_many :products

  validates_presence_of :name
end
