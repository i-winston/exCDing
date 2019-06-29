class ContactMailer < ApplicationMailer
  default from: "excdmasuta@gmail.com" # 送信元アドレス
  default to: "shunsuke8935@gmail.com"

  def received_email(contact)
    @contact = contact
    mail(:subject => 'お問い合わせがありました。')
  end # 送信先アドレス

  def thanks_email(answer, contact)
    @contact = Contact.find_by(id: contact)
    @enduser = Enduser.find_by(id: @contact.enduser_id)
    @answer = answer
    mail(to: @enduser.email, subject: 'お問い合わせ誠にありがとうございます。')
  end
end
