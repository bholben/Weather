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
- $scope.$watch does not need a destroy routine.  Angular handles this automatically.

**Conclusion**

In my opinon, the final approach is the better approach because:

1. It minimizes the number of watchers.
1. It eliminates the need to add extra code to prevent memory leaks.
1. It does not introduce the extra complexity of excessive $broadcast/$emit/$on (challenging to debug).
1. It requires the least number of lines of code.


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
