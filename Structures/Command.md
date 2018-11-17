<a name="Command"></a>

## Command ⇐ <code>Base</code>
**Kind**: global class  
**Extends**: <code>Base</code>  
**Author**: KhaaZ  

* [Command](#Command) ⇐ <code>Base</code>
    * _instance_
        * [options](#Command+options)
        * [permissions](#Command+permissions)
        * [sendHelp({msg,)](#Command+sendHelp) ⇒ <code>Promise.&lt;Message&gt;</code>
        * [canExecute(msg, guildConf)](#Command+canExecute) ⇒ <code>Boolean</code>
        * [sendBotPerms(channel, [permissions])](#Command+sendBotPerms) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [sendUserPerms(channel, member, [permission])](#Command+sendUserPerms) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [sendDestPerms(channel)](#Command+sendDestPerms) ⇒ <code>Promise.&lt;?Message&gt;</code>
        * [sendCooldown(channel)](#Command+sendCooldown) ⇒ <code>Promise.&lt;?Message&gt;</code>
    * _static_
        * [Command](#Command.Command)
            * [new Command(module)](#new_Command.Command_new)

<a name="Command+options"></a>

### command.options
Command options has default values

**Kind**: Instance property of [<code>Command</code>](#Command)  
<a name="Command+permissions"></a>

### command.permissions
Handles permissions of both the bot and the user

Optional posible override for:
 - Users ID
 - Roles ID
 - Channels ID

Bot Staff override

Custom function for special permission case

Needed => Need to have all <NEEDED> permissions to execute the command
Bypass => Need to have one <BYPASS> permissions to execute the command (override needed as well)

**Kind**: Instance property of [<code>Command</code>](#Command)  

<a name="Command+sendHelp"></a>

### command.sendHelp({msg,) ⇒ <code>Promise.&lt;Message&gt;</code>
Send Help message in the current channel
Perm checks were done before
Call custom sendHelp (Client method if it exist instead of default one)

**Kind**: Instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| {msg, | <code>Object.&lt;Message&gt;</code> | guildconf} - The message object |

<a name="Command+canExecute"></a>

### command.canExecute(msg, guildConf) ⇒ <code>Boolean</code>
Permission verifier - Checks whether the user has perms to execute the command or not
Bypass - One of the perms (override) => doesn't go through other verifiers
Needed - All perms => still go through other checkers

**Kind**: Instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Boolean</code> - True if the user can execute command / False if not  

| Param | Type | Description |
| --- | --- | --- |
| msg | <code>Object.&lt;Message&gt;</code> | The Message Object |
| guildConf | <code>Object</code> | GuildConfig |

<a name="Command+sendBotPerms"></a>

### command.sendBotPerms(channel, [permissions]) ⇒ <code>Promise.&lt;?Message&gt;</code>
Sends an error message for invalid Bot permissions
Timeouts / delays and auto delete message

**Kind**: Instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> |  | The channel Object |
| [permissions] | <code>Array.&lt;String&gt;</code> | <code>[]</code> | Optional array of permissions string |

<a name="Command+sendUserPerms"></a>

### command.sendUserPerms(channel, member, [permission]) ⇒ <code>Promise.&lt;?Message&gt;</code>
Sends an error message for Source user permissions
Timeouts / delays and auto delete message

**Kind**: Instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> |  | The channel Object |
| member | <code>Object.&lt;Member&gt;</code> |  | The member object |
| [permission] | <code>Array.&lt;String&gt;</code> | <code>[]</code> | Optional array of permissions string |

<a name="Command+sendDestPerms"></a>

### command.sendDestPerms(channel) ⇒ <code>Promise.&lt;?Message&gt;</code>
Sends an error message for Destination user permissions
Timeouts / delays and auto delete message

**Kind**: Instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |

<a name="Command+sendCooldown"></a>

### command.sendCooldown(channel) ⇒ <code>Promise.&lt;?Message&gt;</code>
Sends an error message for invalid cooldown
Timeout / delays and auto delete message

**Kind**: Instance method of [<code>Command</code>](#Command)  
**Returns**: <code>Promise.&lt;?Message&gt;</code> - Message Object  

| Param | Type | Description |
| --- | --- | --- |
| channel | <code>Object.&lt;Channel&gt;</code> | The channel Object |

<a name="Command.Command"></a>

### Command.Command
**Kind**: Static class of [<code>Command</code>](#Command)  
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
| [enabled] | <code>Boolean</code> | <code>module.enabled</code> | Command enabled |
| [isSubcmd] | <code>Boolean</code> | <code>false</code> | Command is a subcommand |
| [parentCommand] | [<code>Object.&lt;Command&gt;</code>](#Command) | <code>NULL</code> | References to the parent Command (if isSubcmd = true) |
| [hasSubcmd] | <code>Boolean</code> | <code>false</code> | Command has a subcommand |
| [serverBypass] | <code>Boolean</code> | <code>module.serverBypass</code> | Command can't be server disabled |
| subcmds | <code>Array</code> |  | Array of subcommands Object (deleted after init) |
| [subCommands] | [<code>Collection.&lt;Command&gt;</code>](#Command) | <code>NULL</code> | Collection of subcommands |
| [subCommandsAliases] | <code>Object.&lt;Map&gt;</code> | <code>NULL</code> | Map of subcommands aliases |
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
| [options.hidden] | <code>Boolean</code> | <code>false</code> | Whether the command is hidden from help commmand () |
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
Creates an Instance of Command.


| Param | Type |
| --- | --- |
| module | <code>Object.&lt;Module&gt;</code> | 

