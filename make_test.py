# cria uma sequencia de testes para
# o process de uma testbench,
# separados por `wait {};`

TIME = 10


def make_tests(names: list[str]):
    options = len(names)

    for i in range(2**options):
        for let, name in zip(f"{i:0{options}b}", names):
            print(f"        {name} <= '{let}';")
        print(f"        wait for {TIME}ns;\n")
        
    
    print(f"--stop-time={TIME * 2**options}ns")



make_tests(input().split())

