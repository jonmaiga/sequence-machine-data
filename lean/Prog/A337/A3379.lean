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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
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
# A337900: The number of walks of length 2n on the square lattice that start from the origin (0,0) and end at the vertex (2,0).

The programs for A337900, the canonical program `A337900.P10145934000007285920` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337900 has offset 1).

The definition of A337900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337900.P10145934000007285920

`A001791(n+1)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337900

/-- `A001791(n+1)²` -/
def P10145934000007285920.Spec : Prop :=
  ∀ n, P10145934000007285920.a n = A337900 (n + 1)

theorem P10145934000007285920.correct : P10145934000007285920.Spec := by
  intro n
  simp only [A337900, Nat.add_sub_cancel]

end A337900

/-! ## A337900.P10728480328538746957

`C(2*(n+1), n)²`
-/

namespace A337900.P10728480328538746957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) n ^ 2

end

end A337900.P10728480328538746957

namespace A337900

/-- `C(2*(n+1), n)²` -/
def P10728480328538746957.Spec : Prop :=
  ∀ n, (P10728480328538746957.a n : ℤ) = A337900 (n + 1)

end A337900

/-! ## A337900.P9389655523588845823

`lcm(n+1, C(n+2+n, n)²)`
-/

namespace A337900.P9389655523588845823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose (n + 2 + n) n ^ 2)

end

end A337900.P9389655523588845823

namespace A337900

/-- `lcm(n+1, C(n+2+n, n)²)` -/
def P9389655523588845823.Spec : Prop :=
  ∀ n, (P9389655523588845823.a n : ℤ) = A337900 (n + 1)

end A337900

/-! ## A337900.P5728155615663649540

`∑{d}[n+2+n, C(#, n+2)²]`
-/

namespace A337900.P5728155615663649540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d (n + 2) ^ 2

end

end A337900.P5728155615663649540

namespace A337900

/-- `∑{d}[n+2+n, C(#, n+2)²]` -/
def P5728155615663649540.Spec : Prop :=
  ∀ n, (P5728155615663649540.a n : ℤ) = A337900 (n + 1)

end A337900

/-! ## A337900.P3317334529200909697

`Δ[a(n-1)-C(2*n, n-1)]²` with `a(0)=0`
-/

namespace A337900.P3317334529200909697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (Nat.choose (2 * n) ((n : ℤ) - 1).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A337900.P3317334529200909697

namespace A337900

/-- `Δ[a(n-1)-C(2*n, n-1)]²` -/
def P3317334529200909697.Spec : Prop :=
  ∀ n, P3317334529200909697.a n = A337900 (n + 1)

end A337900

/-! ## A337900.P8415143076414922063

`((2*n+1)*∏[2*(2*n+1)/(n+2)]-n*∏[2*(2*n+1)/(n+2)])²`
-/

namespace A337900.P8415143076414922063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)) ^ 2

end

end A337900.P8415143076414922063

namespace A337900

/-- `((2*n+1)*∏[2*(2*n+1)/(n+2)]-n*∏[2*(2*n+1)/(n+2)])²` -/
def P8415143076414922063.Spec : Prop :=
  ∀ n, P8415143076414922063.a n = (A337900 (n + 1) : ℚ)

end A337900

/-! ## A337900.P9543429832159238132

`record[A349727(n)²]`
-/

namespace A337900.P9543429832159238132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337900.P9543429832159238132

namespace A337900

/-- `record[A349727(n)²]` -/
def P9543429832159238132.Spec : Prop :=
  ∀ n, P9543429832159238132.a n = A337900 (n + 1)

end A337900

/-! ## A337900.P481292923893595712

`A378060(2*(n+1))`
-/

namespace A337900.P481292923893595712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378060 (2 * (n + 1))

end

end A337900.P481292923893595712

namespace A337900

/-- `A378060(2*(n+1))` -/
def P481292923893595712.Spec : Prop :=
  ∀ n, P481292923893595712.a n = A337900 (n + 1)

end A337900

/-! ## A337900.P16337916738029945561

`A014721((n+1)²+1)`
-/

namespace A337900.P16337916738029945561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014721 ((n + 1) ^ 2 + 1)

end

end A337900.P16337916738029945561

namespace A337900

/-- `A014721((n+1)²+1)` -/
def P16337916738029945561.Spec : Prop :=
  ∀ n, P16337916738029945561.a n = A337900 (n + 1)

end A337900

/-! ## A337900.P12220000636562018134

`(n+1)*A145600(n+1)`
-/

namespace A337900.P12220000636562018134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A145600 (n + 1)

end

end A337900.P12220000636562018134

namespace A337900

/-- `(n+1)*A145600(n+1)` -/
def P12220000636562018134.Spec : Prop :=
  ∀ n, P12220000636562018134.a n = A337900 (n + 1)

end A337900

/-!
# A337901: The number of walks of length 2n+1 on the square lattice that start from the origin (0,0) and end at the vertex (3,0).

The programs for A337901, the canonical program `A337901.P16979721480480869146` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337901 has offset 1).

The definition of A337901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337901.P16979721480480869146

`A002054(n+1)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337901

/-- `A002054(n+1)²` -/
def P16979721480480869146.Spec : Prop :=
  ∀ n, P16979721480480869146.a n = A337901 (n + 1)

theorem P16979721480480869146.correct : P16979721480480869146.Spec := by
  intro n
  simp only [A337901, Nat.add_sub_cancel]

end A337901

/-! ## A337901.P3929888635362286942

`C(2*n+3, n)²`
-/

namespace A337901.P3929888635362286942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) n ^ 2

end

end A337901.P3929888635362286942

namespace A337901

/-- `C(2*n+3, n)²` -/
def P3929888635362286942.Spec : Prop :=
  ∀ n, (P3929888635362286942.a n : ℤ) = A337901 (n + 1)

end A337901

/-! ## A337901.P4729379700477138490

`C(2*n+3, n)^2`
-/

namespace A337901.P4729379700477138490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) n ^ 2

end

end A337901.P4729379700477138490

namespace A337901

/-- `C(2*n+3, n)^2` -/
def P4729379700477138490.Spec : Prop :=
  ∀ n, (P4729379700477138490.a n : ℤ) = A337901 (n + 1)

end A337901

/-! ## A337901.P5414373215811522982

`∑{d}[n+3+n, C(#, n+3)²]`
-/

namespace A337901.P5414373215811522982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d (n + 3) ^ 2

end

end A337901.P5414373215811522982

namespace A337901

/-- `∑{d}[n+3+n, C(#, n+3)²]` -/
def P5414373215811522982.Spec : Prop :=
  ∀ n, (P5414373215811522982.a n : ℤ) = A337901 (n + 1)

end A337901

/-! ## A337901.P18124421560598222842

`A099813((n+2)²)²`
-/

namespace A337901.P18124421560598222842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099813 ((n + 2) ^ 2) ^ 2

end

end A337901.P18124421560598222842

namespace A337901

/-- `A099813((n+2)²)²` -/
def P18124421560598222842.Spec : Prop :=
  ∀ n, P18124421560598222842.a n = A337901 (n + 1)

end A337901

/-! ## A337901.P8674413590934303657

`A126325(∑[n]+1)²`
-/

namespace A337901.P8674413590934303657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126325 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A337901.P8674413590934303657

namespace A337901

/-- `A126325(∑[n]+1)²` -/
def P8674413590934303657.Spec : Prop :=
  ∀ n, P8674413590934303657.a n = A337901 (n + 1)

end A337901

/-! ## A337901.P10892999872857265940

`A050161(∑[n+2])²`
-/

namespace A337901.P10892999872857265940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050161 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A337901.P10892999872857265940

namespace A337901

/-- `A050161(∑[n+2])²` -/
def P10892999872857265940.Spec : Prop :=
  ∀ n, P10892999872857265940.a n = A337901 (n + 1)

end A337901

/-! ## A337901.P10724390524970817979

`Δ[A371965(n+2)]²`
-/

namespace A337901.P10724390524970817979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A337901.P10724390524970817979

namespace A337901

/-- `Δ[A371965(n+2)]²` -/
def P10724390524970817979.Spec : Prop :=
  ∀ n, P10724390524970817979.a n = A337901 (n + 1)

end A337901

/-! ## A337901.P8974719175419681121

`A381883(∑[n+3])²`
-/

namespace A337901.P8974719175419681121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381883 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A337901.P8974719175419681121

namespace A337901

/-- `A381883(∑[n+3])²` -/
def P8974719175419681121.Spec : Prop :=
  ∀ n, P8974719175419681121.a n = A337901 (n + 1)

end A337901

/-! ## A337901.P10735689808434141116

`record[A126325(n+1)²]`
-/

namespace A337901.P10735689808434141116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126325 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337901.P10735689808434141116

namespace A337901

/-- `record[A126325(n+1)²]` -/
def P10735689808434141116.Spec : Prop :=
  ∀ n, P10735689808434141116.a n = A337901 (n + 1)

end A337901

/-!
# A337902: The number of walks of length 2n+1 on the square lattice that start from the origin (0,0) and end at the vertex (2,1).

The programs for A337902, the canonical program `A337902.P6258484226495236165` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337902 has offset 1).

The definition of A337902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337902.P6258484226495236165

`A002054(n+1)*A001700(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337902

/-- `A002054(n+1)*A001700(n+1)` -/
def P6258484226495236165.Spec : Prop :=
  ∀ n, P6258484226495236165.a n = A337902 (n + 1)

theorem P6258484226495236165.correct : P6258484226495236165.Spec := by
  intro n
  simp only [A337902, Nat.add_sub_cancel]

end A337902

/-! ## A337902.P16328044564922014317

`A002054(n+1)*A088218(n+2)`
-/

namespace A337902.P16328044564922014317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) * A088218 (n + 2)

end

end A337902.P16328044564922014317

namespace A337902

/-- `A002054(n+1)*A088218(n+2)` -/
def P16328044564922014317.Spec : Prop :=
  ∀ n, P16328044564922014317.a n = A337902 (n + 1)

end A337902

/-! ## A337902.P16948481692365344278

`A001405(2*n+3)*A002054(n+1)`
-/

namespace A337902.P16948481692365344278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 3) * A002054 (n + 1)

end

end A337902.P16948481692365344278

namespace A337902

/-- `A001405(2*n+3)*A002054(n+1)` -/
def P16948481692365344278.Spec : Prop :=
  ∀ n, P16948481692365344278.a n = A337902 (n + 1)

end A337902

/-! ## A337902.P14656657049727804471

`A002054(n+1)*A037952(2*n+3)`
-/

namespace A337902.P14656657049727804471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) * A037952 (2 * n + 3)

end

end A337902.P14656657049727804471

namespace A337902

/-- `A002054(n+1)*A037952(2*n+3)` -/
def P14656657049727804471.Spec : Prop :=
  ∀ n, P14656657049727804471.a n = A337902 (n + 1)

end A337902

/-! ## A337902.P6231109348962813266

`A001700(n+1)/2*A024483(n+3)`
-/

namespace A337902.P6231109348962813266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 (n + 1) : ℚ) / 2 * (A024483 (n + 3) : ℚ)

end

end A337902.P6231109348962813266

namespace A337902

/-- `A001700(n+1)/2*A024483(n+3)` -/
def P6231109348962813266.Spec : Prop :=
  ∀ n, P6231109348962813266.a n = (A337902 (n + 1) : ℚ)

end A337902

/-! ## A337902.P15602961831179186933

`A037952(2*n+3)*A116385(2*(n+1))`
-/

namespace A337902.P15602961831179186933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 3) * A116385 (2 * (n + 1))

end

end A337902.P15602961831179186933

namespace A337902

/-- `A037952(2*n+3)*A116385(2*(n+1))` -/
def P15602961831179186933.Spec : Prop :=
  ∀ n, P15602961831179186933.a n = A337902 (n + 1)

end A337902

/-! ## A337902.P8034219409596639244

`A001405(2*n+3)*A037951(2*n+3)`
-/

namespace A337902.P8034219409596639244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 3) * A037951 (2 * n + 3)

end

end A337902.P8034219409596639244

namespace A337902

/-- `A001405(2*n+3)*A037951(2*n+3)` -/
def P8034219409596639244.Spec : Prop :=
  ∀ n, P8034219409596639244.a n = A337902 (n + 1)

end A337902

/-! ## A337902.P6376787789754395229

`A001405(2*n+3)*A037955(2*n+3)`
-/

namespace A337902.P6376787789754395229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 3) * A037955 (2 * n + 3)

end

end A337902.P6376787789754395229

namespace A337902

/-- `A001405(2*n+3)*A037955(2*n+3)` -/
def P6376787789754395229.Spec : Prop :=
  ∀ n, P6376787789754395229.a n = A337902 (n + 1)

end A337902

/-! ## A337902.P9017568583962028905

`A037952(2*n+3)*A037955(2*n+3)`
-/

namespace A337902.P9017568583962028905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 3) * A037955 (2 * n + 3)

end

end A337902.P9017568583962028905

namespace A337902

/-- `A037952(2*n+3)*A037955(2*n+3)` -/
def P9017568583962028905.Spec : Prop :=
  ∀ n, P9017568583962028905.a n = A337902 (n + 1)

end A337902

/-! ## A337902.P18031446477527440889

`record[A111418(2*n+1)]*record[A111418(2*n)]`
-/

namespace A337902.P18031446477527440889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A337902.P18031446477527440889

namespace A337902

/-- `record[A111418(2*n+1)]*record[A111418(2*n)]` -/
def P18031446477527440889.Spec : Prop :=
  ∀ n, P18031446477527440889.a n = A337902 (n + 1)

end A337902

/-!
# A337905: The number of walks of n steps on the hexagonal lattice that start at the origin and end at the adjacent vertex (1,0).

The programs for A337905, there is no canonical definition to state claims against.
-/

/-! ## A337905.P106184267384327049

`A002898(n+2)/6`
-/

namespace A337905.P106184267384327049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002898 (n + 2) : ℚ) / 6

end

end A337905.P106184267384327049

/-! ## A337905.P15329315084913554968

`record[ceil(A002898(n)/6)]`
-/

namespace A337905.P15329315084913554968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002898 n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337905.P15329315084913554968

/-! ## A337905.P3173011326820932131

`Δ[A180016(n+1)/6]`
-/

namespace A337905.P3173011326820932131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180016 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337905.P3173011326820932131

/-! ## A337905.P9686867125101613130

`ceil(A002898(2*n-(n-2))/6)`
-/

namespace A337905.P9686867125101613130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002898 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat : ℚ) / 6⌉

end

end A337905.P9686867125101613130

/-!
# A337906: The number of walks of n steps on the hexagonal lattice that start at the origin and end at the non-adjacent vertex (2,0).

The programs for A337906, there is no canonical definition to state claims against.
-/

/-! ## A337906.P11442534436216363438

`record[A000399(n+3)-A033312(n)²]`
-/

namespace A337906.P11442534436216363438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000399 (n + 3) - A033312 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337906.P11442534436216363438

/-!
# A337908: a(n) is the number of nonempty intervals x..y (with 0 < x <= y) such that LCM(x..y) = n.

The programs for A337908, there is no canonical definition to state claims against.
-/

/-! ## A337908.P6247878543723913694

`A089842(lcm(A089813(n+1), A089851(n)))`
-/

namespace A337908.P6247878543723913694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089842 (Int.lcm (A089813 (n + 1)) (A089851 n))

end

end A337908.P6247878543723913694

/-! ## A337908.P3601647045490804568

`A000029(val(A194354(n+2)+9, 2))`
-/

namespace A337908.P3601647045490804568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (SequenceMachineLib.valuation (A194354 (n + 2) + 9).toNat 2)

end

end A337908.P3601647045490804568

/-! ## A337908.P1173596164111916865

`A103262(val(A194354(n+2)+9, 2))`
-/

namespace A337908.P1173596164111916865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103262 (SequenceMachineLib.valuation (A194354 (n + 2) + 9).toNat 2)

end

end A337908.P1173596164111916865

/-! ## A337908.P15554587670235537418

`A055396(lcm(A167991(n+1), A230698(n)))`
-/

namespace A337908.P15554587670235537418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lcm (A167991 (n + 1)) (A230698 n))

end

end A337908.P15554587670235537418

/-! ## A337908.P17559578107975746971

`A055396(Δ[∑[A284359(n)]²])`
-/

namespace A337908.P17559578107975746971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (n + 1) - f1 n).toNat

end

end A337908.P17559578107975746971

/-!
# A337909: Distinct terms of A080079 in the order in which they appear.

The programs for A337909, the canonical program `A337909.P8516175673074773938` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337909 has offset 1).

The definition of A337909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004761, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337909.P8516175673074773938

`A080079(A004761(n+2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337909

/-- `A080079(A004761(n+2))` -/
def P8516175673074773938.Spec : Prop :=
  ∀ n, P8516175673074773938.a n = A337909 (n + 1)

theorem P8516175673074773938.correct : P8516175673074773938.Spec := by
  intro n
  simp only [A337909, Nat.add_sub_cancel]

end A337909

/-! ## A337909.P4876307929395284809

`∏[char[2^n]+char[1]+1]-n`
-/

namespace A337909.P4876307929395284809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A337909.P4876307929395284809

namespace A337909

/-- `∏[char[2^n]+char[1]+1]-n` -/
def P4876307929395284809.Spec : Prop :=
  ∀ n, P4876307929395284809.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P2955667642028215156

`abs(n%2-2*a(floor(n/2)))` with `a(0)=1, a(1)=2`
-/

namespace A337909.P2955667642028215156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  |((n % 2 : ℕ) : ℤ) - 2 * a ⌊(n : ℚ) / 2⌋.toNat|

end

end A337909.P2955667642028215156

namespace A337909

/-- `abs(n%2-2*a(floor(n/2)))` -/
def P2955667642028215156.Spec : Prop :=
  ∀ n, P2955667642028215156.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P2231431341655662600

`A318934(n+1)%A171757(n+1)`
-/

namespace A337909.P2231431341655662600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318934 (n + 1)) (A171757 (n + 1))

end

end A337909.P2231431341655662600

namespace A337909

/-- `A318934(n+1)%A171757(n+1)` -/
def P2231431341655662600.Spec : Prop :=
  ∀ n, P2231431341655662600.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P294639865377447692

`(A092569(2*n)+2)/2`
-/

namespace A337909.P294639865377447692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * n) + 2 : ℚ) / 2

end

end A337909.P294639865377447692

namespace A337909

/-- `(A092569(2*n)+2)/2` -/
def P294639865377447692.Spec : Prop :=
  ∀ n, P294639865377447692.a n = (A337909 (n + 1) : ℚ)

end A337909

/-! ## A337909.P13838075927461174795

`(a(n-1)-1)*A014963(2*n)²` with `a(0)=1, a(1)=2`
-/

namespace A337909.P13838075927461174795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - 1) * A014963 (2 * n) ^ 2

end

end A337909.P13838075927461174795

namespace A337909

/-- `(a(n-1)-1)*A014963(2*n)²` -/
def P13838075927461174795.Spec : Prop :=
  ∀ n, P13838075927461174795.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P17925980548373649268

`ceil(A092569(Δ[n²])/2)`
-/

namespace A337909.P17925980548373649268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092569 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A337909.P17925980548373649268

namespace A337909

/-- `ceil(A092569(Δ[n²])/2)` -/
def P17925980548373649268.Spec : Prop :=
  ∀ n, P17925980548373649268.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P6077770660829512688

`A132223(A004277(n))`
-/

namespace A337909.P6077770660829512688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132223 (A004277 n).toNat

end

end A337909.P6077770660829512688

namespace A337909

/-- `A132223(A004277(n))` -/
def P6077770660829512688.Spec : Prop :=
  ∀ n, P6077770660829512688.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P4555921503910567262

`A049773(A345401(n))`
-/

namespace A337909.P4555921503910567262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A345401 n).toNat

end

end A337909.P4555921503910567262

namespace A337909

/-- `A049773(A345401(n))` -/
def P4555921503910567262.Spec : Prop :=
  ∀ n, P4555921503910567262.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P18189933234656139187

`A078881(A010078(n+1))`
-/

namespace A337909.P18189933234656139187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (A010078 (n + 1)).toNat

end

end A337909.P18189933234656139187

namespace A337909

/-- `A078881(A010078(n+1))` -/
def P18189933234656139187.Spec : Prop :=
  ∀ n, P18189933234656139187.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P5669426333779734051

