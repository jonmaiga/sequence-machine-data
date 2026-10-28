import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C037
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A252001: Lexicographically earliest permutation of the positive integers, such that a carry occurs when adjacent terms are added in decimal representation.

The programs for A252001, there is no canonical definition to state claims against.
-/

/-! ## A252001.P6270121915395688732

`A262703(n)+a(n-1)` with `a(0)=1`
-/

namespace A252001.P6270121915395688732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262703 n + a (n - 1)

end

end A252001.P6270121915395688732

/-! ## A252001.P14583481874635983890

`∑[A262703(A028310(n))]-7`
-/

namespace A252001.P14583481874635983890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262703 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A252001.P14583481874635983890

/-! ## A252001.P6324872868456002618

`∑[A262703(n+1)]+1-A262703(n+1)`
-/

namespace A252001.P6324872868456002618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A262703 (n + 1))

end

end A252001.P6324872868456002618

/-! ## A252001.P15205324621501389765

`∑[A262703(A028310(n))%A004771(n)]`
-/

namespace A252001.P15205324621501389765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262703 (A028310 n).toNat) (A004771 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252001.P15205324621501389765

/-! ## A252001.P15400941577944828803

`∑[A262703(A065033(2*n))]-7`
-/

namespace A252001.P15400941577944828803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262703 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A252001.P15400941577944828803

/-!
# A252003: Numbers n such that the sum of the octagonal numbers N(n) and N(n+1) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

The programs for A252003, there is no canonical definition to state claims against.
-/

/-! ## A252003.P10252052751368938249

`A001652(Δ[A046092(n)])/3`
-/

namespace A252003.P10252052751368938249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001652 (f1 (n + 1) - f1 n).toNat : ℚ) / 3

end

end A252003.P10252052751368938249

/-! ## A252003.P3185387562206757152

`A001652(A008574(n+1))/3`
-/

namespace A252003.P3185387562206757152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001652 (A008574 (n + 1)).toNat : ℚ) / 3

end

end A252003.P3185387562206757152

/-! ## A252003.P6362204483504497975

`A001652(A059558(n+1))/3`
-/

namespace A252003.P6362204483504497975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001652 (A059558 (n + 1)).toNat : ℚ) / 3

end

end A252003.P6362204483504497975

/-! ## A252003.P1145981236958529775

`A002315(2*n+1)*A077420(n+1)+1`
-/

namespace A252003.P1145981236958529775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (2 * n + 1) * A077420 (n + 1) + 1

end

end A252003.P1145981236958529775

/-!
# A252004: Numbers n such that the sum of the pentagonal numbers P(n) and P(n+1) is equal to the sum of the octagonal numbers N(m) and N(m+1) for some m.

The programs for A252004, there is no canonical definition to state claims against.
-/

/-! ## A252004.P2731218893263271584

`A111954(A004768(n))/3`
-/

namespace A252004.P2731218893263271584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111954 (A004768 n).toNat : ℚ) / 3

end

end A252004.P2731218893263271584

/-! ## A252004.P1776642824861452926

`∑[8*A002315(A016825(n))]`
-/

namespace A252004.P1776642824861452926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002315 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252004.P1776642824861452926

/-!
# A252005: a(1)=2; for n>1, a(n) is the least prime > a(n-1) such that sum of digits of a(n-1) and a(n) is prime.

The programs for A252005, there is no canonical definition to state claims against.
-/

/-! ## A252005.P13940317227817207235

`p?[A288740(n+1)-A324683(n)]`
-/

namespace A252005.P13940317227817207235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288740 (n + 1) - A324683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252005.P13940317227817207235

/-! ## A252005.P88701549623256204

`∩[A093510(n+1), A178317(n+1)]`
-/

namespace A252005.P88701549623256204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252005.P88701549623256204

/-! ## A252005.P13143895464546792479

`∩[A172409(n+1), A178317(n+1)]`
-/

namespace A252005.P13143895464546792479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252005.P13143895464546792479

/-!
# A252006: a(n) = sum of digits of A252005(n) and A252005(n+1).

The programs for A252006, there is no canonical definition to state claims against.
-/

/-! ## A252006.P17994038983367326803

`A007953(A252005(n+2))+A007953(A252005(n+1))`
-/

namespace A252006.P17994038983367326803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A252005 (n + 2)).toNat + A007953 (A252005 (n + 1)).toNat

end

end A252006.P17994038983367326803

/-!
# A252007: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252007, there is no canonical definition to state claims against.
-/

/-! ## A252007.P16258411180546944117

`A252015(∑[4*n]+1)`
-/

namespace A252007.P16258411180546944117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252007.P16258411180546944117

/-! ## A252007.P11500123597469188475

`lcm(2, A252015(A001844(n)))`
-/

namespace A252007.P11500123597469188475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252015 (A001844 n).toNat)

end

end A252007.P11500123597469188475

/-! ## A252007.P340395066113910813

`A252015(A001844(n))+A034443(n+1)`
-/

namespace A252007.P340395066113910813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A001844 n).toNat + A034443 (n + 1)

end

end A252007.P340395066113910813

/-! ## A252007.P18100237389953489625

`A000108(C(2, n+2))+A252015(A001844(n))-1`
-/

namespace A252007.P18100237389953489625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) + (A252015 (A001844 n).toNat - 1)

end

end A252007.P18100237389953489625

/-! ## A252007.P8098854842755428613

`A001222(A231588(n+1))+A252015(A001844(n))-1`
-/

namespace A252007.P8098854842755428613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A231588 (n + 1)).toNat + (A252015 (A001844 n).toNat - 1)

end

end A252007.P8098854842755428613

/-!
# A252008: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252008, there is no canonical definition to state claims against.
-/

/-! ## A252008.P3908131846443295155

`A252015(∑[n]+1)`
-/

namespace A252008.P3908131846443295155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252008.P3908131846443295155

/-! ## A252008.P8610764240446789735

`lcm(2, A252015(A000124(n)))`
-/

namespace A252008.P8610764240446789735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252015 (A000124 n).toNat)

end

end A252008.P8610764240446789735

/-! ## A252008.P17125262779416985617

`and(-2, A252015(A000217(n)+1))`
-/

namespace A252008.P17125262779416985617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A252015 (A000217 n + 1).toNat)

end

end A252008.P17125262779416985617

/-! ## A252008.P1850414147833288519

`A252015(A000124(n))%A252013(n+1)`
-/

namespace A252008.P1850414147833288519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252015 (A000124 n).toNat) (A252013 (n + 1))

end

end A252008.P1850414147833288519

/-! ## A252008.P3076481663465287231

`A252015(A000217(n)+1)+A000035(2*n)`
-/

namespace A252008.P3076481663465287231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A000217 n + 1).toNat + A000035 (2 * n)

end

end A252008.P3076481663465287231

/-!
# A252009: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252009, there is no canonical definition to state claims against.
-/

/-! ## A252009.P16536091290646304483

`A252015(∑[n+1]+2)`
-/

namespace A252009.P16536091290646304483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252009.P16536091290646304483

/-! ## A252009.P13626326611851600322

`lcm(2, A252015(A000096(n)+3))`
-/

namespace A252009.P13626326611851600322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252015 (A000096 n + 3).toNat)

end

end A252009.P13626326611851600322

/-! ## A252009.P13143127728846955004

`A014963(60*(n+1))*A252015(A000096(n)+3)`
-/

namespace A252009.P13143127728846955004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (60 * (n + 1)) * A252015 (A000096 n + 3).toNat

end

end A252009.P13143127728846955004

/-! ## A252009.P15433103195720295818

`A000045(gcd(n, n+1))*A252015(A000096(n)+3)`
-/

namespace A252009.P15433103195720295818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A252015 (A000096 n + 3).toNat

end

end A252009.P15433103195720295818

/-! ## A252009.P6196299562856357512

`A007318(A020639(3*(n+1)))*A252015(A000096(n)+3)`
-/

namespace A252009.P6196299562856357512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (3 * (n + 1))).toNat * A252015 (A000096 n + 3).toNat

end

end A252009.P6196299562856357512

/-!
# A252010: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252010, there is no canonical definition to state claims against.
-/

/-! ## A252010.P862655204242784723

`A252015(∑[n+2]+4)`
-/

namespace A252010.P862655204242784723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252010.P862655204242784723

/-! ## A252010.P914408655144544897

`lcm(2, A252015(A167614(n+1)))`
-/

namespace A252010.P914408655144544897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252015 (A167614 (n + 1)).toNat)

end

end A252010.P914408655144544897

/-! ## A252010.P8559439165297068713

`A252015(A167614(n+1))%A016975(n)`
-/

namespace A252010.P8559439165297068713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252015 (A167614 (n + 1)).toNat) (A016975 n)

end

end A252010.P8559439165297068713

/-! ## A252010.P7560900079533308630

`A252015(A167614(n+1))+A000007(A141214(n))`
-/

namespace A252010.P7560900079533308630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A167614 (n + 1)).toNat + A000007 (A141214 n).toNat

end

end A252010.P7560900079533308630

/-! ## A252010.P18001520819795927410

`A252015(A167614(n+1))+A083916(A066657(n))`
-/

namespace A252010.P18001520819795927410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A167614 (n + 1)).toNat + A083916 (A066657 n).toNat

end

end A252010.P18001520819795927410

/-!
# A252011: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252011, there is no canonical definition to state claims against.
-/

/-! ## A252011.P14405792074255649622

`A252015(∑[n+3]+7)`
-/

namespace A252011.P14405792074255649622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252011.P14405792074255649622

/-! ## A252011.P8751265359395463301

`lcm(2, A252015(A141214(n)+7))`
-/

namespace A252011.P8751265359395463301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252015 (A141214 n + 7).toNat)

end

end A252011.P8751265359395463301

/-! ## A252011.P16430394027594075483

`or(2, A252015(A145018(n+4)))`
-/

namespace A252011.P16430394027594075483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A252015 (A145018 (n + 4)).toNat)

end

end A252011.P16430394027594075483

/-! ## A252011.P97692848899048685

`or(2, A252015(A167614(n+2)+1))`
-/

namespace A252011.P97692848899048685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A252015 (A167614 (n + 2) + 1).toNat)

end

end A252011.P97692848899048685

/-! ## A252011.P588463158062505710

`A252015(A145018(n+4))+A000007(n+1)`
-/

namespace A252011.P588463158062505710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A145018 (n + 4)).toNat + A000007 (n + 1)

end

end A252011.P588463158062505710

/-!
# A252012: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252012, there is no canonical definition to state claims against.
-/

/-! ## A252012.P17440357190164798837

`A252015(A374005(n+1))`
-/

namespace A252012.P17440357190164798837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A374005 (n + 1)).toNat

end

end A252012.P17440357190164798837

/-! ## A252012.P17226491882754633212

`A252015(A167499(n+3))`
-/

namespace A252012.P17226491882754633212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A167499 (n + 3)).toNat

end

end A252012.P17226491882754633212

/-! ## A252012.P13913228847762944625

`A252015(A077169(n+5))`
-/

namespace A252012.P13913228847762944625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A077169 (n + 5)).toNat

end

end A252012.P13913228847762944625

/-! ## A252012.P6449560724587552374

`A252015(A056000(n)+15)`
-/

namespace A252012.P6449560724587552374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A056000 n + 15).toNat

end

end A252012.P6449560724587552374

/-! ## A252012.P3969777217529098660

`A252015(A000096(n+3)+6)`
-/

namespace A252012.P3969777217529098660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A000096 (n + 3) + 6).toNat

end

end A252012.P3969777217529098660

/-!
# A252013: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252013, there is no canonical definition to state claims against.
-/

/-! ## A252013.P9748519950557011088

`A252015(A374007(n+1))`
-/

namespace A252013.P9748519950557011088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A374007 (n + 1)).toNat

end

end A252013.P9748519950557011088

/-! ## A252013.P15828675409486128984

`A252015(A000217(n+5)+6)`
-/

namespace A252013.P15828675409486128984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A000217 (n + 5) + 6).toNat

end

end A252013.P15828675409486128984

/-! ## A252013.P12467268937075923936

`A252015(Δ[A023545(n+1)]+10)`
-/

namespace A252013.P12467268937075923936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (f1 (n + 1) - f1 n + 10).toNat

end

end A252013.P12467268937075923936

/-! ## A252013.P3043930457994015545

`A252015(A000096(n+5)-(n-1))`
-/

namespace A252013.P3043930457994015545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A252013.P3043930457994015545

