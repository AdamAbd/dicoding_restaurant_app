class DropdownHelper {
  int calculateHeightMultiplierDropdownSearch({
    required int mainListlength,
    required int filteredListLength,
  }) {
    if (mainListlength == 0) {
      if (mainListlength >= 5) {
        return 5;
      } else {
        return mainListlength;
      }
    } else {
      if (filteredListLength >= 5) {
        return 5;
      } else {
        return filteredListLength;
      }
    }
  }

  int calculateHeightMultiplierDropdown({required int mainListlength}) {
    if (mainListlength >= 5) {
      return 5;
    } else {
      return mainListlength;
    }
  }
}
