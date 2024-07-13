/***************************************************************************//**
* \file CYBLE_tps.c
* \version 3.66
* 
* \brief
*  This file contains the source code for the Tx Power Service of the BLE
*  Component.
* 
********************************************************************************
* \copyright
* Copyright 2014-2020, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/


#include "BLE_eventHandler.h"


static CYBLE_CALLBACK_T CyBle_TpsApplCallback = NULL;

#ifdef CYBLE_TPS_SERVER

const CYBLE_TPSS_T cyBle_tpss =
{
    0x0038u,    /* Handle of the TPS service */
    0x003Au,    /* Handle of the Tx Power Level characteristic */
    0x003Bu,    /* Handle of the Client Configuration descriptor */
};
    
#endif /* CYBLE_TPS_SERVER */


#ifdef CYBLE_TPS_CLIENT
    
CYBLE_TPSC_T cyBle_tpsc;

/* Internal storage for last request handle to check response */
static CYBLE_GATT_DB_ATTR_HANDLE_T cyBle_tpscReqHandle;

#endif /* CYBLE_TPS_CLIENT */

/******************************************************************************
* Function Name: CyBle_TpsInit
***************************************************************************//**
* 
*  This function initializes the Tx Power Service.
* 
******************************************************************************/
void CyBle_TpsInit(void)
{

#ifdef CYBLE_TPS_CLIENT

    if(cyBle_serverInfo[CYBLE_SRVI_TPS].range.startHandle == CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE)
    {
        (void) memset((void *) &cyBle_tpsc, 0, sizeof(cyBle_tpsc));
    }
    cyBle_tpscReqHandle = CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE;
    
#endif /* CYBLE_TPS_CLIENT */
}


/******************************************************************************
* Function Name: CyBle_TpsRegisterAttrCallback
***************************************************************************//**
* 
*  Registers a callback function for service specific attribute operations.
*  Service specific write requests from peer device will not be handled with
*  unregistered callback function.
* 
*  \param callbackFunc: An application layer event callback function to receive 
*                     events from the BLE Component. The definition of 
*                     CYBLE_CALLBACK_T for TPS is: \n
*                     typedef void (* CYBLE_CALLBACK_T) (uint32 eventCode, 
*                                                       void *eventParam)
*                     * eventCode indicates the event that triggered this 
*                       callback.
*                     * eventParam contains the parameters corresponding to the 
*                       current event.
* \sideeffect
*  The *eventParams in the callback function should not be used by the 
*  application once the callback function execution is finished. Otherwise this
*  data may become corrupted.
* 
******************************************************************************/
void CyBle_TpsRegisterAttrCallback(CYBLE_CALLBACK_T callbackFunc)
{
    CyBle_TpsApplCallback = callbackFunc;
}


#ifdef CYBLE_TPS_SERVER

