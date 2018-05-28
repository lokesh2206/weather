view: report_scoring_audit {
  sql_table_name: dbo.Report_Scoring_Audit ;;

  dimension: report_scoring_audit_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Report_Scoring_Audit_id ;;
  }

  dimension: scoring_percentage {
    type: number
    sql: ${TABLE}.Scoring_Percentage ;;
  }

  measure: count {
    type: count
    drill_fields: [report_scoring_audit_id, report_scoring_audit_param.count]
  }
}
