class Category < ActiveRecord::Base
  attr_accessible :description, :meta_tag_description, :meta_tag_keywords, :name

  has_and_belongs_to_many :products
end
