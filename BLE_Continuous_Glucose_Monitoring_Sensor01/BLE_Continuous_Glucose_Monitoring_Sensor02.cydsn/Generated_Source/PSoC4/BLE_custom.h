/***************************************************************************//**
* \file CYBLE_custom.h
* \version 3.66
* 
* \brief
*  Contains the function prototypes and constants for the Custom Service.
* 
********************************************************************************
* \copyright
* Copyright 2014-2020, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_BLE_CYBLE_CUSTOM_H)
#define CY_BLE_CYBLE_CUSTOM_H

#include "BLE_gatt.h"


/***************************************
* Conditional Compilation Parameters
***************************************/

/* Maximum supported Custom Services */
#define CYBLE_CUSTOMS_SERVICE_COUNT                  (0x03u)
#define CYBLE_CUSTOMC_SERVICE_COUNT                  (0x00u)
#define CYBLE_CUSTOM_SERVICE_CHAR_COUNT              (0x03u)
#define CYBLE_CUSTOM_SERVICE_CHAR_DESCRIPTORS_COUNT  (0x02u)

/* Below are the indexes and handles of the defined Custom Services and their characteristics */
#define CYBLE_CUSTOM_SERVICE_SERVICE_INDEX   (0x00u) /* Index of 15DBCD61-6388-4C33-B9D8-580254FED03B service in the cyBle_customs array */
#define CYBLE_CUSTOM_SERVICE_C774EDACE57345E197C68B5C18CC571A_CHAR_INDEX   (0x00u) /* Index of C774EDAC-E573-45E1-97C6-8B5C18CC571A characteristic */
#define CYBLE_CUSTOM_SERVICE_C774EDACE57345E197C68B5C18CC571A_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_INDEX   (0x00u) /* Index of Client Characteristic Configuration descriptor */
#define CYBLE_CUSTOM_SERVICE_DE3E52211308439CA13A884DDC387CA7_CHAR_INDEX   (0x01u) /* Index of DE3E5221-1308-439C-A13A-884DDC387CA7 characteristic */
#define CYBLE_CUSTOM_SERVICE_CUSTOM_CHARACTERISTIC_CHAR_INDEX   (0x02u) /* Index of 8484039E-97D3-40C0-BB55-C70C17BADAE2 characteristic */

#define CYBLE_FE82_SERVICE_INDEX   (0x01u) /* Index of FE82 service in the cyBle_customs array */
#define CYBLE_FE82_CUSTOM_CHARACTERISTIC_CHAR_INDEX   (0x00u) /* Index of 0000FE82-0000-1000-0000-009132591325 characteristic */
#define CYBLE_FE82_CUSTOM_CHARACTERISTIC_CHARACTERISTIC_USER_DESCRIPTION_DESC_INDEX   (0x00u) /* Index of Characteristic User Description descriptor */
#define CYBLE_FE82_CUSTOM_CHARACTERISTIC_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_INDEX   (0x01u) /* Index of Client Characteristic Configuration descriptor */

#define CYBLE_CUSTOM_SERVICE_2_SERVICE_INDEX   (0x02u) /* Index of 00000300-0000-1000-0000-009132591325 service in the cyBle_customs array */
#define CYBLE_CUSTOM_SERVICE_2_RECORD_ACCESS_CONTROL_POINT_CHAR_INDEX   (0x00u) /* Index of Record Access Control Point characteristic */
#define CYBLE_CUSTOM_SERVICE_2_RECORD_ACCESS_CONTROL_POINT_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_INDEX   (0x00u) /* Index of Client Characteristic Configuration descriptor */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_CHAR_INDEX   (0x01u) /* Index of 00000360-0000-1000-0000-009132591325 characteristic */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_INDEX   (0x00u) /* Index of Client Characteristic Configuration descriptor */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_2_CHAR_INDEX   (0x02u) /* Index of 00000350-0000-1000-0000-009132591325 characteristic */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_2_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_INDEX   (0x00u) /* Index of Client Characteristic Configuration descriptor */


