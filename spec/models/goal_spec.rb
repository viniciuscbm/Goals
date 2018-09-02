require "rails_helper"

RSpec.describe Goal, type: :model do

  context "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:month_reference) }
    it { should validate_presence_of(:value) }
    it { should validate_numericality_of(:value) }
    it { should validate_length_of(:name).is_at_least(3).is_at_most(255) }
  end

  context "Associations" do
    it { should belong_to(:store) }
    it { should have_many(:days).dependent(:destroy) }
    it { should have_many(:periods).dependent(:destroy) }
    it { should have_many(:salesmans).through(:periods) }
  end

  context "Migrations" do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:start_date).of_type(:date).with_options(null: false) }
    it { should have_db_column(:end_date).of_type(:date).with_options(null: false) }
    it { should have_db_column(:month_reference).of_type(:date).with_options(null: false) }
    it { should have_db_column(:value).of_type(:float).with_options(null: false) }
    it { should have_db_column(:store_id).of_type(:integer).with_options(null: false) }
  end

  context "Indexs" do
    it { should have_db_index(:store_id) }
  end
end
