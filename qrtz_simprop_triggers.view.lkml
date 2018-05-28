view: qrtz_simprop_triggers {
  sql_table_name: dbo.QRTZ_SIMPROP_TRIGGERS ;;

  dimension: bool_prop_1 {
    type: string
    sql: ${TABLE}.BOOL_PROP_1 ;;
  }

  dimension: bool_prop_2 {
    type: string
    sql: ${TABLE}.BOOL_PROP_2 ;;
  }

  dimension: dec_prop_1 {
    type: number
    sql: ${TABLE}.DEC_PROP_1 ;;
  }

  dimension: dec_prop_2 {
    type: number
    sql: ${TABLE}.DEC_PROP_2 ;;
  }

  dimension: int_prop_1 {
    type: number
    sql: ${TABLE}.INT_PROP_1 ;;
  }

  dimension: int_prop_2 {
    type: number
    sql: ${TABLE}.INT_PROP_2 ;;
  }

  dimension: long_prop_1 {
    type: number
    sql: ${TABLE}.LONG_PROP_1 ;;
  }

  dimension: long_prop_2 {
    type: number
    sql: ${TABLE}.LONG_PROP_2 ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  dimension: str_prop_1 {
    type: string
    sql: ${TABLE}.STR_PROP_1 ;;
  }

  dimension: str_prop_2 {
    type: string
    sql: ${TABLE}.STR_PROP_2 ;;
  }

  dimension: str_prop_3 {
    type: string
    sql: ${TABLE}.STR_PROP_3 ;;
  }

  dimension: trigger_group {
    type: string
    sql: ${TABLE}.TRIGGER_GROUP ;;
  }

  dimension: trigger_name {
    type: string
    sql: ${TABLE}.TRIGGER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, trigger_name]
  }
}
