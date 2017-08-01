

Comment.delete_all
Post.delete_all
User.delete_all

user1 = User.create!(email: "david@david.cl", password: "password")
user2 = User.create!(email: "davidbarrientos@david.cl", password: "password")

post1 = Post.create!(title: "Post 1", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, quam deleniti magni sapiente eligendi fuga quibusdam minima, unde provident laboriosam!", user: user1)

post2 = Post.create!(title: "Post 2", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, quam deleniti magni sapiente eligendi fuga quibusdam minima, unde provident laboriosam!", user: user2)

Comment.create!(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, quam deleniti magni sapiente eligendi fuga quibusdam minima, unde provident laboriosam!", post: post1, user: user2)

Comment.create!(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, quam deleniti magni sapiente eligendi fuga quibusdam minima, unde provident laboriosam!", post: post1, user: user1)

Comment.create!(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, quam deleniti magni sapiente eligendi fuga quibusdam minima, unde provident laboriosam!", post: post1, user: user2)

Comment.create!(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, quam deleniti magni sapiente eligendi fuga quibusdam minima, unde provident laboriosam!", post: post2, user: user1)

Comment.create!(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, quam deleniti magni sapiente eligendi fuga quibusdam minima, unde provident laboriosam!", post: post2, user: user2)

Comment.create!(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, quam deleniti magni sapiente eligendi fuga quibusdam minima, unde provident laboriosam!", post: post2, user: user1)
