<a name="AxonClient"></a>

## AxonClient ⇐ <code>EventEmitter</code>
**Kind**: Global class  
**Extends**: <code>EventEmitter</code>  
**Author**: KhaaZ  

* [AxonClient](#AxonClient) ⇐ <code>EventEmitter</code>
* _static_
    * [AxonClient](#AxonClient.AxonClient)
        * [new AxonClient(token, options, axonOptions, modules)](#new_AxonClient.AxonClient_new)
    * _instance_
        * [initStaff()](#AxonClient+initStaff)
        * [initErrorListeners()](#AxonClient+initErrorListeners)
        * [initStatus()](#AxonClient+initStatus)
        * [init()](#AxonClient+init) ⇒ <code>Promise</code>
        * [start()](#AxonClient+start)
        * [registerModule(module)](#AxonClient+registerModule)
        * [unregisterModule(label)](#AxonClient+unregisterModule)
        * [sendFullHelp(msg)](#AxonClient+sendFullHelp) ⇒ <code>Promise.&lt;Message&gt;</code>
        * [fetchAxonConf()](#AxonClient+fetchAxonConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [fetchGuildConf(gID)](#AxonClient+fetchGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [resolvePrefix(msg)](#AxonClient+resolvePrefix) ⇒ <code>String</code>
        * [resolveCommand(label, args, guildConf)](#AxonClient+resolveCommand) ⇒ <code>Object</code>
        * [getModule(label)](#AxonClient+getModule) ⇒ <code>Object</code>
        * [getCommand(label)](#AxonClient+getCommand) ⇒ <code>Object</code>
        * [getGuildConf(gID)](#AxonClient+getGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGuildConf(gID, guildSchema)](#AxonClient+updateGuildConf) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [registerGuildPrefix(gID, prefixArr)](#AxonClient+registerGuildPrefix) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateBlacklistUser(userID, [boolean])](#AxonClient+updateBlacklistUser) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateBlacklistGuild(guildID, [boolean])](#AxonClient+updateBlacklistGuild) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGuildStateModule(guildID, label, [boolean])](#AxonClient+updateGuildStateModule) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGuildStateCommand(guildID, label, [boolean])](#AxonClient+updateGuildStateCommand) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGuildStateEvent(guildID, label, [boolean])](#AxonClient+updateGuildStateEvent) ⇒ <code>Promise.&lt;Object&gt;</code>
        * [updateGlobalStateModule(module, [state])](#AxonClient+updateGlobalStateModule)
        * [updateGlobalStateCommand(command, [state])](#AxonClient+updateGlobalStateCommand)
        * [toString()](#AxonClient+toString) ⇒ <code>String</code>
        * [toJSON()](#AxonClient+toJSON) ⇒ <code>Object</code>

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

<a name="AxonClient+initStaff"></a>

### initStaff()
Initialise Custom Bot Staff.
This method need to be overridden in child.

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient) 

<a name="AxonClient+initErrorListeners"></a>

### initErrorListeners()
Initialize error listeners and webhooks.
This method can be overriden in child.

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

<a name="AxonClient+initStatus"></a>

### initStatus()
Initalizes the bot status.  
Default method. Can be overridden by initStatus in child.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

<a name="AxonClient+init"></a>

### init() ⇒ <code>Promise</code>
Custom init method.
This method need to be overridden in child.

**Kind**: instance method of [<code>AxonClient</code>](#AxonClient)  

<a name="AxonClient+start"></a>

### start()
START METHOD  
The AxonClient instance is already created at this point.  
Connect the bot to discord, initialize all modules and events, create default error handler, listen to messageCreate event.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

<a name="AxonClient+registerModule"></a>

### registerModule(module)
Register a module.  
Register the module of the client entirely, also registering commands, aliases, events, schemas of that module.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type |
| --- | --- |
| module | <code>Object.&lt;Module&gt;</code> | 

<a name="AxonClient+unregisterModule"></a>

### unregisterModule(label)
Unregister a module.  
Remove the module of the client, also removing commands, aliases, events, schemas of that module.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | Label of the module to unregister |

<a name="AxonClient+sendFullHelp"></a>

### sendFullHelp(msg) ⇒ <code>Promise.&lt;Message&gt;</code>
Send full help in DM.  
Doesn't show commands that the user can't execute in the guild where the command was called.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The message object |

<a name="AxonClient+fetchAxonConf"></a>

### fetchAxonConf() ⇒ <code>Promise.&lt;Object&gt;</code>
Fetches and resolves the Axon config from the DB, creates a schema with all default values if none was found or there was an error.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Axon schema from the DB / error  

<a name="AxonClient+fetchGuildConf"></a>

### fetchGuildConf(gID) ⇒ <code>Promise.&lt;Object&gt;</code>
Fetches and resolves the guild config of the given ID from the DB, creates a schema with all default values if none was found or there was an error.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Guild schema from the DB / Error  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | The guild ID to fetch the DB |

<a name="AxonClient+resolvePrefix"></a>

### resolvePrefix(msg) ⇒ <code>String</code>
Resolves the prefix for the guild of the message.  
If the message starts with one of the guild prefixes it returns the prefix, otherwise it returns undefined.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>String</code> - The prefix if found / Undefined if the command doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | the message object |

<a name="AxonClient+resolveCommand"></a>

### resolveCommand(label, args, guildConf) ⇒ <code>Object</code>
Resolves the command Object.  
Only resolves the command if it's not globally disabled or guild disabled.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Object</code> - The command object / Undefined if the command doesn't exist  

| Param | Type | Description |
| --- | --- | --- |
| label | <code>String</code> | the command label / command alias |
| args | <code>Array.&lt;String&gt;</code> | Array of arguments |
| guildConf | <code>Object</code> | Guild config from DB |

<a name="AxonClient+getModule"></a>

### getModule(label) ⇒ <code>Object</code>
Get a module from AxonClient with the given label.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Object</code> - Module fetched  

| Param | Type |
| --- | --- |
| label | <code>String</code> | 

<a name="AxonClient+getCommand"></a>

### getCommand(label) ⇒ <code>Object</code>
Get a command or subcommand from AxonClient with the given full label.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Object</code> - Command fetched  

| Param | Type |
| --- | --- |
| label | <code>String</code> | 

<a name="AxonClient+getGuildConf"></a>

### getGuildConf(gID) ⇒ <code>Promise.&lt;Object&gt;</code>
Get (or create) the guildConfig of the given ID from cache or DB.  
Cache the guildConfig if it's not already cached in the guildCong Collection.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - GuildConf fetched  

| Param | Type |
| --- | --- |
| gID | <code>String</code> | 

<a name="AxonClient+updateGuildConf"></a>

### updateGuildConf(gID, guildSchema) ⇒ <code>Promise.&lt;Object&gt;</code>
Update the guild config in the cache and DB.  
This methods uses the raw JSON object.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | Guild ID |
| guildSchema | <code>Object</code> | Guild schema Object |

<a name="AxonClient+registerGuildPrefix"></a>

### registerGuildPrefix(gID, prefixArr) ⇒ <code>Promise.&lt;Object&gt;</code>
Register a prefix for a guild.  
External method that can be called to update the cached prefix with the prefix registered in the DB.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The guild Schema from the DB / Error if an error is thrown  

| Param | Type | Description |
| --- | --- | --- |
| gID | <code>String</code> | The guild ID |
| prefixArr | <code>Array.&lt;String&gt;</code> | The array of prefix |

<a name="AxonClient+updateBlacklistUser"></a>

### updateBlacklistUser(userID, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Adds or removes a blacklisted user. (true = add to the blacklist, false = remove from the backlist)  
External method that can be called to update the blacklist (update in cache and in DB).

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The Axon Schema from the DB / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| userID | <code>String</code> |  | The ID of the user to blacklist |
| [boolean] | <code>Boolean</code> | <code>true</code> | Whether to add(true) or remove(false) the user to blacklist |

<a name="AxonClient+updateBlacklistGuild"></a>

### updateBlacklistGuild(guildID, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Adds or removes a blacklisted guild. (true = add to the blacklist, false = remove from the backlist)  
External method that can be called to update the blacklist (update in cache and in DB).

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - The Axon Schema from the DB / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The ID of the guild to blacklist |
| [boolean] | <code>Boolean</code> | <code>true</code> | if add(true) or remove(false) the guild to blacklist |

<a name="AxonClient+updateGuildStateModule"></a>

### updateGuildStateModule(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Updates the state of a module in a guild.  
true = enable the event, false = disable the event.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The module label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the module (false) or enable (true) |

<a name="AxonClient+updateGuildStateCommand"></a>

### updateGuildStateCommand(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Updates the state of a command in a guild.  
true = enable the event, false = disable the event.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The command label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the command (false) or enable (true) |

<a name="AxonClient+updateGuildStateEvent"></a>

### updateGuildStateEvent(guildID, label, [boolean]) ⇒ <code>Promise.&lt;Object&gt;</code>
Updates the state of an event in  a guild.  
true = enable the event, false = disable the event.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Promise.&lt;Object&gt;</code> - Updated guildSchema / Error  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| guildID | <code>String</code> |  | The guild ID |
| label | <code>String</code> |  | The event label |
| [boolean] | <code>Boolean</code> | <code>true</code> | If disable the event (false) or enable (true) |

<a name="AxonClient+updateGlobalStateModule"></a>

### updateGlobalStateModule(module, [state])
Enables or disables a Module globally.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| module | <code>String</code> |  | Module name |
| [state] | <code>Boolean</code> | <code>true</code> | Whether to enable or disable |

<a name="AxonClient+updateGlobalStateCommand"></a>

### updateGlobalStateCommand(command, [state])
Enables or disables a Command globally.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| command | <code>String</code> |  | Command name |
| [state] | <code>Boolean</code> | <code>true</code> | Whether to enable or disable |

<a name="AxonClient+toString"></a>

### toString() ⇒ <code>String</code>
ToString method.  

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  

<a name="AxonClient+toJSON"></a>

### toJSON() ⇒ <code>Object</code>
ToJSON method.  

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Object</code> - JSON-like Object  

### inspect() ⇒ <code>Object</code>
Custom inspect method.  
Doesn't list prefixed property and undefined property.

**Kind**: Instance method of [<code>AxonClient</code>](#AxonClient)  
**Returns**: <code>Object</code> - JSON-like Object 

