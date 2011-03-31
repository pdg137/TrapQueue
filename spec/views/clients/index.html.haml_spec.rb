require 'spec_helper'

describe "clients/index.html.haml" do
  before(:each) do
    assign(:clients, [
      stub_model(Client),
      stub_model(Client)
    ])
  end

  it "renders a list of clients" do
    render
  end
end
