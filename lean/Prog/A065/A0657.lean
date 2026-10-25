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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A065704: Number of squares or twice squares dividing n.

The programs for A065704, the canonical program `A065704.P16680503474839831592` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065704 has offset 1).

The definition of A065704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065704.P16680503474839831592

`∑{d}[n+1, A053866(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065704

/-- `∑{d}[n+1, A053866(#)]` -/
def P16680503474839831592.Spec : Prop :=
  ∀ n, P16680503474839831592.a n = A065704 (n + 1)

theorem P16680503474839831592.correct : P16680503474839831592.Spec := by
  intro n
  simp only [A065704, Nat.add_sub_cancel]

end A065704

/-! ## A065704.P10509026213455619799

`∑{d}[n+1, A093709(#)]`
-/

namespace A065704.P10509026213455619799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093709 d

end

end A065704.P10509026213455619799

namespace A065704

/-- `∑{d}[n+1, A093709(#)]` -/
def P10509026213455619799.Spec : Prop :=
  ∀ n, P10509026213455619799.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P13650910113622737008

`∑{d}[n+1, A143259(#)²]`
-/

namespace A065704.P13650910113622737008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d ^ 2

end

end A065704.P13650910113622737008

namespace A065704

/-- `∑{d}[n+1, A143259(#)²]` -/
def P13650910113622737008.Spec : Prop :=
  ∀ n, P13650910113622737008.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P18401707124753065199

`∑{d}[n+1, A000203(#)%2]`
-/

namespace A065704.P18401707124753065199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000203 d) 2

end

end A065704.P18401707124753065199

namespace A065704

/-- `∑{d}[n+1, A000203(#)%2]` -/
def P18401707124753065199.Spec : Prop :=
  ∀ n, P18401707124753065199.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P3341108756837429676

`∑{d}[n+1, and(1, A000203(2*#))]`
-/

namespace A065704.P3341108756837429676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A000203 (2 * d))

end

end A065704.P3341108756837429676

namespace A065704

/-- `∑{d}[n+1, and(1, A000203(2*#))]` -/
def P3341108756837429676.Spec : Prop :=
  ∀ n, P3341108756837429676.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P4118963174964767509

`A348223(n+1)+A345221(n+1)`
-/

namespace A065704.P4118963174964767509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348223 (n + 1) + A345221 (n + 1)

end

end A065704.P4118963174964767509

namespace A065704

/-- `A348223(n+1)+A345221(n+1)` -/
def P4118963174964767509.Spec : Prop :=
  ∀ n, P4118963174964767509.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P7277100507913731024

`A000005(n+1)-A345221(n+1)`
-/

namespace A065704.P7277100507913731024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A345221 (n + 1)

end

end A065704.P7277100507913731024

namespace A065704

/-- `A000005(n+1)-A345221(n+1)` -/
def P7277100507913731024.Spec : Prop :=
  ∀ n, P7277100507913731024.a n = A065704 (n + 1)

theorem P7277100507913731024.correct : P7277100507913731024.Spec := by
  intro n
  simp only [A065704, Nat.add_sub_cancel, A065704.P7277100507913731024.a, A065704.P16680503474839831592.f1, A065704.P16680503474839831592.a, A000005, A000005.P16091521709108585461.a, A053866, A053866.P7754923131584660837.a, A345221, A345221.P15261552467884618322.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A063524, A063524.P5631347671191003537.a, A286357, A286357.P14769850405548421969.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065704

/-! ## A065704.P3390450447094022062

`A001511(n+1)*A298735(n+1)`
-/

namespace A065704.P3390450447094022062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A298735 (n + 1)

end

end A065704.P3390450447094022062

namespace A065704

/-- `A001511(n+1)*A298735(n+1)` -/
def P3390450447094022062.Spec : Prop :=
  ∀ n, P3390450447094022062.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P324786295461458026

`2*A046951(n+1)-A328372(n+1)`
-/

namespace A065704.P324786295461458026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (n + 1) - A328372 (n + 1)

end

end A065704.P324786295461458026

namespace A065704

/-- `2*A046951(n+1)-A328372(n+1)` -/
def P324786295461458026.Spec : Prop :=
  ∀ n, P324786295461458026.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P3576403174257919705

`(2-A088705(n+1))*A298735(n+1)`
-/

namespace A065704.P3576403174257919705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A088705 (n + 1)) * A298735 (n + 1)

end

end A065704.P3576403174257919705

namespace A065704

/-- `(2-A088705(n+1))*A298735(n+1)` -/
def P3576403174257919705.Spec : Prop :=
  ∀ n, P3576403174257919705.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P15580045537787827397

`∑{d}[n+1, A019590(#)*A046951((n+1)/#)]`
-/

namespace A065704.P15580045537787827397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P15580045537787827397

namespace A065704

/-- `∑{d}[n+1, A019590(#)*A046951((n+1)/#)]` -/
def P15580045537787827397.Spec : Prop :=
  ∀ n, P15580045537787827397.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P13285126577014419565

`∑{d}[n+1, A008836(#)*A069735((n+1)/#)]`
-/

namespace A065704.P13285126577014419565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A069735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P13285126577014419565

namespace A065704

/-- `∑{d}[n+1, A008836(#)*A069735((n+1)/#)]` -/
def P13285126577014419565.Spec : Prop :=
  ∀ n, P13285126577014419565.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P7221484017971764045

`∑{d}[n+1, A001511(#)*A098108((n+1)/#)]`
-/

namespace A065704.P7221484017971764045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A098108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P7221484017971764045

namespace A065704

/-- `∑{d}[n+1, A001511(#)*A098108((n+1)/#)]` -/
def P7221484017971764045.Spec : Prop :=
  ∀ n, P7221484017971764045.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P13747974145820526755

`∑{d}[n+1, A000005(#)*A166698((n+1)/#)]`
-/

namespace A065704.P13747974145820526755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A166698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P13747974145820526755

namespace A065704

/-- `∑{d}[n+1, A000005(#)*A166698((n+1)/#)]` -/
def P13747974145820526755.Spec : Prop :=
  ∀ n, P13747974145820526755.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P456863514684105751

`∑{d}[n+1, A037227(#)*A143259((n+1)/#)]`
-/

namespace A065704.P456863514684105751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037227 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P456863514684105751

namespace A065704

/-- `∑{d}[n+1, A037227(#)*A143259((n+1)/#)]` -/
def P456863514684105751.Spec : Prop :=
  ∀ n, P456863514684105751.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P734028908749842820

`∑{d}[n+1, A002654(#)*A209661((n+1)/#)]`
-/

namespace A065704.P734028908749842820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A209661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P734028908749842820

namespace A065704

/-- `∑{d}[n+1, A002654(#)*A209661((n+1)/#)]` -/
def P734028908749842820.Spec : Prop :=
  ∀ n, P734028908749842820.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P18209997521089499722

`∑{d}[n+1, A051064(#)*A244611((n+1)/#)]`
-/

namespace A065704.P18209997521089499722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A244611 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P18209997521089499722

namespace A065704

/-- `∑{d}[n+1, A051064(#)*A244611((n+1)/#)]` -/
def P18209997521089499722.Spec : Prop :=
  ∀ n, P18209997521089499722.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P9284800463113032450

`∑{d}[n+1, A001227(#)*A359154((n+1)/#)]`
-/

namespace A065704.P9284800463113032450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A359154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P9284800463113032450

namespace A065704

/-- `∑{d}[n+1, A001227(#)*A359154((n+1)/#)]` -/
def P9284800463113032450.Spec : Prop :=
  ∀ n, P9284800463113032450.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P7826306261289182448

`∑{d}[n+1, A069517(#)*A328372((n+1)/#)]`
-/

namespace A065704.P7826306261289182448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069517 d * A328372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P7826306261289182448

namespace A065704

/-- `∑{d}[n+1, A069517(#)*A328372((n+1)/#)]` -/
def P7826306261289182448.Spec : Prop :=
  ∀ n, P7826306261289182448.a n = A065704 (n + 1)

end A065704

/-! ## A065704.P8912716776176477906

`∑{d}[n+1, A124315(#)*A359591((n+1)/#)]`
-/

namespace A065704.P8912716776176477906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065704.P8912716776176477906

namespace A065704

/-- `∑{d}[n+1, A124315(#)*A359591((n+1)/#)]` -/
def P8912716776176477906.Spec : Prop :=
  ∀ n, P8912716776176477906.a n = A065704 (n + 1)

end A065704

/-!
# A065705: a(n) = Lucas(10*n).

The programs for A065705, the canonical program `A065705.P14190034376336801662` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065705 has offset 0).

The definition of A065705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065705.P14190034376336801662

`123*a(n-1)-a(n-2)` with `a(0)=2, a(1)=123`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065705

/-- `123*a(n-1)-a(n-2)` -/
def P14190034376336801662.Spec : Prop :=
  ∀ n, P14190034376336801662.a n = A065705 n

theorem P14190034376336801662.correct : P14190034376336801662.Spec := by
  intro n
  simp only [A065705]

end A065705

/-! ## A065705.P13510990100502154242

`floor(ϕ^(10*n))+1`
-/

namespace A065705.P13510990100502154242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (10 * n)⌋ + 1

end

end A065705.P13510990100502154242

namespace A065705

/-- `floor(ϕ^(10*n))+1` -/
def P13510990100502154242.Spec : Prop :=
  ∀ n, P13510990100502154242.a n = A065705 n

end A065705

/-! ## A065705.P3444855100927807222

`A001946(2*n)`
-/

namespace A065705.P3444855100927807222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001946 (2 * n)

end

end A065705.P3444855100927807222

namespace A065705

/-- `A001946(2*n)` -/
def P3444855100927807222.Spec : Prop :=
  ∀ n, P3444855100927807222.a n = A065705 n

end A065705

/-! ## A065705.P16976066742819574471

`A005248(5*n)`
-/

namespace A065705.P16976066742819574471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (5 * n)

end

end A065705.P16976066742819574471

namespace A065705

/-- `A005248(5*n)` -/
def P16976066742819574471.Spec : Prop :=
  ∀ n, P16976066742819574471.a n = A065705 n

end A065705

/-! ## A065705.P9626275824113795930

`A000032(10*n)`
-/

namespace A065705.P9626275824113795930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (10 * n)

end

end A065705.P9626275824113795930

namespace A065705

/-- `A000032(10*n)` -/
def P9626275824113795930.Spec : Prop :=
  ∀ n, P9626275824113795930.a n = A065705 n

end A065705

/-!
# A065710: Number of 2's in the decimal expansion of 2^n.

The programs for A065710, there is no canonical definition to state claims against.
-/

/-! ## A065710.P17056837235796849354

`A065715(n+1)+A065716(n+1)-A065718(n)`
-/

namespace A065710.P17056837235796849354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (n + 1) + (A065716 (n + 1) - A065718 n)

end

end A065710.P17056837235796849354

/-! ## A065710.P13911633896710398572

`∑{digits}[2^n, A316867(3*#)]`
-/

namespace A065710.P13911633896710398572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316867 (3 * x)).sum

end

end A065710.P13911633896710398572

/-! ## A065710.P5900106109836896105

`∑{digits}[2^n, and(1, A001866(#))]`
-/

namespace A065710.P5900106109836896105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.land 1 (A001866 x)).sum

end

end A065710.P5900106109836896105

/-! ## A065710.P4251050707939635965

`∑{digits}[A000079(n), A080300(#)]`
-/

namespace A065710.P4251050707939635965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A080300 x).sum

end

end A065710.P4251050707939635965

/-! ## A065710.P16062889962573856951

`∑{digits}[2^n, A051344(A006369(#))]`
-/

namespace A065710.P16062889962573856951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051344 (A006369 x).toNat).sum

end

end A065710.P16062889962573856951

/-! ## A065710.P17816861287351800555

`∑{digits}[A000079(n), A160351(A254835(#+1)+#+1)]`
-/

namespace A065710.P17816861287351800555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A160351 (A254835 (x + 1) + (x : ℤ) + 1).toNat).sum

end

end A065710.P17816861287351800555

/-!
# A065711: The Alon-Tarsi constants AT(n).

The programs for A065711, there is no canonical definition to state claims against.
-/

/-! ## A065711.P10048079877783622702

`∏[A136265(A000045(2*n+1))]`
-/

namespace A065711.P10048079877783622702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136265 (A000045 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A065711.P10048079877783622702

/-!
# A065712: Number of 1's in decimal expansion of 2^n.

The programs for A065712, there is no canonical definition to state claims against.
-/

/-! ## A065712.P4220746651815169654

`A065710(n+1)+A065714(n+1)-A065717(n)`
-/

namespace A065712.P4220746651815169654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (n + 1) + (A065714 (n + 1) - A065717 n)

end

end A065712.P4220746651815169654

/-! ## A065712.P7444583099874120811

`∑{digits}[2^n, C(#, A000032(#))]`
-/

namespace A065712.P7444583099874120811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x (A000032 x).toNat).sum

end

end A065712.P7444583099874120811

/-! ## A065712.P489905247344495751

`∑{digits}[a(n-1)+a(n-1), A339629(#)]` with `a(0)=1`
-/

namespace A065712.P489905247344495751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A339629 x).sum

end

end A065712.P489905247344495751

/-! ## A065712.P10584234119227810435

`∑{digits}[2^n, A000007(A217569(#))]`
-/

namespace A065712.P10584234119227810435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000007 (A217569 x).toNat).sum

end

end A065712.P10584234119227810435

/-! ## A065712.P675202272284805872

`∑{digits}[2^n, A000007(A221878(#+1))]`
-/

namespace A065712.P675202272284805872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000007 (A221878 (x + 1)).toNat).sum

end

end A065712.P675202272284805872

/-! ## A065712.P7116223112002464078

`∑{digits}[A000079(n), A080300(A000079(#))]`
-/

namespace A065712.P7116223112002464078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A080300 (A000079 x).toNat).sum

end

end A065712.P7116223112002464078

/-!
# A065713: Sum of digits of 4^n.

The programs for A065713, the canonical program `A065713.P2914558267731047984` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065713 has offset 0).

The definition of A065713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065713.P2914558267731047984

`A001370(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065713

/-- `A001370(2*n)` -/
def P2914558267731047984.Spec : Prop :=
  ∀ n, P2914558267731047984.a n = A065713 n

theorem P2914558267731047984.correct : P2914558267731047984.Spec := by
  intro n
  simp only [A065713]

end A065713

/-! ## A065713.P15196749661044778748

`A001370(n+n)%A006507(n+1)`
-/

namespace A065713.P15196749661044778748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 (n + n)) (A006507 (n + 1))

end

end A065713.P15196749661044778748

namespace A065713

/-- `A001370(n+n)%A006507(n+1)` -/
def P15196749661044778748.Spec : Prop :=
  ∀ n, P15196749661044778748.a n = A065713 n

end A065713

/-! ## A065713.P8313954468503071833

`A001370(A005843(n))%A017113(n)`
-/

namespace A065713.P8313954468503071833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 (A005843 n).toNat) (A017113 n)

end

end A065713.P8313954468503071833

namespace A065713

/-- `A001370(A005843(n))%A017113(n)` -/
def P8313954468503071833.Spec : Prop :=
  ∀ n, P8313954468503071833.a n = A065713 n

end A065713

/-! ## A065713.P1933791886111470496

`gcd(A008683(A065999(n)), A001370(n+n))`
-/

namespace A065713.P1933791886111470496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A065999 n).toNat) (A001370 (n + n))

end

end A065713.P1933791886111470496

namespace A065713

/-- `gcd(A008683(A065999(n)), A001370(n+n))` -/
def P1933791886111470496.Spec : Prop :=
  ∀ n, (P1933791886111470496.a n : ℤ) = A065713 n

end A065713

/-! ## A065713.P10408185039378450843

`A001370(n+n)+A008683(A065999(n+1))`
-/

namespace A065713.P10408185039378450843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (n + n) + A008683 (A065999 (n + 1)).toNat

end

end A065713.P10408185039378450843

namespace A065713

/-- `A001370(n+n)+A008683(A065999(n+1))` -/
def P10408185039378450843.Spec : Prop :=
  ∀ n, P10408185039378450843.a n = A065713 n

end A065713

/-! ## A065713.P1632749286752409874

`or(A008683(A066002(n+1)), A001370(n+n))`
-/

namespace A065713.P1632749286752409874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A066002 (n + 1)).toNat) (A001370 (n + n))

end

end A065713.P1632749286752409874

namespace A065713

/-- `or(A008683(A066002(n+1)), A001370(n+n))` -/
def P1632749286752409874.Spec : Prop :=
  ∀ n, P1632749286752409874.a n = A065713 n

end A065713

/-! ## A065713.P1203122482541529586

`A066001(2*n)-A354618(2*n)`
-/

namespace A065713.P1203122482541529586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 (2 * n) - A354618 (2 * n)

end

end A065713.P1203122482541529586

namespace A065713

/-- `A066001(2*n)-A354618(2*n)` -/
def P1203122482541529586.Spec : Prop :=
  ∀ n, P1203122482541529586.a n = A065713 n

end A065713

/-! ## A065713.P11723723116109715369

`A236348(A001370(n+n))+1`
-/

namespace A065713.P11723723116109715369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (A001370 (n + n)).toNat + 1

end

end A065713.P11723723116109715369

namespace A065713

/-- `A236348(A001370(n+n))+1` -/
def P11723723116109715369.Spec : Prop :=
  ∀ n, P11723723116109715369.a n = A065713 n

end A065713

/-! ## A065713.P8763244154355052809

`filter[A001370(n), A137893(#)]`
-/

namespace A065713.P8763244154355052809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A065713.P8763244154355052809

namespace A065713

/-- `filter[A001370(n), A137893(#)]` -/
def P8763244154355052809.Spec : Prop :=
  ∀ n, P8763244154355052809.a n = A065713 n

end A065713

/-! ## A065713.P14546697143230496823

`filter[A001370(n), A141212(#)]`
-/

namespace A065713.P14546697143230496823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141212 (f1 j).toNat = 1) n)

end

end A065713.P14546697143230496823

namespace A065713

/-- `filter[A001370(n), A141212(#)]` -/
def P14546697143230496823.Spec : Prop :=
  ∀ n, P14546697143230496823.a n = A065713 n

end A065713

/-! ## A065713.P13370167935369962570

`A001370(n+n)/A014963(A008458(n))`
-/

namespace A065713.P13370167935369962570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001370 (n + n) : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A065713.P13370167935369962570

namespace A065713

/-- `A001370(n+n)/A014963(A008458(n))` -/
def P13370167935369962570.Spec : Prop :=
  ∀ n, P13370167935369962570.a n = (A065713 n : ℚ)

end A065713

/-! ## A065713.P16443132034544239099

`∑{digits}[A028909(2*n), #]`
-/

namespace A065713.P16443132034544239099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028909 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A065713.P16443132034544239099

namespace A065713

/-- `∑{digits}[A028909(2*n), #]` -/
def P16443132034544239099.Spec : Prop :=
  ∀ n, (P16443132034544239099.a n : ℤ) = A065713 n

end A065713

/-! ## A065713.P12229587548277267695

`∑{digits}[4^n, #]`
-/

namespace A065713.P12229587548277267695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A065713.P12229587548277267695

namespace A065713

/-- `∑{digits}[4^n, #]` -/
def P12229587548277267695.Spec : Prop :=
  ∀ n, (P12229587548277267695.a n : ℤ) = A065713 n

end A065713

/-! ## A065713.P8617508593879966064

`∑{digits}[A000302(n)+1, #]-1`
-/

namespace A065713.P8617508593879966064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A065713.P8617508593879966064

namespace A065713

/-- `∑{digits}[A000302(n)+1, #]-1` -/
def P8617508593879966064.Spec : Prop :=
  ∀ n, P8617508593879966064.a n = A065713 n

end A065713

/-! ## A065713.P10147690814716389640

`∑{digits}[A000225(2*n), #]+1`
-/

namespace A065713.P10147690814716389640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A065713.P10147690814716389640

namespace A065713

/-- `∑{digits}[A000225(2*n), #]+1` -/
def P10147690814716389640.Spec : Prop :=
  ∀ n, (P10147690814716389640.a n : ℤ) = A065713 n

end A065713

/-! ## A065713.P16165855558010304324

`∑{digits}[A000079(n)²+1, #]-1`
-/

namespace A065713.P16165855558010304324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A065713.P16165855558010304324

namespace A065713

/-- `∑{digits}[A000079(n)²+1, #]-1` -/
def P16165855558010304324.Spec : Prop :=
  ∀ n, P16165855558010304324.a n = A065713 n

end A065713

/-! ## A065713.P7670918110552393816

`∑{digits}[∑[A011782(n)]²-1, #]+1`
-/

namespace A065713.P7670918110552393816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A065713.P7670918110552393816

namespace A065713

/-- `∑{digits}[∑[A011782(n)]²-1, #]+1` -/
def P7670918110552393816.Spec : Prop :=
  ∀ n, (P7670918110552393816.a n : ℤ) = A065713 n

end A065713

/-! ## A065713.P135362540856437699

`A023443(∑{digits}[A000051(2*n), #])`
-/

namespace A065713.P135362540856437699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A065713.P135362540856437699

namespace A065713

/-- `A023443(∑{digits}[A000051(2*n), #])` -/
def P135362540856437699.Spec : Prop :=
  ∀ n, P135362540856437699.a n = A065713 n

end A065713

/-! ## A065713.P17491306870360083267

`∑{digits}[Δ[A002450(n)]+1, #]-1`
-/

namespace A065713.P17491306870360083267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A065713.P17491306870360083267

namespace A065713

/-- `∑{digits}[Δ[A002450(n)]+1, #]-1` -/
def P17491306870360083267.Spec : Prop :=
  ∀ n, P17491306870360083267.a n = A065713 n

end A065713

/-! ## A065713.P416117963765284973

`log2(A000079(∑{digits}[A000079(n)², #]))`
-/

namespace A065713.P416117963765284973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000079 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℝ)

end

end A065713.P416117963765284973

namespace A065713

/-- `log2(A000079(∑{digits}[A000079(n)², #]))` -/
def P416117963765284973.Spec : Prop :=
  ∀ n, P416117963765284973.a n = (A065713 n : ℝ)

end A065713

/-!
# A065714: Number of 3's in decimal expansion of 2^n.

The programs for A065714, the canonical program `A065714.P2804291034299227177` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065714 has offset 0).

The definition of A065714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065714.P16430895710329877585

`∑{digits}[2^n, A051344(#)]`
-/

namespace A065714.P16430895710329877585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051344 x).sum

end

end A065714.P16430895710329877585

namespace A065714

/-- `∑{digits}[2^n, A051344(#)]` -/
def P16430895710329877585.Spec : Prop :=
  ∀ n, P16430895710329877585.a n = A065714 n

end A065714

/-! ## A065714.P4302390485640190382

`∑{digits}[A000079(n), A015241(#+45)]`
-/

namespace A065714.P4302390485640190382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015241 (x + 45)).sum

end

end A065714.P4302390485640190382

namespace A065714

/-- `∑{digits}[A000079(n), A015241(#+45)]` -/
def P4302390485640190382.Spec : Prop :=
  ∀ n, P4302390485640190382.a n = A065714 n

end A065714

/-! ## A065714.P2804291034299227177

`∑{digits}[A000079(n), A115346(A000045(#))%2]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065714

/-- `∑{digits}[A000079(n), A115346(A000045(#))%2]` -/
def P2804291034299227177.Spec : Prop :=
  ∀ n, P2804291034299227177.a n = A065714 n

theorem P2804291034299227177.correct : P2804291034299227177.Spec := by
  intro n
  simp only [A065714]

end A065714

/-! ## A065714.P3438288736445377357

`∑{digits}[A011782(n+1), A038189(A343228(#+1))]`
-/

namespace A065714.P3438288736445377357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A038189 (A343228 (x + 1)).toNat).sum

end

end A065714.P3438288736445377357

namespace A065714

/-- `∑{digits}[A011782(n+1), A038189(A343228(#+1))]` -/
def P3438288736445377357.Spec : Prop :=
  ∀ n, P3438288736445377357.a n = A065714 n

end A065714

/-! ## A065714.P187048347014874510

`∑{digits}[A000079(n), A115570(A254835(#+1)+1)-1]`
-/

namespace A065714.P187048347014874510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A115570 (A254835 (x + 1) + 1).toNat - 1).sum

end

end A065714.P187048347014874510

namespace A065714

/-- `∑{digits}[A000079(n), A115570(A254835(#+1)+1)-1]` -/
def P187048347014874510.Spec : Prop :=
  ∀ n, P187048347014874510.a n = A065714 n

end A065714

/-!
# A065715: Number of 4's in decimal expansion of 2^n.

The programs for A065715, there is no canonical definition to state claims against.
-/

/-! ## A065715.P3955431120126360195

`A065719(n+1)+A065744(n+1)-A065744(n)`
-/

namespace A065715.P3955431120126360195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (n + 1) + (A065744 (n + 1) - A065744 n)

end

end A065715.P3955431120126360195

/-! ## A065715.P1273592826992050992

`∑{digits}[A000079(n), val(#+2, 6)]`
-/

namespace A065715.P1273592826992050992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 2) 6).sum

end

end A065715.P1273592826992050992

/-! ## A065715.P1192119800736469862

`∑{digits}[2*a(n-1), A084863(#+1)]` with `a(0)=1`
-/

namespace A065715.P1192119800736469862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A084863 (x + 1)).sum

end

end A065715.P1192119800736469862

/-! ## A065715.P4014213356658941882

`∑{digits}[A000225(n)+1, A004198(#)]`
-/

namespace A065715.P4014213356658941882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004198 x).sum

end

end A065715.P4014213356658941882

/-! ## A065715.P18171892687821841061

`∑{digits}[2^n, A206306(A235803(#))]`
-/

namespace A065715.P18171892687821841061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A206306 (A235803 x).toNat).sum

end

end A065715.P18171892687821841061

/-! ## A065715.P6208834719291073282

`∑{digits}[a(n-1)+a(n-1), A014473(A059126(#))]` with `a(0)=1`
-/

namespace A065715.P6208834719291073282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014473 (A059126 x).toNat).sum

end

end A065715.P6208834719291073282

/-! ## A065715.P13819794430449707724

`∑{digits}[a(n-1)+a(n-1), A104245(A007318(#)+1)]` with `a(0)=1`
-/

namespace A065715.P13819794430449707724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A104245 (A007318 x + 1).toNat).sum

end

end A065715.P13819794430449707724

/-! ## A065715.P2082569640855819362

`∑{digits}[A011782(n+1), A038189(A343228(#))]`
-/

namespace A065715.P2082569640855819362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A038189 (A343228 x).toNat).sum

end

end A065715.P2082569640855819362

/-!
# A065716: Number of 5's in decimal expansion of 2^n.

The programs for A065716, there is no canonical definition to state claims against.
-/

/-! ## A065716.P8753282571244279650

`∑{digits}[2^n, A037912(A039838(#+1)+1)]`
-/

namespace A065716.P8753282571244279650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A037912 (A039838 (x + 1) + 1).toNat).sum

end

end A065716.P8753282571244279650

/-! ## A065716.P17152995209472920906

`∑{digits}[a(n-1)+a(n-1), A067586(A067586(#))]` with `a(0)=1`
-/

namespace A065716.P17152995209472920906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A067586 (A067586 x).toNat).sum

end

end A065716.P17152995209472920906

/-! ## A065716.P11911644141943761617

`∑{digits}[a(n-1)+a(n-1), A160086(A063206(#+1))]` with `a(0)=1`
-/

namespace A065716.P11911644141943761617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160086 (A063206 (x + 1)).toNat).sum

end

end A065716.P11911644141943761617

/-! ## A065716.P5712025424543256919

`∑{digits}[a(n-1)+a(n-1), A160086(A144424(#+1))]` with `a(0)=1`
-/

namespace A065716.P5712025424543256919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160086 (A144424 (x + 1)).toNat).sum

end

end A065716.P5712025424543256919

/-! ## A065716.P18248918367042893393

`∑{digits}[A000079(n), A206567(A020653(#+1)+1)]`
-/

namespace A065716.P18248918367042893393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A206567 (A020653 (x + 1) + 1).toNat).sum

end

end A065716.P18248918367042893393

/-!
# A065717: Number of 6's in decimal expansion of 2^n.

The programs for A065717, there is no canonical definition to state claims against.
-/

/-! ## A065717.P1229354858706149914

`A065710(n+1)+A065714(n+1)-A065712(n)`
-/

namespace A065717.P1229354858706149914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (n + 1) + (A065714 (n + 1) - A065712 n)

end

end A065717.P1229354858706149914

/-! ## A065717.P11130891310740446561

`∑{digits}[2^n, A124760(#)]`
-/

namespace A065717.P11130891310740446561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A124760 x).sum

end

end A065717.P11130891310740446561

/-! ## A065717.P4294683624462094740

