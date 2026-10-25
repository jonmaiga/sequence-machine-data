import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A304900: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304900, there is no canonical definition to state claims against.
-/

/-! ## A304900.P7754747316319439783

`A304901(A374008(n+1))`
-/

namespace A304900.P7754747316319439783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A374008 (n + 1)).toNat

end

end A304900.P7754747316319439783

/-! ## A304900.P14119574582424306618

`A304901(A056119(n)+28)`
-/

namespace A304900.P14119574582424306618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A056119 n + 28).toNat

end

end A304900.P14119574582424306618

/-! ## A304900.P9541238434917972727

`A304901(eq[11, A066657(n)])`
-/

namespace A304900.P9541238434917972727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304900.P9541238434917972727

/-! ## A304900.P12351751362415697330

`A304901(A112355(n+4)+7)`
-/

namespace A304900.P12351751362415697330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A112355 (n + 4) + 7).toNat

end

end A304900.P12351751362415697330

/-! ## A304900.P10360973122115960132

`A304901(eq[8, A131818(n+1)])`
-/

namespace A304900.P10360973122115960132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304900.P10360973122115960132

/-!
# A304901: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304901, there is no canonical definition to state claims against.
-/

/-! ## A304901.P10814757092063214459

`A316583(n+1)+A016389(A022166(n))`
-/

namespace A304901.P10814757092063214459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (n + 1) + A016389 (A022166 n).toNat

end

end A304901.P10814757092063214459

/-! ## A304901.P1133945248773160224

`A316583(n+1)+A016389(A027336(n))`
-/

namespace A304901.P1133945248773160224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (n + 1) + A016389 (A027336 n).toNat

end

end A304901.P1133945248773160224

/-! ## A304901.P8215534287512525159

`A316583(n+1)-A037824(A022173(n))`
-/

namespace A304901.P8215534287512525159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (n + 1) - A037824 (A022173 n).toNat

end

end A304901.P8215534287512525159

/-! ## A304901.P7470431173229865208

`A316583(n+1)-A038144(A303864(n))`
-/

namespace A304901.P7470431173229865208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (n + 1) - A038144 (A303864 n).toNat

end

end A304901.P7470431173229865208

/-! ## A304901.P14981074606887983311

`A316583(n+1)-A327146(A331569(n))`
-/

namespace A304901.P14981074606887983311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (n + 1) - A327146 (A331569 n).toNat

end

end A304901.P14981074606887983311

/-!
# A304902: Let (P,<) be the strict partial order on the subsets of {1,2,...,n} ordered by their cardinality. Then a(n) is the number of paths of any length from {} to {1,2,...,n}.

The programs for A304902, there is no canonical definition to state claims against.
-/

/-! ## A304902.P6943220509880110299

`ceil(A055612(n)/2)`
-/

namespace A304902.P6943220509880110299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055612 n : ℚ) / 2⌉

end

end A304902.P6943220509880110299

/-! ## A304902.P4520965763713351895

`ceil(A129824(n)/4)`
-/

namespace A304902.P4520965763713351895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129824 n : ℚ) / 4⌉

end

end A304902.P4520965763713351895

/-! ## A304902.P8076025596370447940

`A055612(A028310(n))/2`
-/

namespace A304902.P8076025596370447940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055612 (A028310 n).toNat : ℚ) / 2

end

end A304902.P8076025596370447940

/-! ## A304902.P2352201129144348732

`A055612(n)/A014963(A062383(n))`
-/

namespace A304902.P2352201129144348732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055612 n : ℚ) / (A014963 (A062383 n).toNat : ℚ)

end

end A304902.P2352201129144348732

/-!
# A304903: Least prime p such that 2*n^2 - p is prime.

The programs for A304903, there is no canonical definition to state claims against.
-/

/-! ## A304903.P8049529363031253650

`(n+2)²-A304905(n+2)`
-/

namespace A304903.P8049529363031253650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A304905 (n + 2)

end

end A304903.P8049529363031253650

/-! ## A304903.P18425734570709669637

`A304904(n+2)-2*A304905(n+2)`
-/

namespace A304903.P18425734570709669637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304904 (n + 2) - 2 * A304905 (n + 2)

end

end A304903.P18425734570709669637

/-! ## A304903.P13793320037182920101

`A002373((n+2)²)`
-/

namespace A304903.P13793320037182920101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 ((n + 2) ^ 2)

end

end A304903.P13793320037182920101

/-! ## A304903.P6191313042703854194

`A020481((n+2)²)`
-/

namespace A304903.P6191313042703854194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 ((n + 2) ^ 2)

end

end A304903.P6191313042703854194

/-! ## A304903.P15382718290435789392

`(n+2)²-A047949((n+2)²)`
-/

namespace A304903.P15382718290435789392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A047949 ((n + 2) ^ 2)

end

end A304903.P15382718290435789392

/-! ## A304903.P69422015736371092

`A210957(A054000(n+2))`
-/

namespace A304903.P69422015736371092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (A054000 (n + 2)).toNat

end

end A304903.P69422015736371092

/-! ## A304903.P17538802339620557002

`A000040(A377758((n+2)²))`
-/

namespace A304903.P17538802339620557002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377758 ((n + 2) ^ 2)).toNat

end

end A304903.P17538802339620557002

/-! ## A304903.P12524654032505246982

`p?[A002373(A000290(n+2))]`
-/

namespace A304903.P12524654032505246982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A000290 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304903.P12524654032505246982

/-! ## A304903.P2023433836194943320

`A014963(A002373((n+2)^2))`
-/

namespace A304903.P2023433836194943320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A002373 ((n + 2) ^ 2)).toNat

end

end A304903.P2023433836194943320

/-! ## A304903.P15706732356848432923

`A014963(A020481((n+2)^2))`
-/

namespace A304903.P15706732356848432923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020481 ((n + 2) ^ 2)).toNat

end

end A304903.P15706732356848432923

/-!
# A304904: Greatest prime p such that 2*n^2 - p is prime.

The programs for A304904, there is no canonical definition to state claims against.
-/

/-! ## A304904.P17505488623617462977

`(n+2)²+A304905(n+2)`
-/

namespace A304904.P17505488623617462977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) + A304905 (n + 2)

end

end A304904.P17505488623617462977

/-! ## A304904.P15425824939104772070

`2*(n+2)²-A304903(n+2)`
-/

namespace A304904.P15425824939104772070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) ^ 2 : ℤ) - A304903 (n + 2)

end

end A304904.P15425824939104772070

/-! ## A304904.P3703064089336852153

`A304903(n+2)+2*A304905(n+2)`
-/

namespace A304904.P3703064089336852153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304903 (n + 2) + 2 * A304905 (n + 2)

end

end A304904.P3703064089336852153

/-! ## A304904.P8787190066182324847

`A020482((n+2)²)`
-/

namespace A304904.P8787190066182324847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 ((n + 2) ^ 2)

end

end A304904.P8787190066182324847

/-! ## A304904.P5765011591941054832

`A159482((n+2)²)`
-/

namespace A304904.P5765011591941054832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 ((n + 2) ^ 2)

end

end A304904.P5765011591941054832

/-!
# A304905: Greatest difference d such that both n^2 - d and n^2 + d are primes.

The programs for A304905, there is no canonical definition to state claims against.
-/

/-! ## A304905.P9186350964719301693

`(n+2)²-A304903(n+2)`
-/

namespace A304905.P9186350964719301693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A304903 (n + 2)

end

end A304905.P9186350964719301693

/-! ## A304905.P4734262352729486392

`A304904(n+2)-(n+2)²`
-/

namespace A304905.P4734262352729486392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304904 (n + 2) - ((n + 2) ^ 2 : ℤ)

end

end A304905.P4734262352729486392

/-! ## A304905.P9294726606959464092

`(A304904(n+2)-A304903(n+2))/2`
-/

namespace A304905.P9294726606959464092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304904 (n + 2) - A304903 (n + 2) : ℚ) / 2

end

end A304905.P9294726606959464092

/-! ## A304905.P13954322820444568904

`A047949((n+2)²)`
-/

namespace A304905.P13954322820444568904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 ((n + 2) ^ 2)

end

end A304905.P13954322820444568904

/-! ## A304905.P9838551108423704249

`A303603((n+2)²)/2`
-/

namespace A304905.P9838551108423704249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303603 ((n + 2) ^ 2) : ℚ) / 2

end

end A304905.P9838551108423704249

/-!
# A304906: L.g.f.: log(Product_{k>=1} (1 + x^(k^3))) = Sum_{n>=1} a(n)*x^n/n.

The programs for A304906, there is no canonical definition to state claims against.
-/

/-! ## A304906.P1468460367303519446

`Δ[and(n, ∑[A226261(n)])]`
-/

namespace A304906.P1468460367303519446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226261 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304906.P1468460367303519446

/-! ## A304906.P6220597778811316842

`Δ[and(n, A112044(n+1))]`
-/

namespace A304906.P6220597778811316842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A112044 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304906.P6220597778811316842

/-! ## A304906.P7670938860048618805

`Δ[and(9, A156723(3*n+1))]`
-/

namespace A304906.P7670938860048618805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (A156723 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304906.P7670938860048618805

/-! ## A304906.P611679193774895300

`Δ[and(n, A099973(n))]`
-/

namespace A304906.P611679193774895300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A099973 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304906.P611679193774895300

/-! ## A304906.P10250164688905043460

`Δ[and(n, A144887(n+1))]`
-/

namespace A304906.P10250164688905043460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A144887 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304906.P10250164688905043460

/-!
# A304907: Expansion of x * (d/dx) 1/(1 - Sum_{k>=1} x^k/(1 + x^k)).

The programs for A304907, there is no canonical definition to state claims against.
-/

/-! ## A304907.P10376838631199319480

`n*A003242(n)`
-/

namespace A304907.P10376838631199319480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003242 n

end

end A304907.P10376838631199319480

/-! ## A304907.P7564506902436809344

`n*(A285981(n)+A032020(n))`
-/

namespace A304907.P7564506902436809344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A285981 n + A032020 n)

end

end A304907.P7564506902436809344

/-! ## A304907.P13285140026426080571

`n*(A345195(n)+A025047(n))`
-/

namespace A304907.P13285140026426080571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A345195 n + A025047 n)

end

end A304907.P13285140026426080571

/-! ## A304907.P5515632491424799993

`n*(A261984(n)+A261962(n))`
-/

namespace A304907.P5515632491424799993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A261984 n + A261962 n)

end

end A304907.P5515632491424799993

/-! ## A304907.P240632578350962523

`n*(A011782(n)-A261983(n))`
-/

namespace A304907.P240632578350962523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011782 n - A261983 n)

end

end A304907.P240632578350962523

/-! ## A304907.P124499823585235524

`n*(Δ[A056469(n)]-A261983(n))`
-/

namespace A304907.P124499823585235524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n - A261983 n)

end

end A304907.P124499823585235524

/-! ## A304907.P12829264731894876633

`n*A106356(∑[n-1]+2)`
-/

namespace A304907.P12829264731894876633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106356 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A304907.P12829264731894876633

/-! ## A304907.P11400148299770093360

`n*A091613(∑[abs(1-n)])`
-/

namespace A304907.P11400148299770093360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304907.P11400148299770093360

/-! ## A304907.P14561201821353517555

`n*A214249(A354595(n))`
-/

namespace A304907.P14561201821353517555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A214249 (A354595 n).toNat

end

end A304907.P14561201821353517555

/-! ## A304907.P16492614960126905875

`n*A214268(2*n²)`
-/

namespace A304907.P16492614960126905875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A214268 (2 * n ^ 2)

end

end A304907.P16492614960126905875

/-!
# A304908: Expansion of x * (d/dx) 1/(1 - Sum_{k>=0} x^(2^k)).

The programs for A304908, there is no canonical definition to state claims against.
-/

/-! ## A304908.P17150184343574109193

`n*A023359(n)`
-/

namespace A304908.P17150184343574109193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023359 n

end

end A304908.P17150184343574109193

/-! ## A304908.P7571124790355669149

`n*Δ[A303666(abs(1-n))]`
-/

namespace A304908.P7571124790355669149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303666 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A304908.P7571124790355669149

/-! ## A304908.P7312442014607379503

`n*(A339427(n)+A339426(n))`
-/

namespace A304908.P7312442014607379503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A339427 n + A339426 n)

end

end A304908.P7312442014607379503

/-! ## A304908.P16970350209153466443

`n*(A357534(n)+A255738(n+1))`
-/

namespace A304908.P16970350209153466443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A357534 n + A255738 (n + 1))

end

end A304908.P16970350209153466443

/-! ## A304908.P15017390805096730733

`n/A023359(n)^A008683(A151800(n))`
-/

namespace A304908.P15017390805096730733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A023359 n : ℚ) ^ (A008683 (A151800 n).toNat : ℤ)

end

end A304908.P15017390805096730733

/-! ## A304908.P4265719905956545234

`n*(A018819(n)+A357534(n)-A357476(n))`
-/

namespace A304908.P4265719905956545234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A018819 n + (A357534 n - A357476 n))

end

end A304908.P4265719905956545234

/-!
# A304909: Expansion of x * (d/dx) Product_{k>=0} 1/(1 - x^(2^k)).

The programs for A304909, the canonical program `A304909.P3593984619417138488` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304909 has offset 0).

The definition of A304909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304909.P3593984619417138488

