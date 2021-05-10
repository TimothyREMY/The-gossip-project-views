class StaticPagesController < ApplicationController
  def contact
  end

  def team
  end

  def index
    @gossips = Gossip.all
  end
end
