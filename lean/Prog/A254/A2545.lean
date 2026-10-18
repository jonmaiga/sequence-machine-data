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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

/-!
# A254500: a(n) is the smallest nonnegative integer such that a(n)! contains a string of exactly n consecutive 5's.

The programs for A254500, there is no canonical definition to state claims against.
-/

/-! ## A254500.P10607894295529125027

`A276137(∑[∑[A053219(n+1)]])`
-/

namespace A254500.P10607894295529125027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254500.P10607894295529125027

/-!
# A254503: Möbius transform of A034448.

The programs for A254503, the canonical program `A254503.P16877197465467938331` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254503 has offset 1).

The definition of A254503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A384050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254503.P16877197465467938331

`A002618(n+1)/A384050(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A254503

/-- `A002618(n+1)/A384050(n+1)` -/
def P16877197465467938331.Spec : Prop :=
  ∀ n, P16877197465467938331.a n = (A254503 (n + 1) : ℚ)

end A254503

/-! ## A254503.P12837335953586096502

`1-A348513(n+1)+n`
-/

namespace A254503.P12837335953586096502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348513 (n + 1) + (n : ℤ)

end

end A254503.P12837335953586096502

namespace A254503

/-- `1-A348513(n+1)+n` -/
def P12837335953586096502.Spec : Prop :=
  ∀ n, P12837335953586096502.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P5925416140098071096

`A000010((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #]`
-/

namespace A254503.P5925416140098071096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A254503.P5925416140098071096

namespace A254503

/-- `A000010((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #]` -/
def P5925416140098071096.Spec : Prop :=
  ∀ n, P5925416140098071096.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P15833978161115215877

`(A109606((n+1)/∏{p}[n+1, #])+1)*∏{p}[n+1, #]`
-/

namespace A254503.P15833978161115215877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat + 1) * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A254503.P15833978161115215877

namespace A254503

/-- `(A109606((n+1)/∏{p}[n+1, #])+1)*∏{p}[n+1, #]` -/
def P15833978161115215877.Spec : Prop :=
  ∀ n, P15833978161115215877.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P7277741100925830717

`A007913(n+1)*A380162(n+1)`
-/

namespace A254503.P7277741100925830717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A380162 (n + 1)

end

end A254503.P7277741100925830717

namespace A254503

/-- `A007913(n+1)*A380162(n+1)` -/
def P7277741100925830717.Spec : Prop :=
  ∀ n, P7277741100925830717.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P11119406836950813453

`A055231(n+1)*A380160(n+1)`
-/

namespace A254503.P11119406836950813453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A380160 (n + 1)

end

end A254503.P11119406836950813453

namespace A254503

/-- `A055231(n+1)*A380160(n+1)` -/
def P11119406836950813453.Spec : Prop :=
  ∀ n, P11119406836950813453.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P5804252147723992874

`∑{d}[n+1, A008683(#)*A034448((n+1)/#)]`
-/

namespace A254503.P5804252147723992874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254503.P5804252147723992874

namespace A254503

/-- `∑{d}[n+1, A008683(#)*A034448((n+1)/#)]` -/
def P5804252147723992874.Spec : Prop :=
  ∀ n, P5804252147723992874.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P3399916898709067985

`∑{d}[n+1, A007427(#)*A328485((n+1)/#)]`
-/

namespace A254503.P3399916898709067985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254503.P3399916898709067985

namespace A254503

/-- `∑{d}[n+1, A007427(#)*A328485((n+1)/#)]` -/
def P3399916898709067985.Spec : Prop :=
  ∀ n, P3399916898709067985.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P10356527009039564473

`∑{d}[n+1, A307445(#)*A332619((n+1)/#)]`
-/

namespace A254503.P10356527009039564473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A332619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254503.P10356527009039564473

namespace A254503

/-- `∑{d}[n+1, A307445(#)*A332619((n+1)/#)]` -/
def P10356527009039564473.Spec : Prop :=
  ∀ n, P10356527009039564473.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P3267566693634731615

`A000010((n+1)/∏{p}[n+1, #])*A007947(n+1)`
-/

namespace A254503.P3267566693634731615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A007947 (n + 1)

end

end A254503.P3267566693634731615

namespace A254503

/-- `A000010((n+1)/∏{p}[n+1, #])*A007947(n+1)` -/
def P3267566693634731615.Spec : Prop :=
  ∀ n, P3267566693634731615.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P16678188288515678743

`1-∑{d}[n+1, A008683(#)*A048146((n+1)/#)]+n`
-/

namespace A254503.P16678188288515678743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A048146 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + (n : ℤ)

end

end A254503.P16678188288515678743

namespace A254503

/-- `1-∑{d}[n+1, A008683(#)*A048146((n+1)/#)]+n` -/
def P16678188288515678743.Spec : Prop :=
  ∀ n, P16678188288515678743.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P8639318206105410790

`A000010(A003557(n+1))*A007947(n+1)`
-/

namespace A254503.P8639318206105410790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003557 (n + 1)).toNat * A007947 (n + 1)

end

end A254503.P8639318206105410790

namespace A254503

/-- `A000010(A003557(n+1))*A007947(n+1)` -/
def P8639318206105410790.Spec : Prop :=
  ∀ n, P8639318206105410790.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P4710458677639772094

`A000010(A008833(n+1))*A007913(n+1)`
-/

namespace A254503.P4710458677639772094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008833 (n + 1)).toNat * A007913 (n + 1)

end

end A254503.P4710458677639772094

namespace A254503

/-- `A000010(A008833(n+1))*A007913(n+1)` -/
def P4710458677639772094.Spec : Prop :=
  ∀ n, P4710458677639772094.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P99796992856352853

`A000010(A000188(n+1))*A019554(n+1)`
-/

namespace A254503.P99796992856352853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000188 (n + 1)).toNat * A019554 (n + 1)

end

end A254503.P99796992856352853

namespace A254503

/-- `A000010(A000188(n+1))*A019554(n+1)` -/
def P99796992856352853.Spec : Prop :=
  ∀ n, P99796992856352853.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P16198890092728597196

`A000010(A000189(n+1))*A019555(n+1)`
-/

namespace A254503.P16198890092728597196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000189 (n + 1)).toNat * A019555 (n + 1)

end

end A254503.P16198890092728597196

namespace A254503

/-- `A000010(A000189(n+1))*A019555(n+1)` -/
def P16198890092728597196.Spec : Prop :=
  ∀ n, P16198890092728597196.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P14888594822831485572

`A000010(A000190(n+1))*A053166(n+1)`
-/

namespace A254503.P14888594822831485572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000190 (n + 1)).toNat * A053166 (n + 1)

end

end A254503.P14888594822831485572

namespace A254503

/-- `A000010(A000190(n+1))*A053166(n+1)` -/
def P14888594822831485572.Spec : Prop :=
  ∀ n, P14888594822831485572.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P476589961963026025

`A000010(A057521(n+1))*A055231(n+1)`
-/

namespace A254503.P476589961963026025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A057521 (n + 1)).toNat * A055231 (n + 1)

end

end A254503.P476589961963026025

namespace A254503

/-- `A000010(A057521(n+1))*A055231(n+1)` -/
def P476589961963026025.Spec : Prop :=
  ∀ n, P476589961963026025.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P6966862000247356604

`A000010(A085731(n+1))*A083346(n+1)`
-/

namespace A254503.P6966862000247356604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A085731 (n + 1)).toNat * A083346 (n + 1)

end

end A254503.P6966862000247356604

namespace A254503

/-- `A000010(A085731(n+1))*A083346(n+1)` -/
def P6966862000247356604.Spec : Prop :=
  ∀ n, P6966862000247356604.a n = A254503 (n + 1)

end A254503

/-! ## A254503.P6723514553284896510

`A390755(n+1)/A000010(A055231(n+1))`
-/

namespace A254503.P6723514553284896510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390755 (n + 1) : ℚ) / (A000010 (A055231 (n + 1)).toNat : ℚ)

end

end A254503.P6723514553284896510

namespace A254503

/-- `A390755(n+1)/A000010(A055231(n+1))` -/
def P6723514553284896510.Spec : Prop :=
  ∀ n, P6723514553284896510.a n = (A254503 (n + 1) : ℚ)

end A254503

/-! ## A254503.P2998190531424866574

`A000010(A336551(n+1)+1)*A007947(n+1)`
-/

namespace A254503.P2998190531424866574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A336551 (n + 1) + 1).toNat * A007947 (n + 1)

end

end A254503.P2998190531424866574

namespace A254503

/-- `A000010(A336551(n+1)+1)*A007947(n+1)` -/
def P2998190531424866574.Spec : Prop :=
  ∀ n, P2998190531424866574.a n = A254503 (n + 1)

end A254503

/-!
# A254504: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254504, there is no canonical definition to state claims against.
-/

/-! ## A254504.P8011644169248879524

`A254512(∑[4*n]+1)`
-/

namespace A254504.P8011644169248879524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254504.P8011644169248879524

/-! ## A254504.P16697693456838261335

`A254512(A001844(n))+char[10]`
-/

namespace A254504.P16697693456838261335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254504.P16697693456838261335

/-! ## A254504.P5145360232090949040

`record[A003982(n)*A254512(n+1)]`
-/

namespace A254504.P5145360232090949040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254504.P5145360232090949040

/-! ## A254504.P13195797168458720323

`record[gcd(A114327(n), A254512(n+1))]`
-/

namespace A254504.P13195797168458720323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254512 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254504.P13195797168458720323

/-! ## A254504.P12913111883258646194

`A254512(A001844(n))*A288120(n)`
-/

namespace A254504.P12913111883258646194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A001844 n).toNat * A288120 n

end

end A254504.P12913111883258646194

/-!
# A254505: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254505, there is no canonical definition to state claims against.
-/

/-! ## A254505.P11596767263461919326

`A254512(∑[n]+1)`
-/

namespace A254505.P11596767263461919326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254505.P11596767263461919326

/-! ## A254505.P4039584834826669045

`record[A254512(n+1)/A088617(n)]`
-/

namespace A254505.P4039584834826669045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254512 (n + 1) : ℚ) / (A088617 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254505.P4039584834826669045

/-! ## A254505.P12335690738163442550

`record[root(A254512(n+1), A007318(n))]`
-/

namespace A254505.P12335690738163442550
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254512 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254505.P12335690738163442550

/-! ## A254505.P11403827946005210556

`A254512(A000124(n))*A288120(n)`
-/

namespace A254505.P11403827946005210556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A000124 n).toNat * A288120 n

end

end A254505.P11403827946005210556

/-! ## A254505.P9562024471731672873

`A254512(A000124(n))%A203864(n+1)`
-/

namespace A254505.P9562024471731672873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254512 (A000124 n).toNat) (A203864 (n + 1))

end

end A254505.P9562024471731672873

/-!
# A254506: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254506, there is no canonical definition to state claims against.
-/

/-! ## A254506.P15629295895914018613

`A254512(∑[n+2])`
-/

namespace A254506.P15629295895914018613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254506.P15629295895914018613

/-! ## A254506.P7973082592463095825

`record[A254512(A198455(n+1))]`
-/

namespace A254506.P7973082592463095825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254506.P7973082592463095825

/-! ## A254506.P7572260393646158414

`record[A254512(A333530(n+1))]`
-/

namespace A254506.P7572260393646158414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254506.P7572260393646158414

/-!
# A254507: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254507, there is no canonical definition to state claims against.
-/

/-! ## A254507.P3970683617698374834

`A254512(∑[n+3]+1)`
-/

namespace A254507.P3970683617698374834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254507.P3970683617698374834

/-! ## A254507.P2832821039478797655

`record[A254512(A333530(n+2)-1)]`
-/

namespace A254507.P2832821039478797655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A333530 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254507.P2832821039478797655

/-! ## A254507.P2812904709899900011

`A254512(Δ[A008778(n)])%A254516(n+1)`
-/

namespace A254507.P2812904709899900011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254512 (f1 (n + 1) - f1 n).toNat) (A254516 (n + 1))

end

end A254507.P2812904709899900011

/-!
# A254508: Number of (n+2) X (4+2) 0..1 arrays with every 3 X 3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254508, there is no canonical definition to state claims against.
-/

/-! ## A254508.P16875496161554017472

`A254512(A141214(n+1))`
-/

namespace A254508.P16875496161554017472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A141214 (n + 1)).toNat

end

end A254508.P16875496161554017472

/-! ## A254508.P11224901208757599512

`A254512(A155212(n)+5)`
-/

namespace A254508.P11224901208757599512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A155212 n + 5).toNat

end

end A254508.P11224901208757599512

/-! ## A254508.P11808914915377058331

`A254512(A056000(n)+7)`
-/

namespace A254508.P11808914915377058331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A056000 n + 7).toNat

end

end A254508.P11808914915377058331

/-! ## A254508.P3535657628225534654

`A254512(Δ[A006503(n+1)])`
-/

namespace A254508.P3535657628225534654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (f1 (n + 1) - f1 n).toNat

end

end A254508.P3535657628225534654

/-! ## A254508.P8619792723485748318

`A254512(A052905(n+1)+2)`
-/

namespace A254508.P8619792723485748318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A052905 (n + 1) + 2).toNat

end

end A254508.P8619792723485748318

/-!
# A254509: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254509, there is no canonical definition to state claims against.
-/

/-! ## A254509.P14484335088326522232

`A254512(Δ[A264443(n)])`
-/

namespace A254509.P14484335088326522232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (f1 (n + 1) - f1 n).toNat

end

end A254509.P14484335088326522232

/-! ## A254509.P14825776942128388208

`A254512(eq[4, A193592(n)])`
-/

namespace A254509.P14825776942128388208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254509.P14825776942128388208

/-! ## A254509.P14045508785913654168

`A254512(Δ[A023545(n+1)])`
-/

namespace A254509.P14045508785913654168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (f1 (n + 1) - f1 n).toNat

end

end A254509.P14045508785913654168

/-! ## A254509.P9637093477033907300

`A254512(eq[5, A200370(n+1)])`
-/

namespace A254509.P9637093477033907300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254509.P9637093477033907300

/-! ## A254509.P5654646608286905462

`A254512(eq[6, A185782(n+1)])`
-/

namespace A254509.P5654646608286905462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254509.P5654646608286905462

/-!
# A254510: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254510, there is no canonical definition to state claims against.
-/

/-! ## A254510.P17805432949602657978

`A254512(A052905(n+3))`
-/

namespace A254510.P17805432949602657978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A052905 (n + 3)).toNat

end

end A254510.P17805432949602657978

/-! ## A254510.P3312645538080502715

`A254512(A056119(n)+16)`
-/

namespace A254510.P3312645538080502715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A056119 n + 16).toNat

end

end A254510.P3312645538080502715

/-! ## A254510.P13991050960009262945

`A254512(eq[3, A219347(n)])`
-/

namespace A254510.P13991050960009262945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254510.P13991050960009262945

/-! ## A254510.P10156124890497090032

`A254512(eq[5, A193592(n)])`
-/

namespace A254510.P10156124890497090032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254510.P10156124890497090032

/-! ## A254510.P3727832091006648999

`A254512(eq[8, A258709(n)])`
-/

namespace A254510.P3727832091006648999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254510.P3727832091006648999

/-!
# A254511: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254511, there is no canonical definition to state claims against.
-/

/-! ## A254511.P13498267223796815500

`A254512(A055999(n+4))`
-/

namespace A254511.P13498267223796815500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A055999 (n + 4)).toNat

end

end A254511.P13498267223796815500

/-! ## A254511.P11682401676788346570

`A254512(eq[4, A219347(n)])`
-/

namespace A254511.P11682401676788346570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254511.P11682401676788346570

/-! ## A254511.P6281370118730060096

`A254512(eq[6, A193592(n)])`
-/

namespace A254511.P6281370118730060096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254511.P6281370118730060096

/-! ## A254511.P17527318964512296689

`A254512(eq[7, A200370(n+1)])`
-/

namespace A254511.P17527318964512296689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254511.P17527318964512296689

/-! ## A254511.P5454593769626894899

`A254512(eq[10, A185782(n+1)])`
-/

namespace A254511.P5454593769626894899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254511.P5454593769626894899

/-!
# A254513: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254513, there is no canonical definition to state claims against.
-/

/-! ## A254513.P8225804425272038572

`A254512(∑[n+1]+2)`
-/

namespace A254513.P8225804425272038572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254513.P8225804425272038572

/-! ## A254513.P7949468927204630622

`A254512(A133263(n+1))+char[A017141(n)]`
-/

namespace A254513.P7949468927204630622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017141 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254513.P7949468927204630622

/-! ## A254513.P15056504055418243166

`A254512(A133263(n+1))%A254507(n+1)`
-/

namespace A254513.P15056504055418243166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254512 (A133263 (n + 1)).toNat) (A254507 (n + 1))

end

end A254513.P15056504055418243166

/-! ## A254513.P13620667227822098796

`A254512(A133263(n+1))+A008683(8*(n+1))`
-/

namespace A254513.P13620667227822098796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A133263 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A254513.P13620667227822098796

/-! ## A254513.P5788719801182943001

`A000041(C(2, n+2))*A254512(A133263(n+1))`
-/

namespace A254513.P5788719801182943001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A254512 (A133263 (n + 1)).toNat

end

end A254513.P5788719801182943001

/-!
# A254514: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254514, there is no canonical definition to state claims against.
-/

/-! ## A254514.P15694623784098963576

`A254512(∑[n+2]+4)`
-/

namespace A254514.P15694623784098963576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254514.P15694623784098963576

/-! ## A254514.P4711463217396435365

`A254512(A167614(n+1))*A287091(n)`
-/

namespace A254514.P4711463217396435365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A167614 (n + 1)).toNat * A287091 n

end

end A254514.P4711463217396435365

/-! ## A254514.P18169422484353576555

`lcm(A020985(n), A254512(A167614(n+1)))`
-/

namespace A254514.P18169422484353576555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A254512 (A167614 (n + 1)).toNat)

end

end A254514.P18169422484353576555

/-! ## A254514.P13901866236445108779

`A294929(n+1)+A254512(A167614(n+1))`
-/

namespace A254514.P13901866236445108779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (n + 1) + A254512 (A167614 (n + 1)).toNat

end

end A254514.P13901866236445108779

/-! ## A254514.P7912994576258158912

`A059841(2*n)*A254512(A167614(n+1))`
-/

