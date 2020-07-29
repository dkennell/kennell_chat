import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the room!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Receiving:")
    console.log(data.content)
    let div = buildChatMessage(data.content)
    document.querySelector('#msg').appendChild(div)
  }
});

function buildChatMessage(content) {
  const div = document.createElement('div')
  // We want to alternate background colors for our messages
  const lastMessage = document.querySelector('#msg').lastElementChild
  const lastMessageBackgroundColor = lastMessage.style.backgroundColor
  if (!lastMessageBackgroundColor){
    div.style.backgroundColor = "#ffe5ba"
  }
  div.innerHTML = content
  div.classList.add("p-3")
  return div
}