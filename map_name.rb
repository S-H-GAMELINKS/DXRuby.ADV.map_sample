# coding: shift_jis

#�}�b�v���`�惁�\�b�h
def map_name(x, y, ap_name)

	#�}�E�X�̈ʒu�ɂ��}�b�v����ύX
	if x >= 110 && x <= 130 &&  y >= 70 && y <= 90 then
		ap_name = "����ꓔ��"
	end

	if  x >= 30 && x <= 50 &&  y >= 170 && y <= 190 then
		ap_name = "��̕l"
	end

	if  x >= 150 && x <= 170 && y >= 160 && y <= 180 then
		ap_name = "�o�_���"
	end

	if  x >= 210 && x <= 230 && y >= 220 && y <= 240 then
		ap_name = "����Љw"
	end

	if  x >= 190 && x <= 210 && y >= 370 && y <= 400 then
		ap_name = "�{���_��"
	end

	if  x >= 340 && x <= 360 && y >= 290 && y <= 310 then
		ap_name = "���v�b��"
	end

	return ap_name
end