require 'rails_helper'

RSpec.describe "catalogues/edit", type: :view do
  before(:each) do
    @catalogue = assign(:catalogue, Catalogue.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit catalogue form" do
    render

    assert_select "form[action=?][method=?]", catalogue_path(@catalogue), "post" do

      assert_select "input[name=?]", "catalogue[name]"

      assert_select "textarea[name=?]", "catalogue[description]"
    end
  end
end
