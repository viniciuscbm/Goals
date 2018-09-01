require 'rails_helper'

RSpec.describe "goals/new", type: :view do
  before(:each) do
    assign(:goal, Goal.new(
      :name => "MyString",
      :value => 1.5,
      :store => nil
    ))
  end

  it "renders new goal form" do
    render

    assert_select "form[action=?][method=?]", goals_path, "post" do

      assert_select "input[name=?]", "goal[name]"

      assert_select "input[name=?]", "goal[value]"

      assert_select "input[name=?]", "goal[store_id]"
    end
  end
end
