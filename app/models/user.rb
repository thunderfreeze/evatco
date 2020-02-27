class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  has_many :questionnaires
  

  validates_presence_of :first_name, :message => "^Veuillez saisir un prénom"
  validates_presence_of :last_name, :message => "^Veuillez saisir un nom"
  validates_presence_of :email, :message => "^Veuillez saisir une adresse mail"
  validates_presence_of :password, :message => "^Veuillez saisir un mot de passe"
  validates_presence_of :password_confirmation, :message => "^Veuillez vérifier un mot de passe"
  
end
