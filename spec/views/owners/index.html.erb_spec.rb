require 'rails_helper'

RSpec.describe "owners/index", type: :view do
  before(:each) do
    assign(:owners, [
      Owner.create!(
        :name => "Name"
      ),
      Owner.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of owners" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
