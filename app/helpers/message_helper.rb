module MessageHelper
  def message_location(message, user)
    message.user == user ? "msg right-msg" : "msg left-msg"
  end
end
