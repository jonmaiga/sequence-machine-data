import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B013.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A184300: Number of strings of numbers x(i=1..n) in 0..6 with sum i^3*x(i)^2 equal to n^3*36.

The programs for A184300, there is no canonical definition to state claims against.
-/

/-! ## A184300.P9661115062222497483

`A184303(A052905(n+3))`
-/

namespace A184300.P9661115062222497483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A052905 (n + 3)).toNat

end

end A184300.P9661115062222497483

/-! ## A184300.P6771969753941371788

`A184303(A056119(n)+16)`
-/

namespace A184300.P6771969753941371788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A056119 n + 16).toNat

end

end A184300.P6771969753941371788

/-! ## A184300.P333773180847338238

`A184303(eq[3, A219347(n)])`
-/

namespace A184300.P333773180847338238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184300.P333773180847338238

/-! ## A184300.P172627245900766186

`A184303(eq[5, A152157(n)])`
-/

namespace A184300.P172627245900766186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184300.P172627245900766186

/-! ## A184300.P4859871135525123046

`A184303(eq[5, A193592(n)])`
-/

namespace A184300.P4859871135525123046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184300.P4859871135525123046

/-!
# A184301: Number of strings of numbers x(i=1..n) in 0..7 with sum i^3*x(i)^2 equal to n^3*49.

The programs for A184301, there is no canonical definition to state claims against.
-/

/-! ## A184301.P18322672245683920994

`A184303(C(n+7, 2)+1+n)`
-/

namespace A184301.P18322672245683920994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (Nat.choose (n + 7) 2 + 1 + n)

end

end A184301.P18322672245683920994

/-! ## A184301.P7326774048975013226

`A184303(A055999(n+4))`
-/

namespace A184301.P7326774048975013226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A055999 (n + 4)).toNat

end

end A184301.P7326774048975013226

/-! ## A184301.P10011079909960875000

`A184303(eq[4, A219347(n)])`
-/

namespace A184301.P10011079909960875000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184301.P10011079909960875000

/-! ## A184301.P1947209341162573929

`A184303(eq[6, A193592(n)])`
-/

namespace A184301.P1947209341162573929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184301.P1947209341162573929

/-! ## A184301.P15543372681392610261

`A184303(eq[7, A152157(n)])`
-/

namespace A184301.P15543372681392610261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184301.P15543372681392610261

/-!
# A184302: Number of strings of numbers x(i=1..n) in 0..8 with sum i^3*x(i)^2 equal to n^3*64.

The programs for A184302, there is no canonical definition to state claims against.
-/

/-! ## A184302.P18203262945255581274

`A184303(eq[5, A219347(n)])`
-/

namespace A184302.P18203262945255581274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184302.P18203262945255581274

/-! ## A184302.P1379837157543491012

`A184303(eq[7, A193592(n)])`
-/

namespace A184302.P1379837157543491012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184302.P1379837157543491012

/-! ## A184302.P6056227713928319595

`A184303(Δ[A183906(n+4)])`
-/

namespace A184302.P6056227713928319595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183906 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (f1 (n + 1) - f1 n).toNat

end

end A184302.P6056227713928319595

/-! ## A184302.P11095626921355342275

`A184303(A052905(n+5)-2)`
-/

namespace A184302.P11095626921355342275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A052905 (n + 5) - 2).toNat

end

end A184302.P11095626921355342275

/-! ## A184302.P16617437687139321969

`A184303(A000096(n+7)-6)`
-/

namespace A184302.P16617437687139321969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A000096 (n + 7) - 6).toNat

end

end A184302.P16617437687139321969

/-!
# A184303: T(n,k)=Number of strings of numbers x(i=1..n) in 0..k with sum i^3*x(i)^2 equal to n^3*k^2.

The programs for A184303, there is no canonical definition to state claims against.
-/

/-! ## A184303.P15568187327410195063

`A272901(A314887(n))`
-/

namespace A184303.P15568187327410195063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (A314887 n).toNat

end

end A184303.P15568187327410195063

/-! ## A184303.P17564639606418637093

`A272901(A058972(n+1))`
-/

namespace A184303.P17564639606418637093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (A058972 (n + 1)).toNat

end

end A184303.P17564639606418637093

/-! ## A184303.P4113059799163453446

`A083895(A000837(n))%2+1`
-/

namespace A184303.P4113059799163453446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083895 (A000837 n).toNat) 2 + 1

end

end A184303.P4113059799163453446

/-! ## A184303.P11079547733334652870

`A272901(∑[4-A073089(n+2)]+n+1)`
-/

namespace A184303.P11079547733334652870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A073089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat

end

end A184303.P11079547733334652870

/-! ## A184303.P8784001627442316046

`(A041000(2*n+5)*A095062(n+3))%2+1`
-/

namespace A184303.P8784001627442316046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041000 (2 * n + 5) * A095062 (n + 3)) 2 + 1

end

end A184303.P8784001627442316046

/-!
# A184304: Number of strings of numbers x(i=1..3) in 0..n with sum i^3*x(i)^2 equal to 27*n^2.

The programs for A184304, there is no canonical definition to state claims against.
-/

/-! ## A184304.P15023004281222653452

`A184303(∑[n+2]+4)`
-/

namespace A184304.P15023004281222653452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184304.P15023004281222653452

/-! ## A184304.P17684483559145821612

`dr(A184303(A167614(n+1)))`
-/

namespace A184304.P17684483559145821612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A184303 (A167614 (n + 1)).toNat)

end

end A184304.P17684483559145821612

/-! ## A184304.P14028881642318732486

`A184303(A055998(n)+6)%6`
-/

namespace A184304.P14028881642318732486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184303 (A055998 n + 6).toNat) 6

end

end A184304.P14028881642318732486

/-! ## A184304.P6746138051945456397

`A184303(A167614(n+1))+A011741(n)`
-/

namespace A184304.P6746138051945456397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A167614 (n + 1)).toNat + A011741 n

end

end A184304.P6746138051945456397

/-! ## A184304.P2790667923995561413

`A184303(A167614(n+1))+A025466(n)`
-/

namespace A184304.P2790667923995561413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A167614 (n + 1)).toNat + A025466 n

end

end A184304.P2790667923995561413

/-!
# A184305: Number of strings of numbers x(i=1..4) in 0..n with sum i^3*x(i)^2 equal to 64*n^2.

The programs for A184305, there is no canonical definition to state claims against.
-/

/-! ## A184305.P1333565414150546302

`A184303(∑[n+3]+7)`
-/

namespace A184305.P1333565414150546302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184305.P1333565414150546302

/-!
# A184306: Number of strings of numbers x(i=1..5) in 0..n with sum i^3*x(i)^2 equal to 125*n^2.

The programs for A184306, there is no canonical definition to state claims against.
-/

/-! ## A184306.P7230710979065009914

`A184303(∑[n+4]+11)`
-/

namespace A184306.P7230710979065009914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A184306.P7230710979065009914

/-! ## A184306.P6611396578525390892

`or(char[1], A184303(A056000(n)+15))`
-/

namespace A184306.P6611396578525390892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184303 (A056000 n + 15).toNat)

end

end A184306.P6611396578525390892

/-! ## A184306.P3308422376554469849

`∑{d}[A184303(A056000(n)+15), A000010(#)]`
-/

namespace A184306.P3308422376554469849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A056000 n + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A184306.P3308422376554469849

/-! ## A184306.P15906349497365935338

`A184303(A056000(n)+15)%A000032(n+3)`
-/

namespace A184306.P15906349497365935338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184303 (A056000 n + 15).toNat) (A000032 (n + 3))

end

end A184306.P15906349497365935338

/-! ## A184306.P9616981585771523260

`A007318(C(2, n))*A184303(A056000(n)+15)`
-/

namespace A184306.P9616981585771523260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184303 (A056000 n + 15).toNat

end

end A184306.P9616981585771523260

/-!
# A184307: Number of strings of numbers x(i=1..6) in 0..n with sum i^3*x(i)^2 equal to 216*n^2.

The programs for A184307, there is no canonical definition to state claims against.
-/

/-! ## A184307.P11493068934248726257

`A184303(A166136(n+4))`
-/

namespace A184307.P11493068934248726257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A166136 (n + 4)).toNat

end

end A184307.P11493068934248726257

/-! ## A184307.P6215525295358708447

`A184303(A056115(n)+21)`
-/

namespace A184307.P6215525295358708447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A056115 n + 21).toNat

end

end A184307.P6215525295358708447

/-! ## A184307.P16948467881863425623

`A184303(A167614(n+4)+3)`
-/

namespace A184307.P16948467881863425623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A167614 (n + 4) + 3).toNat

end

end A184307.P16948467881863425623

/-! ## A184307.P9396035178164380677

`A184303(A000124(n+5)+5)`
-/

namespace A184307.P9396035178164380677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A000124 (n + 5) + 5).toNat

end

end A184307.P9396035178164380677

/-! ## A184307.P4790175869610107858

`A184303(A000096(n+4)+7)`
-/

namespace A184307.P4790175869610107858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A000096 (n + 4) + 7).toNat

end

end A184307.P4790175869610107858

/-!
# A184308: Number of strings of numbers x(i=1..7) in 0..n with sum i^3*x(i)^2 equal to 343*n^2.

The programs for A184308, there is no canonical definition to state claims against.
-/

/-! ## A184308.P7924741863582444268

`A184303(A056119(n)+28)`
-/

namespace A184308.P7924741863582444268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A056119 n + 28).toNat

end

end A184308.P7924741863582444268

/-! ## A184308.P9884468609647560808

`A184303(eq[11, A066657(n)])`
-/

namespace A184308.P9884468609647560808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184308.P9884468609647560808

/-! ## A184308.P3430671151267757349

`A184303(A166136(n+5)+1)`
-/

namespace A184308.P3430671151267757349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A166136 (n + 5) + 1).toNat

end

end A184308.P3430671151267757349

/-! ## A184308.P6843271975891328496

`A184303(A167499(n+5)+2)`
-/

namespace A184308.P6843271975891328496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A167499 (n + 5) + 2).toNat

end

end A184308.P6843271975891328496

/-! ## A184308.P15424041418753469662

`A184303(A167614(n+5)+4)`
-/

namespace A184308.P15424041418753469662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A167614 (n + 5) + 4).toNat

end

end A184308.P15424041418753469662

/-!
# A184309: Number of strings of numbers x(i=1..8) in 0..n with sum i^3*x(i)^2 equal to 512*n^2.

The programs for A184309, there is no canonical definition to state claims against.
-/

/-! ## A184309.P2792071629920894303

`A184303(C(n+8, 2)+8)`
-/

namespace A184309.P2792071629920894303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (Nat.choose (n + 8) 2 + 8)

end

end A184309.P2792071629920894303

/-! ## A184309.P2747720753580182299

`A184303(A167487(n+6)+1)`
-/

namespace A184309.P2747720753580182299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A167487 (n + 6) + 1).toNat

end

end A184309.P2747720753580182299

/-! ## A184309.P13222585295533044159

`A184303(A166136(n+6)+2)`
-/

namespace A184309.P13222585295533044159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A166136 (n + 6) + 2).toNat

end

end A184309.P13222585295533044159

/-! ## A184309.P15511805475985926808

`A184303(A000124(n+7)+7)`
-/

namespace A184309.P15511805475985926808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A000124 (n + 7) + 7).toNat

end

end A184309.P15511805475985926808

/-! ## A184309.P4862373702107717343

`A184303(A000096(n+6)+9)`
-/

namespace A184309.P4862373702107717343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A000096 (n + 6) + 9).toNat

end

end A184309.P4862373702107717343

/-!
# A184310: Number of strings of numbers x(i=1..n) in 0..n with sum i^2*x(i)^3 equal to n^5.

The programs for A184310, there is no canonical definition to state claims against.
-/

/-! ## A184310.P15725131189878036136

`A184318(∑[4*n]+1)`
-/

namespace A184310.P15725131189878036136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184310.P15725131189878036136

/-! ## A184310.P16844627546306547064

`∏{d}[A001844(n), A184318(#)]`
-/

namespace A184310.P16844627546306547064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A184318 d

end

end A184310.P16844627546306547064

/-! ## A184310.P16936289465184984856

`A184318(A001844(n))+A061858(n)`
-/

namespace A184310.P16936289465184984856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A001844 n).toNat + A061858 n

end

end A184310.P16936289465184984856

/-! ## A184310.P4204041063248084435

`A185284(n)+A184318(A001844(n))`
-/

namespace A184310.P4204041063248084435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A184318 (A001844 n).toNat

end

end A184310.P4204041063248084435

/-! ## A184310.P10737398234804318516

`A308919(n)+A184318(A001844(n))`
-/

namespace A184310.P10737398234804318516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n + A184318 (A001844 n).toNat

end

end A184310.P10737398234804318516

/-!
# A184311: Number of strings of numbers x(i=1..n) in 0..2 with sum i^2*x(i)^3 equal to n^2*8.

The programs for A184311, there is no canonical definition to state claims against.
-/

/-! ## A184311.P13008971514028964178

`A184318(∑[n+2])`
-/

namespace A184311.P13008971514028964178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184311.P13008971514028964178

/-! ## A184311.P17869751925887072596

`or(char[1], A184318(A000096(n+1)))`
-/

namespace A184311.P17869751925887072596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184318 (A000096 (n + 1)).toNat)

end

end A184311.P17869751925887072596

/-! ## A184311.P1589259574318974728

`A184318(A000096(n+1))%A100968(n+1)`
-/

namespace A184311.P1589259574318974728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184318 (A000096 (n + 1)).toNat) (A100968 (n + 1))

end

end A184311.P1589259574318974728

/-! ## A184311.P18067538768489767779

`A007318(C(2, n))*A184318(A000096(n+1))`
-/

namespace A184311.P18067538768489767779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184318 (A000096 (n + 1)).toNat

end

end A184311.P18067538768489767779

/-! ## A184311.P9810338583040769919

`gcd(13, A007318(n))*A184318(A000096(n+1))`
-/

namespace A184311.P9810338583040769919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 13 (A007318 n) : ℤ) * A184318 (A000096 (n + 1)).toNat

end

end A184311.P9810338583040769919

/-!
# A184312: Number of strings of numbers x(i=1..n) in 0..3 with sum i^2*x(i)^3 equal to n^2*27.

The programs for A184312, there is no canonical definition to state claims against.
-/

/-! ## A184312.P15896070136677802192

`A184318(∑[n+3]+1)`
-/

namespace A184312.P15896070136677802192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184312.P15896070136677802192

/-! ## A184312.P1517539683814808235

`A184318(A034856(n+2))+char[23]`
-/

namespace A184312.P1517539683814808235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184312.P1517539683814808235

/-! ## A184312.P14813998833349197308

`A184318(Δ[A008778(n)])%A127865(n+1)`
-/

namespace A184312.P14813998833349197308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184318 (f1 (n + 1) - f1 n).toNat) (A127865 (n + 1))

end

end A184312.P14813998833349197308

/-! ## A184312.P10422938150004192171

`A184318(A034856(n+2))%A000032(2*n)`
-/

namespace A184312.P10422938150004192171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184318 (A034856 (n + 2)).toNat) (A000032 (2 * n))

end

end A184312.P10422938150004192171

/-! ## A184312.P18177765119615667571

`A007318(C(2, n))*A184318(A034856(n+2))`
-/

namespace A184312.P18177765119615667571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184318 (A034856 (n + 2)).toNat

end

end A184312.P18177765119615667571

/-!
# A184313: Number of strings of numbers x(i=1..n) in 0..4 with Sum_{i=1..n} i^2*x(i)^3 = n^2*64.

The programs for A184313, there is no canonical definition to state claims against.
-/

/-! ## A184313.P7127108726477704202

`A184318(∑[n+3])`
-/

namespace A184313.P7127108726477704202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184313.P7127108726477704202

/-! ## A184313.P1622642987181709531

`A193921(or(n, A000785(n+1)))`
-/

namespace A184313.P1622642987181709531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 (Int.lor (n : ℤ) (A000785 (n + 1))).toNat

end

end A184313.P1622642987181709531

/-! ## A184313.P1923263698534067835

`A304708(A114220(n)+A036378(n))`
-/

namespace A184313.P1923263698534067835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (A114220 n + A036378 n).toNat

end

end A184313.P1923263698534067835

/-! ## A184313.P7585384209468116230

`A241916(A005177(n)^A005709(n))`
-/

namespace A184313.P7585384209468116230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (SequenceMachineLib.roundAway ((A005177 n : ℚ) ^ (A005709 n : ℤ))).toNat

end

end A184313.P7585384209468116230

/-! ## A184313.P8962600046815669906

`A054346(A356235(n)+A054360(n+1))`
-/

namespace A184313.P8962600046815669906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054346 (A356235 n + A054360 (n + 1)).toNat

end

end A184313.P8962600046815669906

/-!
# A184314: Number of strings of numbers x(i=1..n) in 0..5 with sum i^2*x(i)^3 equal to n^2*125.

The programs for A184314, there is no canonical definition to state claims against.
-/

/-! ## A184314.P1473106886433241853

`A184318(∑[n+5]+6)`
-/

namespace A184314.P1473106886433241853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184314.P1473106886433241853

/-! ## A184314.P6294764411519038742

`A205838(A000162(n+1))`
-/

namespace A184314.P6294764411519038742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205838 (A000162 (n + 1)).toNat

end

end A184314.P6294764411519038742

/-! ## A184314.P7840966458047598694

`A085863(∑[A068788(n+1)])+1`
-/

namespace A184314.P7840966458047598694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A184314.P7840966458047598694

/-! ## A184314.P1776343183177250979

`A048259(A328035(n+1)-A000065(n))`
-/

namespace A184314.P1776343183177250979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048259 (A328035 (n + 1) - A000065 n).toNat

end

end A184314.P1776343183177250979

/-!
# A184315: Number of strings of numbers x(i=1..n) in 0..6 with sum i^2*x(i)^3 equal to n^2*216.

The programs for A184315, there is no canonical definition to state claims against.
-/

/-! ## A184315.P4087214760913733455

`A184318(A302537(n)+15)`
-/

namespace A184315.P4087214760913733455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A302537 n + 15).toNat

end

end A184315.P4087214760913733455

/-! ## A184315.P12264653453545622859

`A184318(A056119(n)+16)`
-/

namespace A184315.P12264653453545622859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A056119 n + 16).toNat

end

end A184315.P12264653453545622859

/-! ## A184315.P17862298600776520197

`A184318(eq[3, A219347(n)])`
-/

namespace A184315.P17862298600776520197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184315.P17862298600776520197

/-! ## A184315.P3572973382191981936

`A184318(eq[5, A152157(n)])`
-/

namespace A184315.P3572973382191981936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184315.P3572973382191981936

/-! ## A184315.P6004721187838067554

`A184318(eq[5, A193592(n)])`
-/

namespace A184315.P6004721187838067554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184315.P6004721187838067554

/-!
# A184316: Number of strings of numbers x(i=1..n) in 0..7 with sum i^2*x(i)^3 equal to n^2*343.

The programs for A184316, there is no canonical definition to state claims against.
-/

/-! ## A184316.P2067342366914859

`A184318(C(n+7, 2)+1+n)`
-/

namespace A184316.P2067342366914859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (Nat.choose (n + 7) 2 + 1 + n)

end

end A184316.P2067342366914859

/-! ## A184316.P2685138791377080648

`A184318(eq[4, A219347(n)])`
-/

namespace A184316.P2685138791377080648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184316.P2685138791377080648

/-! ## A184316.P17692058156314097902

`A184318(eq[6, A193592(n)])`
-/

namespace A184316.P17692058156314097902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184316.P17692058156314097902

/-! ## A184316.P15267901144563238400

`A184318(eq[7, A152157(n)])`
-/

namespace A184316.P15267901144563238400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184316.P15267901144563238400

/-! ## A184316.P5320049332585571934

`A184318(A052905(n+4)-1)`
-/

namespace A184316.P5320049332585571934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A052905 (n + 4) - 1).toNat

end

end A184316.P5320049332585571934

/-!
# A184317: Number of strings of numbers x(i=1..n) in 0..8 with sum i^2*x(i)^3 equal to n^2*512.

The programs for A184317, there is no canonical definition to state claims against.
-/

/-! ## A184317.P16820177908663942958

`A184318(eq[5, A219347(n)])`
-/

namespace A184317.P16820177908663942958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184317.P16820177908663942958

/-! ## A184317.P9789189128513520291

`A184318(eq[7, A193592(n)])`
-/

namespace A184317.P9789189128513520291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184317.P9789189128513520291

/-! ## A184317.P1885720108323109965

`A184318(Δ[A183906(n+4)])`
-/

