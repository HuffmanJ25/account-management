# Preview all emails at http://localhost:3000/rails/mailers/due_notification_mailer
class DueNotificationMailerPreview < ActionMailer::Preview

  def notify_due
    DueNotificationMailer.notify_due
  end
end
