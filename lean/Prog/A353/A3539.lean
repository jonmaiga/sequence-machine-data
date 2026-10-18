import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A353900: a(n) is the sum of divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

The programs for A353900, the canonical program `A353900.P14141472895883448700` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353900 has offset 1).

The definition of A353900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353900.P14141472895883448700

`∑{d}[n+1, #*A355823(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A353900

/-- `∑{d}[n+1, #*A355823(#)]` -/
def P14141472895883448700.Spec : Prop :=
  ∀ n, P14141472895883448700.a n = A353900 (n + 1)

theorem P14141472895883448700.correct : P14141472895883448700.Spec := by
  intro n
  simp only [A353900, Nat.add_sub_cancel]

end A353900

/-! ## A353900.P11707449549278514764

`A051378(A353897(n+1))`
-/

namespace A353900.P11707449549278514764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051378 (A353897 (n + 1)).toNat

end

end A353900.P11707449549278514764

namespace A353900

/-- `A051378(A353897(n+1))` -/
def P11707449549278514764.Spec : Prop :=
  ∀ n, P11707449549278514764.a n = A353900 (n + 1)

end A353900

/-! ## A353900.P8236929733840142657

`A394255(A372329(n+1))`
-/

namespace A353900.P8236929733840142657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394255 (A372329 (n + 1)).toNat

end

end A353900.P8236929733840142657

namespace A353900

/-- `A394255(A372329(n+1))` -/
def P8236929733840142657.Spec : Prop :=
  ∀ n, P8236929733840142657.a n = A353900 (n + 1)

end A353900

/-! ## A353900.P6745233308704052774

`A366903(n+1)%A162433(2*(n+1))`
-/

namespace A353900.P6745233308704052774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366903 (n + 1)) (A162433 (2 * (n + 1)))

end

end A353900.P6745233308704052774

namespace A353900

/-- `A366903(n+1)%A162433(2*(n+1))` -/
def P6745233308704052774.Spec : Prop :=
  ∀ n, P6745233308704052774.a n = A353900 (n + 1)

end A353900

/-! ## A353900.P2204286010754453491

`A366903(n+1)%A335574(A300230(n+1))`
-/

namespace A353900.P2204286010754453491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366903 (n + 1)) (A335574 (A300230 (n + 1)).toNat)

end

end A353900.P2204286010754453491

namespace A353900

/-- `A366903(n+1)%A335574(A300230(n+1))` -/
def P2204286010754453491.Spec : Prop :=
  ∀ n, P2204286010754453491.a n = A353900 (n + 1)

end A353900

/-! ## A353900.P17550603992140211922

`A366903(n+1)%A255055(A028387(n))`
-/

namespace A353900.P17550603992140211922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366903 (n + 1)) (A255055 (A028387 n).toNat)

end

end A353900.P17550603992140211922

namespace A353900

/-- `A366903(n+1)%A255055(A028387(n))` -/
def P17550603992140211922.Spec : Prop :=
  ∀ n, P17550603992140211922.a n = A353900 (n + 1)

end A353900

/-! ## A353900.P9088526334111474103

`A366903(n+1)+A079979(A007491(2*n+5))`
-/

namespace A353900.P9088526334111474103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366903 (n + 1) + A079979 (A007491 (2 * n + 5)).toNat

end

end A353900.P9088526334111474103

namespace A353900

/-- `A366903(n+1)+A079979(A007491(2*n+5))` -/
def P9088526334111474103.Spec : Prop :=
  ∀ n, P9088526334111474103.a n = A353900 (n + 1)

end A353900

/-! ## A353900.P18113372682184372948

`and(A366903(n+1), A381707(n+1))`
-/

namespace A353900.P18113372682184372948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A366903 (n + 1)) (A381707 (n + 1))

end

end A353900.P18113372682184372948

namespace A353900

/-- `and(A366903(n+1), A381707(n+1))` -/
def P18113372682184372948.Spec : Prop :=
  ∀ n, P18113372682184372948.a n = A353900 (n + 1)

end A353900

/-! ## A353900.P4138501429610447974

`A008833(A002327(n+1))*A366903(n+1)`
-/

namespace A353900.P4138501429610447974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A002327 (n + 1)).toNat * A366903 (n + 1)

end

end A353900.P4138501429610447974

namespace A353900

/-- `A008833(A002327(n+1))*A366903(n+1)` -/
def P4138501429610447974.Spec : Prop :=
  ∀ n, P4138501429610447974.a n = A353900 (n + 1)

end A353900

/-! ## A353900.P2041097421721714762

`A366903(n+1)+A000122(A088878(3*(n+1)))`
-/

namespace A353900.P2041097421721714762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366903 (n + 1) + A000122 (A088878 (3 * (n + 1))).toNat

end

end A353900.P2041097421721714762

namespace A353900

/-- `A366903(n+1)+A000122(A088878(3*(n+1)))` -/
def P2041097421721714762.Spec : Prop :=
  ∀ n, P2041097421721714762.a n = A353900 (n + 1)

end A353900

/-!
# A353901: Numbers k such that A353900(k) is divisible by k.

The programs for A353901, there is no canonical definition to state claims against.
-/

/-! ## A353901.P15624639243180485781

`lcm(A000005(A037293(n)), A115285(n))`
-/

namespace A353901.P15624639243180485781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A037293 n).toNat) (A115285 n)

end

end A353901.P15624639243180485781

/-!
# A353902: Number of partitions of n in which exactly one even part is repeated and odd parts are unrestricted.

The programs for A353902, there is no canonical definition to state claims against.
-/

/-! ## A353902.P960850977060690692

`A328546(n+1)-record[A174715(n)]`
-/

namespace A353902.P960850977060690692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328546 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353902.P960850977060690692

/-! ## A353902.P10652615857638311126

`A239952(A289207(n))%A120707(n)`
-/

namespace A353902.P10652615857638311126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239952 (A289207 n).toNat) (A120707 n)

end

end A353902.P10652615857638311126

/-! ## A353902.P2561884345747914797

`A341154(n)%A331158(A331174(n+1))-A000124(A004526(n))`
-/

namespace A353902.P2561884345747914797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341154 n) (A331158 (A331174 (n + 1)).toNat) - A000124 (A004526 n).toNat

end

end A353902.P2561884345747914797

/-!
# A353903: Number of partitions of n in which exactly one odd part is repeated and even parts are unrestricted.

The programs for A353903, there is no canonical definition to state claims against.
-/

/-! ## A353903.P6613170186957341238

`A083920(A007604(n+1))%A234890(A000124(n+5)+5)`
-/

namespace A353903.P6613170186957341238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083920 (A007604 (n + 1)).toNat) (A234890 (A000124 (n + 5) + 5).toNat)

end

end A353903.P6613170186957341238

/-! ## A353903.P8986852991787016666

`A344650(n)+A284394(A001372(n))`
-/

namespace A353903.P8986852991787016666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344650 n + A284394 (A001372 n).toNat

end

end A353903.P8986852991787016666

/-! ## A353903.P9527116336190110721

`A332294(A332290(n+1))-A118251(n+1)`
-/

namespace A353903.P9527116336190110721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (A332290 (n + 1)).toNat - A118251 (n + 1)

end

end A353903.P9527116336190110721

/-!
# A353904: a(1) = 1; for n > 1, a(n) is the smallest positive number that has not yet appeared that is coprime to a(n-1), does not equal a(n-1)+1, and differs from a(n-1) at every digit.

The programs for A353904, there is no canonical definition to state claims against.
-/

/-! ## A353904.P17746977720871886003

`A353780(n+1)-A051344(A329929(n+1))`
-/

namespace A353904.P17746977720871886003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353780 (n + 1) - A051344 (A329929 (n + 1)).toNat

end

end A353904.P17746977720871886003

/-! ## A353904.P16614121875718110422

`A353780(n+1)-A185236(A353906(n+1))`
-/

namespace A353904.P16614121875718110422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353780 (n + 1) - A185236 (A353906 (n + 1)).toNat

end

end A353904.P16614121875718110422

/-!
# A353906: a(n) is the {alternating sum of the digits of n} raised to the power {number of digits of n}.

The programs for A353906, the canonical program `A353906.P15322443910608635693` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353906 has offset 1).

The definition of A353906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353906.P15322443910608635693

`A055017(n+1)^A055642(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A353906

/-- `A055017(n+1)^A055642(n+1)` -/
def P15322443910608635693.Spec : Prop :=
  ∀ n, P15322443910608635693.a n = (A353906 (n + 1) : ℚ)

end A353906

/-! ## A353906.P14317380698322301175

`A225693(n+1)^∑{digits}[n, dr(10^#)]`
-/

namespace A353906.P14317380698322301175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (n + 1) ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum

end

end A353906.P14317380698322301175

namespace A353906

/-- `A225693(n+1)^∑{digits}[n, dr(10^#)]` -/
def P14317380698322301175.Spec : Prop :=
  ∀ n, P14317380698322301175.a n = A353906 (n + 1)

end A353906

/-! ## A353906.P13518043389257442976

`A225693(n+1)^A055642(n)`
-/

namespace A353906.P13518043389257442976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225693 (n + 1) : ℚ) ^ (A055642 n : ℤ)

end

end A353906.P13518043389257442976

namespace A353906

/-- `A225693(n+1)^A055642(n)` -/
def P13518043389257442976.Spec : Prop :=
  ∀ n, P13518043389257442976.a n = (A353906 (n + 1) : ℚ)

end A353906

/-! ## A353906.P10829493259259902585

`A225693(n+1)^∑{digits}[n, A065648(#)]`
-/

namespace A353906.P10829493259259902585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225693 (n + 1) : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A065648 x).sum : ℤ)

end

end A353906.P10829493259259902585

namespace A353906

/-- `A225693(n+1)^∑{digits}[n, A065648(#)]` -/
def P10829493259259902585.Spec : Prop :=
  ∀ n, P10829493259259902585.a n = (A353906 (n + 1) : ℚ)

end A353906

/-! ## A353906.P9391172989564790102

`A225693(n+1)^∑{digits}[n, A105591(#)]`
-/

namespace A353906.P9391172989564790102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225693 (n + 1) : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105591 x).sum : ℤ)

end

end A353906.P9391172989564790102

namespace A353906

/-- `A225693(n+1)^∑{digits}[n, A105591(#)]` -/
def P9391172989564790102.Spec : Prop :=
  ∀ n, P9391172989564790102.a n = (A353906 (n + 1) : ℚ)

end A353906

/-! ## A353906.P6881356918846734971

`A225693(n+1)^∑{digits}[n, A213217(#)]`
-/

namespace A353906.P6881356918846734971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225693 (n + 1) : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A213217 x).sum : ℤ)

end

end A353906.P6881356918846734971

namespace A353906

/-- `A225693(n+1)^∑{digits}[n, A213217(#)]` -/
def P6881356918846734971.Spec : Prop :=
  ∀ n, P6881356918846734971.a n = (A353906 (n + 1) : ℚ)

end A353906

/-! ## A353906.P10240360099576119236

`A274580(n+1)^∑{digits}[n, (#%2)!]`
-/

namespace A353906.P10240360099576119236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274580 (n + 1) ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

end

end A353906.P10240360099576119236

namespace A353906

/-- `A274580(n+1)^∑{digits}[n, (#%2)!]` -/
def P10240360099576119236.Spec : Prop :=
  ∀ n, P10240360099576119236.a n = A353906 (n + 1)

end A353906

/-! ## A353906.P10514457687693513505

`A101337(n+1)+A101337(n+1)-A113009(n+1)`
-/

namespace A353906.P10514457687693513505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (n + 1) + (A101337 (n + 1) - A113009 (n + 1))

end

end A353906.P10514457687693513505

namespace A353906

