class Questionnaire < ApplicationRecord
  belongs_to :user

  has_many :evaluations


  
  
 


#Permet de définir que les champs doivent être remplis
  validates_presence_of :question1, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :question2, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :question3, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :question4, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :question5, :message => "^Veuillez saisir une réponse pour ce champs"
  validates_presence_of :importance1, :message => "^Veuillez saisir un nombre entre 1 et 96"
  validates_presence_of :importance2, :message => "^Veuillez saisir un nombre entre 1 et 96"
  validates_presence_of :importance3, :message => "^Veuillez saisir un nombre entre 1 et 96"
  validates_presence_of :importance4, :message => "^Veuillez saisir un nombre entre 1 et 96"
  validates_presence_of :importance5, :message => "^Veuillez saisir un nombre entre 1 et 96"
  

  

end
