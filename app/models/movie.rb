class Movie < ApplicationRecord
  scope :ordered_by_release_year, -> { order(release_year: :asc) }

  require 'date'

  before_save :date_added_as_datetime

  private

  def date_added_as_datetime
    DateTime.parse(date_added.to_s)
  end
end
