#include <print>
#include <string>

void println(std::string a, std::string b) {
  std::println("{} {}", a, b);
}

int main(int argc, char* argv[]) {
  println("Hello", "world!");
}
