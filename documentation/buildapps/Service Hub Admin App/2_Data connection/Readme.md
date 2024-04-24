# Module 3 - Unit 2_2: Data connection

1. Go to Data tab. Then Add integration

![](../screenshots/Picture57.png)

2. Select BTP Destinations

![](../screenshots/Picture58.png)

3. Find the BTP destination that you created using SAP Build Code: Build-Code

![](../screenshots/Picture59.png)

4. Install Integration

![](../screenshots/Picture60.png)

5. Select data entity Incidents. Enable data entity. Then, enable Expand function for all data entites as it is shown below

![](../screenshots/Picture61.png)


6. Enable all other data entities. Save your project and Click on Exit

![](../screenshots/Picture62.png)


7. Click on Create data entity. Select SAP BTP Destination REST API Integration

![](../screenshots/Picture63.png)


8. Type the Data entity name: BPData. Select your BTP destination. In this exercise, we are using RAP-Geo

![](../screenshots/Picture64.png)


9. Go to list and enable it. Paste the formula below to the relative path

~~~
/getInRadius?radius=10000000&point_lat='50'&point_lon='10'
~~~

![](../screenshots/Picture65.png)


10. Go to test. Run the test. When you get the Status: OK, then click on the Autodetect schema from response

![](../screenshots/Picture66.png)


11. Go to config tab and click on the ABC icon under relative path

![](../screenshots/Picture67.png)


12. Go to Formula

![](../screenshots/Picture68.png)


13. Click on the Formula Bar

![](../screenshots/Picture69.png)


14. Paste the formula below and save it

~~~
"/getInRadius?radius="+query.additionalInputs.radius+"&point_lat='"+query.additionalInputs.pointLat+"'&point_lon='"+query.additionalInputs.pointLon+"'"
~~~


![](../screenshots/Picture70.png)


15. Go to Base. Here you can see that Resource schema was created after your test in Step 10

![](../screenshots/Picture71.png)


16. Click on "Add new" but please be careful that you should be adding under "Additional Inputs"

![](../screenshots/Picture72.png)


17. Paste the field name below. Field type: number

~~~
radius
~~~

![](../screenshots/Picture73.png)


18. Paste the field name below. Field type: text

~~~
point_lat
~~~

![](../screenshots/Picture74.png)


19. Paste the field name below. Field type: text

~~~
point_lon
~~~

![](../screenshots/Picture75.png)


20. Save data entity

![](../screenshots/Picture76.png)


21. Save your project

![](../screenshots/Picture77.png)


**[Next Module 3 - Unit 2_3: Configuration for UI Components in Overview Pages](../3_Configuration%20for%20UI%20Components%20in%20Overview%20Pages/Readme.md) >**
