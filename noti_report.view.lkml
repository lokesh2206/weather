view: noti_report {
  sql_table_name: dbo.Noti_Report ;;

  dimension: event_id {
    type: number
    sql: ${TABLE}.Event_Id ;;
  }

  dimension: report_source_url {
    type: string
    sql: ${TABLE}.Report_Source_Url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
