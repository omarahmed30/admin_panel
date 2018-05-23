require "application_system_test_case"

class CohortStudentsTest < ApplicationSystemTestCase
  setup do
    @cohort_student = cohort_students(:one)
  end

  test "visiting the index" do
    visit cohort_students_url
    assert_selector "h1", text: "Cohort Students"
  end

  test "creating a Cohort student" do
    visit cohort_students_url
    click_on "New Cohort Student"

    fill_in "Cohort", with: @cohort_student.cohort_id
    fill_in "Student", with: @cohort_student.student_id
    click_on "Create Cohort student"

    assert_text "Cohort student was successfully created"
    click_on "Back"
  end

  test "updating a Cohort student" do
    visit cohort_students_url
    click_on "Edit", match: :first

    fill_in "Cohort", with: @cohort_student.cohort_id
    fill_in "Student", with: @cohort_student.student_id
    click_on "Update Cohort student"

    assert_text "Cohort student was successfully updated"
    click_on "Back"
  end

  test "destroying a Cohort student" do
    visit cohort_students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cohort student was successfully destroyed"
  end
end
