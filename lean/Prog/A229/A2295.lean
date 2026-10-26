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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A229500: Smaller of Fermi-Dirac twin primes (A229064) which are not the smaller of twin primes (A001359).

The programs for A229500, there is no canonical definition to state claims against.
-/

/-! ## A229500.P15669165768408786024

`∩[A050271(n+1), A229064(n+1)]`
-/

namespace A229500.P15669165768408786024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229500.P15669165768408786024

/-! ## A229500.P12330667655784607061

`∩[A229064(n+1), A379157(n+1)]`
-/

namespace A229500.P12330667655784607061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229500.P12330667655784607061

/-! ## A229500.P12900834945097193204

`A343495(A120186(n+1)+A032559(n+1))`
-/

namespace A229500.P12900834945097193204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (A120186 (n + 1) + A032559 (n + 1)).toNat

end

end A229500.P12900834945097193204

/-! ## A229500.P17038799566134233354

`A343495(A032555(n+2))`
-/

namespace A229500.P17038799566134233354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (A032555 (n + 2)).toNat

end

end A229500.P17038799566134233354

/-!
# A229502: Expansion of q * f(-q) * f(-q^4) * f(-q^16) * f(q, -q^3) in powers of q where f() is a Ramanujan theta function.

The programs for A229502, there is no canonical definition to state claims against.
-/

/-! ## A229502.P3292969253539593312

`-A227618(2*(n+1))`
-/

namespace A229502.P3292969253539593312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A227618 (2 * (n + 1))

end

end A229502.P3292969253539593312

/-! ## A229502.P7410128006353000635

`A000007(n+1)-A227618(2*(n+1))`
-/

namespace A229502.P7410128006353000635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A227618 (2 * (n + 1))

end

end A229502.P7410128006353000635

/-! ## A229502.P9442114085953042315

`A248394(2*n)-A227618(2*n+2)`
-/

namespace A229502.P9442114085953042315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (2 * n) - A227618 (2 * n + 2)

end

end A229502.P9442114085953042315

/-! ## A229502.P7406215680191733459

`A051516(2*n+1)-A227618(2*(n+1))`
-/

namespace A229502.P7406215680191733459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * n + 1) - A227618 (2 * (n + 1))

end

end A229502.P7406215680191733459

/-! ## A229502.P517159700740769126

`A008683(A020484(n))*A227618(2*(n+1))`
-/

namespace A229502.P517159700740769126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat * A227618 (2 * (n + 1))

end

end A229502.P517159700740769126

/-! ## A229502.P7853111894480688954

`A008683(A008574(n+1))-A227618(2*n+2)`
-/

namespace A229502.P7853111894480688954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 (n + 1)).toNat - A227618 (2 * n + 2)

end

end A229502.P7853111894480688954

/-! ## A229502.P14291697281613817297

`A227618(2*(n+1))*A227618(Δ[A001950(n+2)])`
-/

namespace A229502.P14291697281613817297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227618 (2 * (n + 1)) * A227618 (f1 (n + 1) - f1 n).toNat

end

end A229502.P14291697281613817297

/-! ## A229502.P2331374666064085261

`A024164(2*(n+1))*A024164(n+2)-A227618(2*(n+1))`
-/

namespace A229502.P2331374666064085261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (2 * (n + 1)) * A024164 (n + 2) - A227618 (2 * (n + 1))

end

end A229502.P2331374666064085261

/-! ## A229502.P12779227610234900867

`A286052(2*n+1)*A286052(2*(n+1))-A227618(2*(n+1))`
-/

namespace A229502.P12779227610234900867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (2 * n + 1) * A286052 (2 * (n + 1)) - A227618 (2 * (n + 1))

end

end A229502.P12779227610234900867

/-! ## A229502.P4653111141259014156

`A035622(A014963(n+1))-A227618(2*(n+1))`
-/

namespace A229502.P4653111141259014156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A014963 (n + 1)).toNat - A227618 (2 * (n + 1))

end

end A229502.P4653111141259014156

/-! ## A229502.P5896920385355826105

`A035622(2*n+1)-A227618(2*(n+1))`
-/

namespace A229502.P5896920385355826105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (2 * n + 1) - A227618 (2 * (n + 1))

end

end A229502.P5896920385355826105

/-! ## A229502.P3744826697892512576

`A056474(2*n+1)-(A227618(2*(n+1))+A056474(2*(n+1)))`
-/

namespace A229502.P3744826697892512576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056474 (2 * n + 1) - (A227618 (2 * (n + 1)) + A056474 (2 * (n + 1)))

end

end A229502.P3744826697892512576

/-! ## A229502.P4091639988208916983

`A286052((n+1)²)-A227618(2*(n+1))`
-/

namespace A229502.P4091639988208916983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 ((n + 1) ^ 2) - A227618 (2 * (n + 1))

end

end A229502.P4091639988208916983

/-!
# A229503: Number of defective 3-colorings of an n X n 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229503, there is no canonical definition to state claims against.
-/

/-! ## A229503.P1786878305663693723

`A229510(∑[4*n]+1)`
-/

namespace A229503.P1786878305663693723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229503.P1786878305663693723

/-! ## A229503.P17199454612660614834

`lcm(2, A229510(A001844(n)))`
-/

namespace A229503.P17199454612660614834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229510 (A001844 n).toNat)

end

end A229503.P17199454612660614834

/-! ## A229503.P4156682967140369298

`record[A203994(n+1)*A229510(n+1)]`
-/

namespace A229503.P4156682967140369298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A229510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229503.P4156682967140369298

/-! ## A229503.P3564475288762469936

`A229510(A001844(n))+A008683(4*(n+1))`
-/

namespace A229503.P3564475288762469936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A229503.P3564475288762469936

/-! ## A229503.P7287718139353030862

`A014963(6*(n+1))*A229510(A001844(n))`
-/

namespace A229503.P7287718139353030862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A229510 (A001844 n).toNat

end

end A229503.P7287718139353030862

/-!
# A229504: Number of defective 3-colorings of an n X 2 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229504, the canonical program `A229504.P488237861805680013` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229504 has offset 1).

The definition of A229504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229504.P488237861805680013

`3/2*n*4^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229504

/-- `3/2*n*4^n` -/
def P488237861805680013.Spec : Prop :=
  ∀ n, P488237861805680013.a n = (A229504 (n + 1) : ℚ)

end A229504

/-! ## A229504.P454331169577776956

`ogf(6x/(1-8x+16x^2))`
-/

namespace A229504.P454331169577776956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -8, 16] n

end

end A229504.P454331169577776956

namespace A229504

/-- `ogf(6x/(1-8x+16x^2))` -/
def P454331169577776956.Spec : Prop :=
  ∀ n, P454331169577776956.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P15082431857591152164

`record[n*3*(-2)^(n-2)]`
-/

namespace A229504.P15082431857591152164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229504.P15082431857591152164

namespace A229504

/-- `record[n*3*(-2)^(n-2)]` -/
def P15082431857591152164.Spec : Prop :=
  ∀ n, P15082431857591152164.a n = (A229504 (n + 1) : ℚ)

end A229504

/-! ## A229504.P1649320546418466422

`lcm(2, 2*n*Δ[4^(n-1)])`
-/

namespace A229504.P1649320546418466422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((2 * n : ℚ) * (f1 (n + 1) - f1 n)))

end

end A229504.P1649320546418466422

namespace A229504

/-- `lcm(2, 2*n*Δ[4^(n-1)])` -/
def P1649320546418466422.Spec : Prop :=
  ∀ n, (P1649320546418466422.a n : ℤ) = A229504 (n + 1)

end A229504

/-! ## A229504.P2991410694515390301

`abs(2*(2/(n-1)+2)*a(n-1))` with `a(0)=0, a(1)=6`
-/

namespace A229504.P2991410694515390301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 6] fun n a =>
  |2 * ((2 / ((n : ℤ) - 1 : ℚ) + 2) * a (n - 1))|

end

end A229504.P2991410694515390301

namespace A229504

/-- `abs(2*(2/(n-1)+2)*a(n-1))` -/
def P2991410694515390301.Spec : Prop :=
  ∀ n, P2991410694515390301.a n = (A229504 (n + 1) : ℚ)

end A229504

/-! ## A229504.P10863150731729127545

`abs(2*2*a(n-1)/(1-1/n))` with `a(0)=0, a(1)=6`
-/

namespace A229504.P10863150731729127545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 6] fun n a =>
  |2 * (2 * (a (n - 1) / (1 - 1 / (n : ℚ))))|

end

end A229504.P10863150731729127545

namespace A229504

/-- `abs(2*2*a(n-1)/(1-1/n))` -/
def P10863150731729127545.Spec : Prop :=
  ∀ n, P10863150731729127545.a n = (A229504 (n + 1) : ℚ)

end A229504

/-! ## A229504.P1528039925756309293

`floor(2*2*a(n-1)/(1-1/n))` with `a(0)=0, a(1)=6`
-/

namespace A229504.P1528039925756309293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  ⌊2 * (2 * ((a (n - 1) : ℚ) / (1 - 1 / (n : ℚ))))⌋

end

end A229504.P1528039925756309293

namespace A229504

/-- `floor(2*2*a(n-1)/(1-1/n))` -/
def P1528039925756309293.Spec : Prop :=
  ∀ n, P1528039925756309293.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P6286179228037640071

`xor(1, 3*A002699(n)+1)`
-/

namespace A229504.P6286179228037640071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * A002699 n + 1)

end

end A229504.P6286179228037640071

namespace A229504

/-- `xor(1, 3*A002699(n)+1)` -/
def P6286179228037640071.Spec : Prop :=
  ∀ n, P6286179228037640071.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P3112391240131132116

`round(2*n/3*A003945(n)²)`
-/

namespace A229504.P3112391240131132116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / 3 * (A003945 n ^ 2 : ℚ))

end

end A229504.P3112391240131132116

namespace A229504

/-- `round(2*n/3*A003945(n)²)` -/
def P3112391240131132116.Spec : Prop :=
  ∀ n, P3112391240131132116.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P15736221969464799902

`A018215(n)+A002699(n)`
-/

namespace A229504.P15736221969464799902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n + A002699 n

end

end A229504.P15736221969464799902

namespace A229504

/-- `A018215(n)+A002699(n)` -/
def P15736221969464799902.Spec : Prop :=
  ∀ n, P15736221969464799902.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P13206312648566850351

`A057711(2*n)+A001787(2*n)`
-/

namespace A229504.P13206312648566850351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (2 * n) + A001787 (2 * n)

end

end A229504.P13206312648566850351

namespace A229504

/-- `A057711(2*n)+A001787(2*n)` -/
def P13206312648566850351.Spec : Prop :=
  ∀ n, P13206312648566850351.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P8356951561247926211

`A133086(2*n)-A084221(2*n)`
-/

namespace A229504.P8356951561247926211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (2 * n) - A084221 (2 * n)

end

end A229504.P8356951561247926211

namespace A229504

/-- `A133086(2*n)-A084221(2*n)` -/
def P8356951561247926211.Spec : Prop :=
  ∀ n, P8356951561247926211.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P7529259105389596016

`A133086(2*n)-A092809(2*n)`
-/

namespace A229504.P7529259105389596016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (2 * n) - A092809 (2 * n)

end

end A229504.P7529259105389596016

namespace A229504

/-- `A133086(2*n)-A092809(2*n)` -/
def P7529259105389596016.Spec : Prop :=
  ∀ n, P7529259105389596016.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P6637101971752491813

`A133086(2*n)-A123344(n+1)²`
-/

namespace A229504.P6637101971752491813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (2 * n) - A123344 (n + 1) ^ 2

end

end A229504.P6637101971752491813

namespace A229504

/-- `A133086(2*n)-A123344(n+1)²` -/
def P6637101971752491813.Spec : Prop :=
  ∀ n, P6637101971752491813.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P18154340882364974985

`A274497(2*n+1)+A274497(2*n)`
-/

namespace A229504.P18154340882364974985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 (2 * n + 1) + A274497 (2 * n)

end

end A229504.P18154340882364974985

namespace A229504

/-- `A274497(2*n+1)+A274497(2*n)` -/
def P18154340882364974985.Spec : Prop :=
  ∀ n, P18154340882364974985.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P16982768732766421157

`A133086(2*n)-A123344(2*n+1)`
-/

namespace A229504.P16982768732766421157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (2 * n) - A123344 (2 * n + 1)

end

end A229504.P16982768732766421157

namespace A229504

/-- `A133086(2*n)-A123344(2*n+1)` -/
def P16982768732766421157.Spec : Prop :=
  ∀ n, P16982768732766421157.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P10479833455487000677

`A036289(n)+A036289(n)*A083329(n)`
-/

namespace A229504.P10479833455487000677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A036289 n * A083329 n

end

end A229504.P10479833455487000677

namespace A229504

/-- `A036289(n)+A036289(n)*A083329(n)` -/
def P10479833455487000677.Spec : Prop :=
  ∀ n, P10479833455487000677.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P10138010576834543495

`A034008(n+1)*A048477(n)-A034008(n+1)`
-/

namespace A229504.P10138010576834543495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) * A048477 n - A034008 (n + 1)

end

end A229504.P10138010576834543495

namespace A229504

/-- `A034008(n+1)*A048477(n)-A034008(n+1)` -/
def P10138010576834543495.Spec : Prop :=
  ∀ n, P10138010576834543495.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P5334355715162610782

`A011782(2*n)*A016777(n)-A011782(2*n)`
-/

namespace A229504.P5334355715162610782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) * A016777 n - A011782 (2 * n)

end

end A229504.P5334355715162610782

namespace A229504

/-- `A011782(2*n)*A016777(n)-A011782(2*n)` -/
def P5334355715162610782.Spec : Prop :=
  ∀ n, P5334355715162610782.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P13659461511405021169

`8*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=6`
-/

namespace A229504.P13659461511405021169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  8 * a (n - 1) - 16 * a (n - 2)

end

end A229504.P13659461511405021169

namespace A229504

/-- `8*a(n-1)-16*a(n-2)` -/
def P13659461511405021169.Spec : Prop :=
  ∀ n, P13659461511405021169.a n = A229504 (n + 1)

end A229504

/-!
# A229505: Number of defective 3-colorings of an n X 3 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229505, the canonical program `A229505.P17308966243932917914` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229505 has offset 1).

The definition of A229505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229505.P17308966243932917914

`12*a(n-1)-36*a(n-2)` with `a(0)=0, a(1)=48, a(2)=480`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229505

/-- `12*a(n-1)-36*a(n-2)` -/
def P17308966243932917914.Spec : Prop :=
  ∀ n, P17308966243932917914.a n = A229505 (n + 1)

theorem P17308966243932917914.correct : P17308966243932917914.Spec := by
  intro n
  simp only [A229505, Nat.add_sub_cancel]

end A229505

/-! ## A229505.P2283973789387508804

`2^(n+3)*A229277(n)`
-/

namespace A229505.P2283973789387508804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A229277 n

end

end A229505.P2283973789387508804

namespace A229505

/-- `2^(n+3)*A229277(n)` -/
def P2283973789387508804.Spec : Prop :=
  ∀ n, P2283973789387508804.a n = A229505 (n + 1)

end A229505

/-! ## A229505.P17642124384888720224

`lcm(A171494(n), A229277(n))`
-/

namespace A229505.P17642124384888720224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A171494 n) (A229277 n)

end

end A229505.P17642124384888720224

namespace A229505

/-- `lcm(A171494(n), A229277(n))` -/
def P17642124384888720224.Spec : Prop :=
  ∀ n, (P17642124384888720224.a n : ℤ) = A229505 (n + 1)

end A229505

/-! ## A229505.P14141287126829401083

`A155559(n)*A268633(n+1)`
-/

namespace A229505.P14141287126829401083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n * A268633 (n + 1)

end

end A229505.P14141287126829401083

namespace A229505

/-- `A155559(n)*A268633(n+1)` -/
def P14141287126829401083.Spec : Prop :=
  ∀ n, P14141287126829401083.a n = A229505 (n + 1)

end A229505

/-! ## A229505.P15710052220737275048

`A229510(∑[n+2]+4)`
-/

namespace A229505.P15710052220737275048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229505.P15710052220737275048

namespace A229505

/-- `A229510(∑[n+2]+4)` -/
def P15710052220737275048.Spec : Prop :=
  ∀ n, P15710052220737275048.a n = A229505 (n + 1)

end A229505

/-!
# A229506: Number of defective 3-colorings of an n X 4 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229506, the canonical program `A229506.P14398497466748086925` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229506 has offset 1).

The definition of A229506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229506.P7175468385402468730

`A083583(n)*A268905(n+1)`
-/

namespace A229506.P7175468385402468730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083583 n * A268905 (n + 1)

end

end A229506.P7175468385402468730

namespace A229506

/-- `A083583(n)*A268905(n+1)` -/
def P7175468385402468730.Spec : Prop :=
  ∀ n, P7175468385402468730.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P2514887881626443343

`4*A268905(n+1)*A025192(n)`
-/

namespace A229506.P2514887881626443343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268905 (n + 1) * A025192 n

end

end A229506.P2514887881626443343

namespace A229506

/-- `4*A268905(n+1)*A025192(n)` -/
def P2514887881626443343.Spec : Prop :=
  ∀ n, P2514887881626443343.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P14398497466748086925

`(A008776(n+2)-A008776(n))*A229587(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229506

/-- `(A008776(n+2)-A008776(n))*A229587(n+1)` -/
def P14398497466748086925.Spec : Prop :=
  ∀ n, P14398497466748086925.a n = A229506 (n + 1)

theorem P14398497466748086925.correct : P14398497466748086925.Spec := by
  intro n
  simp only [A229506, Nat.add_sub_cancel]

end A229506

/-! ## A229506.P10336999822285872

`A229510(A374004(n+1))`
-/

namespace A229506.P10336999822285872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A374004 (n + 1)).toNat

end

end A229506.P10336999822285872

namespace A229506

/-- `A229510(A374004(n+1))` -/
def P10336999822285872.Spec : Prop :=
  ∀ n, P10336999822285872.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P772365154797628193

`A229510(A141214(n)+7)`
-/

namespace A229506.P772365154797628193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A141214 n + 7).toNat

end

end A229506.P772365154797628193

namespace A229506

/-- `A229510(A141214(n)+7)` -/
def P772365154797628193.Spec : Prop :=
  ∀ n, P772365154797628193.a n = A229506 (n + 1)

end A229506

/-!
# A229507: Number of defective 3-colorings of an n X 5 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229507, there is no canonical definition to state claims against.
-/

/-! ## A229507.P4013060240962808818

`A229510(A374005(n+1))`
-/

namespace A229507.P4013060240962808818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A374005 (n + 1)).toNat

end

end A229507.P4013060240962808818

/-! ## A229507.P11982796367998442524

`A229510(A167499(n+3))`
-/

namespace A229507.P11982796367998442524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A167499 (n + 3)).toNat

end

end A229507.P11982796367998442524

/-! ## A229507.P1694840190723195528

`A229510(A056000(n)+15)`
-/

namespace A229507.P1694840190723195528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A056000 n + 15).toNat

end

end A229507.P1694840190723195528

/-! ## A229507.P18273554925367887050

`A229510(A000217(n+4)+5)`
-/

namespace A229507.P18273554925367887050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A000217 (n + 4) + 5).toNat

end

end A229507.P18273554925367887050

/-! ## A229507.P5164868635953662758

`A229510(A046691(n+3))`
-/

namespace A229507.P5164868635953662758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A046691 (n + 3)).toNat

end

end A229507.P5164868635953662758

/-!
# A229508: Number of defective 3-colorings of an n X 6 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229508, there is no canonical definition to state claims against.
-/

/-! ## A229508.P4172665310165043426

`A229510(A374007(n+1))`
-/

namespace A229508.P4172665310165043426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A374007 (n + 1)).toNat

end

end A229508.P4172665310165043426

/-! ## A229508.P5341827168123753728

`A229510(eq[7, A131818(n+1)])`
-/

namespace A229508.P5341827168123753728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229508.P5341827168123753728

/-! ## A229508.P17690545154882901602

`A229510(A167499(n+2)+A020744(n+1))`
-/

