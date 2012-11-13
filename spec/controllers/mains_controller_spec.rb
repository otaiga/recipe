require 'spec_helper'

describe MainsController do

  it 'Should Root to Landing page' do
    get :index
    response.should be_success
  end

  it "Should display Contact Us page" do
    get :contact_us
    response.should be_success
  end

  it "Should Render about us page" do
    get :about
    response.should be_success
  end  

end
