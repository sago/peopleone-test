require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :area_id => 1,
      :price => 1.5,
      :description => "MyText"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[area_id]"

      assert_select "input[name=?]", "item[price]"

      assert_select "textarea[name=?]", "item[description]"
    end
  end
end
