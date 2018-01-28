_pkgbase=ni-visa
pkgname=${_pkgbase}-dummy
pkgver=16.0.0
pkgrel=1
pkgdesc="Install required packages for National Instruments NI-VISA(TM) Software for Linux"
url="http://www.ni.com/download/ni-visa-5.4.1/4629/en/"
arch=('x86_64' 'i686')
license=('custom')
provides=(${_pkgbase})
conflicts=(${_pkgbase})
depends_x86_64=('gcc-libs'
'linux-headers'
'rpm-org'
'lib32-libxinerama'
'lib32-gcc-libs'
'lib32-mesa-libgl')
depends_i686=('gcc-libs'
'linux-headers'
'rpm-org'
'libxinerama'
'mesa-libgl')
optdepends=('python2-pyvisa: python 2 frontend'
'python-pyvisa: python 3 frontend')

package() {
  cat << EOF

-----------------------------------------------------------

  Please get NI-VISA 16.0 from
      http://www.ni.com/download/ni-visa-16.0/6185/en/

-----------------------------------------------------------

EOF
}
