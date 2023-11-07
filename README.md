# Assemble and run assembly code on an ARM64-based M1 chip computer

## Step 1: Write Your Assembly Code

Write your assembly code in a file with a .s extension, for example, hello.s. This code is an example that prints "Hello, World!" to the console.

<img width="586" alt="Ekran Resmi 2023-11-07 18 20 32" src="https://github.com/sensoyyasin/arm64/assets/73845925/4bb69956-06d4-475d-96d1-269ef204ba6c">

## Step 2: Assemble the Code

Open your terminal and navigate to the directory where your assembly code is located. Use the as assembler to compile your code:

<img width="157" alt="Ekran Resmi 2023-11-07 18 21 06" src="https://github.com/sensoyyasin/arm64/assets/73845925/6b8265d3-e86f-4c8a-a221-230c1ff5d0c4">

This command assembles your code and produces an object file named hello.o.

## Step 3: Link the Object File

Now, you need to link the object file to create an executable. Use the ld linker, and specify the necessary options:

<img width="842" alt="Ekran Resmi 2023-11-07 18 21 46" src="https://github.com/sensoyyasin/arm64/assets/73845925/7fa49202-f9d1-48a5-a136-18a5602616c2">

hello.o: The object file you want to link.

-o hello: The name of the output executable (you can choose any name you prefer).

-lSystem: Links the System framework.

-syslibroot: Specifies the system library root.

-e _main: Specifies the entry point of the program as _main.

-arch arm64: Sets the architecture to ARM64, which is suitable for M1 chip computers.

## How to Find the Mac OS SDK Path Using xcrun?

<img width="440" alt="Ekran Resmi 2023-11-07 18 23 02" src="https://github.com/sensoyyasin/arm64/assets/73845925/19465155-bd84-426c-a27d-d3c6d5f346e7">

xcrun: This is a command-line tool provided by Xcode Command Line Tools.

-sdk macosx: Specifies the SDK you want to find, in this case, the macOS SDK.

--show-sdk-path: Instructs xcrun to display the path to the SDK.

## Step 4: Run Your Assembly Program

Now that you have successfully linked your assembly code, you can run your program by executing the following command in your terminal:

./hello

After compiling a C or assembly program, you get your object files. However, these object files must be combined to create the entire program. This is where the "ld" linker program comes into play and merges these object files, resolves the missing links, and produces an executable file.

In summary, "ld" (linker) is an important software that combines your processor code (object files) and creates an executable program. This process ensures that all components of your program are assembled and working correctly.

<img width="904" alt="Ekran Resmi 2023-11-07 16 20 53" src="https://github.com/sensoyyasin/arm64/assets/73845925/be6ad1a5-0b62-49f8-88f1-ef4191ab262c">


Sources:
https://cs.lmu.edu/~ray/notes/nasmtutorial/

