# Termux-Lock (PyTLock)
<!--
<p align="centre">
<a href="LICENSE"><img alt="License" src="https://img.shields.io/github/license/praveenkumar277/PyTLock?labelColor=grey&color=lightgreen"></a>
<a href=""><img alt="Forks" src="https://img.shields.io/github/forks/praveenkumar277/PyTLock?style=flat-square&labelColor=grey&color=lightgreen"></a>
<a href=""><img alt="Stars" src="https://img.shields.io/github/stars/praveenkumar277/PyTLock?style=flat-square&labelColor=grey&color=lightgreen"></a>
</p>
-->
PyTLock is a simple and lightweight tool for securing your Termux environment on Android devices. It adds an extra layer of protection by requiring a password to access Termux, preventing unauthorized access to your terminal session and sensitive data.

## Features
- Lightweight
- Easy setup
- Customizable
- Resource-friendly

## Prerequisites
- Termux app installed on your Android device (Download from [F-Droid](https://f-droid.org/en/packages/com.termux/))
- Android device running Android version 7.0 (Nougat) or later

## Installation
1. Clone or download the PyTLock repository:
```
pkg install git python -y; git clone https://github.com/praveenkumar277/PyTLock.git
```
2. Change to the project directory:
```
cd PyTLock/
```
3. Run the installation script:
```
chmod +x * ;./install
```
4. Follow the on-screen instructions to set up your lock screen password.
## Usage
Once PyTLock is installed and configured, it will automatically lock your Termux session whenever you close the app.

To unlock Termux, simply launch the app again and enter your password on the lock screen.

If you want to Change password or uninstall use command `tlock`

## Contributing
Contributions are welcome and appreciated! If you would like to contribute to PyTLock, please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push your changes to your fork.
5. Submit a pull request to the main branch of the **main** repository.
> Please ensure that your code follows the existing coding style and includes appropriate documentation.

## License
This project is licensed under the [MIT License](./LICENSE).

## Acknowledgements
Termux Lock was inspired by the need for enhanced security in Termux environments. Special thanks to the open-source community for their contributions.

## Support

If you encounter any issues or have any questions or suggestions, please open an issue on the GitHub repository. We appreciate your feedback!

## Disclaimer:
**Termux Lock is not responsible for any loss of data or unauthorized access that may occur while using this tool. Please use it responsibly and take necessary precautions to secure your device and data.**
