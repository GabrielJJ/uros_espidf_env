ESP32-uROS-freeRTOS Environment 
===
Repository dedicated to easily test and deploy firmwares that runs in ESP32 with freeRTOS and uROS. 

## Dependencies
- Docker 
- [ESP-IDF](https://docs.espressif.com/projects/esp-idf/en/stable/esp32/get-started/linux-macos-setup.html)

Make shure you have the esp-idf tool and some basic packages installed: 
```bash
. $IDF_PATH/export.sh
pip3 install catkin_pkg lark-parser colcon-common-extensions
```
## Example

In order to test a int32_publisher example:

```bash
. $IDF_PATH/export.sh
cd examples/int32_publisher
# Set target board [esp32|esp32s2|esp32s3|esp32c3]
idf.py set-target esp32
idf.py menuconfig
# Set your micro-ROS configuration and WiFi credentials under micro-ROS Settings
idf.py build
idf.py flash
idf.py monitor
```

Is possible to use a micro-ROS Agent just with this docker command:

```bash
# UDPv4 micro-ROS Agent
docker run -it --rm --net=host microros/micro-ros-agent:humble udp4 --port 8888
```

