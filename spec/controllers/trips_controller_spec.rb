require 'rails_helper'

RSpec.describe TripsController, type: :controller do
  before :each do
    @hike = Hike.create(name: "test hike")
    @hiker = Hiker.create(name: "Claire Schechter")
  end

  describe "GET 'new'" do
    it "is successful" do
      get :new, hike_id: @hike.id
      expect(response.status).to eq 200
    end
  end

  describe "POST 'create'" do
    let(:trip_params) do
      {
        trip: {
          hiker_id: @hiker.id,
          notes: "some notes"
        },
        hike_id: @hike.id
      }
    end

    it "redirects to the hiker's backpack" do
      post :create, trip_params
      expect(subject).to redirect_to backpack_path(id: @hiker.id)
    end
  end

  describe "GET 'edit'" do
    let(:trip) do
      Trip.create(hike_id: @hike.id, hiker_id: @hiker.id)
    end

    it "is successful" do
      get :edit, hike_id: @hike.id, id: trip.id
      expect(response.status).to eq 200
    end
  end

  describe "PATCH 'update'" do
    let(:trip) do
      Trip.create(hike_id: @hike.id, hiker_id: @hiker.id)
    end

    let(:trip_params) do
      {
        trip: {
          hiker_id: @hiker.id,
          notes: "some different notes"
        },
        hike_id: @hike.id,
        id: trip.id
      }
    end

    it "redirects to the hiker's backpack" do
      patch :update, trip_params
      expect(subject).to redirect_to backpack_path(id: @hiker.id)
    end
  end
end
