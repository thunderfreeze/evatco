require 'test_helper'

class QuestionnairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire = questionnaires(:one)
  end

  test "should get index" do
    get questionnaires_url
    assert_response :success
  end

  test "should get new" do
    get new_questionnaire_url
    assert_response :success
  end

  test "should create questionnaire" do
    assert_difference('Questionnaire.count') do
      post questionnaires_url, params: { questionnaire: { importance1: @questionnaire.importance1, importance2: @questionnaire.importance2, importance3: @questionnaire.importance3, importance4: @questionnaire.importance4, importance5: @questionnaire.importance5, question1: @questionnaire.question1, question2: @questionnaire.question2, question3: @questionnaire.question3, question4: @questionnaire.question4, question5: @questionnaire.question5, user_id: @questionnaire.user_id } }
    end

    assert_redirected_to questionnaire_url(Questionnaire.last)
  end

  test "should show questionnaire" do
    get questionnaire_url(@questionnaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionnaire_url(@questionnaire)
    assert_response :success
  end

  test "should update questionnaire" do
    patch questionnaire_url(@questionnaire), params: { questionnaire: { importance1: @questionnaire.importance1, importance2: @questionnaire.importance2, importance3: @questionnaire.importance3, importance4: @questionnaire.importance4, importance5: @questionnaire.importance5, question1: @questionnaire.question1, question2: @questionnaire.question2, question3: @questionnaire.question3, question4: @questionnaire.question4, question5: @questionnaire.question5, user_id: @questionnaire.user_id } }
    assert_redirected_to questionnaire_url(@questionnaire)
  end

  test "should destroy questionnaire" do
    assert_difference('Questionnaire.count', -1) do
      delete questionnaire_url(@questionnaire)
    end

    assert_redirected_to questionnaires_url
  end
end
