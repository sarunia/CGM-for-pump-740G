<?xml version="1.0" encoding="utf-16"?>
<Profile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" ID="1" DisplayName="Continuous Glucose Monitoring" Name="Continuous Glucose Monitoring" Type="org.bluetooth.profile.continuous_glucose_monitoring">
  <CyProfileRole ID="46" DisplayName="CGM Sensor" Name="CGM Sensor">
    <CyService ID="47" DisplayName="Generic Access" Name="Generic Access" Type="org.bluetooth.service.generic_access" UUID="1800">
      <CyCharacteristic ID="48" DisplayName="Device Name" Name="Device Name" Type="org.bluetooth.characteristic.gap.device_name" UUID="2A00">
        <Field Name="Name">
          <DataFormat>utf8s</DataFormat>
          <ByteLength>14</ByteLength>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <GeneralValue>CGM GT1234567M</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="49" DisplayName="Appearance" Name="Appearance" Type="org.bluetooth.characteristic.gap.appearance" UUID="2A01">
        <Field Name="Category">
          <DataFormat>16bit</DataFormat>
          <ByteLength>2</ByteLength>
          <FillRequirement>C1</FillRequirement>
          <ValueType>ENUM</ValueType>
          <EnumValue>1024</EnumValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="50" DisplayName="Peripheral Preferred Connection Parameters" Name="Peripheral Preferred Connection Parameters" Type="org.bluetooth.characteristic.gap.peripheral_preferred_connection_parameters" UUID="2A04">
        <Field Name="Minimum Connection Interval">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>6</Minimum>
            <Maximum>3200</Maximum>
          </Range>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <GeneralValue>0x0006</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Maximum Connection Interval">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>6</Minimum>
            <Maximum>3200</Maximum>
          </Range>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <GeneralValue>0x0C80</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Slave Latency">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>1000</Maximum>
          </Range>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <GeneralValue>0</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Connection Supervision Timeout Multiplier">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>10</Minimum>
            <Maximum>3200</Maximum>
          </Range>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <GeneralValue>0x0C80</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="52" DisplayName="Generic Attribute" Name="Generic Attribute" Type="org.bluetooth.service.generic_attribute" UUID="1801">
      <CyCharacteristic ID="53" DisplayName="Service Changed" Name="Service Changed" Type="org.bluetooth.characteristic.gatt.service_changed" UUID="2A05">
        <CyDescriptor ID="54" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
            <ArrayValue />
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="true" />
            <Property Type="WRITE" Present="true" Mandatory="true" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="Start of Affected Attribute Handle Range">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>1</Minimum>
            <Maximum>65535</Maximum>
          </Range>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="End of Affected Attribute Handle Range">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>1</Minimum>
            <Maximum>65535</Maximum>
          </Range>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="INDICATE" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AccessPermission>NONE</AccessPermission>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="122" DisplayName="Continuous Glucose Monitoring" Name="Custom Service" Type="org.bluetooth.service.custom" UUID="181F">
      <CyCharacteristic ID="125" DisplayName="CGM Measurement" Name="CGM Measurement" Type="org.bluetooth.characteristic.cgm_measurement" UUID="2AA7">
        <CyDescriptor ID="137" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="Size">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>14</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Flags">
          <DataFormat>8bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BITFIELD</ValueType>
          <Bit>
            <Name>CGM Trend Information Present</Name>
            <Index>0</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" requires="C1" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>CGM Quality Present</Name>
            <Index>1</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" requires="C2" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Status Annunciation Field, Warning-octet present</Name>
            <Index>5</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" requires="C4" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Status Annunciation Field, Cal/Temp-octet present</Name>
            <Index>6</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" requires="C4" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Status Annunciation Field, Status-octet present</Name>
            <Index>7</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" requires="C4" />
            </Enumerations>
          </Bit>
          <ArrayValue />
        </Field>
        <Field Name="CGM Glucose Concentration">
          <DataFormat>SFLOAT</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.mass_density.milligram_per_decilitre</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>125</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Time Offset">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.time.minute</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>2645</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Sensor Status Annunciation, Warning-octet">
          <DataFormat>8bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BITFIELD</ValueType>
          <Bit>
            <Name>Session Stopped</Name>
            <Index>0</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Device Battery Low</Name>
            <Index>1</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor type incorrect for device</Name>
            <Index>2</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor malfunction</Name>
            <Index>3</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Device Specific Alert</Name>
            <Index>4</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>General device fault has occurred in the sensor</Name>
            <Index>5</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <ArrayValue />
        </Field>
        <Field Name="Sensor Status Annunciation, Cal/Temp-octet">
          <DataFormat>8bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BITFIELD</ValueType>
          <Bit>
            <Name>Time synchronization between sensor and collector required</Name>
            <Index>0</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Calibration not allowed</Name>
            <Index>1</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Calibration recommended</Name>
            <Index>2</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Calibration required</Name>
            <Index>3</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Temperature too high for valid test/result at time of measurement</Name>
            <Index>4</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor temperature too low for valid test/result at time of measurement</Name>
            <Index>5</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <ArrayValue />
        </Field>
        <Field Name="Sensor Status Annunciation, Status-octet">
          <DataFormat>8bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BITFIELD</ValueType>
          <Bit>
            <Name>Sensor result lower than the Patient Low level</Name>
            <Index>0</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor result higher than the Patient High level</Name>
            <Index>1</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor result lower than the Hypo level</Name>
            <Index>2</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor result higher than the Hyper level</Name>
            <Index>3</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Rate of Decrease exceeded</Name>
            <Index>4</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Rate of Increase exceeded</Name>
            <Index>5</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor result lower than the device can process</Name>
            <Index>6</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor result higher than the device can process</Name>
            <Index>7</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <ArrayValue />
        </Field>
        <Field Name="CGM Trend Information">
          <DataFormat>SFLOAT</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.mass_density.milligram_per_decilitre</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>0.74</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="CGM Quality">
          <DataFormat>SFLOAT</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.percentage</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>10.0</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="E2E-CRC">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="true" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="126" DisplayName="CGM Feature" Name="CGM Feature" Type="org.bluetooth.characteristic.cgm_feature" UUID="2AA8">
        <Field Name="CGM Feature">
          <DataFormat>24bit</DataFormat>
          <ByteLength>3</ByteLength>
          <ValueType>BITFIELD</ValueType>
          <Bit>
            <Name>Calibration Supported</Name>
            <Index>0</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Patient High/Low Alerts supported</Name>
            <Index>1</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Hypo Alerts supported</Name>
            <Index>2</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Hyper Alerts supported</Name>
            <Index>3</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Rate of Increase/Decrease Alerts supported</Name>
            <Index>4</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Device Specific Alert supported</Name>
            <Index>5</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Malfunction Detection supported</Name>
            <Index>6</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Temperature High-Low Detection supported</Name>
            <Index>7</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Result High-Low Detection supported</Name>
            <Index>8</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Low Battery Detection supported</Name>
            <Index>9</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Sensor Type Error Detection supported</Name>
            <Index>10</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>General Device Fault supported</Name>
            <Index>11</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>E2E-CRC supported</Name>
            <Index>12</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Multiple Bond supported</Name>
            <Index>13</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Multiple Sessions supported</Name>
            <Index>14</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>CGM Trend Information supported</Name>
            <Index>15</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>CGM Quality supported</Name>
            <Index>16</Index>
            <Size>1</Size>
            <Value>1</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <ArrayValue />
        </Field>
        <Field Name="CGM Type">
          <DataFormat>4bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <EnumValue>2</EnumValue>
          <ArrayValue />
        </Field>
        <Field Name="CGM Sample Location">
          <DataFormat>4bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <EnumValue>5</EnumValue>
          <ArrayValue />
        </Field>
        <Field Name="E2E-CRC">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <GeneralValue>0xFFFF</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="true" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="false" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="128" DisplayName="CGM Status" Name="CGM Status" Type="org.bluetooth.characteristic.cgm_status" UUID="2AA9">
        <Field Name="Time Offset">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.time.minute</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>8640</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="CGM Status">
          <DataFormat>24bit</DataFormat>
          <ByteLength>3</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="E2E-CRC">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="true" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="false" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="129" DisplayName="CGM Session Start Time" Name="CGM Session Start Time" Type="org.bluetooth.characteristic.cgm_session_start_time" UUID="2AAA">
        <Field Name="Year">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>1582</Minimum>
            <Maximum>9999</Maximum>
          </Range>
          <Unit>org.bluetooth.unit.time.year</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>2024</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Month">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>12</Maximum>
          </Range>
          <Unit>org.bluetooth.unit.time.month</Unit>
          <ValueType>ENUM</ValueType>
          <EnumValue>6</EnumValue>
          <ArrayValue />
        </Field>
        <Field Name="Day">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>31</Maximum>
          </Range>
          <Unit>org.bluetooth.unit.time.day</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>23</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Hours">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>23</Maximum>
          </Range>
          <Unit>org.bluetooth.unit.time.hour</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>13</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Minutes">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>59</Maximum>
          </Range>
          <Unit>org.bluetooth.unit.time.minute</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>15</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Seconds">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>59</Maximum>
          </Range>
          <Unit>org.bluetooth.unit.time.second</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>15</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Time Zone">
          <DataFormat>sint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>-48</Minimum>
            <Maximum>56</Maximum>
          </Range>
          <ValueType>ENUM</ValueType>
          <EnumValue>4</EnumValue>
          <ArrayValue />
        </Field>
        <Field Name="DST Offset">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>8</Maximum>
          </Range>
          <ValueType>ENUM</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="E2E-CRC">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="true" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="true" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="false" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>READ_WRITE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="130" DisplayName="CGM Session Run Time" Name="CGM Session Run Time" Type="org.bluetooth.characteristic.cgm_session_run_time" UUID="2AAB">
        <CyDescriptor ID="142" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="CGM Session Run Time">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.time.hour</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>4</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="E2E-CRC">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <FillRequirement>C1</FillRequirement>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="true" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="131" DisplayName="Record Access Control Point" Name="Record Access Control Point" Type="org.bluetooth.characteristic.record_access_control_point" UUID="2A52">
        <CyDescriptor ID="143" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="Op Code">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <EnumValue>6</EnumValue>
          <ArrayValue />
        </Field>
        <Field Name="Operator">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <EnumValue>1</EnumValue>
          <ArrayValue />
        </Field>
        <Field Name="Operand">
          <DataFormat>variable</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <EnumValue>6</EnumValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="true" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>WRITE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="132" DisplayName="CGM Specific Ops Control Point" Name="CGM Specific Ops Control Point" Type="org.bluetooth.characteristic.cgm_specific_ops_control_point" UUID="2AAC">
        <CyDescriptor ID="144" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="Op Code">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Op Code - Response Codes">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Operand">
          <DataFormat>variable</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="E2E-CRC">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Calibration Value - Glucose Concentration of Calibration">
          <DataFormat>SFLOAT</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.mass_density.milligram_per_decilitre</Unit>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Calibration Value - Calibration Time">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.time.minute</Unit>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Calibration Value - Calibration Type">
          <DataFormat>4bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Calibration Value - Calibration Sample Location">
          <DataFormat>4bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Calibration Value - Next Calibration Time">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <Unit>org.bluetooth.unit.time.minute</Unit>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Calibration Value - Calibration Data Record Number">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Calibration Value - Calibration Status">
          <DataFormat>8bit</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BITFIELD</ValueType>
          <Bit>
            <Name>Calibration Data rejected (Calibration failed)</Name>
            <Index>0</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Calibration Data out of range</Name>
            <Index>1</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Calibration Process Pending</Name>
            <Index>2</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="False" />
              <Enumeration key="1" value="True" />
            </Enumerations>
          </Bit>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="true" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>WRITE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="133" DisplayName="00000200-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="00000200000010000000009132591325">
        <CyDescriptor ID="141" DisplayName="Characteristic User Description" Name="Characteristic User Description" Type="org.bluetooth.descriptor.gatt.characteristic_user_description" UUID="2901">
          <Field Name="User Description">
            <DataFormat>utf8s</DataFormat>
            <ByteLength>15</ByteLength>
            <ValueType>BASIC</ValueType>
            <GeneralValue>MeasurementData</GeneralValue>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="false" Mandatory="false" />
          </Properties>
          <Permission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="true" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="false" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="145" DisplayName="00000201-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="00000201000010000000009132591325">
        <CyDescriptor ID="147" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="true" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="148" DisplayName="00000202-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="00000202000010000000009132591325">
        <CyDescriptor ID="149" DisplayName="Custom Descriptor" Name="Custom Descriptor" Type="org.bluetooth.descriptor.custom" UUID="06D9F95A1E0D415BBB9CD99AB6FA3BE1">
          <Field Name="New field">
            <DataFormat>uint8</DataFormat>
            <ByteLength>1</ByteLength>
            <ValueType>BASIC</ValueType>
          </Field>
          <Properties>
            <Property Type="READ" Present="false" Mandatory="false" />
            <Property Type="WRITE" Present="false" Mandatory="false" />
          </Properties>
          <Permission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <CyDescriptor ID="150" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>NONE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="138" DisplayName="00000203-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="00000203000010000000009132591325">
        <CyDescriptor ID="140" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>NONE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="70" DisplayName="Device Information" Name="Device Information" Type="org.bluetooth.service.device_information" UUID="180A">
      <CyCharacteristic ID="71" DisplayName="Manufacturer Name String" Name="Manufacturer Name String" Type="org.bluetooth.characteristic.manufacturer_name_string" UUID="2A29">
        <Field Name="Manufacturer Name">
          <DataFormat>utf8s</DataFormat>
          <ByteLength>9</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>Medtronic</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="72" DisplayName="Model Number String" Name="Model Number String" Type="org.bluetooth.characteristic.model_number_string" UUID="2A24">
        <Field Name="Model Number">
          <DataFormat>utf8s</DataFormat>
          <ByteLength>10</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>MMT-7911WW</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="75" DisplayName="Serial Number String" Name="Serial Number String" Type="org.bluetooth.characteristic.serial_number_string" UUID="2A25">
        <Field Name="Serial Number">
          <DataFormat>utf8s</DataFormat>
          <ByteLength>10</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>GT8654152M</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="74" DisplayName="Hardware Revision String" Name="Hardware Revision String" Type="org.bluetooth.characteristic.hardware_revision_string" UUID="2A27">
        <Field Name="Hardware Revision">
          <DataFormat>utf8s</DataFormat>
          <ByteLength>5</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>5C1.0</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="76" DisplayName="Firmware Revision String" Name="Firmware Revision String" Type="org.bluetooth.characteristic.firmware_revision_string" UUID="2A26">
        <Field Name="Firmware Revision">
          <DataFormat>utf8s</DataFormat>
          <ByteLength>4</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>1.1A</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="77" DisplayName="Software Revision String" Name="Software Revision String" Type="org.bluetooth.characteristic.software_revision_string" UUID="2A28">
        <Field Name="Software Revision">
          <DataFormat>utf8s</DataFormat>
          <ByteLength>13</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>1.0A.a69cfcd7</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="78" DisplayName="System ID" Name="System ID" Type="org.bluetooth.characteristic.system_id" UUID="2A23">
        <Field Name="Manufacturer Identifier">
          <DataFormat>uint40</DataFormat>
          <ByteLength>5</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>1099511627775</Maximum>
          </Range>
          <ValueType>BASIC</ValueType>
          <GeneralValue>0000000000</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Organizationally Unique Identifier">
          <DataFormat>uint24</DataFormat>
          <ByteLength>3</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>16777215</Maximum>
          </Range>
          <ValueType>BASIC</ValueType>
          <GeneralValue>10622684</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="79" DisplayName="PnP ID" Name="PnP ID" Type="org.bluetooth.characteristic.pnp_id" UUID="2A50">
        <Field Name="Vendor ID Source">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>1</Minimum>
            <Maximum>2</Maximum>
          </Range>
          <ValueType>ENUM</ValueType>
          <EnumValue>1</EnumValue>
          <ArrayValue />
        </Field>
        <Field Name="Vendor ID">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>505</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Product ID">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>0</GeneralValue>
          <ArrayValue />
        </Field>
        <Field Name="Product Version">
          <DataFormat>uint16</DataFormat>
          <ByteLength>2</ByteLength>
          <ValueType>BASIC</ValueType>
          <GeneralValue>256</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="80" DisplayName="Battery" Name="Battery" Type="org.bluetooth.service.battery_service" UUID="180F">
      <CyCharacteristic ID="81" DisplayName="Battery Level" Name="Battery Level" Type="org.bluetooth.characteristic.battery_level" UUID="2A19">
        <CyDescriptor ID="82" DisplayName="Characteristic Presentation Format" Name="Characteristic Presentation Format" Type="org.bluetooth.descriptor.gatt.characteristic_presentation_format" UUID="2904">
          <Field Name="Format">
            <DataFormat>8bit</DataFormat>
            <ByteLength>1</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>27</Maximum>
            </Range>
            <ValueType>ENUM</ValueType>
            <ArrayValue />
          </Field>
          <Field Name="Exponent">
            <DataFormat>sint8</DataFormat>
            <ByteLength>1</ByteLength>
            <ValueType>BASIC</ValueType>
            <ArrayValue />
          </Field>
          <Field Name="Unit">
            <DataFormat>uint16</DataFormat>
            <ByteLength>2</ByteLength>
            <ValueType>ENUM</ValueType>
            <EnumValue>10035</EnumValue>
            <ArrayValue />
          </Field>
          <Field Name="Namespace">
            <DataFormat>8bit</DataFormat>
            <ByteLength>1</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>1</Maximum>
            </Range>
            <ValueType>ENUM</ValueType>
            <EnumValue>1</EnumValue>
            <ArrayValue />
          </Field>
          <Field Name="Description">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <ValueType>ENUM</ValueType>
            <ArrayValue />
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="true" />
          </Properties>
          <Permission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <CyDescriptor ID="83" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
            <ArrayValue />
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="true" />
            <Property Type="WRITE" Present="true" Mandatory="true" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="Level">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <Range>
            <IsDeclared>true</IsDeclared>
            <Minimum>0</Minimum>
            <Maximum>100</Maximum>
          </Range>
          <Unit>org.bluetooth.unit.percentage</Unit>
          <ValueType>BASIC</ValueType>
          <GeneralValue>95</GeneralValue>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="84" DisplayName="15DBCD61-6388-4C33-B9D8-580254FED03B" Name="Custom Service" Type="org.bluetooth.service.custom" UUID="15DBCD6163884C33B9D8580254FED03B">
      <CyCharacteristic ID="85" DisplayName="C774EDAC-E573-45E1-97C6-8B5C18CC571A" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="C774EDACE57345E197C68B5C18CC571A">
        <CyDescriptor ID="87" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
            <ArrayValue />
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>NONE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="88" DisplayName="DE3E5221-1308-439C-A13A-884DDC387CA7" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="DE3E52211308439CA13A884DDC387CA7">
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="true" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="false" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="90" DisplayName="8484039E-97D3-40C0-BB55-C70C17BADAE2" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="8484039E97D340C0BB55C70C17BADAE2">
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="true" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="false" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>WRITE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="92" DisplayName="FE82" Name="Custom Service" Type="org.bluetooth.service.custom" UUID="FE82">
      <CyCharacteristic ID="93" DisplayName="0000FE82-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="0000FE82000010000000009132591325">
        <CyDescriptor ID="95" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
            <ArrayValue />
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <CyDescriptor ID="151" DisplayName="Characteristic User Description" Name="Characteristic User Description" Type="org.bluetooth.descriptor.gatt.characteristic_user_description" UUID="2901">
          <Field Name="User Description">
            <DataFormat>utf8s</DataFormat>
            <ByteLength>10</ByteLength>
            <ValueType>BASIC</ValueType>
            <GeneralValue>WritePoint</GeneralValue>
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="false" Mandatory="false" />
          </Properties>
          <Permission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="true" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="true" Mandatory="false" />
          <Property Type="INDICATE" Present="false" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>WRITE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="96" DisplayName="00000300-0000-1000-0000-009132591325" Name="Custom Service" Type="org.bluetooth.service.custom" UUID="00000300000010000000009132591325">
      <CyCharacteristic ID="99" DisplayName="Record Access Control Point" Name="Record Access Control Point" Type="org.bluetooth.characteristic.record_access_control_point" UUID="2A52">
        <CyDescriptor ID="100" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
            <ArrayValue />
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="Op Code">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Operator">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <ArrayValue />
        </Field>
        <Field Name="Operand">
          <DataFormat>variable</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="true" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>WRITE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="101" DisplayName="00000360-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="00000360000010000000009132591325">
        <CyDescriptor ID="103" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
            <ArrayValue />
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="true" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="false" Mandatory="false" />
          <Property Type="INDICATE" Present="true" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>WRITE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="104" DisplayName="00000350-0000-1000-0000-009132591325" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="00000350000010000000009132591325">
        <CyDescriptor ID="106" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">
          <Field Name="Properties">
            <DataFormat>16bit</DataFormat>
            <ByteLength>2</ByteLength>
            <Range>
              <IsDeclared>true</IsDeclared>
              <Minimum>0</Minimum>
              <Maximum>3</Maximum>
            </Range>
            <ValueType>BITFIELD</ValueType>
            <Bit>
              <Index>0</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Notifications disabled" />
                <Enumeration key="1" value="Notifications enabled" />
              </Enumerations>
            </Bit>
            <Bit>
              <Index>1</Index>
              <Size>1</Size>
              <Value>0</Value>
              <Enumerations>
                <Enumeration key="0" value="Indications disabled" />
                <Enumeration key="1" value="Indications enabled" />
              </Enumerations>
            </Bit>
            <ArrayValue />
          </Field>
          <Properties>
            <Property Type="READ" Present="true" Mandatory="false" />
            <Property Type="WRITE" Present="true" Mandatory="false" />
          </Properties>
          <Permission>
            <AccessPermission>READ_WRITE</AccessPermission>
            <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
          </Permission>
        </CyDescriptor>
        <Field Name="New field">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="BROADCAST" Present="false" Mandatory="false" />
          <Property Type="READ" Present="false" Mandatory="false" />
          <Property Type="WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />
          <Property Type="NOTIFY" Present="true" Mandatory="false" />
          <Property Type="INDICATE" Present="false" Mandatory="false" />
          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>NONE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="107" DisplayName="Bond Management" Name="Bond Management" Type="org.bluetooth.service.bond_management" UUID="181E">
      <CyCharacteristic ID="108" DisplayName="Bond Management Control Point" Name="Bond Management Control Point" Type="org.bluetooth.characteristic.bond_management_control_point" UUID="2AA4">
        <Field Name="Op Code">
          <DataFormat>uint8</DataFormat>
          <ByteLength>1</ByteLength>
          <ValueType>ENUM</ValueType>
          <EnumValue>1</EnumValue>
          <ArrayValue />
        </Field>
        <Field Name="Operand">
          <DataFormat>utf8s</DataFormat>
          <ByteLength>0</ByteLength>
          <ValueType>BASIC</ValueType>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="WRITE" Present="true" Mandatory="true" />
          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />
        </Properties>
        <Permission>
          <AccessPermission>WRITE</AccessPermission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <CyCharacteristic ID="110" DisplayName="Bond Management Features" Name="Bond Management Features" Type="org.bluetooth.characteristic.bond_management_feature" UUID="2AA5">
        <Field Name="Bond Management Features">
          <DataFormat>24bit</DataFormat>
          <ByteLength>3</ByteLength>
          <ValueType>BITFIELD</ValueType>
          <Bit>
            <Name>Delete Bond of current connection (BR/EDR and LE) supported</Name>
            <Index>0</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>1</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Delete bond  of current connection (BR/EDR transport only) supported</Name>
            <Index>2</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>3</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Delete bond  of current connection (LE transport only) supported</Name>
            <Index>4</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>5</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Remove all bonds on server (BR/EDR and LE) supported</Name>
            <Index>6</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>7</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Remove all bonds on server (BR/EDR transport only) supported</Name>
            <Index>8</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>9</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Remove all bonds on server (LE transport only) supported</Name>
            <Index>10</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>11</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Remove all but the active bond on server (BR/EDR and LE) supported</Name>
            <Index>12</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>13</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Remove all but the active bond on server (BR/EDR transport only) supported</Name>
            <Index>14</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>15</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Remove all but the active bond on server (LE transport only) supported</Name>
            <Index>16</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Authorization Code required for feature above</Name>
            <Index>17</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Identify yourself supported</Name>
            <Index>18</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <Bit>
            <Name>Feature Extension</Name>
            <Index>23</Index>
            <Size>1</Size>
            <Value>0</Value>
            <Enumerations>
              <Enumeration key="0" value="false" />
              <Enumeration key="1" value="true" />
            </Enumerations>
          </Bit>
          <ArrayValue />
        </Field>
        <Properties>
          <Property Type="READ" Present="true" Mandatory="true" />
        </Properties>
        <Permission>
          <AuthenticationPermissionRead>AUTHENTICATION_REQUIRED</AuthenticationPermissionRead>
          <AuthenticationPermissionWrite>AUTHENTICATION_REQUIRED</AuthenticationPermissionWrite>
        </Permission>
      </CyCharacteristic>
      <Declaration>PrimarySingleInstance</Declaration>
      <IncludedServices />
    </CyService>
    <CyService ID="55" DisplayName="Continuous Glucose Monitoring" Name="Continuous Glucose Monitoring" Type="org.bluetooth.service.continuous_glucose_monitoring" UUID="181F">
      <Declaration>Primary</Declaration>
      <IncludedServices />
    </CyService>
    <ProfileRoleIndex>0</ProfileRoleIndex>
    <RoleType>SERVER</RoleType>
  </CyProfileRole>
  <GapRole>PERIPHERAL</GapRole>
</Profile>