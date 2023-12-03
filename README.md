# Homebrew-Genshell

This repository (homebrew-genshell) is a Homebrew tap for [genshell](https://github.com/mostafa-drz/genshell/), an AI-powered CLI tool designed to generate shell commands from natural language descriptions. The tool leverages the OpenAI API to interpret user inputs and suggest corresponding shell commands.

## Disclaimer

`genshell` is an experimental tool and may have some issues. It was developed as a project to explore the capabilities of the OpenAI API and should be used with the following considerations:

- Experimental Nature: The tool is experimental and might not always provide accurate or safe command suggestions.
- Use with Caution: Users should review and understand the generated commands before executing them, as they could potentially affect the system they are run on.
- Feedback and Contributions: Feedback and contributions are welcome, as they will help in improving the tool and addressing any issues.

## Installation

To install genshell using this tap, follow these steps:

### __Tap the Repository__:
Add this tap to your Homebrew installation:
```
brew tap yourusername/genshell
```

### __Install Genshell:__
Install `genshell` like any other Homebrew package:
```
brew install genshell
```

## Configuration
After installing `genshell`, you need to configure it with your OpenAI API token. This token allows `genshell` to communicate with the OpenAI API and generate command suggestions.

### Set the OpenAI API Token:
Use the following command to set your OpenAI API token:
```
genshell config --api-token "your_openai_api_token_here"
```
Replace "your_openai_api_token_here" with your actual OpenAI API token.

## Usage
After installation and configuration, you can use genshell in the following ways:

### Generate a Command:
Simply type genshell followed by a natural language description to generate a shell command. For example:
```
genshell "list all files in the current directory"
```

### Execute a Command Directly:
Use the -e flag to execute the generated command immediately. For example:
```
genshell -e "create a new directory named 'test'"
```
This command will generate the appropriate shell command and execute it, creating a new directory named 'test'.

## Updating
To update genshell to the latest version, first update Homebrew and then upgrade the formula:
```
brew update
brew upgrade genshell
```

## Contributing
Contributions to `genshell` are welcome, especially in addressing its experimental aspects and enhancing its functionality.