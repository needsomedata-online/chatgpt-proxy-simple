# ChatGPT-Proxy
This is a simple Python version of OpenAI's ChatGPT web API proxy  

## Requirements
- Access to chat.openai.com on you Server

# Install
1. Open your terminal or Putty. That's the magical black box where you talk to the spirits of remote machines.
2. Cast the spell `ssh [username]@[ip_address]`. Replace `[username]` and `[ip_address]` with your secret access code and mystical server address.
3. Be ready to enter your password. No, not the one you use for Facebook.

## 🚀 **Installing Docker: Because Obviously**
1. Type `sudo apt-get update` to make sure all your spells are up-to-date.
2. Then `sudo apt-get install docker.io` to summon the Docker daemon to your server.

## 🤷‍♂️ **Cloning the Repository: Just In Case Someone Forgot**
1. If Git is not yet installed, do it now: `sudo apt-get install git`. Ah, another magical tool.
2. Now clone: `git clone https://github.com/needsomedata-online/chatgpt-proxy-simple`. Like in spy movies, but without explosions and car chases.

## 📂 **Venturing into Narnia... I Mean, the Project Directory**
1. `cd chatgpt-proxy-simple`. Surprise! It's a command to move into the folder.

## 🎨 **Creating a Docker Image: Feel Like an Artist**
1. `docker build -t chatgpt-proxy-simple .`. Here's where all your creative energy turns into a Docker image.

## ✨ **Launching the Container: Let the Magic Begin**
1. `docker run -p 5000:5000 --restart always chatgpt-proxy-simple`. Congratulations, you've just brought your project to life.

# 🌟 **Checking Functionality: Do You Believe in Miracles?**
1. Go to `http://[ip_address]:5000` and see the fruits of your labor. Hopefully, it impresses you more than David Copperfield's tricks.
2. OR you can make curl request: 

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
 ```

# 🚀 **Using the Application: Handle with Care**
1. Now that you've created something great, use it wisely. Or just for fun, whichever you prefer.

_And remember, in the world of development, as in magic, there's always room for miracles... and unexpected bugs. Good luck!_ 🌈✨