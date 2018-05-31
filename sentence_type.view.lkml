view: sentence_type {
  sql_table_name: dbo.Sentence_Type ;;

  dimension: sentence_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Sentence_Type_Id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: sentence_category {
    type: string
    sql: ${TABLE}.Sentence_Category ;;
  }

  dimension: sentence_type {
    type: string
    sql: ${TABLE}.Sentence_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [sentence_type_id, slg_sentence_mapping.count, vw_sanitize_sentence_mapping.count]
  }
}
