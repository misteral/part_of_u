require 'test_helper'

class TapsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Tap.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Tap.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tap.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tap_url(assigns(:tap))
  end

  def test_edit
    get :edit, :id => Tap.first
    assert_template 'edit'
  end

  def test_update_invalid
    Tap.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tap.first
    assert_template 'edit'
  end

  def test_update_valid
    Tap.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tap.first
    assert_redirected_to tap_url(assigns(:tap))
  end

  def test_destroy
    tap = Tap.first
    delete :destroy, :id => tap
    assert_redirected_to taps_url
    assert !Tap.exists?(tap.id)
  end
end
