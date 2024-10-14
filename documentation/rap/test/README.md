# Test the RESTful ABAP Service

## Introduction 

In this part, you will test the RESTful ABAP service.

## 1. Test the Service

1. Open the **ZAPI_GEO_O2** service binding in SAP ABAP Development Tools.

2. Choose the **Service URL** link to open the service API in a browser.

  ![Service URL](img/service-url.png)

3. Log in when promted. You should see a service metadata in your new browser window.

  ![Metadata](img/service-metadata.png)

4. Change the URL by adding the following text right after the **ZAPI_GEO_O2** service ID. You should see three partners data including the geo coordinates.

~~~url
/BusinessPartner?$expand=to_GeoData&$top=3
~~~

  ![Response](img/partner-list-example.png) 

5. Change the URL by adding the following text right after the **ZAPI_GEO_O2** service ID. This will call the **Get In Radius** function to show all the partners in radius 500 km around *Walldorf, Germany* (defined by geo coordinates). Make sure that your response is not empty and contains the distance (in kilometers) for every partner who is found.

~~~url
/getInRadius?radius=500&point_lat='49.2896256'&point_lon='8.6409216'
~~~

  ![Response 2](img/get-in-radius.png)

## Result

You have tested your service and verified that it provides a partner list with expanded entities and can perform the **Get In Radius** function.

## Next Step        

[Create destination for RESTful ABAP Service](../destination/README.md)

## Reference Links

- [Automated Test](https://help.sap.com/docs/abap-cloud/abap-rap/test?version=s4hana_cloud)
