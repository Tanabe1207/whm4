class MakobangMailer < ApplicationMailer


  def received_email(inquiry)
    @inquiry = inquiry

    mail (to: @inquiry, subject:'お問合せを承りました')
  end
end
