view: sentence {
  sql_table_name: dbo.Sentence ;;

  dimension: sentence_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Sentence_Id ;;
  }

  dimension: actual_sentence_type_id {
    type: number
    sql: ${TABLE}.Actual_Sentence_Type_Id ;;
  }

  dimension: crim_charge_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Crim_Charge_Id ;;
  }

  dimension: sanitized_sentence_type_id {
    type: number
    sql: ${TABLE}.Sanitized_Sentence_Type_Id ;;
  }

  dimension: sentence_info {
    type: string
    sql: ${TABLE}.Sentence_Info ;;
  }

  dimension: sentence_sanitization_level {
    type: string
    sql: ${TABLE}.Sentence_Sanitization_Level ;;
  }

  dimension: system_identifier {
    type: string
    sql: ${TABLE}.System_Identifier ;;
  }

  measure: count {
    type: count
    drill_fields: [sentence_id, crim_charge.crim_charge_id, missing_reporting_param.count]
  }
}
