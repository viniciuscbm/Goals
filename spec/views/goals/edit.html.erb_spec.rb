require 'rails_helper'

RSpec.describe "goals/edit", type: :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :name => "MyString",
      :value => 1.5,
      :store => nil
    ))
  end

  it "renders the edit goal form" do
    render

    assert_select "form[action=?][method=?]", goal_path(@goal), "post" do

      assert_select "input[name=?]", "goal[name]"

      assert_select "input[name=?]", "goal[value]"

      assert_select "input[name=?]", "goal[store_id]"
    end
  end
end