namespace A254514.P7912994576258158912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A254512 (A167614 (n + 1)).toNat

end

end A254514.P7912994576258158912

/-!
# A254515: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254515, there is no canonical definition to state claims against.
-/

/-! ## A254515.P15296163863264462334

`A254512(A141214(n)+7)`
-/

namespace A254515.P15296163863264462334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A141214 n + 7).toNat

end

end A254515.P15296163863264462334

/-! ## A254515.P16775363062779525242

`A254512(A052905(n)+9)`
-/

namespace A254515.P16775363062779525242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A052905 n + 9).toNat

end

end A254515.P16775363062779525242

/-! ## A254515.P17251105347952889806

`A254512(A055999(n)+10)`
-/

namespace A254515.P17251105347952889806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A055999 n + 10).toNat

end

end A254515.P17251105347952889806

/-! ## A254515.P3217774513968603868

`A254512(A167614(n+2)+1)`
-/

namespace A254515.P3217774513968603868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A167614 (n + 2) + 1).toNat

end

end A254515.P3217774513968603868

/-! ## A254515.P12857091368572843511

`A254512(A166136(n+2)-2)`
-/

namespace A254515.P12857091368572843511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A166136 (n + 2) - 2).toNat

end

end A254515.P12857091368572843511

/-!
# A254516: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254516, there is no canonical definition to state claims against.
-/

/-! ## A254516.P13850347696580299275

`A254512(A167499(n+3))`
-/

namespace A254516.P13850347696580299275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A167499 (n + 3)).toNat

end

end A254516.P13850347696580299275

/-! ## A254516.P2434000100124046245

`A254512(A155212(n)+13)`
-/

namespace A254516.P2434000100124046245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A155212 n + 13).toNat

end

end A254516.P2434000100124046245

/-! ## A254516.P3648078743321663464

`A254512(A056000(n)+15)`
-/

namespace A254516.P3648078743321663464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A056000 n + 15).toNat

end

end A254516.P3648078743321663464

/-! ## A254516.P18091828855359180383

`A254512(eq[7, A066657(n)])`
-/

namespace A254516.P18091828855359180383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254516.P18091828855359180383

/-! ## A254516.P11567339378507187376

`A254512(A051936(n+4)+14)`
-/

namespace A254516.P11567339378507187376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A051936 (n + 4) + 14).toNat

end

end A254516.P11567339378507187376

/-!
# A254517: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254517, there is no canonical definition to state claims against.
-/

/-! ## A254517.P3576899299494497674

`A254512(A056115(n)+21)`
-/

namespace A254517.P3576899299494497674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A056115 n + 21).toNat

end

end A254517.P3576899299494497674

/-! ## A254517.P8063753421651222606

`A254512(A167499(n+4)+1)`
-/

namespace A254517.P8063753421651222606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A167499 (n + 4) + 1).toNat

end

end A254517.P8063753421651222606

/-! ## A254517.P15075970569538045240

`A254512(eq[7, A131818(n+1)])`
-/

namespace A254517.P15075970569538045240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254517.P15075970569538045240

/-! ## A254517.P8564662987297585852

`A254512(Δ[A023545(n+1)]+10)`
-/

namespace A254517.P8564662987297585852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (f1 (n + 1) - f1 n + 10).toNat

end

end A254517.P8564662987297585852

/-! ## A254517.P16291987173784388341

`A254512(abs(A166136(n+4)-1)+1)`
-/

namespace A254517.P16291987173784388341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (|A166136 (n + 4) - 1| + 1).toNat

end

end A254517.P16291987173784388341

/-!
# A254518: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254518, there is no canonical definition to state claims against.
-/

/-! ## A254518.P4509484456034278097

`A254512(A056119(n)+28)`
-/

namespace A254518.P4509484456034278097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A056119 n + 28).toNat

end

end A254518.P4509484456034278097

/-! ## A254518.P17359705715095744787

`A254512(eq[11, A066657(n)])`
-/

namespace A254518.P17359705715095744787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254518.P17359705715095744787

/-! ## A254518.P14254050632213218875

`A254512(A167499(n+5)+2)`
-/

namespace A254518.P14254050632213218875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A167499 (n + 5) + 2).toNat

end

end A254518.P14254050632213218875

/-! ## A254518.P6112651583702727592

`A254512(A055999(n+3)+13)`
-/

namespace A254518.P6112651583702727592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (A055999 (n + 3) + 13).toNat

end

end A254518.P6112651583702727592

/-! ## A254518.P11040124159771793069

`A254512(eq[6, A002262(n)]+1)`
-/

namespace A254518.P11040124159771793069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A254518.P11040124159771793069

/-!
# A254519: Largest n-digit pseudoprime to base 3.

The programs for A254519, there is no canonical definition to state claims against.
-/

/-! ## A254519.P15254746364082813688

`A005935(A114245(n+2))`
-/

namespace A254519.P15254746364082813688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (A114245 (n + 2)).toNat

end

end A254519.P15254746364082813688

/-!
# A254520: Möbius transform of A034676.

The programs for A254520, the canonical program `A254520.P14622412056457031035` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254520 has offset 1).

The definition of A254520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063659, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254520.P14622412056457031035

`(n+1)*A063659(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A254520

/-- `(n+1)*A063659(n+1)` -/
def P14622412056457031035.Spec : Prop :=
  ∀ n, P14622412056457031035.a n = A254520 (n + 1)

theorem P14622412056457031035.correct : P14622412056457031035.Spec := by
  intro n
  simp only [A254520, Nat.add_sub_cancel]

end A254520

/-! ## A254520.P3455055556571653362

`(n+1)*∑{d}[n+1, A130107(#)]`
-/

namespace A254520.P3455055556571653362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A130107 d)

end

end A254520.P3455055556571653362

namespace A254520

/-- `(n+1)*∑{d}[n+1, A130107(#)]` -/
def P3455055556571653362.Spec : Prop :=
  ∀ n, P3455055556571653362.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P8623591801682401884

`(n+1)*(n+1-A063658(n+1))`
-/

namespace A254520.P8623591801682401884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A063658 (n + 1))

end

end A254520.P8623591801682401884

namespace A254520

/-- `(n+1)*(n+1-A063658(n+1))` -/
def P8623591801682401884.Spec : Prop :=
  ∀ n, P8623591801682401884.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P10657613447482743699

`A048671(n+1)*A140694(n+1)`
-/

namespace A254520.P10657613447482743699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) * A140694 (n + 1)

end

end A254520.P10657613447482743699

namespace A254520

/-- `A048671(n+1)*A140694(n+1)` -/
def P10657613447482743699.Spec : Prop :=
  ∀ n, P10657613447482743699.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P12318462325337042253

`∑{d}[n+1, A008683(#)*A034676((n+1)/#)]`
-/

namespace A254520.P12318462325337042253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P12318462325337042253

namespace A254520

/-- `∑{d}[n+1, A008683(#)*A034676((n+1)/#)]` -/
def P12318462325337042253.Spec : Prop :=
  ∀ n, P12318462325337042253.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P17629215374288568485

`∑{d}[n+1, A000082(#)*A055615((n+1)/#)]`
-/

namespace A254520.P17629215374288568485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P17629215374288568485

namespace A254520

/-- `∑{d}[n+1, A000082(#)*A055615((n+1)/#)]` -/
def P17629215374288568485.Spec : Prop :=
  ∀ n, P17629215374288568485.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P17296200500547138719

`∑{d}[n+1, A048250(#)*A063445((n+1)/#)]`
-/

namespace A254520.P17296200500547138719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P17296200500547138719

namespace A254520

/-- `∑{d}[n+1, A048250(#)*A063445((n+1)/#)]` -/
def P17296200500547138719.Spec : Prop :=
  ∀ n, P17296200500547138719.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P5486214019343371967

`∑{d}[n+1, A046692(#)*A065764((n+1)/#)]`
-/

namespace A254520.P5486214019343371967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P5486214019343371967

namespace A254520

/-- `∑{d}[n+1, A046692(#)*A065764((n+1)/#)]` -/
def P5486214019343371967.Spec : Prop :=
  ∀ n, P5486214019343371967.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P5177109433116750429

`∑{d}[n+1, A023900(#)*A140697((n+1)/#)]`
-/

namespace A254520.P5177109433116750429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A140697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P5177109433116750429

namespace A254520

/-- `∑{d}[n+1, A023900(#)*A140697((n+1)/#)]` -/
def P5177109433116750429.Spec : Prop :=
  ∀ n, P5177109433116750429.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P903729325532988896

`∑{d}[n+1, A072861(#)*A327960((n+1)/#)]`
-/

namespace A254520.P903729325532988896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072861 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P903729325532988896

namespace A254520

/-- `∑{d}[n+1, A072861(#)*A327960((n+1)/#)]` -/
def P903729325532988896.Spec : Prop :=
  ∀ n, P903729325532988896.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P8321665652304630030

`∑{d}[n+1, A078439(#)*A340850((n+1)/#)]`
-/

namespace A254520.P8321665652304630030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078439 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P8321665652304630030

namespace A254520

/-- `∑{d}[n+1, A078439(#)*A340850((n+1)/#)]` -/
def P8321665652304630030.Spec : Prop :=
  ∀ n, P8321665652304630030.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P2066645850471904052

`∑{d}[n+1, A101035(#)*A390262((n+1)/#)]`
-/

namespace A254520.P2066645850471904052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P2066645850471904052

namespace A254520

/-- `∑{d}[n+1, A101035(#)*A390262((n+1)/#)]` -/
def P2066645850471904052.Spec : Prop :=
  ∀ n, P2066645850471904052.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P7494382979821929349

`(n+1)*∑{d}[n+1, A008683(#)*A001615((n+1)/#)]`
-/

namespace A254520.P7494382979821929349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A254520.P7494382979821929349

namespace A254520

/-- `(n+1)*∑{d}[n+1, A008683(#)*A001615((n+1)/#)]` -/
def P7494382979821929349.Spec : Prop :=
  ∀ n, P7494382979821929349.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P14139773121696409182

`A007947(n+1)²*A007434(A003557(n+1))`
-/

namespace A254520.P14139773121696409182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2 * A007434 (A003557 (n + 1)).toNat

end

end A254520.P14139773121696409182

namespace A254520

/-- `A007947(n+1)²*A007434(A003557(n+1))` -/
def P14139773121696409182.Spec : Prop :=
  ∀ n, P14139773121696409182.a n = A254520 (n + 1)

end A254520

/-! ## A254520.P8981333999678268257

`(n+1)*A130106(∑[n+1])`
-/

namespace A254520.P8981333999678268257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254520.P8981333999678268257

namespace A254520

/-- `(n+1)*A130106(∑[n+1])` -/
def P8981333999678268257.Spec : Prop :=
  ∀ n, P8981333999678268257.a n = A254520 (n + 1)

end A254520

/-!
# A254521: Coefficients of the Dirichlet series zeta(s-3) / zeta(3s-3).

The programs for A254521, there is no canonical definition to state claims against.
-/

/-! ## A254521.P10560665610596890658

`(n+1)*((n+1)²-A198318(A187829(n+1)))`
-/

namespace A254521.P10560665610596890658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n + 1) ^ 2 : ℤ) - A198318 (A187829 (n + 1)).toNat)

end

end A254521.P10560665610596890658

/-! ## A254521.P15773899719043741768

`A024000(A147128(xor(n, n+1)))+A000578(n+1)`
-/

namespace A254521.P15773899719043741768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A147128 (Nat.xor n (n + 1))).toNat + A000578 (n + 1)

end

end A254521.P15773899719043741768

/-! ## A254521.P531363972648597976

`A000578(A187829(n+1))-A035058(A056191(n+1))`
-/

namespace A254521.P531363972648597976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A187829 (n + 1)).toNat - A035058 (A056191 (n + 1)).toNat

end

end A254521.P531363972648597976

/-! ## A254521.P17629504354021553723

`(n+1)*(A123726(A007283(n))-A014061(A141214(n)))`
-/

namespace A254521.P17629504354021553723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A123726 (A007283 n).toNat - A014061 (A141214 n).toNat)

end

end A254521.P17629504354021553723

/-! ## A254521.P2594841458770258225

`A000578(n+1)-A151668(A036486(2*n+3))`
-/

namespace A254521.P2594841458770258225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A151668 (A036486 (2 * n + 3)).toNat

end

end A254521.P2594841458770258225

/-!
# A254522: Numerators of (2^n - 1 + (-1)^n)/(2*n), n > 0.

The programs for A254522, the canonical program `A254522.P18432962942992038742` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254522 has offset 1).

The definition of A254522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254522.P18432962942992038742

`A166920(n)/gcd(n+1, A166920(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254522

/-- `A166920(n)/gcd(n+1, A166920(n))` -/
def P18432962942992038742.Spec : Prop :=
  ∀ n, P18432962942992038742.a n = (A254522 (n + 1) : ℚ)

end A254522

/-! ## A254522.P14479858235941773659

`lcm(n+1, Δ[A084174(n)])/(n+1)`
-/

namespace A254522.P14479858235941773659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084174 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ) / (n + 1 : ℚ)

end

end A254522.P14479858235941773659

namespace A254522

/-- `lcm(n+1, Δ[A084174(n)])/(n+1)` -/
def P14479858235941773659.Spec : Prop :=
  ∀ n, P14479858235941773659.a n = (A254522 (n + 1) : ℚ)

end A254522

/-!
# A254523: Number of permutations of [n] avoiding adjacent step pattern {up}^11.

The programs for A254523, there is no canonical definition to state claims against.
-/

/-! ## A254523.P9521209154285966757

`A000142(n)-A004273(A185213(n))`
-/

namespace A254523.P9521209154285966757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A004273 (A185213 n).toNat

end

end A254523.P9521209154285966757

/-! ## A254523.P17983525580607704705

`A000142(n)-A058348(A316720(n))`
-/

namespace A254523.P17983525580607704705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A058348 (A316720 n).toNat

end

end A254523.P17983525580607704705

/-! ## A254523.P18287951577783795200

`A004874(n+1)!-char[12]`
-/

namespace A254523.P18287951577783795200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004874 (n + 1)).toNat : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254523.P18287951577783795200

/-! ## A254523.P17264364725611846921

`n!-A185284(or(1, 3*n))`
-/

namespace A254523.P17264364725611846921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A185284 (Nat.lor 1 (3 * n))

end

end A254523.P17264364725611846921

/-! ## A254523.P8453380487064008365

`A240467(A337717(n))+n!`
-/

namespace A254523.P8453380487064008365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A337717 n).toNat + (Nat.factorial n : ℤ)

end

end A254523.P8453380487064008365

/-!
# A254524: n is the a(n)-th positive integer having its digitsum.

The programs for A254524, there is no canonical definition to state claims against.
-/

/-! ## A254524.P1348817973572984212

`A138471(n+1)+1`
-/

namespace A254524.P1348817973572984212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (n + 1) + 1

end

end A254524.P1348817973572984212

/-! ## A254524.P61441612566502886

`∑{digits}[A263019(n+1), #]`
-/

namespace A254524.P61441612566502886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A254524.P61441612566502886

/-! ## A254524.P8764790028069279980

`A138471(A228915(n+1))`
-/

namespace A254524.P8764790028069279980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A228915 (n + 1)).toNat

end

end A254524.P8764790028069279980

/-! ## A254524.P6920264277670624861

`dr(A263019(n+1)%A263035(n+1))`
-/

namespace A254524.P6920264277670624861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A263019 (n + 1)) (A263035 (n + 1)))

end

end A254524.P6920264277670624861

/-! ## A254524.P17564781571768933608

`A263110(lt[A055101(2*(n+1)), A357621(n+4)])`
-/

namespace A254524.P17564781571768933608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055101 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254524.P17564781571768933608

/-!
# A254525: Expansion of f(-x^2)^2 * f(-x, x^2) / f(x^3)^3 in powers of x where f(,) is Ramanujan's general theta function.

The programs for A254525, there is no canonical definition to state claims against.
-/

/-! ## A254525.P5331097053157712396

`(-1)^n*A132179(n)`
-/

namespace A254525.P5331097053157712396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132179 n

end

end A254525.P5331097053157712396

/-! ## A254525.P16186584344360909967

`A132179(n)/A033999(n)`
-/

namespace A254525.P16186584344360909967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132179 n : ℚ) / (A033999 n : ℚ)

end

end A254525.P16186584344360909967

/-! ## A254525.P18099630952415809980

`A033999(n)*A062242(2*n)`
-/

namespace A254525.P18099630952415809980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A062242 (2 * n)

end

end A254525.P18099630952415809980

/-! ## A254525.P15180661110914345929

`(2-A010684(n))*A062242(2*n)`
-/

namespace A254525.P15180661110914345929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A062242 (2 * n)

end

end A254525.P15180661110914345929

/-! ## A254525.P11616755186432116553

`A033999(n)*A062244(2*n)`
-/

namespace A254525.P11616755186432116553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A062244 (2 * n)

end

end A254525.P11616755186432116553

/-! ## A254525.P17056129660384949059

`A033999(n)*A132301(2*n)`
-/

namespace A254525.P17056129660384949059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132301 (2 * n)

end

end A254525.P17056129660384949059

/-! ## A254525.P12719439440735033838

`A033999(n)*A263526(2*n)`
-/

namespace A254525.P12719439440735033838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263526 (2 * n)

end

end A254525.P12719439440735033838

/-! ## A254525.P10764247526565285550

`(2-A010684(n))*A062244(2*n)`
-/

namespace A254525.P10764247526565285550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A062244 (2 * n)

end

end A254525.P10764247526565285550

/-! ## A254525.P10654205610295487884

`(2-A010684(n))*A132301(2*n)`
-/

namespace A254525.P10654205610295487884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A132301 (2 * n)

end

end A254525.P10654205610295487884

/-! ## A254525.P14092227328966026897

`(2-A010684(n))*A263526(2*n)`
-/

namespace A254525.P14092227328966026897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A263526 (2 * n)

end

end A254525.P14092227328966026897

/-! ## A254525.P5128513667880657742

`A062242(2*n)*A209615(2*n+1)`
-/

namespace A254525.P5128513667880657742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 (2 * n) * A209615 (2 * n + 1)

end

end A254525.P5128513667880657742

/-! ## A254525.P5478936555334572608

`A062242(2*n)*A062242(3*n)/A062244(3*n)`
-/

namespace A254525.P5478936555334572608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062242 (2 * n) * A062242 (3 * n) : ℚ) / (A062244 (3 * n) : ℚ)

