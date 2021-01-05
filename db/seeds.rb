
Discussion.create!(
  [
    {topic: 'What are the some of the pros and cons of social media?'},
    {topic: 'Should so many year of experience in a certain field count as a degree?'},
  ]
)

Comment.create!(
  [
    {discussion_id: 1, username: 'randomUser123', content: 'I think social media help people around the world connect, but it creates disconnection from those who are physically close to us.'},

    {discussion_id: 1, username: 'user2', content: 'I dont think it necesseraly has that effect on all of us randomUser123'},
  ]
)
