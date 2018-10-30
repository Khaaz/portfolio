<a name="EventManager"></a>

## EventManager ⇐ <code>Base</code>
**Kind**: global class  
**Extends**: <code>Base</code>  
**Author**: KhaaZ  

* [EventManager](#EventManager) ⇐ <code>Base</code>
    * [new EventManager()](#new_EventManager_new)
    * [.bindHandlers()](#EventManager+bindHandlers)
    * [.bindListeners()](#EventManager+bindListeners)
    * [.registerListener(event)](#EventManager+registerListener)
    * [.createHandler(events, ...args)](#EventManager+createHandler)
    * [._rootHandler(...args)](#EventManager+_rootHandler) ⇒ <code>Promise.&lt;?GuildConf&gt;</code>

<a name="new_EventManager_new"></a>

### new EventManager()
Event Manager class

<a name="EventManager+bindHandlers"></a>

### eventManager.bindHandlers()
Bind every Handler to the correct Event emission

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
<a name="EventManager+bindListeners"></a>

### eventManager.bindListeners()
Bind all Listeners to an Handler.
Create a Handler for each events.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
<a name="EventManager+registerListener"></a>

### eventManager.registerListener(event)
Register a listener for this event.
Add the Event object in the array of Event object for each events.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>Object.&lt;Event&gt;</code> | Event Object |

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