end

end A254525.P5478936555334572608

/-! ## A254525.P3276389666260540946

`A062244(2*n)*A219977(n²)`
-/

namespace A254525.P3276389666260540946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062244 (2 * n) * A219977 (n ^ 2)

end

end A254525.P3276389666260540946

/-!
# A254527: Total number of points on a sphere when both poles are on an x by x grid where x=8*n+1.

The programs for A254527, the canonical program `A254527.P11343879924009743325` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254527 has offset 1).

The definition of A254527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254527.P11343879924009743325

`8*(n+1)²-4*(n+1)+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254527

/-- `8*(n+1)²-4*(n+1)+2` -/
def P11343879924009743325.Spec : Prop :=
  ∀ n, P11343879924009743325.a n = A254527 (n + 1)

theorem P11343879924009743325.correct : P11343879924009743325.Spec := by
  intro n
  simp only [A254527, Nat.add_sub_cancel]

end A254527

/-! ## A254527.P4654988832164126343

`2*A054554(n+2)`
-/

namespace A254527.P4654988832164126343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054554 (n + 2)

end

end A254527.P4654988832164126343

namespace A254527

/-- `2*A054554(n+2)` -/
def P4654988832164126343.Spec : Prop :=
  ∀ n, P4654988832164126343.a n = A254527 (n + 1)

end A254527

/-! ## A254527.P18359939976557720676

`A051890(2*(n+1))`
-/

namespace A254527.P18359939976557720676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (2 * (n + 1))

end

end A254527.P18359939976557720676

namespace A254527

/-- `A051890(2*(n+1))` -/
def P18359939976557720676.Spec : Prop :=
  ∀ n, P18359939976557720676.a n = A254527 (n + 1)

end A254527

/-! ## A254527.P6323055274102658350

`∑[a(n-1)+16]` with `a(0)=6, a(1)=20`
-/

namespace A254527.P6323055274102658350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 20] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254527.P6323055274102658350

namespace A254527

/-- `∑[a(n-1)+16]` -/
def P6323055274102658350.Spec : Prop :=
  ∀ n, (P6323055274102658350.a n : ℤ) = A254527 (n + 1)

end A254527

/-! ## A254527.P14555669077557550753

`(record[xor(3, n)²]+3)/2`
-/

namespace A254527.P14555669077557550753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3 : ℚ) / 2

end

end A254527.P14555669077557550753

namespace A254527

/-- `(record[xor(3, n)²]+3)/2` -/
def P14555669077557550753.Spec : Prop :=
  ∀ n, P14555669077557550753.a n = (A254527 (n + 1) : ℚ)

end A254527

/-! ## A254527.P5674150372453413382

`or(2, (n+1)*(8*n+4))`
-/

namespace A254527.P5674150372453413382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((n + 1) * (8 * n + 4))

end

end A254527.P5674150372453413382

namespace A254527

/-- `or(2, (n+1)*(8*n+4))` -/
def P5674150372453413382.Spec : Prop :=
  ∀ n, (P5674150372453413382.a n : ℤ) = A254527 (n + 1)

end A254527

/-! ## A254527.P10005334980911590914

`xor(2, (n+1)*(8*n+4))`
-/

namespace A254527.P10005334980911590914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((n + 1) * (8 * n + 4))

end

end A254527.P10005334980911590914

namespace A254527

/-- `xor(2, (n+1)*(8*n+4))` -/
def P10005334980911590914.Spec : Prop :=
  ∀ n, (P10005334980911590914.a n : ℤ) = A254527 (n + 1)

end A254527

/-! ## A254527.P11328765073874301590

`record[2*(lcm(n+1, n+3)-n)]`
-/

namespace A254527.P11328765073874301590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm (n + 1) (n + 3) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254527.P11328765073874301590

namespace A254527

/-- `record[2*(lcm(n+1, n+3)-n)]` -/
def P11328765073874301590.Spec : Prop :=
  ∀ n, P11328765073874301590.a n = A254527 (n + 1)

end A254527

/-! ## A254527.P17366341077384458132

`lcm(2, (2*n+1)²+2*(n+1))`
-/

namespace A254527.P17366341077384458132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n + 1) ^ 2 + 2 * (n + 1))

end

end A254527.P17366341077384458132

namespace A254527

/-- `lcm(2, (2*n+1)²+2*(n+1))` -/
def P17366341077384458132.Spec : Prop :=
  ∀ n, (P17366341077384458132.a n : ℤ) = A254527 (n + 1)

end A254527

/-! ## A254527.P17358803072056282309

`2*(lcm(2*n+1, 2*(n+1))+1)`
-/

namespace A254527.P17358803072056282309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lcm (2 * n + 1) (2 * (n + 1)) + 1)

end

end A254527.P17358803072056282309

namespace A254527

/-- `2*(lcm(2*n+1, 2*(n+1))+1)` -/
def P17358803072056282309.Spec : Prop :=
  ∀ n, (P17358803072056282309.a n : ℤ) = A254527 (n + 1)

end A254527

/-! ## A254527.P5101352983742341895

`2*(C(2*n, 2)+(2*n+1)*(n+3))`
-/

namespace A254527.P5101352983742341895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (2 * n) 2 + (2 * n + 1) * (n + 3))

end

end A254527.P5101352983742341895

namespace A254527

/-- `2*(C(2*n, 2)+(2*n+1)*(n+3))` -/
def P5101352983742341895.Spec : Prop :=
  ∀ n, (P5101352983742341895.a n : ℤ) = A254527 (n + 1)

end A254527

/-! ## A254527.P5936776064245538145

`Δ[A168574(n)]`
-/

namespace A254527.P5936776064245538145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254527.P5936776064245538145

namespace A254527

/-- `Δ[A168574(n)]` -/
def P5936776064245538145.Spec : Prop :=
  ∀ n, P5936776064245538145.a n = A254527 (n + 1)

end A254527

/-! ## A254527.P13282472237500805695

`2*(A082108(n)+2)`
-/

namespace A254527.P13282472237500805695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A082108 n + 2)

end

end A254527.P13282472237500805695

namespace A254527

/-- `2*(A082108(n)+2)` -/
def P13282472237500805695.Spec : Prop :=
  ∀ n, P13282472237500805695.a n = A254527 (n + 1)

end A254527

/-! ## A254527.P8581787839834290632

`(A016838(n)+3)/2`
-/

namespace A254527.P8581787839834290632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016838 n + 3 : ℚ) / 2

end

end A254527.P8581787839834290632

namespace A254527

/-- `(A016838(n)+3)/2` -/
def P8581787839834290632.Spec : Prop :=
  ∀ n, P8581787839834290632.a n = (A254527 (n + 1) : ℚ)

end A254527

/-! ## A254527.P14060621950022622067

`(A004767(n)²+3)/2`
-/

namespace A254527.P14060621950022622067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004767 n ^ 2 + 3 : ℚ) / 2

end

end A254527.P14060621950022622067

namespace A254527

/-- `(A004767(n)²+3)/2` -/
def P14060621950022622067.Spec : Prop :=
  ∀ n, P14060621950022622067.a n = (A254527 (n + 1) : ℚ)

end A254527

/-! ## A254527.P17758244509359705367

`2*(∑[A017089(n)]+1)`
-/

namespace A254527.P17758244509359705367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254527.P17758244509359705367

namespace A254527

/-- `2*(∑[A017089(n)]+1)` -/
def P17758244509359705367.Spec : Prop :=
  ∀ n, P17758244509359705367.a n = A254527 (n + 1)

end A254527

/-! ## A254527.P9153658255872672267

`∑[2*(A022144(n)+2)]`
-/

namespace A254527.P9153658255872672267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022144 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254527.P9153658255872672267

namespace A254527

/-- `∑[2*(A022144(n)+2)]` -/
def P9153658255872672267.Spec : Prop :=
  ∀ n, P9153658255872672267.a n = A254527 (n + 1)

end A254527

/-! ## A254527.P17606767212222004453

`2*(∑[A017101(n)]-n)`
-/

namespace A254527.P17606767212222004453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A254527.P17606767212222004453

namespace A254527

/-- `2*(∑[A017101(n)]-n)` -/
def P17606767212222004453.Spec : Prop :=
  ∀ n, P17606767212222004453.a n = A254527 (n + 1)

end A254527

/-!
# A254528: Number of decimal digits in the integer part of e^n.

The programs for A254528, the canonical program `A254528.P147191105796121907` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254528 has offset 0).

The definition of A254528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254528.P147191105796121907

`floor(n/log(10))+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254528

/-- `floor(n/log(10))+1` -/
def P147191105796121907.Spec : Prop :=
  ∀ n, P147191105796121907.a n = A254528 n

theorem P147191105796121907.correct : P147191105796121907.Spec := by
  intro n
  simp only [A254528]

end A254528

/-! ## A254528.P1107260903203544562

`A008619(A005843(floor(n/log(10))))`
-/

namespace A254528.P1107260903203544562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005843 ⌊(n : ℝ) / Real.log (10 : ℝ)⌋.toNat).toNat

end

end A254528.P1107260903203544562

namespace A254528

/-- `A008619(A005843(floor(n/log(10))))` -/
def P1107260903203544562.Spec : Prop :=
  ∀ n, P1107260903203544562.a n = A254528 n

end A254528

/-! ## A254528.P16843472038929230562

`ceil(A008619(A004275(n))/log(10))`
-/

namespace A254528.P16843472038929230562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008619 (A004275 n).toNat : ℝ) / Real.log (10 : ℝ)⌉

end

end A254528.P16843472038929230562

namespace A254528

/-- `ceil(A008619(A004275(n))/log(10))` -/
def P16843472038929230562.Spec : Prop :=
  ∀ n, P16843472038929230562.a n = A254528 n

end A254528

/-! ## A254528.P13078821743989476517

`ceil(A008619(A004273(n))/log(10))`
-/

namespace A254528.P13078821743989476517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008619 (A004273 n).toNat : ℝ) / Real.log (10 : ℝ)⌉

end

end A254528.P13078821743989476517

namespace A254528

/-- `ceil(A008619(A004273(n))/log(10))` -/
def P13078821743989476517.Spec : Prop :=
  ∀ n, P13078821743989476517.a n = A254528 n

end A254528

/-! ## A254528.P17758910455580760377

`∑{digits}[A000149(n), cos(#-A004086(#))]`
-/

namespace A254528.P17758910455580760377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Real.cos ((x : ℤ) - A004086 x : ℝ)).sum

end

end A254528.P17758910455580760377

namespace A254528

/-- `∑{digits}[A000149(n), cos(#-A004086(#))]` -/
def P17758910455580760377.Spec : Prop :=
  ∀ n, P17758910455580760377.a n = (A254528 n : ℝ)

end A254528

/-! ## A254528.P5176516680308292173

`∑{digits}[A000149(n), A000149(#-A004086(#))]`
-/

namespace A254528.P5176516680308292173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000149 ((x : ℤ) - A004086 x).toNat).sum

end

end A254528.P5176516680308292173

namespace A254528

/-- `∑{digits}[A000149(n), A000149(#-A004086(#))]` -/
def P5176516680308292173.Spec : Prop :=
  ∀ n, P5176516680308292173.a n = A254528 n

end A254528

/-! ## A254528.P9604475870269502910

`∑{digits}[A000149(n), A287729(3*A287729(#+1)+1)]`
-/

namespace A254528.P9604475870269502910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A287729 (3 * A287729 (x + 1) + 1).toNat).sum

end

end A254528.P9604475870269502910

namespace A254528

/-- `∑{digits}[A000149(n), A287729(3*A287729(#+1)+1)]` -/
def P9604475870269502910.Spec : Prop :=
  ∀ n, P9604475870269502910.a n = A254528 n

end A254528

/-!
# A254529: a(n) = n! * (number of mapping patterns on n).

The programs for A254529, there is no canonical definition to state claims against.
-/

/-! ## A254529.P12669908745267157808

`n!*A001372(n)`
-/

namespace A254529.P12669908745267157808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001372 n

end

end A254529.P12669908745267157808

/-! ## A254529.P17942333222829069982

`A000142(n)*A001372(n)`
-/

namespace A254529.P17942333222829069982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001372 n

end

end A254529.P17942333222829069982

/-! ## A254529.P13540330756475791211

`A001372(n)*A021009(∑[n])`
-/

namespace A254529.P13540330756475791211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n * A021009 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254529.P13540330756475791211

/-! ## A254529.P1435802562034295682

`Δ[A003422(n)]*A001372(n)`
-/

namespace A254529.P1435802562034295682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001372 n

end

end A254529.P1435802562034295682

/-! ## A254529.P2973877100607474455

`∏[A028310(n)]*A001372(n)`
-/

namespace A254529.P2973877100607474455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001372 n

end

end A254529.P2973877100607474455

/-! ## A254529.P16519170835683351671

`A001372(n)*A081123(2*n)`
-/

namespace A254529.P16519170835683351671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n * A081123 (2 * n)

end

end A254529.P16519170835683351671

/-! ## A254529.P12507597446724220005

`(A126285(n)-A127911(n))*n!`
-/

namespace A254529.P12507597446724220005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126285 n - A127911 n) * (Nat.factorial n : ℤ)

end

end A254529.P12507597446724220005

/-! ## A254529.P871099918711093852

`A001372(n)*A289192(A000096(n))`
-/

namespace A254529.P871099918711093852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n * A289192 (A000096 n).toNat

end

end A254529.P871099918711093852

/-! ## A254529.P1316864207292655759

`(A126285(n)-A127911(n))*A000142(n)`
-/

namespace A254529.P1316864207292655759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126285 n - A127911 n) * A000142 n

end

end A254529.P1316864207292655759

/-!
# A254530: a(n) = A181162(n) / n, n>=1.

The programs for A254530, there is no canonical definition to state claims against.
-/

/-! ## A254530.P4547234419121808681