/******************************************************************************
* Function Name: CyBle_TpssWriteEventHandler
***************************************************************************//**
* 
*  Handles the Write Request Event for Tx Power service.
* 
*  \param eventParam: The pointer to the data that came with a write request
*                       for TPS.
* 
* \return
*  Return value is of type CYBLE_GATT_ERR_CODE_T.
*   * CYBLE_GATT_ERR_NONE - Write is successful.
*   * CYBLE_GATT_ERR_REQUEST_NOT_SUPPORTED - Request is not supported.
*   * CYBLE_GATT_ERR_INVALID_HANDLE - 'handleValuePair.attrHandle' is not valid.
*   * CYBLE_GATT_ERR_WRITE_NOT_PERMITTED - Write operation is not permitted on
*                                          this attribute.
*   * CYBLE_GATT_ERR_INVALID_OFFSET - Offset value is invalid.
*   * CYBLE_GATT_ERR_UNLIKELY_ERROR - Some other error occurred.
*
******************************************************************************/
CYBLE_GATT_ERR_CODE_T CyBle_TpssWriteEventHandler(CYBLE_GATTS_WRITE_REQ_PARAM_T *eventParam)
{
    CYBLE_GATT_ERR_CODE_T gattErr = CYBLE_GATT_ERR_NONE;
    uint32 event = CYBLE_EVT_TPSS_NOTIFICATION_DISABLED;
    
    /* Check event code if it defines write request */
    if(NULL != CyBle_TpsApplCallback)
    {
        /* Client Characteristic Configuration descriptor write request */
        if(eventParam->handleValPair.attrHandle == cyBle_tpss.txPowerLevelCccdHandle)
        {
            /* Verify that optional notification property is enabled for Tx Power Level characteristic */
            if(CYBLE_IS_NOTIFICATION_SUPPORTED(cyBle_tpss.txPowerLevelCharHandle))
            {
                if(CYBLE_IS_NOTIFICATION_ENABLED_IN_PTR(eventParam->handleValPair.value.val))
                {
                    event = CYBLE_EVT_TPSS_NOTIFICATION_ENABLED;
                }
                
                gattErr = CyBle_GattsWriteAttributeValue(&eventParam->handleValPair, 0u, 
                    &eventParam->connHandle, CYBLE_GATT_DB_PEER_INITIATED);
                
                if(gattErr == CYBLE_GATT_ERR_NONE)
                {
                    CYBLE_TPS_CHAR_VALUE_T wrReqParam;
                    
                    wrReqParam.connHandle = eventParam->connHandle;
                    wrReqParam.charIndex = CYBLE_TPS_TX_POWER_LEVEL;
                    wrReqParam.value = NULL;
                    
                    CyBle_TpsApplCallback(event, (void *)&wrReqParam);
                    
                #if((CYBLE_GAP_ROLE_PERIPHERAL || CYBLE_GAP_ROLE_CENTRAL) && \
                    (CYBLE_BONDING_REQUIREMENT == CYBLE_BONDING_YES))
                    /* Set flag to store bonding data to flash */
                    if(cyBle_peerBonding == CYBLE_GAP_BONDING)
                    {
                        cyBle_pendingFlashWrite |= CYBLE_PENDING_CCCD_FLASH_WRITE_BIT;
                    }
                #endif /* (CYBLE_BONDING_REQUIREMENT == CYBLE_BONDING_YES) */
                }
            }
            else
            {
                gattErr = CYBLE_GATT_ERR_REQUEST_NOT_SUPPORTED;
            }
            /* Indicate that request was handled */
            cyBle_eventHandlerFlag &= (uint8)~CYBLE_CALLBACK;
        }
    }
    
    return(gattErr);
}


/******************************************************************************
* Function Name: CyBle_TpssSetCharacteristicValue
***************************************************************************//**
* 
*  Sets characteristic value of the Tx Power Service, which is identified by 
*  charIndex.
* 
*  \param charIndex: The index of the service characteristic.
*  \param attrSize:  The size of the characteristic value attribute.
*  \param attrValue: The pointer to the characteristic value data that should 
*                    be stored in the GATT database.
* 
* \return
*  Return value is of type CYBLE_API_RESULT_T.
*   * CYBLE_ERROR_OK - The characteristic value was read successfully.
*   * CYBLE_ERROR_INVALID_PARAMETER - Validation of input parameters failed.
*
******************************************************************************/
CYBLE_API_RESULT_T CyBle_TpssSetCharacteristicValue(CYBLE_TPS_CHAR_INDEX_T charIndex,
                                                    uint8 attrSize,
                                                    int8 *attrValue)
{
    CYBLE_GATT_HANDLE_VALUE_PAIR_T locHandleValuePair;
    CYBLE_API_RESULT_T apiResult = CYBLE_ERROR_INVALID_PARAMETER;

    if(charIndex < CYBLE_TPS_CHAR_COUNT)
    {
        if((*attrValue <= CYBLE_TPS_TX_POWER_LEVEL_MAX) && (*attrValue >= CYBLE_TPS_TX_POWER_LEVEL_MIN))
        {
            locHandleValuePair.attrHandle = cyBle_tpss.txPowerLevelCharHandle;
            locHandleValuePair.value.len = attrSize;
            locHandleValuePair.value.val = (uint8 *) attrValue;
            
            /* Set Tx Power Level characteristic value to GATT database.
                Need to handle return type difference of CyBle_GattsWriteAttributeValue() and
                CyBle_TpssSetCharacteristicValue(). */
            if(CyBle_GattsWriteAttributeValue(&locHandleValuePair, 0u, NULL, CYBLE_GATT_DB_LOCALLY_INITIATED) == 
                CYBLE_GATT_ERR_NONE)
            {
                /* Indicate success */
                apiResult = CYBLE_ERROR_OK;
            }
        }
    }
    
    /* Return status */
    return(apiResult);
}


