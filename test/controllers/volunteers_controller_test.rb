require 'test_helper'

class VolunteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get volunteers_url, as: :json
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post volunteers_url, params: { volunteer: { age: @volunteer.age, career: @volunteer.career, email: @volunteer.email, institution: @volunteer.institution, lesson_id: @volunteer.lesson_id, name: @volunteer.name, password: @volunteer.password, session_id: @volunteer.session_id, student_id: @volunteer.student_id } }, as: :json
    end

    assert_response 201
  end

  test "should show volunteer" do
    get volunteer_url(@volunteer), as: :json
    assert_response :success
  end

  test "should update volunteer" do
    patch volunteer_url(@volunteer), params: { volunteer: { age: @volunteer.age, career: @volunteer.career, email: @volunteer.email, institution: @volunteer.institution, lesson_id: @volunteer.lesson_id, name: @volunteer.name, password: @volunteer.password, session_id: @volunteer.session_id, student_id: @volunteer.student_id } }, as: :json
    assert_response 200
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete volunteer_url(@volunteer), as: :json
    end

    assert_response 204
  end
end
