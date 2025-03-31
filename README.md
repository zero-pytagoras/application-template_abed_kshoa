# Application Template

## Overview
This repository contains scripts and setup instructions for a Python-based application. It is designed to help developers set up their environment quickly and ensure a consistent workflow across different machines.

## Project Structure
- `setup.sh`: A Bash script to verify and install required dependencies.
- `setup_virtualenv.py`: A Python script to install and configure a virtual environment.
- `README.md`: Documentation about the project setup.
- `TASK.md`: A list of tasks for setting up the project.
- `CONTRIBUTORS.md`: A list of contributors to the project.

## Requirements
Ensure that the following dependencies are installed on your system before proceeding:
- `python3`
- `pip`
- `pipx`
- `makeself`
- `sqlite3`
- A virtualization tool (VirtualBox, VMware, or KVM)

## Setup Instructions
1. **Clone the Repository:**
   ```sh
   git clone git@github.com:your-username/application-template.git
   cd application-template
   ```
2. **Run the Setup Script:**
   ```sh
   chmod +x setup.sh
   ./setup.sh
   ```
3. **Set Up Virtual Environment:**
   ```sh
   python3 setup_virtualenv.py
   ```
4. **Activate Virtual Environment:**
   ```sh
   source venv/bin/activate  # Linux/macOS
   venv\Scripts\activate     # Windows
   ```
5. **Install Dependencies:**
   ```sh
   pip install -r requirements.txt
   ```

## Connecting to a Virtual Machine via VSCode
1. Ensure your VM is running and find its IP address:
   ```sh
   ip a | grep inet
   ```
2. Use the **Remote - SSH** extension in VSCode to connect:
   - Open **Command Palette (`Ctrl+Shift+P`)**
   - Select **Remote-SSH: Connect to Host**
   - Enter `ssh username@vm-ip`
   
## Contributors
- Your Name <your.email@example.com>

## License
This project is open-source and available under the MIT License.
