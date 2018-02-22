class Order < ApplicationRecord
  validates :number, :customer, :units, :order_date, presence: true
end
