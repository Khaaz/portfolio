<a name="AxonClient"></a>

## AxonClient ⇐ <code>EventEmitter</code>
**Kind**: global class  
**Extends**: <code>EventEmitter</code>  
**Author**: KhaaZ  

* [AxonClient](#AxonClient) ⇐ <code>EventEmitter</code>
    * _instance_
        * [start()](#AxonClient+start)
        * [onReady()](#AxonClient+onReady)
        * [registerModule(module)](#AxonClient+registerModule)
        * [unregisterModule(label)](#AxonClient+unregisterModule)
        * [initStatus()](#AxonClient+initStatus)
        * [sendFullHelp(msg)](#AxonClient+sendFullHelp) ⇒ <code>Promise.&lt;Message&gt;</code>
        * [fetchAxonConf()](#AxonClient+fetchAxonConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [fetchGuildConf(gID)](#AxonClient+fetchGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [resolvePrefix(msg)](#AxonClient+resolvePrefix) ⇒ <code>String</code>
        * [resolveCommand(label, args, guildConf)](#AxonClient+resolveCommand) ⇒ <code>Object</code>
        * [getGuildConf(gID)](#AxonClient+getGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGuildConf(gID, guildSchema)](#AxonClient+updateGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [registerGuildPrefix(gID, prefixArr)](#AxonClient+registerGuildPrefix) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateBlacklistUser(userID, [boolean])](#AxonClient+updateBlacklistUser) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateBlacklistGuild(guildID, [boolean])](#AxonClient+updateBlacklistGuild) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGuildStateModule(guildID, label, [boolean])](#AxonClient+updateGuildStateModule) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGuildStateCommand(guildID, label, [boolean])](#AxonClient+updateGuildStateCommand) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateStateEvent(guildID, label, [boolean])](#AxonClient+updateStateEvent) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGlobalStateModule(module, [state])](#AxonClient+updateGlobalStateModule)
        * [updateGlobalStateCommand(command, [state])](#AxonClient+updateGlobalStateCommand)
        * [toString()](#AxonClient+toString) ⇒ <code>String</code>
        * [toJSON()](#AxonClient+toJSON) ⇒ <code>Object</code>
    * _static_
        * [AxonClient](#AxonClient.AxonClient)
            * [new AxonClient(token, options, axonOptions, modules)](#new_AxonClient.AxonClient_new)


### axonClient.start()
START METHOD
AxonClient class has already been created

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

<a name="AxonClient+onReady"></a>

### axonClient.onReady()
Calls Init Method on Ready event.
Binds all Handlers to the event emitted.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

### axonClient.registerModule(module)
Registers a new Module
Initializes modules in the client + commands + aliases

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type |
| --- | --- |
| module | <code>Object.&lt;Module&gt;</code> | 

<a name="AxonClient+unregisterModule"></a>

### axonClient.unregisterModule(label)
Unregisters a Module
Removes the module from the client + commands + aliases + schemas

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | Label of the module to unregister |

<a name="AxonClient+initStatus"></a>

### axonClient.initStatus()
Initalizes Bot status
Default method. Overridden by initStatus in child.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

<a name="AxonClient+sendFullHelp"></a>

### axonClient.sendFullHelp(msg) ⇒ <code>Promise.&lt;Message&gt;</code>
Sends full help message in DM
Respects DM permissions

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The message object |

<a name="AxonClient+fetchAxonConf"></a>

### axonClient.fetchAxonConf() ⇒ <code>Promise.&lt;Object&gt;</code>
Fetches and resolves Axon config from the DB with all default params
Creates a schema if none is found or an error is thrown

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Axon schema from the DB / error  

<a name="AxonClient+fetchGuildConf"></a>

### axonClient.fetchGuildConf(gID) ⇒ <code>Promise.&lt;Object&gt;</code>
Fetches and resolves guild Config from Database
Creates a schema if none is found or an error is thrown

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Guild schema from the DB / Error  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | The guild ID to fetch the DB |

<a name="AxonClient+resolvePrefix"></a>

### axonClient.resolvePrefix(msg) ⇒ <code>String</code>
Resolves the prefix for the following guild
If the message starts with one of the guild prefix it returns the prefix
Else it returns undefined (no guild prefix used)

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>String</code> - The prefix if found / Undefined if the command doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | the message object |

<a name="AxonClient+resolveCommand"></a>

### axonClient.resolveCommand(label, args, guildConf) ⇒ <code>Object</code>
Resolves the command Object. Only resolves the command if it's not globally disabled / guild disabled

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Object</code> - The command object / Undefined if the command doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | the command label / command alias |
| args | <code>Array.&lt;String&gt;</code> | Array of arguments |
| guildConf | <code>Object</code> | Guild config from DB |

<a name="AxonClient+getGuildConf"></a>

### axonClient.getGuildConf(gID) ⇒ <code>Promise.&lt;Object&gt;</code>
Gets (or creates) guildConfig from cache or DB
Caches the guildConfig if not already cached

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - GuildConf fetched  

| Param | Type |
| --- | --- |
| gID | <code>String</code> | 

<a name="AxonClient+updateGuildConf"></a>

### axonClient.updateGuildConf(gID, guildSchema) ⇒ <code>Promise.&lt;Object&gt;</code>
Updates guild Conf in cache + DB
Uses JSON directly. (Client cache leaned Guild schema)

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | Guild ID |
| guildSchema | <code>Object</code> | Guild schema Object |

<a name="AxonClient+registerGuildPrefix"></a>

### axonClient.registerGuildPrefix(gID, prefixArr) ⇒ <code>Promise.&lt;Object&gt;</code>
Registers Guild Prefix
External method that can be called to update cached prefix with prefix registered in th DB

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The guild Schema from the DB / Error if an error is thrown  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | The guild ID |
| prefixArr | <code>Array.&lt;String&gt;</code> | The array of prefix |

<a name="AxonClient+updateBlacklistUser"></a>

### axonClient.updateBlacklistUser(userID, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Adds / Removes a blacklisted User
External method that can be called to add a user to the blacklist

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The Axon Schema from the DB / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| userID | <code>String</code> |  | The ID of the user to blacklist |
| [boolean] | <code>Boolean</code> | <code>true</code> | Whether to add(true) or remove(false) the user to blacklist |

<a name="AxonClient+updateBlacklistGuild"></a>

### axonClient.updateBlacklistGuild(guildID, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Adds / Removes a blacklisted Guild
External method that can be called to add a user to the blacklist

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The Axon Schema from the DB / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The ID of the guild to blacklist |
| [boolean] | <code>Boolean</code> | <code>true</code> | if add(true) or remove(false) the guild to blacklist |

<a name="AxonClient+updateGuildStateModule"></a>

### axonClient.updateGuildStateModule(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Updates the state of a Module
Checks are done before calling updateStateModule
The module whether or not it exists, is not a serverBypass module
Boolean true = disable module / false = enable

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The module label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the module (false) or enable (true) |

<a name="AxonClient+updateGuildStateCommand"></a>

### axonClient.updateGuildStateCommand(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Updates the state of a Command
Checks are done before calling updateStateCommand
The command whether or not it exists, is not a serverBypass command
Boolean true = disable command / false = enable

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The command label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the command (false) or enable (true) |

<a name="AxonClient+updateStateEvent"></a>

### axonClient.updateStateEvent(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Updates the state of an Event
Checks are done before calling updateStateEvent
The event whether or not it exists, is not a serverBypass event
Boolean true = disable event / false = enable

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The event label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the event (false) or enable (true) |

<a name="AxonClient+updateGlobalStateModule"></a>

### axonClient.updateGlobalStateModule(module, [state])
Enable/Disable a module globally

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| module | <code>String</code> |  | Module name |
| [state] | <code>Boolean</code> | <code>true</code> | Whether to enable or disable |

<a name="AxonClient+updateGlobalStateCommand"></a>

### axonClient.updateGlobalStateCommand(command, [state])
Enables / Disables a command globally

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| command | <code>String</code> |  | Command name |
| [state] | <code>Boolean</code> | <code>true</code> | Whether to enable or disable |

<a name="AxonClient+toString"></a>

### axonClient.toString() ⇒ <code>String</code>
ToString method.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

<a name="AxonClient+toJSON"></a>

### axonClient.toJSON() ⇒ <code>Object</code>
ToJSON method.
(Method taken from eris)

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Object</code> - JSON-like Object  

<a name="AxonClient.AxonClient"></a>

### AxonClient.AxonClient
**Kind**: Static class of [<code>AxonClient</code>](#AxonClient)  
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
Creates an Instance of AxonClient.


| Param | Type | Description |
| --- | --- | --- |
| token | <code>String</code> |  |
| options | <code>Object</code> | Eris options |
| axonOptions | <code>Object</code> | Axon options |
| modules | <code>Object</code> | Object with all modules to add in the bot |

