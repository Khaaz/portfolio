<a name="AxonClient"></a>

## AxonClient ⇐ <code>EventEmitter</code>
**Kind**: global class  
**Extends**: <code>EventEmitter</code>  
**Author**: KhaaZ  

* [AxonClient](#AxonClient) ⇐ <code>EventEmitter</code>
    * [new AxonClient()](#new_AxonClient_new)
    * _instance_
        * [.Logger](#AxonClient+Logger)
        * [.schemas](#AxonClient+schemas)
        * [.DBprovider](#AxonClient+DBprovider)
        * [.AxonUtils](#AxonClient+AxonUtils)
        * [._tempModules](#AxonClient+_tempModules)
        * [.commands](#AxonClient+commands)
        * [.guildConfigs](#AxonClient+guildConfigs)
        * [.blacklistedUsers](#AxonClient+blacklistedUsers)
        * [._client](#AxonClient+_client)
        * [.params](#AxonClient+params)
        * [.infos](#AxonClient+infos)
        * [.axonInfos](#AxonClient+axonInfos)
        * [.start()](#AxonClient+start)
        * [.onReady()](#AxonClient+onReady)
        * [.initListener()](#AxonClient+initListener)
        * [.initAllModules(modules)](#AxonClient+initAllModules)
        * [.registerModule(module)](#AxonClient+registerModule)
        * [.unregisterModule(label)](#AxonClient+unregisterModule)
        * [.initAxon()](#AxonClient+initAxon)
        * [.initStatus()](#AxonClient+initStatus)
        * [.onMessageCreate(msg)](#AxonClient+onMessageCreate)
        * [._execCommand(msg, args, command, guildConf)](#AxonClient+_execCommand)
        * [._execAdmin(msg, guildConf, isOwner)](#AxonClient+_execAdmin)
        * [._execDM(msg)](#AxonClient+_execDM)
        * [._execHelp(msg, args, guildConf)](#AxonClient+_execHelp)
        * [.sendFullHelp(msg)](#AxonClient+sendFullHelp) ⇒ <code>Promise.&lt;Message&gt;</code>
        * [._isGuildIgnored(msg, guildConf)](#AxonClient+_isGuildIgnored) ⇒ <code>Boolean</code>
        * [._isModuleDisabled(command, guildConf)](#AxonClient+_isModuleDisabled) ⇒ <code>Boolean</code>
        * [._isCommandDisabled(command, guildConf)](#AxonClient+_isCommandDisabled) ⇒ <code>Boolean</code>
        * [.fetchAxonConf()](#AxonClient+fetchAxonConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.fetchGuildConf(gID)](#AxonClient+fetchGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.resolvePrefix(msg)](#AxonClient+resolvePrefix) ⇒ <code>String</code>
        * [.resolveCommand(label, args, guildConf)](#AxonClient+resolveCommand) ⇒ <code>Object</code>
        * [.getGuildConf(gID)](#AxonClient+getGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.updateGuildConf(gID, guildSchema)](#AxonClient+updateGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.registerGuildPrefix(gID, prefixArr)](#AxonClient+registerGuildPrefix) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.updateBlacklistUser(userID, [boolean])](#AxonClient+updateBlacklistUser) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.updateBlacklistGuild(guildID, [boolean])](#AxonClient+updateBlacklistGuild) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.updateGuildStateModule(guildID, label, [boolean])](#AxonClient+updateGuildStateModule) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.updateGuildStateCommand(guildID, label, [boolean])](#AxonClient+updateGuildStateCommand) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.updateStateEvent(guildID, label, [boolean])](#AxonClient+updateStateEvent) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [.updateGlobalStateModule(module, [state])](#AxonClient+updateGlobalStateModule)
        * [.updateGlobalStateCommand(command, [state])](#AxonClient+updateGlobalStateCommand)
    * _static_
        * [.AxonClient](#AxonClient.AxonClient)
            * [new AxonClient(token, options, axonOptions, modules)](#new_AxonClient.AxonClient_new)

<a name="new_AxonClient_new"></a>

### new AxonClient()
AxonCore - Client constructor

<a name="AxonClient+Logger"></a>

### axonClient.Logger
Logger

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+schemas"></a>

### axonClient.schemas
DataModels

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+DBprovider"></a>

### axonClient.DBprovider
DB

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+AxonUtils"></a>

### axonClient.AxonUtils
Utility

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+_tempModules"></a>

### axonClient.\_tempModules
Modules

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+commands"></a>

### axonClient.commands
Commands, Events

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+guildConfigs"></a>

### axonClient.guildConfigs
GuildConfigs

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+blacklistedUsers"></a>

### axonClient.blacklistedUsers
Initialise Blacklisted users and guilds

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+_client"></a>

### axonClient.\_client
Initialise Eris Client

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+params"></a>

### axonClient.params
Bot settings
Prefixes - debug - misc

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+infos"></a>

### axonClient.infos
Bot informations

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+axonInfos"></a>

### axonClient.axonInfos
Client specification

**Kind**: instance property of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+start"></a>

### axonClient.start()
START METHOD
AxonClient class is already created

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+onReady"></a>

### axonClient.onReady()
Call Init Method on Ready event.
Bind All Handlers to the event emission.

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+initListener"></a>

### axonClient.initListener()
Initialize error listeners + webhooks

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+initAllModules"></a>

### axonClient.initAllModules(modules)
Init and create instance of all modules
Modules are imported from index.js as a global Object

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Description |
| --- | --- | --- |
| modules | <code>Object</code> | Object of Modules file |

<a name="AxonClient+registerModule"></a>

### axonClient.registerModule(module)
Register a new Module
Init module in the client + commands + aliases

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type |
| --- | --- |
| module | <code>Object.&lt;Module&gt;</code> | 

<a name="AxonClient+unregisterModule"></a>

### axonClient.unregisterModule(label)
Unregister a Module
Remove the module of the client + commands + aliases + schemas

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | Label of the module to unregister |

<a name="AxonClient+initAxon"></a>

### axonClient.initAxon()
Retrieve Guild schema
Init the client with value from DB (blacklisted users/guilds)

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+initStatus"></a>

### axonClient.initStatus()
Init Bot status
Default method. Overridden by initStatus in child.

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
<a name="AxonClient+onMessageCreate"></a>

### axonClient.onMessageCreate(msg)
Handler when a message is created.
Do all test and then either:
  - call execDm
  - call execAdmin
  - call execCommand
  - returns (do nothing)

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The message object |

<a name="AxonClient+_execCommand"></a>

### axonClient.\_execCommand(msg, args, command, guildConf)
Default execute the command
Logging / Debug Mode
Error handling and logging
Call Command._execute

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | Message Object |
| args | <code>Array.&lt;String&gt;</code> | Array of args |
| command | <code>Object.&lt;Command&gt;</code> | Command object resolved |
| guildConf | <code>Object</code> | Guild Config from the DB |

<a name="AxonClient+_execAdmin"></a>

### axonClient.\_execAdmin(msg, guildConf, isOwner)
Execute the command with global Admin override
Logging / Debug Mode
Error handling and logging
Call command._executeAdmin

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | Message Object |
| guildConf | <code>Oject</code> | Guild config |
| isOwner | <code>Boolean</code> | Whether the user is bot owner |

<a name="AxonClient+_execDM"></a>

### axonClient.\_execDM(msg)
Execute command in DM.
No guildConfig
Logging / Debug Mode
Error handling and logging
Call Command._executeDM

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type |
| --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | 

<a name="AxonClient+_execHelp"></a>

### axonClient.\_execHelp(msg, args, guildConf)
Exec Help command (general)
Do all necessary checker too (label resolved was help)

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The message object |
| args | <code>Array.&lt;String&gt;</code> | Array of argument |
| guildConf | <code>Object</code> | GuildConfig from the DB |

<a name="AxonClient+sendFullHelp"></a>

### axonClient.sendFullHelp(msg) ⇒ <code>Promise.&lt;Message&gt;</code>
Send full help in DM
Respecting permissions

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The message object |

<a name="AxonClient+_isGuildIgnored"></a>

### axonClient.\_isGuildIgnored(msg, guildConf) ⇒ <code>Boolean</code>
Check if the user/role/channel is guild ignored

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Boolean</code> - True if either one of the three is ignored / False if none  

| Param | Type |
| --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | 
| guildConf | <code>Object</code> | 

<a name="AxonClient+_isModuleDisabled"></a>

### axonClient.\_isModuleDisabled(command, guildConf) ⇒ <code>Boolean</code>
Check if the module is server disabled

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Boolean</code> - True if disabled / Undefined if not  

| Param | Type | Description |
| --- | --- | --- |
| command | <code>Object.&lt;Command&gt;</code> | The command object |
| guildConf | <code>Object</code> | The guild Config object |

<a name="AxonClient+_isCommandDisabled"></a>

### axonClient.\_isCommandDisabled(command, guildConf) ⇒ <code>Boolean</code>
Check if the command is server disabled

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Boolean</code> - True if disabled / Undefined if not  

| Param | Type | Description |
| --- | --- | --- |
| command | <code>Object.&lt;Command&gt;</code> | The command object |
| guildConf | <code>Object</code> | The guild Config object |

<a name="AxonClient+fetchAxonConf"></a>

### axonClient.fetchAxonConf() ⇒ <code>Promise.&lt;Object&gt;</code>
Fetch and resolve Axon config from the DB with all default params
Create a schema if none found or error

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Axon schema from the DB / error  
<a name="AxonClient+fetchGuildConf"></a>

### axonClient.fetchGuildConf(gID) ⇒ <code>Promise.&lt;Object&gt;</code>
Fetch and resolve guild Config from Database
Create a schema if none found or error

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Guild schema from the DB / Error  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | The guild ID to fetch the DB |

<a name="AxonClient+resolvePrefix"></a>

### axonClient.resolvePrefix(msg) ⇒ <code>String</code>
Resolve the prefix for the following guild
If the message starts with one of the guild prefix it return the prefix
Else it return undefined (no guild prefix used)

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>String</code> - The prefix if found / Undefined if not  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | the message object |

<a name="AxonClient+resolveCommand"></a>

### axonClient.resolveCommand(label, args, guildConf) ⇒ <code>Object</code>
Resolve the command Object. Only resolve the command if it's not globally disabled/guild disabled

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Object</code> - The command object / Undefined if the command doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | the command label/ command alias |
| args | <code>Array.&lt;String&gt;</code> | Array of arguments |
| guildConf | <code>Object</code> | Guild config from DB |

<a name="AxonClient+getGuildConf"></a>

### axonClient.getGuildConf(gID) ⇒ <code>Promise.&lt;Object&gt;</code>
Get (or create) guildConfig from cache || DB
Cache the guildConfig if not already cached

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - GuildConf fetched  

| Param | Type |
| --- | --- |
| gID | <code>String</code> | 

<a name="AxonClient+updateGuildConf"></a>

### axonClient.updateGuildConf(gID, guildSchema) ⇒ <code>Promise.&lt;Object&gt;</code>
Update guild Conf in cache + DB
Uses Json Object directly. (Client cache leaned Guild schema)

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | Guild id |
| guildSchema | <code>Object</code> | Guild schema Object |

<a name="AxonClient+registerGuildPrefix"></a>

### axonClient.registerGuildPrefix(gID, prefixArr) ⇒ <code>Promise.&lt;Object&gt;</code>
Register Guild Prefix
External method that can be call to update cached prefix with prefix registered in th DB

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The guild Schema from the DB / Error if error  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | The guild ID |
| prefixArr | <code>Array.&lt;String&gt;</code> | The array of prefix |

<a name="AxonClient+updateBlacklistUser"></a>

### axonClient.updateBlacklistUser(userID, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Add/Remove a blacklisted User
External method that can be called to add a user to blacklist

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The Axon Schema from the DB / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| userID | <code>String</code> |  | The id of the user to blacklist |
| [boolean] | <code>Boolean</code> | <code>true</code> | Whether to add(true) or remove(false) the user to blacklist |

<a name="AxonClient+updateBlacklistGuild"></a>

### axonClient.updateBlacklistGuild(guildID, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Add/Remove a blacklisted Guild
External method that can be called to add a user to blacklist

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The Axon Schema from the DB / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The id of the guild to blacklist |
| [boolean] | <code>Boolean</code> | <code>true</code> | if add(true) or remove(false) the guild to blacklist |

<a name="AxonClient+updateGuildStateModule"></a>

### axonClient.updateGuildStateModule(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Update state of a Module
Checkers were done before calling updateStateModule
the module exist/is not a serverBypass module
boolean true = disable module / false = enable

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The module label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the module (false) or enable (true) |

<a name="AxonClient+updateGuildStateCommand"></a>

### axonClient.updateGuildStateCommand(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Update sate of a Command
Checkers were done before calling updateStateCommand
the command exist/is not a serverBypass command
boolean true = disable command / false = enable

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The command label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the command (false) or enable (true) |

<a name="AxonClient+updateStateEvent"></a>

### axonClient.updateStateEvent(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Update state of an Event
Checkers were done before calling updateStateEvent
the event exist/is not a serverBypass event
boolean true = disable event / false = enable

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The event label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the event (false) or enable (true) |

<a name="AxonClient+updateGlobalStateModule"></a>

### axonClient.updateGlobalStateModule(module, [state])
Enable/Disable a module globally

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| module | <code>String</code> |  | Module name |
| [state] | <code>Boolean</code> | <code>true</code> | Whether to enable or disable |

<a name="AxonClient+updateGlobalStateCommand"></a>

### axonClient.updateGlobalStateCommand(command, [state])
Enable/Disable a command globally

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| command | <code>String</code> |  | Command name |
| [state] | <code>Boolean</code> | <code>true</code> | Whether to enable or disable |

<a name="AxonClient.AxonClient"></a>

### AxonClient.AxonClient
**Kind**: static class of [<code>AxonClient</code>](#AxonClient)  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| client | <code>Object.&lt;Eris.Client&gt;</code> | Eris Client [GETER: _client] |
| modules | <code>Collection.&lt;Module&gt;</code> | All modules in the client [key: label, value: module] |
| commands | <code>Collection.&lt;Command&gt;</code> | All commands in the client [key: label, value: command] |
| commandAliases | <code>Map.&lt;String&gt;</code> | All aliases in the client [key: alias, value: commandLabel] |
| events | <code>Collection.&lt;Event&gt;</code> | All events in the client [key: label, value: event] |
| schemas | <code>Collection.&lt;Object&gt;</code> | All schemas in client (global models) [key: schemaLabel, value: schema] |
| guildConfigs | <code>Collection.&lt;Object&gt;</code> | Guild configs [key: guildID, value: { guildConfig }] |
| Logger | <code>Object</code> | Default Logger / Chalk Logger / Signale Logger |
| DBprovider | <code>Object</code> | JSON(default) / Mongoose |
| AxonUtil | <code>Object</code> | Util methods (Axon) |
| Resolver | <code>Object</code> | Resolver |
| Utils | <code>Object</code> | Utils methods (general) |
| configs | <code>Object</code> | configs (axon, template, _tokens) [GETTER: _configs] |
| blacklistedUsers | <code>Set.&lt;String&gt;</code> | Cached blacklisted users |
| blacklistedGuilds | <code>Set.&lt;String&gt;</code> | Cached blacklisted guilds |
| staff | <code>Object</code> | Object of bot staff (user IDs) (owners, admins, ..+) |
| params | <code>Object</code> | Bot params |
| params.debugMode | <code>Boolean</code> | Enable to show commands latency |
| params.prefix | <code>Array</code> | Default bot prefix |
| params.ownerPrefix | <code>String</code> | Owner prefix : override perms/cd |
| params.adminPrefix | <code>String</code> | Admins prefix : override perms/cd except Owner |
| infos | <code>Object</code> | General infos { name, description, version, library, owners } |
| axonInfos | <code>Object</code> | AxonClient infos { name, version, author, github } |
| webhooks | <code>Object</code> | All Client webhooks [GETTER: _configs._tokens.webhooks] |
| template | <code>Object</code> | Template options [GETTER: _configs.template] |

<a name="new_AxonClient.AxonClient_new"></a>

#### new AxonClient(token, options, axonOptions, modules)
Creates an instance of AxonClient.


| Param | Type | Description |
| --- | --- | --- |
| token | <code>String</code> |  |
| options | <code>Object</code> | Eris options |
| axonOptions | <code>Object</code> | Axon options |
| modules | <code>Object</code> | Object with all modules to add in the bot |

