onmessage = function (event) {
    var num = event.data;
    var result = 0;
    for (var i = 1; i <= num; i++) {
        result += i;
    }
    postMessage(result);
};

