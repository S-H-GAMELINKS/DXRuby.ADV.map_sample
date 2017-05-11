# coding: shift_jis

#����g�p�\��̃}�b�v�V�X�e����

#DXRuby�̓Ǎ�
require 'dxruby'

#�n���`�惁�\�b�h�̓Ǎ�
require_relative 'map_name'

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

#�}�b�v�`�惋�[�v��FPS
Window.fps = 999

#�}�b�v�`�惋�[�v
Window.loop do

	#�}�E�X�̈ʒu���擾
	x = Input.mouse_x
	y = Input.mouse_y

	#�}�E�X�ʒu�Ń}�b�v����ύX
	ap_name = map_name(x, y, ap_name)

	#�}�b�v�̕`��
	Window.draw(0, 0, map, 1)

	#�n��(�A�N�Z�X�|�C���g)�́��`��
	Window.draw_font(120, 80, "��", map_font, color: [0, 0, 0], z:2)	#����ꓔ��
	Window.draw_font(40, 180, "��", map_font, color: [0, 0, 0], z:2)	#��̕l
	Window.draw_font(160, 170, "��", map_font, color: [0, 0, 0], z:2)	#�o�_���
	Window.draw_font(220, 230, "��", map_font, color: [0, 0, 0], z:2)	#����Љw
	Window.draw_font(200, 380, "��", map_font, color: [0, 0, 0], z:2)	#�{���_��
	Window.draw_font(350, 300, "��", map_font, color: [0, 0, 0], z:2)	#���v�b��

	#�n���i�A�N�Z�X�|�C���g�j�̕`��
	Window.draw_font(500, 200, ap_name, font, z:2)

	#�}�b�v���`��
	Window.draw_font(500, 450, map_name, font, z:2)

	#�G�X�P�[�v�L�[�Ń��[�v�𔲂���
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
