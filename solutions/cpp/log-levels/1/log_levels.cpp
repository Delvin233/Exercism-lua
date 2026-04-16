#include <string>

namespace log_line {
std::string message(std::string line) {
    // return the message
    size_t  colonPosition = line.find(":");
    std::string msg = line.substr(colonPosition + 2);
    return msg;
}

std::string log_level(std::string line) {
    // return the log level
    // we'd have to find our start and our end right?
    size_t startBracketPos = line.find("[") + 1;
    size_t endBracketPos = line. find("]");

    // then we find the word inbetween 
    return line.substr(startBracketPos, (endBracketPos - startBracketPos));    
}

std::string reformat(std::string line) {
    // return the reformatted message
    return message(line) + " (" + log_level(line) + ")";
}
}  // namespace log_line
