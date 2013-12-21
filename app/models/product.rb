class Product < ActiveRecord::Base
  attr_accessible :description, :ean, :isbn, :jan, :meta_tag_description, :meta_tag_keywords, :mpn, :name, :price, :product_code, :product_tags, :sku, :upc

  has_and_belongs_to_many :categories
  belongs_to :manufacturer

  validates_presence_of :name, :product_code, :description, :price
end
