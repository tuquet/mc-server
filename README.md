# mc-server
Truy cập papermc.io/downloads tải bản paper.jar mong muốn về.

Ném file tải vào thư mục này, đổi tên chính xác thành paper.jar.

Kích đúp run.bat lên hưởng thụ thành quả!

----------------------

Để chuyển một thế giới (Save Game) bạn đang chơi dở (Singleplayer hoặc thế giới cũ) lên thành thế giới chạy trên Server Paper mới, bạn chỉ cần làm theo các bước đơn giản dưới đây.

Vì cấu trúc lưu file của Minecraft chơi đơn (Singleplayer) và Minecraft Server có một chút khác biệt, bạn hãy chú ý các bước xử lý thư mục nhé:

---

### Bước 1: Tìm và Copy thư mục Save Game cũ

1. Nhấn tổ hợp phím `Windows + R` trên bàn phím để mở hộp thoại Run.
2. Gõ vào cụm từ **`%appdata%\.minecraft\saves`** rồi nhấn **Enter**.
3. Tại đây, bạn sẽ thấy danh sách các thư mục chứa thế giới chơi đơn của mình. Hãy tìm đúng thư mục thế giới mà bạn muốn đem lên Server (Ví dụ tên thư mục là: `The Gioi Cua Toi`).
4. **Copy (Sao chép)** toàn bộ thư mục đó.

---

### Bước 2: Chuyển đổi và đưa vào thư mục Server

Bây giờ, bạn hãy vào thư mục Server của mình (`C:\Users\pn.tund2\Documents\Repository`).

#### **Trường hợp A: Nếu Server của bạn là Server Hoàn Toàn Mới (Chưa từng bấm `run.bat` lần nào)**

1. **Paste (Dán)** thư mục thế giới vừa copy vào đây.
2. Đổi tên thư mục đó thành đúng chữ: **`world`** (viết thường hoàn toàn).
3. Bây giờ bạn kích đúp file `run.bat` để chạy server lần đầu. Paper Server sẽ tự động nhận diện thư mục `world` này và tự bóc tách các dữ liệu Nether (Địa ngục) và The End (Thần long) thành 2 thư mục riêng là `world_nether` và `world_the_end` cho đúng cấu trúc server.

#### **Trường hợp B: Nếu Server của bạn ĐÃ CHẠY RỒI (Đã có sẵn thế giới trống tạo tự động)**

1. Hãy **Xóa** 3 thư mục cũ có tên là `world`, `world_nether`, và `world_the_end` hiện tại trong thư mục Server đi (Nhớ tắt server trước khi xóa).
2. **Paste (Dán)** thư mục thế giới chơi đơn của bạn vào.
3. Đổi tên thư mục đó thành **`world`**.
4. Kích đúp file `run.bat` để khởi động lại là xong.

---

### Bước 3: Giữ nguyên đồ đạc trong rương và túi đồ (Inventory) của bạn

Khi chơi đơn, dữ liệu túi đồ của bạn được lưu dưới danh nghĩa chủ phòng (Host). Khi chuyển lên Server, game sẽ nhận diện bạn qua mã UUID của tài khoản Minecraft.

* **Nếu bạn dùng tài khoản Bản Quyền (Premium):** Server sẽ tự động nhận diện đúng đồ đạc, thanh kinh nghiệm và vị trí đứng của bạn mà không cần chỉnh sửa gì.
* **Nếu bạn chơi Server lậu / Crack (Offline mode):** Đồ đạc của bạn có thể sẽ bị biến mất (hoặc bạn biến thành người chơi mới). Để lấy lại quyền quản trị cao nhất nhằm lấy lại đồ hoặc chỉnh chế độ chơi, bạn hãy làm như sau:
1. Nhìn vào cửa sổ dòng lệnh đen của Server đang chạy.
2. Gõ lệnh: `op tên_nhân_vật_của_bạn` (Ví dụ: `op Steve`) rồi ấn **Enter** để cấp quyền Admin cho mình.
3. Vào game gõ `/gamemode creative` để lấy lại những món đồ cũ nếu bị mất.



### Lưu ý quan trọng về Git:

Do ở bước trước chúng ta đã cấu hình file `.gitignore` tự động bỏ qua các thư mục `world/`, `world_nether/`, và `world_the_end/`, nên bạn cứ thoải mái chơi, xây dựng thế giới nặng bao nhiêu Gigabyte đi chăng nữa thì khi bạn gõ `git add .` hay `git commit`, Git cũng sẽ **không** đẩy file map nặng lên GitHub, giúp repo của bạn luôn nhẹ nhàng và an toàn!