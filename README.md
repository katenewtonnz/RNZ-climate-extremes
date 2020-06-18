# RNZ climate extremes: Plotting NIWA's future climate projections for New Zealand

This is the repo for the data analysis and visualisations included in the feature story [Beyond reasonable drought: New Zealand's climate future](https://www.rnz.co.nz/stories/2018750899/climate-extremes) published by RNZ's [In Depth section](https://www.radionz.co.nz/news/in-depth) on 18 June, 2020.

It contains the data and code used to analyse projected changes in 'hot days' (days over 25 degrees Celsisu) and 'rain days' (days with 1mm or more of rain) in New Zealand between 1972 and 2100. It also contains analysis of the data from NIWA's Drought Monitor, along with the code for the visualisations that accompanied the final story.

- [Data](#data)
- [Analysis](#analysis)
- [Feedback](#feedback)

### Prerequisites

You'll need the latest versions of [R](https://www.r-project.org/) and [R Studio](https://www.rstudio.com/).
This project was created with R version 3.5.1.

## Data

The data for both  aspects of this project was supplied by New Zealand's National Institute for Atmospheric and Water Research (NIWA). 

The projected climate data used in all-extremes.Rmd came from NIWA's [Our Future Climate website](https://ofcnz.niwa.co.nz/#/nationalMaps), which provides historical and future climate projections for multiple locations in New Zealand. The site contains projections for each of the four representative concentration pathways (RCPs) developed by the Intergovernmental Panel on Climate Change (IPCC).

The drought data used in drought-graph.Rmd came from NIWA's [Drought Monitor](https://niwa.co.nz/climate/information-and-resources/drought-monitor), which is updated daily.

|Folder|Details|
|---|---|
|raw-data/ofc-data|CSVs downloaded from the Our Future Climate site for 'hot days' and 'cold days' from nine NZ locations|
|drought-indices|Drought Monitor CSVs for each of NZ's 67 districts, downloaded 25 May 2020|

## Analysis

|File/Folder|Details|
|---|---|
|all-extremes.Rmd|R Markdown containing the R code used to import, tidy and visualise the projected climate data|
|all-extremes.html|HTML output of the above Rmd file|
|drought-graph.Rmd|R Markdown containing the R code used to import, tidy and visualise the Drought Monitor data|
|drought-graph.html|HTML output of the above Rmd file|
|scripts|Folder containing a script that is called by the all-extremes.Rmd file|
|animations/hot-gifs|Contains output gifs for 'hot days' from all-extremes.Rmd|
|animations/rain-gifs|Contains output gifs for 'rain days' from all-extremes.Rmd|
|images|Contains the single output graph from drought-graph.Rmd|

Note: The gifs used in the story contain minor tweaks to scales and labels, done using Adobe After Effects.

---

## Feedback

I am a fairly haphazard R user and still learning so would welcome feedback on the code.
[I'm a journalist at Radio New Zealand (RNZ)](https://www.radionz.co.nz/authors/kate%20-newton) - you can contact me at kate.newton@rnz.co.nz