`∑{digits}[2^n, A316867(#)]`
-/

namespace A065717.P4294683624462094740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316867 x).sum

end

end A065717.P4294683624462094740

/-! ## A065717.P10956868339747392991

`∑{digits}[2^n, A279760(#+2)]`
-/

namespace A065717.P10956868339747392991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A279760 (x + 2)).sum

end

end A065717.P10956868339747392991

/-! ## A065717.P9929877347010209856

`∑{digits}[2^n, A004530(#+3)]`
-/

namespace A065717.P9929877347010209856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004530 (x + 3)).sum

end

end A065717.P9929877347010209856

/-! ## A065717.P17933498168556294967

`∑{digits}[A000079(n), A070107(#+1)]`
-/

namespace A065717.P17933498168556294967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A070107 (x + 1)).sum

end

end A065717.P17933498168556294967

/-! ## A065717.P10522428474136709458

`∑{digits}[A000079(n), A070108(#+1)]`
-/

namespace A065717.P10522428474136709458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A070108 (x + 1)).sum

end

end A065717.P10522428474136709458

/-! ## A065717.P15360447405092397405

`∑{digits}[A000079(n), val(A000032(#), 6)]`
-/

namespace A065717.P15360447405092397405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.valuation (A000032 x).toNat 6).sum

end

end A065717.P15360447405092397405

/-!
# A065718: Number of 7's in decimal expansion of 2^n.

The programs for A065718, there is no canonical definition to state claims against.
-/

/-! ## A065718.P6157107561175275325

`A065715(n+1)+A065716(n+1)-A065710(n)`
-/

namespace A065718.P6157107561175275325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (n + 1) + (A065716 (n + 1) - A065710 n)

end

end A065718.P6157107561175275325

/-! ## A065718.P12761026415444491733

`∑{digits}[A000079(n), A337586(#+1)-1]`
-/

namespace A065718.P12761026415444491733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A337586 (x + 1) - 1).sum

end

end A065718.P12761026415444491733

/-! ## A065718.P12972364319293478382

`∑{digits}[2^n, A239955(A095884(#+1))]`
-/

namespace A065718.P12972364319293478382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A239955 (A095884 (x + 1)).toNat).sum

end

end A065718.P12972364319293478382

/-! ## A065718.P10809770885129627100

`∑{digits}[2^n, A093957(A300955(#+1)+1)]`
-/

namespace A065718.P10809770885129627100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A093957 (A300955 (x + 1) + 1).toNat).sum

end

end A065718.P10809770885129627100

/-! ## A065718.P8889577427808044885

`∑{digits}[A000079(n), A279119(A279119(#+1)+1)]`
-/

namespace A065718.P8889577427808044885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A279119 (A279119 (x + 1) + 1).toNat).sum

end

end A065718.P8889577427808044885

/-!
# A065719: Number of 8's in decimal expansion of 2^n.

The programs for A065719, there is no canonical definition to state claims against.
-/

/-! ## A065719.P9267720080925589836

`A065717(n+1)+A065718(n+1)-A065714(n)`
-/

namespace A065719.P9267720080925589836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065717 (n + 1) + (A065718 (n + 1) - A065714 n)

end

end A065719.P9267720080925589836

/-! ## A065719.P15827508852047045864

`∑{digits}[2^n, A037912(#+1)]`
-/

namespace A065719.P15827508852047045864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A037912 (x + 1)).sum

end

end A065719.P15827508852047045864

/-! ## A065719.P10959782060845521633

`∑{digits}[a(n-1)+a(n-1), A160086(#)]` with `a(0)=1`
-/

namespace A065719.P10959782060845521633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160086 x).sum

end

end A065719.P10959782060845521633

/-! ## A065719.P11807214164894041294

`∑{digits}[A000079(n), A065941(#)-1]`
-/

namespace A065719.P11807214164894041294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A065941 x - 1).sum

end

end A065719.P11807214164894041294

/-! ## A065719.P11541793250705749919

`∑{digits}[2^n, A211159(A004525(#)+1)]`
-/

namespace A065719.P11541793250705749919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A211159 (A004525 x + 1).toNat).sum

end

end A065719.P11541793250705749919

/-! ## A065719.P14461169077831033163

`∑{digits}[2^n, A322389(A206306(#)+1)]`
-/

namespace A065719.P14461169077831033163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A322389 (A206306 x + 1).toNat).sum

end

end A065719.P14461169077831033163

/-!
# A065720: Primes whose binary representation is also the decimal representation of a prime.

The programs for A065720, there is no canonical definition to state claims against.
-/

/-! ## A065720.P12704675329475562977

`p?[A036952(n+1)]`
-/

namespace A065720.P12704675329475562977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065720.P12704675329475562977

/-! ## A065720.P15261448510836634499

`∩[A036952(n+1), A380468(n+1)]`
-/

namespace A065720.P15261448510836634499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P15261448510836634499

/-! ## A065720.P8214309820073389102

`∩[A036952(n+1), A065396(n+1)]`
-/

namespace A065720.P8214309820073389102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P8214309820073389102

/-! ## A065720.P5290085334689915355

`A000040(eq[2, A235354(n+1)]+1)`
-/

namespace A065720.P5290085334689915355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A065720.P5290085334689915355

/-! ## A065720.P18402792941889223268

`∩[A000040(n+1), A036952(n+1)]`
-/

namespace A065720.P18402792941889223268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P18402792941889223268

/-! ## A065720.P13268768457087481040

`∩[A006005(n+1), A036952(n+1)]`
-/

namespace A065720.P13268768457087481040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P13268768457087481040

/-! ## A065720.P4070008265343642285

`∩[A036952(n+1), A065091(n+1)]`
-/

namespace A065720.P4070008265343642285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P4070008265343642285

/-! ## A065720.P13479976078156941139

`∩[A036952(n+1), A093515(n+1)]`
-/

namespace A065720.P13479976078156941139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P13479976078156941139

/-! ## A065720.P14406916427408282620

`p?[(A235354(n+1)-1)*A000040(n+1)]`
-/

namespace A065720.P14406916427408282620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A235354 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065720.P14406916427408282620

/-! ## A065720.P15851042562517916739

`∩[A008578(n+1), A036952(n+1)]`
-/

namespace A065720.P15851042562517916739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P15851042562517916739

/-! ## A065720.P4928470179899343617

`∩[A033946(n+1), A036952(n+1)]`
-/

namespace A065720.P4928470179899343617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P4928470179899343617

/-! ## A065720.P14011796722683625976

`∩[A036952(n+1), A046022(n+1)]`
-/

namespace A065720.P14011796722683625976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P14011796722683625976

/-! ## A065720.P16284817294396096276

`∩[A036952(n+1), A051948(n+1)]`
-/

namespace A065720.P16284817294396096276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P16284817294396096276

/-! ## A065720.P12017394088316230405

`∩[A036952(n+1), A053813(n+1)]`
-/

namespace A065720.P12017394088316230405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P12017394088316230405

/-! ## A065720.P16206588209074527740

`∩[A036952(n+1), A062972(n+1)]`
-/

namespace A065720.P16206588209074527740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P16206588209074527740

/-! ## A065720.P5733146029702068988

`∩[A036952(n+1), A066050(n+1)]`
-/

namespace A065720.P5733146029702068988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P5733146029702068988

/-! ## A065720.P3050933062321136313

`∩[A036952(n+1), A067126(n+1)]`
-/

namespace A065720.P3050933062321136313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P3050933062321136313

/-! ## A065720.P12116310431029033504

`∩[A036952(n+1), A116974(n+1)]`
-/

namespace A065720.P12116310431029033504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P12116310431029033504

/-! ## A065720.P3234624646100694342

`∩[A036952(n+1), A140826(n+1)]`
-/

namespace A065720.P3234624646100694342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P3234624646100694342

/-! ## A065720.P6331142872402045051

`∩[A036952(n+1), A158611(n+1)]`
-/

namespace A065720.P6331142872402045051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065720.P6331142872402045051

/-!
# A065721: Primes p whose base-3 expansion is also the decimal expansion of a prime.

The programs for A065721, there is no canonical definition to state claims against.
-/

/-! ## A065721.P8010723440342217635

`p?[A036954(n+1)]`
-/

namespace A065721.P8010723440342217635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065721.P8010723440342217635

/-! ## A065721.P6555010970305044408

`∩[A036954(n+1), A045331(n+1)]`
-/

namespace A065721.P6555010970305044408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P6555010970305044408

/-! ## A065721.P15582917048830278567

`∩[A036954(n+1), A045375(n+1)]`
-/

namespace A065721.P15582917048830278567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P15582917048830278567

/-! ## A065721.P14801427118614635891

`∩[A036954(n+1), A380468(n+1)]`
-/

namespace A065721.P14801427118614635891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P14801427118614635891

/-! ## A065721.P160982573356318832

`∩[A036954(n+1), A040116(n+1)]`
-/

namespace A065721.P160982573356318832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P160982573356318832

/-! ## A065721.P7731170074131604259

`∩[A036954(n+1), A140557(n+1)]`
-/

namespace A065721.P7731170074131604259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P7731170074131604259

/-! ## A065721.P14249172628752232509

`∩[A036954(n+1), A140562(n+1)]`
-/

namespace A065721.P14249172628752232509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P14249172628752232509

/-! ## A065721.P11075873680080053774

`∩[A036954(n+1), A140563(n+1)]`
-/

namespace A065721.P11075873680080053774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P11075873680080053774

/-! ## A065721.P4500434392593692082

`∩[A036954(n+1), A067774(n+1)]`
-/

namespace A065721.P4500434392593692082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P4500434392593692082

/-! ## A065721.P18003339394702494194

`∩[A036954(n+1), A138645(n+1)]`
-/

namespace A065721.P18003339394702494194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P18003339394702494194

/-! ## A065721.P1763998238279783713

`∩[A036954(n+1), A059456(n+1)]`
-/

namespace A065721.P1763998238279783713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P1763998238279783713

/-! ## A065721.P13781940943706290492

`∩[A036954(n+1), A106118(n+1)]`
-/

namespace A065721.P13781940943706290492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P13781940943706290492

/-! ## A065721.P10723067447329883072

`∩[A036954(n+1), A138837(n+1)]`
-/

namespace A065721.P10723067447329883072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P10723067447329883072

/-! ## A065721.P5707522620315596860

`∩[A036954(n+1), A197636(n+1)]`
-/

namespace A065721.P5707522620315596860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P5707522620315596860

/-! ## A065721.P14023909086140576057

`∩[A036954(n+1), A045319(n+1)]`
-/

namespace A065721.P14023909086140576057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P14023909086140576057

/-! ## A065721.P2508420613646870897

`∩[A036954(n+1), A045344(n+1)]`
-/

namespace A065721.P2508420613646870897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P2508420613646870897

/-! ## A065721.P3511625599374755975

`∩[A036954(n+1), A387959(n+1)]`
-/

namespace A065721.P3511625599374755975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P3511625599374755975

/-! ## A065721.P16307318042796115662

`∩[A000040(n+1), A036954(n+1)]`
-/

namespace A065721.P16307318042796115662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P16307318042796115662

/-! ## A065721.P17275225811940556356

`∩[A008578(n+1), A036954(n+1)]`
-/

namespace A065721.P17275225811940556356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P17275225811940556356

/-! ## A065721.P3284617237159422139

`∩[A033946(n+1), A036954(n+1)]`
-/

namespace A065721.P3284617237159422139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065721.P3284617237159422139

/-!
# A065722: Primes that when written in base 4, then reinterpreted in base 10, again give primes.

The programs for A065722, the canonical program `A065722.P14518484525193958893` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065722 has offset 1).

The definition of A065722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065722.P14518484525193958893

