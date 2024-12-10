## About Dataset
<p align="justify">The Paris 2024 Olympic Summer Games dataset provides comprehensive information about the Summer Olympics held in 2024. It covers various aspects of the event, including participating countries, athletes, 
sports disciplines, medal standings, and key event details. More about the Olympic Games on the official site https://olympics.com/en/paris-2024</p> 

## Database Diagram
<img src="https://github.com/Bayunova28/ParisOlympics_DWH_Analytics/blob/main/ParisOlympics-Tabular-Data/DatabaseDiagram.png" height="550" width="1100">

## ETL Pipeline
<img src="https://github.com/Bayunova28/ParisOlympics_DWH_Analytics/blob/main/ParisOlympics-ETL-Pipeline/ParisOlympics-Pipeline-ETL.png" height="400" width="1100">

## OLAB Multidimensional Tabular Cube
<img src="https://github.com/Bayunova28/ParisOlympics_DWH_Analytics/blob/main/ParisOlympics-Tabular-Data/OLAB-Tabular-Event-Cube.png" height="600" width="1100">
<img src="https://github.com/Bayunova28/ParisOlympics_DWH_Analytics/blob/main/ParisOlympics-Tabular-Data/OLAB-Tabular-EventType-Cube.png" height="250" width="1100">
<img src="https://github.com/Bayunova28/ParisOlympics_DWH_Analytics/blob/main/ParisOlympics-Tabular-Data/OLAB-Tabular-Function-Cube.png" height="250" width="1100">
<img src="https://github.com/Bayunova28/ParisOlympics_DWH_Analytics/blob/main/ParisOlympics-Tabular-Data/OLAB-Tabular-Schedule-Cube.png" height="600" width="1100">

## Dataset Structure
| Table  | Description | 
| ------- | ---------- |
| athletes.csv | personal information about all athletes |
| coaches.csv | personal information about all coaches |
| events.csv | all events that had a place |
| medals.csv | all medal holders |
| medals_total.csv | all medals (grouped by country) |
| schedule.csv | day-by-day schedule of all events |
