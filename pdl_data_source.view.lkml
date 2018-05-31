view: pdl_data_source {
  sql_table_name: dbo.PDL_DataSource ;;

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

  dimension: website_link {
    type: string
    sql: ${TABLE}.WEBSITE_LINK ;;
  }

  measure: count {
    type: count
    drill_fields: [datasource_name, fulfillment_type.fulfillment_type_id, datasource_status.datasource_status_id, datasource_status.status_name]
  }
}
