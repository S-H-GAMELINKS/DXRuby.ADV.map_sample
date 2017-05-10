# coding: shift_jis

#次回使用予定のマップシステム案

#DXRubyの読込
require 'dxruby'

#タイトル名
Window.caption = ("次回作用マップシステム案")

#マップ画像の読込
map = Image.new(640, 480, [0, 0, 0, 0])
map = Image.load("map.png")

#マップ描画ループ
Window.loop do

#マウスの位置を取得
x = Input.mouse_x
y = Input.mouse_y

	#マップの描画
	Window.draw(0, 0, map, 1)

	#地名(アクセスポイント)の□描画
	

	#エスケープキーでループを抜ける
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
