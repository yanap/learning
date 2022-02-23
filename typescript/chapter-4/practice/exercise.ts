/*
3. すぐに出発する旅行を予約する機能が欲しいとします。オーバーロードされたreserve関数
(「4.1.9 オーバーロードされた関数の型」を参照)を、３番目の呼び出しシグネチャを作成して書き換えてください。
このシグネチャは、目的地(destination)だけを取り、明示的な出発日(from)は取りません
*/

type Reservation = unknown

type Reserve = {
    (from: Date, to: Date, destination: string): Reservation
    (from: Date, destination: string): Reservation
    (destination: string): Reservation
}

let reserve: Reserve = (
    fromOrDestination: Date | string,
    toOrDestination?: Date | string,
    destination?: string
) => {
    if (
        fromOrDestination instanceof Date &&
        toOrDestination instanceof Date &&
        destination !== undefined
    ) {
        // 宿泊予約をする
    } else if (
        fromOrDestination instanceof Date &&
        typeof toOrDestination === 'string'
    ) {
        // 日帰り旅行を予約する
    } else if (typeof fromOrDestination === 'string') {
        // すぐに出発する旅行を予約する
    }
}