/-! ## A252013.P15350060963009967234

`A252015(A000124(n+6)-(n+1))`
-/

namespace A252013.P15350060963009967234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A252013.P15350060963009967234

/-!
# A252014: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum 1 3 6 or 8 and every diagonal and antidiagonal sum not 1 3 6 or 8.

The programs for A252014, there is no canonical definition to state claims against.
-/

/-! ## A252014.P1963911574299863512

`A252015(A374008(n+1))`
-/

namespace A252014.P1963911574299863512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A374008 (n + 1)).toNat

end

end A252014.P1963911574299863512

/-! ## A252014.P13075039725537736631

`A252015(A166136(n+5)+1)`
-/

namespace A252014.P13075039725537736631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A166136 (n + 5) + 1).toNat

end

end A252014.P13075039725537736631

/-! ## A252014.P4879541348764391926

`A252015(A167499(n+5)+2)`
-/

namespace A252014.P4879541348764391926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A167499 (n + 5) + 2).toNat

end

end A252014.P4879541348764391926

/-! ## A252014.P4402397931134380699

`A252015(A167614(n+5)+4)`
-/

namespace A252014.P4402397931134380699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A167614 (n + 5) + 4).toNat

end

end A252014.P4402397931134380699

/-! ## A252014.P4037543037243321165

`A252015(A000124(n+6)+6)`
-/

namespace A252014.P4037543037243321165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252015 (A000124 (n + 6) + 6).toNat

end

end A252014.P4037543037243321165

/-!
# A252020: Odd perfect powers n not congruent to 1 mod 6 such that n*4^k - 1 has a covering set.

The programs for A252020, there is no canonical definition to state claims against.
-/

/-! ## A252020.P15492732632623795668

`A237592(n+1)²`
-/

namespace A252020.P15492732632623795668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (n + 1) ^ 2

end

end A252020.P15492732632623795668

/-! ## A252020.P11830004113259598471

`A237592(n-log2(1/2))^2`
-/

namespace A252020.P11830004113259598471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2

end

end A252020.P11830004113259598471

/-! ## A252020.P1502022769366503493

`record[A237592(A020986(n))²]`
-/

namespace A252020.P1502022769366503493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252020.P1502022769366503493

/-! ## A252020.P11936279150048182238

`A237592(n-log2(1/2))²*A007318(∑[n])`
-/

namespace A252020.P11936279150048182238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2 * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252020.P11936279150048182238

/-! ## A252020.P4733106147698686443

`record[A237592(A020986(n))]*A237592(n+1)`
-/

namespace A252020.P4733106147698686443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237592 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A237592 (n + 1)

end

end A252020.P4733106147698686443

/-!
# A252021: Primes p such that (p - 1)/tau(p - 1) is also prime.

The programs for A252021, the canonical program `A252021.P7800136030572691619` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252021 has offset 1).

The definition of A252021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252021.P7800136030572691619

