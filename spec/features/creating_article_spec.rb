require 'rails_helper'

RSpec.feature 'Creating Articles' do
  scenario 'A user creates a new article' do
    # Visit root page
    # click on new article link
    # fill in title
    # fill in body
    # create button to create article
    # expects:
    # Message: Article has been created
    # Redirect: Article path
    visit '/'
    click_link 'New Article'
    fill_in 'Title', with: 'Creating a blog'
    fill_in 'Body', with: 'Lorem Ipsum'
    click_button 'Create Article'

    expect(page).to have_content('Article has been created')
    expect(page.current_path).to eq(articles_path)
  end
end