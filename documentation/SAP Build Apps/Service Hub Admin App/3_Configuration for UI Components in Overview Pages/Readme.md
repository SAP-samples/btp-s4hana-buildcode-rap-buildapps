# Module 3 - Unit 2_3: Configuration for UI Components in Overview Pages

1. Go to Page: New Incidents

![](../screenshots/Picture10.png)

2. Switch to Variables. Go to Data variables and add a new data variable for Medicaldevice

![](../screenshots/Picture11.png)

3. Add another data variable. This is for Incidents


![](../screenshots/Picture12.png)

4. Select Incidents1 data variable. Go to the Filter condition


![](../screenshots/Picture13.png)

5. Go to object with properties to add a filtering condition


![](../screenshots/Picture14.png)

6. Add a condition


![](../screenshots/Picture15.png)

7. Select the property from drop down list: status_code. Type "N" for the compared value and save it. Here N represents the New Incidents


![](../screenshots/Picture16.png)

8. Switch back to view. Select the list item and go to Repeat with and follow the path: Data and Variables > Data variable


![](../screenshots/Picture17.png)

9. Select Incidents1 and Save it


![](../screenshots/Picture18.png)

10. Go to Primary label and then go to Formula


![](../screenshots/Picture19.png)

11. Click on the Formula bar


![](../screenshots/Picture20.png)

12. Paste the formula below and Save it

~~~
repeated.current.title+ "\nID: " + repeated.current.ID
~~~

![](../screenshots/Picture21.png)

13. Go to Secondary label and then go to Formula


![](../screenshots/Picture22.png)

14. Click on the Formula bar


![](../screenshots/Picture23.png)

15. Paste the formula below and Save it

~~~
repeated.current.company
~~~

![](../screenshots/Picture24.png)

16. Go to Logic Editor tab


![](../screenshots/Picture25.png)


17. Select Open page logic component and go to the IncidentID page parameter

> Here the Open Page logic component redirect user to the Incident Detail page. As there is already a page parameter called IncidentID in the Incident Detail page, we will be passing the ID of the selected incident in this New Incidents table while redirecting user to the next page. 

![](../screenshots/Picture26.png)


18. Select data item in repeat

![](../screenshots/Picture27.png)


19. Select current. Then select ID and Save it

![](../screenshots/Picture28.png)


20. Save your project

![](../screenshots/Picture29.png)


21. Go to Page: Assigned Incidents

![](../screenshots/Picture30.png)

22. Switch to Variables. Go to Data variables and add a new data variable for Medicaldevice

![](../screenshots/Picture31.png)

23. Add another data variable. This is for Incidents


![](../screenshots/Picture32.png)


24. Select Incidents1 data variable. Go to the Filter condition > object with properties


![](../screenshots/Picture33.png)


25. Select the property from drop down list: status_code. Type "A" for the compared value and save it. Here A represents the Assigned Incidents


![](../screenshots/Picture34.png)

26. Switch back to view. Select the list item and go to Repeat with and follow the path: Data and Variables > Data variable and select Incidents1


![](../screenshots/Picture35.png)


27. Go to Primary label and then go to Formula


![](../screenshots/Picture36.png)


28. Paste the formula below and Save it

~~~
repeated.current.title+ "\nID: " + repeated.current.ID
~~~

![](../screenshots/Picture37.png)

29. Go to Secondary label and then go to Formula


![](../screenshots/Picture38.png)

30. Paste the formula below and Save it

~~~
repeated.current.company
~~~

![](../screenshots/Picture39.png)

31. Select Open page logic component and go to the IncidentID page parameter > Data item in repeat

> Here the Open Page logic component redirect user to the Incident Detail page. As there is already a page parameter called IncidentID in the Incident Detail page, we will be passing the ID of the selected incident in this Assigned Incidents table while redirecting user to the next page. 

![](../screenshots/Picture40.png)


32. Select current. Then select ID and Save it

![](../screenshots/Picture41.png)


33. Save your project


![](../screenshots/Picture42.png)


34. Go to Page: Closed Incidents

![](../screenshots/Picture43.png)

35. Switch to Variables. Go to Data variables and add a new data variable for Medicaldevice

![](../screenshots/Picture44.png)

36. Add another data variable. This is for Incidents


![](../screenshots/Picture45.png)


37. Select Incidents1 data variable. Go to the Filter condition > object with properties


![](../screenshots/Picture46.png)


38. Select the property from drop down list: status_code. Type "C" for the compared value and save it. Here A represents the Closed Incidents


![](../screenshots/Picture47.png)


39. Switch back to view. Select the list item and go to Repeat with and follow the path: Data and Variables > Data variable 


![](../screenshots/Picture48.png)


40. Select Incidents1 and Save it


![](../screenshots/Picture49.png)


41. Go to Primary label and then go to Formula


![](../screenshots/Picture50.png)


42. Paste the formula below and Save it

~~~
repeated.current.title+ "\nID: " + repeated.current.ID
~~~

![](../screenshots/Picture51.png)

43. Go to Secondary label and then go to Formula


![](../screenshots/Picture52.png)

44. Paste the formula below and Save it

~~~
repeated.current.company
~~~

![](../screenshots/Picture53.png)

45. Select Open page logic component and go to the IncidentID page parameter > Data item in repeat

> Here the Open Page logic component redirect user to the Incident Detail page. As there is already a page parameter called IncidentID in the Incident Detail page, we will be passing the ID of the selected incident in this Closed Incidents table while redirecting user to the next page. 

![](../screenshots/Picture54.png)


46. Select current. Then select ID and Save it

![](../screenshots/Picture55.png)


47. Save your project


![](../screenshots/Picture56.png)



**[Next Module 3 - Unit 2_4: Configuration for Data Variables in Detail Page ](../4_Configuration%20for%20Data%20Variables%20in%20Detail%20Page/Readme.md) >**
