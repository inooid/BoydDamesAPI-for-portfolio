require 'rails_helper'

RSpec.describe Project, type: :model do
  # - Database structure ------------------------------------------------------#
  describe 'db structure' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:body).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end
end
