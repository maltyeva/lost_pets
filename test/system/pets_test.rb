require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'

    assert_selector "h1", text: "Pets"
  end

  test "index has the correct number of pets" do
    visit '/'

    assert_selector '.pet', count: Pet.count
  end

  test "user can add a pet" do
    # login_as ()

    visit '/pets/new'

    fill_in "pet_name", with: "Snickers"
    fill_in "pet_address", with: "Shenzhen"
    fill_in "pet_species", with: "Dog"
    fill_in "pet_age", with: 5
    # fill_in "pet_found_on", with: Date.today

    click_on 'Create Pet'

    assert_equal pets_path, page.current_path

    assert_text "Snickers"

  end
end
