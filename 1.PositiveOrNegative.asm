include 'emu8086.inc'
.model small
.stack 100h

.data 

    msg db 'enter the number: $ '
  

.code
 

main proc
    mov ax, @data
    mov ds, ax
    
    lea si, msg
    call SCAN_NUM ; Scanned the number here, value is stored in cl
    mov al, cl
    
    cmp al, 0
    jl isNegative
    jg isPositive
    
    savepoint:
    hlt
    
    isNegative:
    print 'Is negative'
    jmp savepoint
    
    
    isPositive:
    print 'Is postive'
    jmp savepoint
                  
                  
    
    
    
    
    DEFINE_SCAN_NUM 

    
endp main
end main  