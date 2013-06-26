# Torchlight Front-End Job Application

A test for front end developers applying at Torchlight Software.  This test is required for all applicants.  If we have a good fit for you we will contact you for an interview!

### Installation

Do the following to get this running on your local machine:

1. fork the repo
2. git clone your fork
3. install node
4. run `npm install`
5. cd to the project and run `./scripts/build`
6. run `./scripts/run server`
7. open `http://localhost:4000` in your browser
8. You should see 'Hello World!' along with some other text.

You should be ready now to create your own components and templates and test them out!

**As you modify files in the app/client directory, run `./scripts/build` and refresh your browser in order to see the changes.**

### Job application instructions

Each successive part will require more knowledge and skill.  It starts with general CSS layout, and gets more javascript intensive.

There is no one "right answer" that we are looking for.  We are interested in your solution and approach.  Be ready to talk about why you made certain choices, as this will likely come up in the interview.

Part 1 - CSS Layout:

1. Modify styles.css to create the layout shown in this screenshot.  index.html should already have the appropriate divs.
2. The header should have a height of 40px, the left panel should have a width of 200px.  All the visible margins you see are 10px.  The design should resize to fit the full browser window.
3. Render the helloWorld component in the #right div.

![layout](https://torchlight-files.s3.amazonaws.com/layout.png)

Part 2 - Working with Components:

1. Modify the template to say 'Hello [your name]!' where your name is a variable supplied to the jade template.
2. Create a new template with an input box for 'your name' and a submit button.
3. Modify the component so it first renders the input form, then on submit it renders the original template with the name that was supplied.

Part 3 - Creative:

If you are comfortable with the previous two steps and really want to show off your skills, read on!

This is more open ended.  We'd like you to do something creative that demonstrates your unique background.  Utilization and understanding of Flight's component lifecycle is encouraged.  Feel free to play around in the #left div, leaving the overall layout and the right div intact from the first two parts.

Some ideas:

* data visualization
* UI / Styling
* events (feel free to use the EventEmitter2 included in js/vendor)

### Completing the Test

If you've given it your best and want to get our feedback go ahead and:

1. commit your changes
2. create a folder called 'resume' in the root
3. add your resume as a pdf
4. push and submit a pull request

We look forward to reviewing your application!

### Technology Reference

* [git](http://git-scm.com/)
* [node.js](http://nodejs.org/)
* [Twitter Flight](https://github.com/twitter/flight)
* [jade](http://jade-lang.com/)
* [AMD/requireJS](http://requirejs.org/)
* [EventEmitter2](https://github.com/hij1nx/EventEmitter2)
