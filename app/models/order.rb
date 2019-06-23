class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy
  belongs_to :enduser
  enum payment: [:銀行振込, :クレジット, :代引き]
  enum order_status: [:受付, :商品準備中, :出荷済]
end
