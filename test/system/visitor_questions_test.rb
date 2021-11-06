require "application_system_test_case"

class VisitorQuestionsTest < ApplicationSystemTestCase
  setup do
    @visitor_question = visitor_questions(:one)
  end

  test "visiting the index" do
    visit visitor_questions_url
    assert_selector "h1", text: "Visitor Questions"
  end

  test "creating a Visitor question" do
    visit visitor_questions_url
    click_on "New Visitor Question"

    fill_in "Text", with: @visitor_question.text
    click_on "Create Visitor question"

    assert_text "Visitor question was successfully created"
    click_on "Back"
  end

  test "updating a Visitor question" do
    visit visitor_questions_url
    click_on "Edit", match: :first

    fill_in "Text", with: @visitor_question.text
    click_on "Update Visitor question"

    assert_text "Visitor question was successfully updated"
    click_on "Back"
  end

  test "destroying a Visitor question" do
    visit visitor_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visitor question was successfully destroyed"
  end
end
