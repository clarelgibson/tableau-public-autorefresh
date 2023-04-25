# Tableau Public Auto-refresh <img src="./assets/img/logo.png" align="right" width="200" style="margin-left:50px;"/>

This project explores how to use R, Googlesheets and Tableau Public in conjunction to create an automated data pipeline.

## Description
[Tableau Public](https://public.tableau.com/app/discover) is a free platform for exploring, creating and publicly sharing data visualizations online. The free-to-use nature of Tableau Public comes with some limitations, one of which is the restrictions around scheduled refreshing of the source data for your dashboards. If you have ever developed a Tableau Public dashboard that uses data that changes over time, you may have found yourself manually refreshing your data in the desktop application and then republishing to Tableau Public online.

This project describes one method of automating the data pipeline, by taking advantage of several additional free-to-use tools:

- [R](https://www.r-project.org) for data extraction, transformation and loading (ETL);
- [Googlesheets](https://www.google.co.uk/sheets/about) and [Google Drive](https://drive.google.com) for storing the clean data to be supplied to Tableau Public;
- [Github Actions](https://docs.github.com/en/actions) for automatic deployment.

The project uses dummy data generated in R to illustrate the methods. The dashboard containing the final output of this project can be found [here](https://public.tableau.com/views/TableauPublicAuto-Refresh/Dashboard?:language=en-GB&publish=yes&:display_count=n&:origin=viz_share_link).

## Getting Started

### Requirements

- RStudio 2023.03.0
- R 4.2.1
- R packages (`googledrive` and `googlesheets4`)
- A [Google Drive](https://drive.google.com) account
- A [Tableau Public](https://public.tableau.com/app/discover) account
- A [Github](https://github.com) account

## Authors

- [Clare Gibson](https://github.com/clarelgibson)

## Licence
This project is licensed under the CC0 1.0 Universal license. See the [LICENSE](./LICENSE) for details.

## Acknowledgements

- Logo icon created by [Uniconlabs - Flaticon](https://www.flaticon.com/free-icons/data-processing)

## Contact

- Raise an [issue](https://github.com/clarelgibson/tableau-public-autorefresh/issues)
- Suggest a [feature](https://github.com/clarelgibson/tableau-public-autorefresh/issues)
- [Anything else](mailto:surreydatagirl@gmail.com)