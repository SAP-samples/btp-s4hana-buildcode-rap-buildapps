# Adapt Schema for Status and Urgency

In incident managment application, we will remove ID for both Status and Urgency and make code as key. We will adapt the schema using graphical modeler UI.

1. In the **Data Model**, choose **Status** and click.

2. Choose **Open in Graphical Modeler**.

![](./images/statusopen.png)

3. Choose **ID** and then choose **Delete** icon to remove it from schema.

![](./images/statusid.png)

4. Choose **code** and then choose **Show Details** icon.

![](./images/codeselect.png)

5. In the properties of **Key Properties**, choose **Yes**. this will make code as key field for Status schema.

![](./images/codekey.png)

Repeat the whole steps for **Urgency** model as well. The final look of schema for both data model are below.

![](./images/both.png)

