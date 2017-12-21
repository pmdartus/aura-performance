# SFDX  App

```sh
sfdx force:org:open -p c/AuraPerformance.app
```

## Mark timeline with Aura lifecycle

Inject the following snippet directly in the console before the first component you want to track get created. The snippet can't be injected from inside an Aura component or application because it of Locker prevent access to those private APIs.

```js
(function() {
    const originalConstructor = Aura.$Component$.$ComponentClassRegistry$.prototype.$buildConstructor$;
    
    // Hook when the component is evaluated the first time
    Aura.$Component$.$ComponentClassRegistry$.prototype.$buildConstructor$ = function() {
        const klass = originalConstructor.apply(this, arguments);
    
        // Override component constructor
        const overidden = function (...args) {
            const [config] = arguments
            const { descriptor } = config.componentDef;

            console.time(`create ${descriptor}`);
            const cmp = klass.apply(this, arguments);
            console.timeEnd(`create ${descriptor}`);

            return cmp;
        }

        // Reassign the component prototype
        overidden.prototype = klass.prototype;

        return overidden;
    }

    // Add markers to the component render
    const originalRender = Aura.$Component$.$Component$.prototype.render;
    Aura.$Component$.$Component$.prototype.render = function () {
        console.time(`render ${this.type} - ${this.getGlobalId()}`);
        let ret = originalRender.apply(this, arguments);
        console.timeEnd(`render ${this.type} - ${this.getGlobalId()}`);   

        return ret;
    }

    // Add markers to the component after render
    const originalAterRender = Aura.$Component$.$Component$.prototype.afterRender;
    Aura.$Component$.$Component$.prototype.afterRender = function () {
        console.time(`after-render ${this.type} - ${this.getGlobalId()}`);
        let ret = originalAterRender.apply(this, arguments);
        console.timeEnd(`after-render ${this.type} - ${this.getGlobalId()}`);   

        return ret;
    }
})()
```

When recording a timeline from the Chrome devtool you should have markers getting added on top of the stack trace

![marker-snippet screenshot](/assets/marker-snippet.png?raw=true)

