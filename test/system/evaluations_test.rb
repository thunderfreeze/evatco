require "application_system_test_case"

class EvaluationsTest < ApplicationSystemTestCase
  setup do
    @evaluation = evaluations(:one)
  end

  test "visiting the index" do
    visit evaluations_url
    assert_selector "h1", text: "Evaluations"
  end

  test "creating a Evaluation" do
    visit evaluations_url
    click_on "New Evaluation"

    fill_in "Questionnaire", with: @evaluation.questionnaire_id
    fill_in "Score", with: @evaluation.score
    fill_in "Value1", with: @evaluation.value1
    fill_in "Value2", with: @evaluation.value2
    fill_in "Value3", with: @evaluation.value3
    fill_in "Value4", with: @evaluation.value4
    fill_in "Value5", with: @evaluation.value5
    click_on "Create Evaluation"

    assert_text "Evaluation was successfully created"
    click_on "Back"
  end

  test "updating a Evaluation" do
    visit evaluations_url
    click_on "Edit", match: :first

    fill_in "Questionnaire", with: @evaluation.questionnaire_id
    fill_in "Score", with: @evaluation.score
    fill_in "Value1", with: @evaluation.value1
    fill_in "Value2", with: @evaluation.value2
    fill_in "Value3", with: @evaluation.value3
    fill_in "Value4", with: @evaluation.value4
    fill_in "Value5", with: @evaluation.value5
    click_on "Update Evaluation"

    assert_text "Evaluation was successfully updated"
    click_on "Back"
  end

  test "destroying a Evaluation" do
    visit evaluations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evaluation was successfully destroyed"
  end
end
