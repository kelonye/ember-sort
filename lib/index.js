require('ember');
module.exports = Em.Mixin.create({
  sortedContent: (function() {
    var content = this.get('content') || [];
    return Em.ArrayController.createWithMixins(Em.SortableMixin, {
      content: content.toArray(),
      sortProperties: this.get('sortProperties'),
      sortAscending: this.get('sortAscending')
    });
  }).property('content.isLoaded', 'content.@each', 'sortProperties', 'sortAscending')
});