namespace A184317.P1885720108323109965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183906 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (f1 (n + 1) - f1 n).toNat

end

end A184317.P1885720108323109965

/-! ## A184317.P15118102958840528818

`A184318(A155212(n+4)+1)`
-/

namespace A184317.P15118102958840528818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A155212 (n + 4) + 1).toNat

end

end A184317.P15118102958840528818

/-! ## A184317.P14628666649822731814

`A184318(A056000(n+4)+3)`
-/

namespace A184317.P14628666649822731814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A056000 (n + 4) + 3).toNat

end

end A184317.P14628666649822731814

/-!
# A184318: T(n,k) = number of strings of numbers x(i=1..n) in 0..k with sum i^2*x(i)^3 equal to n^2*k^3.

The programs for A184318, there is no canonical definition to state claims against.
-/

/-! ## A184318.P11551607373901112985

`gcd(2, A238888(A128325(n)))`
-/

namespace A184318.P11551607373901112985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A238888 (A128325 n).toNat)

end

end A184318.P11551607373901112985

/-! ## A184318.P14431229565396672100

`gcd(A065110(n+1), A374209(n+1))`
-/

namespace A184318.P14431229565396672100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065110 (n + 1)) (A374209 (n + 1))

end

end A184318.P14431229565396672100

/-! ## A184318.P15438144009003525853

`A317245(A159936(n+1)%A065110(n+1))`
-/

namespace A184318.P15438144009003525853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317245 (Int.tmod (A159936 (n + 1)) (A065110 (n + 1))).toNat

end

end A184318.P15438144009003525853

/-! ## A184318.P16558574650203255261

`A380563(or(A139128(2*n+3), A208447(n)))`
-/

namespace A184318.P16558574650203255261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380563 (Int.lor (A139128 (2 * n + 3)) (A208447 n)).toNat

end

end A184318.P16558574650203255261

/-! ## A184318.P3551234367541705505

`A040001(round(log(A063851(n+3))))`
-/

namespace A184318.P3551234367541705505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (SequenceMachineLib.roundAway (Real.log (A063851 (n + 3) : ℝ))).toNat

end

end A184318.P3551234367541705505

/-!
# A184319: Number of strings of numbers x(i=1..4) in 0..n with sum i^2*x(i)^3 equal to 16*n^3.

The programs for A184319, there is no canonical definition to state claims against.
-/

/-! ## A184319.P4502871341854849888

`A124778(A224212(n))+n%2`
-/

namespace A184319.P4502871341854849888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A224212 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A184319.P4502871341854849888

/-! ## A184319.P12254327939682765715

`A124778(A224212(n))+A000035(n)`
-/

namespace A184319.P12254327939682765715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A224212 n).toNat + A000035 n

end

end A184319.P12254327939682765715

/-! ## A184319.P11990162384689681597

`A135481(n²)+A124778(A224212(n))`
-/

namespace A184319.P11990162384689681597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (n ^ 2) + A124778 (A224212 n).toNat

end

end A184319.P11990162384689681597

/-! ## A184319.P12531000734497403267

`A124778(A224212(n))+log2(A000034(n))`
-/

namespace A184319.P12531000734497403267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A124778 (A224212 n).toNat : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A184319.P12531000734497403267

/-! ## A184319.P16676657956112032787

`A124778(A224212(n))+∑[A062157(n)]`
-/

namespace A184319.P16676657956112032787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A224212 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184319.P16676657956112032787

/-!
# A184320: Number of strings of numbers x(i=1..5) in 0..n with sum i^2*x(i)^3 equal to 25*n^3.

The programs for A184320, there is no canonical definition to state claims against.
-/

/-! ## A184320.P9144516616153851608

`A184318(A167499(n+3))`
-/

namespace A184320.P9144516616153851608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A167499 (n + 3)).toNat

end

end A184320.P9144516616153851608

/-! ## A184320.P366436603221940532

`A184318(A155212(n)+13)`
-/

namespace A184320.P366436603221940532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A155212 n + 13).toNat

end

end A184320.P366436603221940532

/-! ## A184320.P9504760155969669309

`A184318(A056000(n)+15)`
-/

namespace A184320.P9504760155969669309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A056000 n + 15).toNat

end

end A184320.P9504760155969669309

/-! ## A184320.P995224407991807381

`A184318(A166136(n+3)-1)`
-/

namespace A184320.P995224407991807381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A166136 (n + 3) - 1).toNat

end

end A184320.P995224407991807381

/-! ## A184320.P3009918401052772678

`A184318(A145018(n+5)+1)`
-/

namespace A184320.P3009918401052772678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A145018 (n + 5) + 1).toNat

end

end A184320.P3009918401052772678

/-!
# A184321: Number of strings of numbers x(i=1..6) in 0..n with sum i^2*x(i)^3 equal to 36*n^3.

The programs for A184321, there is no canonical definition to state claims against.
-/

/-! ## A184321.P1049634296605723115

`A184318(A166136(n+4))`
-/

namespace A184321.P1049634296605723115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A166136 (n + 4)).toNat

end

end A184321.P1049634296605723115

/-! ## A184321.P13863438353492523145

`A184318(A056115(n)+21)`
-/

namespace A184321.P13863438353492523145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A056115 n + 21).toNat

end

end A184321.P13863438353492523145

/-! ## A184321.P5272451449041882055

`A184318(A167499(n+4)+1)`
-/

namespace A184321.P5272451449041882055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A167499 (n + 4) + 1).toNat

end

end A184321.P5272451449041882055

/-! ## A184321.P459272678945066693

`A184318(A167614(n+4)+3)`
-/

namespace A184321.P459272678945066693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A167614 (n + 4) + 3).toNat

end

end A184321.P459272678945066693

/-! ## A184321.P8469615292218383857

`A184318(A000124(n+5)+5)`
-/

namespace A184321.P8469615292218383857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A000124 (n + 5) + 5).toNat

end

end A184321.P8469615292218383857

/-!
# A184322: Number of strings of numbers x(i=1..7) in 0..n with sum i^2*x(i)^3 equal to 49*n^3.

The programs for A184322, there is no canonical definition to state claims against.
-/

/-! ## A184322.P11917499507282946368

`A184318(A167487(n+5))`
-/

namespace A184322.P11917499507282946368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A167487 (n + 5)).toNat

end

end A184322.P11917499507282946368

/-! ## A184322.P17611066197113912010

`A184318(A056119(n)+28)`
-/

namespace A184322.P17611066197113912010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A056119 n + 28).toNat

end

end A184322.P17611066197113912010

/-! ## A184322.P2446576207201187890

`A184318(A167614(n+5)+4)`
-/

namespace A184322.P2446576207201187890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A167614 (n + 5) + 4).toNat

end

end A184322.P2446576207201187890

/-! ## A184322.P8014728262910096833

`A184318(A000124(n+6)+6)`
-/

namespace A184322.P8014728262910096833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A000124 (n + 6) + 6).toNat

end

end A184322.P8014728262910096833

/-! ## A184322.P10706240888226662925

`A184318(A000096(n+5)+8)`
-/

namespace A184322.P10706240888226662925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A000096 (n + 5) + 8).toNat

end

end A184322.P10706240888226662925

/-!
# A184323: Number of strings of numbers x(i=1..8) in 0..n with sum i^2*x(i)^3 equal to 64*n^3.

The programs for A184323, there is no canonical definition to state claims against.
-/

/-! ## A184323.P15301904473508735614

`A184318(A167614(n+6)+5)`
-/

namespace A184323.P15301904473508735614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A167614 (n + 6) + 5).toNat

end

end A184323.P15301904473508735614

/-! ## A184323.P11173869925733136800

`A184318(A000096(n+6)+9)`
-/

namespace A184323.P11173869925733136800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A000096 (n + 6) + 9).toNat

end

end A184323.P11173869925733136800

/-! ## A184323.P5582128085255828040

`A184318(A000217(n+7)+8)`
-/

namespace A184323.P5582128085255828040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A000217 (n + 7) + 8).toNat

end

end A184323.P5582128085255828040

/-! ## A184323.P7889081388772097152

`A184318(A034856(n+6)+10)`
-/

namespace A184323.P7889081388772097152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (A034856 (n + 6) + 10).toNat

end

end A184323.P7889081388772097152

/-! ## A184323.P16116983824225488010

`A184318(eq[9, A131818(n+1)])`
-/

namespace A184323.P16116983824225488010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184323.P16116983824225488010

/-!
# A184324: The number of disconnected k-regular simple graphs on 2k+4 vertices.

The programs for A184324, there is no canonical definition to state claims against.
-/

/-! ## A184324.P4622454017653453176

`A008483(n+3)+char[2*(n+1)]`
-/

namespace A184324.P4622454017653453176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184324.P4622454017653453176

/-! ## A184324.P12093425132248777320

`A026796(n+6)+char[2*(n+1)]`
-/

namespace A184324.P12093425132248777320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 6) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184324.P12093425132248777320

/-! ## A184324.P14919128228345611836

`A165652(n+3)+A040001(n)`
-/

namespace A184324.P14919128228345611836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (n + 3) + A040001 n

end

end A184324.P14919128228345611836

/-! ## A184324.P14675362601915641474

`Δ[A065033(n)+A027336(n+2)]`
-/

namespace A184324.P14675362601915641474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A027336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184324.P14675362601915641474

/-! ## A184324.P2456408687367219618

`A117995(n+3)-A083751(n+1)`
-/

namespace A184324.P2456408687367219618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (n + 3) - A083751 (n + 1)

end

end A184324.P2456408687367219618

/-! ## A184324.P4306867158262253864

`A117995(n+3)-Δ[A000094(n+1)]`
-/

namespace A184324.P4306867158262253864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (n + 3) - (f1 (n + 1) - f1 n)

end

end A184324.P4306867158262253864

/-!
# A184325: The number of disconnected 2k-regular simple graphs on 4k+5 vertices.

The programs for A184325, there is no canonical definition to state claims against.
-/

/-! ## A184325.P5118400770712402771

`A141494(n+1)+A110505(n)`
-/

namespace A184325.P5118400770712402771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141494 (n + 1) + A110505 n

end

end A184325.P5118400770712402771

/-! ## A184325.P7433776797624289518

`record[A131932(n+1)]-A128726(n)`
-/

namespace A184325.P7433776797624289518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A128726 n

end

end A184325.P7433776797624289518

/-!
# A184326: The number of disconnected k-regular simple graphs on 2k+6 vertices.

The programs for A184326, there is no canonical definition to state claims against.
-/

/-! ## A184326.P802366499061429765

`A068933(eq[12, A249484(n)])`
-/

namespace A184326.P802366499061429765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184326.P802366499061429765

/-! ## A184326.P16694487551017574765

`A068933(A268581(n+1)+1)`
-/

namespace A184326.P16694487551017574765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068933 (A268581 (n + 1) + 1).toNat

end

end A184326.P16694487551017574765

/-! ## A184326.P11284997217686206338

`A068933(2*A005563(n+2))`
-/

namespace A184326.P11284997217686206338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068933 (2 * A005563 (n + 2)).toNat

end

end A184326.P11284997217686206338

/-! ## A184326.P10710457854225209042

`A068933(A116940(2*(n+2)))`
-/

namespace A184326.P10710457854225209042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068933 (A116940 (2 * (n + 2))).toNat

end

end A184326.P10710457854225209042

/-! ## A184326.P17619288577953636435

`A068933(A005843((n+3)²-1))`
-/

namespace A184326.P17619288577953636435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068933 (A005843 ((n + 3) ^ 2 - 1)).toNat

end

end A184326.P17619288577953636435

/-!
# A184327: a(1)=1, a(2)=17; thereafter a(n) = 6*a(n-1)-a(n-2)+c, where c=-4 if n is odd, c=12 if n is even.

The programs for A184327, the canonical program `A184327.P9380350550145083517` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184327 has offset 1).

The definition of A184327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184327.P9380350550145083517

`6*a(n-1)-6*a(n-3)+a(n-4)` with `a(0)=1, a(1)=17, a(2)=97, a(3)=577`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184327

/-- `6*a(n-1)-6*a(n-3)+a(n-4)` -/
def P9380350550145083517.Spec : Prop :=
  ∀ n, P9380350550145083517.a n = A184327 (n + 1)

theorem P9380350550145083517.correct : P9380350550145083517.Spec := by
  intro n
  simp only [A184327, Nat.add_sub_cancel]

end A184327

/-! ## A184327.P9118618572192927788

`2*record[a(n-4)+2*a(n-2)]²-1` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A184327.P9118618572192927788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1] fun n f1 =>
  f1 (n - 4) + 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 : ℤ) - 1

end

end A184327.P9118618572192927788

namespace A184327

/-- `2*record[a(n-4)+2*a(n-2)]²-1` -/
def P9118618572192927788.Spec : Prop :=
  ∀ n, P9118618572192927788.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P3143702759325787365

`2*A078057(n)²-1`
-/

namespace A184327.P3143702759325787365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078057 n ^ 2 - 1

end

end A184327.P3143702759325787365

namespace A184327

/-- `2*A078057(n)²-1` -/
def P3143702759325787365.Spec : Prop :=
  ∀ n, P3143702759325787365.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P1790688388371553753

`and(-3, A001541(n+1))`
-/

namespace A184327.P1790688388371553753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A001541 (n + 1))

end

end A184327.P1790688388371553753

namespace A184327

/-- `and(-3, A001541(n+1))` -/
def P1790688388371553753.Spec : Prop :=
  ∀ n, P1790688388371553753.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P11623363033920598344

`2*A090390(n+1)-1`
-/

namespace A184327.P11623363033920598344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090390 (n + 1) - 1

end

end A184327.P11623363033920598344

namespace A184327

/-- `2*A090390(n+1)-1` -/
def P11623363033920598344.Spec : Prop :=
  ∀ n, P11623363033920598344.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P10262302941879973031

`2*A111587(2*n)-1`
-/

namespace A184327.P10262302941879973031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111587 (2 * n) - 1

end

end A184327.P10262302941879973031

namespace A184327

/-- `2*A111587(2*n)-1` -/
def P10262302941879973031.Spec : Prop :=
  ∀ n, P10262302941879973031.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P10310458487555446605

`2*A001333(n+1)²-1`
-/

namespace A184327.P10310458487555446605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 (n + 1) ^ 2 - 1

end

end A184327.P10310458487555446605

namespace A184327

/-- `2*A001333(n+1)²-1` -/
def P10310458487555446605.Spec : Prop :=
  ∀ n, P10310458487555446605.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P4232706055302415237

`and(-3, A001333(2*(n+1)))`
-/

namespace A184327.P4232706055302415237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A001333 (2 * (n + 1)))

end

end A184327.P4232706055302415237

namespace A184327

/-- `and(-3, A001333(2*(n+1)))` -/
def P4232706055302415237.Spec : Prop :=
  ∀ n, P4232706055302415237.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P10549272209561580504

`or(2, A113224(2*n+1))-1`
-/

namespace A184327.P10549272209561580504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A113224 (2 * n + 1)) - 1

end

end A184327.P10549272209561580504

namespace A184327

/-- `or(2, A113224(2*n+1))-1` -/
def P10549272209561580504.Spec : Prop :=
  ∀ n, P10549272209561580504.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P6320313629898366371

`or(2, A078057(2*n+1))-2`
-/

namespace A184327.P6320313629898366371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A078057 (2 * n + 1)) - 2

end

end A184327.P6320313629898366371

namespace A184327

/-- `or(2, A078057(2*n+1))-2` -/
def P6320313629898366371.Spec : Prop :=
  ∀ n, P6320313629898366371.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P11084256623656104559

`2*(∑[A052542(n)]²-1)+1`
-/

namespace A184327.P11084256623656104559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1) + 1

end

end A184327.P11084256623656104559

namespace A184327

/-- `2*(∑[A052542(n)]²-1)+1` -/
def P11084256623656104559.Spec : Prop :=
  ∀ n, P11084256623656104559.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P6384629678252296929

`A182190(n)+Δ[A108475(n)]`
-/

namespace A184327.P6384629678252296929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n + (f1 (n + 1) - f1 n)

end

end A184327.P6384629678252296929

namespace A184327

/-- `A182190(n)+Δ[A108475(n)]` -/
def P6384629678252296929.Spec : Prop :=
  ∀ n, P6384629678252296929.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P2286329914629546433

`or(2, A143607(A016825(n)))-2`
-/

namespace A184327.P2286329914629546433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A143607 (A016825 n).toNat) - 2

end

end A184327.P2286329914629546433

namespace A184327

/-- `or(2, A143607(A016825(n)))-2` -/
def P2286329914629546433.Spec : Prop :=
  ∀ n, P2286329914629546433.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P9184679395402901767

`or(2, A331115(A016789(n)))-2`
-/

namespace A184327.P9184679395402901767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A331115 (A016789 n).toNat) - 2

end

end A184327.P9184679395402901767

namespace A184327

/-- `or(2, A331115(A016789(n)))-2` -/
def P9184679395402901767.Spec : Prop :=
  ∀ n, P9184679395402901767.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P16775620485865271083

`A099938(n+2)-Δ[A014601(n)]`
-/

namespace A184327.P16775620485865271083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099938 (n + 2) - (f1 (n + 1) - f1 n)

end

end A184327.P16775620485865271083

namespace A184327

/-- `A099938(n+2)-Δ[A014601(n)]` -/
def P16775620485865271083.Spec : Prop :=
  ∀ n, P16775620485865271083.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P14932086517810202229

`A001541(n+1)+A010684(n)-3`
-/

namespace A184327.P14932086517810202229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) + (A010684 n - 3)

end

end A184327.P14932086517810202229

namespace A184327

/-- `A001541(n+1)+A010684(n)-3` -/
def P14932086517810202229.Spec : Prop :=
  ∀ n, P14932086517810202229.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P2216149322441119686

`A001541(n+1)-Δ[Δ[A007590(n)]]`
-/

namespace A184327.P2216149322441119686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) - (f1 (n + 1) - f1 n)

end

end A184327.P2216149322441119686

namespace A184327

/-- `A001541(n+1)-Δ[Δ[A007590(n)]]` -/
def P2216149322441119686.Spec : Prop :=
  ∀ n, P2216149322441119686.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P14509142666121340929

`∑[A080039(2*n+1)]-A033999(n)`
-/

namespace A184327.P14509142666121340929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033999 n

end

end A184327.P14509142666121340929

namespace A184327

/-- `∑[A080039(2*n+1)]-A033999(n)` -/
def P14509142666121340929.Spec : Prop :=
  ∀ n, P14509142666121340929.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P13366072516184783174

`A100828(2*n+1)-Δ[A014601(n)]`
-/

namespace A184327.P13366072516184783174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A184327.P13366072516184783174

namespace A184327

/-- `A100828(2*n+1)-Δ[A014601(n)]` -/
def P13366072516184783174.Spec : Prop :=
  ∀ n, P13366072516184783174.a n = A184327 (n + 1)

end A184327

/-! ## A184327.P15270802497127423524

`A001333(n+1)*A002203(n+1)-1`
-/

namespace A184327.P15270802497127423524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A002203 (n + 1) - 1

end

end A184327.P15270802497127423524

namespace A184327

/-- `A001333(n+1)*A002203(n+1)-1` -/
def P15270802497127423524.Spec : Prop :=
  ∀ n, P15270802497127423524.a n = A184327 (n + 1)

end A184327

/-!
# A184328: Primes whose digital product is a positive square.

The programs for A184328, the canonical program `A184328.P14837785187931186694` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184328 has offset 1).

The definition of A184328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184328.P14837785187931186694

