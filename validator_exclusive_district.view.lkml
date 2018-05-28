view: validator_exclusive_district {
  sql_table_name: dbo.Validator_Exclusive_District ;;

  dimension: validator_exclusive_district_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Validator_Exclusive_District_ID ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.District_Code ;;
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
    drill_fields: [validator_exclusive_district_id]
  }
}