`A181162(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254530.P4547234419121808681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181162 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A254530.P4547234419121808681

/-! ## A254530.P3275411019738934739

`(A254570(n+1)+A254569(n+1))/(n+1)`
-/

namespace A254530.P3275411019738934739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254570 (n + 1) + A254569 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A254530.P3275411019738934739

/-! ## A254530.P17741472113889683244

`record[A181162(A102885(n))/A102885(n)]`
-/

namespace A254530.P17741472113889683244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181162 (A102885 n).toNat : ℚ) / (A102885 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254530.P17741472113889683244

/-!
# A254531: a(n) is the position of the piano key whose frequency is closest to n Hz, start with A0 = the 1st key.

The programs for A254531, the canonical program `A254531.P2568766935472389435` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254531 has offset 27).

The definition of A254531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254531.P2568766935472389435

`round(12*log2((n+27)/440))+49`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254531

/-- `round(12*log2((n+27)/440))+49` -/
def P2568766935472389435.Spec : Prop :=
  ∀ n, P2568766935472389435.a n = A254531 (n + 27)

theorem P2568766935472389435.correct : P2568766935472389435.Spec := by
  intro n
  simp only [A254531, Nat.add_sub_cancel]

end A254531

/-! ## A254531.P5792339368673260037

`A003056(A340854(n+1)%A252325(n+1))`
-/

namespace A254531.P5792339368673260037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A340854 (n + 1)) (A252325 (n + 1))).toNat

end

end A254531.P5792339368673260037

namespace A254531

/-- `A003056(A340854(n+1)%A252325(n+1))` -/
def P5792339368673260037.Spec : Prop :=
  ∀ n, P5792339368673260037.a n = A254531 (n + 27)

end A254531

/-! ## A254531.P11476211792496317032

`A356895(A039895(n+1))`
-/

namespace A254531.P11476211792496317032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356895 (A039895 (n + 1)).toNat

end

end A254531.P11476211792496317032

namespace A254531

/-- `A356895(A039895(n+1))` -/
def P11476211792496317032.Spec : Prop :=
  ∀ n, P11476211792496317032.a n = A254531 (n + 27)

end A254531

/-! ## A254531.P11613787870808797147

`A070939(A212550(n)+n)`
-/

namespace A254531.P11613787870808797147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A212550 (n + 10) + (n : ℤ)).toNat

end

end A254531.P11613787870808797147

namespace A254531

/-- `A070939(A212550(n)+n)` -/
def P11613787870808797147.Spec : Prop :=
  ∀ n, P11613787870808797147.a n = A254531 (n + 27)

end A254531

/-! ## A254531.P3097680444509966079

`A070939(A212549(n+9)+n)`
-/

namespace A254531.P3097680444509966079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A212549 (n + 9) + (n : ℤ)).toNat

end

end A254531.P3097680444509966079

namespace A254531

/-- `A070939(A212549(n+9)+n)` -/
def P3097680444509966079.Spec : Prop :=
  ∀ n, P3097680444509966079.a n = A254531 (n + 27)

end A254531

/-!
# A254532: Number of length n 1..(1+2) arrays with no leading partial sum equal to a prime.

The programs for A254532, there is no canonical definition to state claims against.
-/

/-! ## A254532.P14679975554203944806

`A254539(∑[n+1])`
-/

namespace A254532.P14679975554203944806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254532.P14679975554203944806

/-! ## A254532.P10746841050416461566

`lcm((-1)^n, A254539(A000217(n+1)))`
-/

namespace A254532.P10746841050416461566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A254539 (A000217 (n + 1)).toNat)

end

end A254532.P10746841050416461566

/-! ## A254532.P7150536871007598181

`or(A000007(n), A254539(A000217(n+1)))`
-/

namespace A254532.P7150536871007598181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A254539 (A000217 (n + 1)).toNat)

end

end A254532.P7150536871007598181

/-! ## A254532.P2091949981117439087

`A254539(A000217(n+1))%A027540(n+2)`
-/

namespace A254532.P2091949981117439087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254539 (A000217 (n + 1)).toNat) (A027540 (n + 2))

end

end A254532.P2091949981117439087

/-! ## A254532.P75326158483651143

`A007318(A000096(n+2))*A254539(A000217(n+1))`
-/

namespace A254532.P75326158483651143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (n + 2)).toNat * A254539 (A000217 (n + 1)).toNat

end

end A254532.P75326158483651143

/-! ## A254532.P9301141085409774522

`A254539(∑[Δ[n²]-n])%A003123(n)`
-/

namespace A254532.P9301141085409774522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254539 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A003123 n)

end

end A254532.P9301141085409774522

/-!
# A254533: Number of length n 1..(2+2) arrays with no leading partial sum equal to a prime.

The programs for A254533, there is no canonical definition to state claims against.
-/

/-! ## A254533.P7743659979548222228

`A254539(∑[n+2])`
-/

namespace A254533.P7743659979548222228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254533.P7743659979548222228

/-! ## A254533.P14030913325556455501

`record[A254539(A101881(n)+1)]`
-/

namespace A254533.P14030913325556455501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254533.P14030913325556455501

/-! ## A254533.P12723566073390763439

`record[A254539(A101881(A029579(n)))]`
-/

namespace A254533.P12723566073390763439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A101881 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254533.P12723566073390763439

/-! ## A254533.P16261186757923409393

`record[A254539(A101881(A099375(n)))]`
-/

namespace A254533.P16261186757923409393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A101881 (A099375 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254533.P16261186757923409393

/-! ## A254533.P8223593564963791724

`record[A254539(A000096(A262519(n)))]`
-/

namespace A254533.P8223593564963791724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000096 (A262519 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254533.P8223593564963791724

/-! ## A254533.P1433674389345874743

`record[A254539(A000096(A032742(n+1)))]`
-/

namespace A254533.P1433674389345874743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254533.P1433674389345874743

/-!
# A254534: Number of length n 1..(3+2) arrays with no leading partial sum equal to a prime.

The programs for A254534, there is no canonical definition to state claims against.
-/

/-! ## A254534.P2800912492084909366

`A254539(∑[n+3]+1)`
-/

namespace A254534.P2800912492084909366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254534.P2800912492084909366

/-! ## A254534.P14269572374548835338

`or(char[1], A254539(A034856(n+2)))`
-/

namespace A254534.P14269572374548835338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254539 (A034856 (n + 2)).toNat)

end

end A254534.P14269572374548835338

/-! ## A254534.P6828286809918866032

`A254539(A034856(n+2))+A008683(8*(n+1))`
-/

namespace A254534.P6828286809918866032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A034856 (n + 2)).toNat + A008683 (8 * (n + 1))

end

end A254534.P6828286809918866032

/-! ## A254534.P12688565228511348317

`A007318(A000096(n))*A254539(A034856(n+2))`
-/

namespace A254534.P12688565228511348317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A254539 (A034856 (n + 2)).toNat

end

end A254534.P12688565228511348317

/-! ## A254534.P13337209561495904251

`A007318(A000217(n))*A254539(A034856(n+2))`
-/

namespace A254534.P13337209561495904251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A254539 (A034856 (n + 2)).toNat

end

end A254534.P13337209561495904251

/-! ## A254534.P11291749584850514181

`A001221(A056206(n))*A254539(A034856(n+2))`
-/

namespace A254534.P11291749584850514181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056206 n).toNat * A254539 (A034856 (n + 2)).toNat

end

end A254534.P11291749584850514181

/-! ## A254534.P4804479995193397363

`A001227(A060594(n+1))*A254539(A034856(n+2))`
-/

namespace A254534.P4804479995193397363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A060594 (n + 1)).toNat * A254539 (A034856 (n + 2)).toNat

end

end A254534.P4804479995193397363

/-! ## A254534.P14405612550123713532

`A147486(A001227(n+1))*A254539(A034856(n+2))`
-/

namespace A254534.P14405612550123713532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147486 (A001227 (n + 1)).toNat * A254539 (A034856 (n + 2)).toNat

end

end A254534.P14405612550123713532

/-! ## A254534.P6607319320880810549

`A147486(A073811(n+1))*A254539(A034856(n+2))`
-/

namespace A254534.P6607319320880810549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147486 (A073811 (n + 1)).toNat * A254539 (A034856 (n + 2)).toNat

end

end A254534.P6607319320880810549

/-! ## A254534.P5254659595584666636

`A254539(A034856(n+2))%A252173(n+1)`
-/

namespace A254534.P5254659595584666636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254539 (A034856 (n + 2)).toNat) (A252173 (n + 1))

end

end A254534.P5254659595584666636

/-!
# A254535: Number of length n 1..(4+2) arrays with no leading partial sum equal to a prime.

The programs for A254535, there is no canonical definition to state claims against.
-/

/-! ## A254535.P12952007900864249843

`A254539(A027379(n+2))`
-/

namespace A254535.P12952007900864249843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A027379 (n + 2)).toNat

end

end A254535.P12952007900864249843

/-! ## A254535.P6211442300792006262

`A254539(A055998(n+2))`
-/

namespace A254535.P6211442300792006262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A055998 (n + 2)).toNat

end

end A254535.P6211442300792006262

/-! ## A254535.P8636035682084110075

`A254539(A155212(n)+5)`
-/

namespace A254535.P8636035682084110075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A155212 n + 5).toNat

end

end A254535.P8636035682084110075

/-! ## A254535.P966933380868597215

`A254539(A056000(n)+7)`
-/

namespace A254535.P966933380868597215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A056000 n + 7).toNat

end

end A254535.P966933380868597215

/-! ## A254535.P7134560561173014621

`A254539(Δ[A006416(n+2)])`
-/

namespace A254535.P7134560561173014621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (f1 (n + 1) - f1 n).toNat

end

end A254535.P7134560561173014621

/-! ## A254535.P3099885931797628802

`A254539(A052905(n+1)+2)`
-/

namespace A254535.P3099885931797628802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A052905 (n + 1) + 2).toNat

end

end A254535.P3099885931797628802

/-! ## A254535.P4371885284331329616

`A254539(A167499(n)+A016777(n))`
-/

namespace A254535.P4371885284331329616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167499 n + A016777 n).toNat

end

end A254535.P4371885284331329616

/-! ## A254535.P17261021067317866507

`A254539(A167614(n+1)+A005408(n))`
-/

namespace A254535.P17261021067317866507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167614 (n + 1) + A005408 n).toNat

end

end A254535.P17261021067317866507

/-! ## A254535.P5751540137061636786

`A254539(A167614(n+1)+A004442(2*n))`
-/

namespace A254535.P5751540137061636786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167614 (n + 1) + A004442 (2 * n)).toNat

end

end A254535.P5751540137061636786

/-!
# A254536: Number of length n 1..(5+2) arrays with no leading partial sum equal to a prime.

The programs for A254536, there is no canonical definition to state claims against.
-/

/-! ## A254536.P14493257696655675985

`A254539(A046691(n+3))`
-/

namespace A254536.P14493257696655675985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A046691 (n + 3)).toNat

end

end A254536.P14493257696655675985

/-! ## A254536.P2705115078234439979

`A254539(A056115(n)+11)`
-/

namespace A254536.P2705115078234439979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A056115 n + 11).toNat

end

end A254536.P2705115078234439979

/-! ## A254536.P10985523388720083725

`A254539(Δ[A023545(n+1)])`
-/

namespace A254536.P10985523388720083725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (f1 (n + 1) - f1 n).toNat

end

end A254536.P10985523388720083725

/-! ## A254536.P3044652795195368857

`A254539(A052905(n+2)+1)`
-/

namespace A254536.P3044652795195368857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A052905 (n + 2) + 1).toNat

end

end A254536.P3044652795195368857

/-! ## A254536.P10845753443828522963

`A254539(Δ[A006416(n+3)]-1)`
-/

namespace A254536.P10845753443828522963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (f1 (n + 1) - f1 n - 1).toNat

end

end A254536.P10845753443828522963

/-! ## A254536.P8937928824100287188

`A254539(eq[2, A049286(n+1)-2])`
-/

namespace A254536.P8937928824100287188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254536.P8937928824100287188

/-! ## A254536.P14855523653606536668

`A254539(eq[2, A049286(n+1)/2])`
-/

namespace A254536.P14855523653606536668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049286 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A254536.P14855523653606536668

/-! ## A254536.P12548838041732304856

`A254539(A167614(n+3)+n-2)`
-/

namespace A254536.P12548838041732304856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167614 (n + 3) + ((n : ℤ) - 2)).toNat

end

end A254536.P12548838041732304856

/-! ## A254536.P13995150183836697843

`A254539(A000124(A020705(n))+n)`
-/

namespace A254536.P13995150183836697843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000124 (A020705 n).toNat + (n : ℤ)).toNat

end

end A254536.P13995150183836697843

/-!
# A254537: Number of length n 1..(6+2) arrays with no leading partial sum equal to a prime.

The programs for A254537, there is no canonical definition to state claims against.
-/

/-! ## A254537.P17321379187969069345

`A254539(A052905(n+3))`
-/

namespace A254537.P17321379187969069345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A052905 (n + 3)).toNat

end

end A254537.P17321379187969069345

/-! ## A254537.P6679428167160260776

`A254539(A056119(n)+16)`
-/

namespace A254537.P6679428167160260776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A056119 n + 16).toNat

end

end A254537.P6679428167160260776

/-! ## A254537.P4476803336523192150

`A254539(A000096(n+5)-4)`
-/

namespace A254537.P4476803336523192150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000096 (n + 5) - 4).toNat

end

end A254537.P4476803336523192150

/-! ## A254537.P16826742398171413125

`A254539(A000217(n+6)-5)`
-/

namespace A254537.P16826742398171413125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000217 (n + 6) - 5).toNat

end

end A254537.P16826742398171413125

/-! ## A254537.P4003194229175697690

`A254539(A000124(n+6)-6)`
-/

namespace A254537.P4003194229175697690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000124 (n + 6) - 6).toNat

end

end A254537.P4003194229175697690

/-! ## A254537.P13583934064104658934

`A254539(A167487(n+5)-12)`
-/

namespace A254537.P13583934064104658934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167487 (n + 5) - 12).toNat

end

end A254537.P13583934064104658934

/-! ## A254537.P5928829564703518200

`A254539(eq[7, A049286(n+1)])`
-/

namespace A254537.P5928829564703518200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254537.P5928829564703518200

/-! ## A254537.P5411689978075394696

`A254539(Δ[A023545(n+2)]-1)`
-/

namespace A254537.P5411689978075394696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (f1 (n + 1) - f1 n - 1).toNat

end

end A254537.P5411689978075394696

/-!
# A254538: Number of length n 1..(7+2) arrays with no leading partial sum equal to a prime.

The programs for A254538, there is no canonical definition to state claims against.
-/

/-! ## A254538.P4248348354612690695

`A254539(A055999(n+4))`
-/

namespace A254538.P4248348354612690695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A055999 (n + 4)).toNat

end

end A254538.P4248348354612690695

/-! ## A254538.P387310277192853093

`A254539(A000124(n+7)-7)`
-/

namespace A254538.P387310277192853093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000124 (n + 7) - 7).toNat

end

end A254538.P387310277192853093

/-! ## A254538.P2668436013508221417

`A254539(A152947(n+9)-7)`
-/

namespace A254538.P2668436013508221417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A152947 (n + 9) - 7).toNat

end

end A254538.P2668436013508221417

/-! ## A254538.P8503607874870523979

`A254539(A000217(n+6)+n+1)`
-/

namespace A254538.P8503607874870523979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A254538.P8503607874870523979

/-! ## A254538.P13749556251619318741

`A254539(Δ[n²]+A000096(n+4)+7)`
-/

namespace A254538.P13749556251619318741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A254538.P13749556251619318741

/-!
# A254540: Number of length 2 1..(n+2) arrays with no leading partial sum equal to a prime.

The programs for A254540, there is no canonical definition to state claims against.
-/

/-! ## A254540.P2857237514202859147

`A255717(n+1)+A065855(n+3)`
-/

namespace A254540.P2857237514202859147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255717 (n + 1) + A065855 (n + 3)

end

end A254540.P2857237514202859147

/-! ## A254540.P7972911528453787176

`A254539(∑[n+1]+2)`
-/

namespace A254540.P7972911528453787176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254540.P7972911528453787176

/-! ## A254540.P5036205066632698032

`or(char[2], A254539(C(n+2, 2)+2))`
-/

namespace A254540.P5036205066632698032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254539 (Nat.choose (n + 2) 2 + 2))

end

end A254540.P5036205066632698032

/-! ## A254540.P14536401752845253438

`record[A254539(A133263(and(n, n+1)/2))]`
-/

namespace A254540.P14536401752845253438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A133263 (SequenceMachineLib.roundAway ((Nat.land n (n + 1) : ℚ) / 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254540.P14536401752845253438

/-! ## A254540.P16494045148698042613

`A254539(C(n+2, 2)+2)%A025003(n+1)`
-/

namespace A254540.P16494045148698042613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254539 (Nat.choose (n + 2) 2 + 2)) (A025003 (n + 1))

end

end A254540.P16494045148698042613

/-! ## A254540.P7375118715057600081

`A254539(C(n+2, 2)+2)+A000038(A089025(n+1))`
-/

namespace A254540.P7375118715057600081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (Nat.choose (n + 2) 2 + 2) + A000038 (A089025 (n + 1)).toNat

end

end A254540.P7375118715057600081

/-!
# A254541: Number of length 3 1..(n+2) arrays with no leading partial sum equal to a prime.

The programs for A254541, there is no canonical definition to state claims against.
-/

/-! ## A254541.P2456755654243634423

`A254539(∑[n+2]+4)`
-/

namespace A254541.P2456755654243634423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254541.P2456755654243634423

/-! ## A254541.P18243075852133016115

`A264668(n)+A254539(A167614(n+1))`
-/

namespace A254541.P18243075852133016115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A254539 (A167614 (n + 1)).toNat

end

end A254541.P18243075852133016115

/-! ## A254541.P11481113088131825484

`A254539(A167614(n+1))%A199686(n)`
-/

namespace A254541.P11481113088131825484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254539 (A167614 (n + 1)).toNat) (A199686 n)

end

end A254541.P11481113088131825484

/-! ## A254541.P15228353402448611171

`gcd(A000038(n), A254539(A167614(n+1)))`
-/

namespace A254541.P15228353402448611171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A254539 (A167614 (n + 1)).toNat)

end

end A254541.P15228353402448611171

/-! ## A254541.P15107464820141517351

`lcm(A020985(n), A254539(A167614(n+1)))`
-/

namespace A254541.P15107464820141517351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A254539 (A167614 (n + 1)).toNat)

end

end A254541.P15107464820141517351

/-! ## A254541.P18393777719258191963

`and(A254539(A167614(n+1)), A260196(n))`
-/

namespace A254541.P18393777719258191963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A254539 (A167614 (n + 1)).toNat) (A260196 n)

end

end A254541.P18393777719258191963

/-!
# A254542: Number of length 4 1..(n+2) arrays with no leading partial sum equal to a prime.

The programs for A254542, there is no canonical definition to state claims against.
-/

/-! ## A254542.P4875462832756816033

`A254539(A052905(n)+9)`
-/

namespace A254542.P4875462832756816033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A052905 n + 9).toNat

end

end A254542.P4875462832756816033

/-! ## A254542.P11060495622314715199

`A254539(A055999(n)+10)`
-/

namespace A254542.P11060495622314715199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A055999 n + 10).toNat

end

end A254542.P11060495622314715199

/-! ## A254542.P7589638806878385562

`A254539(A167614(n+2)+1)`
-/

namespace A254542.P7589638806878385562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167614 (n + 2) + 1).toNat

end

end A254542.P7589638806878385562

/-! ## A254542.P17144676305296073248

`A254539(A166136(n+2)-2)`
-/

namespace A254542.P17144676305296073248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A166136 (n + 2) - 2).toNat

end

end A254542.P17144676305296073248

/-! ## A254542.P4936320529070327067

`A254539(A167487(n+2)-3)`
-/

namespace A254542.P4936320529070327067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167487 (n + 2) - 3).toNat

end

end A254542.P4936320529070327067

/-! ## A254542.P13492565827403935360

`A254539(A166136(n+1)+1+n)`
-/

namespace A254542.P13492565827403935360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A254542.P13492565827403935360

/-! ## A254542.P15109635844920716796

`A254539(Δ[A023545(n+1)-n²])`
-/

namespace A254542.P15109635844920716796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (f1 (n + 1) - f1 n).toNat

end

end A254542.P15109635844920716796

/-! ## A254542.P13186472327732520945

`A254539(A038722(Δ[A006416(n+2)]))`
-/

namespace A254542.P13186472327732520945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A254542.P13186472327732520945

/-!
# A254543: Number of length 5 1..(n+2) arrays with no leading partial sum equal to a prime.

The programs for A254543, there is no canonical definition to state claims against.
-/

/-! ## A254543.P3093194862308759975

`A254539(A167499(n+3))`
-/

namespace A254543.P3093194862308759975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167499 (n + 3)).toNat

end

end A254543.P3093194862308759975

/-! ## A254543.P16592234281701122513

`A254539(A056000(n)+15)`
-/

namespace A254543.P16592234281701122513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A056000 n + 15).toNat

end

end A254543.P16592234281701122513

/-! ## A254543.P151216909159034534

`A254539(A000217(n+4)+5)`
-/

namespace A254543.P151216909159034534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000217 (n + 4) + 5).toNat

end

end A254543.P151216909159034534

/-! ## A254543.P16378539022103927185

`A254539(A016028(n+7)+2)`
-/

namespace A254543.P16378539022103927185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A016028 (n + 7) + 2).toNat

end

end A254543.P16378539022103927185

/-! ## A254543.P9148703647147907502

`A254539(A052905(n+1)+10)`
-/

namespace A254543.P9148703647147907502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A052905 (n + 1) + 10).toNat

end

end A254543.P9148703647147907502

/-! ## A254543.P15740324510579246494

`A254539(A055999(n+1)+11)`
-/

namespace A254543.P15740324510579246494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A055999 (n + 1) + 11).toNat

end

end A254543.P15740324510579246494

/-! ## A254543.P5019441612374984823

`A254539(A000124(n+5)-(n+1))`
-/

namespace A254543.P5019441612374984823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A254543.P5019441612374984823

/-!
# A254544: Number of length 6 1..(n+2) arrays with no leading partial sum equal to a prime.

The programs for A254544, there is no canonical definition to state claims against.
-/

/-! ## A254544.P10377595996383633133

`A254539(A167499(n+4)+1)`
-/

namespace A254544.P10377595996383633133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167499 (n + 4) + 1).toNat

end

end A254544.P10377595996383633133

/-! ## A254544.P12028879221214247358

`A254539(A000217(n+5)+6)`
-/

namespace A254544.P12028879221214247358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000217 (n + 5) + 6).toNat

end

end A254544.P12028879221214247358

/-! ## A254544.P16959456134153529438

`A254539(A016028(n+8)+3)`
-/

namespace A254544.P16959456134153529438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A016028 (n + 8) + 3).toNat

end

end A254544.P16959456134153529438

/-! ## A254544.P3363456337771057720

`A254539(A000124(n+6)-(n+1))`
-/

namespace A254544.P3363456337771057720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A254544.P3363456337771057720

/-! ## A254544.P6201552345235503510

`A254539(A038722(A052905(n+3)))`
-/

namespace A254544.P6201552345235503510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A038722 (A052905 (n + 3)).toNat).toNat

end

end A254544.P6201552345235503510

/-! ## A254544.P2348978023842675598

`A254539(A055998(n)+A008585(n+7))`
-/

namespace A254544.P2348978023842675598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A055998 n + A008585 (n + 7)).toNat

end

end A254544.P2348978023842675598

/-! ## A254544.P17833540733081553658

`A254539(A103517(n+9)+A052905(n))`
-/

namespace A254544.P17833540733081553658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A103517 (n + 9) + A052905 n).toNat

end

end A254544.P17833540733081553658

/-! ## A254544.P17253285568218218509

`A254539(A000096(n+6)-A004275(n+4))`
-/

namespace A254544.P17253285568218218509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000096 (n + 6) - A004275 (n + 4)).toNat

end

end A254544.P17253285568218218509

/-!
# A254545: Number of length 7 1..(n+2) arrays with no leading partial sum equal to a prime.

The programs for A254545, there is no canonical definition to state claims against.
-/

/-! ## A254545.P6718766966933487404

`record[A254539(A155212(n)+15)]`
-/

namespace A254545.P6718766966933487404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A155212 n + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254545.P6718766966933487404

/-! ## A254545.P17800640399318179873

`A254539(A167499(n+5)+2)`
-/

namespace A254545.P17800640399318179873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A167499 (n + 5) + 2).toNat

end

end A254545.P17800640399318179873

/-! ## A254545.P6765332036109939601

`A254539(A000124(n+6)+6)`
-/

namespace A254545.P6765332036109939601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000124 (n + 6) + 6).toNat

end

end A254545.P6765332036109939601

/-! ## A254545.P1949035398957324592

`A254539(A000217(n+6)+7)`
-/

namespace A254545.P1949035398957324592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A000217 (n + 6) + 7).toNat

end

end A254545.P1949035398957324592

/-! ## A254545.P13265344166951964577

`A254539(A155212(n+4)-A005843(n))`
-/

namespace A254545.P13265344166951964577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254539 (A155212 (n + 4) - A005843 n).toNat

end

end A254545.P13265344166951964577

/-!
# A254546: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254546, there is no canonical definition to state claims against.
-/

/-! ## A254546.P14579524117652588506

`A254553(∑[4*n]+1)`
-/

namespace A254546.P14579524117652588506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254546.P14579524117652588506

/-! ## A254546.P8022049054847144075

`record[A003982(n)*A254553(n+1)]`
-/

namespace A254546.P8022049054847144075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254546.P8022049054847144075

/-! ## A254546.P12218230160308519133

`record[gcd(A114327(n), A254553(n+1))]`
-/

namespace A254546.P12218230160308519133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254553 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254546.P12218230160308519133

/-! ## A254546.P6591075277859091348

`record[A203994(n+1)*A254553(n+1)]`
-/

namespace A254546.P6591075277859091348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A254553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254546.P6591075277859091348

/-! ## A254546.P2439810898713296205

`lcm(A033999(n), A254553(A001844(n)))`
-/

namespace A254546.P2439810898713296205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254553 (A001844 n).toNat)

end

end A254546.P2439810898713296205

/-!
# A254547: Number of (n+2) X (2+2) 0..1 arrays with every 3 X 3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254547, there is no canonical definition to state claims against.
-/

/-! ## A254547.P7123037776181952

`A254553(∑[n+2])`
-/

namespace A254547.P7123037776181952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254547.P7123037776181952

/-! ## A254547.P13844168935768520288

`record[A254553(A000096(A002260(n+1)))]`
-/

namespace A254547.P13844168935768520288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254547.P13844168935768520288

/-! ## A254547.P13883829396738129526

`record[A254553(A000096(A003963(n+1)))]`
-/

namespace A254547.P13883829396738129526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254547.P13883829396738129526

/-! ## A254547.P10553000562006956106

`record[A254553(A000096(A026272(n+1)))]`
-/

namespace A254547.P10553000562006956106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000096 (A026272 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254547.P10553000562006956106

/-! ## A254547.P8756635756945628114

`record[A254553(A000096(A026238(n+2)))]`
-/

namespace A254547.P8756635756945628114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000096 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254547.P8756635756945628114

/-!
# A254548: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254548, there is no canonical definition to state claims against.
-/

/-! ## A254548.P8001306618175419802

`A254553(∑[n+3]+1)`
-/

namespace A254548.P8001306618175419802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254548.P8001306618175419802

/-! ## A254548.P14149923534720493332

`A161618(n+1)*A254553(A034856(n+2))`
-/

namespace A254548.P14149923534720493332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1) * A254553 (A034856 (n + 2)).toNat

end

end A254548.P14149923534720493332

/-! ## A254548.P16526462714520325346

`A254553(A034856(n+2))/A161618(n+4)`
-/

namespace A254548.P16526462714520325346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254553 (A034856 (n + 2)).toNat : ℚ) / (A161618 (n + 4) : ℚ)

end

end A254548.P16526462714520325346

/-! ## A254548.P17871559275211722604

`A254553(A034856(n+2))%A254479(n+1)`
-/

namespace A254548.P17871559275211722604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254553 (A034856 (n + 2)).toNat) (A254479 (n + 1))

end

end A254548.P17871559275211722604

/-! ## A254548.P10712450057284320009

`A014963(A254572(n+1))*A254553(A034856(n+2))`
-/

namespace A254548.P10712450057284320009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A254572 (n + 1)).toNat * A254553 (A034856 (n + 2)).toNat

end

end A254548.P10712450057284320009

/-!
# A254549: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254549, there is no canonical definition to state claims against.
-/

/-! ## A254549.P15436443162759857945

`A254553(A141214(n+1))`
-/

namespace A254549.P15436443162759857945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A141214 (n + 1)).toNat

end

end A254549.P15436443162759857945

/-! ## A254549.P6959093771594607955

`A254553(A027379(n+2))`
-/

namespace A254549.P6959093771594607955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A027379 (n + 2)).toNat

end

end A254549.P6959093771594607955

/-! ## A254549.P13454040906126371826

`A254553(A055998(n+2))`
-/

namespace A254549.P13454040906126371826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A055998 (n + 2)).toNat

end

end A254549.P13454040906126371826

/-! ## A254549.P3771564348841556699

`A254553(A155212(n)+5)`
-/

namespace A254549.P3771564348841556699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A155212 n + 5).toNat

end

end A254549.P3771564348841556699

/-! ## A254549.P7550709318757437570

`A254553(A056000(n)+7)`
-/

namespace A254549.P7550709318757437570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A056000 n + 7).toNat

end

end A254549.P7550709318757437570

/-!
# A254550: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254550, there is no canonical definition to state claims against.
-/

/-! ## A254550.P3717145542848496751

`A254553(Δ[A264443(n)])`
-/

namespace A254550.P3717145542848496751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (f1 (n + 1) - f1 n).toNat

end

end A254550.P3717145542848496751

/-! ## A254550.P1765301591203126387

`A254553(A046691(n+3))`
-/

namespace A254550.P1765301591203126387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A046691 (n + 3)).toNat

end

end A254550.P1765301591203126387

/-! ## A254550.P8185366174841176717

`A254553(Δ[A023545(n+1)])`
-/

namespace A254550.P8185366174841176717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (f1 (n + 1) - f1 n).toNat

end

end A254550.P8185366174841176717

/-! ## A254550.P15575628397068075042

`A254553(eq[2, A049286(n+1)-2])`
-/

namespace A254550.P15575628397068075042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254550.P15575628397068075042

/-! ## A254550.P14475897356300858574

`A254553(eq[2, A049286(n+1)/2])`
-/

namespace A254550.P14475897356300858574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049286 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A254550.P14475897356300858574

/-!
# A254551: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254551, there is no canonical definition to state claims against.
-/

/-! ## A254551.P1273997333637825546

`A254553(A052905(n+3))`
-/

namespace A254551.P1273997333637825546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A052905 (n + 3)).toNat

end

end A254551.P1273997333637825546

/-! ## A254551.P6335856781957120941

`A254553(A034856(n+5)-3)`
-/

namespace A254551.P6335856781957120941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A034856 (n + 5) - 3).toNat

end

end A254551.P6335856781957120941

/-! ## A254551.P16380235112275936266

`A254553(A000096(n+5)-4)`
-/

namespace A254551.P16380235112275936266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000096 (n + 5) - 4).toNat

end

end A254551.P16380235112275936266

/-! ## A254551.P15916269954222622739

`A254553(Δ[A264443(n+1)]-1)`
-/

namespace A254551.P15916269954222622739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (f1 (n + 1) - f1 n - 1).toNat

end

end A254551.P15916269954222622739

/-! ## A254551.P17312450788451772222

`A254553(Δ[A023545(n+2)]-1)`
-/

namespace A254551.P17312450788451772222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (f1 (n + 1) - f1 n - 1).toNat

end

end A254551.P17312450788451772222

/-!
# A254552: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254552, there is no canonical definition to state claims against.
-/

/-! ## A254552.P18008978377813728446

`A254553(A055999(n+4))`
-/

namespace A254552.P18008978377813728446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A055999 (n + 4)).toNat

end

end A254552.P18008978377813728446

/-! ## A254552.P401778131051503015

`A254553(A046691(n+5)-2)`
-/

namespace A254552.P401778131051503015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A046691 (n + 5) - 2).toNat

end

end A254552.P401778131051503015

/-! ## A254552.P6202435942856969563

`A254553(A000096(n+6)-5)`
-/

namespace A254552.P6202435942856969563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000096 (n + 6) - 5).toNat

end

end A254552.P6202435942856969563

/-! ## A254552.P493458832786453415

`A254553(A000124(n+7)-7)`
-/

namespace A254552.P493458832786453415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000124 (n + 7) - 7).toNat

end

end A254552.P493458832786453415

/-! ## A254552.P2172651134123506162

`A254553(eq[7, A049286(n+1)]+n+6)`
-/

namespace A254552.P2172651134123506162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 6))

end

end A254552.P2172651134123506162

/-!
# A254554: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254554, there is no canonical definition to state claims against.
-/

/-! ## A254554.P8678553437372806432

`A254553(∑[n+1]+2)`
-/

namespace A254554.P8678553437372806432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254554.P8678553437372806432

/-! ## A254554.P5393787133874921593

`lcm(A033999(n), A254553(C(n+2, 2)+2))`
-/

namespace A254554.P5393787133874921593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254553 (Nat.choose (n + 2) 2 + 2))

end

end A254554.P5393787133874921593

/-! ## A254554.P959856780284285167

`lcm(A057077(n), A254553(A167499(n)-3))`
-/

namespace A254554.P959856780284285167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A254553 (A167499 n - 3).toNat)

end

end A254554.P959856780284285167

/-! ## A254554.P17458125058499401124

`A254553(A167499(n)-3)+A034547(n+1)²`
-/

namespace A254554.P17458125058499401124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167499 n - 3).toNat + A034547 (n + 1) ^ 2

end

end A254554.P17458125058499401124

/-! ## A254554.P12880260461825333841

`A014963(A120398(n+1))*A254553(A167499(n)-3)`
-/

namespace A254554.P12880260461825333841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A120398 (n + 1)).toNat * A254553 (A167499 n - 3).toNat

end

end A254554.P12880260461825333841

/-!
# A254555: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254555, there is no canonical definition to state claims against.
-/

/-! ## A254555.P16269170440506357209

`A254553(∑[n+2]+4)`
-/

namespace A254555.P16269170440506357209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254555.P16269170440506357209

/-! ## A254555.P5819718668031226111

`A254553(A167614(n+1))+A185284(n)`
-/

namespace A254555.P5819718668031226111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167614 (n + 1)).toNat + A185284 n

end

end A254555.P5819718668031226111

/-! ## A254555.P4445271442006129269

`lcm(A033999(n), A254553(A167614(n+1)))`
-/

namespace A254555.P4445271442006129269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254553 (A167614 (n + 1)).toNat)

end

end A254555.P4445271442006129269

/-! ## A254555.P6760342074224518925

`A254553(A167614(n+1))+A034518(n+1)`
-/

namespace A254555.P6760342074224518925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167614 (n + 1)).toNat + A034518 (n + 1)

end

end A254555.P6760342074224518925

/-! ## A254555.P1235988800275175057

`A254553(A167614(n+1))%A235068(n+1)`
-/

namespace A254555.P1235988800275175057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254553 (A167614 (n + 1)).toNat) (A235068 (n + 1))

end

end A254555.P1235988800275175057

/-!
# A254556: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254556, there is no canonical definition to state claims against.
-/

/-! ## A254556.P9906423679867392229

`A254553(A141214(n)+7)`
-/

namespace A254556.P9906423679867392229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A141214 n + 7).toNat

end

end A254556.P9906423679867392229

/-! ## A254556.P11159512082788908199

`A254553(A052905(n)+9)`
-/

namespace A254556.P11159512082788908199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A052905 n + 9).toNat

end

end A254556.P11159512082788908199

/-! ## A254556.P15798556181205944442

`A254553(A055999(n)+10)`
-/

namespace A254556.P15798556181205944442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A055999 n + 10).toNat

end

end A254556.P15798556181205944442

/-! ## A254556.P6757264218639150470

`A254553(A167614(n+2)+1)`
-/

namespace A254556.P6757264218639150470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167614 (n + 2) + 1).toNat

end

end A254556.P6757264218639150470

/-! ## A254556.P14737565690484096277

`A254553(A166136(n+2)-2)`
-/

namespace A254556.P14737565690484096277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A166136 (n + 2) - 2).toNat

end

end A254556.P14737565690484096277

/-!
# A254557: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254557, there is no canonical definition to state claims against.
-/

/-! ## A254557.P9801075666408592275

`A254553(A167499(n+3))`
-/

namespace A254557.P9801075666408592275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167499 (n + 3)).toNat

end

end A254557.P9801075666408592275

/-! ## A254557.P15216905265433108514

`A254553(A000124(n+4)+4)`
-/

namespace A254557.P15216905265433108514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000124 (n + 4) + 4).toNat

end

end A254557.P15216905265433108514

/-! ## A254557.P13582920763642501773

`A254553(A000217(n+4)+5)`
-/

namespace A254557.P13582920763642501773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000217 (n + 4) + 5).toNat

end

end A254557.P13582920763642501773

/-! ## A254557.P7320396318571392030

`A254553(A167614(n+2)+n+6)`
-/

namespace A254557.P7320396318571392030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A254557.P7320396318571392030

/-! ## A254557.P1966388744225209869

`record[A254553(A167499(A084964(n)))]`
-/

namespace A254557.P1966388744225209869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167499 (A084964 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254557.P1966388744225209869

/-!
# A254558: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254558, there is no canonical definition to state claims against.
-/

/-! ## A254558.P18339363753360726178

`A254553(A000124(n+5)+5)`
-/

namespace A254558.P18339363753360726178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000124 (n + 5) + 5).toNat

end

end A254558.P18339363753360726178

/-! ## A254558.P9280512323719859088

`A254553(A000217(n+5)+6)`
-/

namespace A254558.P9280512323719859088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000217 (n + 5) + 6).toNat

end

end A254558.P9280512323719859088

/-! ## A254558.P15396207068946013746

`A254553(A027379(n+3)+9)`
-/

namespace A254558.P15396207068946013746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A027379 (n + 3) + 9).toNat

end

end A254558.P15396207068946013746

/-! ## A254558.P16031852507619851673

`A254553(A052905(n+2)+11)`
-/

namespace A254558.P16031852507619851673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A052905 (n + 2) + 11).toNat

end

end A254558.P16031852507619851673

/-! ## A254558.P121356653013618799

`A254553(Δ[A023545(n+1)]+10)`
-/

namespace A254558.P121356653013618799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (f1 (n + 1) - f1 n + 10).toNat

end

end A254558.P121356653013618799

/-!
# A254559: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254559, there is no canonical definition to state claims against.
-/

/-! ## A254559.P1278670261281114558

`A254553(A167487(n+5))`
-/

namespace A254559.P1278670261281114558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167487 (n + 5)).toNat

end

end A254559.P1278670261281114558

/-! ## A254559.P15913455498493023727

`A254553(A167614(n+5)+4)`
-/

namespace A254559.P15913455498493023727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A167614 (n + 5) + 4).toNat

end

end A254559.P15913455498493023727

/-! ## A254559.P5779146962416556286

`A254553(A000096(n+5)+8)`
-/

namespace A254559.P5779146962416556286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000096 (n + 5) + 8).toNat

end

end A254559.P5779146962416556286

/-! ## A254559.P13181417232170742817

`A254553(A000217(n+6)+7)`
-/

namespace A254559.P13181417232170742817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A000217 (n + 6) + 7).toNat

end

end A254559.P13181417232170742817

/-! ## A254559.P17835163724651888170

`A254553(A046691(n+1)+A016789(n+8))`
-/

namespace A254559.P17835163724651888170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (A046691 (n + 1) + A016789 (n + 8)).toNat

end

end A254559.P17835163724651888170

/-!
# A254560: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the four sums of the central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254560, there is no canonical definition to state claims against.
-/

/-! ## A254560.P17793174523342985245

`A254568((n+1)²+n²)`
-/

namespace A254560.P17793174523342985245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 ((n + 1) ^ 2 + n ^ 2)

end

end A254560.P17793174523342985245

/-! ## A254560.P18079068567422631287

`lcm(2, A254568(A001844(n)))`
-/

namespace A254560.P18079068567422631287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254568 (A001844 n).toNat)

end

end A254560.P18079068567422631287

/-! ## A254560.P16447270275295923070

`record[A254568(A003602((n+1)²))]`
-/

namespace A254560.P16447270275295923070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254560.P16447270275295923070

/-! ## A254560.P1059879255155586653

`record[gcd(A003987(n), A254568(n+1))]`
-/

namespace A254560.P1059879255155586653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A254568 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254560.P1059879255155586653

/-! ## A254560.P7848758517701427827

`A007318(∑[n])*A254568(A001844(n))`
-/

namespace A254560.P7848758517701427827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A254568 (A001844 n).toNat

end

end A254560.P7848758517701427827

/-!
# A254561: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the four sums of the central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254561, there is no canonical definition to state claims against.
-/

/-! ## A254561.P10905374698872881899

`A254568(∑[n]+1)`
-/

namespace A254561.P10905374698872881899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254561.P10905374698872881899

/-! ## A254561.P15386692215472303546

`record[A010054(n)*A254568(n+1)]`
-/

namespace A254561.P15386692215472303546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254561.P15386692215472303546

/-! ## A254561.P3940108235724477979

`record[A254568(n+1)/A007318(n)]`
-/

namespace A254561.P3940108235724477979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254568 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254561.P3940108235724477979

/-! ## A254561.P4715732610255647028

`A254568(A000124(n))+A000007(n+1)`
-/

namespace A254561.P4715732610255647028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000124 n).toNat + A000007 (n + 1)

end

end A254561.P4715732610255647028

/-! ## A254561.P12942785126906226796

`A254568(A000124(n))+A151934(n+1)`
-/

namespace A254561.P12942785126906226796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000124 n).toNat + A151934 (n + 1)

end

end A254561.P12942785126906226796

/-! ## A254561.P11737268271656951301

`A198293(2*(n+1))*A254568(A000124(n))`
-/

namespace A254561.P11737268271656951301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198293 (2 * (n + 1)) * A254568 (A000124 n).toNat

end

end A254561.P11737268271656951301

/-! ## A254561.P14366492908606470320

`A254568(A000124(n))+A010894(A061142(n+1))`
-/

namespace A254561.P14366492908606470320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000124 n).toNat + A010894 ((A061142 (n + 1)).toNat + 21)

end

end A254561.P14366492908606470320

/-! ## A254561.P9240408871924700096

`A254568(A000124(n))+A010894(A198293(n+1))`
-/

namespace A254561.P9240408871924700096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000124 n).toNat + A010894 ((A198293 (n + 1)).toNat + 21)

end

end A254561.P9240408871924700096

/-! ## A254561.P1567200634735200712

`A254568(A000124(n))/A198293(A198293(n+1)²)`
-/

namespace A254561.P1567200634735200712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254568 (A000124 n).toNat : ℚ) / (A198293 (A198293 (n + 1) ^ 2).toNat : ℚ)

end

end A254561.P1567200634735200712

/-!
# A254562: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the four sums of the central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254562, there is no canonical definition to state claims against.
-/

/-! ## A254562.P1864888918792724166

`A254568(∑[n+1]+2)`
-/

namespace A254562.P1864888918792724166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254562.P1864888918792724166

/-! ## A254562.P15798504039094119791

`record[A010054(n)*A254568(n+2)]`
-/

namespace A254562.P15798504039094119791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254562.P15798504039094119791

/-! ## A254562.P3063400083055802703

`((-1)^n)²*A254568(A000096(n+1))`
-/

namespace A254562.P3063400083055802703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A254568 (A000096 (n + 1)).toNat

end

end A254562.P3063400083055802703

/-! ## A254562.P14432330779251962640

`lcm(A033999(n), A254568(A000096(n+1)))`
-/

namespace A254562.P14432330779251962640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254568 (A000096 (n + 1)).toNat)

end

end A254562.P14432330779251962640

/-! ## A254562.P16441728900175250948

`A254568(A000096(n+1))*A263845(2*n)`
-/

namespace A254562.P16441728900175250948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000096 (n + 1)).toNat * A263845 (2 * n)

end

end A254562.P16441728900175250948

/-! ## A254562.P13090280728897853473

`lcm(A154990(n+1), A254568(A055998(n)+2))`
-/

namespace A254562.P13090280728897853473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154990 (n + 1)) (A254568 (A055998 n + 2).toNat)

end

end A254562.P13090280728897853473

/-! ## A254562.P9769596454214470596

`A254568(A000096(n+1))+A007814(2*n+1)`
-/

namespace A254562.P9769596454214470596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000096 (n + 1)).toNat + A007814 (2 * n + 1)

end

end A254562.P9769596454214470596

/-! ## A254562.P15252628066912978787

`A254568(A000096(n+1))*A259936(A006530(n+1))`
-/

namespace A254562.P15252628066912978787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000096 (n + 1)).toNat * A259936 (A006530 (n + 1)).toNat

end

end A254562.P15252628066912978787

/-! ## A254562.P1463355333165334317

`A254568(A000096(n+1))*A259936(A259936(n+2))`
-/

namespace A254562.P1463355333165334317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000096 (n + 1)).toNat * A259936 (A259936 (n + 2)).toNat

end

end A254562.P1463355333165334317

/-!
# A254563: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the four sums of the central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254563, there is no canonical definition to state claims against.
-/

/-! ## A254563.P6120840948485014048

`record[A254568(∑[n-2]+6)]`
-/

namespace A254563.P6120840948485014048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (∑ j ∈ Finset.range (n + 1), f2 j + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254563.P6120840948485014048

/-! ## A254563.P4947962993914166682

`A254568(∑[Δ[n²]-abs(1-n)]+6)`
-/

namespace A254563.P4947962993914166682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A254563.P4947962993914166682

/-! ## A254563.P11841520769890094621

`Δ[A254568(A167614(n))+a(n-1)]` with `a(0)=1`
-/

namespace A254563.P11841520769890094621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A254568 (A167614 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254563.P11841520769890094621

/-! ## A254563.P12994083283641822444

`A254568(A167614(n+1))%A017059(n)`
-/

namespace A254563.P12994083283641822444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254568 (A167614 (n + 1)).toNat) (A017059 n)

end

end A254563.P12994083283641822444

/-! ## A254563.P8300461858885803843

`lcm(A154990(n+1), A254568(A167614(n+1)))`
-/

namespace A254563.P8300461858885803843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154990 (n + 1)) (A254568 (A167614 (n + 1)).toNat)

end

end A254563.P8300461858885803843

/-!
# A254564: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the four sums of the central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254564, there is no canonical definition to state claims against.
-/

/-! ## A254564.P4463607042691446373

`A254568(A374004(n+1))`
-/

namespace A254564.P4463607042691446373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A374004 (n + 1)).toNat

end

end A254564.P4463607042691446373

/-! ## A254564.P12957566421725030087

`A254568(A052905(n)+9)`
-/

namespace A254564.P12957566421725030087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A052905 n + 9).toNat

end

end A254564.P12957566421725030087

/-! ## A254564.P6299339324750078415

`A254568(A167614(n+2)+1)`
-/

namespace A254564.P6299339324750078415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A167614 (n + 2) + 1).toNat

end

end A254564.P6299339324750078415

/-! ## A254564.P16497801677630497675

`A254568(A166136(n+2)-2)`
-/

namespace A254564.P16497801677630497675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A166136 (n + 2) - 2).toNat

end

end A254564.P16497801677630497675

/-! ## A254564.P2078417437289364155

`A254568(A167487(n+2)-3)`
-/

namespace A254564.P2078417437289364155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A167487 (n + 2) - 3).toNat

end

end A254564.P2078417437289364155

/-! ## A254564.P15601193671039349628

`A254568(A166136(n+1)+1+n)`
-/

namespace A254564.P15601193671039349628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A254564.P15601193671039349628

/-! ## A254564.P9838438663340064305

`A254568(A055999(n)+10)%A254566(n+1)`
-/

namespace A254564.P9838438663340064305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254568 (A055999 n + 10).toNat) (A254566 (n + 1))

end

end A254564.P9838438663340064305

/-! ## A254564.P14138731776025701200

`A254568(Δ[A008778(n)]+6)%A254567(n+1)`
-/

namespace A254564.P14138731776025701200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254568 (f1 (n + 1) - f1 n + 6).toNat) (A254567 (n + 1))

end

end A254564.P14138731776025701200

/-! ## A254564.P4177165928738299007

`A254568(∑[n+4]+3)`
-/

namespace A254564.P4177165928738299007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A254564.P4177165928738299007

/-! ## A254564.P9223294788853745235

`A254568(A055998(n+2))%A017059(n)`
-/

namespace A254564.P9223294788853745235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254568 (A055998 (n + 2)).toNat) (A017059 n)

end

end A254564.P9223294788853745235

/-!
# A254565: Number of (n+2) X (5+2) 0..1 arrays with every 3 X 3 subblock sum of the four sums of the central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254565, there is no canonical definition to state claims against.
-/

/-! ## A254565.P15520986395045034708

`A254568(A374005(n+1))`
-/

namespace A254565.P15520986395045034708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A374005 (n + 1)).toNat

end

end A254565.P15520986395045034708

/-! ## A254565.P6726443311682502718

`A254568(A167499(n+3))`
-/

namespace A254565.P6726443311682502718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A167499 (n + 3)).toNat

end

end A254565.P6726443311682502718

/-! ## A254565.P17937479197814580132

`A254568(A056000(n)+15)`
-/

namespace A254565.P17937479197814580132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A056000 n + 15).toNat

end

end A254565.P17937479197814580132

/-! ## A254565.P4346976306502360824

`A254568(A000217(n+4)+5)`
-/

namespace A254565.P4346976306502360824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000217 (n + 4) + 5).toNat

end

end A254565.P4346976306502360824

/-! ## A254565.P16459971602671959153

`A254568(A155212(n)+13)+A000122(4*n+2)`
-/

namespace A254565.P16459971602671959153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A155212 n + 13).toNat + A000122 (4 * n + 2)

end

end A254565.P16459971602671959153

/-! ## A254565.P10464419054015639027

`A254568(∑[n+5]+6)`
-/

namespace A254565.P10464419054015639027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A254565.P10464419054015639027

/-!
# A254566: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the four sums of the central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254566, there is no canonical definition to state claims against.
-/

/-! ## A254566.P3899958820726587070

`A254568(A374007(n+1))`
-/

namespace A254566.P3899958820726587070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A374007 (n + 1)).toNat

end

end A254566.P3899958820726587070

/-! ## A254566.P9297251241815651414

`A254568(A166136(n+4))`
-/

namespace A254566.P9297251241815651414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A166136 (n + 4)).toNat

end

end A254566.P9297251241815651414

/-! ## A254566.P11918028304669414713

`A254568(A000124(n+5)+5)`
-/

namespace A254566.P11918028304669414713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000124 (n + 5) + 5).toNat

end

end A254566.P11918028304669414713

/-! ## A254566.P15137758471876280761

`A254568(A000217(n+5)+6)`
-/

namespace A254566.P15137758471876280761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000217 (n + 5) + 6).toNat

end

end A254566.P15137758471876280761

/-! ## A254566.P1725570754625854358

`A254568(A161680(n+6)+6)`
-/

namespace A254566.P1725570754625854358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A161680 (n + 6) + 6).toNat

end

end A254566.P1725570754625854358

/-! ## A254566.P494232799059461410

`A254568(A016777(n+6)+A000096(n+1))`
-/

namespace A254566.P494232799059461410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A016777 (n + 6) + A000096 (n + 1)).toNat

end

end A254566.P494232799059461410

/-! ## A254566.P15653380814052400554

`A254568((n+4)²-∑[n+1]+1)`
-/

namespace A254566.P15653380814052400554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A254566.P15653380814052400554

/-!
# A254567: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the four sums of the central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254567, there is no canonical definition to state claims against.
-/

/-! ## A254567.P5939919426919297147

`A254568(A374008(n+1))`
-/

namespace A254567.P5939919426919297147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A374008 (n + 1)).toNat

end

end A254567.P5939919426919297147

/-! ## A254567.P6390158051985038158

`A254568(A167487(n+5))`
-/

namespace A254567.P6390158051985038158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A167487 (n + 5)).toNat

end

end A254567.P6390158051985038158

/-! ## A254567.P743880751034443012

`A254568(A056119(n)+28)`
-/

namespace A254567.P743880751034443012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A056119 n + 28).toNat

end

end A254567.P743880751034443012

/-! ## A254567.P1742119703946968774

`A254568(A167499(n+5)+2)`
-/

namespace A254567.P1742119703946968774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A167499 (n + 5) + 2).toNat

end

end A254567.P1742119703946968774

/-! ## A254567.P3143111950879796807

`A254568(A000217(n+6)+7)`
-/

namespace A254567.P3143111950879796807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000217 (n + 6) + 7).toNat

end

end A254567.P3143111950879796807

/-! ## A254567.P15831356847227224371

`A254568(A161680(n+7)+7)`
-/

namespace A254567.P15831356847227224371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A161680 (n + 7) + 7).toNat

end

end A254567.P15831356847227224371

/-! ## A254567.P3650606687593907688

`A254568(A167614(n+6)-(n+3))`
-/

namespace A254567.P3650606687593907688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A254567.P3650606687593907688

/-! ## A254567.P17573557366209905990

`A254568(A055999(n+4))`
-/

namespace A254567.P17573557366209905990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A055999 (n + 4)).toNat

end

end A254567.P17573557366209905990

/-! ## A254567.P10059824737379036466

`A254568(A000096(n+6)-5)`
-/

namespace A254567.P10059824737379036466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000096 (n + 6) - 5).toNat

end

end A254567.P10059824737379036466

/-! ## A254567.P7712725324843210680

`A254568(A000124(n+7)-7)`
-/

namespace A254567.P7712725324843210680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (A000124 (n + 7) - 7).toNat

end

end A254567.P7712725324843210680

/-!
# A254569: The number of unordered pairs (f,g) of functions from {1..n} to itself such that fg=gf (i.e., f(g(i))=g(f(i)) for all i).

The programs for A254569, there is no canonical definition to state claims against.
-/

/-! ## A254569.P8080110215429910514

`(A181162(n+1)-(n+1)^(n+1))/2+(n+1)^(n+1)`
-/

namespace A254569.P8080110215429910514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181162 (n + 1) - ((n + 1) ^ (n + 1) : ℤ) : ℚ) / 2 + ((n + 1) ^ (n + 1) : ℚ)

end

end A254569.P8080110215429910514

/-! ## A254569.P10483019741106388932

`A254570(n+1)+(n+1)^(n+1)`
-/

namespace A254569.P10483019741106388932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254570 (n + 1) + ((n + 1) ^ (n + 1) : ℤ)

end

end A254569.P10483019741106388932

/-! ## A254569.P4713449706056247008

`A181162(n+1)-A254570(n+1)`
-/

namespace A254569.P4713449706056247008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181162 (n + 1) - A254570 (n + 1)

end

end A254569.P4713449706056247008

/-!
# A254570: The number of unordered pairs (f,g) of functions from {1..n} to itself such that fg=gf (i.e., f(g(i))=g(f(i)) for all i) where f and g are distinct.

The programs for A254570, there is no canonical definition to state claims against.
-/

/-! ## A254570.P14460143599659092740

`(A181162(n+1)-(n+1)^(n+1))/2`
-/

namespace A254570.P14460143599659092740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181162 (n + 1) - ((n + 1) ^ (n + 1) : ℤ) : ℚ) / 2

end

end A254570.P14460143599659092740

/-! ## A254570.P9290323223637663942

`A254569(n+1)-A000312(n+1)`
-/

namespace A254570.P9290323223637663942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254569 (n + 1) - A000312 (n + 1)

end

end A254570.P9290323223637663942

/-! ## A254570.P11092608869553118706

`A181162(n+1)-A254569(n+1)`
-/

namespace A254570.P11092608869553118706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181162 (n + 1) - A254569 (n + 1)

end

end A254570.P11092608869553118706

/-! ## A254570.P847474780279856272

`A181162(A250246(n+1))%A254569(n+1)`
-/

namespace A254570.P847474780279856272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181162 (A250246 (n + 1)).toNat) (A254569 (n + 1))

end

end A254570.P847474780279856272

/-! ## A254570.P7170897468161330075

`A181162(A110303(n+1))%A254569(n+1)`
-/

namespace A254570.P7170897468161330075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181162 (A110303 (n + 1)).toNat) (A254569 (n + 1))

end

end A254570.P7170897468161330075

/-!
# A254571: Least multiplier k such that k*n is abundant or perfect (A023196).

The programs for A254571, there is no canonical definition to state claims against.
-/

/-! ## A254571.P7533839416042734888

`A254572(n+1)/(n+1)`
-/

namespace A254571.P7533839416042734888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254572 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A254571.P7533839416042734888

/-! ## A254571.P15679289808449272867

`A028310(tan(acot(n+1))*A254572(n+1))`
-/

namespace A254571.P15679289808449272867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.tan (SequenceMachineLib.acot (n + 1 : ℝ)) * (A254572 (n + 1) : ℝ))).toNat

end

end A254571.P15679289808449272867

/-! ## A254571.P17683454785010997001

`A008592(A254572(n+1))%A017377(n)`
-/

namespace A254571.P17683454785010997001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008592 (A254572 (n + 1)).toNat) (A017377 n)

end

end A254571.P17683454785010997001

/-! ## A254571.P6384811527402273753

`(2-A000035(n))*A215926(A109043(n+1))`
-/

namespace A254571.P6384811527402273753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A215926 (A109043 (n + 1)).toNat

end

end A254571.P6384811527402273753

/-! ## A254571.P15690973306646801909

`A215926(A109043(n+1))*A266303(A266303(n))`
-/

namespace A254571.P15690973306646801909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215926 (A109043 (n + 1)).toNat * A266303 (A266303 n).toNat

end

end A254571.P15690973306646801909

/-! ## A254571.P2868893923668429071

`A360562(A243074(n+1))`
-/

namespace A254571.P2868893923668429071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360562 (A243074 (n + 1)).toNat

end

end A254571.P2868893923668429071

/-!
# A254572: Least multiple of n that is abundant or perfect (A023196).

The programs for A254572, there is no canonical definition to state claims against.
-/

/-! ## A254572.P5742816394126716007

`(n+1)*A254571(n+1)`
-/

namespace A254572.P5742816394126716007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254571 (n + 1)

end

end A254572.P5742816394126716007

/-! ## A254572.P10360906802846855751

`lcm(2, n+1)*A215926(lcm(2, n+1))`
-/

namespace A254572.P10360906802846855751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) * A215926 (Nat.lcm 2 (n + 1))

end

end A254572.P10360906802846855751

/-! ## A254572.P10494154682484156258

`A109043(n+1)*A215926(A109043(n+1))`
-/

namespace A254572.P10494154682484156258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (n + 1) * A215926 (A109043 (n + 1)).toNat

end

end A254572.P10494154682484156258

/-! ## A254572.P17950697459650348280

`A204904(n+1)*A215926(A204904(n+1))`
-/

namespace A254572.P17950697459650348280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204904 (n + 1) * A215926 (A204904 (n + 1)).toNat

end

end A254572.P17950697459650348280

/-! ## A254572.P4058350544660435975

`(n+1)*A360562(A268385(n+1))`
-/

namespace A254572.P4058350544660435975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360562 (A268385 (n + 1)).toNat

end

end A254572.P4058350544660435975

/-!
# A254573: Number of ways to write n = x*(x+1) + y*(3*y+1)/2 + z*(3*z-1)/2 with x,y,z nonnegative integers.

The programs for A254573, there is no canonical definition to state claims against.
-/

/-! ## A254573.P16088202695942404488

`A276084(A026764(n))+A213939(n+2)`
-/

namespace A254573.P16088202695942404488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A026764 n).toNat + A213939 (n + 2)

end

end A254573.P16088202695942404488

/-! ## A254573.P13570509619256783573

`A269400(xor(A077168(n), A269400(n+11)))`
-/

namespace A254573.P13570509619256783573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269400 (Int.xor (A077168 n) (A269400 (n + 11))).toNat

end

end A254573.P13570509619256783573

/-! ## A254573.P13052245568759252825

`A001876(A383546(n+2)+A219049(n+1))`
-/

namespace A254573.P13052245568759252825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A383546 (n + 2) + A219049 (n + 1)).toNat

end

end A254573.P13052245568759252825

/-! ## A254573.P8104660469254008468

`gcd(A182850(3*(n+1)), A304719(A279336(n+2)))`
-/

namespace A254573.P8104660469254008468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182850 (3 * (n + 1))) (A304719 (A279336 (n + 2)).toNat)

end

end A254573.P8104660469254008468

/-! ## A254573.P5630961963365180024

`A269978(A027341(n))`
-/

namespace A254573.P5630961963365180024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269978 (A027341 n).toNat

end

end A254573.P5630961963365180024

/-!
# A254574: Number of ways to write n = x*(x+1)/2 + y*(3*y+1)/2 + z*(3*z-1)/2 with x,y,z nonnegative integers.

The programs for A254574, there is no canonical definition to state claims against.
-/

/-! ## A254574.P16292843203596417927

`A057334(A004888(n+1))`
-/

namespace A254574.P16292843203596417927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 (A004888 (n + 1)).toNat

end

end A254574.P16292843203596417927

/-! ## A254574.P17501374193938341608

`A057334(A004899(n+1))`
-/

namespace A254574.P17501374193938341608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 (A004899 (n + 1)).toNat

end

end A254574.P17501374193938341608

/-! ## A254574.P1307592229896537020

`A057334(A004910(n+1))`
-/

namespace A254574.P1307592229896537020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 (A004910 (n + 1)).toNat

end

end A254574.P1307592229896537020

/-! ## A254574.P550837125917129259

`A057334(2*A004877(n+1))`
-/

namespace A254574.P550837125917129259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 (2 * A004877 (n + 1)).toNat

end

end A254574.P550837125917129259

/-! ## A254574.P16701298768111287166

`A006530(A163511(A004877(n+1)))`
-/

namespace A254574.P16701298768111287166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A163511 (A004877 (n + 1)).toNat).toNat

end

end A254574.P16701298768111287166

/-!
# A254576: Primes p such that phi(p-2) divides p-1 where phi is Euler's totient function (A000010).

The programs for A254576, there is no canonical definition to state claims against.
-/

/-! ## A254576.P17154968026091804599

`A232720(n+1)+char[6]`
-/

namespace A254576.P17154968026091804599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232720 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254576.P17154968026091804599

/-!
# A254577: Total number of factors over all ordered factorizations of n.

The programs for A254577, there is no canonical definition to state claims against.
-/

/-! ## A254577.P16225293269709282145

`A345182(2*A045966(n+1))/2`
-/

namespace A254577.P16225293269709282145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345182 (2 * A045966 (n + 1)).toNat : ℚ) / 2

end

end A254577.P16225293269709282145

/-! ## A254577.P8873152514190960132

`A000026(A244098(n+1)^A028422(n+1))`
-/

namespace A254577.P8873152514190960132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((A244098 (n + 1) : ℚ) ^ (A028422 (n + 1) : ℤ))).toNat

end

end A254577.P8873152514190960132

/-! ## A254577.P420824998510491203

`A056811((A069626(n+1)+A050356(n+1))²)`
-/

namespace A254577.P420824998510491203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 ((A069626 (n + 1) + A050356 (n + 1)) ^ 2).toNat

end

end A254577.P420824998510491203

/-! ## A254577.P13937001712209822082

`ceil(A111217(n+1)/A111221(A000043(n+1)))`
-/

namespace A254577.P13937001712209822082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111217 (n + 1) : ℚ) / (A111221 (A000043 (n + 1)).toNat : ℚ)⌉

end

end A254577.P13937001712209822082

/-! ## A254577.P12409087529011100730

`A010893(A107106(n+1))+A300252(n+1)+A002033(n)`
-/

namespace A254577.P12409087529011100730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A107106 (n + 1)).toNat + 13) + (A300252 (n + 1) + A002033 n)

end

end A254577.P12409087529011100730

/-!
# A254578: Number of ordered factorizations into distinct factors.

The programs for A254578, the canonical program `A254578.P12489297454804418568` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254578 has offset 1).

The definition of A254578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254578.P12489297454804418568

`2*(A088434(n+1)-A122180(n+1))+A004220(4^A122180(n+1))+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254578