`A132223(A004275(n+1))`
-/

namespace A337909.P5669426333779734051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132223 (A004275 (n + 1)).toNat

end

end A337909.P5669426333779734051

namespace A337909

/-- `A132223(A004275(n+1))` -/
def P5669426333779734051.Spec : Prop :=
  ∀ n, P5669426333779734051.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P14628622911260563325

`A132223(4*n+1)`
-/

namespace A337909.P14628622911260563325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132223 (4 * n + 1)

end

end A337909.P14628622911260563325

namespace A337909

/-- `A132223(4*n+1)` -/
def P14628622911260563325.Spec : Prop :=
  ∀ n, P14628622911260563325.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P16158036053869158998

`A053646(A318934(n+1))`
-/

namespace A337909.P16158036053869158998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A318934 (n + 1)).toNat

end

end A337909.P16158036053869158998

namespace A337909

/-- `A053646(A318934(n+1))` -/
def P16158036053869158998.Spec : Prop :=
  ∀ n, P16158036053869158998.a n = A337909 (n + 1)

end A337909

/-! ## A337909.P13738490257030058715

`A179744(n)%A280510(n+1)`
-/

namespace A337909.P13738490257030058715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179744 n) (A280510 (n + 1))

end

end A337909.P13738490257030058715

namespace A337909

/-- `A179744(n)%A280510(n+1)` -/
def P13738490257030058715.Spec : Prop :=
  ∀ n, P13738490257030058715.a n = A337909 (n + 1)

end A337909

/-!
# A337910: Integers of the form (the number of nonnegative bases m < n such that m^3 == m (mod n))/(the number of nonnegative bases m < n such that -m^3 == m (mod n)).

The programs for A337910, the canonical program `A337910.P11596621976641212789` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337910 has offset 1).

The definition of A337910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337910.P11596621976641212789

`A087688(n+1)/A087782(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337910

/-- `A087688(n+1)/A087782(n+1)` -/
def P11596621976641212789.Spec : Prop :=
  ∀ n, P11596621976641212789.a n = (A337910 (n + 1) : ℚ)

end A337910

/-! ## A337910.P12845272399001030474

`∑{d}[n+1, A114811(#)]/A087782(n+1)`
-/

namespace A337910.P12845272399001030474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A114811 d : ℤ) : ℚ) / (A087782 (n + 1) : ℚ)

end

end A337910.P12845272399001030474

namespace A337910

/-- `∑{d}[n+1, A114811(#)]/A087782(n+1)` -/
def P12845272399001030474.Spec : Prop :=
  ∀ n, P12845272399001030474.a n = (A337910 (n + 1) : ℚ)

end A337910

/-! ## A337910.P16051361470704141062

`A337632(A109606(2*(n+1))+A000124(n))/A087782(n+1)`
-/

namespace A337910.P16051361470704141062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337632 (A109606 (2 * (n + 1)) + A000124 n).toNat : ℚ) / (A087782 (n + 1) : ℚ)

end

end A337910.P16051361470704141062

namespace A337910

/-- `A337632(A109606(2*(n+1))+A000124(n))/A087782(n+1)` -/
def P16051361470704141062.Spec : Prop :=
  ∀ n, P16051361470704141062.a n = (A337910 (n + 1) : ℚ)

end A337910

/-! ## A337910.P17886783776240329431

`A078644(A078644(n+1)^A034380(n+1))/A087782(n+1)`
-/

namespace A337910.P17886783776240329431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078644 (SequenceMachineLib.roundAway ((A078644 (n + 1) : ℚ) ^ (A034380 (n + 1) : ℤ))).toNat : ℚ) / (A087782 (n + 1) : ℚ)

end

end A337910.P17886783776240329431

namespace A337910

/-- `A078644(A078644(n+1)^A034380(n+1))/A087782(n+1)` -/
def P17886783776240329431.Spec : Prop :=
  ∀ n, P17886783776240329431.a n = (A337910 (n + 1) : ℚ)

end A337910

/-! ## A337910.P10616968901080178693

`A035176(A266383(n)²)`
-/

namespace A337910.P10616968901080178693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A266383 n ^ 2).toNat

end

end A337910.P10616968901080178693

namespace A337910

/-- `A035176(A266383(n)²)` -/
def P10616968901080178693.Spec : Prop :=
  ∀ n, P10616968901080178693.a n = A337910 (n + 1)

end A337910

/-!
# A337912: G.f. A(x) satisfies: Sum_{n>=0} x^n * A(x)^(n*(n-1)/2) = 2 - Sum_{n>=0} (-x)^n * A(x)^(n*(n+1)/2).

The programs for A337912, there is no canonical definition to state claims against.
-/

/-! ## A337912.P2318616042463381225

`A085485(∑[A361704(n)])`
-/

namespace A337912.P2318616042463381225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085485 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337912.P2318616042463381225

/-! ## A337912.P11928523930164757228

`A259824(A013636(n+1))`
-/

namespace A337912.P11928523930164757228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259824 (A013636 (n + 1)).toNat

end

end A337912.P11928523930164757228

/-!
# A337913: G.f. A(x) satisfies: Sum_{n>=0} x^n * A(x)^(n*(n-1)/2) = 1 / Sum_{n>=0} (-x)^n * A(x)^(n*(n+1)/2).

The programs for A337913, there is no canonical definition to state claims against.
-/

/-! ## A337913.P2833657202596973245

`A129579(n)-A242062(A338144(n+1))`
-/

namespace A337913.P2833657202596973245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129579 n - A242062 (A338144 (n + 1)).toNat

end

end A337913.P2833657202596973245

/-!
# A337917: Values of the Ramanujan tau quadruples mod 691 such that four (or more) consecutive Ramanujan tau numbers are congruent mod 691.

The programs for A337917, there is no canonical definition to state claims against.
-/

/-! ## A337917.P14994330492524150218

`A010816(A134971(n+1)-∑{e}[n+1, #])`
-/

namespace A337917.P14994330492524150218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (A134971 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A337917.P14994330492524150218

/-! ## A337917.P5474125191501766902

`A010816(A134971(n+1)-A014420(n))`
-/

namespace A337917.P5474125191501766902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (A134971 (n + 1) - A014420 n).toNat

end

end A337917.P5474125191501766902

/-! ## A337917.P12684094403820531386

`A000961(3*n+5)*A216280(A233693(n+4))`
-/

namespace A337917.P12684094403820531386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (3 * n + 5) * A216280 (A233693 (n + 4)).toNat

end

end A337917.P12684094403820531386

/-! ## A337917.P16588626633989261724

`C(A301710(2*n+3), A084855(A084856(n+1)))`
-/

namespace A337917.P16588626633989261724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A301710 (2 * n + 3)).toNat (A084855 (A084856 (n + 1)).toNat).toNat

end

end A337917.P16588626633989261724

/-! ## A337917.P10598880249010909499

`A085724(n+1)*A288622(A025474(3*n+2))`
-/

namespace A337917.P10598880249010909499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085724 (n + 1) * A288622 (A025474 (3 * n + 2)).toNat

end

end A337917.P10598880249010909499

/-!
# A337919: Inverse permutation to A337918.

The programs for A337919, there is no canonical definition to state claims against.
-/

/-! ## A337919.P15269129572366901943

`A000124(n)%A004164(A205301(n))`
-/

namespace A337919.P15269129572366901943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) (A004164 (A205301 n).toNat)

end

end A337919.P15269129572366901943

/-! ## A337919.P5352955496570276773

`A194969(∑[n]+1)%64`
-/

namespace A337919.P5352955496570276773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 64

end

end A337919.P5352955496570276773

/-! ## A337919.P12484327245467211687

`A195099(∑[n]+1)%64`
-/

namespace A337919.P12484327245467211687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195099 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 64

end

end A337919.P12484327245467211687

/-! ## A337919.P821960512365309666

`∑[n]%A079744(n)+1`
-/

namespace A337919.P821960512365309666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A079744 n) + 1

end

end A337919.P821960512365309666

/-! ## A337919.P15442324527018661104

`(∑[n]+1)%A107670(3*n+2)`
-/

namespace A337919.P15442324527018661104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A107670 (3 * n + 2))

end

end A337919.P15442324527018661104

/-!
# A337920: Numbers k such that d(k) = d(k+1), where d(k) = A058312(k) is the denominator of the k-th alternating harmonic number.

The programs for A337920, there is no canonical definition to state claims against.
-/

/-! ## A337920.P550460882590583654

`eq[n+2, A335023(n+1)]+1`
-/

namespace A337920.P550460882590583654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337920.P550460882590583654

/-! ## A337920.P4007009432547420889

`A020725(eq[n+2, A335023(n+1)])`
-/

namespace A337920.P4007009432547420889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337920.P4007009432547420889

/-! ## A337920.P18145038698633963007

`eq[Δ[A269626(n)], A095874(n+1)]`
-/

namespace A337920.P18145038698633963007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A337920.P18145038698633963007

/-! ## A337920.P11683205910329209607

`eq[ratio[A269626(n)], A020500(n+1)]`
-/

namespace A337920.P11683205910329209607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A337920.P11683205910329209607

/-! ## A337920.P16583139297339503071

`A065475(eq[0, Δ[A058312(n+1)]])`
-/

namespace A337920.P16583139297339503071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337920.P16583139297339503071

/-!
# A337921: a(n) is the sum of (3^n mod 2^k) for k such that 2^k < 3^n.

The programs for A337921, there is no canonical definition to state claims against.
-/

/-! ## A337921.P7224360979935517252

`A049802(3^(n+1))`
-/

namespace A337921.P7224360979935517252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (3 ^ (n + 1))

end

end A337921.P7224360979935517252

/-! ## A337921.P11752293579771537962

`record[A049802(3^ceil(abs((1-n)/2)))]`
-/

namespace A337921.P11752293579771537962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337921.P11752293579771537962

/-! ## A337921.P16863306202772979437

`record[Δ[A049802(A175840(n))]]`
-/

namespace A337921.P16863306202772979437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (A175840 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337921.P16863306202772979437

/-! ## A337921.P10519315892720737466

`A049802(A000244(n+1))*A287384(n)`
-/

namespace A337921.P10519315892720737466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (A000244 (n + 1)).toNat * A287384 n

end

end A337921.P10519315892720737466

/-!
# A337923: a(n) is the exponent of the highest power of 2 dividing the n-th Fibonacci number.

The programs for A337923, the canonical program `A337923.P10900891668975764083` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337923 has offset 1).

The definition of A337923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337923.P10900891668975764083

