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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A226200: a(n) = 6^n + n.

The programs for A226200, the canonical program `A226200.P13457757580693642881` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226200 has offset 0).

The definition of A226200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+n` (program `A226200.P13457757580693642881`, by `A226200.P13457757580693642881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226200.P13457757580693642881

`6^n+n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226200

/-- `6^n+n` -/
def P13457757580693642881.Spec : Prop :=
  ∀ n, (P13457757580693642881.a n : ℤ) = A226200 n

theorem P13457757580693642881.correct : P13457757580693642881.Spec := by
  intro n
  simp only [A226200]

end A226200

/-!
# A226201: a(n) = 8^n + n.

The programs for A226201, the canonical program `A226201.P14947204726930115796` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226201 has offset 0).

The definition of A226201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+n` (program `A226201.P14947204726930115796`, by `A226201.P14947204726930115796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226201.P14947204726930115796

`8^n+n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226201

/-- `8^n+n` -/
def P14947204726930115796.Spec : Prop :=
  ∀ n, (P14947204726930115796.a n : ℤ) = A226201 n

theorem P14947204726930115796.correct : P14947204726930115796.Spec := by
  intro n
  simp only [A226201]

end A226201

/-!
# A226202: a(n) = 9^n + n.

The programs for A226202, the canonical program `A226202.P16555790232483560560` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226202 has offset 0).

The definition of A226202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+n` (program `A226202.P16555790232483560560`, by `A226202.P16555790232483560560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226202.P16555790232483560560

`9^n+n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226202

/-- `9^n+n` -/
def P16555790232483560560.Spec : Prop :=
  ∀ n, (P16555790232483560560.a n : ℤ) = A226202 n

theorem P16555790232483560560.correct : P16555790232483560560.Spec := by
  intro n
  simp only [A226202]

end A226202

/-!
# A226203: a(5n) = a(5n+3) = a(5n+4) = 2n+1, a(5n+1) = 2n-3, a(5n+2) = 2n-1.

The programs for A226203, the canonical program `A226203.P6848403638080599898` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226203 has offset 0).

The definition of A226203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226203.P6848403638080599898

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=-3, a(2)=-1, a(3)=1, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226203

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P6848403638080599898.Spec : Prop :=
  ∀ n, P6848403638080599898.a n = A226203 n

theorem P6848403638080599898.correct : P6848403638080599898.Spec := by
  intro n
  simp only [A226203]

end A226203

/-! ## A226203.P11982429689823956293

`a(n-5)+2` with `a(0)=1, a(1)=-3, a(2)=-1, a(3)=1, a(4)=1`
-/

namespace A226203.P11982429689823956293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, -1, 1, 1] fun n a =>
  a (n - 5) + 2

end

end A226203.P11982429689823956293

namespace A226203

/-- `a(n-5)+2` -/
def P11982429689823956293.Spec : Prop :=
  ∀ n, P11982429689823956293.a n = A226203 n

end A226203

/-! ## A226203.P15545312909041348333

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=-4, a(2)=2, a(3)=2, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A226203.P15545312909041348333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 2, 2, 0, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226203.P15545312909041348333

namespace A226203

/-- `∑[floor(a(n-5))]` -/
def P15545312909041348333.Spec : Prop :=
  ∀ n, P15545312909041348333.a n = A226203 n

end A226203

/-! ## A226203.P12659079572891356097

`A016777(A286717(n+3))-A047369(n+7)`
-/

namespace A226203.P12659079572891356097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A286717 (n + 3)).toNat - A047369 (n + 7)

end

end A226203.P12659079572891356097

namespace A226203

/-- `A016777(A286717(n+3))-A047369(n+7)` -/
def P12659079572891356097.Spec : Prop :=
  ∀ n, P12659079572891356097.a n = A226203 n

end A226203

/-! ## A226203.P3663999238286901971

`A271114(n)-A298024(A047248(n+1))`
-/

namespace A226203.P3663999238286901971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A298024 (A047248 (n + 1)).toNat

end

end A226203.P3663999238286901971

namespace A226203

/-- `A271114(n)-A298024(A047248(n+1))` -/
def P3663999238286901971.Spec : Prop :=
  ∀ n, P3663999238286901971.a n = A226203 n

end A226203

/-!
# A226205: a(n) = F(n)^2 - F(n-1)^2 or F(n+1) * F(n-2) where F(n) = A000045(n), the Fibonacci numbers.

The programs for A226205, the canonical program `A226205.P16096906501195792337` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226205 has offset 1).

The definition of A226205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226205.P16096906501195792337

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226205

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P16096906501195792337.Spec : Prop :=
  ∀ n, P16096906501195792337.a n = A226205 (n + 1)

theorem P16096906501195792337.correct : P16096906501195792337.Spec := by
  intro n
  simp only [A226205, Nat.add_sub_cancel]

end A226205

/-! ## A226205.P17706331297931694922

`-A121646(n+1)`
-/

namespace A226205.P17706331297931694922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A121646 (n + 1)

end

end A226205.P17706331297931694922

namespace A226205

/-- `-A121646(n+1)` -/
def P17706331297931694922.Spec : Prop :=
  ∀ n, P17706331297931694922.a n = A226205 (n + 1)

theorem P17706331297931694922.correct : P17706331297931694922.Spec := by
  intro n
  simp only [A226205, Nat.add_sub_cancel, A226205.P17706331297931694922.a, A226205.P16096906501195792337.a, A121646, A121646.P14075488146765142285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226205

/-! ## A226205.P13326492624284980916

`a(n-1)+A000045(n)²-2*(-1)^(n+1)` with `a(0)=1`
-/

namespace A226205.P13326492624284980916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000045 n ^ 2 - 2 * (-1) ^ (n + 1)

end

end A226205.P13326492624284980916

namespace A226205

/-- `a(n-1)+A000045(n)²-2*(-1)^(n+1)` -/
def P13326492624284980916.Spec : Prop :=
  ∀ n, P13326492624284980916.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P2976595889944678585

`ogf((1-2x+x^2)/(1-2x-2x^2+x^3))`
-/

namespace A226205.P2976595889944678585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -2, -2, 1] n

end

end A226205.P2976595889944678585

namespace A226205

/-- `ogf((1-2x+x^2)/(1-2x-2x^2+x^3))` -/
def P2976595889944678585.Spec : Prop :=
  ∀ n, P2976595889944678585.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P14548775489269360154

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A226205.P14548775489269360154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A226205.P14548775489269360154

namespace A226205

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P14548775489269360154.Spec : Prop :=
  ∀ n, P14548775489269360154.a n = A226205 (n + 1)

theorem P14548775489269360154.correct : P14548775489269360154.Spec := by
  intro n
  simp only [A226205, Nat.add_sub_cancel, A226205.P14548775489269360154.a, A226205.P16096906501195792337.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A226205

/-! ## A226205.P13979346550416028039

`A236165(Δ[n²])`
-/

namespace A226205.P13979346550416028039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A226205.P13979346550416028039

namespace A226205

/-- `A236165(Δ[n²])` -/
def P13979346550416028039.Spec : Prop :=
  ∀ n, P13979346550416028039.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P6271145366959299720

`A001906(n)-a(n-1)` with `a(0)=1`
-/

namespace A226205.P6271145366959299720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001906 n - a (n - 1)

end

end A226205.P6271145366959299720

namespace A226205

/-- `A001906(n)-a(n-1)` -/
def P6271145366959299720.Spec : Prop :=
  ∀ n, P6271145366959299720.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P6601402309231060999

`A088305(n)-a(n-1)` with `a(0)=1`
-/

namespace A226205.P6601402309231060999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088305 n - a (n - 1)

end

end A226205.P6601402309231060999

namespace A226205

/-- `A088305(n)-a(n-1)` -/
def P6601402309231060999.Spec : Prop :=
  ∀ n, P6601402309231060999.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P2818789470074750368

`A000045(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A226205.P2818789470074750368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (2 * n) - a (n - 1)

end

end A226205.P2818789470074750368

namespace A226205

/-- `A000045(2*n)-a(n-1)` -/
def P2818789470074750368.Spec : Prop :=
  ∀ n, P2818789470074750368.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P5659504598182589070

`floor(A000045(n-1+n)+a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A226205.P5659504598182589070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000045 ((n : ℤ) - 1 + (n : ℤ)).toNat + a (n - 2)

end

end A226205.P5659504598182589070

namespace A226205

/-- `floor(A000045(n-1+n)+a(n-2))` -/
def P5659504598182589070.Spec : Prop :=
  ∀ n, P5659504598182589070.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P6843579579335364940

`A033999(n)+A001654(n)`
-/

namespace A226205.P6843579579335364940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A001654 n

end

end A226205.P6843579579335364940

namespace A226205

/-- `A033999(n)+A001654(n)` -/
def P6843579579335364940.Spec : Prop :=
  ∀ n, P6843579579335364940.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P14356926880784743060

`A212804(n)*A373566(n)`
-/

namespace A226205.P14356926880784743060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n * A373566 n

end

end A226205.P14356926880784743060

namespace A226205

/-- `A212804(n)*A373566(n)` -/
def P14356926880784743060.Spec : Prop :=
  ∀ n, P14356926880784743060.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P14098696691309195139

`A033999(n)+∑[A007598(n)]`
-/

namespace A226205.P14098696691309195139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226205.P14098696691309195139

namespace A226205

/-- `A033999(n)+∑[A007598(n)]` -/
def P14098696691309195139.Spec : Prop :=
  ∀ n, P14098696691309195139.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P16827713765990107830

`A059841(n)+A059840(n+1)`
-/

namespace A226205.P16827713765990107830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A059840 (n + 1)

end

end A226205.P16827713765990107830

namespace A226205

/-- `A059841(n)+A059840(n+1)` -/
def P16827713765990107830.Spec : Prop :=
  ∀ n, P16827713765990107830.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P6374405590025072226

`A001654(n)+2-A010684(n)`
-/

namespace A226205.P6374405590025072226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (2 - A010684 n)

end

end A226205.P6374405590025072226

namespace A226205

/-- `A001654(n)+2-A010684(n)` -/
def P6374405590025072226.Spec : Prop :=
  ∀ n, P6374405590025072226.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P2921977325084470676

`A001654(n)+A176040(n)-2`
-/

namespace A226205.P2921977325084470676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (A176040 n - 2)

end

end A226205.P2921977325084470676

namespace A226205

/-- `A001654(n)+A176040(n)-2` -/
def P2921977325084470676.Spec : Prop :=
  ∀ n, P2921977325084470676.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P15909296580218941622

`A009001(2*n)+A001654(n)`
-/

namespace A226205.P15909296580218941622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) + A001654 n

end

end A226205.P15909296580218941622

namespace A226205

/-- `A009001(2*n)+A001654(n)` -/
def P15909296580218941622.Spec : Prop :=
  ∀ n, P15909296580218941622.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P14188764113654477198

`A056594(2*n)+A001654(n)`
-/

namespace A226205.P14188764113654477198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) + A001654 n

end

end A226205.P14188764113654477198

namespace A226205

/-- `A056594(2*n)+A001654(n)` -/
def P14188764113654477198.Spec : Prop :=
  ∀ n, P14188764113654477198.a n = A226205 (n + 1)

end A226205

/-! ## A226205.P2544089277961538098

`A087960(2*n)+A001654(n)`
-/

namespace A226205.P2544089277961538098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) + A001654 n

end

end A226205.P2544089277961538098

namespace A226205

/-- `A087960(2*n)+A001654(n)` -/
def P2544089277961538098.Spec : Prop :=
  ∀ n, P2544089277961538098.a n = A226205 (n + 1)

end A226205

/-!
# A226206: Number A(n,k) of tilings of a k X n rectangle using integer-sided square tiles of area > 1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A226206, there is no canonical definition to state claims against.
-/

/-! ## A226206.P16917490092918713194

`A008624(A109004(n)%A089447(n))`
-/

namespace A226206.P16917490092918713194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.tmod (A109004 n) (A089447 n)).toNat

end

end A226206.P16917490092918713194

/-! ## A226206.P15238220307344897262

`A008624(A159335(n)%A089447(n))`
-/

namespace A226206.P15238220307344897262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.tmod (A159335 n) (A089447 n)).toNat

end

end A226206.P15238220307344897262

/-! ## A226206.P11731586174667490120

`A058212(A281726(n+1)%A089447(n))`
-/

namespace A226206.P11731586174667490120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (Int.tmod (A281726 (n + 1)) (A089447 n)).toNat

end

end A226206.P11731586174667490120

/-! ## A226206.P4615349607937802239

`A008624(A109004(n%A146766(n)))`
-/

namespace A226206.P4615349607937802239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A109004 (Int.tmod (n : ℤ) (A146766 n)).toNat).toNat

end

end A226206.P4615349607937802239

/-! ## A226206.P12468751573662799499

`A109004(A050870(n)^A298100(n+1))`
-/

namespace A226206.P12468751573662799499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (SequenceMachineLib.roundAway ((A050870 n : ℚ) ^ (A298100 (n + 1) : ℤ))).toNat

end

end A226206.P12468751573662799499

/-!
# A226207: Table by antidiagonals: D(m,n) = Zeckendorf distance between m and n.

The programs for A226207, there is no canonical definition to state claims against.
-/

/-! ## A226207.P12999011354098558947

`A073188(A226324(n+1))+A000038(A055236(n))`
-/

namespace A226207.P12999011354098558947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A226324 (n + 1)).toNat + A000038 (A055236 n).toNat

end

end A226207.P12999011354098558947

/-! ## A226207.P7252762658401512971

`A226324(n+1)-A185284(A340753(n+1))`
-/

namespace A226207.P7252762658401512971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226324 (n + 1) - A185284 (A340753 (n + 1)).toNat

end

end A226207.P7252762658401512971

/-! ## A226207.P4747712793812187390

`A052409(or(3, n)^A226324(n+1))`
-/

namespace A226207.P4747712793812187390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((Nat.lor 3 n : ℚ) ^ (A226324 (n + 1) : ℤ))).toNat

end

end A226207.P4747712793812187390

/-! ## A226207.P1238804570664678316

`A226324(n+1)%A183226(A000045(n))`
-/

namespace A226207.P1238804570664678316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226324 (n + 1)) (A183226 (A000045 n).toNat)

end

end A226207.P1238804570664678316

/-! ## A226207.P15255513998174815573

`A052409(A056391(n+1))*A226324(n+1)`
-/

namespace A226207.P15255513998174815573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A056391 (n + 1)).toNat * A226324 (n + 1)

end

end A226207.P15255513998174815573

/-!
# A226208: Zeckendorf distance between n and n+1.

The programs for A226208, the canonical program `A226208.P9905066037066462262` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226208 has offset 1).

The definition of A226208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226208.P9905066037066462262

`A111982(record[A038554(n)])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A226208

/-- `A111982(record[A038554(n)])` -/
def P9905066037066462262.Spec : Prop :=
  ∀ n, P9905066037066462262.a n = A226208 (n + 1)

theorem P9905066037066462262.correct : P9905066037066462262.Spec := by
  intro n
  simp only [A226208, Nat.add_sub_cancel]

end A226208

/-! ## A226208.P6053301140810086715

`A111982(record[A233280(n)])`
-/

namespace A226208.P6053301140810086715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226208.P6053301140810086715

namespace A226208

/-- `A111982(record[A233280(n)])` -/
def P6053301140810086715.Spec : Prop :=
  ∀ n, P6053301140810086715.a n = A226208 (n + 1)

end A226208

/-! ## A226208.P6228410340589290854

`A226207(2*(n+1)²)`
-/

namespace A226208.P6228410340589290854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226207 (2 * (n + 1) ^ 2)

end

end A226208.P6228410340589290854

namespace A226208

/-- `A226207(2*(n+1)²)` -/
def P6228410340589290854.Spec : Prop :=
  ∀ n, P6228410340589290854.a n = A226208 (n + 1)

end A226208

/-! ## A226208.P10963460518597962374

`A226207(∑[4*n+2])%11`
-/

namespace A226208.P10963460518597962374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226207 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A226208.P10963460518597962374

namespace A226208

/-- `A226207(∑[4*n+2])%11` -/
def P10963460518597962374.Spec : Prop :=
  ∀ n, P10963460518597962374.a n = A226208 (n + 1)

end A226208

/-! ## A226208.P7481606213746125019

`and(15, A226207(A001105(n+1)))`
-/

namespace A226208.P7481606213746125019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A226207 (A001105 (n + 1)).toNat)

end

end A226208.P7481606213746125019

namespace A226208

/-- `and(15, A226207(A001105(n+1)))` -/
def P7481606213746125019.Spec : Prop :=
  ∀ n, P7481606213746125019.a n = A226208 (n + 1)

end A226208

/-!
# A226209: Zeckendorf distance between n and n+2.

The programs for A226209, there is no canonical definition to state claims against.
-/

/-! ## A226209.P3502893608141588360

`A226207(∑[4*(n+1)])`
-/

namespace A226209.P3502893608141588360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226209.P3502893608141588360

/-! ## A226209.P8595301924148377296

`A226207(A051890(n+2))%11`
-/

namespace A226209.P8595301924148377296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226207 (A051890 (n + 2)).toNat) 11

end

end A226209.P8595301924148377296

/-! ## A226209.P3616548580791807900

`∑{d}[A226207(A051890(n+2)), A000010(#)]`
-/

namespace A226209.P3616548580791807900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226207 (A051890 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A226209.P3616548580791807900

/-! ## A226209.P16804831354147169388

`A226207(A051890(n+2))/A007318(∑[n])`
-/

namespace A226209.P16804831354147169388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226207 (A051890 (n + 2)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A226209.P16804831354147169388

/-! ## A226209.P10229135745219429456

`A226207(A051890(n+2))+A008683(4*A007318(n))`
-/

namespace A226209.P10229135745219429456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226207 (A051890 (n + 2)).toNat + A008683 (4 * A007318 n).toNat

end

end A226209.P10229135745219429456

/-!
# A226211: Zeckendorf distance between n and 2*n.

The programs for A226211, there is no canonical definition to state claims against.
-/

/-! ## A226211.P14178702325015100756

`A226212(2*(n+1))`
-/

namespace A226211.P14178702325015100756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226212 (2 * (n + 1))

end

end A226211.P14178702325015100756

/-! ## A226211.P16577510943198821336

`A226212(A103517(n))%56`
-/

namespace A226211.P16577510943198821336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226212 (A103517 n).toNat) 56

end

end A226211.P16577510943198821336

/-! ## A226211.P4355863731278990366

`A226212(Δ[A027691(n)])%40`
-/

namespace A226211.P4355863731278990366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226212 (f1 (n + 1) - f1 n).toNat) 40

end

end A226211.P4355863731278990366

/-! ## A226211.P8465741609213528602

`A000034(2*n)*A226212(A103517(n))`
-/

namespace A226211.P8465741609213528602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A226212 (A103517 n).toNat

end

end A226211.P8465741609213528602

/-! ## A226211.P3777055542209221609

`A033999(n)²*A226212(Δ[A027691(n)])`
-/

namespace A226211.P3777055542209221609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A226212 (f1 (n + 1) - f1 n).toNat

end

end A226211.P3777055542209221609

/-! ## A226211.P10198236190542557835

`A226212(A103517(n))/A000034(A017317(n))²`
-/

namespace A226211.P10198236190542557835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226212 (A103517 n).toNat : ℚ) / (A000034 (A017317 n).toNat ^ 2 : ℚ)

end

end A226211.P10198236190542557835

/-! ## A226211.P16281959496203520551

`A226212(Δ[A027691(n)])+A049084((n+3)²)`
-/

namespace A226211.P16281959496203520551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226212 (f1 (n + 1) - f1 n).toNat + A049084 ((n + 3) ^ 2)

end

end A226211.P16281959496203520551

/-!
# A226212: Zeckendorf distance between n and floor(n/2).

The programs for A226212, there is no canonical definition to state claims against.
-/

/-! ## A226212.P17799451353720934316

`A001222((n+2)*A147355(n+1))`
-/

namespace A226212.P17799451353720934316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2 : ℤ) * A147355 (n + 1)).toNat

end

end A226212.P17799451353720934316

/-! ## A226212.P5835702851988793063

`A000120(A131419(∑[A074909(n)]))`
-/

namespace A226212.P5835702851988793063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A131419 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A226212.P5835702851988793063

/-! ## A226212.P98918437817564572

`A043557(∑[A087787(n)²])`
-/

namespace A226212.P98918437817564572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226212.P98918437817564572

/-! ## A226212.P15870005583744245373

`A007302(or(A057501(n), A151381(n)))`
-/

namespace A226212.P15870005583744245373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (Int.lor (A057501 n) (A151381 n)).toNat

end

end A226212.P15870005583744245373

/-! ## A226212.P2381353237705305843

`A008611(A134452(n)+A001222(A001792(n)))`
-/

namespace A226212.P2381353237705305843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A134452 n + A001222 (A001792 n).toNat).toNat

end

end A226212.P2381353237705305843

/-!
# A226216: Primes p such that (p-1)/ord(2,p) > (q-1)/ord(2,q) for odd primes q < p.

The programs for A226216, there is no canonical definition to state claims against.
-/

/-! ## A226216.P1435270988277567597

`A001749(A152597(n+1))/4`
-/

namespace A226216.P1435270988277567597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A152597 (n + 1)).toNat : ℚ) / 4

end

end A226216.P1435270988277567597

/-! ## A226216.P16661910497059688473

`A000040(A152597(n+1))`
-/

namespace A226216.P16661910497059688473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A152597 (n + 1)).toNat

end

end A226216.P16661910497059688473

/-! ## A226216.P4877964436154541357

`A008578(A152597(n+1)+1)`
-/

namespace A226216.P4877964436154541357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A152597 (n + 1) + 1).toNat

end

end A226216.P4877964436154541357

/-! ## A226216.P16939535066258199542

`A065091(A152597(n+1)-1)`
-/

namespace A226216.P16939535066258199542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A152597 (n + 1) - 1).toNat

end

end A226216.P16939535066258199542

/-! ## A226216.P7942242364952331481

`∑{d}[A152597(n+1), A007444(#)]`
-/

namespace A226216.P7942242364952331481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A226216.P7942242364952331481

/-!
# A226217: Primes whose first digit is a square.

The programs for A226217, the canonical program `A226217.P16285020928925633820` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226217 has offset 1).

The definition of A226217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226217.P16285020928925633820

