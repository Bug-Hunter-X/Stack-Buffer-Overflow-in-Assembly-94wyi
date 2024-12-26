mov eax, [ebp+8]
cmp eax, 100 ; Check if the value is within bounds
jge overflow_handler ; Jump to the overflow handler if the value is greater than or equal to 100
add eax, 1
mov [ebp+8], eax
jmp end
overflow_handler:
; Handle the overflow appropriately (e.g., set eax to a maximum value or raise an exception)
mov eax, 100
end: