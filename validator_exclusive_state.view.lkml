view: validator_exclusive_state {
  sql_table_name: dbo.Validator_Exclusive_State ;;

  dimension: validator_exclusive_state_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Validator_Exclusive_State_ID ;;
  }

  dimension: county_jurisdiction_id {
    type: number
    sql: ${TABLE}.County_Jurisdiction_ID ;;
  }

  dimension: state_jurisdiction_id {
    type: number
    sql: ${TABLE}.State_Jurisdiction_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [validator_exclusive_state_id]
  }
}
