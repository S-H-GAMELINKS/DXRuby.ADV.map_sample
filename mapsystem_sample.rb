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

	#�}�b�v�̕`��
	Window.draw(0, 0, map, 1)


	#�G�X�P�[�v�L�[�Ń��[�v�𔲂���
	if Input.key_push?(K_ESCAPE) then
		break
	end
end
