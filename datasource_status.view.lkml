view: datasource_status {
  sql_table_name: dbo.Datasource_Status ;;

  dimension: datasource_status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Datasource_Status_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: status_name {
    type: string
    sql: ${TABLE}.Status_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      datasource_status_id,
      status_name,
      audit_pdl_data_source.count,
      dm_datasource_monitor_request_search_param.count,
      pdl_data_source.count,
      staging_pdl_data_source.count
    ]
  }
}
