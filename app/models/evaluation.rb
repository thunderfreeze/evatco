class Evaluation < ApplicationRecord
  belongs_to :questionnaire

  validates_presence_of :value1, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :value2, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :value3, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :value4, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :value5, :message => "^Veuillez saisir une réponse pour ce champs"

  before_save :compute_score

  def value1_ponderated
    1.0 * value1 * questionnaire.importance1 / 10.0
  end

  def value2_ponderated
    1.0 * value2 * questionnaire.importance2 / 10.0
  end

  def value3_ponderated
    1.0 * value3 * questionnaire.importance3 / 10.0
  end

  def value4_ponderated
    1.0 * value4 * questionnaire.importance4 / 10.0
  end

  def value5_ponderated
    1.0 * value5 * questionnaire.importance5 / 10.0
  end

  def to_s
    "Evaluation du #{created_at.strftime '%d/%m/%Y'}"
  end

  protected

  def compute_score
    self.score = value1_ponderated + value2_ponderated + value3_ponderated + value4_ponderated + value5_ponderated
  end
end
