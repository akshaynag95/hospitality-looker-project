view: fact_aggregated_bookings {
  view_label: "Aggregated Bookings"
  sql_table_name: `supply-chain-twin-349311.hospitality_dataset.fact_aggregated_bookings` ;;

  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
  }
  dimension_group: check_in {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.check_in_date ;;
  }
  dimension: property_id {
    type: number
    sql: ${TABLE}.property_id ;;
  }
  dimension: room_category {
    type: string
    sql: ${TABLE}.room_category ;;
  }
  dimension: successful_bookings {
    type: number
    sql: ${TABLE}.successful_bookings ;;
  }

  dimension: FAB_ID {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${property_id},"-",${check_in_date},"-",${room_category}) ;;
  }

  measure: total_successful_bookings {
    type: sum
    sql: ${successful_bookings} ;;
  }

  measure: total_capacity {
    type: sum
    sql: ${capacity} ;;
  }

  measure: occupancy_percentage {
    label: "Occupancy %"
    type: number
    sql: ${total_successful_bookings}/${total_capacity} ;;
    value_format_name: percent_2
    drill_fields: [date.date_date,
      hotels.property_name,
      rooms.room_class,
      room_category,
      hotels.city,
      occupancy_percentage]
  }
}
