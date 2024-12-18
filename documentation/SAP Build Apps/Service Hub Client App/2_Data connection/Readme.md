# Data Connection 

In this part, you will integrate the destination in SAP BTP that you have created in SAP Build Code. 

1. Go to the **App Settings**>**Authentication** tab and choose **Enable Authentication**.

![](../screenshots/Picture10.png)

2. Choose **SAP BTP Authentication** and then choose **OK** in the popup window.

![](../screenshots/Picture11.png)

3. Go to the **Data** tab and choose **Add Integration**.

![](../screenshots/Picture12.png)

4. Choose **BTP Destinations**.

![](../screenshots/Picture13.png)

5. Choose the destination **equipmentmaintenance-equipmentmaintenanceSrv** that has been created via SAP Build Code (see [here](../../../buildcode/deploy/README.md)).

![](../screenshots/Picture14.png)

6. Choose **Install Integration**.

![](../screenshots/Picture15.png)

7. Select the **Incidents** data entity and then choose **Enable Data Entity**.

![](../screenshots/Picture16.png)

8. Select the **Medicaldevice** data entity and then choose **Enable Data Entity**.

9. Choose **Browse real data**. 

![](../screenshots/Picture18.png)

10. You can see the data is coming from your backend system that you have created using Joule in SAP Build Code.

![](../screenshots/Picture19.png)

11. Save your project and go to **Variables**.

![](../screenshots/Picture20.png)

12. Switch to **Variables**. Go to **Data variables** and add a new data variable by choosing the **"+"** button.

![](../screenshots/Picture21.png)

13. Choose **Incidents**.

![](../screenshots/Picture22.png)

14. Select **New data record** for the variable type.

![](../screenshots/Picture23.png)

15. In the same way add a new data variable by choosing **Medicaldevice**. This time leave the **Data variable type** as by default: **Collection of data records**.

![](../screenshots/Picture24.png)

16. Make sure that the name of the variable is `Medicaldevice1` considering the capital letters (not e.g. `MedicalDevice1` or something else). It's important, because it will be used in the formula later. Change the name if you have it different.

![](../screenshots/Picture24a.png)

17. Save your project.

![](../screenshots/Picture25.png)

## Next Step

[Build the Application Logic](../3_Logic%20building/Readme.md)
