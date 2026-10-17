import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B007.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A041900: Numerators of continued fraction convergents to sqrt(472).

The programs for A041900, there is no canonical definition to state claims against.
-/

/-! ## A041900.P744867607284476957

`A041986(n)-A018676(A041463(n))`
-/

namespace A041900.P744867607284476957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041986 n - A018676 (A041463 n).toNat

end

end A041900.P744867607284476957

/-!
# A041901: Denominators of continued fraction convergents to sqrt(472).

The programs for A041901, there is no canonical definition to state claims against.
-/

/-! ## A041901.P5560502421174825235

`A241381(A306005(n))+A222172(n)`
-/

namespace A041901.P5560502421174825235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241381 (A306005 n).toNat + A222172 n

end

end A041901.P5560502421174825235

/-!
# A041903: Denominators of continued fraction convergents to sqrt(473).

The programs for A041903, the canonical program `A041903.P8008674223263072293` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041903 has offset 0).

The definition of A041903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041903.P8008674223263072293

`174*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=171, a(5)=175, a(6)=521, a(7)=696`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041903

/-- `174*a(n-4)-a(n-8)` -/
def P8008674223263072293.Spec : Prop :=
  ∀ n, P8008674223263072293.a n = A041903 n

theorem P8008674223263072293.correct : P8008674223263072293.Spec := by
  intro n
  simp only [A041903]

end A041903

/-! ## A041903.P13197619456305757560

`A001281(A042081(n)+A041741(n))`
-/

namespace A041903.P13197619456305757560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042081 n + A041741 n).toNat

end

end A041903.P13197619456305757560

namespace A041903

/-- `A001281(A042081(n)+A041741(n))` -/
def P13197619456305757560.Spec : Prop :=
  ∀ n, P13197619456305757560.a n = A041903 n

end A041903

/-! ## A041903.P17400139948289349027

`A001281(A042485(n)+A041465(n))`
-/

namespace A041903.P17400139948289349027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042485 n + A041465 n).toNat

end

end A041903.P17400139948289349027

namespace A041903

/-- `A001281(A042485(n)+A041465(n))` -/
def P17400139948289349027.Spec : Prop :=
  ∀ n, P17400139948289349027.a n = A041903 n

end A041903

/-! ## A041903.P14874864299662077003

`A004525(A042081(n)+A041741(n))`
-/

namespace A041903.P14874864299662077003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042081 n + A041741 n).toNat

end

end A041903.P14874864299662077003

namespace A041903

/-- `A004525(A042081(n)+A041741(n))` -/
def P14874864299662077003.Spec : Prop :=
  ∀ n, P14874864299662077003.a n = A041903 n

end A041903

/-!
# A041909: Denominators of continued fraction convergents to sqrt(476).

The programs for A041909, there is no canonical definition to state claims against.
-/

/-! ## A041909.P5623026394053062439

`A000032(22*a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=11, a(4)=115, a(5)=241`
-/

namespace A041909.P5623026394053062439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 11, 115, 241] fun n a =>
  A000032 (22 * a (n - 2) - a (n - 4)).toNat

end

end A041909.P5623026394053062439

/-! ## A041909.P196117978094275006

`A000045(22*a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=11, a(4)=115, a(5)=241`
-/

namespace A041909.P196117978094275006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 11, 115, 241] fun n a =>
  A000045 (22 * a (n - 2) - a (n - 4)).toNat

end

end A041909.P196117978094275006

/-!
# A041911: Denominators of continued fraction convergents to sqrt(477).

The programs for A041911, there is no canonical definition to state claims against.
-/

/-! ## A041911.P7023840519224480688

`A383193(A041211(n))`
-/

namespace A041911.P7023840519224480688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383193 (A041211 n).toNat

end

end A041911.P7023840519224480688

/-! ## A041911.P675380416607689817

`A358095(A305278(n+1))`
-/

namespace A041911.P675380416607689817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358095 (A305278 (n + 1)).toNat

end

end A041911.P675380416607689817

/-!
# A041913: Denominators of continued fraction convergents to sqrt(478).

The programs for A041913, there is no canonical definition to state claims against.
-/

/-! ## A041913.P13986180684949869813

`A265705(A008295(3*n)*A045499(n))`
-/

namespace A041913.P13986180684949869813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265705 (A008295 (3 * n) * A045499 n).toNat

end

end A041913.P13986180684949869813

/-! ## A041913.P16562618039036912039

`A171106(n+1)%A171101(A177119(n+1))`
-/

