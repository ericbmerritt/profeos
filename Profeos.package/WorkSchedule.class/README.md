I represent the schedule that a worker has on a day of the week basis. 

This provides a working time range for each day of the week.

## API

- newWithHolidays:andMon:andTue:andWed:andThu:andFri:andSat:andSun:
- monday
- tuesday
- wednesday
- thursday
- friday
- saturday
- sunday
- randomHoursFor

## Examples

    joesSchedule : WorkSchedule
		               newWithHolidays: arrayOfHolidayCalendars 
		               andMon: (WorkingTimeRange newWith: 5 and: 11)
		               andTue: (WorkingTimeRange newWith: 5 and: 11)
		               andWed: (WorkingTimeRange newWith: 5 and: 11)
		               andThu: (WorkingTimeRange newWith: 5 and: 11)
		               andFri: (WorkingTimeRange newWith: 5 and: 11)
		               andSat: nil
		               andSun: nil.
 
Internal Representation and Key Implementation Points.

## Instance Variables
   dates:       <Array>
	friday:		<WorkingTimeRange>
	monday:		<WorkingTimeRange>
	saturday:		<WorkingTimeRange>
	sunday:		<WorkingTimeRange>
	thursday:		<WorkingTimeRange>
	tuesday:		<WorkingTimeRange>
	wednesday:	<WorkingTimeRange>

