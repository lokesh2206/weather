view: noti_notification {
  sql_table_name: dbo.Noti_Notification ;;

  dimension: content_type {
    type: string
    sql: ${TABLE}.Content_Type ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.Event_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