/-- `A101337(n+1)+A101337(n+1)-A113009(n+1)` -/
def P10514457687693513505.Spec : Prop :=
  ∀ n, P10514457687693513505.a n = A353906 (n + 1)

end A353906

/-!
# A353907: Numbers k such that k equals {alternating sum of digits of k} raised to the power of {number of digits of k}.

The programs for A353907, there is no canonical definition to state claims against.
-/

/-! ## A353907.P11634316493991433646

`A246605(A007532(n+1))`
-/

namespace A353907.P11634316493991433646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A007532 (n + 1)).toNat

end

end A353907.P11634316493991433646

/-! ## A353907.P4040983479952874152

`A246605(A228187(n+1))`
-/

namespace A353907.P4040983479952874152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A228187 (n + 1)).toNat

end

end A353907.P4040983479952874152

/-! ## A353907.P12211456042483705784

`A246605(A347189(n+1))`
-/

namespace A353907.P12211456042483705784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A347189 (n + 1)).toNat

end

end A353907.P12211456042483705784

/-! ## A353907.P14852704104257976255

`A246605(A061862(n+2))`
-/

namespace A353907.P14852704104257976255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A061862 (n + 2)).toNat

end

end A353907.P14852704104257976255

/-! ## A353907.P4202823572266654117

`A246605(A134703(n+2))`
-/

namespace A353907.P4202823572266654117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A134703 (n + 2)).toNat

end

end A353907.P4202823572266654117

/-!
# A353916: a(1) = 1, a(2) = 2. Let j = a(n-1) and let m = omega(gcd(j, k)) with gcd(j, k) > 1. For n > 2, a(n) = least k such that min(omega(j), omega(k)) = m and m < max(omega(j), omega(k)).

The programs for A353916, there is no canonical definition to state claims against.
-/

/-! ## A353916.P5458111626946375845

`A372975(n+1)%A372981(n+3)`
-/

namespace A353916.P5458111626946375845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372975 (n + 1)) (A372981 (n + 3))

end

end A353916.P5458111626946375845

/-! ## A353916.P341453009408665169

`A372975(n+1)+A324679(A324690(n))`
-/

namespace A353916.P341453009408665169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372975 (n + 1) + A324679 (A324690 n).toNat

end

end A353916.P341453009408665169

/-! ## A353916.P7987227142799671794

`A372975(n+1)%A004009(A023427(n))`
-/

namespace A353916.P7987227142799671794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372975 (n + 1)) (A004009 (A023427 n).toNat)

end

end A353916.P7987227142799671794

/-! ## A353916.P5066692319168412484

`A372975(n+1)+A279372(A025521(n+1))`
-/

namespace A353916.P5066692319168412484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372975 (n + 1) + A279372 (A025521 (n + 1)).toNat

end

end A353916.P5066692319168412484

/-! ## A353916.P12460877775004528133

`A003415(A066408(n+1))*A372975(n+1)`
-/

namespace A353916.P12460877775004528133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A066408 (n + 1)).toNat * A372975 (n + 1)

end

end A353916.P12460877775004528133

/-!
# A353918: a(n) is the number of ways to write n as a sum of distinct terms of A353889.

The programs for A353918, there is no canonical definition to state claims against.
-/

/-! ## A353918.P10722223336325027605

`A025855(n)^A285780(A029326(n))`
-/

namespace A353918.P10722223336325027605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025855 n : ℚ) ^ (A285780 (A029326 n).toNat : ℤ)

end

end A353918.P10722223336325027605

/-! ## A353918.P10441221009698653026

`A029324(n)^A285780(A029326(n))`
-/

namespace A353918.P10441221009698653026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029324 n : ℚ) ^ (A285780 (A029326 n).toNat : ℤ)

end

end A353918.P10441221009698653026

/-! ## A353918.P7666103703604816737

`gcd(A003515(A321429(n)), A321457(n))`
-/

namespace A353918.P7666103703604816737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003515 (A321429 n).toNat) (A321457 n)

end

end A353918.P7666103703604816737

/-! ## A353918.P8163489996632529106

`A327166(A045783(n+1)*A234000(n+2))`
-/

namespace A353918.P8163489996632529106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327166 (A045783 (n + 1) * A234000 (n + 2)).toNat

end

end A353918.P8163489996632529106

/-! ## A353918.P10377091064985168124

`A054635(A321457(n)^A061392(2*(n+2)))`
-/

namespace A353918.P10377091064985168124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (SequenceMachineLib.roundAway ((A321457 n : ℚ) ^ (A061392 (2 * (n + 2)) : ℤ))).toNat

end

end A353918.P10377091064985168124

/-!
# A353919: Numbers that are not the sum of distinct terms of A353889.

The programs for A353919, there is no canonical definition to state claims against.
-/

/-! ## A353919.P3378447251721842386

`eq[0, A353918(n)]`
-/

namespace A353919.P3378447251721842386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353919.P3378447251721842386

/-! ## A353919.P5266945558828230949

`record[gcd(A028310(n), A353918(n))]`
-/

namespace A353919.P5266945558828230949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A353918 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353919.P5266945558828230949

/-! ## A353919.P886319399777979597

`lt[A353918(n), acot(A000124(n))]`
-/

namespace A353919.P886319399777979597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353918 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000124 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A353919.P886319399777979597

/-! ## A353919.P4333613485980564820

`lt[A353918(n), acot(A004277(n))]`
-/

namespace A353919.P4333613485980564820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353918 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A004277 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A353919.P4333613485980564820

/-! ## A353919.P12758779096456181905

`lt[A353918(n), acot(A008458(n))]`
-/

namespace A353919.P12758779096456181905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353918 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008458 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A353919.P12758779096456181905

/-!
# A353920: Decimal expansion of the first positive real root of ((1 - sqrt(5))*((1 + sqrt(5)) /2)^x - (1 + sqrt(5))*((1 - sqrt(5))/2)^x)/(2*sqrt(5)).

The programs for A353920, there is no canonical definition to state claims against.
-/

/-! ## A353920.P17953227893230350777

`9-A089260(n)`
-/

namespace A353920.P17953227893230350777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A089260 n

end

end A353920.P17953227893230350777

/-!
# A353921: a(n) = n if n < 4, otherwise floor(abs(z(n))) where z(n) = (2^(2*n + 1/2) - 1)*(4*n + 1)*zeta(1/2 - 2*n).

The programs for A353921, there is no canonical definition to state claims against.
-/

/-! ## A353921.P13647293966314546425

`A085856(A007696(n))+n`
-/

namespace A353921.P13647293966314546425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 (A007696 n).toNat + (n : ℤ)

end

end A353921.P13647293966314546425

/-! ## A353921.P13700667630219515041

`A239689(A048578(n))+n`
-/

namespace A353921.P13700667630219515041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239689 (A048578 n).toNat + (n : ℤ)

end

end A353921.P13700667630219515041

/-!
# A353922: Number of distinct pairs of partially ordered sets and legal permutations on labeled directed acyclic graphs (DAGs) with n nodes.

The programs for A353922, there is no canonical definition to state claims against.
-/

/-! ## A353922.P754329445247561638

`n!*A369192(n)`
-/

namespace A353922.P754329445247561638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A369192 n

end

end A353922.P754329445247561638

/-! ## A353922.P10854780218948759109

`A000142(n)*A369192(n)`
-/

namespace A353922.P10854780218948759109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A369192 n

end

end A353922.P10854780218948759109

/-! ## A353922.P6606918906793024008

`A061602(n)*A369192(n)`
-/

namespace A353922.P6606918906793024008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n * A369192 n

end

end A353922.P6606918906793024008

/-!
# A353927: Product_{n>=1} (1 + x^n)^a(n) = 1 + Sum_{n>=1} mu(n)*x^n, where mu = A008683.

The programs for A353927, there is no canonical definition to state claims against.
-/

/-! ## A353927.P11162769819789490685

`∑{d}[n+1, A036987(#-1)*A320781((n+1)/#)]`
-/

namespace A353927.P11162769819789490685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A320781 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353927.P11162769819789490685

/-!
# A353929: Number of distinct sums of runs (of 0's or 1's) in the binary expansion of n.

The programs for A353929, there is no canonical definition to state claims against.
-/

/-! ## A353929.P11624138467284430321

`char[A164708(n+1)]+2-char[2^n-1]`
-/

namespace A353929.P11624138467284430321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A353929.P11624138467284430321

/-! ## A353929.P8883956252101872090

`A363131(A005940(n+1))+A043529(n)`
-/

namespace A353929.P8883956252101872090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363131 (A005940 (n + 1)).toNat + A043529 n

end

end A353929.P8883956252101872090

/-! ## A353929.P882571939416855585

`A351014(∑[A155865(n)]+n)`
-/

namespace A353929.P882571939416855585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A353929.P882571939416855585

/-! ## A353929.P17035229093108472266

`A059841(A077355(n+1))+A001221(n+1)`
-/

namespace A353929.P17035229093108472266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A077355 (n + 1)).toNat + A001221 (n + 1)

end

end A353929.P17035229093108472266

/-! ## A353929.P974575849641023116

`A020639(C(A179891(n+4), A325033(n+1)))`
-/

namespace A353929.P974575849641023116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (A179891 (n + 4)).toNat (A325033 (n + 1)).toNat)

end

end A353929.P974575849641023116

/-!
# A353930: Smallest number whose binary expansion has n distinct run-sums.

The programs for A353930, there is no canonical definition to state claims against.
-/

/-! ## A353930.P8618085695121525498

`xor(C(3, n²), A215203(n))`
-/

namespace A353930.P8618085695121525498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 3 (n ^ 2) : ℤ) (A215203 n)

end

end A353930.P8618085695121525498

/-! ## A353930.P16660387011251183807

`A215203(n)+char[A076127(n)]`
-/

namespace A353930.P16660387011251183807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076127 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215203 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A353930.P16660387011251183807

/-! ## A353930.P3230204795735738189

`A215203(n)+C(2, A000096(n))`
-/

namespace A353930.P3230204795735738189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215203 n + (Nat.choose 2 (A000096 n).toNat : ℤ)

end

end A353930.P3230204795735738189

/-! ## A353930.P18181453942450607756

`A329054(A000217(n))+A215203(n)`
-/

namespace A353930.P18181453942450607756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (A000217 n).toNat + A215203 n

end

end A353930.P18181453942450607756

/-! ## A353930.P17936983870347163026

`A215203(n)+A169611(A151800(n²))`
-/

namespace A353930.P17936983870347163026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215203 n + A169611 (A151800 (n ^ 2)).toNat

end

end A353930.P17936983870347163026

/-!
# A353931: Least run-sum of the prime indices of n.

The programs for A353931, there is no canonical definition to state claims against.
-/

/-! ## A353931.P2993067945521780156

`A055396(A353832(n+1))`
-/

namespace A353931.P2993067945521780156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A353832 (n + 1)).toNat

end

end A353931.P2993067945521780156

/-! ## A353931.P13412783185594602994

`A277697(∏{p}[A353832(n+1), #])`
-/

namespace A353931.P13412783185594602994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353931.P13412783185594602994

/-! ## A353931.P10001193674274095429

`A286471(2*A353832(n+1))`
-/

namespace A353931.P10001193674274095429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A353832 (n + 1)).toNat

end

end A353931.P10001193674274095429

/-! ## A353931.P1086486094314959464

`A277885(A353832(n+1)*A353832(n+1))`
-/

namespace A353931.P1086486094314959464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A353832 (n + 1) * A353832 (n + 1)).toNat

end

end A353931.P1086486094314959464

/-! ## A353931.P14343440847218389516

`A057427(n)*A363486(A353832(n+1))`
-/

namespace A353931.P14343440847218389516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A363486 (A353832 (n + 1)).toNat

end

end A353931.P14343440847218389516

/-! ## A353931.P10107996672474201718

