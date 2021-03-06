# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all
Like.destroy_all
Comment.destroy_all
Follow.destroy_all

demo_user = User.create!(full_name: "Logan Alex", username: "insdagrammer", password: "testing")
jerry = User.create!(full_name: "Eli Tee", username: "mrjerry", password: "testtt323")
drake = User.create!(full_name: "Aubrey Graham", username: "champpapi", password: "drizzy")
user2 = User.create!(full_name: "David DiPanfilo", username: "ddipanfilo", password: "secret3")
user3 = User.create!(full_name: "John Doe", username: "jdoeee", password: "testing323")
user4 = User.create!(full_name: "Jeff Paper", username: "paper", password: "secrett")
user7 = User.create!(full_name: "Ben Wright", username: "benny9", password: "testing323")
user8 = User.create!(full_name: "Mike Mike", username: "mike", password: "teeest")
user9 = User.create!(full_name: "John Smith", username: "jsmith", password: "pworddd")
user10 = User.create!(full_name: "Jenna Brady", username: "jenna11", password: "okay200")
user11 = User.create!(full_name: "Susan Test", username: "suz55", password: "okay300")
rihanna = User.create!(full_name: "Robyn Rihanna Fenty", username: "goodgirlri", password: "okay333100")
user12 = User.create!(full_name: "Tracy Rogers", username: "trace", password: "okay35600")
user13 = User.create!(full_name: "Hayden Rich", username: "hayd", password: "passwords")
user14 = User.create!(full_name: "Micah", username: "micah", password: "testing1")

file1 = File.open("app/assets/images/Rockefeller.jpg")
file2 = File.open("app/assets/images/Grand-Central.jpg")
file3 = File.open("app/assets/images/Lake.jpg")
file4 = File.open("app/assets/images/Manhattan.jpg")
file5 = File.open("app/assets/images/Montreal.jpg")
file6 = File.open("app/assets/images/Mountains.jpg")
young_drake_picture = File.open("app/assets/images/Drake-1.jpg")
arthur_picture = File.open("app/assets/images/arthur.png")
chef_picture = File.open("app/assets/images/chef.png")
goodyear_picture = File.open("app/assets/images/good-year.png")
iron_picture = File.open("app/assets/images/iron.png")
rihanna1_picture = File.open("app/assets/images/anti.png")
rihanna2_picture = File.open("app/assets/images/rihanna2.png")
rihanna3_picture = File.open("app/assets/images/rihanna3.png")

post1 = Post.create!(caption: "NYC", user_id: demo_user.id, image: file1)
rihanna_post_3 = Post.create!(caption: "new Puma colors out now", user_id: rihanna.id, image: rihanna3_picture)
iron_post = Post.create!(caption: "me too", user_id: jerry.id, image: iron_picture)
post2 = Post.create!(caption: "Grand Central", user_id: demo_user.id, image: file2)
arthur_post = Post.create!(caption: "EXPLAIN THIS", user_id: jerry.id, image: arthur_picture)
rihanna_post_1 = Post.create!(caption: "ANTIANTIANTI", user_id: rihanna.id, image: rihanna1_picture)
post3 = Post.create!(caption: "lake view", user_id: demo_user.id, image: file3)
koolaid_post = Post.create!(caption: "KOOLAID VOICE", user_id: jerry.id, image: goodyear_picture)
post4 = Post.create!(caption: "Manhattan", user_id: user2.id, image: file4)
rihanna_post_2 = Post.create!(caption: "puma", user_id: rihanna.id, image: rihanna2_picture)
post5 = Post.create!(caption: "Montreal", user_id: user2.id, image: file5)
post6 = Post.create!(caption: "mountains", user_id: user2.id, image: file6)
post7 = Post.create!(caption: "I been had these visions
  Of the life I'm livin' since I was Jimmy
  All I had to do was just go and get it", user_id: drake.id, image: young_drake_picture
)
chef_post = Post.create!(caption: "right", user_id: jerry.id, image: chef_picture)


