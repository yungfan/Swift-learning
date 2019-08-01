import UIKit


let date = Date()
let format = DateFormatter()
format.dateFormat = "yyyy-MM-dd hh:mm:ss"
let dateStr = format.string(from: date)
print(dateStr)


/**
let date = Date()
//创建一个DateComponents
var components = DateComponents()
//创建一个Calendar
let calendar = Calendar.current
//拆分
calendar.component(.year, from: date)
calendar.component(.month, from: date)
calendar.component(.day, from: date)
calendar.component(.hour, from: date)
calendar.component(.minute, from: date)
calendar.component(.second, from: date)
calendar.component(.weekday, from: date)
*/

/**
//创建一个DateComponents
var components = DateComponents()
//设置各个时间成分
components.year = 2019
components.month = 8
components.day = 1
components.hour = 12
components.minute = 0
components.second = 0
//创建一个Calendar
let calendar = Calendar.current
//转换
var date = calendar.date(from: components)
//输出转换结果
print(date!)
*/

/**
let date = Date()
//判断一个日期是否是今天
let isToday = Calendar.current.isDateInToday(date)
//判断一个日期是否是昨天
let isYesterday = Calendar.current.isDateInToday(date)
//判断一个日期是否是明天
let isTomorrow = Calendar.current.isDateInTomorrow(date)
//判断一个日期是否是属于周末双休日
let isWeekend = Calendar.current.isDateInWeekend(date)
//判断一个日期和另外一个是否相等
let isSameDay = Calendar.current.isDate(date, inSameDayAs: Date())
*/
