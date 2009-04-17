require File.dirname(__FILE__) + '/../test_helper'

class GotsPageTest < ActionController::IntegrationTest
  fixtures :users

  def setup
    visit "/login"
    fill_in "Login", :with => "quentin"
    fill_in "Password", :with => "monkey"
    click_button "Log in"
    assert_contain "Logged in successfully"
  end
  
  def test_create_got
    visit "/gots/new"
    fill_in "Title", :with => "A title"
    fill_in "Description", :with => "A description"
    click_button "Save"
    assert_contain "A title"
  end

#  def test_create_need_with_tag
#    visit "/needs/new"
#    fill_in "Title", :with => "A title"
#    fill_in "Description", :with => "A description"
#    fill_in "Tags", :with => "car furniture apples"
#    click_button "Save"
#    assert_contain "A title"
#  end
#
#  def test_create_two_needs
#    visit "/needs/new"
#    fill_in "Title", :with => "A title"
#    fill_in "Description", :with => "A description"
#    fill_in "Tags", :with => "car furniture apples"
#    click_button "Save"
#    puts response_body
#    assert_contain "A title"
#    visit "/needs/new"
#    fill_in "Title", :with => "Another title"
#    fill_in "Description", :with => "A description"
#    fill_in "Tags", :with => "car furniture apples"
#    click_button "Save"
#    assert_contain "Another title"
#  end
#
#  def test_view_need
#    need = Need.new(:title => "a new title", :description => "description")
#    need.tag_list = "tag1 tag2"
#    need.save!
#    visit need_path(need)
#    assert_contain "title"
#    assert_contain "tag1 tag2"
#  end
end
