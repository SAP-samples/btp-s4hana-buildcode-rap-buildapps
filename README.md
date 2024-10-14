# Mastering SAP S/4HANA Extension with SAP Build, SAP Build Code and SAP BTP ABAP 
[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/btp-s4hana-buildcode-rap-buildapps)](https://api.reuse.software/info/github.com/SAP-samples/btp-s4hana-buildcode-rap-buildapps)
## Description
This scenario showcases the integration of a mobile application developed using SAP Build Apps with two backend services: SAP Build Code with Joule (CAP) and ABAP RESTful Application Programming Model (RAP). The mobile application, created with a no-code approach, interacts seamlessly with CAP and RAP backend services, offering advanced functionalities and data access.

![](./documentation/images/buildcode.png)

## Solution Diagram

![](./documentation/images/solution-diagram.png)

## Focus Topics 

The tutorial focuses on building **Fusion Application** on where professional and citizen developers come together. The following aspects are:

1. Build and deploy a full-stack application using [SAP Build Code with Joule](https://www.sap.com/india/products/technology-platform/developer-tools.html)

![](./documentation/images/joule.png)

2. Build and deploy a full-stack application using [SAP BTP ABAP Environment (RAP)](https://help.sap.com/docs/abap-cloud/abap-rap/abap-restful-application-programming-model).

![](./documentation/images/rap.png)

3. Build and deploy a mobile application using [SAP Build](https://www.sap.com/products/technology-platform/low-code.html)

![](./documentation/images/build.png)

## Business Scenario

![](./documentation/images/story.png)

1. Suzan, a dedicated medical technician at SBA Medical clinic, diligently inspected the vital equipment ensuring the highest standards of patient care. As she meticulously examined each device, her keen eye caught a minor glitch in one of the medical instruments.

2. Without hesitation, Suzan reached for her trusted companion in the digital realm – the Service Hub mobile application. With swift taps on her smartphone screen, she raised an incident report detailing the issue encountered in the medical equipment.

![](./documentation/images/servicehubadmin.png)

3. Meanwhile, in the heart of the digital infrastructure, the application developed with the SAP Cloud Application Programming Model (CAP), powered with Joule, seamlessly sprang into action. The incident reported by Suzan was swiftly captured and recorded within the CAP application, ensuring a centralized repository for all service-related matters.

4. As the incident popped up on the radar of Alex, the Service Hub Admin, the seasoned service manager at Heath Tech Devices, took charge. With a few deft clicks within the Service Hub Admin interface, Alex assessed the incident, evaluated its priority level, and swiftly assigned a proficient processor to address the issue.

![](./documentation/images/servicehub.png)

5. In the background, the application developed with the ABAP RESTful application programming model (RAP), built using the SAP BTP, ABAP environment, came into play. Leveraging its capabilities, the RAP application seamlessly calculated the precise geographical location of the assigned processor by fetching latitude and longitude details from the CAP application.

6. Armed with this vital geo-location information, Suzan could now track the progress of the assigned processor in real-time. With a sense of reassurance, she monitored the processor's journey and estimated the arrival time, ensuring minimal disruption to the clinic's operations.

## Where to Start?

Follow the modules below for a quick start. Each module contains several steps.

|  **Module**  |  **Description** | 
| ----------- | ----------- | 
| **Module 1**: [SAP Build Code with Joule](./documentation/buildcode/Readme.md) | Build and Deploy Full Stack CAP Application on Cloud Foundry using AI-enabled Joule |
| **Module 2**: [RESTful ABAP Service](./documentation/rap/README.md) | Build and Deploy Full Stack Restful ABAP Application | 
| **Module 3**: [SAP Build Apps](./documentation/SAP%20Build%20Apps/Readme.md)  | Configure SAP Build Apps and create two Web applications: one for customers, one for admin |

## How to Get Support
[Create an issue](https://github.com/SAP-samples/btp-s4hana-buildcode-rap-buildapps/issues/new) in this repository if you find a bug or have questions about the content.
 
For additional support, [ask a question in SAP Community](https://answers.sap.com/questions/ask.html).

## Contributing
If you wish to contribute code, offer fixes or improvements, please send a pull request. Due to legal reasons, contributors will be asked to accept a DCO when they create the first pull request to this project. This happens in an automated fashion during the submission process. SAP uses [the standard DCO text of the Linux Foundation](https://developercertificate.org/).

## License
Copyright (c) 2024 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSE) file.
