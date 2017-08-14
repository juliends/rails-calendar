class Article < ApplicationRecord
  scope :published, -> { where(published: true) }

  # def self.published
  #   where(published: true)
  # end
end