`p?[A007913(A000040(n+1)*A077648(n+1))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226217

/-- `p?[A007913(A000040(n+1)*A077648(n+1))]` -/
def P16285020928925633820.Spec : Prop :=
  ∀ n, P16285020928925633820.a n = A226217 (n + 1)

theorem P16285020928925633820.correct : P16285020928925633820.Spec := by
  intro n
  simp only [A226217, Nat.add_sub_cancel]

end A226217

/-! ## A226217.P2899285436410838163

`p?[A007913((A008864(n+1)-1)*A077648(n+1))]`
-/

namespace A226217.P2899285436410838163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((A008864 (n + 1) - 1) * A077648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226217.P2899285436410838163

namespace A226217

/-- `p?[A007913((A008864(n+1)-1)*A077648(n+1))]` -/
def P2899285436410838163.Spec : Prop :=
  ∀ n, P2899285436410838163.a n = A226217 (n + 1)

theorem P2899285436410838163.correct : P2899285436410838163.Spec := by
  intro n
  simp only [A226217, Nat.add_sub_cancel, A226217.P2899285436410838163.f1, A226217.P2899285436410838163.a, A226217.P16285020928925633820.f1, A226217.P16285020928925633820.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007913, A007913.P11359412940648999332.a, A008864, A008864.P9177617808325052279.a, A077648, A077648.P9186107893677974913.a, A000030, A000030.P4990867543733972260.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226217

/-! ## A226217.P9753918384675938607

`eq[A000122(A182324(n)-n), A077462(n)]`
-/

namespace A226217.P9753918384675938607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A182324 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226217.P9753918384675938607

namespace A226217

/-- `eq[A000122(A182324(n)-n), A077462(n)]` -/
def P9753918384675938607.Spec : Prop :=
  ∀ n, (P9753918384675938607.a n : ℤ) = A226217 (n + 1)

end A226217

/-! ## A226217.P12476026437920559512

`record[p?[A052421(A344367(n+1))]]`
-/

namespace A226217.P12476026437920559512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A344367 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226217.P12476026437920559512

namespace A226217

/-- `record[p?[A052421(A344367(n+1))]]` -/
def P12476026437920559512.Spec : Prop :=
  ∀ n, P12476026437920559512.a n = A226217 (n + 1)

end A226217

/-! ## A226217.P8603416176389891189

`A299791(A081869(n+1))`
-/

namespace A226217.P8603416176389891189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299791 (A081869 (n + 1)).toNat

end

end A226217.P8603416176389891189

namespace A226217

/-- `A299791(A081869(n+1))` -/
def P8603416176389891189.Spec : Prop :=
  ∀ n, P8603416176389891189.a n = A226217 (n + 1)

end A226217

/-!
# A226218: Ending primes for n-th composite number in the iterated procedure of composite added to sum of prime factors.

The programs for A226218, there is no canonical definition to state claims against.
-/

/-! ## A226218.P3498171725112443923

`A016837(A002808(n+1)%A090417(n+1))`
-/

namespace A226218.P3498171725112443923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (Int.tmod (A002808 (n + 1)) (A090417 (n + 1))).toNat

end

end A226218.P3498171725112443923

/-! ## A226218.P8600213636959215175

`A282795(A002808(n+1))%A115401(n+1)²`
-/

namespace A226218.P8600213636959215175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282795 (A002808 (n + 1)).toNat) (A115401 (n + 1) ^ 2)

end

end A226218.P8600213636959215175

/-! ## A226218.P7759649167108739707

`A339579(A158493(n+1))+A016837(A002808(n+1))`
-/

namespace A226218.P7759649167108739707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A158493 (n + 1)).toNat + A016837 (A002808 (n + 1)).toNat

end

end A226218.P7759649167108739707

/-! ## A226218.P15372804044717519493

`A016837(A002808(n+1))-A054977(A342745(n+2)+11)+1`
-/

namespace A226218.P15372804044717519493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (A002808 (n + 1)).toNat - A054977 (A342745 (n + 2) + 11).toNat + 1

end

end A226218.P15372804044717519493

/-! ## A226218.P2686943677740360890

`A282795(A002808(n+1))%A001583(A001584(n))`
-/

namespace A226218.P2686943677740360890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282795 (A002808 (n + 1)).toNat) (A001583 (A001584 n).toNat)

end

end A226218.P2686943677740360890

/-! ## A226218.P1586530381475212531

`A016837(A002808(n+1))%A335902(n+1)`
-/

namespace A226218.P1586530381475212531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016837 (A002808 (n + 1)).toNat) (A335902 (n + 1))

end

end A226218.P1586530381475212531

/-!
# A226221: Numbers n such that 2^n mod n is not a power of 2.

The programs for A226221, the canonical program `A226221.P11528123328965652543` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226221 has offset 1).

The definition of A226221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226221.P10129177962753281547

`∩[A065090(n+1), comp[A129492(n+1)]]`
-/

namespace A226221.P10129177962753281547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129492 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A226221.P10129177962753281547

namespace A226221

/-- `∩[A065090(n+1), comp[A129492(n+1)]]` -/
def P10129177962753281547.Spec : Prop :=
  ∀ n, (P10129177962753281547.a n : ℤ) = A226221 (n + 1)

end A226221

/-! ## A226221.P11528123328965652543

`eq[A036987(A082495(n+1)), A036987(n)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226221

/-- `eq[A036987(A082495(n+1)), A036987(n)]+1` -/
def P11528123328965652543.Spec : Prop :=
  ∀ n, (P11528123328965652543.a n : ℤ) = A226221 (n + 1)

theorem P11528123328965652543.correct : P11528123328965652543.Spec := by
  intro n
  simp only [A226221, Nat.add_sub_cancel]

end A226221

/-! ## A226221.P5571983219325926802

`record[(n+1)%A000051(A270096(n+1))]`
-/

namespace A226221.P5571983219325926802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000051 (A270096 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226221.P5571983219325926802

namespace A226221

/-- `record[(n+1)%A000051(A270096(n+1))]` -/
def P5571983219325926802.Spec : Prop :=
  ∀ n, P5571983219325926802.a n = A226221 (n + 1)

end A226221

/-! ## A226221.P17943351592152817744

`∑[A000005(A177519(n))%11]`
-/

namespace A226221.P17943351592152817744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A177519 n).toNat) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226221.P17943351592152817744

namespace A226221

/-- `∑[A000005(A177519(n))%11]` -/
def P17943351592152817744.Spec : Prop :=
  ∀ n, P17943351592152817744.a n = A226221 (n + 1)

end A226221

/-! ## A226221.P2772630465567930291

`lt[A239660(A260553(n+1)), 2]`
-/

namespace A226221.P2772630465567930291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239660 (A260553 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A226221.P2772630465567930291

namespace A226221

/-- `lt[A239660(A260553(n+1)), 2]` -/
def P2772630465567930291.Spec : Prop :=
  ∀ n, (P2772630465567930291.a n : ℤ) = A226221 (n + 1)

end A226221

/-!
# A226222: a(1) = a(2) = a(3) = 1, a(n) = a(n-2-a(n-2)) + a(n-1-a(n-3)) for n>3.

The programs for A226222, the canonical program `A226222.P2340641036584828963` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226222 has offset 1).

The definition of A226222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2-a(n-2))+a(n-1-a(n-3))` (program `A226222.P2340641036584828963`, by `A226222.P2340641036584828963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226222.P2340641036584828963

`a(n-2-a(n-2))+a(n-1-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226222

/-- `a(n-2-a(n-2))+a(n-1-a(n-3))` -/
def P2340641036584828963.Spec : Prop :=
  ∀ n, (P2340641036584828963.a n : ℤ) = A226222 (n + 1)

theorem P2340641036584828963.correct : P2340641036584828963.Spec := by
  intro n
  simp only [A226222, Nat.add_sub_cancel]

end A226222

/-! ## A226222.P10123638605720237886

`A051903(∏[A000034(A225589(n+1))])`
-/

namespace A226222.P10123638605720237886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A225589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226222.P10123638605720237886

namespace A226222

/-- `A051903(∏[A000034(A225589(n+1))])` -/
def P10123638605720237886.Spec : Prop :=
  ∀ n, P10123638605720237886.a n = A226222 (n + 1)

end A226222

/-!
# A226223: The number of endomorphisms of the full transformation monoid on the set {1..n}.

The programs for A226223, there is no canonical definition to state claims against.
-/

/-! ## A226223.P4475688834657863651

`A057544(A189334(n)+n)`
-/

namespace A226223.P4475688834657863651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (A189334 n + (n : ℤ)).toNat

end

end A226223.P4475688834657863651

/-!
# A226224: The largest value of k in base n for which the sum of digits of k = sqrt(k).

The programs for A226224, there is no canonical definition to state claims against.
-/

/-! ## A226224.P1854471755618675137

`A240752(∑[∑[ceil(6^(n-1))]])²`
-/

namespace A226224.P1854471755618675137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A226224.P1854471755618675137

/-! ## A226224.P12073283063610567920

`A343383(A006857(n))²`
-/

namespace A226224.P12073283063610567920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343383 (A006857 n).toNat ^ 2

end

end A226224.P12073283063610567920

/-!
# A226225: Expansion of phi(q) * phi(q^8) in powers of q where phi() is a Ramanujan theta function.

The programs for A226225, the canonical program `A226225.P11292451434803138646` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226225 has offset 0).

The definition of A226225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226225.P6836957123023111575

`(-1)^n*A242609(n)`
-/

namespace A226225.P6836957123023111575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A242609 n

end

end A226225.P6836957123023111575

namespace A226225

/-- `(-1)^n*A242609(n)` -/
def P6836957123023111575.Spec : Prop :=
  ∀ n, P6836957123023111575.a n = A226225 n

end A226225

/-! ## A226225.P3967790403868397947

`abs(A242609(n))`
-/

namespace A226225.P3967790403868397947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242609 n|

end

end A226225.P3967790403868397947

namespace A226225

/-- `abs(A242609(n))` -/
def P3967790403868397947.Spec : Prop :=
  ∀ n, P3967790403868397947.a n = A226225 n

end A226225

/-! ## A226225.P17710241904351832578

`A033715(n)*A133872(n)`
-/

namespace A226225.P17710241904351832578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A133872 n

end

end A226225.P17710241904351832578

namespace A226225

/-- `A033715(n)*A133872(n)` -/
def P17710241904351832578.Spec : Prop :=
  ∀ n, P17710241904351832578.a n = A226225 n

end A226225

/-! ## A226225.P11292451434803138646

`A129438(n)*A130731(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A226225

/-- `A129438(n)*A130731(n)` -/
def P11292451434803138646.Spec : Prop :=
  ∀ n, P11292451434803138646.a n = A226225 n

theorem P11292451434803138646.correct : P11292451434803138646.Spec := by
  intro n
  simp only [A226225]

end A226225

/-! ## A226225.P9049037524882444505

`A133872(n)*A139093(n)`
-/

namespace A226225.P9049037524882444505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A139093 n

end

end A226225.P9049037524882444505

namespace A226225

/-- `A133872(n)*A139093(n)` -/
def P9049037524882444505.Spec : Prop :=
  ∀ n, P9049037524882444505.a n = A226225 n

end A226225

/-! ## A226225.P17986013078864846292

`A082564(n)*A219977(n)`
-/

namespace A226225.P17986013078864846292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 n * A219977 n

end

end A226225.P17986013078864846292

namespace A226225

/-- `A082564(n)*A219977(n)` -/
def P17986013078864846292.Spec : Prop :=
  ∀ n, P17986013078864846292.a n = A226225 n

end A226225

/-! ## A226225.P9624072264438767385

`A133692(n)*A219977(n)`
-/

namespace A226225.P9624072264438767385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n * A219977 n

end

end A226225.P9624072264438767385

namespace A226225

/-- `A133692(n)*A219977(n)` -/
def P9624072264438767385.Spec : Prop :=
  ∀ n, P9624072264438767385.a n = A226225 n

end A226225

/-! ## A226225.P7243594582092908269

`A129438(n)*A245187(n)`
-/

namespace A226225.P7243594582092908269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 n * A245187 n

end

end A226225.P7243594582092908269

namespace A226225

/-- `A129438(n)*A245187(n)` -/
def P7243594582092908269.Spec : Prop :=
  ∀ n, P7243594582092908269.a n = A226225 n

end A226225

/-! ## A226225.P11762318888750018484

`gcd(A000038(n), A242609(n))`
-/

namespace A226225.P11762318888750018484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A242609 n)

end

end A226225.P11762318888750018484

namespace A226225

/-- `gcd(A000038(n), A242609(n))` -/
def P11762318888750018484.Spec : Prop :=
  ∀ n, (P11762318888750018484.a n : ℤ) = A226225 n

end A226225

/-! ## A226225.P4073963043695686623

`lcm(A033715(n), A128130(n))`
-/

namespace A226225.P4073963043695686623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033715 n) (A128130 n)

end

end A226225.P4073963043695686623

namespace A226225

/-- `lcm(A033715(n), A128130(n))` -/
def P4073963043695686623.Spec : Prop :=
  ∀ n, (P4073963043695686623.a n : ℤ) = A226225 n

end A226225

/-! ## A226225.P12168103332851215460

`lcm(A082564(n), A130731(n))`
-/

namespace A226225.P12168103332851215460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082564 n) (A130731 n)

end

end A226225.P12168103332851215460

namespace A226225

/-- `lcm(A082564(n), A130731(n))` -/
def P12168103332851215460.Spec : Prop :=
  ∀ n, (P12168103332851215460.a n : ℤ) = A226225 n

end A226225

/-! ## A226225.P10789752185345092300

`lcm(A000034(n), A242609(n))`
-/

namespace A226225.P10789752185345092300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A242609 n)

end

end A226225.P10789752185345092300

namespace A226225

/-- `lcm(A000034(n), A242609(n))` -/
def P10789752185345092300.Spec : Prop :=
  ∀ n, (P10789752185345092300.a n : ℤ) = A226225 n

end A226225

/-! ## A226225.P16713145546904200215

`lcm(A133692(n), A143432(n))`
-/

namespace A226225.P16713145546904200215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133692 n) (A143432 n)

end

end A226225.P16713145546904200215

namespace A226225

/-- `lcm(A133692(n), A143432(n))` -/
def P16713145546904200215.Spec : Prop :=
  ∀ n, (P16713145546904200215.a n : ℤ) = A226225 n

end A226225

/-! ## A226225.P10495343228933983438

`lcm(A139093(n), A219977(n))`
-/

namespace A226225.P10495343228933983438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139093 n) (A219977 n)

end

end A226225.P10495343228933983438

namespace A226225

/-- `lcm(A139093(n), A219977(n))` -/
def P10495343228933983438.Spec : Prop :=
  ∀ n, (P10495343228933983438.a n : ℤ) = A226225 n

end A226225

/-! ## A226225.P13992068643498065799

`∑{d}[A242609(n), A000010(#)]`
-/

namespace A226225.P13992068643498065799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A226225.P13992068643498065799

namespace A226225

/-- `∑{d}[A242609(n), A000010(#)]` -/
def P13992068643498065799.Spec : Prop :=
  ∀ n, P13992068643498065799.a n = A226225 n

end A226225

/-! ## A226225.P11141607258680708644

`A219977(n)²*A033715(n)`
-/

namespace A226225.P11141607258680708644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n ^ 2 * A033715 n

end

end A226225.P11141607258680708644

namespace A226225

/-- `A219977(n)²*A033715(n)` -/
def P11141607258680708644.Spec : Prop :=
  ∀ n, P11141607258680708644.a n = A226225 n

end A226225

/-! ## A226225.P8991974604418664492

`A242609(n)*A309873(n+1)`
-/

namespace A226225.P8991974604418664492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242609 n * A309873 (n + 1)

end

end A226225.P8991974604418664492

namespace A226225

/-- `A242609(n)*A309873(n+1)` -/
def P8991974604418664492.Spec : Prop :=
  ∀ n, P8991974604418664492.a n = A226225 n

end A226225

/-! ## A226225.P4801695465037313727

`A033715(n)*A342892(2*n+1)`
-/

namespace A226225.P4801695465037313727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A342892 (2 * n + 1)

end

end A226225.P4801695465037313727

namespace A226225

/-- `A033715(n)*A342892(2*n+1)` -/
def P4801695465037313727.Spec : Prop :=
  ∀ n, P4801695465037313727.a n = A226225 n

end A226225

/-! ## A226225.P6568338475088992451

`A033715(A047481(n+1))`
-/

namespace A226225.P6568338475088992451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A047481 (n + 1)).toNat

end

end A226225.P6568338475088992451

namespace A226225

/-- `A033715(A047481(n+1))` -/
def P6568338475088992451.Spec : Prop :=
  ∀ n, P6568338475088992451.a n = A226225 n

end A226225

/-! ## A226225.P7911922698323014577

`A028597(4*n)`
-/

namespace A226225.P7911922698323014577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028597 (4 * n)

end

end A226225.P7911922698323014577

namespace A226225

/-- `A028597(4*n)` -/
def P7911922698323014577.Spec : Prop :=
  ∀ n, P7911922698323014577.a n = A226225 n

end A226225

/-!
# A226226: Number of alignments of n points with no singleton cycles.

The programs for A226226, there is no canonical definition to state claims against.
-/

/-! ## A226226.P7059934619018818447

`A004525(A345697(n)+A321989(n))`
-/

namespace A226226.P7059934619018818447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A345697 n + A321989 n).toNat

end

end A226226.P7059934619018818447

/-! ## A226226.P1120247611425040997

`A004526(A345697(n)+A321989(n))`
-/

namespace A226226.P1120247611425040997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A345697 n + A321989 n).toNat

end

end A226226.P1120247611425040997

/-! ## A226226.P487003890422715755

`A025480(A345697(n)+A321989(n))`
-/

namespace A226226.P487003890422715755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A345697 n + A321989 n).toNat

end

end A226226.P487003890422715755

/-!
# A226227: Numbers m such that all lengths of runs of 0's in the binary representation of m are prime numbers.

The programs for A226227, there is no canonical definition to state claims against.
-/

/-! ## A226227.P14258011817804172984

`lt[A120008(A119999(3*(n+1))), A119972(n+1)]`
-/

