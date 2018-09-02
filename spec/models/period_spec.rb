require "rails_helper"

RSpec.describe Period, type: :model do

  context "Associations" do
    it { should belong_to(:salesman) }
    it { should belong_to(:goal) }
  end

  context "Migrations" do
    it { should have_db_column(:salesman_id).of_type(:integer).with_options(null: false) }
    it { should have_db_column(:goal_id).of_type(:integer).with_options(null: false) }
  end

  context "Indexs" do
    it { should have_db_index(:salesman_id) }
    it { should have_db_index(:goal_id) }
  end
end
