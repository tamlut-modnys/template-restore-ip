/+  *test
/=  restore-ip  /gen/restore-ip
|%
::  test for failures
++  test-01
    %-  expect-fail
    |.  (restore-ip 'a')
++  test-02
    %-  expect-fail
    |.  (restore-ip '1234567890123')
++  test-03
    %-  expect-fail
    |.  (restore-ip '111a1111')
++  test-04
    %-  expect-fail
    |.  (restore-ip '111111@1')
++  test-05
    %-  expect-fail
    |.  (restore-ip '11111111111^')
::  tests for success
++  test-06
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~)
    !>  (restore-ip '1')
++  test-07
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~)
    !>  (restore-ip '11')
++  test-08
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~)
    !>  (restore-ip '111')
++  test-09
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.1.1.1'])
    !>  (restore-ip '1111')
++  test-10
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.1.1.11' '1.1.11.1' '1.11.1.1' '11.1.1.1'])
    !>  (restore-ip '11111')
++  test-11
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.1.1.111' '1.1.11.11' '1.1.111.1' '1.11.1.11' '1.11.11.1' '1.111.1.1' '11.1.1.11' '11.1.11.1' '11.11.1.1' '111.1.1.1'])
    !>  (restore-ip '111111')
++  test-12
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.1.11.111' '1.1.111.11' '1.11.1.111' '1.11.11.11' '1.11.111.1' '1.111.1.11' '1.111.11.1' '11.1.1.111' '11.1.11.11' '11.1.111.1' '11.11.1.11' '11.11.11.1' '11.111.1.1' '111.1.1.11' '111.1.11.1' '111.11.1.1'])
    !>  (restore-ip '1111111')
++  test-13
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.1.111.111' '1.11.11.111' '1.11.111.11' '1.111.1.111' '1.111.11.11' '1.111.111.1' '11.1.11.111' '11.1.111.11' '11.11.1.111' '11.11.11.11' '11.11.111.1' '11.111.1.11' '11.111.11.1' '111.1.1.111' '111.1.11.11' '111.1.111.1' '111.11.1.11' '111.11.11.1' '111.111.1.1'])
    !>  (restore-ip '11111111')
++  test-14
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.11.111.111' '1.111.11.111' '1.111.111.11' '11.1.111.111' '11.11.11.111' '11.11.111.11' '11.111.1.111' '11.111.11.11' '11.111.111.1' '111.1.11.111' '111.1.111.11' '111.11.1.111' '111.11.11.11' '111.11.111.1' '111.111.1.11' '111.111.11.1'])
    !>  (restore-ip '111111111')
++  test-15
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.111.111.111' '11.11.111.111' '11.111.11.111' '11.111.111.11' '111.1.111.111' '111.11.11.111' '111.11.111.11' '111.111.1.111' '111.111.11.11' '111.111.111.1'])
    !>  (restore-ip '1111111111')
++  test-16
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['11.111.111.111' '111.11.111.111' '111.111.11.111' '111.111.111.11'])
    !>  (restore-ip '11111111111')
++  test-17
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['111.111.111.111'])
    !>  (restore-ip '111111111111')
++  test-18
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.9.99.91' '1.99.9.91' '1.99.99.1' '19.9.9.91' '19.9.99.1' '19.99.9.1' '199.9.9.1'])
    !>  (restore-ip '199991')
++  test-19
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.99.99.91' '19.9.99.91' '19.99.9.91' '19.99.99.1' '199.9.9.91' '199.9.99.1' '199.99.9.1'])
    !>  (restore-ip '1999991')
++  test-20
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['19.99.99.91' '199.9.99.91' '199.99.9.91' '199.99.99.1'])
    !>  (restore-ip '19999991')
++  test-21
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['199.99.99.91'])
    !>  (restore-ip '199999991')
++  test-22
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~)
    !>  (restore-ip '1999999991')
++  test-23
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['9.8.7.6'])
    !>  (restore-ip '9876')
++  test-24
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['9.8.7.65' '9.8.76.5' '9.87.6.5' '98.7.6.5'])
    !>  (restore-ip '98765')
++  test-25
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['9.8.76.54' '9.87.6.54' '9.87.65.4' '98.7.6.54' '98.7.65.4' '98.76.5.4'])
    !>  (restore-ip '987654')
++  test-26
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['9.87.65.43' '98.7.65.43' '98.76.5.43' '98.76.54.3'])
    !>  (restore-ip '9876543')
++  test-27
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['98.76.54.32'])
    !>  (restore-ip '98765432')
++  test-28
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~)
    !>  (restore-ip '987654321')
++  test-29
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.1.25.61' '1.12.5.61' '1.12.56.1' '1.125.6.1' '11.2.5.61' '11.2.56.1' '11.25.6.1' '112.5.6.1'])
    !>  (restore-ip '112561')
++  test-30
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.12.56.11' '1.125.6.11' '1.125.61.1' '11.2.56.11' '11.25.6.11' '11.25.61.1' '112.5.6.11' '112.5.61.1' '112.56.1.1'])
    !>  (restore-ip '1125611')
++  test-31
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['1.112.56.111' '11.12.56.111' '11.125.6.111' '11.125.61.11' '111.2.56.111' '111.25.6.111' '111.25.61.11'])
    !>  (restore-ip '111256111')
++  test-32
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~)
    !>  (restore-ip '111256111111')
++  test-33
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['100.0.0.1'])
    !>  (restore-ip '100001')
++  test-34
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['100.0.100.1'])
    !>  (restore-ip '10001001')
++  test-35
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['10.0.100.100' '100.10.0.100' '100.100.10.0'])
    !>  (restore-ip '100100100')
++  test-36
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['10.10.10.101' '10.101.0.101' '101.0.10.101'])
    !>  (restore-ip '101010101')
++  test-37
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~)
    !>  (restore-ip '1010101010')
++  test-38
  %+  expect-eq
    !>  `(set @t)`(silt `(list @t)`~['0.1.1.111' '0.1.11.11' '0.1.111.1' '0.11.1.11' '0.11.11.1' '0.111.1.1'])
    !>  (restore-ip '011111')
--