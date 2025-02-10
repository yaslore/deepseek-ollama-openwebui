# DeepSeek AI Easy Guide

## Step 1 - Install Ollama

Download Ollama from the official website:
[Ollama for Windows](https://ollama.com/download/windows)

## Step 2 - Choose a DeepSeek version

Select a DeepSeek AI version based on your needs. For coding purposes, **DeepSeek Coder v2** is recommended.
If you wonder the latest Reasoning model, here is the R1 link  [Ollama DeepSeek R1 Options](https://ollama.com/library/deepseek-r1)

## Step 3 - Install DeepSeek AI

Use a terminal application to install DeepSeek AI. If you're on Windows, use the **Windows Terminal App** for simplicity.
[Windows Terminal App](https://apps.microsoft.com/detail/9n0dx20hk701?hl=en-GB)

- Copy the command from the official website and paste it into your terminal.
- Hit **Enter** and wait for the AI model to download. Depending on the selected model, this may require a few gigabytes of data.

Once installed, DeepSeek AI is ready to use in the terminal, but a web UI is recommended for a better experience.

## Step 4 - Install OpenWebUI

To use DeepSeek AI in a web browser (Chrome, Firefox, etc.), install **OpenWebUI**, an open-source web interface.

[OpenWebUI Quick Start Guide](https://docs.openwebui.com/getting-started/quick-start/)

We will install OpenWebUI using **UV**, a tool that manages Python applications easily.
[UV Documentation](https://docs.astral.sh/uv/)

### Install UV

**For Windows:**
```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

**For Linux/MacOS:**
```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Install or Update OpenWebUI
```powershell
$env:DATA_DIR="C:\DeepSeekGuide\open-webui\data"; uvx --python 3.11 open-webui@latest serve --port 3060
```

**For Linux/MacOS:**
```sh
DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve --port 3060
```


### Run OpenWebUI
```powershell
$env:DATA_DIR="C:\DeepSeekGuide\open-webui\data"; uvx --python 3.11 open-webui@v0.5.10 serve --port 3060
```

**Note:** You can modify the `--port` value to use a different port number. The example uses **3060**, referencing a GPU model.

### OpenWebUI Installation Directories
```text
C:\Users\PC-USERNAME\AppData\Local\uv\cache\archive-v0
C:\Users\PC-USERNAME\AppData\Local\uv\cache\wheels-v3\pypi\open-webui
```

### Running OpenWebUI Again
Ensure **Ollama** is running. If it's not, open the Ollama application.
Then, use the run command again:
```powershell
$env:DATA_DIR="C:\DeepSeekGuide\open-webui\data"; uvx --python 3.11 open-webui@v0.5.10 serve --port 3060
```
Here pick the appropriate file for you OS: **[Download the repo](https://github.com/yaslore/deepseek-ollama-openwebui/tree/main)**


Now, open **[http://localhost:3060/](http://localhost:3060/)** in your browser.

---

## Uninstalling DeepSeek AI & OpenWebUI

### Uninstall Ollama
To remove **Ollama** completely, uninstall the application.

### Remove a Specific AI Model from Ollama
```sh
ollama list
ollama rm <unwanted_ai_model_name>
```

### Manually Remove Ollama Models
- **macOS:** `~/.ollama/models`
- **Linux:** `/usr/share/ollama/.ollama/models`
- **Windows:** `C:\Users\%username%\.ollama\models`

### Uninstall OpenWebUI & UV
Follow this guide to remove everything installed with **UV**:
[UV Uninstallation Guide](https://docs.astral.sh/uv/getting-started/installation/#uninstallation)

To remove **only OpenWebUI** from UV, refer to:
[UV Package Uninstallation](https://docs.astral.sh/uv/pip/packages/#uninstalling-a-package)

---

**Congratulations!** 🎉 DeepSeek AI is now set up on your local machine. 
Access it at: **[http://localhost:3060/](http://localhost:3060/)**
