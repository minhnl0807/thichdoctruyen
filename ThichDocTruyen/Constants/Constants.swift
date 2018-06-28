//
//  Constants.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

struct Constants {
    /* Screen Size Key */
    static let WIDTH_OF_SCREEN  = UIScreen.main.bounds.width
    static let HEIGHT_OF_SCREEN = UIScreen.main.bounds.height
}

struct Config {
    static let NUMBER_STORY_PER_ROW = 8
}

/* Demo */
let isHashCode: Bool = true

let urlImageDemo: [String]  = ["http://images.amazon.com/images/P/B00006HAYG.01.LZZZZZZZ.jpg",
                               "http://t2.gstatic.com/images?q=tbn:ANd9GcT3NmcjhaWEKAW80Yo8KtPBve1yOZ51PgHDXgu1Hl0DT19W5EPRiw",
                               "https://myanimelist.cdn-dena.com/images/anime/8/20483.jpg",
                               "https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY268_CR0,0,182,268_AL_.jpg",
                               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFdTu5q1GgBPzibZv8muOdIiZ4QLFM11DkOTKAgxr49vNX8n4t",
                               "https://m.media-amazon.com/images/M/MV5BZWM3NjJhMGMtN2Y3OC00NDhjLThmMGYtZTQ0ZmY3OWI1YmI2XkEyXkFqcGdeQXVyMzExMzk5MTQ@._V1_UY268_CR6,0,182,268_AL_.jpg",
                               "http://s2phim.net/images/aHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy1fd1BncElNNXZDMC9WZkF2d0IyRzR3SS9BQUFBQUFBQUFHNC90aGZxSDBQallmWS9zMC9kZXRlY3RpdmUtY29uYW4tbW92aWUtNy1wb3N0ZXIuanBn/tham-tu-lung-danh-conan-me-cung-trong-thanh-pho-co-250x375-poster.jpg",
                               "https://myanimelist.cdn-dena.com/images/anime/12/76049.jpg",
                               "https://upload.wikimedia.org/wikipedia/en/7/7f/Slam_dunk_dvd.jpg",
                               "https://img1.ak.crunchyroll.com/i/spire2/b68ad846fe77e6db85526f2ab610cebc1452736966_full.jpg",
                               "https://myanimelist.cdn-dena.com/images/anime/3/40451.jpg",
                               "https://m.media-amazon.com/images/M/MV5BODkzMjhjYTQtYmQyOS00NmZlLTg3Y2UtYjkzN2JkNmRjY2FhXkEyXkFqcGdeQXVyNTM4MDQ5MDc@._V1_UY268_CR1,0,182,268_AL_.jpg",
                               "https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Dragon_Ball_Super_Key_visual.jpg/220px-Dragon_Ball_Super_Key_visual.jpg",
                               "http://image.phimmoi.net/film/665/poster.medium.jpg",
                               "https://vignette.wikia.nocookie.net/fma/images/e/e9/Fmab-poster.png/revision/latest?cb=20131124145205",
                               "https://i.pinimg.com/originals/86/75/0d/86750d03cc57b0253862ede8b44ab21e.jpg"]
let authorDemo: [String]    = ["Masakatsu Iijima",
                               "Takahiro Yamato",
                               "Rumiko Takahashi",
                               "Masashi Kishimoto",
                               "Masashi Kishimoto",
                               "Hajime Isayama",
                               "Gosho Aoyama",
                               "One",
                               "Takehiko Inoue",
                               "Mashima Hiro",
                               "Kurosaki Ichigo",
                               "Ohba Tsugumi, Obata Takeshi",
                               "Akira Toriyama",
                               "Eiichiro Oda",
                               "Arakawa Hiromu",
                               "Fujiko F. Fujio"]
