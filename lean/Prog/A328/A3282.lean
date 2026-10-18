import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C022
import Seq.B000.C024
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A328200: Cubes of the form N^3 = concat(a,b,c) with N = a+b+c; a, b, c > 0.

The programs for A328200, there is no canonical definition to state claims against.
-/

/-! ## A328200.P2983576203552551284

`A328198(n+1)^3`
-/

namespace A328200.P2983576203552551284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328198 (n + 1) ^ 3

end

end A328200.P2983576203552551284

/-! ## A328200.P2120235324328295929

`A328198(round(Δ[n²/2]))²*A328198(n+1)`
-/

namespace A328200.P2120235324328295929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328198 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat ^ 2 * A328198 (n + 1)

end

end A328200.P2120235324328295929

/-! ## A328200.P15701096366784018363

`A000578(A328198(n+1))`
-/

namespace A328200.P15701096366784018363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A328198 (n + 1)).toNat

end

end A328200.P15701096366784018363

/-!
# A328202: a(n) is the greatest common divisor of all the numbers in row n of Pascal's triangle excluding 1 and n.

The programs for A328202, the canonical program `A328202.P11274015948377113960` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328202 has offset 4).

The definition of A328202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328202.P5825355106342893562

`∏{d}[-a(n-1), A014963(n+2+#)]` with `a(0)=2`
-/

namespace A328202.P5825355106342893562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 (n + 2 + d)

end

end A328202.P5825355106342893562

namespace A328202

/-- `∏{d}[-a(n-1), A014963(n+2+#)]` -/
def P5825355106342893562.Spec : Prop :=
  ∀ n, P5825355106342893562.a n = A328202 (n + 4)

end A328202

/-! ## A328202.P11274015948377113960

`A051543(n+1)*A051543(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A328202

/-- `A051543(n+1)*A051543(n+2)` -/
def P11274015948377113960.Spec : Prop :=
  ∀ n, P11274015948377113960.a n = A328202 (n + 4)

theorem P11274015948377113960.correct : P11274015948377113960.Spec := by
  intro n
  simp only [A328202, Nat.add_sub_cancel]

end A328202

/-! ## A328202.P15406341361819384259

`A265574(n+2)*A265574(n+3)`
-/

namespace A328202.P15406341361819384259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265574 (n + 2) * A265574 (n + 3)

end

end A328202.P15406341361819384259

namespace A328202

/-- `A265574(n+2)*A265574(n+3)` -/
def P15406341361819384259.Spec : Prop :=
  ∀ n, P15406341361819384259.a n = A328202 (n + 4)

end A328202

/-! ## A328202.P10995089210859581035

`A014963(n+3)*A014963(n+4)`
-/

namespace A328202.P10995089210859581035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3) * A014963 (n + 4)

end

end A328202.P10995089210859581035

namespace A328202

/-- `A014963(n+3)*A014963(n+4)` -/
def P10995089210859581035.Spec : Prop :=
  ∀ n, P10995089210859581035.a n = A328202 (n + 4)

end A328202

/-! ## A328202.P14609375223104566109

`A020500(n+3)*A020500(n+4)`
-/

namespace A328202.P14609375223104566109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 3) * A020500 (n + 4)

end

end A328202.P14609375223104566109

namespace A328202

/-- `A020500(n+3)*A020500(n+4)` -/
def P14609375223104566109.Spec : Prop :=
  ∀ n, P14609375223104566109.a n = A328202 (n + 4)

end A328202

/-! ## A328202.P7186032852785298449

`A014963(A020705(n))*A051543(n+1)`
-/

namespace A328202.P7186032852785298449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020705 n).toNat * A051543 (n + 1)

end

end A328202.P7186032852785298449

namespace A328202

/-- `A014963(A020705(n))*A051543(n+1)` -/
def P7186032852785298449.Spec : Prop :=
  ∀ n, P7186032852785298449.a n = A328202 (n + 4)

end A328202

/-! ## A328202.P9434650813269481459

`∏{p}[A298026(A014963(n+1)), A014963(n+1+#)]`
-/

namespace A328202.P9434650813269481459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (n + 1 + p)

end

end A328202.P9434650813269481459

namespace A328202

/-- `∏{p}[A298026(A014963(n+1)), A014963(n+1+#)]` -/
def P9434650813269481459.Spec : Prop :=
  ∀ n, P9434650813269481459.a n = A328202 (n + 4)

end A328202

/-! ## A328202.P6300772606485257945

`A025555(n+3)/A025555(n+1)`
-/

namespace A328202.P6300772606485257945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025555 (n + 3) : ℚ) / (A025555 (n + 1) : ℚ)

end

end A328202.P6300772606485257945

namespace A328202

/-- `A025555(n+3)/A025555(n+1)` -/
def P6300772606485257945.Spec : Prop :=
  ∀ n, P6300772606485257945.a n = (A328202 (n + 4) : ℚ)

end A328202

/-! ## A328202.P12506168098205357866

`A003418(n+4)/A003418(n+2)`
-/

namespace A328202.P12506168098205357866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 4) : ℚ) / (A003418 (n + 2) : ℚ)

end

end A328202.P12506168098205357866

namespace A328202

/-- `A003418(n+4)/A003418(n+2)` -/
def P12506168098205357866.Spec : Prop :=
  ∀ n, P12506168098205357866.a n = (A328202 (n + 4) : ℚ)

end A328202

/-! ## A328202.P5575449516742694203

`A051426(n+4)/A051426(n+2)`
-/

namespace A328202.P5575449516742694203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 4) : ℚ) / (A051426 (n + 2) : ℚ)

end

end A328202.P5575449516742694203

namespace A328202

/-- `A051426(n+4)/A051426(n+2)` -/
def P5575449516742694203.Spec : Prop :=
  ∀ n, P5575449516742694203.a n = (A328202 (n + 4) : ℚ)

end A328202

/-!
# A328203: Expansion of Sum_{k>=1} k * x^k / (1 - x^(2*k))^2.

The programs for A328203, the canonical program `A328203.P2998697781727387960` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328203 has offset 1).

The definition of A328203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328203.P2998697781727387960

`((n+1)*A001227(n+1)+A002131(n+1))/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A328203

/-- `((n+1)*A001227(n+1)+A002131(n+1))/2` -/
def P2998697781727387960.Spec : Prop :=
  ∀ n, P2998697781727387960.a n = (A328203 (n + 1) : ℚ)

end A328203

/-! ## A328203.P15993149279988823828

`∑{d}[n+1, #*A027656((n+1)/#-1)]`
-/

namespace A328203.P15993149279988823828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A027656 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A328203.P15993149279988823828

namespace A328203

/-- `∑{d}[n+1, #*A027656((n+1)/#-1)]` -/
def P15993149279988823828.Spec : Prop :=
  ∀ n, P15993149279988823828.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P3419251546480992594

`A349354(n+1)-A349353(n+1)`
-/

namespace A328203.P3419251546480992594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349354 (n + 1) - A349353 (n + 1)

end

end A328203.P3419251546480992594

namespace A328203

/-- `A349354(n+1)-A349353(n+1)` -/
def P3419251546480992594.Spec : Prop :=
  ∀ n, P3419251546480992594.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P701057886081236702

`∑{d}[n+1, A003602(#)*A026741((n+1)/#)]`
-/

namespace A328203.P701057886081236702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A026741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328203.P701057886081236702

namespace A328203

/-- `∑{d}[n+1, A003602(#)*A026741((n+1)/#)]` -/
def P701057886081236702.Spec : Prop :=
  ∀ n, P701057886081236702.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P4747387592058958639

`∑{d}[n+1, A000010(#)*A113415((n+1)/#)]`
-/

namespace A328203.P4747387592058958639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A113415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328203.P4747387592058958639

namespace A328203

/-- `∑{d}[n+1, A000010(#)*A113415((n+1)/#)]` -/
def P4747387592058958639.Spec : Prop :=
  ∀ n, P4747387592058958639.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P2053307642999853605

`∑{d}[n+1, A109168(#)*A193356((n+1)/#)]`
-/

namespace A328203.P2053307642999853605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109168 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328203.P2053307642999853605

namespace A328203

/-- `∑{d}[n+1, A109168(#)*A193356((n+1)/#)]` -/
def P2053307642999853605.Spec : Prop :=
  ∀ n, P2053307642999853605.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P8007742943384456547

`∑{d}[n+1, A140472(#)*A193356((n+1)/#)]`
-/

namespace A328203.P8007742943384456547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140472 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328203.P8007742943384456547

namespace A328203

/-- `∑{d}[n+1, A140472(#)*A193356((n+1)/#)]` -/
def P8007742943384456547.Spec : Prop :=
  ∀ n, P8007742943384456547.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P9306516974041503490

`∑{d}[n+1, A000203(#)*A349444((n+1)/#)]`
-/

namespace A328203.P9306516974041503490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328203.P9306516974041503490

namespace A328203

/-- `∑{d}[n+1, A000203(#)*A349444((n+1)/#)]` -/
def P9306516974041503490.Spec : Prop :=
  ∀ n, P9306516974041503490.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P15616505445179011044

`∑{d}[n+1, A002131(#)*A349136((n+1)/#)]`
-/

namespace A328203.P15616505445179011044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328203.P15616505445179011044

namespace A328203

/-- `∑{d}[n+1, A002131(#)*A349136((n+1)/#)]` -/
def P15616505445179011044.Spec : Prop :=
  ∀ n, P15616505445179011044.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P6531376720696604640

`∑{d}[n+1, A245579(#)*A349447((n+1)/#)]`
-/

namespace A328203.P6531376720696604640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245579 d * A349447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328203.P6531376720696604640

namespace A328203

/-- `∑{d}[n+1, A245579(#)*A349447((n+1)/#)]` -/
def P6531376720696604640.Spec : Prop :=
  ∀ n, P6531376720696604640.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P1052263343787971750

`∑{d}[n+1, A326305(#)*A349371((n+1)/#)]`
-/

namespace A328203.P1052263343787971750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328203.P1052263343787971750

namespace A328203

/-- `∑{d}[n+1, A326305(#)*A349371((n+1)/#)]` -/
def P1052263343787971750.Spec : Prop :=
  ∀ n, P1052263343787971750.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P13720333807327850979

`A026741(A002131(n+1)+(n+1)*A001227(n+1))`
-/

namespace A328203.P13720333807327850979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002131 (n + 1) + (n + 1 : ℤ) * A001227 (n + 1)).toNat

end

end A328203.P13720333807327850979

namespace A328203

/-- `A026741(A002131(n+1)+(n+1)*A001227(n+1))` -/
def P13720333807327850979.Spec : Prop :=
  ∀ n, P13720333807327850979.a n = A328203 (n + 1)

end A328203

/-! ## A328203.P15638566803136233339

`A032742(A002131(n+1)+(n+1)*A001227(n+1))`
-/

namespace A328203.P15638566803136233339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002131 (n + 1) + (n + 1 : ℤ) * A001227 (n + 1)).toNat

end

end A328203.P15638566803136233339

namespace A328203

/-- `A032742(A002131(n+1)+(n+1)*A001227(n+1))` -/
def P15638566803136233339.Spec : Prop :=
  ∀ n, P15638566803136233339.a n = A328203 (n + 1)

end A328203

/-!
# A328204: Numbers of quadruples contained in the divisors of A328149(n).

The programs for A328204, there is no canonical definition to state claims against.
-/

/-! ## A328204.P12721251007741963364

`A001222(A024957(n+1)+∑[A196017(n+1)])`
-/

namespace A328204.P12721251007741963364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024957 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328204.P12721251007741963364

/-!
# A328205: Numbers m such that m and m+1 are consecutive factorial base Niven numbers (A118363).

The programs for A328205, the canonical program `A328205.P2491949014738295465` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328205 has offset 1).

The definition of A328205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328205.P1982631040893848447

`∩[A118363(n+1)-1, A118363(n+1)]`
-/

namespace A328205.P1982631040893848447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328205.P1982631040893848447

namespace A328205

/-- `∩[A118363(n+1)-1, A118363(n+1)]` -/
def P1982631040893848447.Spec : Prop :=
  ∀ n, (P1982631040893848447.a n : ℤ) = A328205 (n + 1)

end A328205

/-! ## A328205.P2491949014738295465

`A118363(eq[1, A118363(n+2)-A118363(n+1)]+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A328205

/-- `A118363(eq[1, A118363(n+2)-A118363(n+1)]+1)` -/
def P2491949014738295465.Spec : Prop :=
  ∀ n, P2491949014738295465.a n = A328205 (n + 1)

theorem P2491949014738295465.correct : P2491949014738295465.Spec := by
  intro n
  simp only [A328205, Nat.add_sub_cancel]

end A328205

/-! ## A328205.P11296613132182773617

`∩[A118363(n+1), A023443(A118363(n+1))]`
-/

namespace A328205.P11296613132182773617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A118363 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328205.P11296613132182773617

namespace A328205

/-- `∩[A118363(n+1), A023443(A118363(n+1))]` -/
def P11296613132182773617.Spec : Prop :=
  ∀ n, (P11296613132182773617.a n : ℤ) = A328205 (n + 1)

end A328205

/-!
# A328206: Starts of runs of 3 consecutive factorial base Niven numbers (A118363).

The programs for A328206, the canonical program `A328206.P13695476544207304548` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328206 has offset 1).

The definition of A328206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328206.P13695476544207304548

`∩[A328205(n+1)-1, A328205(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A328206

/-- `∩[A328205(n+1)-1, A328205(n+1)]` -/
def P13695476544207304548.Spec : Prop :=
  ∀ n, (P13695476544207304548.a n : ℤ) = A328206 (n + 1)

theorem P13695476544207304548.correct : P13695476544207304548.Spec := by
  intro n
  simp only [A328206, Nat.add_sub_cancel]

end A328206

/-! ## A328206.P13712776937913549189

`∩[A328205(n+1), A023443(A328205(n+1))]`
-/

namespace A328206.P13712776937913549189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A328205 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328206.P13712776937913549189

namespace A328206

/-- `∩[A328205(n+1), A023443(A328205(n+1))]` -/
def P13712776937913549189.Spec : Prop :=
  ∀ n, (P13712776937913549189.a n : ℤ) = A328206 (n + 1)

end A328206

/-!
# A328209: Numbers m such that m and m+1 are consecutive Zeckendorf-Niven numbers (A328208).

The programs for A328209, there is no canonical definition to state claims against.
-/

/-! ## A328209.P2859290196013415353

`A328208(eq[1, Δ[A328208(n+1)]]+1)`
-/

namespace A328209.P2859290196013415353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A328209.P2859290196013415353

/-! ## A328209.P14078030229435293674

`∩[A328208(n+1), A328208(n+2)-1]`
-/

namespace A328209.P14078030229435293674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328209.P14078030229435293674

/-! ## A328209.P9974218336768571862

`A328208(eq[1, A328208(n+2)-A328208(n+1)]+1)`
-/

namespace A328209.P9974218336768571862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 2) - A328208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A328209.P9974218336768571862

/-! ## A328209.P5973221184494469737

`∩[A328208(n+1), A023443(A328208(n+2))]`
-/

namespace A328209.P5973221184494469737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A328208 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328209.P5973221184494469737

/-!
# A328210: Starts of runs of 3 consecutive Zeckendorf-Niven numbers (A328208).

The programs for A328210, there is no canonical definition to state claims against.
-/

/-! ## A328210.P2094600613589147005

`∩[A328209(n+1)-1, A328209(n+1)]`
-/

namespace A328210.P2094600613589147005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328209 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328210.P2094600613589147005

/-! ## A328210.P6500604679581278527

`∩[A328209(n+1), A023443(A328209(n+1))]`
-/

namespace A328210.P6500604679581278527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A328209 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328210.P6500604679581278527

/-! ## A328210.P13575099918343490024

`∑[A111589(∑[A068395(n+1)])]`
-/

namespace A328210.P13575099918343490024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111589 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328210.P13575099918343490024

/-!
# A328211: Starts of runs of 4 consecutive Zeckendorf-Niven numbers (A328208).

The programs for A328211, there is no canonical definition to state claims against.
-/

/-! ## A328211.P16556626137247078005

`∩[A328210(n+1)-1, A328210(n+1)]`
-/

namespace A328211.P16556626137247078005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328210 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328211.P16556626137247078005

/-!
# A328213: Numbers m such that m and m+1 are consecutive lazy-Fibonacci-Niven numbers (A328212).

The programs for A328213, there is no canonical definition to state claims against.
-/

/-! ## A328213.P17811095078832654200

`∩[A328212(n+1)-1, A328212(n+1)]`
-/

namespace A328213.P17811095078832654200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328212 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328213.P17811095078832654200

/-! ## A328213.P18052590352392526729

`∩[A328212(n+1), A023443(A328212(n+1))]`
-/

namespace A328213.P18052590352392526729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A328212 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328213.P18052590352392526729

/-!
# A328216: Weak-Fibonacci-Niven numbers: numbers divisible by the number of terms in at least one representation as a sum of distinct Fibonacci numbers.

The programs for A328216, there is no canonical definition to state claims against.
-/

/-! ## A328216.P5066950022705629717

`∪[lt[1, A141323(n)], A124455(n+1)]`
-/

namespace A328216.P5066950022705629717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141323 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A328216.P5066950022705629717

/-! ## A328216.P5154380386615047715

`lt[A094373(n), A169623(A002144(3*n+1))]`
-/

namespace A328216.P5154380386615047715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A002144 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328216.P5154380386615047715

/-! ## A328216.P3493896538907656364

`∪[A328208(n+1), A328212(n+1)]%A338516(n+1)`
-/

namespace A328216.P3493896538907656364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328212 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A338516 (n + 1))

end

end A328216.P3493896538907656364

/-! ## A328216.P17872732865959701696

`∑[A000188(A037306(A191352(n+1)))]`
-/

