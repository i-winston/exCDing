class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def total_price
  	product.price * product_count
  end
end
