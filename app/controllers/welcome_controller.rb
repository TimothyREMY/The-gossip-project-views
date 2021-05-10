class WelcomeController < ApplicationController
  def show
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:first_name]
    puts "$" * 60
  end

  def gossip
    puts params[:title]
    @gossip = Gossip.find(params[:id])
    @user = User.find(@gossip.user_id)
  end

  def user
    puts params[:title]
    @user = User.find(params[:id])
  end

end
