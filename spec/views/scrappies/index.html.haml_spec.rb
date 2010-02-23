require 'spec_helper'

describe "scrappies/index.html.haml" do
  include ScrappiesHelper

  before(:each) do
    assign(:scrappies, [
      stub_model(Scrappy,
        :name => "MyString",
        :label => "MyString"
      ),
      stub_model(Scrappy,
        :name => "MyString",
        :label => "MyString"
      )
    ])
  end

  it "renders a list of scrappies" do
    render
    response.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    response.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
  end
end
