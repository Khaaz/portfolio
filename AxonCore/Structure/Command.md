<a name="Command"></a>

## Command ⇐ <code>Base</code>
**Kind**: global class  
**Extends**: <code>Base</code>  
**Author**: KhaaZ  

* [Command](#Command) ⇐ <code>Base</code>
    * [new Command()](#new_Command_new)
    * _instance_
        * [._module](#Command+_module)
        * [._cooldown](#Command+_cooldown)
        * [.label](#Command+label)
        * [.isSubcmd](#Command+isSubcmd)
        * [.serverBypass](#Command+serverBypass)
        * [.infos](#Command+infos)
        * [.options](#Command+options)
        * [.permissions](#Command+permissions)
        * [._execute(message)](#Command+_execute) ⇒ <code>Promise</code>
        * [._executeAdmin(message)](#Command+_executeAdmin) ⇒ <code>Promise</code>
        * [._executeDM(message)](#Command+_executeDM) ⇒ <code>Promise</code>
        * [.sendHelp(msg)](#Command+sendHelp) ⇒ <code>Promise</code>
        * [._shouldCooldown(msg)](#Command+_shouldCooldown) ⇒ <code>Boolean</code> \| <code>Number</code>
        * [.canExecute(msg, guildConf)](#Command+canExecute) ⇒ <code>Boolean</code>
        * [._checkPermsBot(channel)](#Command+_checkPermsBot) ⇒ <code>Boolean</code>
        * [._checkPermsUserBypass(member)](#Command+_checkPermsUserBypass) ⇒ <code>Boolean</code>
        * [._checkPermsUserNeeded(member)](#Command+_checkPermsUserNeeded) ⇒ <code>Boolean</code>
        * [._checkUserBypass(member)](#Command+_checkUserBypass) ⇒ <code>Boolean</code>
        * [._checkUserNeeded(member)](#Command+_checkUserNeeded) ⇒ <code>Boolean</code>
        * [._checkRoleBypass(member)](#Command+_checkRoleBypass) ⇒ <code>Boolean</code>
        * [._checkRoleNeeded(member)](#Command+_checkRoleNeeded) ⇒ <code>Boolean</code>
        * [._checkChannelBypass(channel)](#Command+_checkChannelBypass) ⇒ <code>Boolean</code>
        * [._checkChannelNeeded(channel)](#Command+_checkChannelNeeded) ⇒ <code>Boolean</code>
        * [._checkStaffBypass(member)](#Command+_checkStaffBypass) ⇒ <code>Boolean</code>
        * [._checkStaffNeeded(member)](#Command+_checkStaffNeeded) ⇒ <code>Boolean</code>
        * [.sendBotPerms(channel, permissions)](#Command+sendBotPerms) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.sendUserPerms(channel, member, permissions)](#Command+sendUserPerms) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.sendDestPerms(channel)](#Command+sendDestPerms) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.sendCooldown(channel)](#Command+sendCooldown) ⇒ <code>Promise.&lt;?Message&gt;</code>
    * _static_
        * [.Command](#Command.Command)
            * [new Command(module)](#new_Command.Command_new)

<a name="new_Command_new"></a>

### new Command()
AxonCore - Command contructor

<a name="Command+_module"></a>

### command.\_module
[GETTER] - bot references to Axon Client
[GETTER] -  (private) module references to the module the command is in

**Kind**: instance property of [<code>Command</code>](#Command)  
<a name="Command+_cooldown"></a>

### command.\_cooldown
Handle Cooldown
User ID => Cooldown

**Kind**: instance property of [<code>Command</code>](#Command)  
<a name="Command+label"></a>

### command.label
ShortCut - Reusable class
Resolver [GETTER] / Util [GETTER] / Template [GETTER]

**Kind**: instance property of [<code>Command</code>](#Command)  
<a name="Command+isSubcmd"></a>

### command.isSubcmd
Subcommands related
Default values

**Kind**: instance property of [<code>Command</code>](#Command)  
<a name="Command+serverBypass"></a>

### command.serverBypass
Bypass all perms - true = prevent the command to be server disabled

**Kind**: instance property of [<code>Command</code>](#Command)  
<a name="Command+infos"></a>

### command.infos
Infos - Help commands
All fields are required

**Kind**: instance property of [<code>Command</code>](#Command)  
<a name="Command+options"></a>

### command.options
Commands options
Default values

**Kind**: instance property of [<code>Command</code>](#Command)  
<a name="Command+permissions"></a>

### command.permissions
Handle permissions
bot perms
user perms

Optional posible override for:
 - users ID
 - roles ID
 - channels Id

Bot Staff override

custom function for special permission case

needed => needed to have all <NEEDED> permissions to execute the command
bypass => needed to have one <BYPASS> permissions to execute the command (override needed as well)

**Kind**: instance property of [<code>Command</code>](#Command)  
<a name="Command+_execute"></a>

### command.\_execute(message) ⇒ <code>Promise</code>
Execute command - checks perms according to comand options

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type | Description |
| --- | --- | --- |
| message | <code>Object</code> | msg, args, guildConf |

<a name="Command+_executeAdmin"></a>

### command.\_executeAdmin(message) ⇒ <code>Promise</code>
Execute the command with admin checkers (minimal)
no CD - no perms checkers

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type | Description |
| --- | --- | --- |
| message | <code>Object</code> | msg, args, guildCOnf |

<a name="Command+_executeDM"></a>

### command.\_executeDM(message) ⇒ <code>Promise</code>
Execute the command in DM - pass some checkers

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| message | <code>Object.&lt;Message&gt;</code> | 

<a name="Command+sendHelp"></a>

### command.sendHelp(msg) ⇒ <code>Promise</code>
Send Help message in the current channel
Perm checks were done before
Call custom sendHelp (Client method if it exist instead of default one)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The message object |

<a name="Command+_shouldCooldown"></a>

### command.\_shouldCooldown(msg) ⇒ <code>Boolean</code> \| <code>Number</code>
Check command cooldown for the user

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> \| <code>Number</code> - false if no cooldown, cooldown time left if there is a cooldown  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | the Message object |

<a name="Command+canExecute"></a>

### command.canExecute(msg, guildConf) ⇒ <code>Boolean</code>
Permission checker - Does the user has perm to exec command/not
Bypass - one of the perms (override) => doesn't go through others chercker
Needed - all perms => still go through other checkers
ServerMod

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> - true: user can execute command  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | Message Object |
| guildConf | <code>Object</code> | Guild Config |

<a name="Command+_checkPermsBot"></a>

### command.\_checkPermsBot(channel) ⇒ <code>Boolean</code>
Check bot permission
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | 

<a name="Command+_checkPermsUserBypass"></a>

### command.\_checkPermsUserBypass(member) ⇒ <code>Boolean</code>
Check user permssions [bypass]
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Command+_checkPermsUserNeeded"></a>

### command.\_checkPermsUserNeeded(member) ⇒ <code>Boolean</code>
Check user permissions [needed]
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Command+_checkUserBypass"></a>

### command.\_checkUserBypass(member) ⇒ <code>Boolean</code>
Check roles IDs [bypass]
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Command+_checkUserNeeded"></a>

### command.\_checkUserNeeded(member) ⇒ <code>Boolean</code>
Check user IDs [needed]
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Command+_checkRoleBypass"></a>

### command.\_checkRoleBypass(member) ⇒ <code>Boolean</code>
Check roles IDs [bypass]
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Command+_checkRoleNeeded"></a>

### command.\_checkRoleNeeded(member) ⇒ <code>Boolean</code>
Check roles IDs [needed]
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Command+_checkChannelBypass"></a>

### command.\_checkChannelBypass(channel) ⇒ <code>Boolean</code>
Check channels IDs [bypass]
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | 

<a name="Command+_checkChannelNeeded"></a>

### command.\_checkChannelNeeded(channel) ⇒ <code>Boolean</code>
Check channels IDs [needed]
(= permssions in config)

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| channel | <code>Object.&lt;Channelmember&gt;</code> | 

<a name="Command+_checkStaffBypass"></a>

### command.\_checkStaffBypass(member) ⇒ <code>Boolean</code>
Check if the user is Bot staff

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> - true if Staff / false if not  

| Param | Type |
| --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Command+_checkStaffNeeded"></a>

### command.\_checkStaffNeeded(member) ⇒ <code>Boolean</code>
Check if the user is Bot staff

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> - true if Staff / false if not  

| Param | Type |
| --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | 

<a name="Command+sendBotPerms"></a>

### command.sendBotPerms(channel, permissions) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message for invalid Bot permissions
timeout // delay and auto delete message

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |
| permissions | <code>Array.&lt;String&gt;</code> | Optional array of permissions string |

<a name="Command+sendUserPerms"></a>

### command.sendUserPerms(channel, member, permissions) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message for Source user permissions
timeout // delay and auto delete message

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |
| member | <code>Object.&lt;Member&gt;</code> | The member object |
| permissions | <code>Array.&lt;String&gt;</code> | Optional array of permissions string |

<a name="Command+sendDestPerms"></a>

### command.sendDestPerms(channel) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message for Destination user permissions
timeout // delay and auto delete message

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |

<a name="Command+sendCooldown"></a>

### command.sendCooldown(channel) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message for invalid cooldown
timeout // delay and auto delete message

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |

<a name="Command.Command"></a>

### Command.Command
**Kind**: static class of [<code>Command</code>](#Command)  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| bot | <code>Object.&lt;AxonClient&gt;</code> | Getter _module.bot |
| _module | <code>Object.&lt;Module&gt;</code> | The module object |
| module | <code>Object.&lt;Module&gt;</code> | GETTER _module |
| _cooldown | <code>Object</code> | Map of current cooldown (global per user) [key: userID, value: Date.now()] |
| Resolver | <code>Object</code> | [GETTER] Resolver object to access reolver methods |
| Util | <code>Object</code> | [GETTER] Util object to access utils methods |
| Template | <code>Object</code> | [GETER] Template object to access templating property |
| label | <code>String</code> | The command label (name/id) |
| aliases | <code>Array.&lt;String&gt;</code> | Array of commands aliases **including the command label |
| enabled | <code>Boolean</code> | if the command is enabled | default: true (enabled) |
| isSubcmd | <code>Boolean</code> | if the command is a subcommand | default: false (not a subcommand) |
| parentCommand | [<code>Object.&lt;Command&gt;</code>](#Command) | if isSubcommand, references to the parent Command | default to null |
| hasSubcmd | <code>Boolean</code> | if the command has a subcommand | default: false (doesnt have any subcommand)      If hasSubcmd is true: import all subcommand at the begining of the file. Then use      this.subcmds = [Array of subcmd object imported at begining of the file] |
| subcmds | <code>Array</code> | Array of subcommands Object imported from file directly at begining of parent command |
| subCommands | [<code>Collection.&lt;Command&gt;</code>](#Command) | Map of subcommands if hasSubcmd = true / else null |
| subCommandsAliases | <code>Object.&lt;Map&gt;</code> | Map of subcommands aliases if hasSubcmd = true / else null |
| serverBypass | <code>Boolean</code> | if the command can't be server disabled | default: false (can be disabled) |
| infos | <code>Object</code> | Default infos about the command  - owner(Array)  // ['Eleos'] OR ['Eleos', 'Ape']  - cmdName(String) // 'mail' OR 'mail all' (for subcommmands)  - description(String) // 'A cool command that does things'  - examples(Array) // ['suggestion Hey can we add this thanks', ...]  - arguments(Array) // ['id', 'user', 'channel', ...]  - customArguments(String) // If not empty, this string will be used instead of arguments |
| options | <code>Object</code> | Default options for the command  - argsMin(Number)                   : 0 // min arg required  - invalidUsage(Boolean)             : true // trigger help command on invalid usage = args required and no args given  - invalidPermissionMessage(Boolean) : false // trigger error message on invalid permission  - deleteCommand(Boolean)            : false // delete command input  - guildOnly(Boolean)                : true // command usable only in guilds  - hidden(Boolean)                   : false // commands totally hidden from help commmand  - cooldown(Number)                  : 3000 // cooldown for the command |
| permissions | <code>Object</code> | Default permissions for the bot/users           - needed: needs to have all permissions in the Array to use the command           - bypass: having at least one of the perms in the Array allow to use the command  - bot(Array)                : [] // permissions needed by the bot to execute the command  - serverMod(Boolean)        : false // if the command is limited to serverMod+  - serverAdmin(Boolean)      : false // if the command is limited to serverAdmin+  - user(Object)              : [] // permissions needed by the user to use the command  - usersID(Object)           : [] // Array of usersIDs (global)  - rolesID(Object)           : [] // Aray of rolesIDs (global)  - channelsID(Object)        : [] // Array of channelsIDs (global)  - staff(Array)              : [] // this.bot.staff.prop | this.bot.staff.prop.concat(this.bot.staff.prop)... |

<a name="new_Command.Command_new"></a>

#### new Command(module)
Creates an instance of Command.


| Param | Type |
| --- | --- |
| module | <code>Object.&lt;Module&gt;</code> | 