namespace A328216.P17872732865959701696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A037306 (A191352 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328216.P17872732865959701696

/-!
# A328219: LCM of the prime indices of n, all plus 1.

The programs for A328219, there is no canonical definition to state claims against.
-/

/-! ## A328219.P16003186981995405472

`A290103(A003961(n+1))`
-/

namespace A328219.P16003186981995405472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A003961 (n + 1)).toNat

end

end A328219.P16003186981995405472

/-! ## A328219.P7460060157168648370

`A290103(A328915(n+1))`
-/

namespace A328219.P7460060157168648370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A328915 (n + 1)).toNat

end

end A328219.P7460060157168648370

/-! ## A328219.P17797594444015997284

`A316431(2*A003961(n+1))`
-/

namespace A328219.P17797594444015997284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A003961 (n + 1)).toNat

end

end A328219.P17797594444015997284

/-! ## A328219.P10667926443121556220

`A290103(A045965(n+1))`
-/

namespace A328219.P10667926443121556220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A045965 (n + 1)).toNat

end

end A328219.P10667926443121556220

/-! ## A328219.P4553069578330027848

`A290103(A253885(n)+1)`
-/

namespace A328219.P4553069578330027848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A253885 n + 1).toNat

end

end A328219.P4553069578330027848

/-! ## A328219.P1926602803838194389

`A290103(or(1, A253885(n)))`
-/

namespace A328219.P1926602803838194389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (Int.lor 1 (A253885 n)).toNat

end

end A328219.P1926602803838194389

/-! ## A328219.P15245464595203224995

`A290103(xor(1, A253885(n)))`
-/

namespace A328219.P15245464595203224995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (Int.xor 1 (A253885 n)).toNat

end

end A328219.P15245464595203224995

/-! ## A328219.P4945248608771352273

`A290103(A243501(n+1)-1)`
-/

namespace A328219.P4945248608771352273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A243501 (n + 1) - 1).toNat

end

end A328219.P4945248608771352273

/-! ## A328219.P12306018853123716942

`A290103(A283980(n+1))`
-/

namespace A328219.P12306018853123716942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A283980 (n + 1)).toNat

end

end A328219.P12306018853123716942

/-!
# A328220: Number of strict integer partitions of n with no pair of consecutive parts relatively prime.

The programs for A328220, there is no canonical definition to state claims against.
-/

/-! ## A328220.P6844045686851626188

`A008620(A339619(n)%A339619(3*n+2))`
-/

namespace A328220.P6844045686851626188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.tmod (A339619 n) (A339619 (3 * n + 2))).toNat

end

end A328220.P6844045686851626188

/-! ## A328220.P6405930938745333049

`A362142(A362142(n+1))+A337599(n)`
-/

namespace A328220.P6405930938745333049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362142 (A362142 (n + 1)).toNat + A337599 n

end

end A328220.P6405930938745333049

/-! ## A328220.P6741809560306104066

`A305936(A008574(n+3))*A318717(n)`
-/

namespace A328220.P6741809560306104066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A008574 (n + 3)).toNat * A318717 n

end

end A328220.P6741809560306104066

/-! ## A328220.P7801599096142239575

`or(A318717(n), A318721(A318746(n+1)))`
-/

namespace A328220.P7801599096142239575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318717 n) (A318721 (A318746 (n + 1)).toNat)

end

end A328220.P7801599096142239575

/-! ## A328220.P12083558648171906033

`or(A279329(A240851(3*n)), A318717(n))`
-/

namespace A328220.P12083558648171906033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279329 (A240851 (3 * n)).toNat) (A318717 n)

end

end A328220.P12083558648171906033

/-!
# A328221: Number of integer partitions of n with at least one pair of consecutive divisible parts.

The programs for A328221, there is no canonical definition to state claims against.
-/

/-! ## A328221.P2245796130103447366

`A000041(n)-A328171(n)`
-/

namespace A328221.P2245796130103447366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A328171 n

end

end A328221.P2245796130103447366

/-! ## A328221.P14722027549931572783

`A213598(n)-A328171(n)`
-/

namespace A328221.P14722027549931572783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A328171 n

end

end A328221.P14722027549931572783

/-! ## A328221.P12614910612877773181

`sqrt(A001255(n))-A328171(n)`
-/

namespace A328221.P12614910612877773181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A328171 n : ℝ)

end

end A328221.P12614910612877773181

/-! ## A328221.P15989850004718546463

`∑[A002865(n)]-A328171(n)`
-/

namespace A328221.P15989850004718546463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A328171 n

end

end A328221.P15989850004718546463

/-! ## A328221.P4273168389867564094

`A054225(∑[n])-A328171(n)`
-/

namespace A328221.P4273168389867564094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A328171 n

end

end A328221.P4273168389867564094

/-!
# A328222: Number of compositions of n into distinct parts such that the difference between adjacent parts is at least two.

The programs for A328222, there is no canonical definition to state claims against.
-/

/-! ## A328222.P14641804189411842542

`or(A155865(n), A247367(floor(2^(n-1))))`
-/

namespace A328222.P14641804189411842542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155865 n) (A247367 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat)

end

end A328222.P14641804189411842542

/-! ## A328222.P13807719864310532474

`or(A060475(n), A259361(ceil(2^(n-1))))`
-/

namespace A328222.P13807719864310532474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060475 n) (A259361 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A328222.P13807719864310532474

/-! ## A328222.P11050201494079847077

`or(A247367(ceil(2^(n-1))), A301330(n+1))`
-/

namespace A328222.P11050201494079847077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A247367 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A301330 (n + 1))

end

end A328222.P11050201494079847077

/-! ## A328222.P8284185045718238839

`or(A000196(A078485(n)), A005135(n))`
-/

namespace A328222.P8284185045718238839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A078485 n).toNat) (A005135 n)

end

end A328222.P8284185045718238839

/-! ## A328222.P16972973924537257561

`or(A000196(A078485(n)), A008647(n))`
-/

namespace A328222.P16972973924537257561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A078485 n).toNat) (A008647 n)

end

end A328222.P16972973924537257561

/-!
# A328223: Numbers k such that both k and k+4 are sums of two squares.

The programs for A328223, the canonical program `A328223.P7310187365408105857` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328223 has offset 1).

The definition of A328223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328223.P7310187365408105857

`∩[A020668(n+1)-4, A020668(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A328223

/-- `∩[A020668(n+1)-4, A020668(n+1)]` -/
def P7310187365408105857.Spec : Prop :=
  ∀ n, (P7310187365408105857.a n : ℤ) = A328223 (n + 1)

theorem P7310187365408105857.correct : P7310187365408105857.Spec := by
  intro n
  simp only [A328223, Nat.add_sub_cancel]

end A328223

/-! ## A328223.P10010200787724079596

`∩[A001481(n+1)-4, A001481(n+1)]`
-/

namespace A328223.P10010200787724079596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328223.P10010200787724079596

namespace A328223

/-- `∩[A001481(n+1)-4, A001481(n+1)]` -/
def P10010200787724079596.Spec : Prop :=
  ∀ n, (P10010200787724079596.a n : ℤ) = A328223 (n + 1)

end A328223

/-! ## A328223.P213773939580157811

`∩[floor(A128106(n+1)/2)-4, A166687(n+1)-1]`
-/

namespace A328223.P213773939580157811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128106 (n + 1) : ℚ) / 2⌋ - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328223.P213773939580157811

namespace A328223

/-- `∩[floor(A128106(n+1)/2)-4, A166687(n+1)-1]` -/
def P213773939580157811.Spec : Prop :=
  ∀ n, (P213773939580157811.a n : ℤ) = A328223 (n + 1)

end A328223

/-! ## A328223.P5253338523195248475

`eq[tan(A070176(n+4)), A070176(n)]`
-/

namespace A328223.P5253338523195248475
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A070176 (n + 4) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A328223.P5253338523195248475

namespace A328223

/-- `eq[tan(A070176(n+4)), A070176(n)]` -/
def P5253338523195248475.Spec : Prop :=
  ∀ n, (P5253338523195248475.a n : ℤ) = A328223 (n + 1)

end A328223

/-! ## A328223.P2019830158535278749

`eq[A064767(A262750(n+1)), A262750(n+5)]`
-/

namespace A328223.P2019830158535278749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064767 (A262750 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328223.P2019830158535278749

namespace A328223

/-- `eq[A064767(A262750(n+1)), A262750(n+5)]` -/
def P2019830158535278749.Spec : Prop :=
  ∀ n, (P2019830158535278749.a n : ℤ) = A328223 (n + 1)

end A328223

/-! ## A328223.P1461544013273207237

`eq[A008486(n)*A070176(n+4), A070176(n)]`
-/

namespace A328223.P1461544013273207237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A070176 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328223.P1461544013273207237

namespace A328223

/-- `eq[A008486(n)*A070176(n+4), A070176(n)]` -/
def P1461544013273207237.Spec : Prop :=
  ∀ n, (P1461544013273207237.a n : ℤ) = A328223 (n + 1)

end A328223

/-! ## A328223.P16944594080972854724

`eq[A016825(n)*A070176(n+4), A070176(n)]`
-/

namespace A328223.P16944594080972854724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n * A070176 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328223.P16944594080972854724

namespace A328223

/-- `eq[A016825(n)*A070176(n+4), A070176(n)]` -/
def P16944594080972854724.Spec : Prop :=
  ∀ n, (P16944594080972854724.a n : ℤ) = A328223 (n + 1)

end A328223

/-! ## A328223.P3105028402106212528

`eq[A016861(n)*A070176(n+4), A070176(n)]`
-/

namespace A328223.P3105028402106212528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A070176 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328223.P3105028402106212528

namespace A328223

/-- `eq[A016861(n)*A070176(n+4), A070176(n)]` -/
def P3105028402106212528.Spec : Prop :=
  ∀ n, (P3105028402106212528.a n : ℤ) = A328223 (n + 1)

end A328223

/-! ## A328223.P4189516123394118923

`eq[A035294(n)*A070176(n+4), A070176(n)]`
-/

namespace A328223.P4189516123394118923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n * A070176 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328223.P4189516123394118923

namespace A328223

/-- `eq[A035294(n)*A070176(n+4), A070176(n)]` -/
def P4189516123394118923.Spec : Prop :=
  ∀ n, (P4189516123394118923.a n : ℤ) = A328223 (n + 1)

end A328223

/-! ## A328223.P2450204200087284753

`eq[atan(A070176(2*n)), A070176(n+4)]`
-/

namespace A328223.P2450204200087284753
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A070176 (2 * n) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A328223.P2450204200087284753

namespace A328223

/-- `eq[atan(A070176(2*n)), A070176(n+4)]` -/
def P2450204200087284753.Spec : Prop :=
  ∀ n, (P2450204200087284753.a n : ℤ) = A328223 (n + 1)

end A328223

/-!
# A328224: Numbers k such that each of k, k+1, k+2, and k+4 is a sum of two squares.

The programs for A328224, there is no canonical definition to state claims against.
-/

/-! ## A328224.P3668818030286106891

`∩[2*A082982(n+1), A082982(n+1)]`
-/

namespace A328224.P3668818030286106891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328224.P3668818030286106891

/-! ## A328224.P17116464618177517439

`∩[A050795(n+1)-3, A082982(n+1)]`
-/

namespace A328224.P17116464618177517439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328224.P17116464618177517439

/-! ## A328224.P5379824364682760994

`∩[A050795(n+1)-3, A140612(n+1)]`
-/

namespace A328224.P5379824364682760994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328224.P5379824364682760994

/-! ## A328224.P7113474954153830882

`∩[A082982(n+1), A328223(n+1)]`
-/

namespace A328224.P7113474954153830882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328224.P7113474954153830882

/-! ## A328224.P13118929586235069062

`∩[A001481(n+1)-4, A082982(n+1)]`
-/

namespace A328224.P13118929586235069062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328224.P13118929586235069062

/-!
# A328230: Numbers m that divide 3^(m + 1) + 1.

The programs for A328230, there is no canonical definition to state claims against.
-/

/-! ## A328230.P6366899519744763675

`A055686(n+1)-1`
-/

namespace A328230.P6366899519744763675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055686 (n + 1) - 1

end

end A328230.P6366899519744763675

/-! ## A328230.P17703030682184981142

`A057428(n+1)+A055686(n+1)`
-/

namespace A328230.P17703030682184981142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A055686 (n + 1)

end

end A328230.P17703030682184981142

/-! ## A328230.P13314744457123444374

`A260196(n+2)+A055686(n+1)`
-/

namespace A328230.P13314744457123444374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A055686 (n + 1)

end

end A328230.P13314744457123444374

/-! ## A328230.P9738850296986117575

`A076479(A000040(n+1))+A055686(n+1)`
-/

namespace A328230.P9738850296986117575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A000040 (n + 1)).toNat + A055686 (n + 1)

end

end A328230.P9738850296986117575

/-! ## A328230.P5275800419708002222

`A219009(A006093(n+1)+1)+A055686(n+1)`
-/

namespace A328230.P5275800419708002222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (A006093 (n + 1) + 1).toNat + A055686 (n + 1)

end

end A328230.P5275800419708002222

/-! ## A328230.P12911480449113398590

`A111352(A000108(gcd(n, n+1)))+A055686(n+1)`
-/

namespace A328230.P12911480449113398590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111352 (A000108 (Nat.gcd n (n + 1))).toNat + A055686 (n + 1)

end

end A328230.P12911480449113398590

/-! ## A328230.P619835812933045863

`(A296369(n+1)+A055686(n+1))%A055685(n+1)`
-/

namespace A328230.P619835812933045863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296369 (n + 1) + A055686 (n + 1)) (A055685 (n + 1))

end

end A328230.P619835812933045863

/-! ## A328230.P6307596224405246338

`A257075(A158065(n+1))+A055686(n+1)`
-/

namespace A328230.P6307596224405246338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A158065 (n + 1)).toNat + A055686 (n + 1)

end

end A328230.P6307596224405246338

/-! ## A328230.P13708446007969575947

`A309873(A090288(n))+A055686(n+1)`
-/

namespace A328230.P13708446007969575947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A090288 n).toNat + A055686 (n + 1)

end

end A328230.P13708446007969575947

/-! ## A328230.P7750593192668302250

`A076479(A001583(n+1))+A055686(n+1)`
-/

namespace A328230.P7750593192668302250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A001583 (n + 1)).toNat + A055686 (n + 1)

end

end A328230.P7750593192668302250

/-!
# A328231: a(n) = gcd(n, A048673(n)).

The programs for A328231, the canonical program `A328231.P16100151263577803873` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328231 has offset 1).

The definition of A328231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328231.P16100151263577803873

`gcd(n+1, A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A328231

/-- `gcd(n+1, A048673(n+1))` -/
def P16100151263577803873.Spec : Prop :=
  ∀ n, (P16100151263577803873.a n : ℤ) = A328231 (n + 1)

theorem P16100151263577803873.correct : P16100151263577803873.Spec := by
  intro n
  simp only [A328231, Nat.add_sub_cancel]

end A328231

/-! ## A328231.P12352903861726648840

`gcd(2*(n+1), A243501(n+1))/2`
-/

namespace A328231.P12352903861726648840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * (n + 1) : ℤ) (A243501 (n + 1)) : ℚ) / 2

end

end A328231.P12352903861726648840

namespace A328231

/-- `gcd(2*(n+1), A243501(n+1))/2` -/
def P12352903861726648840.Spec : Prop :=
  ∀ n, P12352903861726648840.a n = (A328231 (n + 1) : ℚ)

end A328231

/-! ## A328231.P4732924235702322341

`gcd(A048673(n+1), A131738(n))`
-/

namespace A328231.P4732924235702322341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048673 (n + 1)) (A131738 n)

end

end A328231.P4732924235702322341

namespace A328231

/-- `gcd(A048673(n+1), A131738(n))` -/
def P4732924235702322341.Spec : Prop :=
  ∀ n, (P4732924235702322341.a n : ℤ) = A328231 (n + 1)

end A328231

/-! ## A328231.P10097704306228121752

`gcd(A000027(n+1), A349573(n+1))`
-/

namespace A328231.P10097704306228121752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A349573 (n + 1))

end

end A328231.P10097704306228121752

namespace A328231

/-- `gcd(A000027(n+1), A349573(n+1))` -/
def P10097704306228121752.Spec : Prop :=
  ∀ n, (P10097704306228121752.a n : ℤ) = A328231 (n + 1)

end A328231

/-! ## A328231.P9406140839234212390

`gcd(n+1, A008619(A253885(n)))`
-/

namespace A328231.P9406140839234212390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008619 (A253885 n).toNat)

end

end A328231.P9406140839234212390

namespace A328231

/-- `gcd(n+1, A008619(A253885(n)))` -/
def P9406140839234212390.Spec : Prop :=
  ∀ n, (P9406140839234212390.a n : ℤ) = A328231 (n + 1)

end A328231

/-! ## A328231.P13539532978117213247

`gcd(A028242(A253885(n)), A191002(n+1))`
-/

namespace A328231.P13539532978117213247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028242 (A253885 n).toNat) (A191002 (n + 1))

end

end A328231.P13539532978117213247

namespace A328231

/-- `gcd(A028242(A253885(n)), A191002(n+1))` -/
def P13539532978117213247.Spec : Prop :=
  ∀ n, (P13539532978117213247.a n : ℤ) = A328231 (n + 1)

end A328231

/-! ## A328231.P14093943116768405636

`gcd(A242112(2*n), A242112(A253885(n)))`
-/

namespace A328231.P14093943116768405636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242112 (2 * n)) (A242112 (A253885 n).toNat)

end

end A328231.P14093943116768405636

namespace A328231

/-- `gcd(A242112(2*n), A242112(A253885(n)))` -/
def P14093943116768405636.Spec : Prop :=
  ∀ n, (P14093943116768405636.a n : ℤ) = A328231 (n + 1)

