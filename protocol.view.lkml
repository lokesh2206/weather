view: protocol {
  sql_table_name: dbo.Protocol ;;

  dimension: protocol_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Protocol_id ;;
  }

  dimension: protocol_type {
    type: string
    sql: ${TABLE}.Protocol_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [protocol_id, agent.count]
  }
}
