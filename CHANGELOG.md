# Change Log

## [0.4.0] - 2026-03-10

### Added
- Added multiline task support, category colors and task highlighting.
- Added sub categories and time stamps.
- Enhanced task board with priorities, bug flags, nesting, and multi-select.
- Added build support and automated VS Code extension packaging.
- Added collapsible subcolumns, sub categories and improved styling to TaskBoard and TaskColumn.
- Enhanced keyboard navigation with input focus checks and conditional task actions.
- Added persistence to collapsed state for tasks, sub categories and task columns.
- Ensure only a single instance of the Task Board is open.

### Changed
- Open Task Board in to the selected window and open with Archived section collapsed by default.
- Enhanced task metadata handling.

### Fixed
- Fixed Task Board rendering crash due to undefined state.
- Fixed data corruption in Task Board due to double-escaping of markdown content.
- Fixed bugs preventing loading of the Task Board.

## [0.3.0] - 2021-05-24

- Task title supports markdown now for styling, hyperlinks, simple html or even img tags.
- New Task Action: move a task to the column on the right.

## [0.2.27] - 2020-03-28

- Task Board - support multiple task lists defined in user's settings.json.
- Task Board - refresh button to reload file content.
- Task Board - checkbox is now optional (if task title doesn't have it).
- Task Board - support sub-task (task title starts with 2-space indentation).
- Task Board - task menu for: toggling sub-task; inserting emojis;
- Task Board - respect theme colors.

## [0.2.12] - 2020-03-21

- Task Board - search box
- Task Board - autofocus when creating a new task.
- Task Board - checkmark to mark a task as complete.
- Task Board Doc

## [0.2.3] - 2020-03-15

- Task Board - manage tasks and save them as TODO.md - a simple plain text file. The syntax is compatible with [Github Markdown](https://bit.ly/2wBp1Mk)

## [0.1.4] - 2020-03-10

- Output can be edited before generating files.

## [0.1.3]

- Initial release
- Follow this format - Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.