`p?[A050626(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184328

/-- `p?[A050626(n+1)]` -/
def P14837785187931186694.Spec : Prop :=
  ∀ n, P14837785187931186694.a n = A184328 (n + 1)

theorem P14837785187931186694.correct : P14837785187931186694.Spec := by
  intro n
  simp only [A184328, Nat.add_sub_cancel]

end A184328

/-! ## A184328.P12604052980926950126

`∏{d}[p?[A050626(A028310(n))], #]`
-/

namespace A184328.P12604052980926950126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A184328.P12604052980926950126

namespace A184328

/-- `∏{d}[p?[A050626(A028310(n))], #]` -/
def P12604052980926950126.Spec : Prop :=
  ∀ n, (P12604052980926950126.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P9682884657687330992

`∩[A038618(n+1), A050626(n+1)]`
-/

namespace A184328.P9682884657687330992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P9682884657687330992

namespace A184328

/-- `∩[A038618(n+1), A050626(n+1)]` -/
def P9682884657687330992.Spec : Prop :=
  ∀ n, (P9682884657687330992.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P14407985386908236790

`p?[A050626(A028310(n))]%A017357(n)`
-/

namespace A184328.P14407985386908236790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017357 n)

end

end A184328.P14407985386908236790

namespace A184328

/-- `p?[A050626(A028310(n))]%A017357(n)` -/
def P14407985386908236790.Spec : Prop :=
  ∀ n, P14407985386908236790.a n = A184328 (n + 1)

end A184328

/-! ## A184328.P17711172249784521655

`p?[A033999(n)²*A050626(A028310(n))]`
-/

namespace A184328.P17711172249784521655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A050626 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184328.P17711172249784521655

namespace A184328

/-- `p?[A033999(n)²*A050626(A028310(n))]` -/
def P17711172249784521655.Spec : Prop :=
  ∀ n, P17711172249784521655.a n = A184328 (n + 1)

end A184328

/-! ## A184328.P13867583919742699613

`p?[A050626(A028310(n))]-2%A006466(n)`
-/

namespace A184328.P13867583919742699613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - Int.tmod 2 (A006466 n)

end

end A184328.P13867583919742699613

namespace A184328

/-- `p?[A050626(A028310(n))]-2%A006466(n)` -/
def P13867583919742699613.Spec : Prop :=
  ∀ n, P13867583919742699613.a n = A184328 (n + 1)

end A184328

/-! ## A184328.P4786495186542958246

`(-1)^(2*A007318(n))*p?[A050626(A028310(n))]`
-/

namespace A184328.P4786495186542958246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (2 * A007318 n : ℤ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A184328.P4786495186542958246

namespace A184328

/-- `(-1)^(2*A007318(n))*p?[A050626(A028310(n))]` -/
def P4786495186542958246.Spec : Prop :=
  ∀ n, P4786495186542958246.a n = (A184328 (n + 1) : ℚ)

end A184328

/-! ## A184328.P6999667754581937056

`filter[A050626(n+1), A010051(#)]`
-/

namespace A184328.P6999667754581937056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184328.P6999667754581937056

namespace A184328

/-- `filter[A050626(n+1), A010051(#)]` -/
def P6999667754581937056.Spec : Prop :=
  ∀ n, P6999667754581937056.a n = A184328 (n + 1)

end A184328

/-! ## A184328.P15752048533033939414

`∩[A000040(n+1), A050626(n+1)]`
-/

namespace A184328.P15752048533033939414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P15752048533033939414

namespace A184328

/-- `∩[A000040(n+1), A050626(n+1)]` -/
def P15752048533033939414.Spec : Prop :=
  ∀ n, (P15752048533033939414.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P9890884975468692318

`∩[A004139(n+1), A050626(n+1)]`
-/

namespace A184328.P9890884975468692318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P9890884975468692318

namespace A184328

/-- `∩[A004139(n+1), A050626(n+1)]` -/
def P9890884975468692318.Spec : Prop :=
  ∀ n, (P9890884975468692318.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P14498122848756227089

`∩[A045319(n+1), A050626(n+1)]`
-/

namespace A184328.P14498122848756227089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P14498122848756227089

namespace A184328

/-- `∩[A045319(n+1), A050626(n+1)]` -/
def P14498122848756227089.Spec : Prop :=
  ∀ n, (P14498122848756227089.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P13153487720405313248

`∩[A045344(n+1), A050626(n+1)]`
-/

namespace A184328.P13153487720405313248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P13153487720405313248

namespace A184328

/-- `∩[A045344(n+1), A050626(n+1)]` -/
def P13153487720405313248.Spec : Prop :=
  ∀ n, (P13153487720405313248.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P3787826787675715372

`∩[A050626(n+1), A065091(n+1)]`
-/

namespace A184328.P3787826787675715372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P3787826787675715372

namespace A184328

/-- `∩[A050626(n+1), A065091(n+1)]` -/
def P3787826787675715372.Spec : Prop :=
  ∀ n, (P3787826787675715372.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P11000674635918225767

`∩[A050626(n+1), A065396(n+1)]`
-/

namespace A184328.P11000674635918225767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P11000674635918225767

namespace A184328

/-- `∩[A050626(n+1), A065396(n+1)]` -/
def P11000674635918225767.Spec : Prop :=
  ∀ n, (P11000674635918225767.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P3663121158354431678

`∩[A050626(n+1), A070303(n+1)]`
-/

namespace A184328.P3663121158354431678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P3663121158354431678

namespace A184328

/-- `∩[A050626(n+1), A070303(n+1)]` -/
def P3663121158354431678.Spec : Prop :=
  ∀ n, (P3663121158354431678.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P11883939125265506843

`∩[A050626(n+1), A116974(n+1)]`
-/

namespace A184328.P11883939125265506843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P11883939125265506843

namespace A184328

/-- `∩[A050626(n+1), A116974(n+1)]` -/
def P11883939125265506843.Spec : Prop :=
  ∀ n, (P11883939125265506843.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P8003161905522300817

`∩[A050626(n+1), A138837(n+1)]`
-/

namespace A184328.P8003161905522300817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P8003161905522300817

namespace A184328

/-- `∩[A050626(n+1), A138837(n+1)]` -/
def P8003161905522300817.Spec : Prop :=
  ∀ n, (P8003161905522300817.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P8881372207663569110

`∩[A050626(n+1), A157996(n+1)]`
-/

namespace A184328.P8881372207663569110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P8881372207663569110

namespace A184328

/-- `∩[A050626(n+1), A157996(n+1)]` -/
def P8881372207663569110.Spec : Prop :=
  ∀ n, (P8881372207663569110.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P4240973371247498183

`∩[A050626(n+1), A182140(n+1)]`
-/

namespace A184328.P4240973371247498183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P4240973371247498183

namespace A184328

/-- `∩[A050626(n+1), A182140(n+1)]` -/
def P4240973371247498183.Spec : Prop :=
  ∀ n, (P4240973371247498183.a n : ℤ) = A184328 (n + 1)

end A184328

/-! ## A184328.P4554241103201206394

`∩[A050626(n+1), A182986(n+1)]`
-/

namespace A184328.P4554241103201206394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184328.P4554241103201206394

namespace A184328

/-- `∩[A050626(n+1), A182986(n+1)]` -/
def P4554241103201206394.Spec : Prop :=
  ∀ n, (P4554241103201206394.a n : ℤ) = A184328 (n + 1)

end A184328

/-!
# A184329: Number of distinct n X 2 toroidal 0..6 arrays.

The programs for A184329, there is no canonical definition to state claims against.
-/

/-! ## A184329.P2041433348158609056

`A184331(∑[n+1]+2)`
-/

namespace A184329.P2041433348158609056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184331 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184329.P2041433348158609056

/-! ## A184329.P16053542146985689398

`record[A010054(n)*A184331(n+2)]`
-/

namespace A184329.P16053542146985689398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184329.P16053542146985689398

/-! ## A184329.P3942688451562481224

`record[root(A184331(n+3), A193722(n+1))]`
-/

namespace A184329.P3942688451562481224
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184331 (n + 3) : ℝ) ^ (1 / (A193722 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184329.P3942688451562481224

/-! ## A184329.P17997185965491397915

`or(4, A184331(A000096(n+1)))`
-/

namespace A184329.P17997185965491397915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A184331 (A000096 (n + 1)).toNat)

end

end A184329.P17997185965491397915

/-! ## A184329.P18203652794920634905

`A184331(A000096(n+1))%A054626(3*(n+1))`
-/

namespace A184329.P18203652794920634905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184331 (A000096 (n + 1)).toNat) (A054626 (3 * (n + 1)))

end

end A184329.P18203652794920634905

/-!
# A184330: Number of distinct n X 3 toroidal 0..6 arrays.

The programs for A184330, there is no canonical definition to state claims against.
-/

/-! ## A184330.P10310347387036829664

`A184331(A167614(n+1))`
-/

namespace A184330.P10310347387036829664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184331 (A167614 (n + 1)).toNat

end

end A184330.P10310347387036829664

/-! ## A184330.P9099757375777161025

`A184331(∑[n+3]+1)`
-/

namespace A184330.P9099757375777161025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184331 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184330.P9099757375777161025

/-!
# A184332: Ranks of (odd i)+j/r, when all i+j/r are ranked; r=golden ratio (1+sqrt(5))/2, i>=0, j>=0. Complement of A184333.

The programs for A184332, there is no canonical definition to state claims against.
-/

/-! ## A184332.P5027294986882241429

`lt[0, A215345(n+1)%2]+1`
-/

namespace A184332.P5027294986882241429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215345 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A184332.P5027294986882241429

/-! ## A184332.P13467087782524816124

`eq[1, gcd(2, A025657(n+1))]+1`
-/

namespace A184332.P13467087782524816124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A025657 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A184332.P13467087782524816124

/-! ## A184332.P8920322531919919939

`lt[0, A215345(A028310(n))%2]`
-/

namespace A184332.P8920322531919919939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215345 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184332.P8920322531919919939

/-! ## A184332.P18392425597059861581

`eq[1, A033999(A084532(n+1))]+1`
-/

namespace A184332.P18392425597059861581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A084532 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184332.P18392425597059861581

/-! ## A184332.P4055636492193828267

`eq[1, A040869(A215345(n+1))]+1`
-/

namespace A184332.P4055636492193828267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040869 (A215345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184332.P4055636492193828267

/-! ## A184332.P8467152129667326580

`eq[1, and(1, A215345(A233583(n+1)))]`
-/

namespace A184332.P8467152129667326580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A215345 (A233583 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184332.P8467152129667326580

/-! ## A184332.P15264817465828925621

`∪[A183989(n+1), A183991(n+1)]`
-/

namespace A184332.P15264817465828925621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184332.P15264817465828925621

/-! ## A184332.P15177803427584157455

`eq[1, A327515(A215345(n+1)+1)]+1`
-/

namespace A184332.P15177803427584157455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327515 (A215345 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184332.P15177803427584157455

/-!
# A184333: Ranks of (even i)+j/r, when all i+j/r are ranked; r=golden ratio (1+sqrt(5))/2, i>=0, j>=0. Complement of A184332.

The programs for A184333, there is no canonical definition to state claims against.
-/

/-! ## A184333.P16318486057229576852

`comp[A184332(n+1)-1]+1`
-/

namespace A184333.P16318486057229576852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184333.P16318486057229576852

/-! ## A184333.P4535100810259515451

`eq[0, A215345(n+1)%2]+1`
-/

namespace A184333.P4535100810259515451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215345 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184333.P4535100810259515451

/-! ## A184333.P136350301816849979

`lt[1, gcd(2, A025657(n+1))]+1`
-/

namespace A184333.P136350301816849979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A025657 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A184333.P136350301816849979

/-! ## A184333.P13524007712876016442

`record[(n+1)^(A084532(n+1)%2)]`
-/

namespace A184333.P13524007712876016442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A084532 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184333.P13524007712876016442

/-! ## A184333.P4149588380209605956

`record[A033999(A025657(n+1))+n]`
-/

namespace A184333.P4149588380209605956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025657 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184333.P4149588380209605956

/-! ## A184333.P14948296507333719045

`record[A015343(A215345(n+1))+n]`
-/

namespace A184333.P14948296507333719045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A215345 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184333.P14948296507333719045

/-! ## A184333.P8282133849474679136

`record[n-A016327(A084532(n+1))]`
-/

namespace A184333.P8282133849474679136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A016327 (A084532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184333.P8282133849474679136

/-! ## A184333.P2102188672995593013

`∪[A183990(n+1), A183992(n+1)]`
-/

namespace A184333.P2102188672995593013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184333.P2102188672995593013

/-! ## A184333.P15197491299054799636

`eq[0, A327515(A215345(n+1)+1)]+1`
-/

namespace A184333.P15197491299054799636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327515 (A215345 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184333.P15197491299054799636

/-! ## A184333.P17034762442790697824

`record[A001478(n+1)*A016327(A084532(n+1))]`
-/

namespace A184333.P17034762442790697824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) * A016327 (A084532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184333.P17034762442790697824

/-!
# A184335: Numbers k such that A000001(k) > 1 and A000001(k) | k.

The programs for A184335, there is no canonical definition to state claims against.
-/

/-! ## A184335.P2092737208923019326

`A325160(n+2)*A338139(A000079(n+1))`
-/

namespace A184335.P2092737208923019326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 2) * A338139 (A000079 (n + 1)).toNat

end

end A184335.P2092737208923019326

/-! ## A184335.P2957457304369773802

`A318887(A068842(n+1))*A325160(n+2)`
-/

namespace A184335.P2957457304369773802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318887 (A068842 (n + 1)).toNat * A325160 (n + 2)

end

end A184335.P2957457304369773802

/-! ## A184335.P111008078933159551

`A325160(n+2)*A325195(A325197(n+2))`
-/

namespace A184335.P111008078933159551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 2) * A325195 (A325197 (n + 2)).toNat

end

end A184335.P111008078933159551

/-! ## A184335.P10065242951712197191

`A063826(A352141(2*(n+1)))*A325160(n+2)`
-/

namespace A184335.P10065242951712197191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 (A352141 (2 * (n + 1))).toNat * A325160 (n + 2)

end

end A184335.P10065242951712197191

/-!
# A184336: a(n) = n + floor((3*n)^(1/3) - 2/3).

The programs for A184336, the canonical program `A184336.P15303840980857382926` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184336 has offset 1).

The definition of A184336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184336.P15303840980857382926

`A048766(A000006(∑[n+1])-1)+1+n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184336

/-- `A048766(A000006(∑[n+1])-1)+1+n` -/
def P15303840980857382926.Spec : Prop :=
  ∀ n, P15303840980857382926.a n = A184336 (n + 1)

theorem P15303840980857382926.correct : P15303840980857382926.Spec := by
  intro n
  simp only [A184336, Nat.add_sub_cancel]

end A184336

/-! ## A184336.P8929708064827907038

`comp[∑[A277903(A307604(2*n))]]`
-/

namespace A184336.P8929708064827907038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A307604 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184336.P8929708064827907038

namespace A184336

/-- `comp[∑[A277903(A307604(2*n))]]` -/
def P8929708064827907038.Spec : Prop :=
  ∀ n, (P8929708064827907038.a n : ℤ) = A184336 (n + 1)

end A184336

/-! ## A184336.P6892275690226564114

`comp[A197128(a(n-1)+2*n-1)]` with `a(0)=0`
-/

namespace A184336.P6892275690226564114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A197128 (f1 (n - 1) + (2 * n : ℤ) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184336.P6892275690226564114

namespace A184336

/-- `comp[A197128(a(n-1)+2*n-1)]` -/
def P6892275690226564114.Spec : Prop :=
  ∀ n, (P6892275690226564114.a n : ℤ) = A184336 (n + 1)

end A184336

/-! ## A184336.P17124514818172230820

`comp[A374249(A058331(n))]`
-/

namespace A184336.P17124514818172230820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A058331 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184336.P17124514818172230820

namespace A184336

/-- `comp[A374249(A058331(n))]` -/
def P17124514818172230820.Spec : Prop :=
  ∀ n, (P17124514818172230820.a n : ℤ) = A184336 (n + 1)

end A184336

/-! ## A184336.P9526556108397930843

`comp[A374249(A001105(n)+1)]`
-/

namespace A184336.P9526556108397930843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A001105 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184336.P9526556108397930843

namespace A184336

/-- `comp[A374249(A001105(n)+1)]` -/
def P9526556108397930843.Spec : Prop :=
  ∀ n, (P9526556108397930843.a n : ℤ) = A184336 (n + 1)

end A184336

/-! ## A184336.P12208202072448752669

`A127321(A171136(n+1))+n`
-/

namespace A184336.P12208202072448752669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A171136 (n + 1)).toNat + (n : ℤ)

end

end A184336.P12208202072448752669

namespace A184336

/-- `A127321(A171136(n+1))+n` -/
def P12208202072448752669.Spec : Prop :=
  ∀ n, P12208202072448752669.a n = A184336 (n + 1)

end A184336

/-! ## A184336.P1921627462999391831

`lt[2, A006530(A309346(n+1))]`
-/

namespace A184336.P1921627462999391831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309346 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184336.P1921627462999391831

namespace A184336

/-- `lt[2, A006530(A309346(n+1))]` -/
def P1921627462999391831.Spec : Prop :=
  ∀ n, (P1921627462999391831.a n : ℤ) = A184336 (n + 1)

end A184336

/-! ## A184336.P13179526788875592649

`A048766(A302697(n+1))-1+n`
-/

namespace A184336.P13179526788875592649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A302697 (n + 1)).toNat - 1 + (n : ℤ)

end

end A184336.P13179526788875592649

namespace A184336

/-- `A048766(A302697(n+1))-1+n` -/
def P13179526788875592649.Spec : Prop :=
  ∀ n, P13179526788875592649.a n = A184336 (n + 1)

end A184336

/-!
# A184337: a(n) is the integer whose decimal representation consists of n 8's followed by n 1's.

The programs for A184337, the canonical program `A184337.P6368528835179303585` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184337 has offset 0).

The definition of A184337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184337.P6368528835179303585

`A059482(n)*A002283(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184337

/-- `A059482(n)*A002283(n)` -/
def P6368528835179303585.Spec : Prop :=
  ∀ n, P6368528835179303585.a n = A184337 n

theorem P6368528835179303585.correct : P6368528835179303585.Spec := by
  intro n
  simp only [A184337]

end A184337

/-! ## A184337.P15898057493414461287

`(floor(8/9*10^n)+1)*(10^n-1)`
-/

namespace A184337.P15898057493414461287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(8 : ℚ) / 9 * (10 ^ n : ℚ)⌋ + 1) * ((10 ^ n : ℤ) - 1)

end

end A184337.P15898057493414461287

namespace A184337

/-- `(floor(8/9*10^n)+1)*(10^n-1)` -/
def P15898057493414461287.Spec : Prop :=
  ∀ n, P15898057493414461287.a n = A184337 n

end A184337

/-! ## A184337.P12575908320837474350

`(10^n)²-10^n-A075412(n)`
-/

namespace A184337.P12575908320837474350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ) - A075412 n

end

end A184337.P12575908320837474350

namespace A184337

/-- `(10^n)²-10^n-A075412(n)` -/
def P12575908320837474350.Spec : Prop :=
  ∀ n, P12575908320837474350.a n = A184337 n

end A184337

/-! ## A184337.P10466804673970708342

`(10^n)²-10^n-A002277(n)²`
-/

namespace A184337.P10466804673970708342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ) - A002277 n ^ 2

end

end A184337.P10466804673970708342

namespace A184337

/-- `(10^n)²-10^n-A002277(n)²` -/
def P10466804673970708342.Spec : Prop :=
  ∀ n, P10466804673970708342.a n = A184337 n

end A184337

/-! ## A184337.P6785529240598369299

`lcm(A002283(n), A199689(n))`
-/

namespace A184337.P6785529240598369299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002283 n) (A199689 n)

end

end A184337.P6785529240598369299

namespace A184337

/-- `lcm(A002283(n), A199689(n))` -/
def P6785529240598369299.Spec : Prop :=
  ∀ n, (P6785529240598369299.a n : ℤ) = A184337 n

end A184337

/-! ## A184337.P7382446525900105574

`A168624(n)-(A075412(n)+1)`
-/

namespace A184337.P7382446525900105574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168624 n - (A075412 n + 1)

end

end A184337.P7382446525900105574

namespace A184337

/-- `A168624(n)-(A075412(n)+1)` -/
def P7382446525900105574.Spec : Prop :=
  ∀ n, P7382446525900105574.a n = A184337 n

end A184337

/-! ## A184337.P4658953945812595020

`A002282(2*n)-A002281(n)`
-/

namespace A184337.P4658953945812595020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 (2 * n) - A002281 n

end

end A184337.P4658953945812595020

namespace A184337

/-- `A002282(2*n)-A002281(n)` -/
def P4658953945812595020.Spec : Prop :=
  ∀ n, P4658953945812595020.a n = A184337 n

end A184337

/-! ## A184337.P5960284307632362571

`A075415(n)+A075415(n)+A002283(n)`
-/

namespace A184337.P5960284307632362571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075415 n + (A075415 n + A002283 n)

end

end A184337.P5960284307632362571

namespace A184337

/-- `A075415(n)+A075415(n)+A002283(n)` -/
def P5960284307632362571.Spec : Prop :=
  ∀ n, P5960284307632362571.a n = A184337 n

end A184337

/-! ## A184337.P4099388545167421267

`A002283(n)+A002282(n)*A002283(n)`
-/

namespace A184337.P4099388545167421267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + A002282 n * A002283 n

end

end A184337.P4099388545167421267

namespace A184337

/-- `A002283(n)+A002282(n)*A002283(n)` -/
def P4099388545167421267.Spec : Prop :=
  ∀ n, P4099388545167421267.a n = A184337 n

end A184337

/-!
# A184338: "Types" (parities of i and j) when all the numbers ir+j are ranked, where r=golden ratio, i>=0, j>=0.

The programs for A184338, there is no canonical definition to state claims against.
-/

/-! ## A184338.P13794862942419682018

`(A183993(n+1)^3)%5`
-/

namespace A184338.P13794862942419682018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183993 (n + 1) ^ 3) 5

end

end A184338.P13794862942419682018

/-! ## A184338.P102200782058850865

`A082228(and(A183010(n), A183993(n+1)))`
-/

namespace A184338.P102200782058850865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 (Int.land (A183010 n) (A183993 (n + 1))).toNat

end

end A184338.P102200782058850865

/-! ## A184338.P7737931136895732642

`A096135(and(A183010(n), A183993(n+1)))`
-/

namespace A184338.P7737931136895732642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (Int.land (A183010 n) (A183993 (n + 1))).toNat

end

end A184338.P7737931136895732642

/-! ## A184338.P15755567115569224392

`A129594(and(A183010(n), A183993(n+1)))`
-/

namespace A184338.P15755567115569224392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (Int.land (A183010 n) (A183993 (n + 1))).toNat

end

end A184338.P15755567115569224392

/-! ## A184338.P14397469081328484502

`A134571(and(A183010(n), A183993(n+1)))`
-/

namespace A184338.P14397469081328484502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134571 (Int.land (A183010 n) (A183993 (n + 1))).toNat

end

end A184338.P14397469081328484502

/-! ## A184338.P16332869301668650220

`A279788(xor(A178334(n), A183993(n+1)))`
-/

namespace A184338.P16332869301668650220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279788 (Int.xor (A178334 n) (A183993 (n + 1))).toNat

end

end A184338.P16332869301668650220

/-! ## A184338.P9457716968404063834

`A096135(A178334(n+1)*A183993(n+1))`
-/

namespace A184338.P9457716968404063834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A178334 (n + 1) * A183993 (n + 1)).toNat

end

end A184338.P9457716968404063834

/-! ## A184338.P11163556520653102064

`A096135(A183993(n+1)/A178334(n+1))`
-/

namespace A184338.P11163556520653102064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (SequenceMachineLib.roundAway ((A183993 (n + 1) : ℚ) / (A178334 (n + 1) : ℚ))).toNat

end

end A184338.P11163556520653102064

/-! ## A184338.P12004674173674615602

`A096135(A183993(n+1)^A178334(n+1))`
-/

namespace A184338.P12004674173674615602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (SequenceMachineLib.roundAway ((A183993 (n + 1) : ℚ) ^ (A178334 (n + 1) : ℤ))).toNat

end

end A184338.P12004674173674615602

/-! ## A184338.P15055842906489514662

`A004396(xor(A178334(n), A183993(n+1)))+1`
-/

namespace A184338.P15055842906489514662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.xor (A178334 n) (A183993 (n + 1))).toNat + 1

end

end A184338.P15055842906489514662

/-!
# A184339: Number of strings of numbers x(i=1..n) in 0..n with sum i^4*x(i) equal to n^5.

The programs for A184339, there is no canonical definition to state claims against.
-/

/-! ## A184339.P17842826060125310005

`A184348(∑[4*n]+1)`
-/

namespace A184339.P17842826060125310005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184339.P17842826060125310005

/-! ## A184339.P6749718928069976618

`∏{d}[A001844(n), A184348(#)]`
-/

namespace A184339.P6749718928069976618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A184348 d

end

end A184339.P6749718928069976618

/-! ## A184339.P10941282903760288999

`∏{d}[A131738(∑[4*n]), A184348(#)]`
-/

namespace A184339.P10941282903760288999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A184348 d

end

end A184339.P10941282903760288999

/-! ## A184339.P6239656846334905154

`A185037(n)+A184348(A001844(n))`
-/

namespace A184339.P6239656846334905154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n + A184348 (A001844 n).toNat

end

end A184339.P6239656846334905154

/-! ## A184339.P1979450066076502189

`A185203(n)+A184348(A001844(n))`
-/

namespace A184339.P1979450066076502189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 n + A184348 (A001844 n).toNat

end

end A184339.P1979450066076502189

/-!
# A184340: Number of strings of numbers x(i=1..n) in 0..1 with sum i^4*x(i) equal to n^4*1.

The programs for A184340, there is no canonical definition to state claims against.
-/

/-! ## A184340.P4894616978952090496

`gcd(A084989(n+4), A110971(A246655(n+1)))`
-/

namespace A184340.P4894616978952090496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084989 (n + 4)) (A110971 (A246655 (n + 1)).toNat)

end

end A184340.P4894616978952090496

/-! ## A184340.P13070981005883457907

`A187243(A306149(2*(n+2))%A246277(n+4))`
-/

namespace A184340.P13070981005883457907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187243 (Int.tmod (A306149 (2 * (n + 2))) (A246277 (n + 4))).toNat

end

end A184340.P13070981005883457907

/-! ## A184340.P16148678131682044831

`A000010(A073812(A080400(A237016(A066025(n+1)))))`
-/

namespace A184340.P16148678131682044831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A073812 (A080400 (A237016 (A066025 (n + 1)).toNat).toNat).toNat).toNat

end

end A184340.P16148678131682044831

/-!
# A184341: Number of strings of numbers x(i=1..n) in 0..2 with sum i^4*x(i) equal to n^4*2.

The programs for A184341, there is no canonical definition to state claims against.
-/

/-! ## A184341.P8378314286355336888

`A184348(∑[n+2])`
-/

namespace A184341.P8378314286355336888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184341.P8378314286355336888

/-! ## A184341.P12556200784949506658

`A184348(A000096(n+1))+char[22]`
-/

namespace A184341.P12556200784949506658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184341.P12556200784949506658

/-! ## A184341.P2476819059026696006

`C(A184348(A000096(n+1)), A184348(n+1))`
-/

namespace A184341.P2476819059026696006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A184348 (A000096 (n + 1)).toNat).toNat (A184348 (n + 1)).toNat

end

end A184341.P2476819059026696006

/-! ## A184341.P11024060974606164261

`A184348(A000096(n+1))%A000040(A000041(n))`
-/

namespace A184341.P11024060974606164261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184348 (A000096 (n + 1)).toNat) (A000040 (A000041 n).toNat)

end

end A184341.P11024060974606164261

/-!
# A184342: Number of strings of numbers x(i=1..n) in 0..3 with sum i^4*x(i) equal to n^4*3.

The programs for A184342, there is no canonical definition to state claims against.
-/

/-! ## A184342.P7325291387684597858

`A184348(∑[n+3]+1)`
-/

namespace A184342.P7325291387684597858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184342.P7325291387684597858

/-! ## A184342.P11500413429814194051

`A184348(Δ[A008778(n)])+char[40]`
-/

namespace A184342.P11500413429814194051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184342.P11500413429814194051

/-! ## A184342.P1065126484219276985

`A185037(n)+A184348(Δ[A008778(n)])`
-/

namespace A184342.P1065126484219276985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n + A184348 (f1 (n + 1) - f1 n).toNat

end

end A184342.P1065126484219276985

/-! ## A184342.P10899717455725771037

`A184348(Δ[A008778(n)])%A000045(n+10)`
-/

namespace A184342.P10899717455725771037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184348 (f1 (n + 1) - f1 n).toNat) (A000045 (n + 10))

end

end A184342.P10899717455725771037

/-! ## A184342.P7923818432877406435

`A184348(A034856(n+2))+A000007(n+2)`
-/

namespace A184342.P7923818432877406435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A034856 (n + 2)).toNat + A000007 (n + 2)

end

end A184342.P7923818432877406435

/-!
# A184343: Number of strings of numbers x(i=1..n) in 0..4 with sum i^4*x(i) equal to n^4*4.

The programs for A184343, there is no canonical definition to state claims against.
-/

/-! ## A184343.P16913875769968604104

`A184348(∑[n+4]+3)`
-/

namespace A184343.P16913875769968604104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184343.P16913875769968604104

/-! ## A184343.P5669623377460821897

`A184348(A141214(n+1))+char[19]`
-/

namespace A184343.P5669623377460821897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184343.P5669623377460821897

/-! ## A184343.P130685578864180854

`A184348(A027379(n+2))+char[23]`
-/

namespace A184343.P130685578864180854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184343.P130685578864180854

/-! ## A184343.P5172790503135343350

`A184348(A141214(n+1))%A000108(n+2)`
-/

namespace A184343.P5172790503135343350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184348 (A141214 (n + 1)).toNat) (A000108 (n + 2))

end

end A184343.P5172790503135343350

/-! ## A184343.P11490911897358676029

`A184348(A027379(n+2))%A000045(n+7)²`
-/

namespace A184343.P11490911897358676029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184348 (A027379 (n + 2)).toNat) (A000045 (n + 7) ^ 2)

