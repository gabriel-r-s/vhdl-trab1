# cria uma sequencia de testes para o process de uma testbench,
# com todas as combinacoes de '0' e '1',
# de acordo com a len da lista options
# separados por `wait {TIME};`
# e termina com o tempo total, necessario para o gtkwave

TIME = 10


def make_tests(names: list[str]):
    options = len(names)

    for i in range(2**options):
        for let, name in zip(f"{i:0{options}b}", names):
            print(f"        {name} <= '{let}';")
        print(f"        wait for {TIME}ns;\n")
        
    
    print(f"--stop-time={TIME * 2**options}ns")



make_tests(input().split())