`p?[A063080(n+1)+1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A252021

/-- `p?[A063080(n+1)+1]` -/
def P7800136030572691619.Spec : Prop :=
  ∀ n, P7800136030572691619.a n = A252021 (n + 1)

theorem P7800136030572691619.correct : P7800136030572691619.Spec := by
  intro n
  simp only [A252021, Nat.add_sub_cancel]

end A252021

/-! ## A252021.P7705601150737061480

`record[A006530(A063080(n+3)+1)]`
-/

namespace A252021.P7705601150737061480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063080 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252021.P7705601150737061480

namespace A252021

/-- `record[A006530(A063080(n+3)+1)]` -/
def P7705601150737061480.Spec : Prop :=
  ∀ n, P7705601150737061480.a n = A252021 (n + 1)

end A252021

/-! ## A252021.P155127743929344322

`record[A020639(A063080(n+3)+1)]`
-/

namespace A252021.P155127743929344322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063080 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252021.P155127743929344322

namespace A252021

/-- `record[A020639(A063080(n+3)+1)]` -/
def P155127743929344322.Spec : Prop :=
  ∀ n, P155127743929344322.a n = A252021 (n + 1)

end A252021

/-! ## A252021.P15539790881259634115

`p?[A004442(A063080(n+1))]`
-/

namespace A252021.P15539790881259634115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A063080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252021.P15539790881259634115

namespace A252021

/-- `p?[A004442(A063080(n+1))]` -/
def P15539790881259634115.Spec : Prop :=
  ∀ n, P15539790881259634115.a n = A252021 (n + 1)

end A252021

/-! ## A252021.P10103726968534753306

`p?[A020725(A063080(n+2))]`
-/

namespace A252021.P10103726968534753306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063080 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252021.P10103726968534753306

namespace A252021

/-- `p?[A020725(A063080(n+2))]` -/
def P10103726968534753306.Spec : Prop :=
  ∀ n, P10103726968534753306.a n = A252021 (n + 1)

end A252021

/-!
# A252022: Lexicographically earliest permutation of the positive integers, such that no carry occurs when adjacent terms are added in decimal representation.

The programs for A252022, there is no canonical definition to state claims against.
-/

/-! ## A252022.P5054927589582063821

`A262604(n)+a(n-1)` with `a(0)=1`
-/

namespace A252022.P5054927589582063821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262604 n + a (n - 1)

end

end A252022.P5054927589582063821

/-! ## A252022.P11529026344968286076

`∑[A262604(A028310(n))]`
-/

namespace A252022.P11529026344968286076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P11529026344968286076

/-! ## A252022.P13798353929218908692

`∑[A262604(A000038(n)+n)]`
-/

namespace A252022.P13798353929218908692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P13798353929218908692

/-! ## A252022.P6487147036094632851

`∑[A262604(A004277(n)-n)]`
-/

namespace A252022.P6487147036094632851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P6487147036094632851

/-! ## A252022.P14542667443571345863

`∑[A262604(or(n, A000038(n)))]`
-/

namespace A252022.P14542667443571345863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P14542667443571345863

/-! ## A252022.P7535140803275789496

`∑[a(A122840(n+1))*A262604(n)]` with `a(0)=1`
-/

namespace A252022.P7535140803275789496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A122840 (n + 1)).toNat * A262604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P7535140803275789496

/-! ## A252022.P16531104146417637929

`∑[A262604(n+1)]+1-A262604(n+1)`
-/

namespace A252022.P16531104146417637929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A262604 (n + 1))

end

end A252022.P16531104146417637929

/-! ## A252022.P9745477138534060143

`∑[A262604(A003056(A000124(n)))]`
-/

namespace A252022.P9745477138534060143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P9745477138534060143

/-! ## A252022.P7495044338182604999

`∑[A262604(A003056(A179865(n+1)))]`
-/

namespace A252022.P7495044338182604999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262604 (A003056 (A179865 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252022.P7495044338182604999

/-!
# A252024: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252024, there is no canonical definition to state claims against.
-/

/-! ## A252024.P15911349418646109916

`A252032(∑[4*n]+1)`
-/

namespace A252024.P15911349418646109916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252024.P15911349418646109916

/-! ## A252024.P7788862404855035171

`record[gcd(A165507(n+1), A252032(n+1))]`
-/

namespace A252024.P7788862404855035171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165507 (n + 1)) (A252032 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252024.P7788862404855035171

/-! ## A252024.P14557378495804418750

`A252032(A001844(n))+A105517(n)`
-/

namespace A252024.P14557378495804418750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A001844 n).toNat + A105517 n

end

end A252024.P14557378495804418750

/-! ## A252024.P18392100435531873111

`or(A000007(n), A252032(A001844(n)))`
-/

namespace A252024.P18392100435531873111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252032 (A001844 n).toNat)

end

end A252024.P18392100435531873111

/-! ## A252024.P1972667281521283938

`or(A029425(n), A252032(A001844(n)))`
-/

namespace A252024.P1972667281521283938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029425 n) (A252032 (A001844 n).toNat)

end

end A252024.P1972667281521283938

/-!
# A252025: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252025, there is no canonical definition to state claims against.
-/

/-! ## A252025.P17288853222370696821

`A252032(∑[n]+1)`
-/

namespace A252025.P17288853222370696821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252025.P17288853222370696821

/-! ## A252025.P8290468883560071131

`or(1, A252032(A000124(n)))`
-/

namespace A252025.P8290468883560071131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252032 (A000124 n).toNat)

end

end A252025.P8290468883560071131

/-! ## A252025.P4618497664738429780

`record[A252032(n+1)/A008955(n)]`
-/

namespace A252025.P4618497664738429780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252032 (n + 1) : ℚ) / (A008955 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252025.P4618497664738429780

/-! ## A252025.P15133369390627753194

`A063435(n)*A252032(A000124(n))`
-/

namespace A252025.P15133369390627753194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A252032 (A000124 n).toNat

end

end A252025.P15133369390627753194

/-! ## A252025.P13717948886230473042

`or(1, A252032(A000096(n)+1))`
-/

namespace A252025.P13717948886230473042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252032 (A000096 n + 1).toNat)

end

end A252025.P13717948886230473042

/-!
# A252026: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252026, there is no canonical definition to state claims against.
-/

/-! ## A252026.P854442523377059625

`A252032(∑[n+1]+2)`
-/

namespace A252026.P854442523377059625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252026.P854442523377059625

/-! ## A252026.P1500613824255937892

`or(1, A252032(A000096(n)+3))`
-/

namespace A252026.P1500613824255937892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252032 (A000096 n + 3).toNat)

end

end A252026.P1500613824255937892

/-! ## A252026.P17825115132275023892

`A252032(A000096(n+1))+A000007(n+1)`
-/

namespace A252026.P17825115132275023892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A252026.P17825115132275023892

/-! ## A252026.P7159039491887249596

`A046978(n)²!*A252032(A000096(n+1))`
-/

namespace A252026.P7159039491887249596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A046978 n ^ 2).toNat : ℤ) * A252032 (A000096 (n + 1)).toNat

end

end A252026.P7159039491887249596

/-! ## A252026.P6035195116925380195

`and(1, A000010(n+2))!*A252032(A000096(n+1))`
-/

namespace A252026.P6035195116925380195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000010 (n + 2))).toNat : ℤ) * A252032 (A000096 (n + 1)).toNat

end

end A252026.P6035195116925380195

/-!
# A252027: Number of (n+2) X (3+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252027, there is no canonical definition to state claims against.
-/

/-! ## A252027.P17415162560357662895

`A252032(∑[n+2]+4)`
-/

namespace A252027.P17415162560357662895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252027.P17415162560357662895

/-! ## A252027.P11235261283790395527

`lcm((-1)^n, A252032(A167614(n+1)))`
-/

namespace A252027.P11235261283790395527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A252032 (A167614 (n + 1)).toNat)

end

end A252027.P11235261283790395527

/-! ## A252027.P15077491826037531425

`or(A000007(n), A252032(A167614(n+1)))`
-/

namespace A252027.P15077491826037531425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252032 (A167614 (n + 1)).toNat)

end

end A252027.P15077491826037531425

/-! ## A252027.P11021024209779611886

`A252032(A167614(n+1))+A000007(n+1)`
-/

namespace A252027.P11021024209779611886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A252027.P11021024209779611886

/-! ## A252027.P16754733294357111809

`A252032(A167614(n+1))+A000038(n+1)`
-/

namespace A252027.P16754733294357111809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A252027.P16754733294357111809

/-!
# A252028: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252028, there is no canonical definition to state claims against.
-/

/-! ## A252028.P14982501054578473013

`A252032(A374004(n+1))`
-/

namespace A252028.P14982501054578473013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A374004 (n + 1)).toNat

end

end A252028.P14982501054578473013

/-! ## A252028.P13612673766335490079

`A252032(A167614(n+2)+1)`
-/

namespace A252028.P13612673766335490079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A167614 (n + 2) + 1).toNat

end

end A252028.P13612673766335490079

/-! ## A252028.P14270955976556002890

`A252032(A167487(n+2)-3)`
-/

namespace A252028.P14270955976556002890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A167487 (n + 2) - 3).toNat

end

end A252028.P14270955976556002890

/-! ## A252028.P10598158199706004657

`A252032(A034856(n+2)+6)`
-/

namespace A252028.P10598158199706004657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A034856 (n + 2) + 6).toNat

end

end A252028.P10598158199706004657

/-! ## A252028.P8646630016238813909

`A252032(Δ[A023545(n+1)-n²])`
-/

namespace A252028.P8646630016238813909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (f1 (n + 1) - f1 n).toNat

end

end A252028.P8646630016238813909

/-!
# A252029: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252029, there is no canonical definition to state claims against.
-/

/-! ## A252029.P12441403384798472384

`A252032(A374005(n+1))`
-/

namespace A252029.P12441403384798472384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A374005 (n + 1)).toNat

end

end A252029.P12441403384798472384

/-! ## A252029.P476326309756196510

`A252032(A167499(n+3))`
-/

namespace A252029.P476326309756196510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A167499 (n + 3)).toNat

end

end A252029.P476326309756196510

/-! ## A252029.P10408205760625952379

`A252032(A056000(n)+15)`
-/

namespace A252029.P10408205760625952379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A056000 n + 15).toNat

end

end A252029.P10408205760625952379

/-! ## A252029.P16149348105452972245

`A252032(A046691(n+3))`
-/

namespace A252029.P16149348105452972245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A046691 (n + 3)).toNat

end

end A252029.P16149348105452972245

/-! ## A252029.P3631166076182357557

`A252032(Δ[A023545(n+1)])`
-/

namespace A252029.P3631166076182357557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (f1 (n + 1) - f1 n).toNat

end

end A252029.P3631166076182357557

/-!
# A252030: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252030, there is no canonical definition to state claims against.
-/

/-! ## A252030.P5662347014126354648

`A252032(A374007(n+1))`
-/

namespace A252030.P5662347014126354648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A374007 (n + 1)).toNat

end

end A252030.P5662347014126354648

/-! ## A252030.P8750486087802874833

`A252032(A167614(n+4)+3)`
-/

namespace A252030.P8750486087802874833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A167614 (n + 4) + 3).toNat

end

end A252030.P8750486087802874833

/-! ## A252030.P11798502000074041011

`A252032(A000217(n+5)+6)`
-/

namespace A252030.P11798502000074041011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A000217 (n + 5) + 6).toNat

end

end A252030.P11798502000074041011

/-! ## A252030.P460405022542292211

`A252032(A161680(n+6)+6)`
-/

namespace A252030.P460405022542292211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A161680 (n + 6) + 6).toNat

end

end A252030.P460405022542292211

/-! ## A252030.P5289818050401951999

`A252032(n+10+A000124(n+4))`
-/

namespace A252030.P5289818050401951999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 ((n + 10 : ℤ) + A000124 (n + 4)).toNat

end

end A252030.P5289818050401951999

/-!
# A252031: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 2 or 4.

The programs for A252031, there is no canonical definition to state claims against.
-/

/-! ## A252031.P9026131667156880038

`A252032(A374008(n+1))`
-/

namespace A252031.P9026131667156880038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A374008 (n + 1)).toNat

end

end A252031.P9026131667156880038

/-! ## A252031.P5131769125823055833

`A252032(A167487(n+5))`
-/

namespace A252031.P5131769125823055833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A167487 (n + 5)).toNat

end

end A252031.P5131769125823055833

/-! ## A252031.P11385142261007136711

`A252032(A000124(n+6)+6)`
-/

namespace A252031.P11385142261007136711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (A000124 (n + 6) + 6).toNat

end

end A252031.P11385142261007136711

/-! ## A252031.P615130874695945115

`A252032(eq[8, A131818(n+1)])`
-/

namespace A252031.P615130874695945115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252031.P615130874695945115

/-! ## A252031.P5189062112755237802

`A252032(eq[6, A193592(n)])`
-/

namespace A252031.P5189062112755237802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252031.P5189062112755237802

/-!
# A252033: Number of (n+2)X(1+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252033, there is no canonical definition to state claims against.
-/

/-! ## A252033.P14289567790461768126

`A252039(∑[n]+1)`
-/

namespace A252033.P14289567790461768126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252033.P14289567790461768126

/-! ## A252033.P13585143661945558589

`and(-1, A252039(A000124(n)))`
-/

namespace A252033.P13585143661945558589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252039 (A000124 n).toNat)

end

end A252033.P13585143661945558589

/-! ## A252033.P15938119155662408690

`record[A252039(A276954(n+1))]`
-/

namespace A252033.P15938119155662408690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252033.P15938119155662408690

/-! ## A252033.P10908090004246821672

`record[A252039(A286234(n+1))]`
-/

namespace A252033.P10908090004246821672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252033.P10908090004246821672

/-! ## A252033.P14208977819063640253

`record[A252039(n+1)/A007318(n)]`
-/

namespace A252033.P14208977819063640253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252039 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252033.P14208977819063640253

/-!
# A252034: Number of (n+2)X(2+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252034, there is no canonical definition to state claims against.
-/

/-! ## A252034.P13672898339762407656

`A252039(∑[n+1]+2)`
-/

namespace A252034.P13672898339762407656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252034.P13672898339762407656

/-! ## A252034.P18056882927277369781

`record[A033806(n)*A252039(n+2)]`
-/

namespace A252034.P18056882927277369781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 n * A252039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252034.P18056882927277369781

/-! ## A252034.P7797936149159273969

`record[A154990(n+1)*A252039(n+3)]`
-/

namespace A252034.P7797936149159273969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A252039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252034.P7797936149159273969

/-! ## A252034.P4932022002255255786

`A057427(n+4)*A252039(A022856(n+5))`
-/

namespace A252034.P4932022002255255786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A252039 (A022856 (n + 5)).toNat

end

end A252034.P4932022002255255786

/-! ## A252034.P11524676248327936224

`record[A252039(A198455(n+1))]`
-/

namespace A252034.P11524676248327936224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252034.P11524676248327936224

/-!
# A252035: Number of (n+2)X(3+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252035, there is no canonical definition to state claims against.
-/

/-! ## A252035.P9491447887706383637

`A252039(∑[n+2]+4)`
-/

namespace A252035.P9491447887706383637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252035.P9491447887706383637

/-! ## A252035.P6506559468949806773

`A252039(A167614(n+1))+A011731(n)`
-/

namespace A252035.P6506559468949806773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A167614 (n + 1)).toNat + A011731 n

end

end A252035.P6506559468949806773

/-! ## A252035.P17839830089452472285

`A252039(A167614(n+1))+A011742(n)`
-/

namespace A252035.P17839830089452472285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A167614 (n + 1)).toNat + A011742 n

end

end A252035.P17839830089452472285

/-! ## A252035.P8489447837370453500

`A252039(A167614(n+1))+A025443(n)`
-/

namespace A252035.P8489447837370453500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A167614 (n + 1)).toNat + A025443 n

end

end A252035.P8489447837370453500

/-! ## A252035.P10090737289130442133

`A252039(A167614(n+1))+A061858(n)`
-/

namespace A252035.P10090737289130442133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A167614 (n + 1)).toNat + A061858 n

end

end A252035.P10090737289130442133

/-!
# A252036: Number of (n+2)X(4+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252036, there is no canonical definition to state claims against.
-/

/-! ## A252036.P5132661582361542185

`A252039(A374004(n+1))`
-/

namespace A252036.P5132661582361542185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A374004 (n + 1)).toNat

end

end A252036.P5132661582361542185

/-! ## A252036.P4498662901628699013

`A252039(A145018(n+4))`
-/

namespace A252036.P4498662901628699013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A145018 (n + 4)).toNat

end

end A252036.P4498662901628699013

/-! ## A252036.P17956406246313945841

`A252039(A141214(n)+7)`
-/

namespace A252036.P17956406246313945841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A141214 n + 7).toNat

end

end A252036.P17956406246313945841

/-! ## A252036.P12800506355673950741

`A252039(A052905(n)+9)`
-/

namespace A252036.P12800506355673950741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A052905 n + 9).toNat

end

end A252036.P12800506355673950741

/-! ## A252036.P8839269299308109089

`A252039(A055999(n)+10)`
-/

namespace A252036.P8839269299308109089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A055999 n + 10).toNat

end

end A252036.P8839269299308109089

/-!
# A252037: Number of (n+2)X(5+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252037, there is no canonical definition to state claims against.
-/

/-! ## A252037.P17526602771145770281

`A252039(A374005(n+1))`
-/

namespace A252037.P17526602771145770281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A374005 (n + 1)).toNat

end

end A252037.P17526602771145770281

/-! ## A252037.P17516551831266956281

`A252039(A167499(n+3))`
-/

namespace A252037.P17516551831266956281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A167499 (n + 3)).toNat

end

end A252037.P17516551831266956281

/-! ## A252037.P14182493458137300449

`A252039(A155212(n)+13)`
-/

namespace A252037.P14182493458137300449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A155212 n + 13).toNat

end

end A252037.P14182493458137300449

/-! ## A252037.P17461588817284474796

`A252039(A056000(n)+15)`
-/

namespace A252037.P17461588817284474796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A056000 n + 15).toNat

end

end A252037.P17461588817284474796

/-! ## A252037.P12300018896534590379

`A252039(eq[7, A066657(n)])`
-/

namespace A252037.P12300018896534590379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252037.P12300018896534590379

/-!
# A252038: Number of (n+2)X(6+2) 0..4 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A252038, there is no canonical definition to state claims against.
-/

/-! ## A252038.P10602421755573945504

`A252039(A374007(n+1))`
-/

namespace A252038.P10602421755573945504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A374007 (n + 1)).toNat

end

end A252038.P10602421755573945504

/-! ## A252038.P15011330110601549900

`A252039(A166136(n+4))`
-/

namespace A252038.P15011330110601549900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A166136 (n + 4)).toNat

end

end A252038.P15011330110601549900

/-! ## A252038.P16991039273351885863

`A252039(A056115(n)+21)`
-/

namespace A252038.P16991039273351885863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A056115 n + 21).toNat

end

end A252038.P16991039273351885863

/-! ## A252038.P9792783024574836029

`A252039(A167499(n+4)+1)`
-/

namespace A252038.P9792783024574836029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A167499 (n + 4) + 1).toNat

end

end A252038.P9792783024574836029

/-! ## A252038.P3254868565672218323

`A252039(A167487(n+4)-1)`
-/

namespace A252038.P3254868565672218323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252039 (A167487 (n + 4) - 1).toNat

end

end A252038.P3254868565672218323

/-!
# A252042: Primes p such that 2*p^3 + 1 and 2*p^3 + 3 are also primes.

The programs for A252042, there is no canonical definition to state claims against.
-/

/-! ## A252042.P15978984496266037306

`∩[A153507(n+1), A309857(n+1)]`
-/

namespace A252042.P15978984496266037306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252042.P15978984496266037306

/-!
# A252043: a(n) is the concatenation of first n terms of A033307.

The programs for A252043, there is no canonical definition to state claims against.
-/

/-! ## A252043.P7908176807921885615

`A224841(∑[n+1])`
-/

namespace A252043.P7908176807921885615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252043.P7908176807921885615

/-! ## A252043.P7544544248256007109

`record[A224841(A038722(n+1))]`
-/

namespace A252043.P7544544248256007109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252043.P7544544248256007109

/-! ## A252043.P4483414644688046583

`record[A224841(A093995(n+1)-n)]`
-/

namespace A252043.P4483414644688046583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A093995 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252043.P4483414644688046583

/-! ## A252043.P6538377829055362642

`record[A224841(A057944(A011773(n+1)))]`
-/

namespace A252043.P6538377829055362642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A057944 (A011773 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252043.P6538377829055362642

/-! ## A252043.P2354314823209701113

`record[A224841(A057944(A064989(n+1)))]`
-/

namespace A252043.P2354314823209701113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A057944 (A064989 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252043.P2354314823209701113

/-!
# A252044: Numbers n such that s + 1/p = 0, where {d(i), i=1..q} are the q distinct prime divisors of n, s = Sum_{i=1..q} (-1)^(i+1)*i/d(i) and p = Product_{i=1..q} d(i).

The programs for A252044, there is no canonical definition to state claims against.
-/

/-! ## A252044.P4773997094467463798

`∩[A089341(n+1), A360799(n)]`
-/

namespace A252044.P4773997094467463798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P4773997094467463798

/-! ## A252044.P8699874560247837737

`∩[A089341(n+1), A291442(n+1)]`
-/

namespace A252044.P8699874560247837737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P8699874560247837737

/-! ## A252044.P14348430470133803310

`filter[A089341(n+1), A136442(#)]`
-/

namespace A252044.P14348430470133803310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136442 (f1 j).toNat = 1) n)

end

end A252044.P14348430470133803310

/-! ## A252044.P8794300760704487166

`∩[A089341(n+1), A190899(n+1)]`
-/

namespace A252044.P8794300760704487166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P8794300760704487166

/-! ## A252044.P4065524011120433550