`A363486(A353832(n+1)+A079978(3*n+1))`
-/

namespace A353931.P10107996672474201718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (A353832 (n + 1) + A079978 (3 * n + 1)).toNat

end

end A353931.P10107996672474201718

/-! ## A353931.P615336781362449598

`A056239(A034684(n+1))%A162597(n+1)`
-/

namespace A353931.P615336781362449598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A034684 (n + 1)).toNat) (A162597 (n + 1))

end

end A353931.P615336781362449598

/-!
# A353932: Irregular triangle read by rows where row k lists the run-sums of the k-th composition in standard order.

The programs for A353932, there is no canonical definition to state claims against.
-/

/-! ## A353932.P1240586124332156284

`A333769(n)*A374251(n+1)`
-/

namespace A353932.P1240586124332156284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 n * A374251 (n + 1)

end

end A353932.P1240586124332156284

/-! ## A353932.P16382527842219341873

`A066099(∑[A333769(n)])*A333769(n)`
-/

namespace A353932.P16382527842219341873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A333769 n

end

end A353932.P16382527842219341873

/-!
# A353933: a(n) is the permanent of the n X n symmetric matrix M(n) whose generic element M[i,j] is equal to the digital root of i*j.

The programs for A353933, there is no canonical definition to state claims against.
-/

/-! ## A353933.P4982300199204446235

`A362073(C(n, ceil(xor(n, n+1)/4)))`
-/

namespace A353933.P4982300199204446235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362073 (Nat.choose n ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat)

end

end A353933.P4982300199204446235

/-! ## A353933.P15907184850700625119

`A362073(A024642(n))`
-/

namespace A353933.P15907184850700625119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362073 (A024642 n).toNat

end

end A353933.P15907184850700625119

/-! ## A353933.P11505751552716777924

`A362073(A329581(n))`
-/

namespace A353933.P11505751552716777924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362073 (A329581 n).toNat

end

end A353933.P11505751552716777924

/-!
# A353934: Number of tilings of an n X n square using right trominoes, dominoes, and monominoes.

The programs for A353934, there is no canonical definition to state claims against.
-/

/-! ## A353934.P13511394406061699338

`A353877(∑[n]+n)`
-/

namespace A353934.P13511394406061699338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353877 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A353934.P13511394406061699338

/-! ## A353934.P17894072630524014412

`A353877(A000096(n))+A025469(n)`
-/

namespace A353934.P17894072630524014412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353877 (A000096 n).toNat + A025469 n

end

end A353934.P17894072630524014412

/-! ## A353934.P5732409973448951027

`gcd(11, A007318(n))*A353877(A000096(n))`
-/

namespace A353934.P5732409973448951027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A353877 (A000096 n).toNat

end

end A353934.P5732409973448951027

/-!
# A353935: Numbers k such that a cube cannot be divided into k subcubes.

The programs for A353935, there is no canonical definition to state claims against.
-/

/-! ## A353935.P1127219081952817359

`eq[0, A286935(n)]+1`
-/

namespace A353935.P1127219081952817359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353935.P1127219081952817359

/-! ## A353935.P1083166449381938685

`eq[0, Δ[A280953(n)]]+2`
-/

namespace A353935.P1083166449381938685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A353935.P1083166449381938685

/-! ## A353935.P13447167165217712905

`lt[A286935(n), A288120(n)]+1`
-/

namespace A353935.P13447167165217712905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353935.P13447167165217712905

/-! ## A353935.P2153062775821770900

`lt[A286935(n), A151934(n)!]+1`
-/

namespace A353935.P2153062775821770900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286935 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A151934 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353935.P2153062775821770900

/-! ## A353935.P11549608697158547017

`lt[A301317(A286935(n)+1), 2]+1`
-/

namespace A353935.P11549608697158547017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (A286935 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353935.P11549608697158547017

/-!
# A353937: Smallest b > 1 such that b^(p-1) == 1 (mod p^4) for p = prime(n).

The programs for A353937, there is no canonical definition to state claims against.
-/

/-! ## A353937.P11155116109375152590

`A257833(A167499(n+1)-1)`
-/

namespace A353937.P11155116109375152590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A167499 (n + 1) - 1).toNat

end

end A353937.P11155116109375152590

/-! ## A353937.P13137924301868371109

`A256517(A120389(n+1))`
-/

namespace A353937.P13137924301868371109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256517 (A120389 (n + 1)).toNat

end

end A353937.P13137924301868371109

/-! ## A353937.P354678105958921775

`A185103(p?[round(8*n/7)]²)`
-/

namespace A353937.P354678105958921775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A353937.P354678105958921775

/-! ## A353937.P16404511279410838065

`A185103(A001248(n+1))`
-/

namespace A353937.P16404511279410838065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A001248 (n + 1)).toNat

end

end A353937.P16404511279410838065

/-! ## A353937.P17510966700283561026

`A185103(A359757(n+1))`
-/

namespace A353937.P17510966700283561026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A359757 (n + 1)).toNat

end

end A353937.P17510966700283561026

/-!
# A353938: Smallest b > 1 such that b^(p-1) == 1 (mod p^5) for p = prime(n).

The programs for A353938, there is no canonical definition to state claims against.
-/

/-! ## A353938.P7954247279117219712

`A257833(A167499(n+2))`
-/

namespace A353938.P7954247279117219712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A167499 (n + 2)).toNat

end

end A353938.P7954247279117219712

/-! ## A353938.P9666328822590533089

`A257833(A055999(n)+11)`
-/

namespace A353938.P9666328822590533089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A055999 n + 11).toNat

end

end A353938.P9666328822590533089

/-! ## A353938.P4901087987735038054

`A257833(A340266(n+2)+3)`
-/

namespace A353938.P4901087987735038054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A340266 (n + 2) + 3).toNat

end

end A353938.P4901087987735038054

/-! ## A353938.P15771286212563024530

`A257833(A000124(n+3)+4)`
-/

namespace A353938.P15771286212563024530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A000124 (n + 3) + 4).toNat

end

end A353938.P15771286212563024530

/-! ## A353938.P15035839466075529805

`A257833(A000217(n+3)+5)`
-/

namespace A353938.P15035839466075529805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A000217 (n + 3) + 5).toNat

end

end A353938.P15035839466075529805

/-!
# A353939: Smallest b > 1 such that b^(p-1) == 1 (mod p^6) for p = prime(n).

The programs for A353939, there is no canonical definition to state claims against.
-/

/-! ## A353939.P12960641006384428347

`A257833(A167614(n+3)+3)`
-/

namespace A353939.P12960641006384428347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A167614 (n + 3) + 3).toNat

end

end A353939.P12960641006384428347

/-! ## A353939.P6441374272310463282

`A257833(A000096(n+3)+7)`
-/

namespace A353939.P6441374272310463282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A000096 (n + 3) + 7).toNat

end

end A353939.P6441374272310463282

/-! ## A353939.P16225690573372513799

`A185103(A030078(n+1))`
-/

namespace A353939.P16225690573372513799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A030078 (n + 1)).toNat

end

end A353939.P16225690573372513799

/-! ## A353939.P1958897500409978800

`A185103(A051751(n+1))`
-/

namespace A353939.P1958897500409978800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A051751 (n + 1)).toNat

end

end A353939.P1958897500409978800

/-!
# A353940: Smallest b > 1 such that b^(p-1) == 1 (mod p^7) for p = prime(n).

The programs for A353940, there is no canonical definition to state claims against.
-/

/-! ## A353940.P3676173555628524120

`A257833(A167499(n+4)+2)`
-/

namespace A353940.P3676173555628524120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A167499 (n + 4) + 2).toNat

end

end A353940.P3676173555628524120

/-! ## A353940.P1146962090790930745

`A257833(A141214(n+2)+10)`
-/

namespace A353940.P1146962090790930745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A141214 (n + 2) + 10).toNat

end

end A353940.P1146962090790930745

/-! ## A353940.P10205460013110990863

`A257833(A052905(n+2)+12)`
-/

namespace A353940.P10205460013110990863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A052905 (n + 2) + 12).toNat

end

end A353940.P10205460013110990863

/-!
# A353942: Smallest b > 1 such that b^(p-1) == 1 (mod p^9) for p = prime(n).

The programs for A353942, there is no canonical definition to state claims against.
-/

/-! ## A353942.P16382564638301678431

`A257833(A134869(n+7)+8)`
-/

namespace A353942.P16382564638301678431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A134869 (n + 7) + 8).toNat

end

end A353942.P16382564638301678431

/-! ## A353942.P16092703839158650638

`A257833(eq[13, A066657(n)]+1)`
-/

namespace A353942.P16092703839158650638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A353942.P16092703839158650638

/-!
# A353943: Smallest b > 1 such that b^(p-1) == 1 (mod p^10) for p = prime(n).

The programs for A353943, there is no canonical definition to state claims against.
-/

/-! ## A353943.P3676515442710561166

`A257833(eq[10, A131818(n+1)]+1)`
-/

namespace A353943.P3676515442710561166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A353943.P3676515442710561166

/-! ## A353943.P546704296911385216

`A257833(A000217(n+9)-(n-1))`
-/

namespace A353943.P546704296911385216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257833 (A000217 (n + 9) - ((n : ℤ) - 1)).toNat

end

end A353943.P546704296911385216

/-!
# A353944: Product_{n>=1} 1 / (1 - a(n)*x^n) = Sum_{n>=0} Bell(n)*x^n, where Bell = A000110.

The programs for A353944, there is no canonical definition to state claims against.
-/

/-! ## A353944.P91616341382923

`A248186(A022562(n+2)+1)`
-/

namespace A353944.P91616341382923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (A022562 (n + 2) + 1).toNat

end

end A353944.P91616341382923

/-! ## A353944.P4622996023381755209

`xor(A180018(n), A187182(A150753(n)))`
-/

namespace A353944.P4622996023381755209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A180018 n) (A187182 (A150753 n).toNat)

end

end A353944.P4622996023381755209

/-! ## A353944.P17696043456235073758

`A085686(n+1)-A378370(A367888(n))`
-/

namespace A353944.P17696043456235073758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085686 (n + 1) - A378370 (A367888 n).toNat

end

end A353944.P17696043456235073758

/-!
# A353945: Product_{n>=1} 1 / (1 - a(n)*x^n) = 1 + Sum_{n>=1} tau(n)*x^n, where tau = A000005.

The programs for A353945, there is no canonical definition to state claims against.
-/

/-! ## A353945.P11077287834074082974

`A100063(A269303(2*n+1))*A320779(n+1)`
-/

namespace A353945.P11077287834074082974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A269303 (2 * n + 1)).toNat * A320779 (n + 1)

end

end A353945.P11077287834074082974

/-! ## A353945.P5840154178930564842

`A320779(n+1)-A241709(A239306(n+1))`
-/

namespace A353945.P5840154178930564842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320779 (n + 1) - A241709 (A239306 (n + 1)).toNat

end

end A353945.P5840154178930564842

/-! ## A353945.P8099100154317634657

`A049347(or(9, A026094(n)))*A165680(n+1)`
-/

namespace A353945.P8099100154317634657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (Int.lor 9 (A026094 n)).toNat * A165680 (n + 1)

end

end A353945.P8099100154317634657

/-! ## A353945.P5683232452358545732

`A101675(or(9, A026094(n)))*A165680(n+1)`
-/

namespace A353945.P5683232452358545732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (Int.lor 9 (A026094 n)).toNat * A165680 (n + 1)

end

end A353945.P5683232452358545732

/-! ## A353945.P16398178877182181593

`A016350(lcm(2, A004749(n+1)))*A165680(n+1)`
-/

namespace A353945.P16398178877182181593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016350 (Int.lcm 2 (A004749 (n + 1))) * A165680 (n + 1)

end

end A353945.P16398178877182181593