/-- `2*(A088434(n+1)-A122180(n+1))+A004220(4^A122180(n+1))+1` -/
def P12489297454804418568.Spec : Prop :=
  ∀ n, P12489297454804418568.a n = A254578 (n + 1)

theorem P12489297454804418568.correct : P12489297454804418568.Spec := by
  intro n
  simp only [A254578, Nat.add_sub_cancel]

end A254578

/-! ## A254578.P16635950111337425056

`A037474(A294787(A046523(n+1)))`
-/

namespace A254578.P16635950111337425056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A294787 (A046523 (n + 1)).toNat).toNat

end

end A254578.P16635950111337425056

namespace A254578

/-- `A037474(A294787(A046523(n+1)))` -/
def P16635950111337425056.Spec : Prop :=
  ∀ n, P16635950111337425056.a n = A254578 (n + 1)

end A254578

/-! ## A254578.P9572720376109457222

`A294787(A046523(n+1))+A122180(n+1)`
-/

namespace A254578.P9572720376109457222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (A046523 (n + 1)).toNat + A122180 (n + 1)

end

end A254578.P9572720376109457222

namespace A254578

/-- `A294787(A046523(n+1))+A122180(n+1)` -/
def P9572720376109457222.Spec : Prop :=
  ∀ n, P9572720376109457222.a n = A254578 (n + 1)

