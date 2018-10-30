<a name="ChalkLogger"></a>

## ChalkLogger ⇐ <code>Console</code>
**Kind**: global class  
**Extends**: <code>Console</code>  
**Author**: KhaaZ  

* [ChalkLogger](#ChalkLogger) ⇐ <code>Console</code>
    * [new ChalkLogger()](#new_ChalkLogger_new)
    * [.emerg(input, opt)](#ChalkLogger+emerg)
    * [.error(input, opt)](#ChalkLogger+error)
    * [.warn(input, opt)](#ChalkLogger+warn)
    * [.debug(input, opt)](#ChalkLogger+debug)
    * [.notice(input, opt)](#ChalkLogger+notice)
    * [.info(input, opt)](#ChalkLogger+info)
    * [.verbose(input, opt)](#ChalkLogger+verbose)
    * [.axon(input)](#ChalkLogger+axon)
    * [.init(input)](#ChalkLogger+init)
    * [.initModule(module)](#ChalkLogger+initModule)
    * [.initCommand(command)](#ChalkLogger+initCommand)
    * [.initSubCmd(sub)](#ChalkLogger+initSubCmd)
    * [.initEvent(sub)](#ChalkLogger+initEvent)

<a name="new_ChalkLogger_new"></a>

### new ChalkLogger()
Logger with time and custom method
Colorful logger
Allow clean logging with only Chalk

<a name="ChalkLogger+emerg"></a>

### chalkLogger.emerg(input, opt)
Major - Critical fault
Crashing bugs, unexpected...

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="ChalkLogger+error"></a>

### chalkLogger.error(input, opt)
Major - critical error

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="ChalkLogger+warn"></a>

### chalkLogger.warn(input, opt)
Warns - non critcal
Expected errors

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="ChalkLogger+debug"></a>

### chalkLogger.debug(input, opt)
Eval - Debugging logs

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="ChalkLogger+notice"></a>

### chalkLogger.notice(input, opt)
Important informations

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="ChalkLogger+info"></a>

### chalkLogger.info(input, opt)
Default informations

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="ChalkLogger+verbose"></a>

### chalkLogger.verbose(input, opt)
Other Logging
Commands usage...

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type | Description |
| --- | --- | --- |
| input | <code>String</code> |  |
| opt | <code>Object</code> | context object |

<a name="ChalkLogger+axon"></a>

### chalkLogger.axon(input)
AxonClient informations

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type |
| --- | --- |
| input | <code>String</code> | 

<a name="ChalkLogger+init"></a>

### chalkLogger.init(input)
Initialisation - Client infos

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type |
| --- | --- |
| input | <code>String</code> | 

<a name="ChalkLogger+initModule"></a>

### chalkLogger.initModule(module)
Initialisation - Module infos

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type |
| --- | --- |
| module | <code>Module</code> | 

<a name="ChalkLogger+initCommand"></a>

### chalkLogger.initCommand(command)
Initialisation - Command infos

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type |
| --- | --- |
| command | <code>Command</code> | 

<a name="ChalkLogger+initSubCmd"></a>

### chalkLogger.initSubCmd(sub)
Initialisation - SubCommand infos

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type |
| --- | --- |
| sub | <code>Command</code> | 

<a name="ChalkLogger+initEvent"></a>

### chalkLogger.initEvent(sub)
Initialisation - SubCommand infos

**Kind**: instance method of [<code>ChalkLogger</code>](#ChalkLogger)  

| Param | Type |
| --- | --- |
| sub | <code>Command</code> | 

