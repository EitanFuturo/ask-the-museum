require "test_helper"

class VisitorQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitor_question = visitor_questions(:one)
  end

  test "should get index" do
    get visitor_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_visitor_question_url
    assert_response :success
  end

  test "should create visitor_question" do
    assert_difference('VisitorQuestion.count') do
      post visitor_questions_url, params: { visitor_question: { text: @visitor_question.text } }
    end

    assert_redirected_to visitor_question_url(VisitorQuestion.last)
  end

  test "should show visitor_question" do
    get visitor_question_url(@visitor_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitor_question_url(@visitor_question)
    assert_response :success
  end

  test "should update visitor_question" do
    patch visitor_question_url(@visitor_question), params: { visitor_question: { text: @visitor_question.text } }
    assert_redirected_to visitor_question_url(@visitor_question)
  end

  test "should destroy visitor_question" do
    assert_difference('VisitorQuestion.count', -1) do
      delete visitor_question_url(@visitor_question)
    end

    assert_redirected_to visitor_questions_url
  end
end
