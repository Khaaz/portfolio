<a name="Collection"></a>

## Collection ⇐ <code>Map</code>
Holds a bunch of something
Based on Eris Collection

**Kind**: global class  
**Extends**: <code>Map</code>  
**Author**: KhaaZ  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| baseObject | <code>Class</code> | The base class for all items |


* [Collection](#Collection) ⇐ <code>Map</code>
    * [new Collection([baseObject], iterable)](#new_Collection_new)
    * [toArray()](#Collection+toArray) ⇒ <code>Array.&lt;Class&gt;</code>
    * [toObject()](#Collection+toObject) ⇒ <code>Object.&lt;key:value&gt;</code>
    * [add(value, key, replace)](#Collection+add) ⇒ <code>Class</code>
    * [find(func)](#Collection+find) ⇒ <code>Class</code>
    * [map(func)](#Collection+map) ⇒ <code>Array</code>
    * [filter(func)](#Collection+filter) ⇒ <code>Array.&lt;Class&gt;</code>
    * [reduce(callbackFn, [currentIndex])](#Collection+reduce)
    * [some(func)](#Collection+some) ⇒ <code>Boolean</code>
    * [every(func)](#Collection+every) ⇒ <code>Boolean</code>
    * [update(key, value, replace)](#Collection+update) ⇒ <code>Class</code>
    * [remove(key)](#Collection+remove) ⇒ <code>Class</code>
    * [random()](#Collection+random) ⇒ <code>Class</code>

<a name="new_Collection_new"></a>

### new Collection([baseObject], iterable)
Construct a Collection


| Param | Type | Default | Description |
| --- | --- | --- | --- |
| [baseObject] | <code>Class</code> | <code></code> | The base class for all items |
| iterable | <code>Object</code> |  | Iterable to construct the Map from |

<a name="Collection+toArray"></a>

### collection.toArray() ⇒ <code>Array.&lt;Class&gt;</code>
Converts a Map to an array with the values of the map, ignoring its keys
[ value, value, value ]

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
<a name="Collection+toObject"></a>

### collection.toObject() ⇒ <code>Object.&lt;key:value&gt;</code>
Converts a Map to a javascript object
{ key: value, key: value }

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
<a name="Collection+add"></a>

### collection.add(value, key, replace) ⇒ <code>Class</code>
Adds an object
The object (value) is added only if the key isn't existing already and / or the replace param is set to true. It is also added only when the baseObject exists

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Class</code> - The existing or newly created object  

| Param | Type | Description |
| --- | --- | --- |
| value | <code>String</code> | The ID of the object |
| key | <code>Object</code> | The object data |
| replace | <code>Boolean</code> | Whether to replace an existing object with the same ID |

<a name="Collection+find"></a>

### collection.find(func) ⇒ <code>Class</code>
Returns the first object to make the function evaluate true

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Class</code> - The first matching object, or undefined if no match  

| Param | Type | Description |
| --- | --- | --- |
| func | <code>function</code> | A function that takes an object and returns true if it matches |

<a name="Collection+map"></a>

### collection.map(func) ⇒ <code>Array</code>
Returns an array with the results of applying the given function to each element

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Array</code> - An array containing the results  

| Param | Type | Description |
| --- | --- | --- |
| func | <code>function</code> | A function that takes an object and returns something |

<a name="Collection+filter"></a>

### collection.filter(func) ⇒ <code>Array.&lt;Class&gt;</code>
Returns all the objects that make the function evaluate true

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Array.&lt;Class&gt;</code> - An array containing all the objects that matched  

| Param | Type | Description |
| --- | --- | --- |
| func | <code>function</code> | A function that takes an object and returns true if it matches |

<a name="Collection+reduce"></a>

### collection.reduce(callbackFn, [currentIndex])
Reduces values by  the given function

**Kind**: Instance method of [<code>Collection</code>](#Collection)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| callbackFn | <code>function</code> |  | Function to execute on each element in the array |
| [currentIndex] | <code>Number</code> | <code>0</code> | Value to use as the first argument to the first call of the callback |

<a name="Collection+some"></a>

### collection.some(func) ⇒ <code>Boolean</code>
Tests if at least one element passes the test implemented by the provided function. Returns true if yes, or false if not.

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Boolean</code> - An array containing all the objects that matched  

| Param | Type | Description |
| --- | --- | --- |
| func | <code>function</code> | A function that takes an object and returns true if it matches |

<a name="Collection+every"></a>

### collection.every(func) ⇒ <code>Boolean</code>
Tests if all elements pass the test implemented by the provided function. Returns true if yes, or false if not.

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Boolean</code> - An array containing all the objects that matched  

| Param | Type | Description |
| --- | --- | --- |
| func | <code>function</code> | A function that takes an object and returns true if it matches |

<a name="Collection+update"></a>

### collection.update(key, value, replace) ⇒ <code>Class</code>
Updates an object

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Class</code> - The updated object  

| Param | Type | Description |
| --- | --- | --- |
| key | <code>String</code> | The ID of the object |
| value | <code>Object</code> | The updated object data |
| replace | <code>Boolean</code> | Whether to replace an existing object with the same ID |

<a name="Collection+remove"></a>

### collection.remove(key) ⇒ <code>Class</code>
Removes an object

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Class</code> - The removed object, or null if nothing was removed  

| Param | Type | Description |
| --- | --- | --- |
| key | <code>String</code> | The ID of the object |

<a name="Collection+random"></a>

### collection.random() ⇒ <code>Class</code>
Gets a random object from the Collection

**Kind**: Instance method of [<code>Collection</code>](#Collection)  
**Returns**: <code>Class</code> - The random object, or undefined if there is no match  
