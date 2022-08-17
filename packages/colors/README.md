Colors package
==============

Expose `palette.json` as a package, contains all the color information we need
in the desktop and down the line the mobile app.

***IMPORTANT***: Please don't edit `package/lib/palette.json`, this is just a
copied duplicate of `../palette.json`, and gets copied over on `make package`
```js
<template>
  <div>{{ colors.blue.hex }}</div>
</template>

<script>
import colors from '@quadimai/quadim-colors';
export default {
  name: 'FooBar',
  data() {
    return {
      colors: colors
    }
  }
}
</script>

```
