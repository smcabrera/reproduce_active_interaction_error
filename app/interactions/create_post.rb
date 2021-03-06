# frozen_string_literal: true

class CreatePost < ActiveInteraction::Base
  include PostConcern

  record :user
  string :title, default: -> { "#{user.name}'s post" }

  def execute
    Post.create(user: user, title: title)
  end
end
