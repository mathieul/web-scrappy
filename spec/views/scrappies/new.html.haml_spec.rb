require 'spec_helper'

describe "scrappies/new.html.haml" do
  include ScrappiesHelper

  before(:each) do
    assign(:scrappy, stub_model(Scrappy,
      :new_record? => true,
      :name => "MyString",
      :label => "MyString"
    ))
  end

  it "renders new scrappy form" do
    render

    response.should have_selector("form", :action => scrappies_path, :method => "post") do |form|
      form.should have_selector("input#scrappy_name", :name => "scrappy[name]")
      form.should have_selector("input#scrappy_label", :name => "scrappy[label]")
    end
  end
end