`p?[A036955(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065722

/-- `p?[A036955(n+1)]` -/
def P14518484525193958893.Spec : Prop :=
  ∀ n, P14518484525193958893.a n = A065722 (n + 1)

theorem P14518484525193958893.correct : P14518484525193958893.Spec := by
  intro n
  simp only [A065722, Nat.add_sub_cancel]

end A065722

/-! ## A065722.P13161799347271272235

`∩[A000040(n+1), A036955(n+1)]`
-/

namespace A065722.P13161799347271272235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P13161799347271272235

namespace A065722

/-- `∩[A000040(n+1), A036955(n+1)]` -/
def P13161799347271272235.Spec : Prop :=
  ∀ n, (P13161799347271272235.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P11834602863703958102

`∩[A008578(n+1), A036955(n+1)]`
-/

namespace A065722.P11834602863703958102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P11834602863703958102

namespace A065722

/-- `∩[A008578(n+1), A036955(n+1)]` -/
def P11834602863703958102.Spec : Prop :=
  ∀ n, (P11834602863703958102.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P15289760808638786538

`∩[A036955(n+1), A046022(n+1)]`
-/

namespace A065722.P15289760808638786538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P15289760808638786538

namespace A065722

/-- `∩[A036955(n+1), A046022(n+1)]` -/
def P15289760808638786538.Spec : Prop :=
  ∀ n, (P15289760808638786538.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P6464688611010023092

`∩[A036955(n+1), A051948(n+1)]`
-/

namespace A065722.P6464688611010023092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P6464688611010023092

namespace A065722

/-- `∩[A036955(n+1), A051948(n+1)]` -/
def P6464688611010023092.Spec : Prop :=
  ∀ n, (P6464688611010023092.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P9549676793260045309

`∩[A036955(n+1), A053813(n+1)]`
-/

namespace A065722.P9549676793260045309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P9549676793260045309

namespace A065722

/-- `∩[A036955(n+1), A053813(n+1)]` -/
def P9549676793260045309.Spec : Prop :=
  ∀ n, (P9549676793260045309.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P1419199791018650330

`∩[A036955(n+1), A062972(n+1)]`
-/

namespace A065722.P1419199791018650330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P1419199791018650330

namespace A065722

/-- `∩[A036955(n+1), A062972(n+1)]` -/
def P1419199791018650330.Spec : Prop :=
  ∀ n, (P1419199791018650330.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P11156790082658589469

`∩[A036955(n+1), A066050(n+1)]`
-/

namespace A065722.P11156790082658589469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P11156790082658589469

namespace A065722

/-- `∩[A036955(n+1), A066050(n+1)]` -/
def P11156790082658589469.Spec : Prop :=
  ∀ n, (P11156790082658589469.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P13863670080194606751

`∩[A067126(n+1), A036955(n+1)]`
-/

namespace A065722.P13863670080194606751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P13863670080194606751

namespace A065722

/-- `∩[A067126(n+1), A036955(n+1)]` -/
def P13863670080194606751.Spec : Prop :=
  ∀ n, (P13863670080194606751.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P14634339189358631270

`∩[A093515(n+1), A036955(n+1)]`
-/

namespace A065722.P14634339189358631270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P14634339189358631270

namespace A065722

/-- `∩[A093515(n+1), A036955(n+1)]` -/
def P14634339189358631270.Spec : Prop :=
  ∀ n, (P14634339189358631270.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P15034822552619567990

`∩[A174090(n+1), A036955(n+1)]`
-/

namespace A065722.P15034822552619567990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P15034822552619567990

namespace A065722

/-- `∩[A174090(n+1), A036955(n+1)]` -/
def P15034822552619567990.Spec : Prop :=
  ∀ n, (P15034822552619567990.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P5020841066640149995

`∩[A036955(n+1), A053577(n+1)]`
-/

namespace A065722.P5020841066640149995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P5020841066640149995

namespace A065722

/-- `∩[A036955(n+1), A053577(n+1)]` -/
def P5020841066640149995.Spec : Prop :=
  ∀ n, (P5020841066640149995.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P1254771562551601739

`∩[A036955(n+1), A066191(n+1)]`
-/

namespace A065722.P1254771562551601739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P1254771562551601739

namespace A065722

/-- `∩[A036955(n+1), A066191(n+1)]` -/
def P1254771562551601739.Spec : Prop :=
  ∀ n, (P1254771562551601739.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P13020289187980964945

`filter[A036955(n+1), A010051(#)]`
-/

namespace A065722.P13020289187980964945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A065722.P13020289187980964945

namespace A065722

/-- `filter[A036955(n+1), A010051(#)]` -/
def P13020289187980964945.Spec : Prop :=
  ∀ n, P13020289187980964945.a n = A065722 (n + 1)

end A065722

/-! ## A065722.P16764648313458249432

`filter[A036955(n+1), A323152(#)]`
-/

namespace A065722.P16764648313458249432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A065722.P16764648313458249432

namespace A065722

/-- `filter[A036955(n+1), A323152(#)]` -/
def P16764648313458249432.Spec : Prop :=
  ∀ n, P16764648313458249432.a n = A065722 (n + 1)

end A065722

/-! ## A065722.P9056387800398192912

`filter[A036955(n+1), A323153(#)]`
-/

namespace A065722.P9056387800398192912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A065722.P9056387800398192912

namespace A065722

/-- `filter[A036955(n+1), A323153(#)]` -/
def P9056387800398192912.Spec : Prop :=
  ∀ n, P9056387800398192912.a n = A065722 (n + 1)

end A065722

/-! ## A065722.P13363303129911153343

`filter[A036955(n+1), A327861(#)]`
-/

namespace A065722.P13363303129911153343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A065722.P13363303129911153343

namespace A065722

/-- `filter[A036955(n+1), A327861(#)]` -/
def P13363303129911153343.Spec : Prop :=
  ∀ n, P13363303129911153343.a n = A065722 (n + 1)

end A065722

/-! ## A065722.P2364957038273722002

`filter[A036955(n+1), A340371(#)]`
-/

namespace A065722.P2364957038273722002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A065722.P2364957038273722002

namespace A065722

/-- `filter[A036955(n+1), A340371(#)]` -/
def P2364957038273722002.Spec : Prop :=
  ∀ n, P2364957038273722002.a n = A065722 (n + 1)

end A065722

/-! ## A065722.P4983447833634779485

`∩[A001751(n+1), A036955(n+1)]`
-/

namespace A065722.P4983447833634779485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P4983447833634779485

namespace A065722

/-- `∩[A001751(n+1), A036955(n+1)]` -/
def P4983447833634779485.Spec : Prop :=
  ∀ n, (P4983447833634779485.a n : ℤ) = A065722 (n + 1)

end A065722

/-! ## A065722.P15760352442722886433

`∩[A036955(n+1), A058363(n+1)]`
-/

namespace A065722.P15760352442722886433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065722.P15760352442722886433

namespace A065722

/-- `∩[A036955(n+1), A058363(n+1)]` -/
def P15760352442722886433.Spec : Prop :=
  ∀ n, (P15760352442722886433.a n : ℤ) = A065722 (n + 1)

end A065722

/-!
# A065723: Primes that when written in base 5, then reinterpreted in base 10, again give primes.

The programs for A065723, the canonical program `A065723.P6773432868527020918` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065723 has offset 1).

The definition of A065723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065723.P6773432868527020918

`p?[A036957(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A065723

/-- `p?[A036957(n+1)]` -/
def P6773432868527020918.Spec : Prop :=
  ∀ n, P6773432868527020918.a n = A065723 (n + 1)

theorem P6773432868527020918.correct : P6773432868527020918.Spec := by
  intro n
  simp only [A065723, Nat.add_sub_cancel]

end A065723

/-! ## A065723.P7625620473075465444

`∩[A348283(n+1), A036957(n+1)]`
-/

namespace A065723.P7625620473075465444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P7625620473075465444

namespace A065723

/-- `∩[A348283(n+1), A036957(n+1)]` -/
def P7625620473075465444.Spec : Prop :=
  ∀ n, (P7625620473075465444.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P6337275743403689400

`∩[A036957(n+1), A042986(n+1)]`
-/

namespace A065723.P6337275743403689400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P6337275743403689400

namespace A065723

/-- `∩[A036957(n+1), A042986(n+1)]` -/
def P6337275743403689400.Spec : Prop :=
  ∀ n, (P6337275743403689400.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P14235178609473154282

`∩[A036957(n+1), A045321(n+1)]`
-/

namespace A065723.P14235178609473154282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P14235178609473154282

namespace A065723

/-- `∩[A036957(n+1), A045321(n+1)]` -/
def P14235178609473154282.Spec : Prop :=
  ∀ n, (P14235178609473154282.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P7848669944283001560

`∩[A000040(n+1), A036957(n+1)]`
-/

namespace A065723.P7848669944283001560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P7848669944283001560

namespace A065723

/-- `∩[A000040(n+1), A036957(n+1)]` -/
def P7848669944283001560.Spec : Prop :=
  ∀ n, (P7848669944283001560.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P1227101128967940063

`∩[A008578(n+1), A036957(n+1)]`
-/

namespace A065723.P1227101128967940063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P1227101128967940063

namespace A065723

/-- `∩[A008578(n+1), A036957(n+1)]` -/
def P1227101128967940063.Spec : Prop :=
  ∀ n, (P1227101128967940063.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P12078437284164757782

`∩[A036957(n+1), A045319(n+1)]`
-/

namespace A065723.P12078437284164757782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P12078437284164757782

namespace A065723

/-- `∩[A036957(n+1), A045319(n+1)]` -/
def P12078437284164757782.Spec : Prop :=
  ∀ n, (P12078437284164757782.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P2116087510695460621

`∩[A036957(n+1), A175787(n+1)]`
-/

namespace A065723.P2116087510695460621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P2116087510695460621

namespace A065723

/-- `∩[A036957(n+1), A175787(n+1)]` -/
def P2116087510695460621.Spec : Prop :=
  ∀ n, (P2116087510695460621.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P17037974811222462779

`∩[A036957(n+1), A182986(n+1)]`
-/

namespace A065723.P17037974811222462779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P17037974811222462779

namespace A065723

/-- `∩[A036957(n+1), A182986(n+1)]` -/
def P17037974811222462779.Spec : Prop :=
  ∀ n, (P17037974811222462779.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P9573062288611803352

`∩[A033946(n+1), A036957(n+1)]`
-/

namespace A065723.P9573062288611803352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P9573062288611803352

namespace A065723

/-- `∩[A033946(n+1), A036957(n+1)]` -/
def P9573062288611803352.Spec : Prop :=
  ∀ n, (P9573062288611803352.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P5075883120832043967

`∩[A036957(n+1), A046022(n+1)]`
-/

namespace A065723.P5075883120832043967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P5075883120832043967

namespace A065723

/-- `∩[A036957(n+1), A046022(n+1)]` -/
def P5075883120832043967.Spec : Prop :=
  ∀ n, (P5075883120832043967.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P12770145856498636068

`∩[A036957(n+1), A062972(n+1)]`
-/

namespace A065723.P12770145856498636068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P12770145856498636068

namespace A065723

/-- `∩[A036957(n+1), A062972(n+1)]` -/
def P12770145856498636068.Spec : Prop :=
  ∀ n, (P12770145856498636068.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P5376199097273659154

`∩[A036957(n+1), A066050(n+1)]`
-/

namespace A065723.P5376199097273659154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P5376199097273659154

namespace A065723

/-- `∩[A036957(n+1), A066050(n+1)]` -/
def P5376199097273659154.Spec : Prop :=
  ∀ n, (P5376199097273659154.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P9956606175879606902

`∩[A036957(n+1), A067126(n+1)]`
-/

namespace A065723.P9956606175879606902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P9956606175879606902

namespace A065723

/-- `∩[A036957(n+1), A067126(n+1)]` -/
def P9956606175879606902.Spec : Prop :=
  ∀ n, (P9956606175879606902.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P6732344619188959155

`∩[A036957(n+1), A158611(n+1)]`
-/

namespace A065723.P6732344619188959155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P6732344619188959155

namespace A065723

/-- `∩[A036957(n+1), A158611(n+1)]` -/
def P6732344619188959155.Spec : Prop :=
  ∀ n, (P6732344619188959155.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P16135256904778103272

`∩[A036957(n+1), A326715(n+1)]`
-/

namespace A065723.P16135256904778103272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P16135256904778103272

namespace A065723

/-- `∩[A036957(n+1), A326715(n+1)]` -/
def P16135256904778103272.Spec : Prop :=
  ∀ n, (P16135256904778103272.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P4987129604267684902

`∩[A036957(n+1), A301987(n+1)]`
-/

namespace A065723.P4987129604267684902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065723.P4987129604267684902

namespace A065723

/-- `∩[A036957(n+1), A301987(n+1)]` -/
def P4987129604267684902.Spec : Prop :=
  ∀ n, (P4987129604267684902.a n : ℤ) = A065723 (n + 1)

end A065723

/-! ## A065723.P3195921957489386844

`filter[A036957(n+1), A010051(#)]`
-/

namespace A065723.P3195921957489386844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A065723.P3195921957489386844

namespace A065723

/-- `filter[A036957(n+1), A010051(#)]` -/
def P3195921957489386844.Spec : Prop :=
  ∀ n, P3195921957489386844.a n = A065723 (n + 1)

end A065723

/-! ## A065723.P9819367675333570353

`record[A006530(A036957(2*n+1-n))]`
-/

namespace A065723.P9819367675333570353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036957 (2 * n + 1 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065723.P9819367675333570353

namespace A065723

/-- `record[A006530(A036957(2*n+1-n))]` -/
def P9819367675333570353.Spec : Prop :=
  ∀ n, P9819367675333570353.a n = A065723 (n + 1)

end A065723

/-! ## A065723.P17127257225902079935

`p?[record[A036957(A133310(n))]]`
-/

namespace A065723.P17127257225902079935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036957 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065723.P17127257225902079935

namespace A065723

/-- `p?[record[A036957(A133310(n))]]` -/
def P17127257225902079935.Spec : Prop :=
  ∀ n, P17127257225902079935.a n = A065723 (n + 1)

end A065723

/-!
# A065724: Primes p such that the decimal expansion of its base-6 conversion is also prime.

The programs for A065724, there is no canonical definition to state claims against.
-/

/-! ## A065724.P3715026941380277026

`p?[A036959(n+1)]`
-/

namespace A065724.P3715026941380277026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065724.P3715026941380277026

/-! ## A065724.P4468804908302414709

`∩[A036959(n+1), A373789(n+1)]`
-/

namespace A065724.P4468804908302414709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P4468804908302414709

/-! ## A065724.P13397457647028259387

`∩[A036959(n+1), A380468(n+1)]`
-/

namespace A065724.P13397457647028259387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P13397457647028259387

/-! ## A065724.P16672976349120127264

`∩[A000040(n+1), A036959(n+1)]`
-/

namespace A065724.P16672976349120127264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P16672976349120127264

/-! ## A065724.P7860975540184208421

`∩[A008578(n+1), A036959(n+1)]`
-/

namespace A065724.P7860975540184208421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P7860975540184208421

/-! ## A065724.P13813234558965836304

`∩[A036959(n+1), A046022(n+1)]`
-/

namespace A065724.P13813234558965836304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P13813234558965836304

/-! ## A065724.P10802250599069483226

`∩[A036959(n+1), A051948(n+1)]`
-/

namespace A065724.P10802250599069483226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P10802250599069483226

/-! ## A065724.P3395513808861801789

`∩[A036959(n+1), A053813(n+1)]`
-/

namespace A065724.P3395513808861801789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P3395513808861801789

/-! ## A065724.P905204285286723156

`∩[A036959(n+1), A093515(n+1)]`
-/

namespace A065724.P905204285286723156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P905204285286723156

/-! ## A065724.P2715852307823439892

`∩[A036959(n+1), A116974(n+1)]`
-/

namespace A065724.P2715852307823439892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P2715852307823439892

/-! ## A065724.P3840880234604141342

`∩[A036959(n+1), A158611(n+1)]`
-/

namespace A065724.P3840880234604141342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P3840880234604141342

/-! ## A065724.P17877813223745361767

`∩[A036959(n+1), A175787(n+1)]`
-/

namespace A065724.P17877813223745361767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P17877813223745361767

/-! ## A065724.P12765656253976459063

`∩[A036959(n+1), A182986(n+1)]`
-/

namespace A065724.P12765656253976459063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P12765656253976459063

/-! ## A065724.P1046580015010015072

`∩[A036959(n+1), A251595(n+1)]`
-/

namespace A065724.P1046580015010015072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P1046580015010015072

/-! ## A065724.P4597776894862773740

`∩[A036959(n+1), A067133(n+1)]`
-/

namespace A065724.P4597776894862773740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P4597776894862773740

/-! ## A065724.P17188864421051903103

`∩[A036959(n+1), A174090(n+1)]`
-/

namespace A065724.P17188864421051903103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P17188864421051903103

/-! ## A065724.P4765000439886818284

`∩[A036959(n+1), A326715(n+1)]`
-/

namespace A065724.P4765000439886818284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P4765000439886818284

/-! ## A065724.P11704768036607020233

`∩[A036959(n+1), A369093(n+1)]`
-/

namespace A065724.P11704768036607020233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P11704768036607020233

/-! ## A065724.P13453464010476815332

`∩[A036959(n+1), A384369(n+1)]`
-/

namespace A065724.P13453464010476815332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P13453464010476815332

/-! ## A065724.P6687316744439037680

`∩[A036959(n+1), A201879(n+1)]`
-/

namespace A065724.P6687316744439037680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065724.P6687316744439037680

/-!
# A065725: Primes p such that the decimal expansion of its base-7 conversion is also prime.

The programs for A065725, the canonical program `A065725.P14023598146489036357` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065725 has offset 1).

The definition of A065725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065725.P14023598146489036357

`p?[A036961(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A065725

/-- `p?[A036961(n+1)]` -/
def P14023598146489036357.Spec : Prop :=
  ∀ n, P14023598146489036357.a n = A065725 (n + 1)

theorem P14023598146489036357.correct : P14023598146489036357.Spec := by
  intro n
  simp only [A065725, Nat.add_sub_cancel]

end A065725

/-! ## A065725.P15520311049687193217

`∩[A036961(n+1), A045313(n+1)]`
-/

namespace A065725.P15520311049687193217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P15520311049687193217

namespace A065725

/-- `∩[A036961(n+1), A045313(n+1)]` -/
def P15520311049687193217.Spec : Prop :=
  ∀ n, (P15520311049687193217.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P14322780270769523523

`∩[A036961(n+1), A042994(n+1)]`
-/

namespace A065725.P14322780270769523523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P14322780270769523523

namespace A065725

/-- `∩[A036961(n+1), A042994(n+1)]` -/
def P14322780270769523523.Spec : Prop :=
  ∀ n, (P14322780270769523523.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P14642347004145067706

`∩[A036961(n+1), A042988(n)]`
-/

namespace A065725.P14642347004145067706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P14642347004145067706

namespace A065725

/-- `∩[A036961(n+1), A042988(n)]` -/
def P14642347004145067706.Spec : Prop :=
  ∀ n, (P14642347004145067706.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P8019023900262993544

`∩[A036961(n+1), A042990(n)]`
-/

namespace A065725.P8019023900262993544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P8019023900262993544

namespace A065725

/-- `∩[A036961(n+1), A042990(n)]` -/
def P8019023900262993544.Spec : Prop :=
  ∀ n, (P8019023900262993544.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P1453101726327842713

`∩[A036961(n+1), A044042(n+1)]`
-/

namespace A065725.P1453101726327842713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P1453101726327842713

namespace A065725

/-- `∩[A036961(n+1), A044042(n+1)]` -/
def P1453101726327842713.Spec : Prop :=
  ∀ n, (P1453101726327842713.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P15355854947462007412

`∩[A036961(n+1), A045311(n+1)]`
-/

namespace A065725.P15355854947462007412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P15355854947462007412

namespace A065725

/-- `∩[A036961(n+1), A045311(n+1)]` -/
def P15355854947462007412.Spec : Prop :=
  ∀ n, (P15355854947462007412.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P7031524284479978859

`∩[A000040(n+1), A036961(n+1)]`
-/

namespace A065725.P7031524284479978859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P7031524284479978859

namespace A065725

/-- `∩[A000040(n+1), A036961(n+1)]` -/
def P7031524284479978859.Spec : Prop :=
  ∀ n, (P7031524284479978859.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P1544240436335046352

`∩[A008578(n+1), A036961(n+1)]`
-/

namespace A065725.P1544240436335046352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P1544240436335046352

namespace A065725

/-- `∩[A008578(n+1), A036961(n+1)]` -/
def P1544240436335046352.Spec : Prop :=
  ∀ n, (P1544240436335046352.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P15956853827961371177

`∩[A033946(n+1), A036961(n+1)]`
-/

namespace A065725.P15956853827961371177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P15956853827961371177

namespace A065725

/-- `∩[A033946(n+1), A036961(n+1)]` -/
def P15956853827961371177.Spec : Prop :=
  ∀ n, (P15956853827961371177.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P8726060117658070567

`∩[A036961(n+1), A046022(n+1)]`
-/

namespace A065725.P8726060117658070567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P8726060117658070567

namespace A065725

/-- `∩[A036961(n+1), A046022(n+1)]` -/
def P8726060117658070567.Spec : Prop :=
  ∀ n, (P8726060117658070567.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P12534538259716298800

`∩[A036961(n+1), A053813(n+1)]`
-/

namespace A065725.P12534538259716298800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P12534538259716298800

namespace A065725

/-- `∩[A036961(n+1), A053813(n+1)]` -/
def P12534538259716298800.Spec : Prop :=
  ∀ n, (P12534538259716298800.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P11795398775414140987

`∩[A036961(n+1), A062972(n+1)]`
-/

namespace A065725.P11795398775414140987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P11795398775414140987

namespace A065725

/-- `∩[A036961(n+1), A062972(n+1)]` -/
def P11795398775414140987.Spec : Prop :=
  ∀ n, (P11795398775414140987.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P314304514366874505

`∩[A036961(n+1), A067126(n+1)]`
-/

namespace A065725.P314304514366874505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P314304514366874505

namespace A065725

/-- `∩[A036961(n+1), A067126(n+1)]` -/
def P314304514366874505.Spec : Prop :=
  ∀ n, (P314304514366874505.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P1027414726881329823

`∩[A036961(n+1), A106118(n+1)]`
-/

namespace A065725.P1027414726881329823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P1027414726881329823

namespace A065725

/-- `∩[A036961(n+1), A106118(n+1)]` -/
def P1027414726881329823.Spec : Prop :=
  ∀ n, (P1027414726881329823.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P10235122747714968297

`∩[A036961(n+1), A116974(n+1)]`
-/

namespace A065725.P10235122747714968297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P10235122747714968297

namespace A065725

/-- `∩[A036961(n+1), A116974(n+1)]` -/
def P10235122747714968297.Spec : Prop :=
  ∀ n, (P10235122747714968297.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P12773409959321582224

`∩[A036961(n+1), A158611(n+1)]`
-/

namespace A065725.P12773409959321582224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P12773409959321582224

namespace A065725

/-- `∩[A036961(n+1), A158611(n+1)]` -/
def P12773409959321582224.Spec : Prop :=
  ∀ n, (P12773409959321582224.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P10775693777267605910

`∩[A036961(n+1), A175787(n+1)]`
-/

namespace A065725.P10775693777267605910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P10775693777267605910

namespace A065725

/-- `∩[A036961(n+1), A175787(n+1)]` -/
def P10775693777267605910.Spec : Prop :=
  ∀ n, (P10775693777267605910.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P17757067646506548577

`∩[A036961(n+1), A182986(n+1)]`
-/

namespace A065725.P17757067646506548577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P17757067646506548577

namespace A065725

/-- `∩[A036961(n+1), A182986(n+1)]` -/
def P17757067646506548577.Spec : Prop :=
  ∀ n, (P17757067646506548577.a n : ℤ) = A065725 (n + 1)

end A065725

/-! ## A065725.P10637189561880693673

`∩[A036961(n+1), A284696(n+1)]`
-/

namespace A065725.P10637189561880693673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065725.P10637189561880693673

namespace A065725

/-- `∩[A036961(n+1), A284696(n+1)]` -/
def P10637189561880693673.Spec : Prop :=
  ∀ n, (P10637189561880693673.a n : ℤ) = A065725 (n + 1)

end A065725

/-!
# A065726: Primes p whose base-8 expansion is also the decimal expansion of a prime.

The programs for A065726, the canonical program `A065726.P14405010515887988270` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065726 has offset 1).

The definition of A065726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065726.P14405010515887988270

`p?[A036963(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065726

/-- `p?[A036963(n+1)]` -/
def P14405010515887988270.Spec : Prop :=
  ∀ n, P14405010515887988270.a n = A065726 (n + 1)

theorem P14405010515887988270.correct : P14405010515887988270.Spec := by
  intro n
  simp only [A065726, Nat.add_sub_cancel]

end A065726

/-! ## A065726.P12795637449944325316

`∩[A348283(n+1), A036963(n+1)]`
-/

namespace A065726.P12795637449944325316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P12795637449944325316

namespace A065726

/-- `∩[A348283(n+1), A036963(n+1)]` -/
def P12795637449944325316.Spec : Prop :=
  ∀ n, (P12795637449944325316.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P10539337902802324132

`∩[A000040(n+1), A036963(n+1)]`
-/

namespace A065726.P10539337902802324132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P10539337902802324132

namespace A065726

/-- `∩[A000040(n+1), A036963(n+1)]` -/
def P10539337902802324132.Spec : Prop :=
  ∀ n, (P10539337902802324132.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P13556955561560641472

`∩[A008578(n+1), A036963(n+1)]`
-/

namespace A065726.P13556955561560641472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P13556955561560641472

namespace A065726

/-- `∩[A008578(n+1), A036963(n+1)]` -/
def P13556955561560641472.Spec : Prop :=
  ∀ n, (P13556955561560641472.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P12635266122501696895

`∩[A036963(n+1), A093515(n+1)]`
-/

namespace A065726.P12635266122501696895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P12635266122501696895

namespace A065726

/-- `∩[A036963(n+1), A093515(n+1)]` -/
def P12635266122501696895.Spec : Prop :=
  ∀ n, (P12635266122501696895.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P7819287462501301392

`∩[A036963(n+1), A116974(n+1)]`
-/

namespace A065726.P7819287462501301392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P7819287462501301392

namespace A065726

/-- `∩[A036963(n+1), A116974(n+1)]` -/
def P7819287462501301392.Spec : Prop :=
  ∀ n, (P7819287462501301392.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P11260395322807645000

`∩[A036963(n+1), A175787(n+1)]`
-/

namespace A065726.P11260395322807645000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P11260395322807645000

namespace A065726

/-- `∩[A036963(n+1), A175787(n+1)]` -/
def P11260395322807645000.Spec : Prop :=
  ∀ n, (P11260395322807645000.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P15643362850451027634

`∩[A036963(n+1), A182986(n+1)]`
-/

namespace A065726.P15643362850451027634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P15643362850451027634

namespace A065726

/-- `∩[A036963(n+1), A182986(n+1)]` -/
def P15643362850451027634.Spec : Prop :=
  ∀ n, (P15643362850451027634.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P8643257453209351717

`∩[A036963(n+1), A046022(n+1)]`
-/

namespace A065726.P8643257453209351717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P8643257453209351717

namespace A065726

/-- `∩[A036963(n+1), A046022(n+1)]` -/
def P8643257453209351717.Spec : Prop :=
  ∀ n, (P8643257453209351717.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P8745404330266217582

`∩[A036963(n+1), A051948(n+1)]`
-/

namespace A065726.P8745404330266217582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P8745404330266217582

namespace A065726

/-- `∩[A036963(n+1), A051948(n+1)]` -/
def P8745404330266217582.Spec : Prop :=
  ∀ n, (P8745404330266217582.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P14261485492030134879

`∩[A036963(n+1), A158611(n+1)]`
-/

namespace A065726.P14261485492030134879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P14261485492030134879

namespace A065726

/-- `∩[A036963(n+1), A158611(n+1)]` -/
def P14261485492030134879.Spec : Prop :=
  ∀ n, (P14261485492030134879.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P4272470891450981110

`∩[A036963(n+1), A053813(n+1)]`
-/

namespace A065726.P4272470891450981110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P4272470891450981110

namespace A065726

/-- `∩[A036963(n+1), A053813(n+1)]` -/
def P4272470891450981110.Spec : Prop :=
  ∀ n, (P4272470891450981110.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P9369058751636403757

`∩[A326715(n+1), A036963(n+1)]`
-/

namespace A065726.P9369058751636403757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P9369058751636403757

namespace A065726

/-- `∩[A326715(n+1), A036963(n+1)]` -/
def P9369058751636403757.Spec : Prop :=
  ∀ n, (P9369058751636403757.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P15459882318263204603

`∩[A036963(n+1), A067133(n+1)]`
-/

namespace A065726.P15459882318263204603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P15459882318263204603

namespace A065726

/-- `∩[A036963(n+1), A067133(n+1)]` -/
def P15459882318263204603.Spec : Prop :=
  ∀ n, (P15459882318263204603.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P7962578066667125453

`∩[A036963(n+1), A174090(n+1)]`
-/

namespace A065726.P7962578066667125453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P7962578066667125453

namespace A065726

/-- `∩[A036963(n+1), A174090(n+1)]` -/
def P7962578066667125453.Spec : Prop :=
  ∀ n, (P7962578066667125453.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P482650809144645568

`∩[A036963(n+1), A201879(n+1)]`
-/

namespace A065726.P482650809144645568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P482650809144645568

namespace A065726

/-- `∩[A036963(n+1), A201879(n+1)]` -/
def P482650809144645568.Spec : Prop :=
  ∀ n, (P482650809144645568.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P6248991314700986286

`∩[A036963(n+1), A053577(n+1)]`
-/

namespace A065726.P6248991314700986286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P6248991314700986286

namespace A065726

/-- `∩[A036963(n+1), A053577(n+1)]` -/
def P6248991314700986286.Spec : Prop :=
  ∀ n, (P6248991314700986286.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P8835078324672754887

`∩[A036963(n+1), A066191(n+1)]`
-/

namespace A065726.P8835078324672754887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065726.P8835078324672754887

namespace A065726

/-- `∩[A036963(n+1), A066191(n+1)]` -/
def P8835078324672754887.Spec : Prop :=
  ∀ n, (P8835078324672754887.a n : ℤ) = A065726 (n + 1)

end A065726

/-! ## A065726.P9254694409137382134

`filter[A036963(n+1), A010051(#)]`
-/

namespace A065726.P9254694409137382134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A065726.P9254694409137382134

namespace A065726

/-- `filter[A036963(n+1), A010051(#)]` -/
def P9254694409137382134.Spec : Prop :=
  ∀ n, P9254694409137382134.a n = A065726 (n + 1)

end A065726

/-! ## A065726.P3897334521573347784

`filter[A036963(n+1), A365716(#)]`
-/

namespace A065726.P3897334521573347784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A065726.P3897334521573347784

namespace A065726

/-- `filter[A036963(n+1), A365716(#)]` -/
def P3897334521573347784.Spec : Prop :=
  ∀ n, P3897334521573347784.a n = A065726 (n + 1)

end A065726

/-!
# A065727: Primes p such that the decimal expansion of its base-9 conversion is also prime.

The programs for A065727, the canonical program `A065727.P9498803677997058480` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065727 has offset 1).

The definition of A065727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065727.P9498803677997058480

`p?[A036964(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065727

/-- `p?[A036964(n+1)]` -/
def P9498803677997058480.Spec : Prop :=
  ∀ n, P9498803677997058480.a n = A065727 (n + 1)

theorem P9498803677997058480.correct : P9498803677997058480.Spec := by
  intro n
  simp only [A065727, Nat.add_sub_cancel]

end A065727

/-! ## A065727.P18312345199508157901

`∩[A036964(n+1), A348283(n+1)]`
-/

namespace A065727.P18312345199508157901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P18312345199508157901

namespace A065727

/-- `∩[A036964(n+1), A348283(n+1)]` -/
def P18312345199508157901.Spec : Prop :=
  ∀ n, (P18312345199508157901.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P4280638803598803466

`∩[A036964(n+1), A380468(n+1)]`
-/

namespace A065727.P4280638803598803466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P4280638803598803466

namespace A065727

/-- `∩[A036964(n+1), A380468(n+1)]` -/
def P4280638803598803466.Spec : Prop :=
  ∀ n, (P4280638803598803466.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P13860313167397755547

`∩[A036964(n+1), A106118(n+1)]`
-/

namespace A065727.P13860313167397755547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P13860313167397755547

namespace A065727

/-- `∩[A036964(n+1), A106118(n+1)]` -/
def P13860313167397755547.Spec : Prop :=
  ∀ n, (P13860313167397755547.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P5497665740179300977

`∩[A000040(n+1), A036964(n+1)]`
-/

namespace A065727.P5497665740179300977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P5497665740179300977

namespace A065727

/-- `∩[A000040(n+1), A036964(n+1)]` -/
def P5497665740179300977.Spec : Prop :=
  ∀ n, (P5497665740179300977.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P9518585388967915039

`∩[A008578(n+1), A036964(n+1)]`
-/

namespace A065727.P9518585388967915039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P9518585388967915039

namespace A065727

/-- `∩[A008578(n+1), A036964(n+1)]` -/
def P9518585388967915039.Spec : Prop :=
  ∀ n, (P9518585388967915039.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P2498051595143338139

`∩[A033946(n+1), A036964(n+1)]`
-/

namespace A065727.P2498051595143338139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P2498051595143338139

namespace A065727

/-- `∩[A033946(n+1), A036964(n+1)]` -/
def P2498051595143338139.Spec : Prop :=
  ∀ n, (P2498051595143338139.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P7433139614682598916

`∩[A036964(n+1), A046022(n+1)]`
-/

namespace A065727.P7433139614682598916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P7433139614682598916

namespace A065727

/-- `∩[A036964(n+1), A046022(n+1)]` -/
def P7433139614682598916.Spec : Prop :=
  ∀ n, (P7433139614682598916.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P8163562592089902497

`∩[A036964(n+1), A051948(n+1)]`
-/

namespace A065727.P8163562592089902497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P8163562592089902497

namespace A065727

/-- `∩[A036964(n+1), A051948(n+1)]` -/
def P8163562592089902497.Spec : Prop :=
  ∀ n, (P8163562592089902497.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P6188908487228941229

`∩[A036964(n+1), A067126(n+1)]`
-/

namespace A065727.P6188908487228941229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P6188908487228941229

namespace A065727

/-- `∩[A036964(n+1), A067126(n+1)]` -/
def P6188908487228941229.Spec : Prop :=
  ∀ n, (P6188908487228941229.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P3973913542472488927

`∩[A036964(n+1), A116974(n+1)]`
-/

namespace A065727.P3973913542472488927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P3973913542472488927

namespace A065727

/-- `∩[A036964(n+1), A116974(n+1)]` -/
def P3973913542472488927.Spec : Prop :=
  ∀ n, (P3973913542472488927.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P4038775552707469652

`∩[A036964(n+1), A158611(n+1)]`
-/

namespace A065727.P4038775552707469652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P4038775552707469652

namespace A065727

/-- `∩[A036964(n+1), A158611(n+1)]` -/
def P4038775552707469652.Spec : Prop :=
  ∀ n, (P4038775552707469652.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P261207291901612913

`∩[A036964(n+1), A175787(n+1)]`
-/

namespace A065727.P261207291901612913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P261207291901612913

namespace A065727

/-- `∩[A036964(n+1), A175787(n+1)]` -/
def P261207291901612913.Spec : Prop :=
  ∀ n, (P261207291901612913.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P17394967213094487492

`∩[A036964(n+1), A182986(n+1)]`
-/

namespace A065727.P17394967213094487492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P17394967213094487492

namespace A065727

/-- `∩[A036964(n+1), A182986(n+1)]` -/
def P17394967213094487492.Spec : Prop :=
  ∀ n, (P17394967213094487492.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P16724239102810817459

`∩[A036964(n+1), A189710(n+1)]`
-/

namespace A065727.P16724239102810817459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P16724239102810817459

namespace A065727

/-- `∩[A036964(n+1), A189710(n+1)]` -/
def P16724239102810817459.Spec : Prop :=
  ∀ n, (P16724239102810817459.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P9516362588590182471

`∩[A036964(n+1), A283599(n+1)]`
-/

namespace A065727.P9516362588590182471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P9516362588590182471

namespace A065727

/-- `∩[A036964(n+1), A283599(n+1)]` -/
def P9516362588590182471.Spec : Prop :=
  ∀ n, (P9516362588590182471.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P992718361162184674

`∩[A036964(n+1), A328232(n+1)]`
-/

namespace A065727.P992718361162184674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P992718361162184674

namespace A065727

/-- `∩[A036964(n+1), A328232(n+1)]` -/
def P992718361162184674.Spec : Prop :=
  ∀ n, (P992718361162184674.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P5400645510406611703

`∩[A036964(n+1), A331635(n+1)]`
-/

namespace A065727.P5400645510406611703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065727.P5400645510406611703

namespace A065727

/-- `∩[A036964(n+1), A331635(n+1)]` -/
def P5400645510406611703.Spec : Prop :=
  ∀ n, (P5400645510406611703.a n : ℤ) = A065727 (n + 1)

end A065727

/-! ## A065727.P11799302520372163789

`filter[A036964(n+1), A010051(#)]`
-/

namespace A065727.P11799302520372163789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A065727.P11799302520372163789

namespace A065727

/-- `filter[A036964(n+1), A010051(#)]` -/
def P11799302520372163789.Spec : Prop :=
  ∀ n, P11799302520372163789.a n = A065727 (n + 1)

end A065727

/-! ## A065727.P1602907559009730521

`filter[A036964(n+1), A380467(#)]`
-/

namespace A065727.P1602907559009730521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A065727.P1602907559009730521

namespace A065727

/-- `filter[A036964(n+1), A380467(#)]` -/
def P1602907559009730521.Spec : Prop :=
  ∀ n, P1602907559009730521.a n = A065727 (n + 1)

end A065727

/-!
# A065728: Partition numbers (A000041) that are semiprimes (A001358).

The programs for A065728, there is no canonical definition to state claims against.
-/

/-! ## A065728.P17282378626808117927

`A000041(A065729(n+1))`
-/

namespace A065728.P17282378626808117927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A065729 (n + 1)).toNat

end

end A065728.P17282378626808117927

/-! ## A065728.P835411861391282765

`A000041(eq[2, A085561(n)])`
-/

namespace A065728.P835411861391282765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065728.P835411861391282765

/-! ## A065728.P5030264775246512769

`A000041(eq[4, A085543(n)])`
-/

namespace A065728.P5030264775246512769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065728.P5030264775246512769

/-! ## A065728.P9330066087838965357

`A000041(eq[6, A278241(n)])`
-/

namespace A065728.P9330066087838965357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065728.P9330066087838965357

/-! ## A065728.P9753844521387588611

`A035444(4*A065729(n+1))`
-/

namespace A065728.P9753844521387588611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A065729 (n + 1)).toNat

end

end A065728.P9753844521387588611

/-!
# A065729: Numbers k such that the k-th partition number (A000041(k)) is a semiprime.

The programs for A065729, there is no canonical definition to state claims against.
-/

/-! ## A065729.P12225305856077608492

`eq[2, A085561(n)]`
-/

namespace A065729.P12225305856077608492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065729.P12225305856077608492

/-! ## A065729.P5404132607066521840

`eq[4, A085543(n)]`
-/

namespace A065729.P5404132607066521840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065729.P5404132607066521840

/-! ## A065729.P6627706827862701869

`eq[6, A278241(n)]`
-/

namespace A065729.P6627706827862701869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065729.P6627706827862701869

/-! ## A065729.P10455997338178610659

`lt[A085561(n), A283183(A085561(n)+1)]`
-/

namespace A065729.P10455997338178610659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (A085561 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065729.P10455997338178610659

/-! ## A065729.P15292669295692036906

`lt[A000700(A085561(n))*A213561(n+1), n]`
-/

namespace A065729.P15292669295692036906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A085561 n).toNat * A213561 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065729.P15292669295692036906

/-!
# A065730: Largest square <= n-th prime.

The programs for A065730, the canonical program `A065730.P12344914159723627506` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065730 has offset 1).

The definition of A065730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065730.P12344914159723627506

`A048760(A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065730

/-- `A048760(A000040(n+1))` -/
def P12344914159723627506.Spec : Prop :=
  ∀ n, P12344914159723627506.a n = A065730 (n + 1)

theorem P12344914159723627506.correct : P12344914159723627506.Spec := by
  intro n
  simp only [A065730, Nat.add_sub_cancel]

end A065730

/-! ## A065730.P12246356616177531061

`A000006(n+1)²`
-/

namespace A065730.P12246356616177531061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) ^ 2

end

end A065730.P12246356616177531061

namespace A065730

/-- `A000006(n+1)²` -/
def P12246356616177531061.Spec : Prop :=
  ∀ n, P12246356616177531061.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P15250575387189699129

`(n-A103416(n))²`
-/

namespace A065730.P15250575387189699129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A103416 n) ^ 2

end

end A065730.P15250575387189699129

namespace A065730

/-- `(n-A103416(n))²` -/
def P15250575387189699129.Spec : Prop :=
  ∀ n, P15250575387189699129.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P5087211302395158773

`∑[char[A038107(n)]]²`
-/

namespace A065730.P5087211302395158773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A065730.P5087211302395158773

namespace A065730

/-- `∑[char[A038107(n)]]²` -/
def P5087211302395158773.Spec : Prop :=
  ∀ n, (P5087211302395158773.a n : ℤ) = A065730 (n + 1)

end A065730

/-! ## A065730.P8832748101566279708

`floor(sqrt(Δ[A007504(n)]))²`
-/

namespace A065730.P8832748101566279708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n) ^ 2

end

end A065730.P8832748101566279708

namespace A065730

/-- `floor(sqrt(Δ[A007504(n)]))²` -/
def P8832748101566279708.Spec : Prop :=
  ∀ n, P8832748101566279708.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P10721820165475468502

`floor(sqrt(p?[A259153(n)]))²`
-/

namespace A065730.P10721820165475468502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2

end

end A065730.P10721820165475468502

namespace A065730

/-- `floor(sqrt(p?[A259153(n)]))²` -/
def P10721820165475468502.Spec : Prop :=
  ∀ n, P10721820165475468502.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P14391113764571277699

`(1-A104103(n+1))²`
-/

namespace A065730.P14391113764571277699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A104103 (n + 1)) ^ 2

end

end A065730.P14391113764571277699

namespace A065730

/-- `(1-A104103(n+1))²` -/
def P14391113764571277699.Spec : Prop :=
  ∀ n, P14391113764571277699.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P3728561113727416927

`(1-A166127(n+1))²`
-/

namespace A065730.P3728561113727416927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A166127 (n + 1)) ^ 2

end

end A065730.P3728561113727416927

namespace A065730

/-- `(1-A166127(n+1))²` -/
def P3728561113727416927.Spec : Prop :=
  ∀ n, P3728561113727416927.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P8353480029778616103

`(A096494(n+1)/2)²`
-/

namespace A065730.P8353480029778616103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A096494 (n + 1) : ℚ) / 2) ^ 2

end

end A065730.P8353480029778616103

namespace A065730

/-- `(A096494(n+1)/2)²` -/
def P8353480029778616103.Spec : Prop :=
  ∀ n, P8353480029778616103.a n = (A065730 (n + 1) : ℚ)

end A065730

/-! ## A065730.P6719464269570802966

`floor(sqrt(A006005(n+1)))²`
-/

namespace A065730.P6719464269570802966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006005 (n + 1)) ^ 2

end

end A065730.P6719464269570802966

namespace A065730

/-- `floor(sqrt(A006005(n+1)))²` -/
def P6719464269570802966.Spec : Prop :=
  ∀ n, P6719464269570802966.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P11636005129112387117

`floor(sqrt(A006093(n+1)))²`
-/

namespace A065730.P11636005129112387117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006093 (n + 1)) ^ 2

end

end A065730.P11636005129112387117

namespace A065730

/-- `floor(sqrt(A006093(n+1)))²` -/
def P11636005129112387117.Spec : Prop :=
  ∀ n, P11636005129112387117.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P16361510497462402762

`floor(sqrt(A014193(n+1)))²`
-/

namespace A065730.P16361510497462402762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A014193 (n + 1)) ^ 2

end

end A065730.P16361510497462402762

namespace A065730

/-- `floor(sqrt(A014193(n+1)))²` -/
def P16361510497462402762.Spec : Prop :=
  ∀ n, P16361510497462402762.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P9791373478468107126

`floor(sqrt(A014686(n+1)))²`
-/

namespace A065730.P9791373478468107126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A014686 (n + 1)) ^ 2

end

end A065730.P9791373478468107126

namespace A065730

/-- `floor(sqrt(A014686(n+1)))²` -/
def P9791373478468107126.Spec : Prop :=
  ∀ n, P9791373478468107126.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P14571307149619640952

`floor(sqrt(A039915(n+1)))²`
-/

namespace A065730.P14571307149619640952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A039915 (n + 1)) ^ 2

end

end A065730.P14571307149619640952

namespace A065730

/-- `floor(sqrt(A039915(n+1)))²` -/
def P14571307149619640952.Spec : Prop :=
  ∀ n, P14571307149619640952.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P2951078619563754848

`floor(sqrt(A082542(n+1)))²`
-/

namespace A065730.P2951078619563754848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082542 (n + 1)) ^ 2

end

end A065730.P2951078619563754848

namespace A065730

/-- `floor(sqrt(A082542(n+1)))²` -/
def P2951078619563754848.Spec : Prop :=
  ∀ n, P2951078619563754848.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P4294856407295410617

`floor(sqrt(A088190(n+1)))²`
-/

namespace A065730.P4294856407295410617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A088190 (n + 1)) ^ 2

end

end A065730.P4294856407295410617

namespace A065730

/-- `floor(sqrt(A088190(n+1)))²` -/
def P4294856407295410617.Spec : Prop :=
  ∀ n, P4294856407295410617.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P9290297609991737267

`floor(sqrt(A156037(n+1)))²`
-/

namespace A065730.P9290297609991737267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A156037 (n + 1)) ^ 2

end

end A065730.P9290297609991737267

namespace A065730

/-- `floor(sqrt(A156037(n+1)))²` -/
def P9290297609991737267.Spec : Prop :=
  ∀ n, P9290297609991737267.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P14361965673561276011

`(1-sqrt(A145445(n+1)))²`
-/

namespace A065730.P14361965673561276011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.sqrt (A145445 (n + 1) : ℝ)) ^ 2

end

end A065730.P14361965673561276011

namespace A065730

/-- `(1-sqrt(A145445(n+1)))²` -/
def P14361965673561276011.Spec : Prop :=
  ∀ n, P14361965673561276011.a n = (A065730 (n + 1) : ℝ)

end A065730

/-! ## A065730.P10784453084083354970

`floor(sqrt(sqrt(A001248(n+1))))²`
-/

namespace A065730.P10784453084083354970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A001248 (n + 1) : ℝ))⌋ ^ 2

end

end A065730.P10784453084083354970

namespace A065730

/-- `floor(sqrt(sqrt(A001248(n+1))))²` -/
def P10784453084083354970.Spec : Prop :=
  ∀ n, P10784453084083354970.a n = A065730 (n + 1)

end A065730

/-! ## A065730.P2375805092653975923

`(n+1-A103355(n+1))²`
-/

namespace A065730.P2375805092653975923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A103355 (n + 1)) ^ 2

end

end A065730.P2375805092653975923

namespace A065730

/-- `(n+1-A103355(n+1))²` -/
def P2375805092653975923.Spec : Prop :=
  ∀ n, P2375805092653975923.a n = A065730 (n + 1)

end A065730

/-!
# A065731: Largest square <= n!.

The programs for A065731, the canonical program `A065731.P12877525842493104667` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065731 has offset 0).

The definition of A065731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065731.P12877525842493104667

`floor(sqrt(n!))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065731

/-- `floor(sqrt(n!))²` -/
def P12877525842493104667.Spec : Prop :=
  ∀ n, (P12877525842493104667.a n : ℤ) = A065731 n

theorem P12877525842493104667.correct : P12877525842493104667.Spec := by
  intro n
  simp only [A065731]

end A065731

/-! ## A065731.P11572565167209802103

`A048760(A000142(n))`
-/

namespace A065731.P11572565167209802103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000142 n).toNat

end

end A065731.P11572565167209802103

namespace A065731

/-- `A048760(A000142(n))` -/
def P11572565167209802103.Spec : Prop :=
  ∀ n, P11572565167209802103.a n = A065731 n

end A065731

/-! ## A065731.P2510627718705160548

`floor(sqrt(n!))^2`
-/

namespace A065731.P2510627718705160548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.factorial n) ^ 2

end

end A065731.P2510627718705160548

namespace A065731

/-- `floor(sqrt(n!))^2` -/
def P2510627718705160548.Spec : Prop :=
  ∀ n, (P2510627718705160548.a n : ℤ) = A065731 n

theorem P2510627718705160548.correct : P2510627718705160548.Spec := by
  intro n
  simp only [A065731, Nat.add_sub_cancel, A065731.P2510627718705160548.a, A065731.P12877525842493104667.a, SequenceMachineLib.memo_apply]

end A065731

/-! ## A065731.P11211095937406898387

`ceil(-sqrt(n!))²`
-/

namespace A065731.P11211095937406898387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-Real.sqrt (Nat.factorial n : ℝ)⌉ ^ 2

end

end A065731.P11211095937406898387

namespace A065731

/-- `ceil(-sqrt(n!))²` -/
def P11211095937406898387.Spec : Prop :=
  ∀ n, P11211095937406898387.a n = A065731 n

end A065731

/-! ## A065731.P14347399608285700883

`floor(n!^(1/2))²`
-/

namespace A065731.P14347399608285700883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ ^ 2

end

end A065731.P14347399608285700883

namespace A065731

/-- `floor(n!^(1/2))²` -/
def P14347399608285700883.Spec : Prop :=
  ∀ n, P14347399608285700883.a n = A065731 n

end A065731

/-! ## A065731.P11485951131231383520

`floor(sqrt(∏[C(2, n+2)+n]))²`
-/

namespace A065731.P11485951131231383520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A065731.P11485951131231383520

namespace A065731

/-- `floor(sqrt(∏[C(2, n+2)+n]))²` -/
def P11485951131231383520.Spec : Prop :=
  ∀ n, (P11485951131231383520.a n : ℤ) = A065731 n

end A065731

/-! ## A065731.P1203595572078714415

`floor(sqrt(∏[(2^n)%2+n]))²`
-/

namespace A065731.P1203595572078714415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A065731.P1203595572078714415

namespace A065731

/-- `floor(sqrt(∏[(2^n)%2+n]))²` -/
def P1203595572078714415.Spec : Prop :=
  ∀ n, (P1203595572078714415.a n : ℤ) = A065731 n

end A065731

/-! ## A065731.P1444870388410744361

`A055226(n)²`
-/

namespace A065731.P1444870388410744361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 n ^ 2

end

end A065731.P1444870388410744361

namespace A065731

/-- `A055226(n)²` -/
def P1444870388410744361.Spec : Prop :=
  ∀ n, P1444870388410744361.a n = A065731 n

theorem P1444870388410744361.correct : P1444870388410744361.Spec := by
  intro n
  simp only [A065731, Nat.add_sub_cancel, A065731.P1444870388410744361.a, A065731.P12877525842493104667.a, A055226, A055226.P15171937069829666543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065731

/-! ## A065731.P9020475554500116369

`floor(sqrt(A129949(n)))²`
-/

namespace A065731.P9020475554500116369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A129949 n) ^ 2

end

end A065731.P9020475554500116369

namespace A065731

/-- `floor(sqrt(A129949(n)))²` -/
def P9020475554500116369.Spec : Prop :=
  ∀ n, P9020475554500116369.a n = A065731 n

end A065731

/-!
# A065732: Largest square <= 2^n.

The programs for A065732, the canonical program `A065732.P606433591344290576` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065732 has offset 1).

The definition of A065732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065732.P606433591344290576

`A048760(2^(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065732

/-- `A048760(2^(n+1))` -/
def P606433591344290576.Spec : Prop :=
  ∀ n, P606433591344290576.a n = A065732 (n + 1)

theorem P606433591344290576.correct : P606433591344290576.Spec := by
  intro n
  simp only [A065732, Nat.add_sub_cancel]

end A065732

/-! ## A065732.P6720842468863617022

`floor(sqrt(2^(n+1)))²`
-/

namespace A065732.P6720842468863617022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 ^ (n + 1)) ^ 2

end

end A065732.P6720842468863617022

namespace A065732

/-- `floor(sqrt(2^(n+1)))²` -/
def P6720842468863617022.Spec : Prop :=
  ∀ n, (P6720842468863617022.a n : ℤ) = A065732 (n + 1)

end A065732

/-! ## A065732.P10847785244358504167

`∏[ratio[A017910(n)]²]`
-/

namespace A065732.P10847785244358504167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A065732.P10847785244358504167

namespace A065732

/-- `∏[ratio[A017910(n)]²]` -/
def P10847785244358504167.Spec : Prop :=
  ∀ n, P10847785244358504167.a n = (A065732 (n + 1) : ℚ)

end A065732

/-! ## A065732.P4961793817421020659

`A017910(n+1)^2`
-/

namespace A065732.P4961793817421020659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (n + 1) ^ 2

end

end A065732.P4961793817421020659

namespace A065732

/-- `A017910(n+1)^2` -/
def P4961793817421020659.Spec : Prop :=
  ∀ n, P4961793817421020659.a n = A065732 (n + 1)

end A065732

/-! ## A065732.P1755126047733806449

`(A136417(n+1)-1)*A017910(n+1)`
-/

namespace A065732.P1755126047733806449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136417 (n + 1) - 1) * A017910 (n + 1)

end

end A065732.P1755126047733806449

namespace A065732

/-- `(A136417(n+1)-1)*A017910(n+1)` -/
def P1755126047733806449.Spec : Prop :=
  ∀ n, P1755126047733806449.a n = A065732 (n + 1)

end A065732

/-! ## A065732.P1249701068315640403

`A018048(2*(n+1))*A018048(2*(n+1))`
-/

namespace A065732.P1249701068315640403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (2 * (n + 1)) * A018048 (2 * (n + 1))

end

end A065732.P1249701068315640403

namespace A065732

/-- `A018048(2*(n+1))*A018048(2*(n+1))` -/
def P1249701068315640403.Spec : Prop :=
  ∀ n, P1249701068315640403.a n = A065732 (n + 1)

end A065732

/-! ## A065732.P10125520442627144755

`A017910(A008619(2*n))*A017910(n+1)`
-/

namespace A065732.P10125520442627144755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (A008619 (2 * n)).toNat * A017910 (n + 1)

end

end A065732.P10125520442627144755

namespace A065732

/-- `A017910(A008619(2*n))*A017910(n+1)` -/
def P10125520442627144755.Spec : Prop :=
  ∀ n, P10125520442627144755.a n = A065732 (n + 1)

end A065732

/-! ## A065732.P2222109290789470644

`A017910(A052938(2*n))*A017910(n+1)`
-/

namespace A065732.P2222109290789470644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (A052938 (2 * n)).toNat * A017910 (n + 1)

end

end A065732.P2222109290789470644

namespace A065732

/-- `A017910(A052938(2*n))*A017910(n+1)` -/
def P2222109290789470644.Spec : Prop :=
  ∀ n, P2222109290789470644.a n = A065732 (n + 1)

end A065732

/-! ## A065732.P8287025429221548851

`A017910(A110654(2*n+1))*A017910(n+1)`
-/

namespace A065732.P8287025429221548851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (A110654 (2 * n + 1)).toNat * A017910 (n + 1)

end

end A065732.P8287025429221548851

namespace A065732

/-- `A017910(A110654(2*n+1))*A017910(n+1)` -/
def P8287025429221548851.Spec : Prop :=
  ∀ n, P8287025429221548851.a n = A065732 (n + 1)

end A065732

/-! ## A065732.P5874464010698146487

`(A017910(n+1)+A000035(2*n))*A017910(n+1)`
-/

namespace A065732.P5874464010698146487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017910 (n + 1) + A000035 (2 * n)) * A017910 (n + 1)

end

end A065732.P5874464010698146487

namespace A065732

/-- `(A017910(n+1)+A000035(2*n))*A017910(n+1)` -/
def P5874464010698146487.Spec : Prop :=
  ∀ n, P5874464010698146487.a n = A065732 (n + 1)

end A065732

/-! ## A065732.P1126232332639025240

`(A077896(2*n+1)+A017910(n+1))*A017910(n+1)`
-/

namespace A065732.P1126232332639025240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077896 (2 * n + 1) + A017910 (n + 1)) * A017910 (n + 1)

end

end A065732.P1126232332639025240

namespace A065732

/-- `(A077896(2*n+1)+A017910(n+1))*A017910(n+1)` -/
def P1126232332639025240.Spec : Prop :=
  ∀ n, P1126232332639025240.a n = A065732 (n + 1)

end A065732

/-!
# A065733: Largest square <= n^3.

The programs for A065733, the canonical program `A065733.P3623888993656221851` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065733 has offset 0).

The definition of A065733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065733.P3623888993656221851

`A000093(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065733

/-- `A000093(n)²` -/
def P3623888993656221851.Spec : Prop :=
  ∀ n, P3623888993656221851.a n = A065733 n

theorem P3623888993656221851.correct : P3623888993656221851.Spec := by
  intro n
  simp only [A065733]

end A065733

/-! ## A065733.P13205308424130839836

`A048760(n^3)`
-/

namespace A065733.P13205308424130839836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (n ^ 3)

end

end A065733.P13205308424130839836

namespace A065733

/-- `A048760(n^3)` -/
def P13205308424130839836.Spec : Prop :=
  ∀ n, P13205308424130839836.a n = A065733 n

end A065733

/-! ## A065733.P5674970087367415035

`floor(sqrt(n^3))²`
-/

namespace A065733.P5674970087367415035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n ^ 3) ^ 2

end

end A065733.P5674970087367415035

namespace A065733

/-- `floor(sqrt(n^3))²` -/
def P5674970087367415035.Spec : Prop :=
  ∀ n, (P5674970087367415035.a n : ℤ) = A065733 n

theorem P5674970087367415035.correct : P5674970087367415035.Spec := by
  intro n
  simp only [A065733, Nat.add_sub_cancel, A065733.P5674970087367415035.a, A065733.P3623888993656221851.a, A000093, A000093.P17445405278724815419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065733

/-! ## A065733.P11654154606164518614

`n^3-abs(floor(n^(3/2))²%((n+1)*Δ[n^3])-n^3)`
-/

namespace A065733.P11654154606164518614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - |Int.tmod (⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ ^ 2) ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) - (n ^ 3 : ℤ)|

end

end A065733.P11654154606164518614

namespace A065733

/-- `n^3-abs(floor(n^(3/2))²%((n+1)*Δ[n^3])-n^3)` -/
def P11654154606164518614.Spec : Prop :=
  ∀ n, P11654154606164518614.a n = A065733 n

end A065733

/-! ## A065733.P3242903251462355605

`n^3-A077116(n)`
-/

namespace A065733.P3242903251462355605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A077116 n

end

end A065733.P3242903251462355605

namespace A065733

/-- `n^3-A077116(n)` -/
def P3242903251462355605.Spec : Prop :=
  ∀ n, P3242903251462355605.a n = A065733 n

theorem P3242903251462355605.correct : P3242903251462355605.Spec := by
  intro n
  simp only [A065733, Nat.add_sub_cancel, A065733.P3242903251462355605.a, A065733.P3623888993656221851.a, A000093, A000093.P17445405278724815419.a, A077116, A077116.P10717273427979693664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065733

/-! ## A065733.P8857235196523851788

`floor(n*sqrt(n))²%A005917(n+1)`
-/

namespace A065733.P8857235196523851788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋ ^ 2) (A005917 (n + 1))

end

end A065733.P8857235196523851788

namespace A065733

/-- `floor(n*sqrt(n))²%A005917(n+1)` -/
def P8857235196523851788.Spec : Prop :=
  ∀ n, P8857235196523851788.a n = A065733 n

end A065733

/-! ## A065733.P12767732880423830440

`(A077121(n)-1)*floor(n*sqrt(n))%(n+1)²`
-/

namespace A065733.P12767732880423830440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077121 n - 1) * Int.tmod ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋ ((n + 1) ^ 2 : ℤ)

end

end A065733.P12767732880423830440

namespace A065733

/-- `(A077121(n)-1)*floor(n*sqrt(n))%(n+1)²` -/
def P12767732880423830440.Spec : Prop :=
  ∀ n, P12767732880423830440.a n = A065733 n

end A065733

/-! ## A065733.P1162139002067481891

`(A077121(n)-1)*A000093(n)`
-/

namespace A065733.P1162139002067481891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077121 n - 1) * A000093 n

end

end A065733.P1162139002067481891

namespace A065733

/-- `(A077121(n)-1)*A000093(n)` -/
def P1162139002067481891.Spec : Prop :=
  ∀ n, P1162139002067481891.a n = A065733 n

theorem P1162139002067481891.correct : P1162139002067481891.Spec := by
  intro n
  simp only [A065733, Nat.add_sub_cancel, A065733.P1162139002067481891.a, A065733.P3623888993656221851.a, A000093, A000093.P17445405278724815419.a, A077121, A077121.P1205340503456116965.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065733

/-! ## A065733.P12720835186673201635

`A000093(n)*A000093(A028310(n))`
-/

namespace A065733.P12720835186673201635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n * A000093 (A028310 n).toNat

end

end A065733.P12720835186673201635

namespace A065733

/-- `A000093(n)*A000093(A028310(n))` -/
def P12720835186673201635.Spec : Prop :=
  ∀ n, P12720835186673201635.a n = A065733 n

end A065733

/-! ## A065733.P10187701635136642275

`A077115(n)-(A077116(n)+A070929(n))`
-/

namespace A065733.P10187701635136642275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077115 n - (A077116 n + A070929 n)

end

end A065733.P10187701635136642275

namespace A065733

/-- `A077115(n)-(A077116(n)+A070929(n))` -/
def P10187701635136642275.Spec : Prop :=
  ∀ n, P10187701635136642275.a n = A065733 n

end A065733

/-! ## A065733.P5758917032220675070

`A077118(n)-(A077119(n)+A077116(n))`
-/

namespace A065733.P5758917032220675070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077118 n - (A077119 n + A077116 n)

end

end A065733.P5758917032220675070

namespace A065733

/-- `A077118(n)-(A077119(n)+A077116(n))` -/
def P5758917032220675070.Spec : Prop :=
  ∀ n, P5758917032220675070.a n = A065733 n

theorem P5758917032220675070.correct : P5758917032220675070.Spec := by
  intro n
  simp only [A065733, Nat.add_sub_cancel, A065733.P5758917032220675070.a, A065733.P3623888993656221851.a, A000093, A000093.P17445405278724815419.a, A077116, A077116.P10717273427979693664.a, A077118, A077118.P9288148666822653701.a, A077119, A077119.P17256151960313143409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A065733

/-! ## A065733.P8693013776399046986

`A000093(A000007(n)+n)*A000093(n)`
-/

namespace A065733.P8693013776399046986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A000007 n + (n : ℤ)).toNat * A000093 n

end

end A065733.P8693013776399046986

namespace A065733

/-- `A000093(A000007(n)+n)*A000093(n)` -/
def P8693013776399046986.Spec : Prop :=
  ∀ n, P8693013776399046986.a n = A065733 n

end A065733

/-! ## A065733.P3642328389640837666

`A000093(A000038(n)+n)*A000093(n)`
-/

namespace A065733.P3642328389640837666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A000038 n + (n : ℤ)).toNat * A000093 n

end

end A065733.P3642328389640837666

namespace A065733

/-- `A000093(A000038(n)+n)*A000093(n)` -/
def P3642328389640837666.Spec : Prop :=
  ∀ n, P3642328389640837666.a n = A065733 n

end A065733

/-! ## A065733.P2351130470653471891

`A000093(n)*A057427(n)*A000093(n)`
-/

namespace A065733.P2351130470653471891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n * A057427 n * A000093 n

end

end A065733.P2351130470653471891

namespace A065733

/-- `A000093(n)*A057427(n)*A000093(n)` -/
def P2351130470653471891.Spec : Prop :=
  ∀ n, P2351130470653471891.a n = A065733 n

end A065733

/-! ## A065733.P4443783078870115148

`(A000093(n+1)-A035936(n))*A000093(n)`
-/

namespace A065733.P4443783078870115148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000093 (n + 1) - A035936 n) * A000093 n

end

end A065733.P4443783078870115148

namespace A065733

/-- `(A000093(n+1)-A035936(n))*A000093(n)` -/
def P4443783078870115148.Spec : Prop :=
  ∀ n, P4443783078870115148.a n = A065733 n

end A065733

/-! ## A065733.P17011103535277672408

`record[A000093(A126760(n))]*A000093(n)`
-/

namespace A065733.P17011103535277672408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A126760 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000093 n

end

end A065733.P17011103535277672408

namespace A065733

/-- `record[A000093(A126760(n))]*A000093(n)` -/
def P17011103535277672408.Spec : Prop :=
  ∀ n, P17011103535277672408.a n = A065733 n

end A065733

/-! ## A065733.P997546504450057721

`A176580(n+1)-n^3`
-/

namespace A065733.P997546504450057721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176580 (n + 1) - (n ^ 3 : ℤ)

end

end A065733.P997546504450057721

namespace A065733

/-- `A176580(n+1)-n^3` -/
def P997546504450057721.Spec : Prop :=
  ∀ n, P997546504450057721.a n = A065733 n

theorem P997546504450057721.correct : P997546504450057721.Spec := by
  intro n
  simp only [A065733, Nat.add_sub_cancel, A065733.P997546504450057721.a, A065733.P3623888993656221851.a, A000093, A000093.P17445405278724815419.a, A176580, A176580.P16864400630766180112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065733

/-! ## A065733.P6449506000858887989

`A000290(A077121(n)-1)`
-/

namespace A065733.P6449506000858887989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A077121 n - 1).toNat

end

end A065733.P6449506000858887989

namespace A065733

/-- `A000290(A077121(n)-1)` -/
def P6449506000858887989.Spec : Prop :=
  ∀ n, P6449506000858887989.a n = A065733 n

end A065733

/-! ## A065733.P5333776704538396933

`A000290(A359275(n)+n)`
-/

namespace A065733.P5333776704538396933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A359275 n + (n : ℤ)).toNat

end

end A065733.P5333776704538396933

namespace A065733

/-- `A000290(A359275(n)+n)` -/
def P5333776704538396933.Spec : Prop :=
  ∀ n, P5333776704538396933.a n = A065733 n

end A065733

/-!
# A065734: Largest square <= sigma(n).

The programs for A065734, the canonical program `A065734.P4170492142303936260` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065734 has offset 1).

The definition of A065734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065734.P4170492142303936260

`A048760(A000203(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065734

/-- `A048760(A000203(n+1))` -/
def P4170492142303936260.Spec : Prop :=
  ∀ n, P4170492142303936260.a n = A065734 (n + 1)

theorem P4170492142303936260.correct : P4170492142303936260.Spec := by
  intro n
  simp only [A065734, Nat.add_sub_cancel]

end A065734

/-! ## A065734.P12351622429557239550

`floor(sqrt(∑{d}[n+1, #]))²`
-/

namespace A065734.P12351622429557239550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ d ∈ Nat.divisors (f1 n), d) ^ 2

end

end A065734.P12351622429557239550

namespace A065734

/-- `floor(sqrt(∑{d}[n+1, #]))²` -/
def P12351622429557239550.Spec : Prop :=
  ∀ n, (P12351622429557239550.a n : ℤ) = A065734 (n + 1)

end A065734

/-! ## A065734.P18111338879235363885

`A078705(n+1)²`
-/

namespace A065734.P18111338879235363885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (n + 1) ^ 2

end

end A065734.P18111338879235363885

namespace A065734

/-- `A078705(n+1)²` -/
def P18111338879235363885.Spec : Prop :=
  ∀ n, P18111338879235363885.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P14359575578099928679

`floor(sqrt(Δ[A160664(n)]))²`
-/

namespace A065734.P14359575578099928679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n) ^ 2

end

end A065734.P14359575578099928679

namespace A065734

/-- `floor(sqrt(Δ[A160664(n)]))²` -/
def P14359575578099928679.Spec : Prop :=
  ∀ n, P14359575578099928679.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P378664205978560234

`floor(sqrt(sqrt(A072861(n+1))))²`
-/

namespace A065734.P378664205978560234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A072861 (n + 1) : ℝ))⌋ ^ 2

end

end A065734.P378664205978560234

namespace A065734

/-- `floor(sqrt(sqrt(A072861(n+1))))²` -/
def P378664205978560234.Spec : Prop :=
  ∀ n, P378664205978560234.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P9981835647840344197

`floor(sqrt(sqrt(A258774(n+1))))²`
-/

namespace A065734.P9981835647840344197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A258774 (n + 1) : ℝ))⌋ ^ 2

end

end A065734.P9981835647840344197

namespace A065734

/-- `floor(sqrt(sqrt(A258774(n+1))))²` -/
def P9981835647840344197.Spec : Prop :=
  ∀ n, P9981835647840344197.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P2260393044428315733

`floor(sqrt(sqrt(A258974(n+1))))²`
-/

namespace A065734.P2260393044428315733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A258974 (n + 1) : ℝ))⌋ ^ 2

end

end A065734.P2260393044428315733

namespace A065734

/-- `floor(sqrt(sqrt(A258974(n+1))))²` -/
def P2260393044428315733.Spec : Prop :=
  ∀ n, P2260393044428315733.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P12106328014453841521

`floor(sqrt(A245092(2*n+1)))²`
-/

namespace A065734.P12106328014453841521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A245092 (2 * n + 1)) ^ 2

end

end A065734.P12106328014453841521

namespace A065734

/-- `floor(sqrt(A245092(2*n+1)))²` -/
def P12106328014453841521.Spec : Prop :=
  ∀ n, P12106328014453841521.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P2727218203999957193

`floor(sqrt(A155085(n+1)-(n+1)))²`
-/

namespace A065734.P2727218203999957193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155085 (n + 1) - (n + 1 : ℤ)) ^ 2

end

end A065734.P2727218203999957193

namespace A065734

/-- `floor(sqrt(A155085(n+1)-(n+1)))²` -/
def P2727218203999957193.Spec : Prop :=
  ∀ n, P2727218203999957193.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P10057198533439828038

`floor(sqrt(A064987(n+1)/(n+1)))²`
-/

namespace A065734.P10057198533439828038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋ ^ 2

end

end A065734.P10057198533439828038

namespace A065734

/-- `floor(sqrt(A064987(n+1)/(n+1)))²` -/
def P10057198533439828038.Spec : Prop :=
  ∀ n, P10057198533439828038.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P13469116974462448367

`A000290(floor(sqrt(A155085(n+1)-(n+1))))`
-/

namespace A065734.P13469116974462448367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.sqrt (A155085 (n + 1) - (n + 1 : ℤ))).toNat

end

end A065734.P13469116974462448367

namespace A065734

/-- `A000290(floor(sqrt(A155085(n+1)-(n+1))))` -/
def P13469116974462448367.Spec : Prop :=
  ∀ n, P13469116974462448367.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P5831618069142707716

`floor(sqrt(A326065(2*(n+1))))²`
-/

namespace A065734.P5831618069142707716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A326065 (2 * (n + 1))) ^ 2

end

end A065734.P5831618069142707716

namespace A065734

/-- `floor(sqrt(A326065(2*(n+1))))²` -/
def P5831618069142707716.Spec : Prop :=
  ∀ n, P5831618069142707716.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P4420728312041791008

`floor(sqrt(A262610(2*n+1)))²`
-/

namespace A065734.P4420728312041791008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A262610 (2 * n + 1)) ^ 2

end

end A065734.P4420728312041791008

namespace A065734

/-- `floor(sqrt(A262610(2*n+1)))²` -/
def P4420728312041791008.Spec : Prop :=
  ∀ n, P4420728312041791008.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P7272156205514734556

`A048760(∑{d}[n+1, #])`
-/

namespace A065734.P7272156205514734556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A065734.P7272156205514734556

namespace A065734

/-- `A048760(∑{d}[n+1, #])` -/
def P7272156205514734556.Spec : Prop :=
  ∀ n, P7272156205514734556.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P4832852959370778480

`A000196(∑{d}[n+1, #])²`
-/

namespace A065734.P4832852959370778480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ d ∈ Nat.divisors (f1 n), d) ^ 2

