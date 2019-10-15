$(document).on('turbolinks:load', function () {
    App.cable.subscriptions.create({ channel: "RoomChannel", room_id: $('h1').attr('room-id') }, {
        connected() {
            console.log('Connected');
        },
        disconnected() {

        },
        received(data) {
            $('#messages').append(
                '    <div>\n' +
                '      <p>\n' +
                data['text'] +
                '      </p>\n' +
                '    </div>');
            console.log('Received');
        }
    });
});
