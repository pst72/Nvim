class Person {
  name: String
  mom: Person


  constructor(name: String, mom: Person) {
    this.name = name;
    this.mom = mom;
  }

  getName(): String {
    return this.name;

  }
  getMom(): Person {
    return this.mom;
  }
};