end

end A065734.P4832852959370778480

namespace A065734

/-- `A000196(∑{d}[n+1, #])²` -/
def P4832852959370778480.Spec : Prop :=
  ∀ n, P4832852959370778480.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P1108358647386067397

`A000196(A088580(n+1)-1)²`
-/

namespace A065734.P1108358647386067397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A088580 (n + 1) - 1).toNat ^ 2

end

end A065734.P1108358647386067397

namespace A065734

/-- `A000196(A088580(n+1)-1)²` -/
def P1108358647386067397.Spec : Prop :=
  ∀ n, P1108358647386067397.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P9805045943659908843

`A000196(A245092(2*n+1))²`
-/

namespace A065734.P9805045943659908843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A245092 (2 * n + 1)).toNat ^ 2

end

end A065734.P9805045943659908843

namespace A065734

/-- `A000196(A245092(2*n+1))²` -/
def P9805045943659908843.Spec : Prop :=
  ∀ n, P9805045943659908843.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P15517880855708142050

`A000196(A074400(n+1)/2)²`
-/

namespace A065734.P15517880855708142050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat ^ 2

end

end A065734.P15517880855708142050

namespace A065734

/-- `A000196(A074400(n+1)/2)²` -/
def P15517880855708142050.Spec : Prop :=
  ∀ n, P15517880855708142050.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P11832831077954001612

`A008833(A000196(A000203(n+1))²)`
-/

namespace A065734.P11832831077954001612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000196 (A000203 (n + 1)).toNat ^ 2).toNat

end

end A065734.P11832831077954001612

namespace A065734

/-- `A008833(A000196(A000203(n+1))²)` -/
def P11832831077954001612.Spec : Prop :=
  ∀ n, P11832831077954001612.a n = A065734 (n + 1)

end A065734

/-! ## A065734.P4286680313377212042

`A094759(A000196(A000203(n+1))²)`
-/

namespace A065734.P4286680313377212042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (A000196 (A000203 (n + 1)).toNat ^ 2).toNat

