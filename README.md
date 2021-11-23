# x86_Input
Un simple programme "Hello World" en x86 assembly

Documentation pour les registres [Linux System Call Table](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md "Documentation").
### Compiler et executer le programme
Tout d'abord il faut compiler le programme:
```
nasm -f elf64 -o entree.o entree.asm 
```
Puis on utilise le "Dynamic linker" pour rendre le programme executable:
```
 ls -o entree entree.o
```
Puis on peut executer le programme:
```
./entree
```
