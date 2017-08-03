# Lexeo
Application for watching videos and learning along the way.

## Overview

The goal of this application is to provide video content with subtitles (subtitles still on their way) where subtitles are written at the Lexical reading level of the viewer.

**Note** Right now, as far as video content, this app only displays the finest/dumbest short pet videos from my YouTube account.

## General Use Case

A typical use case would go as follows: a parent or teacher signs up for an account and adds one to many student user accounts that they are "administrators" for. They set an initial lexical reading level for each student. After completion of sign up, students can then login and view subtitled content at their reading level (the ideal content is stuff like anime, cartoons, and anything else that would/could be viewed as close-captioned/subtitled). Parents/teachers have the ability to toggle a quiz element that will be displayed after students watch videos, in order to gauge if the reading level is appropriate (i.e., did they understand the content and can they be moved up a level). Parents/teachers can then view data for each student on an administrative dashboard.

## Current Known Issues

* Main issues right now is just that student users are sort of stuck at login. The intent is that they are given a one time password that they then need to change on first login. The only part of this functionality present at the moment is the redirect to have them edit their information. The actual update is not working. Thus, they can't really browse, only admins and owners can.

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
- [] As an admin or a user, I would like to view content at my reading level.
- [] As an admin, I would like to know if my student(s) are understanding the content provided.
- [] As an admin, I would like to view information about the content my students are watching that will inform my decision on their reading level.
- [x] As any user, I would like to view videos.
- [] As a user, I would like to get to choose my password after an admin signs me up
- [] As a user, I would like to rate the content I watch

** Nice to haves
- [] As a user, I would like to click on a subtitled word to see its definition
- [] As a user, I would like to first be presented content that aligns to the genre of content I have chosen before.
