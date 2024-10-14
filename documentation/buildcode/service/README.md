# Adapt the Service Domain 

## Remove Draft Handling for **Incident**, **Medicaldevice**, **Status**, and **Urgency** 

The Equipment Maintenance sample application serves as a read-mode application. Uncomment or remove **@odata.draft.enabled** from all exposed entities.

1. Choose **Explorer** icon in the main menu bar. Right click on the **service.cds** file, then choose **Open with**.

    ![](./images/open-with.png)

2. In the popup menu choose **CDS Graphic Modeler** option.

    ![](./images/graphical-modeler.png)

3. The current services model looks like on the screenshot below. You can pan and scale the view, and move entities to display the schema in the more convinient way.

    ![](./images/explorer.png)

4. Choose **Incidents** and then choose **Show Details** icon.

    ![](./images/incidents-show-details.png)

5. On the right pane choose **Settings** tab and disable **Draft Editing**.

    ![](./images/incidentdraft.png)

6. Repeat the same steps for **Medicaldevice**, **Status** and **Urgency** entities.

## Add a Projection of **Conversation** to the Incident Service

1. Choose **service.cds** file and make sure that it's open in graphical modeler.

    ![](./images/explorer.png)

2. Choose **Add Entity**. 

    ![](./images/addentity.png)

3. Drop the empty projection somewhere in the editor.

    ![](./images/projection.png)

4. In the **Projection** setting:
    1. In the dropdown, choose **equipmentmaintenance.Conversation**.
    2. Uncheck **Enable draft editing**.
    3. Choose **Save**.

    ![](./images/projectionsetting.png)

5. This will project a **Conversation** entity and establish a composition relationship with incidents.

    ![](./images/finalconversation.png)

## Next Step

[Add UI to the Equipment Maintenance Application](../ui/README.md)


