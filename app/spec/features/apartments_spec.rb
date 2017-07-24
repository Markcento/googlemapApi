require 'rails_helper'

RSpec.feature "Apartments", type: :feature do
  context 'Check that we can create new appartment' do
  Steps "load page"  do
    Given "I'm on the landing page" do
      visit "/"
    end
  end   #end of step 1
  Steps "Create new appartment"  do
    visit "/"
    When "I click add new appartment" do
      click_link 'New Apartment'
      expect(page).to have_content("New Apartment")
    end
  end # end step 2
  Steps "Create new appartment"  do
    visit "/"
    When "I click add new appartment" do
      click_link 'New Apartment'
      expect(page).to have_content("New Apartment")
    end
    Then 'click submit and go back' do
        click_button 'Create Apartment'
        click_link 'Back'
    end
    Then 'show should exist' do
        click_link 'Show'
        expect(page).to have_content("Street1:")
    end

  end # end step 3


  end
end
