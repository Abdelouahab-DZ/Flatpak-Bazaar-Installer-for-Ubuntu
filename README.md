# Ubuntu Flatpak + Bazaar Installer

A clean, reliable shell script to automate the installation of **Flatpak**, configure the **Flathub** repository, and install the **Bazaar** package manager on Ubuntu system distributions.

---

## 📋 Features

- **OS Verification:** Ensures the script is running on a supported Linux environment (`/etc/os-release`).
- **Prerequisite Checks:** Verifies `sudo` availability before executing system-level actions.
- **Automated Flathub Setup:** Configures the Flathub repository if it is not already registered.
- **System-wide Installation:** Installs Bazaar system-wide via Flatpak (`io.github.kolunmi.Bazaar`).
- **Post-Installation Verification:** Validates `flatpak` binary health and checks whether Bazaar installed successfully.

---

📌 Requirements & Notes

    Operating System: Ubuntu 20.04 LTS, 22.04 LTS, 24.04 LTS, or derivative distributions.
    Privileges: Sudo access is required to update APT packages and add system-wide Flatpak remotes.
    Distribution Scope: Bazaar (io.github.kolunmi.Bazaar) is distributed via Flathub. There are no official .deb binaries maintained for APT.

### 1. Download or Clone
git clone https://github.com/Abdelouahab-DZ/Flatpak-Bazaar-Installer-for-Ubuntu
###
cd Flatpak-Bazaar-Installer-for-Ubuntu

### 2. Make the Script Executable
```bash
chmod +x install.shg
