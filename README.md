# component-sandbox

A sandbox for building Twitter Flight components.

### Installation

Do the following to get this running on your local machine:

1. fork the repo (if you are going to be submitting an application)
2. git clone the repository
3. install node
4. run `npm install`
5. cd to the project and run `./scripts/build`
6. run `./scripts/run server`
7. open `http://localhost:4000` in your browser
8. You should see 'Hello World!' along with some other text.

You should be ready now to create your own components and templates and test them out!

**As you modify files in the app/client directory, run `./scripts/build` and refresh your browser in order to see the changes.**

### Job application instructions

For those interested in doing front end design for Torchlight.

Each successive part will require more knowledge and skill.  You should be able to complete the first part from what you already know.  The second two will require you to familiarize yourself with new technologies and use them to solve problems.

There is no one "right answer" that we are looking for.  We are interested in your solution and approach.  Be ready to talk about why you made certain choices, as this will likely come up in the interview.

Part 1 - CSS Layout:

1. Modify styles.css to create the layout shown in this screenshot.  index.html should already have the appropriate divs.
2. Render the helloWorld component in the #right div.

![layout](https://torchlight-files.s3.amazonaws.com/layout.png)

Part 2 - Working with Components:

1. Modify the template to say 'Hello [your name]!' where your name is a variable supplied to the jade template.
2. Create a new template with an input box for 'your name' and a submit button.
3. Modify the component so it first renders the input form, then on submit it renders the original template with the name that was supplied.

Part 3 - Working with Events:

If you are comfortable with the previous two steps and really want to show off your skills, read on!

We will be using the EventEmitter2 class included in js/vendor to create a simple notification system.

1. Create a new component and include EventEmitter2 and a new template file as dependencies.
2. Render the component onto the #left div.
3. Create a new instance of an EventEmitter2 inside the component, and create a button that emits a 'message' event to it.
4. Create a listener that appends a 'p' tag with the text 'Message received!' whenever the 'message' event is fired.

### Technology Reference

* [git](http://git-scm.com/)
* [node.js](http://nodejs.org/)
* [Twitter Flight](https://github.com/twitter/flight)
* [jade](http://jade-lang.com/)
* [AMD/requireJS](http://requirejs.org/)
* [EventEmitter2](https://github.com/hij1nx/EventEmitter2)


