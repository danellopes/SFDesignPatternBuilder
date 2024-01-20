HTMLBuilder builder = new HTMLBuilder('ul');
builder.addChild('li', 'Hello').addChild('li', 'World');
System.debug('\n' + builder);