class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories
  belongs_to :manufacturer

  attr_accessible :description, :ean, :isbn, :jan, :meta_tag_description, :meta_tag_keywords, :mpn, :name, :price, :product_code, :product_tags, :sku, :upc, :categories
  accepts_nested_attributes_for :categories, :allow_destroy => true
  attr_accessible :categories_attributes

  validates_presence_of :name, :product_code, :description, :price

end
