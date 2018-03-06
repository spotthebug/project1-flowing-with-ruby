# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Vote.delete_all
Answer.delete_all
Question.delete_all
User.delete_all

5.times do
  u = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.safe_email,
    password: "password"
    )
    # 2.times do
    #   q = Question.create!(
    #     title: Faker::Lorem.sentence,
    #     description: Faker::Lorem.paragraph,
    #     user: u
    #     )
    #   q.votes << Vote.create(is_upvote: true, user: u)
    # end
    # 3.times do
    #    a = Answer.create!(
    #     description: Faker::Lorem.paragraph,
    #     user_id: User.last.id,
    #     question_id: Question.last.id,
    #     )
    #     a.votes << Vote.create(is_upvote: true, user: u)
    # end
end



a = User.create(name: 'Omar', email: 'omar@email.com', password: 'password')
b = User.create(name: 'Garima', email: 'garima@email.com', password: 'password')
c = User.create(name: 'Maria', email: 'maria@email.com', password: 'password')
d = User.create(name: 'Karthik', email: 'karthik@email.com', password: 'password')
one = Question.create(title: 'What does ||= (or-equals) mean in Ruby?', description: 'I have seen it in several code snippets, but don\'t understand how it works.', user: a)
two = Question.create(title: 'How do I get started with Rails?', description: "Hello, I am new to Rails and I am wondering how do I get started with it?  Thank you", user: a)
three = Question.create(title: 'Is Ruby pass by reference or by value?', description: 'I am more comfortable with Java, so not sure about how Ruby does it.', user: b)
four = Question.create(title: 'What is attr_accessor in Ruby?', description: 'I am having a hard time understanding attr_accessor in Ruby. Can someone explain this to me?', user: b)
five = Question.create(title: 'Calling shell commands from Ruby', description: 'How do I call shell commands from inside of a Ruby program? How do I then get output from these commands back into Ruby?', user: c)
six = Question.create(title: 'Is there any difference between the `:key => “value”` and `key: “value”` hash notations?', description: "Is there any difference between :key => \"value\" (hashrocket) and key: \"value\" (Ruby 1.9) notations? \n\n

If not, then I would like to use key: \"value\" notation. Is there a gem that helps me to convert from :x => to x: notations?", user: c)
seven = Question.create(title: 'Why is it bad style to `rescue Exception => e` in Ruby?', description: 'Why not? What\'s the right thing to do?', user: d)
eight = Question.create(title: 'Why do Ruby setters need “self.” qualification within the class?', description: 'Ruby setters—whether created by (c)attr_accessor or manually—seem to be the only methods that need self. qualification when accessed within the class itself.', user: d)
nine = Question.create(title: "Why is “slurping” a file not a good practice?", description: "why shouldn\'t I use these?\n
  File.read(\'/path/to/text.txt\').lines.each do |line|\n
  # do something with a line\n
end", user: b)
ten = Question.create(title: 'How to call methods dynamically based on their name?', description: 'How can I call a method dynamically when its name is contained in a string variable?', user: c)

Answer.create(description: 'Ruby doesn\'t have any concept of a pure, non-reference value, so you certainly can\'t pass one to a method. Variables are always references to objects. In order to get an object that won\'t change out from under you, you need to dup or clone the object you\'re passed, thus giving an object that nobody else has a reference to.', user: c, question: three)

Answer.create(description: "a ||= b is a \"conditional assignment operator\". It is sort-of-but-not-quite(*) shorthand for a || a = b.\n
It means \"if a is undefined or falsey (false or nil), then evaluate b and set a to the result\".", user: d, question: one)

Answer.create(description: "As a first approximation,\n\n

a ||= b\n
is equivalent to\n\n

a || a = b\n
and not equivalent to\n\n

a = a || b\n
However, that is only a first approximation, especially if a is undefined. The semantics also differ depending on whether it is a simple variable assignment, a method assignment or an indexing assignment:\n\n

a    ||= b\n
a.c  ||= b\n
a[c] ||= b\n
are all treated differently.", user: c, question: one)

Answer.create(description: "Install Rails at the command prompt if you haven not yet:\n\n

$ gem install rails\n
At the command prompt, create a new Rails application:\n\n

$ rails new myapp\n
where “myapp” is the application name.\n\n

Change directory to myapp and start the web server:\n\n

$ cd myapp; rails server\n
Run with --help or -h for options.\n\n

Go to localhost:3000 and you will see:\n\n

Yay! You’re on Rails!", user: c, question: two)

Answer.create(description: "attr_accessor is just a method. What it does is create more methods for you.\n\n

So this code here:\n\n

class Foo\n
  attr_accessor :bar\n
end\n\n

is equivalent to this code:\n\n

class Foo\n
  def bar\n
    <@UNVERIFIED|@bar>\n
  end\n
  def bar=( new_value )\n
    <@UNVERIFIED|@bar> = new_value\n
  end\n
end", user: d, question: four)

Answer.create(description: 'It is just a method that defines getter and setter methods for instance variables.', user: a, question: four)

Answer.create(description: "First, note that when Ruby calls out to a shell, it typically calls /bin/sh, not Bash. Some Bash syntax is not supported by /bin/sh on all systems.
A common method is Kernel#` , commonly called backticks – `cmd`

This is like many other languages, including Bash, PHP, and Perl.

Returns the result of the shell command.

Docs: http://ruby-doc.org/core/Kernel.html#method-i-60

value = `echo \'hi\'`
value = `\#{cmd}`", user: b, question: five)

Answer.create(description: "Yes, there is a difference. These are legal:\n\n

h = { :$in => array }\n
h = { :\'a.b\' => \'c\' }\n
h[:s] = 42\n
but these are not:\n\n

h = { $in: array }\n
h = { \'a.b\': \'c\' } # but this is okay in Ruby2.2+\n
h[s:] = 42\n
You can also use anything as a key with => so you can do this:\n

h = { C.new => 11 }\n
h = { 23 => \'pancakes house?\' }\n
but you can\'t do this:\n\n

h = { C.new: 11 }\n
h = { 23: \'pancakes house?\' }\n
The JavaScript style (key: value) is only useful if all of your Hash keys are \"simple\" symbols (more or less something that matches /\\A[a-z_]\\w*\\z/i, AFAIK the parser uses its label pattern for these keys).", user: a, question: six)

Answer.create(description: "Exception is the root of Ruby\'s exception hierarchy, so when you rescue Exception you rescue from everything, including subclasses such as SyntaxError, LoadError, and Interrupt.\n\n

Rescuing Interrupt prevents the user from using CTRLC to exit the program.\n\n

Rescuing SignalException prevents the program from responding correctly to signals. It will be unkillable except by kill -9.\n\n

Rescuing SyntaxError means that evals that fail will do so silently.", user: c, question: seven)

Answer.create(description: 'Well, I think the reason this is the case is because qwerty = 4 is ambiguous—are you defining a new variable called qwerty or calling the setter? Ruby resolves this ambiguity by saying it will create a new variable, thus the self. is required.', user: b, question: eight)
Answer.create(description: "Again and again we see questions asking about reading a text file to process it line-by-line, that use variations of read, or readlines, which pull the entire file into memory in one action.\n\n

The documentation for read says:\n\n

Opens the file, optionally seeks to the given offset, then returns length bytes (defaulting to the rest of the file). [...]\n\n

The documentation for readlines says:\n\n

Reads the entire file specified by name as individual lines, and returns those lines in an array. [...]\n\n

Pulling in a small file is no big deal, but there comes a point where memory has to be shuffled around as the incoming data\'s buffer grows, and that eats CPU time. In addition, if the data consumes too much space, the OS has to get involved just to keep the script running and starts spooling to disk, which will take a program to its knees. On a HTTPd (web-host) or something needing fast response it\'ll cripple the entire application.\n\n

Slurping is usually based on a misunderstanding of the speed of file I/O or thinking that it\'s better to read then split the buffer than it is to read it a single line at a time.", user: d, question: nine)
