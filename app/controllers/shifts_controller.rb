class ShiftsController < ApplicationController
    def new
    @shift = Shift.new
    end
    
    def show
        @shift = Shift.find ( params[:id])
        @shifts = Shift.all
    end
    
    
    def confirm
        @shift = Shift.find ( params[:id])
        @shift.status = 1    
      #  @shift.date = Date.today
        if @shift.save
      #      ShiftMailer.confirm_mail.deliver
        else
        end
    end
    
    def deny
        @shift = Shift.find ( params[:id])
        @shift.status = 2    
        
        if @shift.save
        else
        end
    end
#    private
#    def shift_params
#      params.require(:shift).permit(:status)
#    end
end
