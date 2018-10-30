<a name="Resolver"></a>

## .Resolver
**Kind**: static class  
**Author**: KhaaZ  

* [.Resolver](#Resolver)
    * [new Resolver()](#new_Resolver_new)
    * [.user(client, args)](#Resolver.user) ⇒ <code>Object</code> \| <code>null</code>
    * [.member(guild, args)](#Resolver.member) ⇒ <code>Object</code> \| <code>null</code>
    * [.role(guild, args)](#Resolver.role) ⇒ <code>Object</code> \| <code>null</code>
    * [.channel(guild, args)](#Resolver.channel) ⇒ <code>Object</code> \| <code>null</code>
    * [.guild(client, args)](#Resolver.guild) ⇒ <code>Object</code> \| <code>null</code>

<a name="new_Resolver_new"></a>

### new Resolver()
Resolver class for AxonClient

<a name="Resolver.user"></a>

### Resolver.user(client, args) ⇒ <code>Object</code> \| <code>null</code>
User resolver

**Kind**: static method of [<code>Resolver</code>](#Resolver)  
**Returns**: <code>Object</code> \| <code>null</code> - The user object / Null if not found / Error  

| Param | Type | Description |
| --- | --- | --- |
| client | <code>Object.&lt;Eris.Client&gt;</code> | The bot client |
| args | <code>Array/String</code> | Array of arguments resolved by the command. |

<a name="Resolver.member"></a>

### Resolver.member(guild, args) ⇒ <code>Object</code> \| <code>null</code>
Member resolver

**Kind**: static method of [<code>Resolver</code>](#Resolver)  
**Returns**: <code>Object</code> \| <code>null</code> - The member object / Null if not found / Error  

| Param | Type | Description |
| --- | --- | --- |
| guild | <code>Object.&lt;Guild&gt;</code> | Object Guild resolved by the command. |
| args | <code>Array/String</code> | Array of arguments resolved by the command. |

<a name="Resolver.role"></a>

### Resolver.role(guild, args) ⇒ <code>Object</code> \| <code>null</code>
Role resolver

**Kind**: static method of [<code>Resolver</code>](#Resolver)  
**Returns**: <code>Object</code> \| <code>null</code> - The role object / Null if not found / Error  

| Param | Type | Description |
| --- | --- | --- |
| guild | <code>Object.&lt;Guild&gt;</code> | Object Guild resolved by the command. |
| args | <code>Array/String</code> | Array of arguments resolved by the command. |

<a name="Resolver.channel"></a>

### Resolver.channel(guild, args) ⇒ <code>Object</code> \| <code>null</code>
Channel resolver

**Kind**: static method of [<code>Resolver</code>](#Resolver)  
**Returns**: <code>Object</code> \| <code>null</code> - The channel object / Null if not found / Error  

| Param | Type | Description |
| --- | --- | --- |
| guild | <code>Object.&lt;Guild&gt;</code> | Object Guild resolved by the command. |
| args | <code>Array/String</code> | Array of arguments resolved by the command. |

<a name="Resolver.guild"></a>

### Resolver.guild(client, args) ⇒ <code>Object</code> \| <code>null</code>
Guild resolver

**Kind**: static method of [<code>Resolver</code>](#Resolver)  
**Returns**: <code>Object</code> \| <code>null</code> - The guild object / Null if not found / Error  

| Param | Type | Description |
| --- | --- | --- |
| client | <code>Object.&lt;Eris.Client&gt;</code> | The bot client |
| args | <code>Array</code> | Array with guild name/ID |

