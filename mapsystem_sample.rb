# coding: shift_jis

#次回使用予定のマップシステム案
#DXRubyの読込
require 'dxruby'

#タイトル名
Window.caption = ("次回作用マップシステム案")

#マップ画像の読込
map = Sprite.new(0, 0, Image.load( "map.png"))
ap1 = Sprite.new(120, 80, Image.load("ap.png"))
ap2 = Sprite.new(40, 180, Image.load("ap.png"))
ap3 = Sprite.new(160, 170, Image.load("ap.png"))
ap4 = Sprite.new(220, 230, Image.load("ap.png"))
ap5 = Sprite.new(200, 380, Image.load("ap.png"))
ap6 = Sprite.new(350, 300, Image.load("ap.png"))


#マウスの作成
mouse = Sprite.new(0, 0, Image.new(10, 10, C_WHITE))

#フォントサイズ
map_font = Font.new(32)
font = Font.new(26)

#マップ描画ループ
Window.loop do

	#マウスの位置を取得
	mouse.x, mouse.y = Input.mouse_x, Input.mouse_y

	#マップの描画
	map.draw

	#地名(アクセスポイント)の◆描画
	ap1.draw
	ap2.draw
	ap3.draw
	ap4.draw
	ap5.draw
	ap6.draw

	#各地名(アクセスポイント)にマウスが接触すると地名描画
	if mouse === ap1 then
		Window.draw_font(500, 200, "日御碕灯台", font, z:2)
	end

	if mouse === ap2 then
		Window.draw_font(500, 200, "稲佐の浜", font, z:2)
	end

	if mouse === ap3 then
		Window.draw_font(500, 200, "出雲大社", font, z:2)
	end

	if mouse === ap4 then
		Window.draw_font(500, 200, "旧大社駅", font, z:2)
	end

	if mouse === ap5 then
		Window.draw_font(500, 200, "須佐神社", font, z:2)
	end

	if mouse === ap6 then
		Window.draw_font(500, 200, "立久恵峡", font, z:2)
	end

	#地名（アクセスポイント）の描画
	Window.draw_font(500, 450, "出雲の国", font, z:2)

	#エスケープキーでループを抜ける
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