end A328231

/-! ## A328231.P8478260311678254547

`gcd(A003602(2*n+1), A003602(A003961(n+1)))`
-/

namespace A328231.P8478260311678254547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (2 * n + 1)) (A003602 (A003961 (n + 1)).toNat)

end

end A328231.P8478260311678254547

namespace A328231

/-- `gcd(A003602(2*n+1), A003602(A003961(n+1)))` -/
def P8478260311678254547.Spec : Prop :=
  ∀ n, (P8478260311678254547.a n : ℤ) = A328231 (n + 1)

end A328231

/-! ## A328231.P12461781307081599625

`gcd(n-A003961(n+1), A032742(A003961(n+1)+1))`
-/

namespace A328231.P12461781307081599625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A003961 (n + 1)) (A032742 (A003961 (n + 1) + 1).toNat)

end

end A328231.P12461781307081599625

namespace A328231

/-- `gcd(n-A003961(n+1), A032742(A003961(n+1)+1))` -/
def P12461781307081599625.Spec : Prop :=
  ∀ n, (P12461781307081599625.a n : ℤ) = A328231 (n + 1)

end A328231

/-!
# A328232: Numbers whose arithmetic derivative (A003415) is a primorial number, including cases where it is the first primorial, A002110(0) = 1.

The programs for A328232, there is no canonical definition to state claims against.
-/

/-! ## A328232.P1739507524337508403

`∪[A000040(n+1), A327978(n+1)]`
-/

namespace A328232.P1739507524337508403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328232.P1739507524337508403

/-! ## A328232.P13930660040183932584

`eq[A003415(n), A046523(A327858(n))]`
-/

namespace A328232.P13930660040183932584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A327858 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328232.P13930660040183932584

/-! ## A328232.P4544728247390095697

`eq[A046523(A327858(n)), A319703(n-(1-n)%(n+1)+1)]`
-/

namespace A328232.P4544728247390095697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A327858 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328232.P4544728247390095697

/-! ## A328232.P11595820805800771751

`eq[1, A276150(A003415(n))]`
-/

namespace A328232.P11595820805800771751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328232.P11595820805800771751

/-! ## A328232.P16797454373667899894

`eq[A010141(n), A328835(A003415(n))]`
-/

namespace A328232.P16797454373667899894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328835 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328232.P16797454373667899894

/-! ## A328232.P8679831404550998869

`eq[1, A347126(A003415(n)%A018804(n+1))]`
-/

