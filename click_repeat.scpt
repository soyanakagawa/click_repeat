-------一回のAPI制限までで何回クリックするか
set theLimitTime to 1500 as number
-------何回ループするか
set loopTime to 13 as number
-------ループの間隔
set interval to 1200 as number

------おまじない
tell application "System Events"
  launch
  activate
end tell
--------この秒数の間にマウスをクリックしたい場所に移動します


tell application "Google Chrome"
  activate
  tell window 1
    tell active tab
      repeat loopTime times
        ------------クリック回数カウント初期化
        set theRepeatCnt to 0 as number
        delay 10 
        repeat while theRepeatCnt < theLimitTime
          tell application "System Events"
            delay 0.05 
            tell process "Google Chrome"
              keystroke 5
            end tell
            if theRepeatCnt = theLimitTime then exit repeat
            set theRepeatCnt to theRepeatCnt + 1
            log theRepeatCnt
            delay 0.05
          end tell
        end repeat
        ------API制限解除の待ち時間
        delay interval 
        reload
      end repeat
    end tell
  end tell
end tell
