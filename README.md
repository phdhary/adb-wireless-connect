#### What is this?

This is a script to connect **permitted** android device wirelessly.

\*_for older android device that doesn't support wireless debugging by default._

This script basically do this:

```
adb tcpip 5555;
adb connect <device-ip-address>;
```

finding the `<device-ip-address>` part is a little bit painful[^1] , so I add some way to scan ip address of the device.

#### Wanna use this?

- Plug in android device to you computer.
- Allow usb debugging.
- Open this repository directory.
- Run:

```
sh main.sh
```

- Plug out your android device.
- It connect wirelessly now.

[^1]: opening device's setting -- network -- wifi -- look for wifi -- look for ip address -- typing ip address in terminal.
