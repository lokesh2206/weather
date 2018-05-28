view: weightage {
  sql_table_name: dbo.Weightage ;;

  dimension: weightage_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Weightage_Id ;;
  }

  dimension: address {
    type: number
    sql: ${TABLE}.Address ;;
  }

  dimension: date_of_birth {
    type: number
    sql: ${TABLE}.Date_Of_Birth ;;
  }

  dimension: driver_licence {
    type: number
    sql: ${TABLE}.Driver_Licence ;;
  }

  dimension: first_and_last_name {
    type: number
    sql: ${TABLE}.First_And_Last_Name ;;
  }

  dimension: last4_of_ssn {
    type: number
    sql: ${TABLE}.Last4_Of_SSN ;;
  }

  dimension: middle_name {
    type: number
    sql: ${TABLE}.Middle_Name ;;
  }

  dimension: middle_name_initial {
    type: number
    sql: ${TABLE}.Middle_Name_Initial ;;
  }

  dimension: ssn {
    type: number
    sql: ${TABLE}.SSN ;;
  }

  dimension: threshold {
    type: number
    sql: ${TABLE}.Threshold ;;
  }

  dimension: weightage_type {
    type: string
    sql: ${TABLE}.Weightage_Type ;;
  }

  dimension: year_of_birth {
    type: number
    sql: ${TABLE}.Year_Of_Birth ;;
  }

  measure: count {
    type: count
    drill_fields: [weightage_id, first_and_last_name, middle_name, weightage_product_category.count]
  }
}
