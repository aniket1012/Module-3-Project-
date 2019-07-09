class Category < ApplicationRecord
    has_many :questions

    def easy_questions
      self.questions.select do |question|
          question.difficulty == "easy"
      end
    end

    def medium_questions
      self.questions.select do |question|
          question.difficulty == "medium"
      end
    end

    def hard_questions
      self.questions.select do |question|
          question.difficulty == "hard"
      end
    end

    def round_of_questions
      questions = []
      questions << self.easy_questions.sample(2)
      questions << self.medium_questions.sample(2)
      questions << self.hard_questions.sample
      questions.flatten
    end


end