end

end A065734.P4286680313377212042

namespace A065734

/-- `A094759(A000196(A000203(n+1))²)` -/
def P4286680313377212042.Spec : Prop :=
  ∀ n, P4286680313377212042.a n = A065734 (n + 1)

end A065734

/-!
# A065735: Largest square <= product of first n primes.

The programs for A065735, there is no canonical definition to state claims against.
-/

/-! ## A065735.P11352999734742994570

`A048760(A002110(n+1))`
-/

namespace A065735.P11352999734742994570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A002110 (n + 1)).toNat

end

end A065735.P11352999734742994570

/-! ## A065735.P329772210086305857

`A060797(n+1)²`
-/

namespace A065735.P329772210086305857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060797 (n + 1) ^ 2

end

end A065735.P329772210086305857

/-! ## A065735.P12947234038753845886

`floor(sqrt(Δ[A143293(n)]))²`
-/

namespace A065735.P12947234038753845886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n) ^ 2

end

end A065735.P12947234038753845886

/-! ## A065735.P8276949712861442008

`(1-A216144(n+1))²`
-/

namespace A065735.P8276949712861442008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A216144 (n + 1)) ^ 2

end

end A065735.P8276949712861442008

/-! ## A065735.P16756995705023719157

`floor(sqrt(A006862(n+1)))²`
-/

namespace A065735.P16756995705023719157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006862 (n + 1)) ^ 2

end

end A065735.P16756995705023719157

/-! ## A065735.P12042308066543872631

`floor(sqrt(A007014(n+1)))²`
-/

namespace A065735.P12042308066543872631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007014 (n + 1)) ^ 2

end

end A065735.P12042308066543872631

/-! ## A065735.P1742426341276422851

`floor(sqrt(A038710(n+1)))²`
-/

namespace A065735.P1742426341276422851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A038710 (n + 1)) ^ 2

end

end A065735.P1742426341276422851

/-! ## A065735.P16812198870058919446

`floor(sqrt(A057588(n+1)))²`
-/

namespace A065735.P16812198870058919446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A057588 (n + 1)) ^ 2

end

end A065735.P16812198870058919446

/-! ## A065735.P115456797195333661

`floor(∏[sqrt(A000040(n+1))])²`
-/

namespace A065735.P115456797195333661
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2

end

end A065735.P115456797195333661

/-! ## A065735.P8517890419042972431

`floor(∏[sqrt(A008578(n+2))])²`
-/

namespace A065735.P8517890419042972431
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2

end

end A065735.P8517890419042972431

/-!
# A065736: Largest square <= 10^n.

The programs for A065736, the canonical program `A065736.P17074082600863172526` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065736 has offset 1).

The definition of A065736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065736.P17074082600863172526

`floor(sqrt(10^(n+1)))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065736

/-- `floor(sqrt(10^(n+1)))²` -/
def P17074082600863172526.Spec : Prop :=
  ∀ n, (P17074082600863172526.a n : ℤ) = A065736 (n + 1)

theorem P17074082600863172526.correct : P17074082600863172526.Spec := by
  intro n
  simp only [A065736, Nat.add_sub_cancel]

end A065736

/-! ## A065736.P16584191183953247856

`A017934(n+1)^2`
-/

namespace A065736.P16584191183953247856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (n + 1) ^ 2

end

end A065736.P16584191183953247856

namespace A065736

/-- `A017934(n+1)^2` -/
def P16584191183953247856.Spec : Prop :=
  ∀ n, P16584191183953247856.a n = A065736 (n + 1)

theorem P16584191183953247856.correct : P16584191183953247856.Spec := by
  intro n
  simp only [A065736, Nat.add_sub_cancel, A065736.P16584191183953247856.a, A065736.P17074082600863172526.a, A017934, A017934.P2786931500845398224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065736

/-! ## A065736.P6294868956224572735

`record[A017934(abs(1-n))²]`
-/

namespace A065736.P6294868956224572735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 |1 - (n : ℤ)|.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065736.P6294868956224572735

namespace A065736

/-- `record[A017934(abs(1-n))²]` -/
def P6294868956224572735.Spec : Prop :=
  ∀ n, P6294868956224572735.a n = A065736 (n + 1)

end A065736

/-! ## A065736.P11952313724863528716

`(A114322(2*(n+1))+and(1, n))^2`
-/

namespace A065736.P11952313724863528716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114322 (2 * (n + 1)) + (Nat.land 1 n : ℤ)) ^ 2

end

end A065736.P11952313724863528716

namespace A065736

/-- `(A114322(2*(n+1))+and(1, n))^2` -/
def P11952313724863528716.Spec : Prop :=
  ∀ n, P11952313724863528716.a n = A065736 (n + 1)

end A065736

/-! ## A065736.P16829509537973637642

`A018072(2*(n+1))*A018072(2*(n+1))`
-/

namespace A065736.P16829509537973637642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (2 * (n + 1)) * A018072 (2 * (n + 1))

end

end A065736.P16829509537973637642

namespace A065736

/-- `A018072(2*(n+1))*A018072(2*(n+1))` -/
def P16829509537973637642.Spec : Prop :=
  ∀ n, P16829509537973637642.a n = A065736 (n + 1)

end A065736

/-! ## A065736.P7643334170183392681

`A017934(A052938(2*n))*A017934(n+1)`
-/

namespace A065736.P7643334170183392681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (A052938 (2 * n)).toNat * A017934 (n + 1)

end

end A065736.P7643334170183392681

namespace A065736

/-- `A017934(A052938(2*n))*A017934(n+1)` -/
def P7643334170183392681.Spec : Prop :=
  ∀ n, P7643334170183392681.a n = A065736 (n + 1)

end A065736

/-! ## A065736.P16003194370607583597

`A017934(A065033(2*n+1))*A017934(n+1)`
-/

namespace A065736.P16003194370607583597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (A065033 (2 * n + 1)).toNat * A017934 (n + 1)

end

end A065736.P16003194370607583597

namespace A065736

/-- `A017934(A065033(2*n+1))*A017934(n+1)` -/
def P16003194370607583597.Spec : Prop :=
  ∀ n, P16003194370607583597.a n = A065736 (n + 1)

end A065736

/-! ## A065736.P11926480172801404409

`(A017934(n+1)+A000007(n+1))*A017934(n+1)`
-/

namespace A065736.P11926480172801404409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017934 (n + 1) + A000007 (n + 1)) * A017934 (n + 1)

end

end A065736.P11926480172801404409

namespace A065736

/-- `(A017934(n+1)+A000007(n+1))*A017934(n+1)` -/
def P11926480172801404409.Spec : Prop :=
  ∀ n, P11926480172801404409.a n = A065736 (n + 1)

theorem P11926480172801404409.correct : P11926480172801404409.Spec := by
  intro n
  simp only [A065736, Nat.add_sub_cancel, A065736.P11926480172801404409.a, A065736.P17074082600863172526.a, A000007, A000007.P6599383543502402472.a, A017934, A017934.P2786931500845398224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065736

/-! ## A065736.P11098389195391074231

`(A017934(n+1)+A000038(n+1))*A017934(n+1)`
-/

namespace A065736.P11098389195391074231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017934 (n + 1) + A000038 (n + 1)) * A017934 (n + 1)

end

end A065736.P11098389195391074231

namespace A065736

/-- `(A017934(n+1)+A000038(n+1))*A017934(n+1)` -/
def P11098389195391074231.Spec : Prop :=
  ∀ n, P11098389195391074231.a n = A065736 (n + 1)

theorem P11098389195391074231.correct : P11098389195391074231.Spec := by
  intro n
  simp only [A065736, Nat.add_sub_cancel, A065736.P11098389195391074231.a, A065736.P17074082600863172526.a, A000038, A000038.P13734959004655594922.a, A017934, A017934.P2786931500845398224.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065736

/-! ## A065736.P18346758451984542517

`(A017934(n+1)+A000035(2*n))*A017934(n+1)`
-/

namespace A065736.P18346758451984542517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017934 (n + 1) + A000035 (2 * n)) * A017934 (n + 1)

end

end A065736.P18346758451984542517

namespace A065736

/-- `(A017934(n+1)+A000035(2*n))*A017934(n+1)` -/
def P18346758451984542517.Spec : Prop :=
  ∀ n, P18346758451984542517.a n = A065736 (n + 1)

end A065736

/-! ## A065736.P481585673333559264

`A000034(2*n)*A017934(n+1)*A017934(n+1)`
-/

namespace A065736.P481585673333559264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A017934 (n + 1) * A017934 (n + 1)

end

end A065736.P481585673333559264

namespace A065736

/-- `A000034(2*n)*A017934(n+1)*A017934(n+1)` -/
def P481585673333559264.Spec : Prop :=
  ∀ n, P481585673333559264.a n = A065736 (n + 1)

end A065736

/-! ## A065736.P9181639711378341628

`A017934(n+1)*A093178(2*n)*A017934(n+1)`
-/

namespace A065736.P9181639711378341628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (n + 1) * A093178 (2 * n) * A017934 (n + 1)

end

end A065736.P9181639711378341628

namespace A065736

/-- `A017934(n+1)*A093178(2*n)*A017934(n+1)` -/
def P9181639711378341628.Spec : Prop :=
  ∀ n, P9181639711378341628.a n = A065736 (n + 1)

end A065736

/-! ## A065736.P6262386872066678500

`(A287468(2*n+1)+A017934(n+1))*A017934(n+1)`
-/

namespace A065736.P6262386872066678500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A287468 (2 * n + 1) + A017934 (n + 1)) * A017934 (n + 1)

end

end A065736.P6262386872066678500

namespace A065736

/-- `(A287468(2*n+1)+A017934(n+1))*A017934(n+1)` -/
def P6262386872066678500.Spec : Prop :=
  ∀ n, P6262386872066678500.a n = A065736 (n + 1)

end A065736

/-!
# A065737: Largest square <= binomial(n,2).

The programs for A065737, the canonical program `A065737.P13959888304798218717` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065737 has offset 1).

The definition of A065737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065737.P13959888304798218717

`A048760(C(n+1, 2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065737

/-- `A048760(C(n+1, 2))` -/
def P13959888304798218717.Spec : Prop :=
  ∀ n, P13959888304798218717.a n = A065737 (n + 1)

theorem P13959888304798218717.correct : P13959888304798218717.Spec := by
  intro n
  simp only [A065737, Nat.add_sub_cancel]

end A065737

/-! ## A065737.P6661774788033601951

`floor(sqrt(∑[n]))²`
-/

namespace A065737.P6661774788033601951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A065737.P6661774788033601951

namespace A065737

/-- `floor(sqrt(∑[n]))²` -/
def P6661774788033601951.Spec : Prop :=
  ∀ n, (P6661774788033601951.a n : ℤ) = A065737 (n + 1)

end A065737

/-! ## A065737.P12697906662996019067

`(floor(sqrt(∑[n]))%(n+1))^2`
-/

namespace A065737.P12697906662996019067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) ^ 2

end

end A065737.P12697906662996019067

namespace A065737

/-- `(floor(sqrt(∑[n]))%(n+1))^2` -/
def P12697906662996019067.Spec : Prop :=
  ∀ n, (P12697906662996019067.a n : ℤ) = A065737 (n + 1)

end A065737

/-! ## A065737.P12008497194343035014

`A000290(floor(sqrt(∑[n])))`
-/

namespace A065737.P12008497194343035014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A065737.P12008497194343035014

namespace A065737

/-- `A000290(floor(sqrt(∑[n])))` -/
def P12008497194343035014.Spec : Prop :=
  ∀ n, P12008497194343035014.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P198768367546518700

`floor(sqrt(∑[n]))^A020639(2*(n+1))`
-/

namespace A065737.P198768367546518700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A065737.P198768367546518700

namespace A065737

/-- `floor(sqrt(∑[n]))^A020639(2*(n+1))` -/
def P198768367546518700.Spec : Prop :=
  ∀ n, P198768367546518700.a n = (A065737 (n + 1) : ℚ)

end A065737

/-! ## A065737.P11137004077513974299

`A008794(A001953(n))`
-/

namespace A065737.P11137004077513974299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A001953 n).toNat

end

end A065737.P11137004077513974299

namespace A065737

/-- `A008794(A001953(n))` -/
def P11137004077513974299.Spec : Prop :=
  ∀ n, P11137004077513974299.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P12766030733106345561

`A008794(A136119(n+1)-1)`
-/

namespace A065737.P12766030733106345561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A136119 (n + 1) - 1).toNat

end

end A065737.P12766030733106345561

namespace A065737

/-- `A008794(A136119(n+1)-1)` -/
def P12766030733106345561.Spec : Prop :=
  ∀ n, P12766030733106345561.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P7990570144950097579

`A001105(A172474(2*n+1))/2`
-/

namespace A065737.P7990570144950097579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001105 (A172474 (2 * n + 1)).toNat : ℚ) / 2

end

end A065737.P7990570144950097579

namespace A065737

/-- `A001105(A172474(2*n+1))/2` -/
def P7990570144950097579.Spec : Prop :=
  ∀ n, P7990570144950097579.a n = (A065737 (n + 1) : ℚ)

end A065737

/-! ## A065737.P7976730574161733647

`A295643(A342281(n))`
-/

namespace A065737.P7976730574161733647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295643 (A342281 n).toNat

end

end A065737.P7976730574161733647

namespace A065737

/-- `A295643(A342281(n))` -/
def P7976730574161733647.Spec : Prop :=
  ∀ n, P7976730574161733647.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P3584857725981041310

`A048760(∑[n])`
-/

namespace A065737.P3584857725981041310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065737.P3584857725981041310

namespace A065737

/-- `A048760(∑[n])` -/
def P3584857725981041310.Spec : Prop :=
  ∀ n, P3584857725981041310.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P18275015415794700694

`∑[n]-A053186(∑[n])`
-/

namespace A065737.P18275015415794700694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A053186 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A065737.P18275015415794700694

namespace A065737

/-- `∑[n]-A053186(∑[n])` -/
def P18275015415794700694.Spec : Prop :=
  ∀ n, P18275015415794700694.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P7903609057513657143

`A053187(A038759(∑[n]))`
-/

namespace A065737.P7903609057513657143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (A038759 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065737.P7903609057513657143

namespace A065737

/-- `A053187(A038759(∑[n]))` -/
def P7903609057513657143.Spec : Prop :=
  ∀ n, P7903609057513657143.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P10400507493333078813

`A048761(A000196(∑[n])²)`
-/

namespace A065737.P10400507493333078813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A065737.P10400507493333078813

namespace A065737

/-- `A048761(A000196(∑[n])²)` -/
def P10400507493333078813.Spec : Prop :=
  ∀ n, P10400507493333078813.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P11870397456196528178

`A000196(∑[n])*A000196(A000217(n))`
-/

namespace A065737.P11870397456196528178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j) * A000196 (A000217 n).toNat

end

end A065737.P11870397456196528178

namespace A065737

/-- `A000196(∑[n])*A000196(A000217(n))` -/
def P11870397456196528178.Spec : Prop :=
  ∀ n, P11870397456196528178.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P17253049705537363946

`A048760(A000217(n))%A232501(n+1)`
-/

namespace A065737.P17253049705537363946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048760 (A000217 n).toNat) (A232501 (n + 1))

end

end A065737.P17253049705537363946

namespace A065737

/-- `A048760(A000217(n))%A232501(n+1)` -/
def P17253049705537363946.Spec : Prop :=
  ∀ n, P17253049705537363946.a n = A065737 (n + 1)

end A065737

/-! ## A065737.P12403067793446330146

`A004526(A007590(A116939(n²+n)))`
-/

namespace A065737.P12403067793446330146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007590 (A116939 (n ^ 2 + n)).toNat).toNat

end

end A065737.P12403067793446330146

namespace A065737

/-- `A004526(A007590(A116939(n²+n)))` -/
def P12403067793446330146.Spec : Prop :=
  ∀ n, P12403067793446330146.a n = A065737 (n + 1)

end A065737

/-!
# A065738: Largest square <= binomial(2n,n).

The programs for A065738, the canonical program `A065738.P10550845341086057778` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065738 has offset 0).

The definition of A065738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065738.P1957430342565545438

`A192655(n)²`
-/

namespace A065738.P1957430342565545438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192655 n ^ 2

end

end A065738.P1957430342565545438

namespace A065738

/-- `A192655(n)²` -/
def P1957430342565545438.Spec : Prop :=
  ∀ n, P1957430342565545438.a n = A065738 n

end A065738

/-! ## A065738.P17228946634550843475

`floor(sqrt(C(2*n, n)))²`
-/

namespace A065738.P17228946634550843475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (2 * n) n) ^ 2

end

end A065738.P17228946634550843475

namespace A065738

/-- `floor(sqrt(C(2*n, n)))²` -/
def P17228946634550843475.Spec : Prop :=
  ∀ n, (P17228946634550843475.a n : ℤ) = A065738 n

end A065738

/-! ## A065738.P10550845341086057778

`A048760(A000984(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065738

/-- `A048760(A000984(n))` -/
def P10550845341086057778.Spec : Prop :=
  ∀ n, P10550845341086057778.a n = A065738 n

theorem P10550845341086057778.correct : P10550845341086057778.Spec := by
  intro n
  simp only [A065738]

end A065738

/-! ## A065738.P6093270691118957576

`A192655(n)^A000005(A005384(n+1))`
-/

namespace A065738.P6093270691118957576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192655 n : ℚ) ^ (A000005 (A005384 (n + 1)).toNat : ℤ)

end

end A065738.P6093270691118957576

namespace A065738

/-- `A192655(n)^A000005(A005384(n+1))` -/
def P6093270691118957576.Spec : Prop :=
  ∀ n, P6093270691118957576.a n = (A065738 n : ℚ)

end A065738

/-! ## A065738.P7701878580602014361

`A192655(n)^A000005(A054803(n+1))`
-/

namespace A065738.P7701878580602014361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192655 n : ℚ) ^ (A000005 (A054803 (n + 1)).toNat : ℤ)

end

end A065738.P7701878580602014361

namespace A065738

/-- `A192655(n)^A000005(A054803(n+1))` -/
def P7701878580602014361.Spec : Prop :=
  ∀ n, P7701878580602014361.a n = (A065738 n : ℚ)

end A065738

/-!
# A065739: Largest square <= sum of first n squares.

The programs for A065739, the canonical program `A065739.P4915094411017210688` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065739 has offset 1).

The definition of A065739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065739.P4915094411017210688

`A048760(A000330(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065739

/-- `A048760(A000330(n+1))` -/
def P4915094411017210688.Spec : Prop :=
  ∀ n, P4915094411017210688.a n = A065739 (n + 1)

theorem P4915094411017210688.correct : P4915094411017210688.Spec := by
  intro n
  simp only [A065739, Nat.add_sub_cancel]

end A065739

/-! ## A065739.P6457768043744231333

`floor(sqrt(∑[(n+1)²]))²`
-/

namespace A065739.P6457768043744231333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A065739.P6457768043744231333

namespace A065739

/-- `floor(sqrt(∑[(n+1)²]))²` -/
def P6457768043744231333.Spec : Prop :=
  ∀ n, (P6457768043744231333.a n : ℤ) = A065739 (n + 1)

end A065739

/-! ## A065739.P7474766249256385918

`A127721(n+1)^2`
-/

namespace A065739.P7474766249256385918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127721 (n + 1) ^ 2

end

end A065739.P7474766249256385918

namespace A065739

/-- `A127721(n+1)^2` -/
def P7474766249256385918.Spec : Prop :=
  ∀ n, P7474766249256385918.a n = A065739 (n + 1)

end A065739

/-! ## A065739.P5336826516823953842

`A127721(n+1)²%A127694(n+1)`
-/

namespace A065739.P5336826516823953842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127721 (n + 1) ^ 2) (A127694 (n + 1))

end

end A065739.P5336826516823953842

namespace A065739

/-- `A127721(n+1)²%A127694(n+1)` -/
def P5336826516823953842.Spec : Prop :=
  ∀ n, P5336826516823953842.a n = A065739 (n + 1)

end A065739

/-! ## A065739.P8781336413322902405

`record[A127721(A286603(n+1))²]`
-/

namespace A065739.P8781336413322902405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127721 (A286603 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065739.P8781336413322902405

namespace A065739

/-- `record[A127721(A286603(n+1))²]` -/
def P8781336413322902405.Spec : Prop :=
  ∀ n, P8781336413322902405.a n = A065739 (n + 1)

end A065739

/-! ## A065739.P2199668576497834822

`record[A127721(A286603(n+1))]*A127721(n+1)`
-/

namespace A065739.P2199668576497834822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127721 (A286603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A127721 (n + 1)

end

end A065739.P2199668576497834822

namespace A065739

/-- `record[A127721(A286603(n+1))]*A127721(n+1)` -/
def P2199668576497834822.Spec : Prop :=
  ∀ n, P2199668576497834822.a n = A065739 (n + 1)

end A065739

/-! ## A065739.P2182033841883096534

`A000290(A127721(n+1))`
-/

namespace A065739.P2182033841883096534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A127721 (n + 1)).toNat

end

end A065739.P2182033841883096534

namespace A065739

/-- `A000290(A127721(n+1))` -/
def P2182033841883096534.Spec : Prop :=
  ∀ n, P2182033841883096534.a n = A065739 (n + 1)

end A065739

/-! ## A065739.P5871903389270023430

`A000290(floor(sqrt(A000330(n+1))))`
-/

namespace A065739.P5871903389270023430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.sqrt (A000330 (n + 1))).toNat

end

end A065739.P5871903389270023430

namespace A065739

/-- `A000290(floor(sqrt(A000330(n+1))))` -/
def P5871903389270023430.Spec : Prop :=
  ∀ n, P5871903389270023430.a n = A065739 (n + 1)

end A065739

/-! ## A065739.P14148857680120086644

`A000290(floor(root(A000330(n+1), 2)))`
-/

namespace A065739.P14148857680120086644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ⌊(A000330 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋.toNat

end

end A065739.P14148857680120086644

namespace A065739

/-- `A000290(floor(root(A000330(n+1), 2)))` -/
def P14148857680120086644.Spec : Prop :=
  ∀ n, P14148857680120086644.a n = A065739 (n + 1)

end A065739

/-! ## A065739.P4341619869626921696

`A000463(2*floor(sqrt(A000330(n+1))))`
-/

namespace A065739.P4341619869626921696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * Int.sqrt (A000330 (n + 1))).toNat

end

end A065739.P4341619869626921696

namespace A065739

/-- `A000463(2*floor(sqrt(A000330(n+1))))` -/
def P4341619869626921696.Spec : Prop :=
  ∀ n, P4341619869626921696.a n = A065739 (n + 1)

end A065739

/-!
# A065740: Largest square <= n^n.

The programs for A065740, the canonical program `A065740.P13693046897734475492` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065740 has offset 1).

The definition of A065740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065740.P13693046897734475492

`floor(sqrt((n+1)^(n+1)))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065740

/-- `floor(sqrt((n+1)^(n+1)))²` -/
def P13693046897734475492.Spec : Prop :=
  ∀ n, (P13693046897734475492.a n : ℤ) = A065740 (n + 1)

theorem P13693046897734475492.correct : P13693046897734475492.Spec := by
  intro n
  simp only [A065740, Nat.add_sub_cancel]

end A065740

/-! ## A065740.P1608320293439821629

`A066642(n+1)*A066642(n+1)`
-/

namespace A065740.P1608320293439821629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066642 (n + 1) * A066642 (n + 1)

end

end A065740.P1608320293439821629

namespace A065740

/-- `A066642(n+1)*A066642(n+1)` -/
def P1608320293439821629.Spec : Prop :=
  ∀ n, P1608320293439821629.a n = A065740 (n + 1)

end A065740

/-! ## A065740.P10727094735551862851

`A000290(A066642(n+1))`
-/

namespace A065740.P10727094735551862851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A066642 (n + 1)).toNat

end

end A065740.P10727094735551862851

namespace A065740

/-- `A000290(A066642(n+1))` -/
def P10727094735551862851.Spec : Prop :=
  ∀ n, P10727094735551862851.a n = A065740 (n + 1)

end A065740

/-!
# A065741: Largest square <= sum of squares of divisors of n.

The programs for A065741, the canonical program `A065741.P168978404757248362` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065741 has offset 1).

The definition of A065741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065741.P168978404757248362

`A048760(A001157(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065741

/-- `A048760(A001157(n+1))` -/
def P168978404757248362.Spec : Prop :=
  ∀ n, P168978404757248362.a n = A065741 (n + 1)

theorem P168978404757248362.correct : P168978404757248362.Spec := by
  intro n
  simp only [A065741, Nat.add_sub_cancel]

end A065741

/-! ## A065741.P9095035446100994995

`floor(sqrt(∑{d}[n+1, #²]))²`
-/

namespace A065741.P9095035446100994995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ d ∈ Nat.divisors (f1 n), d ^ 2) ^ 2

end

end A065741.P9095035446100994995

namespace A065741

/-- `floor(sqrt(∑{d}[n+1, #²]))²` -/
def P9095035446100994995.Spec : Prop :=
  ∀ n, (P9095035446100994995.a n : ℤ) = A065741 (n + 1)

end A065741

/-! ## A065741.P18041621082969336934

`floor(root(∑{d}[n+1, #²], 2))²`
-/

namespace A065741.P18041621082969336934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℝ) ^ (1 / (2 : ℝ))⌋ ^ 2

end

end A065741.P18041621082969336934

namespace A065741

/-- `floor(root(∑{d}[n+1, #²], 2))²` -/
def P18041621082969336934.Spec : Prop :=
  ∀ n, P18041621082969336934.a n = A065741 (n + 1)

end A065741

/-! ## A065741.P8623467903580645931

`ceil(-sqrt(∑{d}[n+1, #²]))²`
-/

namespace A065741.P8623467903580645931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-Real.sqrt ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℝ)⌉ ^ 2

end

end A065741.P8623467903580645931

namespace A065741

/-- `ceil(-sqrt(∑{d}[n+1, #²]))²` -/
def P8623467903580645931.Spec : Prop :=
  ∀ n, P8623467903580645931.a n = A065741 (n + 1)

end A065741

/-! ## A065741.P4373255867865891868

`A000290(floor(sqrt(∑{d}[n+1, #*#])))`
-/

namespace A065741.P4373255867865891868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Nat.sqrt (∑ d ∈ Nat.divisors (f1 n), d * d))

end

end A065741.P4373255867865891868

namespace A065741

/-- `A000290(floor(sqrt(∑{d}[n+1, #*#])))` -/
def P4373255867865891868.Spec : Prop :=
  ∀ n, P4373255867865891868.a n = A065741 (n + 1)

end A065741

/-! ## A065741.P1175012142735326118

`A000290(floor(sqrt(A001157(n+1))))`
-/

namespace A065741.P1175012142735326118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.sqrt (A001157 (n + 1))).toNat

end

end A065741.P1175012142735326118

namespace A065741

/-- `A000290(floor(sqrt(A001157(n+1))))` -/
def P1175012142735326118.Spec : Prop :=
  ∀ n, P1175012142735326118.a n = A065741 (n + 1)

end A065741

/-! ## A065741.P12073902664500663623

`floor(sqrt(A035316((n+1)²)))²`
-/

namespace A065741.P12073902664500663623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A035316 ((n + 1) ^ 2)) ^ 2

end

end A065741.P12073902664500663623

namespace A065741

/-- `floor(sqrt(A035316((n+1)²)))²` -/
def P12073902664500663623.Spec : Prop :=
  ∀ n, P12073902664500663623.a n = A065741 (n + 1)

end A065741

/-! ## A065741.P15783835552154448434

`A048760(∑{d}[n+1, #²])`
-/

namespace A065741.P15783835552154448434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A065741.P15783835552154448434

namespace A065741

/-- `A048760(∑{d}[n+1, #²])` -/
def P15783835552154448434.Spec : Prop :=
  ∀ n, P15783835552154448434.a n = A065741 (n + 1)

end A065741

/-! ## A065741.P15308154621497054527

`A000196(A035316((n+1)²))²`
-/

namespace A065741.P15308154621497054527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A035316 ((n + 1) ^ 2)).toNat ^ 2

end

end A065741.P15308154621497054527

namespace A065741

/-- `A000196(A035316((n+1)²))²` -/
def P15308154621497054527.Spec : Prop :=
  ∀ n, P15308154621497054527.a n = A065741 (n + 1)

end A065741

/-! ## A065741.P4816451704749496549

`A000290(A000196(A035316((n+1)*(n+1))))`
-/

namespace A065741.P4816451704749496549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000196 (A035316 ((n + 1) * (n + 1))).toNat).toNat

end

end A065741.P4816451704749496549

namespace A065741

/-- `A000290(A000196(A035316((n+1)*(n+1))))` -/
def P4816451704749496549.Spec : Prop :=
  ∀ n, P4816451704749496549.a n = A065741 (n + 1)

