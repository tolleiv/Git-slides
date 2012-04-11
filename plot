
git config --global user.name "Tolleiv Nietsch"
git config --global user.email "tolleiv.nietsch@typo3.org"
git config --global core.editor vim

------------------------------------------------------------------------------------------------------

mkdir t3dd12; cd t3dd12
vim hello.php
<<<<<<<<<<<<<<<<
<?php echo 'Hello, World!!';
<<<<<<<<<<<<<<<<

git init
git add hello.php
git commit -m "First commit"


--------------------------------------------------------------------------------------------------------

git status
vim hello.php
<<<<<<<<<<<<<<<<<
<?php
echo 'Hello,' . $argv[1];
<<<<<<<<<<<<<<<<<

git status
git add hello.php
git commit -m "Hello world interactive"

------------------------------------------------------------------------------------------------------

Repository - hold all versioning information in the .git / GIT_DIR directory
Working directory - holds all files (not relevant in bare repositories)
Index - glue between repo and files, holds all changes for the next commit

------------------------------------------------------------------------------------------------------

vim hello.php
<<<<<<<<<<<<<<<<<
<?php
$name =  $argv[1] ?: 'World';
echo 'Hello,' . $name;
<<<<<<<<<<<<<<<<<

git add hello.php

vim hello.php
<<<<<<<<<<<<<<<<<
<?php
/**
 * The best hello world block ever
 */

$name =  $argv[1] ?: 'World';
echo 'Hello,' . $name;
<<<<<<<<<<<<<<<<<

git status

-------------------------------------------------------------------------------------------------------

vim hello.php
git checkout hello.php

vim hello.php
git add hello.php
git reset HEAD head.php

-------------------------------------------------------------------------------------------------------

git log
git log --pretty=oneline
git config --global alias.hist '!git log \
    --pretty=format:"%h %ad | %s%d [%an]" \
    --graph --date=short'

git hist

------------------------------------------------------------------------------------------------------

git tag interactive
git hist

git checkout <>
git tag first

git checkout interactive
git tag

git hist

-------------------------------------------------------------------------------------------------------

git branch greet
git checkout greet

git checkout master
git checkout greet

git branches -av


-------------------------------------------------------------------------------------------------------

<<<<<<<<<< lib/Greeter.php

?php

class Greeter {
        protected $name;

        public function __construct($name='World') {
                $this->name = $name;
        }

        public function greet() {
                printf('Hello, %s!', $this->name);
        }
}

<<<<<<<<<<<<<

git add lib/Greeter.php
git commit -m "Added greeter class"

<<<<<<<<<<<<< hello.php

<?php
/**
 * Hello World example
 */

require('lib/Greeter.php');

$greeter = new Greeter($argv[1]);
$greeter->greet();

<<<<<<<<<<<<<<


git add hello.php
git commit -m "Using the Greeter class"


git checkout master

<<<<<<<<<< hello.php

/**
 * Intergalactic Hello World example
 */
<<<<<<<<<<<<<


git add hello.php
git commit -m "Extending the comment"


<<<<<<<< README
Great workshop on creating Hello World programms so far
<<<<<<<<

git add README
git commit -m "Added README file"

git hist --all

-----------------------------------------------------------------------------------------------------------

git checkout greet
git merge master
git hist --all

-----------------------------------------------------------------------------------------------------------

git checkout master

<<<<<<<<<<<<<< lib/Greeter.php
<?php

// Nothing here yet

<<<<<<<<<<<<

git add lib/Greeter.php
git commit -m "Prepare greeter"

git checkout greet
git merge master

vim lib/Greeter.php
git add lib/Greeter.php
git commit -m "Merged master - kept Greetert"
-----------------------------------------------------------------------------------------------------------

git reset --hard 1caec74 / last valueable commit in greeter















