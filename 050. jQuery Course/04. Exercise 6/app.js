/*
For this quiz, remove the <ul> from the first article item!

You must use jQuery's remove() method.
*/

// Start with this variable!
var articleItems,first;

articleItems = $('.article-item');
first = articleItems.first();
first.children("ul").remove();
