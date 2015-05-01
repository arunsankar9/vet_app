class Reminder < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reminder.send_reminder.subject
  #
  def send_reminder(customer_id, appointment_date)
      @user = User.find customer_id
      @greeting = "Hi #{@user.name}"

      @appointment_date = appointment_date

      mail to: @user.email, subject: "Appointment Reminder:: You have one appointment on #{@appointment_date}!"
  end
end
