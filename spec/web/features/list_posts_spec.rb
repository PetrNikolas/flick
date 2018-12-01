require 'features_helper'

RSpec.describe 'List posts' do
  let(:repository) { PostRepository.new }
  before do
    repository.clear

    repository.create(title: 'PoEAA', author: 'Martin Fowler', description: 'New post', content: 'My new post!')
    repository.create(title: 'TDD',   author: 'Kent Beck', description: 'New post', content: 'My new post!')
  end

  it 'displays each post on the page' do
    visit '/posts'

    within '#posts' do
      expect(page).to have_selector('.post', count: 2), 'Expected to find 2 posts'
    end
  end
end
