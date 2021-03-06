name "erlang"
default_version "R16B03-1"

dependency "zlib"
dependency "openssl"
dependency "ncurses"

source url: "http://www.erlang.org/download/otp_src_#{version}.tar.gz"

version "R15B03-1" do
  source md5:   "eccd1e6dda6132993555e088005019f2"
  relative_path "otp_src_R15B03"
end

version "R16B03-1" do
  source md5:   "e5ece977375197338c1b93b3d88514f8"
  relative_path "otp_src_#{version}"
end

version "R15B02" do
  source md5:   "ccbe5e032a2afe2390de8913bfe737a1"
  relative_path "otp_src_#{version}"
end

version '17.0' do
  source md5: 'a5f78c1cf0eb7724de3a59babc1a28e5'
  relative_path 'otp_src_17.0'
end

version '17.1' do
  source md5: '9c90706ce70e01651adde34a2b79bf4c'
  relative_path 'otp_src_17.1'
end

version '17.3' do
  source md5: '1d0bb2d54dfe1bb6844756b99902ba20'
  relative_path 'otp_src_17.3'
end

version '17.4' do
  source md5: '3d33c4c6bd7950240dcd7479edd9c7d8'
  relative_path 'otp_src_17.4'
end

version '17.5' do
  source md5: '346dd0136bf1cc28cebc140e505206bb'
  relative_path 'otp_src_17.5'
end

version '18.1' do
  source md5: 'fa64015fdd133e155b5b19bf90ac8678'
  relative_path 'otp_src_18.1'
end

build do
  env = with_standard_compiler_flags(with_embedded_path)
  command "./configure" \
          " --prefix=#{install_dir}/embedded" \
          " --enable-threads" \
          " --enable-smp-support" \
          " --enable-kernel-poll" \
          " --enable-dynamic-ssl-lib" \
          " --enable-shared-zlib" \
          " --enable-hipe" \
          " --without-javac" \
          " --without-termcap" \
          " --with-ssl=#{install_dir}/embedded" \
          " --disable-debug", env: env

  make "-j #{workers}", env: env
  make "install", env: env
end
