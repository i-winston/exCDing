class ContactMailer < ApplicationMailer
	def send_mail(contact)
		@contact = contact
		mail(
			from: 'excdmasuta@gmail.com',
			to: 'shunsuke8935@gmail.com',
			subject: 'お問い合わせ通知',
			)
	end
end
