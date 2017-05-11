# coding: shift_jis

#����g�p�\��̃}�b�v�V�X�e����

#DXRuby�̓Ǎ�
require 'dxruby'

#�^�C�g����
Window.caption = ("�����p�}�b�v�V�X�e����")

#�}�b�v�摜�̓Ǎ�
map = Image.new(640, 480, [0, 0, 0, 0])
map = Image.load("map.png")

#�t�H���g�T�C�Y
map_font = Font.new(32)
font = Font.new(26)

#�}�b�v���ϐ�
map_name = "�o�_�̍�"
ap_name = ""

#�}�b�v�`�惋�[�v
Window.loop do

	#�}�E�X�̈ʒu���擾
	x = Input.mouse_x
	y = Input.mouse_y

	#�}�b�v�̕`��
	Window.draw(0, 0, map, 1)

	#�n��(�A�N�Z�X�|�C���g)�́��`��
	Window.draw_font(100, 200, "��", map_font, z:2)
	Window.draw_font(150, 100, "��", map_font, z:2)
	Window.draw_font(180, 240, "��", map_font, z:2)
	Window.draw_font(240, 340, "��", map_font, z:2)
	Window.draw_font(350, 300, "��", map_font, z:2)
	Window.draw_font(250, 220, "��", map_font, z:2)

	#�n���i�A�N�Z�X�|�C���g�j�̕`��
	Window.draw_font(500, 200, ap_name, font, z:2)

	#�}�b�v���`��
	Window.draw_font(500, 450, map_name, font, z:2)

	#�}�E�X�̈ʒu�ɂ��}�b�v����ύX
	if x >= 70 && x <= 100 &&  y >= 170 && y <= 200 then
		ap_name = "��̕l"
	end

	if  x >= 120 && x <= 150 &&  y >= 70 && y <= 100 then
		ap_name = "�o�_���"
	end

	if  x >= 150 && x <= 180 && y >= 210 && y <= 240 then
		ap_name = "����ꓔ��"
	end

	if  x >= 210 && x <= 240 && y >= 310 && y <= 340 then
		ap_name = "�{���_��"
	end

	if  x >= 320 && x <= 350 && y >= 270 && y <= 300 then
		ap_name = "���v�b��"
	end

	if  x >= 220 && x <= 250 && y >= 190 && y <= 220 then
		ap_name = "����Љw"
	end

	#�G�X�P�[�v�L�[�Ń��[�v�𔲂���
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
