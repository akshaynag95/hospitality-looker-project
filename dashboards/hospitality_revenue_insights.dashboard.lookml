---
- dashboard: revenue_insights__hospitality
  title: Revenue Insights - Hospitality
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Xiwb0PkPjTZHlEwtG9Mise
  elements:
  - title: Top Level KPI's
    name: Top Level KPI's
    model: hospitality
    explore: fact_bookings
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [fact_bookings.total_revenue, fact_bookings.total_bookings, fact_bookings.average_rating,
      fact_bookings.total_cancelled_bookings, fact_bookings.average_daily_rate, fact_bookings.cancellation_percentage,
      fact_bookings.no_show_rate, fact_bookings.realization_percentage, fact_bookings.total_no_show,
      fact_bookings.total_checked_out]
    limit: 500
    column_limit: 50
    hidden_fields: [fact_bookings.cancellation_percentage, fact_bookings.average_rating]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    style_fact_bookings.total_revenue: "#7CB342"
    show_title_fact_bookings.total_revenue: true
    title_override_fact_bookings.total_revenue: Total Revenue in INR
    title_placement_fact_bookings.total_revenue: below
    value_format_fact_bookings.total_revenue: ''
    style_fact_bookings.total_bookings: "#1A73E8"
    show_title_fact_bookings.total_bookings: true
    title_override_fact_bookings.total_bookings: Total Bookings
    title_placement_fact_bookings.total_bookings: below
    value_format_fact_bookings.total_bookings: ''
    show_comparison_fact_bookings.total_bookings: false
    style_fact_bookings.average_rating: "#E8710A"
    show_title_fact_bookings.average_rating: true
    title_placement_fact_bookings.average_rating: below
    value_format_fact_bookings.average_rating: ''
    show_comparison_fact_bookings.average_rating: false
    style_fact_bookings.total_cancelled_bookings: "#80868B"
    show_title_fact_bookings.total_cancelled_bookings: true
    title_placement_fact_bookings.total_cancelled_bookings: below
    value_format_fact_bookings.total_cancelled_bookings: ''
    show_comparison_fact_bookings.total_cancelled_bookings: false
    style_fact_bookings.average_daily_rate: "#079c98"
    show_title_fact_bookings.average_daily_rate: true
    title_placement_fact_bookings.average_daily_rate: below
    value_format_fact_bookings.average_daily_rate: ''
    show_comparison_fact_bookings.average_daily_rate: false
    style_fact_bookings.cancellation_percentage: "#FF8168"
    show_title_fact_bookings.cancellation_percentage: true
    title_placement_fact_bookings.cancellation_percentage: below
    value_format_fact_bookings.cancellation_percentage: ''
    show_comparison_fact_bookings.cancellation_percentage: false
    style_fact_bookings.no_show_rate: "#E52592"
    show_title_fact_bookings.no_show_rate: true
    title_placement_fact_bookings.no_show_rate: below
    value_format_fact_bookings.no_show_rate: ''
    show_comparison_fact_bookings.no_show_rate: false
    style_fact_bookings.realization_percentage: "#7CB342"
    show_title_fact_bookings.realization_percentage: true
    title_placement_fact_bookings.realization_percentage: below
    value_format_fact_bookings.realization_percentage: ''
    show_comparison_fact_bookings.realization_percentage: false
    style_fact_bookings.total_no_show: "#9334E6"
    show_title_fact_bookings.total_no_show: true
    title_placement_fact_bookings.total_no_show: below
    value_format_fact_bookings.total_no_show: ''
    show_comparison_fact_bookings.total_no_show: false
    style_fact_bookings.total_checked_out: "#EA4335"
    show_title_fact_bookings.total_checked_out: true
    title_placement_fact_bookings.total_checked_out: below
    value_format_fact_bookings.total_checked_out: ''
    show_comparison_fact_bookings.total_checked_out: false
    custom_color_enabled: true
    custom_color: "#7CB342"
    show_single_value_title: true
    single_value_title: Total Revenue
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 0
    col: 0
    width: 24
    height: 4
  - title: "% Revenue by Category"
    name: "% Revenue by Category"
    model: hospitality
    explore: fact_bookings
    type: looker_donut_multiples
    fields: [hotels.category, fact_bookings.total_revenue]
    pivots: [hotels.category]
    sorts: [hotels.category]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 9
    hide_legend: false
    color_application:
      collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c
      palette_id: 75905e81-dadc-472c-b9a2-a201f788d55d
      options:
        steps: 5
        reverse: false
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.3
    column_group_spacing_ratio: 0.3
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    groupBars: true
    labelSize: 10pt
    showLegend: true
    show_null_points: true
    interpolation: linear
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 20
    col: 0
    width: 8
    height: 6
  - title: Revenue by City
    name: Revenue by City
    model: hospitality
    explore: fact_bookings
    type: looker_bar
    fields: [hotels.city, fact_bookings.total_revenue]
    pivots: [hotels.city]
    sorts: [hotels.city]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_bookings.total_revenue,
            id: fact_bookings.total_revenue, name: Total Revenue}], showLabels: true,
        showValues: true, minValue: 25, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    column_spacing_ratio: 0.2
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Average Rating by city
    name: Average Rating by city
    model: hospitality
    explore: fact_bookings
    type: looker_bar
    fields: [hotels.city, fact_bookings.average_rating]
    pivots: [hotels.city]
    sorts: [hotels.city, fact_bookings.average_rating desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: fact_bookings.average_rating,
            id: Bangalore - fact_bookings.average_rating, name: Bangalore}, {axisId: fact_bookings.average_rating,
            id: Delhi - fact_bookings.average_rating, name: Delhi}, {axisId: fact_bookings.average_rating,
            id: Hyderabad - fact_bookings.average_rating, name: Hyderabad}, {axisId: fact_bookings.average_rating,
            id: Mumbai - fact_bookings.average_rating, name: Mumbai}], showLabels: true,
        showValues: true, minValue: 0, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    column_spacing_ratio: 0.2
    column_group_spacing_ratio:
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Average Rating
    name: Average Rating
    model: hospitality
    explore: fact_bookings
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [fact_bookings.average_rating]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 9
    arm_weight: 43
    spinner_length: 149
    spinner_weight: 25
    target_length: 10
    target_gap: 9
    target_weight: 17
    range_min: 0
    range_max: 5
    value_label_type: both
    value_label_font: 10
    value_label_padding: 45
    target_source: override
    target_label_type: both
    target_label_font: 3
    target_label_override: Target
    target_value_override: '4.5'
    label_font_size: 3
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 43
    range_x: 0.6
    range_y: 1
    target_label_padding: 1.02
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 4
    col: 0
    width: 8
    height: 6
  - title: Occupancy
    name: Occupancy
    model: hospitality
    explore: fact_aggregated_bookings
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [fact_aggregated_bookings.occupancy_percentage]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 40
    spinner_length: 149
    spinner_weight: 32
    target_length: 16
    target_gap: 15
    target_weight: 22
    range_min: 0
    range_max: 1
    value_label_type: both
    value_label_font: 10
    value_label_padding: 45
    target_source: override
    target_label_type: both
    target_label_font: 3
    target_label_override: Target
    target_value_override: '0.75'
    target_value_format: 0%
    label_font_size: 3
    range_formatting: 0%
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 40
    range_x: 1
    range_y: 1
    target_label_padding: 1.03
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen:
      Date Date: date.date_date
      City: hotels.city
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 4
    col: 8
    width: 8
    height: 6
  - title: Cancellation
    name: Cancellation
    model: hospitality
    explore: fact_bookings
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [fact_bookings.cancellation_percentage]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 9
    arm_weight: 43
    spinner_length: 149
    spinner_weight: 25
    target_length: 10
    target_gap: 9
    target_weight: 17
    range_min: 0
    range_max: 1
    value_label_type: both
    value_label_font: 10
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_label_override: Target
    target_value_override: '4.5'
    label_font_size: 3
    range_formatting: 0%
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 43
    range_x: 0.6
    range_y: 1
    target_label_padding: 1.02
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 4
    col: 16
    width: 8
    height: 6
  - title: ADR by City
    name: ADR by City
    model: hospitality
    explore: fact_bookings
    type: looker_bar
    fields: [hotels.city, fact_bookings.average_daily_rate]
    pivots: [hotels.city]
    sorts: [hotels.city]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_bookings.total_revenue,
            id: fact_bookings.total_revenue, name: Total Revenue}], showLabels: true,
        showValues: true, minValue: 25, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    column_spacing_ratio: 0.2
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 12
    col: 8
    width: 8
    height: 6
  - name: "<h2>Split by Category, Platform & Room Class </h2>"
    type: text
    title_text: "<h2>Split by Category, Platform & Room Class </h2>"
    subtitle_text: "<p>This section show the percentage share by Category, Platform\
      \ & Room Class</p>"
    body_text: "\n"
    row: 18
    col: 0
    width: 24
    height: 2
  - title: Booking % by Room class
    name: Booking % by Room class
    model: hospitality
    explore: fact_bookings
    type: looker_donut_multiples
    fields: [fact_bookings.total_bookings, rooms.room_class]
    pivots: [rooms.room_class]
    sorts: [rooms.room_class]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 7
    hide_legend: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: e26878fa-802e-47d9-9478-62fb4307f763
      options:
        steps: 5
        reverse: true
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.3
    column_group_spacing_ratio: 0.3
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    groupBars: true
    labelSize: 10pt
    showLegend: true
    show_null_points: true
    interpolation: linear
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 20
    col: 16
    width: 8
    height: 6
  - title: Booking % by Platform
    name: Booking % by Platform
    model: hospitality
    explore: fact_bookings
    type: looker_donut_multiples
    fields: [fact_bookings.booking_platform, fact_bookings.total_bookings]
    pivots: [fact_bookings.booking_platform]
    sorts: [fact_bookings.booking_platform]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 7
    hide_legend: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
        reverse: false
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.3
    column_group_spacing_ratio: 0.3
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    groupBars: true
    labelSize: 10pt
    showLegend: true
    show_null_points: true
    interpolation: linear
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 20
    col: 8
    width: 8
    height: 6
  - name: "<h2>Split by Cities </h2>"
    type: text
    title_text: "<h2>Split by Cities </h2>"
    subtitle_text: "<p>Performance of different cities in Revenue, Rating & ADR</p>"
    body_text: "\n"
    row: 10
    col: 0
    width: 24
    height: 2
  - title: Revenue Trend by Week
    name: Revenue Trend by Week
    model: hospitality
    explore: fact_bookings
    type: looker_line
    fields: [date.week_no, date.weekday_weekend, fact_bookings.total_revenue]
    pivots: [date.weekday_weekend]
    filters:
      date.week_no: "-W 32"
    sorts: [date.weekday_weekend, date.week_no]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_bookings.total_revenue,
            id: WEEKDAY - fact_bookings.total_revenue, name: WEEKDAY}, {axisId: fact_bookings.total_revenue,
            id: WEEKEND - fact_bookings.total_revenue, name: WEEKEND}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 25,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 28
    col: 0
    width: 12
    height: 6
  - title: Occupancy % by week no and day type
    name: Occupancy % by week no and day type
    model: hospitality
    explore: fact_aggregated_bookings
    type: looker_line
    fields: [fact_aggregated_bookings.occupancy_percentage, date.weekday_weekend,
      date.week_no]
    pivots: [date.weekday_weekend]
    filters:
      date.week_no: "-W 32"
    sorts: [date.weekday_weekend, date.week_no]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: 12px
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date Date: date.date_date
      City: hotels.city
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 28
    col: 12
    width: 12
    height: 6
  - name: Occupancy % and Cancellation % by week no & month
    title: Occupancy % and Cancellation % by week no & month
    merged_queries:
    - model: hospitality
      explore: fact_bookings
      type: looker_area
      fields: [date.mmm_yy, date.week_no, fact_bookings.cancellation_percentage]
      filters:
        date.week_no: "-W 32"
      sorts: [date.week_no]
      limit: 500
      column_limit: 50
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      ordering: none
      show_null_labels: false
      defaults_version: 1
      hidden_pivots: {}
    - model: hospitality
      explore: fact_aggregated_bookings
      type: looker_area
      fields: [date.mmm_yy, date.week_no, fact_aggregated_bookings.occupancy_percentage]
      filters:
        date.week_no: "-W 32"
      sorts: [date.week_no]
      limit: 500
      column_limit: 50
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      ordering: none
      show_null_labels: false
      defaults_version: 1
      join_fields:
      - field_name: date.week_no
        source_field_name: date.week_no
      - field_name: date.mmm_yy
        source_field_name: date.mmm_yy
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_aggregated_bookings.occupancy_percentage,
            id: fact_aggregated_bookings.occupancy_percentage, name: Occupancy %}],
        showLabels: true, showValues: true, maxValue: 1, minValue: 0, valueFormat: '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: fact_bookings.cancellation_percentage,
            id: fact_bookings.cancellation_percentage, name: Cancellation %}], showLabels: true,
        showValues: true, maxValue: 1, minValue: 0, unpinAxis: false, tickDensity: default,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    trend_lines: []
    swap_axes: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_area
    listen:
    - Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    - Date Date: date.date_date
      City: hotels.city
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 34
    col: 0
    width: 24
    height: 7
  - name: Property by Key Metrics
    title: Property by Key Metrics
    merged_queries:
    - model: hospitality
      explore: fact_bookings
      type: looker_grid
      fields: [hotels.property_id, hotels.property_name, hotels.city, fact_bookings.total_revenue,
        fact_bookings.total_bookings, fact_bookings.average_daily_rate, fact_bookings.DBRN,
        fact_bookings.DURN, fact_bookings.realization_percentage, fact_bookings.cancellation_percentage,
        fact_bookings.average_rating]
      sorts: [fact_bookings.total_revenue desc 0]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: hospitality
      explore: fact_aggregated_bookings
      type: looker_grid
      fields: [hotels.property_id, hotels.property_name, hotels.city, fact_aggregated_bookings.occupancy_percentage,
        fact_aggregated_bookings.total_capacity]
      sorts: [fact_aggregated_bookings.occupancy_percentage desc 0]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
      join_fields:
      - field_name: hotels.property_id
        source_field_name: hotels.property_id
      - field_name: hotels.property_name
        source_field_name: hotels.property_name
      - field_name: hotels.city
        source_field_name: hotels.city
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", hotels.property_id, hotels.property_name,
      hotels.city, fact_bookings.total_revenue, fact_bookings.total_bookings, revpar,
      fact_aggregated_bookings.occupancy_percentage, fact_bookings.average_daily_rate,
      fact_bookings.DBRN, fact_bookings.DURN, fact_bookings.realization_percentage,
      fact_bookings.cancellation_percentage, fact_aggregated_bookings.total_capacity]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: true
    size_to_fit: true
    minimum_column_width: 75
    series_labels:
      fact_bookings.DBRN: DBRN
      fact_bookings.DURN: DURN
    series_column_widths: {}
    series_cell_visualizations:
      fact_bookings.total_revenue:
        is_active: true
      revpar:
        is_active: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#81BE56",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: e26878fa-802e-47d9-9478-62fb4307f763, options: {steps: 5, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [fact_aggregated_bookings.occupancy_percentage]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Bookings Total Revenue
        label_from_parameter:
        label_short: Total Revenue
        map_layer:
        name: fact_bookings.total_revenue
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0,," M"
        view: fact_bookings
        view_label: Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_bookings
        dimension_group:
        error:
        field_group_variant: Total Revenue
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_bookings
        suggest_dimension: fact_bookings.total_revenue
        suggest_explore: fact_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_bookings.view.lkml?line=64"
        permanent: true
        source_file: views/fact_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_bookings.view.lkml
        sql: "${revenue_realized} "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Bookings Total Bookings
        label_from_parameter:
        label_short: Total Bookings
        map_layer:
        name: fact_bookings.total_bookings
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "#,##0"
        view: fact_bookings
        view_label: Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_bookings
        dimension_group:
        error:
        field_group_variant: Total Bookings
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_bookings
        suggest_dimension: fact_bookings.total_bookings
        suggest_explore: fact_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_bookings.view.lkml?line=69"
        permanent: true
        source_file: views/fact_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_bookings.view.lkml
        sql:
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Bookings Average Daily Rate
        label_from_parameter:
        label_short: Average Daily Rate
        map_layer:
        name: fact_bookings.average_daily_rate
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.00," K"
        view: fact_bookings
        view_label: Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_bookings
        dimension_group:
        error:
        field_group_variant: Average Daily Rate
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_bookings
        suggest_dimension: fact_bookings.average_daily_rate
        suggest_explore: fact_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_bookings.view.lkml?line=109"
        permanent: true
        source_file: views/fact_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_bookings.view.lkml
        sql: "${total_revenue}/${total_bookings} "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Bookings Daily Booked Room Nights(DBRN)
        label_from_parameter:
        label_short: Daily Booked Room Nights(DBRN)
        map_layer:
        name: fact_bookings.DBRN
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: fact_bookings
        view_label: Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_bookings
        dimension_group:
        error:
        field_group_variant: Daily Booked Room Nights(DBRN)
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_bookings
        suggest_dimension: fact_bookings.DBRN
        suggest_explore: fact_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_bookings.view.lkml?line=125"
        permanent: true
        source_file: views/fact_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_bookings.view.lkml
        sql: 'ROUND(${total_bookings}/${no_of_days},0) '
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Bookings Daily Utilized Room Nights(DURN)
        label_from_parameter:
        label_short: Daily Utilized Room Nights(DURN)
        map_layer:
        name: fact_bookings.DURN
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: fact_bookings
        view_label: Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_bookings
        dimension_group:
        error:
        field_group_variant: Daily Utilized Room Nights(DURN)
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_bookings
        suggest_dimension: fact_bookings.DURN
        suggest_explore: fact_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_bookings.view.lkml?line=130"
        permanent: true
        source_file: views/fact_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_bookings.view.lkml
        sql: 'ROUND(${total_checked_out}/${no_of_days},0) '
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Bookings Realization %
        label_from_parameter:
        label_short: Realization %
        map_layer:
        name: fact_bookings.realization_percentage
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "#,##0.0%"
        view: fact_bookings
        view_label: Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_bookings
        dimension_group:
        error:
        field_group_variant: Realization %
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_bookings
        suggest_dimension: fact_bookings.realization_percentage
        suggest_explore: fact_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_bookings.view.lkml?line=114"
        permanent: true
        source_file: views/fact_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_bookings.view.lkml
        sql: '1-(${cancellation_percentage}+${no_show_rate}) '
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Bookings Cancellation %
        label_from_parameter:
        label_short: Cancellation %
        map_layer:
        name: fact_bookings.cancellation_percentage
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "#,##0.0%"
        view: fact_bookings
        view_label: Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_bookings
        dimension_group:
        error:
        field_group_variant: Cancellation %
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_bookings
        suggest_dimension: fact_bookings.cancellation_percentage
        suggest_explore: fact_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_bookings.view.lkml?line=86"
        permanent: true
        source_file: views/fact_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_bookings.view.lkml
        sql: "${total_cancelled_bookings}/NULLIF(${total_bookings},0) "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Aggregated Bookings Occupancy %
        label_from_parameter:
        label_short: Occupancy %
        map_layer:
        name: fact_aggregated_bookings.occupancy_percentage
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "#,##0.00%"
        view: fact_aggregated_bookings
        view_label: Aggregated Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_aggregated_bookings
        dimension_group:
        error:
        field_group_variant: Occupancy %
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_aggregated_bookings
        suggest_dimension: fact_aggregated_bookings.occupancy_percentage
        suggest_explore: fact_aggregated_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_aggregated_bookings.view.lkml?line=45"
        permanent: true
        source_file: views/fact_aggregated_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_aggregated_bookings.view.lkml
        sql: "${total_successful_bookings}/${total_capacity} "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Aggregated Bookings Total Capacity
        label_from_parameter:
        label_short: Total Capacity
        map_layer:
        name: fact_aggregated_bookings.total_capacity
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: fact_aggregated_bookings
        view_label: Aggregated Bookings
        dynamic: false
        week_start_day: sunday
        original_view: fact_aggregated_bookings
        dimension_group:
        error:
        field_group_variant: Total Capacity
        measure: true
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: fact_aggregated_bookings
        suggest_dimension: fact_aggregated_bookings.total_capacity
        suggest_explore: fact_aggregated_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Ffact_aggregated_bookings.view.lkml?line=41"
        permanent: true
        source_file: views/fact_aggregated_bookings.view.lkml
        source_file_path: hospitality-looker-demo-project/views/fact_aggregated_bookings.view.lkml
        sql: "${capacity} "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      dimensions:
      - align: right
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Hotels Property ID
        label_from_parameter:
        label_short: Property ID
        map_layer:
        name: hotels.property_id
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: hotels
        view_label: Hotels
        dynamic: false
        week_start_day: sunday
        original_view: hotels
        dimension_group:
        error:
        field_group_variant: Property ID
        measure: false
        parameter: false
        primary_key: true
        project_name: hospitality-looker-demo-project
        scope: hotels
        suggest_dimension: hotels.property_id
        suggest_explore: fact_bookings
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Fhotels.view.lkml?line=12"
        permanent: true
        source_file: views/hotels.view.lkml
        source_file_path: hospitality-looker-demo-project/views/hotels.view.lkml
        sql: "${TABLE}.property_id "
        sql_case:
        filters:
        times_used: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Hotels Property Name
        label_from_parameter:
        label_short: Property Name
        map_layer:
        name: hotels.property_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: hotels
        view_label: Hotels
        dynamic: false
        week_start_day: sunday
        original_view: hotels
        dimension_group:
        error:
        field_group_variant: Property Name
        measure: false
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: hotels
        suggest_dimension: hotels.property_name
        suggest_explore: fact_bookings
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Fhotels.view.lkml?line=17"
        permanent: true
        source_file: views/hotels.view.lkml
        source_file_path: hospitality-looker-demo-project/views/hotels.view.lkml
        sql: "${TABLE}.property_name "
        sql_case:
        filters:
        times_used: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Hotels City
        label_from_parameter:
        label_short: City
        map_layer:
        name: hotels.city
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: hotels
        view_label: Hotels
        dynamic: false
        week_start_day: sunday
        original_view: hotels
        dimension_group:
        error:
        field_group_variant: City
        measure: false
        parameter: false
        primary_key: false
        project_name: hospitality-looker-demo-project
        scope: hotels
        suggest_dimension: hotels.city
        suggest_explore: fact_bookings
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/hospitality-looker-demo-project/files/views%2Fhotels.view.lkml?line=8"
        permanent: true
        source_file: views/hotels.view.lkml
        source_file_path: hospitality-looker-demo-project/views/hotels.view.lkml
        sql: "${TABLE}.city "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: RevPAR
        name: revpar
        expression: "${fact_bookings.total_revenue}/${fact_aggregated_bookings.total_capacity}"
        can_pivot: true
        sortable: true
        description: Revenue per Room
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: 0.000, "K"
        is_numeric: true
      pivots: []
    hidden_fields: [fact_aggregated_bookings.total_capacity]
    sorts: [hotels.property_id]
    dynamic_fields:
    - category: table_calculation
      description: Revenue per Room
      expression: "${fact_bookings.total_revenue}/${fact_aggregated_bookings.total_capacity}"
      label: RevPAR
      value_format: 0.000, "K"
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: revpar
      _type_hint: number
    listen:
    - Date Date: date.date_date
      City: hotels.city
      Booking Status: fact_bookings.booking_status
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    - Date Date: date.date_date
      City: hotels.city
      Property Name: hotels.property_name
      Room Class: rooms.room_class
      Weekday/Weekend: date.weekday_weekend
    row: 41
    col: 0
    width: 24
    height: 7
  - name: "<h2>Week on Week Comparision</h2>"
    type: text
    title_text: "<h2>Week on Week Comparision</h2>"
    subtitle_text: "<p>Analyzing Trends: Visualizing Weekly Changes for Informed Decision-Making\
      \ in a Glance</p>"
    body_text: ''
    row: 26
    col: 0
    width: 24
    height: 2
  filters:
  - name: Date Date
    title: Date Date
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: hospitality
    explore: fact_bookings
    listens_to_filters: []
    field: date.date_date
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: hospitality
    explore: fact_bookings
    listens_to_filters: []
    field: hotels.city
  - name: Booking Status
    title: Booking Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: hospitality
    explore: fact_bookings
    listens_to_filters: []
    field: fact_bookings.booking_status
  - name: Property Name
    title: Property Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: hospitality
    explore: fact_aggregated_bookings
    listens_to_filters: []
    field: hotels.property_name
  - name: Room Class
    title: Room Class
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: hospitality
    explore: fact_bookings
    listens_to_filters: []
    field: rooms.room_class
  - name: Weekday/Weekend
    title: Weekday/Weekend
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: hospitality
    explore: fact_bookings
    listens_to_filters: []
    field: date.weekday_weekend
