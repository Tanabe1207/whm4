class MakobangMailer < ApplicationMailer

  def received_email(x)
    @inquiry_for_mail = x
    mail (to: @inquiry_for_mail.email, subject:'お問合せを承りました')
  end
  
end
