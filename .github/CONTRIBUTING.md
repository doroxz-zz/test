# CONTRIBUTING

## Table of Contents

- [Welcome](#welcome)
- [Issue](#issue)
  - [Reporting a bug](#reporting-a-bug)
  - [Request a feature](#request-a-feature)
  - [Other questions](#other-questions)
- [Commit message](#commit-message)
- [Pull Request](#pull-request)

## Welcome

When contributing to this repository, please first discuss the change you
want to make via [`issue`](#issue), [`@linterhub/maintainers`][maintainers],
or use any other method before making a change.

## Issue

If you have any questions, or you've found a bug or want to share any idea,
please create the relevant issue in this repository.

Please take into account of our wishes for work with issues:

- Use the GitHub issue search — to ensure that the issue hasn't been already reported.
- The issue tracker shouldn't be used for personal support requests.

### Reporting a bug

A bug is a demonstrable problem caused by the code in the repository.
Thank you for essential bug reports!

Guidelines for bug reports:

- Check if the issue has been fixed.
- Isolate the problem by creating a test case and a live example.

A good bug report shouldn't leave others to need to reach you for
more information. Please try to be as detailed as possible as all details
listed will help us to fix the found issues.

Create issue: [`reporting a bug`][github-url-issue]

### Request a feature

We welcome feature requests but take some time to ensure that your idea fits
with the scope and aims of our project. Please provide as much detail and
context as possible.

Create issue: [`request a feature`][github-url-issue]

### Other questions

You can send you questions in [`@linterhub/maintens`][maintainers] or create
an issue: [`custom issue`][github-url-issue]

## Commit message

The commit message format is important as these messages are used
to create a changelog for each release. The issue number helps
to create more consistent and useful changelogs.

Each commit message consists of a **header**, a [**body**](#body) and a [**footer**](#footer).
The header has a special format that includes a [type](#type) and a [subject](#subject):

```text
<type>:<subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

> Note: Also you can use exactly [Conventional Commits 1.0.0-beta.2][conventional-commits]

### Type

Must be one of the following:

| name         | description |
| :-:          | -       |
| docs         | Documentation only changes |
| feat         | A new feature |
| fix          | A bug fix |
| perf         | A code change that improves performance |
| refactor     | A code change that neither fixes a bug or adds a feature |
| style        | Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, e.t.c) |
| test         | Adding missing tests or correcting existing tests |
| breaking     | For a backward-incompatible enhancement or feature |
| ci           | Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs) |

### Subject

The subject contains the exact description of the change:

- use the imperative, present tense: "change" not "changed" nor "changes"
- no dot use (.) at the end

### Body

The body should include the full description of the change.

### Footer

The footer should contain a [closing reference to an issue][github-help-close-issue] if there's any.

### Example

```text
Test: Add missing tests for a linter

Adding missing tests for the linter:
- with full data
- incorrect collection of languages

Closes #456
```

## Pull Request

Please reach us before submitting any significant pull request (e.g.
implementing features, refactoring code), otherwise, you risk spending a
lot of time working on something that is not likely to be merged
into the project.

Please adhere to the coding conventions used throughout a project (indentation,
accurate comments, etc.).

Follow this process if you want your work to be included in our project:

### STEP 1: Fork and clone

Fork the [`linterhub/registry`][github-url] repo and then clone it.

> Note: More information about creating a fork and cloning your fork to local folder read in [`git help`][github-help-fork]

### STEP 2: Get the latest changes

```bash
git checkout master
```

### STEP 3: Install

```bash
npm install
```

### STEP 4: Create a new branch

```bash
git checkout -b type/issue-short-name
```

Where:

- `type` - is a [semantic type][github-url-commit-message] for commits
- `issue-short-name` - is a short name of issue. Please use `-` delimiters.

> Note: Do not combine fixes for multiple issues into one branch

### STEP 5: Make your changes

Make the changes, following the code conventions. Once you finished,
run following command:

```bush
npm run test
```

If errors not found you can commit the changes to your branch:

```bush
git add -A .
git commit
```

Commit your changes using a descriptive commit message that follows
our [commit message conventions][github-url-commit-message].

### STEP 7: Double check your submission

Make sure your commit has the right format:

- The change causes no functional regression. Be sure to run a test to verify your changes before submitting a pull request.
- All changes must be accompanied by tests, even if the feature you’re working on previously had no tests.
- All user-facing changes must be accompanied by the correspondent documentation.

### STEP 8: Push your changes

```bush
git push
```

### STEP 9: Send the pull request

Go to your fork in GitHub and then follow the [GitHub documentation][github-help-pull-request] on how to send a pull request.

- A pull request must contain a description explaining what you did and how the effects can be seen.

[maintainers]: https://github.com/orgs/linterhub/teams/maintainers
[github-url]: https://github.com/linterhub/registry
[github-url-issue]: https://github.com/linterhub/registry/issues/new
[github-help-fork]: https://help.github.com/articles/fork-a-repo/#fork-an-example-repository
[github-help-pull-request]: https://help.github.com/articles/creating-a-pull-request
[conventional-commits]: https://www.conventionalcommits.org/en/v1.0.0-beta.2/#specification
[github-help-close-issue]: https://help.github.com/articles/closing-issues-via-commit-messages
