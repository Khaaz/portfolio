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
        * [.subCommands](#Command+subCommands)
        * [.serverBypass](#Command+serverBypass)
        * [.infos](#Command+infos)
        * [.options](#Command+options)
        * [.permissions](#Command+permissions)
        * [._execute(message)](#Command+_execute) ⇒ <code>Promise</code>
        * [._executeAdmin(message)](#Command+_executeAdmin) ⇒ <code>Promise</code>
        * [._executeDM(message)](#Command+_executeDM) ⇒ <code>Promise</code>
        * [.sendHelp({msg,)](#Command+sendHelp) ⇒ <code>Promise.&lt;Message&gt;</code>
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
        * [.sendBotPerms(channel, [permissions])](#Command+sendBotPerms) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [.sendUserPerms(channel, member, [permission])](#Command+sendUserPerms) ⇒ <code>Promise.&lt;?Message&gt;</code>
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
[GETTER] - (private) module references to the module the command is in

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
<a name="Command+subCommands"></a>

### command.subCommands
Initiated if subcommands

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
| message | <code>Object</code> | { msg, args, guildConf } |

<a name="Command+_executeAdmin"></a>

### command.\_executeAdmin(message) ⇒ <code>Promise</code>
Execute the command with admin checkers (minimal)
no CD - no perms checkers

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type | Description |
| --- | --- | --- |
| message | <code>Object</code> | { msg, args, guildConf } |

<a name="Command+_executeDM"></a>

### command.\_executeDM(message) ⇒ <code>Promise</code>
Execute the command in DM - pass some checkers

**Kind**: instance method of [<code>Command</code>](#Command)  

| Param | Type |
| --- | --- |
| message | <code>Object.&lt;Message&gt;</code> | 

<a name="Command+sendHelp"></a>

### command.sendHelp({msg,) ⇒ <code>Promise.&lt;Message&gt;</code>
Send Help message in the current channel
Perm checks were done before
Call custom sendHelp (Client method if it exist instead of default one)

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| {msg, | <code>Object.&lt;Message&gt;</code> | guildconf} - The message object |

<a name="Command+_shouldCooldown"></a>

### command.\_shouldCooldown(msg) ⇒ <code>Boolean</code> \| <code>Number</code>
Check command cooldown for the user

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> \| <code>Number</code> - False if no cooldown / Cooldown time left if there is a cooldown  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The Message object |

<a name="Command+canExecute"></a>

### command.canExecute(msg, guildConf) ⇒ <code>Boolean</code>
Permission checker - Does the user has perm to exec command/not
Bypass - one of the perms (override) => doesn't go through others chercker
Needed - all perms => still go through other checkers
ServerMod

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> - True if the user can execute command / False if not  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The Message Object |
| guildConf | <code>Object</code> | GuildConfig |

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
| channel | <code>Object.&lt;Channel&gt;</code> | 

<a name="Command+_checkStaffBypass"></a>

### command.\_checkStaffBypass(member) ⇒ <code>Boolean</code>
Check if the user is Bot staff

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> - True if Staff / False if not  

| Param | Type | Description |
| --- | --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | The Member Object |

<a name="Command+_checkStaffNeeded"></a>

### command.\_checkStaffNeeded(member) ⇒ <code>Boolean</code>
Check if the user is Bot staff

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> - True if Staff / False if not  

| Param | Type | Description |
| --- | --- | --- |
| member | <code>Object.&lt;Member&gt;</code> | The Member Object |

<a name="Command+sendBotPerms"></a>

### command.sendBotPerms(channel, [permissions]) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message for invalid Bot permissions
timeout // delay and auto delete message

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> |  | The channel Object |
| [permissions] | <code>Array.&lt;String&gt;</code> | <code>[]</code> | Optional array of permissions string |

<a name="Command+sendUserPerms"></a>

### command.sendUserPerms(channel, member, [permission]) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message for Source user permissions
timeout // delay and auto delete message

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> |  | The channel Object |
| member | <code>Object.&lt;Member&gt;</code> |  | The member object |
| [permission] | <code>Array.&lt;String&gt;</code> | <code>[]</code> | Optional array of permissions string |

<a name="Command+sendDestPerms"></a>

### command.sendDestPerms(channel) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message for Destination user permissions
timeout // delay and auto delete message

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |

<a name="Command+sendCooldown"></a>

### command.sendCooldown(channel) ⇒ <code>Promise.&lt;?Message&gt;</code>
Send an error message for invalid cooldown
timeout // delay and auto delete message

**Kind**: instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |

<a name="Command.Command"></a>

### Command.Command
**Kind**: static class of [<code>Command</code>](#Command)  
**Properties**

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| axon | <code>Object.&lt;AxonClient&gt;</code> |  | Axon Client [GETTER: _axon] |
| bot | <code>Object.&lt;Eris.Client&gt;</code> |  | Eris bot Client [GETTER: _axon.client] |
| Logger | <code>Object</code> |  | Logger Object/Methods [GETTER: axon.Logger] |
| Resolver | <code>Object</code> |  | Resolver Object/Methods [GETTER: axon.Resolver] |
| AxonUtils | <code>Object</code> |  | AxonUtils Object/Methods [GETTER: axon.AxonUtils] |
| Utils | <code>Object</code> |  | Utils Object/Methods [GETTER: axon.Utils] |
| module | <code>Object.&lt;Module&gt;</code> |  | Module object [GETTER: _module] |
| _cooldown | <code>Object</code> |  | Map of current cooldown (global per user) [key: userID, value: Date.now()] |
| label | <code>String</code> |  | Command label (name/id) |
| aliases | <code>Array.&lt;String&gt;</code> |  | Array of commands aliases (including the command label) |
| [enabled] | <code>Boolean</code> | <code>true</code> | Command enabled |
| [isSubcmd] | <code>Boolean</code> | <code>false</code> | Command is a subcommand |
| [parentCommand] | [<code>Object.&lt;Command&gt;</code>](#Command) | <code>NULL</code> | References to the parent Command (if isSubcmd = true) |
| [hasSubcmd] | <code>Boolean</code> | <code>false</code> | Command has a subcommand |
| subcmds | <code>Array</code> |  | Array of subcommands Object (deleted after init) |
| [subCommands] | [<code>Collection.&lt;Command&gt;</code>](#Command) | <code>NULL</code> | Collection of subcommands |
| [subCommandsAliases] | <code>Object.&lt;Map&gt;</code> | <code>NULL</code> | Map of subcommands aliases |
| [serverBypass] | <code>Boolean</code> | <code>false</code> | Command can't be server disabled |
| infos | <code>Object</code> |  | Default infos about the command |
| infos.owner | <code>Owner</code> |  | Command owners/authors |
| infos.cmdName | <code>String</code> |  | Command name (full) |
| infos.description | <code>String</code> |  | Command description |
| infos.usage | <code>String</code> |  | Command usage |
| infos.example | <code>Array</code> |  | Array of command examples |
| options | <code>Object</code> |  | Default options for the command |
| [options.argsMin] | <code>Number</code> | <code>0</code> | Minimum args required |
| [options.invalidUsage] | <code>Boolean</code> | <code>true</code> | Whether to trigger help command on invalid usage (args required and no args given) |
| [options.invalidPermissionMessage] | <code>Boolean</code> | <code>false</code> | Whether to trigger error message on invalid permission |
| [options.deleteCommand] | <code>Boolean</code> | <code>false</code> | Whether to delete the command input |
| [options.guildOnly] | <code>Boolean</code> | <code>true</code> | Whether the command is usable only in guilds |
| [options.hidden] | <code>Boolean</code> | <code>false</code> | Whether the command is totally hidden from help commmand |
| [options.cooldown] | <code>Number</code> | <code>3000</code> | Cooldown for the command |
| permissions | <code>Object</code> |  | Default permissions for the bot/users |
| [permissions.bot] | <code>Array</code> | <code>[]</code> | Array or permissions needed by the bot to execute the command |
| [permissions.serverMod] | <code>Boolean</code> | <code>false</code> | Whether to limit the command to serverMod+ |
| [permissions.severAdmin] | <code>Boolean</code> | <code>false</code> | Whether to limit the command to serverAdmin+ |
| [permissions.user.needed] | <code>Array</code> | <code>[]</code> | All permissions needed by the user to execute |
| [permissions.user.bypass] | <code>Array</code> | <code>[]</code> | Having one of these perms allow the user to execute |
| [permissions.usersID.needed] | <code>Array</code> | <code>[]</code> | List of user ids that have permissions to execute |
| [permissions.usersID.bypass] | <code>Array</code> | <code>[]</code> | Having one of these id allow the user to execute |
| [permissions.rolesID.needed] | <code>Array</code> | <code>[]</code> | List of roles ids needed to execute |
| [permissions.rolesID.bypass] | <code>Array</code> | <code>[]</code> | Having one of these roles allow the user to execute |
| [permissions.ChannelsID.needed] | <code>Array</code> | <code>[]</code> | List of channels ids that allow to execute |
| [permissions.channelsID.bypass] | <code>Array</code> | <code>[]</code> | Being in one of these channels allow the user to execute |
| [permissions.staff.needed] | <code>Array</code> | <code>[]</code> | List of bot.staff permission needed to execute |
| [permissions.staff.bypass] | <code>Array</code> | <code>[]</code> | Having one of these bot.staff permission allow to execute |
| Template | <code>Object</code> |  | Template object shortcut [GETTER: axon.configs.template] |

<a name="new_Command.Command_new"></a>

#### new Command(module)
Creates an instance of Command.


| Param | Type |
| --- | --- |
| module | <code>Object.&lt;Module&gt;</code> | 