/******************************************************************************
* Function Name: CyBle_TpssGetCharacteristicValue
***************************************************************************//**
* 
*  Gets characteristic value of the Tx Power Service, which is identified by 
*  charIndex.
* 
*  \param charIndex: The index of the Tx Power characteristic.
*  \param attrSize:  The size of the Tx Power characteristic value attribute.
*  \param attrValue: The pointer to the location where Tx Power characteristic
*                    value data should be stored.
* 
* \return
*  Return value is of type CYBLE_API_RESULT_T.
*   * CYBLE_ERROR_OK - Characteristic value was read successfully.
*   * CYBLE_ERROR_INVALID_PARAMETER - Validation of the input parameters 
*                                     failed.
*
******************************************************************************/
CYBLE_API_RESULT_T CyBle_TpssGetCharacteristicValue(CYBLE_TPS_CHAR_INDEX_T charIndex,
                                                    uint8 attrSize,
                                                    int8 *attrValue)
{
    CYBLE_GATT_HANDLE_VALUE_PAIR_T locHandleValuePair;
    CYBLE_API_RESULT_T apiResult = CYBLE_ERROR_INVALID_PARAMETER;

    if((attrValue != NULL) && (charIndex == CYBLE_TPS_TX_POWER_LEVEL) && (attrSize == CYBLE_TPS_TX_POWER_LEVEL_SIZE))
    {
        locHandleValuePair.attrHandle = cyBle_tpss.txPowerLevelCharHandle;
        locHandleValuePair.value.len = attrSize;
        locHandleValuePair.value.val = (uint8 *)attrValue;
        
        /* Get Tx Power Level characteristic value from GATT database */
        if(CyBle_GattsReadAttributeValue(&locHandleValuePair, NULL, CYBLE_GATT_DB_LOCALLY_INITIATED) == 
            CYBLE_GATT_ERR_NONE)
        {
            /* Indicate success */
            apiResult = CYBLE_ERROR_OK;
        }
    }
    
    /* Return status */
    return(apiResult);
}


/******************************************************************************
* Function Name: CyBle_TpssGetCharacteristicDescriptor
***************************************************************************//**
* 
*  Gets characteristic descriptor of specified characteristic of the Tx Power
*  Service.
* 
*  \param charIndex:  The index of the characteristic.
*  \param descrIndex: The index of the descriptor.
*  \param attrSize:   The size of the characteristic value attribute.
*  \param attrValue:  The pointer to the location where characteristic 
*                     descriptor value data should be stored.
* 
* \return
*  Return value is of type CYBLE_API_RESULT_T.
*   * CYBLE_ERROR_OK - Characteristic Descriptor value was read successfully.
*   * CYBLE_ERROR_INVALID_PARAMETER - Validation of input parameters failed.
*   * CYBLE_ERROR_GATT_DB_INVALID_ATTR_HANDLE - Optional descriptor is absent.
*
******************************************************************************/
CYBLE_API_RESULT_T CyBle_TpssGetCharacteristicDescriptor(CYBLE_TPS_CHAR_INDEX_T charIndex,
                                                         CYBLE_TPS_CHAR_DESCRIPTORS_T descrIndex,
                                                         uint8 attrSize,
                                                         uint8 *attrValue)
{
    CYBLE_GATT_HANDLE_VALUE_PAIR_T locHandleValuePair;
    CYBLE_API_RESULT_T apiResult = CYBLE_ERROR_INVALID_PARAMETER;

    if((charIndex == CYBLE_TPS_TX_POWER_LEVEL) && (descrIndex == CYBLE_TPS_CCCD))
    {
        if(CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE != cyBle_tpss.txPowerLevelCccdHandle)
        {
            locHandleValuePair.attrHandle = cyBle_tpss.txPowerLevelCccdHandle;
            locHandleValuePair.value.len = attrSize;
            locHandleValuePair.value.val = (uint8 *) attrValue;
            
            /* Set Client Characteristic Configuration Descriptor of Tx Power Level 
                characteristic to GATT database.
                Need to handle return type difference of CyBle_GattsWriteAttributeValue() and
                CyBle_TpssGetCharacteristicDescriptor(). */
            if(CyBle_GattsReadAttributeValue(&locHandleValuePair, NULL, CYBLE_GATT_DB_LOCALLY_INITIATED) == 
                CYBLE_GATT_ERR_NONE)
            {
                /* Indicate success */
                apiResult = CYBLE_ERROR_OK;
            }
        }
        else
        {
            apiResult = CYBLE_ERROR_GATT_DB_INVALID_ATTR_HANDLE;
        }
    }

    return (apiResult);
}


