class RoomChannel < ApplicationCable::Channel
  # こちらは、サーバサイドの処理を行なうチャンネルです。

  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create! content: data['message']
  end
end
