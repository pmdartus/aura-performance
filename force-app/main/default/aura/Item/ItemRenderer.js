({
    render : function(cmp, helper) {
        console.timeStamp('RENDER - Item');
        return this.superRender();
    },
    afterRender: function (component, helper) {
        console.timeStamp('AFTER_RENDER - Item');
        return this.superAfterRender();
    },
})
