Welcome to your new dbt project!

#### Architecture

<p align="center">
    <img src="./images/architecture.png" width="100%">
</p>

#### DASHBOARD POWERBI

<p align="center">
    <img src="./images/powerbi_dashbaord.png" width="100%">
</p>

#### DASHBOARD Tableau

<p align="center">
    <img src="./images/tableau_dashboard.png" width="100%">
</p>

#### DBT Lineage

<p align="center">
    <img src="./images/dbt_graph.png" width="100%">
</p>

#### Airbyte RUN LOG

<p align="center">
    <img src="./images/airbyte_run_Log.png" width="100%">
</p>

#### Docker Airbyte

<p align="center">
    <img src="./images/docker_airbyte.png" width="100%">
</p>

#### Dagster Lineage

<p align="center">
    <img src="./images/dagster_lineage.png" width="100%">
</p>

### Using the starter project

Try running the following commands:

- dbt run
- dbt test
- dbt deps

### Requirements:

1. Airbyte running in docker
2. pip install dagster dagster-airbyte
3. pip install dagster-dbt dagster-webserver
4. dagster-dbt project scaffold --project-name jaffle_dagster (https://docs.dagster.io/integrations/dbt/using-dbt-with-dagster/load-dbt-models)
5. $env:DAGSTER_DBT_PARSE_PROJECT_ON_LOAD = "1"; dagster dev
   If using virtual environment . do ->> $env:PYTHONLEGACYWINDOWSSTDIO = "1" ->> on terminal

## Resource

https://www.youtube.com/watch?v=8340_gU_Zy0&t=1s
