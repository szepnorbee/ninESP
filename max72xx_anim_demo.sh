#!/bin/bash

# Animation Catalog Demo
# Based on Example Code from MD Parola

MOSQUITTO_PUB=/usr/bin/mosquitto_pub

DELAY=8

MQTT_BROKER=my.mqttbroker.com
MQTT_USER=testuser
MQTT_PASS=pass1234
TEXT_TOPIC="client7/display/text"
EFFECT_IN_TOPIC="client7/display/effectin"
EFFECT_OUT_TOPIC="client7/display/effectout"
SPEED_TOPIC="client7/display/speed"
PAUSE_TOPIC="client7/display/pause"

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 50
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $PAUSE_TOPIC -m 1000
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 1
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 0
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Print"

sleep 1

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 40
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 2
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 2
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scroll Up"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 3
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 3
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scroll Down"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 4
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 4
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scroll Left"

sleep $DELAY

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 5
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 5
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scroll Right"

sleep $DELAY

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 6
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 6
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Own Sprites"

sleep 10

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 1
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 7
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 7
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Slice"

sleep 7

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 200
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 8
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 8
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Mesh"

sleep 3

#$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 400
#$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 9
#$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 9
#$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Fade"

#sleep $DELAY

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 70
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 10
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 10
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Dissolve"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 11
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 11
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Blinds"

sleep 3

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 30
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 12
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 12
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Random"

sleep 6

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 50
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 13
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 13
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Wipe"

sleep 4

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 40
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 14
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 14
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Wipe Cursor"

sleep 7

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 15
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 15
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scan Horiz"

sleep 7

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 16
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 16
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scan Horiz X"

sleep 8

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 17
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 17
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scan Vert"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 18
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 18
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scan Vert X"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 19
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 19
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Opening"

sleep 3

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 20
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 20
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Opening Cursor"

sleep 5

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 21
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 21
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Closing"

sleep 3

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 22
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 22
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Closing Cursor"

sleep 5

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $SPEED_TOPIC -m 70
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 23
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 23
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scroll UpLeft"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 24
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 24
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scroll UpRight"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 25
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 25
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scroll DownLeft"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 26
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 26
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Scroll DownRight"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 27
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 27
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Grow Up"

sleep 2

$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_IN_TOPIC -m 28
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $EFFECT_OUT_TOPIC -m 28
$MOSQUITTO_PUB -h $MQTT_BROKER -u $MQTT_USER -P $MQTT_PASS -t $TEXT_TOPIC -m "Grow Down"

sleep 2
