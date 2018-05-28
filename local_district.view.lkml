view: local_district {
  sql_table_name: dbo.Local_District ;;

  dimension: country_code {
    type: string
    sql: ${TABLE}.Country_Code ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.District_Name ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.State_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [district_name, jurisdiction.jurisdiction_id]
  }
}
