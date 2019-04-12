# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "body_parts/new", type: :view do
  before(:each) do
    assign(:body_part, BodyPart.new(
      :name => "MyString"
    ))
  end

  it "renders new body_part form" do
    render

    assert_select "form[action=?][method=?]", body_parts_path, "post" do

      assert_select "input[name=?]", "body_part[name]"
    end
  end
end