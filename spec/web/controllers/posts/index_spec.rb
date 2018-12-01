require_relative '../../../../apps/web/controllers/posts/index'

RSpec.describe Web::Controllers::Posts::Index, type: :action do
  let(:action) { Web::Controllers::Posts::Index.new }
  let(:params) { Hash[] }
  let(:repository) { PostRepository.new }

  before do
    repository.clear

    @post = repository.create(title: 'TDD', author: 'Kent Beck', description: 'New post', content: 'My new post. Lorem ipsum.')
  end

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq(200)
  end

  it 'exposes all posts' do
    action.call(params)
    expect(action.exposures[:posts]).to eq([@post])
  end
end
