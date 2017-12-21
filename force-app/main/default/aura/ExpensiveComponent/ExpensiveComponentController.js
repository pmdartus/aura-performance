({
    doInit: function(cmp) {
        var start = Date.now()
        var delay = cmp.get('v.delay');

        while(Date.now() < start + delay) {}
    }
})
