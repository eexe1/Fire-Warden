# Fire-Warden
2019 Space App Challenges

## Background

An increasing number of fire incidents is making a huge impact on the Earth environment. The climate change has a critical role of helping fire grow longer and more frequent. Fire devastates not only ecological system, but also people who live closely to fire-prone areas. It has been more than 20 incidents in California in 2019. The damage is beyond description. The growing number of fire events and new emerging pattern of fire incidents have significantly affected efficiency of fire rescue and safety of personnel. We discover factors of fire 🔥which can be used to help fire fighters to plan strategies prior to responding to fire events, hence, alleviate the consequential damage.

Interesting fire article about California from NatGeo

## Problem we are solving

Firefighters respond to an incident based on dispatch from command centres. They have a debrief when they reach incident sites. As debriefs need to be short and concise, the amount of information each firefighter comprehend may not be enough to guarantee their own safety and proper decision-making. With help from software, we aggregate and refine multiple relevant data that enhances their awareness of environment. Representing this data in a human-readable fashion is critical. We believe with the right amount of suggestion and prediction it can mitigate and even prevent tremendous loss.

## Prototyping

First, we chose California as our base city due to its abundant open data resource and the recent events of wildfire. (No more fire 🙏) Identifying potential factors of fire is our most important task. We target high risk factor at the outset. Buildings like power plants and gas stations containing extremely inflammable resource where fire should not reach at all. By gathering the preliminary infrastructure dataset, we build a map in R to display them. Second, we retrieve the near-real time active fire data and show them on the map too. As the software is designed for strategy planning, we also add a drawing tool where users can draw/highlight relevant information and share among the team. This is helpful as graphs usually convey information more concisely than written or spoken words. Third, since climate change has huge impact on fire pattern, we have integrated with Azavea the climate change data derived from NASA NEX. The website shows three climate change indices: Average High Temperature, Dry Spell, Max Consecutive Dry Days. These are closely related to the causes of fire. In the prototype, it also show the future prediction in addition to historical data of these three indices. We also integrate the fire threat level identified by local government. It represents what area has higher risk of catching fire.

The information should not just be restricted to certain audience, therefore, we also implement a chatbot that helps normal user to get insights of climate change data. Users may ask prognosis of future temperature in a region. Giving an accessible way to public can raise the awareness too.

## Use case

For instance, an unfortunate fiery event ​has occurred. Command centre operators use the software to identity relevant hazardous factors/infrastructure revolving that incident area. If multiple fire events occur at the same time, they can utilise these factors to prioritise which fire should be extinguished immediately. If fire is around multiple gas stations and even a power plants/conjunctions, it implies higher risk on destruction. Once they are identified, operators may outline a few suggestion routes to help firefighters navigate through the hazard.

## Future Plan

Due to the time constraint, we only identified and integrated a few data sets. ​We plan to expand the range of data sets as well as invest efforts onto data processing that more critical and relevant data can be present for pressing situation. Machine learning can be used to give more insights from data. The Web is merely a starting point as the first responders are likely to be in the field, the needs of mobility application is critical. 

In terms of predication of future fire occurrences, we will first look into the connection between fire and climate change. Using a couple of already-identified features to set up a neural network will help us understand more. For example, length and timing of dry spells may be related to fire occurrences as vegetation gets dry, it burns easily and quickly.

## NASA Resources

NASA NEX from Azavea

Active Fire Data from NASA Fire information for resource management system database

## Built With

R Shiny app in R Langauge

Hosted by Shinyapps.io

SnatchBot

## Demo

[Link](https://fire-warden.shinyapps.io/fire-warden/)

## Tags

#fire, #fireresponder, #hazard, #missioncritical, #warden, #R, #shiny, #machine learning, #neural network, #earth, #environment, #life
