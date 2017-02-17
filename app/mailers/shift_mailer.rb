class ShiftMailer < ApplicationMailer
    default from: 'notifications@example.com'
    
    def confirm_mail
        mail(to:'kecz0r@gmail.com', subject: 'Arbeiten!')
    end
    

end