`n*A018819(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304909

/-- `n*A018819(n)` -/
def P3593984619417138488.Spec : Prop :=
  ∀ n, P3593984619417138488.a n = A304909 n

theorem P3593984619417138488.correct : P3593984619417138488.Spec := by
  intro n
  simp only [A304909]

end A304909

/-! ## A304909.P3443217105494144582

`n*A000123(floor(n/2))`
-/

namespace A304909.P3443217105494144582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000123 ⌊(n : ℚ) / 2⌋.toNat

end

end A304909.P3443217105494144582

namespace A304909

/-- `n*A000123(floor(n/2))` -/
def P3443217105494144582.Spec : Prop :=
  ∀ n, P3443217105494144582.a n = A304909 n

end A304909

/-! ## A304909.P1097479861580690842

`n*Δ[A000123(abs(1-n))]`
-/

namespace A304909.P1097479861580690842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A304909.P1097479861580690842

namespace A304909

/-- `n*Δ[A000123(abs(1-n))]` -/
def P1097479861580690842.Spec : Prop :=
  ∀ n, P1097479861580690842.a n = A304909 n

end A304909

/-! ## A304909.P4633041282009007510

`n*(A357476(n)+A255738(n+1))`
-/

namespace A304909.P4633041282009007510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A357476 n + A255738 (n + 1))

end

end A304909.P4633041282009007510

namespace A304909

/-- `n*(A357476(n)+A255738(n+1))` -/
def P4633041282009007510.Spec : Prop :=
  ∀ n, P4633041282009007510.a n = A304909 n

theorem P4633041282009007510.correct : P4633041282009007510.Spec := by
  intro n
  simp only [A304909, Nat.add_sub_cancel, A304909.P4633041282009007510.a, A304909.P3593984619417138488.a, A018819, A018819.P3593375773759220258.a, A255738, A255738.P3969788085053868356.f1, A255738.P3969788085053868356.a, A357476, A357476.P18270851588785334001.f1, A357476.P18270851588785334001.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304909

/-! ## A304909.P2965891494248548368

`n*Δ[a(n-1)+a(∑[a(n-2)²])]` with `a(0)=0, a(1)=1`
-/

namespace A304909.P2965891494248548368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A304909.P2965891494248548368

namespace A304909

/-- `n*Δ[a(n-1)+a(∑[a(n-2)²])]` -/
def P2965891494248548368.Spec : Prop :=
  ∀ n, P2965891494248548368.a n = A304909 n

end A304909

/-! ## A304909.P4216203207638670200

`n*A307148(Δ[n²])`
-/

namespace A304909.P4216203207638670200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A307148 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A304909.P4216203207638670200

namespace A304909

/-- `n*A307148(Δ[n²])` -/
def P4216203207638670200.Spec : Prop :=
  ∀ n, P4216203207638670200.a n = A304909 n

end A304909

/-! ## A304909.P3892650275301242705

`n*A101566(∑[n])`
-/

namespace A304909.P3892650275301242705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101566 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304909.P3892650275301242705

namespace A304909

/-- `n*A101566(∑[n])` -/
def P3892650275301242705.Spec : Prop :=
  ∀ n, P3892650275301242705.a n = A304909 n

end A304909

/-! ## A304909.P15037580425040050818

`n*A181322(A047838(n+2))`
-/

namespace A304909.P15037580425040050818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181322 (A047838 (n + 2)).toNat

end

end A304909.P15037580425040050818

namespace A304909

/-- `n*A181322(A047838(n+2))` -/
def P15037580425040050818.Spec : Prop :=
  ∀ n, P15037580425040050818.a n = A304909 n

end A304909

/-! ## A304909.P8867961503654569832

`n*A181322(A116940(n+1))`
-/

namespace A304909.P8867961503654569832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181322 (A116940 (n + 1)).toNat

end

end A304909.P8867961503654569832

namespace A304909

/-- `n*A181322(A116940(n+1))` -/
def P8867961503654569832.Spec : Prop :=
  ∀ n, P8867961503654569832.a n = A304909 n

end A304909

/-! ## A304909.P13554484488236758573

`n*A262553(A074148(n+2))`
-/

namespace A304909.P13554484488236758573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A262553 (A074148 (n + 2)).toNat

end

end A304909.P13554484488236758573

namespace A304909

/-- `n*A262553(A074148(n+2))` -/
def P13554484488236758573.Spec : Prop :=
  ∀ n, P13554484488236758573.a n = A304909 n

end A304909

/-! ## A304909.P12763111102369939649

`n*A238392(A194274(n))`
-/

namespace A304909.P12763111102369939649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238392 (A194274 n).toNat

end

end A304909.P12763111102369939649

namespace A304909

/-- `n*A238392(A194274(n))` -/
def P12763111102369939649.Spec : Prop :=
  ∀ n, P12763111102369939649.a n = A304909 n

end A304909

/-! ## A304909.P8996822396277798496

`n*A238392(A007590(n+1))`
-/

namespace A304909.P8996822396277798496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238392 (A007590 (n + 1)).toNat

end

end A304909.P8996822396277798496

namespace A304909

/-- `n*A238392(A007590(n+1))` -/
def P8996822396277798496.Spec : Prop :=
  ∀ n, P8996822396277798496.a n = A304909 n

end A304909

/-! ## A304909.P1573529279955118102

`n*A238392(A080476(n+1))`
-/

namespace A304909.P1573529279955118102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238392 (A080476 (n + 1)).toNat

end

end A304909.P1573529279955118102

namespace A304909

/-- `n*A238392(A080476(n+1))` -/
def P1573529279955118102.Spec : Prop :=
  ∀ n, P1573529279955118102.a n = A304909 n

end A304909

/-! ## A304909.P12510945977784736939

`n*A238392(A116471(n+1))`
-/

namespace A304909.P12510945977784736939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238392 (A116471 (n + 1)).toNat

end

end A304909.P12510945977784736939

namespace A304909

/-- `n*A238392(A116471(n+1))` -/
def P12510945977784736939.Spec : Prop :=
  ∀ n, P12510945977784736939.a n = A304909 n

end A304909

/-! ## A304909.P4360783272951336975

`n*A238392(A178218(n+1))`
-/

namespace A304909.P4360783272951336975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238392 (A178218 (n + 1)).toNat

end

end A304909.P4360783272951336975

namespace A304909

/-- `n*A238392(A178218(n+1))` -/
def P4360783272951336975.Spec : Prop :=
  ∀ n, P4360783272951336975.a n = A304909 n

end A304909

/-! ## A304909.P17399382846866119151

`n*A238392(A266723(n+1))`
-/

namespace A304909.P17399382846866119151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238392 (A266723 (n + 1)).toNat

end

end A304909.P17399382846866119151

namespace A304909

/-- `n*A238392(A266723(n+1))` -/
def P17399382846866119151.Spec : Prop :=
  ∀ n, P17399382846866119151.a n = A304909 n

end A304909

/-!
# A304911: Number of labeled hyperforests spanning n vertices without singleton edges.

The programs for A304911, there is no canonical definition to state claims against.
-/

/-! ## A304911.P14066423968649952347

`A008617(Δ[A076864(n)]²)`
-/

namespace A304911.P14066423968649952347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A304911.P14066423968649952347

/-! ## A304911.P8671082335491503557

`A002265(A158341(n))+char[9*n]`
-/

namespace A304911.P8671082335491503557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A158341 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304911.P8671082335491503557

/-!
# A304912: Number of non-isomorphic spanning hyperforests of weight n.

The programs for A304912, there is no canonical definition to state claims against.
-/

/-! ## A304912.P958193086040100106

`A059966(n+1)-A124763(A007416(n+1))`
-/

namespace A304912.P958193086040100106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A124763 (A007416 (n + 1)).toNat

end

end A304912.P958193086040100106

/-! ## A304912.P7907839730536492088

`A059966(n+1)-A218604(A062763(n+1))`
-/

namespace A304912.P7907839730536492088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A218604 (A062763 (n + 1)).toNat

end

end A304912.P7907839730536492088

/-! ## A304912.P17190221609009800383

`A002024(A036721(n)*A240080(n))`
-/

namespace A304912.P17190221609009800383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A036721 n * A240080 n).toNat

end

end A304912.P17190221609009800383

/-! ## A304912.P7426021839250774406

`A002024(and(A148534(n), A148551(n)))`
-/

namespace A304912.P7426021839250774406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.land (A148534 n) (A148551 n)).toNat

end

end A304912.P7426021839250774406

/-! ## A304912.P6666693754385882166

`A059966(n+1)-A083339(A376052(n+1))`
-/

namespace A304912.P6666693754385882166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A083339 (A376052 (n + 1)).toNat

end

end A304912.P6666693754385882166

/-!
# A304913: Partial sums of A304910.

The programs for A304913, there is no canonical definition to state claims against.
-/

/-! ## A304913.P16204890947159957094

`∑[A304910(n)]`
-/

namespace A304913.P16204890947159957094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304913.P16204890947159957094

/-! ## A304913.P1327513129317942434

`A304910(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A304913.P1327513129317942434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304910 (A028310 n).toNat + a (n - 1)

end

end A304913.P1327513129317942434

/-! ## A304913.P3213619671043070998

`A304910(n)+a(A004277(n)-(n+1))` with `a(0)=1`
-/

namespace A304913.P3213619671043070998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304910 n + a (A004277 n - (n + 1 : ℤ)).toNat

end

end A304913.P3213619671043070998

/-! ## A304913.P13924844772911027796

`A304910(n)+a(A302032(A004277(n))-1)` with `a(0)=1`
-/

namespace A304913.P13924844772911027796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304910 n + a (A302032 (A004277 n).toNat - 1).toNat

end

end A304913.P13924844772911027796

/-! ## A304913.P1455870943402916850

`A053165(A304910(n)+a(n-1))` with `a(0)=1`
-/

namespace A304913.P1455870943402916850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053165 (A304910 n + a (n - 1)).toNat

end

end A304913.P1455870943402916850

/-!
# A304914: Number of trees with positive integer edge labels summing to n.

The programs for A304914, there is no canonical definition to state claims against.
-/

/-! ## A304914.P84495983121584760

`(A322111(n)+A321229(n))/2`
-/

namespace A304914.P84495983121584760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322111 n + A321229 n : ℚ) / 2

end

end A304914.P84495983121584760

/-! ## A304914.P6725960594068802889

`A004525(A322111(n)+A321229(n))`
-/

namespace A304914.P6725960594068802889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A322111 n + A321229 n).toNat

end

end A304914.P6725960594068802889

/-! ## A304914.P12839289071802213759

`A004526(A322111(n)+A321229(n))`
-/

namespace A304914.P12839289071802213759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A322111 n + A321229 n).toNat

end

end A304914.P12839289071802213759

/-! ## A304914.P607723483906335449

`A110654(A322111(n)+A321229(n))`
-/

namespace A304914.P607723483906335449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A322111 n + A321229 n).toNat

end

end A304914.P607723483906335449

/-! ## A304914.P12156206391898561444

`A123108(A322111(n)+A321229(n))`
-/

namespace A304914.P12156206391898561444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A322111 n + A321229 n).toNat

end

end A304914.P12156206391898561444

/-!
# A304916: Numbers k such that the number of divisors of the k-th central binomial coefficient is a power of 2.

The programs for A304916, there is no canonical definition to state claims against.
-/

/-! ## A304916.P16996801503215063943

`eq[1, A213595(round(acot(n)+n))]`
-/

namespace A304916.P16996801503215063943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213595 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304916.P16996801503215063943

/-! ## A304916.P14984297916750293225

`eq[1, A056646(A004277(n))]`
-/

namespace A304916.P14984297916750293225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056646 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304916.P14984297916750293225

/-! ## A304916.P13255327615349811745

`eq[1, A213595(A028310(n))]`
-/

namespace A304916.P13255327615349811745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213595 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304916.P13255327615349811745

/-! ## A304916.P15242385213138677027

`eq[1, A056646(A316571(n+1))]`
-/

namespace A304916.P15242385213138677027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056646 (A316571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304916.P15242385213138677027

/-! ## A304916.P12975409323835961108

`eq[1, A213595(A233583(n+1))]`
-/

namespace A304916.P12975409323835961108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213595 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304916.P12975409323835961108

/-!
# A304917: a(n) = prime(n)^n - primorial(n - 1).

The programs for A304917, there is no canonical definition to state claims against.
-/

/-! ## A304917.P17979454716105343834

`A062457(n+1)-A002110(n)`
-/

namespace A304917.P17979454716105343834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) - A002110 n

end

end A304917.P17979454716105343834

/-! ## A304917.P16669534046018181462

`A000040(n+1)^(n+1)-∏[eq[n, ∏{d}[n, #]]]`
-/

namespace A304917.P16669534046018181462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ (n + 1) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A304917.P16669534046018181462

/-! ## A304917.P1489734378883960714

`eq[3, ∏{e}[n, 3*#]]^(n+1)-record[A108951(n+1)]`
-/

namespace A304917.P1489734378883960714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 3 * Nat.factorization (f3 n) p

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ (n + 1) : ℤ) - f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

end

end A304917.P1489734378883960714

/-! ## A304917.P16647749586774872450

`A307539(n+1)-A002110(n)`
-/

namespace A304917.P16647749586774872450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307539 (n + 1) - A002110 n

end

end A304917.P16647749586774872450

/-! ## A304917.P7291778614606999377

`A000040(n+1)^(n+1)-A002110(n)`
-/

namespace A304917.P7291778614606999377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ (n + 1) - A002110 n

end

end A304917.P7291778614606999377

/-!
# A304918: Number of labeled antichain hyperforests spanning a subset of {1,...,n}.

The programs for A304918, there is no canonical definition to state claims against.
-/

/-! ## A304918.P9285831413746619017

`A185075(∏[∑[A110091(n)]])`
-/

namespace A304918.P9285831413746619017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185075 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304918.P9285831413746619017

/-! ## A304918.P15537398021209599392

`A185075(∏[∑[A185091(n+2)]])`
-/

namespace A304918.P15537398021209599392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185091 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185075 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304918.P15537398021209599392

/-!
# A304919: Number of labeled hyperforests spanning {1,...,n} and allowing singleton edges.

The programs for A304919, there is no canonical definition to state claims against.
-/

/-! ## A304919.P13814362946312997250

`A366631((2*n)^n)`
-/

namespace A304919.P13814362946312997250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366631 ((2 * n) ^ n)

end

end A304919.P13814362946312997250

/-!
# A304920: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304920, there is no canonical definition to state claims against.
-/

/-! ## A304920.P5696586323880483232

`A304926(∑[4*n]+1)`
-/

namespace A304920.P5696586323880483232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304920.P5696586323880483232

/-! ## A304920.P11583808682371601456

`record[A003982(n)*A304926(n+1)]`
-/

namespace A304920.P11583808682371601456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304920.P11583808682371601456

/-! ## A304920.P12349337699589055180

`record[gcd(A204016(n+1), A304926(n+1))]`
-/

namespace A304920.P12349337699589055180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A304926 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304920.P12349337699589055180

/-! ## A304920.P6541486100855981156

`or(A000007(n), A304926(A001844(n)))`
-/

namespace A304920.P6541486100855981156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A304926 (A001844 n).toNat)

end

end A304920.P6541486100855981156

/-! ## A304920.P2153787370318229371

`A056059(n+1)*A304926(A001844(n))`
-/

namespace A304920.P2153787370318229371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (n + 1) * A304926 (A001844 n).toNat

end

end A304920.P2153787370318229371

/-!
# A304921: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304921, there is no canonical definition to state claims against.
-/

/-! ## A304921.P1690576794103600771

`A304926(∑[n+2]+4)`
-/

namespace A304921.P1690576794103600771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304921.P1690576794103600771

/-! ## A304921.P12025453248966586508

`A304926(A167614(n+1))%A002023(n)`
-/

namespace A304921.P12025453248966586508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304926 (A167614 (n + 1)).toNat) (A002023 n)

end

end A304921.P12025453248966586508

/-! ## A304921.P7931427563240970090

`lcm(A033999(n), A304926(A167614(n+1)))`
-/

namespace A304921.P7931427563240970090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A304926 (A167614 (n + 1)).toNat)

end

end A304921.P7931427563240970090

/-! ## A304921.P2237118578495402630

`A033999(2*n)*A304926(A167614(n+1))`
-/

namespace A304921.P2237118578495402630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A304926 (A167614 (n + 1)).toNat

end

end A304921.P2237118578495402630

/-! ## A304921.P9580636077781575806

`or(A070109(n+1), A304926(A167614(n+1)))`
-/

namespace A304921.P9580636077781575806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070109 (n + 1)) (A304926 (A167614 (n + 1)).toNat)

end

end A304921.P9580636077781575806

/-!
# A304922: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304922, there is no canonical definition to state claims against.
-/

/-! ## A304922.P6240088720707291813

`A304926(∑[n+3]+7)`
-/

namespace A304922.P6240088720707291813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304922.P6240088720707291813

/-! ## A304922.P17786518851060643747

`A304926(A052905(n)+9)%A054413(n+2)`
-/

namespace A304922.P17786518851060643747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304926 (A052905 n + 9).toNat) (A054413 (n + 2))

end

end A304922.P17786518851060643747

/-! ## A304922.P9342638875360787614

`A005171(2*(n+2))*A304926(A052905(n)+9)`
-/

namespace A304922.P9342638875360787614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 2)) * A304926 (A052905 n + 9).toNat

end

end A304922.P9342638875360787614

/-!
# A304923: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304923, there is no canonical definition to state claims against.
-/

/-! ## A304923.P11030457934020872760

`A304926(A167499(n+3))`
-/

namespace A304923.P11030457934020872760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A167499 (n + 3)).toNat

end

end A304923.P11030457934020872760

/-! ## A304923.P9161530605983902383

`A304926(A155212(n)+13)`
-/

namespace A304923.P9161530605983902383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A155212 n + 13).toNat

end

end A304923.P9161530605983902383

/-! ## A304923.P12422676041012765824

`A304926(A167614(n+3)+2)`
-/

namespace A304923.P12422676041012765824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A167614 (n + 3) + 2).toNat

end

end A304923.P12422676041012765824

/-! ## A304923.P8471012945736791248

`A304926(A167487(n+3)-2)`
-/

namespace A304923.P8471012945736791248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A167487 (n + 3) - 2).toNat

end

end A304923.P8471012945736791248

/-! ## A304923.P10992511515497172783

`A304926(A000217(n+4)+5)`
-/

namespace A304923.P10992511515497172783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A000217 (n + 4) + 5).toNat

end

end A304923.P10992511515497172783

/-!
# A304924: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304924, there is no canonical definition to state claims against.
-/

/-! ## A304924.P5206398816336987581

`A304926(A167487(n+4)-1)`
-/

namespace A304924.P5206398816336987581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A167487 (n + 4) - 1).toNat

end

end A304924.P5206398816336987581

/-! ## A304924.P12000507232263332365

`A304926(A133263(n+5)+4)`
-/

namespace A304924.P12000507232263332365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A133263 (n + 5) + 4).toNat

end

end A304924.P12000507232263332365

/-! ## A304924.P3648146539333462429

`A304926(A238531(n+6)+4)`
-/

namespace A304924.P3648146539333462429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A238531 (n + 6) + 4).toNat

end

end A304924.P3648146539333462429

/-! ## A304924.P6418657617711937558

`A304926(A000217(n+5)+6)`
-/

namespace A304924.P6418657617711937558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A000217 (n + 5) + 6).toNat

end

end A304924.P6418657617711937558

/-! ## A304924.P16578387191635284249

`A304926(Δ[A023545(n+1)]+10)`
-/

namespace A304924.P16578387191635284249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (f1 (n + 1) - f1 n + 10).toNat

end

end A304924.P16578387191635284249

/-!
# A304925: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304925, there is no canonical definition to state claims against.
-/

/-! ## A304925.P4929825990305257135

`A304926(A167487(n+5))`
-/

namespace A304925.P4929825990305257135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A167487 (n + 5)).toNat

end

end A304925.P4929825990305257135

/-! ## A304925.P13155992895795859208

`A304926(A167499(n+5)+2)`
-/

namespace A304925.P13155992895795859208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A167499 (n + 5) + 2).toNat

end

end A304925.P13155992895795859208

/-! ## A304925.P2890394895760479687

`A304926(A000217(n+6)+7)`
-/

namespace A304925.P2890394895760479687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A000217 (n + 6) + 7).toNat

end

end A304925.P2890394895760479687

/-! ## A304925.P13370868547206783855

`A304926(A005408(n+8)+A000124(n+4))`
-/

namespace A304925.P13370868547206783855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A304925.P13370868547206783855

/-! ## A304925.P15055058776291109312

`A304926(A374008(n+1))`
-/

namespace A304925.P15055058776291109312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (A374008 (n + 1)).toNat

end

end A304925.P15055058776291109312

/-!
# A304926: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304926, there is no canonical definition to state claims against.
-/

/-! ## A304926.P2708040397654325389

`or(A316420(n+1), A321936(A174545(n)))`
-/

namespace A304926.P2708040397654325389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316420 (n + 1)) (A321936 (A174545 n).toNat)

end

end A304926.P2708040397654325389

/-! ## A304926.P5088820757382141584