`A007814(A000045(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A337923

/-- `A007814(A000045(n+1))` -/
def P10900891668975764083.Spec : Prop :=
  ∀ n, P10900891668975764083.a n = A337923 (n + 1)

theorem P10900891668975764083.correct : P10900891668975764083.Spec := by
  intro n
  simp only [A337923, Nat.add_sub_cancel]

end A337923

/-! ## A337923.P2057353556042540848

`C(n, 2)%3*val(∑[∑[4*n]+2], 2)`
-/

namespace A337923.P2057353556042540848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 3 * SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A337923.P2057353556042540848

namespace A337923

/-- `C(n, 2)%3*val(∑[∑[4*n]+2], 2)` -/
def P2057353556042540848.Spec : Prop :=
  ∀ n, (P2057353556042540848.a n : ℤ) = A337923 (n + 1)

end A337923

/-! ## A337923.P15286234361642128109

`log2((n%3)!)*val(∑[∑[4*n]+2], 2)`
-/

namespace A337923.P15286234361642128109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial (n % 3) : ℝ) * (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℝ)

end

end A337923.P15286234361642128109

namespace A337923

/-- `log2((n%3)!)*val(∑[∑[4*n]+2], 2)` -/
def P15286234361642128109.Spec : Prop :=
  ∀ n, P15286234361642128109.a n = (A337923 (n + 1) : ℝ)

end A337923

/-! ## A337923.P4434777796671110873

`Δ[A385608(n)]`
-/

namespace A337923.P4434777796671110873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337923.P4434777796671110873

namespace A337923

/-- `Δ[A385608(n)]` -/
def P4434777796671110873.Spec : Prop :=
  ∀ n, P4434777796671110873.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P3708292564051430838

`log2(A060865(n+1))`
-/

namespace A337923.P3708292564051430838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060865 (n + 1) : ℝ)

end

end A337923.P3708292564051430838

namespace A337923

/-- `log2(A060865(n+1))` -/
def P3708292564051430838.Spec : Prop :=
  ∀ n, P3708292564051430838.a n = (A337923 (n + 1) : ℝ)

end A337923

/-! ## A337923.P11045085027686783500

`val(A081320(n+1), 2)`
-/

namespace A337923.P11045085027686783500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081320 (n + 1)).toNat 2

end

end A337923.P11045085027686783500

namespace A337923

/-- `val(A081320(n+1), 2)` -/
def P11045085027686783500.Spec : Prop :=
  ∀ n, (P11045085027686783500.a n : ℤ) = A337923 (n + 1)

end A337923

/-! ## A337923.P4884878568555276583

`val(A160108(n+1), 2)`
-/

namespace A337923.P4884878568555276583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160108 (n + 1)).toNat 2

end

end A337923.P4884878568555276583

namespace A337923

/-- `val(A160108(n+1), 2)` -/
def P4884878568555276583.Spec : Prop :=
  ∀ n, (P4884878568555276583.a n : ℤ) = A337923 (n + 1)

end A337923

/-! ## A337923.P144117835083062203

`val(A247193(n+1), 2)`
-/

namespace A337923.P144117835083062203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247193 (n + 1)).toNat 2

end

end A337923.P144117835083062203

namespace A337923

/-- `val(A247193(n+1), 2)` -/
def P144117835083062203.Spec : Prop :=
  ∀ n, (P144117835083062203.a n : ℤ) = A337923 (n + 1)

end A337923

/-! ## A337923.P6453489294445895777

`A007814(A114375(n)+1)`
-/

namespace A337923.P6453489294445895777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A114375 n + 1).toNat

end

end A337923.P6453489294445895777

namespace A337923

/-- `A007814(A114375(n)+1)` -/
def P6453489294445895777.Spec : Prop :=
  ∀ n, P6453489294445895777.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P16926160327574082608

`A000120(A060865(n+1)-1)`
-/

namespace A337923.P16926160327574082608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A060865 (n + 1) - 1).toNat

end

end A337923.P16926160327574082608

namespace A337923

/-- `A000120(A060865(n+1)-1)` -/
def P16926160327574082608.Spec : Prop :=
  ∀ n, P16926160327574082608.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P11309252145329870478

`A002487(A060865(n+1)-1)`
-/

namespace A337923.P11309252145329870478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A060865 (n + 1) - 1).toNat

end

end A337923.P11309252145329870478

namespace A337923

/-- `A002487(A060865(n+1)-1)` -/
def P11309252145329870478.Spec : Prop :=
  ∀ n, P11309252145329870478.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P10363358480541525459

`A001511(A114375(n)+1)-1`
-/

namespace A337923.P10363358480541525459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A114375 n + 1).toNat - 1

end

end A337923.P10363358480541525459

namespace A337923

/-- `A001511(A114375(n)+1)-1` -/
def P10363358480541525459.Spec : Prop :=
  ∀ n, P10363358480541525459.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P8318631100162898972

`A061338(A060865(n+1)-1)`
-/

namespace A337923.P8318631100162898972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (A060865 (n + 1) - 1).toNat

end

end A337923.P8318631100162898972

namespace A337923

/-- `A061338(A060865(n+1)-1)` -/
def P8318631100162898972.Spec : Prop :=
  ∀ n, P8318631100162898972.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P11418864963653071323

`A385608(n+1)-A385608(n)`
-/

namespace A337923.P11418864963653071323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385608 (n + 1) - A385608 n

end

end A337923.P11418864963653071323

namespace A337923

/-- `A385608(n+1)-A385608(n)` -/
def P11418864963653071323.Spec : Prop :=
  ∀ n, P11418864963653071323.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P10010422101575331283

`A090740(n+1)%A060865(n+1)`
-/

namespace A337923.P10010422101575331283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090740 (n + 1)) (A060865 (n + 1))

end

end A337923.P10010422101575331283

namespace A337923

/-- `A090740(n+1)%A060865(n+1)` -/
def P10010422101575331283.Spec : Prop :=
  ∀ n, P10010422101575331283.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P9274708709168442569

`lcm(A090740(n+1), A131531(n+1))`
-/

namespace A337923.P9274708709168442569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090740 (n + 1)) (A131531 (n + 1))

end

end A337923.P9274708709168442569

namespace A337923

/-- `lcm(A090740(n+1), A131531(n+1))` -/
def P9274708709168442569.Spec : Prop :=
  ∀ n, (P9274708709168442569.a n : ℤ) = A337923 (n + 1)

end A337923

/-! ## A337923.P13459501899658628906

`and(A047261(n+1), A090740(n+1))`
-/

namespace A337923.P13459501899658628906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047261 (n + 1)) (A090740 (n + 1))

end

end A337923.P13459501899658628906

namespace A337923

/-- `and(A047261(n+1), A090740(n+1))` -/
def P13459501899658628906.Spec : Prop :=
  ∀ n, P13459501899658628906.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P16271152722676312094

`∑{d}[A060865(n+1), A060865(#)]-1`
-/

namespace A337923.P16271152722676312094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A060865 d - 1

end

end A337923.P16271152722676312094

namespace A337923

/-- `∑{d}[A060865(n+1), A060865(#)]-1` -/
def P16271152722676312094.Spec : Prop :=
  ∀ n, P16271152722676312094.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P15339302230065168622

`∑{d}[n+1, A099395(#)*A138191((n+1)/#)]`
-/

namespace A337923.P15339302230065168622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099395 d * A138191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337923.P15339302230065168622

namespace A337923

/-- `∑{d}[n+1, A099395(#)*A138191((n+1)/#)]` -/
def P15339302230065168622.Spec : Prop :=
  ∀ n, P15339302230065168622.a n = A337923 (n + 1)

end A337923

/-! ## A337923.P14534111897610204162

`∑{d}[n+1, A090740(#)*A185012((n+1)/#-1)]`
-/

namespace A337923.P14534111897610204162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A090740 d * A185012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A337923.P14534111897610204162

namespace A337923

/-- `∑{d}[n+1, A090740(#)*A185012((n+1)/#-1)]` -/
def P14534111897610204162.Spec : Prop :=
  ∀ n, P14534111897610204162.a n = A337923 (n + 1)

end A337923

/-!
# A337924: Odd numbers, x, such that for all primes (p,q) such that x = p + 2q, x + 2p and x + 2q are composite.

The programs for A337924, there is no canonical definition to state claims against.
-/

/-! ## A337924.P14944092498407851942

`A308459(a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A337924.P14944092498407851942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A308459 (a (n - 2)).toNat

end

end A337924.P14944092498407851942

/-!
# A337925: Digits of n rearranged to be the smallest number with the fewest possible prime factors, counted with multiplicity. Terms retain the same number of digits as n, i.e. leading digits may not be zero.

The programs for A337925, there is no canonical definition to state claims against.
-/

/-! ## A337925.P4961614261707496928

`A321474(or(A071786(n+1), A077168(n)))`
-/

namespace A337925.P4961614261707496928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (Int.lor (A071786 (n + 1)) (A077168 n)).toNat

end

end A337925.P4961614261707496928

/-! ## A337925.P4852797216684920567

`A333659(or(A071786(n+1), A077168(n)))`
-/

namespace A337925.P4852797216684920567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (Int.lor (A071786 (n + 1)) (A077168 n)).toNat

end

end A337925.P4852797216684920567

/-! ## A337925.P5053895363775744508

`A321474(or(A077168(n), A341090(n+1)))`
-/

namespace A337925.P5053895363775744508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (Int.lor (A077168 n) (A341090 (n + 1))).toNat

end

end A337925.P5053895363775744508

/-! ## A337925.P9403721521439423764

`A333659(or(A077168(n), A341090(n+1)))`
-/

namespace A337925.P9403721521439423764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (Int.lor (A077168 n) (A341090 (n + 1))).toNat

end

end A337925.P9403721521439423764

/-!
# A337926: Number of ways to write n as the sum of two positive integers with different numbers of distinct prime factors.

The programs for A337926, there is no canonical definition to state claims against.
-/

/-! ## A337926.P18323131088374212457

`A110654(n)-A333701(n+1)`
-/

namespace A337926.P18323131088374212457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A333701 (n + 1)

end

end A337926.P18323131088374212457

/-! ## A337926.P8210750801537212717

`floor(n/2-A333708(n+1))`
-/

namespace A337926.P8210750801537212717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (A333708 (n + 1) : ℚ)⌋

end

end A337926.P8210750801537212717

/-! ## A337926.P6423883324599191008

`A004526(n)-A333708(n+1)`
-/

namespace A337926.P6423883324599191008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A333708 (n + 1)

end

end A337926.P6423883324599191008

/-! ## A337926.P17468506015398591382

`A319571(n²)-A333708(n+1)`
-/

namespace A337926.P17468506015398591382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (n ^ 2) - A333708 (n + 1)

end

end A337926.P17468506015398591382

/-! ## A337926.P2898190738968559063

`log2(A016116(n))-A333708(n+1)`
-/

namespace A337926.P2898190738968559063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A016116 n : ℝ) - (A333708 (n + 1) : ℝ)

end

end A337926.P2898190738968559063

/-! ## A337926.P9475942544867449809

`A008619(n)-(A333708(n+1)+1)`
-/

namespace A337926.P9475942544867449809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A333708 (n + 1) + 1)

end

end A337926.P9475942544867449809

/-! ## A337926.P11999572838925498163

`A002265(2*n)-A333708(n+1)`
-/

namespace A337926.P11999572838925498163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) - A333708 (n + 1)

end

end A337926.P11999572838925498163

/-! ## A337926.P6101412040483903307

`A000196(A002620(n))-A333708(n+1)`
-/

namespace A337926.P6101412040483903307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002620 n).toNat - A333708 (n + 1)

end

end A337926.P6101412040483903307

/-!
# A337927: a(n) = n / GCD (n, reverse of n).

The programs for A337927, there is no canonical definition to state claims against.
-/

/-! ## A337927.P7720199145168269320

`(n+1)/A055483(n+1)`
-/

namespace A337927.P7720199145168269320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055483 (n + 1) : ℚ)

end

end A337927.P7720199145168269320

/-! ## A337927.P5357124615232871108

`(n+1)/gcd(n+1, A004086(n+1))`
-/

namespace A337927.P5357124615232871108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A004086 (n + 1)) : ℚ)

end

end A337927.P5357124615232871108

/-! ## A337927.P3692943178638723133

`A068634(n+1)/A004086(n+1)`
-/

namespace A337927.P3692943178638723133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (n + 1) : ℚ) / (A004086 (n + 1) : ℚ)

end

end A337927.P3692943178638723133

/-! ## A337927.P9046430947844919936

`lcm(n+1, A056964(n+1))/A056964(n+1)`
-/

namespace A337927.P9046430947844919936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A056964 (n + 1)) : ℚ) / (A056964 (n + 1) : ℚ)

end

end A337927.P9046430947844919936

/-! ## A337927.P355128464446952604

`(n+1)*A055483(n+1)^A133574(A001316(n))`
-/

namespace A337927.P355128464446952604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A055483 (n + 1) : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A337927.P355128464446952604

/-! ## A337927.P11838344427292092355

`A367825(∑[n+1])`
-/

namespace A337927.P11838344427292092355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337927.P11838344427292092355

/-! ## A337927.P12381851038552209363

`A054531(A055483(n+1)+A000217(n))`
-/

namespace A337927.P12381851038552209363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A055483 (n + 1) + A000217 n).toNat

end

end A337927.P12381851038552209363

/-! ## A337927.P17911394664264648967

`A371034(A020338(n+1))`
-/

namespace A337927.P17911394664264648967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371034 (A020338 (n + 1)).toNat

end

end A337927.P17911394664264648967

/-!
# A337928: Numbers w such that (F(2n+1)^2, -F(2n)^2, -w) are primitive solutions of the Diophantine equation 2*x^3 + 2*y^3 + z^3 = 1, where F(n) is the n-th Fibonacci number (A000045).

The programs for A337928, the canonical program `A337928.P11158227494426758904` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337928 has offset 0).

The definition of A337928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337928.P11158227494426758904

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=31`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337928

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P11158227494426758904.Spec : Prop :=
  ∀ n, P11158227494426758904.a n = A337928 n

theorem P11158227494426758904.correct : P11158227494426758904.Spec := by
  intro n
  simp only [A337928]

end A337928

/-! ## A337928.P3420963905294786559

`2*A081018(n)+1`
-/

namespace A337928.P3420963905294786559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081018 n + 1

end

end A337928.P3420963905294786559

namespace A337928

/-- `2*A081018(n)+1` -/
def P3420963905294786559.Spec : Prop :=
  ∀ n, P3420963905294786559.a n = A337928 n

end A337928

/-! ## A337928.P17225636801150290915

`A064170(n+2)+A033888(n)`
-/

namespace A337928.P17225636801150290915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064170 (n + 2) + A033888 n

end

end A337928.P17225636801150290915

namespace A337928

/-- `A064170(n+2)+A033888(n)` -/
def P17225636801150290915.Spec : Prop :=
  ∀ n, P17225636801150290915.a n = A337928 n

end A337928

/-! ## A337928.P11570922026639571285

`record[2-round(ϕ²*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A337928.P11570922026639571285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 - SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337928.P11570922026639571285

namespace A337928

/-- `record[2-round(ϕ²*a(n-1))]` -/
def P11570922026639571285.Spec : Prop :=
  ∀ n, P11570922026639571285.a n = A337928 n

end A337928

/-! ## A337928.P16746631661493806657

`7*a(n-1)-(a(n-2)+3)` with `a(0)=1, a(1)=5`
-/

namespace A337928.P16746631661493806657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  7 * a (n - 1) - (a (n - 2) + 3)

end

end A337928.P16746631661493806657

namespace A337928

/-- `7*a(n-1)-(a(n-2)+3)` -/
def P16746631661493806657.Spec : Prop :=
  ∀ n, P16746631661493806657.a n = A337928 n

end A337928

/-! ## A337928.P9720863170160092639

`7*a(n-1)-3-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A337928.P9720863170160092639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  7 * a (n - 1) - 3 - a (n - 2)

end

end A337928.P9720863170160092639

namespace A337928

/-- `7*a(n-1)-3-a(n-2)` -/
def P9720863170160092639.Spec : Prop :=
  ∀ n, P9720863170160092639.a n = A337928 n

end A337928

/-! ## A337928.P15847580814256604960

`A110035(2*n)`
-/

namespace A337928.P15847580814256604960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 (2 * n)

end

end A337928.P15847580814256604960

namespace A337928

/-- `A110035(2*n)` -/
def P15847580814256604960.Spec : Prop :=
  ∀ n, P15847580814256604960.a n = A337928 n

end A337928

/-! ## A337928.P10169978265290303845

`A236428(2*n)`
-/

namespace A337928.P10169978265290303845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 (2 * n)

end

end A337928.P10169978265290303845

namespace A337928

/-- `A236428(2*n)` -/
def P10169978265290303845.Spec : Prop :=
  ∀ n, P10169978265290303845.a n = A337928 n

end A337928

/-! ## A337928.P7574746325374980905

`∑[A055819(2*n)]`
-/

namespace A337928.P7574746325374980905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055819 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337928.P7574746325374980905

namespace A337928

/-- `∑[A055819(2*n)]` -/
def P7574746325374980905.Spec : Prop :=
  ∀ n, P7574746325374980905.a n = A337928 n

end A337928

/-! ## A337928.P1568668847197119304

`∑[A006355(4*n)]`
-/

namespace A337928.P1568668847197119304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337928.P1568668847197119304

namespace A337928

/-- `∑[A006355(4*n)]` -/
def P1568668847197119304.Spec : Prop :=
  ∀ n, P1568668847197119304.a n = A337928 n

end A337928

/-! ## A337928.P785222052273395361

`A126116(4*n+1)`
-/

namespace A337928.P785222052273395361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (4 * n + 1)

end

end A337928.P785222052273395361

namespace A337928

/-- `A126116(4*n+1)` -/
def P785222052273395361.Spec : Prop :=
  ∀ n, P785222052273395361.a n = A337928 n

end A337928

/-! ## A337928.P12036585013946556689

`A295683(4*n+1)`
-/

namespace A337928.P12036585013946556689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 (4 * n + 1)

end

end A337928.P12036585013946556689

namespace A337928

/-- `A295683(4*n+1)` -/
def P12036585013946556689.Spec : Prop :=
  ∀ n, P12036585013946556689.a n = A337928 n

end A337928

/-! ## A337928.P1536950438907588929

`A079472(Δ[n²])+1`
-/

namespace A337928.P1536950438907588929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A337928.P1536950438907588929

namespace A337928

/-- `A079472(Δ[n²])+1` -/
def P1536950438907588929.Spec : Prop :=
  ∀ n, P1536950438907588929.a n = A337928 n

end A337928

/-! ## A337928.P13591882826620243051

`A192872(Δ[n²])+1`
-/

namespace A337928.P13591882826620243051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A337928.P13591882826620243051

namespace A337928

/-- `A192872(Δ[n²])+1` -/
def P13591882826620243051.Spec : Prop :=
  ∀ n, P13591882826620243051.a n = A337928 n

end A337928

/-! ## A337928.P3848404352497853884

`1-A110034(Δ[n²])`
-/

namespace A337928.P3848404352497853884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A110034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A337928.P3848404352497853884

namespace A337928

/-- `1-A110034(Δ[n²])` -/
def P3848404352497853884.Spec : Prop :=
  ∀ n, P3848404352497853884.a n = A337928 n

end A337928

/-! ## A337928.P6757187881911504003

`∑[A052995(2*n)]+1`
-/

namespace A337928.P6757187881911504003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052995 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A337928.P6757187881911504003

namespace A337928

/-- `∑[A052995(2*n)]+1` -/
def P6757187881911504003.Spec : Prop :=
  ∀ n, P6757187881911504003.a n = A337928 n

end A337928

/-! ## A337928.P2150803921759259182

`∑[2*A172968(n)]-1`
-/

namespace A337928.P2150803921759259182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A337928.P2150803921759259182

namespace A337928

/-- `∑[2*A172968(n)]-1` -/
def P2150803921759259182.Spec : Prop :=
  ∀ n, P2150803921759259182.a n = A337928 n

end A337928

/-! ## A337928.P1372674364056789834

`2*A206351(n+1)-1`
-/

namespace A337928.P1372674364056789834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206351 (n + 1) - 1

end

end A337928.P1372674364056789834

namespace A337928

/-- `2*A206351(n+1)-1` -/
def P1372674364056789834.Spec : Prop :=
  ∀ n, P1372674364056789834.a n = A337928 n

end A337928

/-! ## A337928.P13229391319642829932

`2*ceil(ϕ*A000045(2*n)²)+1`
-/

namespace A337928.P13229391319642829932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.goldenRatio * (A000045 (2 * n) ^ 2 : ℝ)⌉ + 1

end

end A337928.P13229391319642829932

namespace A337928

/-- `2*ceil(ϕ*A000045(2*n)²)+1` -/
def P13229391319642829932.Spec : Prop :=
  ∀ n, P13229391319642829932.a n = A337928 n

end A337928

/-!
# A337929: Numbers w such that (F(2*n-1)^2, -F(2*n)^2, w) are primitive solutions of the Diophantine equation 2*x^3 + 2*y^3 + z^3 = 1, where F(n) is the n-th Fibonacci number (A000045).

The programs for A337929, the canonical program `A337929.P5212933509807674459` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337929 has offset 1).

The definition of A337929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337929.P5212933509807674459

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=11, a(2)=79`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337929

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P5212933509807674459.Spec : Prop :=
  ∀ n, P5212933509807674459.a n = A337929 (n + 1)

theorem P5212933509807674459.correct : P5212933509807674459.Spec := by
  intro n
  simp only [A337929, Nat.add_sub_cancel]

end A337929

/-! ## A337929.P14318866232921559061

`2*A003482(n)+1`
-/

namespace A337929.P14318866232921559061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003482 n + 1

end

end A337929.P14318866232921559061

namespace A337929

/-- `2*A003482(n)+1` -/
def P14318866232921559061.Spec : Prop :=
  ∀ n, P14318866232921559061.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P10032641031316621204

`A033888(n+1)-A064170(n+3)`
-/

namespace A337929.P10032641031316621204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 (n + 1) - A064170 (n + 3)

end

end A337929.P10032641031316621204

namespace A337929

/-- `A033888(n+1)-A064170(n+3)` -/
def P10032641031316621204.Spec : Prop :=
  ∀ n, P10032641031316621204.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P18255415261828549394

`round(ϕ^4*a(n-1))+4` with `a(0)=1`
-/

namespace A337929.P18255415261828549394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)) + 4

end

end A337929.P18255415261828549394

namespace A337929

/-- `round(ϕ^4*a(n-1))+4` -/
def P18255415261828549394.Spec : Prop :=
  ∀ n, P18255415261828549394.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P10530852607857353996

`A236428(Δ[n²])`
-/

namespace A337929.P10530852607857353996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A337929.P10530852607857353996

namespace A337929

/-- `A236428(Δ[n²])` -/
def P10530852607857353996.Spec : Prop :=
  ∀ n, P10530852607857353996.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P9792135335112341236

`∑[A126358(2*n)]`
-/

namespace A337929.P9792135335112341236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126358 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337929.P9792135335112341236

namespace A337929

/-- `∑[A126358(2*n)]` -/
def P9792135335112341236.Spec : Prop :=
  ∀ n, P9792135335112341236.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P3770816403895047175

`A240836(n+1)-1`
-/

namespace A337929.P3770816403895047175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240836 (n + 1) - 1

end

end A337929.P3770816403895047175

namespace A337929

/-- `A240836(n+1)-1` -/
def P3770816403895047175.Spec : Prop :=
  ∀ n, P3770816403895047175.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P11770370369334846442

`2*A081016(n)-1`
-/

namespace A337929.P11770370369334846442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081016 n - 1

end

end A337929.P11770370369334846442

namespace A337929

/-- `2*A081016(n)-1` -/
def P11770370369334846442.Spec : Prop :=
  ∀ n, P11770370369334846442.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P4629933827117705761

`A121801(Δ[n²])+1`
-/

namespace A337929.P4629933827117705761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121801 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A337929.P4629933827117705761

namespace A337929

/-- `A121801(Δ[n²])+1` -/
def P4629933827117705761.Spec : Prop :=
  ∀ n, P4629933827117705761.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P15520016638520258197

`A110035(Δ[n²])-1`
-/

namespace A337929.P15520016638520258197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A337929.P15520016638520258197

namespace A337929

/-- `A110035(Δ[n²])-1` -/
def P15520016638520258197.Spec : Prop :=
  ∀ n, P15520016638520258197.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P6884256420452806985

`∑[2*A033889(n)]-1`
-/

namespace A337929.P6884256420452806985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A337929.P6884256420452806985

namespace A337929

/-- `∑[2*A033889(n)]-1` -/
def P6884256420452806985.Spec : Prop :=
  ∀ n, P6884256420452806985.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P6773998546753925712

`∑[A069403(2*n)]+n`
-/

namespace A337929.P6773998546753925712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069403 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A337929.P6773998546753925712

namespace A337929

/-- `∑[A069403(2*n)]+n` -/
def P6773998546753925712.Spec : Prop :=
  ∀ n, P6773998546753925712.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P2452622317167327187

`A079472(2*(n+1))-1`
-/

namespace A337929.P2452622317167327187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 (2 * (n + 1)) - 1

end

end A337929.P2452622317167327187

namespace A337929

/-- `A079472(2*(n+1))-1` -/
def P2452622317167327187.Spec : Prop :=
  ∀ n, P2452622317167327187.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P17655213442731090106

`A192872(2*(n+1))-2`
-/

namespace A337929.P17655213442731090106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192872 (2 * (n + 1)) - 2

end

end A337929.P17655213442731090106

namespace A337929

/-- `A192872(2*(n+1))-2` -/
def P17655213442731090106.Spec : Prop :=
  ∀ n, P17655213442731090106.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P4198944504138457793

`2*A166536(2*n)-1`
-/

namespace A337929.P4198944504138457793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166536 (2 * n) - 1

end

end A337929.P4198944504138457793

namespace A337929

/-- `2*A166536(2*n)-1` -/
def P4198944504138457793.Spec : Prop :=
  ∀ n, P4198944504138457793.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P8830263308789251976

`A126116(3*(n+1)+n)`
-/

namespace A337929.P8830263308789251976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (3 * (n + 1) + n)

end

end A337929.P8830263308789251976

namespace A337929

/-- `A126116(3*(n+1)+n)` -/
def P8830263308789251976.Spec : Prop :=
  ∀ n, P8830263308789251976.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P923631711569434059

`A295683(3*(n+1)+n)`
-/

namespace A337929.P923631711569434059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 (3 * (n + 1) + n)

end

end A337929.P923631711569434059

namespace A337929

/-- `A295683(3*(n+1)+n)` -/
def P923631711569434059.Spec : Prop :=
  ∀ n, P923631711569434059.a n = A337929 (n + 1)

end A337929

/-! ## A337929.P8586042464946470756

`A348592(3*n+n+1)`
-/

namespace A337929.P8586042464946470756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348592 (3 * n + (n + 1))

end

end A337929.P8586042464946470756

namespace A337929

/-- `A348592(3*n+n+1)` -/
def P8586042464946470756.Spec : Prop :=
  ∀ n, P8586042464946470756.a n = A337929 (n + 1)

end A337929

/-!
# A337930: Number of ways to write n as the sum of two positive integers s,t such that s <= t and phi(s) = phi(t) where phi is the Euler totient function (A000010).

The programs for A337930, there is no canonical definition to state claims against.
-/

/-! ## A337930.P2569876990228899962

`A362832(n+1)+n%2`
-/

namespace A337930.P2569876990228899962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362832 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A337930.P2569876990228899962

/-! ## A337930.P9561873577163070673

`ceil(n/2-A337931(n+1))`
-/

namespace A337930.P9561873577163070673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A337931 (n + 1) : ℚ)⌉

end

end A337930.P9561873577163070673

/-! ## A337930.P1282822632564192036

`A362832(n+1)+A000035(n)`
-/

namespace A337930.P1282822632564192036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362832 (n + 1) + A000035 n

end

end A337930.P1282822632564192036

/-! ## A337930.P17943751623080018364

`A110654(n)-A337931(n+1)`
-/

namespace A337930.P17943751623080018364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A337931 (n + 1)

end

end A337930.P17943751623080018364

/-! ## A337930.P8079844424959399602

`abs(A001057(n))-A337931(n+1)`
-/

namespace A337930.P8079844424959399602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A337931 (n + 1)

end

end A337930.P8079844424959399602

/-! ## A337930.P960801581937269311

`A362832(n+1)+Δ[A008619(n)]`
-/

namespace A337930.P960801581937269311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362832 (n + 1) + (f1 (n + 1) - f1 n)

end

end A337930.P960801581937269311

/-! ## A337930.P13996331514515601008

`n-(A337931(n+1)+A004526(n))`
-/

namespace A337930.P13996331514515601008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A337931 (n + 1) + A004526 n)

end

end A337930.P13996331514515601008

/-! ## A337930.P17515362810926472451

`A362832(n+1)+and(1, A152773(2*n))`
-/

namespace A337930.P17515362810926472451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362832 (n + 1) + Int.land 1 (A152773 (2 * n))

end

end A337930.P17515362810926472451

/-! ## A337930.P2037072806911679192

`A362832(n+1)+A038189(n²+5)`
-/

namespace A337930.P2037072806911679192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362832 (n + 1) + A038189 (n ^ 2 + 5)

end

end A337930.P2037072806911679192

/-!
# A337931: Number of ways to write n as the sum of two positive integers, s,t such that phi(s) is not equal to phi(t), where phi is the Euler totient function (A000010).

The programs for A337931, there is no canonical definition to state claims against.
-/

/-! ## A337931.P7081374411821241261

`floor(n/2)-A362832(n+1)`
-/

namespace A337931.P7081374411821241261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A362832 (n + 1)

end

end A337931.P7081374411821241261

/-! ## A337931.P689363033916627845

`ceil(n/2-A337930(n+1))`
-/

namespace A337931.P689363033916627845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A337930 (n + 1) : ℚ)⌉

end

end A337931.P689363033916627845

/-! ## A337931.P11207424289384107957

`A110654(n)-A337930(n+1)`
-/

namespace A337931.P11207424289384107957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A337930 (n + 1)

end

end A337931.P11207424289384107957

/-! ## A337931.P11048990406137825794

`abs(A001057(n))-A337930(n+1)`
-/

namespace A337931.P11048990406137825794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A337930 (n + 1)

end

end A337931.P11048990406137825794

/-! ## A337931.P4655025102850719377

`∑[A000035(n)]-A337930(n+1)`
-/

namespace A337931.P4655025102850719377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337930 (n + 1)

end

end A337931.P4655025102850719377

/-! ## A337931.P12093117125624409470

`Δ[A002620(n)]-A337930(n+1)`
-/

namespace A337931.P12093117125624409470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A337930 (n + 1)

end

end A337931.P12093117125624409470

/-! ## A337931.P17394356270886970006

`Δ[A033638(n)]-A337930(n+1)`
-/

namespace A337931.P17394356270886970006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A337930 (n + 1)

end

end A337931.P17394356270886970006

/-! ## A337931.P17606045637522932270

`A080513(n)-(A337930(n+1)+1)`
-/

namespace A337931.P17606045637522932270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - (A337930 (n + 1) + 1)

end

end A337931.P17606045637522932270

/-! ## A337931.P5251892149337346963

`n-(A337930(n+1)+A004526(n))`
-/

namespace A337931.P5251892149337346963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A337930 (n + 1) + A004526 n)

end

end A337931.P5251892149337346963

/-! ## A337931.P16517085029524322168

`∑[∑[A062157(n)]]-A337930(n+1)`
-/

namespace A337931.P16517085029524322168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337930 (n + 1)

end

end A337931.P16517085029524322168

/-!
# A337932: Number of ways to write n as the sum of two deficient numbers (A005100).

The programs for A337932, there is no canonical definition to state claims against.
-/

/-! ## A337932.P18290437952054349433

`A087003(A269848(n+3))+A033270(n+3)`
-/

namespace A337932.P18290437952054349433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A269848 (n + 3)).toNat + A033270 (n + 3)

end

end A337932.P18290437952054349433

/-! ## A337932.P1620132376250524760

`∑{e}[A004647(n), A252463(#)]`
-/

namespace A337932.P1620132376250524760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252463 (Nat.factorization (f1 n).natAbs p)

end

end A337932.P1620132376250524760

/-! ## A337932.P13960050610743544537

`∑{e}[A004647(n), A350350(#)]`
-/

namespace A337932.P13960050610743544537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A350350 (Nat.factorization (f1 n).natAbs p)

end

end A337932.P13960050610743544537

/-! ## A337932.P13303673910890841199

`A125173(A194714(n+1))`
-/

namespace A337932.P13303673910890841199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A194714 (n + 1)).toNat

end

end A337932.P13303673910890841199

/-!
# A337933: Numbers that are the sum of two abundant numbers in exactly one way.

The programs for A337933, there is no canonical definition to state claims against.
-/

/-! ## A337933.P16091585628920179834

`lt[A215990(A097798(n)), A282568(n)]`
-/

namespace A337933.P16091585628920179834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215990 (A097798 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337933.P16091585628920179834

/-! ## A337933.P5769458369874139765

`A064207(eq[3, A347550(n+1)])`
-/

namespace A337933.P5769458369874139765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337933.P5769458369874139765

/-! ## A337933.P13091597918540620541

`A064207(eq[3, A347550(n)]-1)`
-/

namespace A337933.P13091597918540620541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A337933.P13091597918540620541

/-!
# A337934: Sums of two distinct abundant numbers.

The programs for A337934, there is no canonical definition to state claims against.
-/

/-! ## A337934.P12869934333501583578

`lt[a(n-3)+1, A078898(n)]` with `a(0)=4, a(1)=8, a(2)=5`
-/

namespace A337934.P12869934333501583578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 8, 5] fun n f1 =>
  f1 (n - 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337934.P12869934333501583578

/-!
# A337935: Numbers with integer contraharmonic mean of distinct prime factors.

The programs for A337935, there is no canonical definition to state claims against.
-/

/-! ## A337935.P2038109170988288033

`∪[A121039(n+1), A246655(n+1)]`
-/

namespace A337935.P2038109170988288033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337935.P2038109170988288033

/-! ## A337935.P10898151566685078749

`∪[A000961(n+2), A277212(n+4)]`
-/

namespace A337935.P10898151566685078749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277212 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337935.P10898151566685078749

/-! ## A337935.P15369655175946409076

`∪[∑[A186076(n+1)], A246655(n+1)]`
-/

namespace A337935.P15369655175946409076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A337935.P15369655175946409076

/-! ## A337935.P4906888377385165953

`∪[∑[A253919(n+1)], A000961(n+2)]`
-/

namespace A337935.P4906888377385165953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A337935.P4906888377385165953

/-! ## A337935.P9031712861256623764

`∪[A246655(n+1), Δ[A006414(n+3)]]`
-/

namespace A337935.P9031712861256623764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337935.P9031712861256623764

/-! ## A337935.P18215966018003385417

`∪[A000961(n+2), ∑[A034844(n+5)]]`
-/

namespace A337935.P18215966018003385417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337935.P18215966018003385417

/-! ## A337935.P8914570675229614032

`∪[A158484(n+1)+1, A246655(n+1)]`
-/

namespace A337935.P8914570675229614032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158484 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337935.P8914570675229614032

/-! ## A337935.P3128558458702006660

`∪[A246655(n+1), A032594(n+1)-1]`
-/

namespace A337935.P3128558458702006660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032594 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337935.P3128558458702006660

/-! ## A337935.P6328436822044305144

`∪[A246655(n+1), A258618(n+3)+1]`
-/

namespace A337935.P6328436822044305144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258618 (n + 3) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337935.P6328436822044305144

/-! ## A337935.P2968514531745405971

`∪[C(A053679(n)+n, 2), A246655(n+1)]`
-/

namespace A337935.P2968514531745405971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053679 n + (n : ℤ)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337935.P2968514531745405971

/-!
# A337936: Irregular triangle read by rows: row n gives the complete system of tripling sequences modulo N = floor((3*n-1)/2), for n >= 1.

The programs for A337936, there is no canonical definition to state claims against.
-/

/-! ## A337936.P13253505523920364734

`A302037(A379642(n+1)-∑{d}[n, #%#²])`
-/

namespace A337936.P13253505523920364734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A379642 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 : ℕ) : ℤ)).toNat

