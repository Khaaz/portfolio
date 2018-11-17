<a name="Event"></a>

## Event ⇐ <code>Base</code>
**Kind**: global class  
**Extends**: <code>Base</code>  
**Author**: KhaaZ  

* [Event](#Event) ⇐ <code>Base</code>
    * _instance_
        * [_execute(guildConf, ...args)](#Event+_execute) ⇒ <code>Promise</code>
    * _static_
        * [Event](#Event.Event)
            * [new Event(module)](#new_Event.Event_new)

<a name="Event+_execute"></a>

### event.\_execute(guildConf, ...args) ⇒ <code>Promise</code>
Promisifies the return value after execution of the event handler to prevent promise issues

**Kind**: Instance method of [<code>Event</code>](#Event)  

| Param | Type | Description |
| --- | --- | --- |
| guildConf | <code>Object</code> | the guildConfig or undefined if not a guild event |
| ...args | <code>Array</code> | Array of the events arguments |

<a name="Event.Event"></a>

### Event.Event
**Kind**: static class of [<code>Event</code>](#Event)  
**Properties**

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| axon | <code>Object.&lt;AxonClient&gt;</code> |  | Axon Client [GETTER: _axon] |
| bot | <code>Object.&lt;Eris.Client&gt;</code> |  | Eris bot Client [GETTER: _axon.client] |
| Logger | <code>Object</code> |  | Logger Object/Methods [GETTER: axon.Logger] |
| Resolver | <code>Object</code> |  | Resolver Object/Methods [GETTER: axon.Resolver] |
| AxonUtils | <code>Object</code> |  | AxonUtils Object/Methods [GETTER: axon.AxonUtils] |
| Utils | <code>Object</code> |  | Utils Object/Methods [GETTER: axon.Utils] |
| module | <code>Object.&lt;Module&gt;</code> |  | Module object [GETTER: _module] |
| eventName | <code>String</code> |  | The discord event name |
| label | <code>String</code> |  | The function name |
| [enabled] | <code>Boolean</code> | <code>module.enabled</code> | Whether the event is enabled or not |
| [serverBypass] | <code>Boolean</code> | <code>module.serverBypass</code> | Command can't be server disabled |
| infos | <code>Object</code> |  | Default infos about the event |
| infos.owners | <code>Array</code> |  | Event owners/authors |
| infos.description | <code>String</code> |  | Event description |

<a name="new_Event.Event_new"></a>

#### new Event(module)
Creates an Instance of Event.


| Param | Type |
| --- | --- |
| module | <code>Object.&lt;Module&gt;</code> | 