namespace A328232.P8679831404550998869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347126 (Int.tmod (A003415 n) (A018804 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328232.P8679831404550998869

/-! ## A328232.P7018868693389284729

`eq[A008836(n+1)², A347126(A003415(n))]`
-/

namespace A328232.P7018868693389284729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347126 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328232.P7018868693389284729

/-! ## A328232.P6263883718472809866

`eq[1, A327860(A003415(n+1))]+1`
-/

namespace A328232.P6263883718472809866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 (A003415 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328232.P6263883718472809866

/-! ## A328232.P8413125659430062563

`eq[A010121(n), A329029(A003415(n))]`
-/

namespace A328232.P8413125659430062563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329029 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328232.P8413125659430062563

/-! ## A328232.P10528907900238504793

`eq[A014306(n), A317836(A003415(n))]`
-/

namespace A328232.P10528907900238504793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317836 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328232.P10528907900238504793

/-!
# A328233: Numbers n such that the arithmetic derivative of A276086(n) is prime.

The programs for A328233, there is no canonical definition to state claims against.
-/

/-! ## A328233.P10130629674569134507

`eq[1, A370131(n)]`
-/

namespace A328233.P10130629674569134507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328233.P10130629674569134507

/-! ## A328233.P15468185121656085524

`eq[3, A328388(n)]`
-/

namespace A328233.P15468185121656085524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328233.P15468185121656085524

/-! ## A328233.P10776487679093128387

`lt[(A008908(A328388(n)+1)-3)², 1]`
-/

namespace A328233.P10776487679093128387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008908 (A328388 n + 1).toNat - 3) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328233.P10776487679093128387

/-! ## A328233.P16163497430962714577

`A276156(eq[1, A003415(A342921(n))])`
-/

namespace A328233.P16163497430962714577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A342921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328233.P16163497430962714577

/-! ## A328233.P865019699246577284

`eq[A007918(A329031(n)), A327860(n)]`
-/

namespace A328233.P865019699246577284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A329031 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328233.P865019699246577284

/-!
# A328234: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117) > 1.

The programs for A328234, the canonical program `A328234.P5040501548362449687` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328234 has offset 1).

The definition of A328234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328234.P6297761626594427394

`lt[0, A341994(n)]`
-/

namespace A328234.P6297761626594427394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328234.P6297761626594427394

namespace A328234

/-- `lt[0, A341994(n)]` -/
def P6297761626594427394.Spec : Prop :=
  ∀ n, (P6297761626594427394.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P5040501548362449687

`eq[1, A342003(n+2)]+2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A328234

/-- `eq[1, A342003(n+2)]+2` -/
def P5040501548362449687.Spec : Prop :=
  ∀ n, (P5040501548362449687.a n : ℤ) = A328234 (n + 1)

theorem P5040501548362449687.correct : P5040501548362449687.Spec := by
  intro n
  simp only [A328234, Nat.add_sub_cancel]

end A328234

/-! ## A328234.P7549453085605413917

`lt[A354923(2*(n+1)), A354874(n+1)]+1`
-/

namespace A328234.P7549453085605413917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354923 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328234.P7549453085605413917

namespace A328234

/-- `lt[A354923(2*(n+1)), A354874(n+1)]+1` -/
def P7549453085605413917.Spec : Prop :=
  ∀ n, (P7549453085605413917.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P14555136406711561598

`eq[A210964(A052409(n+4)), A341994(n)]`
-/

namespace A328234.P14555136406711561598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (A052409 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328234.P14555136406711561598

namespace A328234

/-- `eq[A210964(A052409(n+4)), A341994(n)]` -/
def P14555136406711561598.Spec : Prop :=
  ∀ n, (P14555136406711561598.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P16829473396478141127

`eq[A051903(A007947(n+5)), A341994(n)]`
-/

namespace A328234.P16829473396478141127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007947 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328234.P16829473396478141127

namespace A328234

/-- `eq[A051903(A007947(n+5)), A341994(n)]` -/
def P16829473396478141127.Spec : Prop :=
  ∀ n, (P16829473396478141127.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P7700779273685018603

`eq[A305393(A140101(n+1)-(n+1)), A341994(n)]`
-/

namespace A328234.P7700779273685018603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (A140101 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328234.P7700779273685018603

namespace A328234

/-- `eq[A305393(A140101(n+1)-(n+1)), A341994(n)]` -/
def P7700779273685018603.Spec : Prop :=
  ∀ n, (P7700779273685018603.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P9775075665853182386

`eq[A317193(A140101(n+1)-(n+1)), A341994(n)]`
-/

namespace A328234.P9775075665853182386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (A140101 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328234.P9775075665853182386

namespace A328234

/-- `eq[A317193(A140101(n+1)-(n+1)), A341994(n)]` -/
def P9775075665853182386.Spec : Prop :=
  ∀ n, (P9775075665853182386.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P64941610318940170

`eq[A010121(n), A341994(n)]`
-/

namespace A328234.P64941610318940170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328234.P64941610318940170

namespace A328234

/-- `eq[A010121(n), A341994(n)]` -/
def P64941610318940170.Spec : Prop :=
  ∀ n, (P64941610318940170.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P4744562156775733835

`eq[A010130(n), A341994(n)]`
-/

namespace A328234.P4744562156775733835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328234.P4744562156775733835

namespace A328234

/-- `eq[A010130(n), A341994(n)]` -/
def P4744562156775733835.Spec : Prop :=
  ∀ n, (P4744562156775733835.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P10378434151459796011

`eq[A010153(n), A341994(n)]`
-/

namespace A328234.P10378434151459796011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328234.P10378434151459796011

namespace A328234

/-- `eq[A010153(n), A341994(n)]` -/
def P10378434151459796011.Spec : Prop :=
  ∀ n, (P10378434151459796011.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P10649796516694984641

`eq[A040037(n), A341994(n)]`
-/

namespace A328234.P10649796516694984641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328234.P10649796516694984641

namespace A328234

/-- `eq[A040037(n), A341994(n)]` -/
def P10649796516694984641.Spec : Prop :=
  ∀ n, (P10649796516694984641.a n : ℤ) = A328234 (n + 1)

end A328234

/-! ## A328234.P10106158349374199638

`filter[A328393(n+1), A005171(#)]`
-/

namespace A328234.P10106158349374199638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A328234.P10106158349374199638

namespace A328234

/-- `filter[A328393(n+1), A005171(#)]` -/
def P10106158349374199638.Spec : Prop :=
  ∀ n, P10106158349374199638.a n = A328234 (n + 1)

end A328234

/-! ## A328234.P6471292300201773807

`filter[A328393(n+1), A066247(#)]`
-/

namespace A328234.P6471292300201773807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A328234.P6471292300201773807

namespace A328234

/-- `filter[A328393(n+1), A066247(#)]` -/
def P6471292300201773807.Spec : Prop :=
  ∀ n, P6471292300201773807.a n = A328234 (n + 1)

end A328234

/-! ## A328234.P6084669298038931905

`filter[A328393(n+1), A174898(#)]`
-/

namespace A328234.P6084669298038931905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A328234.P6084669298038931905

namespace A328234

/-- `filter[A328393(n+1), A174898(#)]` -/
def P6084669298038931905.Spec : Prop :=
  ∀ n, P6084669298038931905.a n = A328234 (n + 1)

end A328234

/-! ## A328234.P1633159692472269852

`filter[A328393(n+1), A202238(#)]`
-/

namespace A328234.P1633159692472269852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A328234.P1633159692472269852

namespace A328234

/-- `filter[A328393(n+1), A202238(#)]` -/
def P1633159692472269852.Spec : Prop :=
  ∀ n, P1633159692472269852.a n = A328234 (n + 1)

end A328234

/-! ## A328234.P8106023145652952360

`filter[A328393(n+1), A341994(#)]`
-/

namespace A328234.P8106023145652952360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328234.P8106023145652952360

namespace A328234

/-- `filter[A328393(n+1), A341994(#)]` -/
def P8106023145652952360.Spec : Prop :=
  ∀ n, P8106023145652952360.a n = A328234 (n + 1)

end A328234

/-! ## A328234.P13412281804763276918

`filter[A358215(n+1), A341994(#)]`
-/

namespace A328234.P13412281804763276918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328234.P13412281804763276918

namespace A328234

/-- `filter[A358215(n+1), A341994(#)]` -/
def P13412281804763276918.Spec : Prop :=
  ∀ n, P13412281804763276918.a n = A328234 (n + 1)

end A328234

/-! ## A328234.P4954544802712174502

`filter[A368902(n+1), A341994(#)]`
-/

namespace A328234.P4954544802712174502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328234.P4954544802712174502

namespace A328234

/-- `filter[A368902(n+1), A341994(#)]` -/
def P4954544802712174502.Spec : Prop :=
  ∀ n, P4954544802712174502.a n = A328234 (n + 1)

end A328234

/-! ## A328234.P6473274291639089722

`filter[A377880(n+1), A341994(#)]`
-/

namespace A328234.P6473274291639089722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328234.P6473274291639089722

namespace A328234

/-- `filter[A377880(n+1), A341994(#)]` -/
def P6473274291639089722.Spec : Prop :=
  ∀ n, P6473274291639089722.a n = A328234 (n + 1)

end A328234

/-! ## A328234.P8361936389697995612

`filter[A377880(n+1), A354874(#)]`
-/

namespace A328234.P8361936389697995612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328234.P8361936389697995612

namespace A328234

/-- `filter[A377880(n+1), A354874(#)]` -/
def P8361936389697995612.Spec : Prop :=
  ∀ n, P8361936389697995612.a n = A328234 (n + 1)

end A328234

/-!
# A328237: Quotient A003415(n+k)/A003415(n) for the least k > 0 for which such a quotient is an integer. Here A003415(x) is the arithmetic derivative of x.

The programs for A328237, there is no canonical definition to state claims against.
-/

/-! ## A328237.P14622753875397979778

`A003415(n+2+A328235(n+2))/A003415(n+2)`
-/

namespace A328237.P14622753875397979778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 ((n + 2 : ℤ) + A328235 (n + 2)).toNat : ℚ) / (A003415 (n + 2) : ℚ)

end

end A328237.P14622753875397979778

/-!
# A328238: Quotient A003415(n*m)/A003415(n) for the least m > 1 for which such a quotient is an integer. Here A003415(x) is the arithmetic derivative of x.

The programs for A328238, there is no canonical definition to state claims against.
-/

/-! ## A328238.P4652225924013638362

`A003415((n+2)*A328236(n+2))/A003415(n+2)`
-/

namespace A328238.P4652225924013638362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 ((n + 2 : ℤ) * A328236 (n + 2)).toNat : ℚ) / (A003415 (n + 2) : ℚ)

end

end A328238.P4652225924013638362

/-!
# A328239: Numbers whose third arithmetic derivative (A099306) is prime.

The programs for A328239, there is no canonical definition to state claims against.
-/

/-! ## A328239.P10423796884570322291

`eq[5, A256750(n)]`
-/

namespace A328239.P10423796884570322291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328239.P10423796884570322291

/-! ## A328239.P171005103554575464

`eq[1, A258644(n)]`
-/

namespace A328239.P171005103554575464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328239.P171005103554575464

/-! ## A328239.P1225539354318842407

`eq[5, A099307(n+1)]+1`
-/

namespace A328239.P1225539354318842407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328239.P1225539354318842407

/-! ## A328239.P14503294361628583621

`eq[5, A099307(A028310(n))]`
-/

namespace A328239.P14503294361628583621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328239.P14503294361628583621

/-! ## A328239.P4982170981577171660

`eq[1, A099306(A003415(n))]`
-/

namespace A328239.P4982170981577171660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328239.P4982170981577171660

/-!
# A328241: Numbers n for which A327860(n) = A003415(A276086(n)) is not a squarefree number.

The programs for A328241, there is no canonical definition to state claims against.
-/

/-! ## A328241.P8116021959173533412

`comp[A328242(n+1)]`
-/

namespace A328241.P8116021959173533412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328241.P8116021959173533412

/-! ## A328241.P14419511503427413909

`comp[lt[A328391(n+1), 2]+1]`
-/

namespace A328241.P14419511503427413909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A328241.P14419511503427413909

/-! ## A328241.P15702685166275118083

`eq[0, char[A328242(A064413(n+1))]]`
-/

namespace A328241.P15702685166275118083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328242 (A064413 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328241.P15702685166275118083

/-! ## A328241.P1305732183787418169

`eq[0, char[A328242(A121216(n+1))]]`
-/

namespace A328241.P1305732183787418169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328242 (A121216 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328241.P1305732183787418169

/-! ## A328241.P9662262353025837553

`eq[char[A328242(n+1)], A000007(n+1)]`
-/

namespace A328241.P9662262353025837553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328242 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328241.P9662262353025837553

/-!
# A328242: Numbers k such that A003415(A276086(k)) is a squarefree number, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A328242, there is no canonical definition to state claims against.
-/

/-! ## A328242.P6055362988896989859

`lt[A328391(n+1), 2]+1`
-/

namespace A328242.P6055362988896989859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328242.P6055362988896989859

/-! ## A328242.P15615450886458435886

`eq[A001006(A328391(n+1)), A014578(3*n+2)]+1`
-/

namespace A328242.P15615450886458435886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A328391 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328242.P15615450886458435886

/-! ## A328242.P273374333019541662

`eq[1, A370130(n)]`
-/

namespace A328242.P273374333019541662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328242.P273374333019541662

/-! ## A328242.P15651305125807383722

`record[(n+1)/A370130(n+1)]`
-/

namespace A328242.P15651305125807383722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A370130 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328242.P15651305125807383722

/-! ## A328242.P6211055728259421953

`eq[1, gcd(A327860(n), A370131(n))]`
-/

namespace A328242.P6211055728259421953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327860 n) (A370131 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328242.P6211055728259421953

/-!
# A328243: Numbers whose arithmetic derivative (A003415) is larger than 1 and one of the terms of A143293 (partial sums of primorials).

The programs for A328243, there is no canonical definition to state claims against.
-/

/-! ## A328243.P4111032012409196292

`A369240(A306202(n+1)%A003022(3*n+4))`
-/

namespace A328243.P4111032012409196292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369240 (Int.tmod (A306202 (n + 1)) (A003022 (3 * n + 4))).toNat

end

end A328243.P4111032012409196292

/-! ## A328243.P7382243737688723997

`A369240(n+1)+A316524(4^n)`
-/

namespace A328243.P7382243737688723997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369240 (n + 1) + A316524 (4 ^ n)

end

end A328243.P7382243737688723997

/-! ## A328243.P12748323131006540448

`A369240(n+1)%A350186(n+1)`
-/

namespace A328243.P12748323131006540448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369240 (n + 1)) (A350186 (n + 1))

end

end A328243.P12748323131006540448

/-! ## A328243.P9348769477601517059

`A369240(n+1)+A065043(A004171(n))`
-/

namespace A328243.P9348769477601517059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369240 (n + 1) + A065043 (A004171 n).toNat

end

end A328243.P9348769477601517059

/-!
# A328244: Numbers whose second arithmetic derivative (A068346) is a squarefree number (A005117).

The programs for A328244, the canonical program `A328244.P7229440794917836757` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328244 has offset 1).

The definition of A328244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328244.P7229440794917836757

`eq[1, A354874(A003415(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A328244

/-- `eq[1, A354874(A003415(n))]` -/
def P7229440794917836757.Spec : Prop :=
  ∀ n, (P7229440794917836757.a n : ℤ) = A328244 (n + 1)

theorem P7229440794917836757.correct : P7229440794917836757.Spec := by
  intro n
  simp only [A328244, Nat.add_sub_cancel]

end A328244

/-! ## A328244.P756071467365360995

`eq[1, A354874(A129283(n)-n)]`
-/

namespace A328244.P756071467365360995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (A129283 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328244.P756071467365360995

namespace A328244

/-- `eq[1, A354874(A129283(n)-n)]` -/
def P756071467365360995.Spec : Prop :=
  ∀ n, (P756071467365360995.a n : ℤ) = A328244 (n + 1)

end A328244

/-! ## A328244.P13478555105092569538

`eq[1, gcd(A068346(n), A099306(n))]`
-/

namespace A328244.P13478555105092569538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068346 n) (A099306 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328244.P13478555105092569538

namespace A328244

/-- `eq[1, gcd(A068346(n), A099306(n))]` -/
def P13478555105092569538.Spec : Prop :=
  ∀ n, (P13478555105092569538.a n : ℤ) = A328244 (n + 1)

end A328244

/-! ## A328244.P18240337294087315642

`lt[A354874(n), 2*A354874(A003415(n))]`
-/

namespace A328244.P18240337294087315642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A354874 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328244.P18240337294087315642

namespace A328244

/-- `lt[A354874(n), 2*A354874(A003415(n))]` -/
def P18240337294087315642.Spec : Prop :=
  ∀ n, (P18240337294087315642.a n : ℤ) = A328244 (n + 1)

end A328244

/-! ## A328244.P4645361231899656099

`eq[1, A354874(A319703(n-(1-n)%(n+1)+1))]`
-/

namespace A328244.P4645361231899656099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328244.P4645361231899656099

namespace A328244

/-- `eq[1, A354874(A319703(n-(1-n)%(n+1)+1))]` -/
def P4645361231899656099.Spec : Prop :=
  ∀ n, (P4645361231899656099.a n : ℤ) = A328244 (n + 1)

end A328244

/-! ## A328244.P17332787535118136605

`eq[A087049(A068346(n)), A341995(n)]`
-/

namespace A328244.P17332787535118136605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A068346 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328244.P17332787535118136605

namespace A328244

/-- `eq[A087049(A068346(n)), A341995(n)]` -/
def P17332787535118136605.Spec : Prop :=
  ∀ n, (P17332787535118136605.a n : ℤ) = A328244 (n + 1)

end A328244

/-! ## A328244.P13610455480577110767

`eq[A105570(A068346(n)), A339579(n+1)]`
-/

namespace A328244.P13610455480577110767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A068346 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328244.P13610455480577110767

namespace A328244

/-- `eq[A105570(A068346(n)), A339579(n+1)]` -/
def P13610455480577110767.Spec : Prop :=
  ∀ n, (P13610455480577110767.a n : ℤ) = A328244 (n + 1)

end A328244

/-! ## A328244.P9713527282441415940

`eq[1, A255326(A068346(n))]`
-/

namespace A328244.P9713527282441415940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328244.P9713527282441415940

namespace A328244

/-- `eq[1, A255326(A068346(n))]` -/
def P9713527282441415940.Spec : Prop :=
  ∀ n, (P9713527282441415940.a n : ℤ) = A328244 (n + 1)

end A328244

/-!
# A328245: Numbers whose second arithmetic derivative (A068346) is a squarefree number (A005117), but the first derivative (A003415) is not.

The programs for A328245, the canonical program `A328245.P6030416023601499540` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328245 has offset 1).

The definition of A328245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328245.P6030416023601499540

`∩[A328244(n+1), A328303(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A328245

/-- `∩[A328244(n+1), A328303(n+1)]` -/
def P6030416023601499540.Spec : Prop :=
  ∀ n, (P6030416023601499540.a n : ℤ) = A328245 (n + 1)

theorem P6030416023601499540.correct : P6030416023601499540.Spec := by
  intro n
  simp only [A328245, Nat.add_sub_cancel]

end A328245

/-! ## A328245.P2631237395318505669

`lt[A341994(n), A341994(A003415(n))]`
-/

namespace A328245.P2631237395318505669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328245.P2631237395318505669

namespace A328245

/-- `lt[A341994(n), A341994(A003415(n))]` -/
def P2631237395318505669.Spec : Prop :=
  ∀ n, (P2631237395318505669.a n : ℤ) = A328245 (n + 1)

end A328245

/-! ## A328245.P5305152957565270853

`lt[A354874(n), A354874(A003415(n))]`
-/

namespace A328245.P5305152957565270853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328245.P5305152957565270853

namespace A328245

/-- `lt[A354874(n), A354874(A003415(n))]` -/
def P5305152957565270853.Spec : Prop :=
  ∀ n, (P5305152957565270853.a n : ℤ) = A328245 (n + 1)

end A328245

/-! ## A328245.P14591825569555516085

`lt[A341994(n), A341994(A129283(n)-n)]`
-/

namespace A328245.P14591825569555516085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A129283 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328245.P14591825569555516085

namespace A328245

/-- `lt[A341994(n), A341994(A129283(n)-n)]` -/
def P14591825569555516085.Spec : Prop :=
  ∀ n, (P14591825569555516085.a n : ℤ) = A328245 (n + 1)

end A328245

/-! ## A328245.P17661579753561390462

`lt[A354874(n), A354874(A129283(n)-n)]`
-/

namespace A328245.P17661579753561390462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (A129283 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328245.P17661579753561390462

namespace A328245

/-- `lt[A354874(n), A354874(A129283(n)-n)]` -/
def P17661579753561390462.Spec : Prop :=
  ∀ n, (P17661579753561390462.a n : ℤ) = A328245 (n + 1)

end A328245

/-! ## A328245.P4715021456014415734

`lt[A341994(n), A341994(A319703(n-(1-n)%(n+1)+1))]`
-/

namespace A328245.P4715021456014415734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328245.P4715021456014415734

namespace A328245

/-- `lt[A341994(n), A341994(A319703(n-(1-n)%(n+1)+1))]` -/
def P4715021456014415734.Spec : Prop :=
  ∀ n, (P4715021456014415734.a n : ℤ) = A328245 (n + 1)

end A328245

/-!
# A328246: Numbers whose third arithmetic derivative (A099306) is a squarefree number (A005117).

The programs for A328246, the canonical program `A328246.P15459101865272175880` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328246 has offset 1).

The definition of A328246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328246.P15459101865272175880

`lt[0, A354874(A068346(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A328246

/-- `lt[0, A354874(A068346(n))]` -/
def P15459101865272175880.Spec : Prop :=
  ∀ n, (P15459101865272175880.a n : ℤ) = A328246 (n + 1)

theorem P15459101865272175880.correct : P15459101865272175880.Spec := by
  intro n
  simp only [A328246, Nat.add_sub_cancel]

end A328246

/-! ## A328246.P4755391645929003627

`eq[A054977(n), A354874(A068346(n))]`
-/

namespace A328246.P4755391645929003627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328246.P4755391645929003627

namespace A328246

/-- `eq[A054977(n), A354874(A068346(n))]` -/
def P4755391645929003627.Spec : Prop :=
  ∀ n, (P4755391645929003627.a n : ℤ) = A328246 (n + 1)

end A328246

/-! ## A328246.P5169286230376731299

`eq[A139976(n+1)%2, A354874(A068346(n))]`
-/

namespace A328246.P5169286230376731299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139976 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328246.P5169286230376731299

namespace A328246

/-- `eq[A139976(n+1)%2, A354874(A068346(n))]` -/
def P5169286230376731299.Spec : Prop :=
  ∀ n, (P5169286230376731299.a n : ℤ) = A328246 (n + 1)

end A328246

/-! ## A328246.P11458480836422509993

`eq[A135372(n+1)%10, A354874(A068346(n))]`
-/

namespace A328246.P11458480836422509993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135372 (n + 1)) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328246.P11458480836422509993

namespace A328246

/-- `eq[A135372(n+1)%10, A354874(A068346(n))]` -/
def P11458480836422509993.Spec : Prop :=
  ∀ n, (P11458480836422509993.a n : ℤ) = A328246 (n + 1)

end A328246

/-! ## A328246.P9434263454196926453

`eq[1, A255326(A099306(n))]`
-/

namespace A328246.P9434263454196926453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A099306 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328246.P9434263454196926453

namespace A328246

/-- `eq[1, A255326(A099306(n))]` -/
def P9434263454196926453.Spec : Prop :=
  ∀ n, (P9434263454196926453.a n : ℤ) = A328246 (n + 1)

end A328246

/-!
# A328248: a(n) = 1 if n is a squarefree number (A005117), otherwise a(n) = 1 + number of iterations of arithmetic derivative (A003415) needed to reach a squarefree number, or 0 if no such number is ever reached.

The programs for A328248, there is no canonical definition to state claims against.
-/

/-! ## A328248.P12550641916947020599

`A359550(n+1)*A368216(n+1)`
-/

namespace A328248.P12550641916947020599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1) * A368216 (n + 1)

end

end A328248.P12550641916947020599

/-! ## A328248.P1733362610406058568

`A000120(A045836(n+1)^A048105(n+1))`
-/

namespace A328248.P1733362610406058568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A045836 (n + 1) : ℚ) ^ (A048105 (n + 1) : ℤ))).toNat

end

end A328248.P1733362610406058568

/-! ## A328248.P4122380963662353576

`A000120(A045836(n+1)^A330018(n+1))`
-/

namespace A328248.P4122380963662353576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A045836 (n + 1) : ℚ) ^ (A330018 (n + 1) : ℤ))).toNat

end

end A328248.P4122380963662353576

/-! ## A328248.P8264941504320036095

`A046698(A259827(n)^A057918(n+1))`
-/

namespace A328248.P8264941504320036095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (SequenceMachineLib.roundAway ((A259827 n : ℚ) ^ (A057918 (n + 1) : ℤ))).toNat

end

end A328248.P8264941504320036095

/-! ## A328248.P15293200216484660322

`A335451(2*gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A328248.P15293200216484660322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335451 (2 * Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A328248.P15293200216484660322

/-!
# A328251: Row 1 of array A328250: numbers n whose k-th arithmetic derivative is never squarefree for any k >= 0.

The programs for A328251, there is no canonical definition to state claims against.
-/

/-! ## A328251.P1733823065400797474

`eq[0, A328248(n+1)]+1`
-/

namespace A328251.P1733823065400797474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328251.P1733823065400797474

/-! ## A328251.P936014268091366452

`eq[0, A328248(A028310(n))]`
-/

namespace A328251.P936014268091366452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328251.P936014268091366452

/-! ## A328251.P10942539106804869914

`eq[0, A328248(A000007(n)+n)]`
-/

namespace A328251.P10942539106804869914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328251.P10942539106804869914

/-! ## A328251.P17299212880296556918

`eq[0, A328248(xor(n, A000007(n)))]`
-/

namespace A328251.P17299212880296556918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328251.P17299212880296556918

/-! ## A328251.P16483088944499705390

`eq[0, A328248(A123108(2*n))]`
-/

namespace A328251.P16483088944499705390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328251.P16483088944499705390

/-! ## A328251.P3649475154227978412

`A113484(eq[0, A328248(n+1)])`
-/

namespace A328251.P3649475154227978412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328251.P3649475154227978412

/-! ## A328251.P15307175599642619284

`eq[0, A328248(A233583(n+1))]`
-/

namespace A328251.P15307175599642619284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328251.P15307175599642619284

/-!
# A328252: Numbers that are not squarefree, but whose arithmetic derivative (A003415) is.

The programs for A328252, the canonical program `A328252.P17271555259238954993` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328252 has offset 1).

The definition of A328252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328252.P1508968963127279232

`filter[A371083(n+1), A354874(#)]`
-/

namespace A328252.P1508968963127279232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328252.P1508968963127279232

namespace A328252

/-- `filter[A371083(n+1), A354874(#)]` -/
def P1508968963127279232.Spec : Prop :=
  ∀ n, P1508968963127279232.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P17271555259238954993

`filter[A319927(n+1), A354874(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A328252

/-- `filter[A319927(n+1), A354874(#)]` -/
def P17271555259238954993.Spec : Prop :=
  ∀ n, P17271555259238954993.a n = A328252 (n + 1)

theorem P17271555259238954993.correct : P17271555259238954993.Spec := by
  intro n
  simp only [A328252, Nat.add_sub_cancel]

end A328252

/-! ## A328252.P18368964007260823786

`filter[A319927(n+1), A341994(#)]`
-/

namespace A328252.P18368964007260823786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P18368964007260823786

namespace A328252

/-- `filter[A319927(n+1), A341994(#)]` -/
def P18368964007260823786.Spec : Prop :=
  ∀ n, P18368964007260823786.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P12924659430537556406

`filter[A371083(n+1), A341994(#)]`
-/

namespace A328252.P12924659430537556406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P12924659430537556406

namespace A328252

/-- `filter[A371083(n+1), A341994(#)]` -/
def P12924659430537556406.Spec : Prop :=
  ∀ n, P12924659430537556406.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P10985595897723613678

`filter[A376216(n+1), A341994(#)]`
-/

namespace A328252.P10985595897723613678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P10985595897723613678

namespace A328252

/-- `filter[A376216(n+1), A341994(#)]` -/
def P10985595897723613678.Spec : Prop :=
  ∀ n, P10985595897723613678.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P5921737225332985302

`filter[A376216(n+1), A354874(#)]`
-/

namespace A328252.P5921737225332985302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328252.P5921737225332985302

namespace A328252

/-- `filter[A376216(n+1), A354874(#)]` -/
def P5921737225332985302.Spec : Prop :=
  ∀ n, P5921737225332985302.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P5164212003609544658

`filter[A307579(n+1), A341994(#)]`
-/

namespace A328252.P5164212003609544658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P5164212003609544658

namespace A328252

/-- `filter[A307579(n+1), A341994(#)]` -/
def P5164212003609544658.Spec : Prop :=
  ∀ n, P5164212003609544658.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P12382780199154959125

`filter[A307579(n+1), A354874(#)]`
-/

namespace A328252.P12382780199154959125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328252.P12382780199154959125

namespace A328252

/-- `filter[A307579(n+1), A354874(#)]` -/
def P12382780199154959125.Spec : Prop :=
  ∀ n, P12382780199154959125.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P3627002925026166189

`filter[A038838(n+1), A341994(#)]`
-/

namespace A328252.P3627002925026166189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P3627002925026166189

namespace A328252

/-- `filter[A038838(n+1), A341994(#)]` -/
def P3627002925026166189.Spec : Prop :=
  ∀ n, P3627002925026166189.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P227175118424494146

`filter[A038838(n+1), A354874(#)]`
-/

namespace A328252.P227175118424494146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328252.P227175118424494146

namespace A328252

/-- `filter[A038838(n+1), A354874(#)]` -/
def P227175118424494146.Spec : Prop :=
  ∀ n, P227175118424494146.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P13476096817528681364

`eq[2, A328248(n+1)]+1`
-/

namespace A328252.P13476096817528681364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328252.P13476096817528681364

namespace A328252

/-- `eq[2, A328248(n+1)]+1` -/
def P13476096817528681364.Spec : Prop :=
  ∀ n, (P13476096817528681364.a n : ℤ) = A328252 (n + 1)

end A328252

/-! ## A328252.P17125177241082524651

`eq[1, A341994(A105570(n))]`
-/

namespace A328252.P17125177241082524651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328252.P17125177241082524651

namespace A328252

/-- `eq[1, A341994(A105570(n))]` -/
def P17125177241082524651.Spec : Prop :=
  ∀ n, (P17125177241082524651.a n : ℤ) = A328252 (n + 1)

end A328252

/-! ## A328252.P8571243823605732005

`filter[A067259(n+1), A341994(#)]`
-/

namespace A328252.P8571243823605732005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P8571243823605732005

namespace A328252

/-- `filter[A067259(n+1), A341994(#)]` -/
def P8571243823605732005.Spec : Prop :=
  ∀ n, P8571243823605732005.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P7263044327398994449

`filter[A067259(n+1), A342004(#)]`
-/

namespace A328252.P7263044327398994449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A328252.P7263044327398994449

namespace A328252

/-- `filter[A067259(n+1), A342004(#)]` -/
def P7263044327398994449.Spec : Prop :=
  ∀ n, P7263044327398994449.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P14236789117920387428

`filter[A067259(n+1), A354874(#)]`
-/

namespace A328252.P14236789117920387428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328252.P14236789117920387428

namespace A328252

/-- `filter[A067259(n+1), A354874(#)]` -/
def P14236789117920387428.Spec : Prop :=
  ∀ n, P14236789117920387428.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P4208328970897815994

`filter[A335437(n+1), A341994(#)]`
-/

namespace A328252.P4208328970897815994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P4208328970897815994

namespace A328252

/-- `filter[A335437(n+1), A341994(#)]` -/
def P4208328970897815994.Spec : Prop :=
  ∀ n, P4208328970897815994.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P12710512552214654904

`filter[A335437(n+1), A354874(#)]`
-/

namespace A328252.P12710512552214654904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328252.P12710512552214654904

namespace A328252

/-- `filter[A335437(n+1), A354874(#)]` -/
def P12710512552214654904.Spec : Prop :=
  ∀ n, P12710512552214654904.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P6599076558321536680

`filter[A336594(n+1), A341994(#)]`
-/

namespace A328252.P6599076558321536680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P6599076558321536680

namespace A328252

/-- `filter[A336594(n+1), A341994(#)]` -/
def P6599076558321536680.Spec : Prop :=
  ∀ n, P6599076558321536680.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P15462221456474722714

`filter[A336594(n+1), A354874(#)]`
-/

namespace A328252.P15462221456474722714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328252.P15462221456474722714

namespace A328252

/-- `filter[A336594(n+1), A354874(#)]` -/
def P15462221456474722714.Spec : Prop :=
  ∀ n, P15462221456474722714.a n = A328252 (n + 1)

end A328252

/-! ## A328252.P799822079150843650

`filter[A375031(n+1), A341994(#)]`
-/

namespace A328252.P799822079150843650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A328252.P799822079150843650

namespace A328252

/-- `filter[A375031(n+1), A341994(#)]` -/
def P799822079150843650.Spec : Prop :=
  ∀ n, P799822079150843650.a n = A328252 (n + 1)

end A328252

/-!
# A328253: Nonsquarefree numbers whose first arithmetic derivative (A003415) is not squarefree, but the second derivative (A068346) is.

The programs for A328253, the canonical program `A328253.P5393873202926988091` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328253 has offset 1).

The definition of A328253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328253.P11713546225293453392

`filter[A328245(n+1), A371084(#)]`
-/

namespace A328253.P11713546225293453392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A328253.P11713546225293453392

namespace A328253

/-- `filter[A328245(n+1), A371084(#)]` -/
def P11713546225293453392.Spec : Prop :=
  ∀ n, P11713546225293453392.a n = A328253 (n + 1)

end A328253

/-! ## A328253.P6588827101513833597

`∩[A328245(n+1), A371083(n+1)]`
-/

namespace A328253.P6588827101513833597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P6588827101513833597

namespace A328253

/-- `∩[A328245(n+1), A371083(n+1)]` -/
def P6588827101513833597.Spec : Prop :=
  ∀ n, (P6588827101513833597.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P7155801374305858935

`∩[A319927(n+1), A328245(n+1)]`
-/

namespace A328253.P7155801374305858935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P7155801374305858935

namespace A328253

/-- `∩[A319927(n+1), A328245(n+1)]` -/
def P7155801374305858935.Spec : Prop :=
  ∀ n, (P7155801374305858935.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P5393873202926988091

`filter[A328245(n+1), A087049(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A328253

/-- `filter[A328245(n+1), A087049(#)]` -/
def P5393873202926988091.Spec : Prop :=
  ∀ n, P5393873202926988091.a n = A328253 (n + 1)

theorem P5393873202926988091.correct : P5393873202926988091.Spec := by
  intro n
  simp only [A328253, Nat.add_sub_cancel]

end A328253

/-! ## A328253.P13318860572149738575

`filter[A328245(n+1), A353626(#)]`
-/

namespace A328253.P13318860572149738575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A328253.P13318860572149738575

namespace A328253

/-- `filter[A328245(n+1), A353626(#)]` -/
def P13318860572149738575.Spec : Prop :=
  ∀ n, P13318860572149738575.a n = A328253 (n + 1)

end A328253

/-! ## A328253.P2156904652008591247

`∩[A307579(n+1), A328245(n+1)]`
-/

namespace A328253.P2156904652008591247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P2156904652008591247

namespace A328253

/-- `∩[A307579(n+1), A328245(n+1)]` -/
def P2156904652008591247.Spec : Prop :=
  ∀ n, (P2156904652008591247.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P17588619421459656112

`∩[A038838(n+1), A328245(n+1)]`
-/

namespace A328253.P17588619421459656112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P17588619421459656112

namespace A328253

/-- `∩[A038838(n+1), A328245(n+1)]` -/
def P17588619421459656112.Spec : Prop :=
  ∀ n, (P17588619421459656112.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P3215396225559712996

`∩[A328245(n+1), A335437(n+1)]`
-/

namespace A328253.P3215396225559712996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P3215396225559712996

namespace A328253

/-- `∩[A328245(n+1), A335437(n+1)]` -/
def P3215396225559712996.Spec : Prop :=
  ∀ n, (P3215396225559712996.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P7779730505688309283

`∩[A328245(n+1), A392815(n+1)]`
-/

namespace A328253.P7779730505688309283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P7779730505688309283

namespace A328253

/-- `∩[A328245(n+1), A392815(n+1)]` -/
def P7779730505688309283.Spec : Prop :=
  ∀ n, (P7779730505688309283.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P14541741227150892269

`∩[A072904(n+1), A328245(n+1)]`
-/

namespace A328253.P14541741227150892269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P14541741227150892269

namespace A328253

/-- `∩[A072904(n+1), A328245(n+1)]` -/
def P14541741227150892269.Spec : Prop :=
  ∀ n, (P14541741227150892269.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P3374783198436208066

`∩[A046790(n+1), A328245(n+1)]`
-/

namespace A328253.P3374783198436208066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P3374783198436208066

namespace A328253

/-- `∩[A046790(n+1), A328245(n+1)]` -/
def P3374783198436208066.Spec : Prop :=
  ∀ n, (P3374783198436208066.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P17900964908136507150

`∩[A072903(n+1), A328245(n+1)]`
-/

namespace A328253.P17900964908136507150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P17900964908136507150

namespace A328253

/-- `∩[A072903(n+1), A328245(n+1)]` -/
def P17900964908136507150.Spec : Prop :=
  ∀ n, (P17900964908136507150.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P18237855383079461924

`∩[A328245(n+1), A382967(n+1)]`
-/

namespace A328253.P18237855383079461924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P18237855383079461924

namespace A328253

/-- `∩[A328245(n+1), A382967(n+1)]` -/
def P18237855383079461924.Spec : Prop :=
  ∀ n, (P18237855383079461924.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P2841450657087855663

`∩[A328245(n+1), A375229(n+1)]`
-/

namespace A328253.P2841450657087855663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P2841450657087855663

namespace A328253

/-- `∩[A328245(n+1), A375229(n+1)]` -/
def P2841450657087855663.Spec : Prop :=
  ∀ n, (P2841450657087855663.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P3438474230107980754

`∩[A074661(n+1), A328245(n+1)]`
-/

namespace A328253.P3438474230107980754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P3438474230107980754

namespace A328253

/-- `∩[A074661(n+1), A328245(n+1)]` -/
def P3438474230107980754.Spec : Prop :=
  ∀ n, (P3438474230107980754.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P9237384115806224398

`∩[A252849(n+1), A328245(n+1)]`
-/

namespace A328253.P9237384115806224398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P9237384115806224398

namespace A328253

/-- `∩[A252849(n+1), A328245(n+1)]` -/
def P9237384115806224398.Spec : Prop :=
  ∀ n, (P9237384115806224398.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P7587820804195384467

`∩[A328245(n+1), A359468(n+1)]`
-/

namespace A328253.P7587820804195384467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P7587820804195384467

namespace A328253

/-- `∩[A328245(n+1), A359468(n+1)]` -/
def P7587820804195384467.Spec : Prop :=
  ∀ n, (P7587820804195384467.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P2323310122703219937

`∩[A143720(n+1), A328245(n+1)]`
-/

namespace A328253.P2323310122703219937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P2323310122703219937

namespace A328253

/-- `∩[A143720(n+1), A328245(n+1)]` -/
def P2323310122703219937.Spec : Prop :=
  ∀ n, (P2323310122703219937.a n : ℤ) = A328253 (n + 1)

end A328253

/-! ## A328253.P7089072880721526797

`∩[A051144(n+1), A328245(n+1)]`
-/

namespace A328253.P7089072880721526797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328253.P7089072880721526797

namespace A328253

/-- `∩[A051144(n+1), A328245(n+1)]` -/
def P7089072880721526797.Spec : Prop :=
  ∀ n, (P7089072880721526797.a n : ℤ) = A328253 (n + 1)

end A328253

/-!
# A328254: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1) * zeta(s-2)).

The programs for A328254, the canonical program `A328254.P15532936558878328748` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328254 has offset 1).

The definition of A328254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328254.P18327291776547510762

`∑{d}[n+1, A053822(#)*A055615((n+1)/#)]`
-/

namespace A328254.P18327291776547510762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328254.P18327291776547510762

namespace A328254

/-- `∑{d}[n+1, A053822(#)*A055615((n+1)/#)]` -/
def P18327291776547510762.Spec : Prop :=
  ∀ n, P18327291776547510762.a n = A328254 (n + 1)

end A328254

/-! ## A328254.P6731485576839251791

`∑{d}[n+1, A007427(#)*A351654((n+1)/#)]`
-/

namespace A328254.P6731485576839251791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328254.P6731485576839251791

namespace A328254

/-- `∑{d}[n+1, A007427(#)*A351654((n+1)/#)]` -/
def P6731485576839251791.Spec : Prop :=
  ∀ n, P6731485576839251791.a n = A328254 (n + 1)

end A328254

/-! ## A328254.P15532936558878328748

`∑{d}[n+1, A046692(#)*A334657((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328254

/-- `∑{d}[n+1, A046692(#)*A334657((n+1)/#)]` -/
def P15532936558878328748.Spec : Prop :=
  ∀ n, P15532936558878328748.a n = A328254 (n + 1)

theorem P15532936558878328748.correct : P15532936558878328748.Spec := by
  intro n
  simp only [A328254, Nat.add_sub_cancel]

end A328254

/-! ## A328254.P4147558878595026370

`∑{d}[n+1, A328502(#)*A328722((n+1)/#)]`
-/

namespace A328254.P4147558878595026370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328502 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328254.P4147558878595026370

namespace A328254

/-- `∑{d}[n+1, A328502(#)*A328722((n+1)/#)]` -/
def P4147558878595026370.Spec : Prop :=
  ∀ n, P4147558878595026370.a n = A328254 (n + 1)

end A328254

/-! ## A328254.P5179168831523353399

`∑{d}[n+1, A326938(#)*A359485((n+1)/#)]`
-/

namespace A328254.P5179168831523353399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326938 d * A359485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328254.P5179168831523353399

namespace A328254

/-- `∑{d}[n+1, A326938(#)*A359485((n+1)/#)]` -/
def P5179168831523353399.Spec : Prop :=
  ∀ n, P5179168831523353399.a n = A328254 (n + 1)

end A328254

/-!
# A328257: Terms appearing more than once in A309940, in ascending order.

The programs for A328257, there is no canonical definition to state claims against.
-/

/-! ## A328257.P915745595214437391

`A336447(A178202(n))`
-/

namespace A328257.P915745595214437391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336447 (A178202 n).toNat

end

end A328257.P915745595214437391

/-!
# A328258: a(n) = Sum_{d|n, gcd(d,n/d) = 1} (-1)^(d + 1) * d.

The programs for A328258, the canonical program `A328258.P16805831198156578016` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328258 has offset 1).

The definition of A328258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328258.P16805831198156578016

`2*A192066(n+1)-A034448(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A328258

/-- `2*A192066(n+1)-A034448(n+1)` -/
def P16805831198156578016.Spec : Prop :=
  ∀ n, P16805831198156578016.a n = A328258 (n + 1)

theorem P16805831198156578016.correct : P16805831198156578016.Spec := by
  intro n
  simp only [A328258, Nat.add_sub_cancel]

end A328258

/-! ## A328258.P8762272298486072734

`2*A034448(A000265(n+1))-A034448(n+1)`
-/

namespace A328258.P8762272298486072734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034448 (A000265 (n + 1)).toNat - A034448 (n + 1)

end

end A328258.P8762272298486072734

namespace A328258

/-- `2*A034448(A000265(n+1))-A034448(n+1)` -/
def P8762272298486072734.Spec : Prop :=
  ∀ n, P8762272298486072734.a n = A328258 (n + 1)

end A328258

/-! ## A328258.P11416371513641959360

`A005843(A192066(n+1))-A034448(n+1)`
-/

namespace A328258.P11416371513641959360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A192066 (n + 1)).toNat - A034448 (n + 1)

end

end A328258.P11416371513641959360

namespace A328258

/-- `A005843(A192066(n+1))-A034448(n+1)` -/
def P11416371513641959360.Spec : Prop :=
  ∀ n, P11416371513641959360.a n = A328258 (n + 1)

end A328258

/-! ## A328258.P5645926503823716402

`A005843(A034448(A000265(n+1)))-A034448(n+1)`
-/

namespace A328258.P5645926503823716402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A034448 (A000265 (n + 1)).toNat).toNat - A034448 (n + 1)

end

end A328258.P5645926503823716402

namespace A328258

/-- `A005843(A034448(A000265(n+1)))-A034448(n+1)` -/
def P5645926503823716402.Spec : Prop :=
  ∀ n, P5645926503823716402.a n = A328258 (n + 1)

end A328258

/-! ## A328258.P4299949671160818914

`A056594(2*n)*A107749(A026741(n+1))`
-/

namespace A328258.P4299949671160818914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A107749 (A026741 (n + 1)).toNat

end

end A328258.P4299949671160818914

namespace A328258

/-- `A056594(2*n)*A107749(A026741(n+1))` -/
def P4299949671160818914.Spec : Prop :=
  ∀ n, P4299949671160818914.a n = A328258 (n + 1)

end A328258

/-! ## A328258.P895314122929583258

`A360165((n+1)²)`
-/

namespace A328258.P895314122929583258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360165 ((n + 1) ^ 2)

end

end A328258.P895314122929583258

namespace A328258

/-- `A360165((n+1)²)` -/
def P895314122929583258.Spec : Prop :=
  ∀ n, P895314122929583258.a n = A328258 (n + 1)

end A328258

/-!
# A328259: a(n) = n * sigma_2(n).

The programs for A328259, the canonical program `A328259.P2578295491447413937` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328259 has offset 1).

The definition of A328259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328259.P2578295491447413937

`∑{d}[n+1, (n+1)*#²]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A328259

/-- `∑{d}[n+1, (n+1)*#²]` -/
def P2578295491447413937.Spec : Prop :=
  ∀ n, (P2578295491447413937.a n : ℤ) = A328259 (n + 1)

theorem P2578295491447413937.correct : P2578295491447413937.Spec := by
  intro n
  simp only [A328259, Nat.add_sub_cancel]

end A328259

/-! ## A328259.P18426525097796307771

`(n+1)*∑{d}[n+1, #^2]`
-/

namespace A328259.P18426525097796307771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A328259.P18426525097796307771

namespace A328259

/-- `(n+1)*∑{d}[n+1, #^2]` -/
def P18426525097796307771.Spec : Prop :=
  ∀ n, (P18426525097796307771.a n : ℤ) = A328259 (n + 1)

end A328259

/-! ## A328259.P14403297060051305819

`floor((n+1)/acot(∑{d}[n+1, #²]))`
-/

namespace A328259.P14403297060051305819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℝ)⌋

end

end A328259.P14403297060051305819

namespace A328259

/-- `floor((n+1)/acot(∑{d}[n+1, #²]))` -/
def P14403297060051305819.Spec : Prop :=
  ∀ n, P14403297060051305819.a n = A328259 (n + 1)

end A328259

/-! ## A328259.P16400699147205299176

`(n+1)*A001157(n+1)`
-/

namespace A328259.P16400699147205299176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001157 (n + 1)

end

end A328259.P16400699147205299176

namespace A328259

/-- `(n+1)*A001157(n+1)` -/
def P16400699147205299176.Spec : Prop :=
  ∀ n, P16400699147205299176.a n = A328259 (n + 1)

end A328259

/-! ## A328259.P5570598429361096051

`A386745(n+1)/(n+1)`
-/

namespace A328259.P5570598429361096051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386745 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A328259.P5570598429361096051

namespace A328259

/-- `A386745(n+1)/(n+1)` -/
def P5570598429361096051.Spec : Prop :=
  ∀ n, P5570598429361096051.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P669364486444723777

`(n+1)*sqrt(A356533(n+1))`
-/

namespace A328259.P669364486444723777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A356533 (n + 1) : ℝ)

end

end A328259.P669364486444723777

namespace A328259

/-- `(n+1)*sqrt(A356533(n+1))` -/
def P669364486444723777.Spec : Prop :=
  ∀ n, P669364486444723777.a n = (A328259 (n + 1) : ℝ)

end A328259

/-! ## A328259.P6557871611760726169

`A386783(n+1)/(n+1)^3`
-/

namespace A328259.P6557871611760726169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386783 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A328259.P6557871611760726169

namespace A328259

/-- `A386783(n+1)/(n+1)^3` -/
def P6557871611760726169.Spec : Prop :=
  ∀ n, P6557871611760726169.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P7235246509076966702

`A386746(n+1)/(n+1)²`
-/

namespace A328259.P7235246509076966702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386746 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A328259.P7235246509076966702

namespace A328259

/-- `A386746(n+1)/(n+1)²` -/
def P7235246509076966702.Spec : Prop :=
  ∀ n, P7235246509076966702.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P607570259705259334

`(n+1)*(A053807(n+2)+1)`
-/

namespace A328259.P607570259705259334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A053807 (n + 2) + 1)

end

end A328259.P607570259705259334

namespace A328259

/-- `(n+1)*(A053807(n+2)+1)` -/
def P607570259705259334.Spec : Prop :=
  ∀ n, P607570259705259334.a n = A328259 (n + 1)

end A328259

/-! ## A328259.P17971673693413331275

`A282060(n+1)*A386746(n+1)/A386781(n+1)`
-/

namespace A328259.P17971673693413331275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282060 (n + 1) * A386746 (n + 1) : ℚ) / (A386781 (n + 1) : ℚ)

end

end A328259.P17971673693413331275

namespace A328259

/-- `A282060(n+1)*A386746(n+1)/A386781(n+1)` -/
def P17971673693413331275.Spec : Prop :=
  ∀ n, P17971673693413331275.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P15151805010349800843

`A386746(n+1)*A386750(n+1)/A386780(n+1)`
-/

namespace A328259.P15151805010349800843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386746 (n + 1) * A386750 (n + 1) : ℚ) / (A386780 (n + 1) : ℚ)

end

end A328259.P15151805010349800843

namespace A328259

/-- `A386746(n+1)*A386750(n+1)/A386780(n+1)` -/
def P15151805010349800843.Spec : Prop :=
  ∀ n, P15151805010349800843.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P10605766887868962889

`A386746(n+1)*A386751(n+1)/A386782(n+1)`
-/

namespace A328259.P10605766887868962889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386746 (n + 1) * A386751 (n + 1) : ℚ) / (A386782 (n + 1) : ℚ)

end

end A328259.P10605766887868962889

namespace A328259

/-- `A386746(n+1)*A386751(n+1)/A386782(n+1)` -/
def P10605766887868962889.Spec : Prop :=
  ∀ n, P10605766887868962889.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P8807723056063020026

`A386749(n+1)*A386783(n+1)/A386784(n+1)`
-/

namespace A328259.P8807723056063020026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386749 (n + 1) * A386783 (n + 1) : ℚ) / (A386784 (n + 1) : ℚ)

end

end A328259.P8807723056063020026

namespace A328259

/-- `A386749(n+1)*A386783(n+1)/A386784(n+1)` -/
def P8807723056063020026.Spec : Prop :=
  ∀ n, P8807723056063020026.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P9091564944591299784

`A386750(n+1)*A386783(n+1)/A386786(n+1)`
-/

namespace A328259.P9091564944591299784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386750 (n + 1) * A386783 (n + 1) : ℚ) / (A386786 (n + 1) : ℚ)

end

end A328259.P9091564944591299784

namespace A328259

/-- `A386750(n+1)*A386783(n+1)/A386786(n+1)` -/
def P9091564944591299784.Spec : Prop :=
  ∀ n, P9091564944591299784.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P7697403561049414262

`A001157(A008619(2*n))*A008619(2*n)`
-/

namespace A328259.P7697403561049414262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A328259.P7697403561049414262

namespace A328259

/-- `A001157(A008619(2*n))*A008619(2*n)` -/
def P7697403561049414262.Spec : Prop :=
  ∀ n, P7697403561049414262.a n = A328259 (n + 1)

end A328259

/-! ## A328259.P6827977834576010366

`A001157(A028242(2*n))*A028242(2*n)`
-/

namespace A328259.P6827977834576010366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A328259.P6827977834576010366

namespace A328259

/-- `A001157(A028242(2*n))*A028242(2*n)` -/
def P6827977834576010366.Spec : Prop :=
  ∀ n, P6827977834576010366.a n = A328259 (n + 1)

end A328259

/-! ## A328259.P16807906811748638469

`A001157(A029579(2*n))*A029579(2*n)`
-/

namespace A328259.P16807906811748638469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A029579 (2 * n)).toNat * A029579 (2 * n)

end

end A328259.P16807906811748638469

namespace A328259

/-- `A001157(A029579(2*n))*A029579(2*n)` -/
def P16807906811748638469.Spec : Prop :=
  ∀ n, P16807906811748638469.a n = A328259 (n + 1)

end A328259

/-! ## A328259.P9952749744306962296

`A001157(A080513(2*n))*A080513(2*n)`
-/

namespace A328259.P9952749744306962296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A328259.P9952749744306962296

namespace A328259

/-- `A001157(A080513(2*n))*A080513(2*n)` -/
def P9952749744306962296.Spec : Prop :=
  ∀ n, P9952749744306962296.a n = A328259 (n + 1)

end A328259

/-! ## A328259.P12405551562351550366

`A091260(n+1)*A281372(n+1)/A298754(n+1)`
-/

namespace A328259.P12405551562351550366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091260 (n + 1) * A281372 (n + 1) : ℚ) / (A298754 (n + 1) : ℚ)

end

end A328259.P12405551562351550366

namespace A328259

/-- `A091260(n+1)*A281372(n+1)/A298754(n+1)` -/
def P12405551562351550366.Spec : Prop :=
  ∀ n, P12405551562351550366.a n = (A328259 (n + 1) : ℚ)

end A328259

/-! ## A328259.P5051605966502484203

`(n+1)*A035316((n+1)²)`
-/

namespace A328259.P5051605966502484203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035316 ((n + 1) ^ 2)

end

end A328259.P5051605966502484203

namespace A328259

/-- `(n+1)*A035316((n+1)²)` -/
def P5051605966502484203.Spec : Prop :=
  ∀ n, P5051605966502484203.a n = A328259 (n + 1)

end A328259

/-!
# A328260: a(n) = n * omega(n).

The programs for A328260, the canonical program `A328260.P7448071103509823469` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328260 has offset 1).

The definition of A328260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328260.P7448071103509823469

`∑{p}[n+1, lcm(#, n+1)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A328260

/-- `∑{p}[n+1, lcm(#, n+1)]` -/
def P7448071103509823469.Spec : Prop :=
  ∀ n, (P7448071103509823469.a n : ℤ) = A328260 (n + 1)

theorem P7448071103509823469.correct : P7448071103509823469.Spec := by
  intro n
  simp only [A328260, Nat.add_sub_cancel]

end A328260

/-! ## A328260.P145606041842269699

`∑{p}[n+1, gcd(n, #)+n]`
-/

namespace A328260.P145606041842269699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.gcd n p + n)

end

end A328260.P145606041842269699

namespace A328260

/-- `∑{p}[n+1, gcd(n, #)+n]` -/
def P145606041842269699.Spec : Prop :=
  ∀ n, (P145606041842269699.a n : ℤ) = A328260 (n + 1)

end A328260

/-! ## A328260.P15482425063803743691

`∑{e}[∏{p}[n+1, #], #+n]`
-/

namespace A328260.P15482425063803743691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n)

end

end A328260.P15482425063803743691

namespace A328260

/-- `∑{e}[∏{p}[n+1, #], #+n]` -/
def P15482425063803743691.Spec : Prop :=
  ∀ n, (P15482425063803743691.a n : ℤ) = A328260 (n + 1)

end A328260

/-! ## A328260.P1562417807971621737

`∑{p}[n+1, ceil(acot(#)+n)]`
-/

namespace A328260.P1562417807971621737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (p : ℝ) + (n : ℝ)⌉

end

end A328260.P1562417807971621737

namespace A328260

/-- `∑{p}[n+1, ceil(acot(#)+n)]` -/
def P1562417807971621737.Spec : Prop :=
  ∀ n, P1562417807971621737.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P17011705507018074848

`∑{e}[n+1, ceil(acot(#)+n)]`
-/

namespace A328260.P17011705507018074848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ) + (n : ℝ)⌉

end

end A328260.P17011705507018074848

namespace A328260

/-- `∑{e}[n+1, ceil(acot(#)+n)]` -/
def P17011705507018074848.Spec : Prop :=
  ∀ n, P17011705507018074848.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P2695189612571455950

`∑{p}[n+1, n-or(#, -1)]`
-/

namespace A328260.P2695189612571455950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - Int.lor (p : ℤ) (-1))

end

end A328260.P2695189612571455950

namespace A328260

/-- `∑{p}[n+1, n-or(#, -1)]` -/
def P2695189612571455950.Spec : Prop :=
  ∀ n, P2695189612571455950.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P6182216173874641313

`∑{p}[n+1, ceil(1/#+n)]`
-/

namespace A328260.P6182216173874641313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ) + (n : ℚ)⌉

end

end A328260.P6182216173874641313

namespace A328260

/-- `∑{p}[n+1, ceil(1/#+n)]` -/
def P6182216173874641313.Spec : Prop :=
  ∀ n, P6182216173874641313.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P4126183866467538299

`∑{e}[n+1, n-or(#, -1)]`
-/

namespace A328260.P4126183866467538299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - Int.lor (Nat.factorization (f1 n) p : ℤ) (-1))

end

end A328260.P4126183866467538299

namespace A328260

/-- `∑{e}[n+1, n-or(#, -1)]` -/
def P4126183866467538299.Spec : Prop :=
  ∀ n, P4126183866467538299.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P10584080089446539189

`∑{e}[n+1, ceil(1/#+n)]`
-/

namespace A328260.P10584080089446539189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ) + (n : ℚ)⌉

end

end A328260.P10584080089446539189

namespace A328260

/-- `∑{e}[n+1, ceil(1/#+n)]` -/
def P10584080089446539189.Spec : Prop :=
  ∀ n, P10584080089446539189.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P4282836203609500861

`-∑{p}[n+1, val(#, 4)-(n+1)]`
-/

namespace A328260.P4282836203609500861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation p 4 : ℤ) - (n + 1 : ℤ)))

end

end A328260.P4282836203609500861

namespace A328260

/-- `-∑{p}[n+1, val(#, 4)-(n+1)]` -/
def P4282836203609500861.Spec : Prop :=
  ∀ n, P4282836203609500861.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P17976828294097891577

`(n+1)*∑{p}[n+1, val(#, 2)!]`
-/

namespace A328260.P17976828294097891577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (SequenceMachineLib.valuation p 2))

end

end A328260.P17976828294097891577

namespace A328260

/-- `(n+1)*∑{p}[n+1, val(#, 2)!]` -/
def P17976828294097891577.Spec : Prop :=
  ∀ n, (P17976828294097891577.a n : ℤ) = A328260 (n + 1)

end A328260

/-! ## A328260.P17726131933881733939

`(n+1)*∑{p}[n+1, and(1, #)!]`
-/

namespace A328260.P17726131933881733939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.land 1 p))

end

end A328260.P17726131933881733939

namespace A328260

/-- `(n+1)*∑{p}[n+1, and(1, #)!]` -/
def P17726131933881733939.Spec : Prop :=
  ∀ n, (P17726131933881733939.a n : ℤ) = A328260 (n + 1)

end A328260

/-! ## A328260.P467812980646897369

`(n+1)*∑{p}[n+1, C(2, #)!]`
-/

namespace A328260.P467812980646897369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.choose 2 p))

