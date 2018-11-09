<a name="Base"></a>

## Base
**Kind**: global class  
**Author**: KhaaZ  

* [Base](#Base)
    * [new Base()](#new_Base_new)
    * _instance_
        * [getModule(module)](#Base+getModule) ⇒ <code>Object.&lt;Module&gt;</code> \| <code>NULL</code>
        * [getCommand(fullLabel)](#Base+getCommand) ⇒ <code>Object.&lt;Command&gt;</code> \| <code>NULL</code>
        * [sendDM(user, content, options)](#Base+sendDM) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [sendMessage(channel, content, [options])](#Base+sendMessage) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [editMessage(message, content)](#Base+editMessage) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [sendError(channel, content, options)](#Base+sendError) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [sendSuccess(channel, content, options)](#Base+sendSuccess) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [error(msg, err, type, errMsg)](#Base+error) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [toString()](#Base+toString) ⇒ <code>String</code>
        * [toJSON()](#Base+toJSON) ⇒ <code>Object</code>
    * _static_
        * [Base](#Base.Base)
            * [new Base(axonClient)](#new_Base.Base_new)

<a name="new_Base_new"></a>

### new Base()
Base Class has default methods used by all Commands / Modules / Events

Based on Eris.Base

<a name="Base+getModule"></a>

### base.getModule(module) ⇒ <code>Object.&lt;Module&gt;</code> \| <code>NULL</code>
Gets a module from AxonClient with the label

**Kind**: Instance method of [<code>Base</code>](#Base)  

| Param | Type | Description |
| --- | --- | --- |
| module | <code>String</code> | Module label |

<a name="Base+getCommand"></a>

### base.getCommand(fullLabel) ⇒ <code>Object.&lt;Command&gt;</code> \| <code>NULL</code>
Gets a command/subcommand from AxonClient with the full label

**Kind**: Instance method of [<code>Base</code>](#Base)  

| Param | Type | Description |
| --- | --- | --- |
| fullLabel | <code>String</code> | Full command (or subcommand) label |

<a name="Base+sendDM"></a>

### base.sendDM(user, content, options) ⇒ <code>Promise.&lt;?Message&gt;</code>
DMs targetted user if the bot is able to retrieve the DM channel of the targetted user.
Rejects promise if not

**Kind**: Instance method of [<code>Base</code>](#Base)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| user | <code>Object.&lt;User&gt;</code> | User object to get the DM channel |
| content | <code>Object/String</code> | String or object (embed) |
| options | <code>Object</code> | Options { disableEveryone: Boolean, delete: Boolean, delay: Number } |

<a name="Base+sendMessage"></a>

### base.sendMessage(channel, content, [options]) ⇒ <code>Promise.&lt;?Message&gt;</code>
Sends a message.
Checks for bot permissions + message/embed length
Doesn't support file

**Kind**: Instance method of [<code>Base</code>](#Base)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> |  | The channel Object |
| content | <code>Object/String</code> |  | Message content, String or Embed Object |
| [options] | <code>Object</code> | <code>{}</code> | Options { disableEveryone: Boolean, delete: Boolean, delay: Number } |

<a name="Base+editMessage"></a>

### base.editMessage(message, content) ⇒ <code>Promise.&lt;?Message&gt;</code>
Edits a message
Checks for bot permissions + message embed/length

**Kind**: Instance method of [<code>Base</code>](#Base)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| message | <code>Object.&lt;Message&gt;</code> | The message object to edit |
| content | <code>Object/String</code> | Object (embed) or String |

<a name="Base+sendError"></a>

### base.sendError(channel, content, options) ⇒ <code>Promise.&lt;?Message&gt;</code>
Sends an error message. Add the error emote to the content
Checks for sendMessage perms

**Kind**: Instance method of [<code>Base</code>](#Base)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |
| content | <code>String</code> | Error message content (String only) |
| options | <code>Object</code> | Options { disableEveryone: Boolean, delete: Boolean, delay: Number } |

<a name="Base+sendSuccess"></a>

### base.sendSuccess(channel, content, options) ⇒ <code>Promise.&lt;?Message&gt;</code>
Sends a success message. Add the success emote to the content
Checks for sendMessage perms

**Kind**: Instance method of [<code>Base</code>](#Base)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |
| content | <code>String</code> | Error message content (String only) |
| options | <code>Object</code> | Options { disableEveryone: Boolean, delete: Boolean, delay: Number } |

<a name="Base+error"></a>

### base.error(msg, err, type, errMsg) ⇒ <code>Promise.&lt;?Message&gt;</code>
Handles errors (send error message/log)
Calls sendError

**Kind**: Instance method of [<code>Base</code>](#Base)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The message Object |
| err | <code>Object.&lt;Error&gt;</code> | The error message |
| type | <code>String</code> | Type of error (api, db, internal) |
| errMsg | <code>String</code> | Optional error message |

<a name="Base+toString"></a>

### base.toString() ⇒ <code>String</code>
ToString method.

**Kind**: Instance method of [<code>Base</code>](#Base)  

<a name="Base+toJSON"></a>

### base.toJSON() ⇒ <code>Object</code>
ToJSON method.
(method took from eris)

**Kind**: Instance method of [<code>Base</code>](#Base)  
**Returns**: <code>Object</code> - JSON-like Object  

<a name="Base.Base"></a>

### Base.Base
**Kind**: Static class of [<code>Base</code>](#Base)  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| axon | <code>Object.&lt;AxonClient&gt;</code> | Axon Client [GETTER: _axon] |
| bot | <code>Object.&lt;Eris.Client&gt;</code> | Eris bot Client [GETTER: _axon.client] |
| Logger | <code>Object</code> | Logger Object/Methods [GETTER: axon.Logger] |
| Resolver | <code>Object</code> | Resolver Object/Methods [GETTER: axon.Resolver] |
| AxonUtils | <code>Object</code> | AxonUtils Object/Methods [GETTER: axon.AxonUtils] |
| Utils | <code>Object</code> | Utils Object/Methods [GETTER: axon.Utils] |

<a name="new_Base.Base_new"></a>

#### new Base(axonClient)
Creates an Instance of Base.


| Param | Type |
| --- | --- |
| axonClient | <code>Object.&lt;AxonClient&gt;</code> | 

