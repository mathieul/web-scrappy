require 'spec_helper'

describe "scrappies/edit.html.haml" do
  include ScrappiesHelper

  before(:each) do
    assign(:scrappy, @scrappy = stub_model(Scrappy,
      :new_record? => false,
      :name => "MyString",
      :label => "MyString"
    ))
  end

  it "renders the edit scrappy form" do
    render

    response.should have_selector("form", :action => scrappy_path(@scrappy), :method => "post") do |form|
      form.should have_selector("input#scrappy_name", :name => "scrappy[name]")
      form.should have_selector("input#scrappy_label", :name => "scrappy[label]")
    end
  end
end
