
const fs = require('fs');

process.on ('beforeExit', ()=>{
    console.log("Print Fifth");
});

setTimeout(()=>{
    console.log("Print Third");
}, 30);

setTimeout(()=>{
    console.log("Print Second");
}, 20);

process.nextTick(()=>{
    console.log("Print First");
});

setTimeout(()=>{
    console.log("Print Forth");
}, 40);