class EmailJob < ApplicationJob
  queue_as :default

  def perform(email)
    # Trigger email sending code...
    email.update status: "Sent"
    Rails.logger.debug "#{self.class.name}: I'm performing my job with arguments: #{email.inspect}"
  end
end
