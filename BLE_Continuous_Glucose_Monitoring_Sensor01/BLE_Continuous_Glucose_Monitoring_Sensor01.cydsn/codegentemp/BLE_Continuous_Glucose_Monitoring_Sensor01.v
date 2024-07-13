// ======================================================================
// BLE_Continuous_Glucose_Monitoring_Sensor01.v generated from TopDesign.cysch
// 07/13/2024 at 19:23
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_PSOC6 4
`define CYDEV_CHIP_FAMILY_FM0P 5
`define CYDEV_CHIP_FAMILY_FM3 6
`define CYDEV_CHIP_FAMILY_FM4 7
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_5B 2
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 3
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_4G 4
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 5
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 6
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4E_CCG2_NO_USBPD 0
`define CYDEV_CHIP_MEMBER_4X 7
`define CYDEV_CHIP_REVISION_4X_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4O 8
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4R 9
`define CYDEV_CHIP_REVISION_4R_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4T 10
`define CYDEV_CHIP_REVISION_4T_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 11
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4S 12
`define CYDEV_CHIP_REVISION_4S_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4W 13
`define CYDEV_CHIP_REVISION_4W_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AC 14
`define CYDEV_CHIP_REVISION_4AC_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AD 15
`define CYDEV_CHIP_REVISION_4AD_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AE 16
`define CYDEV_CHIP_REVISION_4AE_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 17
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Y 18
`define CYDEV_CHIP_REVISION_4Y_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Z 19
`define CYDEV_CHIP_REVISION_4Z_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 20
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 21
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 22
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4V 23
`define CYDEV_CHIP_REVISION_4V_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 24
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AA 25
`define CYDEV_CHIP_REVISION_4AA_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 26
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 27
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 28
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 29
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AB 30
`define CYDEV_CHIP_REVISION_4AB_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 31
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 32
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_6A 33
`define CYDEV_CHIP_REVISION_6A_ES 17
`define CYDEV_CHIP_REVISION_6A_PRODUCTION 33
`define CYDEV_CHIP_REVISION_6A_NO_UDB 33
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 34
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 35
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 36
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 37
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 38
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 2
`define CYDEV_CHIP_MEMBER_USED 27
`define CYDEV_CHIP_REVISION_USED 0
// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// BLE_v3_66(AutopopulateWhitelist=true, EnableExternalPAcontrol=false, EnableExternalPrepWriteBuff=false, EnableL2capLogicalChannels=true, EnableLinkLayerPrivacy=false, GapConfig=<?xml version="1.0" encoding="utf-16"?>\r\n<CyGapConfiguration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">\r\n  <DevAddress>DC16A2840D48</DevAddress>\r\n  <SiliconGeneratedAddress>false</SiliconGeneratedAddress>\r\n  <MtuSize>23</MtuSize>\r\n  <MaxTxPayloadSize>27</MaxTxPayloadSize>\r\n  <MaxRxPayloadSize>27</MaxRxPayloadSize>\r\n  <TxPowerLevel>0</TxPowerLevel>\r\n  <TxPowerLevelConnection>0</TxPowerLevelConnection>\r\n  <TxPowerLevelAdvScan>0</TxPowerLevelAdvScan>\r\n  <SecurityConfig>\r\n    <SecurityMode>SECURITY_MODE_1</SecurityMode>\r\n    <SecurityLevel>NO_SECURITY</SecurityLevel>\r\n    <StrictPairing>false</StrictPairing>\r\n    <KeypressNotifications>false</KeypressNotifications>\r\n    <IOCapability>DISPLAY_YES_NO</IOCapability>\r\n    <PairingMethod>JUST_WORKS</PairingMethod>\r\n    <Bonding>BOND</Bonding>\r\n    <MaxBondedDevices>4</MaxBondedDevices>\r\n    <AutoPopWhitelistBondedDev>true</AutoPopWhitelistBondedDev>\r\n    <MaxWhitelistSize>8</MaxWhitelistSize>\r\n    <EnableLinkLayerPrivacy>false</EnableLinkLayerPrivacy>\r\n    <MaxResolvableDevices>8</MaxResolvableDevices>\r\n    <EncryptionKeySize>16</EncryptionKeySize>\r\n  </SecurityConfig>\r\n  <AdvertisementConfig>\r\n    <AdvScanMode>FAST_CONNECTION</AdvScanMode>\r\n    <AdvFastScanInterval>\r\n      <Minimum>20</Minimum>\r\n      <Maximum>30</Maximum>\r\n    </AdvFastScanInterval>\r\n    <AdvReducedScanInterval>\r\n      <Minimum>1000</Minimum>\r\n      <Maximum>2500</Maximum>\r\n    </AdvReducedScanInterval>\r\n    <AdvDiscoveryMode>GENERAL</AdvDiscoveryMode>\r\n    <AdvType>CONNECTABLE_UNDIRECTED</AdvType>\r\n    <AdvFilterPolicy>SCAN_REQUEST_ANY_CONNECT_REQUEST_ANY</AdvFilterPolicy>\r\n    <AdvChannelMap>ALL</AdvChannelMap>\r\n    <AdvFastTimeout>30</AdvFastTimeout>\r\n    <AdvReducedTimeout>150</AdvReducedTimeout>\r\n    <ConnectionInterval>\r\n      <Minimum>7.5</Minimum>\r\n      <Maximum>4000</Maximum>\r\n    </ConnectionInterval>\r\n    <ConnectionSlaveLatency>0</ConnectionSlaveLatency>\r\n    <ConnectionTimeout>32000</ConnectionTimeout>\r\n  </AdvertisementConfig>\r\n  <ScanConfig>\r\n    <ScanFastWindow>30</ScanFastWindow>\r\n    <ScanFastInterval>30</ScanFastInterval>\r\n    <ScanTimeout>3</ScanTimeout>\r\n    <ScanReducedWindow>1200</ScanReducedWindow>\r\n    <ScanReducedInterval>1280</ScanReducedInterval>\r\n    <ScanReducedTimeout>150</ScanReducedTimeout>\r\n    <EnableReducedScan>true</EnableReducedScan>\r\n    <ScanDiscoveryMode>GENERAL</ScanDiscoveryMode>\r\n    <ScanningState>ACTIVE</ScanningState>\r\n    <ScanFilterPolicy>ACCEPT_ALL_ADV_PACKETS</ScanFilterPolicy>\r\n    <DuplicateFiltering>true</DuplicateFiltering>\r\n    <ConnectionInterval>\r\n      <Minimum>7.5</Minimum>\r\n      <Maximum>40</Maximum>\r\n    </ConnectionInterval>\r\n    <ConnectionSlaveLatency>0</ConnectionSlaveLatency>\r\n    <ConnectionTimeout>100</ConnectionTimeout>\r\n  </ScanConfig>\r\n  <AdvertisementPacket>\r\n    <PacketType>ADVERTISEMENT</PacketType>\r\n    <Items>\r\n      <CyADStructure>\r\n        <ADType>1</ADType>\r\n        <ADData>06</ADData>\r\n      </CyADStructure>\r\n      <CyADStructure>\r\n        <ADType>9</ADType>\r\n        <ADData>43:47:4D:20:47:54:31:32:33:34:35:36:37:4D</ADData>\r\n      </CyADStructure>\r\n      <CyADStructure>\r\n        <ADType>255</ADType>\r\n        <ADData>F9:01:00</ADData>\r\n      </CyADStructure>\r\n    </Items>\r\n    <IncludedServicesServiceUuid />\r\n    <IncludedServicesServiceSolicitation />\r\n    <IncludedServicesServiceData />\r\n  </AdvertisementPacket>\r\n  <ScanResponsePacket>\r\n    <PacketType>SCAN_RESPONSE</PacketType>\r\n    <Items>\r\n      <CyADStructure>\r\n        <ADType>10</ADType>\r\n        <ADData>00</ADData>\r\n      </CyADStructure>\r\n    </Items>\r\n    <IncludedServicesServiceUuid />\r\n    <IncludedServicesServiceSolicitation />\r\n    <IncludedServicesServiceData />\r\n  </ScanResponsePacket>\r\n</CyGapConfiguration>, HalBaudRate=115200, HalCtsEnable=true, HalCtsPolarity=0, HalRtsEnable=true, HalRtsPolarity=0, HalRtsTriggerLevel=4, HciMode=0, ImportFilePath=, KeypressNotifications=false, L2capMpsSize=23, L2capMtuSize=23, L2capNumChannels=1, L2capNumPsm=1, LLMaxRxPayloadSize=27, LLMaxTxPayloadSize=27, MaxAttrNoOfBuffer=1, MaxBondedDevices=4, MaxResolvableDevices=8, MaxWhitelistSize=8, Mode=0, ProfileConfig=<?xml version="1.0" encoding="utf-16"?>\r\n<Profile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" ID="1" DisplayName="Continuous Glucose Monitoring" Name="Continuous Glucose Monitoring" Type="org.bluetooth.profile.continuous_glucose_monitoring">\r\n  <CyProfileRole ID="46" DisplayName="CGM Sensor" Name="CGM Sensor">\r\n    <CyService ID="47" DisplayName="Generic Access" Name="Generic Access" Type="org.bluetooth.service.generic_access" UUID="1800">\r\n      <CyCharacteristic ID="48" DisplayName="Device Name" Name="Device Name" Type="org.bluetooth.characteristic.gap.device_name" UUID="2A00">\r\n        <Field Name="Name">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>14</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>CGM GT1234567M</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n          <Property Type="WRITE" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="49" DisplayName="Appearance" Name="Appearance" Type="org.bluetooth.characteristic.gap.appearance" UUID="2A01">\r\n        <Field Name="Category">\r\n          <DataFormat>16bit</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>1024</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="50" DisplayName="Peripheral Preferred Connection Parameters" Name="Peripheral Preferred Connection Parameters" Type="org.bluetooth.characteristic.gap.peripheral_preferred_connection_parameters" UUID="2A04">\r\n        <Field Name="Minimum Connection Interval">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>6</Minimum>\r\n            <Maximum>3200</Maximum>\r\n          </Range>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0x0006</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Maximum Connection Interval">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>6</Minimum>\r\n            <Maximum>3200</Maximum>\r\n          </Range>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0x0C80</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Slave Latency">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>1000</Maximum>\r\n          </Range>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Connection Supervision Timeout Multiplier">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>10</Minimum>\r\n            <Maximum>3200</Maximum>\r\n          </Range>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0x0C80</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="52" DisplayName="Generic Attribute" Name="Generic Attribute" Type="org.bluetooth.service.generic_attribute" UUID="1801">\r\n      <CyCharacteristic ID="53" DisplayName="Service Changed" Name="Service Changed" Type="org.bluetooth.characteristic.gatt.service_changed" UUID="2A05">\r\n        <CyDescriptor ID="54" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="true" />\r\n            <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="Start of Affected Attribute Handle Range">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>1</Minimum>\r\n            <Maximum>65535</Maximum>\r\n          </Range>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="End of Affected Attribute Handle Range">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>1</Minimum>\r\n            <Maximum>65535</Maximum>\r\n          </Range>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="INDICATE" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>NONE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="55" DisplayName="Continuous Glucose Monitoring" Name="Continuous Glucose Monitoring" Type="org.bluetooth.service.continuous_glucose_monitoring" UUID="181F">\r\n      <CyCharacteristic ID="56" DisplayName="CGM Measurement" Name="CGM Measurement" Type="org.bluetooth.characteristic.cgm_measurement" UUID="2AA7">\r\n        <CyDescriptor ID="57" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>1</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>1</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="true" />\r\n            <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="Size">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>14</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Flags">\r\n          <DataFormat>8bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BITFIELD</ValueType>\r\n          <Bit>\r\n            <Name>CGM Trend Information Present</Name>\r\n            <Index>0</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" requires="C1" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>CGM Quality Present</Name>\r\n            <Index>1</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" requires="C2" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Status Annunciation Field, Warning-octet present</Name>\r\n            <Index>5</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" requires="C4" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Status Annunciation Field, Cal/Temp-octet present</Name>\r\n            <Index>6</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" requires="C4" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Status Annunciation Field, Status-octet present</Name>\r\n            <Index>7</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" requires="C4" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="CGM Glucose Concentration">\r\n          <DataFormat>SFLOAT</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.mass_density.milligram_per_decilitre</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>125</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Time Offset">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.time.minute</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>2645</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Sensor Status Annunciation, Warning-octet">\r\n          <DataFormat>8bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BITFIELD</ValueType>\r\n          <Bit>\r\n            <Name>Session Stopped</Name>\r\n            <Index>0</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Device Battery Low</Name>\r\n            <Index>1</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor type incorrect for device</Name>\r\n            <Index>2</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor malfunction</Name>\r\n            <Index>3</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Device Specific Alert</Name>\r\n            <Index>4</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>General device fault has occurred in the sensor</Name>\r\n            <Index>5</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Sensor Status Annunciation, Cal/Temp-octet">\r\n          <DataFormat>8bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BITFIELD</ValueType>\r\n          <Bit>\r\n            <Name>Time synchronization between sensor and collector required</Name>\r\n            <Index>0</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Calibration not allowed</Name>\r\n            <Index>1</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Calibration recommended</Name>\r\n            <Index>2</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Calibration required</Name>\r\n            <Index>3</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Temperature too high for valid test/result at time of measurement</Name>\r\n            <Index>4</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor temperature too low for valid test/result at time of measurement</Name>\r\n            <Index>5</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Sensor Status Annunciation, Status-octet">\r\n          <DataFormat>8bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BITFIELD</ValueType>\r\n          <Bit>\r\n            <Name>Sensor result lower than the Patient Low level</Name>\r\n            <Index>0</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor result higher than the Patient High level</Name>\r\n            <Index>1</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor result lower than the Hypo level</Name>\r\n            <Index>2</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor result higher than the Hyper level</Name>\r\n            <Index>3</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Rate of Decrease exceeded</Name>\r\n            <Index>4</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Rate of Increase exceeded</Name>\r\n            <Index>5</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor result lower than the device can process</Name>\r\n            <Index>6</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor result higher than the device can process</Name>\r\n            <Index>7</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="CGM Trend Information">\r\n          <DataFormat>SFLOAT</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.mass_density.milligram_per_decilitre</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0.74</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="CGM Quality">\r\n          <DataFormat>SFLOAT</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.percentage</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>10.0</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="E2E-CRC">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="NOTIFY" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>NONE</AccessPermission>\r\n          <AutoSyncRead>YES</AutoSyncRead>\r\n          <AutoSyncWrite>YES</AutoSyncWrite>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="58" DisplayName="CGM Feature" Name="CGM Feature" Type="org.bluetooth.characteristic.cgm_feature" UUID="2AA8">\r\n        <Field Name="CGM Feature">\r\n          <DataFormat>24bit</DataFormat>\r\n          <ByteLength>3</ByteLength>\r\n          <ValueType>BITFIELD</ValueType>\r\n          <Bit>\r\n            <Name>Calibration Supported</Name>\r\n            <Index>0</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Patient High/Low Alerts supported</Name>\r\n            <Index>1</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Hypo Alerts supported</Name>\r\n            <Index>2</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Hyper Alerts supported</Name>\r\n            <Index>3</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Rate of Increase/Decrease Alerts supported</Name>\r\n            <Index>4</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Device Specific Alert supported</Name>\r\n            <Index>5</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Malfunction Detection supported</Name>\r\n            <Index>6</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Temperature High-Low Detection supported</Name>\r\n            <Index>7</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Result High-Low Detection supported</Name>\r\n            <Index>8</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Low Battery Detection supported</Name>\r\n            <Index>9</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Sensor Type Error Detection supported</Name>\r\n            <Index>10</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>General Device Fault supported</Name>\r\n            <Index>11</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>E2E-CRC supported</Name>\r\n            <Index>12</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Multiple Bond supported</Name>\r\n            <Index>13</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Multiple Sessions supported</Name>\r\n            <Index>14</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>CGM Trend Information supported</Name>\r\n            <Index>15</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>CGM Quality supported</Name>\r\n            <Index>16</Index>\r\n            <Size>1</Size>\r\n            <Value>1</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="CGM Type">\r\n          <DataFormat>4bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="CGM Sample Location">\r\n          <DataFormat>4bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="E2E-CRC">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0xFFFF</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="59" DisplayName="CGM Status" Name="CGM Status" Type="org.bluetooth.characteristic.cgm_status" UUID="2AA9">\r\n        <Field Name="Time Offset">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.time.minute</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>8640</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="CGM Status">\r\n          <DataFormat>24bit</DataFormat>\r\n          <ByteLength>3</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="E2E-CRC">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="60" DisplayName="CGM Session Start Time" Name="CGM Session Start Time" Type="org.bluetooth.characteristic.cgm_session_start_time" UUID="2AAA">\r\n        <Field Name="Year">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>1582</Minimum>\r\n            <Maximum>9999</Maximum>\r\n          </Range>\r\n          <Unit>org.bluetooth.unit.time.year</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>2024</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Month">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>12</Maximum>\r\n          </Range>\r\n          <Unit>org.bluetooth.unit.time.month</Unit>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>6</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Day">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>31</Maximum>\r\n          </Range>\r\n          <Unit>org.bluetooth.unit.time.day</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>05</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Hours">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>23</Maximum>\r\n          </Range>\r\n          <Unit>org.bluetooth.unit.time.hour</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>08</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Minutes">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>59</Maximum>\r\n          </Range>\r\n          <Unit>org.bluetooth.unit.time.minute</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>10</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Seconds">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>59</Maximum>\r\n          </Range>\r\n          <Unit>org.bluetooth.unit.time.second</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>15</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Time Zone">\r\n          <DataFormat>sint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>-48</Minimum>\r\n            <Maximum>56</Maximum>\r\n          </Range>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>-48</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="DST Offset">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>8</Maximum>\r\n          </Range>\r\n          <ValueType>ENUM</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="E2E-CRC">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n          <Property Type="WRITE" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>READ_WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="61" DisplayName="CGM Session Run Time" Name="CGM Session Run Time" Type="org.bluetooth.characteristic.cgm_session_run_time" UUID="2AAB">\r\n        <Field Name="CGM Session Run Time">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.time.hour</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>15</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="E2E-CRC">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="62" DisplayName="Record Access Control Point" Name="Record Access Control Point" Type="org.bluetooth.characteristic.record_access_control_point" UUID="2A52">\r\n        <CyDescriptor ID="63" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="true" />\r\n            <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="Op Code">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>6</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Operator">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>1</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Operand">\r\n          <DataFormat>variable</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>6</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          <Property Type="INDICATE" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="64" DisplayName="CGM Specific Ops Control Point" Name="CGM Specific Ops Control Point" Type="org.bluetooth.characteristic.cgm_specific_ops_control_point" UUID="2AAC">\r\n        <CyDescriptor ID="65" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="true" />\r\n            <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="Op Code">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>1</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Op Code - Response Codes">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>1</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Operand">\r\n          <DataFormat>variable</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>28</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="E2E-CRC">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Calibration Value - Glucose Concentration of Calibration">\r\n          <DataFormat>SFLOAT</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.mass_density.milligram_per_decilitre</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>111</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Calibration Value - Calibration Time">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.time.minute</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>512</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Calibration Value - Calibration Type">\r\n          <DataFormat>4bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Calibration Value - Calibration Sample Location">\r\n          <DataFormat>4bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Calibration Value - Next Calibration Time">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Unit>org.bluetooth.unit.time.minute</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>300</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Calibration Value - Calibration Data Record Number">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Calibration Value - Calibration Status">\r\n          <DataFormat>8bit</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BITFIELD</ValueType>\r\n          <Bit>\r\n            <Name>Calibration Data rejected (Calibration failed)</Name>\r\n            <Index>0</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Calibration Data out of range</Name>\r\n            <Index>1</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Calibration Process Pending</Name>\r\n            <Index>2</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="False" />\r\n              <Enumeration key="1" value="True" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          <Property Type="INDICATE" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="70" DisplayName="Device Information" Name="Device Information" Type="org.bluetooth.service.device_information" UUID="180A">\r\n      <CyCharacteristic ID="71" DisplayName="Manufacturer Name String" Name="Manufacturer Name String" Type="org.bluetooth.characteristic.manufacturer_name_string" UUID="2A29">\r\n        <Field Name="Manufacturer Name">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>9</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>Medtronic</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="72" DisplayName="Model Number String" Name="Model Number String" Type="org.bluetooth.characteristic.model_number_string" UUID="2A24">\r\n        <Field Name="Model Number">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>10</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>MMT-7911WW</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="75" DisplayName="Serial Number String" Name="Serial Number String" Type="org.bluetooth.characteristic.serial_number_string" UUID="2A25">\r\n        <Field Name="Serial Number">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>10</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>GT8654152M</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="74" DisplayName="Hardware Revision String" Name="Hardware Revision String" Type="org.bluetooth.characteristic.hardware_revision_string" UUID="2A27">\r\n        <Field Name="Hardware Revision">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>5</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>5C1.0</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="76" DisplayName="Firmware Revision String" Name="Firmware Revision String" Type="org.bluetooth.characteristic.firmware_revision_string" UUID="2A26">\r\n        <Field Name="Firmware Revision">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>4</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>1.1A</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="77" DisplayName="Software Revision String" Name="Software Revision String" Type="org.bluetooth.characteristic.software_revision_string" UUID="2A28">\r\n        <Field Name="Software Revision">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>13</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>1.0A.a69cfcd7</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="78" DisplayName="System ID" Name="System ID" Type="org.bluetooth.characteristic.system_id" UUID="2A23">\r\n        <Field Name="Manufacturer Identifier">\r\n          <DataFormat>uint40</DataFormat>\r\n          <ByteLength>5</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>1099511627775</Maximum>\r\n          </Range>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0000000000</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Organizationally Unique Identifier">\r\n          <DataFormat>uint24</DataFormat>\r\n          <ByteLength>3</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>16777215</Maximum>\r\n          </Range>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>10622684</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="79" DisplayName="PnP ID" Name="PnP ID" Type="org.bluetooth.characteristic.pnp_id" UUID="2A50">\r\n        <Field Name="Vendor ID Source">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>1</Minimum>\r\n            <Maximum>2</Maximum>\r\n          </Range>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>1</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Vendor ID">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>505</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Product ID">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Product Version">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>256</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="80" DisplayName="Battery" Name="Battery" Type="org.bluetooth.service.battery_service" UUID="180F">\r\n      <CyCharacteristic ID="81" DisplayName="Battery Level" Name="Battery Level" Type="org.bluetooth.characteristic.battery_level" UUID="2A19">\r\n        <CyDescriptor ID="82" DisplayName="Characteristic Presentation Format" Name="Characteristic Presentation Format" Type="org.bluetooth.descriptor.gatt.characteristic_presentation_format" UUID="2904">\r\n          <Field Name="Format">\r\n            <DataFormat>8bit</DataFormat>\r\n            <ByteLength>1</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>27</Maximum>\r\n            </Range>\r\n            <ValueType>ENUM</ValueType>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Field Name="Exponent">\r\n            <DataFormat>sint8</DataFormat>\r\n            <ByteLength>1</ByteLength>\r\n            <ValueType>BASIC</ValueType>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Field Name="Unit">\r\n            <DataFormat>uint16</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <ValueType>ENUM</ValueType>\r\n            <EnumValue>10035</EnumValue>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Field Name="Namespace">\r\n            <DataFormat>8bit</DataFormat>\r\n            <ByteLength>1</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>1</Maximum>\r\n            </Range>\r\n            <ValueType>ENUM</ValueType>\r\n            <EnumValue>1</EnumValue>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Field Name="Description">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <ValueType>ENUM</ValueType>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="true" />\r\n          </Properties>\r\n          <Permission />\r\n        </CyDescriptor>\r\n        <CyDescriptor ID="83" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="true" />\r\n            <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="Level">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>100</Maximum>\r\n          </Range>\r\n          <Unit>org.bluetooth.unit.percentage</Unit>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>95</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="84" DisplayName="15DBCD61-6388-4C33-B9D8-580254FED03B" Name="Custom Service" Type="org.bluetooth.service.custom" UUID="15DBCD6163884C33B9D8580254FED03B">\r\n      <CyCharacteristic ID="85" DisplayName="C774EDAC-E573-45E1-97C6-8B5C18CC571A" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="C774EDACE57345E197C68B5C18CC571A">\r\n        <CyDescriptor ID="87" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="false" />\r\n            <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="New field">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="true" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>NONE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="88" DisplayName="DE3E5221-1308-439C-A13A-884DDC387CA7" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="DE3E52211308439CA13A884DDC387CA7">\r\n        <Field Name="New field">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="true" Mandatory="false" />\r\n          <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="false" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="90" DisplayName="8484039E-97D3-40C0-BB55-C70C17BADAE2" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="8484039E97D340C0BB55C70C17BADAE2">\r\n        <Field Name="New field">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="false" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="92" DisplayName="FE82" Name="Custom Service" Type="org.bluetooth.service.custom" UUID="FE82">\r\n      <CyCharacteristic ID="93" DisplayName="0000FE82-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="0000FE82000010000000009132591325">\r\n        <CyDescriptor ID="111" DisplayName="Characteristic User Description" Name="Characteristic User Description" Type="org.bluetooth.descriptor.gatt.characteristic_user_description" UUID="2901">\r\n          <Field Name="User Description">\r\n            <DataFormat>utf8s</DataFormat>\r\n            <ByteLength>10</ByteLength>\r\n            <ValueType>BASIC</ValueType>\r\n            <GeneralValue>WritePoint</GeneralValue>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="false" />\r\n            <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          </Properties>\r\n          <Permission />\r\n        </CyDescriptor>\r\n        <CyDescriptor ID="95" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="false" />\r\n            <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="New field">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="true" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="false" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices>\r\n        <int>107</int>\r\n      </IncludedServices>\r\n    </CyService>\r\n    <CyService ID="96" DisplayName="00000300-0000-1000-0000-009132591325" Name="Custom Service" Type="org.bluetooth.service.custom" UUID="00000300000010000000009132591325">\r\n      <CyCharacteristic ID="99" DisplayName="Record Access Control Point" Name="Record Access Control Point" Type="org.bluetooth.characteristic.record_access_control_point" UUID="2A52">\r\n        <CyDescriptor ID="100" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="false" />\r\n            <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="Op Code">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Operator">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Operand">\r\n          <DataFormat>variable</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="true" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="101" DisplayName="00000360-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="00000360000010000000009132591325">\r\n        <CyDescriptor ID="103" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="false" />\r\n            <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="New field">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="true" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="104" DisplayName="00000350-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="00000350000010000000009132591325">\r\n        <CyDescriptor ID="106" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="false" />\r\n            <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="New field">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="false" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>NONE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="107" DisplayName="Bond Management" Name="Bond Management" Type="org.bluetooth.service.bond_management" UUID="181E">\r\n      <CyCharacteristic ID="108" DisplayName="Bond Management Control Point" Name="Bond Management Control Point" Type="org.bluetooth.characteristic.bond_management_control_point" UUID="2AA4">\r\n        <Field Name="Op Code">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <EnumValue>1</EnumValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Operand">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>0</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="110" DisplayName="Bond Management Features" Name="Bond Management Features" Type="org.bluetooth.characteristic.bond_management_feature" UUID="2AA5">\r\n        <Field Name="Bond Management Features">\r\n          <DataFormat>24bit</DataFormat>\r\n          <ByteLength>3</ByteLength>\r\n          <ValueType>BITFIELD</ValueType>\r\n          <Bit>\r\n            <Name>Delete Bond of current connection (BR/EDR and LE) supported</Name>\r\n            <Index>0</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>1</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Delete bond  of current connection (BR/EDR transport only) supported</Name>\r\n            <Index>2</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>3</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Delete bond  of current connection (LE transport only) supported</Name>\r\n            <Index>4</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>5</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Remove all bonds on server (BR/EDR and LE) supported</Name>\r\n            <Index>6</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>7</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Remove all bonds on server (BR/EDR transport only) supported</Name>\r\n            <Index>8</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>9</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Remove all bonds on server (LE transport only) supported</Name>\r\n            <Index>10</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>11</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Remove all but the active bond on server (BR/EDR and LE) supported</Name>\r\n            <Index>12</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>13</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Remove all but the active bond on server (BR/EDR transport only) supported</Name>\r\n            <Index>14</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>15</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Remove all but the active bond on server (LE transport only) supported</Name>\r\n            <Index>16</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Authorization Code required for feature above</Name>\r\n            <Index>17</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Identify yourself supported</Name>\r\n            <Index>18</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <Bit>\r\n            <Name>Feature Extension</Name>\r\n            <Index>23</Index>\r\n            <Size>1</Size>\r\n            <Value>0</Value>\r\n            <Enumerations>\r\n              <Enumeration key="0" value="false" />\r\n              <Enumeration key="1" value="true" />\r\n            </Enumerations>\r\n          </Bit>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <Declaration>PrimarySingleInstance</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <ProfileRoleIndex>0</ProfileRoleIndex>\r\n    <RoleType>SERVER</RoleType>\r\n  </CyProfileRole>\r\n  <GapRole>PERIPHERAL</GapRole>\r\n</Profile>, SharingMode=0, StackMode=3, StrictPairing=false, UseDeepSleep=true, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=BLE_v3_66, CY_CONFIG_TITLE=BLE, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=BLE_v3_66.pdf, CY_FITTER_NAME=BLE, CY_INSTANCE_SHORT_NAME=BLE, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=66, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=BLE, )
module BLE_v3_66_0 (
    clk,
    pa_en);
    output      clk;
    output      pa_en;


          wire  Net_89;
          wire  Net_107;
          wire  Net_106;
          wire  Net_105;
          wire  Net_93;
          wire  Net_92;
          wire  Net_91;
          wire  Net_101;
          wire  Net_104;
          wire  Net_102;
          wire  Net_103;
          wire  Net_90;
          wire  Net_100;
          wire  Net_99;
          wire  Net_98;
          wire  Net_97;
          wire  Net_96;
          wire  Net_95;
          wire  Net_94;
          wire  Net_88;
          wire  Net_70;
          wire  Net_15;
          wire  Net_14;
          wire  Net_53;
          wire  Net_60;
          wire  Net_55;

    cy_m0s8_ble_v1_0 cy_m0s8_ble (
        .interrupt(Net_15),
        .rf_ext_pa_en(pa_en));


	cy_isr_v1_0
		#(.int_type(2'b10))
		bless_isr
		 (.int_signal(Net_15));



	cy_clock_v1_0
		#(.id("3527d504-df48-4b2c-bb03-bb06b815b4b6/5ae6fa4d-f41a-4a35-8821-7ce70389cb0c"),
		  .source_clock_id("9A908CA6-5BB3-4db0-B098-959E5D90882B"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(0))
		LFCLK
		 (.clock_out(Net_53));



    assign clk = Net_55 | Net_53;

    assign Net_55 = 1'h0;