/-!
# A353946: a(n) = (pi(2n-1) - pi(n-1))^pi(n) for n > 1, a(1) = 0.

The programs for A353946, the canonical program `A353946.P10018284100613643832` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353946 has offset 1).

The definition of A353946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353946.P10018284100613643832

`A035250(n+1)^A000720(n+1)-C(2, n+2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353946

/-- `A035250(n+1)^A000720(n+1)-C(2, n+2)` -/
def P10018284100613643832.Spec : Prop :=
  ∀ n, P10018284100613643832.a n = (A353946 (n + 1) : ℚ)

end A353946

/-! ## A353946.P7439301038029477259

`A056171(2*n+1)^A028310(A000720(n+1))`
-/

namespace A353946.P7439301038029477259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056171 (2 * n + 1) : ℚ) ^ (A028310 (A000720 (n + 1)).toNat : ℤ)

end

end A353946.P7439301038029477259

namespace A353946

/-- `A056171(2*n+1)^A028310(A000720(n+1))` -/
def P7439301038029477259.Spec : Prop :=
  ∀ n, P7439301038029477259.a n = (A353946 (n + 1) : ℚ)

end A353946

/-! ## A353946.P6255329432671500435

`A056171(2*n+1)^A132090(A008864(n+1))`
-/

namespace A353946.P6255329432671500435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056171 (2 * n + 1) : ℚ) ^ (A132090 (A008864 (n + 1)).toNat : ℤ)

end

end A353946.P6255329432671500435

namespace A353946

/-- `A056171(2*n+1)^A132090(A008864(n+1))` -/
def P6255329432671500435.Spec : Prop :=
  ∀ n, P6255329432671500435.a n = (A353946 (n + 1) : ℚ)

end A353946

/-! ## A353946.P2888090903977834075

`A056171(2*n+1)^A055679(A004273(n+2))`
-/

namespace A353946.P2888090903977834075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056171 (2 * n + 1) : ℚ) ^ (A055679 (A004273 (n + 2)).toNat : ℤ)

end

end A353946.P2888090903977834075

namespace A353946

/-- `A056171(2*n+1)^A055679(A004273(n+2))` -/
def P2888090903977834075.Spec : Prop :=
  ∀ n, P2888090903977834075.a n = (A353946 (n + 1) : ℚ)

end A353946

/-! ## A353946.P17577780005511898698

`A035250(n+1)^A000720(n+1)-A000007(n)`
-/

namespace A353946.P17577780005511898698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035250 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ) - (A000007 n : ℚ)

end

end A353946.P17577780005511898698

namespace A353946

/-- `A035250(n+1)^A000720(n+1)-A000007(n)` -/
def P17577780005511898698.Spec : Prop :=
  ∀ n, P17577780005511898698.a n = (A353946 (n + 1) : ℚ)

end A353946

/-!
# A353952: Array T(n,k) = D(2*n, -2*k-1), where D(i,j) are the polysecant numbers, for n,k >= 0, read by antidiagonals.

The programs for A353952, there is no canonical definition to state claims against.
-/

/-! ## A353952.P1792659390030822185

`∑{d}[9^A355664(n), #]`
-/

namespace A353952.P1792659390030822185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A355664 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A353952.P1792659390030822185

/-! ## A353952.P7368135347524704187

`A005599(A022180(n))`
-/

namespace A353952.P7368135347524704187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (A022180 n).toNat

end

end A353952.P7368135347524704187

/-! ## A353952.P1123685409625480658

`A171234(A022167(n))`
-/

namespace A353952.P1123685409625480658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171234 (A022167 n).toNat

end

end A353952.P1123685409625480658

/-! ## A353952.P13682120771502661579

`A154649(A086645(n))`
-/

namespace A353952.P13682120771502661579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154649 (A086645 n).toNat

end

end A353952.P13682120771502661579

/-! ## A353952.P14397284120313185280

`A171234(A147565(n))`
-/

namespace A353952.P14397284120313185280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171234 (A147565 n).toNat

end

end A353952.P14397284120313185280

/-!
# A353953: Array T(n,k) = beta(2*n, -k), where beta(i,j) are the polycotangent numbers, for n,k >= 0, read by ascending antidiagonals.

The programs for A353953, there is no canonical definition to state claims against.
-/

/-! ## A353953.P8468726025157666755

`A004525(A009998(n)^A252375(n+1))`
-/

namespace A353953.P8468726025157666755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A009998 n : ℚ) ^ (A252375 (n + 1) : ℤ))).toNat

end

end A353953.P8468726025157666755

/-! ## A353953.P12825851446697030015

`A000982(A009998(n)%A177220(n+1))`
-/

namespace A353953.P12825851446697030015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (Int.tmod (A009998 n) (A177220 (n + 1))).toNat

end

end A353953.P12825851446697030015

/-! ## A353953.P15266119876663700670

`A000982(gcd(A009998(n), A267727(n+1)))`
-/

namespace A353953.P15266119876663700670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (Int.gcd (A009998 n) (A267727 (n + 1)))

end

end A353953.P15266119876663700670

/-! ## A353953.P18096236883757750532

`A347707(A103997(n))`
-/

namespace A353953.P18096236883757750532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347707 (A103997 n).toNat

end

end A353953.P18096236883757750532

/-! ## A353953.P2257727960331467197

`A251736(A327483(n))`
-/

namespace A353953.P2257727960331467197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251736 (A327483 n).toNat

end

end A353953.P2257727960331467197

/-!
# A353954: a(0) = 1; a(n) = A019565(A109812(n)).

The programs for A353954, there is no canonical definition to state claims against.
-/

/-! ## A353954.P5328654354738054079

`A019565(A353240(n)-A109812(n+1))`
-/

namespace A353954.P5328654354738054079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A353240 n - A109812 (n + 1)).toNat

end

end A353954.P5328654354738054079

/-! ## A353954.P15364368242711093969

`A019565(xor(A109812(n+1), A353240(n)))`
-/

namespace A353954.P15364368242711093969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor (A109812 (n + 1)) (A353240 n)).toNat

end

end A353954.P15364368242711093969

/-! ## A353954.P14347901187109501802

`A019565(A353240(n)-A305371(2*(n+1))/2)`
-/

namespace A353954.P14347901187109501802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway ((A353240 n : ℚ) - (A305371 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A353954.P14347901187109501802

/-! ## A353954.P5146672993780195414

`A019565(xor(A305371(2*(n+1))/2, A353240(n)))`
-/

namespace A353954.P5146672993780195414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor (SequenceMachineLib.roundAway ((A305371 (2 * (n + 1)) : ℚ) / 2)) (A353240 n)).toNat

end

end A353954.P5146672993780195414

/-! ## A353954.P6180493001019469804

`A019565(A353240(n)-(A352794(n+1)+1+n))`
-/

namespace A353954.P6180493001019469804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A353240 n - (A352794 (n + 1) + 1 + (n : ℤ))).toNat

end

end A353954.P6180493001019469804

/-! ## A353954.P3930018105843332757

`A019565(xor(A352794(n+1)+1+n, A353240(n)))`
-/

namespace A353954.P3930018105843332757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor (A352794 (n + 1) + 1 + (n : ℤ)) (A353240 n)).toNat

end

end A353954.P3930018105843332757

/-! ## A353954.P8216018700343699587

`A019565(A353240(n)-floor(A305369(2*(n+1))/2))`
-/

namespace A353954.P8216018700343699587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A353240 n - ⌊(A305369 (2 * (n + 1)) : ℚ) / 2⌋).toNat

end

end A353954.P8216018700343699587

/-!
# A353955: a(n) = A019565(A353709(n)).

The programs for A353955, there is no canonical definition to state claims against.
-/

/-! ## A353955.P15524776134772443133