`∩[A089341(n+1), A298534(n+1)]`
-/

namespace A252044.P4065524011120433550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252044.P4065524011120433550

/-!
# A252045: Number of (n+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252045, there is no canonical definition to state claims against.
-/

/-! ## A252045.P9555902322604906443

`A252053(∑[4*n]+1)`
-/

namespace A252045.P9555902322604906443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252045.P9555902322604906443

/-! ## A252045.P11373729837481260557

`lcm(2, A252053(A001844(n)))`
-/

namespace A252045.P11373729837481260557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252053 (A001844 n).toNat)

end

end A252045.P11373729837481260557

/-! ## A252045.P13408344380459608858

`record[gcd(A114327(n), A252053(n+1))]`
-/

namespace A252045.P13408344380459608858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252053 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252045.P13408344380459608858

/-! ## A252045.P17513170026942266938

`A025155(n)!*A252053(A001844(n))`
-/

namespace A252045.P17513170026942266938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025155 n).toNat : ℤ) * A252053 (A001844 n).toNat

end

end A252045.P17513170026942266938

/-! ## A252045.P15489503208099502559

`A000045(gcd(n, n+1))*A252053(A001844(n))`
-/

namespace A252045.P15489503208099502559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A252053 (A001844 n).toNat

end

end A252045.P15489503208099502559

/-!
# A252046: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252046, there is no canonical definition to state claims against.
-/

/-! ## A252046.P2601371279085533538

`A252053(∑[n]+1)`
-/

namespace A252046.P2601371279085533538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252046.P2601371279085533538

/-! ## A252046.P14169908276245033497

`lcm(2, A252053(A000124(n)))`
-/

namespace A252046.P14169908276245033497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252053 (A000124 n).toNat)

end

end A252046.P14169908276245033497

/-! ## A252046.P18045734370144136916

`record[A252053(n+1)/A008459(n)]`
-/

namespace A252046.P18045734370144136916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252053 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252046.P18045734370144136916

/-! ## A252046.P7685345603866499337

`record[gcd(A002262(n), A252053(n+1))]`
-/

namespace A252046.P7685345603866499337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252053 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252046.P7685345603866499337

/-! ## A252046.P17172482605141284223

`record[root(A252053(n+1), A003983(n+1))]`
-/

namespace A252046.P17172482605141284223
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252053 (n + 1) : ℝ) ^ (1 / (A003983 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252046.P17172482605141284223

/-!
# A252047: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252047, there is no canonical definition to state claims against.
-/

/-! ## A252047.P3818930640271951258

`A252053(∑[n+1]+2)`
-/

namespace A252047.P3818930640271951258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252047.P3818930640271951258

/-! ## A252047.P7850784410976957105

`lcm(2, A252053(A000096(n)+3))`
-/

namespace A252047.P7850784410976957105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252053 (A000096 n + 3).toNat)

end

end A252047.P7850784410976957105

/-! ## A252047.P11294749427372173300

`record[gcd(A002262(n), A252053(n+2))]`
-/

namespace A252047.P11294749427372173300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252053 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252047.P11294749427372173300

/-! ## A252047.P11355365674938423544

`A252053(A000096(n)+3)%A252033(n+1)`
-/

namespace A252047.P11355365674938423544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252053 (A000096 n + 3).toNat) (A252033 (n + 1))

end

end A252047.P11355365674938423544

/-! ## A252047.P13540629185237133448

`A252053(A000096(n)+3)+and(1, A179058(n+1)/3)`
-/

namespace A252047.P13540629185237133448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A000096 n + 3).toNat + Int.land 1 (SequenceMachineLib.roundAway ((A179058 (n + 1) : ℚ) / 3))

end

end A252047.P13540629185237133448

/-!
# A252048: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252048, there is no canonical definition to state claims against.
-/

/-! ## A252048.P2395404612776234040

`A252053(∑[n+2]+4)`
-/

namespace A252048.P2395404612776234040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252048.P2395404612776234040

/-! ## A252048.P6893844830586963914

`lcm(2, A252053(A167614(n+1)))`
-/

namespace A252048.P6893844830586963914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252053 (A167614 (n + 1)).toNat)

end

end A252048.P6893844830586963914

/-! ## A252048.P9943624359071522470

`A252053(A167614(n+1))+A025469(n)`
-/

namespace A252048.P9943624359071522470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A167614 (n + 1)).toNat + A025469 n

end

end A252048.P9943624359071522470

/-! ## A252048.P9610193739531125293

`A252053(A167614(n+1))%A236733(n+1)`
-/

namespace A252048.P9610193739531125293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252053 (A167614 (n + 1)).toNat) (A236733 (n + 1))

end

end A252048.P9610193739531125293

/-! ## A252048.P12152774923186754941

`A252053(A167614(n+1))+A035455(2*n+1)`
-/

namespace A252048.P12152774923186754941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A167614 (n + 1)).toNat + A035455 (2 * n + 1)

end

end A252048.P12152774923186754941

/-!
# A252049: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252049, there is no canonical definition to state claims against.
-/

/-! ## A252049.P15671256786932177593

`A252053(A141214(n)+7)`
-/

namespace A252049.P15671256786932177593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A141214 n + 7).toNat

end

end A252049.P15671256786932177593

/-! ## A252049.P4249437309887921079

`A252053(A167614(n+2)+1)`
-/

namespace A252049.P4249437309887921079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A167614 (n + 2) + 1).toNat

end

end A252049.P4249437309887921079

/-! ## A252049.P18236727316065312622

`A252053(A166136(n+2)-2)`
-/

namespace A252049.P18236727316065312622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A166136 (n + 2) - 2).toNat

end

end A252049.P18236727316065312622

/-! ## A252049.P5006605397650215723

`lcm(2, A252053(Δ[A005586(n)]+5))`
-/

namespace A252049.P5006605397650215723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252053 (f1 (n + 1) - f1 n + 5).toNat)

end

end A252049.P5006605397650215723

/-! ## A252049.P113962472295209302

`A252053(A166136(n+1)+1+n)`
-/

namespace A252049.P113962472295209302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A252049.P113962472295209302

/-!
# A252050: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252050, there is no canonical definition to state claims against.
-/

/-! ## A252050.P17826758759893081173

`A252053(A167499(n+3))`
-/

namespace A252050.P17826758759893081173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A167499 (n + 3)).toNat

end

end A252050.P17826758759893081173

/-! ## A252050.P3326676258839563296

`A252053(A027379(n+2)+8)`
-/

namespace A252050.P3326676258839563296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A027379 (n + 2) + 8).toNat

end

end A252050.P3326676258839563296

/-! ## A252050.P13724817786521146697

`A252053(A000217(n+4)+5)%A252052(n+1)`
-/

namespace A252050.P13724817786521146697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252053 (A000217 (n + 4) + 5).toNat) (A252052 (n + 1))

end

end A252050.P13724817786521146697

/-! ## A252050.P15006453528018349185

`A252053(∑[n+5]+6)`
-/

namespace A252050.P15006453528018349185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252050.P15006453528018349185

/-! ## A252050.P10370018120906634533

`lcm(2, A252053(Δ[A023545(n+1)]))`
-/

namespace A252050.P10370018120906634533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252053 (f1 (n + 1) - f1 n).toNat)

end

end A252050.P10370018120906634533

/-!
# A252051: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252051, there is no canonical definition to state claims against.
-/

/-! ## A252051.P17396373585448674024

`A252053(A166136(n+4))`
-/

namespace A252051.P17396373585448674024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A166136 (n + 4)).toNat

end

end A252051.P17396373585448674024

/-! ## A252051.P10509728283179516996

`A252053(A167499(n+4)+1)`
-/

namespace A252051.P10509728283179516996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A167499 (n + 4) + 1).toNat

end

end A252051.P10509728283179516996

/-! ## A252051.P12437658771697387470

`A252053(A133263(n+6)-(n+2))`
-/

namespace A252051.P12437658771697387470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A252051.P12437658771697387470

/-! ## A252051.P16480858141368665477

`A252053(eq[6, A025581(n)]-2*n)`
-/

namespace A252051.P16480858141368665477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A252051.P16480858141368665477

/-! ## A252051.P1146281688854129654

`A252053(A027379(n+9)-A008588(n+7))`
-/

namespace A252051.P1146281688854129654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A027379 (n + 9) - A008588 (n + 7)).toNat

end

end A252051.P1146281688854129654

/-!
# A252052: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not 1 3 6 or 8 and every diagonal and antidiagonal sum 1 3 6 or 8.

The programs for A252052, there is no canonical definition to state claims against.
-/

/-! ## A252052.P16190471309157776116

`A252053(A166136(n+5)+1)`
-/

namespace A252052.P16190471309157776116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A166136 (n + 5) + 1).toNat

end

end A252052.P16190471309157776116

/-! ## A252052.P13983198723414771763

`A252053(A020719(A000217(n+6)))`
-/

namespace A252052.P13983198723414771763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A020719 (A000217 (n + 6)).toNat).toNat

end

end A252052.P13983198723414771763

/-! ## A252052.P800958819392214092

`A252053(A000217(A020719(n))-n)`
-/

namespace A252052.P800958819392214092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A000217 (A020719 n).toNat - (n : ℤ)).toNat

end

end A252052.P800958819392214092

/-! ## A252052.P15678064214493188963

`A252053(A167499(n+3)+A005408(n+6))`
-/

namespace A252052.P15678064214493188963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A167499 (n + 3) + A005408 (n + 6)).toNat

end

end A252052.P15678064214493188963

/-! ## A252052.P8364161997324496902

`A252053(A374008(n+1))`
-/

namespace A252052.P8364161997324496902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (A374008 (n + 1)).toNat

end

end A252052.P8364161997324496902

/-!
# A252055: Number of products A000201(i)*A001950(j) = n.

The programs for A252055, the canonical program `A252055.P14347574890606999635` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252055 has offset 1).

The definition of A252055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252055.P14347574890606999635

`∑{d}[n+1, A003849(#-1)*A005614((n+1)/#-1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A252055

/-- `∑{d}[n+1, A003849(#-1)*A005614((n+1)/#-1)]` -/
def P14347574890606999635.Spec : Prop :=
  ∀ n, P14347574890606999635.a n = A252055 (n + 1)

theorem P14347574890606999635.correct : P14347574890606999635.Spec := by
  intro n
  simp only [A252055, Nat.add_sub_cancel]

end A252055

/-! ## A252055.P4976097927960289008

`A267463(A318612(3*n+2))+A003849(n)`
-/

namespace A252055.P4976097927960289008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A318612 (3 * n + 2)).toNat + A003849 n

end

end A252055.P4976097927960289008

namespace A252055

/-- `A267463(A318612(3*n+2))+A003849(n)` -/
def P4976097927960289008.Spec : Prop :=
  ∀ n, P4976097927960289008.a n = A252055 (n + 1)

end A252055

/-! ## A252055.P6881040365194763030

`A250068(n+1)-A000035(A006504(n+1))`
-/

namespace A252055.P6881040365194763030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1) - A000035 (A006504 (n + 1)).toNat

end

end A252055.P6881040365194763030

namespace A252055

/-- `A250068(n+1)-A000035(A006504(n+1))` -/
def P6881040365194763030.Spec : Prop :=
  ∀ n, P6881040365194763030.a n = A252055 (n + 1)

end A252055

/-! ## A252055.P6211404104449628482

`A338486(3*n+2)%A240542(A286001(n+1))`
-/

namespace A252055.P6211404104449628482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338486 (3 * n + 2)) (A240542 (A286001 (n + 1)).toNat)

end

end A252055.P6211404104449628482

namespace A252055

/-- `A338486(3*n+2)%A240542(A286001(n+1))` -/
def P6211404104449628482.Spec : Prop :=
  ∀ n, P6211404104449628482.a n = A252055 (n + 1)

end A252055

/-! ## A252055.P5916366080216181006

`and(A000040(A223088(3*n+2)), A165125(n+4))`
-/

namespace A252055.P5916366080216181006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A223088 (3 * n + 2)).toNat) (A165125 (n + 4))

end

end A252055.P5916366080216181006

namespace A252055

/-- `and(A000040(A223088(3*n+2)), A165125(n+4))` -/
def P5916366080216181006.Spec : Prop :=
  ∀ n, P5916366080216181006.a n = A252055 (n + 1)

end A252055

/-!
# A252057: Number of (n+2) X (n+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252057, there is no canonical definition to state claims against.
-/

