class Post {
  String postBody = '';
  String author = '';
  bool userLiked = false;
  int likes = 0;

  Post(this.postBody, this.author);

  void likePost() {
    this.userLiked = !this.userLiked;
    if (this.userLiked) {
      // print(this.likes++);
      this.likes += 1;
    } else {
      // print(this.likes--);
      this.likes -= 1;
    }
  }
}