end

end A328260.P467812980646897369

namespace A328260

/-- `(n+1)*∑{p}[n+1, C(2, #)!]` -/
def P467812980646897369.Spec : Prop :=
  ∀ n, (P467812980646897369.a n : ℤ) = A328260 (n + 1)

end A328260

/-! ## A328260.P11770020487798948235

`(n+1)*∑{e}[n+1, and(1, #)!]`
-/

namespace A328260.P11770020487798948235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.land 1 (Nat.factorization (f1 n) p)))

end

end A328260.P11770020487798948235

namespace A328260

/-- `(n+1)*∑{e}[n+1, and(1, #)!]` -/
def P11770020487798948235.Spec : Prop :=
  ∀ n, (P11770020487798948235.a n : ℤ) = A328260 (n + 1)

end A328260

/-! ## A328260.P15477455444996911577

`(n+1)*∑{p}[n+1, n²%#]`
-/

namespace A328260.P15477455444996911577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), n ^ 2 % p)

end

end A328260.P15477455444996911577

namespace A328260

/-- `(n+1)*∑{p}[n+1, n²%#]` -/
def P15477455444996911577.Spec : Prop :=
  ∀ n, (P15477455444996911577.a n : ℤ) = A328260 (n + 1)

end A328260

/-! ## A328260.P9879827782426148756

