echo "You are required to create a new folder with name "practice".
 After creating it, you must enter this folder, because all subsequent work must happen inside it. 
You will then create a set of three files named "a.txt" , "b.txt" , "c.txt" — all of them empty files — and 
all of them must be located directly inside this folder.

Once the files are created, you will use a listing option that not only displays filenames 
but also shows detailed information about each one, including permissions, ownership, size, and timestamps.
 This detailed listing is necessary to confirm that the files exist in the correct directory and have been properly created."

mkdir practice
cd practice
touch a.txt b.txt c.txt
ls -l