namespace A041913.P16562618039036912039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171106 (n + 1)) (A171101 (A177119 (n + 1)).toNat)

end

end A041913.P16562618039036912039

/-!
# A041917: Denominators of continued fraction convergents to sqrt(480).

The programs for A041917, there is no canonical definition to state claims against.
-/

/-! ## A041917.P16039992001364394400

`A140106(A041921(n))+1`
-/

namespace A041917.P16039992001364394400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A041921 n).toNat + 1

end

end A041917.P16039992001364394400

/-! ## A041917.P4281710467707903063

`A065033(A041921(n)-1)`
-/

namespace A041917.P4281710467707903063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A041921 n - 1).toNat

end

end A041917.P4281710467707903063

/-!
# A041921: Denominators of continued fraction convergents to sqrt(482).

The programs for A041921, there is no canonical definition to state claims against.
-/

/-! ## A041921.P7695186756252459332

`A004525(A041923(n))`
-/

namespace A041921.P7695186756252459332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041923 n).toNat

end

end A041921.P7695186756252459332

/-! ## A041921.P10700493682026110235

`A065033(A041923(n)-1)`
-/

namespace A041921.P10700493682026110235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A041923 n - 1).toNat

end

end A041921.P10700493682026110235

/-!
# A041922: Numerators of continued fraction convergents to sqrt(483).

The programs for A041922, the canonical program `A041922.P2751656773947299227` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041922 has offset 0).

The definition of A041922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041922.P2751656773947299227

`44*a(n-2)-a(n-4)` with `a(0)=21, a(1)=22, a(2)=945, a(3)=967`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041922

/-- `44*a(n-2)-a(n-4)` -/
def P2751656773947299227.Spec : Prop :=
  ∀ n, P2751656773947299227.a n = A041922 n

theorem P2751656773947299227.correct : P2751656773947299227.Spec := by
  intro n
  simp only [A041922]

end A041922

/-!
# A041923: Denominators of continued fraction convergents to sqrt(483).

The programs for A041923, the canonical program `A041923.P13341697187303893232` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041923 has offset 0).

The definition of A041923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041923.P13341697187303893232

`44*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=43, a(3)=44`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041923

/-- `44*a(n-2)-a(n-4)` -/
def P13341697187303893232.Spec : Prop :=
  ∀ n, P13341697187303893232.a n = A041923 n

theorem P13341697187303893232.correct : P13341697187303893232.Spec := by
  intro n
  simp only [A041923]

end A041923

/-!
# A041924: Numerators of continued fraction convergents to sqrt(485).

The programs for A041924, the canonical program `A041924.P3482193164427378553` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041924 has offset 0).

The definition of A041924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041924.P3482193164427378553

`44*a(n-1)+a(n-2)` with `a(0)=22, a(1)=969`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041924

/-- `44*a(n-1)+a(n-2)` -/
def P3482193164427378553.Spec : Prop :=
  ∀ n, (P3482193164427378553.a n : ℤ) = A041924 n

theorem P3482193164427378553.correct : P3482193164427378553.Spec := by
  intro n
  simp only [A041924]

end A041924

/-! ## A041924.P15330450029576129572

`A041925(n+1)-A040110(n+1)*A041925(n)`
-/

namespace A041924.P15330450029576129572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041925 (n + 1) - A040110 (n + 1) * A041925 n

end

end A041924.P15330450029576129572

namespace A041924

/-- `A041925(n+1)-A040110(n+1)*A041925(n)` -/
def P15330450029576129572.Spec : Prop :=
  ∀ n, P15330450029576129572.a n = A041924 n

end A041924

/-!
# A041925: Denominators of continued fraction convergents to sqrt(485).

The programs for A041925, the canonical program `A041925.P15583635226805764172` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041925 has offset 0).

The definition of A041925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041925.P15583635226805764172

`44*a(n-1)+a(n-2)` with `a(0)=1, a(1)=44`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041925

/-- `44*a(n-1)+a(n-2)` -/
def P15583635226805764172.Spec : Prop :=
  ∀ n, (P15583635226805764172.a n : ℤ) = A041925 n

theorem P15583635226805764172.correct : P15583635226805764172.Spec := by
  intro n
  simp only [A041925]

end A041925

/-! ## A041925.P12722290284154724138

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=44`
-/

namespace A041925.P12722290284154724138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 44] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A041925.P12722290284154724138

namespace A041925

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P12722290284154724138.Spec : Prop :=
  ∀ n, P12722290284154724138.a n = (A041925 n : ℚ)

end A041925

/-! ## A041925.P14315099369777578688

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=44`
-/

