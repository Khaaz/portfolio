<a name="DefLogger"></a>

## DefLogger ⇐ <code>Console</code>
**Kind**: global class  
**Extends**: <code>Console</code>  
**Author**: KhaaZ  

* [DefLogger](#DefLogger) ⇐ <code>Console</code>
    * [new DefLogger()](#new_DefLogger_new)
    * [.emerg(input, opt)](#DefLogger+emerg)
    * [.error(input, opt)](#DefLogger+error)
    * [.warn(input, opt)](#DefLogger+warn)
    * [.debug(input, opt)](#DefLogger+debug)
    * [.notice(input, opt)](#DefLogger+notice)
    * [.info(input, opt)](#DefLogger+info)
    * [.verbose(input, opt)](#DefLogger+verbose)
    * [.axon(input)](#DefLogger+axon)
    * [.init(input)](#DefLogger+init)
    * [.initModule(module)](#DefLogger+initModule)
    * [.initCommand(command)](#DefLogger+initCommand)
    * [.initSubCmd(sub)](#DefLogger+initSubCmd)
    * [.initEvent(sub)](#DefLogger+initEvent)

<a name="new_DefLogger_new"></a>

### new DefLogger()
Default Logger with time and custom method
Allow clean logging without any dependency

<a name="DefLogger+emerg"></a>

### defLogger.emerg(input, opt)
Major - Critical fault
Crashing bugs, unexpected...

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="DefLogger+error"></a>

### defLogger.error(input, opt)
Major - critical error

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="DefLogger+warn"></a>

### defLogger.warn(input, opt)
Warns - non critcal
Expected errors

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="DefLogger+debug"></a>

### defLogger.debug(input, opt)
Eval - Debugging logs

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="DefLogger+notice"></a>

### defLogger.notice(input, opt)
Important informations

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="DefLogger+info"></a>

### defLogger.info(input, opt)
Default informations

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="DefLogger+verbose"></a>

### defLogger.verbose(input, opt)
Other Logging
Commands usage...

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="DefLogger+axon"></a>

### defLogger.axon(input)
AxonClient informations

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type |
| --- | --- |
| input | <code>String</code> | 

<a name="DefLogger+init"></a>

### defLogger.init(input)
Initialisation - Client infos

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type |
| --- | --- |
| input | <code>String</code> | 

<a name="DefLogger+initModule"></a>

### defLogger.initModule(module)
Initialisation - Module infos

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type |
| --- | --- |
| module | <code>Module</code> | 

<a name="DefLogger+initCommand"></a>

### defLogger.initCommand(command)
Initialisation - Command infos

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type |
| --- | --- |
| command | <code>Command</code> | 

<a name="DefLogger+initSubCmd"></a>

### defLogger.initSubCmd(sub)
Initialisation - SubCommand infos

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type |
| --- | --- |
| sub | <code>Command</code> | 

<a name="DefLogger+initEvent"></a>

### defLogger.initEvent(sub)
Initialisation - SubCommand infos

**Kind**: instance method of [<code>DefLogger</code>](#DefLogger)  

| Param | Type |
| --- | --- |
| sub | <code>Command</code> | 

