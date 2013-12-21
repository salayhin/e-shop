class Manufacturer < ActiveRecord::Base
  attr_accessible :image, :name, :sort_order

  has_many :products

  validates_presence_of :name, :sort_order
end
