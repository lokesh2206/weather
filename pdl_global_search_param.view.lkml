view: pdl_global_search_param {
  sql_table_name: dbo.PDL_Global_Search_Param ;;

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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: global_search_parameter_id {
    type: number
    sql: ${TABLE}.Global_Search_Parameter_ID ;;
  }

  dimension: is_configurable {
    type: string
    sql: ${TABLE}.IsConfigurable ;;
  }

  dimension: is_enable {
    type: string
    sql: ${TABLE}.Is_Enable ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.Modified_At ;;
  }

  dimension: param {
    type: string
    sql: ${TABLE}.Param ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
