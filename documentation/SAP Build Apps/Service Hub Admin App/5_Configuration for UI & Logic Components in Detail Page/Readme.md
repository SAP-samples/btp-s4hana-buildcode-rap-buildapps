# Configuration for UI and Logic Components in Detail Page


1. Make sure that you are on the **Incident Detail** page and you are in the **User Interface** view. No screen component should be selected. Open the **Logic Editor** tab.

![](../screenshots/Picture108.png)

2. Select the first **Set page variable** logic component and choose the **ABC** icon under **Assigned value**. Follow the path: **Data and Variables** > **Data Variable** > **Incidents1**.

> Make sure that the **Logic Editor** tab is showing **Page: Incident Detail** (that is shown with the red arrow below). This means you are in the **Logic Editor** for the whole page, not for any single UI component. 

![](../screenshots/Picture109.png)

3. Choose **urgency_code** and then choose **Save**.

![](../screenshots/Picture110.png)

4. Select the second **Set page variable** logic component and choose the **ABC** icon under **Assigned value**. Follow the path: **Data and Variables** > **Data Variable** > **Incidents1**. 

![](../screenshots/Picture111.png)

5. Select **processor** and then choose **Save**.

![](../screenshots/Picture112.png)

> In this logic flow, the urgency and processor information will be saved to the respective page variables 1 second after the page is loaded. By saving this information to the page variable, you can easily interact with it using UI components such as drop-down list or urgency buttons. These components will be added later in this chapter. 

6. Hide the **Logic Editor** tab and save your project.

![](../screenshots/Picture113.png)

7. Select the incident **Title** component. Choose the button under the **Content** field.

![](../screenshots/Picture114.png)

8. Paste the following formula and save it.

~~~
"Title: " + data.Incidents1.title
~~~

![](../screenshots/Picture115.png)

9. Select the incident **Device** component. Choose the button under the **Content** field.

![](../screenshots/Picture116.png)


10. Paste the following formula and save it.

~~~
"Device: " + data.Incidents1.medicaldevice.description
~~~


![](../screenshots/Picture117.png)


11. Select the incident **Status** component. Choose the button under the **Content** field.

![](../screenshots/Picture118.png)


12. Paste the following formula and save it.

~~~
"Status: " + data.Incidents1.status.description
~~~

![](../screenshots/Picture119.png)

13. Select the **Priority** component. Choose the button under the **Content** field.

![](../screenshots/Picture120.png)

14. Paste the following formula and save it.

~~~
"Priority: " + data.Incidents1.urgency.description
~~~

![](../screenshots/Picture121.png)

15. Select the **Created at** component. Choose the button under the **Content** field.

![](../screenshots/Picture122.png)

16. Paste the following formula and save it.

~~~
"Created at: " + data.Incidents1.createdAt
~~~

![](../screenshots/Picture123.png)

17. Select the **Company** component. Choose the button under the **Content** field.

![](../screenshots/Picture124.png)

18. Paste the following formula and save it.

~~~
"Company: " + data.Incidents1.company
~~~

![](../screenshots/Picture125.png)

19. Select the **Issue Description** component. Choose the button under the **Content** field.

![](../screenshots/Picture126.png)

20. Paste the following formula and save it.

~~~
"Issue Description: " + data.Incidents1.description
~~~

![](../screenshots/Picture127.png)

21. Select the **Assigned Business Partner** component. Choose the button under the **Content** field.

![](../screenshots/Picture128.png)

22. Paste the following formula and save it.

~~~
"Assigned Business Partner: " + data.Incidents1.processor
~~~

![](../screenshots/Picture129.png)

23. Select the drop-down component. Choose the button under the **Content** field.

![](../screenshots/Picture130.png)

24. Paste the following formula and save it.

~~~
MAP(data.BPData1.d.results, {label: item.PartnerName+ " " + "    -    " + item.Distance + " km away", value:item.PartnerName})
~~~

![](../screenshots/Picture131.png)

25. Select the button **Set Status: In Progress**. Open the **Logic Editor** tab.

