class Api::EmailsController < ApplicationController
  def create
    @email = Email.new(email_params)
    if @email.save
      EmailMailer.with(email: @email).email.deliver_now
    end
  end

  private

  def email_params
    params.require(:email).permit(:from, :to, :source, :subject, :body)
  end
end
