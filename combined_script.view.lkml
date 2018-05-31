view: combined_script {
  sql_table_name: dbo.Combined_script ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: grid_script {
    type: string
    sql: ${TABLE}.grid_script ;;
  }

  dimension: script {
    type: string
    sql: ${TABLE}.script ;;
  }

  dimension: staging_script {
    type: string
    sql: ${TABLE}.staging_script ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, table_name]
  }
}
