# Software Architecture
Following are the tools going to be used in this project

FrontEnd
• HTML/CSS
• JavaScript (Angular)

BackEnd
• Django (Python)
• DB (Sqlite3)
• Google API’s (Gmail, Cloud Messaging, Maps)

# System Architecture and System Design

There are various architectural styles that we could have utilized in creating this
application. The first thought was to use the Repository Architectural Style in which
subsystems access and modify a central repository. Each of the subsystems are
independent from each other and only interact with the data through the central
repository. This style was quickly thrown out because of the high coupling found
between the subsystems and the repository. We would not be able to change the
repository or subsystems very easily. In the end, it is not portable and changes to the user
interface would be difficult to implement quickly.

The second architectural style we investigated was the Model/View/Controller or MVC
Architectural Style. In this architectural style, we separate all the subsystems into three
categories. The model subsystems maintain the data of the application, the view
subsystems display and format the data to the user, and the controller subsystems are
responsible for managing the interactions between user and system. The model
subsystem should be independent of the view and control subsystems. This is a very
good possible architectural style for our application. It allows changes to the user
interface to be very easily implemented. We will see later why this architectural style
was not chosen.

The last architectural style we looked at was the Three-Tier Architectural Style; which is
very similar to the MVC Architectural Style. The subsystems are once again, separated
into three layers:
• Interface Layer – boundary objects that deal with the user (User Interface)
• Application Logic Layer – control and entity objects
• Storage Layer – the database
Once again, partitioning all the layers allows changes to be made to them very easily.
We can change the User Interface very easily without having to make changes to the
database or how we deal with the data.

# Three-Tier Architectural Style
[Deliverables_architecture__updated__1_.pdf](uploads/8cb30d21ce5b6b8cdc89b4422a1e1fd8/Deliverables_architecture__updated__1_.pdf)