namespace A041925.P14315099369777578688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 44] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A041925.P14315099369777578688

namespace A041925

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P14315099369777578688.Spec : Prop :=
  ∀ n, P14315099369777578688.a n = A041925 n

end A041925

/-!
# A041926: Numerators of continued fraction convergents to sqrt(486).

The programs for A041926, there is no canonical definition to state claims against.
-/

/-! ## A041926.P6572231077919660851

`A041006(3*n+2)`
-/

namespace A041926.P6572231077919660851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (3 * n + 2)

end

end A041926.P6572231077919660851

/-! ## A041926.P13229049253762124469

`A041092(3*n+2)`
-/

namespace A041926.P13229049253762124469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041092 (3 * n + 2)

end

end A041926.P13229049253762124469

/-! ## A041926.P831393259043464438

`record[A041006(A166517(n))]`
-/

namespace A041926.P831393259043464438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041926.P831393259043464438

/-! ## A041926.P16264864178276333644

`∩[A041006(n), A041092(n)]`
-/

namespace A041926.P16264864178276333644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A041926.P16264864178276333644

/-! ## A041926.P3705329072119481914

`record[A041006(Δ[A092530(n)])]`
-/

namespace A041926.P3705329072119481914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041926.P3705329072119481914

/-! ## A041926.P14823747918329239443

`lcm(A041006(A016789(n)), A041006(n))`
-/

namespace A041926.P14823747918329239443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041006 (A016789 n).toNat) (A041006 n)

end

end A041926.P14823747918329239443

/-! ## A041926.P12550977904864082950

`A041006(A016789(n))/A000041(gcd(n, n+1))`
-/

namespace A041926.P12550977904864082950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 (A016789 n).toNat : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A041926.P12550977904864082950

/-! ## A041926.P15340103310247305641

`A041006(A016789(n))+A000007(A008458(n))`
-/

namespace A041926.P15340103310247305641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 (A016789 n).toNat + A000007 (A008458 n).toNat

end

end A041926.P15340103310247305641

/-!
# A041927: Denominators of continued fraction convergents to sqrt(486).

The programs for A041927, there is no canonical definition to state claims against.
-/

/-! ## A041927.P16031361698726470050

`A041093(3*n+2)/3`
-/

namespace A041927.P16031361698726470050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041093 (3 * n + 2) : ℚ) / 3

end

end A041927.P16031361698726470050

/-! ## A041927.P1503978120792333511

`A041007(3*n+2)/9`
-/

namespace A041927.P1503978120792333511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 (3 * n + 2) : ℚ) / 9

end

end A041927.P1503978120792333511

/-!
# A041929: Denominators of continued fraction convergents to sqrt(487).

The programs for A041929, there is no canonical definition to state claims against.
-/

/-! ## A041929.P14474621280074892127

`or(ceil(5^n/4), A005730(2^(3*n-1)+2^(2*n-1)))`
-/

namespace A041929.P14474621280074892127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(5 ^ n : ℚ) / 4⌉ (A005730 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((3 * n : ℤ) - 1 : ℤ) + (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ))).toNat)

end

end A041929.P14474621280074892127

/-!
# A041930: Numerators of continued fraction convergents to sqrt(488).

The programs for A041930, there is no canonical definition to state claims against.
-/

/-! ## A041930.P10857562830340161305

`gcd(2, n)*A041220(n)`
-/

namespace A041930.P10857562830340161305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041220 n

end

end A041930.P10857562830340161305

/-! ## A041930.P8291059049792824056

`lcm(Δ[A052938(n)], A041220(n))`
-/

namespace A041930.P8291059049792824056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041220 n)

end

end A041930.P8291059049792824056

/-! ## A041930.P2853014937256613025

`A000034(n+1)*A041220(n)`
-/

namespace A041930.P2853014937256613025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041220 n

end

end A041930.P2853014937256613025

/-! ## A041930.P887158819438645194

`A090313(n+1)/A000034(n)`
-/

namespace A041930.P887158819438645194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090313 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041930.P887158819438645194

/-! ## A041930.P641523812375436252

`(3-A000034(n))*A041220(n)`
-/

namespace A041930.P641523812375436252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041220 n

end

end A041930.P641523812375436252

/-!
# A041931: Denominators of continued fraction convergents to sqrt(488).

The programs for A041931, there is no canonical definition to state claims against.
-/

