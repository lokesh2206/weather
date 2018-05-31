view: slg_charge_mapping {
  sql_table_name: dbo.SLG_Charge_Mapping ;;

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

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: statute_code {
    type: string
    sql: ${TABLE}.Statute_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [charge_category.charge_category_id, charge_level.charge_level_id, jurisdiction.jurisdiction_id]
  }
}