end

end A184343.P11490911897358676029

/-!
# A184344: Number of strings of numbers x(i=1..n) in 0..5 with sum i^4*x(i) equal to n^4*5.

The programs for A184344, there is no canonical definition to state claims against.
-/

/-! ## A184344.P31893056175682244

`A184348(∑[n+5]+6)`
-/

namespace A184344.P31893056175682244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184344.P31893056175682244

/-! ## A184344.P16627987306863265764

`A184348(A046691(n+3))+char[19]`
-/

namespace A184344.P16627987306863265764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184344.P16627987306863265764

/-! ## A184344.P14292845950357671946

`A184348(Δ[A023545(n+1)])+char[20]`
-/

namespace A184344.P14292845950357671946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184344.P14292845950357671946

/-! ## A184344.P6285879193733849749

`A184348(n+1)*A184348(Δ[A264443(n)])`
-/

namespace A184344.P6285879193733849749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (n + 1) * A184348 (f1 (n + 1) - f1 n).toNat

end

end A184344.P6285879193733849749

/-! ## A184344.P14283039041318319222

`A184348(Δ[A264443(n)])+A151933(n+4)`
-/

namespace A184344.P14283039041318319222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (f1 (n + 1) - f1 n).toNat + A151933 (n + 4)

end

end A184344.P14283039041318319222

/-!
# A184345: Number of strings of numbers x(i=1..n) in 0..6 with sum i^4*x(i) equal to n^4*6.

The programs for A184345, there is no canonical definition to state claims against.
-/

/-! ## A184345.P5211837234001696612

`A184348(C(n+7, 2)-5)`
-/

namespace A184345.P5211837234001696612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (Nat.choose (n + 7) 2 - 5)

end

end A184345.P5211837234001696612

/-! ## A184345.P2009583224574596854

`A184348(A052905(n+3))`
-/

namespace A184345.P2009583224574596854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A052905 (n + 3)).toNat

end

end A184345.P2009583224574596854

/-! ## A184345.P3539221573233567504

`A184348(eq[3, A219347(n)])`
-/

namespace A184345.P3539221573233567504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184345.P3539221573233567504

/-! ## A184345.P13244861758097657919

`A184348(eq[5, A152157(n)])`
-/

namespace A184345.P13244861758097657919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184345.P13244861758097657919

/-! ## A184345.P10813479174621052843

`A184348(eq[5, A193592(n)])`
-/

namespace A184345.P10813479174621052843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184345.P10813479174621052843

/-!
# A184346: Number of strings of numbers x(i=1..n) in 0..7 with sum i^4*x(i) equal to n^4*7.

The programs for A184346, there is no canonical definition to state claims against.
-/

/-! ## A184346.P1986294618197174067

`A184348(C(n+7, 2)+n+1)`
-/

namespace A184346.P1986294618197174067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (Nat.choose (n + 7) 2 + (n + 1))

end

end A184346.P1986294618197174067

/-! ## A184346.P1783036882475650686

`A184348(A055999(n+4))`
-/

namespace A184346.P1783036882475650686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A055999 (n + 4)).toNat

end

end A184346.P1783036882475650686

/-! ## A184346.P2009674209807019197

`A184348(eq[4, A219347(n)])`
-/

namespace A184346.P2009674209807019197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184346.P2009674209807019197

/-! ## A184346.P10760220106695902045

`A184348(eq[6, A193592(n)])`
-/

namespace A184346.P10760220106695902045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184346.P10760220106695902045

/-! ## A184346.P16810558532740403184

`A184348(eq[7, A152157(n)])`
-/

namespace A184346.P16810558532740403184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184346.P16810558532740403184

/-!
# A184347: Number of strings of numbers x(i=1..n) in 0..8 with sum i^4*x(i) equal to n^4*8.

The programs for A184347, there is no canonical definition to state claims against.
-/

/-! ## A184347.P8843447696780402520

`A184348(eq[5, A219347(n)])`
-/

namespace A184347.P8843447696780402520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184347.P8843447696780402520

/-! ## A184347.P8011037802696933571

`A184348(eq[7, A193592(n)])`
-/

namespace A184347.P8011037802696933571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184347.P8011037802696933571

/-! ## A184347.P8478762489410474234

`A184348(A155212(n+4)+1)`
-/

namespace A184347.P8478762489410474234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A155212 (n + 4) + 1).toNat

end

end A184347.P8478762489410474234

/-! ## A184347.P742077908672729801

`A184348(A052905(n+5)-2)`
-/

namespace A184347.P742077908672729801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A052905 (n + 5) - 2).toNat

end

end A184347.P742077908672729801

/-! ## A184347.P9367145618191424678

`A184348(A046691(n+6)-3)`
-/

namespace A184347.P9367145618191424678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A046691 (n + 6) - 3).toNat

end

end A184347.P9367145618191424678

/-!
# A184348: Table read by antidiagonals: T(n,k) is the number of strings of numbers x(i=1..n) in 0..k with sum i^4*x(i) equal to n^4*k.

The programs for A184348, there is no canonical definition to state claims against.
-/

/-! ## A184348.P15341078932415804092

`A341052(A188316(n)+1)`
-/

namespace A184348.P15341078932415804092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341052 (A188316 n + 1).toNat

end

end A184348.P15341078932415804092

/-! ## A184348.P12577729818078787550

`A049076(A115648(n+1)%A250120(3*n+4))`
-/

namespace A184348.P12577729818078787550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (Int.tmod (A115648 (n + 1)) (A250120 (3 * n + 4))).toNat

end

end A184348.P12577729818078787550

/-! ## A184348.P8495201998065146066

`A007318(A084938(n)%A349983(2*(n+1)))`
-/

namespace A184348.P8495201998065146066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (A084938 n) (A349983 (2 * (n + 1)))).toNat

end

end A184348.P8495201998065146066

/-! ## A184348.P5638975811738530562

`A001511(gcd(A157397(n+1), A372591(n+1)))`
-/

namespace A184348.P5638975811738530562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.gcd (A157397 (n + 1)) (A372591 (n + 1)))

end

end A184348.P5638975811738530562

/-! ## A184348.P5412921627211946529

`A003989(A115755(n+1))`
-/

namespace A184348.P5412921627211946529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A115755 (n + 1)).toNat

end

end A184348.P5412921627211946529

/-!
# A184350: Number of strings of numbers x(i=1..4) in 0..n with sum i^4*x(i) equal to 256*n.

The programs for A184350, there is no canonical definition to state claims against.
-/

/-! ## A184350.P13393457546950252196

`A184348(∑[n+3]+7)`
-/

namespace A184350.P13393457546950252196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184350.P13393457546950252196

/-! ## A184350.P4852511443243550850

`A184348(A055999(n)+10)+A007814(2*n+1)`
-/

namespace A184350.P4852511443243550850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A055999 n + 10).toNat + A007814 (2 * n + 1)

end

end A184350.P4852511443243550850

/-!
# A184351: Number of strings of numbers x(i=1..5) in 0..n with sum i^4*x(i) equal to 625*n.

The programs for A184351, there is no canonical definition to state claims against.
-/

/-! ## A184351.P5162702840102854059

`A184348(∑[n+4]+11)`
-/

namespace A184351.P5162702840102854059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A184351.P5162702840102854059

/-! ## A184351.P15107640856782101142

`or(char[3], A184348(A056000(n)+15))`
-/

namespace A184351.P15107640856782101142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184348 (A056000 n + 15).toNat)

end

end A184351.P15107640856782101142

/-! ## A184351.P6671954949520126299

`A184348(A000217(n+4)+5)+char[30]`
-/

namespace A184351.P6671954949520126299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184351.P6671954949520126299

/-! ## A184351.P15713016357909200898

`A184348(n+1)*A184348(A167499(n+3))`
-/

namespace A184351.P15713016357909200898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (n + 1) * A184348 (A167499 (n + 3)).toNat

end

end A184351.P15713016357909200898

/-! ## A184351.P3485297387663408360

`A184348(n+1)*A184348(A155212(n)+13)`
-/

namespace A184351.P3485297387663408360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (n + 1) * A184348 (A155212 n + 13).toNat

end

end A184351.P3485297387663408360

/-!
# A184352: Number of strings of numbers x(i=1..6) in 0..n with sum i^4*x(i) equal to 1296*n.

The programs for A184352, there is no canonical definition to state claims against.
-/

/-! ## A184352.P12049407765311761522

`A184348(∑[n+5]+16)`
-/

namespace A184352.P12049407765311761522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A184352.P12049407765311761522

/-!
# A184353: Number of strings of numbers x(i=1..7) in 0..n with sum i^4*x(i) equal to 2401*n.

The programs for A184353, there is no canonical definition to state claims against.
-/

/-! ## A184353.P7503533024283873557

`A184348(C(n+7, 2)+7)`
-/

namespace A184353.P7503533024283873557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (Nat.choose (n + 7) 2 + 7)

end

end A184353.P7503533024283873557

/-! ## A184353.P2419114399901622929

`A184348(A167487(n+5))`
-/

namespace A184353.P2419114399901622929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A167487 (n + 5)).toNat

end

end A184353.P2419114399901622929

/-! ## A184353.P2739200718708938917

`A184348(A056119(n)+28)`
-/

namespace A184353.P2739200718708938917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A056119 n + 28).toNat

end

end A184353.P2739200718708938917

/-! ## A184353.P538519393301043281

`A184348(A166136(n+5)+1)`
-/

namespace A184353.P538519393301043281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A166136 (n + 5) + 1).toNat

end

end A184353.P538519393301043281

/-! ## A184353.P1829582486515297376

`A184348(A167614(n+5)+4)`
-/

namespace A184353.P1829582486515297376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A167614 (n + 5) + 4).toNat

end

end A184353.P1829582486515297376

/-!
# A184354: Number of strings of numbers x(i=1..8) in 0..n with sum i^4*x(i) equal to 4096*n.

The programs for A184354, there is no canonical definition to state claims against.
-/

/-! ## A184354.P17219229729273593917

`A184348(C(n+9, 2)-n)`
-/

namespace A184354.P17219229729273593917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (Nat.choose (n + 9) 2 - n)

end

end A184354.P17219229729273593917

/-! ## A184354.P1596606293486007682

`A184348(A166136(n+6)+2)`
-/

namespace A184354.P1596606293486007682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A166136 (n + 6) + 2).toNat

end

end A184354.P1596606293486007682

/-! ## A184354.P17958512970401082468

`A184348(A167499(n+6)+3)`
-/

namespace A184354.P17958512970401082468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A167499 (n + 6) + 3).toNat

end

end A184354.P17958512970401082468

/-! ## A184354.P16298769803807611851

`A184348(A000124(n+7)+7)`
-/

namespace A184354.P16298769803807611851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A000124 (n + 7) + 7).toNat

end

end A184354.P16298769803807611851

/-! ## A184354.P9878583759120373248

`A184348(A000217(n+7)+8)`
-/

namespace A184354.P9878583759120373248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A000217 (n + 7) + 8).toNat

end

end A184354.P9878583759120373248

/-!
# A184355: G.f.: Sum_{n>=0} x^n / [Sum_{k>=0} C(n+k-1,k)^2*(-x)^k]^n.

The programs for A184355, there is no canonical definition to state claims against.
-/

/-! ## A184355.P1199462955334011379

`A276796(∑{e}[n+1, #]+∏[abs(1-2*n)])`
-/

namespace A184355.P1199462955334011379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ∏ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A184355.P1199462955334011379

/-! ## A184355.P8283615184174743939

`A276796(∏[abs(1-2*n)]+∑[(-1)^(n%3)])`
-/

namespace A184355.P8283615184174743939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (∏ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A184355.P8283615184174743939

/-!
# A184356: G.f.: Sum_{n>=0} x^n/[Sum_{k=0..n} C(n,k)^2*(-x)^k]^n.

The programs for A184356, there is no canonical definition to state claims against.
-/

/-! ## A184356.P12355942276849850660

`A008612(A351772(n))+1`
-/

namespace A184356.P12355942276849850660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A351772 n).toNat + 1

end

end A184356.P12355942276849850660