namespace A226227.P14258011817804172984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120008 (A119999 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226227.P14258011817804172984

/-! ## A226227.P16757955519035198389

`lt[A351310(∑{d}[n+1, #*#%2]), A165123(2*n+3)]`
-/

namespace A226227.P16757955519035198389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (∑ d ∈ Nat.divisors (f2 n), d * (d % 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165123 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A226227.P16757955519035198389

/-! ## A226227.P8391297763043547101

`lt[A237593(n+1), A381437(A000203(n+1))]`
-/

namespace A226227.P8391297763043547101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381437 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226227.P8391297763043547101

/-! ## A226227.P8909394233480283916

`lt[A336424(A000203(n+1)), A332273(n+1)]`
-/

namespace A226227.P8909394233480283916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226227.P8909394233480283916

/-!
# A226228: Numbers m such that all lengths of runs of 1's in the binary representation of m are prime numbers.

The programs for A226228, there is no canonical definition to state claims against.
-/

/-! ## A226228.P13076521344348214816

`eq[1, A245196(n+1)]+1`
-/

namespace A226228.P13076521344348214816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226228.P13076521344348214816

/-! ## A226228.P536277467288912925

`eq[1, A245196(A028310(n))]`
-/

namespace A226228.P536277467288912925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226228.P536277467288912925

/-! ## A226228.P12420151462728039859

`A020725(eq[1, A245196(n+1)])`
-/

namespace A226228.P12420151462728039859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226228.P12420151462728039859

/-! ## A226228.P8653845119472604053

`eq[1, A133620(A255281(n))]`
-/

namespace A226228.P8653845119472604053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133620 (A255281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226228.P8653845119472604053

/-! ## A226228.P10325566544855398934

`lt[A114611(A071053(n)), A057427(n)]`
-/

namespace A226228.P10325566544855398934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 (A071053 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226228.P10325566544855398934

/-!
# A226229: Numbers m such that all lengths of runs of digits in base 2 representation of m are primes.

The programs for A226229, there is no canonical definition to state claims against.
-/

/-! ## A226229.P3951984574271811643

`∩[A226227(n+1), A226228(n+1)]`
-/

namespace A226229.P3951984574271811643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226229.P3951984574271811643

/-!
# A226230: Nontrivial prime powers (A025475) which are a sum of a smaller nontrivial prime power and a perfect square.

The programs for A226230, there is no canonical definition to state claims against.
-/

/-! ## A226230.P9582877512934944552

`lt[A010888(A079739(2*n+1)), A253641(n)]`
-/

namespace A226230.P9582877512934944552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A079739 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226230.P9582877512934944552

/-! ## A226230.P11678260606057643754

`A227649(A233556(n+1))`
-/

namespace A226230.P11678260606057643754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227649 (A233556 (n + 1)).toNat

end

end A226230.P11678260606057643754

/-!
# A226231: Nontrivial prime powers (A025475) which are a sum of a smaller nontrivial prime power and a perfect square in more than 1 way.

The programs for A226231, there is no canonical definition to state claims against.
-/

/-! ## A226231.P8765050081896112265

`filter[A270739(2*(n+1)), A204547(#)]`
-/

namespace A226231.P8765050081896112265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270739 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204547 (f1 j).toNat = 1) n)

end

end A226231.P8765050081896112265

/-!
# A226232: Nontrivial prime powers (A025475) which are a sum of a smaller nontrivial prime power and a perfect cube.

The programs for A226232, there is no canonical definition to state claims against.
-/

/-! ## A226232.P10144926970894015097

`A273291(A007289(n)*A013929(n+3))`
-/

namespace A226232.P10144926970894015097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273291 (A007289 n * A013929 (n + 3)).toNat

end

end A226232.P10144926970894015097

/-!
# A226233: Ten copies of each positive integer.

The programs for A226233, the canonical program `A226233.P7177852275908099123` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226233 has offset 1).

The definition of A226233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226233.P6892616686823938863

`∑[char[10*n]]`
-/

namespace A226233.P6892616686823938863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226233.P6892616686823938863

namespace A226233

/-- `∑[char[10*n]]` -/
def P6892616686823938863.Spec : Prop :=
  ∀ n, (P6892616686823938863.a n : ℤ) = A226233 (n + 1)

end A226233

/-! ## A226233.P7177852275908099123

`ceil(or(1, n)/10)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226233

/-- `ceil(or(1, n)/10)` -/
def P7177852275908099123.Spec : Prop :=
  ∀ n, P7177852275908099123.a n = A226233 (n + 1)

theorem P7177852275908099123.correct : P7177852275908099123.Spec := by
  intro n
  simp only [A226233, Nat.add_sub_cancel]

end A226233

/-! ## A226233.P15061263734447971577

`comp[lcm(11, n)]-n`
-/

namespace A226233.P15061263734447971577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 11 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A226233.P15061263734447971577

namespace A226233

/-- `comp[lcm(11, n)]-n` -/
def P15061263734447971577.Spec : Prop :=
  ∀ n, P15061263734447971577.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P17841015525528206202

`ceil((cos(1)+n)/10)`
-/

namespace A226233.P17841015525528206202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (1 : ℝ) + (n : ℝ)) / 10⌉

end

end A226233.P17841015525528206202

namespace A226233

/-- `ceil((cos(1)+n)/10)` -/
def P17841015525528206202.Spec : Prop :=
  ∀ n, P17841015525528206202.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P16245171888824474072

`round(cos(1)+n/10)`
-/

namespace A226233.P16245171888824474072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((n : ℚ) / 10 : ℝ))

end

end A226233.P16245171888824474072

namespace A226233

/-- `round(cos(1)+n/10)` -/
def P16245171888824474072.Spec : Prop :=
  ∀ n, P16245171888824474072.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P8317917577640075920

`ceil((sin(1)+n)/10)`
-/

namespace A226233.P8317917577640075920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + (n : ℝ)) / 10⌉

end

end A226233.P8317917577640075920

namespace A226233

/-- `ceil((sin(1)+n)/10)` -/
def P8317917577640075920.Spec : Prop :=
  ∀ n, P8317917577640075920.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P219358467989398843

`ceil((n-cos(2))/10)`
-/

namespace A226233.P219358467989398843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.cos (2 : ℝ)) / 10⌉

end

end A226233.P219358467989398843

namespace A226233

/-- `ceil((n-cos(2))/10)` -/
def P219358467989398843.Spec : Prop :=
  ∀ n, P219358467989398843.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P14878657891098168938

`ceil((atan(1)+n)/10)`
-/

namespace A226233.P14878657891098168938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (1 : ℝ) + (n : ℝ)) / 10⌉

end

end A226233.P14878657891098168938

namespace A226233

/-- `ceil((atan(1)+n)/10)` -/
def P14878657891098168938.Spec : Prop :=
  ∀ n, P14878657891098168938.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P1514961159592870649

`ceil((n-tan(3))/10)`
-/

namespace A226233.P1514961159592870649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.tan (3 : ℝ)) / 10⌉

end

end A226233.P1514961159592870649

namespace A226233

/-- `ceil((n-tan(3))/10)` -/
def P1514961159592870649.Spec : Prop :=
  ∀ n, P1514961159592870649.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P1371201948668593399

`ceil((n-sin(4))/10)`
-/

namespace A226233.P1371201948668593399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.sin (4 : ℝ)) / 10⌉

end

end A226233.P1371201948668593399

namespace A226233

/-- `ceil((n-sin(4))/10)` -/
def P1371201948668593399.Spec : Prop :=
  ∀ n, P1371201948668593399.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P4616895618776951578

`floor((cosh(3)+n)/10)`
-/

namespace A226233.P4616895618776951578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cosh (3 : ℝ) + (n : ℝ)) / 10⌋

end

end A226233.P4616895618776951578

namespace A226233

/-- `floor((cosh(3)+n)/10)` -/
def P4616895618776951578.Spec : Prop :=
  ∀ n, P4616895618776951578.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P7089543563594021965

`ceil((tanh(1)+n)/10)`
-/

namespace A226233.P7089543563594021965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tanh (1 : ℝ) + (n : ℝ)) / 10⌉

end

end A226233.P7089543563594021965

namespace A226233

/-- `ceil((tanh(1)+n)/10)` -/
def P7089543563594021965.Spec : Prop :=
  ∀ n, P7089543563594021965.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P348990208760625069

`floor((sinh(3)+n)/10)`
-/

namespace A226233.P348990208760625069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sinh (3 : ℝ) + (n : ℝ)) / 10⌋

end

end A226233.P348990208760625069

namespace A226233

/-- `floor((sinh(3)+n)/10)` -/
def P348990208760625069.Spec : Prop :=
  ∀ n, P348990208760625069.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P6965654935113638433

`ceil(record[xor(3, n)]/40)`
-/

namespace A226233.P6965654935113638433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 40⌉

end

end A226233.P6965654935113638433

namespace A226233

/-- `ceil(record[xor(3, n)]/40)` -/
def P6965654935113638433.Spec : Prop :=
  ∀ n, P6965654935113638433.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P4673915298834471688

`char[10*n]+a(n-1)` with `a(0)=1`
-/

namespace A226233.P4673915298834471688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A226233.P4673915298834471688

namespace A226233

/-- `char[10*n]+a(n-1)` -/
def P4673915298834471688.Spec : Prop :=
  ∀ n, (P4673915298834471688.a n : ℤ) = A226233 (n + 1)

end A226233

/-! ## A226233.P10956176667250244675

`ceil(gcd(2, n)/3)+floor(n/10)`
-/

namespace A226233.P10956176667250244675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.gcd 2 n : ℚ) / 3⌉ + ⌊(n : ℚ) / 10⌋

end

end A226233.P10956176667250244675

namespace A226233

/-- `ceil(gcd(2, n)/3)+floor(n/10)` -/
def P10956176667250244675.Spec : Prop :=
  ∀ n, P10956176667250244675.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P426153671272263830

`floor(∑[1-a(n-1)]/5)` with `a(0)=5, a(1)=0`
-/

namespace A226233.P426153671272263830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A226233.P426153671272263830

namespace A226233

/-- `floor(∑[1-a(n-1)]/5)` -/
def P426153671272263830.Spec : Prop :=
  ∀ n, P426153671272263830.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P2811801287973231077

`A059995(n)+1`
-/

namespace A226233.P2811801287973231077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + 1

end

end A226233.P2811801287973231077

namespace A226233

/-- `A059995(n)+1` -/
def P2811801287973231077.Spec : Prop :=
  ∀ n, P2811801287973231077.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P10506847205715432323

`floor(sqrt(A187243(n)))`
-/

namespace A226233.P10506847205715432323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A187243 n)

end

end A226233.P10506847205715432323

namespace A226233

/-- `floor(sqrt(A187243(n)))` -/
def P10506847205715432323.Spec : Prop :=
  ∀ n, P10506847205715432323.a n = A226233 (n + 1)

end A226233

/-! ## A226233.P7539555126471634806

`comp[A008593(n)]-n`
-/

namespace A226233.P7539555126471634806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A226233.P7539555126471634806

namespace A226233

/-- `comp[A008593(n)]-n` -/
def P7539555126471634806.Spec : Prop :=
  ∀ n, P7539555126471634806.a n = A226233 (n + 1)

end A226233

/-!
# A226234: Triangle defined by T(n,k) = binomial(n^2, k^2), for n>=0, k=0..n, as read by rows.

The programs for A226234, the canonical program `A226234.P1450360628482624230` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226234 has offset 0).

The definition of A226234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226234.P1450360628482624230

`A209330(n)/A245243(n)*A228832(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A226234

/-- `A209330(n)/A245243(n)*A228832(n)` -/
def P1450360628482624230.Spec : Prop :=
  ∀ n, P1450360628482624230.a n = (A226234 n : ℚ)

end A226234

/-! ## A226234.P5534924625776829028

`C(A003056(n)², A143844(n))`
-/

namespace A226234.P5534924625776829028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A143844 n).toNat

end

end A226234.P5534924625776829028

namespace A226234

/-- `C(A003056(n)², A143844(n))` -/
def P5534924625776829028.Spec : Prop :=
  ∀ n, (P5534924625776829028.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P14134713005904348492

`C(A003056(n)², A335821(n))`
-/

namespace A226234.P14134713005904348492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A335821 n).toNat

end

end A226234.P14134713005904348492

namespace A226234

/-- `C(A003056(n)², A335821(n))` -/
def P14134713005904348492.Spec : Prop :=
  ∀ n, (P14134713005904348492.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P5277435763736041134

`C(A003056(n)², A002262(n)²)`
-/

namespace A226234.P5277435763736041134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A002262 n ^ 2).toNat

end

end A226234.P5277435763736041134

namespace A226234

/-- `C(A003056(n)², A002262(n)²)` -/
def P5277435763736041134.Spec : Prop :=
  ∀ n, (P5277435763736041134.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P3493280774226919886

`C((n-A083920(n))², A335821(n))`
-/

namespace A226234.P3493280774226919886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n : ℤ) - A083920 n) ^ 2).toNat (A335821 n).toNat

end

end A226234.P3493280774226919886

namespace A226234

/-- `C((n-A083920(n))², A335821(n))` -/
def P3493280774226919886.Spec : Prop :=
  ∀ n, (P3493280774226919886.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P14945337000938925916

`C(A003056(n)², log2(A059268(n))²)`
-/

namespace A226234.P14945337000938925916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) ^ 2)).toNat

end

end A226234.P14945337000938925916

namespace A226234

/-- `C(A003056(n)², log2(A059268(n))²)` -/
def P14945337000938925916.Spec : Prop :=
  ∀ n, (P14945337000938925916.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P17106974496853218633

`C(A330709(2*n)², A330709(2*n+1)²)`
-/

namespace A226234.P17106974496853218633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A330709 (2 * n) ^ 2).toNat (A330709 (2 * n + 1) ^ 2).toNat

end

end A226234.P17106974496853218633

namespace A226234

/-- `C(A330709(2*n)², A330709(2*n+1)²)` -/
def P17106974496853218633.Spec : Prop :=
  ∀ n, (P17106974496853218633.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P1167064076317519887

`C(A048147(A057944(n)), A143844(n))`
-/

namespace A226234.P1167064076317519887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048147 (A057944 n).toNat).toNat (A143844 n).toNat

end

end A226234.P1167064076317519887

namespace A226234

/-- `C(A048147(A057944(n)), A143844(n))` -/
def P1167064076317519887.Spec : Prop :=
  ∀ n, (P1167064076317519887.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P6113985082471508087

`C(A048760(A061885(n)), A143844(n))`
-/

namespace A226234.P6113985082471508087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048760 (A061885 n).toNat).toNat (A143844 n).toNat

end

end A226234.P6113985082471508087

namespace A226234

/-- `C(A048760(A061885(n)), A143844(n))` -/
def P6113985082471508087.Spec : Prop :=
  ∀ n, (P6113985082471508087.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P5930646280480562884

`C(A133280(A057944(n)), A002262(n)²)`
-/

namespace A226234.P5930646280480562884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133280 (A057944 n).toNat).toNat (A002262 n ^ 2).toNat

end

end A226234.P5930646280480562884

namespace A226234

/-- `C(A133280(A057944(n)), A002262(n)²)` -/
def P5930646280480562884.Spec : Prop :=
  ∀ n, (P5930646280480562884.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P8455872315192356913

`C(A143844(A025581(n)+n), A143844(n))`
-/

namespace A226234.P8455872315192356913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A143844 (A025581 n + (n : ℤ)).toNat).toNat (A143844 n).toNat

end

end A226234.P8455872315192356913

namespace A226234

/-- `C(A143844(A025581(n)+n), A143844(n))` -/
def P8455872315192356913.Spec : Prop :=
  ∀ n, (P8455872315192356913.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P12254386929437716665

`C(A335821(n)+A143844(n), A143844(n))`
-/

namespace A226234.P12254386929437716665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n + A143844 n).toNat (A143844 n).toNat

end

end A226234.P12254386929437716665

namespace A226234

/-- `C(A335821(n)+A143844(n), A143844(n))` -/
def P12254386929437716665.Spec : Prop :=
  ∀ n, (P12254386929437716665.a n : ℤ) = A226234 n

end A226234

/-! ## A226234.P3936387533281456592

`A123163(A245300(n))`
-/

namespace A226234.P3936387533281456592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123163 (A245300 n).toNat

end

end A226234.P3936387533281456592

namespace A226234

/-- `A123163(A245300(n))` -/
def P3936387533281456592.Spec : Prop :=
  ∀ n, P3936387533281456592.a n = A226234 n

end A226234

/-!
# A226235: Expansion of q * (chi(-q) / chi(-q^3))^12 in powers of q where chi() is a Ramanujan theta function.

The programs for A226235, there is no canonical definition to state claims against.
-/

/-! ## A226235.P9986676839561003344

`A128637(n+1)-A128642(n+1)`
-/

namespace A226235.P9986676839561003344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128637 (n + 1) - A128642 (n + 1)

end

end A226235.P9986676839561003344

/-!
# A226237: Sum of the parts in the Goldbach partitions of 2n.

The programs for A226237, there is no canonical definition to state claims against.
-/

/-! ## A226237.P11735504203655955141

`2*(n+1)*A045917(n+1)`
-/

namespace A226237.P11735504203655955141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A045917 (n + 1)

end

end A226237.P11735504203655955141

/-! ## A226237.P6913471687113048541

`2*(n+1)*A068307(2*(n+2))`
-/

namespace A226237.P6913471687113048541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A068307 (2 * (n + 2)))

end

end A226237.P6913471687113048541

/-! ## A226237.P12126777525375453230

`2*(n+1)*(A002375(n+1)+char[1])`
-/

namespace A226237.P12126777525375453230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (A002375 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A226237.P12126777525375453230

/-! ## A226237.P7777542903889387393

`(1-A227065(n+1)+n)*2*(n+1)`
-/

namespace A226237.P7777542903889387393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A227065 (n + 1) + (n : ℤ)) * (2 * (n + 1) : ℤ)

end

end A226237.P7777542903889387393

/-! ## A226237.P7577151919538241595

`A045917(n+1)*A103517(n)`
-/

namespace A226237.P7577151919538241595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) * A103517 n

end

end A226237.P7577151919538241595

/-! ## A226237.P6143127011892075040

`A045917(n+1)*A163300(n+1)`
-/

namespace A226237.P6143127011892075040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) * A163300 (n + 1)

end

end A226237.P6143127011892075040

/-! ## A226237.P2899681081719945382

`A045917(n+1)*A051755(n+2)`
-/

namespace A226237.P2899681081719945382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) * A051755 (n + 2)

end

end A226237.P2899681081719945382

/-! ## A226237.P14859097703926213699

`A154786(n+1)+2*A061397(n+1)`
-/

namespace A226237.P14859097703926213699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154786 (n + 1) + 2 * A061397 (n + 1)

end

end A226237.P14859097703926213699

/-! ## A226237.P12317183050262061453

`(n+1)*(A035026(n+1)+A010051(n+1))`
-/

namespace A226237.P12317183050262061453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A035026 (n + 1) + A010051 (n + 1))

end

end A226237.P12317183050262061453

/-! ## A226237.P8809858976640301716

`2*(n+1)*A061358(2*(n+1))`
-/

namespace A226237.P8809858976640301716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A061358 (2 * (n + 1))

end

end A226237.P8809858976640301716

/-! ## A226237.P3821312803091955729

`2*(n+1)*A002375(A089026(lcm(2, n+1))+n)`
-/

namespace A226237.P3821312803091955729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A002375 (A089026 (Nat.lcm 2 (n + 1)) + (n : ℤ)).toNat

end

end A226237.P3821312803091955729

/-! ## A226237.P7021007892398305703

`(A073610(2*(n+1))+A064911(2*(n+1)))*(n+1)`
-/

namespace A226237.P7021007892398305703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073610 (2 * (n + 1)) + A064911 (2 * (n + 1))) * (n + 1 : ℤ)

end

end A226237.P7021007892398305703

/-! ## A226237.P5622570919316702358

`A061358(A103517(n))*A103517(n)`
-/

namespace A226237.P5622570919316702358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A103517 n).toNat * A103517 n

end

end A226237.P5622570919316702358

/-! ## A226237.P13758997542093787298

`A005843((n+1)*A045917(n+1))`
-/

namespace A226237.P13758997542093787298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n + 1 : ℤ) * A045917 (n + 1)).toNat

end

end A226237.P13758997542093787298

/-!
# A226238: a(n) = (n^n - n)/(n - 1).

The programs for A226238, the canonical program `A226238.P540771707374579049` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226238 has offset 2).

The definition of A226238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226238.P3777716168384122374

`A023037(n+2)-1`
-/

namespace A226238.P3777716168384122374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 (n + 2) - 1

end

end A226238.P3777716168384122374

namespace A226238

/-- `A023037(n+2)-1` -/
def P3777716168384122374.Spec : Prop :=
  ∀ n, P3777716168384122374.a n = A226238 (n + 2)

end A226238

/-! ## A226238.P540771707374579049

