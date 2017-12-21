({
    handleClickAuraIf : function(component) {
        var currentValue = component.get('v.renderAuraIf');
        component.set('v.renderAuraIf', !currentValue);
    },

    handleClickAuraIteration : function(component) {
        var currentValue = component.get('v.renderAuraIteration');
        component.set('v.renderAuraIteration', !currentValue);
    }
})
