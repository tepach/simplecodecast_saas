#inhereting from part of a framework action mailer
class ContactMailer < ActionMailer::Base
    default to: 'vedran.brijacak@gmail.com'
    def contact_email(name, email, body)
        @name=name
        @email=email
        @body=body
        
        mail(from: email, subject: 'Contact Form Message.')
    end
end
