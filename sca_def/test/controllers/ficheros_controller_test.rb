require 'test_helper'

class FicherosControllerTest < ActionController::TestCase
  setup do
    @fichero = ficheros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ficheros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fichero" do
    assert_difference('Fichero.count') do
      post :create, fichero: { Casado: @fichero.Casado, Edad: @fichero.Edad, Fecha: @fichero.Fecha, Hora: @fichero.Hora, Nombre: @fichero.Nombre }
    end

    assert_redirected_to fichero_path(assigns(:fichero))
  end

  test "should show fichero" do
    get :show, id: @fichero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fichero
    assert_response :success
  end

  test "should update fichero" do
    patch :update, id: @fichero, fichero: { Casado: @fichero.Casado, Edad: @fichero.Edad, Fecha: @fichero.Fecha, Hora: @fichero.Hora, Nombre: @fichero.Nombre }
    assert_redirected_to fichero_path(assigns(:fichero))
  end

  test "should destroy fichero" do
    assert_difference('Fichero.count', -1) do
      delete :destroy, id: @fichero
    end

    assert_redirected_to ficheros_path
  end
end
