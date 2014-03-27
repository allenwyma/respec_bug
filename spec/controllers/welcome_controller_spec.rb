require 'spec_helper'

describe WelcomeController do
  before :each do
    @user = User.new
  end
  describe "GET 'index'" do
    before :each do
      allow(request.env['warden']).to receive(:authenticate!).and_return @user
    end
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET 'protected'" do
    it "returns http success" do
      allow(request.env['warden']).to receive(:authenticate!).and_return @user
      get :protected
      expect(response).to be_success
    end
  end

end