theorem P4816451704749496549.correct : P4816451704749496549.Spec := by
  intro n
  simp only [A065741, Nat.add_sub_cancel, A065741.P4816451704749496549.a, A065741.P168978404757248362.a, A000196, A000196.P15434771586934192083.a, A000290, A000290.P12206242496348924484.a, A001157, A001157.P6892814788348726787.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A048760, A048760.P9900115946027900201.a, A037213, A037213.P7544062464691828526.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065741

/-!
# A065742: Primes p(m) such that the set of quadratic residues modulo[p(m)] contains p(m-1).

The programs for A065742, there is no canonical definition to state claims against.
-/

/-! ## A065742.P18004396218047567321

`A004139(eq[1, A244513(n+1)])`
-/

namespace A065742.P18004396218047567321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065742.P18004396218047567321

/-! ## A065742.P2025072635472382266

`p?[A045319(n+1)*A244513(n+1)]`
-/

namespace A065742.P2025072635472382266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1) * A244513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065742.P2025072635472382266

/-! ## A065742.P16335509357611098509

`p?[A045344(n+1)*A244513(n+1)]`
-/

namespace A065742.P16335509357611098509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A244513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065742.P16335509357611098509

/-! ## A065742.P7006997313359203010

`p?[A065091(n+1)*A244513(n+1)]`
-/

namespace A065742.P7006997313359203010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A244513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065742.P7006997313359203010

/-! ## A065742.P15111285430908730307

`A000040(eq[1, A244513(n+1)]+2)`
-/

namespace A065742.P15111285430908730307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A065742.P15111285430908730307

/-! ## A065742.P6255450532040285840

`p?[A000040(n+2)*A244513(n+1)]`
-/

namespace A065742.P6255450532040285840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A244513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065742.P6255450532040285840

/-! ## A065742.P5641449298137634492

`p?[xor(A039915(n+2), A244513(n+1))]`
-/

namespace A065742.P5641449298137634492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039915 (n + 2)) (A244513 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065742.P5641449298137634492

/-! ## A065742.P15359297052564973166

`p?[p?[A004273(n)]*A244513(n+1)]`
-/

namespace A065742.P15359297052564973166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A244513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065742.P15359297052564973166

/-! ## A065742.P12167584639456764811

`p?[p?[A093178(n)]*A244513(n+1)]`
-/

namespace A065742.P12167584639456764811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A244513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065742.P12167584639456764811

/-! ## A065742.P17913086227700160720

`p?[gcd(A097152(n+2), A165712(n+2))]`
-/

namespace A065742.P17913086227700160720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097152 (n + 2)) (A165712 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A065742.P17913086227700160720

/-!
# A065743: Smallest number with exactly A025475(n) divisors.

The programs for A065743, there is no canonical definition to state claims against.
-/

/-! ## A065743.P14353621885269803463

`A005179(A025475(n+1))`
-/

namespace A065743.P14353621885269803463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A025475 (n + 1)).toNat

end

end A065743.P14353621885269803463

/-! ## A065743.P8133144222625455742

`A005179(A134611(n+1))`
-/

namespace A065743.P8133144222625455742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A134611 (n + 1)).toNat

end

end A065743.P8133144222625455742

/-! ## A065743.P5523144412438668796

`A005179(A195942(n+1))`
-/

namespace A065743.P5523144412438668796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A195942 (n + 1)).toNat

end

end A065743.P5523144412438668796

/-! ## A065743.P14862528219768222607

`A005179(record[A274006(n+1)])`
-/

namespace A065743.P14862528219768222607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065743.P14862528219768222607

/-! ## A065743.P1118350328248984364

`A005179(A249435(n+1)+1)`
-/

namespace A065743.P1118350328248984364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A249435 (n + 1) + 1).toNat

end

end A065743.P1118350328248984364

/-!
# A065744: Number of 9's in the decimal expansion of 2^n.

The programs for A065744, the canonical program `A065744.P10944096515818284023` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065744 has offset 0).

The definition of A065744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065744.P12332042728923192459

`val(A028909(n)+1, 10)`
-/

namespace A065744.P12332042728923192459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028909 n + 1).toNat 10

end

end A065744.P12332042728923192459

namespace A065744

/-- `val(A028909(n)+1, 10)` -/
def P12332042728923192459.Spec : Prop :=
  ∀ n, (P12332042728923192459.a n : ℤ) = A065744 n

end A065744

/-! ## A065744.P10944096515818284023

`∑{digits}[2^n, C(#, 9)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065744

/-- `∑{digits}[2^n, C(#, 9)]` -/
def P10944096515818284023.Spec : Prop :=
  ∀ n, (P10944096515818284023.a n : ℤ) = A065744 n

theorem P10944096515818284023.correct : P10944096515818284023.Spec := by
  intro n
  simp only [A065744]

end A065744

/-! ## A065744.P10408249306855150208

`∑{digits}[2^n, floor(#/9)]`
-/

namespace A065744.P10408249306855150208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 9⌋).sum

end

end A065744.P10408249306855150208

namespace A065744

/-- `∑{digits}[2^n, floor(#/9)]` -/
def P10408249306855150208.Spec : Prop :=
  ∀ n, P10408249306855150208.a n = A065744 n

end A065744

/-! ## A065744.P13003800117334273012

`val(∏{digits}[2^n, A029113(#)], 3)`
-/

namespace A065744.P13003800117334273012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod.toNat 3

end

end A065744.P13003800117334273012

namespace A065744

/-- `val(∏{digits}[2^n, A029113(#)], 3)` -/
def P13003800117334273012.Spec : Prop :=
  ∀ n, (P13003800117334273012.a n : ℤ) = A065744 n

end A065744

/-! ## A065744.P2760397229765664468

`∑{digits}[2^n-1, A036640(#)]%(n+1)`
-/

namespace A065744.P2760397229765664468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036640 x).sum (n + 1 : ℤ)

end

end A065744.P2760397229765664468

namespace A065744

/-- `∑{digits}[2^n-1, A036640(#)]%(n+1)` -/
def P2760397229765664468.Spec : Prop :=
  ∀ n, P2760397229765664468.a n = A065744 n

end A065744

/-! ## A065744.P17433511568699350574

`∑{digits}[2^n, A025462(#)]*A019429(2*n)`
-/

namespace A065744.P17433511568699350574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025462 x).sum * A019429 (2 * n)

end

end A065744.P17433511568699350574

namespace A065744

/-- `∑{digits}[2^n, A025462(#)]*A019429(2*n)` -/
def P17433511568699350574.Spec : Prop :=
  ∀ n, P17433511568699350574.a n = A065744 n

end A065744

/-!
# A065745: Sum of squares and twice squares dividing n.

The programs for A065745, the canonical program `A065745.P10401467912495569970` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065745 has offset 1).

The definition of A065745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065745.P17871107370701322836

`∑{d}[n+1, #*A053866(#)]`
-/

namespace A065745.P17871107370701322836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A053866 d

end

end A065745.P17871107370701322836

namespace A065745

/-- `∑{d}[n+1, #*A053866(#)]` -/
def P17871107370701322836.Spec : Prop :=
  ∀ n, P17871107370701322836.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P16584944850571923521

`∑{d}[n+1, #*A093709(#)]`
-/

namespace A065745.P16584944850571923521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A093709 d

end

end A065745.P16584944850571923521

namespace A065745

/-- `∑{d}[n+1, #*A093709(#)]` -/
def P16584944850571923521.Spec : Prop :=
  ∀ n, P16584944850571923521.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P10126906693348567542

`∑{d}[n+1, #*A000203(#)%2]`
-/

namespace A065745.P10126906693348567542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A000203 d) 2

end

end A065745.P10126906693348567542

namespace A065745

/-- `∑{d}[n+1, #*A000203(#)%2]` -/
def P10126906693348567542.Spec : Prop :=
  ∀ n, P10126906693348567542.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P1117767478789419458

`∑{d}[n+1, #*A001227(#)%2]`
-/

namespace A065745.P1117767478789419458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A001227 d) 2

end

end A065745.P1117767478789419458

namespace A065745

/-- `∑{d}[n+1, #*A001227(#)%2]` -/
def P1117767478789419458.Spec : Prop :=
  ∀ n, P1117767478789419458.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P6583100981082609960

`A038712(n+1)*A360159(n+1)`
-/

namespace A065745.P6583100981082609960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A360159 (n + 1)

end

end A065745.P6583100981082609960

namespace A065745

/-- `A038712(n+1)*A360159(n+1)` -/
def P6583100981082609960.Spec : Prop :=
  ∀ n, P6583100981082609960.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P5081020834204298453

`2*A035316(n+1)-A300853(n+1)`
-/

namespace A065745.P5081020834204298453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035316 (n + 1) - A300853 (n + 1)

end

end A065745.P5081020834204298453

namespace A065745

/-- `2*A035316(n+1)-A300853(n+1)` -/
def P5081020834204298453.Spec : Prop :=
  ∀ n, P5081020834204298453.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P10401467912495569970

`∑{d}[n+1, A022998(#)*A061020((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065745

/-- `∑{d}[n+1, A022998(#)*A061020((n+1)/#)]` -/
def P10401467912495569970.Spec : Prop :=
  ∀ n, P10401467912495569970.a n = A065745 (n + 1)

theorem P10401467912495569970.correct : P10401467912495569970.Spec := by
  intro n
  simp only [A065745, Nat.add_sub_cancel]

end A065745

/-! ## A065745.P7927428107241575764

`∑{d}[n+1, A050457(#)*A209662((n+1)/#)]`
-/

namespace A065745.P7927428107241575764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050457 d * A209662 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065745.P7927428107241575764

namespace A065745

/-- `∑{d}[n+1, A050457(#)*A209662((n+1)/#)]` -/
def P7927428107241575764.Spec : Prop :=
  ∀ n, P7927428107241575764.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P5617792526308146105

`∑{d}[n+1, A061019(#)*A215947((n+1)/#)]`
-/

namespace A065745.P5617792526308146105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A215947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065745.P5617792526308146105

namespace A065745

/-- `∑{d}[n+1, A061019(#)*A215947((n+1)/#)]` -/
def P5617792526308146105.Spec : Prop :=
  ∀ n, P5617792526308146105.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P6158598683924188856

`∑{d}[n+1, A086831(#)*A383795((n+1)/#)]`
-/

namespace A065745.P6158598683924188856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086831 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065745.P6158598683924188856

namespace A065745

/-- `∑{d}[n+1, A086831(#)*A383795((n+1)/#)]` -/
def P6158598683924188856.Spec : Prop :=
  ∀ n, P6158598683924188856.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P7905846255423739215

`∑{d}[n+1, A035316(#)*A130706((n+1)/#-1)]`
-/

namespace A065745.P7905846255423739215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A065745.P7905846255423739215

namespace A065745

/-- `∑{d}[n+1, A035316(#)*A130706((n+1)/#-1)]` -/
def P7905846255423739215.Spec : Prop :=
  ∀ n, P7905846255423739215.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P13403125739843474811

`∑{d}[n+1, A099894(#-1)*A360159((n+1)/#)]`
-/

namespace A065745.P13403125739843474811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A360159 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065745.P13403125739843474811

namespace A065745

/-- `∑{d}[n+1, A099894(#-1)*A360159((n+1)/#)]` -/
def P13403125739843474811.Spec : Prop :=
  ∀ n, P13403125739843474811.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P3842969623939755203

`∑{d}[n+1, A061020(#)*A257088((n+1)/#)]`
-/

namespace A065745.P3842969623939755203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A257088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065745.P3842969623939755203

namespace A065745

/-- `∑{d}[n+1, A061020(#)*A257088((n+1)/#)]` -/
def P3842969623939755203.Spec : Prop :=
  ∀ n, P3842969623939755203.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P14804186966347306056

`A004277(A035316(n+1))-A300853(n+1)`
-/

namespace A065745.P14804186966347306056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A035316 (n + 1)).toNat - A300853 (n + 1)

end

end A065745.P14804186966347306056

namespace A065745

/-- `A004277(A035316(n+1))-A300853(n+1)` -/
def P14804186966347306056.Spec : Prop :=
  ∀ n, P14804186966347306056.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P406711666253404356

`A004277(∑{d}[A000188(n+1), #²])-A300853(n+1)`
-/

namespace A065745.P406711666253404356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2) - A300853 (n + 1)

end

end A065745.P406711666253404356

namespace A065745

/-- `A004277(∑{d}[A000188(n+1), #²])-A300853(n+1)` -/
def P406711666253404356.Spec : Prop :=
  ∀ n, P406711666253404356.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P5686950394401785604

`A004277(n+1-A326058(n+1))-A300853(n+1)`
-/

namespace A065745.P5686950394401785604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n + 1 : ℤ) - A326058 (n + 1)).toNat - A300853 (n + 1)

end

end A065745.P5686950394401785604

namespace A065745

/-- `A004277(n+1-A326058(n+1))-A300853(n+1)` -/
def P5686950394401785604.Spec : Prop :=
  ∀ n, P5686950394401785604.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P12946083730408209774

`A004277(A000203(n+1)-A285309(n+1))-A300853(n+1)`
-/

namespace A065745.P12946083730408209774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000203 (n + 1) - A285309 (n + 1)).toNat - A300853 (n + 1)

end

end A065745.P12946083730408209774

namespace A065745

/-- `A004277(A000203(n+1)-A285309(n+1))-A300853(n+1)` -/
def P12946083730408209774.Spec : Prop :=
  ∀ n, P12946083730408209774.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P6522610418308219733

`A004277(A001065(n+1)-A326059(n+1))-A300853(n+1)`
-/

namespace A065745.P6522610418308219733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001065 (n + 1) - A326059 (n + 1)).toNat - A300853 (n + 1)

end

end A065745.P6522610418308219733

namespace A065745

/-- `A004277(A001065(n+1)-A326059(n+1))-A300853(n+1)` -/
def P6522610418308219733.Spec : Prop :=
  ∀ n, P6522610418308219733.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P4246092937679656824

`A004277(A088580(n+1)-(A285309(n+1)+1))-A300853(n+1)`
-/

namespace A065745.P4246092937679656824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088580 (n + 1) - (A285309 (n + 1) + 1)).toNat - A300853 (n + 1)

end

end A065745.P4246092937679656824

namespace A065745

/-- `A004277(A088580(n+1)-(A285309(n+1)+1))-A300853(n+1)` -/
def P4246092937679656824.Spec : Prop :=
  ∀ n, P4246092937679656824.a n = A065745 (n + 1)

end A065745

/-! ## A065745.P15824308847233315073

`A004277(A001065(n+1)+1+n-A285309(n+1))-A300853(n+1)`
-/

namespace A065745.P15824308847233315073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001065 (n + 1) + 1 + (n : ℤ) - A285309 (n + 1)).toNat - A300853 (n + 1)

end

end A065745.P15824308847233315073

namespace A065745

/-- `A004277(A001065(n+1)+1+n-A285309(n+1))-A300853(n+1)` -/
def P15824308847233315073.Spec : Prop :=
  ∀ n, P15824308847233315073.a n = A065745 (n + 1)

end A065745

/-!
# A065746: Number of divisors of squares of all true powers of primes: a(n) = A000005(A025475(n+1)^2).

The programs for A065746, there is no canonical definition to state claims against.
-/

/-! ## A065746.P12704341131360835076

`A000005(A025475(n+2)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065746.P12704341131360835076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025475 (n + 2) ^ 2).toNat

end

end A065746.P12704341131360835076

/-! ## A065746.P18024441403691480810

`2*A025477(n+2)+1`
-/

namespace A065746.P18024441403691480810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025477 (n + 2) + 1

end

end A065746.P18024441403691480810

/-! ## A065746.P2912855315588112559

`A005408(A025477(n+2))`
-/

namespace A065746.P2912855315588112559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A025477 (n + 2)).toNat

end

end A065746.P2912855315588112559

/-! ## A065746.P12697256977117308645

`A062545(A025477(n+2)-1)`
-/

namespace A065746.P12697256977117308645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A025477 (n + 2) - 1).toNat

end

end A065746.P12697256977117308645

/-! ## A065746.P18321917184615556775

`A000027(A025477(n+2)+A025477(n+2)+1)`
-/

namespace A065746.P18321917184615556775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A025477 (n + 2) + (A025477 (n + 2) + 1)).toNat

end

end A065746.P18321917184615556775

/-! ## A065746.P18108722866097790373

`A254667(A025477(n+2)+1)+A025477(n+2)`
-/

namespace A065746.P18108722866097790373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A025477 (n + 2) + 1).toNat + A025477 (n + 2)

end

end A065746.P18108722866097790373

/-! ## A065746.P12376365258130744629

`2*A000005(A053211(n+1))+1`
-/

namespace A065746.P12376365258130744629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A053211 (n + 1)).toNat + 1

end

end A065746.P12376365258130744629

/-! ## A065746.P17950479762718701684

`2*A000005(A134612(n+1))-1`
-/

namespace A065746.P17950479762718701684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A134612 (n + 1)).toNat - 1

end

end A065746.P17950479762718701684

/-! ## A065746.P3174921172323411854

`A004273(A000005(A134612(n+1)))`
-/

namespace A065746.P3174921172323411854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000005 (A134612 (n + 1)).toNat).toNat

end

end A065746.P3174921172323411854

/-! ## A065746.P18039171659501596569

`A001650(A000005(A134612(n+1))²)`
-/

namespace A065746.P18039171659501596569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A000005 (A134612 (n + 1)).toNat ^ 2).toNat

end

end A065746.P18039171659501596569

/-!
# A065749: Numbers k such that the pair (prime(k) - k)*(prime(k) + k) +- 1 is a twin prime.

The programs for A065749, there is no canonical definition to state claims against.
-/

/-! ## A065749.P7558453062672057054

`A140550(A001222((n+3)!))`
-/

namespace A065749.P7558453062672057054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140550 (A001222 (Nat.factorial (n + 3))).toNat

end

end A065749.P7558453062672057054

/-! ## A065749.P646427563285574316

`A000040(∑[A219796(n+1)%14])`
-/

namespace A065749.P646427563285574316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219796 (n + 1)) 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065749.P646427563285574316

/-!
# A065750: Smaller term of a pair of twin primes of form (prime(i) - i)*(prime(i) + i) +- 1; the i is from A065749.

The programs for A065750, there is no canonical definition to state claims against.
-/

/-! ## A065750.P4228372153010872366

`(A000040(A065749(n+1))-A065749(n+1))*(A000040(A065749(n+1))+A065749(n+1))-1`
-/

namespace A065750.P4228372153010872366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (A065749 (n + 1)).toNat - A065749 (n + 1)) * (A000040 (A065749 (n + 1)).toNat + A065749 (n + 1)) - 1

end

end A065750.P4228372153010872366

/-!
# A065751: Numbers whose decimal representations consist of nested and /or concatenated ordered pairs 0-9, 1-8, 2-7, 3-6 and 4-5.

The programs for A065751, there is no canonical definition to state claims against.
-/

/-! ## A065751.P4543079843512709208

`A284811(∑[A267338(n+1)!])`
-/

namespace A065751.P4543079843512709208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A267338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284811 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065751.P4543079843512709208

/-! ## A065751.P12610029488733074748

`A284811(∑[A277945(n+1)!])`
-/

namespace A065751.P12610029488733074748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A277945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284811 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065751.P12610029488733074748

/-!
# A065753: Second column of A065747.

The programs for A065753, there is no canonical definition to state claims against.
-/

/-! ## A065753.P5428481254910089667

`A065747((n+1)²+2)`
-/

namespace A065753.P5428481254910089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065747 ((n + 1) ^ 2 + 2)

end

end A065753.P5428481254910089667

/-!
# A065754: Second column of A065748.

The programs for A065754, there is no canonical definition to state claims against.
-/

/-! ## A065754.P12239006656179053158

`A065748(A143689(n+1)+1)`
-/

namespace A065754.P12239006656179053158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065748 (A143689 (n + 1) + 1).toNat

end

end A065754.P12239006656179053158

/-!
# A065756: Generalization of the Genocchi numbers given by the Gandhi polynomials A(n+1,r) = r^5 A(n, r + 1) - (r - 1)^5 A(n, r); A(1,r) = r^5 - (r-1)^5.

The programs for A065756, there is no canonical definition to state claims against.
-/

/-! ## A065756.P14372414949779607178

`A065755(C(2*n, 2)+1)`
-/

namespace A065756.P14372414949779607178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065755 (Nat.choose (2 * n) 2 + 1)

end

end A065756.P14372414949779607178

/-! ## A065756.P16499177830243209644

`A065755(A130883(n))`
-/

namespace A065756.P16499177830243209644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065755 (A130883 n).toNat

end

end A065756.P16499177830243209644

/-! ## A065756.P11013191159011215517

`A065755(A000384(n)+1)`
-/

namespace A065756.P11013191159011215517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065755 (A000384 n + 1).toNat

end

end A065756.P11013191159011215517

/-!
# A065757: Second column of A065755.

The programs for A065757, there is no canonical definition to state claims against.
-/

/-! ## A065757.P3138694291051753431

`A065755(A033816(n))`
-/

namespace A065757.P3138694291051753431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065755 (A033816 n).toNat

end

end A065757.P3138694291051753431

/-! ## A065757.P7787237488840395571

`A065755(A130883(n+1)+1)`
-/

namespace A065757.P7787237488840395571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065755 (A130883 (n + 1) + 1).toNat

end

end A065757.P7787237488840395571

/-! ## A065757.P762700232399966884

`A065755(A000384(n+1)+2)`
-/

namespace A065757.P762700232399966884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065755 (A000384 (n + 1) + 2).toNat

end

end A065757.P762700232399966884

/-!
# A065760: Concatenation of increasing number of alternating digits in base 2, starting with 1.

The programs for A065760, there is no canonical definition to state claims against.
-/

/-! ## A065760.P3055219246839443037

`A290682(∑[n]+n)-A065761(n+1)`
-/

namespace A065760.P3055219246839443037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A065761 (n + 1)

end

end A065760.P3055219246839443037

/-! ## A065760.P15056364786585584295

`∩[A037013(n+1), A175061(n+1)]`
-/

namespace A065760.P15056364786585584295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065760.P15056364786585584295

/-!
# A065761: Concatenation of increasing number of alternating digits in base 2, starting with 0.

The programs for A065761, there is no canonical definition to state claims against.
-/

/-! ## A065761.P15191081795142100366

`A126883(n+1)-A065760(n+1)`
-/

namespace A065761.P15191081795142100366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126883 (n + 1) - A065760 (n + 1)

end

end A065761.P15191081795142100366

/-! ## A065761.P11512790430124685992

`A290682(∑[n]+n)-A065760(n+1)`
-/

namespace A065761.P11512790430124685992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A065760 (n + 1)

end

end A065761.P11512790430124685992

/-!
# A065762: a(n) = (sum of first n primes)^2 + sum of (squares of first n primes).

The programs for A065762, the canonical program `A065762.P7191930492121283132` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065762 has offset 1).

The definition of A065762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065762.P7191930492121283132

`A007504(n+1)²+A024450(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A065762

/-- `A007504(n+1)²+A024450(n+1)` -/
def P7191930492121283132.Spec : Prop :=
  ∀ n, P7191930492121283132.a n = A065762 (n + 1)

theorem P7191930492121283132.correct : P7191930492121283132.Spec := by
  intro n
  simp only [A065762, Nat.add_sub_cancel]

end A065762

/-! ## A065762.P12823965630730403195

`2*A357251(n+1)`
-/

namespace A065762.P12823965630730403195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A357251 (n + 1)

end

end A065762.P12823965630730403195

namespace A065762

/-- `2*A357251(n+1)` -/
def P12823965630730403195.Spec : Prop :=
  ∀ n, P12823965630730403195.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P8700052755715726904

`∑[2*A143215(n+1)]`
-/

namespace A065762.P8700052755715726904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065762.P8700052755715726904

namespace A065762

/-- `∑[2*A143215(n+1)]` -/
def P8700052755715726904.Spec : Prop :=
  ∀ n, P8700052755715726904.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P7762196775243896403

`A024450(n+1)+∑[A034960(n+1)]`
-/

namespace A065762.P7762196775243896403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065762.P7762196775243896403

namespace A065762

/-- `A024450(n+1)+∑[A034960(n+1)]` -/
def P7762196775243896403.Spec : Prop :=
  ∀ n, P7762196775243896403.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P10819772338400893575

`∑[A007504(n+1)*A100484(n+1)]`
-/

namespace A065762.P10819772338400893575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065762.P10819772338400893575

namespace A065762

/-- `∑[A007504(n+1)*A100484(n+1)]` -/
def P10819772338400893575.Spec : Prop :=
  ∀ n, P10819772338400893575.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P13258569072715586170

`∑[A001248(n+1)+Δ[A007504(n)²]]`
-/

namespace A065762.P13258569072715586170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065762.P13258569072715586170

namespace A065762

/-- `∑[A001248(n+1)+Δ[A007504(n)²]]` -/
def P13258569072715586170.Spec : Prop :=
  ∀ n, P13258569072715586170.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P7374673286466721353

`2*(A024450(n+1)+A024447(n+1))`
-/

namespace A065762.P7374673286466721353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024450 (n + 1) + A024447 (n + 1))

end

end A065762.P7374673286466721353

namespace A065762

/-- `2*(A024450(n+1)+A024447(n+1))` -/
def P7374673286466721353.Spec : Prop :=
  ∀ n, P7374673286466721353.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P17525663113797957313

`A065595(n+1)+2*A024450(n+1)`
-/

namespace A065762.P17525663113797957313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065595 (n + 1) + 2 * A024450 (n + 1)

end

end A065762.P17525663113797957313

namespace A065762

/-- `A065595(n+1)+2*A024450(n+1)` -/
def P17525663113797957313.Spec : Prop :=
  ∀ n, P17525663113797957313.a n = A065762 (n + 1)

theorem P17525663113797957313.correct : P17525663113797957313.Spec := by
  intro n
  simp only [A065762, Nat.add_sub_cancel, A065762.P17525663113797957313.a, A065762.P7191930492121283132.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A024450, A024450.P13748385754044755097.f1, A024450.P13748385754044755097.a, A065595, A065595.P17601801696022809177.a, A001248, A001248.P16278241061688229202.a, A182986, A182986.P2625431067462217415.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065762

/-! ## A065762.P9609912249129300415

`∑[A000040(n+1)*∑[A100484(n+1)]]`
-/

namespace A065762.P9609912249129300415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065762.P9609912249129300415

namespace A065762

/-- `∑[A000040(n+1)*∑[A100484(n+1)]]` -/
def P9609912249129300415.Spec : Prop :=
  ∀ n, P9609912249129300415.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P8046801882535999892

`∑[2*(A034956(n+1)+A008837(n+1))]`
-/

namespace A065762.P8046801882535999892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034956 (n + 1) + A008837 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065762.P8046801882535999892

namespace A065762

/-- `∑[2*(A034956(n+1)+A008837(n+1))]` -/
def P8046801882535999892.Spec : Prop :=
  ∀ n, P8046801882535999892.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P15304610995680121469

`2*∑[A000040(n+1)*A007504(n+1)]`
-/

namespace A065762.P15304610995680121469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065762.P15304610995680121469

namespace A065762

/-- `2*∑[A000040(n+1)*A007504(n+1)]` -/
def P15304610995680121469.Spec : Prop :=
  ∀ n, P15304610995680121469.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P1466325806430239015

`∑[A001248(n+1)]+∑[A000040(n+1)]²`
-/

namespace A065762.P1466325806430239015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A065762.P1466325806430239015

namespace A065762

/-- `∑[A001248(n+1)]+∑[A000040(n+1)]²` -/
def P1466325806430239015.Spec : Prop :=
  ∀ n, P1466325806430239015.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P11754771173055313283

`A024447(n+1)+A357251(n+1)+A024450(n+1)`
-/

namespace A065762.P11754771173055313283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + (A357251 (n + 1) + A024450 (n + 1))

end

end A065762.P11754771173055313283

namespace A065762

/-- `A024447(n+1)+A357251(n+1)+A024450(n+1)` -/
def P11754771173055313283.Spec : Prop :=
  ∀ n, P11754771173055313283.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P7211152271782522497

`A357251(n+1)+A357251(n+2)-A143215(n+2)`
-/

namespace A065762.P7211152271782522497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357251 (n + 1) + (A357251 (n + 2) - A143215 (n + 2))

end

end A065762.P7211152271782522497

namespace A065762

/-- `A357251(n+1)+A357251(n+2)-A143215(n+2)` -/
def P7211152271782522497.Spec : Prop :=
  ∀ n, P7211152271782522497.a n = A065762 (n + 1)

end A065762

/-! ## A065762.P2140951983501436532

`∑[2*A301707(A000040(n+1))]`
-/

namespace A065762.P2140951983501436532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301707 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065762.P2140951983501436532

namespace A065762

/-- `∑[2*A301707(A000040(n+1))]` -/
def P2140951983501436532.Spec : Prop :=
  ∀ n, P2140951983501436532.a n = A065762 (n + 1)

end A065762

/-!
# A065764: Sum of divisors of square numbers.

The programs for A065764, the canonical program `A065764.P4876672908639630041` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065764 has offset 1).

