view: vw_sanitize_charge_mapping {
  sql_table_name: dbo.vw_sanitize_charge_mapping ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: charge_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Category_id ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_id ;;
  }

  dimension: charge_mapping_id {
    type: number
    sql: ${TABLE}.Charge_Mapping_Id ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.State_CODE ;;
  }

  dimension: statute_code {
    type: string
    sql: ${TABLE}.Statute_Code ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [qualified_name, charge_category.charge_category_id, charge_level.charge_level_id, jurisdiction.jurisdiction_id]
  }
}
