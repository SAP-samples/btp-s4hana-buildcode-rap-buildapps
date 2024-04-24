# Deploy the application using Single-Click Deployment

The last step in SAP Build Code is to deploy the application to Cloud Foundry. This includes also that destinations are created automatically that the ODATA services can be consumed also by other tools like SAP Build Apps.

1. For the deployment go to **Task Explorer** .

![](./images/taskexplorer.png)

2. click on the Play icon next to **Enable Discovery and Deploy option**.

![](./images/enable.png)

3. Check if the task has launched in the terminal. You will notice that MTA build started. 

![](./images/mta.png)

4. During the deployment a new page will be opened to to sign into CloudFoundry. Click on Open a new browser page to generate your SSO passcode.

![](./images/cflogin.png)

5. After the successful deployment you will find the link of the deployed application in the terminal. Use Ctrl+click to try it out!