/-! ## A184356.P453015948616532922

`A187183(∑[∑[A255927(n)]])`
-/

namespace A184356.P453015948616532922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184356.P453015948616532922

/-!
# A184357: a(n) = Sum_{k=0..n} C(n^2-k^2, n-k)*C(k^2, k).

The programs for A184357, there is no canonical definition to state claims against.
-/

/-! ## A184357.P3257947942215709548

`A145168(n)+A052767(A073787(n+1))`
-/

namespace A184357.P3257947942215709548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145168 n + A052767 (A073787 (n + 1)).toNat

end

end A184357.P3257947942215709548

/-!
# A184358: a(n) = (n+1)!^2/2^n.

The programs for A184358, the canonical program `A184358.P3840712160503001842` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184358 has offset 0).

The definition of A184358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184358.P3840712160503001842

`(n+1)!²/2^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184358

/-- `(n+1)!²/2^n` -/
def P3840712160503001842.Spec : Prop :=
  ∀ n, P3840712160503001842.a n = (A184358 n : ℚ)

end A184358

/-! ## A184358.P16041819597584938478

`2*∏[(n+1)²/2]`
-/

namespace A184358.P16041819597584938478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A184358.P16041819597584938478

namespace A184358

/-- `2*∏[(n+1)²/2]` -/
def P16041819597584938478.Spec : Prop :=
  ∀ n, P16041819597584938478.a n = (A184358 n : ℚ)

end A184358

/-! ## A184358.P8773386224768963587

`abs(∑[n]²*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A184358.P8773386224768963587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * a (n - 2)

end

end A184358.P8773386224768963587

namespace A184358

/-- `abs(∑[n]²*a(n-2))` -/
def P8773386224768963587.Spec : Prop :=
  ∀ n, (P8773386224768963587.a n : ℤ) = A184358 n

end A184358

/-! ## A184358.P16256753652095855230

`floor(∑[n]²*a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A184358.P16256753652095855230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * a (n - 2)

end

end A184358.P16256753652095855230

namespace A184358

/-- `floor(∑[n]²*a(n-2))` -/
def P16256753652095855230.Spec : Prop :=
  ∀ n, (P16256753652095855230.a n : ℤ) = A184358 n

end A184358

/-!
# A184359: Recurrence: Sum_{n>=0} a(n-k)*a(k) = (n+1)!^2/2^n.

The programs for A184359, there is no canonical definition to state claims against.
-/

/-! ## A184359.P14555562256818547327

`A229548(n+1)-A025463(A184361(n))`
-/

namespace A184359.P14555562256818547327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229548 (n + 1) - A025463 (A184361 n).toNat

end

end A184359.P14555562256818547327

/-!
# A184360: G.f.: A(x) = x/Series_Reversion(x*G(x)) where G(x) = Sum_{n>=0} (n+1)!^2*(x/2)^n.

The programs for A184360, there is no canonical definition to state claims against.
-/

/-! ## A184360.P12501970734884066534

`∏{p}[A048143(n)²+n², #]`
-/

namespace A184360.P12501970734884066534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048143 n ^ 2 + (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A184360.P12501970734884066534

/-!
# A184361: Self-convolution equals A184360.

The programs for A184361, there is no canonical definition to state claims against.
-/

/-! ## A184361.P17889473754098852159

`or(n, A214974(A006125(n)))`
-/

namespace A184361.P17889473754098852159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A214974 (A006125 n).toNat)

end

end A184361.P17889473754098852159

/-! ## A184361.P16425820539477675291

`lcm(A008756(n), A279207(A322912(n)))`
-/

namespace A184361.P16425820539477675291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008756 n) (A279207 (A322912 n).toNat)

end

end A184361.P16425820539477675291

/-!
# A184362: G.f.: eta(x) + x*eta'(x).

The programs for A184362, the canonical program `A184362.P12277345138454522326` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184362 has offset 0).

The definition of A184362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184362.P17838142960428597232

`(n+1)*A010815(n)`
-/

namespace A184362.P17838142960428597232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010815 n

end

end A184362.P17838142960428597232

namespace A184362

/-- `(n+1)*A010815(n)` -/
def P17838142960428597232.Spec : Prop :=
  ∀ n, P17838142960428597232.a n = A184362 n

end A184362

/-! ## A184362.P10005008983890832026

`(n+1)*(A007706(n)-1)`
-/

namespace A184362.P10005008983890832026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007706 n - 1)

end

end A184362.P10005008983890832026

namespace A184362

/-- `(n+1)*(A007706(n)-1)` -/
def P10005008983890832026.Spec : Prop :=
  ∀ n, P10005008983890832026.a n = A184362 n

end A184362

/-! ## A184362.P9156726434534608843

`(n+1)*A274719(2*n)`
-/

namespace A184362.P9156726434534608843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A274719 (2 * n)

end

end A184362.P9156726434534608843

namespace A184362

/-- `(n+1)*A274719(2*n)` -/
def P9156726434534608843.Spec : Prop :=
  ∀ n, P9156726434534608843.a n = A184362 n

end A184362

/-! ## A184362.P11264391961905953678

`(n+1)*A185124(8*n)`
-/

namespace A184362.P11264391961905953678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A185124 (8 * n)

end

end A184362.P11264391961905953678

namespace A184362

/-- `(n+1)*A185124(8*n)` -/
def P11264391961905953678.Spec : Prop :=
  ∀ n, P11264391961905953678.a n = A184362 n

end A184362

/-! ## A184362.P2614168138979428162

`(n+1)*A134756(n)%2`
-/

namespace A184362.P2614168138979428162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A134756 n) 2

end

end A184362.P2614168138979428162

namespace A184362

/-- `(n+1)*A134756(n)%2` -/
def P2614168138979428162.Spec : Prop :=
  ∀ n, P2614168138979428162.a n = A184362 n

end A184362

/-! ## A184362.P14137852718165313941

`(n+1)*(A286956(n)-n)`
-/

namespace A184362.P14137852718165313941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A286956 n - (n : ℤ))

end

end A184362.P14137852718165313941

namespace A184362

/-- `(n+1)*(A286956(n)-n)` -/
def P14137852718165313941.Spec : Prop :=
  ∀ n, P14137852718165313941.a n = A184362 n

end A184362

/-! ## A184362.P4976985013234077385

`xor(n, (-1)^n)*A121373(n)`
-/

namespace A184362.P4976985013234077385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n) * A121373 n

end

end A184362.P4976985013234077385

namespace A184362

/-- `xor(n, (-1)^n)*A121373(n)` -/
def P4976985013234077385.Spec : Prop :=
  ∀ n, P4976985013234077385.a n = A184362 n

end A184362

/-! ## A184362.P12277345138454522326

`(n+1)*Δ[A078616(abs(1-n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184362

/-- `(n+1)*Δ[A078616(abs(1-n))]` -/
def P12277345138454522326.Spec : Prop :=
  ∀ n, P12277345138454522326.a n = A184362 n

theorem P12277345138454522326.correct : P12277345138454522326.Spec := by
  intro n
  simp only [A184362]

end A184362

/-! ## A184362.P17846428900501722082

`A010815(n)-A147843(n)`
-/

namespace A184362.P17846428900501722082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n - A147843 n

end

end A184362.P17846428900501722082

namespace A184362

/-- `A010815(n)-A147843(n)` -/
def P17846428900501722082.Spec : Prop :=
  ∀ n, P17846428900501722082.a n = A184362 n

end A184362

/-! ## A184362.P4823453791953143692

`A010815(n)*A199343(n)`
-/

namespace A184362.P4823453791953143692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A199343 n

end

end A184362.P4823453791953143692

namespace A184362

/-- `A010815(n)*A199343(n)` -/
def P4823453791953143692.Spec : Prop :=
  ∀ n, P4823453791953143692.a n = A184362 n

end A184362

/-! ## A184362.P8458086103983520313

`A010815(n)*A199344(n)`
-/

namespace A184362.P8458086103983520313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A199344 n

end

end A184362.P8458086103983520313

namespace A184362

/-- `A010815(n)*A199344(n)` -/
def P8458086103983520313.Spec : Prop :=
  ∀ n, P8458086103983520313.a n = A184362 n

end A184362

/-! ## A184362.P6815294098270530154

`(n+1)*A380038(∑[n+1])`
-/

namespace A184362.P6815294098270530154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A380038 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184362.P6815294098270530154

namespace A184362

/-- `(n+1)*A380038(∑[n+1])` -/
def P6815294098270530154.Spec : Prop :=
  ∀ n, P6815294098270530154.a n = A184362 n

end A184362

/-! ## A184362.P7461403087402020199

`(n+1)*A322212(∑[n])`
-/

namespace A184362.P7461403087402020199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184362.P7461403087402020199

namespace A184362

/-- `(n+1)*A322212(∑[n])` -/
def P7461403087402020199.Spec : Prop :=
  ∀ n, P7461403087402020199.a n = A184362 n

end A184362

/-!
# A184363: G.f.: eta(x)^3*(1 + x*eta'(x)/eta(x)), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

The programs for A184363, the canonical program `A184363.P2962500136500042189` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184363 has offset 0).

The definition of A184363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184363.P740903570385845172

`(n/3+1)*A010816(n)`
-/

namespace A184363.P740903570385845172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 + 1) * (A010816 n : ℚ)

end

end A184363.P740903570385845172

namespace A184363

/-- `(n/3+1)*A010816(n)` -/
def P740903570385845172.Spec : Prop :=
  ∀ n, P740903570385845172.a n = (A184363 n : ℚ)

end A184363

/-! ## A184363.P1255679299491931122

`(n+3)/3*Δ[A274094(n)]`
-/

namespace A184363.P1255679299491931122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ)

end

end A184363.P1255679299491931122

namespace A184363

/-- `(n+3)/3*Δ[A274094(n)]` -/
def P1255679299491931122.Spec : Prop :=
  ∀ n, P1255679299491931122.a n = (A184363 n : ℚ)

end A184363

/-! ## A184363.P15651008527565118707

`∑[A099375(n)]*A197870(n)`
-/

namespace A184363.P15651008527565118707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A197870 n

end

end A184363.P15651008527565118707

namespace A184363

/-- `∑[A099375(n)]*A197870(n)` -/
def P15651008527565118707.Spec : Prop :=
  ∀ n, P15651008527565118707.a n = A184363 n

end A184363

/-! ## A184363.P5298754870465179119

`2*A010816(n)-A184366(n)`
-/

namespace A184363.P5298754870465179119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010816 n - A184366 n

end

end A184363.P5298754870465179119

namespace A184363

/-- `2*A010816(n)-A184366(n)` -/
def P5298754870465179119.Spec : Prop :=
  ∀ n, P5298754870465179119.a n = A184363 n

end A184363

/-! ## A184363.P12677922330963755220

`∑[A005408(A025581(n))]*A197870(n)`
-/

namespace A184363.P12677922330963755220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A197870 n

end

end A184363.P12677922330963755220

namespace A184363

/-- `∑[A005408(A025581(n))]*A197870(n)` -/
def P12677922330963755220.Spec : Prop :=
  ∀ n, P12677922330963755220.a n = A184363 n

end A184363

/-! ## A184363.P6634010065651638932

`∑[A088226(A017101(n))]*A197870(n)`
-/

namespace A184363.P6634010065651638932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A017101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A197870 n

end

end A184363.P6634010065651638932

namespace A184363

/-- `∑[A088226(A017101(n))]*A197870(n)` -/
def P6634010065651638932.Spec : Prop :=
  ∀ n, P6634010065651638932.a n = A184363 n

end A184363

/-! ## A184363.P2962500136500042189

`∑[A099375(n)]*A009531(A198954(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184363

/-- `∑[A099375(n)]*A009531(A198954(n))` -/
def P2962500136500042189.Spec : Prop :=
  ∀ n, P2962500136500042189.a n = A184363 n

theorem P2962500136500042189.correct : P2962500136500042189.Spec := by
  intro n
  simp only [A184363]

end A184363

/-! ## A184363.P17527413699176850708

`A049480(A004736(n+1))*A197870(n)`
-/

namespace A184363.P17527413699176850708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049480 (A004736 (n + 1)).toNat * A197870 n

end

end A184363.P17527413699176850708

namespace A184363

/-- `A049480(A004736(n+1))*A197870(n)` -/
def P17527413699176850708.Spec : Prop :=
  ∀ n, P17527413699176850708.a n = A184363 n

end A184363

/-! ## A184363.P151269106170577728

`∑[A099375(n)]*A154269(A054582(n))`
-/

namespace A184363.P151269106170577728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A154269 (A054582 n).toNat

end

end A184363.P151269106170577728

namespace A184363

/-- `∑[A099375(n)]*A154269(A054582(n))` -/
def P151269106170577728.Spec : Prop :=
  ∀ n, P151269106170577728.a n = A184363 n

end A184363

/-!
# A184365: G.f.: eta(x) - x*eta'(x), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

The programs for A184365, the canonical program `A184365.P16997047362946431375` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184365 has offset 0).

The definition of A184365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184365.P6248216514080610165

`(1-n)*A010815(n)`
-/

namespace A184365.P6248216514080610165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A010815 n

end

end A184365.P6248216514080610165

namespace A184365

/-- `(1-n)*A010815(n)` -/
def P6248216514080610165.Spec : Prop :=
  ∀ n, P6248216514080610165.a n = A184365 n

end A184365

/-! ## A184365.P6575167484668911932

`(1-n)*(A007706(n)-1)`
-/

namespace A184365.P6575167484668911932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (A007706 n - 1)

end

end A184365.P6575167484668911932

namespace A184365

/-- `(1-n)*(A007706(n)-1)` -/
def P6575167484668911932.Spec : Prop :=
  ∀ n, P6575167484668911932.a n = A184365 n

end A184365

/-! ## A184365.P3709970031665387918

`(1-n)*A274719(2*n)`
-/

namespace A184365.P3709970031665387918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A274719 (2 * n)

end

end A184365.P3709970031665387918

namespace A184365

/-- `(1-n)*A274719(2*n)` -/
def P3709970031665387918.Spec : Prop :=
  ∀ n, P3709970031665387918.a n = A184365 n

end A184365

/-! ## A184365.P12371355107748499873

`(1-n)*A185124(8*n)`
-/

namespace A184365.P12371355107748499873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A185124 (8 * n)

end

end A184365.P12371355107748499873

namespace A184365

/-- `(1-n)*A185124(8*n)` -/
def P12371355107748499873.Spec : Prop :=
  ∀ n, P12371355107748499873.a n = A184365 n

end A184365

/-! ## A184365.P8128981161469898514

`(1-n)*(A286956(n)-n)`
-/

namespace A184365.P8128981161469898514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (A286956 n - (n : ℤ))

end

end A184365.P8128981161469898514

namespace A184365

/-- `(1-n)*(A286956(n)-n)` -/
def P8128981161469898514.Spec : Prop :=
  ∀ n, P8128981161469898514.a n = A184365 n

end A184365

/-! ## A184365.P10483634502562035442

`-(n-1)*A134756(n)%2`
-/

namespace A184365.P10483634502562035442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * Int.tmod (A134756 n) 2)

end

end A184365.P10483634502562035442

namespace A184365

/-- `-(n-1)*A134756(n)%2` -/
def P10483634502562035442.Spec : Prop :=
  ∀ n, P10483634502562035442.a n = A184365 n

end A184365

/-! ## A184365.P16997047362946431375

`(1-n)*Δ[A078616(abs(1-n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184365

/-- `(1-n)*Δ[A078616(abs(1-n))]` -/
def P16997047362946431375.Spec : Prop :=
  ∀ n, P16997047362946431375.a n = A184365 n

theorem P16997047362946431375.correct : P16997047362946431375.Spec := by
  intro n
  simp only [A184365]

end A184365

/-! ## A184365.P821339862640188683

`A147843(n)+A010815(n)`
-/

namespace A184365.P821339862640188683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 n + A010815 n

end

end A184365.P821339862640188683

namespace A184365

/-- `A147843(n)+A010815(n)` -/
def P821339862640188683.Spec : Prop :=
  ∀ n, P821339862640188683.a n = A184365 n

end A184365

/-! ## A184365.P50937908239527587

`A010815(n)*A024000(n)`
-/

namespace A184365.P50937908239527587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A024000 n

end

end A184365.P50937908239527587

namespace A184365

/-- `A010815(n)*A024000(n)` -/
def P50937908239527587.Spec : Prop :=
  ∀ n, P50937908239527587.a n = A184365 n

end A184365

/-! ## A184365.P6889180256792500451

`(1-n)*A322212(∑[n])`
-/

namespace A184365.P6889180256792500451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A322212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184365.P6889180256792500451

namespace A184365

/-- `(1-n)*A322212(∑[n])` -/
def P6889180256792500451.Spec : Prop :=
  ∀ n, P6889180256792500451.a n = A184365 n

end A184365

/-!
# A184366: G.f.: eta(x)^3*(1 - x*eta'(x)/eta(x)), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

The programs for A184366, the canonical program `A184366.P5150101463797216766` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184366 has offset 0).

The definition of A184366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184366.P5150101463797216766

`(3-n)/3*A010816(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184366

/-- `(3-n)/3*A010816(n)` -/
def P5150101463797216766.Spec : Prop :=
  ∀ n, P5150101463797216766.a n = (A184366 n : ℚ)

end A184366

/-! ## A184366.P9370040805782088683

`(3-n)*Δ[A274094(n)]/3`
-/

namespace A184366.P9370040805782088683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ) : ℚ) * ((f1 (n + 1) - f1 n : ℚ) / 3)

end

end A184366.P9370040805782088683

namespace A184366

/-- `(3-n)*Δ[A274094(n)]/3` -/
def P9370040805782088683.Spec : Prop :=
  ∀ n, P9370040805782088683.a n = (A184366 n : ℚ)

end A184366

/-! ## A184366.P3968823107911316184

`2*A010816(n)-A184363(n)`
-/

namespace A184366.P3968823107911316184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010816 n - A184363 n

end

end A184366.P3968823107911316184

namespace A184366

/-- `2*A010816(n)-A184363(n)` -/
def P3968823107911316184.Spec : Prop :=
  ∀ n, P3968823107911316184.a n = A184366 n

end A184366

/-!
# A184367: 1/3 the number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184367, there is no canonical definition to state claims against.
-/

/-! ## A184367.P372078463536239087

`A184376((n+1)²+n²)`
-/

namespace A184367.P372078463536239087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 ((n + 1) ^ 2 + n ^ 2)

end

end A184367.P372078463536239087

/-!
# A184368: 1/3 the number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184368, the canonical program `A184368.P13016588224155674638` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184368 has offset 1).

The definition of A184368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184368.P13016588224155674638

`6*a(n-1)+9*a(n-2)` with `a(0)=21, a(1)=153`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184368

/-- `6*a(n-1)+9*a(n-2)` -/
def P13016588224155674638.Spec : Prop :=
  ∀ n, (P13016588224155674638.a n : ℤ) = A184368 (n + 1)

theorem P13016588224155674638.correct : P13016588224155674638.Spec := by
  intro n
  simp only [A184368, Nat.add_sub_cancel]

end A184368

/-! ## A184368.P6943631465805837337

`abs(Δ[A251733(n+1)])`
-/

namespace A184368.P6943631465805837337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A184368.P6943631465805837337

namespace A184368

/-- `abs(Δ[A251733(n+1)])` -/
def P6943631465805837337.Spec : Prop :=
  ∀ n, P6943631465805837337.a n = A184368 (n + 1)

end A184368

/-! ## A184368.P2379263530362930853

`3^(n+1)*A078057(n+2)`
-/

namespace A184368.P2379263530362930853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A078057 (n + 2)

end

end A184368.P2379263530362930853

namespace A184368

/-- `3^(n+1)*A078057(n+2)` -/
def P2379263530362930853.Spec : Prop :=
  ∀ n, P2379263530362930853.a n = A184368 (n + 1)

end A184368

/-! ## A184368.P4954540618727167012

`3^(n+1)*A001333(n+3)`
-/

namespace A184368.P4954540618727167012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A001333 (n + 3)

end

end A184368.P4954540618727167012

namespace A184368

/-- `3^(n+1)*A001333(n+3)` -/
def P4954540618727167012.Spec : Prop :=
  ∀ n, P4954540618727167012.a n = A184368 (n + 1)

end A184368

/-! ## A184368.P12926443261426649397

`Δ[A000129(n+3)]*A000244(n+1)`
-/

namespace A184368.P12926443261426649397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000244 (n + 1)

end

end A184368.P12926443261426649397

namespace A184368

/-- `Δ[A000129(n+3)]*A000244(n+1)` -/
def P12926443261426649397.Spec : Prop :=
  ∀ n, P12926443261426649397.a n = A184368 (n + 1)

