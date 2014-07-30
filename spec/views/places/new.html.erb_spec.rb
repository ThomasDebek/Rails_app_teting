require 'spec_helper'

describe "places/new" do
  before(:each) do
    assign(:place, stub_model(Place,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new place form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", places_path, "post" do
      assert_select "input#place_title[name=?]", "place[title]"
      assert_select "textarea#place_description[name=?]", "place[description]"
      assert_select "input#place_image_url[name=?]", "place[image_url]"
      assert_select "input#place_price[name=?]", "place[price]"
    end
  end
end
