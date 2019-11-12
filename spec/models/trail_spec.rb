require 'rails_helper'

RSpec.describe Trail, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :intensity }
    it { is_expected.to have_db_column :duration }
    it { is_expected.to have_db_column :location }
    it { is_expected.to have_db_column :extra }
  end
  
  describe 'Validation' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :intensity }
    it { is_expected.to validate_presence_of :duration }
    it { is_expected.to validate_presence_of :location }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:trail)).to be_valid
    end
  end 
end