`-∑{e}[n+1, val(#, n+1)-(n+1)]`
-/

namespace A328260.P9879827782426148756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation (Nat.factorization (f1 n) p) (n + 1) : ℤ) - (n + 1 : ℤ)))

end

end A328260.P9879827782426148756

namespace A328260

/-- `-∑{e}[n+1, val(#, n+1)-(n+1)]` -/
def P9879827782426148756.Spec : Prop :=
  ∀ n, P9879827782426148756.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P8537386585339451177

`-∑{p}[n+1, C(#, n+2)-(n+1)]`
-/

namespace A328260.P8537386585339451177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), ((Nat.choose p (n + 2) : ℤ) - (n + 1 : ℤ)))

end

end A328260.P8537386585339451177

namespace A328260

/-- `-∑{p}[n+1, C(#, n+2)-(n+1)]` -/
def P8537386585339451177.Spec : Prop :=
  ∀ n, P8537386585339451177.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P8236065929925484332

`-∑{e}[n+1, C(#, n+1)-(n+1)]`
-/

namespace A328260.P8236065929925484332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), ((Nat.choose (Nat.factorization (f1 n) p) (n + 1) : ℤ) - (n + 1 : ℤ)))

end

end A328260.P8236065929925484332

namespace A328260

/-- `-∑{e}[n+1, C(#, n+1)-(n+1)]` -/
def P8236065929925484332.Spec : Prop :=
  ∀ n, P8236065929925484332.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P17941593493453153952

`floor(∑{e}[n+1, #/(n+1)+n+1])`
-/

namespace A328260.P17941593493453153952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ))⌋

end

end A328260.P17941593493453153952

namespace A328260

/-- `floor(∑{e}[n+1, #/(n+1)+n+1])` -/
def P17941593493453153952.Spec : Prop :=
  ∀ n, P17941593493453153952.a n = A328260 (n + 1)

end A328260

/-! ## A328260.P4456943603421500835

`round(∑{e}[n+1, n+1-#/(n+1)])`
-/

namespace A328260.P4456943603421500835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) - (Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ)))

end

end A328260.P4456943603421500835

namespace A328260

/-- `round(∑{e}[n+1, n+1-#/(n+1)])` -/
def P4456943603421500835.Spec : Prop :=
  ∀ n, P4456943603421500835.a n = A328260 (n + 1)

end A328260

/-!
# A328261: Number of labeled prime graphs on n nodes, i.e., graphs with no nontrivial modules when calculating the modular decomposition.

The programs for A328261, there is no canonical definition to state claims against.
-/

/-! ## A328261.P13656210547763682115

`12*C(n, 3)*A109649(C(C(n, 2), 2)+n²)`
-/

namespace A328261.P13656210547763682115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * Nat.choose n 3 : ℤ) * A109649 (Nat.choose (Nat.choose n 2) 2 + n ^ 2)

end

end A328261.P13656210547763682115

/-! ## A328261.P17536406104650983766

`A129819(a(n-1)+(n+1)/2^(2-n))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A328261.P17536406104650983766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A129819 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (n + 1 : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ))).toNat

end

end A328261.P17536406104650983766

/-!
# A328262: a(n) = a(n-1)*3/2, if noninteger then rounded to the nearest even integer, with a(1) = 1.

The programs for A328262, the canonical program `A328262.P1719774546210021375` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328262 has offset 1).

The definition of A328262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328262.P1719774546210021375

`a(n-1)+floor((a(n-1)+or(2, a(n-1)))/4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A328262

/-- `a(n-1)+floor((a(n-1)+or(2, a(n-1)))/4)` -/
def P1719774546210021375.Spec : Prop :=
  ∀ n, P1719774546210021375.a n = A328262 (n + 1)

theorem P1719774546210021375.correct : P1719774546210021375.Spec := by
  intro n
  simp only [A328262, Nat.add_sub_cancel]

end A328262

/-! ## A328262.P1515110434286146826

`A189725(a(n-1))` with `a(0)=1`
-/

namespace A328262.P1515110434286146826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189725 (a (n - 1)).toNat

end

end A328262.P1515110434286146826

namespace A328262

/-- `A189725(a(n-1))` -/
def P1515110434286146826.Spec : Prop :=
  ∀ n, P1515110434286146826.a n = A328262 (n + 1)

end A328262

/-! ## A328262.P8490626367500656936

`A047229(a(n-1)+1)` with `a(0)=1`
-/

namespace A328262.P8490626367500656936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047229 (a (n - 1) + 1).toNat

end

end A328262.P8490626367500656936

namespace A328262

/-- `A047229(a(n-1)+1)` -/
def P8490626367500656936.Spec : Prop :=
  ∀ n, P8490626367500656936.a n = A328262 (n + 1)

end A328262

/-! ## A328262.P12932211360872155833

`A047255(a(n-1))+1` with `a(0)=1`
-/

namespace A328262.P12932211360872155833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047255 (a (n - 1)).toNat + 1

end

end A328262.P12932211360872155833

namespace A328262

/-- `A047255(a(n-1))+1` -/
def P12932211360872155833.Spec : Prop :=
  ∀ n, P12932211360872155833.a n = A328262 (n + 1)

end A328262

/-! ## A328262.P6461453219496466159

`A320928(a(n-1))+1` with `a(0)=1`
-/

namespace A328262.P6461453219496466159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320928 (a (n - 1)).toNat + 1

end

end A328262.P6461453219496466159

namespace A328262

/-- `A320928(a(n-1))+1` -/
def P6461453219496466159.Spec : Prop :=
  ∀ n, P6461453219496466159.a n = A328262 (n + 1)

end A328262

/-!
# A328263: a(n) = number of letters in a(n-1) (in Polish), with a(1) = 1.

The programs for A328263, the canonical program `A328263.P15532123811733504877` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328263 has offset 1).

The definition of A328263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328263.P15532123811733504877

