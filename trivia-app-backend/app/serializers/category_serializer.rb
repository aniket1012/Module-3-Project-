class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :questions, :easy_questions, :medium_questions, :hard_questions, :round_of_questions
end
