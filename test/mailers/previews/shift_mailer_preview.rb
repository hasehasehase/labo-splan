# Preview all emails at http://localhost:3000/rails/mailers/shift_mailer
class ShiftMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/shift_mailer/confirm_mail
  def confirm_mail
    ShiftMailer.confirm_mail
  end

  # Preview this email at http://localhost:3000/rails/mailers/shift_mailer/deny_mail
  def deny_mail
    ShiftMailer.deny_mail
  end

end