#define CYBLE_CUSTOM_SERVICE_SERVICE_HANDLE   (0x0034u) /* Handle of 15DBCD61-6388-4C33-B9D8-580254FED03B service */
#define CYBLE_CUSTOM_SERVICE_C774EDACE57345E197C68B5C18CC571A_DECL_HANDLE   (0x0035u) /* Handle of C774EDAC-E573-45E1-97C6-8B5C18CC571A characteristic declaration */
#define CYBLE_CUSTOM_SERVICE_C774EDACE57345E197C68B5C18CC571A_CHAR_HANDLE   (0x0036u) /* Handle of C774EDAC-E573-45E1-97C6-8B5C18CC571A characteristic */
#define CYBLE_CUSTOM_SERVICE_C774EDACE57345E197C68B5C18CC571A_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE   (0x0037u) /* Handle of Client Characteristic Configuration descriptor */
#define CYBLE_CUSTOM_SERVICE_DE3E52211308439CA13A884DDC387CA7_DECL_HANDLE   (0x0038u) /* Handle of DE3E5221-1308-439C-A13A-884DDC387CA7 characteristic declaration */
#define CYBLE_CUSTOM_SERVICE_DE3E52211308439CA13A884DDC387CA7_CHAR_HANDLE   (0x0039u) /* Handle of DE3E5221-1308-439C-A13A-884DDC387CA7 characteristic */
#define CYBLE_CUSTOM_SERVICE_CUSTOM_CHARACTERISTIC_DECL_HANDLE   (0x003Au) /* Handle of 8484039E-97D3-40C0-BB55-C70C17BADAE2 characteristic declaration */
#define CYBLE_CUSTOM_SERVICE_CUSTOM_CHARACTERISTIC_CHAR_HANDLE   (0x003Bu) /* Handle of 8484039E-97D3-40C0-BB55-C70C17BADAE2 characteristic */

#define CYBLE_FE82_SERVICE_HANDLE   (0x003Cu) /* Handle of FE82 service */
#define CYBLE_FE82_CUSTOM_CHARACTERISTIC_DECL_HANDLE   (0x003Du) /* Handle of 0000FE82-0000-1000-0000-009132591325 characteristic declaration */
#define CYBLE_FE82_CUSTOM_CHARACTERISTIC_CHAR_HANDLE   (0x003Eu) /* Handle of 0000FE82-0000-1000-0000-009132591325 characteristic */
#define CYBLE_FE82_CUSTOM_CHARACTERISTIC_CHARACTERISTIC_USER_DESCRIPTION_DESC_HANDLE   (0x003Fu) /* Handle of Characteristic User Description descriptor */
#define CYBLE_FE82_CUSTOM_CHARACTERISTIC_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE   (0x0040u) /* Handle of Client Characteristic Configuration descriptor */

#define CYBLE_CUSTOM_SERVICE_2_SERVICE_HANDLE   (0x0041u) /* Handle of 00000300-0000-1000-0000-009132591325 service */
#define CYBLE_CUSTOM_SERVICE_2_RECORD_ACCESS_CONTROL_POINT_DECL_HANDLE   (0x0042u) /* Handle of Record Access Control Point characteristic declaration */
#define CYBLE_CUSTOM_SERVICE_2_RECORD_ACCESS_CONTROL_POINT_CHAR_HANDLE   (0x0043u) /* Handle of Record Access Control Point characteristic */
#define CYBLE_CUSTOM_SERVICE_2_RECORD_ACCESS_CONTROL_POINT_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE   (0x0044u) /* Handle of Client Characteristic Configuration descriptor */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_DECL_HANDLE   (0x0045u) /* Handle of 00000360-0000-1000-0000-009132591325 characteristic declaration */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_CHAR_HANDLE   (0x0046u) /* Handle of 00000360-0000-1000-0000-009132591325 characteristic */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE   (0x0047u) /* Handle of Client Characteristic Configuration descriptor */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_2_DECL_HANDLE   (0x0048u) /* Handle of 00000350-0000-1000-0000-009132591325 characteristic declaration */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_2_CHAR_HANDLE   (0x0049u) /* Handle of 00000350-0000-1000-0000-009132591325 characteristic */
#define CYBLE_CUSTOM_SERVICE_2_CUSTOM_CHARACTERISTIC_2_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE   (0x004Au) /* Handle of Client Characteristic Configuration descriptor */



#if(CYBLE_CUSTOMS_SERVICE_COUNT != 0u)
    #define CYBLE_CUSTOM_SERVER
#endif /* (CYBLE_CUSTOMS_SERVICE_COUNT != 0u) */
    
#if(CYBLE_CUSTOMC_SERVICE_COUNT != 0u)
    #define CYBLE_CUSTOM_CLIENT
#endif /* (CYBLE_CUSTOMC_SERVICE_COUNT != 0u) */

/***************************************
* Data Struct Definition
***************************************/

/**
 \addtogroup group_service_api_custom
 @{
*/

#ifdef CYBLE_CUSTOM_SERVER

/** Contains information about Custom Characteristic structure */
typedef struct
{
    /** Custom Characteristic handle */
    CYBLE_GATT_DB_ATTR_HANDLE_T customServCharHandle;
    /** Custom Characteristic Descriptors handles */
    CYBLE_GATT_DB_ATTR_HANDLE_T customServCharDesc[     /* MDK doesn't allow array with zero length */
        (CYBLE_CUSTOM_SERVICE_CHAR_DESCRIPTORS_COUNT == 0u) ? 1u : CYBLE_CUSTOM_SERVICE_CHAR_DESCRIPTORS_COUNT];
} CYBLE_CUSTOMS_INFO_T;