end

end A337936.P13253505523920364734

/-! ## A337936.P5391314810629271371

`A334461(A050603(n)+A027441(n))`
-/

namespace A337936.P5391314810629271371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (A050603 n + A027441 n).toNat

end

end A337936.P5391314810629271371

/-! ## A337936.P16615572523236305117

`gcd(A021734(n), A165199(A108989(n+1)))`
-/

namespace A337936.P16615572523236305117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A021734 n) (A165199 (A108989 (n + 1)).toNat)

end

end A337936.P16615572523236305117

/-! ## A337936.P7515129368792946078

`A342511(C(A342463(n), A342459(n+2)))`
-/

namespace A337936.P7515129368792946078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342511 (Nat.choose (A342463 n).toNat (A342459 (n + 2)).toNat)

end

end A337936.P7515129368792946078

/-! ## A337936.P4167595713205868431

`A358525(A387137(n)+A066049(2*n+1))`
-/

namespace A337936.P4167595713205868431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358525 (A387137 n + A066049 (2 * n + 1)).toNat

end

end A337936.P4167595713205868431

/-!
# A337937: a(n) = Euler totient function phi = A000010 evaluated at N(n) = floor((3*n-1)/2) = A001651(n), for n >= 1.

The programs for A337937, the canonical program `A337937.P8302761239617674556` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337937 has offset 1).

The definition of A337937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337937.P8302761239617674556

`A000010(A001651(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A337937

/-- `A000010(A001651(n+1))` -/
def P8302761239617674556.Spec : Prop :=
  ∀ n, P8302761239617674556.a n = A337937 (n + 1)

theorem P8302761239617674556.correct : P8302761239617674556.Spec := by
  intro n
  simp only [A337937, Nat.add_sub_cancel]

end A337937

/-! ## A337937.P12908683053810688521

`A000010(comp[3*n])`
-/

namespace A337937.P12908683053810688521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A337937.P12908683053810688521

namespace A337937

/-- `A000010(comp[3*n])` -/
def P12908683053810688521.Spec : Prop :=
  ∀ n, P12908683053810688521.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P2613308037271938214

`A000010(round(or(1, 3*n)/2))%∑[7*n-2]`
-/

namespace A337937.P2613308037271938214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway ((Nat.lor 1 (3 * n) : ℚ) / 2)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337937.P2613308037271938214

namespace A337937

/-- `A000010(round(or(1, 3*n)/2))%∑[7*n-2]` -/
def P2613308037271938214.Spec : Prop :=
  ∀ n, P2613308037271938214.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P2591130988118223146

`A000010(record[(n+1)/3^val(n+1, 3)])%(2*n+3)`
-/

namespace A337937.P2591130988118223146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat) (2 * n + 3 : ℤ)

end

end A337937.P2591130988118223146

namespace A337937

/-- `A000010(record[(n+1)/3^val(n+1, 3)])%(2*n+3)` -/
def P2591130988118223146.Spec : Prop :=
  ∀ n, P2591130988118223146.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P1464019651370903143

`A000010(A016051(n+1))/2`
-/

namespace A337937.P1464019651370903143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A016051 (n + 1)).toNat : ℚ) / 2

end

end A337937.P1464019651370903143

namespace A337937

/-- `A000010(A016051(n+1))/2` -/
def P1464019651370903143.Spec : Prop :=
  ∀ n, P1464019651370903143.a n = (A337937 (n + 1) : ℚ)

end A337937

/-! ## A337937.P786605576668038049

`A000010(record[lcm(9, n+1)])/6`
-/

namespace A337937.P786605576668038049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 6

end

end A337937.P786605576668038049

namespace A337937

/-- `A000010(record[lcm(9, n+1)])/6` -/
def P786605576668038049.Spec : Prop :=
  ∀ n, P786605576668038049.a n = (A337937 (n + 1) : ℚ)

end A337937

/-! ## A337937.P8490915834701454344

`A195459(comp[3*n])`
-/

namespace A337937.P8490915834701454344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A337937.P8490915834701454344

namespace A337937

/-- `A195459(comp[3*n])` -/
def P8490915834701454344.Spec : Prop :=
  ∀ n, P8490915834701454344.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P9005249291396247944

`A349137(or(1, 3*n))`
-/

namespace A337937.P9005249291396247944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (Nat.lor 1 (3 * n))

end

end A337937.P9005249291396247944

namespace A337937

/-- `A349137(or(1, 3*n))` -/
def P9005249291396247944.Spec : Prop :=
  ∀ n, P9005249291396247944.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P9677058617716017730

`A109606(floor(n/2)+n+1)+1`
-/

namespace A337937.P9677058617716017730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat + 1

end

end A337937.P9677058617716017730

namespace A337937

/-- `A109606(floor(n/2)+n+1)+1` -/
def P9677058617716017730.Spec : Prop :=
  ∀ n, P9677058617716017730.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P11243306621350313521

`A000010(A250122(2*n+1))/2`
-/

namespace A337937.P11243306621350313521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A250122 (2 * n + 1)).toNat : ℚ) / 2

end

end A337937.P11243306621350313521

namespace A337937

/-- `A000010(A250122(2*n+1))/2` -/
def P11243306621350313521.Spec : Prop :=
  ∀ n, P11243306621350313521.a n = (A337937 (n + 1) : ℚ)

end A337937

/-! ## A337937.P5639285710553250045

`gcd(A000010(A006368(2*n+1)), A000038(n))`
-/

namespace A337937.P5639285710553250045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A006368 (2 * n + 1)).toNat) (A000038 n)

end

end A337937.P5639285710553250045

namespace A337937

/-- `gcd(A000010(A006368(2*n+1)), A000038(n))` -/
def P5639285710553250045.Spec : Prop :=
  ∀ n, (P5639285710553250045.a n : ℤ) = A337937 (n + 1)

end A337937

/-! ## A337937.P15337140196121530068

`A000038(n+4)+A000010(A006368(2*n+1))`
-/

namespace A337937.P15337140196121530068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 4) + A000010 (A006368 (2 * n + 1)).toNat

end

end A337937.P15337140196121530068

namespace A337937

/-- `A000038(n+4)+A000010(A006368(2*n+1))` -/
def P15337140196121530068.Spec : Prop :=
  ∀ n, P15337140196121530068.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P14834802394882330134

`A000010(A006368(2*n+1))*A157928(n+2)`
-/

namespace A337937.P14834802394882330134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006368 (2 * n + 1)).toNat * A157928 (n + 2)

end

end A337937.P14834802394882330134

namespace A337937

/-- `A000010(A006368(2*n+1))*A157928(n+2)` -/
def P14834802394882330134.Spec : Prop :=
  ∀ n, P14834802394882330134.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P1391525676786972826

`A000010(A006368(2*n+1))%A139859(n+1)`
-/

namespace A337937.P1391525676786972826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A006368 (2 * n + 1)).toNat) (A139859 (n + 1))

end

end A337937.P1391525676786972826

namespace A337937

/-- `A000010(A006368(2*n+1))%A139859(n+1)` -/
def P1391525676786972826.Spec : Prop :=
  ∀ n, P1391525676786972826.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P10565937801074833145

`A067541(A047241(n+1))`
-/

namespace A337937.P10565937801074833145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A047241 (n + 1)).toNat

end

end A337937.P10565937801074833145

namespace A337937

/-- `A067541(A047241(n+1))` -/
def P10565937801074833145.Spec : Prop :=
  ∀ n, P10565937801074833145.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P2331349673633983529

`A000010(A110654(3*n+1))%A020484(n)`
-/

namespace A337937.P2331349673633983529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A110654 (3 * n + 1)).toNat) (A020484 n)

end

end A337937.P2331349673633983529

namespace A337937

/-- `A000010(A110654(3*n+1))%A020484(n)` -/
def P2331349673633983529.Spec : Prop :=
  ∀ n, P2331349673633983529.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P12241267261277524433

`A023022(A016051(n+1))`
-/

namespace A337937.P12241267261277524433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A016051 (n + 1)).toNat

end

end A337937.P12241267261277524433

namespace A337937

/-- `A023022(A016051(n+1))` -/
def P12241267261277524433.Spec : Prop :=
  ∀ n, P12241267261277524433.a n = A337937 (n + 1)

end A337937

/-! ## A337937.P6330320958756236828

`A336757(A051063(n+1))`
-/

namespace A337937.P6330320958756236828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336757 (A051063 (n + 1)).toNat

end

end A337937.P6330320958756236828

namespace A337937

/-- `A336757(A051063(n+1))` -/
def P6330320958756236828.Spec : Prop :=
  ∀ n, P6330320958756236828.a n = A337937 (n + 1)

end A337937

/-!
# A337938: Irregular triangle read by rows: T(n, k) gives the primitive period of the sequence {k (Modd n)}_{k >= 0}, for n >= 1.

The programs for A337938, the canonical program `A337938.P14082378837235000955` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337938 has offset 1).

The definition of A337938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337938.P14082378837235000955

`abs(A038760(n+3)%(2^n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337938

/-- `abs(A038760(n+3)%(2^n))` -/
def P14082378837235000955.Spec : Prop :=
  ∀ n, P14082378837235000955.a n = A337938 (n + 1)

theorem P14082378837235000955.correct : P14082378837235000955.Spec := by
  intro n
  simp only [A337938, Nat.add_sub_cancel]

end A337938

/-! ## A337938.P7320599883966610013

`abs(A038760(n+3))%A001177(n+1)`
-/

namespace A337938.P7320599883966610013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A038760 (n + 3)| (A001177 (n + 1))

end

end A337938.P7320599883966610013

namespace A337938

/-- `abs(A038760(n+3))%A001177(n+1)` -/
def P7320599883966610013.Spec : Prop :=
  ∀ n, P7320599883966610013.a n = A337938 (n + 1)

end A337938

/-! ## A337938.P12572744113078375415

`A000120(A308969(2*(n+1)))%A070081(n+1)`
-/

namespace A337938.P12572744113078375415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A308969 (2 * (n + 1))).toNat) (A070081 (n + 1))

end

end A337938.P12572744113078375415

namespace A337938

/-- `A000120(A308969(2*(n+1)))%A070081(n+1)` -/
def P12572744113078375415.Spec : Prop :=
  ∀ n, P12572744113078375415.a n = A337938 (n + 1)

end A337938

/-!
# A337939: Irregular triangle T(n, m) read by rows: row n gives the distinct length ratios diagonal/side of regular n-gons, DSR(n, k), for n >= 2, k = 1, 2, ..., floor(n/2), expressed by the coefficients in the power basis of the Galois group Gal(Q(rho(n))/Q), where rho(n) = 2*cos(Pi/n), for n >= 2. T(1, 1) is set to 1.

The programs for A337939, there is no canonical definition to state claims against.
-/

/-! ## A337939.P11937683145646507246

`A336569(A132018(n+1))-A297237(A263333(n+1))`
-/

namespace A337939.P11937683145646507246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336569 (A132018 (n + 1)).toNat - A297237 (A263333 (n + 1)).toNat

end

end A337939.P11937683145646507246

/-! ## A337939.P13883560555186548373

`A143262(A105604(n+2))`
-/

namespace A337939.P13883560555186548373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143262 (A105604 (n + 2)).toNat

end

end A337939.P13883560555186548373

/-! ## A337939.P12825006563894175751

`A250211(A345312(n+2))`
-/

namespace A337939.P12825006563894175751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250211 (A345312 (n + 2)).toNat

end

end A337939.P12825006563894175751

/-! ## A337939.P4395666089142329025

`A389627(A389088(n+2))`
-/

namespace A337939.P4395666089142329025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389627 (A389088 (n + 2)).toNat

end

end A337939.P4395666089142329025

/-! ## A337939.P15701787194364268854

`A389627(A246278(n+3))`
-/

namespace A337939.P15701787194364268854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389627 (A246278 (n + 3)).toNat

end

end A337939.P15701787194364268854

/-!
# A337940: Triangle read by rows: T(n, k) = T(n+2) - T(n-k), with the triangular numbers T = A000217, for n >= 1, k = 1, 2, ..., n.

The programs for A337940, there is no canonical definition to state claims against.
-/

/-! ## A337940.P11226657063697232599

`A049777((n-comp[∑[n]])²-n)`
-/

namespace A337940.P11226657063697232599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A337940.P11226657063697232599

/-! ## A337940.P5752302415599183514

`A087401(lt[1, A362043(n)])`
-/

namespace A337940.P5752302415599183514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337940.P5752302415599183514

/-! ## A337940.P4297440160977738176

`A141418(lt[2, A002262(n)])`
-/

namespace A337940.P4297440160977738176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337940.P4297440160977738176

/-! ## A337940.P8844246955565025148

`A141418(lt[2, A166692(n)])`
-/

namespace A337940.P8844246955565025148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337940.P8844246955565025148

/-! ## A337940.P16538062051523528704

`A141418(lt[2, A180662(n)])`
-/

namespace A337940.P16538062051523528704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337940.P16538062051523528704

/-! ## A337940.P14720313945035962056

`A141418(lt[4, A059268(n)])`
-/

namespace A337940.P14720313945035962056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337940.P14720313945035962056

/-! ## A337940.P4449787847007039656

`A347205(4*A018900(n+1))`
-/

namespace A337940.P4449787847007039656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (4 * A018900 (n + 1)).toNat

end

end A337940.P4449787847007039656

/-! ## A337940.P1311125234356678581

`A141419(eq[0, A103451(n)]+2)`
-/

namespace A337940.P1311125234356678581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A337940.P1311125234356678581

/-! ## A337940.P9325312183294732704

`A141419(eq[0, A103452(n)]+2)`
-/

namespace A337940.P9325312183294732704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A337940.P9325312183294732704

/-! ## A337940.P6506026175927995579

`A141419(eq[0, A145677(n)]+2)`
-/

namespace A337940.P6506026175927995579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A337940.P6506026175927995579

/-!
# A337942: Table read by antidiagonals: T(n, k) is the least positive m such that (m*n) mod k = (m*k) mod n, with n > 0 and k > 0.

The programs for A337942, there is no canonical definition to state claims against.
-/

/-! ## A337942.P7589934355174372914

`and(A164290(A022169(n)), A341458(n+1))`
-/

namespace A337942.P7589934355174372914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164290 (A022169 n).toNat) (A341458 (n + 1))

