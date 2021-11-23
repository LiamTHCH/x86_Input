section .data
    text1 db "Bonjour comment t'appelle tu ? "
    text2 db "Bonjour, "
 
section .bss
    name resb 16
 
section .text                   ; Jsute un section avec un nom
    global _start               ; Mettre _start en programme de demarage
_start:                         ; fonction start 
 
    call _printText1            ; Appel la fonction _printtext1
    call _getName               ; Appel la contion
    call _printText2
    call _printName
 
    mov rax, 60                 ; mettre le registre pour un exit
    mov rdi, 0                  ; registre pour le code d'erreur (ici 0)
    syscall                     ; dire au pc que tout est pres
 
_getName:                       ; Fonction
    mov rax, 0x0                ; Mettre les registre a bonne endroit pour faire un read(0x0)
    mov rdi, 0x0
    mov rsi, name
    mov rdx, 16
    syscall
    ret                         ; retourner a la fonction principale
 
_printText1:
    mov rax, 0x01               ; Mettre les registre a bonne endroit pour faire un write(0x01)
    mov rdi, 1                     
    mov rsi, text1              ; registre avec le message
    mov rdx, 31                 ; registre avec la longeur message
    syscall
    ret
 
_printText2:
    mov rax, 0x01
    mov rdi, 1
    mov rsi, text2
    mov rdx, 10
    syscall
    ret
 
_printName:
    mov rax, 0x01
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall
    ret