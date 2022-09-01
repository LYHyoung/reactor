#! /usr/bin/python3
f = open("autogen.S", "r")
lines = f.readlines()
MC = 0

if "dummy:\n" in lines:
    MC = 1

if MC == 0:
    print("[Machine clear based transient attack code]")
    if lines[0] != ".align 0x1000\n":
        lines.insert(0,".align 0x1000\n")

    i = lines.index("// Faulty Load\n")
    tag = 0

    while True:
        if "mov" in lines[i]:
            if tag == 0:
                tag = tag + 1
                i = i + 1
            else:
                break
        else:
            i = i + 1

    lines.insert(i, "lea leak, %r14\nlea dummy, %r15\nmov (%r14), %rax\npush %rax\n\nmovl $0xe7ff4190, (%r14)\nleak:\n")

    while True:
        if "pop" in lines[i]:
            break
        else:
            i = i + 1

    lines.insert(i, "dummy:\npop %rax\nmov %rax, (%r14)\n")

else:
    print("[Meltdown type transient execution attack code]")
    leak = lines.index("lea leak, %r14\n")
    for cnt in range(0,7):
        del lines[leak]
    dummy = lines.index("dummy:\n")
    for cnt in range(0,3):
        del lines[dummy]

f.close()

with open("autogen.S", "w") as file:
    file.writelines(lines)
file.close()