end

end A337942.P7589934355174372914

/-! ## A337942.P8107546952684165309

`A333768(A059474(n))`
-/

namespace A337942.P8107546952684165309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A059474 n).toNat

end

end A337942.P8107546952684165309

/-! ## A337942.P6766329210041013713

`A255829(A059897(n+1)*A157274(n))`
-/

namespace A337942.P6766329210041013713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255829 (A059897 (n + 1) * A157274 n).toNat

end

end A337942.P6766329210041013713

/-! ## A337942.P1521331369276371873

`A089913(n+1)-A091225(A257630(n+1))`
-/

namespace A337942.P1521331369276371873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089913 (n + 1) - A091225 (A257630 (n + 1)).toNat

end

end A337942.P1521331369276371873

/-! ## A337942.P17277980043371348795

`A341458(n+1)%A340600(A007947(2*n+5))`
-/

namespace A337942.P17277980043371348795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341458 (n + 1)) (A340600 (A007947 (2 * n + 5)).toNat)

end

end A337942.P17277980043371348795

/-!
# A337945: Numbers m with a solution (s,t,k) such that s^2 + t^2 = k*m, s + t = m, 1 <= s <= t and 1 <= k <= m - 1.

The programs for A337945, there is no canonical definition to state claims against.
-/

/-! ## A337945.P8669177387190809197

`lt[1, ∏{e}[2*n, #]]`
-/

namespace A337945.P8669177387190809197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337945.P8669177387190809197

/-! ## A337945.P12972682385002444643

`lt[0, ∑{e}[2*n, #-1]]`
-/

namespace A337945.P12972682385002444643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337945.P12972682385002444643

/-! ## A337945.P8055905052121126317

`lt[∏{p}[2*n, #], n+1]`
-/

namespace A337945.P8055905052121126317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A337945.P8055905052121126317

/-! ## A337945.P1791876497976893489

`lt[∏{p}[2*n, #]-1, n]`
-/

namespace A337945.P1791876497976893489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A337945.P1791876497976893489

/-! ## A337945.P11398922255371682368

`lt[∏{p}[2*n, #]/2, n]`
-/

namespace A337945.P11398922255371682368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A337945.P11398922255371682368

/-! ## A337945.P13907239970409269794

`lt[ϕ*∏{p}[2*n, #], 2*n]`
-/

namespace A337945.P13907239970409269794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A337945.P13907239970409269794

/-! ## A337945.P10568372742134312853

`lt[-2*n, -∏{p}[2*n, #]]`
-/

namespace A337945.P10568372742134312853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337945.P10568372742134312853

/-! ## A337945.P2112773176149616638

`lt[∏{p}[2*n, #]², (2*n)²]`
-/

namespace A337945.P2112773176149616638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A337945.P2112773176149616638

/-! ## A337945.P802788883686242484

`comp[C(∏{p}[2*n+1, #], 2*n)]`
-/

namespace A337945.P802788883686242484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A337945.P802788883686242484

/-!
# A337946: a(1)=1; thereafter, a(n) is the smallest number such that the addition and multiplication tables for (a(1),...,a(n)) together contain n*(n+1) different entries (the maximum possible).

The programs for A337946, there is no canonical definition to state claims against.
-/

/-! ## A337946.P13096304824011807637

`A337975(∑[n+1])`
-/

namespace A337946.P13096304824011807637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337946.P13096304824011807637

/-! ## A337946.P8776010232805518157

`A337974(∑[n]+1)`
-/

namespace A337946.P8776010232805518157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A337946.P8776010232805518157

/-! ## A337946.P14329257372080402513

`A337973(∑[n+1])-1`
-/

namespace A337946.P14329257372080402513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337973 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A337946.P14329257372080402513

/-! ## A337946.P8507656079807024905

`A337972(∑[n]+1)-1`
-/

namespace A337946.P8507656079807024905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337972 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A337946.P8507656079807024905

/-! ## A337946.P10183318783592417226

`A337972(∑[n+1])/2`
-/

namespace A337946.P10183318783592417226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337972 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A337946.P10183318783592417226

/-! ## A337946.P16322469011271077765

`record[A337973(n+1)-1]`
-/

namespace A337946.P16322469011271077765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337973 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337946.P16322469011271077765

/-! ## A337946.P3726971837612308059

`record[A337975(n+1)%A337973(n+1)]`
-/

namespace A337946.P3726971837612308059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337975 (n + 1)) (A337973 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337946.P3726971837612308059

/-!
# A337948: L.g.f.: -log( Sum_{n=-oo..+oo} (-p)^n * (p*x)^(n^2) ) = Sum_{n>=1} a(n) * x^n/n, where p = sqrt(2).

The programs for A337948, there is no canonical definition to state claims against.
-/

/-! ## A337948.P2959013557746169120

`A192484(n)+A096667(A061802(n))`
-/

namespace A337948.P2959013557746169120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192484 n + A096667 (A061802 n).toNat

end

end A337948.P2959013557746169120

/-!
# A337949: a(n) = 2^(n*(n-1)/2) + 2^(n*(n+1)/2) for n > 0, with a(0) = 1.

The programs for A337949, there is no canonical definition to state claims against.
-/

/-! ## A337949.P8605626156363173591

`or(1, 2^n)*∏[ceil(2^(n-1))]`
-/

namespace A337949.P8605626156363173591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A337949.P8605626156363173591

/-! ## A337949.P2996026542351273373

`lcm(or(1, 2^n), ∏[ceil(2^(n-1))])`
-/

namespace A337949.P2996026542351273373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lor 1 (2 ^ n) : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A337949.P2996026542351273373

/-! ## A337949.P16552182823153109983

`or(2^C(n, 2), ∏[2*a(n-1)])` with `a(0)=1`
-/

namespace A337949.P16552182823153109983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ Nat.choose n 2) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A337949.P16552182823153109983

/-! ## A337949.P18218270346883602270

`or(2^(∑[n]-n), ∏[2*a(n-1)])` with `a(0)=1`
-/

namespace A337949.P18218270346883602270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ))) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A337949.P18218270346883602270

/-! ## A337949.P2611062658128447674

`or(∏[2^n], A006125(n))`
-/

namespace A337949.P2611062658128447674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006125 n)

end

end A337949.P2611062658128447674

/-!
# A337951: a(n) = 4^(n*(n-1)/2) + 4^(n*(n+1)/2) for n > 0, with a(0) = 1.

The programs for A337951, there is no canonical definition to state claims against.
-/

/-! ## A337951.P6383824978019547726

`or(4^C(n, 2), ∏[A000302(n)])`
-/

namespace A337951.P6383824978019547726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ Nat.choose n 2 : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A337951.P6383824978019547726

/-! ## A337951.P13867261297500679123

`or(4^C(n, 2), A053763(n+1))`
-/

namespace A337951.P13867261297500679123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ Nat.choose n 2 : ℤ) (A053763 (n + 1))

end

end A337951.P13867261297500679123

/-! ## A337951.P12735143252778589821

`2^(n²-n)*A092896(n+1)`
-/

namespace A337951.P12735143252778589821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ) * (A092896 (n + 1) : ℚ)

end

end A337951.P12735143252778589821

/-! ## A337951.P7227930683727202173

`or(∏[A000302(n)], A053763(n))`
-/

namespace A337951.P7227930683727202173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ j ∈ Finset.range (n + 1), f1 j) (A053763 n)

end

end A337951.P7227930683727202173

/-! ## A337951.P4658458615193352889

`or(record[A173008(n)], A053763(n))`
-/

namespace A337951.P4658458615193352889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A053763 n)

end

end A337951.P4658458615193352889

/-!
# A337952: Number of oriented colorings of the 16 tetrahedral facets of a hyperoctahedron or of the 16 vertices of a tesseract.

The programs for A337952, the canonical program `A337952.P2656668591242931786` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337952 has offset 1).

The definition of A337952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337952.P2656668591242931786

`(n+1)²*((n+1)^14+12*(n+1)^8+63*(n+1)^6+68*(n+1)²+48)/192`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337952

/-- `(n+1)²*((n+1)^14+12*(n+1)^8+63*(n+1)^6+68*(n+1)²+48)/192` -/
def P2656668591242931786.Spec : Prop :=
  ∀ n, P2656668591242931786.a n = (A337952 (n + 1) : ℚ)

end A337952

/-! ## A337952.P13097998048635406437

`A128767(n+1)+A337954(n+1)`
-/

namespace A337952.P13097998048635406437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128767 (n + 1) + A337954 (n + 1)

end

end A337952.P13097998048635406437

namespace A337952

/-- `A128767(n+1)+A337954(n+1)` -/
def P13097998048635406437.Spec : Prop :=
  ∀ n, P13097998048635406437.a n = A337952 (n + 1)

end A337952

/-! ## A337952.P15908603572394998415

`2*A337954(n+1)+A337955(n+1)`
-/

namespace A337952.P15908603572394998415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337954 (n + 1) + A337955 (n + 1)

end

end A337952.P15908603572394998415

namespace A337952

/-- `2*A337954(n+1)+A337955(n+1)` -/
def P15908603572394998415.Spec : Prop :=
  ∀ n, P15908603572394998415.a n = A337952 (n + 1)

end A337952

/-! ## A337952.P5533967307177506468

`2*A128767(n+1)-A337955(n+1)`
-/

namespace A337952.P5533967307177506468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128767 (n + 1) - A337955 (n + 1)

end

end A337952.P5533967307177506468

namespace A337952

/-- `2*A128767(n+1)-A337955(n+1)` -/
def P5533967307177506468.Spec : Prop :=
  ∀ n, P5533967307177506468.a n = A337952 (n + 1)

end A337952

/-! ## A337952.P7719084756412232103

`A337954(n+1)+A128767(A077168(n))`
-/

namespace A337952.P7719084756412232103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337954 (n + 1) + A128767 (A077168 n).toNat

end

end A337952.P7719084756412232103

namespace A337952

/-- `A337954(n+1)+A128767(A077168(n))` -/
def P7719084756412232103.Spec : Prop :=
  ∀ n, P7719084756412232103.a n = A337952 (n + 1)

end A337952

/-!
# A337953: Number of achiral colorings of the 30 edges of a regular dodecahedron or icosahedron using n or fewer colors.

The programs for A337953, the canonical program `A337953.P2552747621931778234` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337953 has offset 1).

The definition of A337953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337953.P2552747621931778234

`(n+1)^3*(15*(n+1)^14+(n+1)^12+20*(n+1)²+24)/60`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337953

/-- `(n+1)^3*(15*(n+1)^14+(n+1)^12+20*(n+1)²+24)/60` -/
def P2552747621931778234.Spec : Prop :=
  ∀ n, P2552747621931778234.a n = (A337953 (n + 1) : ℚ)

end A337953

/-!
# A337954: Number of chiral pairs of colorings of the 16 tetrahedral facets of a hyperoctahedron or of the 16 vertices of a tesseract.

The programs for A337954, the canonical program `A337954.P3236094688740596925` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337954 has offset 1).

The definition of A337954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337954.P3236094688740596925

`A128767(n+1)-A337955(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337954

/-- `A128767(n+1)-A337955(n+1)` -/
def P3236094688740596925.Spec : Prop :=
  ∀ n, P3236094688740596925.a n = A337954 (n + 1)

theorem P3236094688740596925.correct : P3236094688740596925.Spec := by
  intro n
  simp only [A337954, Nat.add_sub_cancel]

end A337954

/-! ## A337954.P13573616993702150564

`A337952(n+1)-A128767(n+1)`
-/

namespace A337954.P13573616993702150564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337952 (n + 1) - A128767 (n + 1)

end

end A337954.P13573616993702150564

namespace A337954

/-- `A337952(n+1)-A128767(n+1)` -/
def P13573616993702150564.Spec : Prop :=
  ∀ n, P13573616993702150564.a n = A337954 (n + 1)

end A337954

/-! ## A337954.P13020365688381613445

`(A337952(n+1)-A337955(n+1))/2`
-/

namespace A337954.P13020365688381613445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337952 (n + 1) - A337955 (n + 1) : ℚ) / 2

end

end A337954.P13020365688381613445

namespace A337954

/-- `(A337952(n+1)-A337955(n+1))/2` -/
def P13020365688381613445.Spec : Prop :=
  ∀ n, P13020365688381613445.a n = (A337954 (n + 1) : ℚ)

end A337954

/-! ## A337954.P12950860144922074975

`A337952(A000027(n+1))%A128767(n+1)`
-/

namespace A337954.P12950860144922074975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337952 (A000027 (n + 1)).toNat) (A128767 (n + 1))

end

end A337954.P12950860144922074975

namespace A337954

/-- `A337952(A000027(n+1))%A128767(n+1)` -/
def P12950860144922074975.Spec : Prop :=
  ∀ n, P12950860144922074975.a n = A337954 (n + 1)

end A337954

/-! ## A337954.P1720452852639574171

`(A337952(n+1)%A128767(n+1))%A338951(n+1)`
-/

namespace A337954.P1720452852639574171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A337952 (n + 1)) (A128767 (n + 1))) (A338951 (n + 1))

end

end A337954.P1720452852639574171

namespace A337954

/-- `(A337952(n+1)%A128767(n+1))%A338951(n+1)` -/
def P1720452852639574171.Spec : Prop :=
  ∀ n, P1720452852639574171.a n = A337954 (n + 1)

end A337954

/-!
# A337955: Number of achiral colorings of the 16 tetrahedral facets of a hyperoctahedron or of the 16 vertices of a tesseract.

The programs for A337955, the canonical program `A337955.P4046798399948475638` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337955 has offset 1).

The definition of A337955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337955.P4046798399948475638

`(n+1)^4*(3*(n+1)^8+5*(n+1)^4+12*(n+1)²+28)/48`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337955

/-- `(n+1)^4*(3*(n+1)^8+5*(n+1)^4+12*(n+1)²+28)/48` -/
def P4046798399948475638.Spec : Prop :=
  ∀ n, P4046798399948475638.a n = (A337955 (n + 1) : ℚ)

end A337955

/-! ## A337955.P14142888439848256892

`A128767(n+1)-A337954(n+1)`
-/

namespace A337955.P14142888439848256892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128767 (n + 1) - A337954 (n + 1)

end

end A337955.P14142888439848256892

namespace A337955

/-- `A128767(n+1)-A337954(n+1)` -/
def P14142888439848256892.Spec : Prop :=
  ∀ n, P14142888439848256892.a n = A337955 (n + 1)

end A337955

/-! ## A337955.P918526108741783217

`2*A128767(n+1)-A337952(n+1)`
-/

namespace A337955.P918526108741783217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128767 (n + 1) - A337952 (n + 1)

end

end A337955.P918526108741783217

namespace A337955

/-- `2*A128767(n+1)-A337952(n+1)` -/
def P918526108741783217.Spec : Prop :=
  ∀ n, P918526108741783217.a n = A337955 (n + 1)

end A337955

/-! ## A337955.P8356488403455815842

`A337952(n+1)-2*A337954(n+1)`
-/

namespace A337955.P8356488403455815842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337952 (n + 1) - 2 * A337954 (n + 1)

end

end A337955.P8356488403455815842

namespace A337955

/-- `A337952(n+1)-2*A337954(n+1)` -/
def P8356488403455815842.Spec : Prop :=
  ∀ n, P8356488403455815842.a n = A337955 (n + 1)

end A337955

/-! ## A337955.P16831610280127826848

`A128767(n+1)-(A337952(n+1)%A128767(n+1))%A338951(n+1)`
-/

namespace A337955.P16831610280127826848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128767 (n + 1) - Int.tmod (Int.tmod (A337952 (n + 1)) (A128767 (n + 1))) (A338951 (n + 1))

end

end A337955.P16831610280127826848

namespace A337955

/-- `A128767(n+1)-(A337952(n+1)%A128767(n+1))%A338951(n+1)` -/
def P16831610280127826848.Spec : Prop :=
  ∀ n, P16831610280127826848.a n = A337955 (n + 1)

end A337955

/-!
# A337956: Number of oriented colorings of the 8 cubic facets of a tesseract or of the 8 vertices of a hyperoctahedron.

The programs for A337956, the canonical program `A337956.P8025992555973306915` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337956 has offset 1).

The definition of A337956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337956.P8025992555973306915

`2*A337957(n+1)-A337958(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337956

/-- `2*A337957(n+1)-A337958(n+1)` -/
def P8025992555973306915.Spec : Prop :=
  ∀ n, P8025992555973306915.a n = A337956 (n + 1)

theorem P8025992555973306915.correct : P8025992555973306915.Spec := by
  intro n
  simp only [A337956, Nat.add_sub_cancel]

end A337956

/-! ## A337956.P5666015108825532626

`C(∑[n+1]+3, 4)+C(∑[n], 4)`
-/

namespace A337956.P5666015108825532626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 3) 4 + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 4

end

end A337956.P5666015108825532626

namespace A337956

/-- `C(∑[n+1]+3, 4)+C(∑[n], 4)` -/
def P5666015108825532626.Spec : Prop :=
  ∀ n, (P5666015108825532626.a n : ℤ) = A337956 (n + 1)

end A337956

/-! ## A337956.P3197324517269828948

`A337957(n+1)+C(∑[n], 4)`
-/

namespace A337956.P3197324517269828948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337957 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 4 : ℤ)

end

end A337956.P3197324517269828948

namespace A337956

/-- `A337957(n+1)+C(∑[n], 4)` -/
def P3197324517269828948.Spec : Prop :=
  ∀ n, P3197324517269828948.a n = A337956 (n + 1)

end A337956

/-! ## A337956.P11456979545028908463

`2*A337957(n+1)-(A000124(n)+n)*(A256859(n+1)-A000292(n))`
-/

namespace A337956.P11456979545028908463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337957 (n + 1) - (A000124 n + (n : ℤ)) * (A256859 (n + 1) - A000292 n)

end

end A337956.P11456979545028908463

namespace A337956

/-- `2*A337957(n+1)-(A000124(n)+n)*(A256859(n+1)-A000292(n))` -/
def P11456979545028908463.Spec : Prop :=
  ∀ n, P11456979545028908463.a n = A337956 (n + 1)

end A337956

/-! ## A337956.P8643624114205517512

`A000332(∑[n])+C(∑[n+1]+3, 4)`
-/

namespace A337956.P8643624114205517512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 3) 4 : ℤ)

end

end A337956.P8643624114205517512

namespace A337956

/-- `A000332(∑[n])+C(∑[n+1]+3, 4)` -/
def P8643624114205517512.Spec : Prop :=
  ∀ n, P8643624114205517512.a n = A337956 (n + 1)

end A337956

/-! ## A337956.P9727138590731551001

`A337957(n+1)+A000332(∑[n])`
-/

namespace A337956.P9727138590731551001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337957 (n + 1) + A000332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337956.P9727138590731551001

namespace A337956

/-- `A337957(n+1)+A000332(∑[n])` -/
def P9727138590731551001.Spec : Prop :=
  ∀ n, P9727138590731551001.a n = A337956 (n + 1)

end A337956

/-! ## A337956.P13315214355516026232

`A337958(n+1)+A034827(∑[n])`
-/

namespace A337956.P13315214355516026232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337958 (n + 1) + A034827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337956.P13315214355516026232

namespace A337956

/-- `A337958(n+1)+A034827(∑[n])` -/
def P13315214355516026232.Spec : Prop :=
  ∀ n, P13315214355516026232.a n = A337956 (n + 1)

end A337956

/-! ## A337956.P14867424444804173793

`A000332(A000217(n))+A145126(∑[n+1])-1`
-/

