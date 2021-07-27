User.create!([
  {first_name: "Bob", last_name: "Smith", email: "bob@gmail.com", password: "password", type_of: "partner"},
  {first_name: "Jane", last_name: "Doe", email: "jane@gmail.com", password: "password", type_of: "partner"},
  {first_name: "Mike", last_name: "Person", email: "mike@gmail.com", password: "password", type_of: "partner"},
  {first_name: "John", last_name: "Mann", email: "john@gmail.com", password: "password", type_of: "partner"},
  {first_name: "Mary", last_name: "Lamb", email: "mary@gmail.com", password: "password", type_of: "partner"},
  {first_name: "Katie", last_name: "User", email: "katie@gmail.com", password: "password", type_of: "patient"}
])

Conversation.create!([
  {patient_id: 6, partner_id: 1}
])

Message.create!([
  {conversation_id: 1, user_id: 6, body: "Hello! I would love to connect!"},
  {conversation_id: 1, user_id: 1, body: "That sounds great! I would love to help"},
  {conversation_id: 1, user_id: 6, body: "Awesome! Let me get my questions ready"},
])