The definition of A065764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065764.P4876672908639630041

`A000203(A000290(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065764

/-- `A000203(A000290(n+1))` -/
def P4876672908639630041.Spec : Prop :=
  ∀ n, P4876672908639630041.a n = A065764 (n + 1)

theorem P4876672908639630041.correct : P4876672908639630041.Spec := by
  intro n
  simp only [A065764, Nat.add_sub_cancel]

end A065764

/-! ## A065764.P5131942106114810424

`∑{d}[n+1, A000082(#)]`
-/

namespace A065764.P5131942106114810424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d

end

end A065764.P5131942106114810424

namespace A065764

/-- `∑{d}[n+1, A000082(#)]` -/
def P5131942106114810424.Spec : Prop :=
  ∀ n, P5131942106114810424.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P15009805683451890751

`∑{d}[n+1, #*A001615(#)]`
-/

namespace A065764.P15009805683451890751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001615 d

end

end A065764.P15009805683451890751

namespace A065764

/-- `∑{d}[n+1, #*A001615(#)]` -/
def P15009805683451890751.Spec : Prop :=
  ∀ n, P15009805683451890751.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P10010543294021986007

`∑{d}[n+1, #*A034676((n+1)/#)]`
-/

namespace A065764.P10010543294021986007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P10010543294021986007

namespace A065764

/-- `∑{d}[n+1, #*A034676((n+1)/#)]` -/
def P10010543294021986007.Spec : Prop :=
  ∀ n, P10010543294021986007.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P2146102221805786029

`A086156(n+1)+A064987(n+1)`
-/

namespace A065764.P2146102221805786029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086156 (n + 1) + A064987 (n + 1)

end

end A065764.P2146102221805786029

namespace A065764

/-- `A086156(n+1)+A064987(n+1)` -/
def P2146102221805786029.Spec : Prop :=
  ∀ n, P2146102221805786029.a n = A065764 (n + 1)

theorem P2146102221805786029.correct : P2146102221805786029.Spec := by
  intro n
  simp only [A065764, Nat.add_sub_cancel, A065764.P2146102221805786029.a, A065764.P4876672908639630041.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000290, A000290.P12206242496348924484.a, A064987, A064987.P15308919020374608347.a, A086156, A086156.P3117505780503088973.a, A009194, A009194.P8274270202395757303.a, A009242, A009242.P11355656019912241994.a, A017665, A017665.P1720905539505039507.f1, A017665.P1720905539505039507.a, A017666, A017666.P11271370801176685649.f1, A017666.P11271370801176685649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065764

/-! ## A065764.P14112235400000235304

`A239668(n+1)+A074372(n+1)`
-/

namespace A065764.P14112235400000235304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239668 (n + 1) + A074372 (n + 1)

end

end A065764.P14112235400000235304

namespace A065764

/-- `A239668(n+1)+A074372(n+1)` -/
def P14112235400000235304.Spec : Prop :=
  ∀ n, P14112235400000235304.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P16407958352133024357

`A320059(n+1)+A000203(n+1)`
-/

namespace A065764.P16407958352133024357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320059 (n + 1) + A000203 (n + 1)

end

end A065764.P16407958352133024357

namespace A065764

/-- `A320059(n+1)+A000203(n+1)` -/
def P16407958352133024357.Spec : Prop :=
  ∀ n, P16407958352133024357.a n = A065764 (n + 1)

theorem P16407958352133024357.correct : P16407958352133024357.Spec := by
  intro n
  simp only [A065764, Nat.add_sub_cancel, A065764.P16407958352133024357.a, A065764.P4876672908639630041.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000290, A000290.P12206242496348924484.a, A320059, A320059.P12231139820511273363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065764

/-! ## A065764.P14595830078341060024

`A065765(n+1)-A195585(n+1)`
-/

namespace A065764.P14595830078341060024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065765 (n + 1) - A195585 (n + 1)

end

end A065764.P14595830078341060024

namespace A065764

/-- `A065765(n+1)-A195585(n+1)` -/
def P14595830078341060024.Spec : Prop :=
  ∀ n, P14595830078341060024.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P16491925011282594759

`A350071(n+1)*A350072(n+1)`
-/

namespace A065764.P16491925011282594759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350071 (n + 1) * A350072 (n + 1)

end

end A065764.P16491925011282594759

namespace A065764

/-- `A350071(n+1)*A350072(n+1)` -/
def P16491925011282594759.Spec : Prop :=
  ∀ n, P16491925011282594759.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P3283762038765282164

`A065827(n+1)/A057660(n+1)`
-/

namespace A065764.P3283762038765282164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065827 (n + 1) : ℚ) / (A057660 (n + 1) : ℚ)

end

end A065764.P3283762038765282164

namespace A065764

/-- `A065827(n+1)/A057660(n+1)` -/
def P3283762038765282164.Spec : Prop :=
  ∀ n, P3283762038765282164.a n = (A065764 (n + 1) : ℚ)

end A065764

/-! ## A065764.P714845877274425629

`∑{d}[n+1, A000290(#)*A048250((n+1)/#)]`
-/

namespace A065764.P714845877274425629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P714845877274425629

namespace A065764

/-- `∑{d}[n+1, A000290(#)*A048250((n+1)/#)]` -/
def P714845877274425629.Spec : Prop :=
  ∀ n, P714845877274425629.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P13747860778762601704

`∑{d}[n+1, A007913(#)*A065958((n+1)/#)]`
-/

namespace A065764.P13747860778762601704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d * A065958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P13747860778762601704

namespace A065764

/-- `∑{d}[n+1, A007913(#)*A065958((n+1)/#)]` -/
def P13747860778762601704.Spec : Prop :=
  ∀ n, P13747860778762601704.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P18257877277501746901

`∑{d}[n+1, A046692(#)*A065018((n+1)/#)]`
-/

namespace A065764.P18257877277501746901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A065018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P18257877277501746901

namespace A065764

/-- `∑{d}[n+1, A046692(#)*A065018((n+1)/#)]` -/
def P18257877277501746901.Spec : Prop :=
  ∀ n, P18257877277501746901.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P2785521613923481121

`∑{d}[n+1, A055615(#)*A072861((n+1)/#)]`
-/

namespace A065764.P2785521613923481121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A072861 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P2785521613923481121

namespace A065764

/-- `∑{d}[n+1, A055615(#)*A072861((n+1)/#)]` -/
def P2785521613923481121.Spec : Prop :=
  ∀ n, P2785521613923481121.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P1038526561218884183

`∑{d}[n+1, A000005(#)*A140697((n+1)/#)]`
-/

namespace A065764.P1038526561218884183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A140697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P1038526561218884183

namespace A065764

/-- `∑{d}[n+1, A000005(#)*A140697((n+1)/#)]` -/
def P1038526561218884183.Spec : Prop :=
  ∀ n, P1038526561218884183.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P9004314712650691982

`∑{d}[n+1, A050369(#)*A195735((n+1)/#)]`
-/

namespace A065764.P9004314712650691982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050369 d * A195735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P9004314712650691982

namespace A065764

/-- `∑{d}[n+1, A050369(#)*A195735((n+1)/#)]` -/
def P9004314712650691982.Spec : Prop :=
  ∀ n, P9004314712650691982.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P6588322555286290005

`∑{d}[n+1, A000203(#)*A254520((n+1)/#)]`
-/

namespace A065764.P6588322555286290005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P6588322555286290005

namespace A065764

/-- `∑{d}[n+1, A000203(#)*A254520((n+1)/#)]` -/
def P6588322555286290005.Spec : Prop :=
  ∀ n, P6588322555286290005.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P16063938177270370048

`∑{d}[n+1, A007434(#)*A319132((n+1)/#)]`
-/

namespace A065764.P16063938177270370048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P16063938177270370048

namespace A065764

/-- `∑{d}[n+1, A007434(#)*A319132((n+1)/#)]` -/
def P16063938177270370048.Spec : Prop :=
  ∀ n, P16063938177270370048.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P16628601434145023361

`∑{d}[n+1, A002618(#)*A357938((n+1)/#)]`
-/

namespace A065764.P16628601434145023361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P16628601434145023361

namespace A065764

/-- `∑{d}[n+1, A002618(#)*A357938((n+1)/#)]` -/
def P16628601434145023361.Spec : Prop :=
  ∀ n, P16628601434145023361.a n = A065764 (n + 1)

end A065764

/-! ## A065764.P8918063057884755647

`∑{d}[n+1, A091519(#)*A300894((n+1)/#)]`
-/

namespace A065764.P8918063057884755647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A300894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P8918063057884755647

namespace A065764

/-- `∑{d}[n+1, A091519(#)*A300894((n+1)/#)]` -/
def P8918063057884755647.Spec : Prop :=
  ∀ n, P8918063057884755647.a n = A065764 (n + 1)

end A065764

/-!
# A065765: Sum of divisors of twice square numbers.

The programs for A065765, the canonical program `A065765.P16091621034741371397` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065765 has offset 1).

The definition of A065765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065765.P13226090555884816274

`3*A065766(n+1)`
-/

namespace A065765.P13226090555884816274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A065766 (n + 1)

end

end A065765.P13226090555884816274

namespace A065765

/-- `3*A065766(n+1)` -/
def P13226090555884816274.Spec : Prop :=
  ∀ n, P13226090555884816274.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P16091621034741371397

`A000203(2*A000290(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065765

/-- `A000203(2*A000290(n+1))` -/
def P16091621034741371397.Spec : Prop :=
  ∀ n, P16091621034741371397.a n = A065765 (n + 1)

theorem P16091621034741371397.correct : P16091621034741371397.Spec := by
  intro n
  simp only [A065765, Nat.add_sub_cancel]

end A065765

/-! ## A065765.P15311003886774525712

`A195585(n+1)+A065764(n+1)`
-/

namespace A065765.P15311003886774525712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195585 (n + 1) + A065764 (n + 1)

end

end A065765.P15311003886774525712

namespace A065765

/-- `A195585(n+1)+A065764(n+1)` -/
def P15311003886774525712.Spec : Prop :=
  ∀ n, P15311003886774525712.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P17926192098564469461

`∑{d}[n+1, A033428(#)*A206787((n+1)/#)]`
-/

namespace A065765.P17926192098564469461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033428 d * A206787 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065765.P17926192098564469461

namespace A065765

/-- `∑{d}[n+1, A033428(#)*A206787((n+1)/#)]` -/
def P17926192098564469461.Spec : Prop :=
  ∀ n, P17926192098564469461.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P1383312468566579762

`A152677(A003151(n+1))`
-/

namespace A065765.P1383312468566579762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (A003151 (n + 1)).toNat

end

end A065765.P1383312468566579762

namespace A065765

/-- `A152677(A003151(n+1))` -/
def P1383312468566579762.Spec : Prop :=
  ∀ n, P1383312468566579762.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P9983893122663423112

`∑{d}[2*(n+1)², #]`
-/

namespace A065765.P9983893122663423112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A065765.P9983893122663423112

namespace A065765

/-- `∑{d}[2*(n+1)², #]` -/
def P9983893122663423112.Spec : Prop :=
  ∀ n, (P9983893122663423112.a n : ℤ) = A065765 (n + 1)

end A065765

/-! ## A065765.P17808735170678366084

`A195585(n+1)+A000203((n+1)²)`
-/

namespace A065765.P17808735170678366084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195585 (n + 1) + A000203 ((n + 1) ^ 2)

end

end A065765.P17808735170678366084

namespace A065765

/-- `A195585(n+1)+A000203((n+1)²)` -/
def P17808735170678366084.Spec : Prop :=
  ∀ n, P17808735170678366084.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P16865566608491207449

`A000203(2*(n+1)²)`
-/

namespace A065765.P16865566608491207449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1) ^ 2)

end

end A065765.P16865566608491207449

namespace A065765

/-- `A000203(2*(n+1)²)` -/
def P16865566608491207449.Spec : Prop :=
  ∀ n, P16865566608491207449.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P1371686738065498197

`lcm(3, A000203((n+1)*2*(n+1)))`
-/

namespace A065765.P1371686738065498197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A000203 ((n + 1) * (2 * (n + 1))))

end

end A065765.P1371686738065498197

namespace A065765

/-- `lcm(3, A000203((n+1)*2*(n+1)))` -/
def P1371686738065498197.Spec : Prop :=
  ∀ n, (P1371686738065498197.a n : ℤ) = A065765 (n + 1)

end A065765

/-! ## A065765.P2705954746041156835

`or(1, A000203(2*(n+1)*(n+1)))`
-/

namespace A065765.P2705954746041156835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000203 (2 * (n + 1) * (n + 1)))

end

end A065765.P2705954746041156835

namespace A065765

/-- `or(1, A000203(2*(n+1)*(n+1)))` -/
def P2705954746041156835.Spec : Prop :=
  ∀ n, P2705954746041156835.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P4333050330137443590

`abs(A000203(∑[4*n+2])-1)+1`
-/

namespace A065765.P4333050330137443590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (∑ j ∈ Finset.range (n + 1), f1 j) - 1| + 1

end

end A065765.P4333050330137443590

namespace A065765

/-- `abs(A000203(∑[4*n+2])-1)+1` -/
def P4333050330137443590.Spec : Prop :=
  ∀ n, P4333050330137443590.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P3653351847576681008

`Δ[A000203(n*2*n)+a(n-1)]` with `a(0)=0`
-/

namespace A065765.P3653351847576681008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000203 (n * (2 * n)) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065765.P3653351847576681008

namespace A065765

/-- `Δ[A000203(n*2*n)+a(n-1)]` -/
def P3653351847576681008.Spec : Prop :=
  ∀ n, P3653351847576681008.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P13753608628328708415

`A000203(∑[2*(2*n+1)])+C(2, n+3)`
-/

namespace A065765.P13753608628328708415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.choose 2 (n + 3) : ℤ)

end

end A065765.P13753608628328708415

namespace A065765

/-- `A000203(∑[2*(2*n+1)])+C(2, n+3)` -/
def P13753608628328708415.Spec : Prop :=
  ∀ n, P13753608628328708415.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P6693380838381554493

`gcd(n, n+1)*A000203(2*∑[2*n+1])`
-/

namespace A065765.P6693380838381554493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A000203 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A065765.P6693380838381554493

namespace A065765

/-- `gcd(n, n+1)*A000203(2*∑[2*n+1])` -/
def P6693380838381554493.Spec : Prop :=
  ∀ n, P6693380838381554493.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P12335922582189099911

`A000203(A001105(n+1))%A071238(n+2)`
-/

namespace A065765.P12335922582189099911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A001105 (n + 1)).toNat) (A071238 (n + 2))

end

end A065765.P12335922582189099911

namespace A065765

/-- `A000203(A001105(n+1))%A071238(n+2)` -/
def P12335922582189099911.Spec : Prop :=
  ∀ n, P12335922582189099911.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P11492211653467140958

`A062731((n+1)²)`
-/

namespace A065765.P11492211653467140958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 ((n + 1) ^ 2)

end

end A065765.P11492211653467140958

namespace A065765

/-- `A062731((n+1)²)` -/
def P11492211653467140958.Spec : Prop :=
  ∀ n, P11492211653467140958.a n = A065765 (n + 1)

end A065765

/-! ## A065765.P3465961228492905977

`A016945(A097022(n+1))`
-/

namespace A065765.P3465961228492905977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A097022 (n + 1)).toNat

end

end A065765.P3465961228492905977

namespace A065765

/-- `A016945(A097022(n+1))` -/
def P3465961228492905977.Spec : Prop :=
  ∀ n, P3465961228492905977.a n = A065765 (n + 1)

end A065765

/-!
# A065766: Sum of divisors of twice a square number, divided by three.

The programs for A065766, the canonical program `A065766.P4585120731458497929` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065766 has offset 1).

The definition of A065766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065766.P4585120731458497929

`A065765(n+1)/3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065766

/-- `A065765(n+1)/3` -/
def P4585120731458497929.Spec : Prop :=
  ∀ n, P4585120731458497929.a n = (A065766 (n + 1) : ℚ)

end A065766

/-! ## A065766.P13499269516682281955

`A000203(2*A000290(n+1))/3`
-/

namespace A065766.P13499269516682281955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * A000290 (n + 1)).toNat : ℚ) / 3

end

end A065766.P13499269516682281955

namespace A065766

/-- `A000203(2*A000290(n+1))/3` -/
def P13499269516682281955.Spec : Prop :=
  ∀ n, P13499269516682281955.a n = (A065766 (n + 1) : ℚ)

end A065766

/-! ## A065766.P10604667789517187124

`2*A097022(n+1)+1`
-/

namespace A065766.P10604667789517187124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097022 (n + 1) + 1

end

end A065766.P10604667789517187124

namespace A065766

/-- `2*A097022(n+1)+1` -/
def P10604667789517187124.Spec : Prop :=
  ∀ n, P10604667789517187124.a n = A065766 (n + 1)

end A065766

/-! ## A065766.P16719258042446597678

`∑{d}[n+1, #*A159634(#)]`
-/

namespace A065766.P16719258042446597678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A159634 d

end

end A065766.P16719258042446597678

namespace A065766

/-- `∑{d}[n+1, #*A159634(#)]` -/
def P16719258042446597678.Spec : Prop :=
  ∀ n, P16719258042446597678.a n = A065766 (n + 1)

end A065766

/-! ## A065766.P7401541108624753489

`(A195585(n+1)+A065764(n+1))/3`
-/

namespace A065766.P7401541108624753489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195585 (n + 1) + A065764 (n + 1) : ℚ) / 3

end

end A065766.P7401541108624753489

namespace A065766

/-- `(A195585(n+1)+A065764(n+1))/3` -/
def P7401541108624753489.Spec : Prop :=
  ∀ n, P7401541108624753489.a n = (A065766 (n + 1) : ℚ)

end A065766

/-! ## A065766.P17557242198618442581

`∑{d}[n+1, A001511(#)*A070732((n+1)/#)]`
-/

namespace A065766.P17557242198618442581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A070732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065766.P17557242198618442581

namespace A065766

/-- `∑{d}[n+1, A001511(#)*A070732((n+1)/#)]` -/
def P17557242198618442581.Spec : Prop :=
  ∀ n, P17557242198618442581.a n = A065766 (n + 1)

end A065766

/-! ## A065766.P243902785094663991

`∑{d}[n+1, A000290(#)*A206787((n+1)/#)]`
-/

namespace A065766.P243902785094663991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A206787 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065766.P243902785094663991

namespace A065766

/-- `∑{d}[n+1, A000290(#)*A206787((n+1)/#)]` -/
def P243902785094663991.Spec : Prop :=
  ∀ n, P243902785094663991.a n = A065766 (n + 1)

end A065766

/-! ## A065766.P5524496951355442181

`∑{d}[n+1, A055615(#)*A382123((n+1)/#)]`
-/

namespace A065766.P5524496951355442181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A382123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065766.P5524496951355442181

namespace A065766

/-- `∑{d}[n+1, A055615(#)*A382123((n+1)/#)]` -/
def P5524496951355442181.Spec : Prop :=
  ∀ n, P5524496951355442181.a n = A065766 (n + 1)

end A065766

/-! ## A065766.P6899913588852474098

`∑{d}[A000265(n+1)², #*A296306(n+1)]`
-/

namespace A065766.P6899913588852474098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A296306 (n + 1)

end

end A065766.P6899913588852474098

namespace A065766

/-- `∑{d}[A000265(n+1)², #*A296306(n+1)]` -/
def P6899913588852474098.Spec : Prop :=
  ∀ n, P6899913588852474098.a n = A065766 (n + 1)

end A065766

/-! ## A065766.P2654443614278146938

`∑{d}[2*(n+1)², #/3]`
-/

namespace A065766.P2654443614278146938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 3

end

end A065766.P2654443614278146938

namespace A065766

/-- `∑{d}[2*(n+1)², #/3]` -/
def P2654443614278146938.Spec : Prop :=
  ∀ n, P2654443614278146938.a n = (A065766 (n + 1) : ℚ)

end A065766

/-! ## A065766.P17856201493270788303

`∑{d}[∑[2*(2*n+1)], #]/3`
-/

namespace A065766.P17856201493270788303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 3

end

end A065766.P17856201493270788303

namespace A065766

/-- `∑{d}[∑[2*(2*n+1)], #]/3` -/
def P17856201493270788303.Spec : Prop :=
  ∀ n, P17856201493270788303.a n = (A065766 (n + 1) : ℚ)

end A065766

/-! ## A065766.P3126804643391086183

`A000203(2*(n+1)²)/3`
-/

namespace A065766.P3126804643391086183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * (n + 1) ^ 2) : ℚ) / 3

end

end A065766.P3126804643391086183

namespace A065766

/-- `A000203(2*(n+1)²)/3` -/
def P3126804643391086183.Spec : Prop :=
  ∀ n, P3126804643391086183.a n = (A065766 (n + 1) : ℚ)

end A065766

/-! ## A065766.P17941195605731636174

`A062731((n+1)²)/3`
-/

namespace A065766.P17941195605731636174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062731 ((n + 1) ^ 2) : ℚ) / 3

end

end A065766.P17941195605731636174

namespace A065766

/-- `A062731((n+1)²)/3` -/
def P17941195605731636174.Spec : Prop :=
  ∀ n, P17941195605731636174.a n = (A065766 (n + 1) : ℚ)

end A065766

/-! ## A065766.P14338724233914220627

`A223134(A097022(n+1))`
-/

namespace A065766.P14338724233914220627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A097022 (n + 1)).toNat

end

end A065766.P14338724233914220627

namespace A065766

/-- `A223134(A097022(n+1))` -/
def P14338724233914220627.Spec : Prop :=
  ∀ n, P14338724233914220627.a n = A065766 (n + 1)

end A065766

/-!
# A065768: Numbers that are sums of divisors of the odd squares; Intersection of A065764 and A065766, written in ascending order and duplicates removed.

The programs for A065768, the canonical program `A065768.P10804919857722987854` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065768 has offset 1).

The definition of A065768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065768.P10804919857722987854

`∩[2*n+1, A274790(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065768

/-- `∩[2*n+1, A274790(n+1)]` -/
def P10804919857722987854.Spec : Prop :=
  ∀ n, (P10804919857722987854.a n : ℤ) = A065768 (n + 1)

theorem P10804919857722987854.correct : P10804919857722987854.Spec := by
  intro n
  simp only [A065768, Nat.add_sub_cancel]

end A065768

/-! ## A065768.P7597710143077869154

`∩[A274790(n+1), A284884(n+1)]`
-/

namespace A065768.P7597710143077869154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065768.P7597710143077869154

namespace A065768

/-- `∩[A274790(n+1), A284884(n+1)]` -/
def P7597710143077869154.Spec : Prop :=
  ∀ n, (P7597710143077869154.a n : ℤ) = A065768 (n + 1)

end A065768

/-! ## A065768.P12085930386260222260

`record[A093178(A274790(n+1))]`
-/

namespace A065768.P12085930386260222260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A274790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065768.P12085930386260222260

namespace A065768

/-- `record[A093178(A274790(n+1))]` -/
def P12085930386260222260.Spec : Prop :=
  ∀ n, P12085930386260222260.a n = A065768 (n + 1)

end A065768

/-! ## A065768.P2220438865829131130

`∩[A274790(n+1), A004273(n)]`
-/

namespace A065768.P2220438865829131130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065768.P2220438865829131130

namespace A065768

/-- `∩[A274790(n+1), A004273(n)]` -/
def P2220438865829131130.Spec : Prop :=
  ∀ n, (P2220438865829131130.a n : ℤ) = A065768 (n + 1)

end A065768

/-! ## A065768.P2527705108320770186

`∩[A274790(n+1), A004274(n)]`
-/

namespace A065768.P2527705108320770186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065768.P2527705108320770186

namespace A065768

/-- `∩[A274790(n+1), A004274(n)]` -/
def P2527705108320770186.Spec : Prop :=
  ∀ n, (P2527705108320770186.a n : ℤ) = A065768 (n + 1)

end A065768

/-! ## A065768.P5631029486647234973

`∩[A274790(n+1), A060747(n)]`
-/

namespace A065768.P5631029486647234973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065768.P5631029486647234973

namespace A065768

/-- `∩[A274790(n+1), A060747(n)]` -/
def P5631029486647234973.Spec : Prop :=
  ∀ n, (P5631029486647234973.a n : ℤ) = A065768 (n + 1)

end A065768

/-! ## A065768.P13461827779345273877

`∩[A274790(n+1), A163985(n)]`
-/

namespace A065768.P13461827779345273877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065768.P13461827779345273877

namespace A065768

/-- `∩[A274790(n+1), A163985(n)]` -/
def P13461827779345273877.Spec : Prop :=
  ∀ n, (P13461827779345273877.a n : ℤ) = A065768 (n + 1)

end A065768

/-! ## A065768.P1573152364734524165

`∩[A274790(n+1), A381822(n+1)]`
-/

namespace A065768.P1573152364734524165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065768.P1573152364734524165

namespace A065768

/-- `∩[A274790(n+1), A381822(n+1)]` -/
def P1573152364734524165.Spec : Prop :=
  ∀ n, (P1573152364734524165.a n : ℤ) = A065768 (n + 1)

end A065768

/-!
# A065769: Prime cascade: multiplicative with a(prime(m)^k) = prime(m-1) * prime(m)^(k-1).

The programs for A065769, the canonical program `A065769.P1917887200270396053` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065769 has offset 1).

The definition of A065769 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065769.P1917887200270396053

`A003557(n+1)*A064989(A007947(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A065769

/-- `A003557(n+1)*A064989(A007947(n+1))` -/
def P1917887200270396053.Spec : Prop :=
  ∀ n, P1917887200270396053.a n = A065769 (n + 1)

theorem P1917887200270396053.correct : P1917887200270396053.Spec := by
  intro n
  simp only [A065769, Nat.add_sub_cancel]

end A065769

/-! ## A065769.P16033777732343228483

`(n+1)*∏{p}[n+1, A064989(#)/#]`
-/

namespace A065769.P16033777732343228483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (A064989 p : ℚ) / (p : ℚ))

end

end A065769.P16033777732343228483

namespace A065769

/-- `(n+1)*∏{p}[n+1, A064989(#)/#]` -/
def P16033777732343228483.Spec : Prop :=
  ∀ n, P16033777732343228483.a n = (A065769 (n + 1) : ℚ)

end A065769

/-! ## A065769.P7887402129218501805

`(n+1)*∏{p}[n+1, A283463(#+1)/#]`
-/

namespace A065769.P7887402129218501805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (A283463 (p + 1) : ℚ) / (p : ℚ))

end

end A065769.P7887402129218501805

namespace A065769

/-- `(n+1)*∏{p}[n+1, A283463(#+1)/#]` -/
def P7887402129218501805.Spec : Prop :=
  ∀ n, P7887402129218501805.a n = (A065769 (n + 1) : ℚ)

end A065769

/-! ## A065769.P2355911333332637428

`A003557(n+1)*A064989(∏{p}[n+1, #])`
-/

namespace A065769.P2355911333332637428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A064989 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A065769.P2355911333332637428

namespace A065769

/-- `A003557(n+1)*A064989(∏{p}[n+1, #])` -/
def P2355911333332637428.Spec : Prop :=
  ∀ n, P2355911333332637428.a n = A065769 (n + 1)

end A065769

/-! ## A065769.P13901100493797876297

`(n+1)/A007947(n+1)*A007947(A064989(n+1))`
-/

namespace A065769.P13901100493797876297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) : ℚ) * (A007947 (A064989 (n + 1)).toNat : ℚ)

end

end A065769.P13901100493797876297

namespace A065769

/-- `(n+1)/A007947(n+1)*A007947(A064989(n+1))` -/
def P13901100493797876297.Spec : Prop :=
  ∀ n, P13901100493797876297.a n = (A065769 (n + 1) : ℚ)

end A065769

/-! ## A065769.P13747856274686151317

`A003557(n+1)/A064989(A003557(n+1))*A064989(n+1)`
-/

namespace A065769.P13747856274686151317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A064989 (A003557 (n + 1)).toNat : ℚ) * (A064989 (n + 1) : ℚ)

end

end A065769.P13747856274686151317

namespace A065769

/-- `A003557(n+1)/A064989(A003557(n+1))*A064989(n+1)` -/
def P13747856274686151317.Spec : Prop :=
  ∀ n, P13747856274686151317.a n = (A065769 (n + 1) : ℚ)

end A065769

/-! ## A065769.P16555986672962687423

`A052126(n+1)*A064989(n+1)/A325167(n+1)`
-/

