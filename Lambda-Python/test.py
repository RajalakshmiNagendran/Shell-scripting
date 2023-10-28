def main():
    input_array = input("Enter the elements of the array separated by spaces: ").split()

    A = []
    B = []

    for element in input_array:
        if element in B:
            A.append(element)
        B.append(element)

    A = list(set(B))

    A_intersection_B = list(set(A) & set(B))
    A_greater_than_B = list(set(A) - set(B))
    A_less_than_B = list(set(B) - set(A))

    final_subset = []
    for element in A_intersection_B:
        if element in A and element in B and element in A_greater_than_B and element in A_less_than_B:
            final_subset.append(element)

    print("Final Subset:")
    print(final_subset)

if __name__ == "__main__":
    main()