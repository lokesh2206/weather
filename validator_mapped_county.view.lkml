view: validator_mapped_county {
  sql_table_name: dbo.Validator_Mapped_County ;;

  dimension: validator_mapped_county_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Validator_Mapped_County_ID ;;
  }

  dimension: county_jurisdiction_id {
    type: number
    sql: ${TABLE}.County_Jurisdiction_ID ;;
  }

  dimension: launch_county_jurisdiction_id {
    type: number
    sql: ${TABLE}.LaunchCounty_Jurisdiction_ID ;;
  }

  dimension: launch_state_jurisdiction_id {
    type: number
    sql: ${TABLE}.LaunchState_Jurisdiction_ID ;;
  }

  dimension: state_jurisdiction_id {
    type: number
    sql: ${TABLE}.State_Jurisdiction_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [validator_mapped_county_id]
  }
}