`A019565(A353709(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353955.P15524776134772443133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A353709 n).toNat

end

end A353955.P15524776134772443133

/-!
# A353956: Sum of the divisors of n whose arithmetic derivative is odd.

The programs for A353956, the canonical program `A353956.P14013510539226325416` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353956 has offset 1).

The definition of A353956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353956.P8865880001786268236

`∑{d}[n+1, #*A165560(#)]`
-/

namespace A353956.P8865880001786268236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A165560 d

end

end A353956.P8865880001786268236

namespace A353956

/-- `∑{d}[n+1, #*A165560(#)]` -/
def P8865880001786268236.Spec : Prop :=
  ∀ n, P8865880001786268236.a n = A353956 (n + 1)

end A353956

/-! ## A353956.P9006383766934789510

`∑{d}[n+1, #]-A353958(n+1)`
-/

namespace A353956.P9006383766934789510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A353958 (n + 1)

end

end A353956.P9006383766934789510

namespace A353956

/-- `∑{d}[n+1, #]-A353958(n+1)` -/
def P9006383766934789510.Spec : Prop :=
  ∀ n, P9006383766934789510.a n = A353956 (n + 1)

end A353956

/-! ## A353956.P14013510539226325416

`(∑{d}[n+1, #]-A353959(n+1))/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353956

/-- `(∑{d}[n+1, #]-A353959(n+1))/2` -/
def P14013510539226325416.Spec : Prop :=
  ∀ n, P14013510539226325416.a n = (A353956 (n + 1) : ℚ)

end A353956

/-! ## A353956.P13949793904652088965

`A378545(A259445(n+1))`
-/

namespace A353956.P13949793904652088965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378545 (A259445 (n + 1)).toNat

end

end A353956.P13949793904652088965

namespace A353956

/-- `A378545(A259445(n+1))` -/
def P13949793904652088965.Spec : Prop :=
  ∀ n, P13949793904652088965.a n = A353956 (n + 1)

end A353956

/-! ## A353956.P15257070317258697688

`Δ[A160664(n)]-A353958(n+1)`
-/

namespace A353956.P15257070317258697688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353958 (n + 1)

end

end A353956.P15257070317258697688

namespace A353956

/-- `Δ[A160664(n)]-A353958(n+1)` -/
def P15257070317258697688.Spec : Prop :=
  ∀ n, P15257070317258697688.a n = A353956 (n + 1)

end A353956

/-! ## A353956.P12997870235745439123

`A000203(n+1)-A353958(n+1)`
-/

namespace A353956.P12997870235745439123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A353958 (n + 1)

end

end A353956.P12997870235745439123

namespace A353956

/-- `A000203(n+1)-A353958(n+1)` -/
def P12997870235745439123.Spec : Prop :=
  ∀ n, P12997870235745439123.a n = A353956 (n + 1)

end A353956

/-! ## A353956.P2573199015887528056

`A353958(n+1)-A353959(n+1)`
-/

namespace A353956.P2573199015887528056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353958 (n + 1) - A353959 (n + 1)

end

end A353956.P2573199015887528056

namespace A353956

/-- `A353958(n+1)-A353959(n+1)` -/
def P2573199015887528056.Spec : Prop :=
  ∀ n, P2573199015887528056.a n = A353956 (n + 1)

end A353956

/-! ## A353956.P236165773145267641

`sqrt(A072861(n+1))-A353958(n+1)`
-/

namespace A353956.P236165773145267641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A353958 (n + 1) : ℝ)

end

end A353956.P236165773145267641

namespace A353956

/-- `sqrt(A072861(n+1))-A353958(n+1)` -/
def P236165773145267641.Spec : Prop :=
  ∀ n, P236165773145267641.a n = (A353956 (n + 1) : ℝ)

end A353956

/-!
# A353957: a(n) = (85*4^n - 1)/3.

The programs for A353957, the canonical program `A353957.P7040274280436654920` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353957 has offset 1).

The definition of A353957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(85*4^(n+1)-1)/3` (program `A353957.P16576391459146103138`, by `A353957.P16576391459146103138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353957.P7040274280436654920

`5*a(n-1)-4*a(n-2)` with `a(0)=113, a(1)=453`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A353957

/-- `5*a(n-1)-4*a(n-2)` -/
def P7040274280436654920.Spec : Prop :=
  ∀ n, P7040274280436654920.a n = A353957 (n + 1)

theorem P7040274280436654920.correct : P7040274280436654920.Spec := by
  intro n
  simp only [A353957, Nat.add_sub_cancel]

end A353957

/-! ## A353957.P16576391459146103138

`(85*4^(n+1)-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353957.P16576391459146103138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((85 * 4 ^ (n + 1) : ℤ) - 1 : ℚ) / 3

end

end A353957.P16576391459146103138

namespace A353957

/-- `(85*4^(n+1)-1)/3` -/
def P16576391459146103138.Spec : Prop :=
  ∀ n, P16576391459146103138.a n = (A353957 (n + 1) : ℚ)

theorem P16576391459146103138.correct : P16576391459146103138.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A353957, Nat.add_sub_cancel, A353957.P16576391459146103138.a, A353957.P7040274280436654920.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A353957, Nat.add_sub_cancel, A353957.P16576391459146103138.a, A353957.P7040274280436654920.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A353957

/-! ## A353957.P6267973170931393696

`4*a(n-1)+1` with `a(0)=113`
-/

namespace A353957.P6267973170931393696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [113] fun n a =>
  4 * a (n - 1) + 1

end

end A353957.P6267973170931393696

namespace A353957

/-- `4*a(n-1)+1` -/
def P6267973170931393696.Spec : Prop :=
  ∀ n, (P6267973170931393696.a n : ℤ) = A353957 (n + 1)

end A353957

/-! ## A353957.P15238202344628782672

`or(1, 4*a(n-1))` with `a(0)=113`
-/

namespace A353957.P15238202344628782672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [113] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A353957.P15238202344628782672

namespace A353957

/-- `or(1, 4*a(n-1))` -/
def P15238202344628782672.Spec : Prop :=
  ∀ n, (P15238202344628782672.a n : ℤ) = A353957 (n + 1)

end A353957

/-! ## A353957.P1496871234345668716

`∑[4*a(n-1)]` with `a(0)=113, a(1)=340`
-/

namespace A353957.P1496871234345668716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [113, 340] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353957.P1496871234345668716

namespace A353957

/-- `∑[4*a(n-1)]` -/
def P1496871234345668716.Spec : Prop :=
  ∀ n, (P1496871234345668716.a n : ℤ) = A353957 (n + 1)

end A353957

/-! ## A353957.P12587264173753228390

`A002042(n+2)+∑[A000302(n)]`
-/

namespace A353957.P12587264173753228390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002042 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353957.P12587264173753228390

namespace A353957

/-- `A002042(n+2)+∑[A000302(n)]` -/
def P12587264173753228390.Spec : Prop :=
  ∀ n, P12587264173753228390.a n = A353957 (n + 1)

end A353957

/-! ## A353957.P11003920012919934286

`A002450(n+1)+A002042(n+2)`
-/

namespace A353957.P11003920012919934286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) + A002042 (n + 2)

end

end A353957.P11003920012919934286

namespace A353957

/-- `A002450(n+1)+A002042(n+2)` -/
def P11003920012919934286.Spec : Prop :=
  ∀ n, P11003920012919934286.a n = A353957 (n + 1)

end A353957

/-! ## A353957.P12791832422726622704

`A097163(2*n)+A002042(n+2)`
-/

namespace A353957.P12791832422726622704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097163 (2 * n) + A002042 (n + 2)

end

end A353957.P12791832422726622704

namespace A353957

/-- `A097163(2*n)+A002042(n+2)` -/
def P12791832422726622704.Spec : Prop :=
  ∀ n, P12791832422726622704.a n = A353957 (n + 1)

end A353957

/-! ## A353957.P10771938479512074746

`2*A072201(n+2)-A206374(n+1)`
-/

namespace A353957.P10771938479512074746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072201 (n + 2) - A206374 (n + 1)

end

end A353957.P10771938479512074746

namespace A353957

/-- `2*A072201(n+2)-A206374(n+1)` -/
def P10771938479512074746.Spec : Prop :=
  ∀ n, P10771938479512074746.a n = A353957 (n + 1)

end A353957

/-! ## A353957.P9784921816510183394

`A072262(n+1)+Δ[Δ[A072262(n+1)]]`
-/

namespace A353957.P9784921816510183394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072262 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072262 (n + 1) + (f1 (n + 1) - f1 n)

end

end A353957.P9784921816510183394

namespace A353957

/-- `A072262(n+1)+Δ[Δ[A072262(n+1)]]` -/
def P9784921816510183394.Spec : Prop :=
  ∀ n, P9784921816510183394.a n = A353957 (n + 1)

end A353957

/-! ## A353957.P16707918346863154245

`A153465(n+2)-(A140529(n+1)+A020989(n+1))`
-/

namespace A353957.P16707918346863154245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153465 (n + 2) - (A140529 (n + 1) + A020989 (n + 1))

end

end A353957.P16707918346863154245

namespace A353957

/-- `A153465(n+2)-(A140529(n+1)+A020989(n+1))` -/
def P16707918346863154245.Spec : Prop :=
  ∀ n, P16707918346863154245.a n = A353957 (n + 1)

end A353957

/-!
# A353958: Sum of the divisors of n whose arithmetic derivative is even.

The programs for A353958, the canonical program `A353958.P3857893549041460234` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353958 has offset 1).

The definition of A353958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353958.P8396613002202303922

`∑{d}[n+1, #*A358680(#)]`
-/

namespace A353958.P8396613002202303922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A358680 d

end

end A353958.P8396613002202303922

namespace A353958

/-- `∑{d}[n+1, #*A358680(#)]` -/
def P8396613002202303922.Spec : Prop :=
  ∀ n, P8396613002202303922.a n = A353958 (n + 1)

end A353958

/-! ## A353958.P8845359727643538088

`∑{d}[n+1, #-#*A165560(#)]`
-/

namespace A353958.P8845359727643538088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (d : ℤ) * A165560 d)

end

end A353958.P8845359727643538088

namespace A353958

/-- `∑{d}[n+1, #-#*A165560(#)]` -/
def P8845359727643538088.Spec : Prop :=
  ∀ n, P8845359727643538088.a n = A353958 (n + 1)

end A353958

/-! ## A353958.P3857893549041460234

`Δ[A160664(n)]-A353956(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353958

/-- `Δ[A160664(n)]-A353956(n+1)` -/
def P3857893549041460234.Spec : Prop :=
  ∀ n, P3857893549041460234.a n = A353958 (n + 1)

theorem P3857893549041460234.correct : P3857893549041460234.Spec := by
  intro n
  simp only [A353958, Nat.add_sub_cancel]

end A353958

/-! ## A353958.P911102045210079965

`A353959(n+1)+A353956(n+1)`
-/

namespace A353958.P911102045210079965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353959 (n + 1) + A353956 (n + 1)

end

end A353958.P911102045210079965

namespace A353958

/-- `A353959(n+1)+A353956(n+1)` -/
def P911102045210079965.Spec : Prop :=
  ∀ n, P911102045210079965.a n = A353958 (n + 1)

end A353958

/-! ## A353958.P13879157659559975813

`A000203(n+1)-A353956(n+1)`
-/

namespace A353958.P13879157659559975813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A353956 (n + 1)

end

end A353958.P13879157659559975813

namespace A353958

/-- `A000203(n+1)-A353956(n+1)` -/
def P13879157659559975813.Spec : Prop :=
  ∀ n, P13879157659559975813.a n = A353958 (n + 1)

end A353958

/-! ## A353958.P6382931716168209600

`2*(n+1)+A033880(n+1)-A353956(n+1)`
-/

namespace A353958.P6382931716168209600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + (A033880 (n + 1) - A353956 (n + 1))

end

end A353958.P6382931716168209600

namespace A353958

/-- `2*(n+1)+A033880(n+1)-A353956(n+1)` -/
def P6382931716168209600.Spec : Prop :=
  ∀ n, P6382931716168209600.a n = A353958 (n + 1)

end A353958

/-! ## A353958.P15361643908152860246

`A065033(A353959(n+1)+∑{d}[n+1, #])`
-/

namespace A353958.P15361643908152860246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A353959 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A353958.P15361643908152860246

namespace A353958

/-- `A065033(A353959(n+1)+∑{d}[n+1, #])` -/
def P15361643908152860246.Spec : Prop :=
  ∀ n, P15361643908152860246.a n = A353958 (n + 1)

end A353958

/-! ## A353958.P2812057737162049716

`A252463(A353959(n+1)+A000203(n+1))`
-/

namespace A353958.P2812057737162049716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A353959 (n + 1) + A000203 (n + 1)).toNat

end

end A353958.P2812057737162049716

namespace A353958

/-- `A252463(A353959(n+1)+A000203(n+1))` -/
def P2812057737162049716.Spec : Prop :=
  ∀ n, P2812057737162049716.a n = A353958 (n + 1)

end A353958

/-!
# A353959: a(n) = Sum_{d|n} d * (-1)^(d'), where d' is the arithmetic derivative of d (A003415).

The programs for A353959, the canonical program `A353959.P15648512991217701478` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353959 has offset 1).

The definition of A353959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353959.P15648512991217701478

`∑{d}[n+1, #*A359792(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353959

/-- `∑{d}[n+1, #*A359792(#)]` -/
def P15648512991217701478.Spec : Prop :=
  ∀ n, P15648512991217701478.a n = A353959 (n + 1)

theorem P15648512991217701478.correct : P15648512991217701478.Spec := by
  intro n
  simp only [A353959, Nat.add_sub_cancel]

end A353959

/-! ## A353959.P8222046167244449196

`A353958(n+1)-A353956(n+1)`
-/

namespace A353959.P8222046167244449196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353958 (n + 1) - A353956 (n + 1)

end

end A353959.P8222046167244449196

namespace A353959

/-- `A353958(n+1)-A353956(n+1)` -/
def P8222046167244449196.Spec : Prop :=
  ∀ n, P8222046167244449196.a n = A353959 (n + 1)

end A353959

/-! ## A353959.P15644276070242185256

`2*A353958(n+1)-Δ[A160664(n)]`
-/

namespace A353959.P15644276070242185256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353958 (n + 1) - (f1 (n + 1) - f1 n)

end

end A353959.P15644276070242185256

namespace A353959

/-- `2*A353958(n+1)-Δ[A160664(n)]` -/
def P15644276070242185256.Spec : Prop :=
  ∀ n, P15644276070242185256.a n = A353959 (n + 1)

end A353959

/-! ## A353959.P17199133790796874621

`Δ[A160664(n)]-2*A353956(n+1)`
-/

namespace A353959.P17199133790796874621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A353956 (n + 1)

end

end A353959.P17199133790796874621

namespace A353959

/-- `Δ[A160664(n)]-2*A353956(n+1)` -/
def P17199133790796874621.Spec : Prop :=
  ∀ n, P17199133790796874621.a n = A353959 (n + 1)

end A353959

/-! ## A353959.P16030589182847085952

`2*A353958(n+1)-A000203(n+1)`
-/

namespace A353959.P16030589182847085952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353958 (n + 1) - A000203 (n + 1)

end

end A353959.P16030589182847085952

namespace A353959

/-- `2*A353958(n+1)-A000203(n+1)` -/
def P16030589182847085952.Spec : Prop :=
  ∀ n, P16030589182847085952.a n = A353959 (n + 1)

end A353959

/-! ## A353959.P16252051822972776402

`A000203(n+1)-2*A353956(n+1)`
-/

namespace A353959.P16252051822972776402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A353956 (n + 1)

end

end A353959.P16252051822972776402

namespace A353959

/-- `A000203(n+1)-2*A353956(n+1)` -/
def P16252051822972776402.Spec : Prop :=
  ∀ n, P16252051822972776402.a n = A353959 (n + 1)

end A353959

/-! ## A353959.P9345681303113171275

`2*A353958(n+1)-sqrt(A072861(n+1))`
-/

namespace A353959.P9345681303113171275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A353958 (n + 1) : ℝ) - Real.sqrt (A072861 (n + 1) : ℝ)

end

end A353959.P9345681303113171275

namespace A353959

/-- `2*A353958(n+1)-sqrt(A072861(n+1))` -/
def P9345681303113171275.Spec : Prop :=
  ∀ n, P9345681303113171275.a n = (A353959 (n + 1) : ℝ)

end A353959

/-! ## A353959.P7776164684886549776

`A005843(A353958(n+1))-A000203(n+1)`
-/

namespace A353959.P7776164684886549776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A353958 (n + 1)).toNat - A000203 (n + 1)

