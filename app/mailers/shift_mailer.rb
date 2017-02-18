class ShiftMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.shift_mailer.confirm_mail.subject
  #
  def confirm_mail
      mail(to: "kecz0r@gmail.com", subject: 'Arbeiten', body: 'leider')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.shift_mailer.deny_mail.subject
  #
  def deny_mail
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