`a(n-3)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A328263

/-- `a(n-3)` -/
def P15532123811733504877.Spec : Prop :=
  ∀ n, (P15532123811733504877.a n : ℤ) = A328263 (n + 1)

theorem P15532123811733504877.correct : P15532123811733504877.Spec := by
  intro n
  simp only [A328263, Nat.add_sub_cancel]

end A328263

/-!
# A328265: Integers m such that m and sigma(m) are relatively prime and sigma(sigma(m))/m is an integer.

The programs for A328265, there is no canonical definition to state claims against.
-/

/-! ## A328265.P11894654404254940793

`filter[A019278(n+1), A325964(#)]`
-/

namespace A328265.P11894654404254940793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A328265.P11894654404254940793

/-! ## A328265.P988300135081094908

`record[A053626(A019278(n+1))]`
-/

namespace A328265.P988300135081094908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A019278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328265.P988300135081094908

/-! ## A328265.P9658858758626882632

`∩[A019278(n+1), A240073(n+1)]`
-/

namespace A328265.P9658858758626882632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328265.P9658858758626882632

/-! ## A328265.P2026900197216310705

`record[gcd(A051027(n+1), A053626(n+1))]`
-/

namespace A328265.P2026900197216310705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051027 (n + 1)) (A053626 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328265.P2026900197216310705

/-! ## A328265.P311694957624088362

`record[A014567(n+1)/A318060(A014567(n+1))]`
-/

namespace A328265.P311694957624088362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014567 (n + 1) : ℚ) / (A318060 (A014567 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328265.P311694957624088362

/-!
# A328267: Number of walks on cubic lattice starting at (0,0,0), ending at (0,0,n), remaining in the first (nonnegative) octant and using steps which are permutations of (-2,1,2), (-1,0,2), (-1,1,1), (0,0,1).

The programs for A328267, there is no canonical definition to state claims against.
-/

/-! ## A328267.P15395954669046030722

`A328268(n)/(n+1)`
-/

namespace A328267.P15395954669046030722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328268 n : ℚ) / (n + 1 : ℚ)

end

end A328267.P15395954669046030722

/-! ## A328267.P16838357584100641862

`A328268(n)/A328281(n)*A328280(n)`
-/

namespace A328267.P16838357584100641862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328268 n : ℚ) / (A328281 n : ℚ) * (A328280 n : ℚ)

end

end A328267.P16838357584100641862

/-! ## A328267.P9651015319537494839

`(n+1)^A008683(A006450(n+1))*A328268(n)`
-/

namespace A328267.P9651015319537494839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A328268 n : ℚ)

end

end A328267.P9651015319537494839

/-! ## A328267.P18083744279107277182

`(n+1)^A008683(A070181(n+1))*A328268(n)`
-/

namespace A328267.P18083744279107277182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A070181 (n + 1)).toNat : ℤ) * (A328268 n : ℚ)

end

end A328267.P18083744279107277182

/-! ## A328267.P6393222541872264351

`A000027(A328268(n)/A005496(n))`
-/

namespace A328267.P6393222541872264351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A328268 n : ℚ) / (A005496 n : ℚ))).toNat

end

end A328267.P6393222541872264351

/-!
# A328268: Total number of nodes in all walks on cubic lattice starting at (0,0,0), ending at (0,0,n), remaining in the first (nonnegative) octant and using steps which are permutations of (-2,1,2), (-1,0,2), (-1,1,1), (0,0,1).

The programs for A328268, there is no canonical definition to state claims against.
-/

/-! ## A328268.P15911447095801770385

`(n+1)*A328267(n)`
-/

namespace A328268.P15911447095801770385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328267 n

end

end A328268.P15911447095801770385

/-! ## A328268.P4535445052623529165

`A328267(n)/A328280(n)*A328281(n)`
-/

namespace A328268.P4535445052623529165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328267 n : ℚ) / (A328280 n : ℚ) * (A328281 n : ℚ)

end

end A328268.P4535445052623529165

/-! ## A328268.P11489898290055735062

`A000027(A328267(n))*A005496(n)`
-/

namespace A328268.P11489898290055735062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A328267 n).toNat * A005496 n

end

end A328268.P11489898290055735062

/-! ## A328268.P9231204030469787561

`A000027(A328267(n))*A216556(n)`
-/

namespace A328268.P9231204030469787561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A328267 n).toNat * A216556 n

end

end A328268.P9231204030469787561

/-!
# A328269: Number of walks on cubic lattice starting at (0,0,0), ending at (0,n,n), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328269, there is no canonical definition to state claims against.
-/

/-! ## A328269.P2328883793632756111

`A328280(2*n)`
-/

namespace A328269.P2328883793632756111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328280 (2 * n)

end

end A328269.P2328883793632756111

/-! ## A328269.P6744849831746307189

`A328300(∑[4*n])`
-/

namespace A328269.P6744849831746307189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328300 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328269.P6744849831746307189

/-! ## A328269.P6956441438105071246

`record[A328280(A014681(n))]`
-/

namespace A328269.P6956441438105071246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328280 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328269.P6956441438105071246

/-! ## A328269.P13501646394946305382

`record[A328280(A029578(n))]`
-/

namespace A328269.P13501646394946305382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328280 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328269.P13501646394946305382

/-! ## A328269.P4968590637409015600

`record[A328280(A153733(n))]`
-/

namespace A328269.P4968590637409015600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328280 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328269.P4968590637409015600

/-! ## A328269.P12676970247041104144

`record[A328280(n/A093178(n))]`
-/

namespace A328269.P12676970247041104144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328280 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328269.P12676970247041104144

/-! ## A328269.P414799137438486417

`A328281(2*n)/(2*n+1)`
-/

namespace A328269.P414799137438486417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328281 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A328269.P414799137438486417

/-!
# A328270: Total number of nodes in all walks on cubic lattice starting at (0,0,0), ending at (0,n,n), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328270, there is no canonical definition to state claims against.
-/

/-! ## A328270.P7811900521345026711

`(2*n+1)*A328269(n)`
-/

namespace A328270.P7811900521345026711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A328269 n

end

end A328270.P7811900521345026711

/-! ## A328270.P13363784100566434362

`A328281(2*n)`
-/

namespace A328270.P13363784100566434362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328281 (2 * n)

end

end A328270.P13363784100566434362

/-! ## A328270.P10473612694132378698

`(2*n+1)*A328280(2*n)`
-/

namespace A328270.P10473612694132378698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A328280 (2 * n)

end

end A328270.P10473612694132378698

/-! ## A328270.P240793922715179258

`record[A328281(A014681(n))]`
-/

namespace A328270.P240793922715179258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328281 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328270.P240793922715179258

/-! ## A328270.P14839873280838430212

`record[A328281(A153733(n))]`
-/

namespace A328270.P14839873280838430212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328281 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328270.P14839873280838430212

/-!
# A328271: Expansion of Sum_{k>=1} x^(k^2) * (1 + x^(k^2)) / (1 - x^(k^2))^3.

The programs for A328271, the canonical program `A328271.P2516295972375005117` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328271 has offset 1).

The definition of A328271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328271.P11553984548773901150

`A351602(n+1)/(n+1)²`
-/

namespace A328271.P11553984548773901150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351602 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A328271.P11553984548773901150

namespace A328271

/-- `A351602(n+1)/(n+1)²` -/
def P11553984548773901150.Spec : Prop :=
  ∀ n, P11553984548773901150.a n = (A328271 (n + 1) : ℚ)

end A328271

/-! ## A328271.P3592029501361603184

`∑{d}[A000188(n+1), ((n+1)/#²)²]`
-/

namespace A328271.P3592029501361603184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d ^ 2 : ℚ)) ^ 2

end

end A328271.P3592029501361603184

namespace A328271

/-- `∑{d}[A000188(n+1), ((n+1)/#²)²]` -/
def P3592029501361603184.Spec : Prop :=
  ∀ n, P3592029501361603184.a n = (A328271 (n + 1) : ℚ)

end A328271

/-! ## A328271.P12070165695298621431

`A055491(n+1)*A351307(n+1)`
-/

namespace A328271.P12070165695298621431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1) * A351307 (n + 1)

end

end A328271.P12070165695298621431

namespace A328271

/-- `A055491(n+1)*A351307(n+1)` -/
def P12070165695298621431.Spec : Prop :=
  ∀ n, P12070165695298621431.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P11223627118640154782

`A007913(n+1)²*A351307(n+1)`
-/

namespace A328271.P11223627118640154782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2 * A351307 (n + 1)

end

end A328271.P11223627118640154782

namespace A328271

/-- `A007913(n+1)²*A351307(n+1)` -/
def P11223627118640154782.Spec : Prop :=
  ∀ n, P11223627118640154782.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P12923511712735610428

`∑{d}[n+1, A001157(#)*A008836((n+1)/#)]`
-/

namespace A328271.P12923511712735610428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P12923511712735610428

namespace A328271

/-- `∑{d}[n+1, A001157(#)*A008836((n+1)/#)]` -/
def P12923511712735610428.Spec : Prop :=
  ∀ n, P12923511712735610428.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P10388185154871414433

`∑{d}[n+1, A000290(#)*A010052((n+1)/#)]`
-/

namespace A328271.P10388185154871414433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P10388185154871414433

namespace A328271

/-- `∑{d}[n+1, A000290(#)*A010052((n+1)/#)]` -/
def P10388185154871414433.Spec : Prop :=
  ∀ n, P10388185154871414433.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P15854002978013548572

`∑{d}[n+1, A007434(#)*A046951((n+1)/#)]`
-/

namespace A328271.P15854002978013548572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P15854002978013548572

namespace A328271

/-- `∑{d}[n+1, A007434(#)*A046951((n+1)/#)]` -/
def P15854002978013548572.Spec : Prop :=
  ∀ n, P15854002978013548572.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P13305113397281009142

`∑{d}[n+1, A002618(#)*A076752((n+1)/#)]`
-/

namespace A328271.P13305113397281009142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P13305113397281009142

namespace A328271

/-- `∑{d}[n+1, A002618(#)*A076752((n+1)/#)]` -/
def P13305113397281009142.Spec : Prop :=
  ∀ n, P13305113397281009142.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P17291791726450709321

`∑{d}[n+1, A007433(#)*A158522((n+1)/#)]`
-/

namespace A328271.P17291791726450709321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P17291791726450709321

namespace A328271

/-- `∑{d}[n+1, A007433(#)*A158522((n+1)/#)]` -/
def P17291791726450709321.Spec : Prop :=
  ∀ n, P17291791726450709321.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P2516295972375005117

`∑{d}[n+1, A057660(#)*A206369((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A328271

/-- `∑{d}[n+1, A057660(#)*A206369((n+1)/#)]` -/
def P2516295972375005117.Spec : Prop :=
  ∀ n, P2516295972375005117.a n = A328271 (n + 1)

theorem P2516295972375005117.correct : P2516295972375005117.Spec := by
  intro n
  simp only [A328271, Nat.add_sub_cancel]

end A328271

/-! ## A328271.P17048744922994446731

`∑{d}[n+1, A001001(#)*A323363((n+1)/#)]`
-/

namespace A328271.P17048744922994446731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P17048744922994446731

namespace A328271

/-- `∑{d}[n+1, A001001(#)*A323363((n+1)/#)]` -/
def P17048744922994446731.Spec : Prop :=
  ∀ n, P17048744922994446731.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P3497130822504757378

`∑{d}[n+1, A063445(#)*A332844((n+1)/#)]`
-/

namespace A328271.P3497130822504757378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P3497130822504757378

namespace A328271

/-- `∑{d}[n+1, A063445(#)*A332844((n+1)/#)]` -/
def P3497130822504757378.Spec : Prop :=
  ∀ n, P3497130822504757378.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P8505373430278318439

`∑{d}[n+1, A124315(#)*A321322((n+1)/#)]`
-/

namespace A328271.P8505373430278318439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P8505373430278318439

namespace A328271

/-- `∑{d}[n+1, A124315(#)*A321322((n+1)/#)]` -/
def P8505373430278318439.Spec : Prop :=
  ∀ n, P8505373430278318439.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P11528045176219857675

`∑{d}[n+1, A143259(#)*A328407((n+1)/#)]`
-/

namespace A328271.P11528045176219857675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A328407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P11528045176219857675

namespace A328271

/-- `∑{d}[n+1, A143259(#)*A328407((n+1)/#)]` -/
def P11528045176219857675.Spec : Prop :=
  ∀ n, P11528045176219857675.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P5300121016664390522

`∑{d}[n+1, A158949(#)*A329484((n+1)/#)]`
-/

namespace A328271.P5300121016664390522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158949 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P5300121016664390522

namespace A328271

/-- `∑{d}[n+1, A158949(#)*A329484((n+1)/#)]` -/
def P5300121016664390522.Spec : Prop :=
  ∀ n, P5300121016664390522.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P14830775858728128072

`∑{d}[n+1, A308422(#)*A326813((n+1)/#)]`
-/

namespace A328271.P14830775858728128072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308422 d * A326813 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P14830775858728128072

namespace A328271

/-- `∑{d}[n+1, A308422(#)*A326813((n+1)/#)]` -/
def P14830775858728128072.Spec : Prop :=
  ∀ n, P14830775858728128072.a n = A328271 (n + 1)

end A328271

/-! ## A328271.P6829366515802841591

`∑{d}[n+1, A328639(#)*A360429((n+1)/#)]`
-/

namespace A328271.P6829366515802841591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328639 d * A360429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328271.P6829366515802841591

namespace A328271

/-- `∑{d}[n+1, A328639(#)*A360429((n+1)/#)]` -/
def P6829366515802841591.Spec : Prop :=
  ∀ n, P6829366515802841591.a n = A328271 (n + 1)

end A328271

/-!
# A328273: Super Niven numbers: numbers divisible by the sums of all the nonempty subsets of their nonzero digits.

The programs for A328273, there is no canonical definition to state claims against.
-/

/-! ## A328273.P14032587974367651372

`A342650(C(A348553(n), n))`
-/

namespace A328273.P14032587974367651372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342650 (Nat.choose (A348553 n).toNat n)

end

end A328273.P14032587974367651372

/-! ## A328273.P4674622866274735833

`A342650(A351831(n+1)+1)`
-/

namespace A328273.P4674622866274735833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342650 (A351831 (n + 1) + 1).toNat

end

end A328273.P4674622866274735833

/-! ## A328273.P15668972194497195523

`A342650(n+1)%A060215(n)`
-/

namespace A328273.P15668972194497195523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342650 (n + 1)) (A060215 n)

end

end A328273.P15668972194497195523

/-! ## A328273.P1912129850387077023

`∩[A032520(n+1), A342650(n+1)]`
-/

namespace A328273.P1912129850387077023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328273.P1912129850387077023

/-! ## A328273.P2991495187321142678

`A342650(n+1)+A010054(A001248(n+1))`
-/

namespace A328273.P2991495187321142678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342650 (n + 1) + A010054 (A001248 (n + 1)).toNat

end

end A328273.P2991495187321142678

/-!
# A328275: Numbers m such that phi(m) = rad(m)^4, where phi is the Euler totient function (A000010) and rad is the squarefree kernel function (A007947).

The programs for A328275, there is no canonical definition to state claims against.
-/

/-! ## A328275.P5617141286274943637

`A116003(A332280(n+2)-A115994(n+1)+n)`
-/

namespace A328275.P5617141286274943637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116003 (A332280 (n + 2) - A115994 (n + 1) + (n : ℤ)).toNat

end

end A328275.P5617141286274943637

/-!
# A328276: The number of solutions to phi(x) = rad(x)^n, where phi is the Euler totient function (A000010) and rad is the squarefree kernel function (A007947).

The programs for A328276, there is no canonical definition to state claims against.
-/

/-! ## A328276.P11258913759496962834

`A348336(A244756(n))+A151549(2*n+3)`
-/

namespace A328276.P11258913759496962834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348336 (A244756 n).toNat + A151549 (2 * n + 3)

end

end A328276.P11258913759496962834

/-!
# A328277: Triangle T(m,n) = # { k | concat(mk,nk) has no digit twice or more }, m > n > 0.

The programs for A328277, there is no canonical definition to state claims against.
-/

/-! ## A328277.P18267092426425380410

`A328288(eq[0, A103451(n)])`
-/

namespace A328277.P18267092426425380410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328277.P18267092426425380410

/-! ## A328277.P4765165788629726187

`A328288(lt[0, A329331(n)])`
-/

namespace A328277.P4765165788629726187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328277.P4765165788629726187

/-! ## A328277.P9470281770339319535

`A328288(lt[1, A007318(n)])`
-/

namespace A328277.P9470281770339319535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328277.P9470281770339319535

/-! ## A328277.P11237597295547824121

`A328288(lt[1, A008288(n)])`
-/

namespace A328277.P11237597295547824121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328277.P11237597295547824121

/-! ## A328277.P8752885495427758532

`A328288(lt[1, A056941(n)])`
-/

namespace A328277.P8752885495427758532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328277.P8752885495427758532

/-!
# A328280: Number of n-step walks on cubic lattice starting at (0,0,0), ending at (0,floor(n/2),ceiling(n/2)), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328280, there is no canonical definition to state claims against.
-/

/-! ## A328280.P1544140024426936364

`A328300(floor((n+1)²/2))`
-/

namespace A328280.P1544140024426936364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328300 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A328280.P1544140024426936364

/-! ## A328280.P8297673348767496276

`abs(A328300(A080476(n+1))-1)+1`
-/

namespace A328280.P8297673348767496276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328300 (A080476 (n + 1)).toNat - 1| + 1

end

end A328280.P8297673348767496276

/-! ## A328280.P8983195211736590510

`gcd(A000038(n), A328300(A080476(n+1)))`
-/

namespace A328280.P8983195211736590510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A328300 (A080476 (n + 1)).toNat)

end

end A328280.P8983195211736590510

/-! ## A328280.P14323806642272013387

`lcm(A057077(n), A328300(A080476(n+1)))`
-/

namespace A328280.P14323806642272013387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A328300 (A080476 (n + 1)).toNat)

end

end A328280.P14323806642272013387

/-! ## A328280.P9547614687627091245

`or(A000007(n), A328300(A080476(n+1)))`
-/

namespace A328280.P9547614687627091245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A328300 (A080476 (n + 1)).toNat)

end

end A328280.P9547614687627091245

/-! ## A328280.P6434291546921492734

`A158388(n+1)*A328300(A080476(n+1))`
-/

namespace A328280.P6434291546921492734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A328300 (A080476 (n + 1)).toNat

end

end A328280.P6434291546921492734

/-! ## A328280.P15562606401013159509

`A328300(A194274(n))+A183063(2*n+1)`
-/

namespace A328280.P15562606401013159509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328300 (A194274 n).toNat + A183063 (2 * n + 1)

end

end A328280.P15562606401013159509

/-! ## A328280.P7495490232426412964

`A328281(n)/(n+1)`
-/

