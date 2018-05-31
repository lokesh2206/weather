view: vw_disposition_abbreviation_mapping {
  sql_table_name: dbo.vw_dispositionAbbreviationMapping ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: disposition_description_id {
    type: number
    sql: ${TABLE}.Disposition_Description_Id ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction.jurisdiction_id]
  }
}