like1 = Like.create!(user_id: jerry.id, post_id: post1.id)
like2 = Like.create!(user_id: jerry.id, post_id: post2.id)
like3 = Like.create!(user_id: jerry.id, post_id: post3.id)
like4 = Like.create!(user_id: jerry.id, post_id: post4.id)
like5 = Like.create!(user_id: jerry.id, post_id: post5.id)
like6 = Like.create!(user_id: jerry.id, post_id: post6.id)
like7 = Like.create!(user_id: jerry.id, post_id: post7.id)
like8 = Like.create!(user_id: jerry.id, post_id: rihanna_post_3.id)
like9 = Like.create!(user_id: jerry.id, post_id: iron_post.id)
like10 = Like.create!(user_id: jerry.id, post_id: arthur_post.id)
like11 = Like.create!(user_id: jerry.id, post_id: rihanna_post_1.id)
like12 = Like.create!(user_id: jerry.id, post_id: rihanna_post_2.id)
like13 = Like.create!(user_id: jerry.id, post_id: chef_post.id)
like15 = Like.create!(user_id: user2.id, post_id: post1.id)
like16 = Like.create!(user_id: user2.id, post_id: post2.id)
like17 = Like.create!(user_id: user2.id, post_id: post3.id)
like18 = Like.create!(user_id: user2.id, post_id: post4.id)
like19 = Like.create!(user_id: user2.id, post_id: post5.id)
like20 = Like.create!(user_id: user2.id, post_id: post6.id)
like21 = Like.create!(user_id: user2.id, post_id: post7.id)
like22 = Like.create!(user_id: user2.id, post_id: rihanna_post_3.id)
like23 = Like.create!(user_id: user2.id, post_id: iron_post.id)
like24 = Like.create!(user_id: user2.id, post_id: arthur_post.id)
like25 = Like.create!(user_id: user2.id, post_id: rihanna_post_1.id)
like26 = Like.create!(user_id: user2.id, post_id: rihanna_post_2.id)
like27 = Like.create!(user_id: user2.id, post_id: chef_post.id)
like28 = Like.create!(user_id: user3.id, post_id: post1.id)
like29 = Like.create!(user_id: user3.id, post_id: post2.id)
like30 = Like.create!(user_id: user3.id, post_id: post3.id)
like31 = Like.create!(user_id: user3.id, post_id: post4.id)
like32 = Like.create!(user_id: user3.id, post_id: post5.id)
like33 = Like.create!(user_id: user3.id, post_id: post6.id)
like34 = Like.create!(user_id: user3.id, post_id: post7.id)
like35 = Like.create!(user_id: user3.id, post_id: rihanna_post_3.id)
like36 = Like.create!(user_id: user3.id, post_id: iron_post.id)
like37 = Like.create!(user_id: user3.id, post_id: arthur_post.id)
like38 = Like.create!(user_id: user3.id, post_id: rihanna_post_1.id)
like39 = Like.create!(user_id: user3.id, post_id: rihanna_post_2.id)
like40 = Like.create!(user_id: user3.id, post_id: chef_post.id)
like41 = Like.create!(user_id: user4.id, post_id: post1.id)
like42 = Like.create!(user_id: user4.id, post_id: post2.id)
like43 = Like.create!(user_id: user4.id, post_id: post3.id)
like44 = Like.create!(user_id: user4.id, post_id: post4.id)
like45 = Like.create!(user_id: user4.id, post_id: post5.id)
like46 = Like.create!(user_id: user4.id, post_id: post6.id)
like47 = Like.create!(user_id: user4.id, post_id: post7.id)
like48 = Like.create!(user_id: user4.id, post_id: rihanna_post_3.id)
like49 = Like.create!(user_id: user4.id, post_id: iron_post.id)
like50 = Like.create!(user_id: user4.id, post_id: arthur_post.id)
like51 = Like.create!(user_id: user4.id, post_id: rihanna_post_1.id)
like52 = Like.create!(user_id: user4.id, post_id: rihanna_post_2.id)
like53 = Like.create!(user_id: user4.id, post_id: chef_post.id)
like54 = Like.create!(user_id: drake.id, post_id: post1.id)
like55 = Like.create!(user_id: drake.id, post_id: post2.id)
like56 = Like.create!(user_id: drake.id, post_id: post3.id)
like57 = Like.create!(user_id: drake.id, post_id: post4.id)
like58 = Like.create!(user_id: drake.id, post_id: post5.id)
like59 = Like.create!(user_id: drake.id, post_id: post6.id)
like60 = Like.create!(user_id: drake.id, post_id: post7.id)
like61 = Like.create!(user_id: drake.id, post_id: rihanna_post_3.id)
like62 = Like.create!(user_id: drake.id, post_id: iron_post.id)
like63 = Like.create!(user_id: drake.id, post_id: arthur_post.id)
like64 = Like.create!(user_id: drake.id, post_id: rihanna_post_1.id)
like65 = Like.create!(user_id: drake.id, post_id: rihanna_post_2.id)
like66 = Like.create!(user_id: drake.id, post_id: chef_post.id)
like67 = Like.create!(user_id: user7.id, post_id: post1.id)
like68 = Like.create!(user_id: user7.id, post_id: post2.id)
like69 = Like.create!(user_id: user7.id, post_id: post3.id)
like70 = Like.create!(user_id: user7.id, post_id: post4.id)
like72 = Like.create!(user_id: user7.id, post_id: post5.id)
like73 = Like.create!(user_id: user7.id, post_id: post6.id)
like74 = Like.create!(user_id: user7.id, post_id: post7.id)
like75 = Like.create!(user_id: user7.id, post_id: rihanna_post_3.id)
like76 = Like.create!(user_id: user7.id, post_id: iron_post.id)
like77 = Like.create!(user_id: user7.id, post_id: arthur_post.id)
like78 = Like.create!(user_id: user7.id, post_id: rihanna_post_1.id)
like79 = Like.create!(user_id: user7.id, post_id: rihanna_post_2.id)
like80 = Like.create!(user_id: user7.id, post_id: chef_post.id)
like81 = Like.create!(user_id: user8.id, post_id: post1.id)
like82 = Like.create!(user_id: user8.id, post_id: post2.id)
like83 = Like.create!(user_id: user8.id, post_id: post3.id)
like84 = Like.create!(user_id: user8.id, post_id: post4.id)
like85 = Like.create!(user_id: user8.id, post_id: post5.id)
like86 = Like.create!(user_id: user8.id, post_id: post6.id)
like87 = Like.create!(user_id: user8.id, post_id: post7.id)
like88 = Like.create!(user_id: user8.id, post_id: rihanna_post_3.id)
like89 = Like.create!(user_id: user8.id, post_id: iron_post.id)
like90 = Like.create!(user_id: user8.id, post_id: arthur_post.id)
like91 = Like.create!(user_id: user8.id, post_id: rihanna_post_1.id)
like92 = Like.create!(user_id: user8.id, post_id: rihanna_post_2.id)
like93 = Like.create!(user_id: user8.id, post_id: chef_post.id)
like94 = Like.create!(user_id: user9.id, post_id: post1.id)
like95 = Like.create!(user_id: user9.id, post_id: post2.id)
like96 = Like.create!(user_id: user9.id, post_id: post3.id)
like97 = Like.create!(user_id: user9.id, post_id: post4.id)
like98 = Like.create!(user_id: user9.id, post_id: post5.id)
like99 = Like.create!(user_id: user9.id, post_id: post6.id)
like100 = Like.create!(user_id: user9.id, post_id: post7.id)
like101 = Like.create!(user_id: user9.id, post_id: rihanna_post_3.id)
like102 = Like.create!(user_id: user9.id, post_id: iron_post.id)
like103 = Like.create!(user_id: user9.id, post_id: arthur_post.id)
like104 = Like.create!(user_id: user9.id, post_id: rihanna_post_1.id)
like105 = Like.create!(user_id: user9.id, post_id: rihanna_post_2.id)
like106 = Like.create!(user_id: user9.id, post_id: chef_post.id)
like107 = Like.create!(user_id: user11.id, post_id: post1.id)
like108 = Like.create!(user_id: user11.id, post_id: post2.id)
like109 = Like.create!(user_id: user11.id, post_id: post3.id)
like110 = Like.create!(user_id: user11.id, post_id: post4.id)
like111 = Like.create!(user_id: user11.id, post_id: post5.id)
like112 = Like.create!(user_id: user11.id, post_id: post6.id)
like113 = Like.create!(user_id: user11.id, post_id: post7.id)
like114 = Like.create!(user_id: user11.id, post_id: rihanna_post_3.id)
like115 = Like.create!(user_id: user11.id, post_id: iron_post.id)
like116 = Like.create!(user_id: user11.id, post_id: arthur_post.id)
like117 = Like.create!(user_id: user11.id, post_id: rihanna_post_1.id)
like118 = Like.create!(user_id: user11.id, post_id: rihanna_post_2.id)
like119 = Like.create!(user_id: user11.id, post_id: chef_post.id)
like120 = Like.create!(user_id: rihanna.id, post_id: post1.id)
like121 = Like.create!(user_id: rihanna.id, post_id: post2.id)
like122 = Like.create!(user_id: rihanna.id, post_id: post3.id)
like123 = Like.create!(user_id: rihanna.id, post_id: post4.id)
like124 = Like.create!(user_id: rihanna.id, post_id: post5.id)
like125 = Like.create!(user_id: rihanna.id, post_id: post6.id)
like126 = Like.create!(user_id: rihanna.id, post_id: post7.id)
like127 = Like.create!(user_id: rihanna.id, post_id: rihanna_post_3.id)
like128 = Like.create!(user_id: rihanna.id, post_id: iron_post.id)
like129 = Like.create!(user_id: rihanna.id, post_id: arthur_post.id)
like130 = Like.create!(user_id: rihanna.id, post_id: rihanna_post_1.id)
like131 = Like.create!(user_id: rihanna.id, post_id: rihanna_post_2.id)
like132 = Like.create!(user_id: rihanna.id, post_id: chef_post.id)
like133 = Like.create!(user_id: user10.id, post_id: post1.id)
like134 = Like.create!(user_id: user10.id, post_id: post2.id)
like135 = Like.create!(user_id: user10.id, post_id: post3.id)
like136 = Like.create!(user_id: user10.id, post_id: post4.id)
like138 = Like.create!(user_id: user10.id, post_id: post6.id)
like139 = Like.create!(user_id: user10.id, post_id: post7.id)
like140 = Like.create!(user_id: user10.id, post_id: rihanna_post_3.id)
like141 = Like.create!(user_id: user10.id, post_id: iron_post.id)
like142 = Like.create!(user_id: user10.id, post_id: arthur_post.id)
like143 = Like.create!(user_id: user10.id, post_id: rihanna_post_1.id)
like144 = Like.create!(user_id: user10.id, post_id: rihanna_post_2.id)
like145 = Like.create!(user_id: user10.id, post_id: chef_post.id)
like146 = Like.create!(user_id: user12.id, post_id: post1.id)
like147 = Like.create!(user_id: user12.id, post_id: post3.id)
like149 = Like.create!(user_id: user12.id, post_id: post7.id)
like150 = Like.create!(user_id: user12.id, post_id: iron_post.id)
like151 = Like.create!(user_id: user12.id, post_id: rihanna_post_1.id)
like152 = Like.create!(user_id: user12.id, post_id: chef_post.id)
like153 = Like.create!(user_id: demo_user.id, post_id: post2.id)
like154 = Like.create!(user_id: demo_user.id, post_id: post4.id)
like156 = Like.create!(user_id: demo_user.id, post_id: chef_post.id)
like158 = Like.create!(user_id: user13.id, post_id: post2.id)
like159 = Like.create!(user_id: user13.id, post_id: post3.id)
like160 = Like.create!(user_id: user13.id, post_id: post4.id)
like161 = Like.create!(user_id: user13.id, post_id: post6.id)
like162 = Like.create!(user_id: user13.id, post_id: rihanna_post_1.id)
like163 = Like.create!(user_id: user13.id, post_id: rihanna_post_2.id)
like164 = Like.create!(user_id: user13.id, post_id: chef_post.id)
like165 = Like.create!(user_id: user14.id, post_id: post3.id)
like166 = Like.create!(user_id: user14.id, post_id: post6.id)
like167 = Like.create!(user_id: user14.id, post_id: post7.id)
like168 = Like.create!(user_id: user14.id, post_id: rihanna_post_3.id)
like169 = Like.create!(user_id: user14.id, post_id: rihanna_post_2.id)
like170 = Like.create!(user_id: user2.id, post_id: koolaid_post.id)
like171 = Like.create!(user_id: user3.id, post_id: koolaid_post.id)
like172 = Like.create!(user_id: user4.id, post_id: koolaid_post.id)
like173 = Like.create!(user_id: user7.id, post_id: koolaid_post.id)
like174 = Like.create!(user_id: user8.id, post_id: koolaid_post.id)
like175 = Like.create!(user_id: user9.id, post_id: koolaid_post.id)
like176 = Like.create!(user_id: user10.id, post_id: koolaid_post.id)
like177 = Like.create!(user_id: user11.id, post_id: koolaid_post.id)
like178 = Like.create!(user_id: user12.id, post_id: koolaid_post.id)
like179 = Like.create!(user_id: user13.id, post_id: koolaid_post.id)
like180 = Like.create!(user_id: user14.id, post_id: koolaid_post.id)