endmodule

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// SCB_P4_v4_0(ApplySbClockParam=false, BitWidthReplacementStringRx=uint8, BitWidthReplacementStringTx=uint8, BufNum=1, Cond=#, DBGW_SCB_IP_V0=false, DBGW_SCB_IP_V1=false, DBGW_SCB_IP_V2=true, DW_Hide_i2c=true, DW_Hide_Scbv0Feature=true, DW_Hide_Scbv2Feature=false, DW_Hide_Spi=true, DW_Hide_Uart=false, DW_Hide_UartFlowControl=false, DW_INTR_SPI_EC=, DW_INTR_SPI_EC_MASK=, DW_INTR_SPI_EC_MASKED=, DW_SPI_CTRL=, DW_SPI_STATUS=, DW_UART_CTRL=UART_DEB_SCB__UART_CTRL, DW_UART_FLOW_CTRL=UART_DEB_SCB__UART_FLOW_CTRL, DW_UART_RX_CTRL=UART_DEB_SCB__UART_RX_CTRL, DW_UART_TX_CTRL=UART_DEB_SCB__UART_TX_CTRL, EndCond=#endif, EzI2cBitWidthReplacementString=uint16, EzI2cBusVoltage=3.3, EzI2cByteModeEnable=false, EzI2cClkFreqDes=1550, EzI2cClockFromTerm=false, EzI2cClockStretching=true, EzI2cDataRate=100, EzI2cIsPrimarySlaveAddressHex=true, EzI2cIsSecondarySlaveAddressHex=true, EzI2cMedianFilterEnable=true, EzI2cNumberOfAddresses=0, EzI2cOvsFactor=16, EzI2cPrimarySlaveAddress=8, EzI2cSecondarySlaveAddress=9, EzI2cShowTerminals=false, EzI2cSlaveAddressMask=254, EzI2cSlewRate=0, EzI2cSubAddressSize=0, EzI2cWakeEnable=false, I2cAcceptAddress=false, I2cAcceptGeneralCall=false, I2cBusVoltage=3.3, I2cBusVoltageLevel=, I2cByteModeEnable=false, I2cClkFreqDes=1550, I2cClockFromTerm=false, I2cDataRate=100, I2cExternIntrHandler=false, I2cIsSlaveAddressHex=true, I2cIsSlaveAddressMaskHex=true, I2cManualOversampleControl=true, I2cMedianFilterEnable=true, I2cMode=1, I2cOvsFactor=16, I2cOvsFactorHigh=8, I2cOvsFactorLow=8, I2cShowTerminals=false, I2cSlaveAddress=8, I2cSlaveAddressMask=254, I2cSlewRate=0, I2cSlewRateSettings=0, I2cTermsEnable=false, I2cWakeEnable=false, PinLocationP4A=false, PinName0Unconfig=uart_rx_i2c_sda_spi_mosi, PinName0UnconfigWake=uart_rx_wake_i2c_sda_spi_mosi, PinName1Unconfig=uart_tx_i2c_scl_spi_miso, PinName2Unconfig=uart_cts_spi_sclk, PinName3Unconfig=uart_rts_spi_ss0, Pn0Unconfig=RX_SDA_MOSI, Pn0UnconfigWake=RX_WAKE_SDA_MOSI, Pn1Unconfig=TX_SCL_MISO, Pn2Unconfig=CTS_SCLK, Pn3Unconfig=RTS_SS0, RemoveI2cPins=true, RemoveMisoSdaTx=true, RemoveMosiSclRx=true, RemoveMosiSclRxWake=true, RemoveScbClk=false, RemoveScbIrq=true, RemoveSpiMasterMiso=true, RemoveSpiMasterMosi=true, RemoveSpiMasterPins=true, RemoveSpiMasterSclk=true, RemoveSpiMasterSs0Pin=true, RemoveSpiMasterSs1Pin=true, RemoveSpiMasterSs2Pin=true, RemoveSpiMasterSs3Pin=true, RemoveSpiSclk=true, RemoveSpiSlaveMiso=true, RemoveSpiSlaveMosi=true, RemoveSpiSlavePins=true, RemoveSpiSs0=true, RemoveSpiSs1=true, RemoveSpiSs2=true, RemoveSpiSs3=true, RemoveUartCtsPin=true, RemoveUartRtsPin=true, RemoveUartRxPin=false, RemoveUartRxTxPin=true, RemoveUartRxWake=true, RemoveUartRxWakeupIrq=true, RemoveUartTxPin=false, RxTriggerOutputEnable=false, ScbClkFreqDes=1843.2, ScbClkMinusTolerance=5, ScbClkPlusTolerance=5, ScbClockSelect=1, ScbClockTermEnable=false, ScbCustomIntrHandlerEnable=true, ScbInterruptTermEnable=false, ScbMisoSdaTxEnable=true, ScbMode=4, ScbModeHw=2, ScbMosiSclRxEnable=true, ScbRxWakeIrqEnable=false, ScbSclkEnable=false, ScbSs0Enable=false, ScbSs1Enable=false, ScbSs2Enable=false, ScbSs3Enable=false, ScbSymbolVisibility=0, SpiBitRate=1000, SpiBitsOrder=1, SpiByteModeEnable=false, SpiClkFreqDes=16000, SpiClockFromTerm=false, SpiFreeRunningSclk=false, SpiInterruptMode=0, SpiIntrMasterSpiDone=false, SpiIntrRxFull=false, SpiIntrRxNotEmpty=false, SpiIntrRxOverflow=false, SpiIntrRxTrigger=false, SpiIntrRxUnderflow=false, SpiIntrSlaveBusError=false, SpiIntrTxEmpty=false, SpiIntrTxNotFull=false, SpiIntrTxOverflow=false, SpiIntrTxTrigger=false, SpiIntrTxUnderflow=false, SpiLateMisoSampleEnable=false, SpiManualOversampleControl=true, SpiMasterMode=false, SpiMedianFilterEnable=false, SpimMisoTermEnable=false, SpimMosiTermEnable=false, SpiMode=0, SpimSclkTermEnable=false, SpimSs0TermEnable=false, SpimSs1TermEnable=false, SpimSs2TermEnable=false, SpimSs3TermEnable=false, SpiNumberOfRxDataBits=8, SpiNumberOfSelectLines=1, SpiNumberOfTxDataBits=8, SpiOvsFactor=16, SpiRemoveMiso=false, SpiRemoveMosi=false, SpiRemoveSclk=false, SpiRxBufferSize=8, SpiRxIntrMask=0, SpiRxOutputEnable=false, SpiRxTriggerLevel=7, SpiSclkMode=0, SpiSlaveMode=false, SpiSmartioEnable=false, SpisMisoTermEnable=false, SpisMosiTermEnable=false, SpiSs0Polarity=0, SpiSs1Polarity=0, SpiSs2Polarity=0, SpiSs3Polarity=0, SpisSclkTermEnable=false, SpisSsTermEnable=false, SpiSubMode=0, SpiTransferSeparation=1, SpiTxBufferSize=8, SpiTxIntrMask=0, SpiTxOutputEnable=false, SpiTxTriggerLevel=0, SpiWakeEnable=false, TriggerOutputEnable=false, TxTriggerOutputEnable=false, UartByteModeEnable=false, UartClkFreqDes=1843.2, UartClockFromTerm=false, UartCtsEnable=false, UartCtsPolarity=0, UartCtsTermEnable=false, UartDataRate=115200, UartDirection=3, UartDropOnFrameErr=false, UartDropOnParityErr=false, UartInterruptMode=0, UartIntrRxBreakDetected=false, UartIntrRxFrameErr=false, UartIntrRxFull=false, UartIntrRxNotEmpty=false, UartIntrRxOverflow=false, UartIntrRxParityErr=false, UartIntrRxTrigger=false, UartIntrRxUnderflow=false, UartIntrTxEmpty=false, UartIntrTxNotFull=false, UartIntrTxOverflow=false, UartIntrTxTrigger=false, UartIntrTxUartDone=false, UartIntrTxUartLostArb=false, UartIntrTxUartNack=false, UartIntrTxUnderflow=false, UartIrdaLowPower=false, UartIrdaPolarity=0, UartMedianFilterEnable=false, UartMpEnable=false, UartMpRxAcceptAddress=false, UartMpRxAddress=2, UartMpRxAddressMask=255, UartNumberOfDataBits=8, UartNumberOfStopBits=2, UartOvsFactor=16, UartParityType=2, UartRtsEnable=false, UartRtsPolarity=0, UartRtsTermEnable=false, UartRtsTriggerLevel=4, UartRxBreakWidth=11, UartRxBufferSize=8, UartRxEnable=true, UartRxIntrMask=0, UartRxOutputEnable=false, UartRxTermEnable=false, UartRxTriggerLevel=7, UartRxTxTermEnable=false, UartSmartioEnable=false, UartSmCardRetryOnNack=false, UartSubMode=0, UartTxBufferSize=8, UartTxEnable=true, UartTxIntrMask=0, UartTxOutputEnable=false, UartTxTermEnable=false, UartTxTriggerLevel=0, UartWakeEnable=false, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=SCB_P4_v4_0, CY_CONFIG_TITLE=UART_DEB, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=UART_DEB, CY_INSTANCE_SHORT_NAME=UART_DEB, CY_MAJOR_VERSION=4, CY_MINOR_VERSION=0, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=UART_DEB, )
module SCB_P4_v4_0_1 (
    clock,
    cts_in,
    interrupt,
    m_miso,
    m_mosi,
    m_sclk,
    m_ss0,
    m_ss1,
    m_ss2,
    m_ss3,
    rts_out,
    rx_dma_out,
    rx_in,
    rx_tx_out,
    s_miso,
    s_mosi,
    s_sclk,
    s_ss,
    scl_b,
    sda_b,
    tx_dma_out,
    tx_out);
    input       clock;
    input       cts_in;
    output      interrupt;
    input       m_miso;
    output      m_mosi;
    output      m_sclk;
    output      m_ss0;
    output      m_ss1;
    output      m_ss2;
    output      m_ss3;
    output      rts_out;
    output      rx_dma_out;
    input       rx_in;
    output      rx_tx_out;
    output      s_miso;
    input       s_mosi;
    input       s_sclk;
    input       s_ss;
    inout       scl_b;
    inout       sda_b;
    output      tx_dma_out;
    output      tx_out;


          wire  uncfg_rx_irq;
          wire  sclk_m_wire;
          wire  Net_1264;
          wire  Net_1258;
          wire  rx_irq;
          wire [3:0] select_m_wire;
          wire  Net_1099;
          wire  Net_1090;
          wire  Net_467;
          wire  Net_1316;
          wire  Net_252;
          wire  Net_1089;
          wire  Net_1320;
          wire  Net_1257;
          wire  sclk_s_wire;
          wire  Net_1268;
          wire  Net_1297;
          wire  Net_547;
          wire  Net_1001;
          wire  mosi_s_wire;
          wire  rts_wire;
          wire  mosi_m_wire;
          wire  Net_891;
          wire  Net_1263;
          wire  miso_s_wire;
          wire  cts_wire;
          wire  Net_899;
          wire  tx_wire;
          wire  Net_1028;
          wire  rx_wire;
          wire  Net_916;
          wire  Net_1000;
          wire  miso_m_wire;
          wire  Net_1172;
          wire  Net_1170;
          wire  select_s_wire;
          wire  Net_847;


	cy_clock_v1_0
		#(.id("b6c4ba10-484f-4f12-9949-5dd0bc328ee3/2dc2d7a8-ce2b-43c7-af4a-821c8cd73ccf"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("542534722.222222"),
		  .is_direct(0),
		  .is_digital(0))
		SCBCLK
		 (.clock_out(Net_847));


	// select_s_VM (cy_virtualmux_v1_0)
	assign select_s_wire = s_ss;

	// rx_VM (cy_virtualmux_v1_0)
	assign rx_wire = Net_1268;

	// rx_wake_VM (cy_virtualmux_v1_0)
	assign Net_1257 = uncfg_rx_irq;

	// clock_VM (cy_virtualmux_v1_0)
	assign Net_1170 = Net_847;

	// sclk_s_VM (cy_virtualmux_v1_0)
	assign sclk_s_wire = s_sclk;

	// mosi_s_VM (cy_virtualmux_v1_0)
	assign mosi_s_wire = s_mosi;

	// miso_m_VM (cy_virtualmux_v1_0)
	assign miso_m_wire = m_miso;

	wire [0:0] tmpOE__tx_net;
	wire [0:0] tmpFB_0__tx_net;
	wire [0:0] tmpIO_0__tx_net;
	wire [0:0] tmpINTERRUPT_0__tx_net;
	electrical [0:0] tmpSIOVREF__tx_net;

	cy_psoc3_pins_v1_10
		#(.id("b6c4ba10-484f-4f12-9949-5dd0bc328ee3/23b8206d-1c77-4e61-be4a-b4037d5de5fc"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("B"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		tx
		 (.oe(tmpOE__tx_net),
		  .y({tx_wire}),
		  .fb({tmpFB_0__tx_net[0:0]}),
		  .io({tmpIO_0__tx_net[0:0]}),
		  .siovref(tmpSIOVREF__tx_net),
		  .interrupt({tmpINTERRUPT_0__tx_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__tx_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_1099));


    assign Net_1258 = Net_1099 | Net_847;

	wire [0:0] tmpOE__rx_net;
	wire [0:0] tmpIO_0__rx_net;
	wire [0:0] tmpINTERRUPT_0__rx_net;
	electrical [0:0] tmpSIOVREF__rx_net;

	cy_psoc3_pins_v1_10
		#(.id("b6c4ba10-484f-4f12-9949-5dd0bc328ee3/78e33e5d-45ea-4b75-88d5-73274e8a7ce4"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		rx
		 (.oe(tmpOE__rx_net),
		  .y({1'b0}),
		  .fb({Net_1268}),
		  .io({tmpIO_0__rx_net[0:0]}),
		  .siovref(tmpSIOVREF__rx_net),
		  .interrupt({tmpINTERRUPT_0__rx_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__rx_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	// cts_VM (cy_virtualmux_v1_0)
	assign cts_wire = cts_in;

    cy_m0s8_scb_v2_0 SCB (
        .clock(Net_1170),
        .cts(cts_wire),
        .interrupt(interrupt),
        .miso_m(miso_m_wire),
        .miso_s(miso_s_wire),
        .mosi_m(mosi_m_wire),
        .mosi_s(mosi_s_wire),
        .rts(rts_wire),
        .rx(rx_wire),
        .rx_req(rx_dma_out),
        .scl(scl_b),
        .sclk_m(sclk_m_wire),
        .sclk_s(sclk_s_wire),
        .sda(sda_b),
        .select_m(select_m_wire[3:0]),
        .select_s(select_s_wire),
        .tx(tx_wire),
        .tx_req(tx_dma_out));
    defparam SCB.scb_mode = 2;

	// Device_VM4 (cy_virtualmux_v1_0)
	assign uncfg_rx_irq = Net_1000;


    assign m_mosi = mosi_m_wire;

    assign m_sclk = sclk_m_wire;

    assign m_ss0 = select_m_wire[0];

    assign m_ss1 = select_m_wire[1];

    assign m_ss2 = select_m_wire[2];

    assign m_ss3 = select_m_wire[3];

    assign rts_out = rts_wire;

    assign rx_tx_out = tx_wire;

    assign s_miso = miso_s_wire;

    assign tx_out = tx_wire;


endmodule

// top
module top ;

          wire  Net_111;
          wire  Net_117;
          wire  Net_116;
          wire  Net_115;
          wire  Net_110;
          wire  Net_109;
          wire  Net_108;
          wire  Net_107;
          wire  Net_114;
          wire  Net_105;
          wire  Net_113;
          wire  Net_104;
          wire  Net_103;
          wire  Net_102;
          wire  Net_101;
          wire  Net_100;
          wire  Net_99;
          wire  Net_98;
          wire  Net_97;
          wire  Net_96;
          wire  Net_95;
          wire  Net_94;
          wire  Net_93;
          wire  Net_92;
    electrical  Net_185;
    electrical  Net_184;
          wire  Net_142;
    electrical  Net_67;
    electrical  Net_66;
    electrical  Net_204;
    electrical  Net_202;
    electrical  Net_9;
    electrical  Net_53;
    electrical  Net_8;

    cy_annotation_universal_v1_0 SW_2 (
        .connect({
            Net_184,
            Net_185
        })
    );
    defparam SW_2.comp_name = "SwitchSPST_v1_0";
    defparam SW_2.port_names = "T1, T2";
    defparam SW_2.width = 2;

	wire [0:0] tmpOE__SW2_net;
	wire [0:0] tmpFB_0__SW2_net;
	wire [0:0] tmpIO_0__SW2_net;
	electrical [0:0] tmpSIOVREF__SW2_net;

	cy_psoc3_pins_v1_10
		#(.id("8fa79817-b12d-448f-a0b1-e7b0699024f4"),
		  .drive_mode(3'b010),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b10),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b1),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SW2
		 (.oe(tmpOE__SW2_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__SW2_net[0:0]}),
		  .io({tmpIO_0__SW2_net[0:0]}),
		  .siovref(tmpSIOVREF__SW2_net),
		  .interrupt({Net_142}),
		  .annotation({Net_184}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SW2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    BLE_v3_66_0 BLE (
        .clk(Net_92),
        .pa_en(Net_93));

    cy_annotation_universal_v1_0 Green (
        .connect({
            Net_53,
            Net_8
        })
    );
    defparam Green.comp_name = "LED_v1_0";
    defparam Green.port_names = "A, K";
    defparam Green.width = 2;

    cy_annotation_universal_v1_0 R_3 (
        .connect({
            Net_204,
            Net_9
        })
    );
    defparam R_3.comp_name = "Resistor_v1_0";
    defparam R_3.port_names = "T1, T2";
    defparam R_3.width = 2;

    cy_annotation_universal_v1_0 R_2 (
        .connect({
            Net_202,
            Net_8
        })
    );
    defparam R_2.comp_name = "Resistor_v1_0";
    defparam R_2.port_names = "T1, T2";
    defparam R_2.width = 2;

    cy_annotation_universal_v1_0 Red (
        .connect({
            Net_53,
            Net_9
        })
    );
    defparam Red.comp_name = "LED_v1_0";
    defparam Red.port_names = "A, K";
    defparam Red.width = 2;

    cy_annotation_universal_v1_0 PWR_1 (
        .connect({
            Net_53
        })
    );
    defparam PWR_1.comp_name = "Power_v1_0";
    defparam PWR_1.port_names = "T1";
    defparam PWR_1.width = 1;

	wire [0:0] tmpOE__Disconnect_LED_net;
	wire [0:0] tmpFB_0__Disconnect_LED_net;
	wire [0:0] tmpIO_0__Disconnect_LED_net;
	wire [0:0] tmpINTERRUPT_0__Disconnect_LED_net;
	electrical [0:0] tmpSIOVREF__Disconnect_LED_net;

	cy_psoc3_pins_v1_10
		#(.id("d705aeb9-258f-430b-ae5b-ef2b8547e6d1"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b1),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Disconnect_LED
		 (.oe(tmpOE__Disconnect_LED_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Disconnect_LED_net[0:0]}),
		  .io({tmpIO_0__Disconnect_LED_net[0:0]}),
		  .siovref(tmpSIOVREF__Disconnect_LED_net),
		  .interrupt({tmpINTERRUPT_0__Disconnect_LED_net[0:0]}),
		  .annotation({Net_204}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Disconnect_LED_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Advertising_LED_net;
	wire [0:0] tmpFB_0__Advertising_LED_net;
	wire [0:0] tmpIO_0__Advertising_LED_net;
	wire [0:0] tmpINTERRUPT_0__Advertising_LED_net;
	electrical [0:0] tmpSIOVREF__Advertising_LED_net;

	cy_psoc3_pins_v1_10
		#(.id("52f31aa9-2f0a-497d-9a1f-1424095e13e6"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b1),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Advertising_LED
		 (.oe(tmpOE__Advertising_LED_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Advertising_LED_net[0:0]}),
		  .io({tmpIO_0__Advertising_LED_net[0:0]}),
		  .siovref(tmpSIOVREF__Advertising_LED_net),
		  .interrupt({tmpINTERRUPT_0__Advertising_LED_net[0:0]}),
		  .annotation({Net_202}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Advertising_LED_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    SCB_P4_v4_0_1 UART_DEB (
        .clock(1'b0),
        .cts_in(1'b0),
        .interrupt(Net_96),
        .m_miso(1'b0),
        .m_mosi(Net_98),
        .m_sclk(Net_99),
        .m_ss0(Net_100),
        .m_ss1(Net_101),
        .m_ss2(Net_102),
        .m_ss3(Net_103),
        .rts_out(Net_104),
        .rx_dma_out(Net_113),
        .rx_in(1'b0),
        .rx_tx_out(Net_114),
        .s_miso(Net_107),
        .s_mosi(1'b0),
        .s_sclk(1'b0),
        .s_ss(1'b0),
        .scl_b(Net_115),
        .sda_b(Net_116),
        .tx_dma_out(Net_117),
        .tx_out(Net_111));

    cy_annotation_universal_v1_0 GND_1 (
        .connect({
            Net_185
        })
    );
    defparam GND_1.comp_name = "Gnd_v1_0";
    defparam GND_1.port_names = "T1";
    defparam GND_1.width = 1;


	cy_isr_v1_0
		#(.int_type(2'b10))
		Wakeup_Interrupt
		 (.int_signal(Net_142));


	wire [0:0] tmpOE__Connected_LED_net;
	wire [0:0] tmpFB_0__Connected_LED_net;
	wire [0:0] tmpIO_0__Connected_LED_net;
	wire [0:0] tmpINTERRUPT_0__Connected_LED_net;
	electrical [0:0] tmpSIOVREF__Connected_LED_net;

	cy_psoc3_pins_v1_10
		#(.id("774f923b-dc40-401e-b094-016995dc498a"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b1),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Connected_LED
		 (.oe(tmpOE__Connected_LED_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Connected_LED_net[0:0]}),
		  .io({tmpIO_0__Connected_LED_net[0:0]}),
		  .siovref(tmpSIOVREF__Connected_LED_net),
		  .interrupt({tmpINTERRUPT_0__Connected_LED_net[0:0]}),
		  .annotation({Net_66}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Connected_LED_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_annotation_universal_v1_0 R_1 (
        .connect({
            Net_66,
            Net_67
        })
    );
    defparam R_1.comp_name = "Resistor_v1_0";
    defparam R_1.port_names = "T1, T2";
    defparam R_1.width = 2;

    cy_annotation_universal_v1_0 Blue (
        .connect({
            Net_53,
            Net_67
        })
    );
    defparam Blue.comp_name = "LED_v1_0";
    defparam Blue.port_names = "A, K";
    defparam Blue.width = 2;



endmodule

