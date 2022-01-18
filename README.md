# azure_notification_hub_poc

A demo Flutter App (Android only) to receive in-App notification from Azure Notification Hub

This project uses this package (https://pub.dev/packages/azure_notificationhubs_flutter) but the repository was missing or deleted. 
So I had to find a fork and cloned one here : https://github.com/mrafsyam/azure-notification-hub-flutter-example. Credit to the original author - tried to email but it bounced back :-/

This App restricts the format of the Notification payload, otherwise NPE will be thrown. See item #7 below.
Therefore, it is not meant to be used with the Firebase Console notification test.
You should use the Azure Notification Hub for this.

## Getting Started

1. Clone this repo or create a simple App similar to this.

2. On Firebase console, create an App and set it up to use Firebase Cloud Messaging. Get the API key.

3. On Azure Portal, create an Azure Notification Hub. Set the API key at Settings > Google (GCM/FCM)

4. Take note of the Notification Hub name and the Endpoint (Listen) at Manage > Access Policies 

5. Configure the Notification Hub name and the Endpoint in AndroidManifest.xml

6. Run the App

7. Fire a notification via Azure Portal > Notification Hub > Support & Troubleshoting > Test Send.
The format needs to be in the following 
```
{
    "data":{
        "title":"Notification Hub Test Notification",
        "body":"This is a sample notification delivered by Azure Notification Hubs."
     }
}
```
