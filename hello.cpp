export module hello;

import <print>;
import <string>;

export namespace hello {
  void println(std::string a, std::string b) {
    std::println("{} {}", a, b);
  }
}
