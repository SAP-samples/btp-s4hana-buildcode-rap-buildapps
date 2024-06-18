# Module 3 - Unit 2_3: Configuration for UI Components in Overview Pages

1. **Go** to Page: All Incidents

![](../screenshots/Picture10.png)

2. **Switch** to Variables. **Go** to Data variables and **add** a new data variable for Medicaldevice

![](../screenshots/Picture11.png)

3. **Add** another data variable. This is for Incidents


![](../screenshots/Picture12.png)

4. **Switch** back to view. **Select** the list item and **go** to Repeat with and **follow the path**: Data and Variables > Data variable


![](../screenshots/Picture17.png)

5. **Select** Incidents1 and **Save** it


![](../screenshots/Picture18.png)

6. **Go** to Primary label and then **go** to Formula


![](../screenshots/Picture19.png)

7. **Click** on the Formula bar


![](../screenshots/Picture20.png)

8. **Paste** the formula below and **Save** it

~~~
repeated.current.title+ "\nID: " + repeated.current.ID
~~~

![](../screenshots/Picture21.png)

9. **Go** to Secondary label and then **go** to Formula


![](../screenshots/Picture22.png)

10. **Click** on the Formula bar


![](../screenshots/Picture23.png)

11. **Paste** the formula below and **Save** it

~~~
repeated.current.company
~~~

![](../screenshots/Picture24.png)

12. **Go** to Logic Editor tab


![](../screenshots/Picture25.png)


13. **Select** Open page logic component and **go** to the IncidentID page parameter

> Here the Open Page logic component redirect user to the Incident Detail page. As there is already a page parameter called IncidentID in the Incident Detail page, we will be passing the ID of the selected incident in this Incidents table while redirecting user to the next page. 

![](../screenshots/Picture26.png)


14. **Select** data item in repeat

![](../screenshots/Picture27.png)


15. **Select** current. Then select ID and **Save** it

![](../screenshots/Picture28.png)


16. **Save** your project

![](../screenshots/Picture29.png)



**[Next Module 3 - Unit 2_4: Configuration for Data Variables in Detail Page ](../4_Configuration%20for%20Data%20Variables%20in%20Detail%20Page/Readme.md) >**
