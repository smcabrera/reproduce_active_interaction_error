# frozen_string_literal: true

module PostConcern
  extend ActiveSupport::Concern

  included do
    string :title, default: 'default title'
  end
end
