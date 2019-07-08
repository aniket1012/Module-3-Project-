class Question < ApplicationRecord
  belongs_to :category
  belongs_to :rounds
end