`A306166(n+1)-A082858(A059441(n+1))`
-/

namespace A304926.P5088820757382141584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (n + 1) - A082858 (A059441 (n + 1)).toNat

end

end A304926.P5088820757382141584

/-! ## A304926.P17262821281032109554

`A321936(A174545(n)+2)+A316420(n+1)`
-/

namespace A304926.P17262821281032109554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A174545 n + 2).toNat + A316420 (n + 1)

end

end A304926.P17262821281032109554

/-! ## A304926.P2083087928399969496

`A306166(n+1)-A289618(A317525(n+1))`
-/

namespace A304926.P2083087928399969496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (n + 1) - A289618 (A317525 (n + 1)).toNat

end

end A304926.P2083087928399969496

/-! ## A304926.P1863721104019481019

`A316420(n+1)+A321936(A001263(n+1))²`
-/

namespace A304926.P1863721104019481019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (n + 1) + A321936 (A001263 (n + 1)).toNat ^ 2

end

end A304926.P1863721104019481019

/-!
# A304927: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304927, there is no canonical definition to state claims against.
-/

/-! ## A304927.P18440644137945099827

`A304931(∑[4*n]+1)`
-/

namespace A304927.P18440644137945099827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304927.P18440644137945099827

/-! ## A304927.P3261186148099961549

`record[A304931(Δ[A235355(n)])]`
-/

namespace A304927.P3261186148099961549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304927.P3261186148099961549

/-! ## A304927.P1710191989621211136

`record[A304931(A330613(n+1))]`
-/

namespace A304927.P1710191989621211136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304927.P1710191989621211136

/-! ## A304927.P2348857435491467864

`or(char[1], A304931(A001844(n)))`
-/

namespace A304927.P2348857435491467864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304931 (A001844 n).toNat)

end

end A304927.P2348857435491467864

/-! ## A304927.P13586922371995895854

`record[A003982(n)*A304931(n+1)]`
-/

namespace A304927.P13586922371995895854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304927.P13586922371995895854

/-!
# A304928: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304928, there is no canonical definition to state claims against.
-/

/-! ## A304928.P2924902232575485619

`A304931(A155212(n)+13)`
-/

namespace A304928.P2924902232575485619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A155212 n + 13).toNat

end

end A304928.P2924902232575485619

/-! ## A304928.P4069741933848911938

`A304931(A056000(n)+15)`
-/

namespace A304928.P4069741933848911938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A056000 n + 15).toNat

end

end A304928.P4069741933848911938

/-! ## A304928.P5964705716590538957

`A304931(∑[A020705(n)]+11)`
-/

namespace A304928.P5964705716590538957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A304928.P5964705716590538957

/-! ## A304928.P6708346326548853462

`A304931(A167487(n+3)-2)`
-/

namespace A304928.P6708346326548853462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A167487 (n + 3) - 2).toNat

end

end A304928.P6708346326548853462

/-! ## A304928.P9029241805871176561

`A304931(A000124(n+4)+4)`
-/

namespace A304928.P9029241805871176561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A000124 (n + 4) + 4).toNat

end

end A304928.P9029241805871176561

/-!
# A304929: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304929, there is no canonical definition to state claims against.
-/

/-! ## A304929.P7556174428215954578

`A304931(A056115(n)+21)`
-/

namespace A304929.P7556174428215954578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A056115 n + 21).toNat

end

end A304929.P7556174428215954578

/-! ## A304929.P14500840877082752095

`A304931(A167499(n+4)+1)`
-/

namespace A304929.P14500840877082752095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A167499 (n + 4) + 1).toNat

end

end A304929.P14500840877082752095

/-! ## A304929.P3313905692728517690

`A304931(A167614(n+4)+3)`
-/

namespace A304929.P3313905692728517690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A167614 (n + 4) + 3).toNat

end

end A304929.P3313905692728517690

/-! ## A304929.P17530174059470635308

`A304931(A000124(n+5)+5)`
-/

namespace A304929.P17530174059470635308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A000124 (n + 5) + 5).toNat

end

end A304929.P17530174059470635308

/-! ## A304929.P5560747057375918631

`A304931(A000096(n+4)+7)`
-/

namespace A304929.P5560747057375918631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A000096 (n + 4) + 7).toNat

end

end A304929.P5560747057375918631

/-!
# A304930: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304930, there is no canonical definition to state claims against.
-/

/-! ## A304930.P3234548894002870035

`A304931(A167487(n+5))`
-/

namespace A304930.P3234548894002870035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A167487 (n + 5)).toNat

end

end A304930.P3234548894002870035

/-! ## A304930.P7576990807469931651

`A304931(A056119(n)+28)`
-/

namespace A304930.P7576990807469931651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A056119 n + 28).toNat

end

end A304930.P7576990807469931651

/-! ## A304930.P7640374451555993084

`A304931(A167499(n+5)+2)`
-/

namespace A304930.P7640374451555993084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A167499 (n + 5) + 2).toNat

end

end A304930.P7640374451555993084

/-! ## A304930.P2326917584017029996

`A304931(A133263(n+6)+5)`
-/

namespace A304930.P2326917584017029996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A133263 (n + 6) + 5).toNat

end

end A304930.P2326917584017029996

/-! ## A304930.P15909541788322762474

`A304931(A000124(n+6)+6)`
-/

namespace A304930.P15909541788322762474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304931 (A000124 (n + 6) + 6).toNat

end

end A304930.P15909541788322762474

/-!
# A304932: The number of flat-foldable single vertex crease patterns with unit angle Pi/n.

The programs for A304932, there is no canonical definition to state claims against.
-/

/-! ## A304932.P12477868015656130458

`∏{p}[A107668(n), A003059(#)]`
-/

namespace A304932.P12477868015656130458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003059 p

end

end A304932.P12477868015656130458

/-! ## A304932.P4996707887946627842

`∑[A093848(A001462(n^n))]`
-/

namespace A304932.P4996707887946627842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093848 (A001462 (n ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304932.P4996707887946627842

/-!
# A304933: a(0) = 0, a(1) = 1 and a(n) = 2*a(n-1)/(n-1) + 16*a(n-2) for n > 1.

The programs for A304933, the canonical program `A304933.P10012701353818066935` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304933 has offset 0).

The definition of A304933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304933.P10012701353818066935

`2*a(n-1)/(n-1)+16*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304933

/-- `2*a(n-1)/(n-1)+16*a(n-2)` -/
def P10012701353818066935.Spec : Prop :=
  ∀ n, P10012701353818066935.a n = (A304933 n : ℚ)

end A304933

/-! ## A304933.P8942644931966306133

`n*A303537(n)/2`
-/

namespace A304933.P8942644931966306133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A303537 n : ℚ) / 2

end

end A304933.P8942644931966306133

namespace A304933

/-- `n*A303537(n)/2` -/
def P8942644931966306133.Spec : Prop :=
  ∀ n, P8942644931966306133.a n = (A304933 n : ℚ)

end A304933

/-! ## A304933.P1814621825688996494

`n*A305608(n)`
-/

namespace A304933.P1814621825688996494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305608 n

end

end A304933.P1814621825688996494

namespace A304933

/-- `n*A305608(n)` -/
def P1814621825688996494.Spec : Prop :=
  ∀ n, P1814621825688996494.a n = A304933 n

end A304933

/-! ## A304933.P3694959186839360220

`n*A014682(A303537(n))`
-/

namespace A304933.P3694959186839360220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014682 (A303537 n).toNat

end

end A304933.P3694959186839360220

namespace A304933

/-- `n*A014682(A303537(n))` -/
def P3694959186839360220.Spec : Prop :=
  ∀ n, P3694959186839360220.a n = A304933 n

end A304933

/-! ## A304933.P5165249174609364939

`A302042(A303537(n))*A334967(n+1)`
-/

namespace A304933.P5165249174609364939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A303537 n).toNat * A334967 (n + 1)

end

end A304933.P5165249174609364939

namespace A304933

/-- `A302042(A303537(n))*A334967(n+1)` -/
def P5165249174609364939.Spec : Prop :=
  ∀ n, P5165249174609364939.a n = A304933 n

end A304933

/-!
# A304934: a(0) = 0, a(1) = 1 and a(n) = 2*a(n-1)/(n-1) + 64*a(n-2) for n > 1.

The programs for A304934, the canonical program `A304934.P8390582848727221084` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304934 has offset 0).

The definition of A304934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304934.P8390582848727221084

`2*a(n-1)/(n-1)+64*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304934

/-- `2*a(n-1)/(n-1)+64*a(n-2)` -/
def P8390582848727221084.Spec : Prop :=
  ∀ n, P8390582848727221084.a n = (A304934 n : ℚ)

end A304934

/-! ## A304934.P3764026601339661236

`n*A303538(n)/2`
-/

namespace A304934.P3764026601339661236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A303538 n : ℚ) / 2

end

end A304934.P3764026601339661236

namespace A304934

/-- `n*A303538(n)/2` -/
def P3764026601339661236.Spec : Prop :=
  ∀ n, P3764026601339661236.a n = (A304934 n : ℚ)

end A304934

/-! ## A304934.P13667264224245722525

`n*A305609(n)`
-/

namespace A304934.P13667264224245722525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305609 n

end

end A304934.P13667264224245722525

namespace A304934

/-- `n*A305609(n)` -/
def P13667264224245722525.Spec : Prop :=
  ∀ n, P13667264224245722525.a n = A304934 n

end A304934

/-! ## A304934.P236291013480523800

`n*A014682(A303538(n))`
-/

namespace A304934.P236291013480523800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014682 (A303538 n).toNat

end

end A304934.P236291013480523800

namespace A304934

/-- `n*A014682(A303538(n))` -/
def P236291013480523800.Spec : Prop :=
  ∀ n, P236291013480523800.a n = A304934 n

end A304934

/-!
# A304936: a(n) = [x^n] 1/(1 - n*x/(1 - x - n*x/(1 - x - n*x/(1 - x - n*x/(1 - x - n*x/(1 - ...)))))), a continued fraction.

The programs for A304936, there is no canonical definition to state claims against.
-/

/-! ## A304936.P10613111700685583685

`A292798(n)/ratio[A028310(n)]`
-/

namespace A304936.P10613111700685583685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292798 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A304936.P10613111700685583685

/-! ## A304936.P12945026316315294980

`A107702(∑[4*n])/ratio[A028310(n)]`
-/

namespace A304936.P12945026316315294980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107702 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A304936.P12945026316315294980

/-!
# A304937: Number of unlabeled nonempty hypertrees with up to n vertices and no singleton edges.

The programs for A304937, there is no canonical definition to state claims against.
-/

/-! ## A304937.P10112395611964946636

`a(n-1)+A035053(n)` with `a(0)=1, a(1)=0`
-/

namespace A304937.P10112395611964946636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + A035053 n

end

end A304937.P10112395611964946636

/-! ## A304937.P16804470261380275861

`abs(2-∑[A035053(n)])`
-/

namespace A304937.P16804470261380275861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A304937.P16804470261380275861

/-! ## A304937.P11385343406447960984

`A304970(n)+A057428(n)`
-/

namespace A304937.P11385343406447960984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n + A057428 n

end

end A304937.P11385343406447960984

/-! ## A304937.P3662897416029510646

`A304970(n)-A057427(n)`
-/

namespace A304937.P3662897416029510646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A057427 n

end

end A304937.P3662897416029510646

/-! ## A304937.P854841818262733854

`A304970(n)-char[A065648(n)]`
-/

namespace A304937.P854841818262733854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304937.P854841818262733854

/-! ## A304937.P9333765474010964531

`∑[A035053(n)]-2*A057427(n)`
-/

namespace A304937.P9333765474010964531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A057427 n

end

end A304937.P9333765474010964531

/-! ## A304937.P16595525883167485243

`A304970(n)-char[A032742(n+1)]`
-/

namespace A304937.P16595525883167485243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304937.P16595525883167485243

/-! ## A304937.P7509818552581746713

`A304970(n)-char[A233280(n+1)]`
-/

namespace A304937.P7509818552581746713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304937.P7509818552581746713

/-! ## A304937.P11569108812343716391

`A304970(n)-char[A304971(n+1)]`
-/

namespace A304937.P11569108812343716391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304971 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304937.P11569108812343716391

/-! ## A304937.P2539186212355871126

`A304970(n)-char[A336315(n+1)]`
-/

namespace A304937.P2539186212355871126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304937.P2539186212355871126

/-! ## A304937.P10601582095364920820

`A304970(n)-A001045(∑[2*n]%(n+2))`
-/

namespace A304937.P10601582095364920820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A001045 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2))

end

end A304937.P10601582095364920820

/-! ## A304937.P5582664966975472050

`A304970(n)-A057979(A001316(n))`
-/

namespace A304937.P5582664966975472050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A057979 (A001316 n).toNat

end

end A304937.P5582664966975472050

/-! ## A304937.P15105574955350716050

`A304970(n)-A057979(A008574(n))`
-/

namespace A304937.P15105574955350716050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A057979 (A008574 n).toNat

end

end A304937.P15105574955350716050

/-! ## A304937.P17651843799745651636

`A304970(n)-A256263(A053644(n))`
-/

namespace A304937.P17651843799745651636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A256263 (A053644 n).toNat

end

end A304937.P17651843799745651636

/-! ## A304937.P6576370857328039797

`A304970(n)-A178334(A178334(n))`
-/

namespace A304937.P6576370857328039797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A178334 (A178334 n).toNat

end

end A304937.P6576370857328039797

/-! ## A304937.P12825920596152450636

`A304970(n)-A000035(p?[A233280(n)])`
-/

namespace A304937.P12825920596152450636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A304937.P12825920596152450636

/-! ## A304937.P1158654936978699442

`A304970(n)-A010051(A008578(n+1))`
-/

namespace A304937.P1158654936978699442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A010051 (A008578 (n + 1)).toNat

end

end A304937.P1158654936978699442

/-! ## A304937.P11523290792352512062

`A304970(n)-A001222(A261046(A001222(n+1)))`
-/

namespace A304937.P11523290792352512062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n - A001222 (A261046 (A001222 (n + 1)).toNat).toNat

end

end A304937.P11523290792352512062

/-!
# A304938: a(n) is the smallest number which can be written in n different ways as an ordered product of prime factors.

The programs for A304938, there is no canonical definition to state claims against.
-/

/-! ## A304938.P2906040316620876515

`A007283(n)%A131817(A348925(n+1))`
-/

namespace A304938.P2906040316620876515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007283 n) (A131817 (A348925 (n + 1)).toNat)

end

end A304938.P2906040316620876515

/-! ## A304938.P10687058097982671444

`A333492(n+1)%A246905(n+5)*A048691(A048691(n+1))`
-/

namespace A304938.P10687058097982671444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333492 (n + 1)) (A246905 (n + 5)) * A048691 (A048691 (n + 1)).toNat

end

end A304938.P10687058097982671444

/-! ## A304938.P4897120147054039080

`A000079(n)%A114538(3*n+2)*A048691(A048691(n+1))`
-/

namespace A304938.P4897120147054039080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A114538 (3 * n + 2)) * A048691 (A048691 (n + 1)).toNat

end

end A304938.P4897120147054039080

/-! ## A304938.P15315335728464496453

`(2^n)%A082494(A260443(2*n+3))*A048691(A048691(n+1))`
-/

namespace A304938.P15315335728464496453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A082494 (A260443 (2 * n + 3)).toNat) * A048691 (A048691 (n + 1)).toNat

end

end A304938.P15315335728464496453

/-!
# A304939: Number of labeled nonempty hypertrees (connected antichains with no cycles) spanning some subset of {1,...,n} without singleton edges.

The programs for A304939, there is no canonical definition to state claims against.
-/

/-! ## A304939.P13102144840344329052

`A305004(n)-char[A028920(n)]`
-/

namespace A304939.P13102144840344329052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305004 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304939.P13102144840344329052

/-! ## A304939.P12017648864087592443

`A305004(n)-char[A065648(n)]`
-/

namespace A304939.P12017648864087592443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305004 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304939.P12017648864087592443

/-! ## A304939.P13939690721777930942

`A305004(n)-char[A134478(n)]`
-/

namespace A304939.P13939690721777930942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305004 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304939.P13939690721777930942

/-! ## A304939.P15090135980681832574

`A305004(n)-char[A193739(n)]`
-/

namespace A304939.P15090135980681832574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305004 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304939.P15090135980681832574

/-! ## A304939.P11601701130146328965

`A305004(n)-char[A028242(n)+1]`
-/

namespace A304939.P11601701130146328965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305004 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304939.P11601701130146328965

/-! ## A304939.P10612352909576270081

`A305004(n)-char[A304971(n+1)]`
-/

namespace A304939.P10612352909576270081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304971 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305004 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304939.P10612352909576270081

/-! ## A304939.P12313098619697897426

`A305004(n)-A267043(2*(n+1))`
-/

namespace A304939.P12313098619697897426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305004 n - A267043 (2 * (n + 1))

end

end A304939.P12313098619697897426

/-! ## A304939.P12309107872847797503

`A305004(n)-A008683(2*A000040(n+1))`
-/

namespace A304939.P12309107872847797503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305004 n - A008683 (2 * A000040 (n + 1)).toNat

end

end A304939.P12309107872847797503

/-!
# A304940: Expansion of ((1 + 4*x)/(1 - 4*x))^(1/2).

