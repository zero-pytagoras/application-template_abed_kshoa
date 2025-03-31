import subprocess
import sys

def install_package(package):
    """Install a package using pip."""
    subprocess.check_call([sys.executable, "-m", "pip", "install", package])

def setup_virtualenv():
    """Install virtualenv and create a virtual environment."""
    try:
        import virtualenv
    except ImportError:
        print("virtualenv is not installed. Installing now...")
        install_package("virtualenv")
    
    env_name = "venv"
    print(f"Creating virtual environment '{env_name}'...")
    subprocess.check_call([sys.executable, "-m", "virtualenv", env_name])
    print(f"Virtual environment '{env_name}' created successfully!")
    print(f"To activate it, run: source {env_name}/bin/activate (Linux/macOS) or {env_name}\\Scripts\\activate (Windows)")

if __name__ == "__main__":
    setup_virtualenv()
