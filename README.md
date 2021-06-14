# G&R 
![Logo](/images/logo.png)

### Give and Receive 

#### Contacts:</br>
Danielli Cassiano: <daniellicass@ibm.com> </br>
Juliana Morroni: <juliana.morroni@ibm.com> </br>
Suemy Inagaki: <suemy.inagaki@ibm.com>


## What is G&R?
G&R is a mobile app solution for everyone: farmers, merchants or the common population. Its purpose is to serve as a tool that enables the match between food and someone who is in need of it, whether for their own consumption, for animal feed or for fertilizers. With this, we were able to reduce food waste and consequently the emission of carbon dioxide. Using state-of-the-art technology to classify food through images and to identify potential interested parties in the food, we will be able to reduce waste. In a single application, the user can donate and order food and, whenever they want, can see their waste and sustainability statistics.

### Contents:

- [Short Description](#short%20description)
- [Long Description](#long%20description)
- [Video](#video)
- [App](#app)
- [Architecture](#architecture)
- [IBM Cloud Services](#technology)
- [Project Roadmap](#roadmap)



🍎🤝👨‍🌾🌱
### Short Description

### Long Description


### Video


### App

You can simulate using the app by clicking this link. As at first we developed it to be a mobile app, we've restricted the screen size to simulate how it works on a cell phone. Also, the app isn't complete yet, but it's a great way to experience and feel what it would be like if you were to use the app in the future.  

[<img src="/images/logo.png" width="50"/>](https://suemy-inagaki.github.io/#/)

### Architecture
![Architecture](/images/architecture.png)

1) User access the mobile app
2) Upload a photo to phone and add a food
3) NodeRed receive the data and send it to private cloud
4) The image is sent to a model created with Visual Recognition and Watson Studio to be classified into consumption, animal feed and fertilizer. Then, data will be stored in Cloud Object Storage. 
5) The Machine Learning model will predict a potential interest in the food and send the notification to contribute to the match. 
### Technology

We implemented the app in flutter as it is a very versatile language and allows using the same code for an iOS, Android and Web app. That way, when we need to scale the application, we could do this easily.

And, as mentioned in the architecture section, we plan to use a machine learning model created with Watson Visual Recognition and Watson Studio to classify images and a machine learning model to predict potential people interested in the food, enabling the increase of matches and the reduction of waste. In order to scale the application, we thought about deploying it on the Ibm Cloud and using Cloud Object Storage to store the data.

### Roadmap 


Run this app using the command: flutter run --no-sound-null-safety





