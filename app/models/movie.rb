class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  before_destroy :check_for_bookmarks

  private

  def check_for_bookmarks
    return false if :bookmarks != nil
  end

end
