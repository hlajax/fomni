class AccueilController < ApplicationController
  before_action :authenticate_auteur!#, except: [:index]
  def index
  end
end
