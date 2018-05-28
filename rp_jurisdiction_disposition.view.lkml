view: rp_jurisdiction_disposition {
  sql_table_name: dbo.RP_Jurisdiction_Disposition ;;

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_Id ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.IsActive ;;
  }

  dimension: juridiction_id {
    type: number
    sql: ${TABLE}.Juridiction_Id ;;
  }

  dimension: lower_threshold {
    type: number
    sql: ${TABLE}.LowerThreshold ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_Id ;;
  }

  dimension: rp_juridiction_disposition_id {
    type: number
    sql: ${TABLE}.RP_Juridiction_Disposition_Id ;;
  }

  dimension: upper_threshold {
    type: number
    sql: ${TABLE}.UpperThreshold ;;
  }

  measure: count {
    type: count
    drill_fields: [disposition_type.disposition_type_id]
  }
}
