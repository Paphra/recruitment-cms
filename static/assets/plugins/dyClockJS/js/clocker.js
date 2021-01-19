//default: digital clock default format: (HH:mm:ss) and digitalStyle
var clockObj3 = new dyClock($("#dyclock-digital"), {
    clock : "digital",
    format : "hh:mm:ss a",
    digitalStyle : {
        // border : '1px solid #999',
        backgroundColor : "#dyclock-digital  n ",
        fontColor : "#ec4c00",
        fontSize : 18,
        fontFamily : 'VastShadow-Regular'
    }
});
clockObj3.start();