/******************************************************************************
* Function Name: CyBle_TpssSendNotification
***************************************************************************//**
* 
*  Sends a notification with the characteristic value, as specified by charIndex,
*  to the Client device.
* 
*  On enabling notification successfully for a service characteristic it sends 
*  out a 'Handle Value Notification' which results in 
*  CYBLE_EVT_TPSC_NOTIFICATION event at the GATT Client's end.
* 
*  \param connHandle: The connection handle.
*  \param charIndex:  The index of the service characteristic.
*  \param attrSize:   The size of the characteristic value attribute.
*  \param attrValue:  The pointer to the characteristic value data that should 
*                     be sent to the client's device.
* 
* \return
*  Return value is of type CYBLE_API_RESULT_T.
*   * CYBLE_ERROR_OK - The request handled successfully.
*   * CYBLE_ERROR_INVALID_PARAMETER - Validation of input parameter failed.
*   * CYBLE_ERROR_INVALID_OPERATION - Operation is invalid for this.
*                                     characteristic.
*   * CYBLE_ERROR_INVALID_STATE - Connection with client is not established.
*   * CYBLE_ERROR_NTF_DISABLED - Notification is not enabled by the client.
*   * CYBLE_ERROR_MEMORY_ALLOCATION_FAILED - Memory allocation failed.
*
*
******************************************************************************/
CYBLE_API_RESULT_T CyBle_TpssSendNotification(CYBLE_CONN_HANDLE_T connHandle, 
                                              CYBLE_TPS_CHAR_INDEX_T charIndex,
                                              uint8 attrSize,
                                              int8 *attrValue)
{
    CYBLE_GATTS_HANDLE_VALUE_NTF_T ntfReqParam;
    CYBLE_API_RESULT_T apiResult = CYBLE_ERROR_INVALID_PARAMETER;
  
    if((attrValue != NULL) && (charIndex == CYBLE_TPS_TX_POWER_LEVEL) && (attrSize == CYBLE_TPS_TX_POWER_LEVEL_SIZE))
    {
        if(CYBLE_IS_NOTIFICATION_ENABLED(cyBle_tpss.txPowerLevelCccdHandle))
        {
            /* Fill all fields of write request structure ... */
            ntfReqParam.attrHandle = cyBle_tpss.txPowerLevelCharHandle; 
            ntfReqParam.value.val = (uint8 *) attrValue;
            ntfReqParam.value.len = attrSize;

            /* Set Tx Power Level characteristic value to GATT database.
                Need to handle return type difference of CyBle_GattsWriteAttributeValue() and
                CyBle_TpssSetCharacteristicValue(). */
            if(CyBle_GattsWriteAttributeValue(&ntfReqParam, 0u, NULL, CYBLE_GATT_DB_LOCALLY_INITIATED) == CYBLE_GATT_ERR_NONE)
            {
                if(CYBLE_STATE_CONNECTED != CyBle_GetState())
                {
                    apiResult = CYBLE_ERROR_INVALID_STATE;
                }
                else
                {
                    /* Send notification to client using previously filled structure */
                    apiResult = CyBle_GattsNotification(connHandle, &ntfReqParam);
                }
            }
        }
        else
        {
           apiResult = CYBLE_ERROR_NTF_DISABLED;
        }
    }

    /* Return status */
    return(apiResult);
}

#endif /* (CYBLE_GATT_ROLE_SERVER) */


#ifdef CYBLE_TPS_CLIENT

/******************************************************************************
* Function Name: CyBle_TpscDiscoverCharacteristicsEventHandler
***************************************************************************//**
* 
*  This function is called on receiving a CYBLE_EVT_GATTC_READ_BY_TYPE_RSP 
*  event. Based on the service UUID, an appropriate data structure is populated   
*  using the data received as part of the callback.
* 
*  \param discCharInfo: The pointer to the characteristic information 
*                       structure.
* 
* 
******************************************************************************/
void CyBle_TpscDiscoverCharacteristicsEventHandler(CYBLE_DISC_CHAR_INFO_T *discCharInfo)
{
    if(discCharInfo->uuid.uuid16 == CYBLE_UUID_CHAR_TX_POWER_LEVEL)
    {
        /* Check for  invalid char handle */
        if(cyBle_tpsc.txPowerLevelChar.valueHandle == CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE)
        {
            /* Save Tx Power Level Characteristic handle */
            CyBle_CheckStoreCharHandle(cyBle_tpsc.txPowerLevelChar);
        }
    }
}


