view: audit_sentence {
  sql_table_name: dbo.Audit_Sentence ;;

  dimension: audit_sentence_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Audit_Sentence_ID ;;
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

  dimension: result_crim_sentence_id {
    type: number
    sql: ${TABLE}.Result_Crim_Sentence_ID ;;
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
    drill_fields: [audit_sentence_id, field_name]
  }
}
