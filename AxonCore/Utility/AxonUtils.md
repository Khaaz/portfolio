<a name="AxonUtils"></a>

## AxonUtils
**Kind**: global class  
**Author**: KhaaZ  

* [AxonUtils](#AxonUtils)
    * [new AxonUtils()](#new_AxonUtils_new)
    * [.triggerWebhook(type, embed, opt)](#AxonUtils+triggerWebhook)
    * [.hasChannelPerms(channel, permissions, [user])](#AxonUtils+hasChannelPerms) ⇒ <code>Boolean</code>
    * [.missingPerms(member, [permissions])](#AxonUtils+missingPerms) ⇒ <code>Array.&lt;String&gt;</code>
    * [.hasPerms(member, permissions)](#AxonUtils+hasPerms) ⇒ <code>Boolean</code>
    * [.isBotOwner(uID)](#AxonUtils+isBotOwner) ⇒ <code>Boolean</code>
    * [.isBotAdmin(uID)](#AxonUtils+isBotAdmin) ⇒ <code>Boolean</code>
    * [.isBotStaff(uID)](#AxonUtils+isBotStaff) ⇒ <code>Boolean</code>

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
| embed | <code>Object</code> | embed object |
| opt | <code>String</code> | optional string to use as bot username |

<a name="AxonUtils+hasChannelPerms"></a>

### axonUtils.hasChannelPerms(channel, permissions, [user]) ⇒ <code>Boolean</code>
Check if the user has correct perm in targeted channel

**Kind**: instance method of [<code>AxonUtils</code>](#AxonUtils)  
**Returns**: <code>Boolean</code> - true if user has permissions  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> |  | Channel object |
| permissions | <code>Array.&lt;String&gt;</code> |  | List of permissions to test |
| [user] | <code>Object.&lt;User&gt;</code> | <code>this.bot.user</code> | User to test | Default to bot |

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
**Returns**: <code>Boolean</code> - true if member has permissions  

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

