view: vw_charge_mapping {
  sql_table_name: dbo.vw_chargeMapping ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
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

  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: statute_code {
    type: string
    sql: ${TABLE}.Statute_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction.jurisdiction_id]
  }
}
