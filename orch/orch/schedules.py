"""
To add a daily schedule that materializes your dbt assets, uncomment the following lines.
"""
from dagster_dbt import build_schedule_from_dbt_selection

from dagster import Definitions, ScheduleDefinition, define_asset_job

from .dbt import data_pipe_transform_dbt_assets

schedules = [
#     build_schedule_from_dbt_selection(
#         [data_pipe_transform_dbt_assets],
#         job_name="materialize_dbt_models",
#         cron_schedule="0 0 * * *",
#         dbt_select="fqn:*",
#     ),
    
    ScheduleDefinition(
        job = define_asset_job("all_assets", selection="*"),
        cron_schedule="@daily"
    )
]