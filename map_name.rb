# coding: shift_jis

#マップ名描画メソッド
def map_name(x, y, ap_name)

	#マウスの位置によりマップ名を変更
	if x >= 110 && x <= 130 &&  y >= 70 && y <= 90 then
		ap_name = "日御碕灯台"
	end

	if  x >= 30 && x <= 50 &&  y >= 170 && y <= 190 then
		ap_name = "稲佐の浜"
	end

	if  x >= 150 && x <= 170 && y >= 160 && y <= 180 then
		ap_name = "出雲大社"
	end

	if  x >= 210 && x <= 230 && y >= 220 && y <= 240 then
		ap_name = "旧大社駅"
	end

	if  x >= 190 && x <= 210 && y >= 370 && y <= 400 then
		ap_name = "須佐神社"
	end

	if  x >= 340 && x <= 360 && y >= 290 && y <= 310 then
		ap_name = "立久恵峡"
	end

	return ap_name
end