require 'test_helper'

class NewsBlogsControllerTest < ActionController::TestCase
  setup do
    @news_blog = news_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_blog" do
    assert_difference('NewsBlog.count') do
      post :create, news_blog: { paragraph1: @news_blog.paragraph1, paragraph2: @news_blog.paragraph2, paragraph3: @news_blog.paragraph3, paragraph4: @news_blog.paragraph4, title: @news_blog.title }
    end

    assert_redirected_to news_blog_path(assigns(:news_blog))
  end

  test "should show news_blog" do
    get :show, id: @news_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_blog
    assert_response :success
  end

  test "should update news_blog" do
    patch :update, id: @news_blog, news_blog: { paragraph1: @news_blog.paragraph1, paragraph2: @news_blog.paragraph2, paragraph3: @news_blog.paragraph3, paragraph4: @news_blog.paragraph4, title: @news_blog.title }
    assert_redirected_to news_blog_path(assigns(:news_blog))
  end

  test "should destroy news_blog" do
    assert_difference('NewsBlog.count', -1) do
      delete :destroy, id: @news_blog
    end

    assert_redirected_to news_blogs_path
  end
end