/******************************************************************************
* Function Name: CyBle_TpscDiscoverCharDescriptorsEventHandler
***************************************************************************//**
* 
*  This function is called on receiving a CYBLE_EVT_GATTC_FIND_INFO_RSP event. 
*  This event is generated when a server successfully sends the data for 
*  CYBLE_EVT_GATTC_FIND_INFO_REQ. Based on the service UUID, an appropriate  
*  data structure is populated to the service with a service callback.
* 
*  \param discDescrInfo: The pointer to descriptor information structure.
* 
******************************************************************************/
void CyBle_TpscDiscoverCharDescriptorsEventHandler(CYBLE_DISC_DESCR_INFO_T *discDescrInfo)
{
    if(discDescrInfo->uuid.uuid16 == CYBLE_UUID_CHAR_CLIENT_CONFIG)
    {
        CyBle_CheckStoreCharDescrHandle(cyBle_tpsc.txPowerLevelCccdHandle);
    }
}


/******************************************************************************
* Function Name: CyBle_TpscNotificationEventHandler
***************************************************************************//**
* 
*  Handles the Notification Event for the Tx Power Service.
* 
*  \param eventParam: The pointer to the data structure specified by the event.
* 
******************************************************************************/
void CyBle_TpscNotificationEventHandler(CYBLE_GATTC_HANDLE_VALUE_NTF_PARAM_T *eventParam)
{
    if(NULL != CyBle_TpsApplCallback)
    {
        if(cyBle_tpsc.txPowerLevelChar.valueHandle == eventParam->handleValPair.attrHandle)
        {
            CYBLE_TPS_CHAR_VALUE_T ntfParam;
            
            ntfParam.connHandle = eventParam->connHandle;
            ntfParam.charIndex = CYBLE_TPS_TX_POWER_LEVEL;
            ntfParam.value = &eventParam->handleValPair.value;
            
            CyBle_TpsApplCallback(CYBLE_EVT_TPSC_NOTIFICATION, (void *)&ntfParam);
            cyBle_eventHandlerFlag &= (uint8) (~CYBLE_CALLBACK);
        }
    }
}


/******************************************************************************
* Function Name: CyBle_TpscReadResponseEventHandler
***************************************************************************//**
* 
*  Handles the Read Response Event.
* 
*  \param eventParam: The pointer to the data that came with a read response
*                     for the Tx Power Service.
* 
******************************************************************************/
void CyBle_TpscReadResponseEventHandler(CYBLE_GATTC_READ_RSP_PARAM_T *eventParam)
{
    if((NULL != CyBle_TpsApplCallback) && (CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE != cyBle_tpscReqHandle))
    {
        if(cyBle_tpsc.txPowerLevelChar.valueHandle == cyBle_tpscReqHandle)
        {
            CYBLE_TPS_CHAR_VALUE_T rdRspParam;
            
            /* Fill Tx Power Service read response parameter structure for Tx Power Level
              Characteristic. */
            rdRspParam.connHandle = eventParam->connHandle;
            rdRspParam.charIndex = CYBLE_TPS_TX_POWER_LEVEL;
            rdRspParam.value = &eventParam->value;
            
            cyBle_tpscReqHandle = CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE;
            cyBle_eventHandlerFlag &= (uint8) ~CYBLE_CALLBACK;
            CyBle_TpsApplCallback(CYBLE_EVT_TPSC_READ_CHAR_RESPONSE, &rdRspParam);
        }
        else if(cyBle_tpsc.txPowerLevelCccdHandle == cyBle_tpscReqHandle)
        {
            CYBLE_TPS_DESCR_VALUE_T rdRspParam;
            
            /* Fill Tx Power Service read response parameter structure for Tx Power Level
                Client Characteristic Configuration Descriptor. */
            rdRspParam.connHandle = eventParam->connHandle;
            rdRspParam.charIndex = CYBLE_TPS_TX_POWER_LEVEL;
            rdRspParam.descrIndex = CYBLE_TPS_CCCD;
            rdRspParam.value = &eventParam->value;
            
            cyBle_tpscReqHandle = CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE;
            cyBle_eventHandlerFlag &= (uint8) ~CYBLE_CALLBACK;
            CyBle_TpsApplCallback(CYBLE_EVT_TPSC_READ_DESCR_RESPONSE, &rdRspParam);
        }
        else
        {
            /* No TPS characteristic was requested for read */
        }
    }
}