end A254578

/-! ## A254578.P5487519409116793427

`A294787(A097272(n+1))+A122180(n+1)`
-/

namespace A254578.P5487519409116793427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (A097272 (n + 1)).toNat + A122180 (n + 1)

end

end A254578.P5487519409116793427

namespace A254578

/-- `A294787(A097272(n+1))+A122180(n+1)` -/
def P5487519409116793427.Spec : Prop :=
  ∀ n, P5487519409116793427.a n = A254578 (n + 1)

end A254578

/-! ## A254578.P4037566716922540702

`A037474(A294787(n+1))`
-/

namespace A254578.P4037566716922540702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A294787 (n + 1)).toNat

end

end A254578.P4037566716922540702

namespace A254578

/-- `A037474(A294787(n+1))` -/
def P4037566716922540702.Spec : Prop :=
  ∀ n, P4037566716922540702.a n = A254578 (n + 1)

end A254578

/-! ## A254578.P8411844225624263700

`A052414(A294787(n+1)+1)`
-/

namespace A254578.P8411844225624263700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (A294787 (n + 1) + 1).toNat

end

end A254578.P8411844225624263700

namespace A254578

/-- `A052414(A294787(n+1)+1)` -/
def P8411844225624263700.Spec : Prop :=
  ∀ n, P8411844225624263700.a n = A254578 (n + 1)

