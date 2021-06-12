require "rails_helper"

RSpec.describe ProyectsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/proyects").to route_to("proyects#index")
    end

    it "routes to #new" do
      expect(get: "/proyects/new").to route_to("proyects#new")
    end

    it "routes to #show" do
      expect(get: "/proyects/1").to route_to("proyects#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/proyects/1/edit").to route_to("proyects#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/proyects").to route_to("proyects#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/proyects/1").to route_to("proyects#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/proyects/1").to route_to("proyects#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/proyects/1").to route_to("proyects#destroy", id: "1")
    end
  end
end