/-! ## A252057.P17706047987423551042

`A252065(∑[4*n]+1)`
-/

namespace A252057.P17706047987423551042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252057.P17706047987423551042

/-! ## A252057.P11879258506985268252

`record[gcd(A252065(n+1), A296339(n))]`
-/

namespace A252057.P11879258506985268252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A252065 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252057.P11879258506985268252

/-! ## A252057.P18145623878186533137

`A252065(A001844(n))+A225099(n)`
-/

namespace A252057.P18145623878186533137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A001844 n).toNat + A225099 n

end

end A252057.P18145623878186533137

/-! ## A252057.P10650946583696585032

`or(A000007(n), A252065(A001844(n)))`
-/

namespace A252057.P10650946583696585032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252065 (A001844 n).toNat)

end

end A252057.P10650946583696585032

/-! ## A252057.P5311775130786803562

`or(A000122(n), A252065(A001844(n)))`
-/

namespace A252057.P5311775130786803562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A252065 (A001844 n).toNat)

end

end A252057.P5311775130786803562

/-!
# A252058: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252058, there is no canonical definition to state claims against.
-/

/-! ## A252058.P17905611390688069056

`A252065(∑[n]+1)`
-/

namespace A252058.P17905611390688069056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252058.P17905611390688069056

/-! ## A252058.P3100339796184422870

`record[A010054(n)*A252065(n+1)]`
-/

namespace A252058.P3100339796184422870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252058.P3100339796184422870

/-! ## A252058.P17846023907082267724

`record[A252065(n+1)/A008459(n)]`
-/

namespace A252058.P17846023907082267724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252065 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252058.P17846023907082267724

/-! ## A252058.P15371827225268721602

`record[A252065(n+1)/A008518(n)]`
-/

namespace A252058.P15371827225268721602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252065 (n + 1) : ℚ) / (A008518 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252058.P15371827225268721602

/-! ## A252058.P1364947004294546156

`record[gcd(A002262(n), A252065(n+1))]`
-/

namespace A252058.P1364947004294546156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252065 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252058.P1364947004294546156

/-!
# A252059: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252059, there is no canonical definition to state claims against.
-/

/-! ## A252059.P13199266741200314917

`A252065(∑[n+1]+2)`
-/

namespace A252059.P13199266741200314917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252059.P13199266741200314917

/-! ## A252059.P17526300254152393188

`record[A010054(n)*A252065(n+2)]`
-/

namespace A252059.P17526300254152393188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252065 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252059.P17526300254152393188

/-! ## A252059.P7099045293393981345

`record[gcd(A002262(n), A252065(n+2))]`
-/

namespace A252059.P7099045293393981345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252065 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252059.P7099045293393981345

/-! ## A252059.P10281946000817985640

`A252065(A167487(n)-5)+A034530(n+1)`
-/

namespace A252059.P10281946000817985640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A167487 n - 5).toNat + A034530 (n + 1)

end

end A252059.P10281946000817985640

/-! ## A252059.P6944451064935678131

`A252065(Δ[A005581(n)]+3)+A000038(n+1)`
-/

namespace A252059.P6944451064935678131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (f1 (n + 1) - f1 n + 3).toNat + A000038 (n + 1)

end

end A252059.P6944451064935678131

/-!
# A252060: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252060, there is no canonical definition to state claims against.
-/

/-! ## A252060.P7265178137360454686

`A252065(∑[n+2]+4)`
-/

namespace A252060.P7265178137360454686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252060.P7265178137360454686

/-! ## A252060.P2688105337005903018

`or(char[1], A252065(A167614(n+1)))`
-/

namespace A252060.P2688105337005903018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252065 (A167614 (n + 1)).toNat)

end

end A252060.P2688105337005903018

/-! ## A252060.P10734010111524885567

`A252065(A167614(n+1))+A025469(n)`
-/

namespace A252060.P10734010111524885567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A167614 (n + 1)).toNat + A025469 n

end

end A252060.P10734010111524885567

/-! ## A252060.P6451026040976241539

`lcm(A033999(n), A252065(A167614(n+1)))`
-/

namespace A252060.P6451026040976241539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252065 (A167614 (n + 1)).toNat)

end

end A252060.P6451026040976241539

/-! ## A252060.P15242444946935358599

`(A000041(n)%2)!*A252065(A167614(n+1))`
-/

namespace A252060.P15242444946935358599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A252065 (A167614 (n + 1)).toNat

end

end A252060.P15242444946935358599

/-!
# A252061: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252061, there is no canonical definition to state claims against.
-/

/-! ## A252061.P5922792705793921937

`A252065(A374004(n+1))`
-/

namespace A252061.P5922792705793921937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A374004 (n + 1)).toNat

end

end A252061.P5922792705793921937

/-! ## A252061.P11304387942384985081

`A252065(A055999(n)+10)`
-/

namespace A252061.P11304387942384985081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A055999 n + 10).toNat

end

end A252061.P11304387942384985081

/-! ## A252061.P10527884162713853859

`A252065(A167614(n+2)+1)`
-/

namespace A252061.P10527884162713853859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A167614 (n + 2) + 1).toNat

end

end A252061.P10527884162713853859

/-! ## A252061.P18251853880142183834

`A252065(A112355(n+1)+4)`
-/

namespace A252061.P18251853880142183834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A112355 (n + 1) + 4).toNat

end

end A252061.P18251853880142183834

/-! ## A252061.P8547208569819824065

`A252065(A167487(n+2)-3)`
-/

namespace A252061.P8547208569819824065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A167487 (n + 2) - 3).toNat

end

end A252061.P8547208569819824065

/-!
# A252062: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252062, there is no canonical definition to state claims against.
-/

/-! ## A252062.P12791376656354948617

`A252065(A374005(n+1))`
-/

namespace A252062.P12791376656354948617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A374005 (n + 1)).toNat

end

end A252062.P12791376656354948617

/-! ## A252062.P14672822443475903904

`A252065(A167499(n+3))`
-/

namespace A252062.P14672822443475903904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A167499 (n + 3)).toNat

end

end A252062.P14672822443475903904

/-! ## A252062.P416788292329301805

`A252065(A000217(n+4)+5)`
-/

namespace A252062.P416788292329301805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A000217 (n + 4) + 5).toNat

end

end A252062.P416788292329301805

/-! ## A252062.P421356605396810952

`A252065(A038722(Δ[A023545(n+1)]))`
-/

namespace A252062.P421356605396810952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A252062.P421356605396810952

/-! ## A252062.P3959094131460339314

`A252065(Δ[A023545(n+1)])`
-/

namespace A252062.P3959094131460339314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (f1 (n + 1) - f1 n).toNat

end

end A252062.P3959094131460339314

/-!
# A252063: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252063, there is no canonical definition to state claims against.
-/

/-! ## A252063.P10277396359937582044

`A252065(A374007(n+1))`
-/

namespace A252063.P10277396359937582044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A374007 (n + 1)).toNat

end

end A252063.P10277396359937582044

/-! ## A252063.P17142649309109576735

`A252065(A133263(n+5)+4)`
-/

namespace A252063.P17142649309109576735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A133263 (n + 5) + 4).toNat

end

end A252063.P17142649309109576735

/-! ## A252063.P18333641787685648242

`A252065(A000124(n+5)+5)`
-/

namespace A252063.P18333641787685648242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A000124 (n + 5) + 5).toNat

end

end A252063.P18333641787685648242

/-! ## A252063.P9046068332394062128

`A252065(A000217(n+5)+6)`
-/

namespace A252063.P9046068332394062128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A000217 (n + 5) + 6).toNat

end

end A252063.P9046068332394062128

/-! ## A252063.P15159009938124395340

`A252065(A052905(n+2)+11)`
-/

namespace A252063.P15159009938124395340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A052905 (n + 2) + 11).toNat

end

end A252063.P15159009938124395340

/-!
# A252064: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 4.

The programs for A252064, there is no canonical definition to state claims against.
-/

/-! ## A252064.P335665510820351637

`A252065(A374008(n+1))`
-/

namespace A252064.P335665510820351637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A374008 (n + 1)).toNat

end

end A252064.P335665510820351637

/-! ## A252064.P11834132096772052442

`A252065(A056119(n)+28)`
-/

namespace A252064.P11834132096772052442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A056119 n + 28).toNat

end

end A252064.P11834132096772052442

/-! ## A252064.P9704258260831423298

`A252065(A055999(n+4))`
-/

namespace A252064.P9704258260831423298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (A055999 (n + 4)).toNat

end

end A252064.P9704258260831423298

/-! ## A252064.P7332954782038285818

`A252065(eq[7, A200370(n+1)])`
-/

namespace A252064.P7332954782038285818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252064.P7332954782038285818

/-! ## A252064.P3661151579032296862

`A252065(eq[10, A185782(n+1)])`
-/

namespace A252064.P3661151579032296862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252064.P3661151579032296862

/-!
# A252066: Numbers n such that n^2 is a sum of 2 and also of 4 consecutive primes.

The programs for A252066, there is no canonical definition to state claims against.
-/

/-! ## A252066.P18335888694565895127

`∩[A051395(n+1), A074924(n+1)]`
-/

namespace A252066.P18335888694565895127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P18335888694565895127

/-! ## A252066.P13048012949983727872

`∩[2*A139013(n+1), A051395(n+1)]`
-/

namespace A252066.P13048012949983727872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P13048012949983727872

/-! ## A252066.P15387955389283521149

`∩[2*A226152(n+1), A074924(n+1)]`
-/

namespace A252066.P15387955389283521149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P15387955389283521149

/-! ## A252066.P16468420389677772409

`2*∩[A139013(n+1), A226152(n+1)]`
-/

namespace A252066.P16468420389677772409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P16468420389677772409

/-! ## A252066.P7606374832468730618

`∩[A051395(n+1), A005843(A139013(n+1))]`
-/

namespace A252066.P7606374832468730618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A139013 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252066.P7606374832468730618

/-!
# A252067: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252067, there is no canonical definition to state claims against.
-/

/-! ## A252067.P18292471514223105165

`A252075(∑[4*n]+1)`
-/

namespace A252067.P18292471514223105165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252067.P18292471514223105165

/-! ## A252067.P225580385471563859

`record[A252075(A152271(n²))]`
-/

namespace A252067.P225580385471563859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252067.P225580385471563859

/-! ## A252067.P14259588324147980178

`record[gcd(A008482(n), A252075(n+1))]`
-/

namespace A252067.P14259588324147980178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A252075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252067.P14259588324147980178

/-! ## A252067.P15977082894113838004

`lcm(A033999(n), A252075(A001844(n)))`
-/

namespace A252067.P15977082894113838004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252075 (A001844 n).toNat)

end

end A252067.P15977082894113838004

/-! ## A252067.P7979216180119447805

`or(A252075(A001844(n)), A269166(n))`
-/

namespace A252067.P7979216180119447805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252075 (A001844 n).toNat) (A269166 n)

end

end A252067.P7979216180119447805

/-!
# A252068: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252068, there is no canonical definition to state claims against.
-/

/-! ## A252068.P11060634506457134374

`A252075(∑[n]+1)`
-/

namespace A252068.P11060634506457134374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252068.P11060634506457134374

/-! ## A252068.P442687508875263603

`record[root(A252075(n+1), A013609(n))]`
-/

namespace A252068.P442687508875263603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252075 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252068.P442687508875263603

/-! ## A252068.P10033895532117620260

`record[root(A252075(n+1), A302997(n))]`
-/

namespace A252068.P10033895532117620260
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252075 (n + 1) : ℝ) ^ (1 / (A302997 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252068.P10033895532117620260

/-! ## A252068.P12714677461261195024

`record[gcd(A014473(n), A252075(n+1))]`
-/

namespace A252068.P12714677461261195024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A252075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252068.P12714677461261195024

/-! ## A252068.P16363073904125013437

`record[A252075(A000217(A152271(n)))]`
-/

namespace A252068.P16363073904125013437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A000217 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252068.P16363073904125013437

/-!
# A252069: Number of (n+2) X (2+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252069, there is no canonical definition to state claims against.
-/

/-! ## A252069.P54047253720552596

`A252075(∑[n+1]+2)`
-/

namespace A252069.P54047253720552596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252069.P54047253720552596

/-! ## A252069.P7768103663093673632

`record[root(A252075(n+2), A013609(n))]`
-/

namespace A252069.P7768103663093673632
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252075 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252069.P7768103663093673632

/-! ## A252069.P9910132840007689650

`record[A252075(A133263(A008611(n)))]`
-/

namespace A252069.P9910132840007689650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252069.P9910132840007689650

/-! ## A252069.P3163990477916116729

`lcm(A033999(n), A252075(A167499(n)-3))`
-/

namespace A252069.P3163990477916116729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252075 (A167499 n - 3).toNat)

end

end A252069.P3163990477916116729

/-! ## A252069.P6347381910799873069

`A252075(A167487(n)-5)%A252059(n+1)`
-/

namespace A252069.P6347381910799873069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252075 (A167487 n - 5).toNat) (A252059 (n + 1))

