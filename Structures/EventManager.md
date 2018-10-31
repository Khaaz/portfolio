<a name="EventManager"></a>

## EventManager ⇐ <code>Base</code>
**Kind**: global class  
**Extends**: <code>Base</code>  
**Author**: KhaaZ  

* [EventManager](#EventManager) ⇐ <code>Base</code>
    * _instance_
        * [.bindListeners()](#EventManager+bindListeners)
        * [.bindHandlers()](#EventManager+bindHandlers)
        * [.registerListener(event)](#EventManager+registerListener)
        * [.registerHandler(event)](#EventManager+registerHandler) ⇒ <code>Object</code>
        * [.registerEvent(event)](#EventManager+registerEvent) ⇒ <code>Object</code>
        * [.createHandler(events, ...args)](#EventManager+createHandler)
        * [._rootHandler(...args)](#EventManager+_rootHandler) ⇒ <code>Promise.&lt;?GuildConf&gt;</code>
        * [.unregisterListener(event, label)](#EventManager+unregisterListener) ⇒ <code>Boolean</code>
        * [.unregisterHandler(event)](#EventManager+unregisterHandler) ⇒ <code>Boolean</code>
        * [.unregisterEvent(event)](#EventManager+unregisterEvent) ⇒ <code>Boolean</code>
    * _static_
        * [.EventManager](#EventManager.EventManager)
            * [new EventManager(axon)](#new_EventManager.EventManager_new)

<a name="EventManager+bindListeners"></a>

### eventManager.bindListeners()
Bind all Listeners to an Handler.
Create and register an Handler for each events.
If the bot is ready, also call bindHandlers()

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  

<a name="EventManager+bindHandlers"></a>

### eventManager.bindHandlers()
Bind every Handler to the correct Event emission

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  

<a name="EventManager+registerListener"></a>

### eventManager.registerListener(event)
Register a listener for this event.
Add the Event object in the array of Event object for each events.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>Object.&lt;Event&gt;</code> | Event Object |

<a name="EventManager+registerHandler"></a>

### eventManager.registerHandler(event) ⇒ <code>Object</code>
Register an Handler.
Remove the current event listening if the handler already exists.
Create a new Handler from the array of listeners for this event.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Object</code> - The new Handler created  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>String</code> | The Event name |

<a name="EventManager+registerEvent"></a>

### eventManager.registerEvent(event) ⇒ <code>Object</code>
Register an event.
Recreate an handler and bind an handler to the event emission.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Object</code> - The Handler Object  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>String</code> | The Event name to register |

<a name="EventManager+createHandler"></a>

### eventManager.createHandler(events, ...args)
Create one Handler function from all listeners.
Check if the module/event is globally disabled

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  

| Param | Type | Description |
| --- | --- | --- |
| events | <code>Array</code> | All listeners for this event |
| ...args | <code>Array</code> | All arguments possibly passed to an event |

<a name="EventManager+_rootHandler"></a>

### eventManager.\_rootHandler(...args) ⇒ <code>Promise.&lt;?GuildConf&gt;</code>
Root Function for all events.
Try to resolve guild Object and guildConfig.
If needed, test if the user is a bot and stop the event, test if the guild is blacklisted and stop the event.
Test if the event is disabled in that guild or not.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  

| Param | Type | Description |
| --- | --- | --- |
| ...args | <code>Array</code> | All arguments possibly passed to an event |

<a name="EventManager+unregisterListener"></a>

### eventManager.unregisterListener(event, label) ⇒ <code>Boolean</code>
Unregister a listener.
Recreate the handler and re listen to the updated handler

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Boolean</code> - True if worked / False if label or event doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>String</code> | Name of the event |
| label | <code>String</code> | Name of the listener |

<a name="EventManager+unregisterHandler"></a>

### eventManager.unregisterHandler(event) ⇒ <code>Boolean</code>
Unregister an Handler. Unregister the event and delete the handler

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Boolean</code> - True if worked / False if event doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>String</code> | Name of the event |

<a name="EventManager+unregisterEvent"></a>

### eventManager.unregisterEvent(event) ⇒ <code>Boolean</code>
Unregister one event without deleting the handler.
Just stop listening to the event emission

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Boolean</code> - True if worked / False if event doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>String</code> | Name of the event |

<a name="EventManager.EventManager"></a>

### EventManager.EventManager
**Kind**: static class of [<code>EventManager</code>](#EventManager)  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| _listeners | <code>Object</code> | Object that link an event name to an Array of Event Object { eventName: [Event, Event] } |
| _Handlers | <code>Collection.&lt;Object&gt;</code> | Collection of handler keyed to the event name [key: eventName, value: Handler] |

<a name="new_EventManager.EventManager_new"></a>

#### new EventManager(axon)
Creates an instance of EventManager.


| Param | Type |
| --- | --- |
| axon | <code>Object.&lt;AxonClient&gt;</code> | 

