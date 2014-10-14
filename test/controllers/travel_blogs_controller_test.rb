require 'test_helper'

class TravelBlogsControllerTest < ActionController::TestCase
  setup do
    @travel_blog = travel_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_blog" do
    assert_difference('TravelBlog.count') do
      post :create, travel_blog: { paragraph1: @travel_blog.paragraph1, paragraph2: @travel_blog.paragraph2, paragraph3: @travel_blog.paragraph3, paragraph4: @travel_blog.paragraph4, title: @travel_blog.title }
    end

    assert_redirected_to travel_blog_path(assigns(:travel_blog))
  end

  test "should show travel_blog" do
    get :show, id: @travel_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_blog
    assert_response :success
  end

  test "should update travel_blog" do
    patch :update, id: @travel_blog, travel_blog: { paragraph1: @travel_blog.paragraph1, paragraph2: @travel_blog.paragraph2, paragraph3: @travel_blog.paragraph3, paragraph4: @travel_blog.paragraph4, title: @travel_blog.title }
    assert_redirected_to travel_blog_path(assigns(:travel_blog))
  end

  test "should destroy travel_blog" do
    assert_difference('TravelBlog.count', -1) do
      delete :destroy, id: @travel_blog
    end

    assert_redirected_to travel_blogs_path
  end
end
