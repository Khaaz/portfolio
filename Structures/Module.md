<a name="Module"></a>

## Module ⇐ <code>Base</code>
**Kind**: global class  
**Extends**: <code>Base</code>  
**Author**: KhaaZ  

* [Module](#Module) ⇐ <code>Base</code>
    * _instance_
        * [init(commands, events, events)](#Module+init)
        * [initAllCommands(commands)](#Module+initAllCommands)
        * [initAllEvents(events)](#Module+initAllEvents)
        * [initAllSchemas(schemas)](#Module+initAllSchemas)
        * [registerCommand(command)](#Module+registerCommand) ⇒ <code>Boolean</code>
        * [registerSubCommand(command, subCommand)](#Module+registerSubCommand) ⇒ <code>Boolean</code>
        * [registerEvent(event)](#Module+registerEvent) ⇒ <code>Boolean</code>
        * [registerSchema(key, schema)](#Module+registerSchema) ⇒ <code>Boolean</code>
        * [unregisterCommand(label)](#Module+unregisterCommand) ⇒ <code>Boolean</code>
        * [unregisterSubCommand(command, command)](#Module+unregisterSubCommand)
        * [unregisterSchema(label)](#Module+unregisterSchema) ⇒ <code>Boolean</code>
        * [unregisterEvent(label)](#Module+unregisterEvent) ⇒ <code>Boolean</code>
    * _static_
        * [Module](#Module.Module)
            * [new Module(client)](#new_Module.Module_new)
  
<a name="Module+init"></a>

### module.init(commands, events, events)
Initializes a module with all of its commands and events.
(Called at the end of every Module contructor with correct parameters)

**Kind**: Instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| commands | <code>Object.&lt;Commands&gt;</code> | Object containing all events object |
| events | <code>Object.&lt;Events&gt;</code> | Object containing all events object |
| events | <code>Object.&lt;Schemas&gt;</code> | Object containing all schema object |

<a name="Module+initAllCommands"></a>

### module.initAllCommands(commands)
Initalizes and constructs all commands from the list of commands given in the param
(imported as a global object from index.js file)

**Kind**: Instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| commands | <code>Object.&lt;Commands&gt;</code> | Object of commands imported from index.js (list all parents commands) |

<a name="Module+initAllEvents"></a>

### module.initAllEvents(events)
Initalizes and constructs all events from the list of events given in the param
(imported as a global object from index.js file)

**Kind**: Instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| events | <code>Object.&lt;Events&gt;</code> | Object of events imported from index.js (list all events) |

<a name="Module+initAllSchemas"></a>

### module.initAllSchemas(schemas)
Initalizes all schemas from the list of schemas given in the param, into a Collection
(Imported as a global object from index.js file)

**Kind**: Instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| schemas | <code>Object.&lt;Schemas&gt;</code> | Object of schemas imported from index.js (list all schemas) |

<a name="Module+registerCommand"></a>

### module.registerCommand(command) ⇒ <code>Boolean</code>
Registers a Command (Ensures validity)
Adds it to the Module.

**Kind**: Instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if worked / False if not  

| Param | Type | Description |
| --- | --- | --- |
| command | <code>Object.&lt;Command&gt;</code> | Command object |

<a name="Module+registerSubCommand"></a>

### module.registerSubCommand(command, subCommand) ⇒ <code>Boolean</code>
Registers a SubCommand (Ensures valitidy)
Adds it to the parent command.

**Kind**: Instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if worked / False if not  

| Param | Type | Description |
| --- | --- | --- |
| command | <code>Object.&lt;Command&gt;</code> | Command object |
| subCommand | <code>Object.&lt;Command&gt;</code> | Subcommand object |

<a name="Module+registerEvent"></a>

### module.registerEvent(event) ⇒ <code>Boolean</code>
Registers an Event (Ensures valitidy)
Adds it to the Module.

**Kind**: Instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if worked / False if not  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>Object.&lt;Event&gt;</code> | Event object |

<a name="Module+registerSchema"></a>

### module.registerSchema(key, schema) ⇒ <code>Boolean</code>
Registers a Schema into a module

**Kind**: Instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if worked / Error if not  

| Param | Type | Description |
| --- | --- | --- |
| key | <code>String</code> | The Schema name |
| schema | <code>Object</code> | The Schema object |

<a name="Module+unregisterCommand"></a>

### module.unregisterCommand(label) ⇒ <code>Boolean</code>
Removes a command from a Module and from the global cache

**Kind**: Instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if worked / Error if not  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | Full command label |

<a name="Module+unregisterSubCommand"></a>

### module.unregisterSubCommand(command, command)
Removes a subcommand from a command

**Kind**: Instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| command | <code>Object.&lt;Command&gt;</code> | Parent command Object |
| command | <code>Object.&lt;Command&gt;</code> | Subcommand Object |

<a name="Module+unregisterSchema"></a>

### module.unregisterSchema(label) ⇒ <code>Boolean</code>
Removes a schema from the Module and the global cache

**Kind**: Instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if worked / Error if not  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | The SChema label |

<a name="Module+unregisterEvent"></a>

### module.unregisterEvent(label) ⇒ <code>Boolean</code>
Removes an Event from Module and Event Manager

**Kind**: Instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if worked / Error if not  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | The Event label |

<a name="Module.Module"></a>

### Module.Module
**Kind**: Static class of [<code>Module</code>](#Module)  
**Properties**

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| axon | <code>Object.&lt;AxonClient&gt;</code> |  | Axon Client [GETTER: _axon] |
| bot | <code>Object.&lt;Eris.Client&gt;</code> |  | Eris bot Client [GETTER: _axon.client] |
| Logger | <code>Object</code> |  | Logger Object/Methods [GETTER: axon.Logger] |
| Resolver | <code>Object</code> |  | Resolver Object/Methods [GETTER: axon.Resolver] |
| AxonUtils | <code>Object</code> |  | AxonUtils Object/Methods [GETTER: axon.AxonUtils] |
| Utils | <code>Object</code> |  | Utils Object/Methods [GETTER: axon.Utils] |
| label | <code>String</code> |  | Module label (name/id) |
| commands | <code>Collection.&lt;Command&gt;</code> |  | Collection of Commands in the modules [key: label, value: command Obj] |
| events | <code>Collection.&lt;Event&gt;</code> |  | Collection of Events in the modules [key: label, value: event Obj] |
| events | <code>Collection.&lt;Object&gt;</code> |  | Collection of SChemas in the modules [key: label, value: schema Obj] |
| [enabled] | <code>Boolean</code> | <code>true</code> | Module enabled |
| [serverBypass] | <code>Boolean</code> | <code>false</code> | Module can't be server disabled |
| info | <code>Object</code> |  | Default infos about the module - name(String) - category(String) - description(String) |

<a name="new_Module.Module_new"></a>

#### new Module(client)
Creates an Instance of Module.


| Param | Type |
| --- | --- |
| client | <code>Object.&lt;AxonClient&gt;</code> | 

