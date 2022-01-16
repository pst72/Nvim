class Person {
    name: string
    mom: Person

    constructor(name: string, mom: Person) {
      this.name = name;
      this.mom = mom;
    }

    getName() : string {
      return this.name;

    }
    getMom() : Person {
      return this.mom;
    }
};
