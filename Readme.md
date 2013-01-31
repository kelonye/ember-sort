
Sort ember data `recordArrays` as shown [here](http://stackoverflow.com/questions/12548092/sorting-an-arraycontroller-backed-by-ember-data-via-sortproperty-mixin)

Install
---

```
component install kelonye/ember-sort
```

Usage
---

```
Em.ArrayController.extend require('ember-sort'),
  sortProperties: ['score']
  sortAscending: true
```

License
---

MIT