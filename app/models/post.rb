class Post < ApplicationRecord
  validates :title, presence: { message: "should happen once per year" }
end