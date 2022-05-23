# frozen_string_literal: true

module PostConcern
  extend ActiveSupport::Concern

  included do
    # record :user, default: nil
    string :title, default: 'default title'
  end
end
