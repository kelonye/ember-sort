get = Em.get
set = Em.set

module.exports = Em.Mixin.create
  
  sortedContent: (->
    content = @get('content') or []
    Em.ArrayController.create Em.SortableMixin,
      content: content.toArray()
      sortProperties: @get('sortProperties')
      sortAscending: @get('sortAscending')
  ).property 'content.isLoaded','content.@each', 'sortProperties', 'sortAscending'
