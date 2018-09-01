require 'rails_helper'

RSpec.describe "salesmen/index", type: :view do
  before(:each) do
    assign(:salesmen, [
      Salesman.create!(
        :name => "Name",
        :store => nil
      ),
      Salesman.create!(
        :name => "Name",
        :store => nil
      )
    ])
  end

  it "renders a list of salesmen" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
