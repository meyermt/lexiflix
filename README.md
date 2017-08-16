# lexiflix
Application for watching videos and learning along the way. If you are giving the app a test spin, here are some quick tips to make your experience better:

* In general, you should review the enhancements and known issues to understand what the app is and is not capable of right now.
* To login as a site owner, someone who has full access across the site, please use the user called `admin`
* To go through the site as a user who has students under them, login as the user called `someone`
* To see canned results, go to `someone` user's student's progress for the user called `Grace Hopper`
* The best subtitle experience will be with `cookiedude`, viewing Pokemon ep 25. Here there are some actual timed cuts in subtitles, giving you a better idea of how a finished product might look.
* To test a student experience in the site, you should sign up a new user with students, and then view the Rails log to see the one time password generated for the student

## Overview

The goal of this application is to provide video content with subtitles where subtitles are written at the Lexical reading level of the viewer. In test phase.

## General Use Case

A typical use case would go as follows: a parent or teacher signs up for an account and adds one to many student user accounts that they are "administrators" for. They set an initial lexical reading level for each student. After completion of sign up, students can then login and view subtitled content at their reading level (the ideal content is stuff like anime, cartoons, and anything else that would/could be viewed as close-captioned/subtitled). Parents/teachers have the ability to toggle a quiz element that will be displayed after students watch videos, in order to gauge if the reading level is appropriate (i.e., did they understand the content and can they be moved up a level). Parents/teachers can then view data for each student on an administrative dashboard.

## Upcoming Enhancements

* Session timeout
* Welcome mail functionality
* Popover view for definitions, rather than alert below video
* Responsive video view (right now does not respond to smallest setting)
* Correctly positioned subtitles in full screen mode
* Move to lexiflix.com
* Ability for site owners to be able to add questions and answers for videos throught the UI (currently only available through seeding)
* Ability to upload JSON scripts
* Content, subtitles, and quizzes in all lexical range (currently only test data for 300 and 800)
* Payment options
* Ability to search and filter video content
* Add actual scripts in place of placeholder test scripts

## Current Known Issues

Some issues are already listed as enhancements, so please view that for full list.

* Last subtitle in a video will play into perpetuity. Should go away after a few seconds
* Partial fails, where one or more students can be added and one or more cannot, does not notify user (should be added to mailer).
* In general, for users that are not at 300 or 800 in the test system, there will potentially be issues with viewing content or quizzes or both.

## User Stories

As a note, "admins" are considered parents or teachers. Owners are more like system administrators. And then users are really anyone who is watching the content.

**Checked box denotes completed story**

- [x] As an admin*, I want to sign up for service
- [x] As an admin, I would like to add student users to my account at sign up time.
- [] As an admin, I would like to add student users to my account after sign up time.
- [x] As an admin, I would like to edit certain student account information.
- [x] As an admin, I would like to delete my account.
- [x] As an admin, I would like to delete student accounts.
- [x] As an owner, I would like to add new videos.
- [x] As an owner, I would like to edit video information.
- [x] As an owner, I would like to delete videos.
- [] As an admin, I would like to purchase the service with a credit card
- [x] As an admin or a user, I would like to view content at my reading level.
- [x] As an admin, I would like to know if my student(s) are understanding the content provided.
- [x] As an admin, I would like to view information about the content my students are watching that will inform my decision on their reading level.
- [x] As any user, I would like to view videos.
- [x] As a user, I would like to get to choose my password after an admin signs me up
- [] As a user, I would like to rate the content I watch

** Nice to haves
- [x] As a user, I would like to click on a subtitled word to see its definition
- [] As a user, I would like to first be presented content that aligns to the genre of content I have chosen before.
