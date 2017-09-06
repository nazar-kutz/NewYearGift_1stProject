<%@ page import="static view.StrGlobalConstants.CANDIES_CATALOQUE" %>
<%@ page import="static view.StrGlobalConstants.CATALOQUE" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 21.08.2017
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=CANDIES_CATALOQUE%></title>
    <link rel="stylesheet" type="text/css" href="index_style.css">
</head>
<body>
<h1 align="center"><%=CATALOQUE%></h1>
<hr size="1" color="red" width="50%">
<table cellpadding="10px" class="tableCatalogue" align="center">
    <tr>
        <td><img src="src/img/c1.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Корівка</span>

                Неглазуровані помадні цукерки, корпус
                - молочна помадка із цукровою скоринкою.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Корівка">
                <input type="hidden" name="weight" value="15">
                <input type="hidden" name="sugar" value="40">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c2.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Шоколапка</span>

                Тофі з подрібненим арахісом в шоколадній
                глазурі.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Шоколапка">
                <input type="hidden" name="weight" value="12">
                <input type="hidden" name="sugar" value="22">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c3.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Roshen De Luxe бісквіт з желе</span>

                Цукерки багатошарові з бісквітом та желе у
                шоколадній глазурі.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="De Luxe">
                <input type="hidden" name="weight" value="14">
                <input type="hidden" name="sugar" value="28">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c4.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Candy Nut карамель з арахісом</span>

                Ідеальне поєднання ніжної карамелі, шоколаду,
                нуги та смаженого арахісу.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Candy Nut">
                <input type="hidden" name="weight" value="30">
                <input type="hidden" name="sugar" value="27">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c5.png" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Ko-Ko Choko White</span>

                Цукерки у білому шоколаді з подвійною начинкою:
                ніжна кремова оболонка та вишукана начинка з
                нотками ванілі.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Ko-Ko Choko">
                <input type="hidden" name="weight" value="7">
                <input type="hidden" name="sugar" value="26">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c6.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Monblan</span>

                Вкрита шоколадом композиція із праліне,
                подрібнених горіхів та ніжного крему.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Monblan">
                <input type="hidden" name="weight" value="30">
                <input type="hidden" name="sugar" value="28">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c7.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Сливки-Ленивки</span>

                Глазуровані екстрамолочною шоколадною глазур'ю
                вафельні цукерки з молочно-вершковою начинкою.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Сливки-Ленивки">
                <input type="hidden" name="weight" value="70">
                <input type="hidden" name="sugar" value="29">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c8.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Konafetto</span>

                Глазуровані шоколадною глазур’ю цукерки,
                корпус – вафельна трубочка з кремовою
                молочно-горіховою начинкою всередені.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Konafetto">
                <input type="hidden" name="weight" value="15">
                <input type="hidden" name="sugar" value="34">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c9.png" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Amour Capuchino</span>

                Цукерки в формі сфери, що складаються з
                хрусткого кранча в ніжній кремовій начинці
                зі смаком капучино покритої тонким шаром
                хрусткої карамелі і глазурована шоколадною
                глазур'ю
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Amour Capuchino">
                <input type="hidden" name="weight" value="30">
                <input type="hidden" name="sugar" value="36">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c10.png" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Conti tofitta</span>

                Глазуровані цукерки з ніжного тофі із
                желейною начинкою з ароматом текіли
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="Conti tofitta">
                <input type="hidden" name="weight" value="26">
                <input type="hidden" name="sugar" value="32">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c11.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">ШІ "Джек"</span>

                Укрупнені глазуровані цукерки з насиченим
                смаком какао
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="CANDY">
                <input type="hidden" name="name" value="ШІ Джек">
                <input type="hidden" name="weight" value="45">
                <input type="hidden" name="sugar" value="32">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c12.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Супер Контік</span>

                Два печива з шоколадно-ванільним смаком,
                з'єднані ніжною кремовою начинкою з ароматом
                ванілі та покриті шоколадно-молочною глазур'ю.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="OTHER">
                <input type="hidden" name="name" value="Супер Контік">
                <input type="hidden" name="weight" value="50">
                <input type="hidden" name="sugar" value="29">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c13.jpg" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Хрум лісовий</span>

                хрустка чудова вафелька з повітряною
                горіховою начинкою, вкрита справжнім
                молочним шоколадом
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="OTHER">
                <input type="hidden" name="name" value="Хрум лісовий">
                <input type="hidden" name="weight" value="70">
                <input type="hidden" name="sugar" value="34">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>

    <tr>
        <td><img src="src/img/c14.png" class="candies"></td>
        <td>
            <p>
                <span class="candyName">Хрум кокос</span>

                хрустка чудова вафелька з повітряною
                кокосовою начинкою, вкрита справжнім
                білим шоколадом.
            </p>
        </td>
        <td>
            <form action="user process" method="get">
                <input type="hidden" name="type" value="OTHER">
                <input type="hidden" name="name" value="Хрум кокос">
                <input type="hidden" name="weight" value="70">
                <input type="hidden" name="sugar" value="34">
                <input type="submit" value="додати">
            </form>
        </td>
    </tr>
</table>
</body>
</html>
