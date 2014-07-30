require 'spec_helper'

describe "places/edit" do
  before(:each) do
    @place = assign(:place, stub_model(Place,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit place form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", place_path(@place), "post" do
      assert_select "input#place_title[name=?]", "place[title]"
      assert_select "textarea#place_description[name=?]", "place[description]"
      assert_select "input#place_image_url[name=?]", "place[image_url]"
      assert_select "input#place_price[name=?]", "place[price]"
    end
  end
end
