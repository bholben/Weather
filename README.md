# Weather

In this app, I've explored 4 approaches to passing data between controllers in AngularJS.  I have set up a single page with 4 directives on the page.  Each directive has a controller and needs to be updated based on events that may take place somewhere else on the page.  I'm triggering these events with a couple selector boxes on the page.

The techniques explored are:

1. $rootScope.$broadcast / $on - passing data
1. $rootScope.$broadcast / $on - passing a notification
1. $scope.$watch - inside a directive's controller
1. $scope.$watch - from a parent page's controller

All of these techniques could be described as pub/sub (publish/subscribe) approaches since they all employ watchers.  But, they each have a slightly different twist.  As a general rule, it is important to keep the number of watchers in an app to a minimum as they can degrade performance.

Some observations:

- Attaching anything to $rootScope is not a good practice.  Alternate approaches should be used wherever possible.
- When creating $on handlers, it is important to destroy these event watchers as these will introduce memory leaks which will limit the user's ability to stay in the app for an extended period of time.
- $scope.$watch does not need a destroy routine.  Angular handles this automatically (per [this Stack Overflow post](http://stackoverflow.com/a/25114028/3465372)).

### Conclusion

In my opinon, the final approach is the better approach because:

1. It minimizes the number of watchers (performance).
1. It eliminates the need to add extra code to prevent memory leaks (performance).
1. It does not introduce the extra complexity of $broadcast/$emit/$on (unique syntax to learn, extra variables or strings to match, challenging to debug).
1. It requires the least number of lines of code.

### Reference

Here are some resources that recommend we shy away from the use of a pure broadcast/emit event system for communicating between controllers:

  - **Misko Hevery** (the 'father' of Angular) describes how events can make an app more fragile. "Most of the time injecting services and doing direct communication is preferred and more robust".  In [this video](http://www.youtube.com/watch?v=ZhfUv0spHCY&list=TLJGdxZrHg3GcIgr_4ZzOcVQuXUhNWOOgt), he responds to a user question about extensive use of $broadcast and $emit starting at 53:37.

  - "I would evaluate if you do need an event based setup, where you are firing tons of events, just to communicate in your application. That is generally not needed... An event based approach can get really messy to track, maintain and debug. It makes it very asynchronous, with no real easy way to track the flow of an application.  It is quite easy to create bugs (We had a situation where an event listener was added on the rootScope, and still responded to events after the page no longer existed." - [Quora post](http://www.quora.com/Is-it-a-bad-practice-to-always-use-broadcast-on-on-the-rootScope-in-AngularJS) - **Shyam Seshadri** Angular core developer and author of AngularJS (O'Reilly) with Brad Green

  - "For intercomunnication always use Services injected to Controllers/Directives. Your state of webapp should be on one (single) place - Model. And that's Services in AngularJS app. Overusing events leads to application that is very hard to debug." - [Quora post](http://www.quora.com/Is-it-a-bad-practice-to-always-use-broadcast-on-on-the-rootScope-in-AngularJS) - **Igor Hina**

  - "I find events problematic, certainly as an application grows and more developers join the project. It becomes very easy to fire, bind, unbind events all over the place and it's not easy to figure out where, for example, the event is being fired." - [Quora post](http://www.quora.com/How-should-I-communicate-between-controllers-while-not-using-a-shared-service-between-them) **Johan Steenkamp**

  - **Jonathan Creamer** wrote an article titled ["An angular.js event bus with postal.js"](http://jonathancreamer.com/an-angular-event-bus-with-postal-js/).  In the comments, a reader questioned the use of Postal for communicating between controllers...

    "Since all services (factory, service, factory, provider, constant and value) are singletons you can share data between components using services. Once you start circumventing AngularJS's way, I believe you should take a step back and see if there is a way to use Angular to solve the issue at hand. I do understand that workarounds are sometime needed, but the rule should be to use AngularJS the way its intended to be used and only use a workaround when AngularJS cannot provide an appropriate solution."

    Jonathan responded with this...

    "After thinking through your thoughts, you may be right that this is just a poor example of the need for communication... Great point on architecture. I too am new to Angular so I'll definitely have to think through that point!"

  - "The Top 5 Mistakes AngularJS Developers" - One of them is ["Overusing $broadcast and $emit"](http://csharperimage.jeremylikness.com/2014/12/the-top-5-mistakes-angularjs-developers.html) - **Jeremy Likness**

  - "$broadcast is evil", per [this blog post](http://crudbetter.com/angular-share-data-between-controllers/) - **Mike Godfrey**

---

*This app was generated with [ng-poly](https://github.com/dustinspecker/generator-ng-poly/tree/v0.8.5) version 0.8.5*

## Setup
1. Install [Node.js](http://nodejs.org/)
 - This will also install npm.
1. Run `npm install -g bower gulp yo generator-ng-poly@0.8.5`
 - This enables Bower, Gulp, and Yeoman generators to be used from command line.
1. Run `npm install` to install this project's dependencies
1. Run `bower install` to install client-side dependencies
1. Use [generator-ng-poly](https://github.com/dustinspecker/generator-ng-poly) to create additional components

## Gulp tasks
- Run `gulp build` to compile assets
- Run `gulp dev` to run the build task and setup the development environment
- Run `gulp unitTest` to run unit tests via Karma and to create code coverage reports
- Run `gulp webdriverUpdate` to download Selenium server standalone and Chrome driver for e2e testing
- Run `gulp e2eTest` to run e2e tests via Protractor
 - **A localhost must be running** - `gulp dev`
