view: fact_bookings {
  view_label: "Bookings"
  sql_table_name: `supply-chain-twin-349311.hospitality_dataset.fact_bookings` ;;
  # Default drill fields
  drill_fields: [booking_id,booking_date,booking_platform,booking_status,hotels.city, hotels.property_name,
    room_category, revenue_realized, average_daily_rate, total_no_show, total_checked_out]

  dimension_group: booking {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.booking_date ;;
  }
  dimension: booking_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.booking_id ;;

    # creating action button to take action on looker dashboard
    # URL: https://cloud.google.com/looker/docs/reference/param-field-action?version=23.18&lookml=new
    action: {
      label: "Action on Email"
      url: "https://hooks.zapier.com/hooks/catch/11814505/bryrebp/"

      form_param: {
        name: "Heading"
        type: string
        default: "Lets connect on this"
      }

      form_param: {
        name: "Description"
        type: textarea
        default: "Details#
        Booking Id: {{booking_id._value}}
        Booking Date: {{booking_date._value}}
        Booking Status: {{booking_status._value}}
        Property Name: {{hotels.property_name._value}}
        City: {{hotels.city._value}}
        Category: {{hotels.category._value}}"
      }
    }
  }
  dimension: booking_platform {
    type: string
    sql: ${TABLE}.booking_platform ;;
  }
  dimension: booking_status {
    type: string
    sql: ${TABLE}.booking_status ;;
  }
  dimension_group: check_in {
    type: time
    timeframes: [raw, date, day_of_month, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.check_in_date ;;
  }
  dimension_group: checkout {
    type: time
    timeframes: [raw, date, day_of_month, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.checkout_date ;;
  }
  dimension: no_guests {
    type: number
    sql: ${TABLE}.no_guests ;;
  }
  dimension: property_id {
    type: number
    sql: ${TABLE}.property_id ;;
  }
  dimension: ratings_given {
    type: number
    sql: ${TABLE}.ratings_given ;;
  }
  dimension: revenue_generated {
    type: number
    sql: ${TABLE}.revenue_generated ;;
  }
  dimension: revenue_realized {
    hidden: yes
    type: number
    sql: ${TABLE}.revenue_realized ;;
  }
  dimension: room_category {
    type: string
    sql: ${TABLE}.room_category ;;
  }
  measure: total_revenue {
    type: sum
    sql: ${revenue_realized} ;;
    value_format: "0.##,,\" M\""
    drill_fields: [booking_id,booking_date,booking_platform,booking_status,hotels.city, hotels.category,
      hotels.property_name, room_category,total_revenue]
  }
  measure: total_bookings {
    type: count_distinct
    sql: ${booking_id} ;;
    value_format: "#,##0"
    drill_fields: [booking_date, booking_platform, hotels.property_name, hotel.category, rooms.room_class, hotels.city, total_bookings]
  }
  measure: average_rating {
    type: average
    sql: ${ratings_given} ;;
    value_format: "0.00"
    description: "Get the average ratings given by the customers"
    drill_fields: [rating_cancellation_drills*]
  }
  measure: total_cancelled_bookings {
    type: count_distinct
    filters: [booking_status: "Cancelled"]
    sql: ${booking_id} ;;
    value_format: "#,##0"
    drill_fields: [rating_cancellation_drills*]
  }
  measure: cancellation_percentage {
    label: "Cancellation %"
    type: number
    value_format_name: percent_1
    sql: ${total_cancelled_bookings}/NULLIF(${total_bookings},0) ;;
    drill_fields: [rating_cancellation_drills*]
  }
  measure: total_checked_out {
    type: count_distinct
    filters: [booking_status: "Checked Out"]
    sql: ${booking_id} ;;
    value_format: "#,##0"
  }
  measure: total_no_show {
    type: count_distinct
    filters: [booking_status: "No Show"]
    sql:  ${booking_id} ;;
    value_format: "#,##0"
  }
  measure: no_show_rate {
    type: number
    value_format_name: percent_1
    sql: ${total_no_show}/NULLIF(${total_bookings},0) ;;
  }
  measure: average_daily_rate {
    type: number
    value_format: "0.00,\" K\""
    sql: ${total_revenue}/${total_bookings} ;;
  }
  measure: realization_percentage {
    label: "Realization %"
    type: number
    value_format_name: percent_1
    sql: 1-(${cancellation_percentage}+${no_show_rate}) ;;
  }
  measure: no_of_days {
    hidden: yes
    type: number
    sql: date_diff(MAX(${date.date_date}), MIN(${date.date_date}), DAY)+1 ;;
  }
  measure: DBRN {
    label: "Daily Booked Room Nights(DBRN)"
    type: number
    sql: ROUND(${total_bookings}/${no_of_days},0) ;;
    drill_fields: [DBRN_DURN_drills*]
  }
  measure: DURN {
    label: "Daily Utilized Room Nights(DURN)"
    type: number
    sql: ROUND(${total_checked_out}/${no_of_days},0) ;;
    drill_fields: [DBRN_DURN_drills*]
  }

  # Custom drill fields
  set: rating_cancellation_drills {
    fields: [booking_month,
      hotels.property_name,
      rooms.room_class,
      room_category,
      hotels.city,
      average_rating,
      total_cancelled_bookings,
      cancellation_percentage]
  }

  set: DBRN_DURN_drills {
    fields: [booking_date,
      hotels.property_name,
      rooms.room_class,
      hotels.city,
      DBRN,
      DURN]
  }

}
