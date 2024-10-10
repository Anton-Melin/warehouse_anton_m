use role securityadmin;

-- Grant roles to all users
grant role proj_leader_ads_dlt_role to role proj_leader_ads_dbt_role;
grant role proj_leader_ads_dbt_role to role proj_leader_ads_data_team_role;
grant role proj_leader_ads_reporter_role to role proj_leader_ads_data_team_role;
grant role proj_leader_ads_dbt_role to user dbt_user;
grant role proj_leader_ads_dlt_role to user dlt_user;
grant role proj_leader_ads_reporter_role to user reporter_user;
grant role proj_leader_ads_data_team_role to user anton_melin;