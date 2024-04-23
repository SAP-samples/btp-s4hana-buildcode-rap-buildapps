# Module 3 - Unit 2_5: Configuration for UI & Logic Components in Detail Page


1. Make sure that you are in the page Incident Detail and you are in the UI Canvas view. Open the logic editor tab


![](../screenshots/Picture108.png)


2. Select the first Set page variable logic component and click on the ABC icon under assigned value. Follow the path: Data and Variables > Data Variable

> Make sure that the logic editor tab is showing "Page:Incident Detail" (that is shown with the red arrow below). This means you are in the logic editor for the whole page, not for any single UI component. 

![](../screenshots/Picture109.png)


3. Select urgency_code and Save it

![](../screenshots/Picture110.png)


4. Select the second Set page variable logic component and click on the ABC icon under assigned value. Follow the path: Data and Variables > Data Variable. 

![](../screenshots/Picture111.png)


5. Select processor and Save it

![](../screenshots/Picture112.png)


> In this logic flow, the urgency and processor information will be saved to the respective page variables 1 second after the page is loaded. By saving those information to the page variable, we can easily interact with them using UI components such as drop down list or urgency buttons that you will in this chapter. 


6. Hide the logic editor tab and save your project.

![](../screenshots/Picture113.png)


7. Select the Incident Title component. Go to the content field.

![](../screenshots/Picture114.png)


8. Paste the following formula and save it

~~~
"Title: " + data.Incidents1.title
~~~


![](../screenshots/Picture115.png)


9. Select the Incident Device Code component. Go to the content field.

![](../screenshots/Picture116.png)


10. Paste the following formula and save it 

~~~
"Device: " + data.Incidents1.medicaldevice.description
~~~


![](../screenshots/Picture117.png)


11. Select the Incident Status component. Go to the content field.

![](../screenshots/Picture118.png)


12. Paste the following formula and save it

~~~
"Status: " + data.Incidents1.status.description
~~~


![](../screenshots/Picture119.png)


13. Select the Priority component. Go to the content field.

![](../screenshots/Picture120.png)


14. Paste the following formula and save it

~~~
"Priority: " + data.Incidents1.urgency.description
~~~


![](../screenshots/Picture121.png)


15. Select the Created at component. Go to the content field.

![](../screenshots/Picture122.png)


16. Paste the following formula and save it

~~~
"Created at: " + data.Incidents1.createdAt
~~~


![](../screenshots/Picture123.png)


17. Select the Company component. Go to the content field.

![](../screenshots/Picture124.png)


18. Paste the following formula and save it

~~~
"Company: " + data.Incidents1.company
~~~


![](../screenshots/Picture125.png)


19. Select the Issue Description component. Go to the content field.

![](../screenshots/Picture126.png)


20. Paste the following formula and save it

~~~
"Issue Description: " + data.Incidents1.description
~~~


![](../screenshots/Picture127.png)

21. Select the Assigned Business Partner component. Go to the content field.

![](../screenshots/Picture128.png)


22. Paste the following formula and save it

~~~
"Assigned Business Partner: " + data.Incidents1.processor
~~~


![](../screenshots/Picture129.png)


23. Select the drop-down component. Go to option list field.

![](../screenshots/Picture130.png)


24. Paste the following formula and save it

~~~
MAP(data.BPData1.d.results, {label: item.PartnerName+ " " + "    -    " + item.Distance + " km away", value:item.PartnerName})
~~~

![](../screenshots/Picture131.png)


25. Select the button Set Status: In Progress. Open the Logic editor tab.

![](../screenshots/Picture132.png)

26. Select Update record logic component. Click on the X under Resource name. 

![](../screenshots/Picture133.png)


27. Select Incidents and Save it

![](../screenshots/Picture134.png)


28. Click on ABC icon under ID. Go to Data and Variables > Page parameter

>As the record will be updated in Incidents data entity, we need to provide the ID of the single record that will be updated.

![](../screenshots/Picture135.png)


29. Select IncidentID and Save it

![](../screenshots/Picture136.png)


30. Go to Custom object

![](../screenshots/Picture137.png)


31. Click on X under processor. Go to Data and Variables > Page variable

![](../screenshots/Picture138.png)


32. Select SelectedPartner and Save it

> Here, when the Service Admin assigns a Business Partner, this info will be saved to SelectedPartner page variable. So, we will be using this page variable to update the record for processor  

![](../screenshots/Picture139.png)



33. Click on X under status_code. Go to Static Value

![](../screenshots/Picture140.png)


34. Type A

> When the client creates a new incident from the client app, the incident will have the value "O" that corresponds to "Open". Now, when the Service Admin assigns a Business Partner and sets the status to In Progress, the status code will be "A" that corresponds to "Assigned".

![](../screenshots/Picture141.png)


35. Click on X under urgency_code. Go to Data and Variables > Page variable

![](../screenshots/Picture142.png)

