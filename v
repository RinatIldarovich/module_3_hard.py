# module_3_hard.py
def calculate_structure_sum(structure):
    summa = 0
    if isinstance(structure, (int, float)):
        summa += structure
    elif isinstance(structure, str):
        summa += len(structure)
    elif isinstance(structure, (list, set, tuple)):
        for number in structure:
            summa += calculate_structure_sum(number)
    elif isinstance(structure, dict):
        for key, values in structure.items():
            summa += calculate_structure_sum(key)
            summa += calculate_structure_sum(values)
    return summa


structure = [[1, 2, 3], {'a': 4, 'b': 5}, (6, {'cube': 7, 'drum': 8}), "Hello",((), [{(2, 'Urban', ('Urban2', 35))}])]

Summa = calculate_structure_sum(structure)
print(Summa)
