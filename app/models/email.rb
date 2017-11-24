class Email < ApplicationRecord

  after_create :schedule_email

  def schedule_email
    EmailJob.set(wait_until: send_on).perform_later(self)
  end
end
