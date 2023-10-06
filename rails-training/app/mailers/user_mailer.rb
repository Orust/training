class UserMailer < ApplicationMailer
  default from: 'notification@example.com'

  def item_created_email(item)
    @item = item
    mail(to: 'orust_4t@gmail.com', subject: 'item created')
  end
end
