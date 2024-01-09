# https://app.quickdatabasediagrams.com/#/d/NuGchS

User
-
id PK int
email string INDEX
nickName string
firstName NULL string
lastName NULL string
picture NULL string
address NULL string
accountStatus NULL string
emailVerified NULL string
lastUpdated NULL string
# 0 - no permisions,
# 1 - standart user, board admin
# 2 - super admin
role int

# What information should be shown
# "private" or "public" 
PrivacySettings
----
userId int FK >- User.id
email NULL string
nickName NULL string
firstName NULL string
lastName NULL string
picture NULL string
address NULL string

Members
----
id PK int
boardId int FK >-< Board.id
userId int FK >-< User.id
permission_level int

Board
----
id PK int
userId int FK >- User.id
name NULL string
color NULL string
background NULL string
description NULL text
# 0 - public,
# 1 - workspace
# 2 - private
visibility int

List
----
id PK int
boardId int FK >- Board.id
name NULL string
color NULL string
description NULL text

Card
----
id PK int
boardId int FK >- List.id
ownerId int FK >- User.id
name NULL string
color NULL string
description NULL text
dateLastActivity Date
start NULL Date
end NULL Date
closed NULL boolean

Comments
----
id PK int
cardId int FK >- Card.id
userId int FK >- User.id
textMessage NULL text

Notifications
----
id PK int
userId int FK >- User.id
message text