let nameDemo: [String]      = ["Yu Yu Hakusho",
                               "Kaze No Stigma",
                               "Inuyasha",
                               "Naruto Shippuuden",
                               "Boruto: Naruto Thế Hệ Kế Tiếp",
                               "Đại Chiến Titan 1 (Attack On Titan 1)",
                               "Thám Tử Lừng Danh Conan Phần 1",
                               "One Punch Man",
                               "Slam Dunk",
                               "Hội Pháp Sư 1 (Fairy Tail 1)",
                               "Sứ Mạng Thần Chết (Bleach)",
                               "Cuốn Sổ Tử Thần (Death Note)",
                               "7 Viên Ngọc Rồng (Dragon Ball)",
                               "Đảo Hải Tặc (One Piece)",
                               "Giả Kim Thuật Sư (Fullmetal Alchemist)",
                               "Chú Mèo Máy Thần Kỳ Doraemon"]
let introDemo: [String]     = ["Yu Yu Hakusho is a Japanese manga series written and illustrated by Yoshihiro Togashi. The series tells the story of    Yusuke Urameshi, a teenage delinquent who is struck and killed by a car while attempting to save a child's life.",
                               "Kazuma Kannagi bị coi là một kẻ vô dụng trong gia đình vì không thể lĩnh hội được Enjutsu, một khả năng điều khiển lửa. Sau khi thất bại trước Ayano Kannagi, một người cùng dòng họ trong buổi lễ chọn người thừa kế Enraiha, thanh kiếm được sử dụng bởi người đứng đầu gia đình, Kazuma đã bị đuổi đi. 4 năm sau đó, anh trở lại, giờ Kazuma đã lĩnh hội được Fūjutsu một khả năng có thể điều khiển gió. Không lâu sau khi trở về, anh đã gặp được Ayano và cậu em Ren, người cũng có năng khiếu bẩm sinh về Enjutsu. Tuy nhiên cùng lúc đó, vài thành viên của gia đình Kannagi đã bị giết bởi một kẻ lạ mặt cũng sử dụng Fūjutsu. Giờ đây Kazuma sẽ phải chiến đấu với chính gia đình mình để chứng minh anh ta không phải kẻ giết người.",
                               "Inuyasha - Khuyển Dạ Xoa thuộc thể loại phiêu lưu hành động xen lẫn yếu tố lãng mạn, được chấp bút bởi Rumiko Takahashi. Câu chuyện bắt đầu khi một bán yêu Khuyển Dạ Xoa (Inu Yasha) tấn công một ngôi làng để cướp viên ngọc Tứ Hồn (Shikon no Tama), một bảo bối có thể dùng để làm tăng sức mạnh của anh. Tuy nhiên, Cát Cánh (Kikyo), một nữ pháp sư (miko) kịp thời ngăn anh lại và dùng mũi tên thanh tẩy của cô phong ấn Khuyển Dạ Xoa vào gốc cây cổ thụ thần thánh trong làng. Tuy nhiên vì bị thương quá nặng, biết mình không qua khỏi, Cát Cánh đã yêu cầu em gái mình là A Phụng (Kaede) thiêu xác của cô cùng với viên ngọc Tứ Hồn để cho nó không rơi vào tay kẻ xấu. Trong lúc đó, ở thế giới hiện tại 550 năm sau, Nhật Mộ Li (Higurashi Kagome) đang mừng lễ sinh nhật thứ mười lăm của mình....",
                               "Naruto Shippuuden là một tác phẩm của Kishimoto Masashi. Nó cũng nói về Naruto, nhưng là 2 năm sau,sau khi cậu bé cùng sư phụ Jiraiya của mình đi tập luyện xa trở về làng Lá. Người đầu tiên cậu bé gặp chính là Sakura, cô bạn đã từng cùng trong nhóm Kakashi của cậu. Cô bé Haruno Sakura này cũng đã có khá nhiều thay đổi và đã là một ninja y thuật cực kì..bạo lực. Sakura tin là Naruto đã trưởng thành hơn rất nhiều. Naruto và Sakura vẫn quyết tâm tìm bằng được người đồng đội Sasuke của mình. Và một người thuộc ám bộ Kon đã được cử đến để thế chỗ Sasuke, làm nhóm Kakashi có thể tiếp tục thi hành nhiệm vụ. Cậu này tên là Sai. Thoạt đầu rất vô tình nhưng sau đó đã được tình cảm của Naruto và Sakura dành cho Sasuke cảm hóa,đồng hành với hai người bạn này...",
                               "Anime Boruto được chuyển thể từ bộ truyện cùng tên được sáng tác bởi hai tác giả Ukyō Kodachi và Mikie Ikemoto. Bộ truyện lần đầu tiên được ra mắt trên Weekly Shonen Jump vào ngày 9 tháng 5 năm 2016. Nội dung của bộ truyện là phần tiếp theo dựa trên nội dung bộ truyện gốc của Masashi Kishimoto, kể về thời đại của Boruto, con trai của Hokage đệ thất Naruto.",
                               "Hàng trăm năm về trước, loài người gần như bị diệt vong bởi Titan - một sinh vật khổng lồ, không có trí thông minh, và tồi tệ nhất là, dường như chúng ăn tươi nuốt sống con người chỉ vì niềm vui chứ không phải vì nhu cầu sinh tồn. Số ít nhân loại còn sống sót đã tự bảo vệ mình bằng cách nhốt mình trong những bức tường khổng lồ, cao hơn cả những Titan to lớn nhất. Một trăm năm yên ổn trôi qua...\n Nhưng đến một ngày, Titan khổng lồ cao hơn cả bức tường xuất hiện. Chỉ bằng một cú đá, gã đã phá hủy một góc tường thành. Mọi thứ diễn ra quá chóng vánh và bất ngờ, chỉ trong phút chốc Titan đã tràn vào san phẳng mọi thứ và ngấu nghiến bất cứ ai chúng bắt được trước sự kinh hoàng tột độ của người dân nơi đây...",
                               "Thám Tử Lừng Danh Phần 1 (Thuyết Minh) - Detective Conan Mở đầu câu truyện, cậu học sinh trung học 17 tuổi Shinichi Kudo bị biến thành cậu bé Conan Edogawa. Shinichi trong phần đầu của Thám tử lừng danh Conan được miêu tả là một thám tử học đường xuất sắc. Trong một lần đi chơi công viên \"Miền Nhiệt đới\" với cô bạn từ thuở nhỏ Ran Mori, cậu tình cờ chứng kiến vụ một án giết người, Kishida - một hành khách trong trò chơi Chuyến tàu tốc hành đã bị giết một cách dã man. Cậu đã giúp cảnh sát làm sáng tỏ vụ án. Trên đường về nhà, cậu vô tình phát hiện một vụ làm ăn mờ ám của những người đàn ông mặc toàn đồ đen. Khi chúng phát hiện ra cậu, Shinichi đã bị đánh ngất đi. Sau đó những người đàn ông áo đen đó đã cho cậu uống một thứ thuốc độc chưa qua thử nghiệm là Apotoxin-4869 (APTX 4869) với mục đích thủ tiêu cậu. Tuy nhiên chất độc đã không giết chết Kudo. Khi tỉnh lại, cậu bàng hoàng nhận thấy mình đã bị teo nhỏ lại thành hình dạng của một cậu học sinh tiểu học.",
                               "Câu chuyện diễn ra tại thành phố Z Nhưng cũng chính tại đây xuất hiện 1 siêu anh hùng đấm phát chết luôn, có thể dễ dàng đánh bại và tiêu diệt những con quái vật này. Cũng chính vì tài năng hiếm có này mà có rất nhiều nghi ngại về khả năng thực sự của vị siêu anh hùng, thậm chí anh không bao giờ nhận được bất kỳ lòng tin nào từ dân chúng. của Nhật Bản tại thời điểm thế giới đầy những quái vật bí ẩn với sức mạnh ghê gớm đã xuất hiện và gây ra biết bao nhiêu thảm họa.",
                               "Slam Dunk là câu chuyện xoay quanh nhân vật Hanamichi Sakuragi, vốn là học sinh cá biệt, cầm đầu một băng nhóm chuyên gây sự. Hanamichi từng tỏ tình và bị từ chối 50 lần khi còn học cấp 2. Lên trung học, Cậu ta gặp Haruko Akagi, cô gái trong mơ, và rất hạnh phúc khi cô không hề sợ cậu như những cô gái khác.",
                               "Fairy Tail (Hội Pháp Sư) là cuộc phiêu lưu của một Sorceress tên là Lucy Heartphilia - 1 cô gái 17 tuổi ước mơ trở thành một pháp sư đầy quyền lực và được tham gia vào bang hội Fairy Tail, nơi tập trung đầy pháp sư tài giỏi. Trên đường phiêu lưu thực hiện ước mơ, Lucy tình cờ gặp được một bộ đôi quái gở - Natsu và Happy, đang trên đường tìm kiếm Hỏa Long Igneel - tại Thị trấn Hargeon khi cô mắc phải bẫy của tên tự xưng là Salamander (Hỏa Long) của Fairy Tail. Thân phận thật sự của Natsu chính là ai? Liệu hành trình phiêu lưu của đội pháp sư quái gở sẽ đi đến đâu?",
                               "Bleach là một chuỗi hành trình về Ichigo Kurosaki, một học sinh cấp ba với khả năng nhìn thấy linh hồn và một Shinigami (thần chết) tên là Rukia Kuchiki. Cuộc sống của anh thay đổi nhanh chóng bởi sự xuất hiện đột ngột của một Shinigami điều chỉnh dòng chảy của linh hồn giữa thế giới con người và thế giới bên kia. Khi Rukia bị thương nặng vì bảo vệ Ichigo khỏi Hollow, cô cố gắng chuyển một nửa Linh lực của mình cho Ichigo để anh có thể đánh bại Hollow. Thế là cuộc hành trình của Ichigo và Rukia bắt đầu từ đây. Họ đã cùng nhau tiêu diệt nhiều ác ma và thực hiện nhiều cuộc an táng cho nhiều linh hồn bướng bỉnh, giải trừ linh hồn họ và đem họ đến một nơi gọi là Soul Society (Cõi Âm).",
                               "Light Yagami, một sinh viên thiên tài vô tình có được cuốn sổ Death Note, đã sử dụng Death Note làm công cụ để xây dựng một thế giới tốt đẹp hơn bằng cách giết tất cả các tội phạm, làm giảm tỉ lệ phạm tội trong xã hội. Với hành động đó, Light được cảnh sát và dân chúng gọi là Kira - muốn xây dựng một thế giới trong sạch và tốt đẹp trong tương lai gần. L, một thám tử thiên tài luôn ẩn mặt xử trí nhiều vụ án mà cảnh sát bó tay, không chấp nhận việc Kira giết người hàng loạt như vậy, đã quyết tâm bắt Kira để trừng trị trước pháp luật. Kira và L, cả hai đều thông minh, đều tin rằng mình chính là sứ giả của công lý. Ai sẽ là người dành chiến thắng trong cuộc đấu trí này? Ai là thiện? Ai là ác?",
                               "Dragon Ball Z nối tiếp câu chuyện của Dragon Ball, lúc này SonGoku đã có một người con tên là Gohan ẩn chứa một sức mạnh vô cùng khủng khiếp. Cuộc sống trên trái đất đang yên bình và rất tươi đẹp, cho đến một ngày tên Radich - người của hành tinh Saiya đến, hắn đã phá hủy mọi thứ và giết rất nhiều người. Và cũng từ đây Goku mới biết sự thật về thân thế của mình. Trước tình hình đó Goku và Piccolo đã hợp sức lại tiêu diệt tên Saiya, nhưng không may là Goku cũng phải chết theo tên Saiya đó. Biết được điều này, Piccolo đã luyện võ công cho Gohan. Goku thì tích cực khổ công tập luyện với Thần Vũ Trụ chờ cho đến khi những người bạn của mình tìm được ngọc rồng và hồi sinh cho anh, để anh có thể tiếp tục bảo về nhân loại. Liệu họ có thành công trong cuộc chiến đấu với quái vật Cell và Ma Bưu nguy hiểm này hay không?",
                               "Phim Đảo Hải Tặc - One Piece là chuyện về cậu bé Monkey D. Luffy do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết bơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để thành một băng hải tặc, biệt hiệu Hải tặc Mũ Rơm.\n Khi đó của phiêu lưu tìm kiếm kho báu One Piece bắt đầu. Trong cuộc phiêu lưu tìm kiếm One Piece, băng Hải tặc mũ rơm phải chiến đấu với nhiều băng hải tặc xấu khác cũng muốn độc chiếm One Piece và Hải quân của Chính phủ muốn diệt trừ hải tặc. Băng Hải tặc Mũ Rơm phải trải qua biết bao nhiêu khó khăn, không lùi bước với ước mơ \"Trở thành Vua Hải Tặc và chiếm được kho báu One Piece\".",
                               "Muốn đạt được thứ gì phải đưa ra một thứ gì khác có giá trị tương đương. Đó là quy tắc cơ bản nhất mà mọi nhà giả kim đều ghi nhớ và thấu hiểu. Thế nhưng, Edward Elric và Alphonse Elric đã bỏ qua quy luật ấy, cố gắng dùng thuật giả kim đưa người mẹ đã chết trở về với trần gian. Hậu quả, Ed mất đi chân trái, Al mất toàn bộ cơ thể, vì vậy Ed chịu hi sinh thêm cánh tay phải để trao đổi lấy linh hồn Alphonse và gắn nó vào một bộ áo giáp. Từ đó hai anh em nhà Elric lên đường tìm kiếm Hòn Đá Triết Gia trong truyền thuyết với mong muốn phục hồi cơ thể. Thế nhưng càng đi sâu tìm hiểu, hai người lại càng phát hiện ra nhiều bí mật kinh khủng về bảo vật mà mọi nhà giả kim khao khát ấy...",
                               "Các câu chuyện trong Doraemon thường có một công thức chung, đó là xoay quanh những rắc rối hay xảy ra với cậu bé Nobita học lớp bốn, nhân vật chính thứ nhì của bộ truyện. Doraemon có một chiếc túi thần kỳ trước bụng với đủ loại bảo bối của tương lai. Cốt truyện thường gặp nhất sẽ là Nobita trở về nhà khóc lóc với những rắc rối mà cậu gặp phải ở trường hoặc với bạn bè. Sau khi bị cậu bé van nài hoặc thúc giục, Doraemon sẽ đưa ra một bảo bối giúp Nobita giải quyết những rắc rối của mình, hoặc là để trả đũa hay khoe khoang với bạn bè của cậu. Nobita sẽ lại thường đi quá xa so với dự định ban đầu của Doraemon, thậm chí với những bảo bối mới cậu còn gặp rắc rối lớn hơn trước đó. Đôi khi những người bạn của Nobita, thường là Suneo (Xêkô) hoặc Jaian (Chaien) lại lấy trộm những bảo bối và sử dụng chúng không đúng mục đích. Tuy nhiên thường thì ở cuối mỗi câu chuyện, những ai sử dụng sai mục đích bảo bối sẽ phải chịu hậu quả do mình gây ra, và người đọc sẽ rút ra được bài học từ đó."]
let categoriesDemo: [String] = ["Hành động",
                               "Trinh thám",
                               "Hài hước",
                               "Lãng mạn",
                               "Viễn tưởng",
                               "Võ thuật"]
/* Splash Image */
let splashImages: [UIImage] = [R.image.bg_left()!, R.image.splash()!, R.image.splash2()!]
let bannerImages: [UIImage] = [R.image.banner()!, R.image.banner2()!, R.image.banner3()!, R.image.banner4()!]
