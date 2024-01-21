extension DayNameToSlovak on String{
  String dayNameToSlovak(){
    switch (toLowerCase()) {
      case 'monday':
        return 'pondelok';
      case 'tuesday':
        return 'utorok';
      case 'wednesday':
        return 'streda';
      case 'thursday':
        return 'štvrtok';
      case 'friday':
        return 'piatok';
      case 'saturday':
        return 'sobota';
      case 'sunday':
        return 'nedeľa';
      default:
        return this;
    }
  }
}