comment1 = Comment.create!(user_id: user2.id, post_id: post1.id, body: "nice shot")
comment2 = Comment.create!(user_id: user2.id, post_id: post2.id, body: "cool picture")
comment3 = Comment.create!(user_id: user2.id, post_id: post3.id, body: "nice view")
comment4 = Comment.create!(user_id: user3.id, post_id: post1.id, body: "awesome")

follow1 = Follow.create!(follower_id: demo_user.id, followed_id: user2.id)
follow2 = Follow.create!(follower_id: demo_user.id, followed_id: user3.id)
follow3 = Follow.create!(follower_id: demo_user.id, followed_id: user4.id)
follow4 = Follow.create!(follower_id: demo_user.id, followed_id: jerry.id)
follow5 = Follow.create!(follower_id: demo_user.id, followed_id: drake.id)
follow6 = Follow.create!(follower_id: user2.id, followed_id: demo_user.id)
follow7 = Follow.create!(follower_id: user2.id, followed_id: user3.id)
follow8 = Follow.create!(follower_id: user3.id, followed_id: user4.id)
follow9 = Follow.create!(follower_id: user3.id, followed_id: drake.id)
follow10 = Follow.create!(follower_id: user4.id, followed_id: demo_user.id)
follow11 = Follow.create!(follower_id: jerry.id, followed_id: demo_user.id)
