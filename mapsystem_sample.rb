# coding: shift_jis

#次回使用予定のマップシステム案

#DXRubyの読込
require 'dxruby'

#地名描画メソッドの読込
require_relative 'map_name'

#タイトル名
Window.caption = ("次回作用マップシステム案")

#マップ画像の読込
map = Image.new(640, 480, [0, 0, 0, 0])
map = Image.load("map.png")

#フォントサイズ
map_font = Font.new(32)
font = Font.new(26)

#マップ名変数
map_name = "出雲の国"
ap_name = ""

#マップ描画ループのFPS
Window.fps = 60

#マップ描画ループ
Window.loop do

	#マウスの位置を取得
	x = Input.mouse_x
	y = Input.mouse_y

	#マウス位置でマップ名を変更
	ap_name = map_name(x, y, ap_name)

	#マップの描画
	Window.draw(0, 0, map, 1)

	#地名(アクセスポイント)の◆描画
	Window.draw_font(120, 80, "◆", map_font, color: [0, 0, 0], z:2)	#日御碕灯台
	Window.draw_font(40, 180, "◆", map_font, color: [0, 0, 0], z:2)	#稲佐の浜
	Window.draw_font(160, 170, "◆", map_font, color: [0, 0, 0], z:2)	#出雲大社
	Window.draw_font(220, 230, "◆", map_font, color: [0, 0, 0], z:2)	#旧大社駅
	Window.draw_font(200, 380, "◆", map_font, color: [0, 0, 0], z:2)	#須佐神社
	Window.draw_font(350, 300, "◆", map_font, color: [0, 0, 0], z:2)	#立久恵峡

	#地名（アクセスポイント）の描画
	Window.draw_font(500, 200, ap_name, font, z:2)

	#マップ名描画
	Window.draw_font(500, 450, map_name, font, z:2)

	#エスケープキーでループを抜ける
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
