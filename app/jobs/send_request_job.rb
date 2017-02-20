class SendRequestJob < ApplicationJob
  queue_as :default

  def perform(shift)
    @shift = shift
    ShiftMailer.request_mail(params[:unique_identifier]).deliver
  end
end
