class LineItemDate < ApplicationRecord
  belongs_to :quote

  validates :date, presence: true, uniqueness: { scope: :quote_id }

  scope :ordered, -> { order(date: :asc) }

  def previous_date
    quote.line_item_dates.where("date < ?", date).ordered.last
  end
end
