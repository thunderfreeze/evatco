require "application_system_test_case"

class QuestionnairesTest < ApplicationSystemTestCase
  setup do
    @questionnaire = questionnaires(:one)
  end

  test "visiting the index" do
    visit questionnaires_url
    assert_selector "h1", text: "Questionnaires"
  end

  test "creating a Questionnaire" do
    visit questionnaires_url
    click_on "New Questionnaire"

    fill_in "Importance1", with: @questionnaire.importance1
    fill_in "Importance2", with: @questionnaire.importance2
    fill_in "Importance3", with: @questionnaire.importance3
    fill_in "Importance4", with: @questionnaire.importance4
    fill_in "Importance5", with: @questionnaire.importance5
    fill_in "Question1", with: @questionnaire.question1
    fill_in "Question2", with: @questionnaire.question2
    fill_in "Question3", with: @questionnaire.question3
    fill_in "Question4", with: @questionnaire.question4
    fill_in "Question5", with: @questionnaire.question5
    fill_in "User", with: @questionnaire.user_id
    click_on "Create Questionnaire"

    assert_text "Questionnaire was successfully created"
    click_on "Back"
  end

  test "updating a Questionnaire" do
    visit questionnaires_url
    click_on "Edit", match: :first

    fill_in "Importance1", with: @questionnaire.importance1
    fill_in "Importance2", with: @questionnaire.importance2
    fill_in "Importance3", with: @questionnaire.importance3
    fill_in "Importance4", with: @questionnaire.importance4
    fill_in "Importance5", with: @questionnaire.importance5
    fill_in "Question1", with: @questionnaire.question1
    fill_in "Question2", with: @questionnaire.question2
    fill_in "Question3", with: @questionnaire.question3
    fill_in "Question4", with: @questionnaire.question4
    fill_in "Question5", with: @questionnaire.question5
    fill_in "User", with: @questionnaire.user_id
    click_on "Update Questionnaire"

    assert_text "Questionnaire was successfully updated"
    click_on "Back"
  end

  test "destroying a Questionnaire" do
    visit questionnaires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Questionnaire was successfully destroyed"
  end
end
