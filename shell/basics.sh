# input output
echo "hello world"
echo "hello world" > hello.txt
cat hello.txt
# variables
name="Alice"
echo "Hello, $name!"
# command substitution
current_date=$(date)
echo "Today's date is: $current_date"
# loops
for i in {1..5}; do
  echo "Number: $i"
done
# conditionals
if [ -f "hello.txt" ]; then
  echo "File exists."
else
  echo "File does not exist."
fi
# loops with conditions
for file in *.txt; do
  if [ -f "$file" ]; then
    echo "Processing $file"
  fi
done
# while loop
counter=1
while [ $counter -le 5 ]; do
  echo "Counter: $counter"
  ((counter++))
done
# until loop
counter=1
until [ $counter -gt 5 ]; do
  echo "Counter: $counter"
  ((counter++))
done
# functions
greet() {
  echo "Hello, $1!"
}
greet "Bob"
