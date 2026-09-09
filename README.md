# Ubuntu Flatpak + Bazaar Installer

A clean, reliable shell script to automate the installation of **Flatpak**, configure the **Flathub** repository, and install the **Bazaar** package manager on Ubuntu system distributions.

---

## 📋 Features

- **OS Verification:** Ensures the script is running on a supported Linux environment (`/etc/os-release`).
- **Prerequisite Checks:** Verifies `sudo` availability before executing system-level actions.
- **Automated Flathub Setup:** Configures the Flathub repository if it is not already registered.
- **System-wide Installation:** Installs Bazaar system-wide via Flatpak (`io.github.kolunmi.Bazaar`).
- **Post-Installation Verification:** Validates `flatpak` binary health and checks whether Bazaar installed successfully.

### 1. Download and run
git clone https://github.com/Abdelouahab-DZ/Flatpak-Bazaar-Installer-for-Ubuntu
###
cd Flatpak-Bazaar-Installer-for-Ubuntu
###
chmod +x install.sh
###
sudo ./install.sh
