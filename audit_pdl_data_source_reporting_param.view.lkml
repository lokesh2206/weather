view: audit_pdl_data_source_reporting_param {
  sql_table_name: dbo.Audit_PDL_DataSource_Reporting_Param ;;

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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.user_id, users.name, change_log.change_log_id]
  }
}