![](../screenshots/Picture132.png)

26. Select the **Update record logic** component. Choose the **X** button under **Resource name**. 

![](../screenshots/Picture133.png)

27. Select **Incidents** and choose **Save**.

![](../screenshots/Picture134.png)

28. Choose the **ABC** icon under **ID**. Follow the path **Data and Variables** > **Page parameter**.

> As the record will be updated in the **Incidents** data entity, you need to provide the ID of the single record that will be updated.

![](../screenshots/Picture135.png)

29. Select **IncidentID** and then choose **Save**.

![](../screenshots/Picture136.png)

30. Choose **Custom object** under the **Record** field.

![](../screenshots/Picture137.png)

31. Choose the **X** button under **processor**. Follow the path **Data and Variables** > **Page variable**.

![](../screenshots/Picture138.png)

32. Select **SelectedPartner** and then choose **Save**.

> Here, when the Service Admin assigns a Business Partner, this info will be saved to SelectedPartner page variable. So, we will be using this page variable to update the record for processor  

![](../screenshots/Picture139.png)

33. Choose the **X** button under **status_code**. Then choose **Static Text**.

![](../screenshots/Picture140.png)

34. Type **A**.

> When the client creates a new incident from the client application, the incident will have the value "N" that corresponds to **New**. Now, when the Service Admin assigns a Business Partner and sets the status to **In Progress**, the status code will be "A" that corresponds to **Assigned**.

![](../screenshots/Picture141.png)

35. Choose the **X** button under **urgency_code**. Follow the path **Data and Variables** > **Page variable**.

![](../screenshots/Picture142.png)

36. Select **SelectedUrgency** and then choose **Save**.

> When the client creates a new incident from the client application, the client will select one of the urgency level: Low, Medium or High. And in this admin application, the Service Admin will be able to change this urgency level if it is needed. If the admin changes it, this information will be saved under the page variable **SelectedUrgency**. So, you will be using this page variable to update the record for urgency. 

![](../screenshots/Picture143.png)

37. Save the object.

![](../screenshots/Picture144.png)

38. Select the **Create record** node and then choose the **X** button under **Resource name**.

![](../screenshots/Picture145.png)

39. Select the **Conversation** data entity and then choose **Save**.

> All the incident conversations will be saved under this data entity.

![](../screenshots/Picture146.png)

40. Choose the **{}** icon under **record**. Then choose **Formula**.

![](../screenshots/Picture147.png)

41. Paste the following formula and save it.

> This formula assigns the **IncidentID** page parameter to the **incident_ID** data field in the **Conversation** data entity. And then, it saves the message of the admin to the respective data field. 

~~~
{"incident_ID": params.IncidentID, message: pageVars.Message}
~~~

![](../screenshots/Picture148.png)

42. Drag and drop the **Hide Spinner** and **Alert** components to the error node of the **Update Record** component.

![](../screenshots/Picture193.png)

43. Choose the **Alert** component and then choose the **ABC** icon under **Dialog title** and follow the path: **Output value of another node** > **Update Record**.

![](../screenshots/Picture194.png)

44. Choose **Error** and then choose **Save**.

![](../screenshots/Picture195.png)

45. Choose **Set Status: Closed**. Choose the **Update record** node and then choose the **X** button under **Resource name**.

![](../screenshots/Picture149.png)

46. Choose **Incidents** and then choose **Save**.

![](../screenshots/Picture150.png)

47. Choose the **ABC** icon under **ID**. Follow the path **Data and Variables** > **Page parameter**.

> As the record will be updated in **Incidents** data entity, you need to provide the ID of the single record that will be updated.

![](../screenshots/Picture151.png)

48. Choose **IncidentID** and then choose **Save**.

![](../screenshots/Picture152.png)

49. Choose **Custom object** under **Record**.

![](../screenshots/Picture153.png)

50. Choose the **X** button under **processor**. Follow the path **Data and Variables** > **Page variable**.

![](../screenshots/Picture154.png)

