require 'rails_helper'

RSpec.describe "areas/new", type: :view do
  before(:each) do
    assign(:area, Area.new(
      :name => "MyString",
      :catalogue_id => 1,
      :description => "MyText"
    ))
  end

  it "renders new area form" do
    render

    assert_select "form[action=?][method=?]", areas_path, "post" do

      assert_select "input[name=?]", "area[name]"

      assert_select "input[name=?]", "area[catalogue_id]"

      assert_select "textarea[name=?]", "area[description]"
    end
  end
end