namespace A328280.P7495490232426412964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328281 n : ℚ) / (n + 1 : ℚ)

end

end A328280.P7495490232426412964

/-!
# A328281: Total number of nodes in all n-step walks on cubic lattice starting at (0,0,0), ending at (0,floor(n/2),ceiling(n/2)), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328281, there is no canonical definition to state claims against.
-/

/-! ## A328281.P2483360257214394652

`(n+1)*A328280(n)`
-/

namespace A328281.P2483360257214394652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328280 n

end

end A328281.P2483360257214394652

/-! ## A328281.P14619606650088067960

`(n+1)*A328300(floor((n+1)²/2))`
-/

namespace A328281.P14619606650088067960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328300 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A328281.P14619606650088067960

/-! ## A328281.P4061952040054178524

`A328280(n)*A328399(2*n)`
-/

namespace A328281.P4061952040054178524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328280 n * A328399 (2 * n)

end

end A328281.P4061952040054178524

/-! ## A328281.P1613226794771306108

`A328300(A080476(n+1))*(n+1)`
-/

namespace A328281.P1613226794771306108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328300 (A080476 (n + 1)).toNat * (n + 1 : ℤ)

end

end A328281.P1613226794771306108

/-! ## A328281.P9387462911393527694

`A328300(A194274(n))+n*A328300(A194274(n))`
-/

namespace A328281.P9387462911393527694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328300 (A194274 n).toNat + (n : ℤ) * A328300 (A194274 n).toNat

end

end A328281.P9387462911393527694

/-!
# A328282: a(n) is the least k such that A175930(k) = n.

The programs for A328282, there is no canonical definition to state claims against.
-/

/-! ## A328282.P489295974289496894

`A365279(eq[A037291(3*n+4), A180181(n+1)])`
-/

namespace A328282.P489295974289496894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365279 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328282.P489295974289496894

/-!
# A328284: An extension of the Jacobsthal numbers: 0, 0, 1, followed by A001045.

The programs for A328284, the canonical program `A328284.P11134419020034761192` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328284 has offset 0).

The definition of A328284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328284.P11134419020034761192

`a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A328284

/-- `a(n-1)+2*a(n-2)` -/
def P11134419020034761192.Spec : Prop :=
  ∀ n, (P11134419020034761192.a n : ℤ) = A328284 n

theorem P11134419020034761192.correct : P11134419020034761192.Spec := by
  intro n
  simp only [A328284]

end A328284

/-! ## A328284.P9998142622611857291

`(-1)^n+2*a(n-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A328284.P9998142622611857291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0] fun n a =>
  (-1) ^ n + 2 * a (n - 1)

end

end A328284.P9998142622611857291

namespace A328284

/-- `(-1)^n+2*a(n-1)` -/
def P9998142622611857291.Spec : Prop :=
  ∀ n, P9998142622611857291.a n = A328284 n

end A328284

/-! ## A328284.P16528953215044220195

`a(n-1)+lcm(2, a(n-2))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A328284.P16528953215044220195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 1] fun n a =>
  a (n - 1) + Nat.lcm 2 (a (n - 2))

end

end A328284.P16528953215044220195

namespace A328284

/-- `a(n-1)+lcm(2, a(n-2))` -/
def P16528953215044220195.Spec : Prop :=
  ∀ n, (P16528953215044220195.a n : ℤ) = A328284 n

end A328284

/-! ## A328284.P18354619895234955034

`a(n-1)+a(n-1)+(-1)^n` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A328284.P18354619895234955034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0] fun n a =>
  a (n - 1) + (a (n - 1) + (-1) ^ n)

end

end A328284.P18354619895234955034

namespace A328284

/-- `a(n-1)+a(n-1)+(-1)^n` -/
def P18354619895234955034.Spec : Prop :=
  ∀ n, P18354619895234955034.a n = A328284 n

end A328284

/-! ## A328284.P3913423206278172240

`Δ[2*a(n-1)]-a(n-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A328284.P3913423206278172240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A328284.P3913423206278172240

namespace A328284

/-- `Δ[2*a(n-1)]-a(n-1)` -/
def P3913423206278172240.Spec : Prop :=
  ∀ n, P3913423206278172240.a n = A328284 n

end A328284

/-! ## A328284.P14716914571504351977

`floor(A173197(n)/4)`
-/

namespace A328284.P14716914571504351977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173197 n : ℚ) / 4⌋

end

end A328284.P14716914571504351977

namespace A328284

/-- `floor(A173197(n)/4)` -/
def P14716914571504351977.Spec : Prop :=
  ∀ n, P14716914571504351977.a n = A328284 n

end A328284

/-! ## A328284.P16291539758488467998

`A001045(val(A098011(n+1), 2))`
-/

namespace A328284.P16291539758488467998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.valuation (A098011 (n + 1)).toNat 2)

end

end A328284.P16291539758488467998

namespace A328284

/-- `A001045(val(A098011(n+1), 2))` -/
def P16291539758488467998.Spec : Prop :=
  ∀ n, P16291539758488467998.a n = A328284 n

end A328284

/-! ## A328284.P1263907080950318636

`A098011(n+1)-A152046(n)`
-/

namespace A328284.P1263907080950318636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1) - A152046 n

end

end A328284.P1263907080950318636

namespace A328284

/-- `A098011(n+1)-A152046(n)` -/
def P1263907080950318636.Spec : Prop :=
  ∀ n, P1263907080950318636.a n = A328284 n

end A328284

/-! ## A328284.P3975899982647955323

`Δ[floor((round(2^(n-1)/6)+1)/2)]`
-/

namespace A328284.P3975899982647955323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 6) + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328284.P3975899982647955323

namespace A328284

/-- `Δ[floor((round(2^(n-1)/6)+1)/2)]` -/
def P3975899982647955323.Spec : Prop :=
  ∀ n, P3975899982647955323.a n = A328284 n

end A328284

/-! ## A328284.P14762873150415321601

`A267880(n)-A026644(n)`
-/

namespace A328284.P14762873150415321601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 n - A026644 n

end

end A328284.P14762873150415321601

namespace A328284

/-- `A267880(n)-A026644(n)` -/
def P14762873150415321601.Spec : Prop :=
  ∀ n, P14762873150415321601.a n = A328284 n

end A328284

/-! ## A328284.P14314027372448685584

`and(A084183(n), A267880(n))`
-/

namespace A328284.P14314027372448685584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084183 n) (A267880 n)

end

end A328284.P14314027372448685584

namespace A328284

/-- `and(A084183(n), A267880(n))` -/
def P14314027372448685584.Spec : Prop :=
  ∀ n, P14314027372448685584.a n = A328284 n

end A328284

/-! ## A328284.P11142059316891321180

`A168642(n)%A098011(n+1)`
-/

namespace A328284.P11142059316891321180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168642 n) (A098011 (n + 1))

end

end A328284.P11142059316891321180

namespace A328284

/-- `A168642(n)%A098011(n+1)` -/
def P11142059316891321180.Spec : Prop :=
  ∀ n, P11142059316891321180.a n = A328284 n

end A328284

/-! ## A328284.P15121874785232497228

`and(A084241(n), A267880(n))`
-/

namespace A328284.P15121874785232497228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084241 n) (A267880 n)

end

end A328284.P15121874785232497228

namespace A328284

/-- `and(A084241(n), A267880(n))` -/
def P15121874785232497228.Spec : Prop :=
  ∀ n, P15121874785232497228.a n = A328284 n

end A328284

/-! ## A328284.P2959795165247096325

`A060959(C(n, 2)+2)`
-/

namespace A328284.P2959795165247096325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (Nat.choose n 2 + 2)

end

end A328284.P2959795165247096325

namespace A328284

/-- `A060959(C(n, 2)+2)` -/
def P2959795165247096325.Spec : Prop :=
  ∀ n, P2959795165247096325.a n = A328284 n

end A328284

/-! ## A328284.P15979539402872791878

`A060959(∑[n-1]+3)`
-/

namespace A328284.P15979539402872791878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A328284.P15979539402872791878

namespace A328284

/-- `A060959(∑[n-1]+3)` -/
def P15979539402872791878.Spec : Prop :=
  ∀ n, P15979539402872791878.a n = A328284 n

end A328284

/-!
# A328286: Expansion of e.g.f. -log(1 - x - x^2/2).

The programs for A328286, there is no canonical definition to state claims against.
-/

/-! ## A328286.P13188203935519322819

`(2*a(n-1)+(n-1)*a(n-2))*n/2` with `a(0)=1, a(1)=2`
-/

namespace A328286.P13188203935519322819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * a (n - 1) + ((n : ℤ) - 1 : ℚ) * a (n - 2)) * ((n : ℚ) / 2)

end

end A328286.P13188203935519322819

/-! ## A328286.P15920079061526740529

`A026150(n+1)/A000079(n)*n!`
-/

namespace A328286.P15920079061526740529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 (n + 1) : ℚ) / (A000079 n : ℚ) * (Nat.factorial n : ℚ)

end

end A328286.P15920079061526740529

/-! ## A328286.P6082825985063777670

`A000142(n)/A011782(n)*A052945(n)`
-/

namespace A328286.P6082825985063777670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A011782 n : ℚ) * (A052945 n : ℚ)

end

end A328286.P6082825985063777670

/-! ## A328286.P6482579260540341129

`A052945(n)/A155020(n)*A080599(n)`
-/

namespace A328286.P6482579260540341129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052945 n : ℚ) / (A155020 n : ℚ) * (A080599 n : ℚ)

end

end A328286.P6482579260540341129

/-! ## A328286.P6530973348155320926

`A026150(n+1)/A000079(n)*A000142(n)`
-/

namespace A328286.P6530973348155320926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 (n + 1) : ℚ) / (A000079 n : ℚ) * (A000142 n : ℚ)

end

end A328286.P6530973348155320926

/-!
# A328287: Number of multiples of n which have only distinct and nonzero digits in base 10.

The programs for A328287, there is no canonical definition to state claims against.
-/

/-! ## A328287.P14104328800834382011

`A328288(∑[A002998(n)])`
-/

namespace A328287.P14104328800834382011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328287.P14104328800834382011

/-! ## A328287.P13281552369886822018

`A328288(∑[A056143(n)])`
-/

namespace A328287.P13281552369886822018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328287.P13281552369886822018

/-! ## A328287.P7064419567195643220

`A328288(∑[A082216(n)])`
-/

namespace A328287.P7064419567195643220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328287.P7064419567195643220

/-! ## A328287.P6378936569685047380

`A328288(A351870(∑[n]))`
-/

namespace A328287.P6378936569685047380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (A351870 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328287.P6378936569685047380

/-! ## A328287.P1784095773774153778

`A328288(A050760(n+1))`
-/

namespace A328287.P1784095773774153778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 (A050760 (n + 1)).toNat

end

end A328287.P1784095773774153778

/-!
# A328290: Table T(b,n) = #{ k > 0 | nk has only distinct and nonzero digits in base b }, b >= 2, 1 <= n <= A051846(b).

The programs for A328290, there is no canonical definition to state claims against.
-/

/-! ## A328290.P305091463335795048

`A000537(A351680(3*(n+1)))%A321784(n+1)`
-/

namespace A328290.P305091463335795048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000537 (A351680 (3 * (n + 1))).toNat) (A321784 (n + 1))

end

end A328290.P305091463335795048

/-!
# A328291: a(n) is the greatest k >= 0 such that n*k has distinct decimal digits.

The programs for A328291, there is no canonical definition to state claims against.
-/

/-! ## A328291.P14869173867462197178

`A328292(n+1)/(n+1)`
-/

namespace A328291.P14869173867462197178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328292 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A328291.P14869173867462197178

/-!
# A328292: a(n) is the greatest nonnegative multiple of n with distinct decimal digits.

The programs for A328292, there is no canonical definition to state claims against.
-/

/-! ## A328292.P8187204207560187937

`(n+1)*A328291(n+1)`
-/

namespace A328292.P8187204207560187937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328291 (n + 1)

end

end A328292.P8187204207560187937

/-! ## A328292.P4962603135673179865

`A328291(n+1)*A348553(n)`
-/

namespace A328292.P4962603135673179865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328291 (n + 1) * A348553 n

end

end A328292.P4962603135673179865

/-! ## A328292.P12243819735680862087

`A328291(n+1)*A387051(n)`
-/

namespace A328292.P12243819735680862087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328291 (n + 1) * A387051 n

end

end A328292.P12243819735680862087

/-! ## A328292.P3072706939969321813

`A328291(n+1)*A387108(n)`
-/

namespace A328292.P3072706939969321813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328291 (n + 1) * A387108 n

end

end A328292.P3072706939969321813

/-! ## A328292.P11435131305149161720

`A328291(n+1)*A387109(n)`
-/

namespace A328292.P11435131305149161720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328291 (n + 1) * A387109 n

end

end A328292.P11435131305149161720

/-!
# A328294: Set a(1)=1 and a(2)=2. For n > 2, if a(n) had already appeared in the sequence, then a(n+1) = number of steps since its most recent appearance, as in Van Eck's sequence A181391. If a(n) had not appeared before, search instead for a(n)-1, then a(n)-2, etc., until you find a number that has appeared before.

The programs for A328294, there is no canonical definition to state claims against.
-/

/-! ## A328294.P4646175542455086934

`A194449(A182711(n+1)+A167934(n))`
-/

namespace A328294.P4646175542455086934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194449 (A182711 (n + 1) + A167934 n).toNat

end

end A328294.P4646175542455086934

/-! ## A328294.P3709758127169873681

`or(A264990(A007327(n+1)), A264998(n+2))`
-/

namespace A328294.P3709758127169873681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A264990 (A007327 (n + 1)).toNat) (A264998 (n + 2))

end

end A328294.P3709758127169873681

/-! ## A328294.P867107761397424729

`gcd(A008593(A119104(n+2)), A096870(2*(n+2)))`
-/

namespace A328294.P867107761397424729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008593 (A119104 (n + 2)).toNat) (A096870 (2 * (n + 2)))

end

end A328294.P867107761397424729

/-! ## A328294.P13029614740342958509

`A160520(A018134(n))`
-/

namespace A328294.P13029614740342958509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160520 (A018134 n).toNat

end

end A328294.P13029614740342958509

/-! ## A328294.P7426411092539322796

`A353497(A303863(n))`
-/

namespace A328294.P7426411092539322796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353497 (A303863 n).toNat

end

end A328294.P7426411092539322796

/-!
# A328295: Number of n-step walks on cubic lattice starting at (0,0,0), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328295, there is no canonical definition to state claims against.
-/

/-! ## A328295.P5075472112488935902

`A256271(A000638(2*n)+n)`
-/

namespace A328295.P5075472112488935902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256271 (A000638 (2 * n) + (n : ℤ)).toNat

end

end A328295.P5075472112488935902

/-! ## A328295.P8266018688601518136

`A086161(2^n*A001671(n))`
-/

namespace A328295.P8266018688601518136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 ((2 ^ n : ℤ) * A001671 n).toNat

end

end A328295.P8266018688601518136

/-!
# A328296: Number of n-step walks on cubic lattice starting at (0,0,0), ending at (0,y,z), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328296, there is no canonical definition to state claims against.
-/

/-! ## A328296.P4339185728334058129

`A328297(∑[n])`
-/

namespace A328296.P4339185728334058129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328296.P4339185728334058129

/-! ## A328296.P7458006117913041783

`record[A328297(n)/A007318(n)]`
-/

namespace A328296.P7458006117913041783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328297 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328296.P7458006117913041783

/-! ## A328296.P10650677777317043532

`record[A328297(n)/A328300(n)]`
-/

namespace A328296.P10650677777317043532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328297 n : ℚ) / (A328300 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328296.P10650677777317043532

/-! ## A328296.P7507899704922171505

`record[gcd(A002262(n), A328297(n))]`
-/

namespace A328296.P7507899704922171505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A328297 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328296.P7507899704922171505

/-! ## A328296.P4397933966750944554

`lcm((-1)^n, A328297(A000217(n)))`
-/

namespace A328296.P4397933966750944554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A328297 (A000217 n).toNat)

end

end A328296.P4397933966750944554

/-! ## A328296.P9312623839001271047

`record[A328297(A000217(A078898(n)))]`
-/

namespace A328296.P9312623839001271047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328297 (A000217 (A078898 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328296.P9312623839001271047

/-! ## A328296.P17058211848354858935

`lcm(A328297(A000217(n)), A339265(n))`
-/

namespace A328296.P17058211848354858935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A328297 (A000217 n).toNat) (A339265 n)

end

end A328296.P17058211848354858935

/-! ## A328296.P11971679222240276796

`char[A014681(n)]*A328297(A000217(n))`
-/

namespace A328296.P11971679222240276796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A328297 (A000217 n).toNat

end

end A328296.P11971679222240276796

/-! ## A328296.P17366698077336653702

`record[A328297(A000217(A055087(n)))]`
-/

namespace A328296.P17366698077336653702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328297 (A000217 (A055087 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328296.P17366698077336653702

/-! ## A328296.P17288213875826752013

`record[A328297(A000217(A181578(n)))]`
-/

namespace A328296.P17288213875826752013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328297 (A000217 (A181578 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328296.P17288213875826752013

/-!
# A328299: Number of n-step walks on cubic lattice starting at (0,0,0), ending at (floor(n/3), floor((n+1)/3), floor((n+2)/3)), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328299, there is no canonical definition to state claims against.
-/

/-! ## A328299.P1239484353415152869

`round(A085632(n+3)/4)`
-/

namespace A328299.P1239484353415152869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085632 (n + 3) : ℚ) / 4)

end

end A328299.P1239484353415152869

/-! ## A328299.P4067572956984988720

`A262689(n²*(n+1)^(n-1)+n+1)`
-/

namespace A328299.P4067572956984988720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 1 : ℚ))).toNat

end

end A328299.P4067572956984988720

