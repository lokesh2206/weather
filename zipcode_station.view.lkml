view: zipcode_station {
  sql_table_name: gsod.zipcode_station ;;

  dimension: distance_from_nearest_station {
    type: number
    sql: ${TABLE}.distance_from_nearest_station ;;
  }

  dimension: nearest_station_id {
    type: string
    sql: ${TABLE}.nearest_station_id ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
