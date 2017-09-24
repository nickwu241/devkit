def findall_and_replace(candidate_lines, target_replacement):
    output_lines = []
    for line in candidate_lines:
        for k, v in target_replacement.items():
            line = (line.replace(k, v))
        output_lines.append(line)
    return output_lines


def file_findall_replace(infilename_outfilename_dict, target_replacement_dict):
    """
    Using all input files, converts target text to replacement text and outputs to output files.
    Output files will be overwritten if existing already.
    :param infilename_outfilename_dict: input file names to output file names
    :param target_replacement_dict: target text to replacement text
    :return: nothing
    """
    for in_filename, out_filename in infilename_outfilename_dict.items():
        with open(in_filename, 'r') as in_fh:
            output_lines = findall_and_replace(in_fh.readlines(), target_replacement_dict)
        with open(out_filename, 'w') as out_fh:
            out_fh.writelines(output_lines)


def merge_file_lines(list_filenames, out_filename, splitter):
    """
    Merge together all lines of the specified files (line being appended together are split by a splitter for each file)
    Order is in the order of list_filenames.
    :param list_filenames: list of input file names
    :param out_filename: output file name (will be overwritten if existing)
    :param splitter: string to separate words in files
    :return: nothing
    """
    list_file_outputs = []
    for filename in list_filenames:
        max_lines = 0
        with open(filename, 'r') as in_fh:
            infile_output = in_fh.readlines()
            list_file_outputs.append(infile_output)
            if len(infile_output) > max_lines:
                max_lines = len(infile_output)

    out_lines = []
    for i in range(max_lines):
        for j in range(len(list_file_outputs)):
            out_lines.append("")
            try:
                out_lines[i] += list_file_outputs[j][i].strip() + splitter
            except IndexError:
                out_lines[i] += ""
        out_lines[i] = str(out_lines[i]).rstrip(splitter)
        out_lines[i] += "\n"

    with open(out_filename, 'w') as out_fh:
        out_fh.writelines(out_lines)


def main():
    # Example Usage:
    # file_findall_replace({"f1.txt": "f1.txt"}, {"silly" : "funny"})
    # file_findall_replace({"f1.txt": "f1-silly.txt"}, {"funny" : "silly"})
    # merge_file_lines(["f1.txt", "f2.txt", "f3.txt"], "output.txt", " ")
    pass

if __name__ == '__main__':
    main()
