// A class should have a single reason to change or a class should have a primary responsibility

#include <fstream>
#include <string>
#include <vector>

using namespace std;

struct Journal {
    string title;
    vector<string> entries;

    explicit Journal(const string &title) : title(title){};

    void add(const string &entry);

    // Persistence is a separate concern
    void save(const string &filename);
};

void Journal::add(const string &entry) {
    static int count = 1;
    entries.push_back(to_string(count++) + ": " + entry);
}

void Journal::save(const string &filename) {
    ofstream ofs;
    ofs.open(filename);
    for (auto &s : entries) {
        ofs << s << endl;
    }
    ofs.close();
}

struct PersistenceManager {
    static void save(const Journal &j, const string &filename) {
        ofstream ofs(filename);
        if (ofs.is_open()) {
            for (auto &s : j.entries) {
                ofs << s << endl;
            }
        }
        ofs.close();
    }
};

int main() {
    Journal journal("Dear Diary");

    journal.add("I ate a bug.");
    journal.add("I learned design pattern.");

    // Violation of Single Responsibility Principle
    //journal.save("diary.txt");

    // Concern separation
    PersistenceManager pm;
    pm.save(journal, "diary.txt");

    return 0;
}
