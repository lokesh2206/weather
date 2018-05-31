view: pdl_data_source_reporting_param {
  sql_table_name: dbo.PDL_DataSource_Reporting_Param ;;

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: data_source_reporting_param_id {
    type: number
    sql: ${TABLE}.DataSource_Reporting_Param_Id ;;
  }

  dimension: global_reporting_param_id {
    type: number
    sql: ${TABLE}.Global_Reporting_Param_Id ;;
  }

  dimension: mandatory {
    type: string
    sql: ${TABLE}.Mandatory ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
