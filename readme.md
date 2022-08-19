# pythob

a python preprocessor to allow c-style curly bracket syntax


pythob is made with lex. run build.sh to produce an executable, then pipe text into it.

## example usage

```
print("hello world!");
if 0 == 1 {     
    print("beans");
}
else {
    print("no beans :(");
}
```
will be turned into
```
print("hello world!")
if 0 == 1 :
	print("beans")
	
else :
	print("no beans :(")
```
which is valid python, but. yeah. not pretty
