require 'rails_helper'

RSpec.describe CreatePost do
  describe 'run' do
    let(:user) { User.create(name: 'Alice') }
    context 'with a title argument' do
      subject! { described_class.run(user: user, title: "Bob's post") }

      it { expect(Post.last.title).to eq "Bob's post" }
    end

    context 'without a title argument' do
      subject! { described_class.run(user: user) }

      it { expect(Post.last.title).to eq "Alice's post" }
    end
  end
end
