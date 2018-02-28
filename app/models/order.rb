class Order < ApplicationRecord
  validates :number, :customer, :units, :order_date, presence: true

  before_validation on: :create do |resource|
    resource.send(:initialize_state_machines, dynamic: :force)
  end

  state_machine :state, initial: :Arrived do
    event :produced do
      transition Arrived: :Ready
    end

    event :delivered_to_customer do
      transition Ready: :Done
    end
  end
end
