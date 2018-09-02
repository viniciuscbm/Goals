require "rails_helper"

RSpec.describe Store, type: :model do

  context "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3).is_at_most(255) }
  end

  context "Associations" do
    it { should belong_to(:owner) }
    it { should have_many(:salesmans) }
    it { should have_many(:goals) }
  end

  context "Migrations" do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:owner_id).of_type(:integer).with_options(null: false) }
  end

  context "Indexs" do
    it { should have_db_index(:owner_id) }
  end
end
