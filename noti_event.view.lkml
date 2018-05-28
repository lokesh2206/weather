view: noti_event {
  sql_table_name: dbo.Noti_Event ;;

  dimension: content_event {
    type: string
    sql: ${TABLE}.Content_Event ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.Event_Id ;;
  }

  dimension: event_type_enum {
    type: string
    sql: ${TABLE}.Event_TypeEnum ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
