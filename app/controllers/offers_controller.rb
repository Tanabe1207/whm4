class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
    if current_user.offers.create(offer_params)
      redirect_to offers_path, notice:'投稿に成功しました'
    else
      flash.now[:alert]="投稿失敗"
      render :new
    end
  end

  private
  def topic_params
    params.require(:offer).permit
    (:offer_image, :country, :state, :region, :period_form, :period_to, :title, :detail)
  end
  
end


# t.integer: user_id
# t.string: country
# t.string: state
# t.string: region
# t.integer: period_form
# t.integer: period_to
# t.string: title
# t.string: detail
# t.string: offer_image
