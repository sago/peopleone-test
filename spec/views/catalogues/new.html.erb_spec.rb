require 'rails_helper'

RSpec.describe "catalogues/new", type: :view do
  before(:each) do
    assign(:catalogue, Catalogue.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new catalogue form" do
    render

    assert_select "form[action=?][method=?]", catalogues_path, "post" do

      assert_select "input[name=?]", "catalogue[name]"

      assert_select "textarea[name=?]", "catalogue[description]"
    end
  end
end