/******************************************************************************
* Function Name: CyBle_TpscWriteResponseEventHandler
***************************************************************************//**
* 
*  Handles the Write Response Event.
* 
*  \param eventParam: The pointer to a CYBLE_CONN_HANDLE_T data structure.
* 
* 
******************************************************************************/
void CyBle_TpscWriteResponseEventHandler(const CYBLE_CONN_HANDLE_T *eventParam)
{
    CYBLE_TPS_DESCR_VALUE_T wrRspParam;

    if((CyBle_TpsApplCallback != NULL) && (cyBle_tpsc.txPowerLevelCccdHandle == cyBle_tpscReqHandle) && 
        (cyBle_tpscReqHandle != CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE))
    {
        wrRspParam.connHandle = *eventParam;
        wrRspParam.charIndex = CYBLE_TPS_TX_POWER_LEVEL;
        wrRspParam.descrIndex = CYBLE_TPS_CCCD;
        wrRspParam.value = NULL;
        
        cyBle_tpscReqHandle = CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE;
        cyBle_eventHandlerFlag &= (uint8) ~CYBLE_CALLBACK;
        CyBle_TpsApplCallback(CYBLE_EVT_TPSC_WRITE_DESCR_RESPONSE, &wrRspParam);
    }
}


/******************************************************************************
* Function Name: CyBle_TpscErrorResponseEventHandler
***************************************************************************//**
* 
*  Handles the Error Response Event for the Tx Power Service.
* 
*  \param eventParam: The pointer to the CYBLE_GATTC_ERR_RSP_PARAM_T structure.
* 
* 
******************************************************************************/
void CyBle_TpscErrorResponseEventHandler(const CYBLE_GATTC_ERR_RSP_PARAM_T *eventParam)
{
    if(eventParam->attrHandle != cyBle_tpscReqHandle)
    {
        cyBle_tpscReqHandle = CYBLE_GATT_INVALID_ATTR_HANDLE_VALUE;
    }
}


/******************************************************************************
* Function Name: CyBle_TpscGetCharacteristicValue
***************************************************************************//**
* 
*  Gets the characteristic value of the Tx Power Service, which is 
*  identified by charIndex.
* 
*  This function call can result in generation of the following events based on
*  the response from the server device:
*  * CYBLE_EVT_TPSC_READ_CHAR_RESPONSE.
*  * CYBLE_EVT_GATTC_ERROR_RSP.
* 
*  \param connHandle: The connection handle.
*  \param charIndex:  The index of the characteristic.
* 
* \return
*  Return value is of type CYBLE_API_RESULT_T.
*   * CYBLE_ERROR_OK - Request was sent successfully.
*   * CYBLE_ERROR_INVALID_PARAMETER - Validation of the input parameters failed.
*   * CYBLE_ERROR_INVALID_STATE - Connection with the server is not established.
*   * CYBLE_ERROR_MEMORY_ALLOCATION_FAILED - Memory allocation failed.
*   * CYBLE_ERROR_INVALID_OPERATION - Operation is invalid for this 
*                                     characteristic.
*
* \events
*  In case of successful execution (return value = CYBLE_ERROR_OK)
*  the next events can appear: \n
*   If the TPS service-specific callback is registered 
*      (with CyBle_TpsRegisterAttrCallback):
*  * CYBLE_EVT_TPSC_READ_CHAR_RESPONSE - In case if the requested attribute is
*                                successfully wrote on the peer device,
*                                the details (char index , value, etc.) are 
*                                provided with event parameter structure
*                                of type CYBLE_TPS_CHAR_VALUE_T.
*  .
*   Otherwise (if the TPS service-specific callback is not registered):
*  * CYBLE_EVT_GATTC_READ_RSP - In case if the requested attribute is 
*                               successfully read on the peer device,
*                               the details (handle, value, etc.) are 
*                               provided with event parameters 
*                               structure (CYBLE_GATTC_READ_RSP_PARAM_T).
*  * CYBLE_EVT_GATTC_ERROR_RSP - In case if there some trouble with the 
*                                requested attribute on the peer device,
*                                the details are provided with event parameters 
*                                structure (CYBLE_GATTC_ERR_RSP_PARAM_T).
*
******************************************************************************/
CYBLE_API_RESULT_T CyBle_TpscGetCharacteristicValue(CYBLE_CONN_HANDLE_T connHandle,
                                                    CYBLE_TPS_CHAR_INDEX_T charIndex)
{
    CYBLE_API_RESULT_T apiResult = CYBLE_ERROR_INVALID_PARAMETER;

    if(CyBle_GetClientState() != CYBLE_CLIENT_STATE_DISCOVERED)
    {
        apiResult = CYBLE_ERROR_INVALID_STATE;
    }
    if((charIndex == CYBLE_TPS_TX_POWER_LEVEL))
    {
        /* Send request to write Tx Power Level characteristic value */
        apiResult = CyBle_GattcReadCharacteristicValue(connHandle, cyBle_tpsc.txPowerLevelChar.valueHandle);
        
        if(apiResult == CYBLE_ERROR_OK)
        {
             cyBle_tpscReqHandle = cyBle_tpsc.txPowerLevelChar.valueHandle;
        }
    }
    else
    {
        /* apiResult equals CYBLE_ERROR_INVALID_PARAMETER */
    }
    
    /* Return status */
    return(apiResult);
}