namespace A065769.P16555986672962687423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) * A064989 (n + 1) : ℚ) / (A325167 (n + 1) : ℚ)

end

end A065769.P16555986672962687423

namespace A065769

/-- `A052126(n+1)*A064989(n+1)/A325167(n+1)` -/
def P16555986672962687423.Spec : Prop :=
  ∀ n, P16555986672962687423.a n = (A065769 (n + 1) : ℚ)

end A065769

/-!
# A065770: Number of prime cascades to reach 1, where a prime cascade (A065769) is multiplicative with a(p(m)^k) = p(m-1) * p(m)^(k-1).

The programs for A065770, the canonical program `A065770.P17894125099030950343` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065770 has offset 1).

The definition of A065770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065770.P17894125099030950343

`a(A065769(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A065770

/-- `a(A065769(n+1)-1)+1` -/
def P17894125099030950343.Spec : Prop :=
  ∀ n, (P17894125099030950343.a n : ℤ) = A065770 (n + 1)

theorem P17894125099030950343.correct : P17894125099030950343.Spec := by
  intro n
  simp only [A065770, Nat.add_sub_cancel]

end A065770

/-! ## A065770.P15890209286576617669

`a(A064989(A331170(n+1))-1)+1` with `a(0)=0`
-/

namespace A065770.P15890209286576617669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A064989 (A331170 (n + 1)).toNat - 1).toNat + 1

end

end A065770.P15890209286576617669

namespace A065770

/-- `a(A064989(A331170(n+1))-1)+1` -/
def P15890209286576617669.Spec : Prop :=
  ∀ n, (P15890209286576617669.a n : ℤ) = A065770 (n + 1)

end A065770

/-! ## A065770.P2043708926099411484

`A297113(n+1)-A324179(A328617(n+1))`
-/

namespace A065770.P2043708926099411484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) - A324179 (A328617 (n + 1)).toNat

end

end A065770.P2043708926099411484

namespace A065770

/-- `A297113(n+1)-A324179(A328617(n+1))` -/
def P2043708926099411484.Spec : Prop :=
  ∀ n, P2043708926099411484.a n = A065770 (n + 1)

end A065770

/-! ## A065770.P17271233334244619595

`A297113(A242415(n+1))-A324179(n+1)`
-/

namespace A065770.P17271233334244619595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A242415 (n + 1)).toNat - A324179 (n + 1)

end

end A065770.P17271233334244619595

namespace A065770

/-- `A297113(A242415(n+1))-A324179(n+1)` -/
def P17271233334244619595.Spec : Prop :=
  ∀ n, P17271233334244619595.a n = A065770 (n + 1)

end A065770

/-! ## A065770.P14527008778456517110

`A297113(A242419(n+1))-A324179(n+1)`
-/

namespace A065770.P14527008778456517110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A242419 (n + 1)).toNat - A324179 (n + 1)

end

end A065770.P14527008778456517110

namespace A065770

/-- `A297113(A242419(n+1))-A324179(n+1)` -/
def P14527008778456517110.Spec : Prop :=
  ∀ n, P14527008778456517110.a n = A065770 (n + 1)

end A065770

/-! ## A065770.P16749194309715703169

`A297167(A253560(n+1))-A324179(n+1)`
-/

namespace A065770.P16749194309715703169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (A253560 (n + 1)).toNat - A324179 (n + 1)

end

end A065770.P16749194309715703169

namespace A065770

/-- `A297167(A253560(n+1))-A324179(n+1)` -/
def P16749194309715703169.Spec : Prop :=
  ∀ n, P16749194309715703169.a n = A065770 (n + 1)

end A065770

/-! ## A065770.P18329379173226643466

`A325195(n+1)+A325169(n+1)`
-/

namespace A065770.P18329379173226643466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (n + 1) + A325169 (n + 1)

end

end A065770.P18329379173226643466

namespace A065770

/-- `A325195(n+1)+A325169(n+1)` -/
def P18329379173226643466.Spec : Prop :=
  ∀ n, P18329379173226643466.a n = A065770 (n + 1)

end A065770

/-! ## A065770.P2049455282350148930

`A325195(n+1)+ceil(sqrt(A069283((n+1)*3^(n%2))))`
-/

namespace A065770.P2049455282350148930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (n + 1) + ⌈Real.sqrt (A069283 ((n + 1) * 3 ^ (n % 2)) : ℝ)⌉

end

end A065770.P2049455282350148930

namespace A065770

/-- `A325195(n+1)+ceil(sqrt(A069283((n+1)*3^(n%2))))` -/
def P2049455282350148930.Spec : Prop :=
  ∀ n, P2049455282350148930.a n = A065770 (n + 1)

end A065770

/-! ## A065770.P17071798746784232963

`A061395(A367584(n+1))`
-/

namespace A065770.P17071798746784232963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A367584 (n + 1)).toNat

end

end A065770.P17071798746784232963

namespace A065770

/-- `A061395(A367584(n+1))` -/
def P17071798746784232963.Spec : Prop :=
  ∀ n, P17071798746784232963.a n = A065770 (n + 1)

end A065770

/-!
# A065771: Prime powers n such that both tau(n^2) and sigma(n^2) are composite numbers.

The programs for A065771, there is no canonical definition to state claims against.
-/

/-! ## A065771.P2633666322177003692

`record[A330741(A346484(n+1))]`
-/

namespace A065771.P2633666322177003692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (A346484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065771.P2633666322177003692

/-! ## A065771.P9675821879328624995

`filter[A346484(n+1), A010055(#)]`
-/

namespace A065771.P9675821879328624995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A065771.P9675821879328624995

/-! ## A065771.P13448409470934612916

`filter[A346484(n+1), A069513(#)]`
-/

namespace A065771.P13448409470934612916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A065771.P13448409470934612916

/-!
# A065772: Nontrivial prime powers k from A025475 such that tau(k^2) is prime but sigma(k^2) is a composite number.

The programs for A065772, there is no canonical definition to state claims against.
-/

/-! ## A065772.P10211635482869091519

`∩[A051676(n+1), A248963(n+1)]`
-/

namespace A065772.P10211635482869091519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065772.P10211635482869091519

/-!
# A065773: Number of divisors of square of true prime powers arising in A065405.

The programs for A065773, there is no canonical definition to state claims against.
-/

/-! ## A065773.P6257460499462498819

`filter[A275940(n+1), A171387(#)]`
-/

namespace A065773.P6257460499462498819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A065773.P6257460499462498819

/-! ## A065773.P14880958081766773229

`filter[A275940(n+1), A187074(#)]`
-/

namespace A065773.P14880958081766773229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A065773.P14880958081766773229

/-! ## A065773.P11574844150291205375

`filter[A275940(n+1), A246500(#)]`
-/

namespace A065773.P11574844150291205375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246500 (f1 j).toNat = 1) n)

end

end A065773.P11574844150291205375

/-! ## A065773.P3991936198279928036

`filter[A275940(n+1), A267683(#)]`
-/

namespace A065773.P3991936198279928036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A065773.P3991936198279928036

/-! ## A065773.P12274280037611759938

`filter[A275940(n+1), A288855(#)]`
-/

namespace A065773.P12274280037611759938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288855 (f1 j).toNat = 1) n)

end

end A065773.P12274280037611759938

/-! ## A065773.P2752991894484237742

`filter[A275940(n+1), A320106(#)]`
-/

namespace A065773.P2752991894484237742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A065773.P2752991894484237742

/-! ## A065773.P9041114335146740258

`filter[A275940(n+1), A354354(#)]`
-/

namespace A065773.P9041114335146740258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A065773.P9041114335146740258

/-! ## A065773.P10960085307587390490

`filter[A275940(n+1), A355450(#)]`
-/

namespace A065773.P10960085307587390490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A065773.P10960085307587390490

/-! ## A065773.P12597018414927335738

`filter[A275940(n+1), A356161(#)]`
-/

namespace A065773.P12597018414927335738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356161 (f1 j).toNat = 1) n)

end

end A065773.P12597018414927335738

/-! ## A065773.P2426511547692277861

`filter[A275940(n+1), A372573(#)]`
-/

namespace A065773.P2426511547692277861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A065773.P2426511547692277861

/-!
# A065774: Numbers k such that the product of the digits of k is equal to the sum of the prime factors of k, counted with multiplicity.

The programs for A065774, there is no canonical definition to state claims against.
-/

/-! ## A065774.P9520900928782449548

`eq[A001414(n+1), A007954(n+1)]+1`
-/

namespace A065774.P9520900928782449548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065774.P9520900928782449548

/-! ## A065774.P3738829181920766387

`eq[A001414(A233583(n+1)), A007954(n)]`
-/

namespace A065774.P3738829181920766387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065774.P3738829181920766387

/-! ## A065774.P3423448649951724151

`eq[A001414(A233583(n+1)), A051801(n)]`
-/

namespace A065774.P3423448649951724151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065774.P3423448649951724151

/-! ## A065774.P17689297966105377490

`A175807(n+1)-A074639(A067311(n))`
-/

namespace A065774.P17689297966105377490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175807 (n + 1) - A074639 (A067311 n).toNat

end

end A065774.P17689297966105377490

/-!
# A065775: Array T read by diagonals: T(i,j)=least number of knight's moves on a chessboard (infinite in all directions) needed to move from (0,0) to (i,j).

The programs for A065775, there is no canonical definition to state claims against.
-/

/-! ## A065775.P12898487786576501150

`A049604(char[4]+n)`
-/

namespace A065775.P12898487786576501150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A065775.P12898487786576501150

/-! ## A065775.P17821499348063723753

`A049604(n)-2*char[4]`
-/

namespace A065775.P17821499348063723753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A065775.P17821499348063723753

/-! ## A065775.P16762129235525274130

`A049604(n)/A007318(n*char[4])`
-/

namespace A065775.P16762129235525274130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049604 n : ℚ) / (A007318 (n * (if ∃ j, f1 j = n then 1 else 0)) : ℚ)

end

end A065775.P16762129235525274130

/-! ## A065775.P3487784857091120768

`A049604(n)/A141044(A183043(n))`
-/

namespace A065775.P3487784857091120768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049604 n : ℚ) / (A141044 (A183043 n).toNat : ℚ)

end

end A065775.P3487784857091120768

/-! ## A065775.P10695304215734260294

`A049604(n)/A027642(A247617(n))`
-/

namespace A065775.P10695304215734260294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049604 n : ℚ) / (A027642 (A247617 n).toNat : ℚ)

end

end A065775.P10695304215734260294

/-! ## A065775.P3251962238589530018

`A049604(n)/A141044(A049604(2*n))`
-/

namespace A065775.P3251962238589530018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049604 n : ℚ) / (A141044 (A049604 (2 * n)).toNat : ℚ)

end

end A065775.P3251962238589530018

/-! ## A065775.P13266538410437639597

`gcd(1-A174690(n), A049604(n))`
-/

namespace A065775.P13266538410437639597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A174690 n) (A049604 n)

end

end A065775.P13266538410437639597

/-! ## A065775.P5305925650388864561

`gcd(Δ[A174690(n)], A049604(n))`
-/

namespace A065775.P5305925650388864561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A049604 n)

end

end A065775.P5305925650388864561

/-! ## A065775.P18331919273570857982

`A049604(n)/A042974(A167499(n))`
-/

namespace A065775.P18331919273570857982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049604 n : ℚ) / (A042974 (A167499 n).toNat : ℚ)

end

end A065775.P18331919273570857982

/-! ## A065775.P8656700034785129752

`A049604(n)/A014963(A274426(n+1))`
-/

namespace A065775.P8656700034785129752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049604 n : ℚ) / (A014963 (A274426 (n + 1)).toNat : ℚ)

end

end A065775.P8656700034785129752

/-!
# A065777: a(1) = 4; for n > 1, a(n) is the square root of the smallest square > a(n-1)^2 with a(n-1)^2 forming its final digits.

The programs for A065777, there is no canonical definition to state claims against.
-/

/-! ## A065777.P3113090636294067864

`sqrt(A065776(n+2))`
-/

namespace A065777.P3113090636294067864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065776 (n + 2) : ℝ)

end

end A065777.P3113090636294067864

/-!
# A065780: a(1) = 5; for n > 1, a(n) is the square root of the smallest square > a(n-1)^2 with a(n-1)^2 forming its final digits.

The programs for A065780, there is no canonical definition to state claims against.
-/

/-! ## A065780.P9816624418128546718

`sqrt(A061839(n+2))`
-/

namespace A065780.P9816624418128546718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061839 (n + 2) : ℝ)

end

end A065780.P9816624418128546718

/-! ## A065780.P3033120776830173307

`root(A061839(n+2), abs(A280560(n+1)))`
-/

namespace A065780.P3033120776830173307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061839 (n + 2) : ℝ) ^ (1 / (|A280560 (n + 1)| : ℝ))

end

end A065780.P3033120776830173307

/-! ## A065780.P8963424381883844005

`root(A061839(n+2), p?[A088434(n+1)])`
-/

namespace A065780.P8963424381883844005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061839 (n + 2) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A065780.P8963424381883844005

/-! ## A065780.P15177126585906103502

`root(A061839(n+2), A056619(2*n+1))`
-/

namespace A065780.P15177126585906103502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061839 (n + 2) : ℝ) ^ (1 / (A056619 (2 * n + 1) : ℝ))

end

end A065780.P15177126585906103502

/-! ## A065780.P15985953217752125270

`root(A061839(n+2), A176895(2*n+1))²`
-/

namespace A065780.P15985953217752125270
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A061839 (n + 2) : ℝ) ^ (1 / (A176895 (2 * n + 1) : ℝ))) ^ 2

end

end A065780.P15985953217752125270

/-!
# A065781: a(1) = 25; for n > 1, a(n) is the smallest integer > 0 such that the concatenation a(n)a(n-1)...a(2)a(1) is a square.

The programs for A065781, there is no canonical definition to state claims against.
-/

/-! ## A065781.P1513511460367659084

`A271269(a(n-1)+n)` with `a(0)=25, a(1)=2, a(2)=1`
-/

namespace A065781.P1513511460367659084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 2, 1] fun n a =>
  A271269 (a (n - 1) + (n : ℤ)).toNat

end

end A065781.P1513511460367659084

/-!
# A065782: 

The programs for A065782, there is no canonical definition to state claims against.
-/

/-! ## A065782.P950313504933699364

`A065783(n+1)²`
-/

namespace A065782.P950313504933699364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065783 (n + 1) ^ 2

end

end A065782.P950313504933699364

/-! ## A065782.P17205111417009812876

`A065783(n+1)^p?[A061704(n+1)]`
-/

namespace A065782.P17205111417009812876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065783 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A065782.P17205111417009812876

/-! ## A065782.P17983885770648672731

`A065783(n+1)^A020639(A065762(n+1))`
-/

namespace A065782.P17983885770648672731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065783 (n + 1) : ℚ) ^ (A020639 (A065762 (n + 1)).toNat : ℤ)

end

end A065782.P17983885770648672731

/-!
# A065785: 

The programs for A065785, there is no canonical definition to state claims against.
-/

/-! ## A065785.P723669142221911309

`A050638(n+2)`
-/

namespace A065785.P723669142221911309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050638 (n + 2)

end

end A065785.P723669142221911309

/-! ## A065785.P15891207910675531394

`A065786(n+1)²`
-/

namespace A065785.P15891207910675531394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065786 (n + 1) ^ 2

end

end A065785.P15891207910675531394

/-! ## A065785.P16372005141495504454

`A050639(n+2)²`
-/

namespace A065785.P16372005141495504454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050639 (n + 2) ^ 2

end

end A065785.P16372005141495504454

/-!
# A065786: a(1) = 7; for n > 1, a(n) is the square root of the smallest square > a(n-1)^2 with a(n-1)^2 forming its final digits.

The programs for A065786, there is no canonical definition to state claims against.
-/

/-! ## A065786.P18085227604541979362

`A050639(n+2)`
-/

namespace A065786.P18085227604541979362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050639 (n + 2)

end

end A065786.P18085227604541979362

/-! ## A065786.P4534115983978739422

`sqrt(A050638(n+2))`
-/

namespace A065786.P4534115983978739422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050638 (n + 2) : ℝ)

end

end A065786.P4534115983978739422

/-!
# A065787: a(1) = 49; for n > 1, a(n) is the smallest integer > 0 such that the concatenation a(n)a(n-1)...a(2)a(1) is a square.

The programs for A065787, there is no canonical definition to state claims against.
-/

/-! ## A065787.P1574876649163231212

`A061363(n+2)+C(10, A065789(n+1))`
-/

namespace A065787.P1574876649163231212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061363 (n + 2) + (Nat.choose 10 (A065789 (n + 1)).toNat : ℤ)

end

end A065787.P1574876649163231212

/-!
# A065788: 

The programs for A065788, there is no canonical definition to state claims against.
-/

/-! ## A065788.P9636305672265370989

`A050636(n+2)`
-/

namespace A065788.P9636305672265370989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050636 (n + 2)

end

end A065788.P9636305672265370989

/-! ## A065788.P10794638179433455666

`A065789(n+1)²`
-/

namespace A065788.P10794638179433455666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065789 (n + 1) ^ 2

end

end A065788.P10794638179433455666

/-! ## A065788.P17435987546319355616

`A050637(n+2)²`
-/

namespace A065788.P17435987546319355616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050637 (n + 2) ^ 2

end

end A065788.P17435987546319355616

/-!
# A065789: a(1) = 8; for n > 1, a(n) is the square root of the smallest square > a(n-1)^2 with a(n-1)^2 forming its final digits.

The programs for A065789, there is no canonical definition to state claims against.
-/

/-! ## A065789.P10901717340458905405

`A050637(n+2)`
-/

namespace A065789.P10901717340458905405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050637 (n + 2)

end

end A065789.P10901717340458905405

/-! ## A065789.P9091223712487776511

`sqrt(A050636(n+2))`
-/

namespace A065789.P9091223712487776511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050636 (n + 2) : ℝ)

end

end A065789.P9091223712487776511

/-!
# A065791: 

The programs for A065791, there is no canonical definition to state claims against.
-/

/-! ## A065791.P6698732223636376317

`A050634(n+2)`
-/

namespace A065791.P6698732223636376317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050634 (n + 2)

end

end A065791.P6698732223636376317

/-! ## A065791.P3687196232918285549

`A065792(n+1)²`
-/

namespace A065791.P3687196232918285549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065792 (n + 1) ^ 2

end

end A065791.P3687196232918285549

/-! ## A065791.P12386985632173307671

`A050635(n+2)²`
-/

namespace A065791.P12386985632173307671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050635 (n + 2) ^ 2

end

end A065791.P12386985632173307671

/-!
# A065792: a(1) = 9; for n > 1, a(n) is the square root of the smallest square > a(n-1)^2 with a(n-1)^2 forming its final digits.

The programs for A065792, there is no canonical definition to state claims against.
-/

/-! ## A065792.P6764160277059370348

`A050635(n+2)`
-/

namespace A065792.P6764160277059370348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050635 (n + 2)

end

end A065792.P6764160277059370348

/-! ## A065792.P17650376521968737790

`sqrt(A050634(n+2))`
-/

namespace A065792.P17650376521968737790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050634 (n + 2) : ℝ)

end

end A065792.P17650376521968737790

/-!
# A065795: Number of subsets of {1,2,...,n} that contain the average of their elements.

The programs for A065795, the canonical program `A065795.P4691776563067319240` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065795 has offset 1).

The definition of A065795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327471, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065795.P5258877023264837280

`(n+1+A051293(n+1))/2`
-/

namespace A065795.P5258877023264837280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + A051293 (n + 1) : ℚ) / 2

end

end A065795.P5258877023264837280

namespace A065795

/-- `(n+1+A051293(n+1))/2` -/
def P5258877023264837280.Spec : Prop :=
  ∀ n, P5258877023264837280.a n = (A065795 (n + 1) : ℚ)

end A065795

/-! ## A065795.P4691776563067319240

`2^(n+1)-A327471(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A065795

/-- `2^(n+1)-A327471(n+1)` -/
def P4691776563067319240.Spec : Prop :=
  ∀ n, P4691776563067319240.a n = A065795 (n + 1)

theorem P4691776563067319240.correct : P4691776563067319240.Spec := by
  intro n
  simp only [A065795, Nat.add_sub_cancel]

end A065795

/-! ## A065795.P16771632101516321522

`∑[A000016(n+1)]`
-/

namespace A065795.P16771632101516321522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P16771632101516321522

namespace A065795

/-- `∑[A000016(n+1)]` -/
def P16771632101516321522.Spec : Prop :=
  ∀ n, P16771632101516321522.a n = A065795 (n + 1)

end A065795

/-! ## A065795.P13658848134822778285

`A133670(n+1)-1`
-/

namespace A065795.P13658848134822778285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133670 (n + 1) - 1

end

end A065795.P13658848134822778285

namespace A065795

/-- `A133670(n+1)-1` -/
def P13658848134822778285.Spec : Prop :=
  ∀ n, P13658848134822778285.a n = A065795 (n + 1)

theorem P13658848134822778285.correct : P13658848134822778285.Spec := by
  intro n
  simp only [A065795, Nat.add_sub_cancel, A065795.P13658848134822778285.a, A065795.P4691776563067319240.a, A133670, A133670.P186027561368392954.f1, A133670.P186027561368392954.a, A327471, A327471.P11969612927539878657.a, A000051, A000051.P14067217022188782580.a, A063776, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A233583, A233583.P15026547221992958741.a, A059841, A059841.P2666504972441551157.a, A064355, A064355.P15803301992756024606.a, A011946, A011946.P13849652241662667985.f1, A011946.P13849652241662667985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065795

/-! ## A065795.P1427952196671983909

`∑[A096010(n+1)-1]`
-/

namespace A065795.P1427952196671983909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P1427952196671983909

namespace A065795

/-- `∑[A096010(n+1)-1]` -/
def P1427952196671983909.Spec : Prop :=
  ∀ n, P1427952196671983909.a n = A065795 (n + 1)

end A065795

/-! ## A065795.P4754812368865481869

`∑[A063776(n+1)/2]`
-/

namespace A065795.P4754812368865481869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P4754812368865481869

namespace A065795

/-- `∑[A063776(n+1)/2]` -/
def P4754812368865481869.Spec : Prop :=
  ∀ n, P4754812368865481869.a n = (A065795 (n + 1) : ℚ)

end A065795

/-! ## A065795.P16512992877168382328

`∑[(A082550(n+1)+1)/2]`
-/

namespace A065795.P16512992877168382328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082550 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P16512992877168382328

namespace A065795

/-- `∑[(A082550(n+1)+1)/2]` -/
def P16512992877168382328.Spec : Prop :=
  ∀ n, P16512992877168382328.a n = (A065795 (n + 1) : ℚ)

end A065795

/-! ## A065795.P1366566500481944365

`∑[(A283843(n+1)-1)/2]`
-/

namespace A065795.P1366566500481944365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283843 (n + 1) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P1366566500481944365

namespace A065795

/-- `∑[(A283843(n+1)-1)/2]` -/
def P1366566500481944365.Spec : Prop :=
  ∀ n, P1366566500481944365.a n = (A065795 (n + 1) : ℚ)

end A065795

/-! ## A065795.P364779327254292173

`∑[∑{d}[n+1, A051841((n+1)/#)]]`
-/

namespace A065795.P364779327254292173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A051841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P364779327254292173

namespace A065795

/-- `∑[∑{d}[n+1, A051841((n+1)/#)]]` -/
def P364779327254292173.Spec : Prop :=
  ∀ n, P364779327254292173.a n = A065795 (n + 1)

end A065795

/-! ## A065795.P13524511480360414633

`∑[A000031(n+1)-A000013(n+1)]`
-/

namespace A065795.P13524511480360414633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - A000013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P13524511480360414633

namespace A065795

/-- `∑[A000031(n+1)-A000013(n+1)]` -/
def P13524511480360414633.Spec : Prop :=
  ∀ n, P13524511480360414633.a n = A065795 (n + 1)

end A065795

/-! ## A065795.P7183798313909716789

`∑[A008965(n+1)-A056295(n+1)]`
-/

namespace A065795.P7183798313909716789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - A056295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P7183798313909716789

namespace A065795

/-- `∑[A008965(n+1)-A056295(n+1)]` -/
def P7183798313909716789.Spec : Prop :=
  ∀ n, P7183798313909716789.a n = A065795 (n + 1)

end A065795

/-! ## A065795.P17192799697536064549

`(A327475(n+1)+n)/2`
-/

namespace A065795.P17192799697536064549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327475 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A065795.P17192799697536064549

namespace A065795

/-- `(A327475(n+1)+n)/2` -/
def P17192799697536064549.Spec : Prop :=
  ∀ n, P17192799697536064549.a n = (A065795 (n + 1) : ℚ)

theorem P17192799697536064549.correct : P17192799697536064549.Spec := by
  intro n
  simp only [A065795, Nat.add_sub_cancel, A065795.P17192799697536064549.a, A065795.P4691776563067319240.a, A327471, A327471.P11969612927539878657.a, A327475, A327475.P394140087772944545.a, A000051, A000051.P14067217022188782580.a, A133670, A133670.P186027561368392954.f1, A133670.P186027561368392954.a, A063776, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A233583, A233583.P15026547221992958741.a, A059841, A059841.P2666504972441551157.a, A064355, A064355.P15803301992756024606.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A065795

/-! ## A065795.P6220849531130283343

`∑[A053633(∑[n])]`
-/

namespace A065795.P6220849531130283343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065795.P6220849531130283343

namespace A065795

/-- `∑[A053633(∑[n])]` -/
def P6220849531130283343.Spec : Prop :=
  ∀ n, P6220849531130283343.a n = A065795 (n + 1)

end A065795

/-! ## A065795.P16563709061706289818

`∑[∑[A147980(n+1)]+1]/2`
-/

namespace A065795.P16563709061706289818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A065795.P16563709061706289818

namespace A065795

/-- `∑[∑[A147980(n+1)]+1]/2` -/
def P16563709061706289818.Spec : Prop :=
  ∀ n, P16563709061706289818.a n = (A065795 (n + 1) : ℚ)

end A065795

/-!
# A065796: Alternating sum of digits of n^2.

The programs for A065796, the canonical program `A065796.P7106408873075919693` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065796 has offset 1).

The definition of A065796 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065796.P7106408873075919693

`A055017((n+1)²)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065796

/-- `A055017((n+1)²)` -/
def P7106408873075919693.Spec : Prop :=
  ∀ n, P7106408873075919693.a n = A065796 (n + 1)

theorem P7106408873075919693.correct : P7106408873075919693.Spec := by
  intro n
  simp only [A065796, Nat.add_sub_cancel]

end A065796

/-! ## A065796.P1664492346699804475

`A055017(n*(n+2))+1`
-/

namespace A065796.P1664492346699804475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (n * (n + 2)) + 1

end

end A065796.P1664492346699804475

namespace A065796

/-- `A055017(n*(n+2))+1` -/
def P1664492346699804475.Spec : Prop :=
  ∀ n, P1664492346699804475.a n = A065796 (n + 1)

end A065796

/-! ## A065796.P9405227395406082397

`A225693(A002942(n+1))`
-/

namespace A065796.P9405227395406082397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A002942 (n + 1)).toNat

end

end A065796.P9405227395406082397

namespace A065796

/-- `A225693(A002942(n+1))` -/
def P9405227395406082397.Spec : Prop :=
  ∀ n, P9405227395406082397.a n = A065796 (n + 1)

end A065796

/-! ## A065796.P246415693473166583

`A225693(A004086((n+1)²))`
-/

namespace A065796.P246415693473166583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A004086 ((n + 1) ^ 2)).toNat

end

end A065796.P246415693473166583

namespace A065796

/-- `A225693(A004086((n+1)²))` -/
def P246415693473166583.Spec : Prop :=
  ∀ n, P246415693473166583.a n = A065796 (n + 1)

end A065796

/-!
# A065797: Numbers k such that k^k - k + 1 is prime.

The programs for A065797, there is no canonical definition to state claims against.
-/

/-! ## A065797.P1634482081754912829

`A287149(n)*A338658(n+1)+1`
-/

namespace A065797.P1634482081754912829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287149 n * A338658 (n + 1) + 1

end

end A065797.P1634482081754912829

/-!
# A065799: Numbers k such that k^k + k! + k^2 + k + 1 is prime.

The programs for A065799, there is no canonical definition to state claims against.
-/

/-! ## A065799.P5330217622786482143

`or(A008612(A274784(n)), A225481(n))`
-/

namespace A065799.P5330217622786482143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008612 (A274784 n).toNat) (A225481 n)

end

end A065799.P5330217622786482143

/-! ## A065799.P14699780205738976059

`A290962(A290962(n+1))+A184751(2*n+1)`
-/

namespace A065799.P14699780205738976059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290962 (A290962 (n + 1)).toNat + A184751 (2 * n + 1)

end

end A065799.P14699780205738976059