end A184368

/-! ## A184368.P3246755931206708572

`A078057(n+2)*A083658(2*(n+1))`
-/

namespace A184368.P3246755931206708572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 2) * A083658 (2 * (n + 1))

end

end A184368.P3246755931206708572

namespace A184368

/-- `A078057(n+2)*A083658(2*(n+1))` -/
def P3246755931206708572.Spec : Prop :=
  ∀ n, P3246755931206708572.a n = A184368 (n + 1)

end A184368

/-! ## A184368.P9068444529781157238

`A078057(n+2)*A108411(2*(n+1))`
-/

namespace A184368.P9068444529781157238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 2) * A108411 (2 * (n + 1))

end

end A184368.P9068444529781157238

namespace A184368

/-- `A078057(n+2)*A108411(2*(n+1))` -/
def P9068444529781157238.Spec : Prop :=
  ∀ n, P9068444529781157238.a n = A184368 (n + 1)

end A184368

/-! ## A184368.P9188030314980207965

`A001333(n+3)*A083658(2*(n+1))`
-/

namespace A184368.P9188030314980207965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 3) * A083658 (2 * (n + 1))

end

end A184368.P9188030314980207965

namespace A184368

/-- `A001333(n+3)*A083658(2*(n+1))` -/
def P9188030314980207965.Spec : Prop :=
  ∀ n, P9188030314980207965.a n = A184368 (n + 1)

end A184368

/-! ## A184368.P9978534699256909561

`A001333(n+3)*A108411(2*(n+1))`
-/

namespace A184368.P9978534699256909561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 3) * A108411 (2 * (n + 1))

end

end A184368.P9978534699256909561

namespace A184368

/-- `A001333(n+3)*A108411(2*(n+1))` -/
def P9978534699256909561.Spec : Prop :=
  ∀ n, P9978534699256909561.a n = A184368 (n + 1)

end A184368

/-! ## A184368.P16099460400680224092

`A223212(n+2)/6`
-/

namespace A184368.P16099460400680224092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223212 (n + 2) : ℚ) / 6

end

end A184368.P16099460400680224092

namespace A184368

/-- `A223212(n+2)/6` -/
def P16099460400680224092.Spec : Prop :=
  ∀ n, P16099460400680224092.a n = (A184368 (n + 1) : ℚ)

end A184368

/-!
# A184369: 1/3 the number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184369, there is no canonical definition to state claims against.
-/

/-! ## A184369.P2470651459167637875

`A184376(∑[n+1]+2)`
-/

namespace A184369.P2470651459167637875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184369.P2470651459167637875

/-! ## A184369.P16451668875205482942

`record[root(A184376(n+3), A094527(n))]`
-/

namespace A184369.P16451668875205482942
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184376 (n + 3) : ℝ) ^ (1 / (A094527 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184369.P16451668875205482942

/-! ## A184369.P13826167903983790508

`record[root(A184376(n+3), A140303(n))]`
-/

namespace A184369.P13826167903983790508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184376 (n + 3) : ℝ) ^ (1 / (A140303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184369.P13826167903983790508

/-! ## A184369.P14952386679437666354

`record[gcd(A025581(n), A184376(n+3))]`
-/

namespace A184369.P14952386679437666354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A184376 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184369.P14952386679437666354

/-! ## A184369.P9403030941187426118

`record[A010054(n+1)*A184376(n+3)]`
-/

namespace A184369.P9403030941187426118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A184376 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184369.P9403030941187426118

/-!
# A184370: 1/3 the number of (n+1)X4 0..2 arrays with every 2X2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184370, there is no canonical definition to state claims against.
-/

/-! ## A184370.P10402026121367782064

`A184376(∑[n+2]+4)`
-/

namespace A184370.P10402026121367782064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184370.P10402026121367782064

/-! ## A184370.P15147614963496671851

`or(1, A184376(A167614(n+1)))`
-/

namespace A184370.P15147614963496671851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184376 (A167614 (n + 1)).toNat)

end

end A184370.P15147614963496671851

/-! ## A184370.P4715555047857090613

`A185284(n)+A184376(A167614(n+1))`
-/

namespace A184370.P4715555047857090613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A184376 (A167614 (n + 1)).toNat

end

end A184370.P4715555047857090613

/-! ## A184370.P2821795321462535267

`lcm(A162285(n), A184376(A167614(n+1)))`
-/

namespace A184370.P2821795321462535267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A162285 n) (A184376 (A167614 (n + 1)).toNat)

end

end A184370.P2821795321462535267

/-! ## A184370.P16333523617145778555

`A184376(A167614(n+1))*A262079(n+1)`
-/

namespace A184370.P16333523617145778555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 (A167614 (n + 1)).toNat * A262079 (n + 1)

end

end A184370.P16333523617145778555

/-!
# A184371: 1/3 the number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184371, there is no canonical definition to state claims against.
-/

/-! ## A184371.P4944001361387818527

`A184376(A167614(n+2)+1)`
-/

namespace A184371.P4944001361387818527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 (A167614 (n + 2) + 1).toNat

end

end A184371.P4944001361387818527

/-! ## A184371.P8161061743012171545

`A184376(eq[1, A193592(n)-2])`
-/

namespace A184371.P8161061743012171545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184371.P8161061743012171545

/-!
# A184372: 1/3 the number of (n+1)X6 0..2 arrays with every 2X2 subblock having at least two equal elements connected horizontally or vertically.

The programs for A184372, there is no canonical definition to state claims against.
-/

/-! ## A184372.P5838249837192268123

`A184376(A374005(n+1))`
-/

namespace A184372.P5838249837192268123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 (A374005 (n + 1)).toNat

end

end A184372.P5838249837192268123

/-! ## A184372.P5091160879033860057

`A184376(eq[4, A193592(n)])`
-/

namespace A184372.P5091160879033860057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184372.P5091160879033860057

/-! ## A184372.P9991999756907164882

`A184376(Δ[Δ[A022815(n+1)]]+1)`
-/

namespace A184372.P9991999756907164882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184376 (f1 (n + 1) - f1 n + 1).toNat

end

end A184372.P9991999756907164882

/-!
# A184377: 1/12 the number of (n+2)X(n+2) 0..2 arrays with each 3X3 subblock containing three of each value.

The programs for A184377, there is no canonical definition to state claims against.
-/

/-! ## A184377.P5187880473339503025

`A184386(∑[4*n]+1)`
-/

namespace A184377.P5187880473339503025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184377.P5187880473339503025

/-! ## A184377.P16200902912786674327

`lcm(2, A184386(A001844(n)))`
-/

namespace A184377.P16200902912786674327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184386 (A001844 n).toNat)

end

end A184377.P16200902912786674327

/-! ## A184377.P13942609998922392672

`record[A184386(A286145(n)+1)]`
-/

namespace A184377.P13942609998922392672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184377.P13942609998922392672

/-!
# A184378: 1/12 the number of (n+2) X 3 0..2 arrays with each 3 X 3 subblock containing three of each value.

The programs for A184378, there is no canonical definition to state claims against.
-/

/-! ## A184378.P16242349114263902918

`A184386(∑[n]+1)`
-/

namespace A184378.P16242349114263902918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184378.P16242349114263902918

/-! ## A184378.P8499079486340162576

`record[A184386(n+1)]`
-/

namespace A184378.P8499079486340162576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184378.P8499079486340162576

/-! ## A184378.P1770165119579185130

`A184386(A000124(n))+char[14]`
-/

namespace A184378.P1770165119579185130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184378.P1770165119579185130

/-! ## A184378.P4643448362969562561

`A016068(n)*A184386(A000124(n))`
-/

namespace A184378.P4643448362969562561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 n * A184386 (A000124 n).toNat

end

end A184378.P4643448362969562561

/-! ## A184378.P16831083647181255742

`A184386(A000124(n))%A080132(n)`
-/

namespace A184378.P16831083647181255742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184386 (A000124 n).toNat) (A080132 n)

end

end A184378.P16831083647181255742

/-!
# A184379: 1/12 the number of (n+2) X 4 0..2 arrays with each 3 X 3 subblock containing three of each value.

The programs for A184379, there is no canonical definition to state claims against.
-/

/-! ## A184379.P4646516287907774806

`A184386(∑[n+1]+2)`
-/

namespace A184379.P4646516287907774806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184379.P4646516287907774806

/-! ## A184379.P17694333102190157520

`record[A184386(A183234(n+1))]`
-/

namespace A184379.P17694333102190157520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184379.P17694333102190157520

/-! ## A184379.P11027404574944682305

`record[A184386(A198455(n+1))]`
-/

namespace A184379.P11027404574944682305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184379.P11027404574944682305

/-!
# A184380: 1/12 the number of (n+2)X5 0..2 arrays with each 3X3 subblock containing three of each value.

The programs for A184380, there is no canonical definition to state claims against.
-/

/-! ## A184380.P13014194751382684336

`A184386(∑[n+2]+4)`
-/

namespace A184380.P13014194751382684336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184380.P13014194751382684336

/-! ## A184380.P2704471039116102431

`record[A184386(n+4)/A105278(n+1)]`
-/

namespace A184380.P2704471039116102431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184386 (n + 4) : ℚ) / (A105278 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184380.P2704471039116102431

/-! ## A184380.P3661539890379850930

`A184386(A167614(n+1))+A067157(n)`
-/

namespace A184380.P3661539890379850930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A167614 (n + 1)).toNat + A067157 (n + 10)

end

end A184380.P3661539890379850930

/-! ## A184380.P17241179395384433485

`A185284(n)+A184386(A167614(n+1))`
-/

namespace A184380.P17241179395384433485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A184386 (A167614 (n + 1)).toNat

end

end A184380.P17241179395384433485

/-! ## A184380.P2045901862745907919

`A256974(n)+A184386(A167614(n+1))`
-/

namespace A184380.P2045901862745907919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A184386 (A167614 (n + 1)).toNat

end

end A184380.P2045901862745907919

/-!
# A184381: 1/12 the number of (n+2)X6 0..2 arrays with each 3X3 subblock containing three of each value.

The programs for A184381, there is no canonical definition to state claims against.
-/

/-! ## A184381.P3506954997326052417

`A184386(∑[n+3]+7)`
-/

namespace A184381.P3506954997326052417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184381.P3506954997326052417

/-!
# A184382: 1/12 the number of (n+2)X7 0..2 arrays with each 3X3 subblock containing three of each value.

The programs for A184382, there is no canonical definition to state claims against.
-/

/-! ## A184382.P16771799915441536466

`A184386(A167499(n+3))`
-/

namespace A184382.P16771799915441536466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A167499 (n + 3)).toNat

end

end A184382.P16771799915441536466

/-! ## A184382.P326669752836269942

`A184386(A155212(n)+13)`
-/

namespace A184382.P326669752836269942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A155212 n + 13).toNat

end

end A184382.P326669752836269942

/-! ## A184382.P16100804120830260250

`A184386(A056000(n)+15)`
-/

namespace A184382.P16100804120830260250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A056000 n + 15).toNat

end

end A184382.P16100804120830260250

/-! ## A184382.P2148697756311906482

`A184386(eq[7, A066657(n)])`
-/

namespace A184382.P2148697756311906482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184382.P2148697756311906482

/-! ## A184382.P8031462321532008686

`A184386(A152950(n+5)+2)`
-/

namespace A184382.P8031462321532008686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A152950 (n + 5) + 2).toNat

end

end A184382.P8031462321532008686

/-!
# A184383: 1/12 the number of (n+2)X8 0..2 arrays with each 3X3 subblock containing three of each value.

The programs for A184383, there is no canonical definition to state claims against.
-/

/-! ## A184383.P11034239196488985113

`A184386(A167499(n+4)+1)`
-/

namespace A184383.P11034239196488985113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A167499 (n + 4) + 1).toNat

end

end A184383.P11034239196488985113

/-! ## A184383.P7571640123572177958

`A184386(A077169(n+6)+1)`
-/

namespace A184383.P7571640123572177958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A077169 (n + 6) + 1).toNat

end

end A184383.P7571640123572177958

/-! ## A184383.P15808743715403538938

`A184386(A167614(n+4)+3)`
-/

namespace A184383.P15808743715403538938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A167614 (n + 4) + 3).toNat

end

end A184383.P15808743715403538938

/-! ## A184383.P15306380743448395114

`A184386(A000217(n+5)+6)`
-/

namespace A184383.P15306380743448395114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A000217 (n + 5) + 6).toNat

end

end A184383.P15306380743448395114

/-! ## A184383.P507393238095381691

`A184386(A141214(n+2)+9)`
-/

namespace A184383.P507393238095381691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A141214 (n + 2) + 9).toNat

end

end A184383.P507393238095381691

/-!
# A184384: 1/12 the number of (n+2)X9 0..2 arrays with each 3X3 subblock containing three of each value.

The programs for A184384, there is no canonical definition to state claims against.
-/

/-! ## A184384.P9475685036818837839

`A184386(A374008(n+1))`
-/

namespace A184384.P9475685036818837839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A374008 (n + 1)).toNat

end

end A184384.P9475685036818837839

/-! ## A184384.P10988672218362990583

`A184386(A055999(n+4))`
-/

namespace A184384.P10988672218362990583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A055999 (n + 4)).toNat

end

end A184384.P10988672218362990583

/-! ## A184384.P142169396504605186

`A184386(A056119(n)+28)`
-/

namespace A184384.P142169396504605186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A056119 n + 28).toNat

end

end A184384.P142169396504605186

/-!
# A184385: 1/12 the number of (n+2)X10 0..2 arrays with each 3X3 subblock containing three of each value.

The programs for A184385, there is no canonical definition to state claims against.
-/

/-! ## A184385.P15946994394596950474

`A184386(A374009(n+1))`
-/

namespace A184385.P15946994394596950474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184386 (A374009 (n + 1)).toNat

end

end A184385.P15946994394596950474

/-!
# A184387: a(n) = sum of numbers from 1 to sigma(n), where sigma(n) = A000203(n).

The programs for A184387, the canonical program `A184387.P7123974566523732080` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184387 has offset 1).

The definition of A184387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184387.P8315553575209916298

`A000203(n+1)*(A000203(n+1)+1)/2`
-/

namespace A184387.P8315553575209916298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) * ((A000203 (n + 1) + 1 : ℚ) / 2)

end

end A184387.P8315553575209916298

namespace A184387

/-- `A000203(n+1)*(A000203(n+1)+1)/2` -/
def P8315553575209916298.Spec : Prop :=
  ∀ n, P8315553575209916298.a n = (A184387 (n + 1) : ℚ)

end A184387

/-! ## A184387.P7123974566523732080

`A000217(A000203(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184387

/-- `A000217(A000203(n+1))` -/
def P7123974566523732080.Spec : Prop :=
  ∀ n, P7123974566523732080.a n = A184387 (n + 1)

theorem P7123974566523732080.correct : P7123974566523732080.Spec := by
  intro n
  simp only [A184387, Nat.add_sub_cancel]

end A184387

/-! ## A184387.P1452624738996036912

`C(∑{d}[n+1, #]+1, 2)`
-/

namespace A184387.P1452624738996036912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d + 1) 2

end

end A184387.P1452624738996036912

namespace A184387

/-- `C(∑{d}[n+1, #]+1, 2)` -/
def P1452624738996036912.Spec : Prop :=
  ∀ n, (P1452624738996036912.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P11038917197590203110

`C(A088580(n+1), 2)`
-/

namespace A184387.P11038917197590203110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088580 (n + 1)).toNat 2

end

end A184387.P11038917197590203110

namespace A184387

/-- `C(A088580(n+1), 2)` -/
def P11038917197590203110.Spec : Prop :=
  ∀ n, (P11038917197590203110.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P5953436137572628207

`floor(A258774(n+1)/2)`
-/

namespace A184387.P5953436137572628207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258774 (n + 1) : ℚ) / 2⌋

end

end A184387.P5953436137572628207

namespace A184387

/-- `floor(A258774(n+1)/2)` -/
def P5953436137572628207.Spec : Prop :=
  ∀ n, P5953436137572628207.a n = A184387 (n + 1)

end A184387

/-! ## A184387.P15972384497977951167

`C(Δ[A160664(n)]+1, 2)`
-/

namespace A184387.P15972384497977951167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A184387.P15972384497977951167

namespace A184387

/-- `C(Δ[A160664(n)]+1, 2)` -/
def P15972384497977951167.Spec : Prop :=
  ∀ n, (P15972384497977951167.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P8134701978187626344

`A162462(n+1)+∑[n]`
-/

namespace A184387.P8134701978187626344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162462 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A184387.P8134701978187626344

namespace A184387

/-- `A162462(n+1)+∑[n]` -/
def P8134701978187626344.Spec : Prop :=
  ∀ n, P8134701978187626344.a n = A184387 (n + 1)

end A184387

/-! ## A184387.P15735772739743392923

`C(A039653(n+1)+2, 2)`
-/

namespace A184387.P15735772739743392923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A039653 (n + 1) + 2).toNat 2

end

end A184387.P15735772739743392923

namespace A184387

/-- `C(A039653(n+1)+2, 2)` -/
def P15735772739743392923.Spec : Prop :=
  ∀ n, (P15735772739743392923.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P18030586384316722360

`C(A155085(n+1)-n, 2)`
-/

namespace A184387.P18030586384316722360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155085 (n + 1) - (n : ℤ)).toNat 2

end

end A184387.P18030586384316722360

namespace A184387

/-- `C(A155085(n+1)-n, 2)` -/
def P18030586384316722360.Spec : Prop :=
  ∀ n, (P18030586384316722360.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P12999849677989522395

`C(abs(A143348(n+1))+1, 2)`
-/

namespace A184387.P12999849677989522395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|A143348 (n + 1)| + 1).toNat 2

end

end A184387.P12999849677989522395

namespace A184387

/-- `C(abs(A143348(n+1))+1, 2)` -/
def P12999849677989522395.Spec : Prop :=
  ∀ n, (P12999849677989522395.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P16743378004359682766

`C(sqrt(A072861(n+1))+1, 2)`
-/

namespace A184387.P16743378004359682766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ) + 1)).toNat 2

end

end A184387.P16743378004359682766

namespace A184387

/-- `C(sqrt(A072861(n+1))+1, 2)` -/
def P16743378004359682766.Spec : Prop :=
  ∀ n, (P16743378004359682766.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P16395874978639024617

`C(∑[A340793(n+1)]+1, 2)`
-/

namespace A184387.P16395874978639024617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A184387.P16395874978639024617

namespace A184387

/-- `C(∑[A340793(n+1)]+1, 2)` -/
def P16395874978639024617.Spec : Prop :=
  ∀ n, (P16395874978639024617.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P1377525293237586123

`C(A245092(2*n+1)+1, 2)`
-/

namespace A184387.P1377525293237586123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245092 (2 * n + 1) + 1).toNat 2

end

end A184387.P1377525293237586123

namespace A184387

/-- `C(A245092(2*n+1)+1, 2)` -/
def P1377525293237586123.Spec : Prop :=
  ∀ n, (P1377525293237586123.a n : ℤ) = A184387 (n + 1)

end A184387

/-! ## A184387.P3696270862609172838

`A119616(n+1)+A007437(n+1)`
-/

namespace A184387.P3696270862609172838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119616 (n + 1) + A007437 (n + 1)

end

end A184387.P3696270862609172838

namespace A184387

/-- `A119616(n+1)+A007437(n+1)` -/
def P3696270862609172838.Spec : Prop :=
  ∀ n, P3696270862609172838.a n = A184387 (n + 1)

end A184387

/-! ## A184387.P9681719464597057905

`A162907(n+1)+A066446(n+1)`
-/

namespace A184387.P9681719464597057905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162907 (n + 1) + A066446 (n + 1)

end

end A184387.P9681719464597057905

namespace A184387

/-- `A162907(n+1)+A066446(n+1)` -/
def P9681719464597057905.Spec : Prop :=
  ∀ n, P9681719464597057905.a n = A184387 (n + 1)

end A184387

/-! ## A184387.P12724459258586842776

`A237290(n+1)+A237289(n+1)`
-/

namespace A184387.P12724459258586842776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237290 (n + 1) + A237289 (n + 1)

end

end A184387.P12724459258586842776

namespace A184387

/-- `A237290(n+1)+A237289(n+1)` -/
def P12724459258586842776.Spec : Prop :=
  ∀ n, P12724459258586842776.a n = A184387 (n + 1)

end A184387

/-! ## A184387.P6644089558677880507

`A067692(n+1)-A069153(n+1)`
-/

namespace A184387.P6644089558677880507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067692 (n + 1) - A069153 (n + 1)

end

end A184387.P6644089558677880507

namespace A184387

/-- `A067692(n+1)-A069153(n+1)` -/
def P6644089558677880507.Spec : Prop :=
  ∀ n, P6644089558677880507.a n = A184387 (n + 1)

end A184387

/-! ## A184387.P6162506716496144629

`(A072861(n+1)+A000203(n+1))/2`
-/

namespace A184387.P6162506716496144629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A184387.P6162506716496144629

namespace A184387

/-- `(A072861(n+1)+A000203(n+1))/2` -/
def P6162506716496144629.Spec : Prop :=
  ∀ n, P6162506716496144629.a n = (A184387 (n + 1) : ℚ)

end A184387

/-! ## A184387.P8706896838383984612

`A000203(n+1)/2*A088580(n+1)`
-/

namespace A184387.P8706896838383984612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / 2 * (A088580 (n + 1) : ℚ)

end

end A184387.P8706896838383984612

namespace A184387

/-- `A000203(n+1)/2*A088580(n+1)` -/
def P8706896838383984612.Spec : Prop :=
  ∀ n, P8706896838383984612.a n = (A184387 (n + 1) : ℚ)

end A184387

/-! ## A184387.P7504445403283339876

`A000217(∑{d}[n+1, #])`
-/

namespace A184387.P7504445403283339876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A184387.P7504445403283339876

namespace A184387

/-- `A000217(∑{d}[n+1, #])` -/
def P7504445403283339876.Spec : Prop :=
  ∀ n, P7504445403283339876.a n = A184387 (n + 1)

end A184387

/-!
# A184388: a(n) = product of numbers from 1 to sigma(n), where sigma(n) = A000203(n).

The programs for A184388, the canonical program `A184388.P14157118067265196798` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184388 has offset 1).

