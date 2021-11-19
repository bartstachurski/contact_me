class EmailMailer < ApplicationMailer
  def email
    @email = params[:email]
    mail(to: @email.to, from: @email.from, subject: @email.subject)
  end
end
