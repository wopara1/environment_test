# location: spec/features/integration_spec.rb

require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('Harry Potter')
    end
end