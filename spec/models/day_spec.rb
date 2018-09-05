require "rails_helper"

RSpec.describe Day, type: :model do

  context "Associations" do
    it { should belong_to(:goal) }
    it { should have_and_belong_to_many(:salesmans) }
  end

  context "Migrations" do
    it { should have_db_column(:date).of_type(:date).with_options(null: false) }
    it { should have_db_column(:goal_id).of_type(:integer).with_options(null: false) }
    it { should have_db_column(:value).of_type(:float) }
  end

  context "Indexs" do
    it { should have_db_index(:goal_id) }
  end
end
