view: staging_pdl_data_source {
  sql_table_name: dbo.Staging_PDL_DataSource ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: change_log_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Change_Log_Id ;;
  }

  dimension: charge_level_category_id {
    type: number
    sql: ${TABLE}.ChargeLevel_CategoryId ;;
  }

  dimension: cost_per_search {
    type: string
    sql: ${TABLE}.Cost_Per_Search ;;
  }

  dimension: data_frequency {
    type: number
    sql: ${TABLE}.Data_Frequency ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: datasource_name {
    type: string
    sql: ${TABLE}.Datasource_Name ;;
  }

  dimension: datasource_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Datasource_Status_id ;;
  }

  dimension: depth_of_search {
    type: number
    sql: ${TABLE}.Depth_Of_Search ;;
  }

  dimension: fulfillment_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Fulfillment_Type_Id ;;
  }

  dimension: ignore_sample {
    type: string
    sql: ${TABLE}.Ignore_Sample ;;
  }

  dimension: is_monitoring_active {
    type: string
    sql: ${TABLE}.isMonitoringActive ;;
  }

  dimension: scope_of_search {
    type: number
    sql: ${TABLE}.Scope_Of_Search ;;
  }

  dimension: tat {
    type: number
    sql: ${TABLE}.tat ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  dimension: website_link {
    type: string
    sql: ${TABLE}.Website_Link ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      datasource_name,
      fulfillment_type.fulfillment_type_id,
      datasource_status.datasource_status_id,
      datasource_status.status_name,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
