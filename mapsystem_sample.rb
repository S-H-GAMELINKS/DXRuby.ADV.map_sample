# coding: shift_jis

#����g�p�\��̃}�b�v�V�X�e����
#DXRuby�̓Ǎ�
require 'dxruby'

#�^�C�g����
Window.caption = ("�����p�}�b�v�V�X�e����")

#�}�b�v�摜�̓Ǎ�
map = Sprite.new(0, 0, Image.load( "map.png"))
ap1 = Sprite.new(120, 80, Image.load("ap.png"))
ap2 = Sprite.new(40, 180, Image.load("ap.png"))
ap3 = Sprite.new(160, 170, Image.load("ap.png"))
ap4 = Sprite.new(220, 230, Image.load("ap.png"))
ap5 = Sprite.new(200, 380, Image.load("ap.png"))
ap6 = Sprite.new(350, 300, Image.load("ap.png"))


#�}�E�X�̍쐬
mouse = Sprite.new(0, 0, Image.new(10, 10, C_WHITE))

#�t�H���g�T�C�Y
map_font = Font.new(32)
font = Font.new(26)

#�}�b�v�`�惋�[�v
Window.loop do

	#�}�E�X�̈ʒu���擾
	mouse.x, mouse.y = Input.mouse_x, Input.mouse_y

	#�}�b�v�̕`��
	map.draw

	#�n��(�A�N�Z�X�|�C���g)�́��`��
	ap1.draw
	ap2.draw
	ap3.draw
	ap4.draw
	ap5.draw
	ap6.draw

	#�e�n��(�A�N�Z�X�|�C���g)�Ƀ}�E�X���ڐG����ƒn���`��
	if mouse === ap1 then
		Window.draw_font(500, 200, "����ꓔ��", font, z:2)
	end

	if mouse === ap2 then
		Window.draw_font(500, 200, "��̕l", font, z:2)
	end

	if mouse === ap3 then
		Window.draw_font(500, 200, "�o�_���", font, z:2)
	end

	if mouse === ap4 then
		Window.draw_font(500, 200, "����Љw", font, z:2)
	end

	if mouse === ap5 then
		Window.draw_font(500, 200, "�{���_��", font, z:2)
	end

	if mouse === ap6 then
		Window.draw_font(500, 200, "���v�b��", font, z:2)
	end

	#�n���i�A�N�Z�X�|�C���g�j�̕`��
	Window.draw_font(500, 450, "�o�_�̍�", font, z:2)

	#�G�X�P�[�v�L�[�Ń��[�v�𔲂���
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