end A254578

/-! ## A254578.P14691413283553910092

`A057360(3*A294787(n+1))`
-/

namespace A254578.P14691413283553910092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (3 * A294787 (n + 1)).toNat

end

end A254578.P14691413283553910092

namespace A254578

/-- `A057360(3*A294787(n+1))` -/
def P14691413283553910092.Spec : Prop :=
  ∀ n, P14691413283553910092.a n = A254578 (n + 1)

end A254578

/-! ## A254578.P13207796885038432179

`A294787(n+1)+A122180(n+1)`
-/

namespace A254578.P13207796885038432179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) + A122180 (n + 1)

end

end A254578.P13207796885038432179

namespace A254578

/-- `A294787(n+1)+A122180(n+1)` -/
def P13207796885038432179.Spec : Prop :=
  ∀ n, P13207796885038432179.a n = A254578 (n + 1)

end A254578

/-! ## A254578.P16409819849996256658

`A037477(A294787(n+1)%(n+2))`
-/

namespace A254578.P16409819849996256658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A294787 (n + 1)) (n + 2 : ℤ)).toNat

end

end A254578.P16409819849996256658

namespace A254578

/-- `A037477(A294787(n+1)%(n+2))` -/
def P16409819849996256658.Spec : Prop :=
  ∀ n, P16409819849996256658.a n = A254578 (n + 1)

end A254578

/-! ## A254578.P5300026792563061955

`A294787(n+1)+A054900(2*A294787(n+1))`
-/

namespace A254578.P5300026792563061955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) + A054900 (2 * A294787 (n + 1)).toNat

end

end A254578.P5300026792563061955

namespace A254578

/-- `A294787(n+1)+A054900(2*A294787(n+1))` -/
def P5300026792563061955.Spec : Prop :=
  ∀ n, P5300026792563061955.a n = A254578 (n + 1)

end A254578

/-!
# A254579: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254579, there is no canonical definition to state claims against.
-/

/-! ## A254579.P1487816920757512139

`A254586(∑[4*n]+1)`
-/

namespace A254579.P1487816920757512139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254579.P1487816920757512139

/-! ## A254579.P16519541455213035240

`record[gcd(A114327(n), A254586(n+1))]`
-/

namespace A254579.P16519541455213035240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254586 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254579.P16519541455213035240

/-! ## A254579.P2054167610311945822

`A254586(A001844(n))+A079390(n+1)%2`
-/

namespace A254579.P2054167610311945822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A001844 n).toNat + Int.tmod (A079390 (n + 1)) 2

end

end A254579.P2054167610311945822

/-! ## A254579.P5399410665040595482

`A254586(A001844(n))+6%A308184(n+1)`
-/

namespace A254579.P5399410665040595482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A001844 n).toNat + Int.tmod 6 (A308184 (n + 1))

end

end A254579.P5399410665040595482

/-! ## A254579.P10265381924605752628

`A007318(A161680(n))*A254586(A001844(n))`
-/

namespace A254579.P10265381924605752628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161680 n).toNat * A254586 (A001844 n).toNat

end

end A254579.P10265381924605752628

/-!
# A254580: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254580, there is no canonical definition to state claims against.
-/

/-! ## A254580.P5419361073611880003

`A254586(∑[n+2])`
-/

namespace A254580.P5419361073611880003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254580.P5419361073611880003

/-! ## A254580.P16549443982591904974

`record[A254586(A000096(A028920(n)))]`
-/

namespace A254580.P16549443982591904974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254580.P16549443982591904974

/-! ## A254580.P4804024224435948567

`record[A254586(A000096(A126759(n)))]`
-/

namespace A254580.P4804024224435948567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254580.P4804024224435948567

/-! ## A254580.P12791440941912684286

`record[A254586(A000096(A134478(n)))]`
-/

namespace A254580.P12791440941912684286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254580.P12791440941912684286

/-! ## A254580.P15847573179574228540

`record[A254586(A000096(A000188(n+1)))]`
-/

namespace A254580.P15847573179574228540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254580.P15847573179574228540

/-!
# A254581: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254581, there is no canonical definition to state claims against.
-/

/-! ## A254581.P1433020909310935129

`A254586(∑[n+3]+1)`
-/

namespace A254581.P1433020909310935129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254581.P1433020909310935129

/-! ## A254581.P6303838443285165478

`record[A254586(A198464(n+1))]`
-/

namespace A254581.P6303838443285165478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254581.P6303838443285165478

/-! ## A254581.P9650540245301313692

`or(A000007(n), A254586(A034856(n+2)))`
-/

namespace A254581.P9650540245301313692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A254586 (A034856 (n + 2)).toNat)

end

end A254581.P9650540245301313692

/-! ## A254581.P14571175138831738829

`A254586(A034856(n+2))+A000007(n+1)`
-/

namespace A254581.P14571175138831738829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A254581.P14571175138831738829

/-!
# A254582: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254582, there is no canonical definition to state claims against.
-/

/-! ## A254582.P8952065509566752203

`A254586(A141214(n+1))`
-/

namespace A254582.P8952065509566752203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A141214 (n + 1)).toNat

end

end A254582.P8952065509566752203

/-! ## A254582.P5085582533617118839

`A254586(A155212(n)+5)`
-/

namespace A254582.P5085582533617118839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A155212 n + 5).toNat

end

end A254582.P5085582533617118839

/-! ## A254582.P8111290208889186792

`A254586(eq[3, A193592(n)])`
-/

namespace A254582.P8111290208889186792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254582.P8111290208889186792

/-! ## A254582.P8832676138075931869

`A254586(eq[4, A209434(n)])`
-/

namespace A254582.P8832676138075931869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254582.P8832676138075931869

/-! ## A254582.P12108442334196762511

`A254586(A052905(n+1)+2)`
-/

namespace A254582.P12108442334196762511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A052905 (n + 1) + 2).toNat

end

end A254582.P12108442334196762511

/-!
# A254583: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254583, there is no canonical definition to state claims against.
-/

/-! ## A254583.P15803880274111095036

`A254586(A046691(n+3))`
-/

namespace A254583.P15803880274111095036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A046691 (n + 3)).toNat

end

end A254583.P15803880274111095036

/-! ## A254583.P2132587672140555718

`A254586(eq[4, A193592(n)])`
-/

namespace A254583.P2132587672140555718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254583.P2132587672140555718

/-! ## A254583.P11866859516937576837

`A254586(Δ[A023545(n+1)])`
-/

namespace A254583.P11866859516937576837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (f1 (n + 1) - f1 n).toNat

end

end A254583.P11866859516937576837

/-! ## A254583.P16898152656516447570

`A254586(A052905(n+2)+1)`
-/

namespace A254583.P16898152656516447570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A052905 (n + 2) + 1).toNat

end

end A254583.P16898152656516447570

/-! ## A254583.P12555334045448348053

`A254586(eq[6, A185782(n+1)])`
-/

namespace A254583.P12555334045448348053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254583.P12555334045448348053

/-!
# A254584: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254584, there is no canonical definition to state claims against.
-/

/-! ## A254584.P4678050110480214395

`A254586(A052905(n+3))`
-/

namespace A254584.P4678050110480214395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A052905 (n + 3)).toNat

end

end A254584.P4678050110480214395

/-! ## A254584.P2634322497413292143

`A254586(A056119(n)+16)`
-/

namespace A254584.P2634322497413292143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A056119 n + 16).toNat

end

end A254584.P2634322497413292143

/-! ## A254584.P5231044162688623916

`A254586(eq[3, A219347(n)])`
-/

namespace A254584.P5231044162688623916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254584.P5231044162688623916

/-! ## A254584.P4390433811662534983

`A254586(eq[5, A193592(n)])`
-/

namespace A254584.P4390433811662534983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254584.P4390433811662534983

/-! ## A254584.P1508354202013885951

`A254586(A000124(n+6)-6)`
-/

namespace A254584.P1508354202013885951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A000124 (n + 6) - 6).toNat

end

end A254584.P1508354202013885951

/-!
# A254585: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254585, there is no canonical definition to state claims against.
-/

/-! ## A254585.P14655899347502945317

`A254586(A055999(n+4))`
-/

namespace A254585.P14655899347502945317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A055999 (n + 4)).toNat

end

end A254585.P14655899347502945317

/-! ## A254585.P14838938304386564016

`A254586(eq[4, A219347(n)])`
-/

namespace A254585.P14838938304386564016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254585.P14838938304386564016

/-! ## A254585.P4077734413994983531

`A254586(eq[6, A193592(n)])`
-/

namespace A254585.P4077734413994983531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254585.P4077734413994983531

/-! ## A254585.P1333926348349551480

`A254586(eq[10, A185782(n+1)])`
-/

namespace A254585.P1333926348349551480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254585.P1333926348349551480

/-! ## A254585.P2428380978350234327

`A254586(eq[7, A200370(n+1)])`
-/

namespace A254585.P2428380978350234327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254585.P2428380978350234327

/-!
# A254587: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254587, there is no canonical definition to state claims against.
-/

/-! ## A254587.P2395703626008700950

`A254586(∑[n+1]+2)`
-/

namespace A254587.P2395703626008700950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254587.P2395703626008700950

/-! ## A254587.P6824786266170668406

`A254586(A133263(n+1))+A147612(2*(n+1))`
-/

namespace A254587.P6824786266170668406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A133263 (n + 1)).toNat + A147612 (2 * (n + 1))

end

end A254587.P6824786266170668406

/-! ## A254587.P12478379955277962685

`A254586(A133263(n+1))/A158416(2*n+3)`
-/

namespace A254587.P12478379955277962685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254586 (A133263 (n + 1)).toNat : ℚ) / (A158416 (2 * n + 3) : ℚ)

end

end A254587.P12478379955277962685

/-!
# A254588: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254588, there is no canonical definition to state claims against.
-/

/-! ## A254588.P652041284984796896

`A254586(∑[n+2]+4)`
-/

namespace A254588.P652041284984796896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254588.P652041284984796896

/-! ## A254588.P5408627014849022708

`record[gcd(A254586(n+4), A254606(n+1))]`
-/

namespace A254588.P5408627014849022708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254586 (n + 4)) (A254606 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254588.P5408627014849022708

/-! ## A254588.P12596758889262234212

`A254586(A167614(n+1))+A025439(n)`
-/

namespace A254588.P12596758889262234212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A167614 (n + 1)).toNat + A025439 n

