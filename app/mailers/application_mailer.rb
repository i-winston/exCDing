class ApplicationMailer < ActionMailer::Base
  default from: "excdmasuta@gmail.com" # 送信元アドレス
  default to: "shunsuke8935@gmail.com"

  def received_email(contact)
    @contact = contact
    mail(:subject => 'お問い合わせ承りました。')
  end # 送信先アドレス
end
