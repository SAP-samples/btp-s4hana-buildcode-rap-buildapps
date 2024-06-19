# Module 3 - Unit 2_4: Configuration for Data Variables in Detail Page

1. Go to the page: **Incident Detail**. Switch to **Variables**. Select **Data variables** and create a new data variable for **Incidents**.

![](../screenshots/Picture78.png)

2. Change the **Data variable type** to **Single data record** and select **X** button under **ID**. Then follow the path: **Data and Variables** > **Page parameter**.

![](../screenshots/Picture79.png)

3. Select the page parameter **IncidentID** and then choose **Save**. 

![](../screenshots/Picture80.png)

4. Create a new data variable for **Conversation**.

![](../screenshots/Picture81.png)

5. Select **Conversation1** data variable and choose the **X** button under **Filter condition** to select the **Object with properties**.

![](../screenshots/Picture82.png)

6. Select **incident_ID** from the dropdown list for **Property**. Then, choose **ABC** button under **Compared value** to follow the path: **Data and Variables** > **Page parameter**

![](../screenshots/Picture83.png)

7. Select page parameter **Incident ID** and then choose **Save**.

![](../screenshots/Picture84.png)

8. Add a data variable for **BPData**.

![](../screenshots/Picture85.png)

9. Select the data variable **BPData1** and change the **Data variable type** to **Single data record**. Then, open the Logic Editor.

![](../screenshots/Picture86.png)

10. Drag and drop the **Receive event** component. Select the **Event source**: **Page variable "SelectedRadius" changed**.

![](../screenshots/Picture87.png)

11. Remove the logic components **Get record** and **Set data variable**. Click on the component to select and press delete button on your keyboard to remove. 

![](../screenshots/Picture88.png)

12. Drag and drop the following logic components and connect them to each other as it is shown in the screenshot. You will find all the components under Core tab on the left.

>Delay>Get record collection>Set data variable>If condition>Alert>Set page variable 

![](../screenshots/Picture89.png)

13. Select **Delay**. Configure the delay time to 1 second using **Time to wait** and **Unit** fields.

![](../screenshots/Picture90.png)

14. Select **Get record collection**. Select the **X** button under **radius** and follow the path: **Data and Variables** > **Page variable**.

![](../screenshots/Picture91.png)

15. Select the page variable **SalectedRadius** and then choose **Save**.

![](../screenshots/Picture92.png)

16. Select the **X** button under **point_lat** and follow the path: **Data and Variables** > **Data variable**.

![](../screenshots/Picture93.png)

17. Select **latitude** and then choose **Save**.

![](../screenshots/Picture94.png)

18. Select the **X** button under **point_lon** and follow the path: **Data and Variables** > **Data variable**.

![](../screenshots/Picture95.png)

19. Select **longitude** and then choose **Save**.

![](../screenshots/Picture96.png)
 
20. Select **Set data variable** node. Go to the bound field under **Data variable name**.

![](../screenshots/Picture97.png)

21. Select the data variable **BPData1**.

![](../screenshots/Picture98.png)

22. Select the **{}** icon under **data** and then choose **Formula**.

![](../screenshots/Picture99.png)

23. Paste the formula below. This formula will get the output from **Get record collection** component and save it to the **BPData1**.

~~~
outputs["Get record collection"].records
~~~

![](../screenshots/Picture100.png)

24. Select **If condition** node. Then, choose the icon under **Condition** and then select **Formula**.

![](../screenshots/Picture101.png)

25. Click on the Formula Bar.

![](../screenshots/Picture102.png)

26. Paste the formula below and **Save** it. This formula will check if the **BPData1** has any result or not. If there is no result, that means there is no Business Partner around based on the given Latitude, Longitude and Radius.

~~~
IS_EMPTY(data.BPData1.d.results)
~~~

![](../screenshots/Picture103.png)

27. Select the **Alert** component and paste the message below to the **Dialog title** field. This dialog will be shown to the end user if there is no data in **BPData1** data variable.

~~~
No Business Partner can be listed within the given range. Radius is set to maximum to list all Business Partners
~~~

![](../screenshots/Picture104.png)

28. Select the **Set page variable** and then choose the variable field under **Variable name**.

![](../screenshots/Picture105.png)

29. Select the variable: **SelectedRadius** and then choose **Save**.

![](../screenshots/Picture106.png)

30. Add the value **9999** to the **Assigned value**. **Save** your project.

![](../screenshots/Picture107.png)



**[Next Module 3 - Unit 2_5: Configuration for UI & Logic Components in Detail Page](../5_Configuration%20for%20UI%20&%20Logic%20Components%20in%20Detail%20Page/Readme.md) >**
