# Module 3 - Unit 1_3: Logic building 

1. You can see that each input field in the form that you imported using template application has a value that is already bounded. Here is an example for the first input field (Title) is bounded to Incidents1.title. That means, the value of the title will be saved into this data variable after user`s input

![](../screenshots/Picture26.png)

2. Now, we will configure the logic for the button at the end of this form. So that, user can create a new incident by clicking it. Select the button and open the logic editor tab from the bottom of your page.

![](../screenshots/Picture27.png)

3. Let´s check the preconfigured logic to understand the whole process. Once the component (button) is tapped, a spinner will be shown to user to notify them the record creation process has started. Here the spinner will also show a text that can be adjusted by the developer: Incident is being created

![](../screenshots/Picture28.png)

4. Select Create record logic component. Click on the X icon to select a resource and select data entity

![](../screenshots/Picture29.png)

5. Select the data entity: Incidents. Save it. Now, the record will be created in the Incidents data entity

![](../screenshots/Picture30.png)

6. Click on Custom Object

![](../screenshots/Picture31.png)

7. Click on the ABC icon under ID and go to Formula

![](../screenshots/Picture32.png)

8. Click on the formula bar

![](../screenshots/Picture33.png)

9. Paste the formula below and save it

~~~
GENERATE_UUID()
~~~

![](../screenshots/Picture34.png)

10. Click on the X icon under title and Follow the path: Data and Variables > Data variable > Incidents1

![](../screenshots/Picture35.png)

11. Select title and Save it

![](../screenshots/Picture36.png)

12. Click on the X icon under company and Follow the path: Data and Variables > Data variable > Incidents1

![](../screenshots/Picture37.png)

13. Select company and Save it

![](../screenshots/Picture38.png)

14. Click on the X icon under latitude and go to Formula

![](../screenshots/Picture39.png)

15. Click on the formula bar

![](../screenshots/Picture40.png)

16. Paste the formula below and save it. This formula gets the latitude data that Build Apps stores in the sensor variables.

~~~
STRING(sensorVars.geolocation.latestValue.latitude)
~~~

![](../screenshots/Picture41.png)

17. Click on the X icon under createdAt and go to Formula

![](../screenshots/Picture42.png)

18. Click on the formula bar

![](../screenshots/Picture43.png)

19. Paste the formula below and save it. This formula gets current date and time.

~~~
NOW()
~~~

![](../screenshots/Picture44.png)

20. Click on the X icon under longitude and go to Formula

![](../screenshots/Picture45.png)

21. Click on the formula bar

![](../screenshots/Picture46.png)

22. Paste the formula below and save it. This formula gets the longitude data that Build Apps stores in the sensor variables.

~~~
STRING(sensorVars.geolocation.latestValue.latitude)
~~~

![](../screenshots/Picture47.png)

23. Click on the X icon under description and Follow the path: Data and Variables > Data variable > Incidents1 

![](../screenshots/Picture48.png)

24. Select description and Save it

![](../screenshots/Picture49.png)

25. Click on the X icon under status_code

![](../screenshots/Picture50.png)

26. Select Static text

![](../screenshots/Picture51.png)

27. Type N to the status_code field. That is the short form for "New Incidents"

![](../screenshots/Picture52.png)

28. Click on the X icon under urgency_code and Follow the path: Data and Variables > App variable 

![](../screenshots/Picture53.png)

29. Select Urgency

![](../screenshots/Picture54.png)

30. Click on the X icon under medicaldevice_ID and Follow the path: Data and Variables > Data variable > Incidents1 

![](../screenshots/Picture55.png)

31. Select medicaldevice_ID and Save it

![](../screenshots/Picture56.png)

32. Save the object

![](../screenshots/Picture57.png)

33. Save your project

![](../screenshots/Picture58.png)

> After create record process is successfuly completed, the spinner will be hiden. Therefore, "Hide Spinner" component is connected to the first node* of "Create Record" component. A Popup window will be shown to user via Alert logic component.

> *First nodes are always the success node for logic components in SAP Build Apps while the second nodes are the fail nodes. If there are 3 nodes for the logic component, third nodes are the fail nodes.

34.  We want to see a blank form after the incident is created. To do that, click on the last logic component called Set Data Variable and click on the X icon under data variable name to select one 

![](../screenshots/Picture59.png)

35. Select Incidents1 and Save it

![](../screenshots/Picture60.png)

36. Click on Custom object

![](../screenshots/Picture61.png)

37. Here you can see that none of the data fields has a value. That means, the user input data will be removed after the incident is submitted by the user. You can simply close this window.

![](../screenshots/Picture62.png)

38. Save your project 

![](../screenshots/Picture63.png)


You have successfully completed the application! 

**[Next Module 3 - Unit 1_4: Test your application](../4_Test%20your%20application/Readme.md) >**


