class Questionnaire < ApplicationRecord
  belongs_to :user


  
  
 


#Permet de définir que les champs doivent être remplis
  validates_presence_of :question1, :message => "^Veuillez remplir ce champ"

  validates :question2, :question3, :question4, :question5, :importance1, :importance2, :importance3, :importance4, :importance5,  presence: true

end