end

end A353959.P7776164684886549776

namespace A353959

/-- `A005843(A353958(n+1))-A000203(n+1)` -/
def P7776164684886549776.Spec : Prop :=
  ∀ n, P7776164684886549776.a n = A353959 (n + 1)

end A353959

/-!
# A353960: a(1)=1. Thereafter, if a(n) has occurred k (>1) times in a(j), 1 <= j <= n then a(n+1) = k*a(n). If a(n) is a first occurrence, a(n+1) = A078709(a(n)).

The programs for A353960, there is no canonical definition to state claims against.
-/

/-! ## A353960.P6262835503016237978

`A328114(A066843(n)+A046746(n))`
-/

namespace A353960.P6262835503016237978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A066843 n + A046746 n).toNat

end

end A353960.P6262835503016237978

/-! ## A353960.P9995898338626765251

`A379883(n+1)+A000161(A007283(n))`
-/

namespace A353960.P9995898338626765251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379883 (n + 1) + A000161 (A007283 n).toNat

end

end A353960.P9995898338626765251

/-! ## A353960.P4221957276047487680

`A079383(A077610(n+1)*A390767(n))`
-/

namespace A353960.P4221957276047487680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079383 (A077610 (n + 1) * A390767 n).toNat

end

end A353960.P4221957276047487680

/-! ## A353960.P1360857229058710933

`A379883(n+1)%A001122(A131128(n))`
-/

namespace A353960.P1360857229058710933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379883 (n + 1)) (A001122 (A131128 n).toNat)

end

end A353960.P1360857229058710933

/-!
# A353963: Triangle read by rows: T(n,k) = number of tilings of a n X k rectangle using 2 X 2 and 1 X 1 tiles and right trominoes, n >= 0, k=0..n.

The programs for A353963, there is no canonical definition to state claims against.
-/

/-! ## A353963.P12360946558702091360

`A340830(A001399(3*n)-n*gcd(2, n))`
-/

namespace A353963.P12360946558702091360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340830 (A001399 (3 * n) - (n * Nat.gcd 2 n : ℤ)).toNat

end

end A353963.P12360946558702091360

/-! ## A353963.P15558782540773464129

`A034328(A309283(n)+A102623(n+1))`
-/

namespace A353963.P15558782540773464129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034328 (A309283 n + A102623 (n + 1)).toNat

end

end A353963.P15558782540773464129

/-! ## A353963.P4458930805293258624

`A292351(A134264(n+1)^A328001(n))`
-/

namespace A353963.P4458930805293258624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292351 (SequenceMachineLib.roundAway ((A134264 (n + 1) : ℚ) ^ (A328001 n : ℤ))).toNat

end

end A353963.P4458930805293258624

/-! ## A353963.P10122835507419357588

`A285263(A213191(n)%A057179(n+1))`
-/

namespace A353963.P10122835507419357588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285263 (Int.tmod (A213191 n) (A057179 (n + 1))).toNat

end

end A353963.P10122835507419357588

/-! ## A353963.P14781192846136768437

`A318325(A131571(n+2)+A042964(n+5))`
-/

namespace A353963.P14781192846136768437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318325 (A131571 (n + 2) + A042964 (n + 5)).toNat

end

end A353963.P14781192846136768437

/-!
# A353964: Number of tilings of a 2 X n rectangle using 2 X 2 and 1 X 1 tiles and right trominoes.

The programs for A353964, the canonical program `A353964.P6284179531875313662` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353964 has offset 0).

The definition of A353964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353964.P6284179531875313662

`a(n-1)+5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A353964

/-- `a(n-1)+5*a(n-2)+2*a(n-3)` -/
def P6284179531875313662.Spec : Prop :=
  ∀ n, (P6284179531875313662.a n : ℤ) = A353964 n

theorem P6284179531875313662.correct : P6284179531875313662.Spec := by
  intro n
  simp only [A353964]

end A353964

/-! ## A353964.P16602547552949868200

`ogf(-1/(-1+x+5x^2+2x^3))`
-/

namespace A353964.P16602547552949868200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -5, -2] n

end

end A353964.P16602547552949868200

namespace A353964

/-- `ogf(-1/(-1+x+5x^2+2x^3))` -/
def P16602547552949868200.Spec : Prop :=
  ∀ n, P16602547552949868200.a n = A353964 n

end A353964

/-! ## A353964.P8048306039269989444

`A384646(n)-a(n-1)` with `a(0)=1`
-/

namespace A353964.P8048306039269989444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384646 n - a (n - 1)

end

end A353964.P8048306039269989444

namespace A353964

/-- `A384646(n)-a(n-1)` -/
def P8048306039269989444.Spec : Prop :=
  ∀ n, P8048306039269989444.a n = A353964 n

end A353964

/-! ## A353964.P16778802586688214836

`A384646(n)+A384648(n)-A384647(n)`
-/

namespace A353964.P16778802586688214836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384646 n + (A384648 n - A384647 n)

end

end A353964.P16778802586688214836

namespace A353964

/-- `A384646(n)+A384648(n)-A384647(n)` -/
def P16778802586688214836.Spec : Prop :=
  ∀ n, P16778802586688214836.a n = A353964 n

end A353964

/-! ## A353964.P2161565843920211035

`A384647(n+1)-A384648(n+1)`
-/

namespace A353964.P2161565843920211035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384647 (n + 1) - A384648 (n + 1)

end

end A353964.P2161565843920211035

namespace A353964

/-- `A384647(n+1)-A384648(n+1)` -/
def P2161565843920211035.Spec : Prop :=
  ∀ n, P2161565843920211035.a n = A353964 n

end A353964

/-! ## A353964.P1348990979267156755

`A384647(n+1)-(A384646(n+1)+A384646(n))`
-/

namespace A353964.P1348990979267156755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384647 (n + 1) - (A384646 (n + 1) + A384646 n)

end

end A353964.P1348990979267156755

namespace A353964

/-- `A384647(n+1)-(A384646(n+1)+A384646(n))` -/
def P1348990979267156755.Spec : Prop :=
  ∀ n, P1348990979267156755.a n = A353964 n

end A353964

/-!
# A353965: Number of tilings of a 3 X n rectangle using 2 X 2 and 1 X 1 tiles and right trominoes.

The programs for A353965, the canonical program `A353965.P6127560797064353273` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353965 has offset 0).

The definition of A353965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353965.P6127560797064353273

`3*a(n-1)+9*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=13, a(3)=47`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A353965

/-- `3*a(n-1)+9*a(n-2)-a(n-3)+2*a(n-4)` -/
def P6127560797064353273.Spec : Prop :=
  ∀ n, P6127560797064353273.a n = A353965 n

theorem P6127560797064353273.correct : P6127560797064353273.Spec := by
  intro n
  simp only [A353965]

end A353965

/-!
# A353967: a(n) is the number of ways to write n as a sum of distinct terms of A353966.

The programs for A353967, there is no canonical definition to state claims against.
-/

/-! ## A353967.P2743335417378097713

`A002260(round(4^(n/3)))%A117277(n+5)`
-/

namespace A353967.P2743335417378097713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (SequenceMachineLib.roundAway ((4 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat) (A117277 (n + 5))

end

end A353967.P2743335417378097713

/-! ## A353967.P15000784056968143845

`C(A001222(A240222(3*n+4)), A240226(n+1))`
-/

namespace A353967.P15000784056968143845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A240222 (3 * n + 4)).toNat).toNat (A240226 (n + 1)).toNat

end

end A353967.P15000784056968143845

/-! ## A353967.P17926098705082662417

`A081212(A226903(n+2))`
-/

namespace A353967.P17926098705082662417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081212 (A226903 (n + 2)).toNat

end

end A353967.P17926098705082662417

/-! ## A353967.P7133195617333952270

`A007792(n)%(5-A210850(n))`
-/

namespace A353967.P7133195617333952270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007792 n) (5 - A210850 n)

end

end A353967.P7133195617333952270

/-! ## A353967.P5707792459135845238

`and(A091094(∑{d}[n+1, #]), A219202(n))`
-/

namespace A353967.P5707792459135845238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091094 (∑ d ∈ Nat.divisors (f1 n), d)) (A219202 (n + 77))

end

end A353967.P5707792459135845238

/-!
# A353968: Numbers that are not the sum of distinct terms of A353966.

The programs for A353968, there is no canonical definition to state claims against.
-/

/-! ## A353968.P16449918930037337002

`eq[0, A353967(n)]`
-/

namespace A353968.P16449918930037337002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353968.P16449918930037337002

/-! ## A353968.P11149938364945070943

`record[gcd(n+1, A353967(n+1))]`
-/

namespace A353968.P11149938364945070943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A353967 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353968.P11149938364945070943

/-! ## A353968.P1721531786569987947

`A028310(lt[A353967(n), 1])`
-/

namespace A353968.P1721531786569987947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353967 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353968.P1721531786569987947

/-! ## A353968.P13754014603626278469

`lt[A353967(n), A328609(C(n, n²))]`
-/

namespace A353968.P13754014603626278469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328609 (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353968.P13754014603626278469

/-! ## A353968.P2844963575734380523

`lt[A353967(n), A328612(C(n, n²))]`
-/

namespace A353968.P2844963575734380523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353968.P2844963575734380523

/-! ## A353968.P14844095224382926817

`lt[A353967(n), A254655(A328587(n+1))]`
-/

namespace A353968.P14844095224382926817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (A328587 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353968.P14844095224382926817

/-!
# A353970: a(n) is the number of ways to write n as a sum of distinct terms of A353969.

The programs for A353970, there is no canonical definition to state claims against.
-/

/-! ## A353970.P8743737844838268377

`A144607(A001911(n))+A029437(n)`
-/

namespace A353970.P8743737844838268377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144607 (A001911 n).toNat + A029437 n

end

end A353970.P8743737844838268377

/-!
# A353971: Numbers that are not the sum of distinct terms of A353969.

The programs for A353971, there is no canonical definition to state claims against.
-/

/-! ## A353971.P3254898995915713617

`∪[eq[0, A353970(n)], A000142(n+3)]`
-/

namespace A353971.P3254898995915713617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353970 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A353971.P3254898995915713617

/-! ## A353971.P8853431144190146487

`eq[0, A353970(n)]`
-/

namespace A353971.P8853431144190146487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353970 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353971.P8853431144190146487

/-! ## A353971.P16464109076314171623

`A028310(lt[A353970(n), 1])`
-/

namespace A353971.P16464109076314171623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353970 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353971.P16464109076314171623

/-! ## A353971.P6730425402598087395

`lt[A353970(n), A057427(n)]`
-/

namespace A353971.P6730425402598087395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353971.P6730425402598087395

/-! ## A353971.P9869408709975778155

`lt[A353970(n), acot(A213479(n))]`
-/

namespace A353971.P9869408709975778155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353970 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A213479 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A353971.P9869408709975778155

/-!
# A353972: Product_{n>=1} (1 + x^n)^(a(n)/n!) = 1 + arcsin(x).

The programs for A353972, there is no canonical definition to state claims against.
-/

/-! ## A353972.P16444096236408679352

`A353608(n+1)+A279418(A006125(n))`
-/

namespace A353972.P16444096236408679352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353608 (n + 1) + A279418 (A006125 n).toNat

end

end A353972.P16444096236408679352

/-!
# A353974: a(n) is the n-th partial sum of A056992.

The programs for A353974, the canonical program `A353974.P13735272983362506977` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353974 has offset 0).

The definition of A353974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353974.P13735272983362506977

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=14, a(4)=21, a(5)=28, a(6)=37, a(7)=41, a(8)=42, a(9)=51`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A353974

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P13735272983362506977.Spec : Prop :=
  ∀ n, P13735272983362506977.a n = A353974 n

theorem P13735272983362506977.correct : P13735272983362506977.Spec := by
  intro n
  simp only [A353974]

end A353974

/-! ## A353974.P3408249327322735073

`∑[dr(n²)]`
-/

namespace A353974.P3408249327322735073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353974.P3408249327322735073

namespace A353974

/-- `∑[dr(n²)]` -/
def P3408249327322735073.Spec : Prop :=
  ∀ n, (P3408249327322735073.a n : ℤ) = A353974 n

end A353974

/-! ## A353974.P10311249854372332146

`∑[dr(n^8)%10]`
-/

namespace A353974.P10311249854372332146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 8 : ℤ) % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353974.P10311249854372332146

namespace A353974

/-- `∑[dr(n^8)%10]` -/
def P10311249854372332146.Spec : Prop :=
  ∀ n, (P10311249854372332146.a n : ℤ) = A353974 n

end A353974

/-! ## A353974.P3180777732637840393

`∑[(n²-1)%9+1]`
-/

namespace A353974.P3180777732637840393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 9 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353974.P3180777732637840393

namespace A353974

/-- `∑[(n²-1)%9+1]` -/
def P3180777732637840393.Spec : Prop :=
  ∀ n, P3180777732637840393.a n = A353974 n

end A353974

/-! ## A353974.P8110434646569821509

`a(n-1)+dr(n²)` with `a(0)=0`
-/

namespace A353974.P8110434646569821509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

end

end A353974.P8110434646569821509

namespace A353974

/-- `a(n-1)+dr(n²)` -/
def P8110434646569821509.Spec : Prop :=
  ∀ n, (P8110434646569821509.a n : ℤ) = A353974 n

end A353974

/-! ## A353974.P13735089979868891376

`∑[dr(n^ceil(atan(n)))]-1`
-/

namespace A353974.P13735089979868891376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A353974.P13735089979868891376

namespace A353974

/-- `∑[dr(n^ceil(atan(n)))]-1` -/
def P13735089979868891376.Spec : Prop :=
  ∀ n, P13735089979868891376.a n = A353974 n

end A353974

/-! ## A353974.P9657557936594851931

`∑[dr(∑[2*n+1])]-dr(∑[2*n+1])`
-/

namespace A353974.P9657557936594851931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) : ℤ)

end

end A353974.P9657557936594851931

namespace A353974

/-- `∑[dr(∑[2*n+1])]-dr(∑[2*n+1])` -/
def P9657557936594851931.Spec : Prop :=
  ∀ n, P9657557936594851931.a n = A353974 n

end A353974

/-! ## A353974.P13535334744600084788

`∑[A010888(n*A010888(n))]`
-/

namespace A353974.P13535334744600084788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 ((n : ℤ) * A010888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353974.P13535334744600084788

namespace A353974

/-- `∑[A010888(n*A010888(n))]` -/
def P13535334744600084788.Spec : Prop :=
  ∀ n, P13535334744600084788.a n = A353974 n

end A353974

/-! ## A353974.P18084289573269534120

`∑[A010888(n²)]`
-/

namespace A353974.P18084289573269534120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353974.P18084289573269534120

namespace A353974

/-- `∑[A010888(n²)]` -/
def P18084289573269534120.Spec : Prop :=
  ∀ n, P18084289573269534120.a n = A353974 n

end A353974

/-! ## A353974.P6693344615897700347

`∑[A189510(n²)]-1`
-/

namespace A353974.P6693344615897700347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189510 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A353974.P6693344615897700347

namespace A353974

/-- `∑[A189510(n²)]-1` -/
def P6693344615897700347.Spec : Prop :=
  ∀ n, P6693344615897700347.a n = A353974 n

end A353974

/-!
# A353975: Product of the divisors of n whose arithmetic derivative is odd.

The programs for A353975, there is no canonical definition to state claims against.
-/

/-! ## A353975.P15151046463713659809

`A078599(n+1)/A353976(n+1)*A178649(n+1)`
-/

namespace A353975.P15151046463713659809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078599 (n + 1) : ℚ) / (A353976 (n + 1) : ℚ) * (A178649 (n + 1) : ℚ)

end

end A353975.P15151046463713659809

/-! ## A353975.P11164788395089825766

`∏{d}[n+1, #]/A353976(n+1)`
-/

namespace A353975.P11164788395089825766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A353976 (n + 1) : ℚ)

end

end A353975.P11164788395089825766

/-! ## A353975.P14289314202953786029

`A007955(n+1)/A353976(n+1)`
-/

namespace A353975.P14289314202953786029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A353976 (n + 1) : ℚ)

end

end A353975.P14289314202953786029

/-! ## A353975.P16675509290148696703

`∑{d}[n+1, A174940(#)]/A353976(n+1)`
-/

namespace A353975.P16675509290148696703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A174940 d : ℤ) : ℚ) / (A353976 (n + 1) : ℚ)

