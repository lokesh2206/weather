view: noti_event_type {
  sql_table_name: dbo.Noti_EventType ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: event_type_id {
    type: number
    sql: ${TABLE}.EventType_Id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