36. Select SelectedUrgency and Save it

> When the client creates a new incident from the client app, the client will select one of the urgency level: Low, Medium or High. And in this admin app, Service Admin will be able to change this urgency level if it is needed. If admin changes it, this information will be saved under the page variable SelectedUrgency. So, we will be using this page variable to update the record for urgency. 

![](../screenshots/Picture143.png)


37. Save the object

![](../screenshots/Picture144.png)


38. Select Create record and Click on X under Resource name

![](../screenshots/Picture145.png)


39. Select Conversation data entity and Save it

> All the conversations will be saved under this data entity

![](../screenshots/Picture146.png)


40. Click on the {} icon under record. Go to Formula

![](../screenshots/Picture147.png)


41. Paste the following formula and save it


> This formula assigns the page parameter IncidentID to the data field incident_ID in the Conversation data entity. And then, it saves the message of the admin to the respective data field. 

~~~
{"incident_ID": params.IncidentID, message: pageVars.Message}
~~~

![](../screenshots/Picture148.png)


42. Select the next button: Set Status: Closed. Select Update record and go to X under Resource name

![](../screenshots/Picture149.png)


43. Select Incidents and Save it

![](../screenshots/Picture150.png)


44. Click on ABC icon under ID. Go to Data and Variables > Page parameter

>As the record will be updated in Incidents data entity, we need to provide the ID of the single record that will be updated.

![](../screenshots/Picture151.png)


45. Select IncidentID and Save it

![](../screenshots/Picture152.png)


46. Go to Custom object

![](../screenshots/Picture153.png)


47. Click on X under processor. Go to Data and Variables > Page variable

![](../screenshots/Picture154.png)


48. Select SelectedPartner and Save it

> Here, when the Service Admin assigns a Business Partner, this info will be saved to SelectedPartner page variable. So, we will be using this page variable to update the record for processor 

![](../screenshots/Picture155.png)


49. Click on X under status_code. Go to Static Value

![](../screenshots/Picture156.png)


50. Type C

> When the client creates a new incident from the client app, the incident will have the value "O" that corresponds to "Open". Now, when the Service Admin assigns a Business Partner and sets the status to Closed, the status code will be "C".


![](../screenshots/Picture157.png)


51. Click on X under urgency_code. Go to Data and Variables > Page variable

![](../screenshots/Picture158.png)


52. Select SelectedUrgency and Save it

> When the client creates a new incident from the client app, the client will select one of the urgency level: Low, Medium or High. And in this admin app, Service Admin will be able to change this urgency level if it is needed. If admin changes it, this information will be saved under the page variable SelectedUrgency. So, we will be using this page variable to update the record for urgency. 

![](../screenshots/Picture159.png)


53. Save the object

![](../screenshots/Picture160.png)


54. Select Create record and Click on X under Resource name

![](../screenshots/Picture161.png)


55. Select Conversation data entity and Save it

> All the conversations will be saved under this data entity

![](../screenshots/Picture162.png)

56. Click on the {} icon under record. Go to Formula

![](../screenshots/Picture163.png)


57. Paste the following formula and Save it

> This formula assigns the page parameter IncidentID to the data field incident_ID in the Conversation data entity. And then, it saves the message of the admin to the respective data field. 

~~~
{"incident_ID": params.IncidentID, message: pageVars.Message}
~~~


![](../screenshots/Picture164.png)


58. Select the Conversation Main Container. Click on the formula field under Advanced properties

> If your Build Apps project has many UI components, it will be easier to select them using UI Component tree. So this is how we just selected the Conversation main Container

> This Conversation Main Container should be visible only if there is already any conversation


![](../screenshots/Picture165.png)


59. Paste the following formula and Save it

> This formula checks if the data variable Conversation1 is empty

>  Example 1 (data variable is empty): IS_EMPTY will return true and the formula will become NOT(true) then the whole formula will return false. In this case, visibility will be false. So, when the data variable is empty, this component will not be visible

>  Example 2 (data variable is not empty): IS_EMPTY will return false and the formula will become NOT(false) then the whole formula will return true. In this case, visibility will be true. So, when the data variable has some data, this component will be visible


~~~
NOT(IS_EMPTY(data.Conversation1))
~~~


![](../screenshots/Picture166.png)


60. Select Record of Conversation using component tree. Then, go to Repeat with > Data and Variables > Data variable

![](../screenshots/Picture167.png)


61. Select COnversation1 and Save it

![](../screenshots/Picture168.png)


62. Select Text 11 component using component tree. Then, click on the ABC icon under Content

![](../screenshots/Picture169.png)


63. Select data item in repeat

![](../screenshots/Picture170.png)


64. Select message under current and Save it

![](../screenshots/Picture171.png)


65. Save your project

![](../screenshots/Picture172.png)


You have successfully completed the application! 

**[Next Module 3 - Unit 2_6: Test your application](../6_Test%20your%20application/Readme.md) >**