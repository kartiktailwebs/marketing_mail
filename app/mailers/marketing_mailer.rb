class MarketingMailer < ApplicationMailer
    def send_mail
        mail(
            to: "kartik@tailwebs.com",
            subject: "You got a new testing mail!"
        )
    end
end
