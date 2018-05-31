view: report_scoring_audit_param {
  sql_table_name: dbo.Report_Scoring_Audit_Param ;;

  dimension: report_scoring_audit_param_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Report_Scoring_Audit_Param_Id ;;
  }

  dimension: global_reporting_param_id {
    type: number
    sql: ${TABLE}.Global_Reporting_Param_Id ;;
  }

  dimension: report_scoring_audit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Report_Scoring_Audit_id ;;
  }

  measure: count {
    type: count
    drill_fields: [report_scoring_audit_param_id, report_scoring_audit.report_scoring_audit_id]
  }
}