`((n+2)^(n+2)-(n+2))/(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226238

/-- `((n+2)^(n+2)-(n+2))/(n+1)` -/
def P540771707374579049.Spec : Prop :=
  ∀ n, P540771707374579049.a n = (A226238 (n + 2) : ℚ)

end A226238

/-! ## A226238.P14447214266359661019

`lcm(n+2, floor((n+2)^(n+1)/(n+1)))`
-/

namespace A226238.P14447214266359661019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) ⌊((n + 2) ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A226238.P14447214266359661019

namespace A226238

/-- `lcm(n+2, floor((n+2)^(n+1)/(n+1)))` -/
def P14447214266359661019.Spec : Prop :=
  ∀ n, (P14447214266359661019.a n : ℤ) = A226238 (n + 2)

end A226238

/-! ## A226238.P2091816627083388601

`(n+1)*A058128(n+2)`
-/

namespace A226238.P2091816627083388601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058128 (n + 2)

end

end A226238.P2091816627083388601

namespace A226238

/-- `(n+1)*A058128(n+2)` -/
def P2091816627083388601.Spec : Prop :=
  ∀ n, P2091816627083388601.a n = A226238 (n + 2)

end A226238

/-! ## A226238.P1245784230902962858

`(n+2)*A060072(n+2)`
-/

namespace A226238.P1245784230902962858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060072 (n + 2)

end

end A226238.P1245784230902962858

namespace A226238

/-- `(n+2)*A060072(n+2)` -/
def P1245784230902962858.Spec : Prop :=
  ∀ n, P1245784230902962858.a n = A226238 (n + 2)

end A226238

/-! ## A226238.P8740902903660954591

`2/(n+1)*A124797(n+1)`
-/

namespace A226238.P8740902903660954591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A124797 (n + 1) : ℚ)

end

end A226238.P8740902903660954591

namespace A226238

/-- `2/(n+1)*A124797(n+1)` -/
def P8740902903660954591.Spec : Prop :=
  ∀ n, P8740902903660954591.a n = (A226238 (n + 2) : ℚ)

end A226238

/-! ## A226238.P12399227197612168406

`A051846(n+1)+A023811(n+2)`
-/

namespace A226238.P12399227197612168406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051846 (n + 1) + A023811 (n + 2)

end

end A226238.P12399227197612168406

namespace A226238

/-- `A051846(n+1)+A023811(n+2)` -/
def P12399227197612168406.Spec : Prop :=
  ∀ n, P12399227197612168406.a n = A226238 (n + 2)

end A226238

/-! ## A226238.P457920558123771094

`A060072(n+2)+A037205(n+1)`
-/

namespace A226238.P457920558123771094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060072 (n + 2) + A037205 (n + 1)

end

end A226238.P457920558123771094

namespace A226238

/-- `A060072(n+2)+A037205(n+1)` -/
def P457920558123771094.Spec : Prop :=
  ∀ n, P457920558123771094.a n = A226238 (n + 2)

end A226238

/-! ## A226238.P9546319980586488345

`A031972(n+2)-A000312(n+2)`
-/

namespace A226238.P9546319980586488345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031972 (n + 2) - A000312 (n + 2)

end

end A226238.P9546319980586488345

namespace A226238

/-- `A031972(n+2)-A000312(n+2)` -/
def P9546319980586488345.Spec : Prop :=
  ∀ n, P9546319980586488345.a n = A226238 (n + 2)

end A226238

/-! ## A226238.P7857681157853940261

`A000312(n+2)-A117667(n+2)`
-/

namespace A226238.P7857681157853940261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 2) - A117667 (n + 2)

end

end A226238.P7857681157853940261

namespace A226238

/-- `A000312(n+2)-A117667(n+2)` -/
def P7857681157853940261.Spec : Prop :=
  ∀ n, P7857681157853940261.a n = A226238 (n + 2)

end A226238

/-!
# A226239: Minimum m such that there exists an n-row subtractive triangle with distinct integers in 1..m.

The programs for A226239, there is no canonical definition to state claims against.
-/

/-! ## A226239.P9739545008188753866

`∑[∑[A074823(A146613(n+1))]]`
-/

namespace A226239.P9739545008188753866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (A146613 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226239.P9739545008188753866

/-! ## A226239.P18307550515004707609

`A342524(A357452(2*n+1)+n)`
-/

namespace A226239.P18307550515004707609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (A357452 (2 * n + 1) + (n : ℤ)).toNat

end

end A226239.P18307550515004707609

/-! ## A226239.P4530232392091972342

`A120401(A063542(n+4))+∏{p}[n+1, #*val(n+1, #)]`
-/

namespace A226239.P4530232392091972342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A063542 (n + 4)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A226239.P4530232392091972342

/-! ## A226239.P18064224035442119602

`A361907(n+1)+∑[A070939(A014137(n))]`
-/

namespace A226239.P18064224035442119602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A014137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361907 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226239.P18064224035442119602

/-! ## A226239.P17696432429792332871

`A316495(A046682(n+2)+∑[A112318(n)])`
-/

namespace A226239.P17696432429792332871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A046682 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226239.P17696432429792332871

/-!
# A226240: Expansion of phi(q^4) * phi(q^8) + 2 * q *phi(q^2) * psi(q^8) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A226240, the canonical program `A226240.P5796431811651741051` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226240 has offset 0).

The definition of A226240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226240.P5796431811651741051

`(n%2+1)*A129438(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A226240

/-- `(n%2+1)*A129438(n)` -/
def P5796431811651741051.Spec : Prop :=
  ∀ n, P5796431811651741051.a n = A226240 n

theorem P5796431811651741051.correct : P5796431811651741051.Spec := by
  intro n
  simp only [A226240]

end A226240

/-! ## A226240.P17243851403717104823

`A129438(lcm(n, 4/gcd(2, n)))`
-/

namespace A226240.P17243851403717104823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (4 / (Nat.gcd 2 n : ℚ))))

end

end A226240.P17243851403717104823

namespace A226240

/-- `A129438(lcm(n, 4/gcd(2, n)))` -/
def P17243851403717104823.Spec : Prop :=
  ∀ n, P17243851403717104823.a n = A226240 n

end A226240

/-! ## A226240.P6958332087639497696

`A129438(n*(and(1, n)+1)²)`
-/

namespace A226240.P6958332087639497696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 (n * (Nat.land 1 n + 1) ^ 2)

end

end A226240.P6958332087639497696

namespace A226240

/-- `A129438(n*(and(1, n)+1)²)` -/
def P6958332087639497696.Spec : Prop :=
  ∀ n, P6958332087639497696.a n = A226240 n

end A226240

/-! ## A226240.P5523633057838537366

`lcm(C(2, and(4, n²)), A139093(n))`
-/

namespace A226240.P5523633057838537366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose 2 (Nat.land 4 (n ^ 2)) : ℤ) (A139093 n)

end

end A226240.P5523633057838537366

namespace A226240

/-- `lcm(C(2, and(4, n²)), A139093(n))` -/
def P5523633057838537366.Spec : Prop :=
  ∀ n, (P5523633057838537366.a n : ℤ) = A226240 n

end A226240

/-! ## A226240.P9406245426544539827

`char[round(4*n/3)]*A033715(n)`
-/

namespace A226240.P9406245426544539827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033715 n

end

end A226240.P9406245426544539827

namespace A226240

/-- `char[round(4*n/3)]*A033715(n)` -/
def P9406245426544539827.Spec : Prop :=
  ∀ n, P9406245426544539827.a n = A226240 n

end A226240

/-! ## A226240.P8474499425465581919

`A226225(A227043(n))`
-/

namespace A226240.P8474499425465581919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (A227043 n).toNat

end

end A226240.P8474499425465581919

namespace A226240

/-- `A226225(A227043(n))` -/
def P8474499425465581919.Spec : Prop :=
  ∀ n, P8474499425465581919.a n = A226240 n

end A226240

/-! ## A226240.P2360147445973992870

`A033715(A047441(n+1))`
-/

namespace A226240.P2360147445973992870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A047441 (n + 1)).toNat

end

end A226240.P2360147445973992870

namespace A226240

/-- `A033715(A047441(n+1))` -/
def P2360147445973992870.Spec : Prop :=
  ∀ n, P2360147445973992870.a n = A226240 n

end A226240

/-! ## A226240.P9550444227274824592

`A129438(2*A064680(n))`
-/

namespace A226240.P9550444227274824592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 (2 * A064680 n).toNat

end

end A226240.P9550444227274824592

namespace A226240

/-- `A129438(2*A064680(n))` -/
def P9550444227274824592.Spec : Prop :=
  ∀ n, P9550444227274824592.a n = A226240 n

end A226240

/-! ## A226240.P5960713132683622737

`A000034(n)*A129438(n)`
-/

namespace A226240.P5960713132683622737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A129438 n

end

end A226240.P5960713132683622737

namespace A226240

/-- `A000034(n)*A129438(n)` -/
def P5960713132683622737.Spec : Prop :=
  ∀ n, P5960713132683622737.a n = A226240 n

theorem P5960713132683622737.correct : P5960713132683622737.Spec := by
  intro n
  simp only [A226240, Nat.add_sub_cancel, A226240.P5960713132683622737.a, A226240.P5796431811651741051.a, A000034, A000034.P10773112074177680709.a, A129438, A129438.P16505802994344033545.a, A028310, A028310.P18130301328277559831.a, A125096, A125096.P3255662404427325146.f1, A125096.P3255662404427325146.a, A002325, A002325.P14825616568919519912.a, A098180, A098180.P11629086435957811381.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A188171, A188171.P17289095504074848112.a, A188172, A188172.P3980200347470981964.f1, A188172.P3980200347470981964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226240

/-! ## A226240.P1437088711405031540

`A033715(n)*A152822(n)`
-/

namespace A226240.P1437088711405031540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A152822 n

end

end A226240.P1437088711405031540

namespace A226240

/-- `A033715(n)*A152822(n)` -/
def P1437088711405031540.Spec : Prop :=
  ∀ n, P1437088711405031540.a n = A226240 n

end A226240

/-! ## A226240.P17252185236802551324

`A068073(n)*A129438(n)`
-/

namespace A226240.P17252185236802551324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n * A129438 n

end

end A226240.P17252185236802551324

namespace A226240

/-- `A068073(n)*A129438(n)` -/
def P17252185236802551324.Spec : Prop :=
  ∀ n, P17252185236802551324.a n = A226240 n

end A226240

/-! ## A226240.P6671415002097094543

`A129438(n)*A177002(n)`
-/

namespace A226240.P6671415002097094543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 n * A177002 n

end

end A226240.P6671415002097094543

namespace A226240

/-- `A129438(n)*A177002(n)` -/
def P6671415002097094543.Spec : Prop :=
  ∀ n, P6671415002097094543.a n = A226240 n

end A226240

/-! ## A226240.P16452675480773328581

`gcd(A028572(n), A226225(n))`
-/

namespace A226240.P16452675480773328581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028572 n) (A226225 n)

end

end A226240.P16452675480773328581

namespace A226240

/-- `gcd(A028572(n), A226225(n))` -/
def P16452675480773328581.Spec : Prop :=
  ∀ n, (P16452675480773328581.a n : ℤ) = A226240 n

end A226240

/-! ## A226240.P8978843342247442574

`lcm(A033715(n), A046980(n))`
-/

namespace A226240.P8978843342247442574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033715 n) (A046980 n)

end

end A226240.P8978843342247442574

namespace A226240

/-- `lcm(A033715(n), A046980(n))` -/
def P8978843342247442574.Spec : Prop :=
  ∀ n, (P8978843342247442574.a n : ℤ) = A226240 n

end A226240

/-! ## A226240.P13906359896653767020

`lcm(A082564(n), A098178(n))`
-/

namespace A226240.P13906359896653767020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082564 n) (A098178 n)

end

end A226240.P13906359896653767020

namespace A226240

/-- `lcm(A082564(n), A098178(n))` -/
def P13906359896653767020.Spec : Prop :=
  ∀ n, (P13906359896653767020.a n : ℤ) = A226240 n

end A226240

/-! ## A226240.P17057050243493353441

`lcm(A129438(n), A133692(n))`
-/

namespace A226240.P17057050243493353441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129438 n) (A133692 n)

end

end A226240.P17057050243493353441

namespace A226240

/-- `lcm(A129438(n), A133692(n))` -/
def P17057050243493353441.Spec : Prop :=
  ∀ n, (P17057050243493353441.a n : ℤ) = A226240 n

end A226240

/-! ## A226240.P10121175019999983718

`lcm(A139093(n), A323202(n))`
-/

namespace A226240.P10121175019999983718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139093 n) (A323202 n)

end

end A226240.P10121175019999983718

namespace A226240

/-- `lcm(A139093(n), A323202(n))` -/
def P10121175019999983718.Spec : Prop :=
  ∀ n, (P10121175019999983718.a n : ℤ) = A226240 n

end A226240

/-! ## A226240.P2596343207502460133

`A129438(n)*A363228(n+1)`
-/

namespace A226240.P2596343207502460133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 n * A363228 (n + 1)

end

end A226240.P2596343207502460133

namespace A226240

/-- `A129438(n)*A363228(n+1)` -/
def P2596343207502460133.Spec : Prop :=
  ∀ n, P2596343207502460133.a n = A226240 n

end A226240

/-! ## A226240.P14203592129343879829

`A129438(n)*A161974(n)`
-/

namespace A226240.P14203592129343879829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 n * A161974 n

end

end A226240.P14203592129343879829

namespace A226240

/-- `A129438(n)*A161974(n)` -/
def P14203592129343879829.Spec : Prop :=
  ∀ n, P14203592129343879829.a n = A226240 n

end A226240

/-!
# A226241: Primes that cannot be reached from 2 via a chain of primes obtained adding or deleting a digit from the end or the beginning of the previous term of the chain.

The programs for A226241, there is no canonical definition to state claims against.
-/

/-! ## A226241.P10522582246405894233

`p?[A080535(n+3)]`
-/

namespace A226241.P10522582246405894233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080535 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226241.P10522582246405894233

/-!
# A226243: Denominators of the probability of success in sultan's dowry problem with n daughters.

The programs for A226243, there is no canonical definition to state claims against.
-/

/-! ## A226243.P10427088726371380428

`gcd(∏[n+1], A039785(2*n+1))`
-/

namespace A226243.P10427088726371380428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A039785 (2 * n + 1))

end

end A226243.P10427088726371380428

/-! ## A226243.P13629122542528944149

`A278241(A140595(n²))`
-/

namespace A226243.P13629122542528944149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (A140595 (n ^ 2)).toNat

end

end A226243.P13629122542528944149

/-!
# A226244: Successive record-setters (maxima) in Hofstadter's Q-sequence (A005185).

The programs for A226244, the canonical program `A226244.P6865744614661076614` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226244 has offset 1).

The definition of A226244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226244.P6865744614661076614

`record[a(n-a(n-1))+a(n-a(n-2))]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226244

/-- `record[a(n-a(n-1))+a(n-a(n-2))]` -/
def P6865744614661076614.Spec : Prop :=
  ∀ n, (P6865744614661076614.a n : ℤ) = A226244 (n + 1)

theorem P6865744614661076614.correct : P6865744614661076614.Spec := by
  intro n
  simp only [A226244, Nat.add_sub_cancel]

end A226244

/-! ## A226244.P8914026912298703144

`record[A005185(n+1)]`
-/

namespace A226244.P8914026912298703144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226244.P8914026912298703144

namespace A226244

/-- `record[A005185(n+1)]` -/
def P8914026912298703144.Spec : Prop :=
  ∀ n, P8914026912298703144.a n = A226244 (n + 1)

end A226244

/-! ## A226244.P14466037185494893903

`record[Δ[A076268(n+1)]]`
-/

namespace A226244.P14466037185494893903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076268 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226244.P14466037185494893903

namespace A226244

/-- `record[Δ[A076268(n+1)]]` -/
def P14466037185494893903.Spec : Prop :=
  ∀ n, P14466037185494893903.a n = A226244 (n + 1)

end A226244

/-! ## A226244.P10826352583999188554

`record[A240809(2*(n+1))/2]`
-/

namespace A226244.P10826352583999188554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240809 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226244.P10826352583999188554

namespace A226244

/-- `record[A240809(2*(n+1))/2]` -/
def P10826352583999188554.Spec : Prop :=
  ∀ n, P10826352583999188554.a n = (A226244 (n + 1) : ℚ)

end A226244

/-! ## A226244.P3719836692655867600

`record[A081827(n)+a(n-1)]` with `a(0)=1`
-/

namespace A226244.P3719836692655867600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A081827 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226244.P3719836692655867600

namespace A226244

/-- `record[A081827(n)+a(n-1)]` -/
def P3719836692655867600.Spec : Prop :=
  ∀ n, P3719836692655867600.a n = A226244 (n + 1)

end A226244

/-! ## A226244.P12352777102801790442

`A005185(A226245(n+1))`
-/

namespace A226244.P12352777102801790442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A226245 (n + 1)).toNat

end

end A226244.P12352777102801790442

namespace A226244

/-- `A005185(A226245(n+1))` -/
def P12352777102801790442.Spec : Prop :=
  ∀ n, P12352777102801790442.a n = A226244 (n + 1)

end A226244

/-! ## A226244.P13070035131895685415

`record[A004001(n+1)-A284019(n+1)]`
-/

namespace A226244.P13070035131895685415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A284019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226244.P13070035131895685415

namespace A226244

/-- `record[A004001(n+1)-A284019(n+1)]` -/
def P13070035131895685415.Spec : Prop :=
  ∀ n, P13070035131895685415.a n = A226244 (n + 1)

end A226244

/-! ## A226244.P12056786711572758056

`record[A076268(n+2)-A076268(n+1)]`
-/

namespace A226244.P12056786711572758056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076268 (n + 2) - A076268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226244.P12056786711572758056

namespace A226244

/-- `record[A076268(n+2)-A076268(n+1)]` -/
def P12056786711572758056.Spec : Prop :=
  ∀ n, P12056786711572758056.a n = A226244 (n + 1)

end A226244

/-!
# A226245: Locations of successive record-setters (maxima) in Hofstadter's Q-sequence.

The programs for A226245, there is no canonical definition to state claims against.
-/

/-! ## A226245.P1253130731645420040

`A087753(A226244(n+1))`
-/

namespace A226245.P1253130731645420040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087753 (A226244 (n + 1)).toNat

end

end A226245.P1253130731645420040

/-! ## A226245.P3632650682589592734

`A087753(record[A005185(n+1)])`
-/

namespace A226245.P3632650682589592734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226245.P3632650682589592734

/-! ## A226245.P9527935390431307828

`A087753(record[A081827(n)+a(n-1)])` with `a(0)=1`
-/

namespace A226245.P9527935390431307828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A081827 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226245.P9527935390431307828

/-! ## A226245.P7425763514030548641

`A087753(record[A004001(n+1)-A284019(n+1)])`
-/

namespace A226245.P7425763514030548641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A284019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226245.P7425763514030548641

/-!
# A226246: Triangle T(n, k), read by rows 1<=n, 1<=k<=n: Number of cells touched by a unit-width diagonal in a regular n X k grid.

The programs for A226246, there is no canonical definition to state claims against.
-/

/-! ## A226246.P1606255079300378302

`A209082(A013610(n))+A036042(n)`
-/

namespace A226246.P1606255079300378302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209082 (A013610 n).toNat + A036042 n

end

end A226246.P1606255079300378302

/-! ## A226246.P11589591158934108422

`A346697(A013611(n))+A094727(n+1)`
-/

namespace A226246.P11589591158934108422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (A013611 n).toNat + A094727 (n + 1)

end

end A226246.P11589591158934108422

/-!
# A226247: Let S be the set of numbers defined by these rules: 0 is in S; if x is in S, then x+1 is in S, and if nonzero x is in S, then -1/x are in S. (See Comments.)

The programs for A226247, there is no canonical definition to state claims against.
-/

/-! ## A226247.P1728772265985658814

`A226130(n+1-(7%(n+1))%7)`
-/

namespace A226247.P1728772265985658814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226130 (n + 1 - 7 % (n + 1) % 7)

end

end A226247.P1728772265985658814

/-! ## A226247.P3193069829284450074

`A226130(round(A226152(n+1)/A226104(n+1)+n))`
-/

namespace A226247.P3193069829284450074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226130 (SequenceMachineLib.roundAway ((A226152 (n + 1) : ℚ) / (A226104 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A226247.P3193069829284450074

/-! ## A226247.P7060362645619402528

`A193592(round(ratio[A224917(n)]))`
-/

namespace A226247.P7060362645619402528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A226247.P7060362645619402528

/-!
# A226249: Positions of nonpositive numbers in the ordering of the rational numbers at A226247.

The programs for A226249, the canonical program `A226249.P14717814060728136039` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226249 has offset 1).

The definition of A226249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226249.P14717814060728136039

`A005374(n+1)+n+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226249

/-- `A005374(n+1)+n+1` -/
def P14717814060728136039.Spec : Prop :=
  ∀ n, P14717814060728136039.a n = A226249 (n + 1)

theorem P14717814060728136039.correct : P14717814060728136039.Spec := by
  intro n
  simp only [A226249, Nat.add_sub_cancel]

end A226249

/-! ## A226249.P10040861807781910999

`∑[Δ[A005374(n)]+1]`
-/

namespace A226249.P10040861807781910999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226249.P10040861807781910999

namespace A226249

/-- `∑[Δ[A005374(n)]+1]` -/
def P10040861807781910999.Spec : Prop :=
  ∀ n, P10040861807781910999.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P9166731176979778212

`∑[A105083(n)%2]+n+1`
-/

namespace A226249.P9166731176979778212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105083 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A226249.P9166731176979778212

namespace A226249

/-- `∑[A105083(n)%2]+n+1` -/
def P9166731176979778212.Spec : Prop :=
  ∀ n, P9166731176979778212.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P7347359784460034055

`∑[A000267(Δ[A005374(n)])]`
-/

namespace A226249.P7347359784460034055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226249.P7347359784460034055

namespace A226249

/-- `∑[A000267(Δ[A005374(n)])]` -/
def P7347359784460034055.Spec : Prop :=
  ∀ n, P7347359784460034055.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P16305271541748739910

`∑[A053799(Δ[A005374(n)])]`
-/

namespace A226249.P16305271541748739910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226249.P16305271541748739910

namespace A226249

/-- `∑[A053799(Δ[A005374(n)])]` -/
def P16305271541748739910.Spec : Prop :=
  ∀ n, P16305271541748739910.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P14194057995851491872

`∑[A083050(Δ[A005374(n)])]`
-/

namespace A226249.P14194057995851491872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226249.P14194057995851491872

namespace A226249

/-- `∑[A083050(Δ[A005374(n)])]` -/
def P14194057995851491872.Spec : Prop :=
  ∀ n, P14194057995851491872.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P5381687018077386932

`∑[A286589(Δ[A005374(n)])]`
-/

namespace A226249.P5381687018077386932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286589 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226249.P5381687018077386932

namespace A226249

/-- `∑[A286589(Δ[A005374(n)])]` -/
def P5381687018077386932.Spec : Prop :=
  ∀ n, P5381687018077386932.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P10571322773176825177

`A020942(n+2)+A020942(n+2)-A064105(n+2)`
-/

namespace A226249.P10571322773176825177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 2) + (A020942 (n + 2) - A064105 (n + 2))

end

end A226249.P10571322773176825177

namespace A226249

/-- `A020942(n+2)+A020942(n+2)-A064105(n+2)` -/
def P10571322773176825177.Spec : Prop :=
  ∀ n, P10571322773176825177.a n = A226249 (n + 1)

theorem P10571322773176825177.correct : P10571322773176825177.Spec := by
  intro n
  simp only [A226249, Nat.add_sub_cancel, A226249.P10571322773176825177.a, A226249.P14717814060728136039.a, A005374, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226249

/-! ## A226249.P12235221341797910250

`A020942(n+2)-A136495(n+2)`
-/

namespace A226249.P12235221341797910250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 2) - A136495 (n + 2)

end

end A226249.P12235221341797910250

namespace A226249

/-- `A020942(n+2)-A136495(n+2)` -/
def P12235221341797910250.Spec : Prop :=
  ∀ n, P12235221341797910250.a n = A226249 (n + 1)

theorem P12235221341797910250.correct : P12235221341797910250.Spec := by
  intro n
  simp only [A226249, Nat.add_sub_cancel, A226249.P12235221341797910250.a, A226249.P14717814060728136039.a, A005374, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226249

/-! ## A226249.P5003401019048724546

`A202342(n+2)-A372758(n+2)`
-/

namespace A226249.P5003401019048724546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 2) - A372758 (n + 2)

end

end A226249.P5003401019048724546

namespace A226249

/-- `A202342(n+2)-A372758(n+2)` -/
def P5003401019048724546.Spec : Prop :=
  ∀ n, P5003401019048724546.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P18049357328311301176

`A064106(n+2)-(A372758(n+2)+A064105(n+2))`
-/

namespace A226249.P18049357328311301176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 2) - (A372758 (n + 2) + A064105 (n + 2))

end

end A226249.P18049357328311301176

namespace A226249

/-- `A064106(n+2)-(A372758(n+2)+A064105(n+2))` -/
def P18049357328311301176.Spec : Prop :=
  ∀ n, P18049357328311301176.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P15114208709450125066

`A020942(n+2)+A136496(n+2)-A381841(n+2)`
-/

namespace A226249.P15114208709450125066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 2) + (A136496 (n + 2) - A381841 (n + 2))

end

end A226249.P15114208709450125066

namespace A226249

/-- `A020942(n+2)+A136496(n+2)-A381841(n+2)` -/
def P15114208709450125066.Spec : Prop :=
  ∀ n, P15114208709450125066.a n = A226249 (n + 1)

theorem P15114208709450125066.correct : P15114208709450125066.Spec := by
  intro n
  simp only [A226249, Nat.add_sub_cancel, A226249.P15114208709450125066.a, A226249.P14717814060728136039.a, A005374, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226249

/-! ## A226249.P12470512812761791847

`A372749(n+2)-(A136495(n+2)+A064106(n+2))`
-/

namespace A226249.P12470512812761791847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372749 (n + 2) - (A136495 (n + 2) + A064106 (n + 2))

end

end A226249.P12470512812761791847

namespace A226249

/-- `A372749(n+2)-(A136495(n+2)+A064106(n+2))` -/
def P12470512812761791847.Spec : Prop :=
  ∀ n, P12470512812761791847.a n = A226249 (n + 1)

theorem P12470512812761791847.correct : P12470512812761791847.Spec := by
  intro n
  simp only [A226249, Nat.add_sub_cancel, A226249.P12470512812761791847.a, A226249.P14717814060728136039.a, A005374, A005374.P13862197180797613727.a, A064106, A064106.P240912047226861259.a, A136495, A136495.P596664169401550958.a, A372749, A372749.P13035462491583893748.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A381841, A381841.P11592063328882471830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226249

/-! ## A226249.P10306534236904587007

`A064105(n+2)-A136495(n+2)-A136495(n+2)`
-/

namespace A226249.P10306534236904587007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 2) - A136495 (n + 2) - A136495 (n + 2)

end

end A226249.P10306534236904587007

namespace A226249

/-- `A064105(n+2)-A136495(n+2)-A136495(n+2)` -/
def P10306534236904587007.Spec : Prop :=
  ∀ n, P10306534236904587007.a n = A226249 (n + 1)

theorem P10306534236904587007.correct : P10306534236904587007.Spec := by
  intro n
  simp only [A226249, Nat.add_sub_cancel, A226249.P10306534236904587007.a, A226249.P14717814060728136039.a, A005374, A005374.P13862197180797613727.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, A381841, A381841.P11592063328882471830.a, A136496, A136496.P805941965056846939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226249

/-! ## A226249.P12298759948869017864

`∑[gcd(2, A048715(n))]`
-/

namespace A226249.P12298759948869017864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A048715 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226249.P12298759948869017864

namespace A226249

/-- `∑[gcd(2, A048715(n))]` -/
def P12298759948869017864.Spec : Prop :=
  ∀ n, (P12298759948869017864.a n : ℤ) = A226249 (n + 1)

end A226249

/-! ## A226249.P3380044838160421274

`∑[A202340(∑[A202340(n)])]`
-/

namespace A226249.P3380044838160421274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226249.P3380044838160421274

namespace A226249

/-- `∑[A202340(∑[A202340(n)])]` -/
def P3380044838160421274.Spec : Prop :=
  ∀ n, P3380044838160421274.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P14872326734009397060

`A372758(A136495(n+2))+n`
-/

namespace A226249.P14872326734009397060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A136495 (n + 2)).toNat + (n : ℤ)

end

end A226249.P14872326734009397060

namespace A226249

/-- `A372758(A136495(n+2))+n` -/
def P14872326734009397060.Spec : Prop :=
  ∀ n, P14872326734009397060.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P11553060297363604252

`A136495(A202342(n+2))-A136495(n+2)`
-/

namespace A226249.P11553060297363604252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A202342 (n + 2)).toNat - A136495 (n + 2)

end

end A226249.P11553060297363604252

namespace A226249

/-- `A136495(A202342(n+2))-A136495(n+2)` -/
def P11553060297363604252.Spec : Prop :=
  ∀ n, P11553060297363604252.a n = A226249 (n + 1)

end A226249

/-! ## A226249.P11435605522656019231

`A372758(A372758(A136496(n+1)))+n`
-/

namespace A226249.P11435605522656019231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A372758 (A136496 (n + 1)).toNat).toNat + (n : ℤ)

end

end A226249.P11435605522656019231

namespace A226249

/-- `A372758(A372758(A136496(n+1)))+n` -/
def P11435605522656019231.Spec : Prop :=
  ∀ n, P11435605522656019231.a n = A226249 (n + 1)

end A226249

/-!
# A226250: Positions of positive numbers in the ordering of the rational numbers at A226247.

The programs for A226250, the canonical program `A226250.P13657873324624354211` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226250 has offset 1).

The definition of A226250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226250.P10725708842921978672

`lt[2, p?[A105083(n)]]`
-/

namespace A226250.P10725708842921978672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226250.P10725708842921978672

namespace A226250

/-- `lt[2, p?[A105083(n)]]` -/
def P10725708842921978672.Spec : Prop :=
  ∀ n, (P10725708842921978672.a n : ℤ) = A226250 (n + 1)

end A226250

/-! ## A226250.P1263896597824114846

`∑[A202340(n)]+n`
-/

namespace A226250.P1263896597824114846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A226250.P1263896597824114846

namespace A226250

/-- `∑[A202340(n)]+n` -/
def P1263896597824114846.Spec : Prop :=
  ∀ n, P1263896597824114846.a n = A226250 (n + 1)

end A226250

/-! ## A226250.P6805267652058325815

`comp[A005374(n)+n]`
-/

namespace A226250.P6805267652058325815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226250.P6805267652058325815

namespace A226250

/-- `comp[A005374(n)+n]` -/
def P6805267652058325815.Spec : Prop :=
  ∀ n, (P6805267652058325815.a n : ℤ) = A226250 (n + 1)

end A226250

/-! ## A226250.P13657873324624354211

`A136495(n+1)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A226250

/-- `A136495(n+1)+n` -/
def P13657873324624354211.Spec : Prop :=
  ∀ n, P13657873324624354211.a n = A226250 (n + 1)

theorem P13657873324624354211.correct : P13657873324624354211.Spec := by
  intro n
  simp only [A226250, Nat.add_sub_cancel]

end A226250

/-! ## A226250.P15403524807086232014

`eq[3, p?[A105083(n+1)]]`
-/

namespace A226250.P15403524807086232014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226250.P15403524807086232014

namespace A226250

/-- `eq[3, p?[A105083(n+1)]]` -/
def P15403524807086232014.Spec : Prop :=
  ∀ n, (P15403524807086232014.a n : ℤ) = A226250 (n + 1)

end A226250

/-! ## A226250.P12102690530519020048

`lt[A226248(n+1), 1]+1`
-/

namespace A226250.P12102690530519020048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226248 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A226250.P12102690530519020048

namespace A226250

/-- `lt[A226248(n+1), 1]+1` -/
def P12102690530519020048.Spec : Prop :=
  ∀ n, (P12102690530519020048.a n : ℤ) = A226250 (n + 1)

end A226250

/-! ## A226250.P14506440510373335579

`A372758(n+1)+2*n`
-/

namespace A226250.P14506440510373335579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (n + 1) + (2 * n : ℤ)

end

end A226250.P14506440510373335579

namespace A226250

/-- `A372758(n+1)+2*n` -/
def P14506440510373335579.Spec : Prop :=
  ∀ n, P14506440510373335579.a n = A226250 (n + 1)

theorem P14506440510373335579.correct : P14506440510373335579.Spec := by
  intro n
  simp only [A226250, Nat.add_sub_cancel, A226250.P14506440510373335579.a, A226250.P13657873324624354211.a, A136495, A136495.P596664169401550958.a, A372758, A372758.P14293302057458379432.a, A005374, A005374.P13862197180797613727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226250

/-! ## A226250.P16990768236685052273

`comp[A020942(n+1)]+1+n`
-/

namespace A226250.P16990768236685052273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A226250.P16990768236685052273

namespace A226250

/-- `comp[A020942(n+1)]+1+n` -/
def P16990768236685052273.Spec : Prop :=
  ∀ n, (P16990768236685052273.a n : ℤ) = A226250 (n + 1)

end A226250

/-! ## A226250.P8923966838382617090

`comp[A202342(n+1)-(n+1)]`
-/

namespace A226250.P8923966838382617090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226250.P8923966838382617090

namespace A226250

/-- `comp[A202342(n+1)-(n+1)]` -/
def P8923966838382617090.Spec : Prop :=
  ∀ n, (P8923966838382617090.a n : ℤ) = A226250 (n + 1)

end A226250

/-! ## A226250.P11560012157758497294

`n-A001478(∑[A202340(n)])`
-/

namespace A226250.P11560012157758497294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001478 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226250.P11560012157758497294

namespace A226250

/-- `n-A001478(∑[A202340(n)])` -/
def P11560012157758497294.Spec : Prop :=
  ∀ n, P11560012157758497294.a n = A226250 (n + 1)

end A226250

/-! ## A226250.P15888817808103183427

`n-A001489(∑[A202340(n)])`
-/

namespace A226250.P15888817808103183427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226250.P15888817808103183427

namespace A226250

/-- `n-A001489(∑[A202340(n)])` -/
def P15888817808103183427.Spec : Prop :=
  ∀ n, P15888817808103183427.a n = A226250 (n + 1)

end A226250

/-! ## A226250.P14815497132192800844

`lt[2, A105083(lt[1, A105083(n)])]`
-/

namespace A226250.P14815497132192800844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226250.P14815497132192800844

namespace A226250

/-- `lt[2, A105083(lt[1, A105083(n)])]` -/
def P14815497132192800844.Spec : Prop :=
  ∀ n, (P14815497132192800844.a n : ℤ) = A226250 (n + 1)

end A226250

/-! ## A226250.P8638788698158742698

`A005374(A202342(n+1))+n`
-/

namespace A226250.P8638788698158742698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A202342 (n + 1)).toNat + (n : ℤ)

end

end A226250.P8638788698158742698

namespace A226250

/-- `A005374(A202342(n+1))+n` -/
def P8638788698158742698.Spec : Prop :=
  ∀ n, P8638788698158742698.a n = A226250 (n + 1)

end A226250

/-! ## A226250.P4652101576670030736

`A020942(n+1)-A005374(n)`
-/

namespace A226250.P4652101576670030736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) - A005374 n

end

end A226250.P4652101576670030736

namespace A226250

/-- `A020942(n+1)-A005374(n)` -/
def P4652101576670030736.Spec : Prop :=
  ∀ n, P4652101576670030736.a n = A226250 (n + 1)

theorem P4652101576670030736.correct : P4652101576670030736.Spec := by
  intro n
  simp only [A226250, Nat.add_sub_cancel, A226250.P4652101576670030736.a, A226250.P13657873324624354211.a, A005374, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226250

/-! ## A226250.P8545246807232676763

`A005374(eq[2, A202340(n)])+n`
-/

namespace A226250.P8545246807232676763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + (n : ℤ)

end

end A226250.P8545246807232676763

namespace A226250

/-- `A005374(eq[2, A202340(n)])+n` -/
def P8545246807232676763.Spec : Prop :=
  ∀ n, P8545246807232676763.a n = A226250 (n + 1)

end A226250

/-! ## A226250.P9040601616167649254

`eq[2, A105083(n)]-A005374(n)`
-/

namespace A226250.P9040601616167649254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005374 n

end

end A226250.P9040601616167649254

namespace A226250

/-- `eq[2, A105083(n)]-A005374(n)` -/
def P9040601616167649254.Spec : Prop :=
  ∀ n, P9040601616167649254.a n = A226250 (n + 1)

end A226250

/-! ## A226250.P8419932726333307136

`A064105(n+1)-A202342(n+1)`
-/

namespace A226250.P8419932726333307136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) - A202342 (n + 1)

end

end A226250.P8419932726333307136

namespace A226250

/-- `A064105(n+1)-A202342(n+1)` -/
def P8419932726333307136.Spec : Prop :=
  ∀ n, P8419932726333307136.a n = A226250 (n + 1)

end A226250

/-! ## A226250.P14846272892309913765

`2*A064105(n+1)-A064106(n+1)`
-/

namespace A226250.P14846272892309913765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064105 (n + 1) - A064106 (n + 1)

end

end A226250.P14846272892309913765

namespace A226250

/-- `2*A064105(n+1)-A064106(n+1)` -/
def P14846272892309913765.Spec : Prop :=
  ∀ n, P14846272892309913765.a n = A226250 (n + 1)

end A226250

/-!
# A226251: Period 10: repeat [1, 1, 2, 3, 5, 8, 1, 3, 4, 7].

The programs for A226251, the canonical program `A226251.P8049046024667732743` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226251 has offset 1).

