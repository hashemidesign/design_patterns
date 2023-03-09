void main() {
  void drawImage(LazyBitmap image) {
    print('About to draw image');
    image.draw();
    print('Done drawing image');
  }

  LazyBitmap bmp = LazyBitmap('facepalm.jpg');
  drawImage(bmp);
  drawImage(bmp);
}

class Bitmap {
  final String filename;

  Bitmap(this.filename) {
    print('Loading image from $filename');
  }

  void draw() {
    print('Drawing image $filename');
  }
}

class LazyBitmap {
  final String filename;
  Bitmap? _bitmap;
  LazyBitmap(this.filename);

  void draw() {
    if (_bitmap == null) {
      _bitmap = Bitmap(filename);
    }
    _bitmap!.draw();
  }
}