namespace A337956.P14867424444804173793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A000217 n).toNat + (A145126 (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A337956.P14867424444804173793

namespace A337956

/-- `A000332(A000217(n))+A145126(∑[n+1])-1` -/
def P14867424444804173793.Spec : Prop :=
  ∀ n, P14867424444804173793.a n = A337956 (n + 1)

end A337956

/-! ## A337956.P4334042801877535671

`A000332(A000217(n))+A033488(∑[n+1])/4`
-/

namespace A337956.P4334042801877535671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (A000217 n).toNat : ℚ) + (A033488 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A337956.P4334042801877535671

namespace A337956

/-- `A000332(A000217(n))+A033488(∑[n+1])/4` -/
def P4334042801877535671.Spec : Prop :=
  ∀ n, P4334042801877535671.a n = (A337956 (n + 1) : ℚ)

end A337956

/-! ## A337956.P1153528140857001078

`A000332(A000217(n))+A033487(∑[n+1])/6`
-/

namespace A337956.P1153528140857001078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (A000217 n).toNat : ℚ) + (A033487 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6

end

end A337956.P1153528140857001078

namespace A337956

/-- `A000332(A000217(n))+A033487(∑[n+1])/6` -/
def P1153528140857001078.Spec : Prop :=
  ∀ n, P1153528140857001078.a n = (A337956 (n + 1) : ℚ)

end A337956

/-! ## A337956.P10386566183113162006

`A000332(A179865(n+1))+A145126(∑[n+1])-1`
-/

namespace A337956.P10386566183113162006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A179865 (n + 1)).toNat + (A145126 (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A337956.P10386566183113162006

namespace A337956

/-- `A000332(A179865(n+1))+A145126(∑[n+1])-1` -/
def P10386566183113162006.Spec : Prop :=
  ∀ n, P10386566183113162006.a n = A337956 (n + 1)

end A337956

/-! ## A337956.P16771222980598830882

`A000332(A179865(n+1))+A033488(∑[n+1])/4`
-/

namespace A337956.P16771222980598830882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (A179865 (n + 1)).toNat : ℚ) + (A033488 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A337956.P16771222980598830882

namespace A337956

/-- `A000332(A179865(n+1))+A033488(∑[n+1])/4` -/
def P16771222980598830882.Spec : Prop :=
  ∀ n, P16771222980598830882.a n = (A337956 (n + 1) : ℚ)

end A337956

/-! ## A337956.P16273889095445239188

`A000332(A179865(n+1))+A033487(∑[n+1])/6`
-/

namespace A337956.P16273889095445239188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (A179865 (n + 1)).toNat : ℚ) + (A033487 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6

end

end A337956.P16273889095445239188

namespace A337956

/-- `A000332(A179865(n+1))+A033487(∑[n+1])/6` -/
def P16273889095445239188.Spec : Prop :=
  ∀ n, P16273889095445239188.a n = (A337956 (n + 1) : ℚ)

end A337956

/-!
# A337957: Number of unoriented colorings of the 8 cubic facets of a tesseract or of the 8 vertices of a hyperoctahedron.

The programs for A337957, the canonical program `A337957.P86526632370406334` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337957 has offset 1).

The definition of A337957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337957.P86526632370406334

`(n+1)*(n+2)*((n+1)²+n+3)*((n+1)²+n+5)*((n+1)²+n+7)/384`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337957

/-- `(n+1)*(n+2)*((n+1)²+n+3)*((n+1)²+n+5)*((n+1)²+n+7)/384` -/
def P86526632370406334.Spec : Prop :=
  ∀ n, P86526632370406334.a n = (A337957 (n + 1) : ℚ)

end A337957

/-! ## A337957.P8282588559658466492

`(A337956(n+1)+A337958(n+1))/2`
-/

namespace A337957.P8282588559658466492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337956 (n + 1) + A337958 (n + 1) : ℚ) / 2

end

end A337957.P8282588559658466492

namespace A337957

/-- `(A337956(n+1)+A337958(n+1))/2` -/
def P8282588559658466492.Spec : Prop :=
  ∀ n, P8282588559658466492.a n = (A337957 (n + 1) : ℚ)

end A337957

/-! ## A337957.P502150409045241995

`C(∑[n+1]+3, 4)`
-/

namespace A337957.P502150409045241995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 3) 4

end

end A337957.P502150409045241995

namespace A337957

/-- `C(∑[n+1]+3, 4)` -/
def P502150409045241995.Spec : Prop :=
  ∀ n, (P502150409045241995.a n : ℤ) = A337957 (n + 1)

end A337957

/-! ## A337957.P16265548901458796379

`record[C(C(n, 2)-n+4, 4)]`
-/

namespace A337957.P16265548901458796379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose n 2 : ℤ) - (n : ℤ) + 4).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337957.P16265548901458796379

namespace A337957

/-- `record[C(C(n, 2)-n+4, 4)]` -/
def P16265548901458796379.Spec : Prop :=
  ∀ n, (P16265548901458796379.a n : ℤ) = A337957 (n + 1)

end A337957

/-! ## A337957.P10911700089432836831

`C(C(A167487(n)-5, 2), 2)/3`
-/

namespace A337957.P10911700089432836831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (A167487 n - 5).toNat 2) 2 : ℚ) / 3

end

end A337957.P10911700089432836831

namespace A337957

/-- `C(C(A167487(n)-5, 2), 2)/3` -/
def P10911700089432836831.Spec : Prop :=
  ∀ n, P10911700089432836831.a n = (A337957 (n + 1) : ℚ)

end A337957

/-! ## A337957.P1716454518860512212

`C(C(A000217(n+1)+2, 2), 2)/3`
-/

namespace A337957.P1716454518860512212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (A000217 (n + 1) + 2).toNat 2) 2 : ℚ) / 3

end

end A337957.P1716454518860512212

namespace A337957

/-- `C(C(A000217(n+1)+2, 2), 2)/3` -/
def P1716454518860512212.Spec : Prop :=
  ∀ n, P1716454518860512212.a n = (A337957 (n + 1) : ℚ)

end A337957

/-! ## A337957.P17038630167585213856

`record[C(A008795(n)+3, 4)]`
-/

namespace A337957.P17038630167585213856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008795 n + 3).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337957.P17038630167585213856

namespace A337957

/-- `record[C(A008795(n)+3, 4)]` -/
def P17038630167585213856.Spec : Prop :=
  ∀ n, (P17038630167585213856.a n : ℤ) = A337957 (n + 1)

end A337957

/-! ## A337957.P18018521477498804003

`A337958(n+1)+A000332(∑[n])`
-/

namespace A337957.P18018521477498804003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337958 (n + 1) + A000332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337957.P18018521477498804003

namespace A337957

/-- `A337958(n+1)+A000332(∑[n])` -/
def P18018521477498804003.Spec : Prop :=
  ∀ n, P18018521477498804003.a n = A337957 (n + 1)

end A337957

/-! ## A337957.P13861158382691384017

`A337956(n+1)-A000332(A000217(n))`
-/

namespace A337957.P13861158382691384017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337956 (n + 1) - A000332 (A000217 n).toNat

end

end A337957.P13861158382691384017

namespace A337957

/-- `A337956(n+1)-A000332(A000217(n))` -/
def P13861158382691384017.Spec : Prop :=
  ∀ n, P13861158382691384017.a n = A337957 (n + 1)

end A337957

/-! ## A337957.P8478941293567940731

`A337956(n+1)-A000332(A179865(n+1))`
-/

namespace A337957.P8478941293567940731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337956 (n + 1) - A000332 (A179865 (n + 1)).toNat

end

end A337957.P8478941293567940731

namespace A337957

/-- `A337956(n+1)-A000332(A179865(n+1))` -/
def P8478941293567940731.Spec : Prop :=
  ∀ n, P8478941293567940731.a n = A337957 (n + 1)

end A337957

/-! ## A337957.P2320473746863958520

`sqrt(A288876(∑[n]+n))`
-/

namespace A337957.P2320473746863958520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℝ)

end

end A337957.P2320473746863958520

namespace A337957

/-- `sqrt(A288876(∑[n]+n))` -/
def P2320473746863958520.Spec : Prop :=
  ∀ n, P2320473746863958520.a n = (A337957 (n + 1) : ℝ)

end A337957

/-! ## A337957.P3519060784125389160

`A145126(∑[n+1])-1`
-/

namespace A337957.P3519060784125389160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A337957.P3519060784125389160

namespace A337957

/-- `A145126(∑[n+1])-1` -/
def P3519060784125389160.Spec : Prop :=
  ∀ n, P3519060784125389160.a n = A337957 (n + 1)

end A337957

/-! ## A337957.P5666765624721829794

`A000332(∑[n+1]+3)`
-/

namespace A337957.P5666765624721829794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A337957.P5666765624721829794

namespace A337957

/-- `A000332(∑[n+1]+3)` -/
def P5666765624721829794.Spec : Prop :=
  ∀ n, P5666765624721829794.a n = A337957 (n + 1)

end A337957

/-! ## A337957.P16443256292597254739

`A033488(∑[n+1])/4`
-/

namespace A337957.P16443256292597254739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033488 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A337957.P16443256292597254739

namespace A337957

/-- `A033488(∑[n+1])/4` -/
def P16443256292597254739.Spec : Prop :=
  ∀ n, P16443256292597254739.a n = (A337957 (n + 1) : ℚ)

end A337957

/-! ## A337957.P11294542132582970656

`A033487(∑[n+1])/6`
-/

namespace A337957.P11294542132582970656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033487 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6

end

end A337957.P11294542132582970656

namespace A337957

/-- `A033487(∑[n+1])/6` -/
def P11294542132582970656.Spec : Prop :=
  ∀ n, P11294542132582970656.a n = (A337957 (n + 1) : ℚ)

end A337957

/-! ## A337957.P3600872348629072563

`A052762(∑[n+1]+3)/24`
-/

namespace A337957.P3600872348629072563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) / 24

end

end A337957.P3600872348629072563

namespace A337957

/-- `A052762(∑[n+1]+3)/24` -/
def P3600872348629072563.Spec : Prop :=
  ∀ n, P3600872348629072563.a n = (A337957 (n + 1) : ℚ)

end A337957

/-! ## A337957.P2227180095139875530

`A014626(∑[n+1]+3)-(∑[n+1]+3)`
-/

namespace A337957.P2227180095139875530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - ((∑ j ∈ Finset.range (n + 1), f2 j + 3 : ℕ) : ℤ)

end

end A337957.P2227180095139875530

namespace A337957

/-- `A014626(∑[n+1]+3)-(∑[n+1]+3)` -/
def P2227180095139875530.Spec : Prop :=
  ∀ n, P2227180095139875530.a n = A337957 (n + 1)

end A337957

/-! ## A337957.P12580547640120939993

`record[A000332(A038722(n+1)+3)]`
-/

namespace A337957.P12580547640120939993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A038722 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337957.P12580547640120939993

namespace A337957

/-- `record[A000332(A038722(n+1)+3)]` -/
def P12580547640120939993.Spec : Prop :=
  ∀ n, P12580547640120939993.a n = A337957 (n + 1)

end A337957

/-! ## A337957.P14772438167783221425

`A363256(A000096(n))+A000096(n)`
-/

namespace A337957.P14772438167783221425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 (A000096 n).toNat + A000096 n

end

end A337957.P14772438167783221425

namespace A337957

/-- `A363256(A000096(n))+A000096(n)` -/
def P14772438167783221425.Spec : Prop :=
  ∀ n, P14772438167783221425.a n = A337957 (n + 1)

end A337957

/-!
# A337958: Number of achiral colorings of the 8 cubic facets of a tesseract or of the 8 vertices of a hyperoctahedron.

The programs for A337958, the canonical program `A337958.P6589202691571074810` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337958 has offset 1).

The definition of A337958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337958.P6589202691571074810

`(n+1)²*(n+2)²*(n+4)*((n+1)²-2*(n+1)+4)/48`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337958

/-- `(n+1)²*(n+2)²*(n+4)*((n+1)²-2*(n+1)+4)/48` -/
def P6589202691571074810.Spec : Prop :=
  ∀ n, P6589202691571074810.a n = (A337958 (n + 1) : ℚ)

end A337958

/-! ## A337958.P12404316380630835594

`2*A337957(n+1)-A337956(n+1)`
-/

namespace A337958.P12404316380630835594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337957 (n + 1) - A337956 (n + 1)

end

end A337958.P12404316380630835594

namespace A337958

/-- `2*A337957(n+1)-A337956(n+1)` -/
def P12404316380630835594.Spec : Prop :=
  ∀ n, P12404316380630835594.a n = A337958 (n + 1)

end A337958

/-! ## A337958.P2619559052394828465

`C(∑[n+1]+3, 4)-C(∑[n], 4)`
-/

namespace A337958.P2619559052394828465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 3) 4 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 4 : ℤ)

end

end A337958.P2619559052394828465

namespace A337958

/-- `C(∑[n+1]+3, 4)-C(∑[n], 4)` -/
def P2619559052394828465.Spec : Prop :=
  ∀ n, P2619559052394828465.a n = A337958 (n + 1)

end A337958

/-! ## A337958.P5845017041038154418

`A337957(n+1)-C(∑[n], 4)`
-/

namespace A337958.P5845017041038154418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337957 (n + 1) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 4 : ℤ)

end

end A337958.P5845017041038154418

namespace A337958

/-- `A337957(n+1)-C(∑[n], 4)` -/
def P5845017041038154418.Spec : Prop :=
  ∀ n, P5845017041038154418.a n = A337958 (n + 1)

end A337958

/-! ## A337958.P12269702061077616242

`A337957(n+1)-A000332(∑[n])`
-/

namespace A337958.P12269702061077616242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337957 (n + 1) - A000332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337958.P12269702061077616242

namespace A337958

/-- `A337957(n+1)-A000332(∑[n])` -/
def P12269702061077616242.Spec : Prop :=
  ∀ n, P12269702061077616242.a n = A337958 (n + 1)

end A337958

/-! ## A337958.P4545712386058277982

`A337956(n+1)-A034827(∑[n])`
-/

namespace A337958.P4545712386058277982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337956 (n + 1) - A034827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337958.P4545712386058277982

namespace A337958

/-- `A337956(n+1)-A034827(∑[n])` -/
def P4545712386058277982.Spec : Prop :=
  ∀ n, P4545712386058277982.a n = A337958 (n + 1)

end A337958

/-! ## A337958.P16270575624414582790

`A337956(n+1)-2*A000332(A000217(n))`
-/

namespace A337958.P16270575624414582790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337956 (n + 1) - 2 * A000332 (A000217 n).toNat

end

end A337958.P16270575624414582790

namespace A337958

/-- `A337956(n+1)-2*A000332(A000217(n))` -/
def P16270575624414582790.Spec : Prop :=
  ∀ n, P16270575624414582790.a n = A337958 (n + 1)

end A337958

/-! ## A337958.P366713426966223506

`A337956(n+1)-2*A000332(A179865(n+1))`
-/

namespace A337958.P366713426966223506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337956 (n + 1) - 2 * A000332 (A179865 (n + 1)).toNat

end

end A337958.P366713426966223506

namespace A337958

/-- `A337956(n+1)-2*A000332(A179865(n+1))` -/
def P366713426966223506.Spec : Prop :=
  ∀ n, P366713426966223506.a n = A337958 (n + 1)

end A337958

/-! ## A337958.P17291565298288089487

`A000332(∑[n+1]+3)-A000332(∑[n])`
-/

namespace A337958.P17291565298288089487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - A000332 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A337958.P17291565298288089487

namespace A337958

/-- `A000332(∑[n+1]+3)-A000332(∑[n])` -/
def P17291565298288089487.Spec : Prop :=
  ∀ n, P17291565298288089487.a n = A337958 (n + 1)

end A337958

/-! ## A337958.P7165093255564432489

`A325007(A167614(n+2)+1)`
-/

namespace A337958.P7165093255564432489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325007 (A167614 (n + 2) + 1).toNat

end

end A337958.P7165093255564432489

namespace A337958

/-- `A325007(A167614(n+2)+1)` -/
def P7165093255564432489.Spec : Prop :=
  ∀ n, P7165093255564432489.a n = A337958 (n + 1)

end A337958

/-!
# A337959: Number of chiral pairs of colorings of the 30 triangular faces of a regular icosahedron or the 30 vertices of a regular dodecahedron using n or fewer colors.

The programs for A337959, the canonical program `A337959.P2573182081801534291` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337959 has offset 1).

The definition of A337959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337959.P7543686227008420640

`A054472(n+1)-A252704(n+1)`
-/

namespace A337959.P7543686227008420640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054472 (n + 1) - A252704 (n + 1)

end

end A337959.P7543686227008420640

namespace A337959

/-- `A054472(n+1)-A252704(n+1)` -/
def P7543686227008420640.Spec : Prop :=
  ∀ n, P7543686227008420640.a n = A337959 (n + 1)

end A337959

/-! ## A337959.P14179461494423979713

`A252704(n+1)-A337960(n+1)`
-/

namespace A337959.P14179461494423979713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252704 (n + 1) - A337960 (n + 1)

end

end A337959.P14179461494423979713

namespace A337959

/-- `A252704(n+1)-A337960(n+1)` -/
def P14179461494423979713.Spec : Prop :=
  ∀ n, P14179461494423979713.a n = A337959 (n + 1)

end A337959

/-! ## A337959.P2573182081801534291

`(A054472(n+1)-A337960(n+1))/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337959

/-- `(A054472(n+1)-A337960(n+1))/2` -/
def P2573182081801534291.Spec : Prop :=
  ∀ n, P2573182081801534291.a n = (A337959 (n + 1) : ℚ)

end A337959

/-! ## A337959.P10556468573300496175

`A054472(C(n+1, n))%A252704(n+1)`
-/

namespace A337959.P10556468573300496175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054472 (Nat.choose (n + 1) n)) (A252704 (n + 1))

end

end A337959.P10556468573300496175

namespace A337959

/-- `A054472(C(n+1, n))%A252704(n+1)` -/
def P10556468573300496175.Spec : Prop :=
  ∀ n, P10556468573300496175.a n = A337959 (n + 1)

end A337959

/-! ## A337959.P8417362475923634775

`A054472(round(sqrt((n+1)²+1)))%A252704(n+1)`
-/

namespace A337959.P8417362475923634775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054472 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 2 + 1 : ℝ))).toNat) (A252704 (n + 1))

end

end A337959.P8417362475923634775

namespace A337959

/-- `A054472(round(sqrt((n+1)²+1)))%A252704(n+1)` -/
def P8417362475923634775.Spec : Prop :=
  ∀ n, P8417362475923634775.a n = A337959 (n + 1)

end A337959

/-!
# A337960: Number of achiral colorings of the 30 triangular faces of a regular icosahedron or the 30 vertices of a regular dodecahedron using n or fewer colors.

The programs for A337960, the canonical program `A337960.P17505618210171408263` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337960 has offset 1).

The definition of A337960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337960.P17505618210171408263

`(n+1)²*(15*(n+1)^10+(n+1)^8+20*(n+1)²+24)/60`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337960

/-- `(n+1)²*(15*(n+1)^10+(n+1)^8+20*(n+1)²+24)/60` -/
def P17505618210171408263.Spec : Prop :=
  ∀ n, P17505618210171408263.a n = (A337960 (n + 1) : ℚ)

end A337960

/-! ## A337960.P9015885809074995099

`A252704(n+1)-A337959(n+1)`
-/

namespace A337960.P9015885809074995099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252704 (n + 1) - A337959 (n + 1)

end

end A337960.P9015885809074995099

namespace A337960

/-- `A252704(n+1)-A337959(n+1)` -/
def P9015885809074995099.Spec : Prop :=
  ∀ n, P9015885809074995099.a n = A337960 (n + 1)

end A337960

/-! ## A337960.P2316709641939552976

`2*A252704(n+1)-A054472(n+1)`
-/

namespace A337960.P2316709641939552976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252704 (n + 1) - A054472 (n + 1)

end

end A337960.P2316709641939552976

namespace A337960

/-- `2*A252704(n+1)-A054472(n+1)` -/
def P2316709641939552976.Spec : Prop :=
  ∀ n, P2316709641939552976.a n = A337960 (n + 1)

end A337960

/-! ## A337960.P1785809882344060207

`A054472(n+1)-2*A337959(n+1)`
-/

namespace A337960.P1785809882344060207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054472 (n + 1) - 2 * A337959 (n + 1)

end

end A337960.P1785809882344060207

namespace A337960

/-- `A054472(n+1)-2*A337959(n+1)` -/
def P1785809882344060207.Spec : Prop :=
  ∀ n, P1785809882344060207.a n = A337960 (n + 1)

end A337960

/-!
# A337961: Number of chiral pairs of colorings of the 12 pentagonal faces of a regular dodecahedron or the 12 vertices of a regular icosahedron using n or fewer colors.

The programs for A337961, the canonical program `A337961.P17187151773324132767` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337961 has offset 1).

The definition of A337961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337961.P2197135701121160962

`n*(n+1)²*(n+2)*((n+1)^8+(n+1)^6-14*(n+1)^4+44)/120`
-/

namespace A337961.P2197135701121160962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) ^ 2 : ℚ) * ((n + 2 : ℚ) * ((((n + 1) ^ 8 + (n + 1) ^ 6 : ℤ) - (14 * (n + 1) ^ 4 : ℤ) + 44 : ℚ) / 120))

end

end A337961.P2197135701121160962

namespace A337961

/-- `n*(n+1)²*(n+2)*((n+1)^8+(n+1)^6-14*(n+1)^4+44)/120` -/
def P2197135701121160962.Spec : Prop :=
  ∀ n, P2197135701121160962.a n = (A337961 (n + 1) : ℚ)

end A337961

/-! ## A337961.P17187151773324132767

`A000545(n+1)-A252705(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337961

/-- `A000545(n+1)-A252705(n+1)` -/
def P17187151773324132767.Spec : Prop :=
  ∀ n, P17187151773324132767.a n = A337961 (n + 1)

theorem P17187151773324132767.correct : P17187151773324132767.Spec := by
  intro n
  simp only [A337961, Nat.add_sub_cancel]

end A337961

/-! ## A337961.P1327627213715365426

`A252705(n+1)-A337962(n+1)`
-/

namespace A337961.P1327627213715365426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252705 (n + 1) - A337962 (n + 1)

end

end A337961.P1327627213715365426

namespace A337961

/-- `A252705(n+1)-A337962(n+1)` -/
def P1327627213715365426.Spec : Prop :=
  ∀ n, P1327627213715365426.a n = A337961 (n + 1)

end A337961

/-! ## A337961.P9468600759802754318

`(A000545(n+1)-A337962(n+1))/2`
-/

namespace A337961.P9468600759802754318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000545 (n + 1) - A337962 (n + 1) : ℚ) / 2

