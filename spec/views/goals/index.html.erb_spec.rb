require 'rails_helper'

RSpec.describe "goals/index", type: :view do
  before(:each) do
    assign(:goals, [
      Goal.create!(
        :name => "Name",
        :value => 2.5,
        :store => nil
      ),
      Goal.create!(
        :name => "Name",
        :value => 2.5,
        :store => nil
      )
    ])
  end

  it "renders a list of goals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
