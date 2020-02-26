class Questionnaire < ApplicationRecord
  belongs_to :user

  validates :question1, :question2, :question3, :question4, :question5, :importance1, :importance2, :importance3, :importance4, :importance5,  presence: true

end