/** Structure with Custom Service attribute handles. */
typedef struct
{
    /** Handle of a Custom Service */
    CYBLE_GATT_DB_ATTR_HANDLE_T customServHandle;
    
    /** Information about Custom Characteristics */
    CYBLE_CUSTOMS_INFO_T customServInfo[                /* MDK doesn't allow array with zero length */
        (CYBLE_CUSTOM_SERVICE_CHAR_COUNT == 0u) ? 1u : CYBLE_CUSTOM_SERVICE_CHAR_COUNT];
} CYBLE_CUSTOMS_T;


#endif /* (CYBLE_CUSTOM_SERVER) */

#ifdef CYBLE_CUSTOM_CLIENT

/** Structure with discovered attributes information of Custom Service Descriptors */
typedef struct
{
    /** Custom Descriptor handle */
    CYBLE_GATT_DB_ATTR_HANDLE_T descHandle;
	/** Custom Descriptor 128 bit UUID */
	const void *uuid;           
    /** UUID Format - 16-bit (0x01) or 128-bit (0x02) */
	uint8 uuidFormat;
   
} CYBLE_CUSTOMC_DESC_T;

/** Structure with discovered attributes information of Custom Service Characteristics */
typedef struct
{
    /** Characteristic handle */
    CYBLE_GATT_DB_ATTR_HANDLE_T customServCharHandle;
	/** Characteristic end handle */
    CYBLE_GATT_DB_ATTR_HANDLE_T customServCharEndHandle;
	/** Custom Characteristic UUID */
	const void *uuid;           
    /** UUID Format - 16-bit (0x01) or 128-bit (0x02) */
	uint8 uuidFormat;
    /** Properties for value field */
    uint8  properties;
	/** Number of descriptors */
    uint8 descCount;
    /** Characteristic Descriptors */
    CYBLE_CUSTOMC_DESC_T * customServCharDesc;
} CYBLE_CUSTOMC_CHAR_T;

/** Structure with discovered attributes information of Custom Service */
typedef struct
{
    /** Custom Service handle */
    CYBLE_GATT_DB_ATTR_HANDLE_T customServHandle;
	/** Custom Service UUID */
	const void *uuid;           
    /** UUID Format - 16-bit (0x01) or 128-bit (0x02) */
	uint8 uuidFormat;
	/** Number of characteristics */
    uint8 charCount;
    /** Custom Service Characteristics */
    CYBLE_CUSTOMC_CHAR_T * customServChar;
} CYBLE_CUSTOMC_T;

#endif /* (CYBLE_CUSTOM_CLIENT) */


/***************************************
* External data references 
***************************************/

#ifdef CYBLE_CUSTOM_SERVER

/** Custom Services GATT DB handles structures */
extern const CYBLE_CUSTOMS_T cyBle_customs[CYBLE_CUSTOMS_SERVICE_COUNT];

#endif /* (CYBLE_CUSTOM_SERVER) */

#ifdef CYBLE_CUSTOM_CLIENT

/** Custom Services discovered attributes information */
extern CYBLE_CUSTOMC_T cyBle_customCServ[CYBLE_CUSTOMC_SERVICE_COUNT];

#endif /* (CYBLE_CUSTOM_CLIENT) */

/***************************************
* Private Function Prototypes
***************************************/

/** \cond IGNORE */
void CyBle_CustomInit(void);

#ifdef CYBLE_CUSTOM_CLIENT

void CyBle_CustomcDiscoverServiceEventHandler(const CYBLE_DISC_SRVC128_INFO_T *discServInfo);
void CyBle_CustomcDiscoverCharacteristicsEventHandler(uint16 discoveryService, const CYBLE_DISC_CHAR_INFO_T *discCharInfo);
CYBLE_GATT_ATTR_HANDLE_RANGE_T CyBle_CustomcGetCharRange(uint8 incrementIndex);
void CyBle_CustomcDiscoverCharDescriptorsEventHandler(const CYBLE_DISC_DESCR_INFO_T *discDescrInfo);

#endif /* (CYBLE_CUSTOM_CLIENT) */


/***************************************
* The following code is DEPRECATED and
* should not be used in new projects.
***************************************/
#define customServiceCharHandle         customServCharHandle
#define customServiceCharDescriptors    customServCharDesc
#define customServiceHandle             customServHandle
#define customServiceInfo               customServInfo
/** \endcond */

/** @} */

#endif /* CY_BLE_CYBLE_CUSTOM_H  */

/* [] END OF FILE */
