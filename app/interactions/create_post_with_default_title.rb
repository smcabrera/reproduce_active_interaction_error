# frozen_string_literal: true

class CreatePostWithDefaultTitle < ActiveInteraction::Base
  include PostConcern

  record :user

  def execute
    Post.create(user: user, title: title)
  end
end
