require "rails_helper"

RSpec.describe Salesman, type: :model do

  context "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3).is_at_most(255) }
  end

  context "Associations" do
    it { should belong_to(:store) }
    it { should have_many(:periods).dependent(:destroy) }
    it { should have_many(:goals).through(:periods) }
    it { should have_and_belong_to_many(:days) }
  end

  context "Migrations" do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:store_id).of_type(:integer).with_options(null: false) }
  end

  context "Indexs" do
    it { should have_db_index(:store_id) }
  end
end
