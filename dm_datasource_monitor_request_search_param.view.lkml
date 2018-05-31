view: dm_datasource_monitor_request_search_param {
  sql_table_name: dbo.DM_Datasource_Monitor_Request_Search_Param ;;

  dimension: dm_datasource_monitor_request_search_param_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DM_Datasource_Monitor_Request_Search_Param_Id ;;
  }

  dimension: datasource_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Datasource_Status_Id ;;
  }

  dimension: dm_datasource_monitor_request_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DM_Datasource_Monitor_Request_Id ;;
  }

  dimension: global_search_parameter_id {
    type: number
    sql: ${TABLE}.Global_Search_Parameter_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [dm_datasource_monitor_request_search_param_id, dm_datasource_monitor_request.dm_datasource_monitor_request_id, datasource_status.datasource_status_id, datasource_status.status_name]
  }
}