namespace A229508.P17690545154882901602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A167499 (n + 2) + A020744 (n + 1)).toNat

end

end A229508.P17690545154882901602

/-! ## A229508.P3321478936444397189

`A229510(eq[3, A219347(n)])`
-/

namespace A229508.P3321478936444397189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229508.P3321478936444397189

/-! ## A229508.P6606890765236505852

`A229510(eq[5, A193592(n)])`
-/

namespace A229508.P6606890765236505852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229508.P6606890765236505852

/-!
# A229509: Number of defective 3-colorings of an n X 7 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229509, there is no canonical definition to state claims against.
-/

/-! ## A229509.P16832002506241279826

`A229510(A374008(n+1))`
-/

namespace A229509.P16832002506241279826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A374008 (n + 1)).toNat

end

end A229509.P16832002506241279826

/-! ## A229509.P9141908565321781638

`A229510(eq[11, A066657(n)])`
-/

namespace A229509.P9141908565321781638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229509.P9141908565321781638

/-! ## A229509.P1831508989705390413

`A229510(eq[8, A131818(n+1)])`
-/

namespace A229509.P1831508989705390413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229509.P1831508989705390413

/-! ## A229509.P3415761966590148690

`A229510(eq[4, A219347(n)])`
-/

namespace A229509.P3415761966590148690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229509.P3415761966590148690

/-! ## A229509.P4134233573259598269

`A229510(eq[6, A193592(n)])`
-/

namespace A229509.P4134233573259598269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229509.P4134233573259598269

/-!
# A229510: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229510, there is no canonical definition to state claims against.
-/

/-! ## A229510.P16642904417908886313

`A014473(n)*A151787(A283642(n))`
-/

namespace A229510.P16642904417908886313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A151787 (A283642 n).toNat

end

end A229510.P16642904417908886313

/-! ## A229510.P5613058130035090344

`A014473(n)*A245564(A081254(n+1))`
-/

namespace A229510.P5613058130035090344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A245564 (A081254 (n + 1)).toNat

end

end A229510.P5613058130035090344

/-! ## A229510.P13288190756456519966

`A345318(A176156(n))`
-/

namespace A229510.P13288190756456519966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345318 (A176156 n).toNat

end

end A229510.P13288190756456519966

/-! ## A229510.P1638935082484088318

`A345318(A176157(n))`
-/

namespace A229510.P1638935082484088318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345318 (A176157 n).toNat

end

end A229510.P1638935082484088318

/-! ## A229510.P7872312515685502048

`∑{d}[A137754(n+1), A324376(#)]`
-/

namespace A229510.P7872312515685502048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A324376 d

end

end A229510.P7872312515685502048

/-!
# A229511: Numbers k whose arithmetic derivative (k') is a triangular number.

The programs for A229511, the canonical program `A229511.P11562683010761712362` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229511 has offset 0).

The definition of A229511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229511.P16829951038265199957

`eq[0, A319047(A003415(n))]`
-/

namespace A229511.P16829951038265199957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P16829951038265199957

namespace A229511

/-- `eq[0, A319047(A003415(n))]` -/
def P16829951038265199957.Spec : Prop :=
  ∀ n, (P16829951038265199957.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P16305353700605645099

`eq[1, A081532(A003415(n)+1)]`
-/

namespace A229511.P16305353700605645099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P16305353700605645099

namespace A229511

/-- `eq[1, A081532(A003415(n)+1)]` -/
def P16305353700605645099.Spec : Prop :=
  ∀ n, (P16305353700605645099.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P17259574535731563060

`eq[A000010(n+1)%2, A308680(A003415(n))]`
-/

namespace A229511.P17259574535731563060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229511.P17259574535731563060

namespace A229511

/-- `eq[A000010(n+1)%2, A308680(A003415(n))]` -/
def P17259574535731563060.Spec : Prop :=
  ∀ n, (P17259574535731563060.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P11562683010761712362

`eq[1, A002260(A003415(n)+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A229511

/-- `eq[1, A002260(A003415(n)+1)]` -/
def P11562683010761712362.Spec : Prop :=
  ∀ n, (P11562683010761712362.a n : ℤ) = A229511 n

theorem P11562683010761712362.correct : P11562683010761712362.Spec := by
  intro n
  simp only [A229511]

end A229511

/-! ## A229511.P6667744827203167574

`eq[1, A002260(A129283(n)+1-n)]`
-/

namespace A229511.P6667744827203167574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A129283 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P6667744827203167574

namespace A229511

/-- `eq[1, A002260(A129283(n)+1-n)]` -/
def P6667744827203167574.Spec : Prop :=
  ∀ n, (P6667744827203167574.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P1867308086037898115

`record[n+1-A163269(A003415(n)+1)]`
-/

namespace A229511.P1867308086037898115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A163269 (A003415 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229511.P1867308086037898115

namespace A229511

/-- `record[n+1-A163269(A003415(n)+1)]` -/
def P1867308086037898115.Spec : Prop :=
  ∀ n, P1867308086037898115.a n = A229511 n

end A229511

/-! ## A229511.P9911753619699138756

`eq[1, A183917(A003415(n)+1)]`
-/

namespace A229511.P9911753619699138756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P9911753619699138756

namespace A229511

/-- `eq[1, A183917(A003415(n)+1)]` -/
def P9911753619699138756.Spec : Prop :=
  ∀ n, (P9911753619699138756.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P2038398740800743880

`eq[1, A193710(A003415(n)+1)]`
-/

namespace A229511.P2038398740800743880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193710 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P2038398740800743880

namespace A229511

/-- `eq[1, A193710(A003415(n)+1)]` -/
def P2038398740800743880.Spec : Prop :=
  ∀ n, (P2038398740800743880.a n : ℤ) = A229511 n

end A229511

/-!
# A229513: Number of n X n 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X (n+1) 0..2 array without adjacent equal elements in the latter.

The programs for A229513, there is no canonical definition to state claims against.
-/

/-! ## A229513.P11853448196069136674

`A229521(∑[4*n]+1)`
-/

namespace A229513.P11853448196069136674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229513.P11853448196069136674

/-! ## A229513.P6350996905006676163

`or(1, A229521(A001844(n)))`
-/

namespace A229513.P6350996905006676163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229521 (A001844 n).toNat)

end

end A229513.P6350996905006676163

/-! ## A229513.P8787944009914094788

`record[gcd(A049581(n), A229521(n+1))]`
-/

namespace A229513.P8787944009914094788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A229521 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229513.P8787944009914094788

/-! ## A229513.P7778324894918147266

`A007318(∑[n])*A229521(A001844(n))`
-/

namespace A229513.P7778324894918147266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A229521 (A001844 n).toNat

end

end A229513.P7778324894918147266

/-! ## A229513.P10627627090087353308

`A000041(C(n, 64))*A229521(A001844(n))`
-/

namespace A229513.P10627627090087353308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A229521 (A001844 n).toNat

end

end A229513.P10627627090087353308

/-!
# A229514: Number of n X 1 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 2 0..2 array without adjacent equal elements in the latter.

The programs for A229514, the canonical program `A229514.P17259181171795286150` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229514 has offset 1).

The definition of A229514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229514.P3762766359373025487

`ogf((3+x+x^3)/(1-2x-x^2+x^3-x^4))`
-/

namespace A229514.P3762766359373025487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 0, 1] [1, -2, -1, 1, -1] n

end

end A229514.P3762766359373025487

namespace A229514

/-- `ogf((3+x+x^3)/(1-2x-x^2+x^3-x^4))` -/
def P3762766359373025487.Spec : Prop :=
  ∀ n, P3762766359373025487.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P17259181171795286150

`2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=3, a(1)=7, a(2)=17, a(3)=39`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229514

/-- `2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P17259181171795286150.Spec : Prop :=
  ∀ n, P17259181171795286150.a n = A229514 (n + 1)

theorem P17259181171795286150.correct : P17259181171795286150.Spec := by
  intro n
  simp only [A229514, Nat.add_sub_cancel]

end A229514

/-! ## A229514.P11552853800515754483

`A159328(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A229514.P11552853800515754483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A159328 (n + 1) - a (n - 1)

end

end A229514.P11552853800515754483

namespace A229514

/-- `A159328(n+1)-a(n-1)` -/
def P11552853800515754483.Spec : Prop :=
  ∀ n, P11552853800515754483.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P11900759769843111090

`2*A181984(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A229514.P11900759769843111090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * A181984 (n + 1) - a (n - 1)

end

end A229514.P11900759769843111090

namespace A229514

/-- `2*A181984(n+1)-a(n-1)` -/
def P11900759769843111090.Spec : Prop :=
  ∀ n, P11900759769843111090.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P5925113310455016555

`a(n-1)+2*A003520(3*n+2)` with `a(0)=3`
-/

namespace A229514.P5925113310455016555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * A003520 (3 * n + 2)

end

end A229514.P5925113310455016555

namespace A229514

/-- `a(n-1)+2*A003520(3*n+2)` -/
def P5925113310455016555.Spec : Prop :=
  ∀ n, P5925113310455016555.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P112070319822785817

`A003520(3*n+4)+Δ[A003520(3*(n+1))]`
-/

namespace A229514.P112070319822785817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (3 * n + 4) + (f1 (n + 1) - f1 n)

end

end A229514.P112070319822785817

namespace A229514

/-- `A003520(3*n+4)+Δ[A003520(3*(n+1))]` -/
def P112070319822785817.Spec : Prop :=
  ∀ n, P112070319822785817.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P13304266915285902256

`A017899(A016777(n))+A010912(n)`
-/

namespace A229514.P13304266915285902256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016777 n).toNat + A010912 n

end

end A229514.P13304266915285902256

namespace A229514

/-- `A017899(A016777(n))+A010912(n)` -/
def P13304266915285902256.Spec : Prop :=
  ∀ n, P13304266915285902256.a n = A229514 (n + 1)

end A229514

/-!
# A229515: Number of n X 2 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 3 0..2 array without adjacent equal elements in the latter.

The programs for A229515, there is no canonical definition to state claims against.
-/

/-! ## A229515.P603361488672935797

`A229521(∑[n+1]+2)`
-/

namespace A229515.P603361488672935797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229515.P603361488672935797

/-! ## A229515.P11412117216165836133

`record[root(A229521(n+2), A124927(n))]`
-/

namespace A229515.P11412117216165836133
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229521 (n + 2) : ℝ) ^ (1 / (A124927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229515.P11412117216165836133

/-! ## A229515.P14939816144929197107

`record[gcd(A229521(n+3), A229534(n+1))]`
-/

namespace A229515.P14939816144929197107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229521 (n + 3)) (A229534 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229515.P14939816144929197107

/-! ## A229515.P7590329328965210005

`record[A229521(A133263(A028242(n)))]`
-/

namespace A229515.P7590329328965210005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229515.P7590329328965210005

/-! ## A229515.P17104310392923277714

`record[A229521(A133263(A286558(n)))]`
-/

namespace A229515.P17104310392923277714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A133263 (A286558 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229515.P17104310392923277714

/-!
# A229516: Number of n X 3 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 4 0..2 array without adjacent equal elements in the latter.

The programs for A229516, there is no canonical definition to state claims against.
-/

/-! ## A229516.P8177409282896551806

`A229521(∑[n+2]+4)`
-/

namespace A229516.P8177409282896551806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229516.P8177409282896551806

/-! ## A229516.P7314742420851299877

`or(1, A229521(A167614(n+1)))`
-/

namespace A229516.P7314742420851299877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229521 (A167614 (n + 1)).toNat)

end

end A229516.P7314742420851299877

/-! ## A229516.P16494518951804487841

`A229521(A167614(n+1))+A185255(n)`
-/

namespace A229516.P16494518951804487841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A167614 (n + 1)).toNat + A185255 n

end

end A229516.P16494518951804487841

/-! ## A229516.P1621213798921590361

`A229521(A167614(n+1))%A288477(n)`
-/

namespace A229516.P1621213798921590361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229521 (A167614 (n + 1)).toNat) (A288477 n)

end

end A229516.P1621213798921590361

/-! ## A229516.P3694019034705792247

`A230686(n+1)+A229521(A167614(n+1))`
-/

namespace A229516.P3694019034705792247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (n + 1) + A229521 (A167614 (n + 1)).toNat

end

end A229516.P3694019034705792247

/-!
# A229517: Number of n X 4 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 5 0..2 array without adjacent equal elements in the latter.

The programs for A229517, there is no canonical definition to state claims against.
-/

/-! ## A229517.P8923254272984301901

`A229521(A374004(n+1))`
-/

namespace A229517.P8923254272984301901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A374004 (n + 1)).toNat

end

end A229517.P8923254272984301901

/-! ## A229517.P10952615003422017211

`A229521(A052905(n)+9)`
-/

namespace A229517.P10952615003422017211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A052905 n + 9).toNat

end

end A229517.P10952615003422017211

/-! ## A229517.P18445293660560310301

`A229521(A055999(n)+10)`
-/

namespace A229517.P18445293660560310301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A055999 n + 10).toNat

end

end A229517.P18445293660560310301

/-! ## A229517.P7240157607536814390

`A229521(A167614(n+2)+1)`
-/

namespace A229517.P7240157607536814390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A167614 (n + 2) + 1).toNat

end

end A229517.P7240157607536814390

/-! ## A229517.P12479381271734919807

`A229521(Δ[A264443(n)-n²])`
-/

namespace A229517.P12479381271734919807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (f1 (n + 1) - f1 n).toNat

end

end A229517.P12479381271734919807

/-!
# A229518: Number of n X 5 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 6 0..2 array without adjacent equal elements in the latter.

The programs for A229518, there is no canonical definition to state claims against.
-/

/-! ## A229518.P4058575882094592854

`A229521(A374005(n+1))`
-/

namespace A229518.P4058575882094592854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A374005 (n + 1)).toNat

end

end A229518.P4058575882094592854

/-! ## A229518.P7456288745962491768

`A229521(A167499(n+3))`
-/

namespace A229518.P7456288745962491768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A167499 (n + 3)).toNat

end

end A229518.P7456288745962491768

/-! ## A229518.P14870457377130894017

`A229521(Δ[A264443(n)])`
-/

namespace A229518.P14870457377130894017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (f1 (n + 1) - f1 n).toNat

end

end A229518.P14870457377130894017

/-! ## A229518.P16076012314995261673

`A229521(eq[4, A193592(n)])`
-/

namespace A229518.P16076012314995261673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229518.P16076012314995261673

/-! ## A229518.P18334979785233128866

`A229521(Δ[A023545(n+1)])`
-/

namespace A229518.P18334979785233128866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (f1 (n + 1) - f1 n).toNat

end

end A229518.P18334979785233128866

/-!
# A229519: Number of n X 6 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 7 0..2 array without adjacent equal elements in the latter.

The programs for A229519, there is no canonical definition to state claims against.
-/

/-! ## A229519.P16201824887493518773

`A229521(A374007(n+1))`
-/

namespace A229519.P16201824887493518773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A374007 (n + 1)).toNat

end

end A229519.P16201824887493518773

/-! ## A229519.P14301513418200255615

`A229521(eq[3, A219347(n)])`
-/

namespace A229519.P14301513418200255615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229519.P14301513418200255615

/-! ## A229519.P1879220876813500678

`A229521(eq[5, A193592(n)])`
-/

namespace A229519.P1879220876813500678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229519.P1879220876813500678

/-! ## A229519.P8865172468386480055

`A229521(eq[8, A258709(n)])`
-/

namespace A229519.P8865172468386480055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229519.P8865172468386480055

/-! ## A229519.P18441302327139190961

`A229521(eq[5, A025581(n)]+1)`
-/

namespace A229519.P18441302327139190961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229519.P18441302327139190961

/-!
# A229520: Number of n X 7 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 8 0..2 array without adjacent equal elements in the latter.

The programs for A229520, there is no canonical definition to state claims against.
-/

/-! ## A229520.P17222406211818393425

`A229521(A374008(n+1))`
-/

namespace A229520.P17222406211818393425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A374008 (n + 1)).toNat

end

end A229520.P17222406211818393425

/-! ## A229520.P18338641394608618780

`A229521(eq[11, A066657(n)])`
-/

namespace A229520.P18338641394608618780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229520.P18338641394608618780

/-! ## A229520.P4619000896572174431

`A229521(eq[8, A131818(n+1)])`
-/

namespace A229520.P4619000896572174431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229520.P4619000896572174431

/-! ## A229520.P16952671042366440648

`A229521(eq[4, A219347(n)])`
-/

namespace A229520.P16952671042366440648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229520.P16952671042366440648

/-! ## A229520.P13332706744891616602

`A229521(eq[5, A332954(n)])`
-/

namespace A229520.P13332706744891616602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229520.P13332706744891616602

/-!
# A229522: Final digit (in decimal system) of (n^n)^n, i.e., (n^n)^n mod 10.

The programs for A229522, the canonical program `A229522.P18014892526736871707` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229522 has offset 1).

The definition of A229522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229522.P18014892526736871707

`((n+1)^(5-n%2))%10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229522

/-- `((n+1)^(5-n%2))%10` -/
def P18014892526736871707.Spec : Prop :=
  ∀ n, P18014892526736871707.a n = A229522 (n + 1)

theorem P18014892526736871707.correct : P18014892526736871707.Spec := by
  intro n
  simp only [A229522, Nat.add_sub_cancel]

end A229522

/-!
# A229523: Partial sum of the arithmetic derivative A003415 (A190121) up to 10^n.

The programs for A229523, the canonical program `A229523.P13832945066902845341` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229523 has offset 0).

The definition of A229523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190121, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229523.P13832945066902845341

`A190121(10^n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A229523

/-- `A190121(10^n)` -/
def P13832945066902845341.Spec : Prop :=
  ∀ n, P13832945066902845341.a n = A229523 n

theorem P13832945066902845341.correct : P13832945066902845341.Spec := by
  intro n
  simp only [A229523]

end A229523

/-!
# A229525: Sum of coefficients of the transform a*x^2 + (4*a/k - b)*x + 4*a/k^2 + 2*b/k + c = 0 for a,b,c = 1,-1,-1, k = 1,2,3...

The programs for A229525, the canonical program `A229525.P6943540399474459169` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229525 has offset 1).

The definition of A229525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229525.P6943540399474459169

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=11, a(1)=5, a(2)=31, a(3)=11, a(4)=59, a(5)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229525

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P6943540399474459169.Spec : Prop :=
  ∀ n, P6943540399474459169.a n = A229525 (n + 1)

theorem P6943540399474459169.correct : P6943540399474459169.Spec := by
  intro n
  simp only [A229525, Nat.add_sub_cancel]

end A229525

/-! ## A229525.P3566160805199460069

`((n+3)²+2*(n+3)-4)/gcd((n+3)²+2*(n+3)-4, 4)`
-/

namespace A229525.P3566160805199460069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) ^ 2 + 2 * (n + 3) : ℤ) - 4 : ℚ) / (Int.gcd (((n + 3) ^ 2 + 2 * (n + 3) : ℤ) - 4) 4 : ℚ)

end

end A229525.P3566160805199460069

namespace A229525

/-- `((n+3)²+2*(n+3)-4)/gcd((n+3)²+2*(n+3)-4, 4)` -/
def P3566160805199460069.Spec : Prop :=
  ∀ n, P3566160805199460069.a n = (A229525 (n + 1) : ℚ)

end A229525

/-! ## A229525.P9228742363272247109

`A144433(n+1)+A070260(n+1)`
-/

namespace A229525.P9228742363272247109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) + A070260 (n + 1)

end

end A229525.P9228742363272247109

namespace A229525

/-- `A144433(n+1)+A070260(n+1)` -/
def P9228742363272247109.Spec : Prop :=
  ∀ n, P9228742363272247109.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P3569703284617696948

`A229526(n+1)+2*A070260(n+1)`
-/

namespace A229525.P3569703284617696948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229526 (n + 1) + 2 * A070260 (n + 1)

end

end A229525.P3569703284617696948

namespace A229525

/-- `A229526(n+1)+2*A070260(n+1)` -/
def P3569703284617696948.Spec : Prop :=
  ∀ n, P3569703284617696948.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P14755540038198947918