/******************************************************************************
* Function Name: CyBle_TpscSetCharacteristicDescriptor
***************************************************************************//**
* 
*  Sets a characteristic descriptor value of the Tx Power Service.
* 
*  Internally, Write Request is sent to the GATT Server and on successful 
*  execution of the request on the Server side the following events can be 
*  generated: 
*  * CYBLE_EVT_TPSS_NOTIFICATION_ENABLED
*  * CYBLE_EVT_TPSS_NOTIFICATION_DISABLED
* 
*  \param connHandle: The connection handle.
*  \param charIndex:  The index of the Characteristic
*  \param descrIndex: The index of the TX Power Service characteristic 
*                     descriptor.
*  \param attrSize:   The size of the characteristic descriptor attribute.
*  \param attrValue:  The pointer to the characteristic descriptor value data  
*                     that should be sent to the server device.
* 
* \return
*  Return value is of type CYBLE_API_RESULT_T.
*   * CYBLE_ERROR_OK - The request was sent successfully.
*   * CYBLE_ERROR_INVALID_PARAMETER - Validation of the input parameters failed.
*   * CYBLE_ERROR_INVALID_STATE - Connection with the server is not established.
*   * CYBLE_ERROR_INVALID_OPERATION - This operation is not permitted on the
*                                      specified attribute.
*   * CYBLE_ERROR_MEMORY_ALLOCATION_FAILED - Memory allocation failed.
*
* \events
*  In case of successful execution (return value = CYBLE_ERROR_OK)
*  the next events can appear: \n
*   If the TPS service-specific callback is registered 
*      (with CyBle_TpsRegisterAttrCallback):
*  * CYBLE_EVT_TPSC_WRITE_DESCR_RESPONSE - in case if the requested attribute is
*                                successfully wrote on the peer device,
*                                the details (char index, descr index etc.) are 
*                                provided with event parameter structure
*                                of type CYBLE_TPS_DESCR_VALUE_T.
*  .
*   Otherwise (if the TPS service-specific callback is not registered):
*  * CYBLE_EVT_GATTC_WRITE_RSP - in case if the requested attribute is 
*                                successfully wrote on the peer device.
*  * CYBLE_EVT_GATTC_ERROR_RSP - in case if there some trouble with the 
*                                requested attribute on the peer device,
*                                the details are provided with event parameters 
*                                structure (CYBLE_GATTC_ERR_RSP_PARAM_T).
*
******************************************************************************/
CYBLE_API_RESULT_T CyBle_TpscSetCharacteristicDescriptor(CYBLE_CONN_HANDLE_T connHandle,
                                                         CYBLE_TPS_CHAR_INDEX_T charIndex,
                                                         CYBLE_TPS_CHAR_DESCRIPTORS_T descrIndex,
                                                         uint8 attrSize,
                                                         uint8 *attrValue)
{
    CYBLE_GATTC_WRITE_REQ_T writeReqParam;
    CYBLE_API_RESULT_T apiResult = CYBLE_ERROR_INVALID_PARAMETER;

    if(CyBle_GetClientState() != CYBLE_CLIENT_STATE_DISCOVERED)
    {
        apiResult = CYBLE_ERROR_INVALID_STATE;
    }
    if((attrValue != NULL) && (charIndex == CYBLE_TPS_TX_POWER_LEVEL) && (descrIndex == CYBLE_TPS_CCCD) && 
        (attrSize == CYBLE_CCCD_LEN))
    {
        /* Fill all fields of write request structure ... */
        writeReqParam.value.val = attrValue;
        writeReqParam.value.len = attrSize;
        writeReqParam.attrHandle = cyBle_tpsc.txPowerLevelCccdHandle;
        
        /* ... and send request to server device. */        
        apiResult = CyBle_GattcWriteCharacteristicDescriptors(connHandle, &writeReqParam);
        
        if(apiResult == CYBLE_ERROR_OK)
        {
            cyBle_tpscReqHandle = cyBle_tpsc.txPowerLevelCccdHandle;
        }
    }
    else
    {
        /* apiResult equals CYBLE_ERROR_INVALID_PARAMETER */
    }

    /* Return status */
    return(apiResult);
}


