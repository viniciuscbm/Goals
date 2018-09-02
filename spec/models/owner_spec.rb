require "rails_helper"

RSpec.describe Owner, type: :model do

  context "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3).is_at_most(255) }
  end

  context "Associations" do
    it { should have_many(:stores) }
  end

  context "Migrations" do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
  end
end
