class Manufacturer < ActiveRecord::Base
  attr_accessible :image, :name, :sort_order

  has_many :products
end
