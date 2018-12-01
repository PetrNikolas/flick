RSpec.describe Post, type: :entity do
  it 'can be initialized with attributes' do
    post = Post.new(title: 'Refactoring')
    expect(post.title).to eq('Refactoring')
  end
end
