class CreatePost < ActiveInteraction::Base
  record :user
  string :title, default: -> { "#{user.name}'s post" }

  def execute
    Post.create(user: user, title: title)
  end
end
