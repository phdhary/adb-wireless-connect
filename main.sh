adb_tcpip ()
{
    adb tcpip 5555;
}

adb_find_device_ip ()
{
    adb shell ip addr show wlan0 | grep "inet\s" | awk '{print $2}' | awk -F'/' '{print $1}';
}

adb_connect ()
{
  device_ip="$(adb_find_device_ip)";
  adb connect $device_ip;
}

adb_devices ()
{
  adb devices;
}

main ()
{
  adb_tcpip;
  sleep 3;
  adb_connect;
  adb_devices;
}

main
