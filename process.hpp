#include <sstream>

using namespace std;

unsigned char process(stringbuf &infile) {
    char signature[4];
    unsigned char version, ht_type;
    infile.read(signature, 4);
    infile.read((char *) &version, 1);
    infile.read((char *) &ht_type, 1); 
    return version;
}
