# GM Core Code Standards

## Whitespace

### Newlines

No more than one blank line between SLOCs.

**Good**

```gml
// Good
var hello = "world";

_log(hello);

// Bad
var hello = "world";



_log(hello);
```

### Brackets

No newlines between brackets and their associated conditional

```gml
// Good
if (condition) {
  // ...
}

// Bad
if (condition)
{
  // ...
}
```

## Naming

### Variables

Variables should be `camelCased`

```gml
// Good
var myVariable = 1;
var myOtherVariable = 2;

// Bad
var MyVariable = 1;
var my_other_variable = 2;
```

### Scripts

Scripts should not be prefixed as with other resources

> **Why?** Scripts should be treated as an extension of the base GML API. Craft the scripts to mesh intuitively with the rest of the code. Namespacing everything with `scr_` makes this difficult.

```gml
// Good
do_the_thing()
player_death()

// Bad
scr_do_the_thing()
scr_player_death()
```

Scripts should be `lower_snake_cased`

```gml
// Good
player_health_add()
player_health_max()

// Bad
playerHealthAdd()
Player_Health_Max()
```

Scripts should be named using a `system -> topic -> action` methodology. When appropriate, name scripts with the system first, then the topic within the system, then the action the script takes.

> **Why?** This system more closely replicates how the core GML API functions are named. Additionally, this helps to organize scripts by the scope of their effects.

```gml
// Good
player_health_add()
world_light_initialize()
enemy_defeat()

// Bad
add_player_health()
initialize_light_world()
defeat_enemy()
```

### Resources

Prefix resources (except scripts) with an identifier of the type.

|Resource Type|Prefix|Example|
|-|-|-|
|Sprite|`spr`|`spr_player`|
|Tile Set|`tle`|`tle_world`|
|Sound (SFX)|`snd`|`snd_bullet`|
|Sound (Music)|`mus`|`mus_town`|
|Path|`pth`|`pth_enemy`|
|Shader|`shd`|`shd_heat`|
|Font|`fnt`|`fnt_title`|
|Timeline|`tml`|`tml_cutscene`|
|Object|`obj`|`obj_player`|
|Room|`rm`|`rm_world`|

## Script Practices

### Naming Arguments

Name all arguments unless the script is a one-liner.

```gml
// Good
var enemy = argument0;
var damage = argument1;

if (damage - enemy.resist > 0) {
  enemy.hp -= damage;
} else {
  instance_create_depth(enemy.x, enemy.y, 0, obj_resit_message);
}

// Bad
if (argument1 - argument0.resist > 0) {
  enemy.hp -= argument1;
} else {
  instance_create_depth(argument0.x, argument0.y, 0, obj_resit_message);
}
```

### Defaulting Arguments

Default arguments whenever it makes sense using ternaries.

```gml
// Good
var enemy = argument[0];
var damage = argument[1];
var resist = argument_count > 2 ? argument[2] : 0;

enemy.hp -= (damage - resist);

// Bad
var enemy = argument[0];
var damage = argument[1];

if (argument_count > 2) {
  enemy.hp -= damage - argument[2];
} else {
  enemy.hp -= damage;
}
```

### Script JSDoc Annotations

Define `@func`, `@desc`, `@param` and `@returns` annotations on scripts

```gml
// Good
@func enemy_damage(enemy, amount, resistance)
@desc Damages an enemey, minus the given resistence
@param {Instance} enemy The enemy to target
@param {Real} amount The amount to deal
@param {Real} resitance [Optional] How much damage to resist
@returns {Real} the enemy's new health
```

## Performance Tuning

### Force Inline

Use `gml_pragma("forceinline")` for one-liners

```gml
// Good
gml_pragma("forceinline");
return argument0 * 2;
```

### Array Looping

When creating an array in a loop, start at the end.

> **Why?** This prevents memory from having to be re-allocated as the array expands

```gml
// Good
var arr = [];
for (var i = 99; i >= 0; i--) {
  arr[i] = i;
}

// Bad
for (var i = 0; i < 100; i++) {
  arr[i] = i;
}
```
