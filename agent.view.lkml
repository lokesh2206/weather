view: agent {
  sql_table_name: dbo.Agent ;;

  dimension: agent_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Agent_id ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}.Agent_name ;;
  }

  dimension: default_info_needed_address {
    type: string
    sql: ${TABLE}.Default_Info_Needed_Address ;;
  }

  dimension: default_response_address {
    type: string
    sql: ${TABLE}.Default_Response_Address ;;
  }

  dimension: protocol_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Protocol_id ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_id, agent_name, protocol.protocol_id, screening_result.count]
  }
}
