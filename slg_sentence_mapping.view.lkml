view: slg_sentence_mapping {
  sql_table_name: dbo.SLG_Sentence_Mapping ;;

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: sentence_abbreviation_id {
    type: number
    sql: ${TABLE}.Sentence_Abbreviation_Id ;;
  }

  dimension: sentence_mapping_id {
    type: number
    sql: ${TABLE}.Sentence_Mapping_Id ;;
  }

  dimension: sentence_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Sentence_Type_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [sentence_type.sentence_type_id, jurisdiction.jurisdiction_id]
  }
}
