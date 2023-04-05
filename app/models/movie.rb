class Movie < ApplicationRecord
  require 'date'

  before_save :date_added_as_datetime

  private

  def date_added_as_datetime
    DateTime.parse(date_added.to_s)
  end
end