The definition of A226251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226251.P8049046024667732743

`gcd(a(n-1)+a(n-2), 5*3%a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226251

/-- `gcd(a(n-1)+a(n-2), 5*3%a(n-2))` -/
def P8049046024667732743.Spec : Prop :=
  ∀ n, (P8049046024667732743.a n : ℤ) = A226251 (n + 1)

theorem P8049046024667732743.correct : P8049046024667732743.Spec := by
  intro n
  simp only [A226251, Nat.add_sub_cancel]

end A226251

/-!
# A226252: Number of ways of writing n as the sum of 7 triangular numbers.

The programs for A226252, there is no canonical definition to state claims against.
-/

/-! ## A226252.P2075110839548682137

`A005931(A005408(n))/A005931(A000027(n+1)-n)`
-/

namespace A226252.P2075110839548682137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005931 (A005408 n).toNat : ℚ) / (A005931 (A000027 (n + 1) - (n : ℤ)).toNat : ℚ)

end

end A226252.P2075110839548682137

/-! ## A226252.P8414377247611507904

`A023919(8*n+7)/16`
-/

namespace A226252.P8414377247611507904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023919 (8 * n + 7) : ℚ) / 16

end

end A226252.P8414377247611507904

/-! ## A226252.P9971360421936577809

`A286180(A155212(n+4))`
-/

namespace A226252.P9971360421936577809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A155212 (n + 4)).toNat

end

end A226252.P9971360421936577809

/-! ## A226252.P10932581760705451028

`A286180(A052905(n+5)-3)`
-/

namespace A226252.P10932581760705451028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A052905 (n + 5) - 3).toNat

end

end A226252.P10932581760705451028

/-! ## A226252.P10536734725204494862

`A286180(A000217(n+8)-8)`
-/

namespace A226252.P10536734725204494862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000217 (n + 8) - 8).toNat

end

end A226252.P10536734725204494862

/-! ## A226252.P8569690689292171345

`A286180(A056000(n)+A008574(n+7))`
-/

namespace A226252.P8569690689292171345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A056000 n + A008574 (n + 7)).toNat

end

end A226252.P8569690689292171345

/-! ## A226252.P7171830673751270229

`A286180(A167614(n+3)+A144396(A144396(n+3)))`
-/

namespace A226252.P7171830673751270229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A167614 (n + 3) + A144396 (A144396 (n + 3)).toNat).toNat

end

end A226252.P7171830673751270229

/-!
# A226253: Number of ways of writing n as the sum of 9 triangular numbers.

The programs for A226253, there is no canonical definition to state claims against.
-/

/-! ## A226253.P8001794961239250526

`A286180(A056000(n+6))`
-/

namespace A226253.P8001794961239250526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A056000 (n + 6)).toNat

end

end A226253.P8001794961239250526

/-! ## A226253.P5379086191491877318

`A286180(A000217(n+10)-10)`
-/

namespace A226253.P5379086191491877318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000217 (n + 10) - 10).toNat

end

end A226253.P5379086191491877318

/-! ## A226253.P141992811656435220

`A286180(A002378(n+7)-A000124(n+4))`
-/

namespace A226253.P141992811656435220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A002378 (n + 7) - A000124 (n + 4)).toNat

end

end A226253.P141992811656435220

/-! ## A226253.P3064460062083691116

`A286180(A056121(n+7)-A008574(n+8))`
-/

namespace A226253.P3064460062083691116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A056121 (n + 7) - A008574 (n + 8)).toNat

end

end A226253.P3064460062083691116

/-! ## A226253.P3199377451815248709

`A286180(A000096(n+15)-A008458(n+15))`
-/

namespace A226253.P3199377451815248709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000096 (n + 15) - A008458 (n + 15)).toNat

end

end A226253.P3199377451815248709

/-!
# A226254: Number of ways of writing n as the sum of 10 triangular numbers from A000217.

The programs for A226254, there is no canonical definition to state claims against.
-/

/-! ## A226254.P9602804352129133780

`(A050456(4*n+5)-A030212(4*n+5))/640`
-/

namespace A226254.P9602804352129133780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050456 (4 * n + 5) - A030212 (4 * n + 5) : ℚ) / 640

end

end A226254.P9602804352129133780

/-! ## A226254.P6674216250410619143

`A286180(A056000(n+7)-1)`
-/

namespace A226254.P6674216250410619143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A056000 (n + 7) - 1).toNat

end

end A226254.P6674216250410619143

/-! ## A226254.P6684355983135499394

`A286180(A000217(n+11)-11)`
-/

namespace A226254.P6684355983135499394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000217 (n + 11) - 11).toNat

end

end A226254.P6684355983135499394

/-! ## A226254.P18076162808231564135

`A286180(A000124(n+11)-12)`
-/

namespace A226254.P18076162808231564135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000124 (n + 11) - 12).toNat

end

end A226254.P18076162808231564135

/-! ## A226254.P287757159452063555

`A286180(eq[11, A004736(n+1)])`
-/

namespace A226254.P287757159452063555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226254.P287757159452063555

/-! ## A226254.P142838163546623304

`A286180(Δ[A000292(n+10)]-11)`
-/

namespace A226254.P142838163546623304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (f1 (n + 1) - f1 n - 11).toNat

end

end A226254.P142838163546623304

/-!
# A226255: Number of ways of writing n as the sum of 11 triangular numbers.

The programs for A226255, there is no canonical definition to state claims against.
-/

/-! ## A226255.P13611451528588630439

`A286180(eq[11, A025581(n)])`
-/

namespace A226255.P13611451528588630439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226255.P13611451528588630439

/-! ## A226255.P694928906402536134

`A286180(eq[12, A193739(n)])`
-/

namespace A226255.P694928906402536134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226255.P694928906402536134

/-! ## A226255.P204102467330848095

`A286180(A000217(n+12)-12)`
-/

namespace A226255.P204102467330848095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000217 (n + 12) - 12).toNat

end

end A226255.P204102467330848095

/-! ## A226255.P13961225554252908216

`A286180(eq[12, A004736(n+1)])`
-/

namespace A226255.P13961225554252908216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226255.P13961225554252908216

/-!
# A226258: Numerators of mass formula for connected vacuum graphs on n nodes for a phi^4 field theory.

The programs for A226258, there is no canonical definition to state claims against.
-/

/-! ## A226258.P10422603714336152871

`A098488(∑[∑[(n%3)!]]^round(n²/12))`
-/

namespace A226258.P10422603714336152871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℤ))).toNat

end

end A226258.P10422603714336152871

/-! ## A226258.P6737860841527928475

`or(1, A115943(A034943(n)))`
-/

namespace A226258.P6737860841527928475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115943 (A034943 n).toNat)

end

end A226258.P6737860841527928475

/-!
# A226259: Denominators of mass formula for connected vacuum graphs on n nodes for a phi^4 field theory.

The programs for A226259, there is no canonical definition to state claims against.
-/

/-! ## A226259.P6192686321572806220

`A046523(A016129(n)/A227739(n+1))`
-/

namespace A226259.P6192686321572806220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A016129 n : ℚ) / (A227739 (n + 1) : ℚ))).toNat

end

end A226259.P6192686321572806220

/-!
# A226260: Numerators of mass formula for connected vacuum graphs on 2n nodes for a phi^3 field theory.

The programs for A226260, there is no canonical definition to state claims against.
-/

/-! ## A226260.P15591714364342788994

`A007913(lcm(9, A062980(n)))`
-/

namespace A226260.P15591714364342788994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.lcm 9 (A062980 n))

end

end A226260.P15591714364342788994

/-!
# A226261: Denominators of mass formula for connected vacuum graphs on 2n nodes for a phi^3 field theory.

The programs for A226261, there is no canonical definition to state claims against.
-/

/-! ## A226261.P14922512761556783188

`A135692(A027660(n)*A261327(n))`
-/

namespace A226261.P14922512761556783188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135692 (A027660 n * A261327 n).toNat

end

end A226261.P14922512761556783188

/-!
# A226263: Number of additive Z_2 Z_8 codes of a certain type (see Siap-Aydogdu for precise definition).

The programs for A226263, there is no canonical definition to state claims against.
-/

/-! ## A226263.P6961863149296981389

`A002416(n+1)*A006098(n+1)`
-/

namespace A226263.P6961863149296981389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) * A006098 (n + 1)

end

end A226263.P6961863149296981389

/-!
# A226264: Number of additive Z_2 Z_8 codes of a certain type (see Siap-Aydogdu for precise definition).

The programs for A226264, the canonical program `A226264.P16253929580712816693` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226264 has offset 1).

The definition of A226264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226264.P16253929580712816693

`3*(2^(n+4)-4)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226264

/-- `3*(2^(n+4)-4)` -/
def P16253929580712816693.Spec : Prop :=
  ∀ n, P16253929580712816693.a n = A226264 (n + 1)

theorem P16253929580712816693.correct : P16253929580712816693.Spec := by
  intro n
  simp only [A226264, Nat.add_sub_cancel]

end A226264

/-! ## A226264.P11706293776630103093

`2*a(n-1)+12` with `a(0)=36`
-/

namespace A226264.P11706293776630103093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  2 * a (n - 1) + 12

end

end A226264.P11706293776630103093

namespace A226264

/-- `2*a(n-1)+12` -/
def P11706293776630103093.Spec : Prop :=
  ∀ n, (P11706293776630103093.a n : ℤ) = A226264 (n + 1)

theorem P11706293776630103093.correct : P11706293776630103093.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A226264, Nat.add_sub_cancel, A226264.P11706293776630103093.a, A226264.P16253929580712816693.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A226264, Nat.add_sub_cancel, A226264.P11706293776630103093.a, A226264.P16253929580712816693.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226264

/-! ## A226264.P13660588974590400805

`∑[2*a(n-1)]` with `a(0)=36, a(1)=48`
-/

namespace A226264.P13660588974590400805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36, 48] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226264.P13660588974590400805

namespace A226264

/-- `∑[2*a(n-1)]` -/
def P13660588974590400805.Spec : Prop :=
  ∀ n, (P13660588974590400805.a n : ℤ) = A226264 (n + 1)

end A226264

/-! ## A226264.P12418599920257251599

`or(4, 8*(6*2^n-2))`
-/

namespace A226264.P12418599920257251599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (8 * ((6 * 2 ^ n : ℤ) - 2))

end

end A226264.P12418599920257251599

namespace A226264

/-- `or(4, 8*(6*2^n-2))` -/
def P12418599920257251599.Spec : Prop :=
  ∀ n, P12418599920257251599.a n = A226264 (n + 1)

end A226264

/-! ## A226264.P16573294993396172798

`xor(4, 8*(6*2^n-2))`
-/

namespace A226264.P16573294993396172798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (8 * ((6 * 2 ^ n : ℤ) - 2))

end

end A226264.P16573294993396172798

namespace A226264

/-- `xor(4, 8*(6*2^n-2))` -/
def P16573294993396172798.Spec : Prop :=
  ∀ n, P16573294993396172798.a n = A226264 (n + 1)

end A226264

/-! ## A226264.P7759975141101466366

`a(n-1)+a(n-1)+12` with `a(0)=36`
-/

namespace A226264.P7759975141101466366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  a (n - 1) + (a (n - 1) + 12)

end

end A226264.P7759975141101466366

namespace A226264

/-- `a(n-1)+a(n-1)+12` -/
def P7759975141101466366.Spec : Prop :=
  ∀ n, (P7759975141101466366.a n : ℤ) = A226264 (n + 1)

theorem P7759975141101466366.correct : P7759975141101466366.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A226264, Nat.add_sub_cancel, A226264.P7759975141101466366.a, A226264.P16253929580712816693.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A226264, Nat.add_sub_cancel, A226264.P7759975141101466366.a, A226264.P16253929580712816693.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226264

/-! ## A226264.P9326091409469269888

`A182466(n)+4`
-/

namespace A226264.P9326091409469269888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182466 n + 4

end

end A226264.P9326091409469269888

namespace A226264

/-- `A182466(n)+4` -/
def P9326091409469269888.Spec : Prop :=
  ∀ n, P9326091409469269888.a n = A226264 (n + 1)

end A226264

/-! ## A226264.P583934367461577079

`A305065(n)+12`
-/

namespace A226264.P583934367461577079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305065 n + 12

end

end A226264.P583934367461577079

namespace A226264

/-- `A305065(n)+12` -/
def P583934367461577079.Spec : Prop :=
  ∀ n, P583934367461577079.a n = A226264 (n + 1)

