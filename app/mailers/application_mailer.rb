class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'

   private

  def init_email_account
    smtp_credential = SmtpCredential.last
    ActionMailer::Base.raise_delivery_errors = true
    ActionMailer::Base.smtp_settings = {
    :address              => smtp_credential.address,
    :port                 => smtp_credential.port,
    :domain               => smtp_credential.domain,
    :user_name            => smtp_credential.user_name,
    :password             => smtp_credential.password,
    :authentication       => smtp_credential.authentication,
    :enable_starttls_auto => true
    }
  end
  
end
