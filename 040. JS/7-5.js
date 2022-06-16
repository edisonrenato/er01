var facebookProfile = {
  name: "Édison",
  friends: 245,
  messages: ["hi", "fuck", "you"],
  postMessage: function (message){
    facebookProfile.messages.push(message);
  },
  deleteMessage: function (index){
    facebookProfile.messages.splice(index,1);
  },
  addFriend: function(){
    facebookProfile.friends += 1;
  },
  removeFriend: function(){
    facebookProfile.friends -= 1;
  }
};
