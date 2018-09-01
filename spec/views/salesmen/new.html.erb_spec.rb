require 'rails_helper'

RSpec.describe "salesmen/new", type: :view do
  before(:each) do
    assign(:salesman, Salesman.new(
      :name => "MyString",
      :store => nil
    ))
  end

  it "renders new salesman form" do
    render

    assert_select "form[action=?][method=?]", salesmen_path, "post" do

      assert_select "input[name=?]", "salesman[name]"

      assert_select "input[name=?]", "salesman[store_id]"
    end
  end
end
