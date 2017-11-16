require 'rails_helper'

RSpec.describe "areas/edit", type: :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :name => "MyString",
      :catalogue_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit area form" do
    render

    assert_select "form[action=?][method=?]", area_path(@area), "post" do

      assert_select "input[name=?]", "area[name]"

      assert_select "input[name=?]", "area[catalogue_id]"

      assert_select "textarea[name=?]", "area[description]"
    end
  end
end
