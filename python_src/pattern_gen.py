import random
import re

NUM_STR_PAT = 6
NUM_PAT_IN_SINGLE_STR = 10

MAX_PAT_SIZE = 8

MATCH_RATIO = 0.33
DNA_TEMPLATE = ["A", "T", "C", "G"]

def string_generator():
    str_length = random.randint(9, 32)
    new_string = ""
    for i in range(str_length):
        new_string = new_string + DNA_TEMPLATE[random.randint(0,3)]
    return new_string

def pattern_generator(str_length):
    pat_length = random.randint(1, MAX_PAT_SIZE)
    match_seed = random.random()


    new_pattern = ""
    if match_seed <= MATCH_RATIO:
        start_cpy = random.randint(0, str_length - 1)
        end_cpy = random.randint(start_cpy , start_cpy + pat_length - 1)
        print(start_cpy, end_cpy)
        new_pattern = new_string[start_cpy : end_cpy + 1]
    else:
        for i in range(pat_length):
            new_pattern = new_pattern + DNA_TEMPLATE[random.randint(0,3)]
    return new_pattern


if __name__ == "__main__":
    f = open("test_pattern.txt", "a+")
    for i in range(NUM_STR_PAT):
        new_string = string_generator()
        f.write("str:%x:%s\n" %(i+1, new_string))
        for j in range(NUM_PAT_IN_SINGLE_STR):
            new_pattern = pattern_generator(len(new_string))

            if new_pattern in new_string:
                match_idx = re.search(new_pattern, new_string).start()
                print("Find Match! From IDX : %r" %match_idx )
                f.write("pat:%x:1:%02d:%s\n" %(j+1, match_idx, new_pattern))
            else:
                f.write("pat:%x:0:00:%s\n" %(j+1, new_pattern))
                print("Unmatch!")



            print(len(new_string), new_string)
            print(len(new_pattern), new_pattern)