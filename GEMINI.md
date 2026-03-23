# Gemini CLI Project

This project is a workspace for the Gemini CLI. It contains a launch script and documentation for its use.

## Project Overview

- **Purpose:** A dedicated workspace for interacting with the Gemini CLI.
- **Main Technologies:** Bash (for the launch script), Node.js (the underlying runtime for the CLI).
- **Architecture:** The CLI is a Node.js-based tool installed via NVM, with a shell script for convenient execution in this workspace.

## Building and Running

### Running the CLI

To launch the Gemini CLI within this project, use the provided `launch.sh` script:

```bash
./launch.sh
```

### Options

The `launch.sh` script accepts all standard `gemini` CLI arguments. For example:

- **Specify a model:** `./launch.sh -m gemini-2.0-flash-exp`
- **Resume the latest session:** `./launch.sh -r latest`
- **Run a single prompt and exit:** `./launch.sh -p "your prompt here"`

### Testing

Testing procedures for this specific workspace haven't been established yet.

## Development Conventions

- **Scripts:** Any new utility scripts should be added to the project root and documented here.
- **Documentation:** The `GEMINI.md` file serves as the primary instructional context for the CLI when interacting within this directory.