end

end A337961.P9468600759802754318

namespace A337961

/-- `(A000545(n+1)-A337962(n+1))/2` -/
def P9468600759802754318.Spec : Prop :=
  ∀ n, P9468600759802754318.a n = (A337961 (n + 1) : ℚ)

end A337961

/-! ## A337961.P10535781069674407339

`A000545(A000027(n+1))%A252705(n+1)`
-/

namespace A337961.P10535781069674407339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000545 (A000027 (n + 1)).toNat) (A252705 (n + 1))

end

end A337961.P10535781069674407339

namespace A337961

/-- `A000545(A000027(n+1))%A252705(n+1)` -/
def P10535781069674407339.Spec : Prop :=
  ∀ n, P10535781069674407339.a n = A337961 (n + 1)

end A337961

/-! ## A337961.P8419103833963901365

`A000545(n+1)%A252705(A028310(n+1))`
-/

namespace A337961.P8419103833963901365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000545 (n + 1)) (A252705 (A028310 (n + 1)).toNat)

end

end A337961.P8419103833963901365

namespace A337961

/-- `A000545(n+1)%A252705(A028310(n+1))` -/
def P8419103833963901365.Spec : Prop :=
  ∀ n, P8419103833963901365.a n = A337961 (n + 1)

end A337961

/-!
# A337962: Number of achiral colorings of the 12 pentagonal faces of a regular dodecahedron or the 12 vertices of a regular icosahedron using n or fewer colors.

The programs for A337962, the canonical program `A337962.P3428884001016566755` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337962 has offset 1).

The definition of A337962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337962.P13748742373429305737

`(15*(n+1)^8+(n+1)^6+44*(n+1)²)/60`
-/

namespace A337962.P13748742373429305737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * (n + 1) ^ 8 + (n + 1) ^ 6 + 44 * (n + 1) ^ 2 : ℚ) / 60

end

end A337962.P13748742373429305737

namespace A337962

/-- `(15*(n+1)^8+(n+1)^6+44*(n+1)²)/60` -/
def P13748742373429305737.Spec : Prop :=
  ∀ n, P13748742373429305737.a n = (A337962 (n + 1) : ℚ)

end A337962

/-! ## A337962.P3428884001016566755

`A252705(n+1)-A337961(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337962

/-- `A252705(n+1)-A337961(n+1)` -/
def P3428884001016566755.Spec : Prop :=
  ∀ n, P3428884001016566755.a n = A337962 (n + 1)

theorem P3428884001016566755.correct : P3428884001016566755.Spec := by
  intro n
  simp only [A337962, Nat.add_sub_cancel]

end A337962

/-! ## A337962.P7805023250364918578

`2*A252705(n+1)-A000545(n+1)`
-/

namespace A337962.P7805023250364918578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252705 (n + 1) - A000545 (n + 1)

end

end A337962.P7805023250364918578

namespace A337962

/-- `2*A252705(n+1)-A000545(n+1)` -/
def P7805023250364918578.Spec : Prop :=
  ∀ n, P7805023250364918578.a n = A337962 (n + 1)

end A337962

/-! ## A337962.P10466240053925390076

`A000545(n+1)-2*A337961(n+1)`
-/

namespace A337962.P10466240053925390076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000545 (n + 1) - 2 * A337961 (n + 1)

end

end A337962.P10466240053925390076

namespace A337962

/-- `A000545(n+1)-2*A337961(n+1)` -/
def P10466240053925390076.Spec : Prop :=
  ∀ n, P10466240053925390076.a n = A337962 (n + 1)

end A337962

/-! ## A337962.P11475048506695553180

`A252705(A000027(n+1))-(A000545(n+1)-A252705(n+1))`
-/

namespace A337962.P11475048506695553180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252705 (A000027 (n + 1)).toNat - (A000545 (n + 1) - A252705 (n + 1))

end

end A337962.P11475048506695553180

namespace A337962

/-- `A252705(A000027(n+1))-(A000545(n+1)-A252705(n+1))` -/
def P11475048506695553180.Spec : Prop :=
  ∀ n, P11475048506695553180.a n = A337962 (n + 1)

end A337962

/-! ## A337962.P1561545796824936014

`A000545(n+1)-A337961(n+1)-A337961(A000027(n+1))`
-/

namespace A337962.P1561545796824936014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000545 (n + 1) - A337961 (n + 1) - A337961 (A000027 (n + 1)).toNat

end

end A337962.P1561545796824936014

namespace A337962

/-- `A000545(n+1)-A337961(n+1)-A337961(A000027(n+1))` -/
def P1561545796824936014.Spec : Prop :=
  ∀ n, P1561545796824936014.a n = A337962 (n + 1)

end A337962

/-! ## A337962.P14862143426646044568

`A252705(n+1)-A000545(n+1)%A252705(A028310(n+1))`
-/

namespace A337962.P14862143426646044568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252705 (n + 1) - Int.tmod (A000545 (n + 1)) (A252705 (A028310 (n + 1)).toNat)

end

end A337962.P14862143426646044568

namespace A337962

/-- `A252705(n+1)-A000545(n+1)%A252705(A028310(n+1))` -/
def P14862143426646044568.Spec : Prop :=
  ∀ n, P14862143426646044568.a n = A337962 (n + 1)

end A337962

/-!
# A337966: Triangle read by rows, coefficients of polynomials over {-1, 0, 1}. Also a triangle-to-triangle transformation U -> T(U) applied to the triangle U(n, k) = 1.

The programs for A337966, there is no canonical definition to state claims against.
-/

/-! ## A337966.P11184072270935877993

`A046978(Δ[n²]+(n-comp[∑[n]])²-2)`
-/

namespace A337966.P11184072270935877993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2 - 2).toNat

end

end A337966.P11184072270935877993

/-! ## A337966.P8413886206132661263

`-A046980((round(sqrt(2*(n+1)))+1)²+2*n+1)`
-/

namespace A337966.P8413886206132661263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A046980 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A337966.P8413886206132661263

/-! ## A337966.P7424338432237166541

`A046980(xor(4, (round(sqrt(2*(n+1)))+1)²+2*n+1))`
-/

namespace A337966.P7424338432237166541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (Int.xor 4 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ))).toNat

end

end A337966.P7424338432237166541

/-! ## A337966.P4856118399868238767

`A075553(A185868(n+1)+2)`
-/

namespace A337966.P4856118399868238767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (A185868 (n + 1) + 2).toNat

end

end A337966.P4856118399868238767

/-! ## A337966.P12194148516837150213

`A046980(A185871(n+1)+4)`
-/

namespace A337966.P12194148516837150213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A185871 (n + 1) + 4).toNat

end

end A337966.P12194148516837150213

/-! ## A337966.P15916192909473258720

`A046980(eq[0, A051159(n+3)])`
-/

namespace A337966.P15916192909473258720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337966.P15916192909473258720

/-! ## A337966.P5627176300259701543

`A046980(eq[0, A051159(n)]-3)`
-/

namespace A337966.P5627176300259701543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 3)

end

end A337966.P5627176300259701543

/-!
# A337967: Triangle read by rows, application of the transformation A337966 to Euler's triangle A173018. T(n, k) for 0 <= k <= n.

The programs for A337967, there is no canonical definition to state claims against.
-/

/-! ## A337967.P6059184055601209110

`A173018(n)*A337966(n)`
-/

namespace A337967.P6059184055601209110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n * A337966 n

end

end A337967.P6059184055601209110

/-! ## A337967.P6448127742230109423

`A123125((n+1)%(n+1)²)*A337966(n)`
-/

namespace A337967.P6448127742230109423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 ((n + 1) % (n + 1) ^ 2) * A337966 n

end

end A337967.P6448127742230109423

/-! ## A337967.P5683722663433687741

`A123125(2-(1-n)%(n+1))*A337966(n)`
-/

namespace A337967.P5683722663433687741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (2 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat * A337966 n

end

end A337967.P5683722663433687741

/-! ## A337967.P15728838647438867443

`A123125(n-(C(2, n+2)-1))*A337966(n)`
-/

namespace A337967.P15728838647438867443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 ((n : ℤ) - ((Nat.choose 2 (n + 2) : ℤ) - 1)).toNat * A337966 n

end

end A337967.P15728838647438867443

/-! ## A337967.P12836002880823664878

`A123125(A061579(n))*A337966(n)`
-/

namespace A337967.P12836002880823664878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A061579 n).toNat * A337966 n

end

end A337967.P12836002880823664878

/-! ## A337967.P9116673427543709526

`A123125(A028310(n)+1)*A337966(n)`
-/

namespace A337967.P9116673427543709526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A028310 n + 1).toNat * A337966 n

end

end A337967.P9116673427543709526

/-! ## A337967.P15539292187359668761

`A123125(A087156(n+1))*A337966(n)`
-/

namespace A337967.P15539292187359668761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A087156 (n + 1)).toNat * A337966 n

end

end A337967.P15539292187359668761

/-! ## A337967.P2637416269780955636

`A123125(A254667(n+1))*A337966(n)`
-/

namespace A337967.P2637416269780955636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A254667 (n + 1)).toNat * A337966 n

end

end A337967.P2637416269780955636

/-! ## A337967.P9050393286561949

`A123125(A199969(n+2))*A337966(n)`
-/

namespace A337967.P9050393286561949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A199969 (n + 2)).toNat * A337966 n

end

end A337967.P9050393286561949

/-! ## A337967.P4844675259097463584

`A123125(n+3-gcd(2, A000010(n+2)))*A337966(n)`
-/

namespace A337967.P4844675259097463584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (n + 3 - Int.gcd 2 (A000010 (n + 2))) * A337966 n

end

end A337967.P4844675259097463584

/-!
# A337968: L.g.f.: -log( Sum_{n=-oo..+oo} (-p)^n * (p*x)^(n^2) ) = Sum_{n>=1} a(n) * x^n/n, where p = sqrt(3).

The programs for A337968, there is no canonical definition to state claims against.
-/

/-! ## A337968.P6563199376395802852

`A338895(A303546(n+2))`
-/

namespace A337968.P6563199376395802852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338895 (A303546 (n + 2)).toNat

end

end A337968.P6563199376395802852

/-!
# A337969: a(n) = 3^(n*(n-1)/2) + 3^(n*(n+1)/2) for n > 0, with a(0) = 1.

The programs for A337969, there is no canonical definition to state claims against.
-/

/-! ## A337969.P1914502732155222415

`A047656(n)*A103457(n)`
-/

namespace A337969.P1914502732155222415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047656 n * A103457 n

end

end A337969.P1914502732155222415

/-! ## A337969.P9854304788423027331

`∏[A133494(n)]*A103457(n)`
-/

namespace A337969.P9854304788423027331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A103457 n

end

end A337969.P9854304788423027331

/-! ## A337969.P1965923864660259616

`A290000(n+1)/A290000(n)*A047656(n)`
-/

namespace A337969.P1965923864660259616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290000 (n + 1) : ℚ) / (A290000 n : ℚ) * (A047656 n : ℚ)

end

end A337969.P1965923864660259616

/-! ## A337969.P11421333500185229053

`A047656(n)*A103517(A003462(n))`
-/

namespace A337969.P11421333500185229053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047656 n * A103517 (A003462 n).toNat

end

end A337969.P11421333500185229053

/-!
# A337972: Triangular array read by rows: T(n,k) = A337946(n) + A337946(k), for 1 <= k <= n.

The programs for A337972, there is no canonical definition to state claims against.
-/

/-! ## A337972.P4529878180640992574

`A337973(A245300(n)+1)`
-/

namespace A337972.P4529878180640992574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337973 (A245300 n + 1).toNat

end

end A337972.P4529878180640992574

/-!
# A337974: Triangular array read by rows: T(n,k) = A337946(n) * A337946(k), for 1 <= k <= n.

The programs for A337974, there is no canonical definition to state claims against.
-/

/-! ## A337974.P12710213979483562041

`A337975(A245300(n)+1)`
-/

namespace A337974.P12710213979483562041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337975 (A245300 n + 1).toNat

end

end A337974.P12710213979483562041

/-! ## A337974.P11169764097849196541

`A338033(A077168(comp[∑[n]]))`
-/

namespace A337974.P11169764097849196541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338033 (A077168 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A337974.P11169764097849196541

/-! ## A337974.P15605495878193398864

`filter[A338033(n+1), A225181(#)]`
-/

namespace A337974.P15605495878193398864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A337974.P15605495878193398864

/-! ## A337974.P5151604965739623419

`filter[A338033(n+1), A285196(#)]`
-/

namespace A337974.P5151604965739623419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285196 (f1 j).toNat = 1) n)

end

end A337974.P5151604965739623419

/-!
# A337976: Number of partitions of n into two distinct parts (s,t), such that s | t, (t-s) | n, and where n/(t-s) <= s < t.

The programs for A337976, there is no canonical definition to state claims against.
-/

/-! ## A337976.P5670143974139510097

`A001221(A204114(∑[n-1]+7))`
-/

namespace A337976.P5670143974139510097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A204114 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat).toNat

end

end A337976.P5670143974139510097

/-!
# A337978: a(n) = n + pi(n) - pi(n + pi(n)), where pi(n) is the prime count of n (n>=1).

The programs for A337978, the canonical program `A337978.P4898846273095540524` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337978 has offset 1).

The definition of A337978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337978.P4898846273095540524

`1-A337788(n+1)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A337978

/-- `1-A337788(n+1)+n` -/
def P4898846273095540524.Spec : Prop :=
  ∀ n, P4898846273095540524.a n = A337978 (n + 1)

theorem P4898846273095540524.correct : P4898846273095540524.Spec := by
  intro n
  simp only [A337978, Nat.add_sub_cancel]

end A337978

/-! ## A337978.P12164964702472663879

`Δ[n²]-n-A337788(n-log2(1/2))`
-/

namespace A337978.P12164964702472663879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A337788 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A337978.P12164964702472663879

namespace A337978

/-- `Δ[n²]-n-A337788(n-log2(1/2))` -/
def P12164964702472663879.Spec : Prop :=
  ∀ n, P12164964702472663879.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P2728845889706119333

`A065855(A095117(n+1))+1`
-/

namespace A337978.P2728845889706119333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A095117 (n + 1)).toNat + 1

end

end A337978.P2728845889706119333

namespace A337978

/-- `A065855(A095117(n+1))+1` -/
def P2728845889706119333.Spec : Prop :=
  ∀ n, P2728845889706119333.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P8091302519027495970

`A062298(∑[C(2, ∑{e}[n+1, #+1])]+n)`
-/

namespace A337978.P8091302519027495970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A337978.P8091302519027495970

namespace A337978

/-- `A062298(∑[C(2, ∑{e}[n+1, #+1])]+n)` -/
def P8091302519027495970.Spec : Prop :=
  ∀ n, P8091302519027495970.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P15105959571512520767

`A062298(∑[∑{p}[n+1, val(#, n+1)]]+n+1)`
-/

namespace A337978.P15105959571512520767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A337978.P15105959571512520767

namespace A337978

/-- `A062298(∑[∑{p}[n+1, val(#, n+1)]]+n+1)` -/
def P15105959571512520767.Spec : Prop :=
  ∀ n, P15105959571512520767.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P8886017778447140758

`A062298(∑[C(n, ∏{e}[n+1, n*#])]+n+1)`
-/

namespace A337978.P8886017778447140758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A337978.P8886017778447140758

namespace A337978

/-- `A062298(∑[C(n, ∏{e}[n+1, n*#])]+n+1)` -/
def P8886017778447140758.Spec : Prop :=
  ∀ n, P8886017778447140758.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P16139739711017460546

`A062298(∑[∑{p}[n+1, floor(#/(n+1))]]+n+1)`
-/

namespace A337978.P16139739711017460546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)).toNat

end

end A337978.P16139739711017460546

namespace A337978

/-- `A062298(∑[∑{p}[n+1, floor(#/(n+1))]]+n+1)` -/
def P16139739711017460546.Spec : Prop :=
  ∀ n, P16139739711017460546.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P321994523980112515

`A062298(A095117(n+1))`
-/

namespace A337978.P321994523980112515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A095117 (n + 1)).toNat

end

end A337978.P321994523980112515

namespace A337978

/-- `A062298(A095117(n+1))` -/
def P321994523980112515.Spec : Prop :=
  ∀ n, P321994523980112515.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P8218877129122234343

`A062298(A064427(n+2)-1)`
-/

namespace A337978.P8218877129122234343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A064427 (n + 2) - 1).toNat

end

end A337978.P8218877129122234343

namespace A337978

/-- `A062298(A064427(n+2)-1)` -/
def P8218877129122234343.Spec : Prop :=
  ∀ n, P8218877129122234343.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P8054989184927916763

`A062298(A036234(n+1)+n)`
-/

namespace A337978.P8054989184927916763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A036234 (n + 1) + (n : ℤ)).toNat

end

end A337978.P8054989184927916763

namespace A337978

/-- `A062298(A036234(n+1)+n)` -/
def P8054989184927916763.Spec : Prop :=
  ∀ n, P8054989184927916763.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P11295333403816755067

`A062298(∑[A010051(n+1)+1])`
-/

namespace A337978.P11295333403816755067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337978.P11295333403816755067

namespace A337978

/-- `A062298(∑[A010051(n+1)+1])` -/
def P11295333403816755067.Spec : Prop :=
  ∀ n, P11295333403816755067.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P12512459826579179105

`A062298(A000720(n+1)+n+1)`
-/

namespace A337978.P12512459826579179105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A000720 (n + 1) + (n + 1 : ℤ)).toNat

end

end A337978.P12512459826579179105

namespace A337978

/-- `A062298(A000720(n+1)+n+1)` -/
def P12512459826579179105.Spec : Prop :=
  ∀ n, P12512459826579179105.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P14146175415966496115

`A062298(2*n+1-A065855(n+1))`
-/

namespace A337978.P14146175415966496115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 ((2 * n + 1 : ℤ) - A065855 (n + 1)).toNat

end

end A337978.P14146175415966496115

namespace A337978

/-- `A062298(2*n+1-A065855(n+1))` -/
def P14146175415966496115.Spec : Prop :=
  ∀ n, P14146175415966496115.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P10749453477856045495

`A000720(A065308(A000720(n+1)+n+1))`
-/

namespace A337978.P10749453477856045495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065308 (A000720 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A337978.P10749453477856045495

namespace A337978

/-- `A000720(A065308(A000720(n+1)+n+1))` -/
def P10749453477856045495.Spec : Prop :=
  ∀ n, P10749453477856045495.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P14345668864773209414

`A062298(A082514(n+1)+A049820(n+1))`
-/

namespace A337978.P14345668864773209414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A082514 (n + 1) + A049820 (n + 1)).toNat

end

end A337978.P14345668864773209414

namespace A337978

/-- `A062298(A082514(n+1)+A049820(n+1))` -/
def P14345668864773209414.Spec : Prop :=
  ∀ n, P14345668864773209414.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P5225774161814286109