The programs for A304940, the canonical program `A304940.P12506467866958843373` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304940 has offset 0).

The definition of A304940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304940.P12506467866958843373

`2^n*A063886(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304940

/-- `2^n*A063886(n)` -/
def P12506467866958843373.Spec : Prop :=
  ∀ n, P12506467866958843373.a n = A304940 n

theorem P12506467866958843373.correct : P12506467866958843373.Spec := by
  intro n
  simp only [A304940]

end A304940

/-! ## A304940.P562433553904050048

`2*(n-1)*a(n-1)/floor(n/2)` with `a(0)=1, a(1)=4`
-/

namespace A304940.P562433553904050048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (((n : ℤ) - 1 : ℚ) * (a (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ)))

end

end A304940.P562433553904050048

namespace A304940

/-- `2*(n-1)*a(n-1)/floor(n/2)` -/
def P562433553904050048.Spec : Prop :=
  ∀ n, P562433553904050048.a n = (A304940 n : ℚ)

end A304940

/-! ## A304940.P15962466161585626060

`2^(n-1)*A047073(n+1)`
-/

namespace A304940.P15962466161585626060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A047073 (n + 1) : ℚ)

end

end A304940.P15962466161585626060

namespace A304940

/-- `2^(n-1)*A047073(n+1)` -/
def P15962466161585626060.Spec : Prop :=
  ∀ n, P15962466161585626060.a n = (A304940 n : ℚ)

end A304940

/-! ## A304940.P9049712392153159131

`A056450(n)*A128014(n)`
-/

namespace A304940.P9049712392153159131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A128014 n

end

end A304940.P9049712392153159131

namespace A304940

/-- `A056450(n)*A128014(n)` -/
def P9049712392153159131.Spec : Prop :=
  ∀ n, P9049712392153159131.a n = A304940 n

end A304940

/-! ## A304940.P9569656888671953216

`A000034(n)*A249308(n)`
-/

namespace A304940.P9569656888671953216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A249308 n

end

end A304940.P9569656888671953216

namespace A304940

/-- `A000034(n)*A249308(n)` -/
def P9569656888671953216.Spec : Prop :=
  ∀ n, P9569656888671953216.a n = A304940 n

end A304940

/-! ## A304940.P10155782598673782230

`A128057(n)*A141125(n)`
-/

namespace A304940.P10155782598673782230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128057 n * A141125 n

end

end A304940.P10155782598673782230

namespace A304940

/-- `A128057(n)*A141125(n)` -/
def P10155782598673782230.Spec : Prop :=
  ∀ n, P10155782598673782230.a n = A304940 n

end A304940

/-! ## A304940.P11433577918975345628

`lcm(A063886(n), A129195(n))`
-/

namespace A304940.P11433577918975345628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063886 n) (A129195 n)

end

end A304940.P11433577918975345628

namespace A304940

/-- `lcm(A063886(n), A129195(n))` -/
def P11433577918975345628.Spec : Prop :=
  ∀ n, (P11433577918975345628.a n : ℤ) = A304940 n

end A304940

/-! ## A304940.P17996133921871584767

`(A000035(n)+1)*A249308(n)`
-/

namespace A304940.P17996133921871584767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A249308 n

end

end A304940.P17996133921871584767

namespace A304940

/-- `(A000035(n)+1)*A249308(n)` -/
def P17996133921871584767.Spec : Prop :=
  ∀ n, P17996133921871584767.a n = A304940 n

end A304940

/-! ## A304940.P15228284695481811155

`A040001(n+1)*A249308(n)`
-/

namespace A304940.P15228284695481811155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A249308 n

end

end A304940.P15228284695481811155

namespace A304940

/-- `A040001(n+1)*A249308(n)` -/
def P15228284695481811155.Spec : Prop :=
  ∀ n, P15228284695481811155.a n = A304940 n

end A304940

/-! ## A304940.P9792203934717293953

`A128014(n)*A213173(n+1)`
-/

namespace A304940.P9792203934717293953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 n * A213173 (n + 1)

end

end A304940.P9792203934717293953

namespace A304940

/-- `A128014(n)*A213173(n+1)` -/
def P9792203934717293953.Spec : Prop :=
  ∀ n, P9792203934717293953.a n = A304940 n

end A304940

/-! ## A304940.P11143352475358860337

`A151821(n+1)*A210736(n)`
-/

namespace A304940.P11143352475358860337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) * A210736 n

end

end A304940.P11143352475358860337

namespace A304940

/-- `A151821(n+1)*A210736(n)` -/
def P11143352475358860337.Spec : Prop :=
  ∀ n, P11143352475358860337.a n = A304940 n

end A304940

/-! ## A304940.P18132334998284732725

`A056450(n)*A126869(A052928(n))`
-/

namespace A304940.P18132334998284732725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A126869 (A052928 n).toNat

end

end A304940.P18132334998284732725

namespace A304940

/-- `A056450(n)*A126869(A052928(n))` -/
def P18132334998284732725.Spec : Prop :=
  ∀ n, P18132334998284732725.a n = A304940 n

end A304940

/-! ## A304940.P17438414867708249318

`A126869(A052928(n))*A213173(n+1)`
-/

namespace A304940.P17438414867708249318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A052928 n).toNat * A213173 (n + 1)

end

end A304940.P17438414867708249318

namespace A304940

/-- `A126869(A052928(n))*A213173(n+1)` -/
def P17438414867708249318.Spec : Prop :=
  ∀ n, P17438414867708249318.a n = A304940 n

end A304940

/-! ## A304940.P1285782038401907890

`(A000079(n)-A307768(n))*A000079(n)`
-/

namespace A304940.P1285782038401907890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A307768 n) * A000079 n

end

end A304940.P1285782038401907890

namespace A304940

/-- `(A000079(n)-A307768(n))*A000079(n)` -/
def P1285782038401907890.Spec : Prop :=
  ∀ n, P1285782038401907890.a n = A304940 n

theorem P1285782038401907890.correct : P1285782038401907890.Spec := by
  intro n
  simp only [A304940, Nat.add_sub_cancel, A304940.P1285782038401907890.a, A304940.P12506467866958843373.a, A000079, A000079.P10855139691139572931.a, A063886, A063886.P2008880257839641201.a, A307768, A307768.P13717369919277474039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304940

/-! ## A304940.P13855991457347103174

`A060899(n+1)/A241530(n+1)*A241530(n)`
-/

namespace A304940.P13855991457347103174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060899 (n + 1) : ℚ) / (A241530 (n + 1) : ℚ) * (A241530 n : ℚ)

end

end A304940.P13855991457347103174

namespace A304940

/-- `A060899(n+1)/A241530(n+1)*A241530(n)` -/
def P13855991457347103174.Spec : Prop :=
  ∀ n, P13855991457347103174.a n = (A304940 n : ℚ)

end A304940

/-! ## A304940.P5531910504827918278

`A000079(n)²*A047073(n+1)/A000079(n+1)`
-/

namespace A304940.P5531910504827918278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 * A047073 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A304940.P5531910504827918278

namespace A304940

/-- `A000079(n)²*A047073(n+1)/A000079(n+1)` -/
def P5531910504827918278.Spec : Prop :=
  ∀ n, P5531910504827918278.a n = (A304940 n : ℚ)

end A304940

/-! ## A304940.P9753512668216512662

`A000079(2*n)*A047073(n+1)/A000079(n+1)`
-/

namespace A304940.P9753512668216512662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) * A047073 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A304940.P9753512668216512662

namespace A304940

/-- `A000079(2*n)*A047073(n+1)/A000079(n+1)` -/
def P9753512668216512662.Spec : Prop :=
  ∀ n, P9753512668216512662.a n = (A304940 n : ℚ)

end A304940

/-!
# A304941: Expansion of ((1 + 4*x)/(1 - 4*x))^(3/4).

The programs for A304941, there is no canonical definition to state claims against.
-/

/-! ## A304941.P9529309979631055924

`2*A053792(n)-A303537(n)`
-/

namespace A304941.P9529309979631055924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053792 n - A303537 n

end

end A304941.P9529309979631055924

/-! ## A304941.P278168282350885105

`2*A053792(n)-A004277(A305608(n))`
-/

namespace A304941.P278168282350885105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053792 n - A004277 (A305608 n).toNat

end

end A304941.P278168282350885105

/-! ## A304941.P8691843037276228630

`A004277(A053792(n))-A303537(n)`
-/

namespace A304941.P8691843037276228630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A053792 n).toNat - A303537 n

end

end A304941.P8691843037276228630

/-! ## A304941.P1836443413685162444

`A004277(A053792(n))-A004277(A305608(n))`
-/

namespace A304941.P1836443413685162444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A053792 n).toNat - A004277 (A305608 n).toNat

end

end A304941.P1836443413685162444

/-!
# A304942: Triangle read by rows: T(n,k) is the number of nonisomorphic binary n X n matrices with k 1's per column under row and column permutations.

The programs for A304942, there is no canonical definition to state claims against.
-/

/-! ## A304942.P16014226117863724607

`A341537(A090011(n))`
-/

namespace A304942.P16014226117863724607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341537 (A090011 n).toNat

end

end A304942.P16014226117863724607

/-! ## A304942.P3967113385499342168

`A048197(A034364(n+2))`
-/

namespace A304942.P3967113385499342168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048197 (A034364 (n + 2)).toNat

end

end A304942.P3967113385499342168

/-! ## A304942.P12691132923786830801

`A001402(A007318(n)%A065327(n))`
-/

namespace A304942.P12691132923786830801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (Int.tmod (A007318 n) (A065327 n)).toNat

end

end A304942.P12691132923786830801

/-! ## A304942.P935583863632662052

`A001402(A076831(n)%A065327(n))`
-/

namespace A304942.P935583863632662052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (Int.tmod (A076831 n) (A065327 n)).toNat

end

end A304942.P935583863632662052

/-! ## A304942.P6377339440322851332

`A238659(A007318(n))%A238659(2*(n+2))`
-/

namespace A304942.P6377339440322851332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238659 (A007318 n).toNat) (A238659 (2 * (n + 2)))

end

end A304942.P6377339440322851332

/-!
# A304943: Number of ways to write n as the sum of a positive tribonacci number (A000073) and a positive odd squarefree number.

The programs for A304943, there is no canonical definition to state claims against.
-/

/-! ## A304943.P5572067283290808632

`∑{p}[A004273(n)-A038260(n), A001221(#)]`
-/

namespace A304943.P5572067283290808632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A038260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A304943.P5572067283290808632

/-! ## A304943.P13801096508641385711

`∑{p}[A004273(n)-A038260(n), A001222(#)]`
-/

namespace A304943.P13801096508641385711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A038260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A304943.P13801096508641385711

/-! ## A304943.P16171820759123815290

`∑{p}[A004273(n)-A038260(n), A069513(#)]`
-/

namespace A304943.P16171820759123815290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A038260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069513 p

end

end A304943.P16171820759123815290

/-! ## A304943.P16077258590237852573

`∑{p}[A004273(n)-A038260(n), A324392(#)]`
-/

namespace A304943.P16077258590237852573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A038260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A324392 p

end

end A304943.P16077258590237852573

/-! ## A304943.P9644734753214430560

`∑{p}[A004273(n)-A038260(n), A324393(#)]`
-/

namespace A304943.P9644734753214430560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A038260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A324393 p

end

end A304943.P9644734753214430560

/-!
# A304944: a(0) = 0, a(1) = 1 and a(n) = 6*a(n-1)/(n-1) + 16*a(n-2) for n > 1.

The programs for A304944, the canonical program `A304944.P4951587146779147697` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304944 has offset 0).

The definition of A304944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304944.P4951587146779147697

`6*a(n-1)/(n-1)+16*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304944

/-- `6*a(n-1)/(n-1)+16*a(n-2)` -/
def P4951587146779147697.Spec : Prop :=
  ∀ n, P4951587146779147697.a n = (A304944 n : ℚ)

end A304944

/-! ## A304944.P13337557943876159526

`n*A304941(n)/6`
-/

namespace A304944.P13337557943876159526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A304941 n : ℚ) / 6

end

end A304944.P13337557943876159526

namespace A304944

/-- `n*A304941(n)/6` -/
def P13337557943876159526.Spec : Prop :=
  ∀ n, P13337557943876159526.a n = (A304944 n : ℚ)

end A304944

/-!
# A304945: Number of nonnegative integers k such that n - k*L(k) is positive and squarefree, where L(k) denotes the k-th Lucas number A000032(k).

The programs for A304945, there is no canonical definition to state claims against.
-/

/-! ## A304945.P17812673979432231739

`A001221(A262429(n+1)+A243655(3*n+2))`
-/

namespace A304945.P17812673979432231739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A262429 (n + 1) + A243655 (3 * n + 2)).toNat

end

end A304945.P17812673979432231739

/-! ## A304945.P14404490152266257972

`A325522(A056507(n+1))`
-/

namespace A304945.P14404490152266257972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A056507 (n + 1)).toNat

end

end A304945.P14404490152266257972

/-! ## A304945.P12427921288833070555

`A277745(A294546(n)-A105700(n))`
-/

namespace A304945.P12427921288833070555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277745 (A294546 n - A105700 n).toNat

end

end A304945.P12427921288833070555

/-! ## A304945.P18253328637468340842

`gcd(A001221(A167311(n+1)), A311761(n))`
-/

namespace A304945.P18253328637468340842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A167311 (n + 1)).toNat) (A311761 n)

end

end A304945.P18253328637468340842

/-! ## A304945.P5009241713184261692

`A001221(A329165(n+1)+A117072(n+1))`
-/

namespace A304945.P5009241713184261692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A329165 (n + 1) + A117072 (n + 1)).toNat

end

end A304945.P5009241713184261692

/-!
# A304946: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304946, there is no canonical definition to state claims against.
-/

/-! ## A304946.P3245494663957982212

`A304952(∑[4*n]+1)`
-/

namespace A304946.P3245494663957982212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304946.P3245494663957982212

/-! ## A304946.P16862374727212181614

`∏{digits}[n, A304952(A001844(#))]`
-/

namespace A304946.P16862374727212181614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A304952 (A001844 x).toNat).prod

end

end A304946.P16862374727212181614

/-! ## A304946.P1684511829617839651

`record[A304952(A330613(n+1))]`
-/

namespace A304946.P1684511829617839651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304946.P1684511829617839651

/-! ## A304946.P11881825735089061078

`or(char[2], A304952(A001844(n)))`
-/

namespace A304946.P11881825735089061078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304952 (A001844 n).toNat)

end

end A304946.P11881825735089061078

/-! ## A304946.P10704316163613122953

`record[A003982(n)*A304952(n+1)]`
-/

namespace A304946.P10704316163613122953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304946.P10704316163613122953

/-!
# A304947: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304947, there is no canonical definition to state claims against.
-/

/-! ## A304947.P10334356408855576520

`A304952(∑[n+2]+4)`
-/

namespace A304947.P10334356408855576520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304947.P10334356408855576520

/-! ## A304947.P11941615363229919019

`A316620(∑[n+2]+4)`
-/

namespace A304947.P11941615363229919019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304947.P11941615363229919019

/-! ## A304947.P13349337937882519135

`and(-1, A304952(A167614(n+1)))`
-/

namespace A304947.P13349337937882519135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304952 (A167614 (n + 1)).toNat)

end

end A304947.P13349337937882519135

/-! ## A304947.P12907064944417311787

`record[A010054(n)*A304952(n+3)]`
-/

namespace A304947.P12907064944417311787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A304952 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304947.P12907064944417311787

/-! ## A304947.P309333129163254485

`record[gcd(A303913(n), A304952(n+1))]`
-/

namespace A304947.P309333129163254485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304952 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304947.P309333129163254485

/-!
# A304948: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304948, there is no canonical definition to state claims against.
-/

/-! ## A304948.P15003250006885756997

`A304952(∑[n+3]+7)`
-/

namespace A304948.P15003250006885756997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304948.P15003250006885756997

/-! ## A304948.P18053094877534270331

`A316620(∑[n+3]+7)`
-/

namespace A304948.P18053094877534270331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304948.P18053094877534270331

/-! ## A304948.P12381563684949915190

`A316620(A055999(n)+10)+char[21]`
-/

namespace A304948.P12381563684949915190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316620 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304948.P12381563684949915190

/-! ## A304948.P1815177316092895762

`record[gcd(A303913(n), A316620(n+2))]`
-/

namespace A304948.P1815177316092895762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A316620 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304948.P1815177316092895762

/-! ## A304948.P17298217384976205541

`A007318(C(n, 2))*A316620(A055999(n)+10)`
-/

namespace A304948.P17298217384976205541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A316620 (A055999 n + 10).toNat

end

end A304948.P17298217384976205541

/-!
# A304949: Number of n X 5 0..1 arrays with every element unequal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304949, there is no canonical definition to state claims against.
-/

/-! ## A304949.P1243335537787708074

`A304952(A374005(n+1))`
-/

namespace A304949.P1243335537787708074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A374005 (n + 1)).toNat

end

end A304949.P1243335537787708074

/-! ## A304949.P7267023452449542446

`A304952(A167499(n+3))`
-/

namespace A304949.P7267023452449542446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A167499 (n + 3)).toNat

end

end A304949.P7267023452449542446

/-! ## A304949.P16148632302788494643

