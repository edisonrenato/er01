var message ="";
t = 60;
while (t >=0) {
  switch (t) {
    case 50:
      message = "Orbiter transfers from ground to internal power";
      break;
    case 31:
      message = "Ground launch sequencer is go for auto sequence start";
      break;
    case 16:
      message = "Activate launch pad sound suppression system";
      break;
    case 10:
      message = "Activate main engine hydrogen burnoff system";
      break;
    case 6:
      message = "Main engine start";
      break;
    case 0:
      message = "Solid rocket booster ignition and liftoff!";
      break;
    default:
      message = "T-"+t+" seconds";
    }
  console.log(message);
  t= t-1;
}
