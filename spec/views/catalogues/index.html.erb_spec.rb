require 'rails_helper'

RSpec.describe "catalogues/index", type: :view do
  before(:each) do
    assign(:catalogues, [
      Catalogue.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Catalogue.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of catalogues" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
