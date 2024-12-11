# Configuration for UI Components in Overview Pages

1. Go to the **All Incidents** page.

![](../screenshots/Picture10.png)

2. Switch to **Variables**. Go to **Data variables** and choose **Add data variable** for the **Medicaldevice** entity.

![](../screenshots/Picture11.png)

> Make sure that the name of the variable is `Medicaldevice1` considering the capital letters (not e.g. `MedicalDevice1` or something else). It's important, because it will be used in the formula later. Change the name if you have it different.
>
> ![](../screenshots/Picture11a.png)

3. Add another data variable, this time for **Incidents**.

![](../screenshots/Picture12.png)

4. Switch back to **User Interface**. Select the list item and choose the Arrows button under the **Repeat with** title. Follow the path: **Data and Variables** > **Data variable**.

![](../screenshots/Picture17.png)

5. Choose **Incidents1** and then choose **Save**.

![](../screenshots/Picture18.png)

6. Choose the **ABC** button under **Primary label** and then choose **Formula**. 

> You should have the `List Item 1` selected.

![](../screenshots/Picture19.png)

7. Click the Formula bar.

![](../screenshots/Picture20.png)

8. Paste the formula below and then choose **Save**.

~~~
repeated.current.title+ "\nID: " + repeated.current.ID
~~~

![](../screenshots/Picture21.png)

9. Choose the **ABC** button under **Secondary label** and then choose **Data item in repeat**.

![](../screenshots/Picture22.png)

10. Choose **current** and then choose **company** from the list. Then choose **Save**.

![](../screenshots/Picture23.png)

11. Go to the **Logic Editor** tab.

![](../screenshots/Picture25.png)

12. Select the **Open page** logic component and choose the **X** button under the **IncidentID** page parameter.

Here the **Open Page** logic component redirects the user to the **Incident Detail** page. As there is already a page parameter called **IncidentID** in the **Incident Detail** page, you will be passing the ID of the selected incident in this **Incidents** table while redirecting the user to the next page. 

![](../screenshots/Picture26.png)

13. Choose **Data item in repeat**.

![](../screenshots/Picture27.png)

14. Choose **current** and then select **ID** and save it.

![](../screenshots/Picture28.png)

15. Save your project.

## Next Step

[Configuration for Data Variables in Detail Page](../4_Configuration%20for%20Data%20Variables%20in%20Detail%20Page/Readme.md)
