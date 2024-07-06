<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>すずめ雀 計算機</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</head>

<body>
    <div class="mt-5 container">
        <h1 class="text-center">すずめ雀 計算機</h1>
            <div class="row mt-3">
                <div class="col">
                    <input class="col form-control" type="text" name="player1" id="player1" placeholder="プレイヤー１の名前を入力">
                </div>
                <div class="col-auto">
                    <input class="btn btn-outline-secondary" id="register1" type="button" value="登録">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <input class="col form-control" type="text" name="player2" id="player2" placeholder="プレイヤー２の名前を入力">
                </div>
                <div class="col-auto">
                    <input class="btn btn-outline-secondary" id="register2" type="button" value="登録">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <input class="col form-control" type="text" name="player3" id="player3" placeholder="プレイヤー３の名前を入力">
                </div>
                <div class="col-auto">
                    <input class="btn btn-outline-secondary" id="register3" type="button" value="登録">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <input class="col form-control" type="text" name="player4" id="player4" placeholder="プレイヤー４の名前を入力">
                </div>
                <div class="col-auto">
                    <input class="btn btn-outline-secondary" id="register4" type="button" value="登録">
                </div>
            </div>
            <div class="mt-3 text-center">
                <button id="btn-start" type="button" class="btn btn-secondary" disabled>スタート</button>
            </div>
        </div>
    <script src="./js/script.js"></script>
</body>

</html>