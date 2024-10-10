-- Create roles
use role useradmin;
create role if not exists proj_leader_ads_dbt_role;
create role if not exists proj_leader_ads_dlt_role;
create role if not exists proj_leader_ads_reporter_role;
create role if not exists proj_leader_ads_data_team_role;


--Create users
CREATE USER IF NOT EXISTS dlt_user
    PASSWORD = 'dlt_user_password123' 
    DEFAULT_WAREHOUSE = proj_leader_ads_wh
    LOGIN_NAME='dlt_user'
    DEFAULT_NAMESPACE='proj_leader_ads.staging'
    COMMENT = 'DLT user for transforming data'
    DEFAULT_ROLE = 'proj_leader_ads_dlt_role';

CREATE USER IF NOT EXISTS dbt_user
    PASSWORD = 'dbt_user_password123' 
    DEFAULT_WAREHOUSE = proj_leader_ads_wh
    LOGIN_NAME='dbt_user'
    DEFAULT_NAMESPACE='proj_leader_ads.warehouse'
    COMMENT = 'DBT user for transforming data'
    DEFAULT_ROLE = 'proj_leader_ads_dbt_role';

CREATE USER IF NOT EXISTS reporter_user
    PASSWORD = 'reporter_user_password123' 
    DEFAULT_WAREHOUSE = proj_leader_ads_wh
    LOGIN_NAME='reporter_user'
    DEFAULT_NAMESPACE='proj_leader_ads.marts'
    COMMENT = 'Reporter user for creating dashboards'
    DEFAULT_ROLE = 'proj_leader_ads_reporter_role';

CREATE USER IF NOT EXISTS anton_melin
    PASSWORD = 'anton_melin_password123' 
    DEFAULT_WAREHOUSE = proj_leader_ads_wh
    LOGIN_NAME='anton_melin'
    DEFAULT_NAMESPACE='proj_leader_ads.staging'
    COMMENT = 'Data team member'
    DEFAULT_ROLE = 'proj_leader_ads_data_team_role';

