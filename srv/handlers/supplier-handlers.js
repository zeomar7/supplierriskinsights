"use strict";

const cds = require('@sap/cds');
const cloudSDK = require("@sap-cloud-sdk/connectivity");
const axios = require("axios");
const logger = require("../util/logger");

async function getSupplierCertificates (req) {

        let oData = req.data;

        // JD: updating Cloud SDK version
        let oDestination = await cloudSDK.getDestination({ destinationName: 'StratusAtlantic-slp-supplier-data' });
        let oRequestConfig = await cloudSDK.buildHttpRequest(oDestination);

        if (!oRequestConfig) {
            throw Error("SupplierCert: There was an error when retrieving the destination");
        }

        let sUri = "/vendors/" + oData.sSMVendorID + "/certificates";

        oRequestConfig.url = sUri;
        oRequestConfig.headers.apiKey = oDestination.originalProperties.destinationConfiguration.apiKey;
        oRequestConfig.params = {};
        oRequestConfig.params.realm = oData.sRealm;

        let response = await axios.request(oRequestConfig)
        .catch(function (oError) {
            logger.error("SupplierCert: There was an error when calling the API. Error was: " + oError.message);
            throw Error("SupplierCert: There was an error when calling the API");
        });

        return JSON.stringify(response.data);
}

async function getSupplierRisk (req) {
    let oData = req.data;

    console.log("inside servcie call", oData.sRealm );

    // JD: updating Cloud SDK version
    let oDestination = await cloudSDK.getDestination({ destinationName: 'StratusAtlantic-supplier-risk' });
    let oRequestConfig = await cloudSDK.buildHttpRequest(oDestination);

  
    console.log("finished getting destination");
  

    if (!oRequestConfig) {
        throw Error("There was an error when retrieving the destination");
    }

    let sUri = "/suppliers/" + oData.sSMVendorID + "/scores";

    oRequestConfig.url = sUri;
    oRequestConfig.headers.apiKey = oDestination.originalProperties.destinationConfiguration.apiKey;
    oRequestConfig.headers["Content-Type"] = "application/json";
    oRequestConfig.params = {};
    oRequestConfig.params.realm = oData.sRealm;

    let response = await axios.request(oRequestConfig)
    .catch(function (oError) {
        logger.error("There was an error when calling the API. Error was: " + oError.message);
        throw Error("There was an error when calling the API");
    });

    return JSON.stringify(response.data);
}

async function getSMIncidents (req) {

    let oData = req.data;

    console.log("inside SM Data Service call", oData.sRealm );

    // JD: updating Cloud SDK version
    let oDestination = await cloudSDK.getDestination({ destinationName: 'StratusAtlantic-slp-supplier-data' });
    let oRequestConfig = await cloudSDK.buildHttpRequest(oDestination);

  
    console.log("smdata finished getting destination");
  

    if (!oRequestConfig) {
        throw Error("There was an error when retrieving the destination");
    }

    let sUri = "/vendorDataRequests/";

    let oPayload = Object.assign(_getVendorRequest(oData.sSMVendorID));

    oRequestConfig.data = oPayload;

    oRequestConfig.method = "post";
    oRequestConfig.data = oPayload;
    oRequestConfig.url = sUri;
    oRequestConfig.headers.apiKey = oDestination.originalProperties.destinationConfiguration.apiKey;
    oRequestConfig.headers["Content-Type"] = "application/json";
    oRequestConfig.params = {};
    oRequestConfig.params.realm = oData.sRealm;

    let response = await axios.request(oRequestConfig)
    .catch(function (oError) {
        logger.error("There was an error when calling the Vendor Request API. Error was: " + oError.message);
        throw Error("There was an error when calling the Vendor Request API");
    });

    console.log(response.data);

    return JSON.stringify(response.data);

}

async function getSMData (req) {

    let oData = req.data;
    
    // JD: trying to debug
    debugger;

    console.log("inside SM Data Service call", oData.sRealm );

    // JD: updating Cloud SDK version
    let oDestination = await cloudSDK.getDestination({ destinationName: 'StratusAtlantic-slp-supplier-data' });
    let oRequestConfig = await cloudSDK.buildHttpRequest(oDestination);

  
    console.log("smdata finished getting destination");
  

    if (!oRequestConfig) {
        throw Error("There was an error when retrieving the destination");
    }

    let sUri = "/vendorDataRequests/";

    let oPayload = Object.assign(_getVendorRequest(oData.sSMVendorID));

    oRequestConfig.data = oPayload;

    oRequestConfig.method = "post";
    oRequestConfig.data = oPayload;
    oRequestConfig.url = sUri;
    oRequestConfig.headers.apiKey = oDestination.originalProperties.destinationConfiguration.apiKey;
    oRequestConfig.headers["Content-Type"] = "application/json";
    oRequestConfig.params = {};
    oRequestConfig.params.realm = oData.sRealm;

    let response = await axios.request(oRequestConfig)
    .catch(function (oError) {
        logger.error("There was an error when calling the Vendor Request API. Error was: " + oError.message);
        throw Error("There was an error when calling the Vendor Request API");
    });

    console.log(response.data);

    return JSON.stringify(response.data);

}


function _getVendorRequest  (SMID) {
    return {
        outputFormat: "JSON",
        smVendorIds: [SMID],
    };
}

module.exports = {
    getSupplierCertificates,
    getSMData,
    getSupplierRisk,
    getSMIncidents
};
