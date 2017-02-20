class ShiftMailer < ApplicationMailer
default from: 'max.haselmayer@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.shift_mailer.confirm_mail.subject
  #
	def confirm_mail
		@user_email = ENV["user_email"]
		mail(to: @user_email, subject: 'Arbeiten.', body: 'Leider :(')
	end
	
# Subject can be set in your I18n file at config/locales/en.yml
# with the following lookup:
#
#   en.shift_mailer.deny_mail.subject
#
	def deny_mail
		@user_email = ENV["user_email"]
		mail(to: @user_email, subject: 'Kein Arbeiten.', body: 'Yay! :)')
	end
	
	def request_mail(uid)
		@shift = Shift.find_by unique_identifier: (uid)
		@name = @shift.name
		begin
			@date = Date.strptime(@shift.date).strftime('%d.%m.%Y')
		rescue ArgumentError
			puts "invalid Date in Shift#{ @shift.id }. Mail sent anyways."
			@date = @shift.date
		end
		@time = @shift.time
		@op_email = ENV["operator_email"]
		@uid = uid
		mail(to: @op_email, subject: "#{ @shift.name } am #{ @date }.")
	end
end
