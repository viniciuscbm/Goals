require 'rails_helper'

RSpec.describe DaySalesman, type: :model do

  context "Associations" do
    it { should belong_to(:salesman) }
    it { should belong_to(:day).inverse_of(:day_salesman) }
  end

  context "Migrations" do
    it { should have_db_column(:salesman_id).of_type(:integer).with_options(null: false) }
    it { should have_db_column(:day_id).of_type(:integer).with_options(null: false) }
  end

  context "Indexs" do
    it { should have_db_index(:salesman_id) }
    it { should have_db_index(:day_id) }
  end
end