`A304952(A155212(n)+13)`
-/

namespace A304949.P16148632302788494643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A155212 n + 13).toNat

end

end A304949.P16148632302788494643

/-! ## A304949.P6481568576242431123

`A304952(A056000(n)+15)`
-/

namespace A304949.P6481568576242431123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A056000 n + 15).toNat

end

end A304949.P6481568576242431123

/-! ## A304949.P1654859924396325565

`A304952(eq[7, A066657(n)])`
-/

namespace A304949.P1654859924396325565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304949.P1654859924396325565

/-!
# A304950: Number of n X 6 0..1 arrays with every element unequal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304950, there is no canonical definition to state claims against.
-/

/-! ## A304950.P14021314916773828698

`A304952(∑[n+5]+16)`
-/

namespace A304950.P14021314916773828698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304950.P14021314916773828698

/-! ## A304950.P16147459470791421451

`A304952(A000217(n+5)+6)+char[19]`
-/

namespace A304950.P16147459470791421451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304950.P16147459470791421451

/-! ## A304950.P17259167166305492963

`A304952(A167614(n+4)+3)%A102205(n+1)`
-/

namespace A304950.P17259167166305492963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304952 (A167614 (n + 4) + 3).toNat) (A102205 (n + 1))

end

end A304950.P17259167166305492963

/-! ## A304950.P14894362534042634614

`A304952(A000217(n+5)+6)%A000108(n+5)`
-/

namespace A304950.P14894362534042634614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304952 (A000217 (n + 5) + 6).toNat) (A000108 (n + 5))

end

end A304950.P14894362534042634614

/-! ## A304950.P11410687139737309930

`A007318(C(n, 2))*A304952(A000217(n+5)+6)`
-/

namespace A304950.P11410687139737309930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A304952 (A000217 (n + 5) + 6).toNat

end

end A304950.P11410687139737309930

/-!
# A304951: Number of n X 7 0..1 arrays with every element unequal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304951, there is no canonical definition to state claims against.
-/

/-! ## A304951.P5000969965476345159

`A304952(A374008(n+1))`
-/

namespace A304951.P5000969965476345159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A374008 (n + 1)).toNat

end

end A304951.P5000969965476345159

/-! ## A304951.P14987497119827889565

`A304952(A056119(n)+28)`
-/

namespace A304951.P14987497119827889565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A056119 n + 28).toNat

end

end A304951.P14987497119827889565

/-! ## A304951.P12500613379735672534

`A304952(eq[11, A066657(n)])`
-/

namespace A304951.P12500613379735672534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304951.P12500613379735672534

/-! ## A304951.P8111222811415915472

`A304952(A166136(n+5)+1)`
-/

namespace A304951.P8111222811415915472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A166136 (n + 5) + 1).toNat

end

end A304951.P8111222811415915472

/-! ## A304951.P2761612549191660138

`A304952(A167499(n+5)+2)`
-/

namespace A304951.P2761612549191660138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A167499 (n + 5) + 2).toNat

end

end A304951.P2761612549191660138

/-!
# A304952: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304952, there is no canonical definition to state claims against.
-/

/-! ## A304952.P13908477651976123336

`A242062(7*A316620(n+1))`
-/

namespace A304952.P13908477651976123336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (7 * A316620 (n + 1)).toNat

end

end A304952.P13908477651976123336

/-! ## A304952.P11305191497311108496

`A106609(8*A316620(n+1))`
-/

namespace A304952.P11305191497311108496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (8 * A316620 (n + 1)).toNat

end

end A304952.P11305191497311108496

/-! ## A304952.P17927097883790244702

`A110656(8*A316620(n+1))`
-/

namespace A304952.P17927097883790244702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (8 * A316620 (n + 1)).toNat

end

end A304952.P17927097883790244702

/-! ## A304952.P8412942940832949664

`A059995(10*A316620(n+1))`
-/

namespace A304952.P8412942940832949664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (10 * A316620 (n + 1)).toNat

end

end A304952.P8412942940832949664

/-! ## A304952.P2911510006257812199

`A076309(10*A316620(n+1))`
-/

namespace A304952.P2911510006257812199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (10 * A316620 (n + 1)).toNat

end

end A304952.P2911510006257812199

/-! ## A304952.P1744346592858388833

`A004526(8*A316620(n+1))/4`
-/

namespace A304952.P1744346592858388833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (8 * A316620 (n + 1)).toNat : ℚ) / 4

end

end A304952.P1744346592858388833

/-! ## A304952.P7649732409620162750

`A029578(8*A316620(n+1))/4`
-/

namespace A304952.P7649732409620162750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (8 * A316620 (n + 1)).toNat : ℚ) / 4

end

end A304952.P7649732409620162750

/-! ## A304952.P1837810680245912423

`A316620(n+1)^A007318(A085491(n))`
-/

namespace A304952.P1837810680245912423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316620 (n + 1) : ℚ) ^ (A007318 (A085491 n).toNat : ℤ)

end

end A304952.P1837810680245912423

/-! ## A304952.P8765011519054487876

`A316620(n+1)^A001221(A029930(n))`
-/

namespace A304952.P8765011519054487876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316620 (n + 1) : ℚ) ^ (A001221 (A029930 n).toNat : ℤ)

end

end A304952.P8765011519054487876

/-!
# A304953: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304953, there is no canonical definition to state claims against.
-/

/-! ## A304953.P663203220372722004

`A304959(∑[4*n]+1)`
-/

namespace A304953.P663203220372722004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304953.P663203220372722004

/-! ## A304953.P12205801119384453019

`lcm(4*floor(n/4)-2*floor(n/2)+1, A304959(n²+(n+1)²))`
-/

namespace A304953.P12205801119384453019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * ⌊(n : ℚ) / 4⌋ - 2 * ⌊(n : ℚ) / 2⌋ + 1) (A304959 (n ^ 2 + (n + 1) ^ 2))

end

end A304953.P12205801119384453019

/-! ## A304953.P1775263363291408149

`record[A304959(Δ[A235355(n)])]`
-/

namespace A304953.P1775263363291408149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304953.P1775263363291408149

/-! ## A304953.P15337918815761194102

`record[A304959(A330613(n+1))]`
-/

namespace A304953.P15337918815761194102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304953.P15337918815761194102

/-! ## A304953.P9609321397784025588

`A304959(A001844(n))+char[9]`
-/

namespace A304953.P9609321397784025588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304953.P9609321397784025588

/-!
# A304954: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304954, there is no canonical definition to state claims against.
-/

/-! ## A304954.P2361904896649059804

`A304959(∑[n+2]+4)`
-/

namespace A304954.P2361904896649059804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304954.P2361904896649059804

/-! ## A304954.P5203321014625808788

`record[A304959(A008795(n)+3)]`
-/

namespace A304954.P5203321014625808788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304954.P5203321014625808788

/-! ## A304954.P12299878643518411763

`A304959(A046691(n)+7)+char[22]`
-/

namespace A304954.P12299878643518411763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304954.P12299878643518411763

/-! ## A304954.P12535378389570753910

`A304959(A055998(n)+6)+char[27]`
-/

namespace A304954.P12535378389570753910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304954.P12535378389570753910

/-! ## A304954.P6106140117977824147

`record[gcd(A303913(n), A304959(n+1))]`
-/

namespace A304954.P6106140117977824147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304959 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304954.P6106140117977824147

/-!
# A304955: Number of n X 4 0..1 arrays with every element unequal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304955, there is no canonical definition to state claims against.
-/

/-! ## A304955.P2137000833893495216

`A304959(∑[n+3]+7)`
-/

namespace A304955.P2137000833893495216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304955.P2137000833893495216

/-! ## A304955.P9698392511877220305

`A304959(A141214(n)+7)+char[16]`
-/

namespace A304955.P9698392511877220305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304955.P9698392511877220305

/-! ## A304955.P17576168302131838600

`A007318(C(2, n))*A304959(A141214(n)+7)`
-/

namespace A304955.P17576168302131838600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304959 (A141214 n + 7).toNat

end

end A304955.P17576168302131838600

/-! ## A304955.P10463608878975534213

`A304959(A141214(n)+7)%A000108(n+12)`
-/

namespace A304955.P10463608878975534213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304959 (A141214 n + 7).toNat) (A000108 (n + 12))

end

end A304955.P10463608878975534213

/-! ## A304955.P12152096906148389037

`A014963(6*(n+1))*A304959(A141214(n)+7)`
-/

namespace A304955.P12152096906148389037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A304959 (A141214 n + 7).toNat

end

end A304955.P12152096906148389037

/-!
# A304956: Number of n X 5 0..1 arrays with every element unequal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304956, there is no canonical definition to state claims against.
-/

/-! ## A304956.P13559274416769389802

`A304959(∑[n+4]+11)`
-/

namespace A304956.P13559274416769389802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304956.P13559274416769389802

/-! ## A304956.P1010866805995547212

`A304959(A046691(n+3))%A249236(3*(n+1))`
-/

namespace A304956.P1010866805995547212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304959 (A046691 (n + 3)).toNat) (A249236 (3 * (n + 1)))

end

end A304956.P1010866805995547212

/-!
# A304957: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304957, there is no canonical definition to state claims against.
-/

/-! ## A304957.P5495688894877279783

`A304959(A374007(n+1))`
-/

namespace A304957.P5495688894877279783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A374007 (n + 1)).toNat

end

end A304957.P5495688894877279783

/-! ## A304957.P14374159056595417649

`A304959(A166136(n+4))`
-/

namespace A304957.P14374159056595417649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A166136 (n + 4)).toNat

end

end A304957.P14374159056595417649

/-! ## A304957.P17713585711063045348

`A304959(A056115(n)+21)`
-/

namespace A304957.P17713585711063045348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A056115 n + 21).toNat

end

end A304957.P17713585711063045348

/-! ## A304957.P2676379914061612960

`A304959(A167499(n+4)+1)`
-/

namespace A304957.P2676379914061612960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A167499 (n + 4) + 1).toNat

end

end A304957.P2676379914061612960

/-! ## A304957.P6721256066881060663

`A304959(A167614(n+4)+3)`
-/

namespace A304957.P6721256066881060663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A167614 (n + 4) + 3).toNat

end

end A304957.P6721256066881060663

/-!
# A304958: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304958, there is no canonical definition to state claims against.
-/

/-! ## A304958.P2232502104367568558

`A304959(A374008(n+1))`
-/

namespace A304958.P2232502104367568558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A374008 (n + 1)).toNat

end

end A304958.P2232502104367568558

/-! ## A304958.P15012528846524102413

`A304959(A056119(n)+28)`
-/

namespace A304958.P15012528846524102413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A056119 n + 28).toNat

end

end A304958.P15012528846524102413

/-! ## A304958.P14751026582172320593

`A304959(eq[11, A066657(n)])`
-/

namespace A304958.P14751026582172320593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304958.P14751026582172320593

/-! ## A304958.P3419405511052423278

`A304959(A166136(n+5)+1)`
-/

namespace A304958.P3419405511052423278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A166136 (n + 5) + 1).toNat

end

end A304958.P3419405511052423278

/-! ## A304958.P452204260121842663

`A304959(A077169(n+7)+2)`
-/

namespace A304958.P452204260121842663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304959 (A077169 (n + 7) + 2).toNat

end

end A304958.P452204260121842663

/-!
# A304959: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304959, there is no canonical definition to state claims against.
-/

/-! ## A304959.P18066279003544455120

`A316641(n+1)-A173636(A174545(n))`
-/

namespace A304959.P18066279003544455120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (n + 1) - A173636 (A174545 n).toNat

end

end A304959.P18066279003544455120

/-! ## A304959.P15947083985447606411

`A316641(n+1)-A065040(A282230(n+1))`
-/

namespace A304959.P15947083985447606411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (n + 1) - A065040 (A282230 (n + 1)).toNat

end

end A304959.P15947083985447606411

/-! ## A304959.P8143002444015984877

`A316641(n+1)+A016389(A022166(n))`
-/

namespace A304959.P8143002444015984877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (n + 1) + A016389 (A022166 n).toNat

end

end A304959.P8143002444015984877

/-! ## A304959.P13402919592528878923

`A305367(n+1)+A175267(A022166(n))`
-/

namespace A304959.P13402919592528878923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (n + 1) + A175267 (A022166 n).toNat

end

end A304959.P13402919592528878923

/-! ## A304959.P7683474569849048471

`A316641(n+1)+A016389(A176561(n))`
-/

namespace A304959.P7683474569849048471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316641 (n + 1) + A016389 (A176561 n).toNat

end

end A304959.P7683474569849048471

/-!
# A304960: Number of business cards required to build an origami level n Mosely snowflake sponge.

The programs for A304960, the canonical program `A304960.P1007006473560698606` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304960 has offset 0).

The definition of A304960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304960.P1007006473560698606

`(108*18^n+48*5^n)/13`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304960

/-- `(108*18^n+48*5^n)/13` -/
def P1007006473560698606.Spec : Prop :=
  ∀ n, P1007006473560698606.a n = (A304960 n : ℚ)

end A304960

/-! ## A304960.P8205926711102641737

`18*a(n-1)-48*5^(n-1)` with `a(0)=12`
-/

namespace A304960.P8205926711102641737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  18 * a (n - 1) - 48 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A304960.P8205926711102641737

namespace A304960

/-- `18*a(n-1)-48*5^(n-1)` -/
def P8205926711102641737.Spec : Prop :=
  ∀ n, P8205926711102641737.a n = (A304960 n : ℚ)

end A304960

/-!
# A304961: Expansion of Product_{k>=1} (1 + 2^(k-1)*x^k).

The programs for A304961, there is no canonical definition to state claims against.
-/

/-! ## A304961.P4247768375633696729

`and(A001359(A026759(n)), A077999(n))`
-/

namespace A304961.P4247768375633696729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001359 (A026759 n).toNat) (A077999 n)

end

end A304961.P4247768375633696729

/-! ## A304961.P11917756499752749912

`A131883(A258343(n))`
-/

namespace A304961.P11917756499752749912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A258343 n).toNat

end

end A304961.P11917756499752749912

/-! ## A304961.P10037072408089951464

`A065362(A344063(n))`
-/

namespace A304961.P10037072408089951464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065362 (A344063 n).toNat

end

end A304961.P10037072408089951464

/-! ## A304961.P5558213846690452872

`A131883(A326804(n))`
-/

namespace A304961.P5558213846690452872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A326804 n).toNat

end

end A304961.P5558213846690452872

/-!
# A304962: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^(2^(k-1)).

The programs for A304962, there is no canonical definition to state claims against.
-/

/-! ## A304962.P5432149621299573053

`A242062(A261563(n)+A245356(3*n+4))`
-/

namespace A304962.P5432149621299573053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A261563 n + A245356 (3 * n + 4)).toNat

end

end A304962.P5432149621299573053

/-! ## A304962.P1818618666603635332

`A157271(A191756(n))`
-/

namespace A304962.P1818618666603635332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A191756 n).toNat

end

end A304962.P1818618666603635332

/-! ## A304962.P8185066327488902950

`A123621(A191756(n)+1)`
-/

namespace A304962.P8185066327488902950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A191756 n + 1).toNat

end

end A304962.P8185066327488902950

/-!
# A304963: Expansion of 1/(1 - Sum_{i>=1, j>=1, k>=1} x^(i*j*k)).

The programs for A304963, there is no canonical definition to state claims against.
-/

/-! ## A304963.P1299425109857397888

`A100196(A151022(n))`
-/

namespace A304963.P1299425109857397888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A151022 n).toNat

end

end A304963.P1299425109857397888

/-! ## A304963.P752798410304978466

`A240835(A057062((n+1)!)+n)`
-/

namespace A304963.P752798410304978466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240835 (A057062 (Nat.factorial (n + 1)) + (n : ℤ)).toNat

end

end A304963.P752798410304978466

/-! ## A304963.P7386770756870993489

`A353846(A058699(n))+A307262(n)`
-/

namespace A304963.P7386770756870993489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A058699 n).toNat + A307262 n

end

end A304963.P7386770756870993489

/-!
# A304964: Expansion of 1/(1 - Sum_{i>=1, j>=1, k>=1, l>=1} x^(i*j*k*l)).

The programs for A304964, there is no canonical definition to state claims against.
-/

/-! ## A304964.P6214467961448293255

