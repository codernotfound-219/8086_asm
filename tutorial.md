## STEP 1: Coding
1. Write your code {masm} to a .asm file.
2. Copy the file to ~/dos/tools

## STEP 2: Dosbox
1. Open dosbox and run the following commands
```bash
    mount c ~/dos
    C:
    cd tools
```

## STEP 3: Execution
1. Enter the following command.
```bash
    masm filename.asm
```
2. Hit enter 4 times and then enter the following command.
```bash
    link filename.obj
```
3. Hit enter 4 times and then enter the following command.
```bash
    filename.exe
```
4. Optionally, if you wish to debug:
```bash
    debug filename.exe
```