51. Choose **SelectedPartner** and then choose **Save**.

> Here, when the Service Admin assigns a Business Partner, this info will be saved to **SelectedPartner** page variable. So, you will be using this page variable to update the record for the processor.

![](../screenshots/Picture155.png)

52. Choose the **X** button under **status_code**. Then choose **Static Value**.

![](../screenshots/Picture156.png)

53. Type **C**.

> When the client creates a new incident from the client application, the incident will have the value "O" that corresponds to **Open**. Now, when the Service Admin assigns a Business Partner and sets the status to **Closed**, the status code will be "C".

![](../screenshots/Picture157.png)

54. Choose the **X** button under **urgency_code**. Follow the path **Data and Variables** > **Page variable**.

![](../screenshots/Picture158.png)

55. Choose **SelectedUrgency** and then choose **Save**.

> When the client creates a new incident from the client application, the client will select one of the urgency levels: Low, Medium or High. And in this admin application, the Service Admin will be able to change this urgency level if it is needed. If the admin changes it, this information will be saved under the page variable SelectedUrgency. So, you will be using this page variable to update the record for urgency. 

![](../screenshots/Picture159.png)

56. Save the object.

![](../screenshots/Picture160.png)

57. Select the **Create record** node and choose the **X** button under **Resource name**.

![](../screenshots/Picture161.png)

58. Select the **Conversation** data entity and then choose **Save**.

> All the conversations will be saved under this data entity.

![](../screenshots/Picture162.png)

59. Choose the **{}** icon under **record**. Then choose **Formula**.

![](../screenshots/Picture163.png)

60. Paste the following formula and save it.

> This formula assigns the **IncidentID** page parameter to the **incident_ID** data field in the **Conversation** data entity. And then, it saves the message of the admin to the respective data field. 

~~~
{"incident_ID": params.IncidentID, message: pageVars.Message}
~~~

![](../screenshots/Picture164.png)

61. Choose **Conversation Main Container**. Click the formula field under **Advanced properties**.

> If the SAP Build Apps project has many UI components, it will be easier to select them using UI Component tree. So this is how you have just selected the Conversation Main Container.

> This Conversation Main Container should be visible only if there is already any conversation.

![](../screenshots/Picture165.png)

62. Paste the following formula and save it.

> This formula checks if the **Conversation1** data variable is empty.

>  Example 1 (data variable is empty): IS_EMPTY will return true and the formula will become NOT(true) then the whole formula will return false. In this case, the visibility will be false. So, when the data variable is empty, this component will not be visible.

>  Example 2 (data variable is not empty): IS_EMPTY will return false and the formula will become NOT(false) then the whole formula will return true. In this case, the visibility will be true. So, when the data variable has some data, this component will be visible.

~~~
NOT(IS_EMPTY(data.Conversation1))
~~~

![](../screenshots/Picture166.png)

63. Select **Record of Conversation** using the component tree. Then, follow the path **Repeat with** > **Data and Variables** > **Data variable**.

![](../screenshots/Picture167.png)

64. Select **Conversation1** and then choose **Save**.

![](../screenshots/Picture168.png)

65. Select **Text 11** component using the component tree. Then, choose the **ABC** icon under **Content**.

![](../screenshots/Picture169.png)

66. Select the **Data item in repeat** option.

![](../screenshots/Picture170.png)

67. Select **message** under **current** and then choose **Save**.

![](../screenshots/Picture171.png)

68. Drag and drop the **Hide Spinner** and **Alert** components to the error node of the **Update Record** component.

![](../screenshots/Picture196.png)

69. Select the **Alert** component and then choose the **ABC** icon under **Dialog title** and follow the path: **Output value of another node** > **Update Record**.

![](../screenshots/Picture197.png)

70. Select **Error** and then choose **Save**.

![](../screenshots/Picture198.png)

71. Save your project.

![](../screenshots/Picture172.png)


You have successfully completed the application! 

## Next Step

[Test Your Application](../6_Test%20your%20application/Readme.md)
