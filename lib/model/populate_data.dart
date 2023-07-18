import 'package:paramount_students_task/model/data.dart';
import 'package:paramount_students_task/utils/constatnt/appimages.dart';

class PopulateData {
  static List<Data> getData() {
    Future.delayed(const Duration(seconds: 5));
    return [
      Data(
          mainImg: AppImages.istabul,
          logo: AppImages.istabulLogo,
          name: 'Istanbul University',
          locatn: 'Istanbul, Türkiye',
          bachelorfig: '31',
          mastersfig: '02',
          phdfig: '3',
          diplomafig: '11',
          price: '19,832 / year'),
      Data(
          mainImg: AppImages.istabul,
          logo: AppImages.istabulLogo,
          name: 'Istanbul University',
          locatn: 'Istanbul, Türkiye',
          bachelorfig: '31',
          mastersfig: '02',
          phdfig: '3',
          diplomafig: '11',
          price: '19,832 / year')
    ];
  }
}
