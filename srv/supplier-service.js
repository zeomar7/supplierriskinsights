
"use strict";

const cds = require('@sap/cds');
const codeListHandler = require("./handlers/supplier-handlers");

module.exports = cds.service.impl((srv) => {

    srv.on('getSupplierCertificates', codeListHandler.getSupplierCertificates);
    srv.on('getSupplierRisk', codeListHandler.getSupplierRisk);
    srv.on('getSMData', codeListHandler.getSMData);

})
