asusctl fan-curve -m "quiet" -f cpu -D 24:0,61:0,67:10,72:29,75:65,77:101,79:141,99:190;
asusctl fan-curve -m "quiet" -f gpu -D 24:0,61:0,67:10,72:29,75:65,77:101,79:141,99:190;
asusctl fan-curve -m "performance" -f cpu -D 24:0,50:0,55:50,60:103,64:128,68:154,73:192,75:255;
asusctl fan-curve -m "performance" -f gpu -D 24:0,50:0,55:50,60:103,64:128,68:154,73:192,75:255;
asusctl fan-curve -m "quiet" -e true;
asusctl fan-curve -m "performance" -e true;
