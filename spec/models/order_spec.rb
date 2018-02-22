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

  describe 'validations' do
    it { is_expected.to validate_presence_of :number }
    it { is_expected.to validate_presence_of :customer }
    it { is_expected.to validate_presence_of :units }
    it { is_expected.to validate_presence_of :order_date }
  end

  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:order)).to be_valid
    end
  end
end
