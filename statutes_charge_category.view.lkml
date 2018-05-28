view: statutes_charge_category {
  sql_table_name: dbo.Statutes_Charge_Category ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: charge_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.charge_category_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}.rowNumber ;;
  }

  dimension: srn {
    type: string
    sql: ${TABLE}.srn ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, charge_category.charge_category_id]
  }
}
