view: noti_alert {
  sql_table_name: dbo.Noti_Alert ;;

  dimension: event_id {
    type: number
    sql: ${TABLE}.Event_Id ;;
  }

  dimension: immediate_action {
    type: string
    sql: ${TABLE}.Immediate_Action ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
