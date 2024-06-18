# Module 3 - Unit 2_3: Configuration for UI Components in Overview Pages

1. Go to page **All Incidents**.

![](../screenshots/Picture10.png)

2. Switch to **Variables**. Go to **Data variables** and choose **Add data variable** for **Medicaldevice** entity.

![](../screenshots/Picture11.png)

3. Add another data variable. This time for **Incidents**.

![](../screenshots/Picture12.png)

4. Switch back to **View**. Select the list item and choose arrows button under **Repeat with** title. Follow the path: **Data and Variables** > **Data variable**.

![](../screenshots/Picture17.png)

5. Select **Incidents1** and then choose **Save**.

![](../screenshots/Picture18.png)

6. Select **ABC** button under the **Primary label** and then choose **Formula**.

![](../screenshots/Picture19.png)

7. Click on the Formula bar.

![](../screenshots/Picture20.png)

8. Paste the formula below and then choose **Save**.

~~~
repeated.current.title+ "\nID: " + repeated.current.ID
~~~

![](../screenshots/Picture21.png)

9. Select **ABC** button under the **Secondary label** and then choose **Formula**.

![](../screenshots/Picture22.png)

10. Click on the Formula bar.

![](../screenshots/Picture23.png)

11. Paste the formula below and then choose **Save**.

~~~
repeated.current.company
~~~

![](../screenshots/Picture24.png)

12. Go to Logic Editor tab.

![](../screenshots/Picture25.png)

13. Select **Open page** logic component and choose the **X** button under the **IncidentID** page parameter.

> Here the Open Page logic component redirect user to the Incident Detail page. As there is already a page parameter called **IncidentID** in the Incident Detail page, we will be passing the ID of the selected incident in this Incidents table while redirecting user to the next page. 

![](../screenshots/Picture26.png)

14. Select **Data item in repeat**.

![](../screenshots/Picture27.png)

15. Select **current**. Then select **ID** and **Save** it.

![](../screenshots/Picture28.png)

16. **Save** your project.

![](../screenshots/Picture29.png)



**[Next Module 3 - Unit 2_4: Configuration for Data Variables in Detail Page ](../4_Configuration%20for%20Data%20Variables%20in%20Detail%20Page/Readme.md) >**