theorem P583934367461577079.correct : P583934367461577079.Spec := by
  intro n
  simp only [A226264, Nat.add_sub_cancel, A226264.P583934367461577079.a, A226264.P16253929580712816693.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226264

/-! ## A226264.P3957642761408233771

`A139697(n+3)-1`
-/

namespace A226264.P3957642761408233771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139697 (n + 3) - 1

end

end A226264.P3957642761408233771

namespace A226264

/-- `A139697(n+3)-1` -/
def P3957642761408233771.Spec : Prop :=
  ∀ n, P3957642761408233771.a n = A226264 (n + 1)

theorem P3957642761408233771.correct : P3957642761408233771.Spec := by
  intro n
  simp only [A226264, Nat.add_sub_cancel, A226264.P3957642761408233771.a, A226264.P16253929580712816693.a, A139697, A139697.P3441591318575593331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226264

/-! ## A226264.P4857878993083411044

`A182461(n+1)-4`
-/

namespace A226264.P4857878993083411044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182461 (n + 1) - 4

end

end A226264.P4857878993083411044

namespace A226264

/-- `A182461(n+1)-4` -/
def P4857878993083411044.Spec : Prop :=
  ∀ n, P4857878993083411044.a n = A226264 (n + 1)

end A226264

/-! ## A226264.P6852469925538240010

`A305163(n+1)+6`
-/

namespace A226264.P6852469925538240010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305163 (n + 1) + 6

end

end A226264.P6852469925538240010

namespace A226264

/-- `A305163(n+1)+6` -/
def P6852469925538240010.Spec : Prop :=
  ∀ n, P6852469925538240010.a n = A226264 (n + 1)

theorem P6852469925538240010.correct : P6852469925538240010.Spec := by
  intro n
  simp only [A226264, Nat.add_sub_cancel, A226264.P6852469925538240010.a, A226264.P16253929580712816693.a, A305163, A305163.P3204097201116217544.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226264

/-! ## A226264.P6902291725266434334

`A048488(n+3)-7`
-/

namespace A226264.P6902291725266434334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048488 (n + 3) - 7

end

end A226264.P6902291725266434334

namespace A226264

/-- `A048488(n+3)-7` -/
def P6902291725266434334.Spec : Prop :=
  ∀ n, P6902291725266434334.a n = A226264 (n + 1)

theorem P6902291725266434334.correct : P6902291725266434334.Spec := by
  intro n
  simp only [A226264, Nat.add_sub_cancel, A226264.P6902291725266434334.a, A226264.P16253929580712816693.a, A048488, A048488.P11176368568571230835.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226264

/-! ## A226264.P3664686117160445494

`A033484(n+4)-10`
-/

namespace A226264.P3664686117160445494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (n + 4) - 10

end

end A226264.P3664686117160445494

namespace A226264

/-- `A033484(n+4)-10` -/
def P3664686117160445494.Spec : Prop :=
  ∀ n, P3664686117160445494.a n = A226264 (n + 1)

theorem P3664686117160445494.correct : P3664686117160445494.Spec := by
  intro n
  simp only [A226264, Nat.add_sub_cancel, A226264.P3664686117160445494.a, A226264.P16253929580712816693.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226264

/-! ## A226264.P5998549478317366311

`A081808(n+3)-12`
-/

namespace A226264.P5998549478317366311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081808 (n + 3) - 12

end

end A226264.P5998549478317366311

namespace A226264

/-- `A081808(n+3)-12` -/
def P5998549478317366311.Spec : Prop :=
  ∀ n, P5998549478317366311.a n = A226264 (n + 1)

theorem P5998549478317366311.correct : P5998549478317366311.Spec := by
  intro n
  simp only [A226264, Nat.add_sub_cancel, A226264.P5998549478317366311.a, A226264.P16253929580712816693.a, A081808, A081808.P2560799609935196517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226264

/-! ## A226264.P17972513464463351661

`A055010(n+5)-11`
-/

namespace A226264.P17972513464463351661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (n + 5) - 11

end

end A226264.P17972513464463351661

namespace A226264

/-- `A055010(n+5)-11` -/
def P17972513464463351661.Spec : Prop :=
  ∀ n, P17972513464463351661.a n = A226264 (n + 1)

end A226264

/-! ## A226264.P5607554640954093074

`A083329(n+5)-11`
-/

namespace A226264.P5607554640954093074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (n + 5) - 11

end

end A226264.P5607554640954093074

namespace A226264

/-- `A083329(n+5)-11` -/
def P5607554640954093074.Spec : Prop :=
  ∀ n, P5607554640954093074.a n = A226264 (n + 1)

end A226264

/-! ## A226264.P14344525461846911876

`A132477(n+4)-12`
-/

namespace A226264.P14344525461846911876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132477 (n + 4) - 12

end

end A226264.P14344525461846911876

namespace A226264

/-- `A132477(n+4)-12` -/
def P14344525461846911876.Spec : Prop :=
  ∀ n, P14344525461846911876.a n = A226264 (n + 1)

end A226264

/-! ## A226264.P2007989904114153176

`A290114(n+5)-11`
-/

namespace A226264.P2007989904114153176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 (n + 5) - 11

end

end A226264.P2007989904114153176

namespace A226264

/-- `A290114(n+5)-11` -/
def P2007989904114153176.Spec : Prop :=
  ∀ n, P2007989904114153176.a n = A226264 (n + 1)

end A226264

/-! ## A226264.P18195751033933217590

`A181565(n+4)-13`
-/

namespace A226264.P18195751033933217590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (n + 4) - 13

end

end A226264.P18195751033933217590

namespace A226264

/-- `A181565(n+4)-13` -/
def P18195751033933217590.Spec : Prop :=
  ∀ n, P18195751033933217590.a n = A226264 (n + 1)

theorem P18195751033933217590.correct : P18195751033933217590.Spec := by
  intro n
  simp only [A226264, Nat.add_sub_cancel, A226264.P18195751033933217590.a, A226264.P16253929580712816693.a, A181565, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226264

/-! ## A226264.P17542176666953332670

`A182464(n)+A081808(n+1)`
-/

namespace A226264.P17542176666953332670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182464 n + A081808 (n + 1)

end

end A226264.P17542176666953332670

namespace A226264

/-- `A182464(n)+A081808(n+1)` -/
def P17542176666953332670.Spec : Prop :=
  ∀ n, P17542176666953332670.a n = A226264 (n + 1)

end A226264

/-!
# A226265: Number of additive Z_2 Z_8 codes of a certain type (see Siap-Aydogdu for precise definition).

The programs for A226265, the canonical program `A226265.P5738636558211271656` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226265 has offset 1).

The definition of A226265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226265.P5738636558211271656

`7*A305065(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226265

/-- `7*A305065(n+1)` -/
def P5738636558211271656.Spec : Prop :=
  ∀ n, P5738636558211271656.a n = A226265 (n + 1)

theorem P5738636558211271656.correct : P5738636558211271656.Spec := by
  intro n
  simp only [A226265, Nat.add_sub_cancel]

end A226265

/-! ## A226265.P17733613601168222574

`28*A068293(n+3)`
-/

namespace A226265.P17733613601168222574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A068293 (n + 3)

end

end A226265.P17733613601168222574

namespace A226265

/-- `28*A068293(n+3)` -/
def P17733613601168222574.Spec : Prop :=
  ∀ n, P17733613601168222574.a n = A226265 (n + 1)

end A226265

/-! ## A226265.P18402904130397056526

`42*A173033(n+2)`
-/

namespace A226265.P18402904130397056526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A173033 (n + 2)

end

end A226265.P18402904130397056526

namespace A226265

/-- `42*A173033(n+2)` -/
def P18402904130397056526.Spec : Prop :=
  ∀ n, P18402904130397056526.a n = A226265 (n + 1)

end A226265

/-! ## A226265.P15904012014618757242

`42*A028399(n+4)`
-/

namespace A226265.P15904012014618757242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A028399 (n + 4)

end

end A226265.P15904012014618757242

namespace A226265

/-- `42*A028399(n+4)` -/
def P15904012014618757242.Spec : Prop :=
  ∀ n, P15904012014618757242.a n = A226265 (n + 1)

theorem P15904012014618757242.correct : P15904012014618757242.Spec := by
  intro n
  simp only [A226265, Nat.add_sub_cancel, A226265.P15904012014618757242.a, A226265.P5738636558211271656.a, A028399, A028399.P13231387857369289055.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226265

/-! ## A226265.P3394979585508267079

`84*A134067(n+1)`
-/

namespace A226265.P3394979585508267079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  84 * A134067 (n + 1)

end

end A226265.P3394979585508267079

namespace A226265

/-- `84*A134067(n+1)` -/
def P3394979585508267079.Spec : Prop :=
  ∀ n, P3394979585508267079.a n = A226265 (n + 1)

end A226265

/-! ## A226265.P12554406723955912321

`14*A226264(n+1)`
-/

namespace A226265.P12554406723955912321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A226264 (n + 1)

end

end A226265.P12554406723955912321

namespace A226265

/-- `14*A226264(n+1)` -/
def P12554406723955912321.Spec : Prop :=
  ∀ n, P12554406723955912321.a n = A226265 (n + 1)

theorem P12554406723955912321.correct : P12554406723955912321.Spec := by
  intro n
  simp only [A226265, Nat.add_sub_cancel, A226265.P12554406723955912321.a, A226265.P5738636558211271656.a, A226264, A226264.P16253929580712816693.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226265

/-! ## A226265.P3489441681239548511

`8*21*A000225(n+2)`
-/

namespace A226265.P3489441681239548511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (21 * A000225 (n + 2))

end

end A226265.P3489441681239548511

namespace A226265

/-- `8*21*A000225(n+2)` -/
def P3489441681239548511.Spec : Prop :=
  ∀ n, P3489441681239548511.a n = A226265 (n + 1)

theorem P3489441681239548511.correct : P3489441681239548511.Spec := by
  intro n
  simp only [A226265, Nat.add_sub_cancel, A226265.P3489441681239548511.a, A226265.P5738636558211271656.a, A000225, A000225.P6535533121115206393.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226265

/-! ## A226265.P18082814973682340849

`42*(A000079(n+4)-4)`
-/

namespace A226265.P18082814973682340849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * (A000079 (n + 4) - 4)

end

end A226265.P18082814973682340849

namespace A226265

/-- `42*(A000079(n+4)-4)` -/
def P18082814973682340849.Spec : Prop :=
  ∀ n, P18082814973682340849.a n = A226265 (n + 1)

theorem P18082814973682340849.correct : P18082814973682340849.Spec := by
  intro n
  simp only [A226265, Nat.add_sub_cancel, A226265.P18082814973682340849.a, A226265.P5738636558211271656.a, A000079, A000079.P10855139691139572931.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226265

/-! ## A226265.P10928456441687357309

`56*(A048488(n+1)+1)+56`
-/

namespace A226265.P10928456441687357309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  56 * (A048488 (n + 1) + 1) + 56

end

end A226265.P10928456441687357309

namespace A226265

/-- `56*(A048488(n+1)+1)+56` -/
def P10928456441687357309.Spec : Prop :=
  ∀ n, P10928456441687357309.a n = A226265 (n + 1)

theorem P10928456441687357309.correct : P10928456441687357309.Spec := by
  intro n
  simp only [A226265, Nat.add_sub_cancel, A226265.P10928456441687357309.a, A226265.P5738636558211271656.a, A048488, A048488.P11176368568571230835.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226265

/-! ## A226265.P2828819673706045118

`28*A061776(A005843(n+2))`
-/

namespace A226265.P2828819673706045118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A061776 (A005843 (n + 2)).toNat

end

end A226265.P2828819673706045118

namespace A226265

/-- `28*A061776(A005843(n+2))` -/
def P2828819673706045118.Spec : Prop :=
  ∀ n, P2828819673706045118.a n = A226265 (n + 1)

end A226265

/-! ## A226265.P8025660702206674837

`(A008603(2*n+1)-A008603(2*n))*A159741(n+2)`
-/

namespace A226265.P8025660702206674837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008603 (2 * n + 1) - A008603 (2 * n)) * A159741 (n + 2)

end

end A226265.P8025660702206674837

namespace A226265

/-- `(A008603(2*n+1)-A008603(2*n))*A159741(n+2)` -/
def P8025660702206674837.Spec : Prop :=
  ∀ n, P8025660702206674837.a n = A226265 (n + 1)

theorem P8025660702206674837.correct : P8025660702206674837.Spec := by
  intro n
  simp only [A226265, Nat.add_sub_cancel, A226265.P8025660702206674837.a, A226265.P5738636558211271656.a, A008603, A008603.P13373765567278526098.a, A159741, A159741.P12178551765370653186.a, A305065, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226265

/-! ## A226265.P9631024148682779340

`Δ[84*∑[∑[2^(n+1)]]]`
-/

namespace A226265.P9631024148682779340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  84 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A226265.P9631024148682779340

namespace A226265

/-- `Δ[84*∑[∑[2^(n+1)]]]` -/
def P9631024148682779340.Spec : Prop :=
  ∀ n, P9631024148682779340.a n = A226265 (n + 1)

end A226265

/-!
# A226269: Number of partitioned trees decorated by {1,2} with n nodes.

The programs for A226269, there is no canonical definition to state claims against.
-/

/-! ## A226269.P10674340686596575394

`A296020(floor(cosh(Δ[n²])))`
-/

namespace A226269.P10674340686596575394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296020 ⌊Real.cosh ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋.toNat

end

end A226269.P10674340686596575394

/-!
# A226270: Number of primitive permutations with n buds and 3 red or blue elements.

The programs for A226270, there is no canonical definition to state claims against.
-/

/-! ## A226270.P12587236662328749873

`A355722(n+1)/2`
-/

namespace A226270.P12587236662328749873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355722 (n + 1) : ℚ) / 2

end

end A226270.P12587236662328749873

/-!
# A226271: Index of 1/n in the Fibonacci (or rabbit) ordering of the positive rationals.

The programs for A226271, the canonical program `A226271.P11100721247909667798` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226271 has offset 1).

The definition of A226271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226271.P11100721247909667798

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226271

/-- `2*a(n-1)-a(n-3)` -/
def P11100721247909667798.Spec : Prop :=
  ∀ n, P11100721247909667798.a n = A226271 (n + 1)

theorem P11100721247909667798.correct : P11100721247909667798.Spec := by
  intro n
  simp only [A226271, Nat.add_sub_cancel]

end A226271

/-! ## A226271.P2197707737635092157

`floor(ϕ*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A226271.P2197707737635092157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A226271.P2197707737635092157

namespace A226271

/-- `floor(ϕ*a(n-1))` -/
def P2197707737635092157.Spec : Prop :=
  ∀ n, P2197707737635092157.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P5952981733446074584

`ogf((1+2x-2x^2-2x^3)/(1-2x+x^3))`
-/

namespace A226271.P5952981733446074584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, -2] [1, -2, 0, 1] n

end

end A226271.P5952981733446074584

namespace A226271

/-- `ogf((1+2x-2x^2-2x^3)/(1-2x+x^3))` -/
def P5952981733446074584.Spec : Prop :=
  ∀ n, P5952981733446074584.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P58516332612709365

`ceil(ϕ*a(n-1))-1` with `a(0)=1, a(1)=4`
-/

namespace A226271.P58516332612709365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ - 1

end

end A226271.P58516332612709365

namespace A226271

/-- `ceil(ϕ*a(n-1))-1` -/
def P58516332612709365.Spec : Prop :=
  ∀ n, P58516332612709365.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P5184481158759532546

`floor(a(n-1)/(ϕ-1))` with `a(0)=1, a(1)=4`
-/

namespace A226271.P5184481158759532546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A226271.P5184481158759532546

namespace A226271

/-- `floor(a(n-1)/(ϕ-1))` -/
def P5184481158759532546.Spec : Prop :=
  ∀ n, P5184481158759532546.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P18161541112906450127

`∑[round(ϕ*a(n-1))]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A226271.P18161541112906450127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226271.P18161541112906450127

namespace A226271

/-- `∑[round(ϕ*a(n-1))]` -/
def P18161541112906450127.Spec : Prop :=
  ∀ n, P18161541112906450127.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P8605210499922403830

`a(n-1)+a(n-2)-1` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A226271.P8605210499922403830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  a (n - 1) + (a (n - 2) - 1)

end

end A226271.P8605210499922403830

namespace A226271

/-- `a(n-1)+a(n-2)-1` -/
def P8605210499922403830.Spec : Prop :=
  ∀ n, P8605210499922403830.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P18219640593096170173

`a(n-1)-(1-a(n-2))` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A226271.P18219640593096170173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A226271.P18219640593096170173

namespace A226271

/-- `a(n-1)-(1-a(n-2))` -/
def P18219640593096170173.Spec : Prop :=
  ∀ n, P18219640593096170173.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P9262279696482218465

`A061489(2*(n+1))+char[1]`
-/

namespace A226271.P9262279696482218465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061489 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226271.P9262279696482218465

namespace A226271

/-- `A061489(2*(n+1))+char[1]` -/
def P9262279696482218465.Spec : Prop :=
  ∀ n, P9262279696482218465.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P11014808796428389419

`∑[A000045(abs(2-n)+3)]-4`
-/

namespace A226271.P11014808796428389419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|2 - (n : ℤ)| + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A226271.P11014808796428389419

namespace A226271

/-- `∑[A000045(abs(2-n)+3)]-4` -/
def P11014808796428389419.Spec : Prop :=
  ∀ n, P11014808796428389419.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P11741726512416376241

`∑[A000045((char[1]+1)*(n+1))]`
-/

namespace A226271.P11741726512416376241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((if ∃ j, f2 j = n then 1 else 0) + 1) * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226271.P11741726512416376241

namespace A226271

/-- `∑[A000045((char[1]+1)*(n+1))]` -/
def P11741726512416376241.Spec : Prop :=
  ∀ n, P11741726512416376241.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P3214035257840513306

`A000045(n+1)+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A226271.P3214035257840513306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A000045 (n + 1) + a (n - 1)

end

end A226271.P3214035257840513306

namespace A226271

/-- `A000045(n+1)+a(n-1)` -/
def P3214035257840513306.Spec : Prop :=
  ∀ n, P3214035257840513306.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P1207757320525104833

`A000045(n+3)-abs(1-n)+n`
-/

namespace A226271.P1207757320525104833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - |1 - (n : ℤ)| + (n : ℤ)

end

end A226271.P1207757320525104833

namespace A226271

/-- `A000045(n+3)-abs(1-n)+n` -/
def P1207757320525104833.Spec : Prop :=
  ∀ n, P1207757320525104833.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P6165346533059321301

`A259623(A103517(n))`
-/

namespace A226271.P6165346533059321301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (A103517 n).toNat

end

end A226271.P6165346533059321301

namespace A226271

/-- `A259623(A103517(n))` -/
def P6165346533059321301.Spec : Prop :=
  ∀ n, P6165346533059321301.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P10396862028591722907

`A003981(A006005(n+1))`
-/

namespace A226271.P10396862028591722907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003981 (A006005 (n + 1)).toNat

end

end A226271.P10396862028591722907

namespace A226271

/-- `A003981(A006005(n+1))` -/
def P10396862028591722907.Spec : Prop :=
  ∀ n, P10396862028591722907.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P7380865900373438478

`A226649(A223134(n+1))`
-/

namespace A226271.P7380865900373438478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (A223134 (n + 1)).toNat

end

end A226271.P7380865900373438478

namespace A226271

/-- `A226649(A223134(n+1))` -/
def P7380865900373438478.Spec : Prop :=
  ∀ n, P7380865900373438478.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P4976960734276783514

`A003981(A075643(n+2))`
-/

namespace A226271.P4976960734276783514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003981 (A075643 (n + 2)).toNat

end

end A226271.P4976960734276783514

namespace A226271

/-- `A003981(A075643(n+2))` -/
def P4976960734276783514.Spec : Prop :=
  ∀ n, P4976960734276783514.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P12763577044445875

`A122553(n)+A001911(n)`
-/

namespace A226271.P12763577044445875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + A001911 n

end

end A226271.P12763577044445875

namespace A226271

/-- `A122553(n)+A001911(n)` -/
def P12763577044445875.Spec : Prop :=
  ∀ n, P12763577044445875.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P16583659759954336638

`A158388(n)+A020695(n)`
-/

namespace A226271.P16583659759954336638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A020695 n

end

end A226271.P16583659759954336638

namespace A226271

/-- `A158388(n)+A020695(n)` -/
def P16583659759954336638.Spec : Prop :=
  ∀ n, P16583659759954336638.a n = A226271 (n + 1)

end A226271

/-! ## A226271.P14680269872766895147

`A048577(n)-A000038(n)`
-/

namespace A226271.P14680269872766895147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - A000038 n

end

end A226271.P14680269872766895147

namespace A226271

/-- `A048577(n)-A000038(n)` -/
def P14680269872766895147.Spec : Prop :=
  ∀ n, P14680269872766895147.a n = A226271 (n + 1)

end A226271

/-!
# A226272: Distinct numbers that can be written as u^v, where u and v are not necessarily distinct digits of n in decimal representation, table read by rows.

The programs for A226272, there is no canonical definition to state claims against.
-/

/-! ## A226272.P13969358190341911603

`A004428(n)^A010879(A246605(n))`
-/

namespace A226272.P13969358190341911603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004428 n : ℚ) ^ (A010879 (A246605 n).toNat : ℤ)

end

end A226272.P13969358190341911603

/-! ## A226272.P17274266207970795989

`A031298(n)^A010879(A246605(n))`
-/

namespace A226272.P17274266207970795989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031298 n : ℚ) ^ (A010879 (A246605 n).toNat : ℤ)

end

end A226272.P17274266207970795989

/-! ## A226272.P730732511223268760

`A004426(n)^A054054(A246605(n))`
-/

namespace A226272.P730732511223268760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004426 n : ℚ) ^ (A054054 (A246605 n).toNat : ℤ)

end

end A226272.P730732511223268760

/-! ## A226272.P15809420322857186452

`A031298(n)^A007376(record[A222493(n+1)])`
-/

namespace A226272.P15809420322857186452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222493 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031298 n : ℚ) ^ (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A226272.P15809420322857186452

/-! ## A226272.P15454481718479643272

`A007376(A065039(n))^A010879(A246605(n))`
-/

namespace A226272.P15454481718479643272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A065039 n).toNat : ℚ) ^ (A010879 (A246605 n).toNat : ℤ)

end

end A226272.P15454481718479643272

/-!
# A226274: Position of 1/n in the ordering of the rationals given by application of the map t -> (1+t,-1/t), cf. A226130.

The programs for A226274, the canonical program `A226274.P10862740871054769072` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226274 has offset 1).

The definition of A226274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226274.P10862740871054769072