end

end A353975.P16675509290148696703

/-! ## A353975.P3024674156344322277

`sqrt(n+1)^A000005(n+1)/A353976(n+1)`
-/

namespace A353975.P3024674156344322277
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) / (A353976 (n + 1) : ℝ)

end

end A353975.P3024674156344322277

/-! ## A353975.P6568556203452906116

`A179937(n+1)*A184392(n+1)/A353976(n+1)`
-/

namespace A353975.P6568556203452906116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179937 (n + 1) * A184392 (n + 1) : ℚ) / (A353976 (n + 1) : ℚ)

end

end A353975.P6568556203452906116

/-! ## A353975.P60665325950966960

`A007947(n+1)*A178649(n+1)*A290479(n+1)/A353976(n+1)`
-/

namespace A353975.P60665325950966960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A178649 (n + 1) * A290479 (n + 1) : ℚ) / (A353976 (n + 1) : ℚ)

end

end A353975.P60665325950966960

/-!
# A353976: Product of the divisors of n whose arithmetic derivative is even.

The programs for A353976, there is no canonical definition to state claims against.
-/

/-! ## A353976.P9767943411647824852

`A061537(n+1)/A353975(n+1)*A061538(n+1)`
-/

namespace A353976.P9767943411647824852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) : ℚ) / (A353975 (n + 1) : ℚ) * (A061538 (n + 1) : ℚ)

end

end A353976.P9767943411647824852

/-! ## A353976.P1584590322891939606

`∏{d}[n+1, #]/A353975(n+1)`
-/

namespace A353976.P1584590322891939606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A353975 (n + 1) : ℚ)

end

end A353976.P1584590322891939606

/-! ## A353976.P6502749225225903965

`A007955(n+1)/A353975(n+1)`
-/

namespace A353976.P6502749225225903965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A353975 (n + 1) : ℚ)

end

end A353976.P6502749225225903965

/-! ## A353976.P15309440669465830863

`sqrt(n+1)^Δ[A006218(n)]/A353975(n+1)`
-/

namespace A353976.P15309440669465830863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A353975 (n + 1) : ℝ)

end

end A353976.P15309440669465830863

/-! ## A353976.P15870947913109569779

`(n+1)^(A000005(n+1)/2)/A353975(n+1)`
-/

namespace A353976.P15870947913109569779
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) / (A353975 (n + 1) : ℝ)

end

end A353976.P15870947913109569779

/-! ## A353976.P2446751486775919185

`A183091(n+1)*A183092(n+1)/A353975(n+1)`
-/

namespace A353976.P2446751486775919185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) * A183092 (n + 1) : ℚ) / (A353975 (n + 1) : ℚ)

end

end A353976.P2446751486775919185

/-! ## A353976.P810343961774164984

`A291186(n+1)*A306671(n+1)/A353975(n+1)`
-/

namespace A353976.P810343961774164984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291186 (n + 1) * A306671 (n + 1) : ℚ) / (A353975 (n + 1) : ℚ)

end

end A353976.P810343961774164984

/-!
# A353978: Number of fixed polytans (polyaboloes) with n cells.

The programs for A353978, there is no canonical definition to state claims against.
-/

/-! ## A353978.P14659120864968353832

`A230980(A001045(2*(n+2)))+A003162(n)`
-/

namespace A353978.P14659120864968353832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A001045 (2 * (n + 2))).toNat + A003162 n

end

end A353978.P14659120864968353832

/-! ## A353978.P15575910449615706728

`A137687(A011782(n+2)²)+A033184(n+1)`
-/

namespace A353978.P15575910449615706728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (A011782 (n + 2) ^ 2).toNat + A033184 (n + 1)

end

end A353978.P15575910449615706728

/-!
# A353979: Number of one-sided polyarcs with n cells.

The programs for A353979, there is no canonical definition to state claims against.
-/

/-! ## A353979.P7629043405211608994

`xor(3, A088804(∑[A000079(n)]))`
-/

namespace A353979.P7629043405211608994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A088804 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A353979.P7629043405211608994

/-!
# A353982: Numbers that are not the sum of distinct terms of A353980.

The programs for A353982, there is no canonical definition to state claims against.
-/

/-! ## A353982.P152352207162643240

`record[A247451(n+1)-A101365(n+3)]`
-/

namespace A353982.P152352207162643240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1) - A101365 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353982.P152352207162643240

/-! ## A353982.P16992594730481701365

`eq[0, A353981(n)]`
-/

namespace A353982.P16992594730481701365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353981 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353982.P16992594730481701365

/-! ## A353982.P7840931611959734585

`A000027(lt[A353981(n), 1])`
-/

namespace A353982.P7840931611959734585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353981 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353982.P7840931611959734585

/-!
# A353984: a(n) is the number of ways to write n as a sum of distinct terms of A353983.

The programs for A353984, there is no canonical definition to state claims against.
-/

/-! ## A353984.P690775795373676619

`abs(Δ[A274450(A096736(n+1))])`
-/

namespace A353984.P690775795373676619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274450 (A096736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A353984.P690775795373676619

/-! ## A353984.P17982351108805732577

`A104234(A265832(n))+A025428(n)`
-/

namespace A353984.P17982351108805732577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 (A265832 n).toNat + A025428 n

end

end A353984.P17982351108805732577

/-! ## A353984.P5449153117589246292

`A264990(lcm(A049347(n), A078008(n)))`
-/

namespace A353984.P5449153117589246292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 (Int.lcm (A049347 n) (A078008 n))

end

end A353984.P5449153117589246292

/-! ## A353984.P15772922845390410632

`A264990(A049347(n)²*A078008(n))`
-/

namespace A353984.P15772922845390410632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 (A049347 n ^ 2 * A078008 n).toNat

end

end A353984.P15772922845390410632

/-! ## A353984.P14476587119807678874

`and(A110012(n+1), A126065(A112034(n)))`
-/

namespace A353984.P14476587119807678874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110012 (n + 1)) (A126065 (A112034 n).toNat)

end

end A353984.P14476587119807678874

/-!
# A353985: Numbers that are not the sum of distinct terms of A353983.

The programs for A353985, there is no canonical definition to state claims against.
-/

/-! ## A353985.P2901479351431330330

`eq[0, A353984(n)]`
-/