end

end A252069.P6347381910799873069

/-!
# A252070: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252070, there is no canonical definition to state claims against.
-/

/-! ## A252070.P4782417476322892193

`A252075(∑[n+2]+4)`
-/

namespace A252070.P4782417476322892193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252070.P4782417476322892193

/-! ## A252070.P5804593468098363497

`or(1, A252075(A167614(n+1)))`
-/

namespace A252070.P5804593468098363497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252075 (A167614 (n + 1)).toNat)

end

end A252070.P5804593468098363497

/-! ## A252070.P7302703281016405999

`A014963(A000217(n+3))*A252075(A167614(n+1))`
-/

namespace A252070.P7302703281016405999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 3)).toNat * A252075 (A167614 (n + 1)).toNat

end

end A252070.P7302703281016405999

/-! ## A252070.P5004742787379429369

`record[A252075(A198464(n+1))]`
-/

namespace A252070.P5004742787379429369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252070.P5004742787379429369

/-!
# A252071: Number of (n+2) X (4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252071, there is no canonical definition to state claims against.
-/

/-! ## A252071.P6840383314982467324

`A252075(A141214(n)+7)`
-/

namespace A252071.P6840383314982467324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A141214 n + 7).toNat

end

end A252071.P6840383314982467324

/-! ## A252071.P2031276397709285046

`A252075(A052905(n)+9)`
-/

namespace A252071.P2031276397709285046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A052905 n + 9).toNat

end

end A252071.P2031276397709285046

/-! ## A252071.P15896480471649208589

`A252075(A167614(n+2)+1)`
-/

namespace A252071.P15896480471649208589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A167614 (n + 2) + 1).toNat

end

end A252071.P15896480471649208589

/-! ## A252071.P15580151368144471793

`A252075(A166136(n+2)-2)`
-/

namespace A252071.P15580151368144471793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A166136 (n + 2) - 2).toNat

end

end A252071.P15580151368144471793

/-! ## A252071.P15338432879358522146

`A252075(A167487(n+2)-3)`
-/

namespace A252071.P15338432879358522146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A167487 (n + 2) - 3).toNat

end

end A252071.P15338432879358522146

/-!
# A252072: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252072, there is no canonical definition to state claims against.
-/

/-! ## A252072.P2525355804564619955

`A252075(A167499(n+3))`
-/

namespace A252072.P2525355804564619955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A167499 (n + 3)).toNat

end

end A252072.P2525355804564619955

/-! ## A252072.P2081293115209090803

`A252075(A000217(n+4)+5)`
-/

namespace A252072.P2081293115209090803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A000217 (n + 4) + 5).toNat

end

end A252072.P2081293115209090803

/-! ## A252072.P8474392839517307462

`A252075(eq[6, A131818(n+1)])`
-/

namespace A252072.P8474392839517307462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252072.P8474392839517307462

/-! ## A252072.P3231392180462491717

`A252075(A374005(n+1))`
-/

namespace A252072.P3231392180462491717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A374005 (n + 1)).toNat

end

end A252072.P3231392180462491717

/-! ## A252072.P14986444055972726298

`A252075(A046691(n+3))`
-/

namespace A252072.P14986444055972726298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A046691 (n + 3)).toNat

end

end A252072.P14986444055972726298

/-!
# A252073: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252073, there is no canonical definition to state claims against.
-/

/-! ## A252073.P14350833633015551889

`A252075(A166136(n+4))`
-/

namespace A252073.P14350833633015551889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A166136 (n + 4)).toNat

end

end A252073.P14350833633015551889

/-! ## A252073.P11612547007800231268

`A252075(A000124(n+5)+5)`
-/

namespace A252073.P11612547007800231268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A000124 (n + 5) + 5).toNat

end

end A252073.P11612547007800231268

/-! ## A252073.P15193962956914170501

`A252075(A000217(n+5)+6)`
-/

namespace A252073.P15193962956914170501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A000217 (n + 5) + 6).toNat

end

end A252073.P15193962956914170501

/-! ## A252073.P8500377079341993395

`A252075(A052905(n+2)+11)`
-/

namespace A252073.P8500377079341993395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A052905 (n + 2) + 11).toNat

end

end A252073.P8500377079341993395

/-!
# A252074: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 or 4.

The programs for A252074, there is no canonical definition to state claims against.
-/

/-! ## A252074.P8068884553592507655

`A252075(eq[8, A131818(n+1)])`
-/

namespace A252074.P8068884553592507655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252074.P8068884553592507655

/-! ## A252074.P11192260449204619493

`A252075(A374008(n+1))`
-/

namespace A252074.P11192260449204619493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (A374008 (n + 1)).toNat

end

end A252074.P11192260449204619493

/-! ## A252074.P2482435092743477716

`A252075(eq[4, A219347(n)])`
-/

namespace A252074.P2482435092743477716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252074.P2482435092743477716

/-! ## A252074.P15750192113238160986

`A252075(eq[6, A193592(n)])`
-/

namespace A252074.P15750192113238160986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252074.P15750192113238160986

/-! ## A252074.P6295085747451437077

`A252075(eq[10, A185782(n+1)])`
-/

namespace A252074.P6295085747451437077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252074.P6295085747451437077

/-!
# A252079: Fixed points of permutations A252022 and A252023.

The programs for A252079, there is no canonical definition to state claims against.
-/

/-! ## A252079.P10284338612036605365

`eq[n, A252022(round(sqrt(n²+1)))]`
-/

namespace A252079.P10284338612036605365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252022 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252079.P10284338612036605365

/-! ## A252079.P10106003979930672767

`eq[n+1, A252022(n+1)]+1`
-/

namespace A252079.P10106003979930672767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252079.P10106003979930672767

/-! ## A252079.P14295704056643482734

`eq[n+1, A252023(n+1)]+1`
-/

namespace A252079.P14295704056643482734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252079.P14295704056643482734

/-! ## A252079.P11533487394851635197

`eq[n+1, A262604(n)+a(n-1)]+1` with `a(0)=1`
-/

namespace A252079.P11533487394851635197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A262604 n + f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A252079.P11533487394851635197

/-! ## A252079.P2714832350516779669

`eq[n, A252023(A028310(n))]`
-/

namespace A252079.P2714832350516779669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252023 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A252079.P2714832350516779669

/-!
# A252080: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252080, there is no canonical definition to state claims against.
-/

/-! ## A252080.P13206459399290146373

`A252088(∑[4*n]+1)`
-/

namespace A252080.P13206459399290146373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252080.P13206459399290146373

/-! ## A252080.P15239761741375831900

`record[A003982(n)*A252088(n+1)]`
-/

namespace A252080.P15239761741375831900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252080.P15239761741375831900

/-! ## A252080.P18055513925025114520

`record[gcd(A049581(n), A252088(n+1))]`
-/

namespace A252080.P18055513925025114520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252088 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252080.P18055513925025114520

/-! ## A252080.P9613980591254067532

`lcm(A033999(n), A252088(A001844(n)))`
-/

namespace A252080.P9613980591254067532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252088 (A001844 n).toNat)

end

end A252080.P9613980591254067532

/-! ## A252080.P14172611021755276347

`A252088(A001844(n))+A098852(n+1)`
-/

namespace A252080.P14172611021755276347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A001844 n).toNat + A098852 (n + 1)

end

end A252080.P14172611021755276347

/-!
# A252081: Number of (n+2) X (1+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252081, there is no canonical definition to state claims against.
-/

/-! ## A252081.P16192603713224264363

`A252088(∑[n]+1)`
-/

namespace A252081.P16192603713224264363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252081.P16192603713224264363

/-! ## A252081.P13661774204015716013

`record[A010054(n)*A252088(n+1)]`
-/

namespace A252081.P13661774204015716013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252081.P13661774204015716013

/-! ## A252081.P3910507896564417454

`record[A252088(n+1)/A154334(n)]`
-/

namespace A252081.P3910507896564417454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252088 (n + 1) : ℚ) / (A154334 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252081.P3910507896564417454

/-! ## A252081.P3316496077573781542

`record[root(A252088(n+1), A008279(n))]`
-/

namespace A252081.P3316496077573781542
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252088 (n + 1) : ℝ) ^ (1 / (A008279 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252081.P3316496077573781542

/-! ## A252081.P13477777727423791149

`record[root(A252088(n+1), A002260(n+1))]`
-/

namespace A252081.P13477777727423791149
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252088 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252081.P13477777727423791149

/-!
# A252082: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252082, there is no canonical definition to state claims against.
-/

/-! ## A252082.P5425424157915210520

`A252088(∑[n+1]+2)`
-/

namespace A252082.P5425424157915210520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252082.P5425424157915210520

/-! ## A252082.P11691458986037478580

`record[A010054(n)*A252088(n+2)]`
-/

namespace A252082.P11691458986037478580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252082.P11691458986037478580

/-! ## A252082.P15079917587863709331

`record[A252088(A133263(A008612(n)))]`
-/

namespace A252082.P15079917587863709331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252082.P15079917587863709331

/-! ## A252082.P10899611045607748101

`lcm(A033999(n), A252088(A167487(n)-5))`
-/

namespace A252082.P10899611045607748101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252088 (A167487 n - 5).toNat)

end

end A252082.P10899611045607748101

/-! ## A252082.P5896421950081802152

`A252088(A167487(n)-5)+A000007(n+1)`
-/

namespace A252082.P5896421950081802152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A167487 n - 5).toNat + A000007 (n + 1)

end

end A252082.P5896421950081802152

/-!
# A252083: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252083, there is no canonical definition to state claims against.
-/

/-! ## A252083.P9871403871479918650

`A252088(∑[n+2]+4)`
-/

namespace A252083.P9871403871479918650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252083.P9871403871479918650

/-! ## A252083.P16975130528270004368

`A252088(A167614(n+1))+A185246(n)`
-/

namespace A252083.P16975130528270004368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A167614 (n + 1)).toNat + A185246 n

end

end A252083.P16975130528270004368

/-! ## A252083.P16274618398744233214

`A015256(n)*A252088(A167614(n+1))`
-/

namespace A252083.P16274618398744233214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015256 n * A252088 (A167614 (n + 1)).toNat

end

end A252083.P16274618398744233214

/-! ## A252083.P17971154726930603662

`A252088(A167614(n+1))%A016964(n)`
-/

namespace A252083.P17971154726930603662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252088 (A167614 (n + 1)).toNat) (A016964 n)

end

end A252083.P17971154726930603662

/-! ## A252083.P4974121654197561410

`lcm(A033999(n), A252088(A167614(n+1)))`
-/

namespace A252083.P4974121654197561410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252088 (A167614 (n + 1)).toNat)

end

end A252083.P4974121654197561410

/-!
# A252084: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252084, there is no canonical definition to state claims against.
-/

/-! ## A252084.P10637002083045308735

`A252088(A141214(n)+7)`
-/

namespace A252084.P10637002083045308735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A141214 n + 7).toNat

end

end A252084.P10637002083045308735

/-! ## A252084.P2931485061737069184

`A252088(A052905(n)+9)`
-/

namespace A252084.P2931485061737069184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A052905 n + 9).toNat

end

end A252084.P2931485061737069184

/-! ## A252084.P16509359895322580472

`A252088(A055999(n)+10)`
-/

namespace A252084.P16509359895322580472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A055999 n + 10).toNat

end

end A252084.P16509359895322580472

/-! ## A252084.P2862048869216324823

`A252088(A167614(n+2)+1)`
-/

namespace A252084.P2862048869216324823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A167614 (n + 2) + 1).toNat

end

end A252084.P2862048869216324823

/-! ## A252084.P17015800454381427876

`A252088(A166136(n+2)-2)`
-/

namespace A252084.P17015800454381427876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A166136 (n + 2) - 2).toNat

end

end A252084.P17015800454381427876

/-!
# A252085: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252085, there is no canonical definition to state claims against.
-/

/-! ## A252085.P8370374096684024175