`2*A144433(n+1)-A229526(n+1)`
-/

namespace A229525.P14755540038198947918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144433 (n + 1) - A229526 (n + 1)

end

end A229525.P14755540038198947918

namespace A229525

/-- `2*A144433(n+1)-A229526(n+1)` -/
def P14755540038198947918.Spec : Prop :=
  ∀ n, P14755540038198947918.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P2961807358510830796

`∑[A140677(n+1)+n]/A195161(n+1)`
-/

namespace A229525.P2961807358510830796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 (n + 1) + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A195161 (n + 1) : ℚ)

end

end A229525.P2961807358510830796

namespace A229525

/-- `∑[A140677(n+1)+n]/A195161(n+1)` -/
def P2961807358510830796.Spec : Prop :=
  ∀ n, P2961807358510830796.a n = (A229525 (n + 1) : ℚ)

end A229525

/-! ## A229525.P10843330594674311507

`A168077(n+1)+A229526(n+1)+A171621(n+3)`
-/

namespace A229525.P10843330594674311507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 1) + (A229526 (n + 1) + A171621 (n + 3))

end

end A229525.P10843330594674311507

namespace A229525

/-- `A168077(n+1)+A229526(n+1)+A171621(n+3)` -/
def P10843330594674311507.Spec : Prop :=
  ∀ n, P10843330594674311507.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P9264483365178535453

`A064680(n+1)+A026741(n+3)²`
-/

namespace A229525.P9264483365178535453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 1) + A026741 (n + 3) ^ 2

end

end A229525.P9264483365178535453

namespace A229525

/-- `A064680(n+1)+A026741(n+3)²` -/
def P9264483365178535453.Spec : Prop :=
  ∀ n, P9264483365178535453.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P3717307088633856925

`A168077(n+3)+A064680(n+1)`
-/

namespace A229525.P3717307088633856925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 3) + A064680 (n + 1)

end

end A229525.P3717307088633856925

namespace A229525

/-- `A168077(n+3)+A064680(n+1)` -/
def P3717307088633856925.Spec : Prop :=
  ∀ n, P3717307088633856925.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P16474914702419693226

`-A229526(n+5)`
-/

namespace A229525.P16474914702419693226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A229526 (n + 5)

end

end A229525.P16474914702419693226

namespace A229525

/-- `-A229526(n+5)` -/
def P16474914702419693226.Spec : Prop :=
  ∀ n, P16474914702419693226.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P7842296726147099807

`A142705(n+2)+A022998(A022998(n+2))`
-/

namespace A229525.P7842296726147099807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (n + 2) + A022998 (A022998 (n + 2)).toNat

end

end A229525.P7842296726147099807

namespace A229525

/-- `A142705(n+2)+A022998(A022998(n+2))` -/
def P7842296726147099807.Spec : Prop :=
  ∀ n, P7842296726147099807.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P13371182177818650918

`A144433(n+1)+A061037(2*(n+2))`
-/

namespace A229525.P13371182177818650918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) + A061037 (2 * (n + 2))

end

end A229525.P13371182177818650918

namespace A229525

/-- `A144433(n+1)+A061037(2*(n+2))` -/
def P13371182177818650918.Spec : Prop :=
  ∀ n, P13371182177818650918.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P11631796409080367510

`A000265((n+4)²-5)`
-/

namespace A229525.P11631796409080367510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 4) ^ 2 - 5)

end

end A229525.P11631796409080367510

namespace A229525

/-- `A000265((n+4)²-5)` -/
def P11631796409080367510.Spec : Prop :=
  ∀ n, P11631796409080367510.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P2648884918045658737

`A093411((n+4)²-5)`
-/

namespace A229525.P2648884918045658737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 ((n + 4) ^ 2 - 5)

end

end A229525.P2648884918045658737

namespace A229525

/-- `A093411((n+4)²-5)` -/
def P2648884918045658737.Spec : Prop :=
  ∀ n, P2648884918045658737.a n = A229525 (n + 1)

end A229525

/-!
# A229526: The c coefficients of the transform a*x^2 + (4*a/k - b)*x + 4*a/k^2 + 2*b/k + c = 0 for a,b,c = 1,-1,-1, k = 1,2,3...

The programs for A229526, the canonical program `A229526.P16544832626549431579` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229526 has offset 1).

The definition of A229526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229526.P16544832626549431579

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=5, a(1)=1, a(2)=1, a(3)=-1, a(4)=-11, a(5)=-5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229526

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P16544832626549431579.Spec : Prop :=
  ∀ n, P16544832626549431579.a n = A229526 (n + 1)

theorem P16544832626549431579.correct : P16544832626549431579.Spec := by
  intro n
  simp only [A229526, Nat.add_sub_cancel]

end A229526

/-! ## A229526.P9673726129409887220

`(5-n²)/4^(n%2)`
-/

namespace A229526.P9673726129409887220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (n ^ 2 : ℤ) : ℚ) / (4 ^ (n % 2) : ℚ)

end

end A229526.P9673726129409887220

namespace A229526

/-- `(5-n²)/4^(n%2)` -/
def P9673726129409887220.Spec : Prop :=
  ∀ n, P9673726129409887220.a n = (A229526 (n + 1) : ℚ)

end A229526

/-! ## A229526.P6429730890035019233

`(5-n²)/gcd(2, n+1)²`
-/

namespace A229526.P6429730890035019233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (n ^ 2 : ℤ) : ℚ) / (Nat.gcd 2 (n + 1) ^ 2 : ℚ)

end

end A229526.P6429730890035019233

namespace A229526

/-- `(5-n²)/gcd(2, n+1)²` -/
def P6429730890035019233.Spec : Prop :=
  ∀ n, P6429730890035019233.a n = (A229526 (n + 1) : ℚ)

end A229526

/-! ## A229526.P1787934378958494825

`(5-n²)/A000034(n)²`
-/

namespace A229526.P1787934378958494825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (n ^ 2 : ℤ) : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A229526.P1787934378958494825

namespace A229526

/-- `(5-n²)/A000034(n)²` -/
def P1787934378958494825.Spec : Prop :=
  ∀ n, P1787934378958494825.a n = (A229526 (n + 1) : ℚ)

end A229526

/-! ## A229526.P4095422027797099960

`A144433(n+1)-A070260(n+1)`
-/

namespace A229526.P4095422027797099960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) - A070260 (n + 1)

end

end A229526.P4095422027797099960

namespace A229526

/-- `A144433(n+1)-A070260(n+1)` -/
def P4095422027797099960.Spec : Prop :=
  ∀ n, P4095422027797099960.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P4479689547199350728

`2*A144433(n+1)-A229525(n+1)`
-/

namespace A229526.P4479689547199350728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144433 (n + 1) - A229525 (n + 1)

end

end A229526.P4479689547199350728

namespace A229526

/-- `2*A144433(n+1)-A229525(n+1)` -/
def P4479689547199350728.Spec : Prop :=
  ∀ n, P4479689547199350728.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P17908885250323142043

`A229525(n+1)-(A171621(n+3)+A168077(n+1))`
-/

namespace A229526.P17908885250323142043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229525 (n + 1) - (A171621 (n + 3) + A168077 (n + 1))

end

end A229526.P17908885250323142043

namespace A229526

/-- `A229525(n+1)-(A171621(n+3)+A168077(n+1))` -/
def P17908885250323142043.Spec : Prop :=
  ∀ n, P17908885250323142043.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P11323877070641376664

`A064680(n+3)-A168077(n+1)`
-/

namespace A229526.P11323877070641376664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 3) - A168077 (n + 1)

end

end A229526.P11323877070641376664

namespace A229526

/-- `A064680(n+3)-A168077(n+1)` -/
def P11323877070641376664.Spec : Prop :=
  ∀ n, P11323877070641376664.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P5025478290077350882

`A064680(n+3)-A026741(n+1)²`
-/

namespace A229526.P5025478290077350882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 3) - A026741 (n + 1) ^ 2

end

end A229526.P5025478290077350882

namespace A229526

/-- `A064680(n+3)-A026741(n+1)²` -/
def P5025478290077350882.Spec : Prop :=
  ∀ n, P5025478290077350882.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P7114577422097917089

`(5-n²)/A177499(2*n)`
-/

namespace A229526.P7114577422097917089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (n ^ 2 : ℤ) : ℚ) / (A177499 (2 * n) : ℚ)

end

end A229526.P7114577422097917089

namespace A229526

/-- `(5-n²)/A177499(2*n)` -/
def P7114577422097917089.Spec : Prop :=
  ∀ n, P7114577422097917089.a n = (A229526 (n + 1) : ℚ)

end A229526

/-! ## A229526.P12452648983902217960

`A010685(n+1)-A214630(2*n)`
-/

namespace A229526.P12452648983902217960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (n + 1) - A214630 (2 * n)

end

end A229526.P12452648983902217960

namespace A229526

/-- `A010685(n+1)-A214630(2*n)` -/
def P12452648983902217960.Spec : Prop :=
  ∀ n, P12452648983902217960.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P17056964864799478426

`A040005(n+2)-A214630(2*n)`
-/

namespace A229526.P17056964864799478426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (n + 2) - A214630 (2 * n)

end

end A229526.P17056964864799478426

namespace A229526

/-- `A040005(n+2)-A214630(2*n)` -/
def P17056964864799478426.Spec : Prop :=
  ∀ n, P17056964864799478426.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P12058298672929630945

`A022998(A022998(n+2))-A070260(n+1)`
-/

namespace A229526.P12058298672929630945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A022998 (n + 2)).toNat - A070260 (n + 1)

end

end A229526.P12058298672929630945

namespace A229526

/-- `A022998(A022998(n+2))-A070260(n+1)` -/
def P12058298672929630945.Spec : Prop :=
  ∀ n, P12058298672929630945.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P6313932689729002584

`A022998(A022998(n+2))-A142705(n+2)`
-/

namespace A229526.P6313932689729002584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A022998 (n + 2)).toNat - A142705 (n + 2)

end

end A229526.P6313932689729002584

namespace A229526

/-- `A022998(A022998(n+2))-A142705(n+2)` -/
def P6313932689729002584.Spec : Prop :=
  ∀ n, P6313932689729002584.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P1214320011218847166

`A064680(n+3)-A181318(A145979(2*n))`
-/

namespace A229526.P1214320011218847166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 3) - A181318 (A145979 (2 * n)).toNat

end

end A229526.P1214320011218847166

namespace A229526

/-- `A064680(n+3)-A181318(A145979(2*n))` -/
def P1214320011218847166.Spec : Prop :=
  ∀ n, P1214320011218847166.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P13107399959966415848

`A109008(A283971(2*n))-A214630(2*n)`
-/

namespace A229526.P13107399959966415848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109008 (A283971 (2 * n)).toNat - A214630 (2 * n)

end

end A229526.P13107399959966415848

namespace A229526

/-- `A109008(A283971(2*n))-A214630(2*n)` -/
def P13107399959966415848.Spec : Prop :=
  ∀ n, P13107399959966415848.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P14371383967577090935

`A000034(n+1)²-A247829(A249693(2*n))`
-/

namespace A229526.P14371383967577090935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2 - A247829 (A249693 (2 * n)).toNat

end

end A229526.P14371383967577090935

namespace A229526

/-- `A000034(n+1)²-A247829(A249693(2*n))` -/
def P14371383967577090935.Spec : Prop :=
  ∀ n, P14371383967577090935.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P3208076722042940086

`A144433(n+1)-A061037(2*(n+2))`
-/

namespace A229526.P3208076722042940086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) - A061037 (2 * (n + 2))

end

end A229526.P3208076722042940086

namespace A229526

/-- `A144433(n+1)-A061037(2*(n+2))` -/
def P3208076722042940086.Spec : Prop :=
  ∀ n, P3208076722042940086.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P9370318452324140118

`A010132(n²+2)-A214630(2*n)`
-/

namespace A229526.P9370318452324140118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 (n ^ 2 + 2) - A214630 (2 * n)

end

end A229526.P9370318452324140118

namespace A229526

/-- `A010132(n²+2)-A214630(2*n)` -/
def P9370318452324140118.Spec : Prop :=
  ∀ n, P9370318452324140118.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P8690290050921061146

`A109008(n²)-A214630(2*n)`
-/

namespace A229526.P8690290050921061146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109008 (n ^ 2) - A214630 (2 * n)

end

end A229526.P8690290050921061146

namespace A229526

/-- `A109008(n²)-A214630(2*n)` -/
def P8690290050921061146.Spec : Prop :=
  ∀ n, P8690290050921061146.a n = A229526 (n + 1)

end A229526

/-!
# A229527: Start with 1, skip (sum of digits of n) numbers, accept next number.

The programs for A229527, the canonical program `A229527.P13631613153917723795` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229527 has offset 1).

The definition of A229527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229527.P13631613153917723795

`A062028(a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229527

/-- `A062028(a(n-1))+1` -/
def P13631613153917723795.Spec : Prop :=
  ∀ n, P13631613153917723795.a n = A229527 (n + 1)

theorem P13631613153917723795.correct : P13631613153917723795.Spec := by
  intro n
  simp only [A229527, Nat.add_sub_cancel]

end A229527

/-! ## A229527.P16117236737971723257

`A160939(a(n-1)+1)` with `a(0)=1`
-/

namespace A229527.P16117236737971723257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160939 (a (n - 1) + 1).toNat

end

end A229527.P16117236737971723257

namespace A229527

/-- `A160939(a(n-1)+1)` -/
def P16117236737971723257.Spec : Prop :=
  ∀ n, P16117236737971723257.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P4796055695243774628

`a(n-1)+A007953(a(n-1))+1` with `a(0)=1`
-/

namespace A229527.P4796055695243774628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007953 (a (n - 1)).toNat + 1)

end

end A229527.P4796055695243774628

namespace A229527

/-- `a(n-1)+A007953(a(n-1))+1` -/
def P4796055695243774628.Spec : Prop :=
  ∀ n, P4796055695243774628.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P6273948527816897985

`a(n-1)+A057147(a(n-1))/a(n-1)+1` with `a(0)=1`
-/

namespace A229527.P6273948527816897985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A057147 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / a (n - 1) + 1

end

end A229527.P6273948527816897985

namespace A229527

/-- `a(n-1)+A057147(a(n-1))/a(n-1)+1` -/
def P6273948527816897985.Spec : Prop :=
  ∀ n, P6273948527816897985.a n = (A229527 (n + 1) : ℚ)

end A229527

/-! ## A229527.P15601991037578930060

`A160939(1-A001489(a(n-1)))` with `a(0)=1`
-/

namespace A229527.P15601991037578930060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160939 (1 - A001489 (a (n - 1)).toNat).toNat

end

end A229527.P15601991037578930060

namespace A229527

/-- `A160939(1-A001489(a(n-1)))` -/
def P15601991037578930060.Spec : Prop :=
  ∀ n, P15601991037578930060.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P18360887323017916360

`A008619(2*A062028(a(n-1)))` with `a(0)=1`
-/

namespace A229527.P18360887323017916360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008619 (2 * A062028 (a (n - 1)).toNat).toNat

end

end A229527.P18360887323017916360

namespace A229527

/-- `A008619(2*A062028(a(n-1)))` -/
def P18360887323017916360.Spec : Prop :=
  ∀ n, P18360887323017916360.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P9590346431364981127

`A004155(5*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A229527.P9590346431364981127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004155 (5 * a (n - 1)).toNat + a (n - 1)

end

end A229527.P9590346431364981127

namespace A229527

/-- `A004155(5*a(n-1))+a(n-1)` -/
def P9590346431364981127.Spec : Prop :=
  ∀ n, P9590346431364981127.a n = A229527 (n + 1)

end A229527

/-!
# A229528: Number of defective 3-colorings of an n X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229528, there is no canonical definition to state claims against.
-/

/-! ## A229528.P12030225266270654778

`A269029(n+1)/6`
-/

namespace A229528.P12030225266270654778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269029 (n + 1) : ℚ) / 6

end

end A229528.P12030225266270654778

/-! ## A229528.P8214617003718165406

`A229534(∑[4*n]+1)`
-/

namespace A229528.P8214617003718165406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229528.P8214617003718165406

/-! ## A229528.P2430633098690230201

`lcm(2, A229534(A001844(n)))`
-/

namespace A229528.P2430633098690230201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229534 (A001844 n).toNat)

end

end A229528.P2430633098690230201

/-! ## A229528.P11341120649438900155

`A269035(record[A330613(n+1)])/6`
-/

namespace A229528.P11341120649438900155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 6

end

end A229528.P11341120649438900155

/-! ## A229528.P1692708468015876247

`record[A003982(n)*A229534(n+1)]`
-/

namespace A229528.P1692708468015876247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229528.P1692708468015876247

/-!
# A229529: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229529, there is no canonical definition to state claims against.
-/

/-! ## A229529.P4055479069572221453

`A269030(n+1)/6`
-/

namespace A229529.P4055479069572221453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269030 (n + 1) : ℚ) / 6

end

end A229529.P4055479069572221453

/-! ## A229529.P6160327342175835341

`A229534(∑[n+3]+1)`
-/

namespace A229529.P6160327342175835341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229529.P6160327342175835341

/-! ## A229529.P14088811114180333557

`A269035(∑[n+3]+1)/6`
-/

namespace A229529.P14088811114180333557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 6

end

end A229529.P14088811114180333557

/-! ## A229529.P10792631229497273503

`lcm(2, A229534(A034856(n+2)))`
-/

namespace A229529.P10792631229497273503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229534 (A034856 (n + 2)).toNat)

end

end A229529.P10792631229497273503

/-! ## A229529.P10815935406629373904

`A229534(A055999(n)+4)+and(n, -(n+1))`
-/

namespace A229529.P10815935406629373904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A055999 n + 4).toNat + Int.land (n : ℤ) (-(n + 1 : ℤ))

end

end A229529.P10815935406629373904

/-!
# A229530: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229530, there is no canonical definition to state claims against.
-/

/-! ## A229530.P17614569251647918454

`A269031(n+1)/6`
-/

namespace A229530.P17614569251647918454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269031 (n + 1) : ℚ) / 6

end

end A229530.P17614569251647918454

/-! ## A229530.P5667070551595699748

`(A269048(n+1)-A223373(n+1))/6`
-/

namespace A229530.P5667070551595699748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269048 (n + 1) - A223373 (n + 1) : ℚ) / 6

end

end A229530.P5667070551595699748

/-! ## A229530.P6721963769901230134

`A229534(∑[n+4]+3)`
-/

namespace A229530.P6721963769901230134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A229530.P6721963769901230134

/-! ## A229530.P3974793601451906120

`A269035(A141214(n+1))/6`
-/

namespace A229530.P3974793601451906120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (A141214 (n + 1)).toNat : ℚ) / 6

end

end A229530.P3974793601451906120

/-! ## A229530.P4667772020202625968

`A269035(A055998(n+2))/6`
-/

namespace A229530.P4667772020202625968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (A055998 (n + 2)).toNat : ℚ) / 6

end

end A229530.P4667772020202625968

/-!
# A229531: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229531, there is no canonical definition to state claims against.
-/

/-! ## A229531.P7661882318120882772

`A269032(n+1)/6`
-/

namespace A229531.P7661882318120882772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269032 (n + 1) : ℚ) / 6

end

end A229531.P7661882318120882772

/-! ## A229531.P16217752059135710450

`A229534(A046691(n+3))`
-/

namespace A229531.P16217752059135710450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A046691 (n + 3)).toNat

end

end A229531.P16217752059135710450

/-! ## A229531.P14687155912031079669

`A229534(A056115(n)+11)`
-/

namespace A229531.P14687155912031079669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A056115 n + 11).toNat

end

end A229531.P14687155912031079669

/-! ## A229531.P17676074899265339583

`A229534(Δ[A023545(n+1)])`
-/

namespace A229531.P17676074899265339583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (f1 (n + 1) - f1 n).toNat

end

end A229531.P17676074899265339583

/-! ## A229531.P6261316504602655445

`A269035(A056115(n)+11)/6`
-/

namespace A229531.P6261316504602655445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (A056115 n + 11).toNat : ℚ) / 6

end

end A229531.P6261316504602655445

/-!
# A229532: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229532, there is no canonical definition to state claims against.
-/

