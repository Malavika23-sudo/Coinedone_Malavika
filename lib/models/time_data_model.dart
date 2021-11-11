// class TimeData {
//   var maxTime;
//   var phoneuse;
//   var lapuse;
//   var updatedData;
//   int? totaltime;
//   int? usedTime;
//   int? totalhours;
//   int? totalminute;
//   int? maxhours;
//   int? maxminutes;
//   int? usehours;
//   int? useminutes;
//   int? phonehours;
//   int? phoneminutes;
//   int? laphours;
//   int? lapminutes;
//   int? studyTime;
//   int? studyhours;
//   int? studyminutes;
//   int? classtime;
//   int? classhours;
//   int? classminutes;
//   int? freetime;
//   int? frehours;
//   int? freeminutes;
//   var data;
//   TimeData({this.data});

//   int? totalTime() {
//     totaltime = int.tryParse(data[0]['chartData']['totalTime']['total']);
//     if (totaltime! > 60) {
//       totalminute = totaltime! % 60;
//       return (totaltime! / 60).toInt();
//     }
//   }

//   void getTimeUsageData() {
//     print('Data-==============> $data');
//     if (data != null) {
//       totaltime = int.tryParse(data[0]['chartData']['totalTime']['total']);
//       if (totaltime! > 60) {
//         totalhours = (totaltime! / 60).toInt();
//         totalminute = totaltime! % 60;
//       }
//       usedTime = (int.tryParse(data[0]['deviceUsage']['freeTime']['mobile'])! +
//           int.tryParse(data[0]['deviceUsage']['freeTime']['laptop'])!);

//       if (usedTime! > 60) {
//         usehours = (usedTime! / 60).toInt();
//         useminutes = usedTime! % 60;
//       } else {
//         useminutes = usedTime;
//       }

//       maxTime = int.tryParse(data[0]['freeTimeMaxUsage']);
//       if (maxTime! > 60) {
//         maxhours = (maxTime! / 60).toInt();
//         maxminutes = maxTime! % 60;
//       } else {
//         maxminutes = maxTime;
//       }
//       phoneuse = int.tryParse(data[0]['deviceUsage']['totalTime']['mobile']);
//       if (phoneuse! > 60) {
//         phonehours = (phoneuse! / 60).toInt();
//         phoneminutes = phoneuse! % 60;
//       } else {
//         phoneminutes = phoneuse;
//       }
//       lapuse = int.tryParse(data[0]['deviceUsage']['totalTime']['laptop']);
//       if (lapuse! > 60) {
//         laphours = (lapuse! / 60).toInt();
//         lapminutes = lapuse! % 60;
//       } else {
//         lapminutes = lapuse;
//       }
//       studyTime = int.tryParse(data[0]['chartData']['studyTime']['total']);

//       if (studyTime! > 60) {
//         studyhours = (studyTime! / 60).toInt();
//         studyminutes = studyTime! % 60;
//       } else {
//         studyminutes = studyTime;
//       }
//       classtime = int.tryParse(data[0]['chartData']['classTime']['total']);

//       if (classtime! > 60) {
//         classhours = (classtime! / 60).toInt();
//         classminutes = classtime! % 60;
//       } else {
//         classminutes = classtime;
//       }
//       freetime = int.tryParse(data[0]['chartData']['freeTime']['total']);

//       if (freetime! > 60) {
//         frehours = (freetime! / 60).toInt();
//         freeminutes = freetime! % 60;
//       } else {
//         freeminutes = freetime;
//       }
//     }
//   }
// }
