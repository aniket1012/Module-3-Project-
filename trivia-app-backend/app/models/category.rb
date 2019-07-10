class Category < ApplicationRecord
    has_many :questions

    def level_one
      self.questions.select do |question|
          question.difficulty == "1"
      end
    end

    def level_two
      self.questions.select do |question|
          question.difficulty == "2"
      end
    end

    def level_three
      self.questions.select do |question|
          question.difficulty == "3"
      end
    end

    def level_four
      self.questions.select do |question|
          question.difficulty == "4"
      end
    end

    def level_five
      self.questions.select do |question|
          question.difficulty == "5"
      end
    end

    def round_of_questions
      questions = []
      questions << self.level_one.sample
      questions << self.level_two.sample
      questions << self.level_three.sample
      questions << self.level_four.sample
      questions << self.level_five.sample
      questions.flatten
    end


end
