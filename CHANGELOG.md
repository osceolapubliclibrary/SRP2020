# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/).

## [Unreleased]
### Fixed
- Fix 'assets' directory to deploy properly with default avatars
- Fix MaxLength errors on user join and registration

## [4.0.0-alpha3] 2017-04-04
### Added
- Slack logging capability (see appsettings.json for configuration)
- Add adding participants from Mission Control
- Add filtering to MC participants list
- Add search and filtering to triggers and events lists
- Mission Control interface for managing dynamic avatars
- Add Mission Control questionnaire entry
- Add participant required questionnaire entry
- Add adding secret code when adding an events
- Add related events to trigger detail page
- Add system selection for event branch

### Changed
- Override Microsoft logging to limit severity to Error and higher
- Configure dynamic avatar parts in groups to make management easier
- Change Challenge Task Type selection to be panel-based

### Fixed
- Fix pagination for MC household add existing participant list
- Fix infinite recursion loop in triggers
- Fix displaying error for trying to delete a head of household

## [4.0.0-alpha2] - 2017-03-08
### Added
- Add database fields and front-end display for social.
- Ability to add an existing member to a household in Mission Control.
- System Information screen showing version numbers

### Changed
- Reformat trigger creation page in Mission Control.
- Upgraded to .NET Core Tools 1.0 and VS2017 project format.

### Fixed
- Fix household minute logging error when signed in as another user.
- Fix permission with sending mail for triggers.
- Fix issue with drop-down auto-selection in IE.
- Fix showing a response to a pre-open mail sign-up if no address is provided.
- Fix triggers so they can fire on less than all items

## [4.0.0-alpha1] - 2017-02-28