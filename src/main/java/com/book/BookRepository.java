package com.book;

import java.util.ArrayList;

public class BookRepository {
    private static BookRepository instance; // Singleton 인스턴스를 저장할 변수
    private ArrayList<Book> listOfBooks; // 책 목록을 저장하는 리스트
    
    // Singleton 인스턴스를 반환하는 메서드
    public static synchronized BookRepository getInstance() {
        if (instance == null) { // 인스턴스가 없으면 새로 생성
            instance = new BookRepository();
        }
        return instance; // 기존 인스턴스를 반환
    }
    
    public BookRepository() {
        listOfBooks = new ArrayList<>(); // 책 목록 초기화
        initializeBooks(); // 초기 책 데이터 설정
    }

    // 초기 책 데이터를 설정하는 메서드
    private void initializeBooks() {
        // 첫 번째 책
        Book book1 = new Book("ISBN1234", "C# 프로그래밍", 27000);
        book1.setAuthor("우재남");
        book1.setDescription(
                "C#을 처음 접하는 독자를 대상으로 일대일 수업처럼 자세히 설명한 책이다. 꼭 알아야 할 핵심 개념은 기본 예제로 최대한 쉽게 설명했으며, 중요한 내용은 응용 예제, 퀴즈, 셀프 스터디, 예제 모음으로 한번 더 복습할 수 있다.");
        book1.setPublisher("한빛아카데미");
        book1.setCategory("IT모바일");
        book1.setUnitsInStock(1000);
        book1.setReleaseDate("2022/10/06");
        book1.setFilename("ISBN1234.jpg");

        // 두 번째 책
        Book book2 = new Book("ISBN1235", "자바 마스터", 30000);
        book2.setAuthor("송미영");
        book2.setDescription(
                "자바를 처음 배우는 학생을 위해 자바의 기본 개념과 실습 예제를 그림을 이용하여 쉽게 설명합니다. 자바의 이론적 개념, 기본 예제, 프로젝트 순으로 단계별 학습이 가능하며, 각 챕터의 프로젝트를 실습하면서 온라인 서점을 완성할 수 있도록 구성하였습니다.");
        book2.setPublisher("한빛아카데미");
        book2.setCategory("IT모바일");
        book2.setUnitsInStock(1000);
        book2.setReleaseDate("2023/01/01");
        book2.setFilename("ISBN1235.jpg");

        // 세 번째 책
        Book book3 = new Book("ISBN1236", "파이썬 프로그래밍", 30000);
        book3.setAuthor("최성철");
        book3.setDescription(
                "파이썬으로 프로그래밍을 시작하는 입문자가 쉽게 이해할 수 있도록 기본 개념을 상세하게 설명하며, 다양한 예제를 제시합니다. 또한 프로그래밍의 기초 원리를 이해하면서 파이썬으로 데이터를 처리하는 기법도 배웁니다.");
        book3.setPublisher("한빛아카데미");
        book3.setCategory("IT모바일");
        book3.setUnitsInStock(1000);
        book3.setReleaseDate("2023/01/01");
        book3.setFilename("ISBN1236.jpg");

        // 네 번째 책
        Book book4 = new Book("ISBN1237", "JSP웹프로그래밍", 30000);
        book4.setAuthor("송미영");
        book4.setDescription(
            "JSP로 웹프로그래밍을 시작하는 입문자가 쉽게 이해할 수 있도록 기본 개념을 상세하게 설명하며, 다양한 예제를 제시합니다. 또한 서버프로그래밍의 원리를 이해하면서 SQL로 데이터를 처리하는 기법도 배웁니다.");
        book4.setPublisher("한빛아카데미");
        book4.setCategory("IT모바일");
        book4.setUnitsInStock(1000);
        book4.setReleaseDate("2024/10/03");
        book4.setFilename("ISBN1237.jpg");
        
        // 리스트에 책 추가
        listOfBooks.add(book1);
        listOfBooks.add(book2);
        listOfBooks.add(book3);
        listOfBooks.add(book4);
    }

    // 책 ID로 책을 검색하는 메서드
    public Book getBookById(String bookId) {
        for (Book book : listOfBooks) {
            if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
                return book; // 일치하는 책을 찾으면 반환
            }
        }
        return null; // 일치하는 책이 없으면 null 반환
    }

    // 모든 책 목록을 반환하는 메서드
    public ArrayList<Book> getAllBooks() {
        return new ArrayList<>(listOfBooks); // 원본 리스트를 보호하여 복사본 반환
    }

    // 새로운 책을 추가하는 메서드
    public void addBook(Book newBook) {
        listOfBooks.add(newBook); // 리스트에 새 책 추가
    }
}
