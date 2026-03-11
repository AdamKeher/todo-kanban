# Change Log

## [0.4.2] - 2026-03-11

### Added
- **Create default TODO.md** — New command to quickly generate a `TODO.md` file from a template if one doesn't exist in the workspace.
- **Improved task movement persistence** — The task board now tracks and restores the specific index and sub-category of a task when moving it between the board and the `TODO.md` file, ensuring tasks return to their exact previous position.

## [0.4.1] - 2026-03-10

### Added
- **Magic Button (✨)** — AI-powered inline task refinement using VS Code's built-in language model API (`vscode.lm`). Works automatically with any active AI extension (GitHub Copilot, Gemini for VS Code, etc.) — no API key required. Click ✨ on any task to get a professional rewrite suggestion with Accept/Reject controls and a loading indicator.
- **Activity Bar icon and sidebar** — Task Board now has a dedicated Activity Bar entry showing a live summary of all tasks by column (Todo, In Progress, Done, etc.) with real-time stats that update as tasks change.
- **Nested checkboxes and rich text in task descriptions** — Task descriptions now render nested checklist items, bulleted lists (`- item`), and tab-indented content correctly.
- **Column status icons in task headers** — Each task card displays a contextual icon (☐ Todo, ○ In Progress, ☑ Done, 🗄 Archived) matching its column.

### Changed
- **State persistence across sessions** — Task board UI state (collapsed columns, collapsed tasks, selected file) is now saved to VS Code's workspace state and restored on reopen, surviving extension restarts.
- **Timestamps relocated** — Started/Completed timestamps moved from inside the description area to a dedicated footer bar below each task card, keeping the main content area clean.
- **Improved task column header rendering** — Task category and type indicators in the task header are now driven by dedicated helper functions (`isTodoColumn`, `isInProgressColumn`, `isDoneColumn`, `isArchivedColumn`) for consistent display across all column types.
- **Bumped minimum VS Code version** to `^1.90.0` and updated TypeScript target to `es2018` to support the `vscode.lm` language model API.

### Fixed
- **Blank webview on load** — Replaced deprecated `vscode-resource:` URI scheme with `webview.asWebviewUri()` and `webview.cspSource` so the webview script loads correctly in VS Code 1.90+.
- **Task dragging reliability** — Resolved intermittent failures where tasks would snap back or not register a drop, and prevented sub-category header rows from being dragged.
- **Task movement between grouped columns** — Fixed an issue where moving tasks into or out of grouped Todo sub-columns placed them in the wrong column.

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
