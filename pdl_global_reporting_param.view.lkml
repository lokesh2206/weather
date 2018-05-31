view: pdl_global_reporting_param {
  sql_table_name: dbo.PDL_Global_Reporting_Param ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: global_reporting_param_id {
    type: number
    sql: ${TABLE}.Global_Reporting_Param_Id ;;
  }

  dimension: ignore_keyword {
    type: string
    sql: ${TABLE}.Ignore_Keyword ;;
  }

  dimension: is_mandatory {
    type: string
    sql: ${TABLE}.isMandatory ;;
  }

  dimension: logical_name {
    type: string
    sql: ${TABLE}.Logical_Name ;;
  }

  dimension: param {
    type: string
    sql: ${TABLE}.Param ;;
  }

  measure: count {
    type: count
    drill_fields: [logical_name]
  }
}
