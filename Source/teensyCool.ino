#include "Dynamixel.h"
#include "DynamixelInterface.h"
#include "DynamixelMotor.h"

#define LED_PIN 13
#define RELAY_PIN 2
#define VERSION_STR "Z-Bot SCHNOZZ teensyCool by SmellyDog v1.0"
#define COMMAND_RESP ".\r\n"
#define DEBUG 0

char inbuf[256];
uint8_t iptr;
bool led;

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(RELAY_PIN, OUTPUT);
  #ifdef DEBUG
    Serial2.begin(9600);
  #endif
}

void loop() {

  DynamixelInterface dInterface(Serial1); // Stream
  dInterface.begin(1000000, 50); // baudrate, timeout
  DynamixelMotor motor(dInterface, 1);  // Interface , ID

  motor.init(); // This will get the returnStatusLevel of the servo
  motor.jointMode(); // Set the angular limits of the servo. Set to [min, max] by default
  motor.enableTorque();
  
  int n = Serial.available();
  //  Parse whatever we have -- which may be partial lines, so keep buffer
  while (n > 0) {
    --n;
    int ch = Serial.read();
    if (ch == '\r' || ch == '\n') { //Terminate the buffer when an \r or \n is received
      if (iptr > 0) {
        if (inbuf[0] == 'V' && inbuf[1] == 'E') { //Mill will send "VE" to initiate comms with smartcool
          Serial.write(VERSION_STR);  //Mill expects Z-Bot SCHNOZZ in response
          #ifdef DEBUG
            Serial2.println("VE received, response sent");
          #endif
        } else if (inbuf[0] == 'W') { //Servo position and parameter commands begin with "W"
          if (iptr < 14) {
            //  bad CMD!
          } else { //Parse servo command
            //TODO, add parsing code
            int cmdType = 10*(inbuf[8] - '0') + (inbuf[9] - '0'); //This will convert the ASCII values of each sent digit to a single int value
            int cmdContent = 1000*(inbuf[10] - '0') + 100*(inbuf[11] - '0') + 10*(inbuf[12] - '0') + (inbuf[13] - '0');
            switch (cmdType) {
              case 34:  //Mill is sending a torque limit setting
              #ifdef DEBUG
                Serial2.println("Torque command received");
              #endif
                //TODO: relay torque limit paramter to servo
                break;
              case 16:  //Mill is sending a servo response setting
              #ifdef DEBUG
                Serial2.println("Servo response command received");
              #endif
                //TODO: relay servo response parameter to servo
                break;
              case 26:  //Mill is sending a CW compliance setting
              #ifdef DEBUG
                Serial2.println("CW Compliance command received");
              #endif
                //TODO: relay CW compliance paramter to servo
                break;
              case 27:  //Mill is sending a CCW compliance setting
              #ifdef DEBUG
                Serial2.println("CCW Compliance command received");
              #endif
                //TODO: relay CCW compliance paramter to servo
                break;
              case 28:  //Mill is sending CW slope setting
              #ifdef DEBUG
                Serial2.println("CW Slope command received");
              #endif
                //TODO: relay CW slope parameter to servo
                break;
              case 29:  //Mill is sending CCW slope setting
              #ifdef DEBUG
                Serial2.println("CCW slope command received");
              #endif
                //TODO: relay CCW slope parameter to servo
                break;
              case 48:  //Mill is sending punch current setting
              #ifdef DEBUG
                Serial2.println("Punch current command received");
              #endif
                //TODO: relay punch current setting to servo
                break;
              case 30:  //Mill is sending servo position command
              #ifdef DEBUG
                Serial2.print("Position command received. New position: ");
                Serial2.println(cmdContent);
              #endif
                motor.goalPosition(cmdContent); //Command servo move
                break;
            }
            Serial.write(COMMAND_RESP);
          }
        } else if (inbuf[0] == '2') { //Relay2 commands begin with a 2
          if (iptr < 2) {
            // bad CMD;
          } else { //Parse relay 2 command
            if (inbuf[1] == '+') {  //Mill has commanded Relay2 On
              digitalWrite(LED_PIN, HIGH);
              digitalWrite(RELAY_PIN, HIGH);
            } else {  //Mill has commanded Relay2 Off
              digitalWrite(LED_PIN, LOW);
              digitalWrite(RELAY_PIN, LOW);
            }
            inbuf[iptr] = 0;
            Serial.write(COMMAND_RESP);
          }
        } else {
          //  bad CMD!!
        }
      }
      memset(inbuf, 0, iptr);
      iptr = 0;
    } else  {
      if (iptr == sizeof(inbuf)-1) {
        //  OVERFLOW!
        iptr = 0;
      } else {
        inbuf[iptr++] = ch;
      }
    }
  }
}