`A252088(A167499(n+3))`
-/

namespace A252085.P8370374096684024175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A167499 (n + 3)).toNat

end

end A252085.P8370374096684024175

/-! ## A252085.P17389852169752303823

`A252088(A000217(n+4)+5)`
-/

namespace A252085.P17389852169752303823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A000217 (n + 4) + 5).toNat

end

end A252085.P17389852169752303823

/-! ## A252085.P15487857144973528802

`A252088(C(n+5, 2)+n+1)`
-/

namespace A252085.P15487857144973528802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (Nat.choose (n + 5) 2 + (n + 1))

end

end A252085.P15487857144973528802

/-! ## A252085.P6734534048194985958

`A252088(A374005(n+1))`
-/

namespace A252085.P6734534048194985958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A374005 (n + 1)).toNat

end

end A252085.P6734534048194985958

/-! ## A252085.P3724112238966482011

`A252088(A046691(n+3))`
-/

namespace A252085.P3724112238966482011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A046691 (n + 3)).toNat

end

end A252085.P3724112238966482011

/-!
# A252086: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252086, there is no canonical definition to state claims against.
-/

/-! ## A252086.P6903317983715011587

`A252088(A166136(n+4))`
-/

namespace A252086.P6903317983715011587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A166136 (n + 4)).toNat

end

end A252086.P6903317983715011587

/-! ## A252086.P6354291798209088202

`A252088(A000217(n+5)+6)`
-/

namespace A252086.P6354291798209088202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A000217 (n + 5) + 6).toNat

end

end A252086.P6354291798209088202

/-! ## A252086.P6365070077175347153

`A252088(Δ[A023545(n+1)]+10)`
-/

namespace A252086.P6365070077175347153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (f1 (n + 1) - f1 n + 10).toNat

end

end A252086.P6365070077175347153

/-! ## A252086.P8461107571615527941

`A252088(A000124(n+6)-(n+1))`
-/

namespace A252086.P8461107571615527941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A252086.P8461107571615527941

/-!
# A252087: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 or 4.

The programs for A252087, there is no canonical definition to state claims against.
-/

/-! ## A252087.P2679485913949319329

`A252088(eq[8, A131818(n+1)])`
-/

namespace A252087.P2679485913949319329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252087.P2679485913949319329

/-! ## A252087.P2272152431891270123

`A252088(A374008(n+1))`
-/

namespace A252087.P2272152431891270123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A374008 (n + 1)).toNat

end

end A252087.P2272152431891270123

/-! ## A252087.P2387581728219003841

`A252088(A055999(n+4))`
-/

namespace A252087.P2387581728219003841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (A055999 (n + 4)).toNat

end

end A252087.P2387581728219003841

/-! ## A252087.P12147407216080472248

`A252088(eq[4, A219347(n)])`
-/

namespace A252087.P12147407216080472248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252087.P12147407216080472248

/-! ## A252087.P12271167146815870051

`A252088(eq[6, A193592(n)])`
-/

namespace A252087.P12271167146815870051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252087.P12271167146815870051

/-!
# A252089: Primes p such that p + 26 is prime.

The programs for A252089, the canonical program `A252089.P2043731028031642140` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252089 has offset 1).

The definition of A252089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252089.P2043731028031642140

`p?[p?[2*n+1]-26]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A252089

/-- `p?[p?[2*n+1]-26]` -/
def P2043731028031642140.Spec : Prop :=
  ∀ n, P2043731028031642140.a n = A252089 (n + 1)

theorem P2043731028031642140.correct : P2043731028031642140.Spec := by
  intro n
  simp only [A252089, Nat.add_sub_cancel]

end A252089

/-! ## A252089.P11717962664050691532

`p?[A086303(n+1)-11]`
-/

namespace A252089.P11717962664050691532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P11717962664050691532

namespace A252089

/-- `p?[A086303(n+1)-11]` -/
def P11717962664050691532.Spec : Prop :=
  ∀ n, P11717962664050691532.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P8151319331801339456

`p?[A028815(n)-27]`
-/

namespace A252089.P8151319331801339456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P8151319331801339456

namespace A252089

/-- `p?[A028815(n)-27]` -/
def P8151319331801339456.Spec : Prop :=
  ∀ n, P8151319331801339456.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P2460369600135752198

`p?[A000040(n+1)-26]`
-/

namespace A252089.P2460369600135752198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P2460369600135752198

namespace A252089

/-- `p?[A000040(n+1)-26]` -/
def P2460369600135752198.Spec : Prop :=
  ∀ n, P2460369600135752198.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P4465419013631562948

`p?[or(1, A000040(2-(n-2*n)))-26]`
-/

namespace A252089.P4465419013631562948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (2 - ((n : ℤ) - (2 * n : ℤ))).toNat) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P4465419013631562948

namespace A252089

/-- `p?[or(1, A000040(2-(n-2*n)))-26]` -/
def P4465419013631562948.Spec : Prop :=
  ∀ n, P4465419013631562948.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P12661161216795243410

`p?[A128059(n)-26]`
-/

namespace A252089.P12661161216795243410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P12661161216795243410

namespace A252089

/-- `p?[A128059(n)-26]` -/
def P12661161216795243410.Spec : Prop :=
  ∀ n, P12661161216795243410.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P17653980992003135342

`p?[A055672(n)-27]`
-/

namespace A252089.P17653980992003135342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P17653980992003135342

namespace A252089

/-- `p?[A055672(n)-27]` -/
def P17653980992003135342.Spec : Prop :=
  ∀ n, P17653980992003135342.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P13323494657721264448

`p?[A023468(p?[2*n+1])]`
-/

namespace A252089.P13323494657721264448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023468 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P13323494657721264448

namespace A252089

/-- `p?[A023468(p?[2*n+1])]` -/
def P13323494657721264448.Spec : Prop :=
  ∀ n, P13323494657721264448.a n = A252089 (n + 1)

theorem P13323494657721264448.correct : P13323494657721264448.Spec := by
  intro n
  simp only [A252089, Nat.add_sub_cancel, A252089.P13323494657721264448.f2, A252089.P13323494657721264448.f1, A252089.P13323494657721264448.a, A252089.P2043731028031642140.f2, A252089.P2043731028031642140.f1, A252089.P2043731028031642140.a, A023468, A023468.P6083773450565060551.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A252089

/-! ## A252089.P7371809993338971963

`p?[A023468(A000040(n+1))]`
-/

namespace A252089.P7371809993338971963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023468 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P7371809993338971963

namespace A252089

/-- `p?[A023468(A000040(n+1))]` -/
def P7371809993338971963.Spec : Prop :=
  ∀ n, P7371809993338971963.a n = A252089 (n + 1)

end A252089

/-! ## A252089.P2370979589542392403

`p?[A023470(A000040(n+1)+2)]`
-/

namespace A252089.P2370979589542392403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023470 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252089.P2370979589542392403

namespace A252089

/-- `p?[A023470(A000040(n+1)+2)]` -/
def P2370979589542392403.Spec : Prop :=
  ∀ n, P2370979589542392403.a n = A252089 (n + 1)

end A252089

/-!
# A252090: Primes p such that p + 28 is also prime.

The programs for A252090, the canonical program `A252090.P3190800062160782735` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252090 has offset 1).

The definition of A252090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252090.P3190800062160782735

`p?[p?[2*n+1]-28]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A252090

/-- `p?[p?[2*n+1]-28]` -/
def P3190800062160782735.Spec : Prop :=
  ∀ n, P3190800062160782735.a n = A252090 (n + 1)

theorem P3190800062160782735.correct : P3190800062160782735.Spec := by
  intro n
  simp only [A252090, Nat.add_sub_cancel]

end A252090

/-! ## A252090.P10080729260010954326

`p?[A028815(n)-29]`
-/

namespace A252090.P10080729260010954326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P10080729260010954326

namespace A252090

/-- `p?[A028815(n)-29]` -/
def P10080729260010954326.Spec : Prop :=
  ∀ n, P10080729260010954326.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P5003553613772761060

`p?[A040976(n+1)-26]`
-/

namespace A252090.P5003553613772761060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P5003553613772761060

namespace A252090

/-- `p?[A040976(n+1)-26]` -/
def P5003553613772761060.Spec : Prop :=
  ∀ n, P5003553613772761060.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P12029593301986940423

`p?[A006093(n+1)-27]`
-/

namespace A252090.P12029593301986940423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P12029593301986940423

namespace A252090

/-- `p?[A006093(n+1)-27]` -/
def P12029593301986940423.Spec : Prop :=
  ∀ n, P12029593301986940423.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P8594847869944004663

`p?[A000040(n+1)-28]`
-/

namespace A252090.P8594847869944004663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P8594847869944004663

namespace A252090

/-- `p?[A000040(n+1)-28]` -/
def P8594847869944004663.Spec : Prop :=
  ∀ n, P8594847869944004663.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P841699795841066736

`p?[A004139(n+1)-28]`
-/

namespace A252090.P841699795841066736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P841699795841066736

namespace A252090

/-- `p?[A004139(n+1)-28]` -/
def P841699795841066736.Spec : Prop :=
  ∀ n, P841699795841066736.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P7395264461748580054

`p?[A008864(n+1)-29]`
-/

namespace A252090.P7395264461748580054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P7395264461748580054

namespace A252090

/-- `p?[A008864(n+1)-29]` -/
def P7395264461748580054.Spec : Prop :=
  ∀ n, P7395264461748580054.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P7913180053720264809

`p?[A175216(n+1)-29]`
-/

namespace A252090.P7913180053720264809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P7913180053720264809

namespace A252090

/-- `p?[A175216(n+1)-29]` -/
def P7913180053720264809.Spec : Prop :=
  ∀ n, P7913180053720264809.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P14520816299404031573

`p?[A008578(n+1)-28]`
-/

namespace A252090.P14520816299404031573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P14520816299404031573

namespace A252090

/-- `p?[A008578(n+1)-28]` -/
def P14520816299404031573.Spec : Prop :=
  ∀ n, P14520816299404031573.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P6473361575982263493

`p?[record[A006530(n+2)]-28]`
-/

namespace A252090.P6473361575982263493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P6473361575982263493

namespace A252090

/-- `p?[record[A006530(n+2)]-28]` -/
def P6473361575982263493.Spec : Prop :=
  ∀ n, P6473361575982263493.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P16209039628670276851

`p?[record[A020639(n+2)]-28]`
-/

namespace A252090.P16209039628670276851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P16209039628670276851

namespace A252090

/-- `p?[record[A020639(n+2)]-28]` -/
def P16209039628670276851.Spec : Prop :=
  ∀ n, P16209039628670276851.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P7193376961817785043

`p?[A023470(p?[2*n+1])]`
-/

namespace A252090.P7193376961817785043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023470 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P7193376961817785043

namespace A252090

/-- `p?[A023470(p?[2*n+1])]` -/
def P7193376961817785043.Spec : Prop :=
  ∀ n, P7193376961817785043.a n = A252090 (n + 1)

theorem P7193376961817785043.correct : P7193376961817785043.Spec := by
  intro n
  simp only [A252090, Nat.add_sub_cancel, A252090.P7193376961817785043.f2, A252090.P7193376961817785043.f1, A252090.P7193376961817785043.a, A252090.P3190800062160782735.f2, A252090.P3190800062160782735.f1, A252090.P3190800062160782735.a, A023470, A023470.P6056020075891729902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A252090

/-! ## A252090.P8176626902655979778

`p?[record[A014963(n+2)]-28]`
-/

namespace A252090.P8176626902655979778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P8176626902655979778

namespace A252090

/-- `p?[record[A014963(n+2)]-28]` -/
def P8176626902655979778.Spec : Prop :=
  ∀ n, P8176626902655979778.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P6964271282317538970

`p?[A023470(A000040(n+1))]`
-/

namespace A252090.P6964271282317538970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023470 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P6964271282317538970

namespace A252090

/-- `p?[A023470(A000040(n+1))]` -/
def P6964271282317538970.Spec : Prop :=
  ∀ n, P6964271282317538970.a n = A252090 (n + 1)

end A252090

/-! ## A252090.P6169626310158927179

`p?[A023472(A000040(n+1)+2)]`
-/

namespace A252090.P6169626310158927179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252090.P6169626310158927179

namespace A252090

/-- `p?[A023472(A000040(n+1)+2)]` -/
def P6169626310158927179.Spec : Prop :=
  ∀ n, P6169626310158927179.a n = A252090 (n + 1)

end A252090

/-!
# A252091: Primes p such that p + 34 is prime.

The programs for A252091, the canonical program `A252091.P17698577421013009874` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252091 has offset 1).

