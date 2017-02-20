class ShiftsController < ApplicationController
    
    def index
        @shifts = Shift.all
    end
    def error
    end
    def new
    @shift = Shift.new
    end
    
    def create
        @shift = Shift.new(shift_params)
        if @shift.status == 1 || @shift.status == 2
        else    
            @shift.status = 0
        end
        if @shift.save
            redirect_to shifts_path, notice: "Message sent."
        else
            redirect_to error_path, notice: "Error occured."
        end
    end
    



    
    def show
        @shift = Shift.find_by unique_identifier: ( params[:unique_identifier])
        @shifts = Shift.all
    end
    
    
    def confirm
        @shift = Shift.find_by unique_identifier: ( params[:unique_identifier])
        @shift.status = 1    
        if @shift.save
            ShiftMailer.confirm_mail.deliver
        else
        end
    end
    
    def deny
        @shift = Shift.find_by unique_identifier: ( params[:unique_identifier])
        @shift.status = 2    
        
        if @shift.save
            ShiftMailer.deny_mail.deliver
        else
        end
    end
    
    def destroy
        @shift = Shift.find_by unique_identifier: ( params[:unique_identifier])
        @shift.destroy
            respond_to do |format|
                format.html { redirect_to shifts_url, notice: 'Post was successfully destroyed.' }
                format.json { head :no_content }
        end
    end
    def request_mailer
        @shift = Shift.find_by unique_identifier: ( params[:unique_identifier])
        ShiftMailer.request_mail(params[:unique_identifier]).deliver
        redirect_to shifts_url
    end
  private
    # To collect data from form, we need to use
    # strong parameters and whitelist the form fields
    def shift_params
      params.require(:shift).permit(:name, :time, :date, :status)
    end
end