`A088618(n*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A304964.P6214467961448293255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A088618 ((n : ℤ) * a (n - 2)).toNat

end

end A304964.P6214467961448293255

/-! ## A304964.P9424888255958870647

`A358251(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A304964.P9424888255958870647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A358251 (n + 1) - a (n - 1)

end

end A304964.P9424888255958870647

/-!
# A304966: Expansion of Product_{k>=1} 1/(1 - x^k)^(p(k)-1), where p(k) = number of partitions of k (A000041).

The programs for A304966, there is no canonical definition to state claims against.
-/

/-! ## A304966.P14264072160629323547

`Δ[A337125(A086161(2^n)+1)]`
-/

namespace A304966.P14264072160629323547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A086161 (2 ^ n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304966.P14264072160629323547

/-! ## A304966.P5718234490122263132

`A224747(n)+A001222(A003266(n))`
-/

namespace A304966.P5718234490122263132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 n + A001222 (A003266 n).toNat

end

end A304966.P5718234490122263132

/-! ## A304966.P13049346664870586527

`A283836(n)+A196563(A143339(n))`
-/

namespace A304966.P13049346664870586527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283836 n + A196563 (A143339 n).toNat

end

end A304966.P13049346664870586527

/-! ## A304966.P16369375610039134768

`A335524(A306006(n)+A109509(n))`
-/

namespace A304966.P16369375610039134768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A306006 n + A109509 n).toNat

end

end A304966.P16369375610039134768

/-!
# A304967: Expansion of Product_{k>=1} 1/(1 - x^k)^(p(k)-p(k-1)), where p(k) = number of partitions of k (A000041).

The programs for A304967, there is no canonical definition to state claims against.
-/

/-! ## A304967.P14320491542048041735

`A323654(n)-A178798(A323654(n))²`
-/

namespace A304967.P14320491542048041735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323654 n - A178798 (A323654 n).toNat ^ 2

end

end A304967.P14320491542048041735

/-! ## A304967.P9172875120381661728

`A323654(A004917(n+1))-A332281(n)`
-/

namespace A304967.P9172875120381661728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323654 (A004917 (n + 1)).toNat - A332281 n

end

end A304967.P9172875120381661728

/-! ## A304967.P7939802994244628695

`A323654(n)-A055641(A054975(n+3))`
-/

namespace A304967.P7939802994244628695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323654 n - A055641 (A054975 (n + 3)).toNat

end

end A304967.P7939802994244628695

/-! ## A304967.P3189230857939402024

`A323654(n)+A178798(A001611(n))`
-/

namespace A304967.P3189230857939402024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323654 n + A178798 (A001611 n).toNat

end

end A304967.P3189230857939402024

/-!
# A304968: Number of labeled hypertrees spanning some subset of {1,...,n}, with singleton edges allowed.

The programs for A304968, there is no canonical definition to state claims against.
-/

/-! ## A304968.P8116600104380712793

`A165971(comp[2*n+3]!)+n`
-/

namespace A304968.P8116600104380712793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165971 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) + (n : ℤ)

end

end A304968.P8116600104380712793

/-!
# A304969: Expansion of 1/(1 - Sum_{k>=1} q(k)*x^k), where q(k) = number of partitions of k into distinct parts (A000009).

The programs for A304969, there is no canonical definition to state claims against.
-/

/-! ## A304969.P7213596992804469236

`ceil(A159182(n+7)/A301446(n+1))`
-/

namespace A304969.P7213596992804469236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A159182 (n + 7) : ℚ) / (A301446 (n + 1) : ℚ)⌉

end

end A304969.P7213596992804469236

/-! ## A304969.P4615982820338601470

`A057062(A025227(n+1))-ceil(2^(n-1))`
-/

namespace A304969.P4615982820338601470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (A025227 (n + 1)).toNat - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A304969.P4615982820338601470

/-! ## A304969.P13001895756964012986

`A067086(A046342(n))`
-/

namespace A304969.P13001895756964012986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A046342 n).toNat

end

end A304969.P13001895756964012986

/-! ## A304969.P9656269029241874166

`A003056(A161797(n))`
-/

namespace A304969.P9656269029241874166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A161797 n).toNat

end

end A304969.P9656269029241874166

/-!
# A304970: Number of unlabeled hypertrees with up to n vertices and without singleton edges.

The programs for A304970, there is no canonical definition to state claims against.
-/

/-! ## A304970.P3972570043490949167

`∑[A035053(n)-char[1]]`
-/

namespace A304970.P3972570043490949167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035053 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304970.P3972570043490949167

/-! ## A304970.P14666766765126191977

`A304937(floor(2/acot(n))-n)+1`
-/

namespace A304970.P14666766765126191977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat + 1

end

end A304970.P14666766765126191977

/-! ## A304970.P17274786522347314365

`A304937(n)+A057427(n)`
-/

namespace A304970.P17274786522347314365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n + A057427 n

end

end A304970.P17274786522347314365

/-! ## A304970.P3750346017040879107

`A304937(n)-A057428(n)`
-/

namespace A304970.P3750346017040879107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n - A057428 n

end

end A304970.P3750346017040879107

/-! ## A304970.P15937932662025319072

`∑[A035053(n)]-A057427(n)`
-/

namespace A304970.P15937932662025319072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A304970.P15937932662025319072

/-! ## A304970.P6266961485613424334

`A304937(A065033(2*n))+1`
-/

namespace A304970.P6266961485613424334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 (A065033 (2 * n)).toNat + 1

end

end A304970.P6266961485613424334

/-! ## A304970.P4010556754036407281

`A304937(n)+A019425(2*n)`
-/

namespace A304970.P4010556754036407281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n + A019425 (2 * n)

end

end A304970.P4010556754036407281

/-! ## A304970.P16265650982209930062

`A304937(n)%A134955(n)+1`
-/

namespace A304970.P16265650982209930062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304937 n) (A134955 n) + 1

end

end A304970.P16265650982209930062

/-! ## A304970.P16630382197090917477

`A304937(n)+char[A003963(n+1)]`
-/

namespace A304970.P16630382197090917477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304970.P16630382197090917477

/-! ## A304970.P8058473906299721812

`A304937(n)+A034961(n+1)%2`
-/

namespace A304970.P8058473906299721812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n + Int.tmod (A034961 (n + 1)) 2

end

end A304970.P8058473906299721812

/-! ## A304970.P13874298798938973778

`A304937(n)+A106864(n+1)%2`
-/

namespace A304970.P13874298798938973778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n + Int.tmod (A106864 (n + 1)) 2

end

end A304970.P13874298798938973778

/-! ## A304970.P16772636596848196637

`A304937(n)+A017534(n+1)%(n+1)`
-/

namespace A304970.P16772636596848196637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n + Int.tmod (A017534 (n + 1)) (n + 1 : ℤ)

end

end A304970.P16772636596848196637

/-! ## A304970.P8607886740590161370

`A304937(n)+A048766(A048766(n))`
-/

namespace A304970.P8607886740590161370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n + A048766 (A048766 n).toNat

end

end A304970.P8607886740590161370

/-! ## A304970.P15175688143067049340

`A304937(n)+A019425(A019425(n))²`
-/

namespace A304970.P15175688143067049340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 n + A019425 (A019425 n).toNat ^ 2

end

end A304970.P15175688143067049340

/-!
# A304972: Triangle read by rows of achiral color patterns (set partitions) for a row or loop of length n. T(n,k) is the number using exactly k colors (sets).

The programs for A304972, there is no canonical definition to state claims against.
-/

/-! ## A304972.P12474368747997281069

`2*A152176(n+1)-A152175(n+1)`
-/

namespace A304972.P12474368747997281069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152176 (n + 1) - A152175 (n + 1)

end

end A304972.P12474368747997281069

/-! ## A304972.P6914269614787795160

`A152176(n+1)-A320647(n+1)`
-/

namespace A304972.P6914269614787795160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152176 (n + 1) - A320647 (n + 1)

end

end A304972.P6914269614787795160

/-! ## A304972.P16201377621489814752

`A284949(n+1)-A320525(n+1)`
-/

namespace A304972.P16201377621489814752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284949 (n + 1) - A320525 (n + 1)

end

end A304972.P16201377621489814752

/-! ## A304972.P5537441176930760074

`2*A284949(n+1)-A008277(n+1)`
-/

namespace A304972.P5537441176930760074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284949 (n + 1) - A008277 (n + 1)

end

end A304972.P5537441176930760074

/-! ## A304972.P9709175651313137543

`A008277(n+1)-2*A320525(n+1)`
-/

namespace A304972.P9709175651313137543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - 2 * A320525 (n + 1)

end

end A304972.P9709175651313137543

/-! ## A304972.P10584899151617901504

`A152175(n+1)-2*A320647(n+1)`
-/

namespace A304972.P10584899151617901504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (n + 1) - 2 * A320647 (n + 1)

end

end A304972.P10584899151617901504

/-! ## A304972.P11688311666918188865

`A005843(A152176(n+1))-A152175(n+1)`
-/

namespace A304972.P11688311666918188865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A152176 (n + 1)).toNat - A152175 (n + 1)

end

end A304972.P11688311666918188865

/-!
# A304973: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 3 colors (sets).

The programs for A304973, the canonical program `A304973.P4987803302753247775` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304973 has offset 0).

The definition of A304973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304973.P4987803302753247775