The definition of A184388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184388.P14157118067265196798

`A000203(n+1)!`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184388

/-- `A000203(n+1)!` -/
def P14157118067265196798.Spec : Prop :=
  ∀ n, (P14157118067265196798.a n : ℤ) = A184388 (n + 1)

theorem P14157118067265196798.correct : P14157118067265196798.Spec := by
  intro n
  simp only [A184388, Nat.add_sub_cancel]

end A184388

/-! ## A184388.P6213522705826891711

`∑{d}[n+1, #]!`
-/

namespace A184388.P6213522705826891711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ d ∈ Nat.divisors (f1 n), d)

end

end A184388.P6213522705826891711

namespace A184388

/-- `∑{d}[n+1, #]!` -/
def P6213522705826891711.Spec : Prop :=
  ∀ n, (P6213522705826891711.a n : ℤ) = A184388 (n + 1)

end A184388

/-! ## A184388.P8438087426413265375

`log(∏{d}[n+1, exp(#)])!`
-/

namespace A184388.P8438087426413265375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.log (∏ d ∈ Nat.divisors (f1 n), Real.exp (d : ℝ)))).toNat

end

end A184388.P8438087426413265375

namespace A184388

/-- `log(∏{d}[n+1, exp(#)])!` -/
def P8438087426413265375.Spec : Prop :=
  ∀ n, (P8438087426413265375.a n : ℤ) = A184388 (n + 1)

end A184388

/-! ## A184388.P7718732305924746045

`val(∏{d}[n+1, 2^#], 2)!`
-/

namespace A184388.P7718732305924746045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), 2 ^ d) 2)

end

end A184388.P7718732305924746045

namespace A184388

/-- `val(∏{d}[n+1, 2^#], 2)!` -/
def P7718732305924746045.Spec : Prop :=
  ∀ n, (P7718732305924746045.a n : ℤ) = A184388 (n + 1)

end A184388

/-! ## A184388.P17133386903280938245

`A130307(∑[n])!`
-/

namespace A184388.P17133386903280938245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A130307 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A184388.P17133386903280938245

namespace A184388

/-- `A130307(∑[n])!` -/
def P17133386903280938245.Spec : Prop :=
  ∀ n, (P17133386903280938245.a n : ℤ) = A184388 (n + 1)

end A184388

/-!
# A184389: a(n) = Sum_{k=1..tau(n)} k, where tau is the number of divisors of n (A000005).

The programs for A184389, the canonical program `A184389.P17134985288461301427` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184389 has offset 1).

The definition of A184389 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A184389.P17134985288461301427

`A000217(A000005(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184389

/-- `A000217(A000005(n+1))` -/
def P17134985288461301427.Spec : Prop :=
  ∀ n, P17134985288461301427.a n = A184389 (n + 1)

theorem P17134985288461301427.correct : P17134985288461301427.Spec := by
  intro n
  simp only [A184389, Nat.add_sub_cancel]

end A184389

/-! ## A184389.P17419074550141366098

`A066446(n+1)+A000005(n+1)`
-/

namespace A184389.P17419074550141366098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + A000005 (n + 1)

end

end A184389.P17419074550141366098

namespace A184389

/-- `A066446(n+1)+A000005(n+1)` -/
def P17419074550141366098.Spec : Prop :=
  ∀ n, P17419074550141366098.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P17803919636009506253

`A337362(n+1)+A129308(n+1)`
-/

namespace A184389.P17803919636009506253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337362 (n + 1) + A129308 (n + 1)

end

end A184389.P17803919636009506253

namespace A184389

/-- `A337362(n+1)+A129308(n+1)` -/
def P17803919636009506253.Spec : Prop :=
  ∀ n, P17803919636009506253.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P15968280421909308908

`A035116(n+1)-A066446(n+1)`
-/

namespace A184389.P15968280421909308908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - A066446 (n + 1)

end

end A184389.P15968280421909308908

namespace A184389

/-- `A035116(n+1)-A066446(n+1)` -/
def P15968280421909308908.Spec : Prop :=
  ∀ n, P15968280421909308908.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P10674450358455050095

`C(A334954(n+1), 2)`
-/

namespace A184389.P10674450358455050095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334954 (n + 1)).toNat 2

end

end A184389.P10674450358455050095

namespace A184389

/-- `C(A334954(n+1), 2)` -/
def P10674450358455050095.Spec : Prop :=
  ∀ n, (P10674450358455050095.a n : ℤ) = A184389 (n + 1)

end A184389

/-! ## A184389.P2614572615448908658

`∑{d}[n+1, A018892(#)]`
-/

namespace A184389.P2614572615448908658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018892 d

end

end A184389.P2614572615448908658

namespace A184389

/-- `∑{d}[n+1, A018892(#)]` -/
def P2614572615448908658.Spec : Prop :=
  ∀ n, P2614572615448908658.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P7481416741593499885

`C(Δ[A006218(n)]+1, 2)`
-/

namespace A184389.P7481416741593499885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A184389.P7481416741593499885

namespace A184389

/-- `C(Δ[A006218(n)]+1, 2)` -/
def P7481416741593499885.Spec : Prop :=
  ∀ n, (P7481416741593499885.a n : ℤ) = A184389 (n + 1)

end A184389

/-! ## A184389.P12851544607475298601

`C(Δ[A054519(n)]+1, 2)`
-/

namespace A184389.P12851544607475298601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A184389.P12851544607475298601

namespace A184389

/-- `C(Δ[A054519(n)]+1, 2)` -/
def P12851544607475298601.Spec : Prop :=
  ∀ n, (P12851544607475298601.a n : ℤ) = A184389 (n + 1)

end A184389

/-! ## A184389.P17490716919494544357

`C(A032741(n+1)+2, 2)`
-/

namespace A184389.P17490716919494544357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032741 (n + 1) + 2).toNat 2

end

end A184389.P17490716919494544357

namespace A184389

/-- `C(A032741(n+1)+2, 2)` -/
def P17490716919494544357.Spec : Prop :=
  ∀ n, (P17490716919494544357.a n : ℤ) = A184389 (n + 1)

end A184389

/-! ## A184389.P17739827612960632199

`A000217(Δ[A006218(n)])`
-/

namespace A184389.P17739827612960632199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat

end

end A184389.P17739827612960632199

namespace A184389

/-- `A000217(Δ[A006218(n)])` -/
def P17739827612960632199.Spec : Prop :=
  ∀ n, P17739827612960632199.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P9325530619698489345

`A037458(A035116(n+1))`
-/

namespace A184389.P9325530619698489345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A035116 (n + 1)).toNat

end

end A184389.P9325530619698489345

namespace A184389

/-- `A037458(A035116(n+1))` -/
def P9325530619698489345.Spec : Prop :=
  ∀ n, P9325530619698489345.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P12327914077835012107

`A008805(A086369(n+1))`
-/

namespace A184389.P12327914077835012107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A086369 (n + 1)).toNat

end

end A184389.P12327914077835012107

namespace A184389

/-- `A008805(A086369(n+1))` -/
def P12327914077835012107.Spec : Prop :=
  ∀ n, P12327914077835012107.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P8112451793186337492

`A008805(A114003(n+1))`
-/

namespace A184389.P8112451793186337492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A114003 (n + 1)).toNat

end

end A184389.P8112451793186337492

namespace A184389

/-- `A008805(A114003(n+1))` -/
def P8112451793186337492.Spec : Prop :=
  ∀ n, P8112451793186337492.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P13686831827851261555

`A075303(A062011(n+1))`
-/

namespace A184389.P13686831827851261555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075303 (A062011 (n + 1)).toNat

end

end A184389.P13686831827851261555

namespace A184389

/-- `A075303(A062011(n+1))` -/
def P13686831827851261555.Spec : Prop :=
  ∀ n, P13686831827851261555.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P17349590151444081116

`A080036(A066446(n+1))`
-/

namespace A184389.P17349590151444081116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A066446 (n + 1)).toNat

end

end A184389.P17349590151444081116

namespace A184389

/-- `A080036(A066446(n+1))` -/
def P17349590151444081116.Spec : Prop :=
  ∀ n, P17349590151444081116.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P9007691354849352988

`A154028(A131089(n+1))`
-/

namespace A184389.P9007691354849352988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154028 (A131089 (n + 1)).toNat

end

end A184389.P9007691354849352988

namespace A184389

/-- `A154028(A131089(n+1))` -/
def P9007691354849352988.Spec : Prop :=
  ∀ n, P9007691354849352988.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P15100070172395282677

`A037458(A000005(n+1)²)`
-/

namespace A184389.P15100070172395282677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A000005 (n + 1) ^ 2).toNat

end

end A184389.P15100070172395282677

namespace A184389

/-- `A037458(A000005(n+1)²)` -/
def P15100070172395282677.Spec : Prop :=
  ∀ n, P15100070172395282677.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P1380756401458217654

`A056536(A000005(n+1)²)`
-/

namespace A184389.P1380756401458217654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (A000005 (n + 1) ^ 2).toNat

end

end A184389.P1380756401458217654

namespace A184389

/-- `A056536(A000005(n+1)²)` -/
def P1380756401458217654.Spec : Prop :=
  ∀ n, P1380756401458217654.a n = A184389 (n + 1)

end A184389

/-! ## A184389.P4820807314804541573

`A214928(A000005(n+1)²)`
-/

namespace A184389.P4820807314804541573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214928 (A000005 (n + 1) ^ 2).toNat

end

end A184389.P4820807314804541573

namespace A184389

/-- `A214928(A000005(n+1)²)` -/
def P4820807314804541573.Spec : Prop :=
  ∀ n, P4820807314804541573.a n = A184389 (n + 1)

end A184389

/-!
# A184390: a(n) = sum of numbers from 1 to pi(n), where pi(n) = A007955(n).

The programs for A184390, the canonical program `A184390.P5275387814831515097` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184390 has offset 1).

The definition of A184390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A184390.P17153447489482498474

`1/2*A007955(n+1)*(A007955(n+1)+1)`
-/

namespace A184390.P17153447489482498474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A007955 (n + 1) : ℚ) * (A007955 (n + 1) + 1 : ℚ)

end

end A184390.P17153447489482498474

namespace A184390

/-- `1/2*A007955(n+1)*(A007955(n+1)+1)` -/
def P17153447489482498474.Spec : Prop :=
  ∀ n, P17153447489482498474.a n = (A184390 (n + 1) : ℚ)

end A184390

/-! ## A184390.P5275387814831515097

`A000217(A007955(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184390

/-- `A000217(A007955(n+1))` -/
def P5275387814831515097.Spec : Prop :=
  ∀ n, P5275387814831515097.a n = A184390 (n + 1)

theorem P5275387814831515097.correct : P5275387814831515097.Spec := by
  intro n
  simp only [A184390, Nat.add_sub_cancel]

end A184390

/-! ## A184390.P327171961949562347

`C(∏{d}[n+1, #]+1, 2)`
-/

namespace A184390.P327171961949562347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ d ∈ Nat.divisors (f1 n), d + 1) 2

end

end A184390.P327171961949562347

namespace A184390

/-- `C(∏{d}[n+1, #]+1, 2)` -/
def P327171961949562347.Spec : Prop :=
  ∀ n, (P327171961949562347.a n : ℤ) = A184390 (n + 1)

end A184390

/-! ## A184390.P16776884025427358326

`(∏{d}[n+1, #²]+∏{d}[n+1, #])/2`
-/

namespace A184390.P16776884025427358326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d ^ 2 + ∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / 2

end

end A184390.P16776884025427358326

namespace A184390

/-- `(∏{d}[n+1, #²]+∏{d}[n+1, #])/2` -/
def P16776884025427358326.Spec : Prop :=
  ∀ n, P16776884025427358326.a n = (A184390 (n + 1) : ℚ)

end A184390

/-! ## A184390.P12950002266660763957

`C((n+1)*A007956(n+1)+1, 2)`
-/

namespace A184390.P12950002266660763957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) * A007956 (n + 1) + 1).toNat 2

end

end A184390.P12950002266660763957

namespace A184390

/-- `C((n+1)*A007956(n+1)+1, 2)` -/
def P12950002266660763957.Spec : Prop :=
  ∀ n, (P12950002266660763957.a n : ℤ) = A184390 (n + 1)

end A184390

/-! ## A184390.P17834898645417076769

`C((n+1)^(Δ[A006218(n)]/2)+1, 2)`
-/

namespace A184390.P17834898645417076769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((f1 (n + 1) - f1 n : ℚ) / 2 : ℝ) + 1)).toNat 2

end

end A184390.P17834898645417076769

namespace A184390

/-- `C((n+1)^(Δ[A006218(n)]/2)+1, 2)` -/
def P17834898645417076769.Spec : Prop :=
  ∀ n, (P17834898645417076769.a n : ℤ) = A184390 (n + 1)

end A184390

/-! ## A184390.P4442437901549491216

`C((n+1)^(A000005(n+1)/2)+1, 2)`
-/

namespace A184390.P4442437901549491216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) + 1)).toNat 2

end

end A184390.P4442437901549491216

namespace A184390

/-- `C((n+1)^(A000005(n+1)/2)+1, 2)` -/
def P4442437901549491216.Spec : Prop :=
  ∀ n, (P4442437901549491216.a n : ℤ) = A184390 (n + 1)

end A184390

/-! ## A184390.P14848502981228618268

`(A062758(n+1)+A007955(n+1))/2`
-/

namespace A184390.P14848502981228618268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062758 (n + 1) + A007955 (n + 1) : ℚ) / 2

end

end A184390.P14848502981228618268

namespace A184390

/-- `(A062758(n+1)+A007955(n+1))/2` -/
def P14848502981228618268.Spec : Prop :=
  ∀ n, P14848502981228618268.a n = (A184390 (n + 1) : ℚ)

end A184390

/-!
# A184391: a(n) = product of numbers from 1 to A007955(n).

The programs for A184391, the canonical program `A184391.P2181629435017711796` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184391 has offset 1).

The definition of A184391 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A184391.P2181629435017711796

`A007955(n+1)!`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184391

/-- `A007955(n+1)!` -/
def P2181629435017711796.Spec : Prop :=
  ∀ n, (P2181629435017711796.a n : ℤ) = A184391 (n + 1)

theorem P2181629435017711796.correct : P2181629435017711796.Spec := by
  intro n
  simp only [A184391, Nat.add_sub_cancel]

end A184391

/-! ## A184391.P9540323790051290205

`∏{d}[n+1, #]!`
-/

namespace A184391.P9540323790051290205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ d ∈ Nat.divisors (f1 n), d)

end

end A184391.P9540323790051290205

namespace A184391

/-- `∏{d}[n+1, #]!` -/
def P9540323790051290205.Spec : Prop :=
  ∀ n, (P9540323790051290205.a n : ℤ) = A184391 (n + 1)

end A184391

/-! ## A184391.P7469061426059179024

`exp(∑{d}[n+1, log(#)])!`
-/

namespace A184391.P7469061426059179024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ)))).toNat

end

end A184391.P7469061426059179024

namespace A184391

/-- `exp(∑{d}[n+1, log(#)])!` -/
def P7469061426059179024.Spec : Prop :=
  ∀ n, (P7469061426059179024.a n : ℤ) = A184391 (n + 1)

end A184391

/-! ## A184391.P1174226522695011856

`A184392(n+1)!`
-/

namespace A184391.P1174226522695011856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A184392 (n + 1)).toNat

end

end A184391.P1174226522695011856

namespace A184391

/-- `A184392(n+1)!` -/
def P1174226522695011856.Spec : Prop :=
  ∀ n, (P1174226522695011856.a n : ℤ) = A184391 (n + 1)

end A184391

/-! ## A184391.P10021776827180871762

`sqrt((n+1)^A000005(n+1))!`
-/

namespace A184391.P10021776827180871762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) ^ (A000005 (n + 1) : ℤ) : ℝ))).toNat

end

end A184391.P10021776827180871762

namespace A184391

/-- `sqrt((n+1)^A000005(n+1))!` -/
def P10021776827180871762.Spec : Prop :=
  ∀ n, (P10021776827180871762.a n : ℤ) = A184391 (n + 1)

end A184391

/-!
# A184392: a(n) is the product of palindromic divisors of n.

The programs for A184392, there is no canonical definition to state claims against.
-/

/-! ## A184392.P12919012033637410537

`A007955(n+1)/A179937(n+1)`
-/

namespace A184392.P12919012033637410537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A179937 (n + 1) : ℚ)

end

end A184392.P12919012033637410537

/-! ## A184392.P18314086194638459284

`(n+1)*A007956(n+1)/A179937(n+1)`
-/

namespace A184392.P18314086194638459284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A007956 (n + 1) : ℚ) / (A179937 (n + 1) : ℚ))

end

end A184392.P18314086194638459284

/-! ## A184392.P7395270656883774468

`sqrt(n+1)^Δ[A006218(n)]/A179937(n+1)`
-/

namespace A184392.P7395270656883774468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A179937 (n + 1) : ℝ)

end

end A184392.P7395270656883774468

/-! ## A184392.P17639601639454478357

`sqrt(n+1)^A000005(n+1)/A179937(n+1)`
-/

namespace A184392.P17639601639454478357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) / (A179937 (n + 1) : ℝ)

end

end A184392.P17639601639454478357

/-! ## A184392.P823676519020350936

`ceil(A338576(n+1)/(n+1))/A179937(n+1)`
-/

namespace A184392.P823676519020350936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A338576 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A179937 (n + 1) : ℚ)

end

end A184392.P823676519020350936

/-! ## A184392.P1842955502333810394

`A007947(n+1)*A087652(n+1)/A179937(n+1)`
-/

namespace A184392.P1842955502333810394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A087652 (n + 1) : ℚ) / (A179937 (n + 1) : ℚ)

end

end A184392.P1842955502333810394

/-! ## A184392.P1660771079826274256

`A183091(n+1)/A179937(n+1)*A183092(n+1)`
-/

namespace A184392.P1660771079826274256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) : ℚ) / (A179937 (n + 1) : ℚ) * (A183092 (n + 1) : ℚ)

end

end A184392.P1660771079826274256

/-! ## A184392.P18342945192227503952

`A183102(n+1)/A179937(n+1)*A183103(n+1)`
-/

namespace A184392.P18342945192227503952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183102 (n + 1) : ℚ) / (A179937 (n + 1) : ℚ) * (A183103 (n + 1) : ℚ)

end

end A184392.P18342945192227503952

/-! ## A184392.P3709111637663583116

`A183104(n+1)/A179937(n+1)*A183105(n+1)`
-/

namespace A184392.P3709111637663583116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183104 (n + 1) : ℚ) / (A179937 (n + 1) : ℚ) * (A183105 (n + 1) : ℚ)

end

end A184392.P3709111637663583116

/-! ## A184392.P7204533083147520423

`sqrt(A062758(n+1))/A179937(n+1)`
-/

namespace A184392.P7204533083147520423
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A179937 (n + 1) : ℝ)

end

end A184392.P7204533083147520423

/-!
# A184393: The smallest number m such that sigma(m) = A007368(n), where A007368(n) = the smallest k such that sigma(x) = k has exactly n solutions.