/-! ## A229532.P16156729415883706515

`A269033(n+1)/6`
-/

namespace A229532.P16156729415883706515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269033 (n + 1) : ℚ) / 6

end

end A229532.P16156729415883706515

/-! ## A229532.P3905831322156351710

`A229534(A052905(n+3))`
-/

namespace A229532.P3905831322156351710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A052905 (n + 3)).toNat

end

end A229532.P3905831322156351710

/-! ## A229532.P6949686663643845802

`A229534(eq[3, A219347(n)])`
-/

namespace A229532.P6949686663643845802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229532.P6949686663643845802

/-! ## A229532.P8344052072860621030

`A229534(eq[5, A193592(n)])`
-/

namespace A229532.P8344052072860621030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229532.P8344052072860621030

/-! ## A229532.P1641280868330684120

`A229534(A000124(n+6)-6)`
-/

namespace A229532.P1641280868330684120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A000124 (n + 6) - 6).toNat

end

end A229532.P1641280868330684120

/-!
# A229533: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229533, there is no canonical definition to state claims against.
-/

/-! ## A229533.P7154025571135900174

`A269034(n+1)/6`
-/

namespace A229533.P7154025571135900174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269034 (n + 1) : ℚ) / 6

end

end A229533.P7154025571135900174

/-! ## A229533.P5230259126793610910

`A229534(A055999(n+4))`
-/

namespace A229533.P5230259126793610910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A055999 (n + 4)).toNat

end

end A229533.P5230259126793610910

/-! ## A229533.P13374920898029910856

`A229534(eq[4, A219347(n)])`
-/

namespace A229533.P13374920898029910856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229533.P13374920898029910856

/-! ## A229533.P14611534116747710108

`A229534(eq[6, A193592(n)])`
-/

namespace A229533.P14611534116747710108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229533.P14611534116747710108

/-! ## A229533.P89434567196178239

`A229534(eq[7, A200370(n+1)])`
-/

namespace A229533.P89434567196178239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229533.P89434567196178239

/-!
# A229534: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229534, there is no canonical definition to state claims against.
-/

/-! ## A229534.P16958657730591977758

`ceil(A269035(n+1)/6)`
-/

namespace A229534.P16958657730591977758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269035 (n + 1) : ℚ) / 6⌉

end

end A229534.P16958657730591977758

/-! ## A229534.P9632705372472601973

`round(A269035(n+1)/A040006(n))`
-/

namespace A229534.P9632705372472601973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A269035 (n + 1) : ℚ) / (A040006 n : ℚ))

end

end A229534.P9632705372472601973

/-! ## A229534.P8193442485499182686

`A269035(n+1)/A267884(or(1, n))`
-/

namespace A229534.P8193442485499182686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (A267884 (Nat.lor 1 n) : ℚ)

end

end A229534.P8193442485499182686

/-! ## A229534.P9058198395284151675

`A269035(n+1)/gcd(6, A268639(n+1))`
-/

namespace A229534.P9058198395284151675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (Int.gcd 6 (A268639 (n + 1)) : ℚ)

end

end A229534.P9058198395284151675

/-! ## A229534.P15450150143365343766

`A269035(n+1)/A267884(A028242(3*n))`
-/

namespace A229534.P15450150143365343766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (A267884 (A028242 (3 * n)).toNat : ℚ)

end

end A229534.P15450150143365343766

/-! ## A229534.P9477782459575668785

`A269035(n+1)/A267884(A028242(n)+n)`
-/

namespace A229534.P9477782459575668785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (A267884 (A028242 n + (n : ℤ)).toNat : ℚ)

end

end A229534.P9477782459575668785

/-! ## A229534.P6196672837841766190

`A269035(n+1)/gcd(A232920(n+1), A267884(n))`
-/

namespace A229534.P6196672837841766190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (Int.gcd (A232920 (n + 1)) (A267884 n) : ℚ)

end

end A229534.P6196672837841766190

/-! ## A229534.P15340469063554811554

`A269035(n+1)/gcd(6, A167667(n))`
-/

namespace A229534.P15340469063554811554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (Int.gcd 6 (A167667 n) : ℚ)

end

end A229534.P15340469063554811554

/-! ## A229534.P5353117216297474753

`A269035(n+1)/A267884(∑[A028242(n)])`
-/

