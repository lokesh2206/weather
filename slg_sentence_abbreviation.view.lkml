view: slg_sentence_abbreviation {
  sql_table_name: dbo.SLG_Sentence_Abbreviation ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: sentence_abbreviation_id {
    type: number
    sql: ${TABLE}.Sentence_Abbreviation_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
