require 'spec_helper'

describe "clients/show.html.haml" do
  before(:each) do
    @client = assign(:client, stub_model(Client))
  end

  it "renders attributes in <p>" do
    render
  end
end
