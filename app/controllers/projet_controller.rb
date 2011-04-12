class ProjetController < ApplicationController
  
  def index
    if user_signed_in?
      user = User.find(current_user)
      @projets = Projet.find_all_by_user_id(user)
    end
  end
  
end
