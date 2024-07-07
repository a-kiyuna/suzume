// プレイヤーリスト
const players = {
    player1: null,
    player2: null,
    player3: null,
    player4: null,
}

/**
 * プレイヤーを登録する。
 * @param {Number} num 1～4のプレイヤー番号
 * @param {String} name プレイヤー名
 * @returns
 */
function registerPlayer(num, name) {
    // 1～4の範囲外なら何もしない
    if (num <= 0 || 5 <= num) {
        console.log('[DEBUG] num is out of range.')
        return;
    }

    // 名前が空白なら何もしない
    if (!name) {
        console.log('[DEBUG] name is undefined.')
        return;
    }

    // プレイヤーの初期データを登録
    players['player' + num] = { name: name, score: 0 }

    // 名前入力欄を無効化
    const input = document.getElementById('playerInput' + num)
    input.disabled = true

    // 入力内容保持用に、hidden項目にデータを格納
    const hidden = document.getElementById('player' + num)
    hidden.value = name

    // 「登録」ボタンを無効化
    const btnRegister = document.getElementById('register' + num)
    btnRegister.disabled = true

    if (isStartButtonAvailable()) {
        // ３人以上登録されていれば、スタートボタンを有効化
        const btnStart = document.getElementById('btn-start')
        btnStart.disabled = false

        console.log('[DEBUG] start button has been enabled.')
    }
}

/**
 * スタートボタンが押せる条件が揃っているかチェックする。
 * 条件は、３人以上プレイヤーが登録されていること。
 * @returns スタートボタンを押せるならtrue, そうでないならfalse。
 */
function isStartButtonAvailable() {
    // 登録されているプレイヤーの数を取得
    let count = 0;
    for (let i = 1; i <= 4; i++) {
        if (players['player' + i]) {
            count++
        }
    }

    // ３人以上ならtrue, そうでないならfalseを返す。
    return 3 <= count
}

/**
 * イベントリスナを登録する
 */
function registerListeners() {
    for (let i = 1; i <= 4; i++) {
        const input = document.getElementById('playerInput' + i)
        const btn = document.getElementById('register' + i)

        btn.onclick = () => registerPlayer(i, input.value)
    }
}

registerListeners()