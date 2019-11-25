require 'test_helper'

class MaterisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materi = materis(:one)
  end

  test "should get index" do
    get materis_url
    assert_response :success
  end

  test "should get new" do
    get new_materi_url
    assert_response :success
  end

  test "should create materi" do
    assert_difference('Materi.count') do
      post materis_url, params: { materi: { deskripsi: @materi.deskripsi, judul: @materi.judul, namafile: @materi.namafile } }
    end

    assert_redirected_to materi_url(Materi.last)
  end

  test "should show materi" do
    get materi_url(@materi)
    assert_response :success
  end

  test "should get edit" do
    get edit_materi_url(@materi)
    assert_response :success
  end

  test "should update materi" do
    patch materi_url(@materi), params: { materi: { deskripsi: @materi.deskripsi, judul: @materi.judul, namafile: @materi.namafile } }
    assert_redirected_to materi_url(@materi)
  end

  test "should destroy materi" do
    assert_difference('Materi.count', -1) do
      delete materi_url(@materi)
    end

    assert_redirected_to materis_url
  end
end
