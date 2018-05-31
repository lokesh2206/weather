view: vw_sanitize_sentence_mapping {
  sql_table_name: dbo.vw_sanitize_sentence_mapping ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: qualified_name {
    type: string
    sql: ${TABLE}.QUALIFIED_NAME ;;
  }

  dimension: sentence_abbreviation_id {
    type: number
    sql: ${TABLE}.Sentence_Abbreviation_Id ;;
  }

  dimension: sentence_category {
    type: string
    sql: ${TABLE}.Sentence_Category ;;
  }

  dimension: sentence_mapping_id {
    type: number
    sql: ${TABLE}.Sentence_Mapping_Id ;;
  }

  dimension: sentence_type {
    type: string
    sql: ${TABLE}.Sentence_Type ;;
  }

  dimension: sentence_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Sentence_Type_Id ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.State_CODE ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [qualified_name, sentence_type.sentence_type_id, jurisdiction.jurisdiction_id]
  }
}
