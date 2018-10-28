<a name="Utils"></a>

## Utils
**Kind**: global class  
**Author**: KhaaZ  

* [Utils](#Utils)
    * [new Utils()](#new_Utils_new)
    * _instance_
        * [.splitMessage(content)](#Utils+splitMessage) ⇒ <code>Array.&lt;String&gt;</code> \| <code>String</code>
        * [.getPrefix(msg)](#Utils+getPrefix) ⇒ <code>String</code>
        * [.getRoles(guild, member)](#Utils+getRoles) ⇒ <code>Array.&lt;Role&gt;</code>
        * [.getHighestRole(guild, member)](#Utils+getHighestRole) ⇒ <code>Object.&lt;Role&gt;</code>
        * [.sortRoles(array)](#Utils+sortRoles) ⇒ <code>Array.&lt;Role&gt;</code>
        * [.isRoleHigher(role1, role2)](#Utils+isRoleHigher) ⇒ <code>Boolean</code>
        * [.isHigherRole(guild, first, second)](#Utils+isHigherRole) ⇒ <code>Boolean</code>
        * [.readJson()](#Utils+readJson)
        * [.writeJson()](#Utils+writeJson)
        * [.compareObject(obj1, obj2)](#Utils+compareObject) ⇒ <code>Boolean</code>
    * _static_
        * [.Utils](#Utils.Utils)
            * [new Utils()](#new_Utils.Utils_new)

<a name="new_Utils_new"></a>

### new Utils()
General Utility Class for AxonCore

All methods useful and usable everywhere

<a name="Utils+splitMessage"></a>

### utils.splitMessage(content) ⇒ <code>Array.&lt;String&gt;</code> \| <code>String</code>
Split a content (String), according to correct linebreaks.
split at 1900 char

**Kind**: instance method of [<code>Utils</code>](#Utils)  
**Returns**: <code>Array.&lt;String&gt;</code> \| <code>String</code> - The array of content string splitted or the original String  

| Param | Type |
| --- | --- |
| content | <code>String</code> | 

<a name="Utils+getPrefix"></a>

### utils.getPrefix(msg) ⇒ <code>String</code>
Returns the guild prefix of the given msg.

**Kind**: instance method of [<code>Utils</code>](#Utils)  
**Returns**: <code>String</code> - The prefix as string.  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object</code> | Message object given at the command. |

<a name="Utils+getRoles"></a>

### utils.getRoles(guild, member) ⇒ <code>Array.&lt;Role&gt;</code>
Get an Array of roles Object from a member

**Kind**: instance method of [<code>Utils</code>](#Utils)  
**Returns**: <code>Array.&lt;Role&gt;</code> - Array of roles object  

| Param | Type |
| --- | --- |
| guild | <code>Object.&lt;Guild&gt;</code> | 
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Utils+getHighestRole"></a>

### utils.getHighestRole(guild, member) ⇒ <code>Object.&lt;Role&gt;</code>
Get highest role from a member

**Kind**: instance method of [<code>Utils</code>](#Utils)  
**Returns**: <code>Object.&lt;Role&gt;</code> - Role Object  

| Param | Type |
| --- | --- |
| guild | <code>Object.&lt;Guild&gt;</code> | 
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Utils+sortRoles"></a>

### utils.sortRoles(array) ⇒ <code>Array.&lt;Role&gt;</code>
Sort a users roles from higher role to last role

**Kind**: instance method of [<code>Utils</code>](#Utils)  
**Returns**: <code>Array.&lt;Role&gt;</code> - Sorted array (per position) of Role Object  

| Param | Type | Description |
| --- | --- | --- |
| array | <code>Array.&lt;Role&gt;</code> | The roles to sort |

<a name="Utils+isRoleHigher"></a>

### utils.isRoleHigher(role1, role2) ⇒ <code>Boolean</code>
Check if a role is higher than the other

**Kind**: instance method of [<code>Utils</code>](#Utils)  

| Param | Type |
| --- | --- |
| role1 | <code>Object.&lt;Role&gt;</code> | 
| role2 | <code>Object.&lt;Role&gt;</code> | 

<a name="Utils+isHigherRole"></a>

### utils.isHigherRole(guild, first, second) ⇒ <code>Boolean</code>
Check if the higher role of member1 is higher than higher role of member2

**Kind**: instance method of [<code>Utils</code>](#Utils)  

| Param | Type |
| --- | --- |
| guild | <code>Object.&lt;Guild&gt;</code> | 
| first | <code>Object.&lt;Member&gt;</code> | 
| second | <code>Object.&lt;Member&gt;</code> | 

<a name="Utils+readJson"></a>

### utils.readJson()
read file

**Kind**: instance method of [<code>Utils</code>](#Utils)  
<a name="Utils+writeJson"></a>

### utils.writeJson()
write file

**Kind**: instance method of [<code>Utils</code>](#Utils)  
<a name="Utils+compareObject"></a>

### utils.compareObject(obj1, obj2) ⇒ <code>Boolean</code>
Ensures that all property names of obj1 exists in obj2.
Doesn't compare values. Exept if it is an object, then it check for property names recursively

**Kind**: instance method of [<code>Utils</code>](#Utils)  
**Returns**: <code>Boolean</code> - True: obj2 has at least all prop of obj1  

| Param | Type | Description |
| --- | --- | --- |
| obj1 | <code>Object</code> | Default config/object |
| obj2 | <code>Object</code> | Custom config/Object (Config/Object to compare with) |

<a name="Utils.Utils"></a>

### Utils.Utils
**Kind**: static class of [<code>Utils</code>](#Utils)  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| axon | <code>Object.&lt;AxonClient&gt;</code> | Axon Client [GETTER: _axon] |
| bot | <code>Object.&lt;Eris.Client&gt;</code> | Eris bot Client [GETTER: _axon.client] |
| userMention | <code>RegExp</code> | Regular Expression to match a userMention |
| roleMention | <code>RegExp</code> | Regular Expression to match a roleMention |
| channelMention | <code>RegExp</code> | Regular Expression to match a channelMention |
| id | <code>RegExp</code> | Regular Expression to match an id |
| hexCode | <code>RegExp</code> | Regular Expression to match an hexCode |

<a name="new_Utils.Utils_new"></a>

#### new Utils()
Creates an instance of Utils.

