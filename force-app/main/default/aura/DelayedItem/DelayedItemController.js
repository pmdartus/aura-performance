({
    doInit: function(component) {
        var action = component.get("c.echo");

        action.setParams({
            "msg": component.get("v.echo"),
        })
        
        action.setCallback(this, function(ret) {
            component.set("v.value", ret.getReturnValue()); 
        });

        $A.enqueueAction(action);
    }
})
