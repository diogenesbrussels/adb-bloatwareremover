# adb-bloatwareremover

## Config

Check the file toremove.txt for list of app to be removed

Add or delete line with package name

## Setup

Install ADB cli tool on your computer

Activate developer mode on the phone

> About phone > Click several times on current build number


Activate usb debug in developer menu

Connect the phone to the computer

## Run

	bash remove_apps.sh

## Additional notes

- This tool is supplied "as is" without any guarantee of operation or absence of problems.
- It is designed to remove non-essential software and data capture from Samsung and Xiaomi phones.
- If the script is run before Android is connected to a Google account, the phone sometimes tries to reactivate certain applications. It's best to run it again.
- To standardise the apps installed, group policy settings can be used to force the installation of the desired applications.
- Many error messages may appear because the output is displayed completely in the terminal. If an application is deleted/deactivated correctly **Success** will appear in one of the two lines below the package name.
