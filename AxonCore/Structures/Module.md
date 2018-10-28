<a name="Module"></a>

## Module ⇐ <code>Base</code>
**Kind**: global class  
**Extends**: <code>Base</code>  
**Author**: KhaaZ  

* [Module](#Module) ⇐ <code>Base</code>
    * [new Module()](#new_Module_new)
    * _instance_
        * [.commands](#Module+commands)
        * [.enabled](#Module+enabled)
        * [.infos](#Module+infos)
        * [.init(commands, events)](#Module+init)
        * [.initAllCommands(commands)](#Module+initAllCommands)
        * [.registerCommand(command)](#Module+registerCommand)
        * [.registerSubCommand(command, subCommand)](#Module+registerSubCommand)
        * [.registerEvent(event)](#Module+registerEvent)
        * [.initAllEvents(events)](#Module+initAllEvents)
        * [.checkAttributes(command)](#Module+checkAttributes) ⇒ <code>Boolean</code>
        * [.checkValidPermNames(perm)](#Module+checkValidPermNames) ⇒ <code>Boolean</code>
    * _static_
        * [.Module](#Module.Module)
            * [new Module(client)](#new_Module.Module_new)

<a name="new_Module_new"></a>

### new Module()
AxonCore - Module constructor

<a name="Module+commands"></a>

### module.commands
Containments - all commands and events within this module

**Kind**: instance property of [<code>Module</code>](#Module)  
<a name="Module+enabled"></a>

### module.enabled
Default option and params

**Kind**: instance property of [<code>Module</code>](#Module)  
<a name="Module+infos"></a>

### module.infos
Infos - help command
All fields are required

**Kind**: instance property of [<code>Module</code>](#Module)  
<a name="Module+init"></a>

### module.init(commands, events)
Init a module with all commands and events.
(called at the end of every Module contructor with correct parameters)

**Kind**: instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| commands | <code>Object.&lt;Commands&gt;</code> | Object containing all events object |
| events | <code>Object.&lt;EventFs&gt;</code> | Object containing all events object |

<a name="Module+initAllCommands"></a>

### module.initAllCommands(commands)
Init and construct all commands for the list of commands given in param
(imported as a global object from index.js file)

**Kind**: instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| commands | <code>Object.&lt;Commands&gt;</code> | Object of commands imported from index.js (list all parents commands) |

<a name="Module+registerCommand"></a>

### module.registerCommand(command)
Check that the command respect default check
Add it to the Module.

**Kind**: instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| command | <code>Object.&lt;Command&gt;</code> | Command object |

<a name="Module+registerSubCommand"></a>

### module.registerSubCommand(command, subCommand)
Check that the subcmd respect default check
Add it to the command parent.

**Kind**: instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| command | <code>Object.&lt;Command&gt;</code> | Command object |
| subCommand | <code>Object.&lt;Command&gt;</code> | Subcommand object |

<a name="Module+registerEvent"></a>

### module.registerEvent(event)
Check that the Event respect default check
Add it to the Module.

**Kind**: instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>Object.&lt;EventF&gt;</code> | Event object |

<a name="Module+initAllEvents"></a>

### module.initAllEvents(events)
Init and construct all events for the list of events given in param
(imported as a global object from index.js file)

**Kind**: instance method of [<code>Module</code>](#Module)  

| Param | Type | Description |
| --- | --- | --- |
| events | <code>Object.&lt;EventFs&gt;</code> | Object of events imported from index.js (list all events) |

<a name="Module+checkAttributes"></a>

### module.checkAttributes(command) ⇒ <code>Boolean</code>
Check if the attribute of the command are valid
(valid names/ no missing etc)

**Kind**: instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if no problem / False if one invalid  

| Param | Type | Description |
| --- | --- | --- |
| command | <code>Object.&lt;Command&gt;</code> | The Command Object |

<a name="Module+checkValidPermNames"></a>

### module.checkValidPermNames(perm) ⇒ <code>Boolean</code>
Check if the permissions names are valid

**Kind**: instance method of [<code>Module</code>](#Module)  
**Returns**: <code>Boolean</code> - True if yes / False if the name doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| perm | <code>String</code> | Name of a permission |

<a name="Module.Module"></a>

### Module.Module
**Kind**: static class of [<code>Module</code>](#Module)  
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
| events | <code>Collection.&lt;EventF&gt;</code> |  | Collection of Events in the modules [key: label, value: event Obj] |
| events | <code>Collection.&lt;Object&gt;</code> |  | Collection of SChemas in the modules [key: label, value: schema Obj] |
| [enabled] | <code>Boolean</code> | <code>true</code> | Module enabled |
| [serverBypass] | <code>Boolean</code> | <code>false</code> | Module can't be server disabled |
| info | <code>Object</code> |  | Default infos about the module - name(String) - category(String) - description(String) |

<a name="new_Module.Module_new"></a>

#### new Module(client)
Creates an instance of Module.


| Param | Type |
| --- | --- |
| client | <code>Object.&lt;AxonClient&gt;</code> | 

