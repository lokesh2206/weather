view: noti_subscriber_property {
  sql_table_name: dbo.Noti_Subscriber_Property ;;

  dimension: prop_name {
    type: string
    sql: ${TABLE}.Prop_Name ;;
  }

  dimension: prop_value {
    type: string
    sql: ${TABLE}.Prop_Value ;;
  }

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.Subscriber_Id ;;
  }

  dimension: subscriber_property_id {
    type: number
    sql: ${TABLE}.Subscriber_Property_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [prop_name]
  }
}
