class Product < ApplicationRecord
  before_validation :normalize_name, on: :create

  validates :name, presence: true, uniqueness:  {message: "already exists!"}
  validates :price, :quantity, numericality: { only_integer: true }

  has_many :order_products, dependent: :destroy

  private
    def normalize_name
      self.name = name.downcase.titleize
    end
end
