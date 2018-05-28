view: audit_crim_case {
  sql_table_name: dbo.Audit_Crim_Case ;;

  dimension: audit_crim_case_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Audit_Crim_Case_ID ;;
  }

  dimension: audit_type {
    type: string
    sql: ${TABLE}.Audit_Type ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.Field_Name ;;
  }

  dimension: new_value {
    type: string
    sql: ${TABLE}.New_Value ;;
  }

  dimension: old_value {
    type: string
    sql: ${TABLE}.Old_Value ;;
  }

  dimension: result_crim_case_id {
    type: number
    sql: ${TABLE}.Result_Crim_Case_ID ;;
  }

  dimension: system_identifier {
    type: string
    sql: ${TABLE}.System_Identifier ;;
  }

  dimension_group: update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Update_Date ;;
  }

  measure: count {
    type: count
    drill_fields: [audit_crim_case_id, field_name]
  }
}
