// DOM Manipulation Challenge


// I worked on this challenge Jacob Crofts.


// Add your JavaScript calls to this page:

// Release 1:

document.getElementById('release-0').className = 'done';

// Release 2:

document.getElementById('release-1').style.display = 'none';

// Release 3:

document.getElementsByTagName("H1")[0].innerHTML = "I completed release 2."

// Release 4:

document.getElementById('release-3').style.backgroundColor = '#955251';

// Release 5:

var release4Array = document.getElementsByClassName('release-4')
for(var index = 0; index < release4Array.length; index ++) {
  release4Array[index].style.fontSize = '2em';
}

// Release 6:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

/*
What did you learn about the DOM?

The Document Object Model allows for a fully object-oriented representation of a
web page. From my understanding, the DOM serves as the API through which JS
interacts with content on the page. Similarly to CSS, using JS in the DOM allows
you to change formatting by accessing elements through nodes, classes and IDs.

What are some useful methods to use to manipulate the DOM?

I found the "getElement(s)" methods to be especially helpful, as they provided a
logical means for accessing HTML elements. To be honest though, it seems much
more logical to me to change basic stylistic elements through CSS. Changing
things like background-color or font-family through JS is a bit clunky. Having
a basic understanding of the methods will be helpful once the changes become
more complex and dynamic.

*/