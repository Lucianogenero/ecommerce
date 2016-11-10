require 'test_helper'

class SubcategoriaprodutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subcategoriaproduto = subcategoriaprodutos(:one)
  end

  test "should get index" do
    get subcategoriaprodutos_url
    assert_response :success
  end

  test "should get new" do
    get new_subcategoriaproduto_url
    assert_response :success
  end

  test "should create subcategoriaproduto" do
    assert_difference('Subcategoriaproduto.count') do
      post subcategoriaprodutos_url, params: { subcategoriaproduto: { categoriaproduto_id: @subcategoriaproduto.categoriaproduto_id, nome: @subcategoriaproduto.nome } }
    end

    assert_redirected_to subcategoriaproduto_url(Subcategoriaproduto.last)
  end

  test "should show subcategoriaproduto" do
    get subcategoriaproduto_url(@subcategoriaproduto)
    assert_response :success
  end

  test "should get edit" do
    get edit_subcategoriaproduto_url(@subcategoriaproduto)
    assert_response :success
  end

  test "should update subcategoriaproduto" do
    patch subcategoriaproduto_url(@subcategoriaproduto), params: { subcategoriaproduto: { categoriaproduto_id: @subcategoriaproduto.categoriaproduto_id, nome: @subcategoriaproduto.nome } }
    assert_redirected_to subcategoriaproduto_url(@subcategoriaproduto)
  end

  test "should destroy subcategoriaproduto" do
    assert_difference('Subcategoriaproduto.count', -1) do
      delete subcategoriaproduto_url(@subcategoriaproduto)
    end

    assert_redirected_to subcategoriaprodutos_url
  end
end
