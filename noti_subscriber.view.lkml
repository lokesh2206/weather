view: noti_subscriber {
  sql_table_name: dbo.Noti_Subscriber ;;

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.Subscriber_Id ;;
  }

  dimension: subscriber_type {
    type: string
    sql: ${TABLE}.Subscriber_type ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
