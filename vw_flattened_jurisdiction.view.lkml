view: vw_flattened_jurisdiction {
  sql_table_name: dbo.vw_flattened_jurisdiction ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.District_Name ;;
  }

  dimension: federal_district_name {
    type: string
    sql: ${TABLE}.Federal_District_Name ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: jurisdiction_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_Type_ID ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [district_name, federal_district_name, qualified_name, jurisdiction.jurisdiction_id, jurisdiction_type.jurisdiction_type_id]
  }
}
