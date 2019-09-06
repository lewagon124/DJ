
    $("#carousel-example-generic").carousel({ interval: false}); // this prevents the auto-loop

    document.getElementById('myVideo').addEventListener('ended', myHandler, false);

    function myHandler(e) {
        $("#carousel-example-generic").carousel('next');
    }

