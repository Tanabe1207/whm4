class TopsController < ApplicationController
  def index
    @offers = Offer.all
    # allの場合全て表示される？
    
  end
end
