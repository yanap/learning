# coding: utf-8

class VolumeTest < Test::Unit::TestCase
  must "compute volume based on length, width, and height" do
    # デフォルトではl(ength)=w(idth)=h(eight)=1
    assert_equal 1, volume

    # 引数１つのとき、1=x、w, h=1にセット
    x = 6
    assert_equal x,  volume(x)

    # 引数２つのとき、l=x,  w=y,  h=1にセット
    y = 2
    assert_equal x*y, volume(x, y)

    # 引数３つのとき、l=x,  w=y,  h=zにセット
    z = 7
    assert_equal x*y*z,  volume(x, y, z)

    # 引数がハッシュのとき、:length,  :width,  :heightを使う
    assert_equal x*y*z, volume(length: x, width: y, height: z)
  end
end
