<a name="AxonUtils"></a>

## AxonUtils
**Kind**: global class  
**Author**: KhaaZ  

* [AxonUtils](#AxonUtils)
    * [new AxonUtils()](#new_AxonUtils_new)
    * _instance_
        * [.triggerWebhook(type, embed, opt)](#AxonUtils+triggerWebhook)
        * [.hasChannelPerms(channel, permissions, [user])](#AxonUtils+hasChannelPerms) ⇒ <code>Boolean</code>
        * [.missingPerms(member, [permissions])](#AxonUtils+missingPerms) ⇒ <code>Array.&lt;String&gt;</code>
        * [.hasPerms(member, permissions)](#AxonUtils+hasPerms) ⇒ <code>Boolean</code>
        * [.isBotOwner(uID)](#AxonUtils+isBotOwner) ⇒ <code>Boolean</code>
        * [.isBotAdmin(uID)](#AxonUtils+isBotAdmin) ⇒ <code>Boolean</code>
        * [.isBotStaff(uID)](#AxonUtils+isBotStaff) ⇒ <code>Boolean</code>
        * [.isAdmin(member)](#AxonUtils+isAdmin) ⇒ <code>Boolean</code>
        * [.isMod(member, guildConf)](#AxonUtils+isMod) ⇒ <code>Boolean</code>
        * [.sendMessage(channel, content, [options])](#AxonUtils+sendMessage) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.editMessage(message, content)](#AxonUtils+editMessage) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.sendDM(user, content, options)](#AxonUtils+sendDM) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.sendError(channel, content, options)](#AxonUtils+sendError) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.sendSuccess(channel, content, options)](#AxonUtils+sendSuccess) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.error(msg, err, type, errMsg)](#AxonUtils+error) ⇒ <code>Promise.&lt;?Message&gt;</code>
    * _static_
        * [.AxonUtils](#AxonUtils.AxonUtils)
            * [new AxonUtils(axon)](#new_AxonUtils.AxonUtils_new)

<a name="new_AxonUtils_new"></a>

### new AxonUtils()
Utility Class for AxonCore

AxonClient Specific methods
Internal uses + external
All methods useful for internal uses or AxonClient specific

<a name="AxonUtils+triggerWebhook"></a>

### axonUtils.triggerWebhook(type, embed, opt)
Triger an Axon Webhook
Works directly with axon._configs._tokens [GETTER: axon.webhooks]

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  

| Param | Type | Description |
| --- | --- | --- |
| type | <code>String</code> | Type of the webhook [status, loader, error, misc] |
| embed | <code>Object</code> | Embed object |
| opt | <code>String</code> | Optional string to use as bot username |

<a name="AxonUtils+hasChannelPerms"></a>

### axonUtils.hasChannelPerms(channel, permissions, [user]) ⇒ <code>Boolean</code>
Check if the user has correct perm in targeted channel

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Boolean</code> - True if user has permissions / False if not  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> |  | Channel object |
| permissions | <code>Array.&lt;String&gt;</code> |  | List of permissions to test |
| [user] | <code>Object.&lt;User&gt;</code> | <code>this.bot.user</code> | User to test |

<a name="AxonUtils+missingPerms"></a>

### axonUtils.missingPerms(member, [permissions]) ⇒ <code>Array.&lt;String&gt;</code>
List all missing perms for a user

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Array.&lt;String&gt;</code> - An array of missing permissions  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| member | <code>Object.&lt;Member&gt;</code> |  |  |
| [permissions] | <code>Array.&lt;String&gt;</code> | <code>[]</code> | List of permissions to test |

<a name="AxonUtils+hasPerms"></a>

### axonUtils.hasPerms(member, permissions) ⇒ <code>Boolean</code>
Check if the member has correct perm to execute

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Boolean</code> - True if member has permissions / False if not  

| Param | Type | Description |
| --- | --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | Member object |
| permissions | <code>Array.&lt;String&gt;</code> | List of permissions to test |

<a name="AxonUtils+isBotOwner"></a>

### axonUtils.isBotOwner(uID) ⇒ <code>Boolean</code>
Check if the user is bot owner

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  

| Param | Type | Description |
| --- | --- | --- |
| uID | <code>String</code> | the user ID |

<a name="AxonUtils+isBotAdmin"></a>

### axonUtils.isBotAdmin(uID) ⇒ <code>Boolean</code>
Check if the user is bot admin

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  

| Param | Type | Description |
| --- | --- | --- |
| uID | <code>String</code> | the user ID |

<a name="AxonUtils+isBotStaff"></a>

### axonUtils.isBotStaff(uID) ⇒ <code>Boolean</code>
Check if the user is bot staff

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  

| Param | Type | Description |
| --- | --- | --- |
| uID | <code>String</code> | the user ID |

<a name="AxonUtils+isAdmin"></a>

### axonUtils.isAdmin(member) ⇒ <code>Boolean</code>
Check is the user is an Admin

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Boolean</code> - True if admin / False if not  

| Param | Type | Description |
| --- | --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | The member object |

<a name="AxonUtils+isMod"></a>

### axonUtils.isMod(member, guildConf) ⇒ <code>Boolean</code>
Check if the user is a mod or higher (admins are always mod)

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Boolean</code> - True if user is a mod / False if not  

| Param | Type | Description |
| --- | --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | The member object |
| guildConf | <code>Object</code> | The guild Config from the DB |

<a name="AxonUtils+sendMessage"></a>

### axonUtils.sendMessage(channel, content, [options]) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send a message.
Check for bot permissions + message/embed length
Doesn't support file

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> |  | The channel Object |
| content | <code>Object/String</code> |  | Message content, String or Embed Object |
| [options] | <code>Object</code> | <code>{}</code> | Options { disableEveryone: Boolean, delete: Boolean, delay: Number } |

<a name="AxonUtils+editMessage"></a>

### axonUtils.editMessage(message, content) ⇒ <code>Promise.&lt;?Message&gt;</code>
Edit a message
Check for bot permissions + message embed/length

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| message | <code>Object.&lt;Message&gt;</code> | The message object to edit |
| content | <code>Object/String</code> | Object (embed) or String |

<a name="AxonUtils+sendDM"></a>

### axonUtils.sendDM(user, content, options) ⇒ <code>Promise.&lt;?Message&gt;</code>
DM targeted user if the bot is able to retrieve DM channel.
Reject promise if not

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| user | <code>Object.&lt;User&gt;</code> | User object to get the DM channel |
| content | <code>Object/String</code> | String or object (embed) |
| options | <code>Object</code> | Options { disableEveryone: Boolean, delete: Boolean, delay: Number } |

<a name="AxonUtils+sendError"></a>

### axonUtils.sendError(channel, content, options) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message. Add the error emote to the content
Check for sendMessage perms

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |
| content | <code>String</code> | Error message content (String only) |
| options | <code>Object</code> | Options { disableEveryone: Boolean, delete: Boolean, delay: Number } |

<a name="AxonUtils+sendSuccess"></a>

### axonUtils.sendSuccess(channel, content, options) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send a success message. Add the success emote to the content
Check for sendMessage perms

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |
| content | <code>String</code> | Error message content (String only) |
| options | <code>Object</code> | Options { disableEveryone: Boolean, delete: Boolean, delay: Number } |

<a name="AxonUtils+error"></a>

### axonUtils.error(msg, err, type, errMsg) ⇒ <code>Promise.&lt;?Message&gt;</code>
Handle errors (send error message/log)
Call sendError

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The message Object |
| err | <code>Object.&lt;Error&gt;</code> | The error message |
| type | <code>String</code> | Type of error (api, db, internal) |
| errMsg | <code>String</code> | Optional error message |

<a name="AxonUtils.AxonUtils"></a>

### AxonUtils.AxonUtils
**Kind**: static class of [<code>AxonUtils</code>](#AxonUtils)  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| axon | <code>Object.&lt;AxonClient&gt;</code> | Axon Client [GETTER: _axon] |
| bot | <code>Object.&lt;Eris.Client&gt;</code> | Eris bot Client [GETTER: _axon.client] |
| Logger | <code>Object</code> | Logger Object/Methods [GETTER: axon.Logger] |
| Resolver | <code>Object</code> | Resolver Object/Methods [GETTER: axon.Resolver] |
| AxonUtils | <code>Object</code> | AxonUtils Object/Methods [GETTER: axon.AxonUtils] |
| Utils | <code>Object</code> | Utils Object/Methods [GETTER: axon.Utils] |

<a name="new_AxonUtils.AxonUtils_new"></a>

#### new AxonUtils(axon)
Creates an instance of AxonUtils.


| Param | Type |
| --- | --- |
| axon | <code>Object.&lt;AxonClient&gt;</code> | 