end

end A254588.P12596758889262234212

/-! ## A254588.P2338284253260964557

`A254586(A167614(n+1))+A067168(n)`
-/

namespace A254588.P2338284253260964557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A167614 (n + 1)).toNat + A067168 (n + 10)

end

end A254588.P2338284253260964557

/-! ## A254588.P7060169107097582520

`A254586(A167614(n+1))+A185037(n)`
-/

namespace A254588.P7060169107097582520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A167614 (n + 1)).toNat + A185037 n

end

end A254588.P7060169107097582520

/-!
# A254589: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254589, there is no canonical definition to state claims against.
-/

/-! ## A254589.P2332752548711115349

`A254586(∑[n+3]+7)`
-/

namespace A254589.P2332752548711115349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254589.P2332752548711115349

/-!
# A254590: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254590, there is no canonical definition to state claims against.
-/

/-! ## A254590.P3065600485688512095

`A254586(C(n+5, 2)+5)`
-/

namespace A254590.P3065600485688512095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (Nat.choose (n + 5) 2 + 5)

end

end A254590.P3065600485688512095

/-! ## A254590.P30367220358199360

`A254586(A167499(n+3))`
-/

namespace A254590.P30367220358199360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A167499 (n + 3)).toNat

end

end A254590.P30367220358199360

/-! ## A254590.P5512336428627444353

`A254586(A155212(n)+13)`
-/

namespace A254590.P5512336428627444353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A155212 n + 13).toNat

end

end A254590.P5512336428627444353

/-! ## A254590.P17986113251636244810

`A254586(A056000(n)+15)`
-/

namespace A254590.P17986113251636244810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A056000 n + 15).toNat

end

end A254590.P17986113251636244810

/-! ## A254590.P1856783696243450204

`A254586(eq[7, A066657(n)])`
-/

namespace A254590.P1856783696243450204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254590.P1856783696243450204

/-!
# A254591: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254591, there is no canonical definition to state claims against.
-/

/-! ## A254591.P12869091481987051470

`A254586(A166136(n+4))`
-/

namespace A254591.P12869091481987051470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A166136 (n + 4)).toNat

end

end A254591.P12869091481987051470

/-! ## A254591.P9687461444233683888

`A254586(A056115(n)+21)`
-/

namespace A254591.P9687461444233683888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A056115 n + 21).toNat

end

end A254591.P9687461444233683888

/-! ## A254591.P33213690934424148

`A254586(A000217(n+5)+6)`
-/

namespace A254591.P33213690934424148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A000217 (n + 5) + 6).toNat

end

end A254591.P33213690934424148

/-! ## A254591.P3976204149178305648

`A254586(A052905(n+2)+11)`
-/

namespace A254591.P3976204149178305648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A052905 (n + 2) + 11).toNat

end

end A254591.P3976204149178305648

/-! ## A254591.P2121374710493756736

`A254586(eq[7, A131818(n+1)])`
-/

namespace A254591.P2121374710493756736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254591.P2121374710493756736

/-!
# A254592: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254592, there is no canonical definition to state claims against.
-/

/-! ## A254592.P17303761131938806136

`A254586(A056119(n)+28)`
-/

namespace A254592.P17303761131938806136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A056119 n + 28).toNat

end

end A254592.P17303761131938806136

/-! ## A254592.P11789629275146413633

`A254586(eq[11, A066657(n)])`
-/

namespace A254592.P11789629275146413633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254592.P11789629275146413633

/-! ## A254592.P5233742769379161406

`A254586(A000124(n+6)+6)`
-/

namespace A254592.P5233742769379161406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (A000124 (n + 6) + 6).toNat

end

end A254592.P5233742769379161406

/-! ## A254592.P16911850067468882747

`A254586(eq[8, A131818(n+1)])`
-/

namespace A254592.P16911850067468882747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254592.P16911850067468882747

/-! ## A254592.P14281027591449922173

`A254586(Δ[A000292(n+5)]+7)`
-/

namespace A254592.P14281027591449922173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (f1 (n + 1) - f1 n + 7).toNat

end

end A254592.P14281027591449922173

/-!
# A254593: a(n) = (3/n^3) * Sum_{d|n} (-1)^(n+d)*moebius(n/d)*binomial(2*d,d).

The programs for A254593, there is no canonical definition to state claims against.
-/

/-! ## A254593.P1576964309151868517

`6*A131868(n+1)/(n+1)`
-/

namespace A254593.P1576964309151868517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A131868 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A254593.P1576964309151868517

/-! ## A254593.P8217689452829691867

`A008458(A131868(n+1))/(n+1)`
-/

namespace A254593.P8217689452829691867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A131868 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A254593.P8217689452829691867

/-! ## A254593.P9448342950792827293

`or(A037213(n), A065033(A268592(n+1)))`
-/

namespace A254593.P9448342950792827293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037213 n) (A065033 (A268592 (n + 1)).toNat)

end

end A254593.P9448342950792827293

/-! ## A254593.P16856058117494037249

`or(A037213(n), A065033(6/(n+1)*A268619(n+1)))`
-/

namespace A254593.P16856058117494037249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037213 n) (A065033 (SequenceMachineLib.roundAway (6 / (n + 1 : ℚ) * (A268619 (n + 1) : ℚ))).toNat)

end

end A254593.P16856058117494037249

/-! ## A254593.P7141396906596932921

`A323467(A268592(n+1))`
-/

namespace A254593.P7141396906596932921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (A268592 (n + 1)).toNat

end

end A254593.P7141396906596932921

/-!
# A254594: Expansion of 1 / ((1 - x^2)^2 * (1 - x^3) * (1 - x^4)) in powers of x.

The programs for A254594, the canonical program `A254594.P5214450476323340904` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254594 has offset 0).

The definition of A254594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254594.P5214450476323340904

`A001400(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254594

/-- `A001400(n)-a(n-1)` -/
def P5214450476323340904.Spec : Prop :=
  ∀ n, P5214450476323340904.a n = A254594 n

theorem P5214450476323340904.correct : P5214450476323340904.Spec := by
  intro n
  simp only [A254594]

end A254594

/-! ## A254594.P18206434470902056711

`A266755(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A254594.P18206434470902056711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A266755 n + a (n - 2)

end

end A254594.P18206434470902056711

namespace A254594

/-- `A266755(n)+a(n-2)` -/
def P18206434470902056711.Spec : Prop :=
  ∀ n, P18206434470902056711.a n = A254594 n

end A254594

/-! ## A254594.P15467339423680488505

`A026810(n)+round((n+3)²/12)-a(n-1)` with `a(0)=1`
-/

namespace A254594.P15467339423680488505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026810 n + (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - a (n - 1))

end

end A254594.P15467339423680488505

namespace A254594

/-- `A026810(n)+round((n+3)²/12)-a(n-1)` -/
def P15467339423680488505.Spec : Prop :=
  ∀ n, P15467339423680488505.a n = A254594 n

end A254594

/-! ## A254594.P9610110434081178767

`A181120(A052938(n+1))`
-/

namespace A254594.P9610110434081178767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A052938 (n + 1)).toNat

end

end A254594.P9610110434081178767

namespace A254594

/-- `A181120(A052938(n+1))` -/
def P9610110434081178767.Spec : Prop :=
  ∀ n, P9610110434081178767.a n = A254594 n

end A254594

/-! ## A254594.P8763713703809940902

`A181120(A028242(n)+2)`
-/

namespace A254594.P8763713703809940902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A028242 n + 2).toNat

end

end A254594.P8763713703809940902

namespace A254594

/-- `A181120(A028242(n)+2)` -/
def P8763713703809940902.Spec : Prop :=
  ∀ n, P8763713703809940902.a n = A254594 n

end A254594

/-! ## A254594.P2663150247804994206

`A254708(n)-A165188(n+1)`
-/

namespace A254594.P2663150247804994206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A165188 (n + 1)

end

end A254594.P2663150247804994206

namespace A254594

/-- `A254708(n)-A165188(n+1)` -/
def P2663150247804994206.Spec : Prop :=
  ∀ n, P2663150247804994206.a n = A254594 n

end A254594

/-! ## A254594.P5670188034653632023

`2*A165188(n+1)-A254707(n)`
-/

namespace A254594.P5670188034653632023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165188 (n + 1) - A254707 n

end

end A254594.P5670188034653632023

namespace A254594

/-- `2*A165188(n+1)-A254707(n)` -/
def P5670188034653632023.Spec : Prop :=
  ∀ n, P5670188034653632023.a n = A254594 n

end A254594

/-! ## A254594.P7401345488281058315

`A001400(n+1)+A115264(n)-A115264(n+1)`
-/

namespace A254594.P7401345488281058315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) + (A115264 n - A115264 (n + 1))

end

end A254594.P7401345488281058315

namespace A254594

/-- `A001400(n+1)+A115264(n)-A115264(n+1)` -/
def P7401345488281058315.Spec : Prop :=
  ∀ n, P7401345488281058315.a n = A254594 n

end A254594

/-! ## A254594.P4083627233527773063

`A251260(n+1)+A097701(n)-A097701(n+1)`
-/

namespace A254594.P4083627233527773063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251260 (n + 1) + (A097701 n - A097701 (n + 1))

end

end A254594.P4083627233527773063

namespace A254594

/-- `A251260(n+1)+A097701(n)-A097701(n+1)` -/
def P4083627233527773063.Spec : Prop :=
  ∀ n, P4083627233527773063.a n = A254594 n

end A254594

/-! ## A254594.P2876998236070427018

`A251260(n+1)-(A165188(n+1)+A165188(n+2))`
-/

namespace A254594.P2876998236070427018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251260 (n + 1) - (A165188 (n + 1) + A165188 (n + 2))

end

end A254594.P2876998236070427018

namespace A254594

/-- `A251260(n+1)-(A165188(n+1)+A165188(n+2))` -/
def P2876998236070427018.Spec : Prop :=
  ∀ n, P2876998236070427018.a n = A254594 n

end A254594

/-! ## A254594.P5052363055916500332

`A254707(n+2)-A165188(n+3)`
-/

namespace A254594.P5052363055916500332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254707 (n + 2) - A165188 (n + 3)

end

end A254594.P5052363055916500332

namespace A254594

/-- `A254707(n+2)-A165188(n+3)` -/
def P5052363055916500332.Spec : Prop :=
  ∀ n, P5052363055916500332.a n = A254594 n

end A254594

/-! ## A254594.P11444575806775484907

`A026810(n+4)-a(n-1)` with `a(0)=1`
-/

namespace A254594.P11444575806775484907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026810 (n + 4) - a (n - 1)

end

end A254594.P11444575806775484907

namespace A254594

/-- `A026810(n+4)-a(n-1)` -/
def P11444575806775484907.Spec : Prop :=
  ∀ n, P11444575806775484907.a n = A254594 n

end A254594

/-! ## A254594.P13370709295663874762

`A212543(n+5)-A212544(n+4)-a(n-1)` with `a(0)=1`
-/

namespace A254594.P13370709295663874762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212543 (n + 5) - A212544 (n + 4) - a (n - 1)

end

end A254594.P13370709295663874762

namespace A254594

/-- `A212543(n+5)-A212544(n+4)-a(n-1)` -/
def P13370709295663874762.Spec : Prop :=
  ∀ n, P13370709295663874762.a n = A254594 n

end A254594

/-! ## A254594.P10517534333887562632

`A029138(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A254594.P10517534333887562632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029138 (2 * n) - a (n - 1)

end

end A254594.P10517534333887562632

namespace A254594

/-- `A029138(2*n)-a(n-1)` -/
def P10517534333887562632.Spec : Prop :=
  ∀ n, P10517534333887562632.a n = A254594 n

end A254594

/-! ## A254594.P13496497198806292078

`A062890(A177499(2*(n+1))+n+1)`
-/

namespace A254594.P13496497198806292078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062890 (A177499 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A254594.P13496497198806292078

namespace A254594

/-- `A062890(A177499(2*(n+1))+n+1)` -/
def P13496497198806292078.Spec : Prop :=
  ∀ n, P13496497198806292078.a n = A254594 n

end A254594

/-! ## A254594.P7077905620841344987

`A029223(3*n)`
-/

namespace A254594.P7077905620841344987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029223 (3 * n)

end

end A254594.P7077905620841344987

namespace A254594

/-- `A029223(3*n)` -/
def P7077905620841344987.Spec : Prop :=
  ∀ n, P7077905620841344987.a n = A254594 n

end A254594

/-! ## A254594.P5616697309026874456

`A029268(A136320(n))`
-/

namespace A254594.P5616697309026874456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 (A136320 n).toNat

end

end A254594.P5616697309026874456

namespace A254594

/-- `A029268(A136320(n))` -/
def P5616697309026874456.Spec : Prop :=
  ∀ n, P5616697309026874456.a n = A254594 n

end A254594

/-! ## A254594.P16737426308761279228

`A029297(A047238(n+1))`
-/

namespace A254594.P16737426308761279228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029297 (A047238 (n + 1)).toNat

end

end A254594.P16737426308761279228

namespace A254594

/-- `A029297(A047238(n+1))` -/
def P16737426308761279228.Spec : Prop :=
  ∀ n, P16737426308761279228.a n = A254594 n

end A254594

/-! ## A254594.P2470482871970792528

`A165188(n+1)-A029223(A136320(n))`
-/

namespace A254594.P2470482871970792528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (n + 1) - A029223 (A136320 n).toNat

end

end A254594.P2470482871970792528

namespace A254594

/-- `A165188(n+1)-A029223(A136320(n))` -/
def P2470482871970792528.Spec : Prop :=
  ∀ n, P2470482871970792528.a n = A254594 n

end A254594

/-! ## A254594.P5015788261880506674

`A029268(A047270(n+1))`
-/

namespace A254594.P5015788261880506674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 (A047270 (n + 1)).toNat

end

end A254594.P5015788261880506674

namespace A254594

/-- `A029268(A047270(n+1))` -/
def P5015788261880506674.Spec : Prop :=
  ∀ n, P5015788261880506674.a n = A254594 n

end A254594

/-!
# A254596: Convert number n to each of the bases from 2 to 10. a(n) is the minimum base that maximizes the sum of digits.

The programs for A254596, there is no canonical definition to state claims against.
-/

/-! ## A254596.P7483287838406912830

`ceil(A162421(n+1)/A276502(A077342(n+1)))`
-/

namespace A254596.P7483287838406912830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162421 (n + 1) : ℚ) / (A276502 (A077342 (n + 1)).toNat : ℚ)⌉

end

end A254596.P7483287838406912830

/-! ## A254596.P14086022810595169970

`round((n+2)/A276502(A045876(n+1)))`
-/

namespace A254596.P14086022810595169970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A276502 (A045876 (n + 1)).toNat : ℚ))

end

end A254596.P14086022810595169970

/-!
# A254598: Numbers of n-length words on alphabet {0,1,...,8} with no subwords ii, for i from {0,1}.

The programs for A254598, the canonical program `A254598.P11072546542593880833` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254598 has offset 0).

The definition of A254598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254598.P11072546542593880833

`8*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254598

/-- `8*a(n-1)+7*a(n-2)` -/
def P11072546542593880833.Spec : Prop :=
  ∀ n, (P11072546542593880833.a n : ℤ) = A254598 n

theorem P11072546542593880833.correct : P11072546542593880833.Spec := by
  intro n
  simp only [A254598]

end A254598

/-! ## A254598.P12063895018611030309

`A015576(n)+A015576(n+1)`
-/

namespace A254598.P12063895018611030309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015576 n + A015576 (n + 1)

end

end A254598.P12063895018611030309

namespace A254598

/-- `A015576(n)+A015576(n+1)` -/
def P12063895018611030309.Spec : Prop :=
  ∀ n, P12063895018611030309.a n = A254598 n

end A254598

/-! ## A254598.P3687770888215960583

`a(n-1)+lcm(7, a(n-1)+a(n-2))` with `a(0)=1, a(1)=9`
-/

namespace A254598.P3687770888215960583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) + Nat.lcm 7 (a (n - 1) + a (n - 2))

end

end A254598.P3687770888215960583

namespace A254598

/-- `a(n-1)+lcm(7, a(n-1)+a(n-2))` -/
def P3687770888215960583.Spec : Prop :=
  ∀ n, (P3687770888215960583.a n : ℤ) = A254598 n

end A254598

/-! ## A254598.P4224334475470062573

`9*a(n-1)-a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=9, a(2)=79`
-/

namespace A254598.P4224334475470062573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 79] fun n a =>
  9 * a (n - 1) - a (n - 2) - 7 * a (n - 3)

end

end A254598.P4224334475470062573

namespace A254598

/-- `9*a(n-1)-a(n-2)-7*a(n-3)` -/
def P4224334475470062573.Spec : Prop :=
  ∀ n, P4224334475470062573.a n = A254598 n

end A254598

/-!
# A254599: Numbers of words on alphabet {0,1,...,9} with no subwords ii, for i from {0,1}.

The programs for A254599, the canonical program `A254599.P9420228803590477512` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254599 has offset 0).

The definition of A254599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254599.P9420228803590477512

`9*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254599

/-- `9*a(n-1)+8*a(n-2)` -/
def P9420228803590477512.Spec : Prop :=
  ∀ n, (P9420228803590477512.a n : ℤ) = A254599 n

theorem P9420228803590477512.correct : P9420228803590477512.Spec := by
  intro n
  simp only [A254599]

end A254599

/-! ## A254599.P3706130840706937744

`10*a(n-1)-a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=10, a(2)=98`
-/

namespace A254599.P3706130840706937744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 98] fun n a =>
  10 * a (n - 1) - a (n - 2) - 8 * a (n - 3)

end

end A254599.P3706130840706937744

namespace A254599

/-- `10*a(n-1)-a(n-2)-8*a(n-3)` -/
def P3706130840706937744.Spec : Prop :=
  ∀ n, P3706130840706937744.a n = A254599 n

end A254599

/-! ## A254599.P15377655985043692809

`A015584(n+1)+A015584(n)`
-/

namespace A254599.P15377655985043692809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015584 (n + 1) + A015584 n

end

end A254599.P15377655985043692809

namespace A254599

/-- `A015584(n+1)+A015584(n)` -/
def P15377655985043692809.Spec : Prop :=
  ∀ n, P15377655985043692809.a n = A254599 n

end A254599

