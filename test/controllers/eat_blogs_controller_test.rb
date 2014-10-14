require 'test_helper'

class EatBlogsControllerTest < ActionController::TestCase
  setup do
    @eat_blog = eat_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eat_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eat_blog" do
    assert_difference('EatBlog.count') do
      post :create, eat_blog: { paragraph1: @eat_blog.paragraph1, paragraph2: @eat_blog.paragraph2, paragraph3: @eat_blog.paragraph3, paragraph4: @eat_blog.paragraph4, title: @eat_blog.title }
    end

    assert_redirected_to eat_blog_path(assigns(:eat_blog))
  end

  test "should show eat_blog" do
    get :show, id: @eat_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eat_blog
    assert_response :success
  end

  test "should update eat_blog" do
    patch :update, id: @eat_blog, eat_blog: { paragraph1: @eat_blog.paragraph1, paragraph2: @eat_blog.paragraph2, paragraph3: @eat_blog.paragraph3, paragraph4: @eat_blog.paragraph4, title: @eat_blog.title }
    assert_redirected_to eat_blog_path(assigns(:eat_blog))
  end

  test "should destroy eat_blog" do
    assert_difference('EatBlog.count', -1) do
      delete :destroy, id: @eat_blog
    end

    assert_redirected_to eat_blogs_path
  end
end
