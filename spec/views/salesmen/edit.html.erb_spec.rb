require 'rails_helper'

RSpec.describe "salesmen/edit", type: :view do
  before(:each) do
    @salesman = assign(:salesman, Salesman.create!(
      :name => "MyString",
      :store => nil
    ))
  end

  it "renders the edit salesman form" do
    render

    assert_select "form[action=?][method=?]", salesman_path(@salesman), "post" do

      assert_select "input[name=?]", "salesman[name]"

      assert_select "input[name=?]", "salesman[store_id]"
    end
  end
end