/-! ## A041931.P268166920931239133

`A041221(n)/A000034(n)`
-/

namespace A041931.P268166920931239133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A000034 n : ℚ)

end

end A041931.P268166920931239133

/-! ## A041931.P17577657788804972918

`A041221(n)/A010673(n)!`
-/

namespace A041931.P17577657788804972918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041931.P17577657788804972918

/-! ## A041931.P13645955629104919721

`A041221(n)/Δ[A032766(n)]`
-/

namespace A041931.P13645955629104919721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041931.P13645955629104919721

/-! ## A041931.P4171128795026690771

`A041221(n)/A134451(n+1)`
-/

namespace A041931.P4171128795026690771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041931.P4171128795026690771

/-! ## A041931.P4559065728112785896

`A041221(n)/A006519(n²+1)`
-/

namespace A041931.P4559065728112785896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041931.P4559065728112785896

/-! ## A041931.P5245395305430706613

`A041221(n)/A006530(A006519(n+1))`
-/

namespace A041931.P5245395305430706613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041221 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041931.P5245395305430706613

/-!
# A041935: Denominators of continued fraction convergents to sqrt(490).

The programs for A041935, there is no canonical definition to state claims against.
-/

/-! ## A041935.P676703550425972904

`A257347(A273212(n))`
-/

namespace A041935.P676703550425972904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (A273212 n).toNat

end

end A041935.P676703550425972904

/-!
# A041939: Denominators of continued fraction convergents to sqrt(492).

The programs for A041939, there is no canonical definition to state claims against.
-/

/-! ## A041939.P14816501055584711322

`A055035(A282980(n))+A022309(n)`
-/

namespace A041939.P14816501055584711322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A282980 n).toNat + A022309 n

end

end A041939.P14816501055584711322

/-!
# A041941: Denominators of continued fraction convergents to sqrt(493).

The programs for A041941, there is no canonical definition to state claims against.
-/

/-! ## A041941.P15867167831570074006

`A058782(A041123(n))`
-/

namespace A041941.P15867167831570074006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058782 (A041123 n).toNat

end

end A041941.P15867167831570074006

/-!
# A041943: Denominators of continued fraction convergents to sqrt(494).

The programs for A041943, there is no canonical definition to state claims against.
-/

/-! ## A041943.P5937986127722026031

`A151572(n)+A002487(A007484(n))`
-/

namespace A041943.P5937986127722026031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 n + A002487 (A007484 n).toNat

end

end A041943.P5937986127722026031

/-!
# A041944: Numerators of continued fraction convergents to sqrt(495).

The programs for A041944, there is no canonical definition to state claims against.
-/

/-! ## A041944.P13497698282002713918

`A041094(2*n+1)-A041094(2*n)*A110514(2*n+1)`
-/

namespace A041944.P13497698282002713918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041094 (2 * n + 1) - A041094 (2 * n) * A110514 (2 * n + 1)

end

end A041944.P13497698282002713918

/-!
# A041945: Denominators of continued fraction convergents to sqrt(495).

The programs for A041945, the canonical program `A041945.P17094087469757302406` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041945 has offset 0).

The definition of A041945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041945.P17094087469757302406

`178*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=177, a(3)=712`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041945

/-- `178*a(n-2)-a(n-4)` -/
def P17094087469757302406.Spec : Prop :=
  ∀ n, P17094087469757302406.a n = A041945 n

theorem P17094087469757302406.correct : P17094087469757302406.Spec := by
  intro n
  simp only [A041945]

end A041945

/-!
# A041949: Denominators of continued fraction convergents to sqrt(497).

The programs for A041949, there is no canonical definition to state claims against.
-/

/-! ## A041949.P5727477195021825576

`xor(n, A330474(n)+A014301(n+1))`
-/

namespace A041949.P5727477195021825576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A330474 n + A014301 (n + 1))

end

end A041949.P5727477195021825576

/-! ## A041949.P9180356667302403701

`A339456(A152915(n))+A191223(n+1)`
-/

namespace A041949.P9180356667302403701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339456 (A152915 n).toNat + A191223 (n + 1)

end

end A041949.P9180356667302403701

/-!
# A041951: Denominators of continued fraction convergents to sqrt(498).

The programs for A041951, there is no canonical definition to state claims against.
-/

/-! ## A041951.P9822413524533916416

`A030101(A239450(n+1)+A080605(n+1))`
-/

namespace A041951.P9822413524533916416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A239450 (n + 1) + A080605 (n + 1)).toNat

