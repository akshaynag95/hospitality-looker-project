view: date {
  view_label: "Date"
  sql_table_name: `supply-chain-twin-349311.hospitality_dataset.date` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, day_of_month, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: day_type {
    hidden: yes
    type: string
    sql: ${TABLE}.day_type ;;
  }
  dimension: mmm_yy {
    type: string
    sql: ${TABLE}.mmm_yy ;;
  }
  dimension: week_no {
    type: string
    sql: ${TABLE}.week_no ;;
  }

  dimension: week_number {
    type: number
    sql: EXTRACT(WEEK FROM ${TABLE}.date) ;;
  }

  dimension: day_of_week {
    hidden: yes
    type: string
    sql: EXTRACT(DAYOFWEEK FROM ${date_date}) ;;
  }

  dimension: weekday_weekend {
    label: "Weekday/Weekend"
    type: string
    sql: CASE WHEN ${day_of_week} < 6 THEN "WEEKDAY"
    ELSE "WEEKEND"
    END ;;
  }
}