`A165634(A338215(A000720(n+1)+n+1))`
-/

namespace A337978.P5225774161814286109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A338215 (A000720 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A337978.P5225774161814286109

namespace A337978

/-- `A165634(A338215(A000720(n+1)+n+1))` -/
def P5225774161814286109.Spec : Prop :=
  ∀ n, P5225774161814286109.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P11126465226984263244

`A165634(A338215(A095117(A165634(A095116(n+1)))))`
-/

namespace A337978.P11126465226984263244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A338215 (A095117 (A165634 (A095116 (n + 1)).toNat).toNat).toNat).toNat

end

end A337978.P11126465226984263244

namespace A337978

/-- `A165634(A338215(A095117(A165634(A095116(n+1)))))` -/
def P11126465226984263244.Spec : Prop :=
  ∀ n, P11126465226984263244.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P4338865823590001459

`A137588(A077152(n+1))`
-/

namespace A337978.P4338865823590001459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A077152 (n + 1)).toNat

end

end A337978.P4338865823590001459

namespace A337978

/-- `A137588(A077152(n+1))` -/
def P4338865823590001459.Spec : Prop :=
  ∀ n, P4338865823590001459.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P3858135578257336788

`A137588(A084792(n+1))`
-/

namespace A337978.P3858135578257336788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A084792 (n + 1)).toNat

end

end A337978.P3858135578257336788

namespace A337978

/-- `A137588(A084792(n+1))` -/
def P3858135578257336788.Spec : Prop :=
  ∀ n, P3858135578257336788.a n = A337978 (n + 1)

end A337978

/-! ## A337978.P9680043255882690410

`A137588(A000040(A000720(n+1)+n+1))`
-/

namespace A337978.P9680043255882690410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A000040 (A000720 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A337978.P9680043255882690410

namespace A337978

/-- `A137588(A000040(A000720(n+1)+n+1))` -/
def P9680043255882690410.Spec : Prop :=
  ∀ n, P9680043255882690410.a n = A337978 (n + 1)

end A337978

/-!
# A337979: Define a map f(n):= n-> n + pi(n) - pi(n + pi(n)), where pi(n) is the prime count of n (n>=1). a(n) is the number of steps for n to reach 1 under repeated iteration of f.

The programs for A337979, the canonical program `A337979.P12003257843865772320` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337979 has offset 1).

The definition of A337979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337979.P3907710825008763157

`a(n-A337788(n+1))+1` with `a(0)=0`
-/

namespace A337979.P3907710825008763157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A337788 (n + 1)).toNat + 1

end

end A337979.P3907710825008763157

namespace A337979

/-- `a(n-A337788(n+1))+1` -/
def P3907710825008763157.Spec : Prop :=
  ∀ n, (P3907710825008763157.a n : ℤ) = A337979 (n + 1)

end A337979

/-! ## A337979.P12003257843865772320

`a(A337978(n+1)-1)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A337979

/-- `a(A337978(n+1)-1)+1` -/
def P12003257843865772320.Spec : Prop :=
  ∀ n, (P12003257843865772320.a n : ℤ) = A337979 (n + 1)

theorem P12003257843865772320.correct : P12003257843865772320.Spec := by
  intro n
  simp only [A337979, Nat.add_sub_cancel]

end A337979

/-! ## A337979.P16416761801525012202

`ceil(comp[A002487(3*n+1)-A368437(n+1)]/2)`
-/

namespace A337979.P16416761801525012202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (3 * n + 1) - A368437 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A337979.P16416761801525012202

namespace A337979

/-- `ceil(comp[A002487(3*n+1)-A368437(n+1)]/2)` -/
def P16416761801525012202.Spec : Prop :=
  ∀ n, P16416761801525012202.a n = A337979 (n + 1)

end A337979

/-! ## A337979.P14761346144736369470

`∑[A242252(∑[A303541(3*n+2)])]`
-/

namespace A337979.P14761346144736369470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303541 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242252 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337979.P14761346144736369470

namespace A337979

/-- `∑[A242252(∑[A303541(3*n+2)])]` -/
def P14761346144736369470.Spec : Prop :=
  ∀ n, P14761346144736369470.a n = A337979 (n + 1)

end A337979

/-! ## A337979.P16617640947538024818

`∑[A333807(A014963(A070982(n+1)))]`
-/

namespace A337979.P16617640947538024818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333807 (A014963 (A070982 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337979.P16617640947538024818

namespace A337979

/-- `∑[A333807(A014963(A070982(n+1)))]` -/
def P16617640947538024818.Spec : Prop :=
  ∀ n, P16617640947538024818.a n = A337979 (n + 1)

end A337979

/-!
# A337980: When terms first appear in the sequence they are "untouched". Start with a(1)=1. Thereafter, to find a(n), let k = a(n-1). If there is an earlier occurrence a(n-m) = k which is untouched, then a(n) = m and a(n-m) is now "touched". Otherwise, a(n) = 0.

The programs for A337980, there is no canonical definition to state claims against.
-/

/-! ## A337980.P2373101009566297903

`A091049(n+2)%A191760(A207989(n+1))`
-/

namespace A337980.P2373101009566297903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091049 (n + 2)) (A191760 (A207989 (n + 1)).toNat)

end

end A337980.P2373101009566297903

/-! ## A337980.P9458328789466245829

`A290926(p?[A329508(2*n+5)])%A194980(3*(n+1))`
-/

namespace A337980.P9458328789466245829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290926 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A194980 (3 * (n + 1)))

end

end A337980.P9458328789466245829

/-!
# A337982: Number of pairs of divisors of 2n, (d1,d2) such that d1 < d2 and d1 + d2 is prime.

The programs for A337982, there is no canonical definition to state claims against.
-/

/-! ## A337982.P5019811964679546237

`∑{d}[n+1, A088627(#)]`
-/

namespace A337982.P5019811964679546237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088627 d

end

end A337982.P5019811964679546237

/-! ## A337982.P952479237870610904

`floor(∑{d}[2*(n+1), A282849(#)]/2)`
-/

namespace A337982.P952479237870610904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), A282849 d : ℤ) : ℚ) / 2⌋

end

end A337982.P952479237870610904

/-! ## A337982.P4504962072424017609

`A351613(2*(n+1))-1`
-/

namespace A337982.P4504962072424017609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351613 (2 * (n + 1)) - 1

end

end A337982.P4504962072424017609

/-! ## A337982.P9651248459973309534

`(A351613(2*(n+1))+A002720(n))%(n+2)`
-/

namespace A337982.P9651248459973309534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351613 (2 * (n + 1)) + A002720 n) (n + 2 : ℤ)

end

end A337982.P9651248459973309534

/-! ## A337982.P4447230717907785786

`(A351613(2*(n+1))+A000027(n+1))%(n+2)`
-/

namespace A337982.P4447230717907785786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351613 (2 * (n + 1)) + A000027 (n + 1)) (n + 2 : ℤ)

end

end A337982.P4447230717907785786

/-!
# A337983: Number of compositions of n into distinct parts, any two of which have a common divisor > 1.

The programs for A337983, there is no canonical definition to state claims against.
-/

/-! ## A337983.P4428775624813325523

`A026741(A032022(n))-A337451(n)`
-/

namespace A337983.P4428775624813325523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A032022 n).toNat - A337451 n

end

end A337983.P4428775624813325523

/-! ## A337983.P12408096247569793111

`A014682(A351017(n))-A332004(n)`
-/

namespace A337983.P12408096247569793111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A351017 n).toNat - A332004 n

end

end A337983.P12408096247569793111

/-! ## A337983.P7905454783906811139

`A032020(n)-A332004(n)%A331711(n)`
-/

namespace A337983.P7905454783906811139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - Int.tmod (A332004 n) (A331711 n)

end

end A337983.P7905454783906811139

/-! ## A337983.P4063285322870844938

`A107598(A332003(n))`
-/

namespace A337983.P4063285322870844938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107598 (A332003 n).toNat

end

end A337983.P4063285322870844938

/-! ## A337983.P16054411595843270889

`A332003(n)*A354991(A000079(n))`
-/

namespace A337983.P16054411595843270889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332003 n * A354991 (A000079 n).toNat

end

end A337983.P16054411595843270889

/-!
# A337984: Heinz numbers of pairwise coprime integer partitions with no 1's, where a singleton is not considered coprime.

The programs for A337984, there is no canonical definition to state claims against.
-/

/-! ## A337984.P12919322509313261051

`record[A327512(2*n+15)]`
-/

namespace A337984.P12919322509313261051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (2 * n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337984.P12919322509313261051

/-! ## A337984.P12689221047593500446

`∩[2*n+1, A302696(n+2)]`
-/

namespace A337984.P12689221047593500446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337984.P12689221047593500446

/-! ## A337984.P10079937124677732650

`∩[A302696(n+1), n+3+n]`
-/

namespace A337984.P10079937124677732650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A337984.P10079937124677732650

/-! ## A337984.P8433314975532688427

`record[A000265(A302696(n+9))]`
-/

namespace A337984.P8433314975532688427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A302696 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337984.P8433314975532688427

/-! ## A337984.P7580395475239613334

`filter[A302696(n+1), A266070(#)]`
-/

namespace A337984.P7580395475239613334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A337984.P7580395475239613334

/-! ## A337984.P8306329141321629172

`filter[A302696(n+1), A324908(#)]`
-/

namespace A337984.P8306329141321629172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A337984.P8306329141321629172

/-! ## A337984.P13751457303248019839

`filter[A302696(n+1), A353638(#)]`
-/

namespace A337984.P13751457303248019839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A337984.P13751457303248019839

/-! ## A337984.P8935870573223549041

`filter[A302696(n+2), A000035(#)]`
-/

namespace A337984.P8935870573223549041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A337984.P8935870573223549041

/-! ## A337984.P8107024733680569158

`filter[A302696(n+2), A323239(#)]`
-/

namespace A337984.P8107024733680569158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A337984.P8107024733680569158

/-! ## A337984.P524342284690187093

`filter[A302696(n+3), A266611(#)]`
-/

namespace A337984.P524342284690187093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A337984.P524342284690187093

/-!
# A337985: a(n) is the exponent of the highest power of 2 dividing the n-th Bell number.

The programs for A337985, the canonical program `A337985.P4904060652538816858` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337985 has offset 1).

The definition of A337985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337985.P4904060652538816858

`a(n-3)-a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=2, a(5)=0, a(6)=0, a(7)=2, a(8)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337985

/-- `a(n-3)-a(n-6)+a(n-9)` -/
def P4904060652538816858.Spec : Prop :=
  ∀ n, P4904060652538816858.a n = A337985 (n + 1)

theorem P4904060652538816858.correct : P4904060652538816858.Spec := by
  intro n
  simp only [A337985, Nat.add_sub_cancel]

end A337985

/-!
# A337986: Prime numbers p such that v_p(A000166(k)) = v_p(k-1) for all k > 1, where v_p(k) is the p-adic valuation of k.

The programs for A337986, there is no canonical definition to state claims against.
-/

/-! ## A337986.P1488976458995069730

`A123883(A096173(n+1))`
-/

namespace A337986.P1488976458995069730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123883 (A096173 (n + 1)).toNat

end

end A337986.P1488976458995069730

/-! ## A337986.P13473801361943910742

`A096173(n+1)+A043545(3*2^n)`
-/

namespace A337986.P13473801361943910742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096173 (n + 1) + A043545 (3 * 2 ^ n)

end

end A337986.P13473801361943910742

/-! ## A337986.P14242816264379962727

`A096173(n+1)+A033264(A007283(n))`
-/

namespace A337986.P14242816264379962727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096173 (n + 1) + A033264 (A007283 n).toNat

end

end A337986.P14242816264379962727

/-! ## A337986.P14906425820614921034

`A096173(n+1)+A023532(A051650(n))`
-/

namespace A337986.P14906425820614921034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096173 (n + 1) + A023532 (A051650 n).toNat

end

end A337986.P14906425820614921034

/-! ## A337986.P16488475785972915221

`A286059(A286062(n))+A096173(n+1)`
-/

namespace A337986.P16488475785972915221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286059 (A286062 n).toNat + A096173 (n + 1)

end

end A337986.P16488475785972915221

/-!
# A337987: Odd numbers whose distinct prime indices are pairwise coprime, where a singleton is not considered coprime unless it is (1).

The programs for A337987, there is no canonical definition to state claims against.
-/

/-! ## A337987.P14282084784588509289

`filter[A302697(n+1), A378442(#)]`
-/

namespace A337987.P14282084784588509289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A337987.P14282084784588509289

/-! ## A337987.P16789747998462173491

`filter[A328677(n+1), A000035(#)]`
-/

namespace A337987.P16789747998462173491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A337987.P16789747998462173491

/-! ## A337987.P17508637137060930441

`filter[A328677(n+1), A039982(#)]`
-/

namespace A337987.P17508637137060930441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A337987.P17508637137060930441

/-! ## A337987.P8909758259798689259

`filter[A328677(n+1), A093719(#)]`
-/

namespace A337987.P8909758259798689259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A337987.P8909758259798689259

/-! ## A337987.P11940716080341353932

`filter[A328677(n+1), A143731(#)]`
-/

namespace A337987.P11940716080341353932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A337987.P11940716080341353932

/-!
# A337988: Numbers that are the sum of the squares of two of their distinct divisors.

The programs for A337988, there is no canonical definition to state claims against.
-/

/-! ## A337988.P3910589722367445040

`∩[A028310(A094147(n+1)), A191217(n+1)]`
-/

namespace A337988.P3910589722367445040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A094147 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337988.P3910589722367445040

/-! ## A337988.P10419512958482885168

`∩[A066214(n+1), A243182(n+1)]`
-/

namespace A337988.P10419512958482885168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337988.P10419512958482885168

/-!
# A337991: Triangle read by rows: T(n,m) = Sum_{i=1..n} C(n,i-m)*C(n+m-i,i-1)*C(n+m-i,m)/n, with T(0,0)=1.

The programs for A337991, there is no canonical definition to state claims against.
-/

/-! ## A337991.P2128911942504782942

`A177151(A193920(n))%A090790(n+1)`
-/

namespace A337991.P2128911942504782942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177151 (A193920 n).toNat) (A090790 (n + 1))

end

end A337991.P2128911942504782942

/-!
# A337992: a(n) = Sum_{k=0..n} (n+1)*2^(n+k)*hypergeom([-n, k-n+1], [2], 1/2). Row sums of A337617.

The programs for A337992, there is no canonical definition to state claims against.
-/

/-! ## A337992.P885993158386262124

`A278029((11*6^n-1)/5)+A060681(n+1)`
-/

namespace A337992.P885993158386262124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (SequenceMachineLib.roundAway (((11 * 6 ^ n : ℤ) - 1 : ℚ) / 5)).toNat + A060681 (n + 1)

end

end A337992.P885993158386262124

/-!
# A337993: Numbers k such that L(k) < sigma(k) + k/Pi^2, where L(k) = floor(H(k) + exp(H(k)) * log(H(k))) and H(k) = Sum_{j=1..k} 1/j.

The programs for A337993, there is no canonical definition to state claims against.
-/

/-! ## A337993.P10402757488749974126

`record[A057144(xor(n, floor(n/2))+1)]`
-/

namespace A337993.P10402757488749974126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337993.P10402757488749974126

/-! ## A337993.P11255004010168866613

`A057144(A378133(n))`
-/

namespace A337993.P11255004010168866613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (A378133 n).toNat

end

end A337993.P11255004010168866613

/-! ## A337993.P4192950326210025869

`record[A057144(A039599(n))]`
-/

namespace A337993.P4192950326210025869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (A039599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337993.P4192950326210025869

/-! ## A337993.P15066977017825046044

`record[A057144(A054582(n))]`
-/

namespace A337993.P15066977017825046044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (A054582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337993.P15066977017825046044

/-! ## A337993.P15103590278134989780

`record[A057144(A070175(n))]`
-/

namespace A337993.P15103590278134989780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (A070175 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337993.P15103590278134989780

/-!
# A337994: T(n, k) = (k*(2*k+2)*(2*k+1)*(2*n-1)*binomial(2*(n-1),n-1))/(n*(n+1)*(n+2)) for n, k > 0 and T(0, 0) = 1. Triangle read by rows, for 0 <= k <= n.

The programs for A337994, there is no canonical definition to state claims against.
-/

/-! ## A337994.P3066879478171047560

`A099398(A003056(n))*A337995(n)`
-/

namespace A337994.P3066879478171047560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099398 (A003056 n).toNat * A337995 n

end

end A337994.P3066879478171047560

/-! ## A337994.P2444653246169899377

`lcm(A337982(A337983(2*n)), A337995(n))`
-/

namespace A337994.P2444653246169899377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A337982 (A337983 (2 * n)).toNat) (A337995 n)

end

end A337994.P2444653246169899377

/-! ## A337994.P14846091396523726384

`A337995(A002998(n))`
-/

namespace A337994.P14846091396523726384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337995 (A002998 n).toNat

end

end A337994.P14846091396523726384

/-! ## A337994.P12512421878851052290

`A337995(A023106(n))`
-/

namespace A337994.P12512421878851052290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337995 (A023106 n).toNat

end

end A337994.P12512421878851052290

/-! ## A337994.P3592502735506462425

`A337995(A024662(n))`
-/

namespace A337994.P3592502735506462425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337995 (A024662 n).toNat

end

end A337994.P3592502735506462425

/-!
# A337995: T(n, k) = A337994(n, k) / A099398(n). Triangle read by rows, for 0 <= k <= n.

The programs for A337995, there is no canonical definition to state claims against.
-/

/-! ## A337995.P15310735879858022906

`A337994(n)/A099398(A003056(n))`
-/

namespace A337995.P15310735879858022906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337994 n : ℚ) / (A099398 (A003056 n).toNat : ℚ)

end

end A337995.P15310735879858022906

/-! ## A337995.P12421445717371446534

`A337994(∑{digits}[n, #]^(lcm(n+1, ∑{digits}[n+1, #])/(n+1)))`
-/

namespace A337995.P12421445717371446534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337994 (SequenceMachineLib.roundAway (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ) ^ ((Nat.lcm (n + 1) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℚ) / (n + 1 : ℚ) : ℝ))).toNat

end

end A337995.P12421445717371446534

/-! ## A337995.P3633300506450289603

`A337994(n)%A008460(ceil(sqrt(n!)))`
-/

namespace A337995.P3633300506450289603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337994 n) (A008460 ⌈Real.sqrt (Nat.factorial n : ℝ)⌉.toNat)

end

end A337995.P3633300506450289603

/-! ## A337995.P8468866266540320748

`gcd(A006927(A008459(n)), A337994(n))`
-/

namespace A337995.P8468866266540320748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006927 (A008459 n).toNat) (A337994 n)

end

end A337995.P8468866266540320748

/-! ## A337995.P3377203084465980492

`A337994(gcd(A004861(n+1), A138364(n)))`
-/

namespace A337995.P3377203084465980492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337994 (Int.gcd (A004861 (n + 1)) (A138364 n))

end

end A337995.P3377203084465980492

/-!
# A337997: Triangle read by rows, generalized Eulerian polynomials evaluated at x = 1.

The programs for A337997, there is no canonical definition to state claims against.
-/

/-! ## A337997.P2285478365336001049

`abs(A098361(n)*A258773(n))`
-/

namespace A337997.P2285478365336001049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098361 n * A258773 n|

end

end A337997.P2285478365336001049

/-! ## A337997.P3886243231861372590

`A003056(n)!*A004248(A245300(n))`
-/

namespace A337997.P3886243231861372590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A004248 (A245300 n).toNat

end

end A337997.P3886243231861372590

/-! ## A337997.P51138550791884640

`gcd(A000038(n), A258773(n))*A098361(n)`
-/

namespace A337997.P51138550791884640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A258773 n) : ℤ) * A098361 n

end

end A337997.P51138550791884640

/-! ## A337997.P17701465854602388679

`lcm(A007318(n), A258773(n))*A098361(n)`
-/

namespace A337997.P17701465854602388679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007318 n) (A258773 n) : ℤ) * A098361 n

end

end A337997.P17701465854602388679

/-! ## A337997.P1007903240157737670

`gcd(A098361(n)*A258773(n), A008683(3*(n+1)²))`
-/

namespace A337997.P1007903240157737670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098361 n * A258773 n) (A008683 (3 * (n + 1) ^ 2))

end

end A337997.P1007903240157737670

