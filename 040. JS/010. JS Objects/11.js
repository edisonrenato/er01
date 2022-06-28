const driver = {
  name: 'Danica',
  displayName: function () {
    console.log(`Name: ${this.name}`);
  }
};

const car = {
  name: 'Fusion'
};

driver.displayName.bind(car);
