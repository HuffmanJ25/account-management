class ApplicationMailer < ActionMailer::Base
  default from: 'UpcomingPayment@notify.com'
  layout 'mailer'
end
