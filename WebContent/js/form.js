/**
 * 全てのformタグに対して、"BUTTON_ID"の名前を持つhidden属性のinputタグを追加する。
 */
function registerHiddenField() {
    // 全てのformタグを取得
    const formList = document.querySelectorAll("form")

    for (const form of formList) {
        // inputタグを作成
        const field = document.createElement("input")
        field.type = "hidden"
        field.name = "BUTTON_ID"

        // 各formにinputタグを追加
        form.appendChild(field)
    }
}

/**
 * IDを持つ全てのボタンに対して、pushButtonをクリックイベントとして登録する。
 */
function registerClickListener() {
    // 全てのbuttonタグを取得
    const buttonList = document.querySelectorAll("input")

    for (const button of buttonList) {
        // submitタイプ以外は何もしない
        if (button.type != "submit") {
            continue;
        }

        // ボタンIDを取得
        const id = button.id

        if (id) {
            // IDが設定されていればクリックイベントを登録
            button.setAttribute("onClick", `this.form.BUTTON_ID.value='${id}';this.form.submit();`)
        }
    }
}

registerHiddenField()
registerClickListener()