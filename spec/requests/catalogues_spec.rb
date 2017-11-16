require 'rails_helper'

RSpec.describe "Catalogues", type: :request do
  describe "GET /catalogues" do
    it "works! (now write some real specs)" do
      get catalogues_path
      expect(response).to have_http_status(200)
    end
  end
end
