import 'package:financial_news/model/models.dart';

final List<News> listNews = [
  News(
    category: 'Business',
    headline:
        'Digital banking evolution - why you need to be looking further than tomorrow',
    readMinutes: 4,
    images: [],
  ),
  News(
    category: 'Policy',
    headline:
        '5 reasons why your business needs to modernize its payment solutions',
    readMinutes: 8,
    images: [
      NewsImage(
        imagePath: 'assets/images/woman_2.jpg',
        type: 'landscape',
      ),
    ],
  ),
  News(
    category: 'Banking',
    headline: 'Navigating the uncertain future of branch banking',
    readMinutes: 2,
    images: [
      NewsImage(
        imagePath: 'assets/images/dollar.jpg',
        type: 'landscape',
      ),
    ],
  ),
  News(
    category: 'Ask',
    headline:
        'Ask a Banker - How not to fail at and improve the customer experience',
    readMinutes: 7,
    isFinancialNews: true,
    images: [
      NewsImage(
        imagePath: 'assets/images/woman_1_test.jpg',
        type: 'portrait',
      ),
    ],
    detailsText:
        'It has hever been clearer that financial institutions cant afford to fall short on customer experience, according to research from Accentre. In a recent report, title "Back Office, It is Time to Meet the Customers," Accenture revealed that Norh American banks currnetly view customer',
  ),
  News(
    category: 'Technology',
    headline: 'Navigating the uncertain future of branch banking',
    readMinutes: 2,
    isFinancialNews: true,
    images: [
      NewsImage(
        imagePath: 'assets/images/dollar.jpg',
        type: 'portrait',
      ),
    ],
  ),
];
