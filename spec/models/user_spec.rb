require "rails_helper"

RSpec.describe User, type: :model do

  context "Associations" do
    it { should have_one(:owner) }
  end

  context "Migrations" do
    it { should have_db_column(:email).of_type(:string).with_options(null: false, default: "") }
    it { should have_db_column(:encrypted_password).of_type(:string).with_options(null: false, default: "") }
    it { should have_db_column(:reset_password_token).of_type(:string) }
    it { should have_db_column(:reset_password_sent_at).of_type(:datetime) }
    it { should have_db_column(:remember_created_at).of_type(:datetime) }
    it { should have_db_column(:role).of_type(:integer).with_options(default: "owner") }
  end
end
