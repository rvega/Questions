require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { body: @question.body, topic: @question.topic }
    end

    assert_response 201
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should update question" do
    put :update, id: @question, question: { body: @question.body, topic: @question.topic }
    assert_response 204
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_response 204
  end
end
