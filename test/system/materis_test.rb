require "application_system_test_case"

class MaterisTest < ApplicationSystemTestCase
  setup do
    @materi = materis(:one)
  end

  test "visiting the index" do
    visit materis_url
    assert_selector "h1", text: "Materis"
  end

  test "creating a Materi" do
    visit materis_url
    click_on "New Materi"

    fill_in "Deskripsi", with: @materi.deskripsi
    fill_in "Judul", with: @materi.judul
    fill_in "Namafile", with: @materi.namafile
    click_on "Create Materi"

    assert_text "Materi was successfully created"
    click_on "Back"
  end

  test "updating a Materi" do
    visit materis_url
    click_on "Edit", match: :first

    fill_in "Deskripsi", with: @materi.deskripsi
    fill_in "Judul", with: @materi.judul
    fill_in "Namafile", with: @materi.namafile
    click_on "Update Materi"

    assert_text "Materi was successfully updated"
    click_on "Back"
  end

  test "destroying a Materi" do
    visit materis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Materi was successfully destroyed"
  end
end