/******************************************************************************
* Function Name: TpscGetCharacteristicDescriptor
***************************************************************************//**
* 
*  Gets a characteristic descriptor of the Tx Power Service. 
*  
*  This function call can result in generation of the following events based on 
*  the response from the server device:
*  * CYBLE_EVT_TPSC_READ_DESCR_RESPONSE.
*  * CYBLE_EVT_GATTC_ERROR_RSP.
* 
*  \param connHandle: The connection handle.
*  \param charIndex:  The index of the characteristic.
*  \param descrIndex: The index of the characteristic descriptor.
* 
* \return
*  Return value is of type CYBLE_API_RESULT_T.
*   * CYBLE_ERROR_OK - Request was sent successfully.
*   * CYBLE_ERROR_INVALID_PARAMETER - Validation of the input parameters failed.
*   * CYBLE_ERROR_INVALID_STATE - The component in in invalid state for current 
*                                 operation.
*   * CYBLE_ERROR_MEMORY_ALLOCATION_FAILED - Memory allocation failed.
*   * CYBLE_ERROR_INVALID_OPERATION - Cannot process request to send PDU due to
*                                     invalid operation performed by the
*                                     application.
*
* \events
*  In case of successful execution (return value = CYBLE_ERROR_OK)
*  the next events can appear: \n
*  If the TPS service-specific callback is registered 
*      (with CyBle_TpsRegisterAttrCallback):
*  * CYBLE_EVT_TPSC_READ_DESCR_RESPONSE - in case if the requested attribute is
*                                successfully wrote on the peer device,
*                                the details (char index, descr index, value, etc.) 
*                                are provided with event parameter structure
*                                of type CYBLE_TPS_DESCR_VALUE_T. 
*  .
*  Otherwise (if the TPS service-specific callback is not registered):
*  * CYBLE_EVT_GATTC_READ_RSP - in case if the requested attribute is 
*                               successfully read on the peer device,
*                               the details (handle, value, etc.) are 
*                               provided with event parameters 
*                               structure (CYBLE_GATTC_READ_RSP_PARAM_T).
*  * CYBLE_EVT_GATTC_ERROR_RSP - in case if there some trouble with the 
*                                requested attribute on the peer device,
*                                the details are provided with event parameters 
*                                structure (CYBLE_GATTC_ERR_RSP_PARAM_T).
*
******************************************************************************/
CYBLE_API_RESULT_T CyBle_TpscGetCharacteristicDescriptor(CYBLE_CONN_HANDLE_T connHandle,
                                                         CYBLE_TPS_CHAR_INDEX_T charIndex,
                                                         CYBLE_TPS_CHAR_DESCRIPTORS_T descrIndex)
{
    CYBLE_API_RESULT_T apiResult = CYBLE_ERROR_OK;
    
    if(CyBle_GetClientState() != CYBLE_CLIENT_STATE_DISCOVERED)
    {
        apiResult = CYBLE_ERROR_INVALID_STATE;
    }
    else if((charIndex == CYBLE_TPS_TX_POWER_LEVEL) && (descrIndex == CYBLE_TPS_CCCD))
    {
        apiResult = CyBle_GattcReadCharacteristicDescriptors(connHandle, cyBle_tpsc.txPowerLevelCccdHandle);
        
        if(apiResult == CYBLE_ERROR_OK)
        {
            cyBle_tpscReqHandle = cyBle_tpsc.txPowerLevelCccdHandle;
        }
    }
    else
    {
        /* apiResult equals CYBLE_ERROR_INVALID_PARAMETER */
    }
    
    /* Return status */
    return(apiResult);
}

#endif /* CYBLE_TPS_CLIENT */


/* [] END OF FILE */
