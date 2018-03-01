class Order < ApplicationRecord
  include ActiveModel::Dirty
  validates :customer, presence: true
  validates :pob, :delivered, presence: true, if: :state_is_done?
  validates :dep, presence: true, if: :state_is_ready?
  validates :order_date, presence: true, format: { with: /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/ }
  validates :units, presence: true, numericality: { greater_than: 0 }
  validates :number, length: { is: 10 }
  def state_is_done?
    self.state == 'Done'
  end

  def state_is_ready?
    self.state == 'Ready'
  end

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
