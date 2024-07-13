#include <Arduino.h>
#include <NimBLEDevice.h>

class MyServerCallbacks : public NimBLEServerCallbacks {
    void onConnect(NimBLEServer* pServer) {
      Serial.println("Client connected");
    };
    void onDisconnect(NimBLEServer* pServer) {
      Serial.println("Client disconnected");
      pServer->startAdvertising();
    };
};

class MySecurityCallbacks : public NimBLESecurityCallbacks {
  uint32_t onPassKeyRequest() override {
    Serial.println("Passkey requested");
    return 123456; // Replace with your own PIN
  }

  void onPassKeyNotify(uint32_t pass_key) override {
    Serial.print("Passkey: ");
    Serial.println(pass_key);
  }

  bool onSecurityRequest() override {
    Serial.println("Security request");
    return true;
  }

  void onAuthenticationComplete(ble_gap_conn_desc* desc) override {
    if (desc->sec_state.encrypted) {
      Serial.println("Pairing successful");
      printSecurityKeys(desc);
    } else {
      Serial.println("Pairing failed");
    }
  }

  bool onConfirmPIN(uint32_t pin) override {
    Serial.print("PIN: ");
    Serial.println(pin);
    return true;
  }

  void printSecurityKeys(ble_gap_conn_desc* desc) {
    struct ble_store_value_sec sec;
    struct ble_store_key_sec key_sec;
    memset(&sec, 0, sizeof(sec));
    memset(&key_sec, 0, sizeof(key_sec));

    key_sec.peer_addr = desc->peer_ota_addr;

    if (ble_store_read_peer_sec(&key_sec, &sec) == 0) {
      Serial.println("Security keys:");

      // Print Long Term Key (LTK)
      Serial.print("LTK: ");
      for (int i = 0; i < 16; i++) {
        Serial.printf("%02X", sec.ltk[i]);
      }
      Serial.println();

      // Print Encrypted Diversifier (EDIV)
      Serial.print("EDIV: ");
      Serial.printf("%04X", sec.ediv);
      Serial.println();

      // Print Random Number
      Serial.print("Random Number: ");
      Serial.printf("%llX", sec.rand_num);
      Serial.println();

      // Print Identity Resolving Key (IRK)
      Serial.print("IRK: ");
      for (int i = 0; i < 16; i++) {
        Serial.printf("%02X", sec.irk[i]);
      }
      Serial.println();

      // Print Connection Signature Resolving Key (CSRK)
      Serial.print("CSRK: ");
      for (int i = 0; i < 16; i++) {
        Serial.printf("%02X", sec.csrk[i]);
      }
      Serial.println();
    } else {
      Serial.println("Failed to read security keys");
    }
  }
};

NimBLEScan* pBLEScan;
NimBLEAdvertisedDevice* selectedDevice = nullptr;

void setup() {
  Serial.begin(115200);
  Serial.println("Starting BLE work!");

  NimBLEDevice::init("ESP32");
  NimBLEDevice::setSecurityAuth(true, true, true);
  NimBLEDevice::setSecurityCallbacks(new MySecurityCallbacks());

  NimBLEServer* pServer = NimBLEDevice::createServer();
  pServer->setCallbacks(new MyServerCallbacks());

  NimBLEService* pService = pServer->createService("12345678-1234-1234-1234-123456789012");
  NimBLECharacteristic* pCharacteristic = pService->createCharacteristic(
                                           "87654321-4321-4321-4321-210987654321",
                                           NIMBLE_PROPERTY::READ |
                                           NIMBLE_PROPERTY::WRITE
                                         );

  pCharacteristic->setValue("Hello World");
  pService->start();

  pServer->getAdvertising()->start();
  Serial.println("Advertising started!");

  //pBLEScan = NimBLEDevice::getScan();
  //pBLEScan->setActiveScan(true);
  //pBLEScan->start(30, scanEndedCallback);

  //Serial.println("Scanning started!");
}

void loop() {
  if (Serial.available()) {
    String input = Serial.readStringUntil('\n');
    input.trim();

    if (input.startsWith("CONN")) {
      int index = input.substring(4).toInt();
      if (index > 0 && index <= pBLEScan->getResults().getCount()) {
        selectedDevice = new NimBLEAdvertisedDevice(pBLEScan->getResults().getDevice(index - 1));
        connectToDevice();
      } else {
        Serial.println("Invalid device index");
      }
    }
  }
}

void scanEndedCallback(NimBLEScanResults results) {
  Serial.println("Scan ended");
  for (int i = 0; i < results.getCount(); i++) {
    NimBLEAdvertisedDevice device = results.getDevice(i);
    Serial.print(i + 1);
    Serial.print(": ");
    Serial.println(device.toString().c_str());
  }
  Serial.println("Enter 'CONN <number>' to connect to a device");
}

void connectToDevice() {
  if (selectedDevice != nullptr) {
    NimBLEClient* pClient = NimBLEDevice::createClient();
    Serial.println("Connecting to device...");
    if (pClient->connect(selectedDevice)) {
      Serial.println("Connected to device");
      // Further processing after connection can be done here
    } else {
      Serial.println("Failed to connect to device");
    }
    NimBLEDevice::deleteClient(pClient);
  }
}
