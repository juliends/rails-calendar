class Article < ApplicationRecord

  validates :title, :date, :status, presence: true

  enum status: { pending: 0, published: 1 }

  # scope :published, -> { where(published: true) }

  # def self.published
  #   where(published: true)
  # end

  def date_to_string_day_month_year
    date.strftime("%d/%m/%Y")
  end
end
