class Evaluation < ApplicationRecord
  belongs_to :questionnaire , required: false


  validates_presence_of :value1, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :value2, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :value3, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :value4, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :value5, :message => "^Veuillez saisir une réponse pour ce champs"
end
