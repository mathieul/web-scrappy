require 'spec_helper'

describe "scrappies/show.html.haml" do
  include ScrappiesHelper
  before(:each) do
    assign(:scrappy, @scrappy = stub_model(Scrappy,
      :name => "MyString",
      :label => "MyString"
    ))
  end

  it "renders attributes in <p>" do
    render
    response.should contain("MyString")
    response.should contain("MyString")
  end
end