namespace A229534.P5353117216297474753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (A267884 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A229534.P5353117216297474753

/-!
# A229535: Number of defective 3-colorings of a 2 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229535, the canonical program `A229535.P332292831322738453` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229535 has offset 1).

The definition of A229535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229535.P332292831322738453

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=4, a(2)=8, a(3)=36`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229535

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P332292831322738453.Spec : Prop :=
  ∀ n, P332292831322738453.a n = A229535 (n + 1)

theorem P332292831322738453.correct : P332292831322738453.Spec := by
  intro n
  simp only [A229535, Nat.add_sub_cancel]

end A229535

/-! ## A229535.P15108139448932232102

`Δ[n*A293007(n)]`
-/

namespace A229535.P15108139448932232102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P15108139448932232102

namespace A229535

/-- `Δ[n*A293007(n)]` -/
def P15108139448932232102.Spec : Prop :=
  ∀ n, P15108139448932232102.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P5556526418149832746

`Δ[n*A028860(n+1)]`
-/

namespace A229535.P5556526418149832746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P5556526418149832746

namespace A229535

/-- `Δ[n*A028860(n+1)]` -/
def P5556526418149832746.Spec : Prop :=
  ∀ n, P5556526418149832746.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P3467773958113585609

`Δ[n*(A026150(n)-A002605(n))]`
-/

namespace A229535.P3467773958113585609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A026150 n - A002605 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P3467773958113585609

namespace A229535

/-- `Δ[n*(A026150(n)-A002605(n))]` -/
def P3467773958113585609.Spec : Prop :=
  ∀ n, P3467773958113585609.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P9216549477775752926

`Δ[n*(A002605(n)-A028860(n))]`
-/

namespace A229535.P9216549477775752926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002605 n - A028860 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P9216549477775752926

namespace A229535

/-- `Δ[n*(A002605(n)-A028860(n))]` -/
def P9216549477775752926.Spec : Prop :=
  ∀ n, P9216549477775752926.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P10352397634716051913

`Δ[n*(A028859(n)-A083337(n))]`
-/

namespace A229535.P10352397634716051913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028859 n - A083337 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P10352397634716051913

namespace A229535

/-- `Δ[n*(A028859(n)-A083337(n))]` -/
def P10352397634716051913.Spec : Prop :=
  ∀ n, P10352397634716051913.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P7859145804984459825

`A269036(n+1)/6`
-/

namespace A229535.P7859145804984459825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269036 (n + 1) : ℚ) / 6

end

end A229535.P7859145804984459825

namespace A229535

/-- `A269036(n+1)/6` -/
def P7859145804984459825.Spec : Prop :=
  ∀ n, P7859145804984459825.a n = (A229535 (n + 1) : ℚ)

end A229535

/-!
# A229536: Number of defective 3-colorings of a 3 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229536, there is no canonical definition to state claims against.
-/

/-! ## A229536.P12280701854761783061

`A269037(n+1)/6`
-/

namespace A229536.P12280701854761783061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269037 (n + 1) : ℚ) / 6

end

end A229536.P12280701854761783061

/-! ## A229536.P7936131470297263873

`A229534(∑[n+2]+4)`
-/

namespace A229536.P7936131470297263873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229536.P7936131470297263873

/-! ## A229536.P7725898433637437703

`A269035(∑[n+2]+4)/6`
-/

namespace A229536.P7725898433637437703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / 6

end

end A229536.P7725898433637437703

/-! ## A229536.P9354467848716663621

`A229534(A167614(n+1))+A011741(n)`
-/

namespace A229536.P9354467848716663621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A167614 (n + 1)).toNat + A011741 n

end

end A229536.P9354467848716663621

/-! ## A229536.P8957487627669671634

`A229534(A167614(n+1))+A025469(n)`
-/

namespace A229536.P8957487627669671634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A167614 (n + 1)).toNat + A025469 n

end

end A229536.P8957487627669671634

/-!
# A229537: Number of defective 3-colorings of a 4 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229537, there is no canonical definition to state claims against.
-/

/-! ## A229537.P5042820523271594063

`A269038(n+1)/6`
-/

namespace A229537.P5042820523271594063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269038 (n + 1) : ℚ) / 6

end

end A229537.P5042820523271594063

/-! ## A229537.P8947749317232905578

`A229534(A141214(n)+7)`
-/

namespace A229537.P8947749317232905578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A141214 n + 7).toNat

end

end A229537.P8947749317232905578

/-! ## A229537.P10789259863251623937

`A229534(A052905(n)+9)`
-/

namespace A229537.P10789259863251623937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A052905 n + 9).toNat

end

end A229537.P10789259863251623937

/-! ## A229537.P660282155386982734

`A229534(A055999(n)+10)`
-/

namespace A229537.P660282155386982734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A055999 n + 10).toNat

end

end A229537.P660282155386982734

/-! ## A229537.P9786790823282551875

`A229534(Δ[A008778(n)]+6)`
-/

namespace A229537.P9786790823282551875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (f1 (n + 1) - f1 n + 6).toNat

end

end A229537.P9786790823282551875

/-!
# A229538: Number of defective 3-colorings of a 5 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229538, there is no canonical definition to state claims against.
-/

/-! ## A229538.P8650691361729327101

`A269039(n+1)/6`
-/

namespace A229538.P8650691361729327101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269039 (n + 1) : ℚ) / 6

end

end A229538.P8650691361729327101

/-! ## A229538.P16122341772797291699

`A229534(A155212(n)+13)`
-/

namespace A229538.P16122341772797291699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A155212 n + 13).toNat

end

end A229538.P16122341772797291699

/-! ## A229538.P11105383537791183145

`A229534(A056000(n)+15)`
-/

namespace A229538.P11105383537791183145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A056000 n + 15).toNat

end

end A229538.P11105383537791183145

/-! ## A229538.P14256392110635280959

`A229534(eq[7, A066657(n)])`
-/

namespace A229538.P14256392110635280959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229538.P14256392110635280959

/-! ## A229538.P18379027302762993536

`A229534(eq[6, A131818(n+1)])`
-/

namespace A229538.P18379027302762993536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229538.P18379027302762993536

/-!
# A229539: Number of defective 3-colorings of a 6 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229539, there is no canonical definition to state claims against.
-/

/-! ## A229539.P11575406802772802994

`A269040(n+1)/6`
-/

namespace A229539.P11575406802772802994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269040 (n + 1) : ℚ) / 6

end

end A229539.P11575406802772802994

/-! ## A229539.P13211255715806091134

`(A269057(n+1)-A232925(n+1))/6`
-/

namespace A229539.P13211255715806091134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269057 (n + 1) - A232925 (n + 1) : ℚ) / 6

end

end A229539.P13211255715806091134

/-! ## A229539.P1924075555671164607

`A229534(A166136(n+4))`
-/

namespace A229539.P1924075555671164607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A166136 (n + 4)).toNat

end

end A229539.P1924075555671164607

/-! ## A229539.P7710046349794978099

`A229534(A056115(n)+21)`
-/

namespace A229539.P7710046349794978099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A056115 n + 21).toNat

end

end A229539.P7710046349794978099

/-! ## A229539.P6733974445396940843

`A229534(A167499(n+4)+1)`
-/

namespace A229539.P6733974445396940843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A167499 (n + 4) + 1).toNat

end

end A229539.P6733974445396940843

/-!
# A229540: Number of defective 3-colorings of a 7 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229540, there is no canonical definition to state claims against.
-/

/-! ## A229540.P7715582617357691786

`A269041(n+1)/6`
-/

namespace A229540.P7715582617357691786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269041 (n + 1) : ℚ) / 6

end

end A229540.P7715582617357691786

/-! ## A229540.P16810595745518971515

`(A269058(n+1)-A232926(n+1))/6`
-/

namespace A229540.P16810595745518971515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269058 (n + 1) - A232926 (n + 1) : ℚ) / 6

end

end A229540.P16810595745518971515

/-! ## A229540.P9254316241375428367

`A229534(A167487(n+5))`
-/

namespace A229540.P9254316241375428367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A167487 (n + 5)).toNat

end

end A229540.P9254316241375428367

/-! ## A229540.P5358651227072975832

`A229534(eq[11, A066657(n)])`
-/

namespace A229540.P5358651227072975832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229540.P5358651227072975832

/-! ## A229540.P1212067952195022356

`A229534(eq[8, A131818(n+1)])`
-/

namespace A229540.P1212067952195022356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229540.P1212067952195022356

/-!
# A229541: Number T(n,k) of partitions of n^2 into squares with each number of parts k; irregular triangle T(n,k), 1 <= k <= n^2.

The programs for A229541, there is no canonical definition to state claims against.
-/

/-! ## A229541.P15266842775862203088

`A226912(n+1)^A049541(A244136(n))`
-/

namespace A229541.P15266842775862203088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226912 (n + 1) : ℚ) ^ (A049541 (A244136 n).toNat : ℤ)

end

end A229541.P15266842775862203088

/-! ## A229541.P14905704435377325549

`A047594(A020600(n+1))%2`
-/

namespace A229541.P14905704435377325549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047594 (A020600 (n + 1)).toNat) 2

end

end A229541.P14905704435377325549

/-! ## A229541.P2224514367950463061

`and(A047594(A020600(n+1)), A177849(n))`
-/

namespace A229541.P2224514367950463061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047594 (A020600 (n + 1)).toNat) (A177849 n)

end

end A229541.P2224514367950463061

/-! ## A229541.P5336805712966717690

`and(1, A090288(n)+A047594(A020600(n+1)))`
-/

namespace A229541.P5336805712966717690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A090288 n + A047594 (A020600 (n + 1)).toNat)

end

end A229541.P5336805712966717690

/-!
# A229545: Numbers n such that n + (sum of digits of n) is a palindrome.

The programs for A229545, there is no canonical definition to state claims against.
-/

/-! ## A229545.P5785773652850587769

`eq[0, A261424(A062028(n))]`
-/

namespace A229545.P5785773652850587769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229545.P5785773652850587769

/-! ## A229545.P4264038981754093378

`eq[A062028(n), A261914(A062028(n)+1)]`
-/

namespace A229545.P4264038981754093378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A062028 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P4264038981754093378

/-! ## A229545.P4857793624304099028

`eq[A261914(A160939(n+1))+1, A160939(n+1)]`
-/

namespace A229545.P4857793624304099028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A160939 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P4857793624304099028

/-! ## A229545.P3934322107058767273

`lt[A256756(A007953(n)+n), 1]`
-/

namespace A229545.P3934322107058767273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A007953 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229545.P3934322107058767273

/-! ## A229545.P15537776502897738699

`eq[A050782(A062028(n)), A057427(n)]`
-/

namespace A229545.P15537776502897738699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P15537776502897738699

/-! ## A229545.P16876839855848269835

`lt[A082216(A062028(n)), A008458(n)]`
-/

namespace A229545.P16876839855848269835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P16876839855848269835

/-! ## A229545.P833055869232362467

`record[A047813(A062028(n))-A007953(n)]`
-/

namespace A229545.P833055869232362467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A062028 n).toNat - A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229545.P833055869232362467

/-! ## A229545.P4395651435542401872

`lt[A082216(A062028(n)), A054684(n+1)]`
-/

namespace A229545.P4395651435542401872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P4395651435542401872

/-! ## A229545.P2194773424058748171

`lt[A082216(A062028(n)), A094677(n+1)]`
-/

namespace A229545.P2194773424058748171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P2194773424058748171

/-! ## A229545.P9726697713530295990

`lt[A082216(A062028(n)), A179085(n+1)]`
-/

namespace A229545.P9726697713530295990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P9726697713530295990

/-! ## A229545.P5280779529455493540

`eq[A019426(2*n), A050782(A062028(n))]`
-/

namespace A229545.P5280779529455493540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P5280779529455493540

/-! ## A229545.P1044432667114606386

`eq[n*A000007(n), A056965(A062028(n))]`
-/

namespace A229545.P1044432667114606386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P1044432667114606386

/-! ## A229545.P7349995158292600309

`lt[A082216(A062028(n)), A062028(2*n+1)]`
-/

namespace A229545.P7349995158292600309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P7349995158292600309

/-!
# A229546: Numbers n such that n + product_of_digits(n) is a palindrome.

The programs for A229546, there is no canonical definition to state claims against.
-/

/-! ## A229546.P12848691818348959498

`eq[A007954(n)+n, A004086(A007954(n)+n)]`
-/

namespace A229546.P12848691818348959498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229546.P12848691818348959498

/-! ## A229546.P15583484725267095097

`eq[A050782(A230099(n)), A057427(n)]`
-/

namespace A229546.P15583484725267095097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229546.P15583484725267095097

/-! ## A229546.P8147971638191616686

`record[A047813(A230099(n))-A007954(n)]`
-/

namespace A229546.P8147971638191616686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A230099 n).toNat - A007954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229546.P8147971638191616686

/-! ## A229546.P11139818390193950145

`eq[A000035(2*n), A241173(A230099(n))]`
-/

namespace A229546.P11139818390193950145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229546.P11139818390193950145

/-!
# A229547: Numbers n such that n - product_of_digits(n) is a palindrome.

The programs for A229547, there is no canonical definition to state claims against.
-/

/-! ## A229547.P13998385846224400024

`eq[A004086(A070565(n)), A070565(n)]`
-/

namespace A229547.P13998385846224400024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229547.P13998385846224400024

/-! ## A229547.P8047125328915212277

`eq[n-∏{digits}[n, #], A033865(n-∏{digits}[n, #])]`
-/

namespace A229547.P8047125328915212277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (n - ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A229547.P8047125328915212277

/-! ## A229547.P10311432924170265644

`eq[A337227(A007954(n)), A337227(n)]`
-/

namespace A229547.P10311432924170265644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337227 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337227 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229547.P10311432924170265644

/-! ## A229547.P1369849094000689849

`eq[A053392(A116608(n+1)), A053392(n)]`
-/

namespace A229547.P1369849094000689849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A116608 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229547.P1369849094000689849

/-! ## A229547.P9984811218508341367

`record[gcd(n, A259046(n))]`
-/

namespace A229547.P9984811218508341367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A259046 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229547.P9984811218508341367

/-!
# A229548: E.g.f. satisfies: A(x) = x + A'(x) * Integral A(x) dx.

The programs for A229548, there is no canonical definition to state claims against.
-/

/-! ## A229548.P6778709135408044461

`A184359(n)+A025463(A184361(n))`
-/

namespace A229548.P6778709135408044461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184359 n + A025463 (A184361 n).toNat

end

end A229548.P6778709135408044461

/-! ## A229548.P8658618435752151063

`A260432(A121413(n)-A230040(n+1))`
-/

namespace A229548.P8658618435752151063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (A121413 n - A230040 (n + 1)).toNat

end

end A229548.P8658618435752151063

/-!
# A229549: Numbers k such that k*(sum of digits of k) is a palindrome.

The programs for A229549, there is no canonical definition to state claims against.
-/

/-! ## A229549.P13783960779252687079

`eq[A004086(A057147(n)), A057147(n)]`
-/

namespace A229549.P13783960779252687079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229549.P13783960779252687079

/-! ## A229549.P8823679936076060571

`eq[0, A261424(A057147(n))]`
-/

namespace A229549.P8823679936076060571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A057147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229549.P8823679936076060571

/-! ## A229549.P4351903441805922406

`lt[A261424(A057147(n)), A054977(n)]`
-/

namespace A229549.P4351903441805922406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229549.P4351903441805922406

/-! ## A229549.P3601835619069227461

`eq[1, A136522(n*A007953(n))]`
-/

namespace A229549.P3601835619069227461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 ((n : ℤ) * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229549.P3601835619069227461

/-! ## A229549.P4980645804214010789

`lt[A256756(n*A007953(n)), 1]`
-/

namespace A229549.P4980645804214010789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 ((n : ℤ) * A007953 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229549.P4980645804214010789

/-!
# A229550: Numbers n with nonzero digits such that n*(product of digits of n) is a palindrome.

The programs for A229550, there is no canonical definition to state claims against.
-/

/-! ## A229550.P13468948483676265145

`eq[1, A050782(A098736(n))]`
-/

namespace A229550.P13468948483676265145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A098736 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229550.P13468948483676265145

/-! ## A229550.P107912232184915336

`eq[A052036(A098736(n)), A055641(n)]`
-/

namespace A229550.P107912232184915336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 (A098736 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229550.P107912232184915336

/-! ## A229550.P17961430622237013300

`eq[A055641(n), A056965(A230101(n))]`
-/

namespace A229550.P17961430622237013300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229550.P17961430622237013300

/-!
# A229551: Number of 1 up, 1 down, 2 up, 2 down, ... permutations of [n].

The programs for A229551, there is no canonical definition to state claims against.
-/

/-! ## A229551.P2732990277161857086

`A004396(A284009(n!))`
-/

namespace A229551.P2732990277161857086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A284009 (Nat.factorial n)).toNat

end

end A229551.P2732990277161857086

/-! ## A229551.P178464420542175056

`A225636(n)+A097203(A001003(n))`
-/

namespace A229551.P178464420542175056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225636 n + A097203 (A001003 n).toNat

end

end A229551.P178464420542175056

/-! ## A229551.P5925568144694382724

`A368795(A002628(n))+A048720(n)`
-/

namespace A229551.P5925568144694382724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368795 (A002628 n).toNat + A048720 n

end

end A229551.P5925568144694382724

/-! ## A229551.P9136572506021872316

`A340764(A337075(n))+A325032(n+1)`
-/

namespace A229551.P9136572506021872316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A337075 n).toNat + A325032 (n + 1)

end

end A229551.P9136572506021872316

/-!
# A229552: Numbers k such that phi(k) = phi(k+2) - phi(k+1).

The programs for A229552, there is no canonical definition to state claims against.
-/

/-! ## A229552.P131651528149367970

`A065557(n+1)-2`
-/

namespace A229552.P131651528149367970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065557 (n + 1) - 2

end

end A229552.P131651528149367970

/-! ## A229552.P7677654213060491928

`A113679(n+2)+A065557(n+1)`
-/

namespace A229552.P7677654213060491928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (n + 2) + A065557 (n + 1)

end

end A229552.P7677654213060491928

/-! ## A229552.P1712969034506768590

`A181877(gcd(n, n+1))+A065557(n+1)`
-/

namespace A229552.P1712969034506768590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181877 (Nat.gcd n (n + 1)) + A065557 (n + 1)

end

end A229552.P1712969034506768590

/-! ## A229552.P11128613545667092989

`A280560(A131843(n))+A065557(n+1)`
-/

namespace A229552.P11128613545667092989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A131843 n).toNat + A065557 (n + 1)

end

end A229552.P11128613545667092989

/-! ## A229552.P5839720361263908405

`A355837(A001132(n+1))+A065557(n+1)`
-/

namespace A229552.P5839720361263908405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355837 (A001132 (n + 1)).toNat + A065557 (n + 1)

end

end A229552.P5839720361263908405

/-! ## A229552.P424273591556863717

`-A000040(n+2)%2+A065557(n+1)+-A000040(n+2)%2`
-/

namespace A229552.P424273591556863717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A000040 (n + 2)) 2 + (A065557 (n + 1) + Int.tmod (-A000040 (n + 2)) 2)

end

end A229552.P424273591556863717

/-! ## A229552.P13971682477527126252

`A076529(n+1)-1`
-/

namespace A229552.P13971682477527126252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076529 (n + 1) - 1

end

end A229552.P13971682477527126252

/-! ## A229552.P7109547865377506824

`abs(1-A076529(Δ[n²]-n))`
-/

namespace A229552.P7109547865377506824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A076529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A229552.P7109547865377506824

/-! ## A229552.P12881741605018917141

`record[A076529(A152271(n))-1]`
-/

namespace A229552.P12881741605018917141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076529 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229552.P12881741605018917141

/-! ## A229552.P4187732210086715524

`A325142(A112316(n))+A076529(n+1)`
-/

namespace A229552.P4187732210086715524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A112316 n).toNat + A076529 (n + 1)

end

end A229552.P4187732210086715524

/-!
# A229554: a(n) = 7*n! + 1.

The programs for A229554, the canonical program `A229554.P11068478950048054241` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229554 has offset 0).

The definition of A229554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n!+1` (program `A229554.P11068478950048054241`, by `A229554.P11068478950048054241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229554.P11068478950048054241

`7*n!+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229554

/-- `7*n!+1` -/
def P11068478950048054241.Spec : Prop :=
  ∀ n, (P11068478950048054241.a n : ℤ) = A229554 n

theorem P11068478950048054241.correct : P11068478950048054241.Spec := by
  intro n
  simp only [A229554]

end A229554

/-! ## A229554.P4260018515214820966

`n*a(n-1)-n+1` with `a(0)=8`
-/

namespace A229554.P4260018515214820966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  (n : ℤ) * a (n - 1) - (n : ℤ) + 1

end

end A229554.P4260018515214820966

namespace A229554

/-- `n*a(n-1)-n+1` -/
def P4260018515214820966.Spec : Prop :=
  ∀ n, P4260018515214820966.a n = A229554 n

end A229554

/-! ## A229554.P228486066137172213

`7*A000142(n)+1`
-/

namespace A229554.P228486066137172213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000142 n + 1

end

end A229554.P228486066137172213

namespace A229554

/-- `7*A000142(n)+1` -/
def P228486066137172213.Spec : Prop :=
  ∀ n, P228486066137172213.a n = A229554 n

theorem P228486066137172213.correct : P228486066137172213.Spec := by
  intro n
  simp only [A229554, Nat.add_sub_cancel, A229554.P228486066137172213.a, A229554.P11068478950048054241.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229554

/-! ## A229554.P17677541076425492798

`8-7*(1-n!)`
-/

namespace A229554.P17677541076425492798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - 7 * (1 - (Nat.factorial n : ℤ))

end

end A229554.P17677541076425492798

namespace A229554

/-- `8-7*(1-n!)` -/
def P17677541076425492798.Spec : Prop :=
  ∀ n, P17677541076425492798.a n = A229554 n

theorem P17677541076425492798.correct : P17677541076425492798.Spec := by
  intro n
  simp only [A229554, Nat.add_sub_cancel, A229554.P17677541076425492798.a, A229554.P11068478950048054241.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A229554

/-! ## A229554.P893364390322700001

`7*∏[round(1/acot(n))]+1`
-/

namespace A229554.P893364390322700001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A229554.P893364390322700001

namespace A229554

/-- `7*∏[round(1/acot(n))]+1` -/
def P893364390322700001.Spec : Prop :=
  ∀ n, P893364390322700001.a n = A229554 n

end A229554

/-! ## A229554.P14988987991750598229

`7*∏[ceil(abs(γ-n))]+1`
-/

namespace A229554.P14988987991750598229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A229554.P14988987991750598229

namespace A229554

/-- `7*∏[ceil(abs(γ-n))]+1` -/
def P14988987991750598229.Spec : Prop :=
  ∀ n, P14988987991750598229.a n = A229554 n

end A229554

/-! ## A229554.P14971929748555252201

`or(1, n*(a(n-1)-1))` with `a(0)=8, a(1)=8`
-/

namespace A229554.P14971929748555252201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n a =>
  Int.lor 1 ((n : ℤ) * (a (n - 1) - 1))

end

end A229554.P14971929748555252201

namespace A229554

/-- `or(1, n*(a(n-1)-1))` -/
def P14971929748555252201.Spec : Prop :=
  ∀ n, P14971929748555252201.a n = A229554 n

end A229554

/-!
# A229556: Array read by antidiagonals. Rows are the numerators of consecutive harmonic transforms starting with a first row 1, 1, 1, ....

The programs for A229556, there is no canonical definition to state claims against.
-/

/-! ## A229556.P4113928563070914485

`A125186(A130749(n))`
-/

namespace A229556.P4113928563070914485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A130749 n).toNat

end

end A229556.P4113928563070914485

/-! ## A229556.P2054012827839905443

`A125186(A008277(n+1))`
-/

namespace A229556.P2054012827839905443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A008277 (n + 1)).toNat

end

end A229556.P2054012827839905443

/-! ## A229556.P18417414221752074149

`A119704(A211318(n+1))`
-/

namespace A229556.P18417414221752074149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 (A211318 (n + 1)).toNat

end

end A229556.P18417414221752074149

/-! ## A229556.P5079761139288405595

`A125186(A218577(n+1))`
-/

namespace A229556.P5079761139288405595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A218577 (n + 1)).toNat

end

end A229556.P5079761139288405595

/-! ## A229556.P17135035657500224004

`A125186(A250118(n+1))`
-/

namespace A229556.P17135035657500224004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A250118 (n + 1)).toNat

end

end A229556.P17135035657500224004

/-!
# A229558: E.g.f.: exp(x) / (2 - exp(4*x))^(1/4).

The programs for A229558, there is no canonical definition to state claims against.
-/

/-! ## A229558.P4160016770008592629

`2^n*A276371(n)`
-/

namespace A229558.P4160016770008592629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A276371 n

end

end A229558.P4160016770008592629

/-! ## A229558.P1817980096689156577

`lcm(A000079(n), A276371(n))`
-/

namespace A229558.P1817980096689156577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A276371 n)

end

end A229558.P1817980096689156577

/-! ## A229558.P6648132094221608109

`abs(A171449(n)*A276371(n))`
-/

namespace A229558.P6648132094221608109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171449 n * A276371 n|

end

end A229558.P6648132094221608109

/-! ## A229558.P8197917565789498940

`lcm(A122803(n), A276371(A028310(n)))`
-/

namespace A229558.P8197917565789498940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122803 n) (A276371 (A028310 n).toNat)

end

end A229558.P8197917565789498940

/-! ## A229558.P9380432408858599263

`A276371(n)+A000225(n)*A276371(n)`
-/

namespace A229558.P9380432408858599263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276371 n + A000225 n * A276371 n

end

end A229558.P9380432408858599263

/-!
# A229559: E.g.f. A(x) satisfies: A'(x) = A(x) - A(x)^2 + A(x)^3.

The programs for A229559, there is no canonical definition to state claims against.
-/

/-! ## A229559.P13815529039370735095

`A285758(A308878(n))`
-/

namespace A229559.P13815529039370735095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (A308878 n).toNat

end

end A229559.P13815529039370735095

/-! ## A229559.P2785724714566063893

`A098098(A326351(n))-A053692(n+3)`
-/

namespace A229559.P2785724714566063893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 (A326351 n).toNat - A053692 (n + 3)

end

end A229559.P2785724714566063893

/-!
# A229560: Number of arrays of length n that are sums of 2 consecutive elements of length n+1 permutations of 0..n.

The programs for A229560, there is no canonical definition to state claims against.
-/

/-! ## A229560.P13483241703632683048

`A229565(∑[n+2])`
-/

namespace A229560.P13483241703632683048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229560.P13483241703632683048

/-! ## A229560.P3025405179517436329

`record[A229565(A061579(n+2))]`
-/

namespace A229560.P3025405179517436329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A061579 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229560.P3025405179517436329

/-! ## A229560.P629742401246724251

`record[A229565(gcd(n, A055830(n)))]`
-/

namespace A229560.P629742401246724251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (Int.gcd (n : ℤ) (A055830 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229560.P629742401246724251

/-! ## A229560.P14072322685921630929

`record[A115526(n)*A229565(n+1)]`
-/

namespace A229560.P14072322685921630929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115526 n * A229565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229560.P14072322685921630929

/-! ## A229560.P3463627267867300033

`record[A129186(n)*A229565(n+1)]`
-/

namespace A229560.P3463627267867300033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A229565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229560.P3463627267867300033

/-!
# A229561: Number of arrays of length n that are sums of 3 consecutive elements of length n+2 permutations of 0..n+1.

The programs for A229561, there is no canonical definition to state claims against.
-/

/-! ## A229561.P18284202129187587249

`A229565(∑[n+3]+1)`
-/

namespace A229561.P18284202129187587249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229561.P18284202129187587249

/-! ## A229561.P17868654373720674013

`record[A229565(A198464(n+1))]`
-/

namespace A229561.P17868654373720674013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229561.P17868654373720674013

/-! ## A229561.P6562213297717358037

`record[A229565(abs(A255878(n+1)))]`
-/

namespace A229561.P6562213297717358037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229561.P6562213297717358037

/-! ## A229561.P4820842460228898857

`record[and(A049310(n), A229565(n+1))]`
-/

namespace A229561.P4820842460228898857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049310 n) (A229565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229561.P4820842460228898857

/-! ## A229561.P6447242790861577419

`record[A229565(n+1)/A193685(n+2)]`
-/

namespace A229561.P6447242790861577419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229565 (n + 1) : ℚ) / (A193685 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229561.P6447242790861577419

/-!
# A229562: Number of arrays of length n that are sums of 4 consecutive elements of length n+3 permutations of 0..n+2.

The programs for A229562, there is no canonical definition to state claims against.
-/

/-! ## A229562.P11933229462361252100

`record[A229565(A019304(n))]`
-/

namespace A229562.P11933229462361252100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229562.P11933229462361252100

/-! ## A229562.P16148828370178950762

`A229565(A141214(n+1))`
-/

namespace A229562.P16148828370178950762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A141214 (n + 1)).toNat

end

end A229562.P16148828370178950762

/-! ## A229562.P7310594908232910078

`A229565(A027379(n+2))`
-/

namespace A229562.P7310594908232910078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A027379 (n + 2)).toNat

end

end A229562.P7310594908232910078

/-! ## A229562.P16177467078470084283

`A229565(A055998(n+2))`
-/

namespace A229562.P16177467078470084283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A055998 (n + 2)).toNat

end

end A229562.P16177467078470084283

/-!
# A229563: Number of arrays of length n that are sums of 5 consecutive elements of length n+4 permutations of 0..n+3.

The programs for A229563, there is no canonical definition to state claims against.
-/

/-! ## A229563.P12406407369241604359

`A229565(Δ[A264443(n)])`
-/

namespace A229563.P12406407369241604359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (f1 (n + 1) - f1 n).toNat

end

end A229563.P12406407369241604359

/-! ## A229563.P9058339343148103663

`A229565(A046691(n+3))`
-/

namespace A229563.P9058339343148103663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A046691 (n + 3)).toNat

end

end A229563.P9058339343148103663

/-! ## A229563.P5269480630840323238

`A229565(A056115(n)+11)`
-/

namespace A229563.P5269480630840323238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A056115 n + 11).toNat

end

end A229563.P5269480630840323238

/-!
# A229564: Number of arrays of length n that are sums of 6 consecutive elements of length n+5 permutations of 0..n+4.

The programs for A229564, there is no canonical definition to state claims against.
-/

/-! ## A229564.P6136465702954989488

`A229565(A052905(n+3))`
-/

namespace A229564.P6136465702954989488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A052905 (n + 3)).toNat

end

end A229564.P6136465702954989488

/-!
# A229565: T(n,k) = number of arrays of length n that are sums of k consecutive elements of length n+k-1 permutations of 0..n+k-2.

The programs for A229565, there is no canonical definition to state claims against.
-/

/-! ## A229565.P13464533673938023541

`A046651(n)-A092707(A291680(n))`
-/

namespace A229565.P13464533673938023541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 n - A092707 (A291680 n).toNat

end

end A229565.P13464533673938023541

/-! ## A229565.P17156843446966655787

`A234613(A108556(n*A250662(n)))`
-/

namespace A229565.P17156843446966655787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A108556 ((n : ℤ) * A250662 n).toNat).toNat

end

end A229565.P17156843446966655787

/-! ## A229565.P16193440922363963977

`A234613(A108556(n)^A219924(n))`
-/

namespace A229565.P16193440922363963977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (SequenceMachineLib.roundAway ((A108556 n : ℚ) ^ (A219924 n : ℤ))).toNat

end

end A229565.P16193440922363963977

/-! ## A229565.P13262332164085233623

`A234613(A108556(n)^A245013(n))`
-/

namespace A229565.P13262332164085233623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (SequenceMachineLib.roundAway ((A108556 n : ℚ) ^ (A245013 n : ℤ))).toNat

end

end A229565.P13262332164085233623

/-! ## A229565.P5883044000145347655

`A234613(A108556(n)^A250662(n))`
-/

namespace A229565.P5883044000145347655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (SequenceMachineLib.roundAway ((A108556 n : ℚ) ^ (A250662 n : ℤ))).toNat

end

end A229565.P5883044000145347655

/-!
# A229566: Number of arrays of length 3 that are sums of n consecutive elements of length 3+n-1 permutations of 0..3+n-2.

The programs for A229566, there is no canonical definition to state claims against.
-/

/-! ## A229566.P9832992030653559931

`A229565(∑[n+2]+4)`
-/

namespace A229566.P9832992030653559931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229566.P9832992030653559931

/-! ## A229566.P2431573423893460554

`lcm(2, A229565(A167614(n+1)))`
-/

namespace A229566.P2431573423893460554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229565 (A167614 (n + 1)).toNat)

end

end A229566.P2431573423893460554

/-! ## A229566.P2975422854621899700

`A229565(A167614(n+1))+A018795(n)`
-/

namespace A229566.P2975422854621899700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A167614 (n + 1)).toNat + A018795 n

end

end A229566.P2975422854621899700

/-! ## A229566.P15451750734123636826

`A229565(A167614(n+1))+A025442(n)`
-/

namespace A229566.P15451750734123636826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A167614 (n + 1)).toNat + A025442 n

end

end A229566.P15451750734123636826

/-! ## A229566.P4014264467428969339

`A229565(A167614(n+1))+A025444(n)`
-/

namespace A229566.P4014264467428969339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A167614 (n + 1)).toNat + A025444 n

end

end A229566.P4014264467428969339

/-!
# A229567: Number of arrays of length 4 that are sums of n consecutive elements of length 4+n-1 permutations of 0..4+n-2.

The programs for A229567, there is no canonical definition to state claims against.
-/

/-! ## A229567.P5574885178701235826

`A229565(∑[n+3]+7)`
-/

namespace A229567.P5574885178701235826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A229567.P5574885178701235826

/-!
# A229568: Number of arrays of length 5 that are sums of n consecutive elements of length 5+n-1 permutations of 0..5+n-2.

The programs for A229568, there is no canonical definition to state claims against.
-/

/-! ## A229568.P1188395713335372464

`A229565(A167499(n+3))`
-/

namespace A229568.P1188395713335372464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A167499 (n + 3)).toNat

end

end A229568.P1188395713335372464

/-! ## A229568.P1313151693277855499

`A229565(A155212(n)+13)`
-/

namespace A229568.P1313151693277855499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A155212 n + 13).toNat

end

end A229568.P1313151693277855499

/-! ## A229568.P6539310930743589200

`A229565(A056000(n)+15)`
-/

namespace A229568.P6539310930743589200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A056000 n + 15).toNat

end

end A229568.P6539310930743589200

/-! ## A229568.P5991236002086039283

`A229565(eq[7, A066657(n)])`
-/

namespace A229568.P5991236002086039283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229568.P5991236002086039283

/-!
# A229569: Number of arrays of length 6 that are sums of n consecutive elements of length 6+n-1 permutations of 0..6+n-2.

The programs for A229569, there is no canonical definition to state claims against.
-/

/-! ## A229569.P6876684917814679944

`A229565(A166136(n+4))`
-/

namespace A229569.P6876684917814679944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A166136 (n + 4)).toNat

end

end A229569.P6876684917814679944

/-!
# A229570: Primes of form p*q + 30, where p and q are consecutive primes.

The programs for A229570, there is no canonical definition to state claims against.
-/

/-! ## A229570.P10518562148496274770

`p?[A023523(n+1)+29]`
-/

namespace A229570.P10518562148496274770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P10518562148496274770

/-! ## A229570.P956676678926623685

`p?[A006094(n+1)+30]`
-/

namespace A229570.P956676678926623685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P956676678926623685

/-! ## A229570.P18000593956675685371

`p?[A023515(n+1)+31]`
-/

namespace A229570.P18000593956675685371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P18000593956675685371

/-! ## A229570.P12654954368744621322

`p?[A124669(n+1)+32]`
-/

namespace A229570.P12654954368744621322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P12654954368744621322

/-! ## A229570.P4078726368525312960

`p?[A116570(2*n)+30]`
-/

namespace A229570.P4078726368525312960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P4078726368525312960

/-! ## A229570.P13832478753734332475

`p?[A033476(2*n+1)+30]`
-/

namespace A229570.P13832478753734332475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P13832478753734332475

/-! ## A229570.P18040649430016086575

`p?[A057602(A005408(n))+30]`
-/

namespace A229570.P18040649430016086575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (A005408 n).toNat + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P18040649430016086575

/-! ## A229570.P12236252216097569323

`p?[A000040(n+1)*A000040(n+2)+30]`
-/

namespace A229570.P12236252216097569323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P12236252216097569323

/-!
# A229571: Number of defective 4-colorings of an n X n 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229571, there is no canonical definition to state claims against.
-/

/-! ## A229571.P5555568775682075242

`A229578((n+1)²+n²)`
-/

namespace A229571.P5555568775682075242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 ((n + 1) ^ 2 + n ^ 2)

end

end A229571.P5555568775682075242

/-! ## A229571.P15679789242489674166

`lcm(2, A229578(A001844(n)))`
-/

namespace A229571.P15679789242489674166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229578 (A001844 n).toNat)

end

end A229571.P15679789242489674166

/-! ## A229571.P17742346802570004265

`A229578(A001844(n))-A185284(n)`
-/

namespace A229571.P17742346802570004265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A001844 n).toNat - A185284 n

end

end A229571.P17742346802570004265

/-! ## A229571.P3748051092829736303

`A229578(A001844(n))%A008888(n)²`
-/

namespace A229571.P3748051092829736303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229578 (A001844 n).toNat) (A008888 n ^ 2)

end

end A229571.P3748051092829736303

/-! ## A229571.P3938724839591907823

`A229578(A001844(n))-A000038(2*n+1)`
-/

namespace A229571.P3938724839591907823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A001844 n).toNat - A000038 (2 * n + 1)

end

end A229571.P3938724839591907823

/-!
# A229572: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229572, the canonical program `A229572.P8736048714096368551` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229572 has offset 1).

The definition of A229572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229572.P580077573078693646

`ogf((1+2x+6x^2)/(1-4x+4x^2))`
-/

namespace A229572.P580077573078693646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6] [1, -4, 4] n

end

end A229572.P580077573078693646

namespace A229572

/-- `ogf((1+2x+6x^2)/(1-4x+4x^2))` -/
def P580077573078693646.Spec : Prop :=
  ∀ n, P580077573078693646.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P8736048714096368551

`abs((1-n-6*n)*A011782(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229572

/-- `abs((1-n-6*n)*A011782(n))` -/
def P8736048714096368551.Spec : Prop :=
  ∀ n, P8736048714096368551.a n = A229572 (n + 1)

theorem P8736048714096368551.correct : P8736048714096368551.Spec := by
  intro n
  simp only [A229572, Nat.add_sub_cancel]

end A229572

/-! ## A229572.P17364781795246004116

`(A016777(comp[2*(n+1)])+1+n)*2^(n-1)`
-/

namespace A229572.P17364781795246004116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1 + (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A229572.P17364781795246004116

namespace A229572

/-- `(A016777(comp[2*(n+1)])+1+n)*2^(n-1)` -/
def P17364781795246004116.Spec : Prop :=
  ∀ n, P17364781795246004116.a n = (A229572 (n + 1) : ℚ)

end A229572

/-! ## A229572.P9946167647074988819

`xor(1, A048478(n)-A011782(n))`
-/

namespace A229572.P9946167647074988819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A048478 n - A011782 n)

end

end A229572.P9946167647074988819

namespace A229572

/-- `xor(1, A048478(n)-A011782(n))` -/
def P9946167647074988819.Spec : Prop :=
  ∀ n, P9946167647074988819.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P2616445177101676052

`(2*A008574(n)-(n+1))*A166444(n+1)`
-/

namespace A229572.P2616445177101676052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A008574 n - (n + 1 : ℤ)) * A166444 (n + 1)

end

end A229572.P2616445177101676052

namespace A229572

/-- `(2*A008574(n)-(n+1))*A166444(n+1)` -/
def P2616445177101676052.Spec : Prop :=
  ∀ n, P2616445177101676052.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P12761437383367771817

`A011782(n)*A047336(A004277(n))`
-/

namespace A229572.P12761437383367771817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A047336 (A004277 n).toNat

end

end A229572.P12761437383367771817

namespace A229572

/-- `A011782(n)*A047336(A004277(n))` -/
def P12761437383367771817.Spec : Prop :=
  ∀ n, P12761437383367771817.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P14182428006548484030

`A011782(n)*A047290(A008486(n))`
-/

namespace A229572.P14182428006548484030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A047290 (A008486 n).toNat

end

end A229572.P14182428006548484030

namespace A229572

/-- `A011782(n)*A047290(A008486(n))` -/
def P14182428006548484030.Spec : Prop :=
  ∀ n, P14182428006548484030.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P11795764926409550149

`A011782(n)*A047298(A008574(n))`
-/

namespace A229572.P11795764926409550149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A047298 (A008574 n).toNat

end

end A229572.P11795764926409550149

namespace A229572

/-- `A011782(n)*A047298(A008574(n))` -/
def P11795764926409550149.Spec : Prop :=
  ∀ n, P11795764926409550149.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P11858276232233356875

`(A008706(n)+A004273(n))*A011782(n)`
-/

namespace A229572.P11858276232233356875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008706 n + A004273 n) * A011782 n

end

end A229572.P11858276232233356875

namespace A229572

/-- `(A008706(n)+A004273(n))*A011782(n)` -/
def P11858276232233356875.Spec : Prop :=
  ∀ n, P11858276232233356875.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P8016494874038051544

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=6, a(2)=26`
-/

namespace A229572.P8016494874038051544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 26] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A229572.P8016494874038051544

namespace A229572

/-- `4*a(n-1)-4*a(n-2)` -/
def P8016494874038051544.Spec : Prop :=
  ∀ n, P8016494874038051544.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P5393010400702924649

`A241204(n)-(n+1)*A131577(n)`
-/

namespace A229572.P5393010400702924649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241204 n - (n + 1 : ℤ) * A131577 n

end

end A229572.P5393010400702924649

namespace A229572

/-- `A241204(n)-(n+1)*A131577(n)` -/
def P5393010400702924649.Spec : Prop :=
  ∀ n, P5393010400702924649.a n = A229572 (n + 1)

end A229572

/-!
# A229573: Number of defective 4-colorings of an n X 3 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229573, the canonical program `A229573.P8989098536119164596` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229573 has offset 1).

The definition of A229573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229573.P8989098536119164596

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=26, a(2)=76, a(3)=171, a(4)=362`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229573

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P8989098536119164596.Spec : Prop :=
  ∀ n, P8989098536119164596.a n = A229573 (n + 1)

theorem P8989098536119164596.correct : P8989098536119164596.Spec := by
  intro n
  simp only [A229573, Nat.add_sub_cancel]

end A229573

/-! ## A229573.P12465655381867762031

`A229578(∑[n+2]+4)`
-/

namespace A229573.P12465655381867762031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229573.P12465655381867762031

namespace A229573

/-- `A229578(∑[n+2]+4)` -/
def P12465655381867762031.Spec : Prop :=
  ∀ n, P12465655381867762031.a n = A229573 (n + 1)

end A229573

/-! ## A229573.P12551300630723423983

`lcm(gcd(2, n), A229578(A167499(n)+n))`
-/

namespace A229573.P12551300630723423983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A229578 (A167499 n + (n : ℤ)).toNat)

