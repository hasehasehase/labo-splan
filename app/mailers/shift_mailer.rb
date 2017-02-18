class ShiftMailer < ApplicationMailer
default from: 'kecz0r@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.shift_mailer.confirm_mail.subject
  #
  def confirm_mail
      mail(to: "kecz0r@gmail.com", subject: 'Arbeiten.', body: 'Leider :(')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.shift_mailer.deny_mail.subject
  #
  def deny_mail
      mail(to: "kecz0r@gmail.com", subject: 'Kein Arbeiten.', body: 'Yay! :)')
  end
end
