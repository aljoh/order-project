require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :number }
    it { is_expected.to have_db_column :customer }
    it { is_expected.to have_db_column :area }
    it { is_expected.to have_db_column :units }
    it { is_expected.to have_db_column :order_date }
    it { is_expected.to have_db_column :note }
  end
end