The definition of A252091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252091.P7075252391930094104

`p?[A138644(n+1)-34]`
-/

namespace A252091.P7075252391930094104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138644 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P7075252391930094104

namespace A252091

/-- `p?[A138644(n+1)-34]` -/
def P7075252391930094104.Spec : Prop :=
  ∀ n, P7075252391930094104.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P17698577421013009874

`p?[p?[2*n+1]-34]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A252091

/-- `p?[p?[2*n+1]-34]` -/
def P17698577421013009874.Spec : Prop :=
  ∀ n, P17698577421013009874.a n = A252091 (n + 1)

theorem P17698577421013009874.correct : P17698577421013009874.Spec := by
  intro n
  simp only [A252091, Nat.add_sub_cancel]

end A252091

/-! ## A252091.P4457244875328413335

`p?[A086801(n+1)-31]`
-/

namespace A252091.P4457244875328413335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P4457244875328413335

namespace A252091

/-- `p?[A086801(n+1)-31]` -/
def P4457244875328413335.Spec : Prop :=
  ∀ n, P4457244875328413335.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P6155746559770536375

`p?[A154115(n+1)-31]`
-/

namespace A252091.P6155746559770536375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P6155746559770536375

namespace A252091

/-- `p?[A154115(n+1)-31]` -/
def P6155746559770536375.Spec : Prop :=
  ∀ n, P6155746559770536375.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P10048753365824137682

`p?[A040976(n+1)-32]`
-/

namespace A252091.P10048753365824137682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P10048753365824137682

namespace A252091

/-- `p?[A040976(n+1)-32]` -/
def P10048753365824137682.Spec : Prop :=
  ∀ n, P10048753365824137682.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P7900375430324737559

`p?[A000040(n+1)-34]`
-/

namespace A252091.P7900375430324737559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P7900375430324737559

namespace A252091

/-- `p?[A000040(n+1)-34]` -/
def P7900375430324737559.Spec : Prop :=
  ∀ n, P7900375430324737559.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P7205164502286002245

`p?[A008578(n+1)-34]`
-/

namespace A252091.P7205164502286002245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P7205164502286002245

namespace A252091

/-- `p?[A008578(n+1)-34]` -/
def P7205164502286002245.Spec : Prop :=
  ∀ n, P7205164502286002245.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P12225960060281237690

`p?[A093515(n+1)-34]`
-/

namespace A252091.P12225960060281237690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P12225960060281237690

namespace A252091

/-- `p?[A093515(n+1)-34]` -/
def P12225960060281237690.Spec : Prop :=
  ∀ n, P12225960060281237690.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P1364299502012462535

`p?[A008864(n+1)-35]`
-/

namespace A252091.P1364299502012462535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P1364299502012462535

namespace A252091

/-- `p?[A008864(n+1)-35]` -/
def P1364299502012462535.Spec : Prop :=
  ∀ n, P1364299502012462535.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P14335895212087339391

`p?[A000430(n+1)-34]`
-/

namespace A252091.P14335895212087339391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P14335895212087339391

namespace A252091

/-- `p?[A000430(n+1)-34]` -/
def P14335895212087339391.Spec : Prop :=
  ∀ n, P14335895212087339391.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P8236163805479880945

`record[p?[and(n, A006530(n+1))-33]]`
-/

namespace A252091.P8236163805479880945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A006530 (n + 1)) - 33

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252091.P8236163805479880945

namespace A252091

/-- `record[p?[and(n, A006530(n+1))-33]]` -/
def P8236163805479880945.Spec : Prop :=
  ∀ n, P8236163805479880945.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P7828869941816426932

`p?[A085118(n+1)-34]`
-/

namespace A252091.P7828869941816426932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P7828869941816426932

namespace A252091

/-- `p?[A085118(n+1)-34]` -/
def P7828869941816426932.Spec : Prop :=
  ∀ n, P7828869941816426932.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P6737396911306569370

`record[p?[A014963(n+1)+34]-34]`
-/

namespace A252091.P6737396911306569370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) + 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252091.P6737396911306569370

namespace A252091

/-- `record[p?[A014963(n+1)+34]-34]` -/
def P6737396911306569370.Spec : Prop :=
  ∀ n, P6737396911306569370.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P3191238334222366457

`p?[A023476(p?[2*n+1])]`
-/

namespace A252091.P3191238334222366457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023476 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P3191238334222366457

namespace A252091

/-- `p?[A023476(p?[2*n+1])]` -/
def P3191238334222366457.Spec : Prop :=
  ∀ n, P3191238334222366457.a n = A252091 (n + 1)

theorem P3191238334222366457.correct : P3191238334222366457.Spec := by
  intro n
  simp only [A252091, Nat.add_sub_cancel, A252091.P3191238334222366457.f2, A252091.P3191238334222366457.f1, A252091.P3191238334222366457.a, A252091.P17698577421013009874.f2, A252091.P17698577421013009874.f1, A252091.P17698577421013009874.a, A023476, A023476.P1868753708794674298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A252091

/-! ## A252091.P10470300245360061930

`p?[A023476(A000040(n+1))]`
-/

namespace A252091.P10470300245360061930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023476 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P10470300245360061930

namespace A252091

/-- `p?[A023476(A000040(n+1))]` -/
def P10470300245360061930.Spec : Prop :=
  ∀ n, P10470300245360061930.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P9450807130536897361

`p?[A023478(A000040(n+1)+2)]`
-/

namespace A252091.P9450807130536897361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P9450807130536897361

namespace A252091

/-- `p?[A023478(A000040(n+1)+2)]` -/
def P9450807130536897361.Spec : Prop :=
  ∀ n, P9450807130536897361.a n = A252091 (n + 1)

end A252091

/-! ## A252091.P89701559991200618

`p?[A023478(A006005(n+1)+2)]`
-/

namespace A252091.P89701559991200618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A006005 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252091.P89701559991200618

namespace A252091

/-- `p?[A023478(A006005(n+1)+2)]` -/
def P89701559991200618.Spec : Prop :=
  ∀ n, P89701559991200618.a n = A252091 (n + 1)

end A252091

/-!
# A252094: First member of a pair (A,B) to define the n-th Zeisel number, cf. A051015.

The programs for A252094, there is no canonical definition to state claims against.
-/

/-! ## A252094.P3679319092021437033

`A020639(A051015(n+1))-A252095(n+1)`
-/

namespace A252094.P3679319092021437033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051015 (n + 1)).toNat - A252095 (n + 1)

end

end A252094.P3679319092021437033

/-!
# A252095: Second member of a pair (A,B) to define the n-th Zeisel number, cf. A051015.

The programs for A252095, there is no canonical definition to state claims against.
-/

/-! ## A252095.P12868695551167008051

`A020639(A051015(n+1))-A252094(n+1)`
-/

namespace A252095.P12868695551167008051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051015 (n + 1)).toNat - A252094 (n + 1)

end

end A252095.P12868695551167008051

/-!
# A252096: Largest prime divisor of n^2+1 - smallest prime divisor of n^2+1.

The programs for A252096, there is no canonical definition to state claims against.
-/

/-! ## A252096.P8198981350374101646

`A014442(n+1)-A089120(n+1)`
-/

namespace A252096.P8198981350374101646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - A089120 (n + 1)

end

end A252096.P8198981350374101646

/-! ## A252096.P4283982728539417367

`A014442(n+1)-A014442(A247339(n+1))`
-/

namespace A252096.P4283982728539417367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - A014442 (A247339 (n + 1)).toNat

end

end A252096.P4283982728539417367

/-! ## A252096.P17644469243164854310

`A250069(n+1)-A250069(A247339(n+1))`
-/

namespace A252096.P17644469243164854310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1) - A250069 (A247339 (n + 1)).toNat

end

end A252096.P17644469243164854310

/-! ## A252096.P10777767549817501723

`A002522(n+1)/A248516(n+1)-A089120(n+1)`
-/

namespace A252096.P10777767549817501723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A248516 (n + 1) : ℚ) - (A089120 (n + 1) : ℚ)

end

end A252096.P10777767549817501723

/-! ## A252096.P74252962315552405

`A006530((n+1)²+1)-A089120(n+1)`
-/

namespace A252096.P74252962315552405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 1) - A089120 (n + 1)

end

end A252096.P74252962315552405

/-! ## A252096.P15324376026483745856

`A006530((n+1)²+1)-A020639((n+1)²+1)`
-/

namespace A252096.P15324376026483745856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 1) - A020639 ((n + 1) ^ 2 + 1)

end

end A252096.P15324376026483745856

/-! ## A252096.P15267428322600120457

`A014442(n+1)-A020639(A014442(n+1)*A248516(n+1))`
-/

namespace A252096.P15267428322600120457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - A020639 (A014442 (n + 1) * A248516 (n + 1)).toNat

end

end A252096.P15267428322600120457

/-! ## A252096.P11884923112010085467

`A046665((n+1)²+1)`
-/

namespace A252096.P11884923112010085467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 ((n + 1) ^ 2 + 1)

end

end A252096.P11884923112010085467

/-! ## A252096.P6236762668355067742

`A085393((n+2)²+n²)`
-/

namespace A252096.P6236762668355067742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 ((n + 2) ^ 2 + n ^ 2)

end

end A252096.P6236762668355067742

/-!
# A252097: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252097, there is no canonical definition to state claims against.
-/

/-! ## A252097.P14661009049059373326

`A252105((n+1)²+n²)`
-/

namespace A252097.P14661009049059373326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 ((n + 1) ^ 2 + n ^ 2)

end

end A252097.P14661009049059373326

/-! ## A252097.P12884150105056622309

`record[A003982(n)*A252105(n+1)]`
-/

namespace A252097.P12884150105056622309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252097.P12884150105056622309

/-! ## A252097.P15312776071709169850

`record[gcd(A049581(n), A252105(n+1))]`
-/

namespace A252097.P15312776071709169850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252105 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252097.P15312776071709169850

/-! ## A252097.P1043700101389881646

`abs(A033999(n)*A252105(A001844(n)))`
-/

namespace A252097.P1043700101389881646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A252105 (A001844 n).toNat|

end

end A252097.P1043700101389881646

/-! ## A252097.P7668926843701699565

`A007318(A033182(n))*A252105(A001844(n))`
-/

namespace A252097.P7668926843701699565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A033182 n).toNat * A252105 (A001844 n).toNat

end

end A252097.P7668926843701699565

/-!
# A252098: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252098, there is no canonical definition to state claims against.
-/

/-! ## A252098.P12384452920280570109

`A252105(∑[n]+1)`
-/

namespace A252098.P12384452920280570109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252098.P12384452920280570109

/-! ## A252098.P18128194030969728766

`record[A010054(n)*A252105(n+1)]`
-/

namespace A252098.P18128194030969728766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252098.P18128194030969728766

/-! ## A252098.P7078298945911320096

`record[root(A252105(n+1), A008288(n))]`
-/

namespace A252098.P7078298945911320096
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252105 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252098.P7078298945911320096

/-! ## A252098.P9441247695777526503

`record[gcd(A004197(n), A252105(n+1))]`
-/

namespace A252098.P9441247695777526503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A252105 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252098.P9441247695777526503

/-! ## A252098.P17122677047394700835

`record[A252105(n+1)/A008292(n+1)]`
-/

namespace A252098.P17122677047394700835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252105 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252098.P17122677047394700835

/-!
# A252099: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252099, there is no canonical definition to state claims against.
-/

/-! ## A252099.P7511056638116399963

`A252105(∑[n+1]+2)`
-/

namespace A252099.P7511056638116399963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252099.P7511056638116399963

/-! ## A252099.P11820017158399297344

`record[A252105(A133263(abs(1-n)))]`
-/

namespace A252099.P11820017158399297344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252099.P11820017158399297344

/-! ## A252099.P14149615865719934952

`A252105(A000096(n)+3)+char[36]`
-/

namespace A252099.P14149615865719934952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252099.P14149615865719934952

/-! ## A252099.P12530412457567041145

`record[A010054(n)*A252105(n+2)]`
-/

namespace A252099.P12530412457567041145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252099.P12530412457567041145

/-! ## A252099.P15615844084791340325

`or(A000007(n), A252105(A000096(n)+3))`
-/

namespace A252099.P15615844084791340325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252105 (A000096 n + 3).toNat)

end

end A252099.P15615844084791340325