namespace A353985.P2901479351431330330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353985.P2901479351431330330

/-! ## A353985.P5928211696826993533

`record[gcd(A038608(n), A353984(n))]`
-/

namespace A353985.P5928211696826993533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A353984 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353985.P5928211696826993533

/-! ## A353985.P6819149871362656651

`lt[A000007(n), A000007(A353984(n))]`
-/

namespace A353985.P6819149871362656651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A353984 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353985.P6819149871362656651

/-! ## A353985.P11833778119211701371

`lt[A002939(A353984(n)), A000034(n)]`
-/

namespace A353985.P11833778119211701371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (A353984 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353985.P11833778119211701371

/-! ## A353985.P7867035948384387946

`lt[A002939(A353984(n)), A088978(n+1)]`
-/

namespace A353985.P7867035948384387946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (A353984 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353985.P7867035948384387946

/-!
# A353986: Numbers k such that Fibonacci(k) and Fibonacci(k+1) have the same binary weight (A000120).

The programs for A353986, the canonical program `A353986.P12545540184002527554` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353986 has offset 1).

The definition of A353986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353986.P12545540184002527554

`eq[0, Δ[A011373(n)]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353986

/-- `eq[0, Δ[A011373(n)]]` -/
def P12545540184002527554.Spec : Prop :=
  ∀ n, (P12545540184002527554.a n : ℤ) = A353986 (n + 1)

theorem P12545540184002527554.correct : P12545540184002527554.Spec := by
  intro n
  simp only [A353986, Nat.add_sub_cancel]

end A353986

/-! ## A353986.P12981177118867936771

`eq[A011373(n+1), A011373(n)]`
-/

namespace A353986.P12981177118867936771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353986.P12981177118867936771

namespace A353986

/-- `eq[A011373(n+1), A011373(n)]` -/
def P12981177118867936771.Spec : Prop :=
  ∀ n, (P12981177118867936771.a n : ℤ) = A353986 (n + 1)

end A353986

/-!
# A353987: Numbers k such that F(k), F(k+1) and F(k+2) have the same binary weight (A000120), where F(k) is the k-th Fibonacci number (A000045).

The programs for A353987, there is no canonical definition to state claims against.
-/

/-! ## A353987.P1193255209572914819

`∩[A353986(n+1)-1, A353986(n+1)]`
-/

namespace A353987.P1193255209572914819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353986 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353987.P1193255209572914819

/-!
# A353988: Numbers k such that Fibonacci(k) is a binary Niven number (A049445).

The programs for A353988, there is no canonical definition to state claims against.
-/

/-! ## A353988.P11832805591442083370

`record[A000005(A008805(n)*A180493(n+1))]`
-/

namespace A353988.P11832805591442083370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008805 n * A180493 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353988.P11832805591442083370

/-! ## A353988.P271186341233490666

`lt[A289186(n+2), ∏{e}[n+1, gcd(#+1, (n+1)²)]]+1`
-/

namespace A353988.P271186341233490666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.gcd (Nat.factorization (f3 n) p + 1) ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353988.P271186341233490666

/-! ## A353988.P18379973530695785439

`record[A008619(n)%A243681(A347050(n+1))]`
-/

namespace A353988.P18379973530695785439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n) (A243681 (A347050 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353988.P18379973530695785439

/-! ## A353988.P10068188841050044432

`∪[A048766(A015797(2*(n+1))), A008458(n)]`
-/

namespace A353988.P10068188841050044432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A015797 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353988.P10068188841050044432

/-!
# A353992: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} d^(k/d + 1) )/k.

The programs for A353992, there is no canonical definition to state claims against.
-/

/-! ## A353992.P2286815876322286076

`A285134(or(A125527(n+1), A240637(n+1)))`
-/

namespace A353992.P2286815876322286076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285134 (Int.lor (A125527 (n + 1)) (A240637 (n + 1))).toNat

end

end A353992.P2286815876322286076

/-!
# A353993: Expansion of e.g.f. ( Product_{k>0} 1/(1 - k * x^k) )^(1/(1-x)).

The programs for A353993, there is no canonical definition to state claims against.
-/

/-! ## A353993.P13965452174806045419

`A123723(A300061(n!))`
-/

namespace A353993.P13965452174806045419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123723 (A300061 (Nat.factorial n)).toNat

end

end A353993.P13965452174806045419

/-!
# A353994: Expansion of e.g.f. 1/(1 + log(1 - x) * (exp(x) - 1)).

The programs for A353994, there is no canonical definition to state claims against.
-/

/-! ## A353994.P4495683372890750051

`A144562(A006279(n))-(n+2)`
-/

namespace A353994.P4495683372890750051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (A006279 n).toNat - (n + 2 : ℤ)

end

end A353994.P4495683372890750051

/-! ## A353994.P9474031656166896954

`A256502(A144008(n))-n%2`
-/

namespace A353994.P9474031656166896954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A144008 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A353994.P9474031656166896954

/-!
# A353995: Expansion of e.g.f. 1/(1 - x)^(exp(x) - 1).

The programs for A353995, there is no canonical definition to state claims against.
-/

/-! ## A353995.P11129146029447855091

`A008679(floor((n/3+3)^n)+2)`
-/

namespace A353995.P11129146029447855091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (⌊((n : ℚ) / 3 + 3) ^ n⌋ + 2).toNat

end

end A353995.P11129146029447855091

/-! ## A353995.P16342661180271493718

`ceil(abs(1-n)*A064731(2*n+1)/sqrt(6))`
-/

namespace A353995.P16342661180271493718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (n : ℤ)| * A064731 (2 * n + 1) : ℝ) / Real.sqrt (6 : ℝ)⌉

end

end A353995.P16342661180271493718

/-!
# A353996: Rooted simple digraphs on n unlabeled vertices.

The programs for A353996, there is no canonical definition to state claims against.
-/

/-! ## A353996.P7701185117821363236

`A328773(A057427(n)+A000070(n))`
-/

namespace A353996.P7701185117821363236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (A057427 n + A000070 n).toNat

end

end A353996.P7701185117821363236

/-! ## A353996.P2865930789330915005

`A328773(A057427(n)*A216053(n+1))`
-/

namespace A353996.P2865930789330915005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (A057427 n * A216053 (n + 1)).toNat

end

end A353996.P2865930789330915005

/-! ## A353996.P16647617876616672169

`A328773(lcm(A115722(n), A216053(n+1)))`
-/

namespace A353996.P16647617876616672169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (Int.lcm (A115722 n) (A216053 (n + 1)))

end

end A353996.P16647617876616672169

/-! ## A353996.P5719406124645821699

`A328773(A216053(n+1)+A057427(n)-1)`
-/

namespace A353996.P5719406124645821699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (A216053 (n + 1) + (A057427 n - 1)).toNat

end

end A353996.P5719406124645821699

/-! ## A353996.P12248809277965240888

`A328773(A216053(n+1)%A000070(n+1))`
-/

namespace A353996.P12248809277965240888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (Int.tmod (A216053 (n + 1)) (A000070 (n + 1))).toNat

end

end A353996.P12248809277965240888

/-!
# A353997: Partial sums of A078473.

The programs for A353997, the canonical program `A353997.P833302072008211621` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353997 has offset 1).

The definition of A353997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353997.P16811711214486566616

`∑[A078473(n+1)]`
-/

namespace A353997.P16811711214486566616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353997.P16811711214486566616

namespace A353997

/-- `∑[A078473(n+1)]` -/
def P16811711214486566616.Spec : Prop :=
  ∀ n, P16811711214486566616.a n = A353997 (n + 1)

end A353997

/-! ## A353997.P16829571937466426612

`A078473(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A353997.P16829571937466426612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078473 (n + 1) + a (A023443 n).toNat

end

end A353997.P16829571937466426612

namespace A353997

/-- `A078473(n+1)+a(A023443(n))` -/
def P16829571937466426612.Spec : Prop :=
  ∀ n, P16829571937466426612.a n = A353997 (n + 1)

end A353997

/-! ## A353997.P12662159264274193121

`A078473(A000027(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A353997.P12662159264274193121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078473 (A000027 (n + 1)).toNat + a (n - 1)

end

end A353997.P12662159264274193121

namespace A353997

/-- `A078473(A000027(n+1))+a(n-1)` -/
def P12662159264274193121.Spec : Prop :=
  ∀ n, P12662159264274193121.a n = A353997 (n + 1)

end A353997

/-! ## A353997.P9953682906086283872

`A078473(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A353997.P9953682906086283872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078473 (A028310 n + 1).toNat + a (n - 1)

end

end A353997.P9953682906086283872

namespace A353997

/-- `A078473(A028310(n)+1)+a(n-1)` -/
def P9953682906086283872.Spec : Prop :=
  ∀ n, P9953682906086283872.a n = A353997 (n + 1)

end A353997

/-! ## A353997.P833302072008211621

`∑[∑{d}[n+1, A053723(#-1)*A109091((n+1)/#)]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353997

/-- `∑[∑{d}[n+1, A053723(#-1)*A109091((n+1)/#)]]` -/
def P833302072008211621.Spec : Prop :=
  ∀ n, P833302072008211621.a n = A353997 (n + 1)

theorem P833302072008211621.correct : P833302072008211621.Spec := by
  intro n
  simp only [A353997, Nat.add_sub_cancel]

end A353997

/-!
# A353998: Expansion of e.g.f. 1/(1 - x^2/2 * (exp(x) - 1)).

The programs for A353998, there is no canonical definition to state claims against.
-/

/-! ## A353998.P9453583232572939137

`A355666(∑[n+3])`
-/

namespace A353998.P9453583232572939137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353998.P9453583232572939137

/-! ## A353998.P16952893214511657385

`A014682(lcm(2, A240989(n)))`
-/

namespace A353998.P16952893214511657385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A240989 n))

end

end A353998.P16952893214511657385

/-! ## A353998.P3692584651927080870

`A014682(A240989(n)+A000007(n))`
-/

namespace A353998.P3692584651927080870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A240989 n + A000007 n).toNat

end

end A353998.P3692584651927080870

/-! ## A353998.P451145838928952772

`A355181(n)+A010054(A006930(n))`
-/

namespace A353998.P451145838928952772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355181 n + A010054 (A006930 n).toNat

end

end A353998.P451145838928952772

/-! ## A353998.P9412803892305683933

`A355181(n)+A001726(A212997(n))`
-/

namespace A353998.P9412803892305683933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355181 n + A001726 (A212997 n).toNat

end

end A353998.P9412803892305683933

/-!
# A353999: Expansion of e.g.f. 1/(1 - x^3/6 * (exp(x) - 1)).

The programs for A353999, there is no canonical definition to state claims against.
-/

/-! ## A353999.P2983930064212174808

`A355666(∑[n+4]+2)`
-/

namespace A353999.P2983930064212174808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A353999.P2983930064212174808

/-! ## A353999.P2242432155921873593

`A355308(n)+A000007(A355310(n)²)`
-/

namespace A353999.P2242432155921873593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355308 n + A000007 (A355310 n ^ 2).toNat

end

end A353999.P2242432155921873593

/-! ## A353999.P13152758616227537204

`A355308(n)+A121373(A227848(n+1))`
-/

namespace A353999.P13152758616227537204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355308 n + A121373 (A227848 (n + 1)).toNat

end

end A353999.P13152758616227537204

/-! ## A353999.P15925772478541268554

`A355308(n)-A010815(A317759(n+1))`
-/

namespace A353999.P15925772478541268554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355308 n - A010815 (A317759 (n + 1)).toNat

end

end A353999.P15925772478541268554

/-! ## A353999.P6440237816519621364

`A355308(n)-A121373(A099099(n+3))`
-/

namespace A353999.P6440237816519621364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355308 n - A121373 (A099099 (n + 3)).toNat

end

end A353999.P6440237816519621364