`A038718(A103517(n)+1+n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226274

/-- `A038718(A103517(n)+1+n)` -/
def P10862740871054769072.Spec : Prop :=
  ∀ n, P10862740871054769072.a n = A226274 (n + 1)

theorem P10862740871054769072.correct : P10862740871054769072.Spec := by
  intro n
  simp only [A226274, Nat.add_sub_cancel]

end A226274

/-! ## A226274.P18055238027882870601

`A038718(3*n+2-A057428(n))`
-/

namespace A226274.P18055238027882870601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 ((3 * n + 2 : ℤ) - A057428 n).toNat

end

end A226274.P18055238027882870601

namespace A226274

/-- `A038718(3*n+2-A057428(n))` -/
def P18055238027882870601.Spec : Prop :=
  ∀ n, P18055238027882870601.a n = A226274 (n + 1)

end A226274

/-! ## A226274.P3617035969253702735

`A003410(A016789(n))-A054977(n)`
-/

namespace A226274.P3617035969253702735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A016789 n).toNat - A054977 n

end

end A226274.P3617035969253702735

namespace A226274

/-- `A003410(A016789(n))-A054977(n)` -/
def P3617035969253702735.Spec : Prop :=
  ∀ n, P3617035969253702735.a n = A226274 (n + 1)

end A226274

/-! ## A226274.P3411753925244326644

`A003410(A016789(n))-A000038(n)!`
-/

namespace A226274.P3411753925244326644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A016789 n).toNat - (Nat.factorial (A000038 n).toNat : ℤ)

end

end A226274.P3411753925244326644

namespace A226274

/-- `A003410(A016789(n))-A000038(n)!` -/
def P3411753925244326644.Spec : Prop :=
  ∀ n, P3411753925244326644.a n = A226274 (n + 1)

end A226274

/-! ## A226274.P13852865279695866844

`A003410(A016789(n))-A000034(A008574(n))`
-/

namespace A226274.P13852865279695866844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A016789 n).toNat - A000034 (A008574 n).toNat

end

end A226274.P13852865279695866844

namespace A226274

/-- `A003410(A016789(n))-A000034(A008574(n))` -/
def P13852865279695866844.Spec : Prop :=
  ∀ n, P13852865279695866844.a n = A226274 (n + 1)

end A226274

/-! ## A226274.P6134602585986480366

`A003410(A016789(n))-A014963(A016825(n))`
-/

namespace A226274.P6134602585986480366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A016789 n).toNat - A014963 (A016825 n).toNat

end

end A226274.P6134602585986480366

namespace A226274

/-- `A003410(A016789(n))-A014963(A016825(n))` -/
def P6134602585986480366.Spec : Prop :=
  ∀ n, P6134602585986480366.a n = A226274 (n + 1)

end A226274

/-! ## A226274.P2193974034078885968

`A003410(A016789(n))-A055874(A000040(n+1))`
-/

namespace A226274.P2193974034078885968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A016789 n).toNat - A055874 (A000040 (n + 1)).toNat

end

end A226274.P2193974034078885968

namespace A226274

/-- `A003410(A016789(n))-A055874(A000040(n+1))` -/
def P2193974034078885968.Spec : Prop :=
  ∀ n, P2193974034078885968.a n = A226274 (n + 1)

end A226274

/-! ## A226274.P16919828681603435892

`A003410(A016789(n))-A035214(A000124(n))`
-/

namespace A226274.P16919828681603435892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A016789 n).toNat - A035214 (A000124 n).toNat

end

end A226274.P16919828681603435892

namespace A226274

/-- `A003410(A016789(n))-A035214(A000124(n))` -/
def P16919828681603435892.Spec : Prop :=
  ∀ n, P16919828681603435892.a n = A226274 (n + 1)

end A226274

/-!
# A226275: Number of new rationals produced at the n-th iteration by applying the map t -> {t+1, -1/t} to nonzero terms, starting with S[0] = {1}.

The programs for A226275, the canonical program `A226275.P10793750658135636758` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226275 has offset 0).

The definition of A226275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226275.P16519837632411267636

`ogf((1+x+x^2-x^3-x^5)/(1-x-x^3))`
-/

namespace A226275.P16519837632411267636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1, 0, -1] [1, -1, 0, -1] n

end

end A226275.P16519837632411267636

namespace A226275

/-- `ogf((1+x+x^2-x^3-x^5)/(1-x-x^3))` -/
def P16519837632411267636.Spec : Prop :=
  ∀ n, P16519837632411267636.a n = A226275 n

end A226275

/-! ## A226275.P10793750658135636758

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3, a(4)=5, a(5)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226275

/-- `a(n-1)+a(n-3)` -/
def P10793750658135636758.Spec : Prop :=
  ∀ n, (P10793750658135636758.a n : ℤ) = A226275 n

theorem P10793750658135636758.correct : P10793750658135636758.Spec := by
  intro n
  simp only [A226275]

end A226275

/-! ## A226275.P8368860754128312763

`A097333(char[2]+n)`
-/

namespace A226275.P8368860754128312763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A226275.P8368860754128312763

namespace A226275

/-- `A097333(char[2]+n)` -/
def P8368860754128312763.Spec : Prop :=
  ∀ n, P8368860754128312763.a n = A226275 n

end A226275

/-! ## A226275.P14483932834826360086

`or(char[2], A097333(n))`
-/

namespace A226275.P14483932834826360086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A097333 n)

end

end A226275.P14483932834826360086

namespace A226275

/-- `or(char[2], A097333(n))` -/
def P14483932834826360086.Spec : Prop :=
  ∀ n, P14483932834826360086.a n = A226275 n

end A226275

/-! ## A226275.P15956460553983077660

`char[2]+∑[A058278(n)]`
-/

namespace A226275.P15956460553983077660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A226275.P15956460553983077660

namespace A226275

/-- `char[2]+∑[A058278(n)]` -/
def P15956460553983077660.Spec : Prop :=
  ∀ n, P15956460553983077660.a n = A226275 n

end A226275

/-! ## A226275.P4911898853156938956

`A185012(n)+A097333(n)`
-/

namespace A226275.P4911898853156938956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n + A097333 n

end

end A226275.P4911898853156938956

namespace A226275

/-- `A185012(n)+A097333(n)` -/
def P4911898853156938956.Spec : Prop :=
  ∀ n, P4911898853156938956.a n = A226275 n

end A226275

/-! ## A226275.P16275371021756899549

`A097333(n)+A045698(4*n)`
-/

namespace A226275.P16275371021756899549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n + A045698 (4 * n)

end

end A226275.P16275371021756899549

namespace A226275

/-- `A097333(n)+A045698(4*n)` -/
def P16275371021756899549.Spec : Prop :=
  ∀ n, P16275371021756899549.a n = A226275 n

end A226275

/-! ## A226275.P495883500036174301

`Δ[A226136(n+1)]`
-/

namespace A226275.P495883500036174301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226275.P495883500036174301

namespace A226275

/-- `Δ[A226136(n+1)]` -/
def P495883500036174301.Spec : Prop :=
  ∀ n, P495883500036174301.a n = A226275 n

end A226275

/-! ## A226275.P8808564713049679646

`char[2]+Δ[A170934(n+1)]`
-/

namespace A226275.P8808564713049679646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170934 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A226275.P8808564713049679646

namespace A226275

/-- `char[2]+Δ[A170934(n+1)]` -/
def P8808564713049679646.Spec : Prop :=
  ∀ n, P8808564713049679646.a n = A226275 n

end A226275

/-! ## A226275.P16848326975030711264

`A226136(n+2)-A226136(n+1)`
-/

namespace A226275.P16848326975030711264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226136 (n + 2) - A226136 (n + 1)

end

end A226275.P16848326975030711264

namespace A226275

/-- `A226136(n+2)-A226136(n+1)` -/
def P16848326975030711264.Spec : Prop :=
  ∀ n, P16848326975030711264.a n = A226275 n

end A226275

/-!
# A226276: Period 4: repeat [8, 4, 4, 4].

The programs for A226276, the canonical program `A226276.P8575891235439915675` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226276 has offset 0).

The definition of A226276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226276.P8575891235439915675

`a(n-4)` with `a(0)=8, a(1)=4, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226276

/-- `a(n-4)` -/
def P8575891235439915675.Spec : Prop :=
  ∀ n, (P8575891235439915675.a n : ℤ) = A226276 n

theorem P8575891235439915675.correct : P8575891235439915675.Spec := by
  intro n
  simp only [A226276]

end A226276

/-!
# A226277: Numbers m of the form u^v where u and v are digits in decimal representation of m.

The programs for A226277, there is no canonical definition to state claims against.
-/

/-! ## A226277.P13223534518607364137

`record[A241146(2*n+1)^A241148(3*n)]`
-/

namespace A226277.P13223534518607364137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241146 (2 * n + 1) : ℚ) ^ (A241148 (3 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226277.P13223534518607364137

/-!
# A226278: Decimal expansion of the number x > 1 defined by 2*log(x) = x - 1.

The programs for A226278, there is no canonical definition to state claims against.
-/

/-! ## A226278.P17032682015967164546

`or(char[1-n²], A201890(n))`
-/

namespace A226278.P17032682015967164546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A201890 (n + 1))

end

end A226278.P17032682015967164546

/-! ## A226278.P10054459835798852494

`A201890(n)+A000007(n)`
-/

namespace A226278.P10054459835798852494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201890 (n + 1) + A000007 n

end

end A226278.P10054459835798852494

/-! ## A226278.P17544708517807149229

`xor(A000007(3*n), A201890(n))`
-/

namespace A226278.P17544708517807149229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (3 * n)) (A201890 (n + 1))

end

end A226278.P17544708517807149229

/-! ## A226278.P2692272477258405163

`A201890(n)+A008683(A008574(n))`
-/

namespace A226278.P2692272477258405163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201890 (n + 1) + A008683 (A008574 n).toNat

end

end A226278.P2692272477258405163

/-! ## A226278.P3321422031276776361

`A201890(n)+A008683(A008653(n))`
-/

namespace A226278.P3321422031276776361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201890 (n + 1) + A008683 (A008653 n).toNat

end

end A226278.P3321422031276776361

/-! ## A226278.P14170891645589750128

`A201890(n)-A008683(2*A008574(n))`
-/

namespace A226278.P14170891645589750128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201890 (n + 1) - A008683 (2 * A008574 n).toNat

end

end A226278.P14170891645589750128

/-! ## A226278.P1787482809411634599

`A201890(n)+A008683(A004011(n))`
-/

namespace A226278.P1787482809411634599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201890 (n + 1) + A008683 (A004011 n).toNat

end

end A226278.P1787482809411634599

/-! ## A226278.P3731194963927513432

`A201890(n)-A008683(2*A008653(n))`
-/

namespace A226278.P3731194963927513432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201890 (n + 1) - A008683 (2 * A008653 n).toNat

end

end A226278.P3731194963927513432

/-! ## A226278.P5174053531627306843

`A201890(n)-A008683(2*A004011(n))`
-/

namespace A226278.P5174053531627306843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201890 (n + 1) - A008683 (2 * A004011 n).toNat

end

end A226278.P5174053531627306843

/-!
# A226279: a(4n) = a(4n+2) = 2*n , a(4n+1) = a(4n+3) = 2*n-1.

The programs for A226279, the canonical program `A226279.P6618177066326747217` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226279 has offset 0).

The definition of A226279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226279.P6618177066326747217

`a(n-4)+2` with `a(0)=0, a(1)=-1, a(2)=0, a(3)=-1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226279

/-- `a(n-4)+2` -/
def P6618177066326747217.Spec : Prop :=
  ∀ n, P6618177066326747217.a n = A226279 n

theorem P6618177066326747217.correct : P6618177066326747217.Spec := by
  intro n
  simp only [A226279]

end A226279

/-! ## A226279.P2703189104402636783

`floor((xor(1, or(2, n))-3)/2)`
-/

namespace A226279.P2703189104402636783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 1 (Nat.lor 2 n) : ℤ) - 3 : ℚ) / 2⌋

end

end A226279.P2703189104402636783

namespace A226279

/-- `floor((xor(1, or(2, n))-3)/2)` -/
def P2703189104402636783.Spec : Prop :=
  ∀ n, P2703189104402636783.a n = A226279 n

end A226279

/-! ## A226279.P2541522326774946354

`ceil(xor(1, or(2, n-4))/2)`
-/

namespace A226279.P2541522326774946354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 (Int.lor 2 ((n : ℤ) - 4)) : ℚ) / 2⌉

end

end A226279.P2541522326774946354

namespace A226279

/-- `ceil(xor(1, or(2, n-4))/2)` -/
def P2541522326774946354.Spec : Prop :=
  ∀ n, P2541522326774946354.a n = A226279 n

end A226279

/-! ## A226279.P10010452361230054204

`and(n, -4)/2-n%2`
-/

namespace A226279.P10010452361230054204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-4) : ℚ) / 2 - ((n % 2 : ℕ) : ℚ)

end

end A226279.P10010452361230054204

namespace A226279

/-- `and(n, -4)/2-n%2` -/
def P10010452361230054204.Spec : Prop :=
  ∀ n, P10010452361230054204.a n = (A226279 n : ℚ)

end A226279

/-! ## A226279.P629044410552540267

`floor((xor(1, n)-and(3, n))/2)`
-/

namespace A226279.P629044410552540267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 1 n : ℤ) - (Nat.land 3 n : ℤ) : ℚ) / 2⌋

end

end A226279.P629044410552540267

namespace A226279

/-- `floor((xor(1, n)-and(3, n))/2)` -/
def P629044410552540267.Spec : Prop :=
  ∀ n, P629044410552540267.a n = A226279 n

end A226279

/-! ## A226279.P5336466195655252389

`∑[and(6, gcd(4, n))]-(n+4)`
-/

namespace A226279.P5336466195655252389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 6 (Nat.gcd 4 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 4 : ℤ)

end

end A226279.P5336466195655252389

namespace A226279

/-- `∑[and(6, gcd(4, n))]-(n+4)` -/
def P5336466195655252389.Spec : Prop :=
  ∀ n, P5336466195655252389.a n = A226279 n

end A226279

/-! ## A226279.P9712844928745769314

`-n%2+2*floor(n/4)`
-/

namespace A226279.P9712844928745769314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 2 + 2 * ⌊(n : ℚ) / 4⌋

end

end A226279.P9712844928745769314

namespace A226279

/-- `-n%2+2*floor(n/4)` -/
def P9712844928745769314.Spec : Prop :=
  ∀ n, P9712844928745769314.a n = A226279 n

end A226279

/-! ## A226279.P48934103974875089

`2*floor(n/4)-char[or(1, n)]`
-/

namespace A226279.P48934103974875089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 4⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226279.P48934103974875089

namespace A226279

/-- `2*floor(n/4)-char[or(1, n)]` -/
def P48934103974875089.Spec : Prop :=
  ∀ n, P48934103974875089.a n = A226279 n

end A226279

/-! ## A226279.P7293003875922131983

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=-1, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A226279.P7293003875922131983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, -1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226279.P7293003875922131983

namespace A226279

/-- `∑[floor(a(n-4))]` -/
def P7293003875922131983.Spec : Prop :=
  ∀ n, P7293003875922131983.a n = A226279 n

end A226279

/-! ## A226279.P13753174635572451410

`or(1, 3*floor(n/2))-(n+1)`
-/

namespace A226279.P13753174635572451410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ⌊(n : ℚ) / 2⌋) - (n + 1 : ℤ)

end

end A226279.P13753174635572451410

namespace A226279

/-- `or(1, 3*floor(n/2))-(n+1)` -/
def P13753174635572451410.Spec : Prop :=
  ∀ n, P13753174635572451410.a n = A226279 n

end A226279

/-! ## A226279.P13978280437055967055

`floor(or(1, n)-or(2, n+2)/2)`
-/

namespace A226279.P13978280437055967055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) - (Nat.lor 2 (n + 2) : ℚ) / 2⌋

end

end A226279.P13978280437055967055

namespace A226279

/-- `floor(or(1, n)-or(2, n+2)/2)` -/
def P13978280437055967055.Spec : Prop :=
  ∀ n, P13978280437055967055.a n = A226279 n

end A226279

/-! ## A226279.P4054863105540835671

`∑[and(2, (n+1)^3)]-and(3, n)`
-/

namespace A226279.P4054863105540835671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 ((n + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 3 n : ℤ)

end

end A226279.P4054863105540835671

namespace A226279

/-- `∑[and(2, (n+1)^3)]-and(3, n)` -/
def P4054863105540835671.Spec : Prop :=
  ∀ n, P4054863105540835671.a n = A226279 n

end A226279

/-! ## A226279.P4196034591664893438

`2*floor(3/2*floor(n/2))-n`
-/

namespace A226279.P4196034591664893438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(3 : ℚ) / 2 * (⌊(n : ℚ) / 2⌋ : ℚ)⌋ - (n : ℤ)

end

end A226279.P4196034591664893438

namespace A226279

/-- `2*floor(3/2*floor(n/2))-n` -/
def P4196034591664893438.Spec : Prop :=
  ∀ n, P4196034591664893438.a n = A226279 n

end A226279

/-! ## A226279.P14436626555773596475

`∑[a(n-4)^a(n-2)]` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=-1, a(4)=3`
-/

namespace A226279.P14436626555773596475
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, -1, 1, -1, 3] fun n f1 =>
  f1 (n - 4) ^ (f1 (n - 2))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226279.P14436626555773596475

namespace A226279

/-- `∑[a(n-4)^a(n-2)]` -/
def P14436626555773596475.Spec : Prop :=
  ∀ n, P14436626555773596475.a n = (A226279 n : ℝ)

end A226279

/-!
# A226281: Least number k such that 3^(2^i) + k is prime for i = 0,1,..,n-1.

The programs for A226281, there is no canonical definition to state claims against.
-/

/-! ## A226281.P14586387248631964033

`A226745(or(n*(n-1)*(n-2)*(n-3)*(n-4)/120, round(sqrt(n²+1))))`
-/

namespace A226281.P14586387248631964033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226745 (Int.lor (SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 4 : ℚ) / 120)))))) (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)))).toNat

end

end A226281.P14586387248631964033

/-! ## A226281.P11029449189517658425

`A226745(n^A060128(n))`
-/

namespace A226281.P11029449189517658425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226745 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A060128 n : ℤ))).toNat

end

end A226281.P11029449189517658425

/-! ## A226281.P970841819679696718

`A226745(n^A241093(n))`
-/

namespace A226281.P970841819679696718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226745 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A241093 n : ℤ))).toNat

end

end A226281.P970841819679696718

/-!
# A226282: a(n) = [n/2]!*[(n+1)/2]!*C([n/2],1)*C([(n+1)/2],1).

The programs for A226282, there is no canonical definition to state claims against.
-/

/-! ## A226282.P18109822519909292287

`∑[A110654(n)]*∏[A008619(n)]`
-/

namespace A226282.P18109822519909292287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A226282.P18109822519909292287

/-! ## A226282.P671457338495030737

`∏[A008619(n)]*record[A131118(n)]`
-/

namespace A226282.P671457338495030737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A226282.P671457338495030737

/-! ## A226282.P14108446475980472428

`∑[A110654(n)]*A010551(n+1)`
-/

namespace A226282.P14108446475980472428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010551 (n + 1)

end

end A226282.P14108446475980472428

/-! ## A226282.P3681663662552128984

`∏[A008619(n)]*A002620(n+1)`
-/

namespace A226282.P3681663662552128984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002620 (n + 1)

end

end A226282.P3681663662552128984

/-! ## A226282.P4809794735959267974

`A002620(n+1)*A010551(n+1)`
-/

namespace A226282.P4809794735959267974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) * A010551 (n + 1)

end

end A226282.P4809794735959267974

/-! ## A226282.P13550176964702514379

`(A033638(n+1)-1)*A010551(n+1)`
-/

namespace A226282.P13550176964702514379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033638 (n + 1) - 1) * A010551 (n + 1)

end

end A226282.P13550176964702514379

/-! ## A226282.P2132776826527084847

`Δ[∏[A110654(n+1)]]*A110654(n+1)`
-/

namespace A226282.P2132776826527084847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A110654 (n + 1)

end

end A226282.P2132776826527084847

/-! ## A226282.P17987117023034996756

`∏[A002265(2*n)+1]*A002620(n+1)`
-/

namespace A226282.P17987117023034996756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002620 (n + 1)

end

end A226282.P17987117023034996756

/-! ## A226282.P11025790666574054555

`∑[A008624(2*n+1)]*∏[A008624(2*n)]`
-/

namespace A226282.P11025790666574054555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A226282.P11025790666574054555

/-! ## A226282.P1607134113944620251

`Δ[∏[A087620(2*n+1)]]*A087620(2*n+1)`
-/

namespace A226282.P1607134113944620251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087620 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A087620 (2 * n + 1)

end

end A226282.P1607134113944620251

/-!
# A226283: a(n) = [n/2]!*[(n+1)/2]!*C([n/2],2)*C([(n+1)/2],2).

The programs for A226283, the canonical program `A226283.P14166435951142907935` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226283 has offset 1).

The definition of A226283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226283.P14166435951142907935

`floor((n+1)/2)!*floor((n+2)/2)!*C(floor((n+1)/2), 2)*C(floor((n+2)/2), 2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226283

/-- `floor((n+1)/2)!*floor((n+2)/2)!*C(floor((n+1)/2), 2)*C(floor((n+2)/2), 2)` -/
def P14166435951142907935.Spec : Prop :=
  ∀ n, (P14166435951142907935.a n : ℤ) = A226283 (n + 1)

theorem P14166435951142907935.correct : P14166435951142907935.Spec := by
  intro n
  simp only [A226283, Nat.add_sub_cancel]

end A226283

/-! ## A226283.P5122541640950622184

`A226288(∑[n+3]+1)`
-/

namespace A226283.P5122541640950622184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226283.P5122541640950622184

namespace A226283

/-- `A226288(∑[n+3]+1)` -/
def P5122541640950622184.Spec : Prop :=
  ∀ n, P5122541640950622184.a n = A226283 (n + 1)

end A226283

/-! ## A226283.P6272038400153418391

`lcm(2, A226288(Δ[A008778(n)]))`
-/

namespace A226283.P6272038400153418391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A226288 (f1 (n + 1) - f1 n).toNat)

end

end A226283.P6272038400153418391

namespace A226283

/-- `lcm(2, A226288(Δ[A008778(n)]))` -/
def P6272038400153418391.Spec : Prop :=
  ∀ n, (P6272038400153418391.a n : ℤ) = A226283 (n + 1)

end A226283

/-! ## A226283.P8630181207775268088

`A000038(n)!*A226288(Δ[A008778(n)])`
-/

namespace A226283.P8630181207775268088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A226288 (f1 (n + 1) - f1 n).toNat

end

end A226283.P8630181207775268088

namespace A226283

/-- `A000038(n)!*A226288(Δ[A008778(n)])` -/
def P8630181207775268088.Spec : Prop :=
  ∀ n, P8630181207775268088.a n = A226283 (n + 1)

end A226283

/-!
# A226284: a(n) = [n/2]!*[(n+1)/2]!*C([n/2],3)*C([(n+1)/2],3).

The programs for A226284, the canonical program `A226284.P16517807979687793940` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226284 has offset 1).

The definition of A226284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226284.P16517807979687793940

`floor((n+1)/2)!*floor((n+2)/2)!*C(floor((n+1)/2), 3)*C(floor((n+2)/2), 3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226284

/-- `floor((n+1)/2)!*floor((n+2)/2)!*C(floor((n+1)/2), 3)*C(floor((n+2)/2), 3)` -/
def P16517807979687793940.Spec : Prop :=
  ∀ n, (P16517807979687793940.a n : ℤ) = A226284 (n + 1)

theorem P16517807979687793940.correct : P16517807979687793940.Spec := by
  intro n
  simp only [A226284, Nat.add_sub_cancel]

end A226284

/-! ## A226284.P7501663566668523400

`A226288(A027379(n+2))`
-/

namespace A226284.P7501663566668523400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A027379 (n + 2)).toNat

end

end A226284.P7501663566668523400

namespace A226284

/-- `A226288(A027379(n+2))` -/
def P7501663566668523400.Spec : Prop :=
  ∀ n, P7501663566668523400.a n = A226284 (n + 1)

end A226284

/-! ## A226284.P5999740236818002229

`A226288(A046691(n+2)+1)`
-/

namespace A226284.P5999740236818002229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A046691 (n + 2) + 1).toNat

end

end A226284.P5999740236818002229

namespace A226284

/-- `A226288(A046691(n+2)+1)` -/
def P5999740236818002229.Spec : Prop :=
  ∀ n, P5999740236818002229.a n = A226284 (n + 1)

end A226284

/-! ## A226284.P3608049003342565544

`A226288(A052905(n+1)+2)`
-/

namespace A226284.P3608049003342565544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A052905 (n + 1) + 2).toNat

end

end A226284.P3608049003342565544

namespace A226284

/-- `A226288(A052905(n+1)+2)` -/
def P3608049003342565544.Spec : Prop :=
  ∀ n, P3608049003342565544.a n = A226284 (n + 1)

end A226284

/-! ## A226284.P17359520928445615740

`A226288(A000217(n+4)-3)`
-/

