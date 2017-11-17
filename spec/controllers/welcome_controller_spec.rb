require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  #describe the subject of the spec
  describe "GET index" do
    it "renders the index template" do
  #to call the index method of `WelcomeController`
      get :index
  #we `expect` the controllers `response` to render the `index` template
      expect(response).to render_template("index")

    end
  end

  describe "GET about" do
    it "renders the able template" do
      get :about
      expect(response).to render_template("about")
    end
  end

end