end

end A041951.P9822413524533916416

/-!
# A041953: Denominators of continued fraction convergents to sqrt(499).

The programs for A041953, there is no canonical definition to state claims against.
-/

/-! ## A041953.P7583349228299579141

`and(A115160(n+1), A219421(A081908(n)))`
-/

namespace A041953.P7583349228299579141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115160 (n + 1)) (A219421 (A081908 n).toNat)

end

end A041953.P7583349228299579141

/-!
# A041956: Numerators of continued fraction convergents to sqrt(501).

The programs for A041956, there is no canonical definition to state claims against.
-/

/-! ## A041956.P7054428049092260736

`A227911(A041224(n+1))`
-/

namespace A041956.P7054428049092260736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227911 (A041224 (n + 1)).toNat

end

end A041956.P7054428049092260736

/-!
# A041957: Denominators of continued fraction convergents to sqrt(501).

The programs for A041957, there is no canonical definition to state claims against.
-/

/-! ## A041957.P13396202372746256059

`A357522(A371351(n+1)+A333431(n+1))`
-/

namespace A041957.P13396202372746256059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357522 (A371351 (n + 1) + A333431 (n + 1)).toNat

end

end A041957.P13396202372746256059

/-!
# A041959: Denominators of continued fraction convergents to sqrt(502).

The programs for A041959, there is no canonical definition to state claims against.
-/

/-! ## A041959.P11768333466290549516