namespace A226284.P17359520928445615740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A000217 (n + 4) - 3).toNat

end

end A226284.P17359520928445615740

namespace A226284

/-- `A226288(A000217(n+4)-3)` -/
def P17359520928445615740.Spec : Prop :=
  ∀ n, P17359520928445615740.a n = A226284 (n + 1)

end A226284

/-! ## A226284.P14805603917776684438

`A226288(Δ[A008778(n+1)]-1)`
-/

namespace A226284.P14805603917776684438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (f1 (n + 1) - f1 n - 1).toNat

end

end A226284.P14805603917776684438

namespace A226284

/-- `A226288(Δ[A008778(n+1)]-1)` -/
def P14805603917776684438.Spec : Prop :=
  ∀ n, P14805603917776684438.a n = A226284 (n + 1)

end A226284

/-! ## A226284.P10349312973900046559

`A226288(A167614(n+1)+A005408(n))`
-/

namespace A226284.P10349312973900046559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A167614 (n + 1) + A005408 n).toNat

end

end A226284.P10349312973900046559

namespace A226284

/-- `A226288(A167614(n+1)+A005408(n))` -/
def P10349312973900046559.Spec : Prop :=
  ∀ n, P10349312973900046559.a n = A226284 (n + 1)

end A226284

/-!
# A226285: a(n) = [n/2]!*[(n+1)/2]!*C([n/2],4)*C([(n+1)/2],4).

The programs for A226285, the canonical program `A226285.P10769881224325943380` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226285 has offset 1).

The definition of A226285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226285.P10769881224325943380

`floor((n+1)/2)!*floor((n+2)/2)!*C(floor((n+1)/2), 4)*C(floor((n+2)/2), 4)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226285

/-- `floor((n+1)/2)!*floor((n+2)/2)!*C(floor((n+1)/2), 4)*C(floor((n+2)/2), 4)` -/
def P10769881224325943380.Spec : Prop :=
  ∀ n, (P10769881224325943380.a n : ℤ) = A226285 (n + 1)

theorem P10769881224325943380.correct : P10769881224325943380.Spec := by
  intro n
  simp only [A226285, Nat.add_sub_cancel]

end A226285

/-! ## A226285.P14459795581656397969

`A226288(Δ[A264443(n)])`
-/

namespace A226285.P14459795581656397969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (f1 (n + 1) - f1 n).toNat

end

end A226285.P14459795581656397969

namespace A226285

/-- `A226288(Δ[A264443(n)])` -/
def P14459795581656397969.Spec : Prop :=
  ∀ n, P14459795581656397969.a n = A226285 (n + 1)

end A226285

/-! ## A226285.P12888096873095979010

`A226288(A046691(n+3))`
-/

namespace A226285.P12888096873095979010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A046691 (n + 3)).toNat

end

end A226285.P12888096873095979010

namespace A226285

/-- `A226288(A046691(n+3))` -/
def P12888096873095979010.Spec : Prop :=
  ∀ n, P12888096873095979010.a n = A226285 (n + 1)

end A226285

/-! ## A226285.P13398330226957039240

`A226288(A052905(n+2)+1)`
-/

namespace A226285.P13398330226957039240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A052905 (n + 2) + 1).toNat

end

end A226285.P13398330226957039240

namespace A226285

/-- `A226288(A052905(n+2)+1)` -/
def P13398330226957039240.Spec : Prop :=
  ∀ n, P13398330226957039240.a n = A226285 (n + 1)

end A226285

/-! ## A226285.P11356642996715815409

`A226288(A000096(n+4)-3)`
-/

namespace A226285.P11356642996715815409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A000096 (n + 4) - 3).toNat

end

end A226285.P11356642996715815409

namespace A226285

/-- `A226288(A000096(n+4)-3)` -/
def P11356642996715815409.Spec : Prop :=
  ∀ n, P11356642996715815409.a n = A226285 (n + 1)

end A226285

/-! ## A226285.P17644362575012133002

`A226288(A167614(n+2)+2*(n+1))`
-/

namespace A226285.P17644362575012133002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A226285.P17644362575012133002

namespace A226285

/-- `A226288(A167614(n+2)+2*(n+1))` -/
def P17644362575012133002.Spec : Prop :=
  ∀ n, P17644362575012133002.a n = A226285 (n + 1)

end A226285

/-! ## A226285.P14529618495653143711

`A226288(A264443(n+1)-A264443(n))`
-/

namespace A226285.P14529618495653143711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A264443 (n + 1) - A264443 n).toNat

end

end A226285.P14529618495653143711

namespace A226285

/-- `A226288(A264443(n+1)-A264443(n))` -/
def P14529618495653143711.Spec : Prop :=
  ∀ n, P14529618495653143711.a n = A226285 (n + 1)

end A226285

/-! ## A226285.P13698024721057681252

`A226288(A060747(n+3)+A000217(n+3))`
-/

namespace A226285.P13698024721057681252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A060747 (n + 3) + A000217 (n + 3)).toNat

end

end A226285.P13698024721057681252

namespace A226285

/-- `A226288(A060747(n+3)+A000217(n+3))` -/
def P13698024721057681252.Spec : Prop :=
  ∀ n, P13698024721057681252.a n = A226285 (n + 1)

end A226285

/-!
# A226286: [n/2]!*[(n+1)/2]!*C([n/2],5)*C([(n+1)/2],5).

The programs for A226286, there is no canonical definition to state claims against.
-/

/-! ## A226286.P16973321718544426849

`A226288(A052905(n+3))`
-/

namespace A226286.P16973321718544426849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A052905 (n + 3)).toNat

end

end A226286.P16973321718544426849

/-! ## A226286.P1813545839835878747

`A226288(A133263(n+6)-7)`
-/

namespace A226286.P1813545839835878747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A133263 (n + 6) - 7).toNat

end

end A226286.P1813545839835878747

/-! ## A226286.P11780094376831953951

`A226288(A167499(n+5)-10)`
-/

namespace A226286.P11780094376831953951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A167499 (n + 5) - 10).toNat

end

end A226286.P11780094376831953951

/-! ## A226286.P7018096749031889711

`A226288(Δ[A264443(n+1)]-1)`
-/

namespace A226286.P7018096749031889711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (f1 (n + 1) - f1 n - 1).toNat

end

end A226286.P7018096749031889711

/-! ## A226286.P7846458015426237346

`A226288(A161680(n+6)+n+1)`
-/

namespace A226286.P7846458015426237346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A161680 (n + 6) + (n + 1 : ℤ)).toNat

end

end A226286.P7846458015426237346

/-! ## A226286.P400709689490475480

`A226288(A060747(A060747(n+4))+A000217(n+2))`
-/

namespace A226286.P400709689490475480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A060747 (A060747 (n + 4)).toNat + A000217 (n + 2)).toNat

end

end A226286.P400709689490475480

/-!
# A226287: a(n) = [n/2]!*[(n+1)/2]!*C([n/2],6)*C([(n+1)/2],6).

The programs for A226287, there is no canonical definition to state claims against.
-/

/-! ## A226287.P8703465407836583947

`A226288(C(n+7, 2)+1+n)`
-/

namespace A226287.P8703465407836583947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (Nat.choose (n + 7) 2 + 1 + n)

end

end A226287.P8703465407836583947

/-! ## A226287.P4740649933852665536

`A226288(A055999(n+4))`
-/

namespace A226287.P4740649933852665536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A055999 (n + 4)).toNat

end

end A226287.P4740649933852665536

/-! ## A226287.P6114508937373358723

`A226288(A046691(n+5)-2)`
-/

namespace A226287.P6114508937373358723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A046691 (n + 5) - 2).toNat

end

end A226287.P6114508937373358723

/-! ## A226287.P4472975093832611037

`A226288(A034856(n+6)-4)`
-/

namespace A226287.P4472975093832611037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A034856 (n + 6) - 4).toNat

end

end A226287.P4472975093832611037

/-! ## A226287.P1114994850035936433

`A226288(A000217(n+7)-6)`
-/

namespace A226287.P1114994850035936433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A000217 (n + 7) - 6).toNat

end

end A226287.P1114994850035936433

/-! ## A226287.P5281448094398884942

`A226288(A000124(n+7)-7)`
-/

namespace A226287.P5281448094398884942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A000124 (n + 7) - 7).toNat

end

end A226287.P5281448094398884942

/-! ## A226287.P9752134692234061846

`A226288(A000096(n+5)+n+2)`
-/

namespace A226287.P9752134692234061846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226288 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A226287.P9752134692234061846

/-!
# A226288: T(n,k) = [n/2]!*[(n+1)/2]!*C([n/2],k-1)*C([(n+1)/2],k-1) where [x] = floor(x).

The programs for A226288, there is no canonical definition to state claims against.
-/

/-! ## A226288.P12908296582999728099

`and(A086810(n), A176740(A287456(n+1)))`
-/

namespace A226288.P12908296582999728099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086810 n) (A176740 (A287456 (n + 1)).toNat)

end

end A226288.P12908296582999728099

/-! ## A226288.P15173199977823636832

`A195581(n)^A234931(A234931(n))`
-/

namespace A226288.P15173199977823636832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195581 n : ℚ) ^ (A234931 (A234931 n).toNat : ℤ)

end

end A226288.P15173199977823636832

/-! ## A226288.P16823121921505042727

`and(A000203(A037223(n)), A086810(n))`
-/

namespace A226288.P16823121921505042727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A037223 n).toNat) (A086810 n)

end

end A226288.P16823121921505042727

/-! ## A226288.P15857901670108634007

`A195581(n)^A129678(A306983(n+1))`
-/

namespace A226288.P15857901670108634007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195581 n : ℚ) ^ (A129678 (A306983 (n + 1)).toNat : ℤ)

end

end A226288.P15857901670108634007

/-! ## A226288.P12704185843376858666

`A195581(n)^A185158(A362377(3*n))`
-/

namespace A226288.P12704185843376858666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195581 n : ℚ) ^ (A185158 (A362377 (3 * n)).toNat : ℤ)

end

end A226288.P12704185843376858666

/-!
# A226289: Expansion of f(-x) * phi(x^3) in powers of x where f(), phi() are Ramanujan theta functions.

The programs for A226289, there is no canonical definition to state claims against.
-/

/-! ## A226289.P6635698578578861161

`A226860(3*n)`
-/

namespace A226289.P6635698578578861161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226860 (3 * n)

end

end A226289.P6635698578578861161

/-! ## A226289.P3465188216504231945

`A226861(3*n)`
-/

namespace A226289.P3465188216504231945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226861 (3 * n)

end

end A226289.P3465188216504231945

/-! ## A226289.P1435657154578999227

`A226860(A008486(n))+A000038(n)`
-/

namespace A226289.P1435657154578999227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226860 (A008486 n).toNat + A000038 n

end

end A226289.P1435657154578999227

/-! ## A226289.P1649636615471575092

`A226862(4*n)`
-/

namespace A226289.P1649636615471575092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226862 (4 * n)

end

end A226289.P1649636615471575092

/-! ## A226289.P14755157772451708433

`A226864(4*n)`
-/

namespace A226289.P14755157772451708433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226864 (4 * n)

end

end A226289.P14755157772451708433

/-! ## A226289.P10393841390135703994

`A246962(9*n)`
-/

namespace A226289.P10393841390135703994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246962 (9 * n)

end

end A226289.P10393841390135703994

/-! ## A226289.P4310579257033202181

`A204010(12*n)`
-/

namespace A226289.P4310579257033202181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204010 (12 * n)

end

end A226289.P4310579257033202181

/-! ## A226289.P5554635118049486467

`A226350(12*n)`
-/

namespace A226289.P5554635118049486467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226350 (12 * n)

end

end A226289.P5554635118049486467

/-!
# A226292: a(n) = (10*n^2+4*n+(1-(-1)^n))/8.

The programs for A226292, the canonical program `A226292.P15376830132886730915` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226292 has offset 1).

The definition of A226292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*(n+1)²+4*(n+1)+1-(-1)^(n+1))/8` (program `A226292.P3513779737677598797`, by `A226292.P3513779737677598797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226292.P15376830132886730915

`2*a(n-2)-a(n-4)+10` with `a(0)=2, a(1)=6, a(2)=13, a(3)=22`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226292

/-- `2*a(n-2)-a(n-4)+10` -/
def P15376830132886730915.Spec : Prop :=
  ∀ n, P15376830132886730915.a n = A226292 (n + 1)

theorem P15376830132886730915.correct : P15376830132886730915.Spec := by
  intro n
  simp only [A226292, Nat.add_sub_cancel]

end A226292

/-! ## A226292.P13286488218658410498

`a(n-1)+a(n-2)-a(n-3)+5` with `a(0)=2, a(1)=6, a(2)=13`
-/

namespace A226292.P13286488218658410498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 13] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + 5

end

end A226292.P13286488218658410498

namespace A226292

/-- `a(n-1)+a(n-2)-a(n-3)+5` -/
def P13286488218658410498.Spec : Prop :=
  ∀ n, P13286488218658410498.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P3513779737677598797

`(10*(n+1)²+4*(n+1)+1-(-1)^(n+1))/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226292.P3513779737677598797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) ^ 2 + 4 * (n + 1) : ℤ) + (1 - (-1) ^ (n + 1)) : ℚ) / 8

end

end A226292.P3513779737677598797

namespace A226292

/-- `(10*(n+1)²+4*(n+1)+1-(-1)^(n+1))/8` -/
def P3513779737677598797.Spec : Prop :=
  ∀ n, P3513779737677598797.a n = (A226292 (n + 1) : ℚ)

theorem P3513779737677598797.correct : P3513779737677598797.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A226292, Nat.add_sub_cancel, A226292.P3513779737677598797.a, A226292.P15376830132886730915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A226292, Nat.add_sub_cancel, A226292.P3513779737677598797.a, A226292.P15376830132886730915.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226292

/-! ## A226292.P5988285750643624704

`∑[∑[gcd(2, n)]+n]`
-/

namespace A226292.P5988285750643624704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226292.P5988285750643624704

namespace A226292

/-- `∑[∑[gcd(2, n)]+n]` -/
def P5988285750643624704.Spec : Prop :=
  ∀ n, (P5988285750643624704.a n : ℤ) = A226292 (n + 1)

end A226292

/-! ## A226292.P5865253593731554281

`∑[n-∑[or(n, -2)]]`
-/

namespace A226292.P5865253593731554281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226292.P5865253593731554281

namespace A226292

/-- `∑[n-∑[or(n, -2)]]` -/
def P5865253593731554281.Spec : Prop :=
  ∀ n, P5865253593731554281.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P17031164926640104511

`∑[a(n-2)+5]` with `a(0)=2, a(1)=4`
-/

namespace A226292.P17031164926640104511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226292.P17031164926640104511

namespace A226292

/-- `∑[a(n-2)+5]` -/
def P17031164926640104511.Spec : Prop :=
  ∀ n, (P17031164926640104511.a n : ℤ) = A226292 (n + 1)

end A226292

/-! ## A226292.P5647889807059414966

`∑[∑[2-and(1, n)]+n]`
-/

namespace A226292.P5647889807059414966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226292.P5647889807059414966

namespace A226292

/-- `∑[∑[2-and(1, n)]+n]` -/
def P5647889807059414966.Spec : Prop :=
  ∀ n, P5647889807059414966.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P13304796385080123475

`∑[n-∑[and(1, n)-2]]`
-/

namespace A226292.P13304796385080123475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226292.P13304796385080123475

namespace A226292

/-- `∑[n-∑[and(1, n)-2]]` -/
def P13304796385080123475.Spec : Prop :=
  ∀ n, P13304796385080123475.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P16317821992067177479

`∑[comp[lcm(3, n)]]+∑[n+1]`
-/

namespace A226292.P16317821992067177479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A226292.P16317821992067177479

namespace A226292

/-- `∑[comp[lcm(3, n)]]+∑[n+1]` -/
def P16317821992067177479.Spec : Prop :=
  ∀ n, (P16317821992067177479.a n : ℤ) = A226292 (n + 1)

end A226292

/-! ## A226292.P16039155701503669312

`∑[∑[∑[ogf((2+2x+x^2)/(1+x))]]]`
-/

namespace A226292.P16039155701503669312
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226292.P16039155701503669312

namespace A226292

/-- `∑[∑[∑[ogf((2+2x+x^2)/(1+x))]]]` -/
def P16039155701503669312.Spec : Prop :=
  ∀ n, P16039155701503669312.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P497223413646609307

`ogf((2+2x+x^2)/(1-2x+2x^3-x^4))`
-/

namespace A226292.P497223413646609307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1] [1, -2, 0, 2, -1] n

end

end A226292.P497223413646609307

namespace A226292

/-- `ogf((2+2x+x^2)/(1-2x+2x^3-x^4))` -/
def P497223413646609307.Spec : Prop :=
  ∀ n, P497223413646609307.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P6994621797378479284

`floor(∑[∑[5-a(n-1)]])` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A226292.P6994621797378479284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226292.P6994621797378479284

namespace A226292

/-- `floor(∑[∑[5-a(n-1)]])` -/
def P6994621797378479284.Spec : Prop :=
  ∀ n, P6994621797378479284.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P15562902417793342403

`5*n+a(n-2)+1` with `a(0)=2, a(1)=6`
-/

namespace A226292.P15562902417793342403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  5 * n + (a (n - 2) + 1)

end

end A226292.P15562902417793342403

namespace A226292

/-- `5*n+a(n-2)+1` -/
def P15562902417793342403.Spec : Prop :=
  ∀ n, (P15562902417793342403.a n : ℤ) = A226292 (n + 1)

end A226292

/-! ## A226292.P17792956522269069566

`∑[∑[(n+1)%2]]+(n+1)²`
-/

namespace A226292.P17792956522269069566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A226292.P17792956522269069566

namespace A226292

/-- `∑[∑[(n+1)%2]]+(n+1)²` -/
def P17792956522269069566.Spec : Prop :=
  ∀ n, (P17792956522269069566.a n : ℤ) = A226292 (n + 1)

end A226292

/-! ## A226292.P7697718927814988445

`∑[∑[and(1, n+1)]]+(n+1)²`
-/

namespace A226292.P7697718927814988445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A226292.P7697718927814988445

namespace A226292

/-- `∑[∑[and(1, n+1)]]+(n+1)²` -/
def P7697718927814988445.Spec : Prop :=
  ∀ n, (P7697718927814988445.a n : ℤ) = A226292 (n + 1)

end A226292

/-! ## A226292.P7651593475674653627

`∑[∑[5-a(n-1)]]-1` with `a(0)=3, a(1)=1, a(2)=3`
-/

namespace A226292.P7651593475674653627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A226292.P7651593475674653627

namespace A226292

/-- `∑[∑[5-a(n-1)]]-1` -/
def P7651593475674653627.Spec : Prop :=
  ∀ n, P7651593475674653627.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P6024891887407557651

`floor(lcm(n+1, n+2)+(n/2)²)`
-/

namespace A226292.P6024891887407557651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n + 2) : ℚ) + ((n : ℚ) / 2) ^ 2⌋

end

end A226292.P6024891887407557651

namespace A226292

/-- `floor(lcm(n+1, n+2)+(n/2)²)` -/
def P6024891887407557651.Spec : Prop :=
  ∀ n, P6024891887407557651.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P1224940092198809480

`∑[2*n+1]+∑[∑[and(1, n+1)]]`
-/

namespace A226292.P1224940092198809480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A226292.P1224940092198809480

namespace A226292

/-- `∑[2*n+1]+∑[∑[and(1, n+1)]]` -/
def P1224940092198809480.Spec : Prop :=
  ∀ n, (P1224940092198809480.a n : ℤ) = A226292 (n + 1)

end A226292

/-! ## A226292.P14329474356370330402

`floor(a(n-1)+2+n/2+n+n)` with `a(0)=2`
-/

namespace A226292.P14329474356370330402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) + 2 : ℚ) + ((n : ℚ) / 2 + (n : ℚ) + (n : ℚ))⌋

end

end A226292.P14329474356370330402

namespace A226292

/-- `floor(a(n-1)+2+n/2+n+n)` -/
def P14329474356370330402.Spec : Prop :=
  ∀ n, P14329474356370330402.a n = A226292 (n + 1)

end A226292

/-! ## A226292.P15762094700152416491

`∑[A047211(n+1)]`
-/

namespace A226292.P15762094700152416491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226292.P15762094700152416491

namespace A226292

/-- `∑[A047211(n+1)]` -/
def P15762094700152416491.Spec : Prop :=
  ∀ n, P15762094700152416491.a n = A226292 (n + 1)

end A226292

/-!
# A226293: Class of sequences of (p-1)-tuples of reverse order of natural numbers for p = 7.

The programs for A226293, there is no canonical definition to state claims against.
-/

/-! ## A226293.P5532924327692061090

`13*A097992(n)-(n+7)`
-/

namespace A226293.P5532924327692061090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A097992 n - (n + 7 : ℤ)

end

end A226293.P5532924327692061090

/-! ## A226293.P3660637812277777790

`A154609(floor(n/6))-n+1`
-/

namespace A226293.P3660637812277777790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 ⌊(n : ℚ) / 6⌋.toNat - (n : ℤ) + 1

end

end A226293.P3660637812277777790

/-! ## A226293.P18242207992309999282

`A190991(floor(n/6))-(n-5)`
-/

namespace A226293.P18242207992309999282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 ⌊(n : ℚ) / 6⌋.toNat - ((n : ℤ) - 5)

end

end A226293.P18242207992309999282

/-! ## A226293.P3079777167565740792

`A269044(A064459(2*n))-(n+1)`
-/

namespace A226293.P3079777167565740792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (A064459 (2 * n)).toNat - (n + 1 : ℤ)

end

end A226293.P3079777167565740792

/-! ## A226293.P7040250137324727523

`∑[A010138(n)-A020639(A008706(n))]`
-/

namespace A226293.P7040250137324727523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010138 n - A020639 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226293.P7040250137324727523

/-!
# A226294: Period 2: repeat (6,4).

The programs for A226294, the canonical program `A226294.P7008621033274043662` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226294 has offset 0).

The definition of A226294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226294.P7008621033274043662

`a(n-2)` with `a(0)=6, a(1)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226294

/-- `a(n-2)` -/
def P7008621033274043662.Spec : Prop :=
  ∀ n, (P7008621033274043662.a n : ℤ) = A226294 n

theorem P7008621033274043662.correct : P7008621033274043662.Spec := by
  intro n
  simp only [A226294]

end A226294

/-!
# A226295: Multiplicative order of the n-th prime modulo the (n+1)th prime.

The programs for A226295, there is no canonical definition to state claims against.
-/

/-! ## A226295.P12143859881263478297

`A323376(2*(n+1)²+1)`
-/

namespace A226295.P12143859881263478297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323376 (2 * (n + 1) ^ 2 + 1)

end

end A226295.P12143859881263478297

