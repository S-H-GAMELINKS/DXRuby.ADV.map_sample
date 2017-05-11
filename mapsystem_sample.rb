# coding: shift_jis

#次回使用予定のマップシステム案

#DXRubyの読込
require 'dxruby'

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

#マップ描画ループ
Window.loop do

	#マウスの位置を取得
	x = Input.mouse_x
	y = Input.mouse_y

	#マップの描画
	Window.draw(0, 0, map, 1)

	#地名(アクセスポイント)の◆描画
	Window.draw_font(100, 200, "◆", map_font, z:2)
	Window.draw_font(150, 100, "◆", map_font, z:2)
	Window.draw_font(180, 240, "◆", map_font, z:2)
	Window.draw_font(240, 340, "◆", map_font, z:2)
	Window.draw_font(350, 300, "◆", map_font, z:2)
	Window.draw_font(250, 220, "◆", map_font, z:2)

	#地名（アクセスポイント）の描画
	Window.draw_font(500, 200, ap_name, font, z:2)

	#マップ名描画
	Window.draw_font(500, 450, map_name, font, z:2)

	#マウスの位置によりマップ名を変更
	if x >= 70 && x <= 100 &&  y >= 170 && y <= 200 then
		ap_name = "稲佐の浜"
	end

	if  x >= 120 && x <= 150 &&  y >= 70 && y <= 100 then
		ap_name = "出雲大社"
	end

	if  x >= 150 && x <= 180 && y >= 210 && y <= 240 then
		ap_name = "日御碕灯台"
	end

	if  x >= 210 && x <= 240 && y >= 310 && y <= 340 then
		ap_name = "須佐神社"
	end

	if  x >= 320 && x <= 350 && y >= 270 && y <= 300 then
		ap_name = "立久恵峡"
	end

	if  x >= 220 && x <= 250 && y >= 190 && y <= 220 then
		ap_name = "旧大社駅"
	end

	#エスケープキーでループを抜ける
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
