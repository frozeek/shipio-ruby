require 'spec_helper'

describe ShipIO::Client do
  before :each do
    @client = ShipIO::Client.new("8g5ruq2s6fqi5f2b0o5r649ipspicqou7")
  end

  describe "initializing a client" do
    it "should have a base URL of ship.io" do
      expect(ShipIO::BASE_URL).to eq("https://ship.io")
    end
  end

  describe "using the client" do
    it "should list the jobs" do
      jobs = @client.jobs

      expect(jobs.count).to be > 0
    end

    it "should return a pusher channel" do
      response = @client.pusher_channel

      expect(response["pusher_key"]).to_not be_nil
      expect(response["name"]).to_not be_nil
    end

    it "should return a list of builds for a job" do
      job = @client.jobs.first
      builds = job.builds

      expect(builds.count).to be > 0
    end
  end
end