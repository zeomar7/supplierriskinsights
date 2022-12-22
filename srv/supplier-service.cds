using { com.sap.suppliers as mySuppliers } from '../db/suppliers';

@requires: 'authenticated-user'
@(path:'/supplier')
service BrowseService {

    @readonly
    entity SuppliersFact as projection on mySuppliers.SuppliersFact;

    action getSupplierCertificates(sSMVendorID: String , sRealm: String) returns String;

    action getSupplierRisk(sSMVendorID: String , sRealm: String) returns String;

    action getSMData(sSMVendorID: String , sRealm: String) returns String;

}

