view: except_charge_category {
  sql_table_name: dbo.except_charge_category ;;

  dimension: cma_except_charge_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Cma_Except_Charge_Category_Id ;;
  }

  dimension: charge_category_name {
    type: string
    sql: ${TABLE}.Charge_Category_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [cma_except_charge_category_id, charge_category_name]
  }
}
