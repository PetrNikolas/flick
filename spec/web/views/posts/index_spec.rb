require_relative '../../../../apps/web/views/posts/index'

RSpec.describe Web::Views::Posts::Index, type: :view do
  let(:exposures) { Hash[posts: []] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/posts/index.html.erb') }
  let(:view)      { Web::Views::Posts::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #posts' do
    expect(view.posts).to eq(exposures.fetch(:posts))
  end

  context 'when there are no posts' do
    it 'shows a placeholder message' do
      expect(rendered).to include('<p class="placeholder">There are no posts yet.</p>')
    end
  end

  context 'when there are posts' do
    let(:post1)     { Post.new(title: 'Refactoring', author: 'Martin Fowler', description: 'Post', content: 'My new post') }
    let(:post2)     { Post.new(title: 'Domain Driven Design', author: 'Eric Evans', description: 'Post', content: 'My new post') }
    let(:exposures) { Hash[posts: [post1, post2]] }

    it 'lists them all' do
      expect(rendered.scan(/class="post"/).length).to eq(2)
      expect(rendered).to include('Refactoring')
      expect(rendered).to include('Domain Driven Design')
    end

    it 'hides the placeholder message' do
      expect(rendered).to_not include('<p class="placeholder">There are no posts yet.</p>')
    end
  end
end
