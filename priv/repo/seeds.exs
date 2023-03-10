alias MyStudy.{Person, Repo}

people = [
  %Person{first_name: "Ryan", last_name: "Bigg", age: 28},
  %Person{first_name: "John", last_name: "Smith", age: 27},
  %Person{first_name: "Jane", last_name: "Smith", age: 26}
]

Enum.each(people, fn person -> Repo.insert(person) end)

all = [
  [first_name: "Ryan2", last_name: "Bigg", age: 282],
  [first_name: "John2", last_name: "Smith", age: 272],
  [first_name: "John2", last_name: "Smith", age: 272]
]

Repo.insert_all("people", all)
