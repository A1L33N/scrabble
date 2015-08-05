require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble path'), {:type => feature}) do
  it('processes a word entry and returns a scrabble score') do
    visit('/')
    fill_in('word', :with => 'apple')
    click_button('Calculate')
    expect(page).to have_content(9)
  end
end
