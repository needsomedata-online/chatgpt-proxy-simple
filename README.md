# Notice
Simple alternative of using vpn or socks proxy for OpenAI ChatGPT.

# ChatGPT-Proxy
This is a simple Python version of OpenAI's ChatGPT web API proxy  

## Requirements
- Access to chat.openai.com

## Install
`pip install chatgpt-proxy-simple`

## Usage
Compiling docker image 
```
docker build -t chatgpt-proxy-simple .
```

Run a docker container
```
docker run -p 5000:5000 --restart always chatgpt-proxy-simple
```
 

## Check
You can make test curl request: 

```
curl --request POST \
  --url http://$YOUR_SERVER_IP:5000/v1/chat/completions \
  --header 'Authorization: Bearer $OPENAI_API_KEY' \
  --header 'Content-Type: application/json' \
  --data '{
    "model": "gpt-3.5-turbo",
    "messages": [
      {
        "role": "system",
        "content": "You are a helpful assistant."
      },
      {
        "role": "user",
        "content": "Who won the world series in 2020?"
      },
      {
        "role": "assistant",
        "content": "The Los Angeles Dodgers won the World Series in 2020."
      },
      {
        "role": "user",
        "content": "Where was it played?"
      }
    ]
  }'
 ````

