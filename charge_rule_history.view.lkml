view: charge_rule_history {
  sql_table_name: dbo.Charge_Rule_History ;;

  dimension: charge_rule_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Charge_Rule_History_Id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Created_At ;;
  }

  dimension: crim_charge_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Crim_Charge_Id ;;
  }

  dimension: rule_description {
    type: string
    sql: ${TABLE}.Rule_Description ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.Rule_Name ;;
  }

  dimension: rule_type {
    type: string
    sql: ${TABLE}.Rule_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [charge_rule_history_id, rule_name, crim_charge.crim_charge_id]
  }
}
