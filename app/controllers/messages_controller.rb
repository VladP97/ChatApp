class MessagesController < ApplicationController
  def create
    message = Message.new(text: params['text'], room_id: params['room_id'])
    room = message.room
    RoomChannel.broadcast_to room, text: message.text
    message.save
  end
end
