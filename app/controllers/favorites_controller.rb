class FavoritesController < ApplicationController
  #before_action :logged_in?

  def create
    @offer = Offer.find(params[:offer_id])
      unless @offer.kininaru?(current_user)
        #offerモデルでfavorite_usersが存在するならtrueのkininaru?メソッドを定義。
        # kininiaru?メソッドにはcurrent_userが引数として入っている。
        # なので、「@offerのfavorite_usersがcurrrent_userでなければ」という意味。
        @offer.kininaru(current_user)
        respond_to do |format|
          # これによりAjaxリクエストに対応
          format.html{redirect_to request.referrer || root_url}
          format.js
        end
      end
  end

  def destroy
    @offer = Favorite.find(params[:id]).offer
    if @offer.kininaru?(current_user)
      @offer.unkininaru(current_user)# Favoiteモデルからuser_idでcurrent_userのofferレコードを抽出。
      # unkininaruメソッドでそれをdestroy
      respond_to do |format|
        format.html{redirect_to request.referrer || root_url}
        format.js
      end
    end
  end
end




end