end

end A229573.P12551300630723423983

namespace A229573

/-- `lcm(gcd(2, n), A229578(A167499(n)+n))` -/
def P12551300630723423983.Spec : Prop :=
  ∀ n, (P12551300630723423983.a n : ℤ) = A229573 (n + 1)

end A229573

/-! ## A229573.P2361218351129738366

`or(A000038(n), A229578(A167614(n+1)))`
-/

namespace A229573.P2361218351129738366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A229578 (A167614 (n + 1)).toNat)

end

end A229573.P2361218351129738366

namespace A229573

/-- `or(A000038(n), A229578(A167614(n+1)))` -/
def P2361218351129738366.Spec : Prop :=
  ∀ n, P2361218351129738366.a n = A229573 (n + 1)

end A229573

/-! ## A229573.P15845303210092869868

`gcd(A000038(n), A229578(A167499(n)+n))`
-/

namespace A229573.P15845303210092869868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A229578 (A167499 n + (n : ℤ)).toNat)

end

end A229573.P15845303210092869868

namespace A229573

/-- `gcd(A000038(n), A229578(A167499(n)+n))` -/
def P15845303210092869868.Spec : Prop :=
  ∀ n, (P15845303210092869868.a n : ℤ) = A229573 (n + 1)

end A229573

/-!
# A229574: Number of defective 4-colorings of an n X 4 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229574, there is no canonical definition to state claims against.
-/

/-! ## A229574.P7693883952510780084

`A229578(A374004(n+1))`
-/

namespace A229574.P7693883952510780084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A374004 (n + 1)).toNat

end

end A229574.P7693883952510780084

/-! ## A229574.P13317021407972619904

`A229578(A052905(n)+9)`
-/

namespace A229574.P13317021407972619904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A052905 n + 9).toNat

end

end A229574.P13317021407972619904

/-! ## A229574.P10890372514272370161

`A229578(A055999(n)+10)`
-/

namespace A229574.P10890372514272370161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A055999 n + 10).toNat

end

end A229574.P10890372514272370161

/-! ## A229574.P16459415606883192539

`A229578(A167614(n+2)+1)`
-/

namespace A229574.P16459415606883192539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A167614 (n + 2) + 1).toNat

end

end A229574.P16459415606883192539

/-! ## A229574.P4232511951408192798

`A229578(A167499(n+2)-1)`
-/

namespace A229574.P4232511951408192798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A167499 (n + 2) - 1).toNat

end

end A229574.P4232511951408192798

/-!
# A229575: Number of defective 4-colorings of an n X 5 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229575, there is no canonical definition to state claims against.
-/

/-! ## A229575.P3816849532692951513

`A229578(A374005(n+1))`
-/

namespace A229575.P3816849532692951513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A374005 (n + 1)).toNat

end

end A229575.P3816849532692951513

/-! ## A229575.P13177589076472617554

`A229578(A167499(n+3))`
-/

namespace A229575.P13177589076472617554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A167499 (n + 3)).toNat

end

end A229575.P13177589076472617554

/-! ## A229575.P14210399480514248083

`A229578(A000217(n+4)+5)`
-/

namespace A229575.P14210399480514248083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A000217 (n + 4) + 5).toNat

end

end A229575.P14210399480514248083

/-! ## A229575.P15519429429487379068

`A229578(A046691(n+3))`
-/

namespace A229575.P15519429429487379068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A046691 (n + 3)).toNat

end

end A229575.P15519429429487379068

/-! ## A229575.P15611541221840855092

`A229578(A060577(n+4))`
-/

namespace A229575.P15611541221840855092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A060577 (n + 4)).toNat

end

end A229575.P15611541221840855092

/-!
# A229576: Number of defective 4-colorings of an n X 6 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229576, there is no canonical definition to state claims against.
-/

/-! ## A229576.P10775209385935047592

`A229578(A374007(n+1))`
-/

namespace A229576.P10775209385935047592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A374007 (n + 1)).toNat

end

end A229576.P10775209385935047592

/-! ## A229576.P4688337609994619086

`A229578(A166136(n+4))`
-/

namespace A229576.P4688337609994619086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A166136 (n + 4)).toNat

end

end A229576.P4688337609994619086

/-! ## A229576.P12481419914570371680

`A229578(A167614(n+4)+3)`
-/

namespace A229576.P12481419914570371680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A167614 (n + 4) + 3).toNat

end

end A229576.P12481419914570371680

/-! ## A229576.P1483718919938401135

`A229578(A000096(n+4)+7)`
-/

namespace A229576.P1483718919938401135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A000096 (n + 4) + 7).toNat

end

end A229576.P1483718919938401135

/-! ## A229576.P12599216858182390207

`A229578(A000217(n+5)+6)`
-/

namespace A229576.P12599216858182390207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A000217 (n + 5) + 6).toNat

end

end A229576.P12599216858182390207

/-!
# A229577: Number of defective 4-colorings of an n X 7 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229577, there is no canonical definition to state claims against.
-/

/-! ## A229577.P1292048030406431633

`A229578(A374008(n+1))`
-/

namespace A229577.P1292048030406431633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A374008 (n + 1)).toNat

end

end A229577.P1292048030406431633

/-! ## A229577.P14823446918074637207

`A229578(A166136(n+5)+1)`
-/

namespace A229577.P14823446918074637207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A166136 (n + 5) + 1).toNat

end

end A229577.P14823446918074637207

/-! ## A229577.P1506809420915958720

`A229578(A167499(n+5)+2)`
-/

namespace A229577.P1506809420915958720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A167499 (n + 5) + 2).toNat

end

end A229577.P1506809420915958720

/-! ## A229577.P13448839326648368410

`A229578(A167614(n+5)+4)`
-/

namespace A229577.P13448839326648368410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A167614 (n + 5) + 4).toNat

end

end A229577.P13448839326648368410

/-! ## A229577.P14534087289274141775

`A229578(A152948(n+8)+5)`
-/

namespace A229577.P14534087289274141775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A152948 (n + 8) + 5).toNat

end

end A229577.P14534087289274141775

/-!
# A229579: Number of defective 3-colorings of an n X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229579, there is no canonical definition to state claims against.
-/

/-! ## A229579.P3224906779149506569

`A268897(n+1)/6`
-/

namespace A229579.P3224906779149506569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268897 (n + 1) : ℚ) / 6

end

end A229579.P3224906779149506569

/-! ## A229579.P9395868402195630782

`A229586(∑[4*n]+1)`
-/

namespace A229579.P9395868402195630782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229579.P9395868402195630782

/-! ## A229579.P3970123969775428576

`lcm(2, A229586(A001844(n)))`
-/

namespace A229579.P3970123969775428576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229586 (A001844 n).toNat)

end

end A229579.P3970123969775428576

/-! ## A229579.P12080092802858574329

`record[A003982(n)*A268904(n+1)/6]`
-/

namespace A229579.P12080092802858574329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003982 n * A268904 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229579.P12080092802858574329

/-! ## A229579.P14313035169010920166

`A229586(A001844(n))+char[A059162(n)]`
-/

namespace A229579.P14313035169010920166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059162 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A229579.P14313035169010920166

/-!
# A229580: Number of defective 3-colorings of an n X 2 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229580, the canonical program `A229580.P1563403694311787037` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229580 has offset 1).

The definition of A229580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229580.P1563403694311787037

`4*a(n-1)+4^n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229580

/-- `4*a(n-1)+4^n` -/
def P1563403694311787037.Spec : Prop :=
  ∀ n, (P1563403694311787037.a n : ℤ) = A229580 (n + 1)

theorem P1563403694311787037.correct : P1563403694311787037.Spec := by
  intro n
  simp only [A229580, Nat.add_sub_cancel]

end A229580

/-! ## A229580.P8875571288218920259

`ceil(4^n/2)*Δ[n²]`
-/

namespace A229580.P8875571288218920259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A229580.P8875571288218920259

namespace A229580

/-- `ceil(4^n/2)*Δ[n²]` -/
def P8875571288218920259.Spec : Prop :=
  ∀ n, P8875571288218920259.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P17865121883398310994

`lcm(ceil(4^n/2), Δ[n²])`
-/

namespace A229580.P17865121883398310994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(4 ^ n : ℚ) / 2⌉ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A229580.P17865121883398310994

namespace A229580

/-- `lcm(ceil(4^n/2), Δ[n²])` -/
def P17865121883398310994.Spec : Prop :=
  ∀ n, (P17865121883398310994.a n : ℤ) = A229580 (n + 1)

end A229580

/-! ## A229580.P12837936495289327546

`record[lcm(xor(1, n), ceil(2^(n-1)))]`
-/

namespace A229580.P12837936495289327546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.xor 1 n : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229580.P12837936495289327546

namespace A229580

/-- `record[lcm(xor(1, n), ceil(2^(n-1)))]` -/
def P12837936495289327546.Spec : Prop :=
  ∀ n, (P12837936495289327546.a n : ℤ) = A229580 (n + 1)

end A229580

/-! ## A229580.P8227597828030848434

`record[(n*2^(n-2))^(n%2)]`
-/

namespace A229580.P8227597828030848434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229580.P8227597828030848434

namespace A229580

/-- `record[(n*2^(n-2))^(n%2)]` -/
def P8227597828030848434.Spec : Prop :=
  ∀ n, P8227597828030848434.a n = (A229580 (n + 1) : ℚ)

end A229580

/-! ## A229580.P2607681916960650402

`record[C(xor(1, n), n)*ceil(2^(n-1))]`
-/

namespace A229580.P2607681916960650402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.xor 1 n) n : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229580.P2607681916960650402

namespace A229580

/-- `record[C(xor(1, n), n)*ceil(2^(n-1))]` -/
def P2607681916960650402.Spec : Prop :=
  ∀ n, P2607681916960650402.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P8586425701652575835

`record[(n+1)*ceil(and(2, gcd(2, n))^n/2)]`
-/

namespace A229580.P8586425701652575835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(Nat.land 2 (Nat.gcd 2 n) ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229580.P8586425701652575835

namespace A229580

/-- `record[(n+1)*ceil(and(2, gcd(2, n))^n/2)]` -/
def P8586425701652575835.Spec : Prop :=
  ∀ n, P8586425701652575835.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P6201106836358609521

`record[ceil(2^(n-1))+n/2*(-2)^n]`
-/

namespace A229580.P6201106836358609521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) + (n : ℚ) / 2 * ((-2) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229580.P6201106836358609521

namespace A229580

/-- `record[ceil(2^(n-1))+n/2*(-2)^n]` -/
def P6201106836358609521.Spec : Prop :=
  ∀ n, P6201106836358609521.a n = (A229580 (n + 1) : ℚ)

end A229580

/-! ## A229580.P17051008895686753939

`A057711(Δ[n²])`
-/

namespace A229580.P17051008895686753939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229580.P17051008895686753939

namespace A229580

/-- `A057711(Δ[n²])` -/
def P17051008895686753939.Spec : Prop :=
  ∀ n, P17051008895686753939.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P7881241135356801415

`A129952(Δ[n²])`
-/

namespace A229580.P7881241135356801415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229580.P7881241135356801415

namespace A229580

/-- `A129952(Δ[n²])` -/
def P7881241135356801415.Spec : Prop :=
  ∀ n, P7881241135356801415.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P14224132208453568033

`A383608(Δ[n²])`
-/

namespace A229580.P14224132208453568033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383608 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229580.P14224132208453568033

namespace A229580

/-- `A383608(Δ[n²])` -/
def P14224132208453568033.Spec : Prop :=
  ∀ n, P14224132208453568033.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P365401949261112564

`A262258(4*n+1)`
-/

namespace A229580.P365401949261112564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262258 (4 * n + 1)

end

end A229580.P365401949261112564

namespace A229580

/-- `A262258(4*n+1)` -/
def P365401949261112564.Spec : Prop :=
  ∀ n, P365401949261112564.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P13678416366460804416

`abs(Δ[n²]*A009117(n))`
-/

namespace A229580.P13678416366460804416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A009117 n|

end

end A229580.P13678416366460804416

namespace A229580

/-- `abs(Δ[n²]*A009117(n))` -/
def P13678416366460804416.Spec : Prop :=
  ∀ n, P13678416366460804416.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P7923668101950196534

`A227978(2*n+1)-Δ[n²]`
-/

namespace A229580.P7923668101950196534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227978 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A229580.P7923668101950196534

namespace A229580

/-- `A227978(2*n+1)-Δ[n²]` -/
def P7923668101950196534.Spec : Prop :=
  ∀ n, P7923668101950196534.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P16407770517911128400

`A081294(n)+A018215(n)`
-/

namespace A229580.P16407770517911128400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + A018215 n

end

end A229580.P16407770517911128400

namespace A229580

/-- `A081294(n)+A018215(n)` -/
def P16407770517911128400.Spec : Prop :=
  ∀ n, P16407770517911128400.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P9121849623579215201

`A081294(n)+n*A000302(n)`
-/

namespace A229580.P9121849623579215201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + (n : ℤ) * A000302 n

end

end A229580.P9121849623579215201

namespace A229580

/-- `A081294(n)+n*A000302(n)` -/
def P9121849623579215201.Spec : Prop :=
  ∀ n, P9121849623579215201.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P17153526127124788189

`A081294(n)+n*A000079(n)²`
-/

namespace A229580.P17153526127124788189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + (n : ℤ) * A000079 n ^ 2

end

end A229580.P17153526127124788189

namespace A229580

/-- `A081294(n)+n*A000079(n)²` -/
def P17153526127124788189.Spec : Prop :=
  ∀ n, P17153526127124788189.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P15985561678008174470

`A081294(n)+n*A155559(n)²`
-/

namespace A229580.P15985561678008174470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + (n : ℤ) * A155559 n ^ 2

end

end A229580.P15985561678008174470

namespace A229580

/-- `A081294(n)+n*A155559(n)²` -/
def P15985561678008174470.Spec : Prop :=
  ∀ n, P15985561678008174470.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P12470448410542352901

`A097067(2*n+1)+A081294(n)`
-/

namespace A229580.P12470448410542352901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (2 * n + 1) + A081294 n

end

end A229580.P12470448410542352901

namespace A229580

/-- `A097067(2*n+1)+A081294(n)` -/
def P12470448410542352901.Spec : Prop :=
  ∀ n, P12470448410542352901.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P5323465986166026067

`A002697(n+1)-A131577(2*n)`
-/

namespace A229580.P5323465986166026067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - A131577 (2 * n)

end

end A229580.P5323465986166026067

namespace A229580

/-- `A002697(n+1)-A131577(2*n)` -/
def P5323465986166026067.Spec : Prop :=
  ∀ n, P5323465986166026067.a n = A229580 (n + 1)

end A229580

/-!
# A229581: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229581, the canonical program `A229581.P12220190829909074105` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229581 has offset 1).

The definition of A229581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229581.P12220190829909074105

`2^(n+1)*3^(n-1)*(4*n+3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229581

/-- `2^(n+1)*3^(n-1)*(4*n+3)` -/
def P12220190829909074105.Spec : Prop :=
  ∀ n, P12220190829909074105.a n = (A229581 (n + 1) : ℚ)

end A229581

/-! ## A229581.P5052450772932572413

`ceil(4*6^(n-1)*A004767(n))`
-/

namespace A229581.P5052450772932572413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A004767 n : ℚ)⌉