`A214033(a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A041959.P11768333466290549516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A214033 (a (n - 1)).toNat

end

end A041959.P11768333466290549516

/-!
# A041961: Denominators of continued fraction convergents to sqrt(503).

The programs for A041961, there is no canonical definition to state claims against.
-/

/-! ## A041961.P17403927175512378344

`∑[A008619(A076822(n*gcd(2, n)))]`
-/

namespace A041961.P17403927175512378344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A076822 (n * Nat.gcd 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041961.P17403927175512378344

/-! ## A041961.P4864822035680380104

`A345167(A237439(n+1))-A111900(2*n+3)`
-/

namespace A041961.P4864822035680380104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A237439 (n + 1)).toNat - A111900 (2 * n + 3)

end

end A041961.P4864822035680380104

/-!
# A041962: Numerators of continued fraction convergents to sqrt(504).

The programs for A041962, there is no canonical definition to state claims against.
-/

/-! ## A041962.P5975191087485199765

`gcd(2, n)*A041228(n)`
-/

namespace A041962.P5975191087485199765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041228 n

end

end A041962.P5975191087485199765

/-! ## A041962.P1038357645610019609

`A000034(n+1)*A041228(n)`
-/

namespace A041962.P1038357645610019609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041228 n

end

end A041962.P1038357645610019609

/-! ## A041962.P2024649445140502424

`2/A000034(n)*A041228(n)`
-/

namespace A041962.P2024649445140502424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041228 n : ℚ)

end

end A041962.P2024649445140502424

/-! ## A041962.P6207003770512937362

`(∑[A033999(n)]+1)*A041228(n)`
-/

namespace A041962.P6207003770512937362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A041228 n

end

end A041962.P6207003770512937362

/-! ## A041962.P7361041178410326090

`A000079(∑[A033999(n)])*A041228(n)`
-/

namespace A041962.P7361041178410326090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A041228 n

end

end A041962.P7361041178410326090

/-! ## A041962.P14962696451416111572

`A041228(n)*A041235(∑[A033999(n)])`
-/

namespace A041962.P14962696451416111572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041228 n * A041235 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041962.P14962696451416111572

/-! ## A041962.P6603295876766922968

`lcm(gcd(4, A041622(n)), A041228(n))`
-/

namespace A041962.P6603295876766922968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 4 (A041622 n) : ℤ) (A041228 n)

end

end A041962.P6603295876766922968

/-!
# A041963: Denominators of continued fraction convergents to sqrt(504).

The programs for A041963, there is no canonical definition to state claims against.
-/

/-! ## A041963.P18424590113121229334

`lcm(2, A041229(n))/2`
-/

namespace A041963.P18424590113121229334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041229 n) : ℚ) / 2

end

end A041963.P18424590113121229334

/-! ## A041963.P12173459025066873081

`A041229(n)/A000034(n)`
-/

namespace A041963.P12173459025066873081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (A000034 n : ℚ)

end

end A041963.P12173459025066873081

/-! ## A041963.P12680570107342743570

`A041229(n)/Δ[A007494(n+1)]`
-/

namespace A041963.P12680570107342743570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041963.P12680570107342743570

/-! ## A041963.P687486902527131059

`Δ[A007494(n)/2]*A041229(n)`
-/

namespace A041963.P687486902527131059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A041229 n : ℚ)

end

end A041963.P687486902527131059

/-! ## A041963.P5986110801780704721

`A041229(n)/A053222(Δ[A007494(n)])`
-/

namespace A041963.P5986110801780704721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (A053222 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041963.P5986110801780704721

/-! ## A041963.P10599092268956188160

`A041229(n)/A006530(A006519(n+1))`
-/

namespace A041963.P10599092268956188160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041963.P10599092268956188160

/-! ## A041963.P9315072446029076733

`A041229(n)/A006519(n²+1)`
-/

namespace A041963.P9315072446029076733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041229 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041963.P9315072446029076733

/-!
# A041965: Denominators of continued fraction convergents to sqrt(505).

The programs for A041965, there is no canonical definition to state claims against.
-/

/-! ## A041965.P45358001267150936

`A265667(A159016(n)^n)`
-/

namespace A041965.P45358001267150936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A159016 n ^ n).toNat

end

end A041965.P45358001267150936

/-!
# A041967: Denominators of continued fraction convergents to sqrt(506).

The programs for A041967, the canonical program `A041967.P18374034172772300654` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041967 has offset 0).

The definition of A041967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041967.P18374034172772300654

`90*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=89, a(3)=180`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041967

/-- `90*a(n-2)-a(n-4)` -/
def P18374034172772300654.Spec : Prop :=
  ∀ n, P18374034172772300654.a n = A041967 n

theorem P18374034172772300654.correct : P18374034172772300654.Spec := by
  intro n
  simp only [A041967]

end A041967

/-!
# A041970: Numerators of continued fraction convergents to sqrt(508).

The programs for A041970, there is no canonical definition to state claims against.
-/

/-! ## A041970.P3860212349380591549

`A187829(A041971(n))+A041884(n)`
-/

namespace A041970.P3860212349380591549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (A041971 n).toNat + A041884 n

end

end A041970.P3860212349380591549

/-!
# A041971: Denominators of continued fraction convergents to sqrt(508).

The programs for A041971, there is no canonical definition to state claims against.
-/

/-! ## A041971.P11298825271145815822

`A027748(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^(lcm(2, n)+n%2))`
-/

namespace A041971.P11298825271145815822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ (Nat.lcm 2 n + n % 2))).toNat

end

end A041971.P11298825271145815822

/-! ## A041971.P16308109925866085926

`A338879(A003227(n+1))`
-/

namespace A041971.P16308109925866085926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338879 (A003227 (n + 1)).toNat

end

end A041971.P16308109925866085926

/-!
# A041972: Numerators of continued fraction convergents to sqrt(509).

The programs for A041972, there is no canonical definition to state claims against.
-/

/-! ## A041972.P15190692549667222493

`A171181(A041976(n)+A041970(n))`
-/

namespace A041972.P15190692549667222493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A041976 n + A041970 n).toNat

end

end A041972.P15190692549667222493

/-!
# A041974: Numerators of continued fraction convergents to sqrt(510).

The programs for A041974, there is no canonical definition to state claims against.
-/

/-! ## A041974.P6861166007205225157

`A366860(A042576(n))`
-/

namespace A041974.P6861166007205225157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366860 (A042576 n).toNat

end

end A041974.P6861166007205225157

/-! ## A041974.P9639073920630095322

`A004526(A042576(n)+A041516(n))`
-/

namespace A041974.P9639073920630095322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042576 n + A041516 n).toNat

end

end A041974.P9639073920630095322

/-!
# A041975: Denominators of continued fraction convergents to sqrt(510).

The programs for A041975, there is no canonical definition to state claims against.
-/

/-! ## A041975.P15288775341594438075

`A041517(n)+A004526(A042577(n)-A041517(n))`
-/

namespace A041975.P15288775341594438075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041517 n + A004526 (A042577 n - A041517 n).toNat

end

end A041975.P15288775341594438075

/-! ## A041975.P14044990849521076445

`A004526(A042577(n)+A041517(n))`
-/

namespace A041975.P14044990849521076445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042577 n + A041517 n).toNat

end

end A041975.P14044990849521076445

/-! ## A041975.P15709428450389994179

`or(A270995(n), A344612(A007489(n)))`
-/

namespace A041975.P15709428450389994179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A270995 n) (A344612 (A007489 n).toNat)

end

end A041975.P15709428450389994179

/-!
# A041976: Numerators of continued fraction convergents to sqrt(511).

The programs for A041976, there is no canonical definition to state claims against.
-/

/-! ## A041976.P15035978815807212380

`A261906(A041808(n))`
-/

namespace A041976.P15035978815807212380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (A041808 n).toNat

end

end A041976.P15035978815807212380

/-!
# A041978: Numerators of continued fraction convergents to sqrt(512).

The programs for A041978, there is no canonical definition to state claims against.
-/

/-! ## A041978.P8299904238956511636

`A022392(A361396(n+1))`
-/

namespace A041978.P8299904238956511636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022392 (A361396 (n + 1)).toNat

end

end A041978.P8299904238956511636

/-!
# A041979: Denominators of continued fraction convergents to sqrt(512).

The programs for A041979, there is no canonical definition to state claims against.
-/

/-! ## A041979.P9165757529535572974

`A110656(A038052(n)+A034856(n+1))`
-/

namespace A041979.P9165757529535572974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A038052 n + A034856 (n + 1)).toNat

end

end A041979.P9165757529535572974

/-! ## A041979.P14709058852236633763

`A157604(n)+A002266(A121407(n+1))`
-/

namespace A041979.P14709058852236633763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157604 n + A002266 (A121407 (n + 1)).toNat

end

end A041979.P14709058852236633763

/-! ## A041979.P13853730357868061851

`A004526(A176692(n))-A307573(n+1)`
-/

namespace A041979.P13853730357868061851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A176692 n).toNat - A307573 (n + 1)

end

end A041979.P13853730357868061851

/-!
# A041983: Denominators of continued fraction convergents to sqrt(514).

The programs for A041983, there is no canonical definition to state claims against.
-/

/-! ## A041983.P12707581347192988154

`A237593(∑[a(n-1)+a(n-2)]²)` with `a(0)=1, a(1)=12`
-/

namespace A041983.P12707581347192988154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A041983.P12707581347192988154

/-!
# A041986: Numerators of continued fraction convergents to sqrt(516).

The programs for A041986, there is no canonical definition to state claims against.
-/

/-! ## A041986.P1660329516677287729

`A167389(A041462(n))`
-/

namespace A041986.P1660329516677287729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (A041462 n).toNat

end

end A041986.P1660329516677287729

/-!
# A041987: Denominators of continued fraction convergents to sqrt(516).

The programs for A041987, there is no canonical definition to state claims against.
-/

/-! ## A041987.P13065269816692733907

`A051022(A158237(n+1)^A146923(n+1))`
-/

namespace A041987.P13065269816692733907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.roundAway ((A158237 (n + 1) : ℚ) ^ (A146923 (n + 1) : ℤ))).toNat

end

end A041987.P13065269816692733907

/-! ## A041987.P12293992698275089589

`A051022(A158237(n+1))%A280532(3*n+4)`
-/

namespace A041987.P12293992698275089589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051022 (A158237 (n + 1)).toNat) (A280532 (3 * n + 4))

end

end A041987.P12293992698275089589

/-! ## A041987.P10731597279904861884

`A051022(A146923(n+1)²²*A158237(n+1))`
-/

namespace A041987.P10731597279904861884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 ((A146923 (n + 1) ^ 2) ^ 2 * A158237 (n + 1)).toNat

end

end A041987.P10731597279904861884

/-!
# A041989: Denominators of continued fraction convergents to sqrt(517).

The programs for A041989, there is no canonical definition to state claims against.
-/

/-! ## A041989.P5071556870603002851

`A025453(A267881(n)+A077538(n))`
-/

namespace A041989.P5071556870603002851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A267881 n + A077538 n).toNat

end

end A041989.P5071556870603002851

/-! ## A041989.P12851927135044056875

`xor(A008651(A214997(n)), A099927(n))`
-/

namespace A041989.P12851927135044056875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008651 (A214997 n).toNat) (A099927 n)

end

end A041989.P12851927135044056875

/-!
# A041991: Denominators of continued fraction convergents to sqrt(518).

The programs for A041991, there is no canonical definition to state claims against.
-/

/-! ## A041991.P4945251400702979154

`A331912(A014741(n+1)-n)`
-/

namespace A041991.P4945251400702979154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (A014741 (n + 1) - (n : ℤ)).toNat

end

end A041991.P4945251400702979154

/-! ## A041991.P13543712602787955083

`A266476(A045890(n)*A134207(n))`
-/

namespace A041991.P13543712602787955083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266476 (A045890 n * A134207 n).toNat

end

end A041991.P13543712602787955083

/-!
# A041992: Numerators of continued fraction convergents to sqrt(519).

The programs for A041992, there is no canonical definition to state claims against.
-/

/-! ## A041992.P8373283377615333378

`A248229(A041466(n))`
-/

namespace A041992.P8373283377615333378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248229 (A041466 n).toNat

end

end A041992.P8373283377615333378

/-!
# A041994: Numerators of continued fraction convergents to sqrt(520).

The programs for A041994, there is no canonical definition to state claims against.
-/

/-! ## A041994.P4540575757366534482

`Δ[A007494(n)]*A041236(n)`
-/

namespace A041994.P4540575757366534482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041236 n

end

end A041994.P4540575757366534482

/-! ## A041994.P3315621875797227249

`lcm(Δ[A030451(n)], A041236(n))`
-/

namespace A041994.P3315621875797227249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041236 n)

end

end A041994.P3315621875797227249

/-! ## A041994.P17090360807961365863

`A000034(n+1)*A041236(n)`
-/

namespace A041994.P17090360807961365863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041236 n

end

end A041994.P17090360807961365863

/-! ## A041994.P4634715557854004871

`A041236(n)*A134451(n+2)`
-/

namespace A041994.P4634715557854004871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041236 n * A134451 (n + 2)

end

end A041994.P4634715557854004871

/-! ## A041994.P14763842325249271264

`2/A000034(n)*A041236(n)`
-/

namespace A041994.P14763842325249271264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041236 n : ℚ)

end

end A041994.P14763842325249271264

/-! ## A041994.P5825645006044056664

`A000079(∑[(-1)^n])*A041236(n)`
-/

namespace A041994.P5825645006044056664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A041236 n

end

end A041994.P5825645006044056664

/-! ## A041994.P10550836372823122935

`A000712(∑[(-1)^n])*A041236(n)`
-/

namespace A041994.P10550836372823122935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A041236 n

end

end A041994.P10550836372823122935

/-! ## A041994.P1473253928976264622

`A041236(n)*A240877(∑[(-1)^n])`
-/

namespace A041994.P1473253928976264622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041236 n * A240877 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041994.P1473253928976264622

/-!
# A041995: Denominators of continued fraction convergents to sqrt(520).

The programs for A041995, the canonical program `A041995.P13679483218004529466` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041995 has offset 0).

The definition of A041995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041995.P13679483218004529466

`A041237(n)/A000034(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041995

/-- `A041237(n)/A000034(n)` -/
def P13679483218004529466.Spec : Prop :=
  ∀ n, P13679483218004529466.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P16053173080982691388

`A041237(n)/Δ[A032766(n)]`
-/

namespace A041995.P16053173080982691388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041995.P16053173080982691388

namespace A041995

/-- `A041237(n)/Δ[A032766(n)]` -/
def P16053173080982691388.Spec : Prop :=
  ∀ n, P16053173080982691388.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P921727020569784999

`A041237(n)/A134451(n+1)`
-/

namespace A041995.P921727020569784999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041995.P921727020569784999

namespace A041995

/-- `A041237(n)/A134451(n+1)` -/
def P921727020569784999.Spec : Prop :=
  ∀ n, P921727020569784999.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P4966947860529173419

`A041237(n)/A006530(A006519(n+1))`
-/

namespace A041995.P4966947860529173419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A041995.P4966947860529173419

namespace A041995

/-- `A041237(n)/A006530(A006519(n+1))` -/
def P4966947860529173419.Spec : Prop :=
  ∀ n, P4966947860529173419.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P5861719102479977591

`A041237(n)/A001511(A090771(n+1)+n)`
-/

namespace A041995.P5861719102479977591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A001511 (A090771 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A041995.P5861719102479977591

namespace A041995

/-- `A041237(n)/A001511(A090771(n+1)+n)` -/
def P5861719102479977591.Spec : Prop :=
  ∀ n, P5861719102479977591.a n = (A041995 n : ℚ)

end A041995

/-! ## A041995.P8996072997226635912

`A041237(n)/A006519(n²+1)`
-/

namespace A041995.P8996072997226635912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041995.P8996072997226635912

namespace A041995

/-- `A041237(n)/A006519(n²+1)` -/
def P8996072997226635912.Spec : Prop :=
  ∀ n, P8996072997226635912.a n = (A041995 n : ℚ)

end A041995

