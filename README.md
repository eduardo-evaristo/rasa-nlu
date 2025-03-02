# Rasa NLU-only Server

This project is a Natural Language Understanding (NLU) server built using Rasa. It is designed to handle various intents and entities to provide meaningful responses based on user inputs.

## Cloning the Repository

To get started, clone the repository using the following command:

```sh
git clone https://github.com/eduardo-evaristo/rasa-nlu.git
cd rasa-nlu
```

## Building the Docker Image

To build the Docker image for this Rasa NLU server, use the following command:

```sh
docker build -t <name>:<tag>(optional) .
```

## Running the Docker Container

To run the Docker container, use the following command:

```sh
docker run -d -p 5005:5005 --name <name> <image_name>
```

This will start the Rasa NLU server and make it accessible on port 5005.

## Intents

The following intents are supported by this NLU server:

- `hide_module`: Used to hide a specific module.
- `show_module`: Used to show a specific module.
- `handle_to_ai`: Used to handle general questions and requests.

## Entities

The following entities are recognized by this NLU server:

- `module`: Represents the module to be shown or hidden.

## Example Usage

You can interact with the Rasa NLU server by sending HTTP requests to the `/model/parse` endpoint. Here is an example of a request payload:

```json
{
  "text": "quero remover o módulo relógio"
}
```

The server will respond with the identified intent and entities, allowing you to take appropriate actions based on the user's input.

This is meant to be used alongside an application I'm building that needs to be able to understand what the user's intent is. Because it may be a locally-scoped intent, such as hiding certain elements on the screen or an intent that requires an AI to respond to the user.
