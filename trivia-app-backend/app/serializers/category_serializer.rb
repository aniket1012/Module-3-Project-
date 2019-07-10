class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :questions, :level_one, :level_two, :level_three, :level_four, :level_five, :round_of_questions
end
