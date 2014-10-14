require 'test_helper'

class DrinkBlogsControllerTest < ActionController::TestCase
  setup do
    @drink_blog = drink_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drink_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drink_blog" do
    assert_difference('DrinkBlog.count') do
      post :create, drink_blog: { paragraph1: @drink_blog.paragraph1, paragraph2: @drink_blog.paragraph2, paragraph3: @drink_blog.paragraph3, paragraph4: @drink_blog.paragraph4, title: @drink_blog.title }
    end

    assert_redirected_to drink_blog_path(assigns(:drink_blog))
  end

  test "should show drink_blog" do
    get :show, id: @drink_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drink_blog
    assert_response :success
  end

  test "should update drink_blog" do
    patch :update, id: @drink_blog, drink_blog: { paragraph1: @drink_blog.paragraph1, paragraph2: @drink_blog.paragraph2, paragraph3: @drink_blog.paragraph3, paragraph4: @drink_blog.paragraph4, title: @drink_blog.title }
    assert_redirected_to drink_blog_path(assigns(:drink_blog))
  end

  test "should destroy drink_blog" do
    assert_difference('DrinkBlog.count', -1) do
      delete :destroy, id: @drink_blog
    end

    assert_redirected_to drink_blogs_path
  end
end