`A182522(n)-A016116(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304973

/-- `A182522(n)-A016116(n)` -/
def P4987803302753247775.Spec : Prop :=
  ∀ n, P4987803302753247775.a n = A304973 n

theorem P4987803302753247775.correct : P4987803302753247775.Spec := by
  intro n
  simp only [A304973]

end A304973

/-! ## A304973.P11611695589040001382

`A182522(n)-abs(A320770(n))`
-/

namespace A304973.P11611695589040001382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n - |A320770 n|

end

end A304973.P11611695589040001382

namespace A304973

/-- `A182522(n)-abs(A320770(n))` -/
def P11611695589040001382.Spec : Prop :=
  ∀ n, P11611695589040001382.a n = A304973 n

end A304973

/-! ## A304973.P12664591822995474093

`A182522(n)-Δ[A052955(n)]`
-/

namespace A304973.P12664591822995474093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n - (f1 (n + 1) - f1 n)

end

end A304973.P12664591822995474093

namespace A304973

/-- `A182522(n)-Δ[A052955(n)]` -/
def P12664591822995474093.Spec : Prop :=
  ∀ n, P12664591822995474093.a n = A304973 n

end A304973

/-! ## A304973.P14594388409208102679

`A182522(n)-∏[A040001(n)]`
-/

namespace A304973.P14594388409208102679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A304973.P14594388409208102679

namespace A304973

/-- `A182522(n)-∏[A040001(n)]` -/
def P14594388409208102679.Spec : Prop :=
  ∀ n, P14594388409208102679.a n = A304973 n

end A304973

/-! ## A304973.P17511389108988021429

`A182522(n)-A000079(floor(n/2))`
-/

namespace A304973.P17511389108988021429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n - A000079 ⌊(n : ℚ) / 2⌋.toNat

end

end A304973.P17511389108988021429

namespace A304973

/-- `A182522(n)-A000079(floor(n/2))` -/
def P17511389108988021429.Spec : Prop :=
  ∀ n, P17511389108988021429.a n = A304973 n

end A304973

/-! ## A304973.P6632257487651501363

`A038754(n+1)-(A068911(n)+A016116(n))`
-/

namespace A304973.P6632257487651501363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (n + 1) - (A068911 n + A016116 n)

end

end A304973.P6632257487651501363

namespace A304973

/-- `A038754(n+1)-(A068911(n)+A016116(n))` -/
def P6632257487651501363.Spec : Prop :=
  ∀ n, P6632257487651501363.a n = A304973 n

end A304973

/-! ## A304973.P14415185245909130535

`A182522(n)-sqrt(A213173(n))`
-/

namespace A304973.P14415185245909130535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A182522 n : ℝ) - Real.sqrt (A213173 n : ℝ)

end

end A304973.P14415185245909130535

namespace A304973

/-- `A182522(n)-sqrt(A213173(n))` -/
def P14415185245909130535.Spec : Prop :=
  ∀ n, P14415185245909130535.a n = (A304973 n : ℝ)

end A304973

/-! ## A304973.P7618014393895135053

`A305750(n)-(A304974(n)+A016116(n))`
-/

namespace A304973.P7618014393895135053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - (A304974 n + A016116 n)

end

end A304973.P7618014393895135053

namespace A304973

/-- `A305750(n)-(A304974(n)+A016116(n))` -/
def P7618014393895135053.Spec : Prop :=
  ∀ n, P7618014393895135053.a n = A304973 n

theorem P7618014393895135053.correct : P7618014393895135053.Spec := by
  intro n
  simp only [A304973, Nat.add_sub_cancel, A304973.P7618014393895135053.a, A304973.P4987803302753247775.a, A016116, A016116.P661627231399665482.a, A182522, A182522.P14682687547002529594.a, A304974, A304974.P17883165039520731159.a, A305750, A305750.P16265421090738274738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304973

/-!
# A304974: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 4 colors (sets).

The programs for A304974, the canonical program `A304974.P17883165039520731159` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304974 has offset 0).

The definition of A304974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304974.P17883165039520731159

`A305750(n)-A182522(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304974

/-- `A305750(n)-A182522(n)` -/
def P17883165039520731159.Spec : Prop :=
  ∀ n, P17883165039520731159.a n = A304974 n

theorem P17883165039520731159.correct : P17883165039520731159.Spec := by
  intro n
  simp only [A304974]

end A304974

/-! ## A304974.P6988205847218527372

`∑[A167936(A267458(n)-1)]`
-/

namespace A304974.P6988205847218527372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (A267458 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P6988205847218527372

namespace A304974

/-- `∑[A167936(A267458(n)-1)]` -/
def P6988205847218527372.Spec : Prop :=
  ∀ n, P6988205847218527372.a n = A304974 n

end A304974

/-! ## A304974.P8712397612674723704

`∑[A167936(n-A158478(n))]`
-/

namespace A304974.P8712397612674723704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 ((n : ℤ) - A158478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P8712397612674723704

namespace A304974

/-- `∑[A167936(n-A158478(n))]` -/
def P8712397612674723704.Spec : Prop :=
  ∀ n, P8712397612674723704.a n = A304974 n

end A304974

/-! ## A304974.P4502255811247802032

`∑[A005061(A140106(A028310(n)))]`
-/

namespace A304974.P4502255811247802032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (A140106 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P4502255811247802032

namespace A304974

/-- `∑[A005061(A140106(A028310(n)))]` -/
def P4502255811247802032.Spec : Prop :=
  ∀ n, P4502255811247802032.a n = A304974 n

end A304974

/-! ## A304974.P627034345214580234

`∑[A167762(A004275(A004526(n)))]`
-/

namespace A304974.P627034345214580234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (A004275 (A004526 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P627034345214580234

namespace A304974

/-- `∑[A167762(A004275(A004526(n)))]` -/
def P627034345214580234.Spec : Prop :=
  ∀ n, P627034345214580234.a n = A304974 n

end A304974

/-! ## A304974.P15789399734076752484

`∑[A005061(A004526(A289207(n)))]`
-/

namespace A304974.P15789399734076752484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (A004526 (A289207 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P15789399734076752484

namespace A304974

/-- `∑[A005061(A004526(A289207(n)))]` -/
def P15789399734076752484.Spec : Prop :=
  ∀ n, P15789399734076752484.a n = A304974 n

end A304974

/-! ## A304974.P12935221157888976383

`∑[A005061(A289207(A008619(n)))]`
-/

namespace A304974.P12935221157888976383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (A289207 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P12935221157888976383

namespace A304974

/-- `∑[A005061(A289207(A008619(n)))]` -/
def P12935221157888976383.Spec : Prop :=
  ∀ n, P12935221157888976383.a n = A304974 n

end A304974

/-! ## A304974.P72077767693736526

`∑[A167936(A004442(A267458(n)))]`
-/

namespace A304974.P72077767693736526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (A004442 (A267458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P72077767693736526

namespace A304974

/-- `∑[A167936(A004442(A267458(n)))]` -/
def P72077767693736526.Spec : Prop :=
  ∀ n, P72077767693736526.a n = A304974 n

end A304974

/-! ## A304974.P9591512543047211936

`A305750(n)-∑[A140429(A123108(n))]`
-/

namespace A304974.P9591512543047211936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P9591512543047211936

namespace A304974

/-- `A305750(n)-∑[A140429(A123108(n))]` -/
def P9591512543047211936.Spec : Prop :=
  ∀ n, P9591512543047211936.a n = A304974 n

end A304974

/-! ## A304974.P17118977785335896851

`A305750(n)-A038754(A028310(n)-1)`
-/

namespace A304974.P17118977785335896851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - A038754 (A028310 n - 1).toNat

end

end A304974.P17118977785335896851

namespace A304974

/-- `A305750(n)-A038754(A028310(n)-1)` -/
def P17118977785335896851.Spec : Prop :=
  ∀ n, P17118977785335896851.a n = A304974 n

end A304974

/-! ## A304974.P8118632637926449648

`A305750(n)-A038754(n-A057427(n))`
-/

namespace A304974.P8118632637926449648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - A038754 ((n : ℤ) - A057427 n).toNat

end

end A304974.P8118632637926449648

namespace A304974

/-- `A305750(n)-A038754(n-A057427(n))` -/
def P8118632637926449648.Spec : Prop :=
  ∀ n, P8118632637926449648.a n = A304974 n

end A304974

/-! ## A304974.P7289671754520723679

`A305750(n)-A038754(A004277(n)-(n+1))`
-/

namespace A304974.P7289671754520723679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - A038754 (A004277 n - (n + 1 : ℤ)).toNat

end

end A304974.P7289671754520723679

namespace A304974

/-- `A305750(n)-A038754(A004277(n)-(n+1))` -/
def P7289671754520723679.Spec : Prop :=
  ∀ n, P7289671754520723679.a n = A304974 n

end A304974

/-! ## A304974.P6480773897049641144

`∑[A005061(A003056(A011861(n)))]`
-/

namespace A304974.P6480773897049641144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (A003056 (A011861 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304974.P6480773897049641144

namespace A304974

/-- `∑[A005061(A003056(A011861(n)))]` -/
def P6480773897049641144.Spec : Prop :=
  ∀ n, P6480773897049641144.a n = A304974 n

end A304974

/-! ## A304974.P6350085601969243880

`A305750(n)-Δ[A094388(n)]/A038754(n)`
-/

namespace A304974.P6350085601969243880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305750 n : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (A038754 n : ℚ)

end

end A304974.P6350085601969243880

namespace A304974

/-- `A305750(n)-Δ[A094388(n)]/A038754(n)` -/
def P6350085601969243880.Spec : Prop :=
  ∀ n, P6350085601969243880.a n = (A304974 n : ℚ)

end A304974

/-!
# A304975: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 5 colors (sets).

The programs for A304975, the canonical program `A304975.P8256716132214659542` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304975 has offset 0).

The definition of A304975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304975.P8256716132214659542

`A305751(n)-A305750(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304975

/-- `A305751(n)-A305750(n)` -/
def P8256716132214659542.Spec : Prop :=
  ∀ n, P8256716132214659542.a n = A304975 n

theorem P8256716132214659542.correct : P8256716132214659542.Spec := by
  intro n
  simp only [A304975]

end A304975

/-! ## A304975.P7310254099597318544

`A136326(n)+A305751(n)-A042950(n)`
-/

namespace A304975.P7310254099597318544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 n + (A305751 n - A042950 n)

end

end A304975.P7310254099597318544

namespace A304975

/-- `A136326(n)+A305751(n)-A042950(n)` -/
def P7310254099597318544.Spec : Prop :=
  ∀ n, P7310254099597318544.a n = A304975 n

end A304975

/-! ## A304975.P14327318488225304914

`A131577(n)+A305751(n)-A136336(n)`
-/

namespace A304975.P14327318488225304914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (A305751 n - A136336 n)

end

end A304975.P14327318488225304914

namespace A304975

/-- `A131577(n)+A305751(n)-A136336(n)` -/
def P14327318488225304914.Spec : Prop :=
  ∀ n, P14327318488225304914.a n = A304975 n

end A304975

/-! ## A304975.P12546318659832271206

`A136336(n)+A305751(n)-A137208(n)`
-/

namespace A304975.P12546318659832271206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136336 n + (A305751 n - A137208 n)

end

end A304975.P12546318659832271206

namespace A304975

/-- `A136336(n)+A305751(n)-A137208(n)` -/
def P12546318659832271206.Spec : Prop :=
  ∀ n, P12546318659832271206.a n = A304975 n

end A304975

/-! ## A304975.P7540452290259563887

`A305751(n)-(A304974(n)+A182522(n))`
-/

namespace A304975.P7540452290259563887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 n - (A304974 n + A182522 n)

end

end A304975.P7540452290259563887

namespace A304975

/-- `A305751(n)-(A304974(n)+A182522(n))` -/
def P7540452290259563887.Spec : Prop :=
  ∀ n, P7540452290259563887.a n = A304975 n

theorem P7540452290259563887.correct : P7540452290259563887.Spec := by
  intro n
  simp only [A304975, Nat.add_sub_cancel, A304975.P7540452290259563887.a, A304975.P8256716132214659542.a, A182522, A182522.P14682687547002529594.a, A304974, A304974.P17883165039520731159.a, A305750, A305750.P16265421090738274738.a, A305751, A305751.P16351866337366111292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304975

/-! ## A304975.P6074360090837642896

`A305751(n)-(∑[A131577(A004526(n))²]+1)`
-/

namespace A304975.P6074360090837642896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004526 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 n - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304975.P6074360090837642896

namespace A304975

/-- `A305751(n)-(∑[A131577(A004526(n))²]+1)` -/
def P6074360090837642896.Spec : Prop :=
  ∀ n, P6074360090837642896.a n = A304975 n

end A304975

/-! ## A304975.P12930996043895019479

`A305751(n)-∑[A034008(n)/(A000035(n)+1)]`
-/

namespace A304975.P12930996043895019479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 n : ℚ) / (A000035 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305751 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304975.P12930996043895019479

namespace A304975

/-- `A305751(n)-∑[A034008(n)/(A000035(n)+1)]` -/
def P12930996043895019479.Spec : Prop :=
  ∀ n, P12930996043895019479.a n = (A304975 n : ℚ)

end A304975

/-! ## A304975.P8590635333794357878

`A305751(n)-(∑[A131577(A002265(2*n))²]+1)`
-/

namespace A304975.P8590635333794357878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A002265 (2 * n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 n - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304975.P8590635333794357878

namespace A304975

/-- `A305751(n)-(∑[A131577(A002265(2*n))²]+1)` -/
def P8590635333794357878.Spec : Prop :=
  ∀ n, P8590635333794357878.a n = A304975 n

end A304975

/-!
# A304976: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 6 colors (sets).

The programs for A304976, there is no canonical definition to state claims against.
-/

/-! ## A304976.P18139214290424027564

`A305752(n)-A305751(n)`
-/

namespace A304976.P18139214290424027564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305752 n - A305751 n

end

end A304976.P18139214290424027564

/-! ## A304976.P17442859411718021262

`A305752(n)-(A056355(n)-A320745(A028310(n)))`
-/

namespace A304976.P17442859411718021262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305752 n - (A056355 n - A320745 (A028310 n).toNat)

end

end A304976.P17442859411718021262

/-! ## A304976.P7730062581542582823

`A305752(n)-(A056272(n)-2*A320935(A028310(n)))`
-/

namespace A304976.P7730062581542582823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305752 n - (A056272 n - 2 * A320935 (A028310 n).toNat)

end

end A304976.P7730062581542582823

/-! ## A304976.P3122204948263591762

`2*A056325(n)-A056273(n)-A305751(n)`
-/

namespace A304976.P3122204948263591762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056325 n - A056273 n - A305751 n

end

end A304976.P3122204948263591762

/-! ## A304976.P11127464970732708953

`A056273(n)-2*A320936(A028310(n))-A305751(n)`
-/

namespace A304976.P11127464970732708953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 n - 2 * A320936 (A028310 n).toNat - A305751 n

end

end A304976.P11127464970732708953

/-!
# A304977: Number of unlabeled hyperforests spanning n vertices with singleton edges allowed.

The programs for A304977, there is no canonical definition to state claims against.
-/

/-! ## A304977.P4551117099673862525

`A004526(A345937(n+1)+A286761(n))`
-/

namespace A304977.P4551117099673862525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A345937 (n + 1) + A286761 n).toNat

end

end A304977.P4551117099673862525

/-! ## A304977.P10682505168723508389

`A198685(ceil(2^(n-1)))-2`
-/

namespace A304977.P10682505168723508389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198685 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - 2

end

end A304977.P10682505168723508389

/-!
# A304978: Numbers that can be expressed in more than one way as 6xy + x + y with x >= y > 0.

The programs for A304978, the canonical program `A304978.P10629053428131485593` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304978 has offset 1).

The definition of A304978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 850 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304978.P10629053428131485593

`lt[4, A359309(n+5)]+4`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A304978

/-- `lt[4, A359309(n+5)]+4` -/
def P10629053428131485593.Spec : Prop :=
  ∀ n, (P10629053428131485593.a n : ℤ) = A304978 (n + 1)

theorem P10629053428131485593.correct : P10629053428131485593.Spec := by
  intro n
  simp only [A304978, Nat.add_sub_cancel]

end A304978

/-!
# A304979: The nonzero terms of the cogrowth sequence of (Z/5Z)^*2 = * with respect to the generating set {(x,1), (1,y)}.

The programs for A304979, there is no canonical definition to state claims against.
-/

/-! ## A304979.P8760134854166866751

`A107030(A056000(n+1)+15)`
-/

namespace A304979.P8760134854166866751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107030 (A056000 (n + 1) + 15).toNat

end

end A304979.P8760134854166866751

/-! ## A304979.P6338519507096740653

`record[A107027(A055999(n))]`
-/

namespace A304979.P6338519507096740653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107027 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304979.P6338519507096740653

/-! ## A304979.P1859447239842438797

`A107027(A055999(n+3))`
-/

namespace A304979.P1859447239842438797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107027 (A055999 (n + 3)).toNat

end

end A304979.P1859447239842438797

/-! ## A304979.P12048152785344274422

`A107027(Δ[A023551(n+1)])`
-/

namespace A304979.P12048152785344274422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107027 (f1 (n + 1) - f1 n).toNat

end

end A304979.P12048152785344274422

/-!
# A304980: a(n) = 4^n * (1 - 4^n) * Bernoulli(2*n) / (2*n) + EulerE(2*n).

The programs for A304980, there is no canonical definition to state claims against.
-/

/-! ## A304980.P1915931037355122291

`(-1)^(n+1)*(A000182(n+1)+A000364(n+1))`
-/

namespace A304980.P1915931037355122291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A000182 (n + 1) + A000364 (n + 1))

end

end A304980.P1915931037355122291

/-! ## A304980.P17773077563966008654

`A163747(2*n+1)+A028296(n+1)`
-/

namespace A304980.P17773077563966008654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 (2 * n + 1) + A028296 (n + 1)

end

end A304980.P17773077563966008654

/-! ## A304980.P14285436541528072198

`A028296(n+1)-A155585(2*n+1)`
-/

namespace A304980.P14285436541528072198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028296 (n + 1) - A155585 (2 * n + 1)

end

end A304980.P14285436541528072198

/-! ## A304980.P3517254670437565072

`A163747(2*n+1)+A122045(2*(n+1))`
-/

namespace A304980.P3517254670437565072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 (2 * n + 1) + A122045 (2 * (n + 1))

end

end A304980.P3517254670437565072

/-! ## A304980.P415956846582407053

`A163982(2*n+1)+A122045(2*(n+1))`
-/

namespace A304980.P415956846582407053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163982 (2 * n + 1) + A122045 (2 * (n + 1))

end

end A304980.P415956846582407053

/-!
# A304981: Number of unlabeled clutters (connected antichains) spanning up to n vertices without singleton edges.

The programs for A304981, there is no canonical definition to state claims against.
-/

/-! ## A304981.P13765076191627853533

`∑[A261006(n)-char[1]]`
-/

namespace A304981.P13765076191627853533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261006 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304981.P13765076191627853533

/-! ## A304981.P6573291153229952432

`A057428(n)+∑[A261006(n)]`
-/

namespace A304981.P6573291153229952432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304981.P6573291153229952432

/-! ## A304981.P5141977754994786889

`A259506(n)+∑[A261006(n)]`
-/

namespace A304981.P5141977754994786889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259506 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304981.P5141977754994786889

/-! ## A304981.P5985216960403134464

`∑[A261006(n)]-A005136(n)`
-/

namespace A304981.P5985216960403134464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005136 n

end

end A304981.P5985216960403134464

/-!
# A304982: Number of unlabeled clutters (connected antichains) spanning up to n vertices with singleton edges allowed.

The programs for A304982, there is no canonical definition to state claims against.
-/

/-! ## A304982.P12518863296004035436

`∑[A304983(n)]`
-/

namespace A304982.P12518863296004035436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304982.P12518863296004035436

/-!
# A304983: Number of unlabeled clutters (connected antichains) spanning n vertices with singleton edges allowed.

The programs for A304983, there is no canonical definition to state claims against.
-/

/-! ## A304983.P15265513844419411143

`xor(A007140(n), A008679(A073422(n)))`
-/

namespace A304983.P15265513844419411143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007140 n) (A008679 (A073422 n).toNat)

end

end A304983.P15265513844419411143

/-!
# A304984: Number of labeled clutters (connected antichains) spanning some subset of {1,...,n} with singleton edges allowed.

The programs for A304984, there is no canonical definition to state claims against.
-/

/-! ## A304984.P1541838351643398369

`∑[A327260(A326869(n))]`
-/

namespace A304984.P1541838351643398369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327260 (A326869 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304984.P1541838351643398369

/-!
# A304985: Number of labeled clutters (connected antichains) spanning n vertices with singleton edges allowed.

The programs for A304985, there is no canonical definition to state claims against.
-/

/-! ## A304985.P14546330999456552737

`A042948(ceil(2^(n-1)))*A048143(n)`
-/

namespace A304985.P14546330999456552737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A048143 n

end

end A304985.P14546330999456552737

/-! ## A304985.P4943705617844603666

`A048143(n)*A057521(A000079(n))`
-/

namespace A304985.P4943705617844603666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048143 n * A057521 (A000079 n).toNat

end

end A304985.P4943705617844603666

/-! ## A304985.P16617708987281208597

`A048143(n)*A291636(A002379(n))`
-/

namespace A304985.P16617708987281208597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048143 n * A291636 (A002379 n).toNat

end

end A304985.P16617708987281208597

/-! ## A304985.P12083022141269510701

`A057521(A000079(n))*A317674(C(n, 2)+1)`
-/

namespace A304985.P12083022141269510701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A000079 n).toNat * A317674 (Nat.choose n 2 + 1)

end

end A304985.P12083022141269510701

/-! ## A304985.P5411286347200752118

`A057521(A007283(n))*A317674(C(n, 2)+1)`
-/

namespace A304985.P5411286347200752118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A007283 n).toNat * A317674 (Nat.choose n 2 + 1)

end

end A304985.P5411286347200752118

/-!
# A304986: Number of labeled clutters (connected antichains) spanning some subset of {1,...,n}, if clutters of the form {{x}} are allowed for any vertex x.

The programs for A304986, there is no canonical definition to state claims against.
-/

/-! ## A304986.P11842970114803842980

`A305005(n)+n`
-/

namespace A304986.P11842970114803842980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305005 n + (n : ℤ)

end

end A304986.P11842970114803842980

/-! ## A304986.P14199528029225719117

`A000372(n)-A327354(n)`
-/

namespace A304986.P14199528029225719117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n - A327354 n

end

end A304986.P14199528029225719117

/-! ## A304986.P6093796599895791350

`A014466(n)+1-A327354(n)`
-/

namespace A304986.P6093796599895791350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 n + (1 - A327354 n)

end

end A304986.P6093796599895791350

/-! ## A304986.P2238185278551395151

`A002378(n)-(n²-A305005(n))`
-/

namespace A304986.P2238185278551395151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - ((n ^ 2 : ℤ) - A305005 n)

end

end A304986.P2238185278551395151

/-! ## A304986.P5232422664445354833

`A014466(n)-(A327354(n)-A119335(n))`
-/

namespace A304986.P5232422664445354833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 n - (A327354 n - A119335 n)

end

end A304986.P5232422664445354833

/-!
# A304990: Squares of number of partitions into distinct parts.

The programs for A304990, there is no canonical definition to state claims against.
-/

/-! ## A304990.P13895715742651467737

`A000009(n)²`
-/

namespace A304990.P13895715742651467737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n ^ 2

end

end A304990.P13895715742651467737

/-! ## A304990.P11595770201499634668

`A081360(n)²`
-/

namespace A304990.P11595770201499634668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n ^ 2

end

end A304990.P11595770201499634668

/-! ## A304990.P146836934044309574

`∑[A087897(n)]²`
-/

namespace A304990.P146836934044309574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A304990.P146836934044309574

/-! ## A304990.P8908105345690138646

`(A111133(n)+1)²`
-/

namespace A304990.P8908105345690138646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111133 n + 1) ^ 2

end

end A304990.P8908105345690138646

/-! ## A304990.P8440045086973834938

`A035457(2*n)²`
-/

namespace A304990.P8440045086973834938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) ^ 2

end

end A304990.P8440045086973834938

/-! ## A304990.P8017135242783546619

`A172033(2*n)²`
-/

namespace A304990.P8017135242783546619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) ^ 2

end

end A304990.P8017135242783546619

/-! ## A304990.P1578957537302537356

`ceil((A087135(n)/2)²)`
-/

namespace A304990.P1578957537302537356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A087135 n : ℚ) / 2) ^ 2⌉

end

end A304990.P1578957537302537356

/-! ## A304990.P9402761132280262615

`ceil(A333147(n)/2)²`
-/

namespace A304990.P9402761132280262615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉ ^ 2

end

end A304990.P9402761132280262615

/-! ## A304990.P9667826542827271884

`A366317(n)+A366132(n)`
-/

namespace A304990.P9667826542827271884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366317 n + A366132 n

end

end A304990.P9667826542827271884

/-! ## A304990.P6995333326962954236

`A000009(n)*A035457(2*n)`
-/

namespace A304990.P6995333326962954236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A035457 (2 * n)

end

end A304990.P6995333326962954236

/-! ## A304990.P9899181008257206707

`A000009(n)*A172033(2*n)`
-/

namespace A304990.P9899181008257206707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A172033 (2 * n)

end

end A304990.P9899181008257206707

/-! ## A304990.P16702343507576149636

`A172033(2*n+1)*A172033(2*n)`
-/

namespace A304990.P16702343507576149636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n + 1) * A172033 (2 * n)

end

end A304990.P16702343507576149636

/-! ## A304990.P2587516852995930488

`A304991(n)²/A000041(n)²`
-/

namespace A304990.P2587516852995930488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304991 n ^ 2 : ℚ) / (A000041 n ^ 2 : ℚ)

end

end A304990.P2587516852995930488

/-! ## A304990.P6152825268879072599

`A241701(A001840(n))²`
-/

namespace A304990.P6152825268879072599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241701 (A001840 n).toNat ^ 2

end

end A304990.P6152825268879072599

/-! ## A304990.P2660230054568479128

`A264405(∑[n])²`
-/

namespace A304990.P2660230054568479128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A304990.P2660230054568479128

/-! ## A304990.P12037506369903644902

`A284593(∑[n])²`
-/

namespace A304990.P12037506369903644902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A304990.P12037506369903644902

/-! ## A304990.P9803814440773281935

`A360634(∑[n])²`
-/

namespace A304990.P9803814440773281935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360634 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A304990.P9803814440773281935

/-! ## A304990.P11361884744286617751

`A364916(∑[n])²`
-/

namespace A304990.P11361884744286617751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A304990.P11361884744286617751

/-! ## A304990.P1201712128507358826

`A264403(∑[n]+n)²`
-/

namespace A304990.P1201712128507358826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A304990.P1201712128507358826

/-! ## A304990.P15658292789497732367

`A360742(∑[n]+n)²`
-/

namespace A304990.P15658292789497732367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360742 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A304990.P15658292789497732367

/-!
# A304991: a(n) = A000041(n) * A000009(n).

The programs for A304991, there is no canonical definition to state claims against.
-/

/-! ## A304991.P7779746090994516116

`A000041(n)*A000009(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304991.P7779746090994516116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000009 n

end

end A304991.P7779746090994516116

/-! ## A304991.P6532694642045580895

`abs(A000041(n)*A081360(n))`
-/

namespace A304991.P6532694642045580895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000041 n * A081360 n|

end

end A304991.P6532694642045580895

/-! ## A304991.P3903123517070546879

`∑[A002865(n)]*A000009(n)`
-/

namespace A304991.P3903123517070546879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000009 n

end

end A304991.P3903123517070546879

/-! ## A304991.P16077223104924129859

`A000041(n)*∑[A087897(n)]`
-/

namespace A304991.P16077223104924129859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304991.P16077223104924129859

/-! ## A304991.P10532417327564926674

`(A000065(n)+1)*A000009(n)`
-/

namespace A304991.P10532417327564926674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * A000009 n

end

end A304991.P10532417327564926674

/-! ## A304991.P17174082323490256720

`(A111133(n)+1)*A000041(n)`
-/

namespace A304991.P17174082323490256720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111133 n + 1) * A000041 n

end

end A304991.P17174082323490256720

/-! ## A304991.P154837369379149824

`A000009(n)*A035363(2*n)`
-/

namespace A304991.P154837369379149824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A035363 (2 * n)

end

end A304991.P154837369379149824

/-! ## A304991.P7123608163330555847

`A000041(n)*A035457(2*n)`
-/

namespace A304991.P7123608163330555847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A035457 (2 * n)

end

end A304991.P7123608163330555847

/-! ## A304991.P2684668381312939696

`A000009(n)*A119620(2*n)`
-/

namespace A304991.P2684668381312939696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A119620 (2 * n)

end

end A304991.P2684668381312939696

/-! ## A304991.P11869292942327615423

`A000041(n)*A172033(2*n)`
-/

namespace A304991.P11869292942327615423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A172033 (2 * n)

end

end A304991.P11869292942327615423

/-! ## A304991.P14484363520186850966

`A000009(n)/2*A139582(n)`
-/

namespace A304991.P14484363520186850966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / 2 * (A139582 n : ℚ)

end

end A304991.P14484363520186850966

/-! ## A304991.P7792890929878722940

`(A133041(n)-n)*A000009(n)`
-/

namespace A304991.P7792890929878722940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133041 n - (n : ℤ)) * A000009 n

end

end A304991.P7792890929878722940

/-! ## A304991.P11765763636101076294

`abs(∑[A002865(n)]*A081360(n))`
-/

namespace A304991.P11765763636101076294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A081360 n|

end

end A304991.P11765763636101076294

/-! ## A304991.P8491979343460826180

`abs((A000065(n)+1)*A081360(n))`
-/

namespace A304991.P8491979343460826180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000065 n + 1) * A081360 n|

end

end A304991.P8491979343460826180

/-! ## A304991.P7690947553206719730

`abs(A035363(2*n)*A081360(n))`
-/

namespace A304991.P7690947553206719730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035363 (2 * n) * A081360 n|

end

end A304991.P7690947553206719730

/-! ## A304991.P8863790689720215127

`(A000065(n)+1)*∑[A087897(n)]`
-/

namespace A304991.P8863790689720215127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304991.P8863790689720215127

/-! ## A304991.P5548020474435349706

`(A111133(n)+1)*∑[A002865(n)]`
-/

namespace A304991.P5548020474435349706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111133 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304991.P5548020474435349706

/-! ## A304991.P11963474479001490742

`A035363(2*n)*A035457(2*n)`
-/

namespace A304991.P11963474479001490742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) * A035457 (2 * n)

end

end A304991.P11963474479001490742

/-! ## A304991.P17097208084730020277

`A035363(2*n)*A172033(2*n)`
-/

namespace A304991.P17097208084730020277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) * A172033 (2 * n)

end

end A304991.P17097208084730020277

/-! ## A304991.P4647283270515232760

`(A018783(n)+A000837(n))*A000009(n)`
-/

namespace A304991.P4647283270515232760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018783 n + A000837 n) * A000009 n

end

end A304991.P4647283270515232760

/-!
# A304992: G.f.: Sum_{k>=0} A000041(k)^3 * x^k / Sum_{k>=0} A000009(k) * x^k.

The programs for A304992, there is no canonical definition to state claims against.
-/

/-! ## A304992.P6371273131053158465

`A360361(p?[xor(1, n)])+A341846(n+1)`
-/

namespace A304992.P6371273131053158465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360361 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A341846 (n + 1)

end

end A304992.P6371273131053158465

/-!
# A304993: a(n) = n*(n + 1)*(7*n + 5)/6.

The programs for A304993, the canonical program `A304993.P13883220675694656387` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304993 has offset 0).

The definition of A304993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(7*n+5)/6` (program `A304993.P6993467413593414345`, by `A304993.P6993467413593414345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304993.P6993467413593414345

`n*(n+1)*(7*n+5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304993.P6993467413593414345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (7 * n + 5) : ℚ) / 6

end

end A304993.P6993467413593414345

namespace A304993

/-- `n*(n+1)*(7*n+5)/6` -/
def P6993467413593414345.Spec : Prop :=
  ∀ n, P6993467413593414345.a n = (A304993 n : ℚ)

theorem P6993467413593414345.correct : P6993467413593414345.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A304993, Nat.add_sub_cancel, A304993.P6993467413593414345.a, A304993.P13883220675694656387.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A304993, Nat.add_sub_cancel, A304993.P6993467413593414345.a, A304993.P13883220675694656387.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304993

/-! ## A304993.P13883220675694656387

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=19, a(3)=52`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304993

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13883220675694656387.Spec : Prop :=
  ∀ n, P13883220675694656387.a n = A304993 n

theorem P13883220675694656387.correct : P13883220675694656387.Spec := by
  intro n
  simp only [A304993]

end A304993

/-! ## A304993.P16266283675661584069

`∑[∑[a(n-1)+7]]` with `a(0)=0, a(1)=4`
-/

namespace A304993.P16266283675661584069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304993.P16266283675661584069

namespace A304993

/-- `∑[∑[a(n-1)+7]]` -/
def P16266283675661584069.Spec : Prop :=
  ∀ n, (P16266283675661584069.a n : ℤ) = A304993 n

end A304993

/-! ## A304993.P5397084657045809431

`-∑[C(n, 2)-(2*n)²]`
-/

namespace A304993.P5397084657045809431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304993.P5397084657045809431

namespace A304993

/-- `-∑[C(n, 2)-(2*n)²]` -/
def P5397084657045809431.Spec : Prop :=
  ∀ n, P5397084657045809431.a n = A304993 n

end A304993

/-! ## A304993.P16687820666861311978

`∑[(2*n)²]-∑[C(n, 2)]`
-/

namespace A304993.P16687820666861311978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A304993.P16687820666861311978

namespace A304993

/-- `∑[(2*n)²]-∑[C(n, 2)]` -/
def P16687820666861311978.Spec : Prop :=
  ∀ n, P16687820666861311978.a n = A304993 n

end A304993

/-! ## A304993.P7824722737825542201

`∑[∑[ogf((4x+3x^2)/(1-2x+x^2))]]`
-/

namespace A304993.P7824722737825542201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304993.P7824722737825542201

namespace A304993

/-- `∑[∑[ogf((4x+3x^2)/(1-2x+x^2))]]` -/
def P7824722737825542201.Spec : Prop :=
  ∀ n, P7824722737825542201.a n = A304993 n

end A304993

/-! ## A304993.P8939919987027982185

`ogf((4x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A304993.P8939919987027982185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 3] [1, -4, 6, -4, 1] n

end

end A304993.P8939919987027982185

namespace A304993

/-- `ogf((4x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P8939919987027982185.Spec : Prop :=
  ∀ n, P8939919987027982185.a n = A304993 n

end A304993

/-! ## A304993.P10463486395073865524

`∑[3-∑[a(n-1)-7]]` with `a(0)=3`
-/

namespace A304993.P10463486395073865524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304993.P10463486395073865524

namespace A304993

/-- `∑[3-∑[a(n-1)-7]]` -/
def P10463486395073865524.Spec : Prop :=
  ∀ n, P10463486395073865524.a n = A304993 n

end A304993

/-! ## A304993.P9341718160927289225

`∑[C(n, 2)]+lcm(n, (n+1)²)`
-/

namespace A304993.P9341718160927289225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n ((n + 1) ^ 2)

end

end A304993.P9341718160927289225

namespace A304993

/-- `∑[C(n, 2)]+lcm(n, (n+1)²)` -/
def P9341718160927289225.Spec : Prop :=
  ∀ n, (P9341718160927289225.a n : ℤ) = A304993 n

end A304993

/-! ## A304993.P534810647634612365

`C(n+1, 3)+n*(n+1)²`
-/

namespace A304993.P534810647634612365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + n * (n + 1) ^ 2

end

end A304993.P534810647634612365

namespace A304993

/-- `C(n+1, 3)+n*(n+1)²` -/
def P534810647634612365.Spec : Prop :=
  ∀ n, (P534810647634612365.a n : ℤ) = A304993 n

end A304993

/-! ## A304993.P4253749067070768662

`∑[3*C(n, 2)]+∑[∑[4*n]]`
-/

namespace A304993.P4253749067070768662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A304993.P4253749067070768662

namespace A304993

/-- `∑[3*C(n, 2)]+∑[∑[4*n]]` -/
def P4253749067070768662.Spec : Prop :=
  ∀ n, (P4253749067070768662.a n : ℤ) = A304993 n

end A304993

/-! ## A304993.P18376708643483277978

`∑[∑[n]]+lcm(2*n+1, ∑[n])`
-/

namespace A304993.P18376708643483277978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A304993.P18376708643483277978

namespace A304993

/-- `∑[∑[n]]+lcm(2*n+1, ∑[n])` -/
def P18376708643483277978.Spec : Prop :=
  ∀ n, (P18376708643483277978.a n : ℤ) = A304993 n

end A304993

/-! ## A304993.P16036161662155571121

`(2*n)²-(C(n, 2)-a(n-1))` with `a(0)=0`
-/

namespace A304993.P16036161662155571121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - a (n - 1))

end

end A304993.P16036161662155571121

namespace A304993

/-- `(2*n)²-(C(n, 2)-a(n-1))` -/
def P16036161662155571121.Spec : Prop :=
  ∀ n, P16036161662155571121.a n = A304993 n

end A304993

/-! ## A304993.P12935240693276644957

`∑[A022265(n)]`
-/

namespace A304993.P12935240693276644957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304993.P12935240693276644957

namespace A304993

/-- `∑[A022265(n)]` -/
def P12935240693276644957.Spec : Prop :=
  ∀ n, P12935240693276644957.a n = A304993 n

end A304993

/-! ## A304993.P16316631093335766172

`∑[A006124(n)-3]`
-/

namespace A304993.P16316631093335766172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006124 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304993.P16316631093335766172

namespace A304993

/-- `∑[A006124(n)-3]` -/
def P16316631093335766172.Spec : Prop :=
  ∀ n, P16316631093335766172.a n = A304993 n

end A304993

/-! ## A304993.P14897105566739198993

`∑[A092277(n)/2]`
-/

namespace A304993.P14897105566739198993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092277 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304993.P14897105566739198993

namespace A304993

/-- `∑[A092277(n)/2]` -/
def P14897105566739198993.Spec : Prop :=
  ∀ n, P14897105566739198993.a n = (A304993 n : ℚ)

end A304993

/-! ## A304993.P5301633262416255570

`A101165(n)+n²`
-/

namespace A304993.P5301633262416255570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101165 n + (n ^ 2 : ℤ)

end

end A304993.P5301633262416255570

namespace A304993

/-- `A101165(n)+n²` -/
def P5301633262416255570.Spec : Prop :=
  ∀ n, P5301633262416255570.a n = A304993 n

end A304993

/-! ## A304993.P918462771512590187

`∑[A022264(n)+n]`
-/

namespace A304993.P918462771512590187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304993.P918462771512590187

namespace A304993

/-- `∑[A022264(n)+n]` -/
def P918462771512590187.Spec : Prop :=
  ∀ n, P918462771512590187.a n = A304993 n

end A304993

/-! ## A304993.P2950711119288626454

`A255211(n)+∑[n]`
-/

namespace A304993.P2950711119288626454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A304993.P2950711119288626454

namespace A304993

/-- `A255211(n)+∑[n]` -/
def P2950711119288626454.Spec : Prop :=
  ∀ n, P2950711119288626454.a n = A304993 n

end A304993

/-! ## A304993.P15125894281025449455

`∑[A186029(n)-n]`
-/

namespace A304993.P15125894281025449455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304993.P15125894281025449455

namespace A304993

/-- `∑[A186029(n)-n]` -/
def P15125894281025449455.Spec : Prop :=
  ∀ n, P15125894281025449455.a n = A304993 n

end A304993

/-!
# A304995: Expansion of (1 + 6*x + 6*x^2 + 6*x^3 + x^4 + 6*x^5)/((1 - x)*(1 + x^4)).

The programs for A304995, the canonical program `A304995.P8723548816364514294` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304995 has offset 0).

The definition of A304995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+6x^2+6x^3+x^4+6x^5)/(1-x+x^4-x^5))` (program `A304995.P8723548816364514294`, by `A304995.P8723548816364514294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304995.P8723548816364514294

`ogf((1+6x+6x^2+6x^3+x^4+6x^5)/(1-x+x^4-x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304995

/-- `ogf((1+6x+6x^2+6x^3+x^4+6x^5)/(1-x+x^4-x^5))` -/
def P8723548816364514294.Spec : Prop :=
  ∀ n, P8723548816364514294.a n = A304995 n

theorem P8723548816364514294.correct : P8723548816364514294.Spec := by
  intro n
  simp only [A304995]

end A304995

/-!
# A304996: Number of unlabeled antichains of finite sets spanning up to n vertices with singleton edges allowed.

The programs for A304996, there is no canonical definition to state claims against.
-/

/-! ## A304996.P5438644039040602502

`∑[A304997(n)]`
-/

namespace A304996.P5438644039040602502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304996.P5438644039040602502

/-! ## A304996.P17597697309170087992

`A374399(n)-floor(1/(n+1))`
-/

namespace A304996.P17597697309170087992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374399 n - ⌊1 / (n + 1 : ℚ)⌋

end

end A304996.P17597697309170087992

/-! ## A304996.P16011002880804825114

`A374399(n)^A093998(n+2)`
-/

namespace A304996.P16011002880804825114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374399 n : ℚ) ^ (A093998 (n + 2) : ℤ)

end

end A304996.P16011002880804825114

/-!
# A304997: Number of unlabeled antichains of finite sets spanning n vertices with singleton edges allowed.

The programs for A304997, there is no canonical definition to state claims against.
-/

/-! ## A304997.P4916627873999689492

`A135723(n)*A304753(A135746(n))`
-/

namespace A304997.P4916627873999689492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135723 n * A304753 (A135746 n).toNat

end

end A304997.P4916627873999689492

/-!
# A304998: Number of unlabeled antichains of finite sets spanning n vertices without singletons.

The programs for A304998, there is no canonical definition to state claims against.
-/

/-! ## A304998.P9949436515062753161

`A006602(n)-A006602(A250264(n))`
-/

namespace A304998.P9949436515062753161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 n - A006602 (A250264 n).toNat

end

end A304998.P9949436515062753161

/-! ## A304998.P3010433159773607670

`A006602(n)-A261005(A080465(n))`
-/

namespace A304998.P3010433159773607670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 n - A261005 (A080465 (n + 10)).toNat

end

end A304998.P3010433159773607670

/-! ## A304998.P18291704012004990474

`A006602(n)-A006602(A330513(n+1))`
-/

namespace A304998.P18291704012004990474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 n - A006602 (A330513 (n + 1)).toNat

end

end A304998.P18291704012004990474

/-!
# A304999: Number of labeled antichains of finite sets spanning n vertices with singleton edges allowed.

The programs for A304999, there is no canonical definition to state claims against.
-/

/-! ## A304999.P3036989175997689401

`A002151((1-n)²*a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A304999.P3036989175997689401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A002151 ((1 - (n : ℤ)) ^ 2 * a (n - 1)).toNat

end

end A304999.P3036989175997689401

