view: noti_event_subscriber {
  sql_table_name: dbo.Noti_Event_Subscriber ;;

  dimension: event_id {
    type: number
    sql: ${TABLE}.Event_Id ;;
  }

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.Subscriber_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
