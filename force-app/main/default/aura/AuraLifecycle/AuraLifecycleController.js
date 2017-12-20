({
    handleClick : function(cmp) {
        var currentValue = cmp.get('v.isContentVisible');
        cmp.set('v.isContentVisible', !currentValue);
    }
})
