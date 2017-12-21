({
    handleClick: function(cmp) {
        var currentValue = cmp.get('v.isListVisible');
        cmp.set('v.isListVisible', !currentValue);
    },

    handleClickDelayed: function(cmp) {
        var currentValue = cmp.get('v.isDelayedListVisible');
        cmp.set('v.isDelayedListVisible', !currentValue);
    }
})