The programs for A184393, there is no canonical definition to state claims against.
-/

/-! ## A184393.P5220892078678187002

`A201915(∑[n]+1)`
-/

namespace A184393.P5220892078678187002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184393.P5220892078678187002

/-! ## A184393.P14113499230864372274

`A201915(A000124(n))+C(n, n+1)`
-/

namespace A184393.P14113499230864372274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (A000124 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A184393.P14113499230864372274

/-! ## A184393.P6120480486789371219

`A201915(A000124(n))^A178334(n)`
-/

namespace A184393.P6120480486789371219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201915 (A000124 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A184393.P6120480486789371219

/-! ## A184393.P13910065896454918361

`gcd(A000038(n), A201915(A000124(n)))`
-/

namespace A184393.P13910065896454918361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A201915 (A000124 n).toNat)

end

end A184393.P13910065896454918361

/-! ## A184393.P15933468976019472345

`or(A000007(n), A201915(A000124(n)))`
-/

namespace A184393.P15933468976019472345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A201915 (A000124 n).toNat)

end

end A184393.P15933468976019472345

/-! ## A184393.P12008035793223516164

`∑{d}[A201915(A000124(n)), A000010(#)]`
-/

namespace A184393.P12008035793223516164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A184393.P12008035793223516164

/-! ## A184393.P11799211644322988211

`A201915(A000124(n))+A000038(n+1)`
-/

namespace A184393.P11799211644322988211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (A000124 n).toNat + A000038 (n + 1)

end

end A184393.P11799211644322988211

/-! ## A184393.P536050303266299015

`A201915(A000124(n))+A000035(2*n)`
-/

namespace A184393.P536050303266299015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (A000124 n).toNat + A000035 (2 * n)

end

end A184393.P536050303266299015

/-! ## A184393.P17787344059099745405

`A000034(2*n)*A201915(A000124(n))`
-/

namespace A184393.P17787344059099745405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A201915 (A000124 n).toNat

end

end A184393.P17787344059099745405

/-! ## A184393.P3404267346433506737

`A201915(A000124(n))%A000041(n+9)`
-/

namespace A184393.P3404267346433506737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201915 (A000124 n).toNat) (A000041 (n + 9))

end

end A184393.P3404267346433506737

/-! ## A184393.P9235606763743950301

`A007318(C(2, n))*A201915(A000124(n))`
-/

namespace A184393.P9235606763743950301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A201915 (A000124 n).toNat

end

end A184393.P9235606763743950301

/-! ## A184393.P9361428471149330665

`A201915(A000124(n))+A091400(or(3, n))`
-/

namespace A184393.P9361428471149330665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (A000124 n).toNat + A091400 (Nat.lor 3 n)

end

end A184393.P9361428471149330665

/-! ## A184393.P7103913758525695808

`A014577((n+1)²)*A201915(A000124(n))`
-/

namespace A184393.P7103913758525695808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 ((n + 1) ^ 2) * A201915 (A000124 n).toNat

end

end A184393.P7103913758525695808

/-! ## A184393.P7631373532564310167

`A201915(A000124(n))+A001105(n+1)%2`
-/

namespace A184393.P7631373532564310167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (A000124 n).toNat + Int.tmod (A001105 (n + 1)) 2

end

end A184393.P7631373532564310167

/-! ## A184393.P1766973458142355143

`A000108(C(n, n²)!)*A201915(A000124(n))`
-/

namespace A184393.P1766973458142355143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.factorial (Nat.choose n (n ^ 2))) * A201915 (A000124 n).toNat

end

end A184393.P1766973458142355143

/-! ## A184393.P10054296844653312768

`A201915(A000124(n))%A000330(A020710(n))`
-/

namespace A184393.P10054296844653312768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201915 (A000124 n).toNat) (A000330 (A020710 n).toNat)

end

end A184393.P10054296844653312768

/-! ## A184393.P9351220038761164131

`A350139(A028334(n+2))+A201915(A000124(n))`
-/

namespace A184393.P9351220038761164131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A028334 (n + 2)).toNat + A201915 (A000124 n).toNat

end

end A184393.P9351220038761164131

/-!
# A184394: The largest number m such that sigma(m) = A007368(n), where A007368(n) = the smallest k such that sigma(x) = k has exactly n solutions.

The programs for A184394, there is no canonical definition to state claims against.
-/

/-! ## A184394.P9806742217171432655

`A201915(∑[n+1])`
-/

namespace A184394.P9806742217171432655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184394.P9806742217171432655

/-! ## A184394.P18243101193345722167

`or(1, A201915(Δ[A000292(n)]))`
-/

namespace A184394.P18243101193345722167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201915 (f1 (n + 1) - f1 n).toNat)

end

end A184394.P18243101193345722167

/-! ## A184394.P8454991573070788478

`or(1, A201915(A000217(n+1)))`
-/

namespace A184394.P8454991573070788478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201915 (A000217 (n + 1)).toNat)

end

end A184394.P8454991573070788478

/-! ## A184394.P14741412421384382621

`or(1, A201915(A000124(n)+n))`
-/

namespace A184394.P14741412421384382621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201915 (A000124 n + (n : ℤ)).toNat)

end

end A184394.P14741412421384382621

/-! ## A184394.P10976106214855902473

`A201915(Δ[A000292(n)])%A017486(n)`
-/

namespace A184394.P10976106214855902473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201915 (f1 (n + 1) - f1 n).toNat) (A017486 n)

end

end A184394.P10976106214855902473

/-! ## A184394.P2900613140979281989

`gcd(A000038(n), A201915(A000124(n)+n))`
-/

namespace A184394.P2900613140979281989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A201915 (A000124 n + (n : ℤ)).toNat)

end

end A184394.P2900613140979281989

/-! ## A184394.P3676937224349242868

`A007318(C(2, n))*A201915(A000217(n+1))`
-/

namespace A184394.P3676937224349242868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A201915 (A000217 (n + 1)).toNat

end

end A184394.P3676937224349242868

/-! ## A184394.P10583092318886330131

`A201915(A000124(n)+n)+A000007(n+1)`
-/

namespace A184394.P10583092318886330131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201915 (A000124 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A184394.P10583092318886330131

/-! ## A184394.P17718612927430936982

`A201915(A000124(n)+n)%A069492(n+2)`
-/

namespace A184394.P17718612927430936982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201915 (A000124 n + (n : ℤ)).toNat) (A069492 (n + 2))

end

end A184394.P17718612927430936982

/-! ## A184394.P14564718695183964095

`A014963(6*(n+1))*A201915(A000124(n)+n)`
-/

namespace A184394.P14564718695183964095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A201915 (A000124 n + (n : ℤ)).toNat

end

end A184394.P14564718695183964095

/-! ## A184394.P11789870048129958442

`A007318(C(2, n+1))*A201915(A000124(n)+n)`
-/

namespace A184394.P11789870048129958442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A201915 (A000124 n + (n : ℤ)).toNat

end

end A184394.P11789870048129958442

/-! ## A184394.P4005908369997830186

`A007318(val(n+1, 7))*A201915(A000124(n)+n)`
-/

namespace A184394.P4005908369997830186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 7) * A201915 (A000124 n + (n : ℤ)).toNat

end

end A184394.P4005908369997830186

/-! ## A184394.P1524904321184251686

`A201915(A000124(n)+n)%A022369(A020710(n))`
-/

namespace A184394.P1524904321184251686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201915 (A000124 n + (n : ℤ)).toNat) (A022369 (A020710 n).toNat)

end

end A184394.P1524904321184251686

/-!
# A184395: a(n) = number of distinct values obtained when sigma is applied to the divisors of n.

The programs for A184395, there is no canonical definition to state claims against.
-/

/-! ## A184395.P12333157954609249239

`A000203(n+1)-A184396(n+1)`
-/

namespace A184395.P12333157954609249239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A184396 (n + 1)

end

end A184395.P12333157954609249239

/-! ## A184395.P5565112834549655164

`Δ[A160664(n)]-A184396(n+1)`
-/

namespace A184395.P5565112834549655164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A184396 (n + 1)

end

end A184395.P5565112834549655164

/-! ## A184395.P4170410562636389170

`A088580(n+1)-1-A184396(n+1)`
-/

namespace A184395.P4170410562636389170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1 - A184396 (n + 1)

end

end A184395.P4170410562636389170

/-! ## A184395.P17396451470708026985

`A001065(n+1)+1+n-A184396(n+1)`
-/

namespace A184395.P17396451470708026985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A184396 (n + 1)

end

end A184395.P17396451470708026985

/-! ## A184395.P17293609890216721338

`A155085(n+1)-(n+1)-A184396(n+1)`
-/

namespace A184395.P17293609890216721338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A184396 (n + 1)

end

end A184395.P17293609890216721338

/-! ## A184395.P14556772032957257325

`A064987(n+1)/(n+1)-A184396(n+1)`
-/

namespace A184395.P14556772032957257325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A184396 (n + 1) : ℚ)

end

end A184395.P14556772032957257325

/-! ## A184395.P14628717566335099942

`2*(n+1)-A033879(n+1)-A184396(n+1)`
-/

namespace A184395.P14628717566335099942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A184396 (n + 1)

end

end A184395.P14628717566335099942

/-! ## A184395.P6522142839692592610

`A245092(A005408(n))-A184396(n+1)`
-/

namespace A184395.P6522142839692592610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A005408 n).toNat - A184396 (n + 1)

end

end A184395.P6522142839692592610

/-! ## A184395.P16079125206741482671

`A000005(n+1)+A065608(n+1)-A184396(n+1)`
-/

namespace A184395.P16079125206741482671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A065608 (n + 1) - A184396 (n + 1))

end

end A184395.P16079125206741482671

/-! ## A184395.P11087812468845149610

`A082052(n+1)+A050449(n+1)-A184396(n+1)`
-/

namespace A184395.P11087812468845149610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1) + A050449 (n + 1) - A184396 (n + 1)

end

end A184395.P11087812468845149610

/-! ## A184395.P12755624312778523523

`A038040(n+1)-(A184396(n+1)+A094471(n+1))`
-/

namespace A184395.P12755624312778523523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - (A184396 (n + 1) + A094471 (n + 1))

end

end A184395.P12755624312778523523

/-! ## A184395.P1365708544456216004

`A070039(n+1)+A070038(n+1)-A184396(n+1)`
-/

namespace A184395.P1365708544456216004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + A070038 (n + 1) - A184396 (n + 1)

end

end A184395.P1365708544456216004

/-! ## A184395.P12282217475418402248

`A146076(n+1)+A000593(n+1)-A184396(n+1)`
-/

namespace A184395.P12282217475418402248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A000593 (n + 1) - A184396 (n + 1)

end

end A184395.P12282217475418402248

/-! ## A184395.P11022813602270850095

`A162296(n+1)+A048250(n+1)-A184396(n+1)`
-/

namespace A184395.P11022813602270850095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + A048250 (n + 1) - A184396 (n + 1)

end

end A184395.P11022813602270850095

/-! ## A184395.P4164504588284753475

`A000720(A067161(n+1))-A184396(n+1)`
-/

namespace A184395.P4164504588284753475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067161 (n + 1)).toNat - A184396 (n + 1)

end

end A184395.P4164504588284753475

/-! ## A184395.P13630138515096592651

`A008619(A002659(n+1))-A184396(n+1)`
-/

namespace A184395.P13630138515096592651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002659 (n + 1)).toNat - A184396 (n + 1)

end

end A184395.P13630138515096592651

/-!
# A184396: a(n) = number of numbers k <= sigma(n) such that k is not equal to sigma(d) for any divisor d of n, where sigma = A000203.

The programs for A184396, there is no canonical definition to state claims against.
-/

/-! ## A184396.P15213366038796434168

`A000203(n+1)-A184395(n+1)`
-/

namespace A184396.P15213366038796434168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A184395 (n + 1)

end

end A184396.P15213366038796434168

/-! ## A184396.P13314575154523163816

`Δ[A160664(n)]-A184395(n+1)`
-/

namespace A184396.P13314575154523163816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A184395 (n + 1)

end

end A184396.P13314575154523163816

/-! ## A184396.P5688090202083000929

`abs(A143348(n+1))-A184395(n+1)`
-/

namespace A184396.P5688090202083000929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A184395 (n + 1)

end

end A184396.P5688090202083000929

/-! ## A184396.P6251550382838309667

`A088580(n+1)-1-A184395(n+1)`
-/

namespace A184396.P6251550382838309667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1 - A184395 (n + 1)

end

end A184396.P6251550382838309667

/-! ## A184396.P6055518741427634690

`A001065(n+1)+1+n-A184395(n+1)`
-/

namespace A184396.P6055518741427634690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A184395 (n + 1)

end

end A184396.P6055518741427634690

/-! ## A184396.P10676255851442803085

`A064987(n+1)/(n+1)-A184395(n+1)`
-/

namespace A184396.P10676255851442803085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A184395 (n + 1) : ℚ)

end

end A184396.P10676255851442803085

/-! ## A184396.P14294510283736904712

`2*(n+1)-A033879(n+1)-A184395(n+1)`
-/

namespace A184396.P14294510283736904712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A184395 (n + 1)

end

end A184396.P14294510283736904712

/-! ## A184396.P3038184491486935046

`A000005(n+1)+A065608(n+1)-A184395(n+1)`
-/

namespace A184396.P3038184491486935046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A065608 (n + 1) - A184395 (n + 1))

end

end A184396.P3038184491486935046

/-! ## A184396.P7821598309974719195

`A082052(n+1)+A050449(n+1)-A184395(n+1)`
-/

namespace A184396.P7821598309974719195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1) + A050449 (n + 1) - A184395 (n + 1)

end

end A184396.P7821598309974719195

/-! ## A184396.P7002883207432668427

`A070039(n+1)+A070038(n+1)-A184395(n+1)`
-/

namespace A184396.P7002883207432668427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + A070038 (n + 1) - A184395 (n + 1)

end

end A184396.P7002883207432668427

/-! ## A184396.P1651362984595256885

`A146076(n+1)+A000593(n+1)-A184395(n+1)`
-/

namespace A184396.P1651362984595256885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A000593 (n + 1) - A184395 (n + 1)

end

end A184396.P1651362984595256885

/-! ## A184396.P9287687696710801823

`A117004(n+1)+A079667(n+1)-A184395(n+1)`
-/

namespace A184396.P9287687696710801823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1) + A079667 (n + 1) - A184395 (n + 1)

end

end A184396.P9287687696710801823

/-! ## A184396.P5619571259588328921

`A178637(n+1)+A023889(n+1)-A184395(n+1)`
-/

namespace A184396.P5619571259588328921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (n + 1) + A023889 (n + 1) - A184395 (n + 1)

end

end A184396.P5619571259588328921

/-! ## A184396.P17409536513238085182

`A162296(n+1)+A048250(n+1)-A184395(n+1)`
-/

namespace A184396.P17409536513238085182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + A048250 (n + 1) - A184395 (n + 1)

end

end A184396.P17409536513238085182

/-! ## A184396.P10179385352576127999

`A246425(A002659(n+1))-A184395(n+1)`
-/

namespace A184396.P10179385352576127999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A002659 (n + 1)).toNat - A184395 (n + 1)

end

end A184396.P10179385352576127999

/-! ## A184396.P9195860471199725108

`A065608(n+1)+A010051(A295160(A222438(n+1)))`
-/

namespace A184396.P9195860471199725108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + A010051 (A295160 (A222438 (n + 1)).toNat).toNat

end

end A184396.P9195860471199725108

/-!
# A184397: Ranks of (odd i)+j*r, when all i+j*r are ranked; r=sqrt(2), i>=0, j>=0. Complement of A184398.

The programs for A184397, there is no canonical definition to state claims against.
-/

/-! ## A184397.P7509238677597394983

`lt[0, A025648(n+1)%2]+1`
-/

namespace A184397.P7509238677597394983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025648 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A184397.P7509238677597394983

/-! ## A184397.P1707915928528046234

`eq[1, A025648(n+2)%2]+2`
-/

namespace A184397.P1707915928528046234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025648 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A184397.P1707915928528046234

/-! ## A184397.P3897292579955875496

`eq[1, A025648(A028310(n))%2]`
-/

namespace A184397.P3897292579955875496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025648 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184397.P3897292579955875496

/-! ## A184397.P13411072710983212305

`eq[1, A000035(A025648(n+1))]+1`
-/

namespace A184397.P13411072710983212305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A025648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184397.P13411072710983212305

/-! ## A184397.P8257534511101808939

`eq[2, A020639(A007336(n+1))]+1`
-/

namespace A184397.P8257534511101808939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007336 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184397.P8257534511101808939

/-! ## A184397.P18278923624329504945

`∪[A184399(n+1), A184400(n+1)]`
-/

namespace A184397.P18278923624329504945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184397.P18278923624329504945

/-! ## A184397.P2073030751408952154

`eq[1, A266303(A007336(n+1)²)]+1`
-/

namespace A184397.P2073030751408952154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (A007336 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184397.P2073030751408952154

/-! ## A184397.P14594731818695690514

`eq[2, A020639(A025648(n+1)+1)]+1`
-/

namespace A184397.P14594731818695690514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025648 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184397.P14594731818695690514

/-!
# A184398: Ranks of (even i)+j*r, when all i+j*r are ranked; r=sqrt(2), i>=0, j>=0. Complement of A184397.

The programs for A184398, there is no canonical definition to state claims against.
-/

/-! ## A184398.P12385690512607606198

`comp[A184397(n+1)-1]+1`
-/

namespace A184398.P12385690512607606198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184398.P12385690512607606198

/-! ## A184398.P3771031849477157382

`eq[0, A025648(n+1)%2]+1`
-/

namespace A184398.P3771031849477157382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025648 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184398.P3771031849477157382

/-! ## A184398.P14903665448019859071

`lt[val(A007336(n+1), 2), 1]+1`
-/

namespace A184398.P14903665448019859071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007336 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A184398.P14903665448019859071

/-! ## A184398.P17084743636372929662

`comp[A184397(a(floor(n/3))+n%3)]` with `a(0)=0`
-/

namespace A184398.P17084743636372929662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A184397 (f1 ⌊(n : ℚ) / 3⌋.toNat + ((n % 3 : ℕ) : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184398.P17084743636372929662

/-! ## A184398.P10002099669938635860

`record[A015343(A025648(n+1))+n]`
-/

namespace A184398.P10002099669938635860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A025648 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184398.P10002099669938635860

/-! ## A184398.P16407632584269193479

`record[n-A015343(A007336(n+1))]`
-/

namespace A184398.P16407632584269193479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A015343 (A007336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184398.P16407632584269193479

/-! ## A184398.P15282896626179733700

`eq[0, A025648(A000038(n)+n)%2]`
-/

namespace A184398.P15282896626179733700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025648 (A000038 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184398.P15282896626179733700

/-! ## A184398.P4701944646407478748

`∪[A184401(n+1), A184402(n+1)]`
-/

namespace A184398.P4701944646407478748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184398.P4701944646407478748

/-! ## A184398.P6760033633703407668

`eq[1, A040341(A025648(n+1)+1)]+1`
-/

namespace A184398.P6760033633703407668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040341 (A025648 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184398.P6760033633703407668

/-! ## A184398.P16242277006806396363

`record[A000027(n+1)/A028920(A025648(n+1))]`
-/

namespace A184398.P16242277006806396363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A028920 (A025648 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184398.P16242277006806396363

/-!
# A184399: Ranks of (odd i)+(odd j)*r, when all i+j*r are ranked; r=sqrt(2), i>=0, j>=0.

The programs for A184399, there is no canonical definition to state claims against.
-/

/-! ## A184399.P3091039311488280805

`1-A184402(n+1)+A184401(n+1)+A184400(n+1)`
-/

namespace A184399.P3091039311488280805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A184402 (n + 1) + (A184401 (n + 1) + A184400 (n + 1))

end

end A184399.P3091039311488280805

/-! ## A184399.P9006918317102699085

`A184397(A184397(n+1))`
-/

namespace A184399.P9006918317102699085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (A184397 (n + 1)).toNat

end

end A184399.P9006918317102699085

/-! ## A184399.P10881779460203397380

`record[A184397(A184397(A020986(n)))]`
-/

namespace A184399.P10881779460203397380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (A184397 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184399.P10881779460203397380

/-! ## A184399.P12236969152469161654

`record[A184397(A184397(A028920(n)))]`
-/

namespace A184399.P12236969152469161654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (A184397 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184399.P12236969152469161654

/-! ## A184399.P14432519015291350231

`record[A184397(A184397(A065648(n)))]`
-/

namespace A184399.P14432519015291350231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (A184397 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184399.P14432519015291350231

