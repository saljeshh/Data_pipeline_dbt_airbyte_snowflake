from dagster_airbyte import airbyte_resource, load_assets_from_airbyte_instance

from .constants import AIRBYTE_CONNECTION_ID, AIRBYTE_CONFIG, DBT_PROJECT_DIR

airbyte_instance = airbyte_resource.configured(AIRBYTE_CONFIG)

# key prefix is needed to fix lineage in dagster.. src_sales is from models stg_sales.sql .. as it was source name
airbyte_assets = load_assets_from_airbyte_instance(airbyte_instance, key_prefix="src_sales")