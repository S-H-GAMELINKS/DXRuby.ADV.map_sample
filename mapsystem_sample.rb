# coding: shift_jis

#����g�p�\��̃}�b�v�V�X�e����

#DXRuby�̓Ǎ�
require 'dxruby'

#�^�C�g����
Window.caption = ("�����p�}�b�v�V�X�e����")

#�}�b�v�摜�̓Ǎ�
map = Image.new(640, 480, [0, 0, 0, 0])
map = Image.load("map.png")

#�}�b�v�`�惋�[�v
Window.loop do

#�}�E�X�̈ʒu���擾
x = Input.mouse_x
y = Input.mouse_y

	#�}�b�v�̕`��
	Window.draw(0, 0, map, 1)

	#�n��(�A�N�Z�X�|�C���g)�́��`��
	

	#�G�X�P�[�v�L�[�Ń��[�v�𔲂���
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
