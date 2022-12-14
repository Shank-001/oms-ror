class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products

  enum status: {
    ordered: 0,
    shipped: 1,
    delivered: 2,
    cancelled: 3
  }
end
