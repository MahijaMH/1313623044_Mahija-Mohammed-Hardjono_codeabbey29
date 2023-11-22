import std.stdio;
import std.format;

void main() {
    //input data
    Array data = new Array([483,686,1046,570,844,627,188,730,288,784,996,47,945,342,392,144,244,433,96,900,528]);
    //input ammount of data
    int a = 21;
    data.sort();
    for (int i = 0; i < a; i++) {
        write(data.indices[i], " ");
    }
    write(" ");

}

class Array {
    int[] values;
    int[] indices;
    int x;
    int y;
    ulong n;

    this(int[] data) {
        values = data.dup;
        indices = new int[data.length];
        n = values.length;
        for (int i = 0; i < data.length; i++) {
            indices[i] = i + 1;
        }
    }

    void swap(ref int x, ref int y) {
        int temp = y;
        y = x;
        x = temp;
    }

    void sort() {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n - 1; j++) {
                if (values[j] > values[j + 1]) {
                    swap(values[j], values[j + 1]);
                    swap(indices[j], indices[j + 1]);
                }

            }
        }
    }

}