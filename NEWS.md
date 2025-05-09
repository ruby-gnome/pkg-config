# NEWS

## 1.6.2 - 2025-04-27

### Improvements

  * Added support for detecting Homebrew's pkgconfig path without
    `pkgconf`.
    * [apche/arrow#46235](https://github.com/apache/arrow/issues/46245)
    * Reported by Shizuo Fujita

### Thanks

  * Shizuo Fujita

## 1.6.1 - 2025-04-17

### Improvements

  * Added support for `--with-pkg-config-path`.
    * [ruby-gnome/ruby-gnome#1670](https://github.com/ruby-gnome/ruby-gnome/issues/1670)
    * Reported by Stanisław Pitucha

### Thanks

  * Stanisław Pitucha

## 1.6.0 - 2025-03-02

### Improvements

  * Changed to use only one file: `pkg-config.rb`

  * Removed `English` dependency.

## 1.5.9 - 2025-01-08

### Improvements

  * Added support for `.pc` that uses UTF-8.

## 1.5.8 - 2024-11-21

### Improvements

  * Added support for pkgconf.

## 1.5.7 - 2024-10-24

### Improvements

  * conda: Added support for `${CONDA_PREFIX}/share/pkgconfig`.

### Fixes

  * Fixed `Cflags` nomralization

    * GH-25

    * Reported by Jean byroot Boussier

### Thanks

  * Jean byroot Boussier

## 1.5.6 - 2023-11-19

### Improvements

  * Added support for "<" and ">" operators in "Requires:".

    GH-23

    Patch by Daisuke Fujimura

### Thanks

  * Daisuke Fujimura

## 1.5.5 - 2023-09-05

### Fixes

  * Fixed a bug in 1.5.4 that success detection doesn't work.

## 1.5.4 - 2023-09-05

### Improvements

  * Added package version to unsatisfied version is only found case.

## 1.5.3 - 2023-08-29

### Improvements

  * Accepted spaces between "=" and ":". For example, "prefix = /usr"
    is accepted.

## 1.5.2 - 2023-06-25

### Improvements

  * Added support for conda.

## 1.5.1 - 2022-11-23

### Improvements

  * Improved the default search path. "/usr" in "/usr/bin/pkg-config"
    isn't used for buidling the default search path if "pkg-config
    --variable=pc_path pkg-config" is available.
    [Reported by Watson][GitHub:#22]

## 1.5.0 - 2022-11-23

### Improvements

  * Improved the default search path. "pkg-config --variable=pc_path
    pkg-config" is used as the default search path if it's available.
    [Reported by Watson][GitHub:#22]

## 1.4.9 - 2022-07-31

This is a bug fix release of 1.4.8. All 1.4.8 users should be upgraded
to 1.4.9.

### Fixes

  * Fixed a regression bug in 1.4.8 that PkgConfig.have_package can't
    detect nonexistent package.

## 1.4.8 - 2022-07-30

### Improvements

  * Added support for showing found package version.

## 1.4.7 - 2022-01-16

### Improvements

  * Added support for RubyInstaller2 3.1 or later.
    [Reported by golirev][GitHub:ruby-gnome/ruby-gnome#1457]

### Thanks

  * golirev

## 1.4.6 - 2021-04-12

### Improvements

  * Improved support for .pc detection installed by Homebrew.
    [Reported by Evan Shea][GitHub:rcairo/rcairo#66]

### Thanks

  * Evan Shea

## 1.4.5 - 2021-02-04

### Improvements

  * Added support for macOS 11.2.
    [Reported by Ludovic Moutury][GitHub:rcairo/rcairo#69]

### Thanks

  * Ludovic Moutury

## 1.4.4 - 2020-09-23

### Fixes

  * Fixed a bug that NoMethodError instead of
    PackageConfig::NotFoundError is raised.
    [GitHub#21][Fixed by kojix2]

### Thanks

  * kojix2

## 1.4.3 - 2020-09-15

### Improvements

  * Changed to use PackageConfig::NotFoundError instead of RuntimeError
    for exception on no .pc is found.

## 1.4.2 - 2020-08-10

### Improvements

  * Added support for detecting pkgconfig path on RubyInstaller
    without "ridk exec".

## 1.4.1 - 2020-02-10

### Improvements

  * Added support for cycled depended .pc such as freetype2.pc and
    harfbuzz.pc on PLD Linux.
    [Reported by Jakub Bogusz]

### Thanks

  * Jakub Bogusz

## 1.4.0 - 2019-10-24

### Improvements

  * Improved Homebrew detection.

## 1.3.9 - 2019-09-28

### Improvements

  * Added support for absolute path in Requires.
    [GitHub#18][Reported by Josh Huckabee]

### Thanks

  * Josh Huckabee

## 1.3.8 - 2019-08-13

### Improvements

  * Added support for -framework on macOS.
    [GitHub:ruby-gnome2/ruby-gnome2#1287][Reported by Viko]

### Thanks

  * Viko

## 1.3.7 - 2019-03-17

### Improvements

  * Added support for alphabet and _ only version.
    [GitHub#17][Reported by xiejiangzhi]

### Thanks

  * xiejiangzhi

## 1.3.6 - 2019-03-09

### Improvements

  * Added support for Homebrew environment without pkg-config formula.

## 1.3.5 - 2019-03-08

### Fixes

  * Fixed MSYS2 detection installed at non standard folder.
    [GitHub:ruby-gnome2/ruby-gnome2#1271][Reported by Simon Arnaud]

### Thanks

  * Simon Arnaud

## 1.3.4 - 2019-02-19

### Fixes

  * Fixed 32bit MinGW Ruby detection.
    [GitHub:ruby-gnome2/ruby-gnome2#1274][Reported by noanoa07]

### Thanks

  * noanoa07

## 1.3.3 - 2019-02-10

### Improvements

  * Improved MSYS2 detection on Windows.
    [GitHub#16][Reported by dsisnero]

### Thanks

  * dsisnero

## 1.3.2 - 2018-11-03

### Improvements

  * Added support for Ruby installed by RubyInstaller for Windows with
    MSYS2-Devkit.

## 1.3.1 - 2018-04-28

### Improvements

  * Changed search order to find C flags.
    [GitHub#6][Reported by HIGUCHI Daisuke]
    * Before: Requires -> Requires.private
    * After: Requires.private -> Requires

### Thanks

  * HIGUCHI Daisuke

## 1.3.0 - 2018-04-10

### Improvements

  * Added Ruby 2.0 on Ubuntu Trusty again.

## 1.2.9 - 2018-01-13

### Improvements

  * Added more default paths for OpenBSD.
    [GitHub#15][Reported by clintpachl]

### Thanks

  * clintpachl

## 1.2.8 - 2017-10-19

### Improvements

  * Improved macOS environment detection.
    [Reported by Simeon Manolov]

### Thanks

  * Simeon Manolov

## 1.2.7 - 2017-08-16

### Improvements

  * Improved Homebrew repository detection.
    [Reported by Wyatt Kirby]

### Thanks

  * Wyatt Kirby

## 1.2.6 - 2017-08-13

### Improvements

  * Improved Homebrew repository detection.

## 1.2.5 - 2017-08-10

### Improvements

  * Supported Homebrew bundled .pc files.
    [GitHub:rcairo/rcairo#49][Reported by choboy11]

### Thanks

  * choboy11

## 1.2.4 - 2017-08-07

### Improvements

  * Added `pkg-config` 0.29 or later compatible result support.
    [GitHub#13][Reported by HIGUCHI Daisuke]

  * test: Updated expected value for the latest cairo.
    [GitHub#14][Patch by HIGUCHI Daisuke]

### Thanks

  * HIGUCHI Daisuke

## 1.2.3 - 2017-05-29

### Fixes

  * Supported *-mingw32 Rubies without MSYS2 again.

## 1.2.2 - 2017-05-29

### Improvements

  * Supported path normalization for MSYS2.

## 1.2.1 - 2017-05-29

### Improvements

  * Supported MSYS2.

## 1.2.0 - 2017-04-25

### Improvements

  * Supported x32 environment. [GitHub#12][Reported by Elan Ruusamäe]

### Thanks

  * Elan Ruusamäe

## 1.1.9 - 2017-04-20

  * Supported C++ compiler.

## 1.1.8 - 2017-04-19

  * Stopped to require mkmf.

## 1.1.7 - 2015-01-16

  * Added path for FreeBSD to default paths.
    [Reported by Hajime UMEMOTO]

### Thanks

  * Hajime UMEMOTO

## 1.1.6 - 2014/11/12

  * Supported Ruby 2.1.
    [GitHub:ruby-gnome2/ruby-gnome2#262][Reported by Steve Wills]

### Thanks

  * Steve Wills

## 1.1.5 - 2013/12/29

  * Supported XQuartz.
    [GitHub:#10][Patch by Masafumi Yokoyama]

### Thanks

  * Masafumi Yokoyama

## 1.1.4 - 2012/08/02

  * Supported mswin64 as MSVC environment.

## 1.1.3 - 2012/01/29

  * [GitHub #8] fix test broken by libpng version.
    (Patch by Bohuslav Kabrda.)
  * Used RbConfig instead of Config.

### Thanks

  * Bohuslav Kabrda

## 1.1.2 - 2011/07/04

  * [GitHub #2] fix test broken.
    (Reported by Mamoru Tasaka.)
  * [GitHub #4] update project descripton.
    (Patch by Antonio Terceiro.)
  * [GitHub #4] use setup.rb instead of extconf.rb.
    (Patch by Antonio Terceiro.)
  * [GitHub #3] add Copyright notice to README.
    (Suggested by Antonio Terceiro.)
  * [GitHub #7] supported non i386 and amd64 architectures.
    (Reported by Antonio Terceiro.)

### Thanks

  * Mamoru Tasaka
  * Antonio Terceiro

## 1.1.1 - 2011/05/03

* [ruby-gnome-devel-en] add
  /usr/lib/i386-linux-gnu/pkgconfig to the default paths.
  (Reported by Andrea B.C.)

### Thanks

  * Funky Bibimba

## 1.1.0 - 2011/04/03

* [#3270846] add /usr/lib/x86_64-linux-gnu/pkgconfig to default paths.
  (Reported by Funky Bibimbap)

### Thanks

  * Funky Bibimba

## 1.0.8 - 2011/01/30

* fix a bug that multiple PKGConfig.add_path doesn't work.

## 1.0.7 - 2010/09/30

* suppress warnings on Ruby 1.9.

## 1.0.6 - 2010/09/23

* add PKGConfig.libs_only_L.

## 1.0.5 - 2010/09/23

* suppress duplicated configure arguments processing.
* use mkmf.rb message functions.

## 1.0.4 - 2010/09/23

* add PKGConfig.variable.

## 1.0.3 - 2010/09/07

* add path and override_variable customize API.
* support description.

## 1.0.2 - 2010/09/02

* fix packaing miss.

## 1.0.1 - 2010/09/02

* support installing without gem.

## 1.0.0 - 2010/09/02

* Initial release!

