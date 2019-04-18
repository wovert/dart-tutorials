void main () {
  var page = new Page();
  Page.scrollDown();
  print(Page.maxPage);
}

class Page {
  static const int maxPage = 10; // 声明常量

  static int currentPage = 1;

  static void scrollDown() {
    currentPage = 1;
    print("ScrollDown...");
  }

  void scrollUp() {
    currentPage++;
    print("scrollUp...");
  }
}