end

end A229581.P5052450772932572413

namespace A229581

/-- `ceil(4*6^(n-1)*A004767(n))` -/
def P5052450772932572413.Spec : Prop :=
  ∀ n, P5052450772932572413.a n = A229581 (n + 1)

end A229581

/-! ## A229581.P3625017520698438778

`A203232(2*n+1)+A053469(n+1)`
-/

namespace A229581.P3625017520698438778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203232 (2 * n + 1) + A053469 (n + 1)

end

end A229581.P3625017520698438778

namespace A229581

/-- `A203232(2*n+1)+A053469(n+1)` -/
def P3625017520698438778.Spec : Prop :=
  ∀ n, P3625017520698438778.a n = A229581 (n + 1)

end A229581

/-! ## A229581.P9151143345683525607

`12*a(n-1)-36*a(n-2)` with `a(0)=2, a(1)=28`
-/

namespace A229581.P9151143345683525607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 28] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2)

end

end A229581.P9151143345683525607

namespace A229581

/-- `12*a(n-1)-36*a(n-2)` -/
def P9151143345683525607.Spec : Prop :=
  ∀ n, P9151143345683525607.a n = A229581 (n + 1)

end A229581

/-! ## A229581.P12067700542866825386

`A268899(n+1)/6`
-/

namespace A229581.P12067700542866825386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268899 (n + 1) : ℚ) / 6

end

end A229581.P12067700542866825386

namespace A229581

/-- `A268899(n+1)/6` -/
def P12067700542866825386.Spec : Prop :=
  ∀ n, P12067700542866825386.a n = (A229581 (n + 1) : ℚ)

end A229581

/-! ## A229581.P8879469474664192051

`A008776(2*n)*A097578(2*n+1)/A008776(n+1)`
-/

namespace A229581.P8879469474664192051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 (2 * n) * A097578 (2 * n + 1) : ℚ) / (A008776 (n + 1) : ℚ)

end

end A229581.P8879469474664192051

namespace A229581

/-- `A008776(2*n)*A097578(2*n+1)/A008776(n+1)` -/
def P8879469474664192051.Spec : Prop :=
  ∀ n, P8879469474664192051.a n = (A229581 (n + 1) : ℚ)

end A229581

/-! ## A229581.P15771309206585160327

`A000400(n)²*A017113(2*n+1)/A000400(n+1)`
-/

namespace A229581.P15771309206585160327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n ^ 2 * A017113 (2 * n + 1) : ℚ) / (A000400 (n + 1) : ℚ)

end

end A229581.P15771309206585160327

namespace A229581

/-- `A000400(n)²*A017113(2*n+1)/A000400(n+1)` -/
def P15771309206585160327.Spec : Prop :=
  ∀ n, P15771309206585160327.a n = (A229581 (n + 1) : ℚ)

end A229581

/-! ## A229581.P6786647759573507076

`A000400(2*n)*A017113(2*n+1)/A000400(n+1)`
-/

namespace A229581.P6786647759573507076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 (2 * n) * A017113 (2 * n + 1) : ℚ) / (A000400 (n + 1) : ℚ)

end

end A229581.P6786647759573507076

namespace A229581

/-- `A000400(2*n)*A017113(2*n+1)/A000400(n+1)` -/
def P6786647759573507076.Spec : Prop :=
  ∀ n, P6786647759573507076.a n = (A229581 (n + 1) : ℚ)

end A229581

/-!
# A229582: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229582, the canonical program `A229582.P17646191819240093177` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229582 has offset 1).

The definition of A229582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229582.P17646191819240093177

`A229587(2*(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A229582

/-- `A229587(2*(n+1))` -/
def P17646191819240093177.Spec : Prop :=
  ∀ n, P17646191819240093177.a n = A229582 (n + 1)

theorem P17646191819240093177.correct : P17646191819240093177.Spec := by
  intro n
  simp only [A229582, Nat.add_sub_cancel]

end A229582

/-! ## A229582.P13883807461925452798

`or(4, A229587(Δ[A014206(n)]))`
-/

namespace A229582.P13883807461925452798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A229587 (f1 (n + 1) - f1 n).toNat)

end

end A229582.P13883807461925452798

namespace A229582

/-- `or(4, A229587(Δ[A014206(n)]))` -/
def P13883807461925452798.Spec : Prop :=
  ∀ n, P13883807461925452798.a n = A229582 (n + 1)

end A229582

/-! ## A229582.P10689404043957122702

`lcm(2, A229587(A005408(n)+1))`
-/

namespace A229582.P10689404043957122702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229587 (A005408 n + 1).toNat)

end

end A229582.P10689404043957122702

namespace A229582

/-- `lcm(2, A229587(A005408(n)+1))` -/
def P10689404043957122702.Spec : Prop :=
  ∀ n, (P10689404043957122702.a n : ℤ) = A229582 (n + 1)

end A229582

/-! ## A229582.P9449110016095657316

`A003946(2*n+1)+2*A113071(2*n)`
-/

namespace A229582.P9449110016095657316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (2 * n + 1) + 2 * A113071 (2 * n)

end

end A229582.P9449110016095657316

namespace A229582

/-- `A003946(2*n+1)+2*A113071(2*n)` -/
def P9449110016095657316.Spec : Prop :=
  ∀ n, P9449110016095657316.a n = A229582 (n + 1)

end A229582

/-! ## A229582.P12301284497894328428

`2*(A113071(2*n)+A025192(2*n+1))`
-/

namespace A229582.P12301284497894328428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113071 (2 * n) + A025192 (2 * n + 1))

end

end A229582.P12301284497894328428

namespace A229582

/-- `2*(A113071(2*n)+A025192(2*n+1))` -/
def P12301284497894328428.Spec : Prop :=
  ∀ n, P12301284497894328428.a n = A229582 (n + 1)

end A229582

/-! ## A229582.P15984312615859240247

`A120926(2*n+1)+A120926(2*(n+1))+A113071(2*n)`
-/

namespace A229582.P15984312615859240247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (2 * n + 1) + (A120926 (2 * (n + 1)) + A113071 (2 * n))

end

end A229582.P15984312615859240247

namespace A229582

/-- `A120926(2*n+1)+A120926(2*(n+1))+A113071(2*n)` -/
def P15984312615859240247.Spec : Prop :=
  ∀ n, P15984312615859240247.a n = A229582 (n + 1)

end A229582

/-! ## A229582.P16859507456125568513

`A268900(n+1)/6`
-/

namespace A229582.P16859507456125568513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268900 (n + 1) : ℚ) / 6

end

end A229582.P16859507456125568513

namespace A229582

/-- `A268900(n+1)/6` -/
def P16859507456125568513.Spec : Prop :=
  ∀ n, P16859507456125568513.a n = (A229582 (n + 1) : ℚ)

theorem P16859507456125568513.correct : P16859507456125568513.Spec := by
  intro n
  simp only [A229582, Nat.add_sub_cancel, A229582.P16859507456125568513.a, A229582.P17646191819240093177.a, A229587, A229587.P6883557368480973696.a, A268900, A268900.P15039982914417740740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229582

/-! ## A229582.P12422067162025524208

`A268905(2*(n+1))/6`
-/

namespace A229582.P12422067162025524208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268905 (2 * (n + 1)) : ℚ) / 6

end

end A229582.P12422067162025524208

namespace A229582

/-- `A268905(2*(n+1))/6` -/
def P12422067162025524208.Spec : Prop :=
  ∀ n, P12422067162025524208.a n = (A229582 (n + 1) : ℚ)

end A229582

/-!
# A229583: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229583, there is no canonical definition to state claims against.
-/

/-! ## A229583.P7419172443525472386

`A268901(n+1)/6`
-/

namespace A229583.P7419172443525472386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268901 (n + 1) : ℚ) / 6

end

end A229583.P7419172443525472386

/-! ## A229583.P734769888485374267

`record[A268901(A193592(n))/6]`
-/

namespace A229583.P734769888485374267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268901 (A193592 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229583.P734769888485374267

/-! ## A229583.P1385469468397246073

`A229586(Δ[A264443(n)])`
-/

namespace A229583.P1385469468397246073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (f1 (n + 1) - f1 n).toNat

end

end A229583.P1385469468397246073

/-! ## A229583.P7964440801904901328

`A229586(A046691(n+3))`
-/

namespace A229583.P7964440801904901328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A046691 (n + 3)).toNat

end

end A229583.P7964440801904901328

/-! ## A229583.P8274138619159039296

`A229586(eq[4, A193592(n)])`
-/

namespace A229583.P8274138619159039296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229583.P8274138619159039296

/-!
# A229584: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229584, there is no canonical definition to state claims against.
-/

/-! ## A229584.P6506408288225869661

`A268902(n+1)/6`
-/

namespace A229584.P6506408288225869661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268902 (n + 1) : ℚ) / 6

end

end A229584.P6506408288225869661

/-! ## A229584.P9417632129160292989

`A229586(A052905(n+3))`
-/

namespace A229584.P9417632129160292989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A052905 (n + 3)).toNat

end

end A229584.P9417632129160292989

/-! ## A229584.P486387060178552255

`A229586(eq[3, A219347(n)])`
-/

namespace A229584.P486387060178552255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229584.P486387060178552255

/-! ## A229584.P6392385167379835815

`A229586(eq[5, A193592(n)])`
-/

namespace A229584.P6392385167379835815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229584.P6392385167379835815

/-! ## A229584.P3361311573558893050

`A229586(eq[8, A185782(n+1)])`
-/

namespace A229584.P3361311573558893050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229584.P3361311573558893050

/-!
# A229585: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229585, there is no canonical definition to state claims against.
-/

/-! ## A229585.P7703637604545372459

`A268903(n+1)/6`
-/

namespace A229585.P7703637604545372459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268903 (n + 1) : ℚ) / 6

end

end A229585.P7703637604545372459

/-! ## A229585.P5094720156832584011

`(A268970(n+1)-A233154(n+1))/6`
-/

namespace A229585.P5094720156832584011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268970 (n + 1) - A233154 (n + 1) : ℚ) / 6

end

end A229585.P5094720156832584011

/-! ## A229585.P16651429540717330499

`A229586(eq[4, A219347(n)])`
-/

namespace A229585.P16651429540717330499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229585.P16651429540717330499

/-! ## A229585.P15085166406370217637

`A229586(eq[6, A193592(n)])`
-/

namespace A229585.P15085166406370217637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229585.P15085166406370217637

/-! ## A229585.P13310610139083801131

`A229586(eq[10, A185782(n+1)])`
-/

namespace A229585.P13310610139083801131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229585.P13310610139083801131

/-!
# A229586: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229586, there is no canonical definition to state claims against.
-/

/-! ## A229586.P16311585902178666946

`round(A268904(n+1)/6)`
-/

namespace A229586.P16311585902178666946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A268904 (n + 1) : ℚ) / 6)

end

end A229586.P16311585902178666946

/-! ## A229586.P12531734384227208645

`A268904(n+1)/gcd(6, A167667(n))`
-/

namespace A229586.P12531734384227208645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (Int.gcd 6 (A167667 n) : ℚ)

end

end A229586.P12531734384227208645

/-! ## A229586.P6960133823552767099

`ceil(A268904(n+1)/A267884(n+2))`
-/

namespace A229586.P6960133823552767099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268904 (n + 1) : ℚ) / (A267884 (n + 2) : ℚ)⌉

end

end A229586.P6960133823552767099

/-! ## A229586.P14206236119567461043

`A268904(n+1)/A267884(A257143(n))`
-/

namespace A229586.P14206236119567461043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (A267884 (A257143 n).toNat : ℚ)

end

end A229586.P14206236119567461043

/-! ## A229586.P381950907350633412

`A268904(n+1)/A267884(A000007(n)+n)`
-/

namespace A229586.P381950907350633412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (A267884 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A229586.P381950907350633412

/-! ## A229586.P16056062970365672812

`A268904(n+1)/gcd(A233155(n+1), A267884(n))`
-/

namespace A229586.P16056062970365672812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (Int.gcd (A233155 (n + 1)) (A267884 n) : ℚ)

end

end A229586.P16056062970365672812

/-! ## A229586.P17487624807981606620

`A268904(n+1)/A089353(A034856(n+1))`
-/

namespace A229586.P17487624807981606620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (A089353 (A034856 (n + 1)).toNat : ℚ)

end

end A229586.P17487624807981606620

/-!
# A229587: Number of defective 3-colorings of a 2 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229587, the canonical program `A229587.P6883557368480973696` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229587 has offset 1).

The definition of A229587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229587.P6883557368480973696

`6*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=6, a(2)=28, a(3)=116`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229587

/-- `6*a(n-1)-9*a(n-2)` -/
def P6883557368480973696.Spec : Prop :=
  ∀ n, P6883557368480973696.a n = A229587 (n + 1)

theorem P6883557368480973696.correct : P6883557368480973696.Spec := by
  intro n
  simp only [A229587, Nat.add_sub_cancel]

end A229587

/-! ## A229587.P9619445179300897869

`ogf((6x-8x^2+2x^3)/(1-6x+9x^2))`
-/

namespace A229587.P9619445179300897869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -8, 2] [1, -6, 9] n

end

end A229587.P9619445179300897869

namespace A229587

/-- `ogf((6x-8x^2+2x^3)/(1-6x+9x^2))` -/
def P9619445179300897869.Spec : Prop :=
  ∀ n, P9619445179300897869.a n = A229587 (n + 1)

end A229587

/-! ## A229587.P12810845528437092619

`2*(round((n+4)*16*3^(n-3))-Δ[3^n])`
-/

namespace A229587.P12810845528437092619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A229587.P12810845528437092619

namespace A229587

/-- `2*(round((n+4)*16*3^(n-3))-Δ[3^n])` -/
def P12810845528437092619.Spec : Prop :=
  ∀ n, P12810845528437092619.a n = A229587 (n + 1)

end A229587

/-! ## A229587.P14677432207201636974

`Δ[3*a(n-1)+2*A118264(n)]` with `a(0)=0`
-/

namespace A229587.P14677432207201636974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * f1 (n - 1) + 2 * A118264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229587.P14677432207201636974

namespace A229587

/-- `Δ[3*a(n-1)+2*A118264(n)]` -/
def P14677432207201636974.Spec : Prop :=
  ∀ n, P14677432207201636974.a n = A229587 (n + 1)

end A229587

/-! ## A229587.P9077936400235164326

`A292482(n)+A292482(n)-A003946(n+1)`
-/

namespace A229587.P9077936400235164326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292482 n + (A292482 n - A003946 (n + 1))

end

end A229587.P9077936400235164326

namespace A229587

/-- `A292482(n)+A292482(n)-A003946(n+1)` -/
def P9077936400235164326.Spec : Prop :=
  ∀ n, P9077936400235164326.a n = A229587 (n + 1)

end A229587

/-! ## A229587.P7963655796168980588

`A268905(n+1)/6`
-/

namespace A229587.P7963655796168980588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268905 (n + 1) : ℚ) / 6

end

end A229587.P7963655796168980588

namespace A229587

/-- `A268905(n+1)/6` -/
def P7963655796168980588.Spec : Prop :=
  ∀ n, P7963655796168980588.a n = (A229587 (n + 1) : ℚ)

end A229587

/-!
# A229588: Number of defective 3-colorings of a 3 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229588, there is no canonical definition to state claims against.
-/

/-! ## A229588.P10104361277058577218

`A268906(n+1)/6`
-/

namespace A229588.P10104361277058577218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268906 (n + 1) : ℚ) / 6

end

end A229588.P10104361277058577218

/-! ## A229588.P18409468301714407618

`A229586(∑[n+2]+4)`
-/

namespace A229588.P18409468301714407618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229588.P18409468301714407618

/-! ## A229588.P6995869119976948983

`A268904(A167614(n+1))/6`
-/

namespace A229588.P6995869119976948983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (A167614 (n + 1)).toNat : ℚ) / 6

end

end A229588.P6995869119976948983

/-! ## A229588.P10012859662030104464

`A268904(∑[n+2]+4)/A267884(n+2)`
-/

namespace A229588.P10012859662030104464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / (A267884 (n + 2) : ℚ)

end

end A229588.P10012859662030104464

/-! ## A229588.P15910657543155920095

`A229586(A167614(n+1))+A185284(n)`
-/

namespace A229588.P15910657543155920095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A167614 (n + 1)).toNat + A185284 n

end

end A229588.P15910657543155920095

/-!
# A229589: Number of defective 3-colorings of a 4 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229589, there is no canonical definition to state claims against.
-/

/-! ## A229589.P17062454066373842999

`A268907(n+1)/6`
-/

namespace A229589.P17062454066373842999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268907 (n + 1) : ℚ) / 6

end

end A229589.P17062454066373842999

/-! ## A229589.P17178545805935241613

`A229586(A141214(n)+7)`
-/

namespace A229589.P17178545805935241613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A141214 n + 7).toNat

end

end A229589.P17178545805935241613

/-! ## A229589.P11366726113912983058

`A229586(A052905(n)+9)`
-/

namespace A229589.P11366726113912983058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A052905 n + 9).toNat

end

end A229589.P11366726113912983058

/-! ## A229589.P364721668301515189

`A229586(A055999(n)+10)`
-/

namespace A229589.P364721668301515189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A055999 n + 10).toNat

end

end A229589.P364721668301515189

/-! ## A229589.P4691799747694652244

`A229586(A167614(n+2)+1)`
-/

namespace A229589.P4691799747694652244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A167614 (n + 2) + 1).toNat

end

end A229589.P4691799747694652244

/-!
# A229590: Number of defective 3-colorings of a 5 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229590, there is no canonical definition to state claims against.
-/

/-! ## A229590.P13600010831863386275

`A268908(n+1)/6`
-/

namespace A229590.P13600010831863386275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268908 (n + 1) : ℚ) / 6

end

end A229590.P13600010831863386275

/-! ## A229590.P16201795849471432635

`A229586(A155212(n)+13)`
-/

namespace A229590.P16201795849471432635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A155212 n + 13).toNat

end

end A229590.P16201795849471432635

/-! ## A229590.P13647553754563488990

`A229586(A056000(n)+15)`
-/

namespace A229590.P13647553754563488990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A056000 n + 15).toNat

end

end A229590.P13647553754563488990

/-! ## A229590.P340709240973638559

`A229586(eq[7, A066657(n)])`
-/

namespace A229590.P340709240973638559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229590.P340709240973638559

/-! ## A229590.P1602789620207213102

`A229586(eq[6, A131818(n+1)])`
-/

namespace A229590.P1602789620207213102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229590.P1602789620207213102

/-!
# A229591: Number of defective 3-colorings of a 6 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229591, there is no canonical definition to state claims against.
-/

/-! ## A229591.P15669769849801380023

`A268909(n+1)/6`
-/

namespace A229591.P15669769849801380023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268909 (n + 1) : ℚ) / 6

end

end A229591.P15669769849801380023

/-! ## A229591.P8535521804998015477

`A229586(A000217(n+5)+6)`
-/

namespace A229591.P8535521804998015477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A000217 (n + 5) + 6).toNat

end

end A229591.P8535521804998015477

/-! ## A229591.P6690545379657583661

`A229586(A056000(n+1)+16)`
-/

namespace A229591.P6690545379657583661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A056000 (n + 1) + 16).toNat

end

end A229591.P6690545379657583661

/-! ## A229591.P4453623348066075632

`A229586(eq[7, A131818(n+1)])`
-/

namespace A229591.P4453623348066075632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229591.P4453623348066075632

/-! ## A229591.P5075922883794123858

`A229586(Δ[A023545(n+1)]+10)`
-/

namespace A229591.P5075922883794123858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (f1 (n + 1) - f1 n + 10).toNat

end

end A229591.P5075922883794123858

/-!
# A229592: Number of defective 3-colorings of a 7 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229592, there is no canonical definition to state claims against.
-/

/-! ## A229592.P17524832314322208716

`A268910(n+1)/6`
-/

namespace A229592.P17524832314322208716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268910 (n + 1) : ℚ) / 6

end

end A229592.P17524832314322208716

/-! ## A229592.P9338341424995600756

`A229586(A056119(n)+28)`
-/

namespace A229592.P9338341424995600756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A056119 n + 28).toNat

end

end A229592.P9338341424995600756

/-! ## A229592.P12759588908222196071

`A229586(A167499(n+5)+2)`
-/

namespace A229592.P12759588908222196071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A167499 (n + 5) + 2).toNat

end

end A229592.P12759588908222196071

/-! ## A229592.P2820383638121527127

`A268904(A056119(n)+28)/6`
-/

namespace A229592.P2820383638121527127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (A056119 n + 28).toNat : ℚ) / 6

end

end A229592.P2820383638121527127

/-! ## A229592.P14654994891038819240

`A229586(eq[8, A131818(n+1)])`
-/

namespace A229592.P14654994891038819240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229592.P14654994891038819240

/-!
# A229593: Number of boomerang patterns appearing in n X n coins, rotation not allowed.

The programs for A229593, the canonical program `A229593.P2204322222876940530` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229593 has offset 2).

The definition of A229593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229593.P2204322222876940530

`(n+1)*floor((n+2)/3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229593

/-- `(n+1)*floor((n+2)/3)` -/
def P2204322222876940530.Spec : Prop :=
  ∀ n, P2204322222876940530.a n = A229593 (n + 2)

theorem P2204322222876940530.correct : P2204322222876940530.Spec := by
  intro n
  simp only [A229593, Nat.add_sub_cancel]

end A229593

/-! ## A229593.P10025677846361999327

`round(round((n+1)/3)/acot(n+1))`
-/

namespace A229593.P10025677846361999327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n + 1 : ℚ) / 3) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))

end

end A229593.P10025677846361999327

namespace A229593

/-- `round(round((n+1)/3)/acot(n+1))` -/
def P10025677846361999327.Spec : Prop :=
  ∀ n, P10025677846361999327.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P11432044012425196525

`floor((n+1)*∑[a(n-3)²])` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A229593.P11432044012425196525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P11432044012425196525

namespace A229593

/-- `floor((n+1)*∑[a(n-3)²])` -/
def P11432044012425196525.Spec : Prop :=
  ∀ n, (P11432044012425196525.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P17308429417822622015

`floor((n+1)*∑[a(n-3)^3])` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A229593.P17308429417822622015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P17308429417822622015

namespace A229593

/-- `floor((n+1)*∑[a(n-3)^3])` -/
def P17308429417822622015.Spec : Prop :=
  ∀ n, (P17308429417822622015.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P7558121349555649907

`∑[a(n-3)²]/(n+1)^(-1)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A229593.P7558121349555649907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A229593.P7558121349555649907

namespace A229593

/-- `∑[a(n-3)²]/(n+1)^(-1)` -/
def P7558121349555649907.Spec : Prop :=
  ∀ n, P7558121349555649907.a n = (A229593 (n + 2) : ℚ)

end A229593

/-! ## A229593.P17445710654207881228

`∑[floor(a(n-3))]/(n+1)^(-1)` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A229593.P17445710654207881228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A229593.P17445710654207881228

namespace A229593

/-- `∑[floor(a(n-3))]/(n+1)^(-1)` -/
def P17445710654207881228.Spec : Prop :=
  ∀ n, P17445710654207881228.a n = (A229593 (n + 2) : ℚ)

end A229593

/-! ## A229593.P5436381400581223396

`(n+1)*A302402(n)/2`
-/

namespace A229593.P5436381400581223396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A302402 n : ℚ) / 2

end

end A229593.P5436381400581223396

namespace A229593

/-- `(n+1)*A302402(n)/2` -/
def P5436381400581223396.Spec : Prop :=
  ∀ n, P5436381400581223396.a n = (A229593 (n + 2) : ℚ)

theorem P5436381400581223396.correct : P5436381400581223396.Spec := by
  intro n
  simp only [A229593, Nat.add_sub_cancel, A229593.P5436381400581223396.a, A229593.P2204322222876940530.a, A302402, A302402.P7836109694096223322.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229593

/-! ## A229593.P17650640110687532174

`A007980(n)-A089598(n)`
-/

namespace A229593.P17650640110687532174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - A089598 n

end

end A229593.P17650640110687532174

namespace A229593

/-- `A007980(n)-A089598(n)` -/
def P17650640110687532174.Spec : Prop :=
  ∀ n, P17650640110687532174.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P3765630678585769406

`∪[A033428(n), A152749(n)]`
-/

namespace A229593.P3765630678585769406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229593.P3765630678585769406

namespace A229593

/-- `∪[A033428(n), A152749(n)]` -/
def P3765630678585769406.Spec : Prop :=
  ∀ n, (P3765630678585769406.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P16166006879110917979

`A068626(n+1)-A092092(n+1)`
-/

namespace A229593.P16166006879110917979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (n + 1) - A092092 (n + 1)

end

end A229593.P16166006879110917979

namespace A229593

/-- `A068626(n+1)-A092092(n+1)` -/
def P16166006879110917979.Spec : Prop :=
  ∀ n, P16166006879110917979.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P10574429302590977437

`A229598(n+2)-A162397(n+1)`
-/

namespace A229593.P10574429302590977437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229598 (n + 2) - A162397 (n + 1)

end

end A229593.P10574429302590977437

namespace A229593

/-- `A229598(n+2)-A162397(n+1)` -/
def P10574429302590977437.Spec : Prop :=
  ∀ n, P10574429302590977437.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P5317920268908959756

`A184628(n+1)%A331943(n+1)`
-/

namespace A229593.P5317920268908959756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A331943 (n + 1))

end

end A229593.P5317920268908959756

namespace A229593

/-- `A184628(n+1)%A331943(n+1)` -/
def P5317920268908959756.Spec : Prop :=
  ∀ n, P5317920268908959756.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P6557286188753541032

`A082667(n+1)+(n-A004523(n))²`
-/

namespace A229593.P6557286188753541032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1) + ((n : ℤ) - A004523 n) ^ 2

end

end A229593.P6557286188753541032

namespace A229593

/-- `A082667(n+1)+(n-A004523(n))²` -/
def P6557286188753541032.Spec : Prop :=
  ∀ n, P6557286188753541032.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P14277878439395077494

`A000212(n+1)-A008611(n+1)*A049347(n)`
-/

namespace A229593.P14277878439395077494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1) - A008611 (n + 1) * A049347 n

end

end A229593.P14277878439395077494

namespace A229593

/-- `A000212(n+1)-A008611(n+1)*A049347(n)` -/
def P14277878439395077494.Spec : Prop :=
  ∀ n, P14277878439395077494.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P56097306237108643

`A082667(n+1)+A082667(n+1)-A008130(n+1)`
-/

namespace A229593.P56097306237108643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1) + (A082667 (n + 1) - A008130 (n + 1))

end

end A229593.P56097306237108643

namespace A229593

/-- `A082667(n+1)+A082667(n+1)-A008130(n+1)` -/
def P56097306237108643.Spec : Prop :=
  ∀ n, P56097306237108643.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P7072096971676285420

`A211546(n+2)+A211534(n+2)`
-/

namespace A229593.P7072096971676285420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 (n + 2) + A211534 (n + 2)

end

end A229593.P7072096971676285420

namespace A229593

/-- `A211546(n+2)+A211534(n+2)` -/
def P7072096971676285420.Spec : Prop :=
  ∀ n, P7072096971676285420.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P6730730884326227780

`A242669(n+2)-A002264(n+2)`
-/

namespace A229593.P6730730884326227780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242669 (n + 2) - A002264 (n + 2)

end

end A229593.P6730730884326227780

namespace A229593

/-- `A242669(n+2)-A002264(n+2)` -/
def P6730730884326227780.Spec : Prop :=
  ∀ n, P6730730884326227780.a n = A229593 (n + 2)

theorem P6730730884326227780.correct : P6730730884326227780.Spec := by
  intro n
  simp only [A229593, Nat.add_sub_cancel, A229593.P6730730884326227780.a, A229593.P2204322222876940530.a, A002264, A002264.P5647656940077635922.a, A242669, A242669.P17955834880435714991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229593

/-! ## A229593.P15447792085927317825

`A389430(A004772(n+1))`
-/

namespace A229593.P15447792085927317825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389430 (A004772 (n + 1)).toNat

end

end A229593.P15447792085927317825

namespace A229593

/-- `A389430(A004772(n+1))` -/
def P15447792085927317825.Spec : Prop :=
  ∀ n, P15447792085927317825.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P4126134486254196486

`A296161(A042965(n+2))`
-/

namespace A229593.P4126134486254196486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296161 (A042965 (n + 2)).toNat

end

end A229593.P4126134486254196486

namespace A229593

/-- `A296161(A042965(n+2))` -/
def P4126134486254196486.Spec : Prop :=
  ∀ n, P4126134486254196486.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P8925138314336911284

`record[A008615(n)*A008619(n)]`
-/

namespace A229593.P8925138314336911284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229593.P8925138314336911284

namespace A229593

/-- `record[A008615(n)*A008619(n)]` -/
def P8925138314336911284.Spec : Prop :=
  ∀ n, P8925138314336911284.a n = A229593 (n + 2)

end A229593

/-!
# A229598: Voids left when packing boomerangs into n X n coins.

The programs for A229598, the canonical program `A229598.P10624151354738347624` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229598 has offset 2).

The definition of A229598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229598.P4968785048340173818

`(n+1)*∑[(-1)^(n%3)]`
-/

namespace A229598.P4968785048340173818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229598.P4968785048340173818

namespace A229598

/-- `(n+1)*∑[(-1)^(n%3)]` -/
def P4968785048340173818.Spec : Prop :=
  ∀ n, P4968785048340173818.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P10624151354738347624

`floor(((n+2)%3+n)²/3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A229598

/-- `floor(((n+2)%3+n)²/3)` -/
def P10624151354738347624.Spec : Prop :=
  ∀ n, P10624151354738347624.a n = A229598 (n + 2)

theorem P10624151354738347624.correct : P10624151354738347624.Spec := by
  intro n
  simp only [A229598, Nat.add_sub_cancel]

end A229598

/-! ## A229598.P18235676837627713714

`(n+1)*∑[2-gcd(3, 1-n)]`
-/

namespace A229598.P18235676837627713714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 3 (1 - (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229598.P18235676837627713714

namespace A229598

/-- `(n+1)*∑[2-gcd(3, 1-n)]` -/
def P18235676837627713714.Spec : Prop :=
  ∀ n, P18235676837627713714.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P7927178942112018838

`(n+1)*(or(1, comp[or(3, n)])-n)`
-/

namespace A229598.P7927178942112018838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - (n : ℤ))

end

end A229598.P7927178942112018838

namespace A229598

/-- `(n+1)*(or(1, comp[or(3, n)])-n)` -/
def P7927178942112018838.Spec : Prop :=
  ∀ n, P7927178942112018838.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P6314649523642835906

`round(((2*n)%3-(n+2))²/3)`
-/

namespace A229598.P6314649523642835906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((((2 * n % 3 : ℕ) : ℤ) - (n + 2 : ℤ)) ^ 2 : ℚ) / 3)

end

end A229598.P6314649523642835906

namespace A229598

/-- `round(((2*n)%3-(n+2))²/3)` -/
def P6314649523642835906.Spec : Prop :=
  ∀ n, P6314649523642835906.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P442860354591557595

`(n+1)*∑[floor(a(n-3))]` with `a(0)=1, a(1)=-1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A229598.P442860354591557595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229598.P442860354591557595

namespace A229598

/-- `(n+1)*∑[floor(a(n-3))]` -/
def P442860354591557595.Spec : Prop :=
  ∀ n, P442860354591557595.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P15609504835284356821

`(n+1)*Δ[a(n-3)+n-1]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A229598.P15609504835284356821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 3) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A229598.P15609504835284356821

namespace A229598

/-- `(n+1)*Δ[a(n-3)+n-1]` -/
def P15609504835284356821.Spec : Prop :=
  ∀ n, P15609504835284356821.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P5459456060693575157

`(n+1)*A008611(n)`
-/

namespace A229598.P5459456060693575157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008611 n

end

end A229598.P5459456060693575157

namespace A229598

/-- `(n+1)*A008611(n)` -/
def P5459456060693575157.Spec : Prop :=
  ∀ n, P5459456060693575157.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P15529119458988755228

`(n+1)*∑[A257075(n)]`
-/

namespace A229598.P15529119458988755228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229598.P15529119458988755228

namespace A229598

/-- `(n+1)*∑[A257075(n)]` -/
def P15529119458988755228.Spec : Prop :=
  ∀ n, P15529119458988755228.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P8098659113568807771

`(n+1)*(A168056(n)-n)`
-/

namespace A229598.P8098659113568807771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A168056 n - (n : ℤ))

end

end A229598.P8098659113568807771

namespace A229598

/-- `(n+1)*(A168056(n)-n)` -/
def P8098659113568807771.Spec : Prop :=
  ∀ n, P8098659113568807771.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P4026799849415237483

`(n+1)*(n+1-A302402(n))`
-/

namespace A229598.P4026799849415237483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A302402 n)

end

end A229598.P4026799849415237483

namespace A229598

/-- `(n+1)*(n+1-A302402(n))` -/
def P4026799849415237483.Spec : Prop :=
  ∀ n, P4026799849415237483.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P7244423493744507701

`(n+1)*Δ[ceil(∑[n/3])]`
-/

namespace A229598.P7244423493744507701
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A229598.P7244423493744507701

namespace A229598

/-- `(n+1)*Δ[ceil(∑[n/3])]` -/
def P7244423493744507701.Spec : Prop :=
  ∀ n, P7244423493744507701.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P9735420219837289540

`A000212(A064429(n+1))`
-/

namespace A229598.P9735420219837289540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A064429 (n + 1)).toNat

end

end A229598.P9735420219837289540

namespace A229598

/-- `A000212(A064429(n+1))` -/
def P9735420219837289540.Spec : Prop :=
  ∀ n, P9735420219837289540.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P5291968110950247350

`A000212(A049347(n)+n+1)`
-/

namespace A229598.P5291968110950247350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A049347 n + (n + 1 : ℤ)).toNat

end

end A229598.P5291968110950247350

namespace A229598

/-- `A000212(A049347(n)+n+1)` -/
def P5291968110950247350.Spec : Prop :=
  ∀ n, P5291968110950247350.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P2317882133635376365

`A000212(n+1-A057078(n+2))`
-/

namespace A229598.P2317882133635376365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 ((n + 1 : ℤ) - A057078 (n + 2)).toNat

end

end A229598.P2317882133635376365

namespace A229598

/-- `A000212(n+1-A057078(n+2))` -/
def P2317882133635376365.Spec : Prop :=
  ∀ n, P2317882133635376365.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P11511059091132940421

`A272212(A004772(n+2))`
-/

namespace A229598.P11511059091132940421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (A004772 (n + 2)).toNat

end

end A229598.P11511059091132940421

namespace A229598

/-- `A272212(A004772(n+2))` -/
def P11511059091132940421.Spec : Prop :=
  ∀ n, P11511059091132940421.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P18120491976665743119

`A272212(A042968(n+2))`
-/

namespace A229598.P18120491976665743119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (A042968 (n + 2)).toNat

end

end A229598.P18120491976665743119

namespace A229598

/-- `A272212(A042968(n+2))` -/
def P18120491976665743119.Spec : Prop :=
  ∀ n, P18120491976665743119.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P1008061450259236041

`A272212(A047519(n+2))`
-/

namespace A229598.P1008061450259236041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (A047519 (n + 2)).toNat

end

end A229598.P1008061450259236041

namespace A229598

/-- `A272212(A047519(n+2))` -/
def P1008061450259236041.Spec : Prop :=
  ∀ n, P1008061450259236041.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P2650295264770478077

`A272212(A047587(n+2))`
-/

namespace A229598.P2650295264770478077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (A047587 (n + 2)).toNat

end

end A229598.P2650295264770478077

namespace A229598

/-- `A272212(A047587(n+2))` -/
def P2650295264770478077.Spec : Prop :=
  ∀ n, P2650295264770478077.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P10952610589905788701

`A272212(A319371(n+2))`
-/

namespace A229598.P10952610589905788701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (A319371 (n + 2)).toNat

end

end A229598.P10952610589905788701

namespace A229598

/-- `A272212(A319371(n+2))` -/
def P10952610589905788701.Spec : Prop :=
  ∀ n, P10952610589905788701.a n = A229598 (n + 2)

end A229598

/-!
# A229599: Number of defective 3-colorings of an n X n 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229599, there is no canonical definition to state claims against.
-/

/-! ## A229599.P14302274768636335951

`A229606(∑[4*n]+1)`
-/

namespace A229599.P14302274768636335951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229599.P14302274768636335951

/-! ## A229599.P4657726289318330149

`lcm(2, A229606(A001844(n)))`
-/

namespace A229599.P4657726289318330149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229606 (A001844 n).toNat)

end

end A229599.P4657726289318330149

/-! ## A229599.P947551257892005143

`record[A003982(n)*A229606(n+1)]`
-/

namespace A229599.P947551257892005143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229599.P947551257892005143

/-! ## A229599.P8930799001208350111

`char[A007318(n)]*A229606(A001844(n))`
-/

namespace A229599.P8930799001208350111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A229606 (A001844 n).toNat

end

end A229599.P8930799001208350111

/-! ## A229599.P14366532003915241796

`A014963(6*(n+1))*A229606(A001844(n))`
-/

namespace A229599.P14366532003915241796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A229606 (A001844 n).toNat

end

end A229599.P14366532003915241796

