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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A036800: a(n) = -6 + 2^(n+1)*(3 - 2*n + n^2).

The programs for A036800, the canonical program `A036800.P2795999232829827059` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036800 has offset 0).

The definition of A036800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-6+2^(n+1)*(3-2*n+n²)` (program `A036800.P2795999232829827059`, by `A036800.P2795999232829827059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036800.P2855802462570540370

`2^(n+1)*(3-2*n+n²)-6`
-/

namespace A036800.P2855802462570540370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (3 - (2 * n : ℤ) + (n ^ 2 : ℤ)) - 6

end

end A036800.P2855802462570540370

namespace A036800

/-- `2^(n+1)*(3-2*n+n²)-6` -/
def P2855802462570540370.Spec : Prop :=
  ∀ n, P2855802462570540370.a n = A036800 n

theorem P2855802462570540370.correct : P2855802462570540370.Spec := by
  intro n
  simp only [A036800, Nat.add_sub_cancel, A036800.P2855802462570540370.a, A036800.P2795999232829827059.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A036800

/-! ## A036800.P2795999232829827059

`-6+2^(n+1)*(3-2*n+n²)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036800

/-- `-6+2^(n+1)*(3-2*n+n²)` -/
def P2795999232829827059.Spec : Prop :=
  ∀ n, P2795999232829827059.a n = A036800 n

theorem P2795999232829827059.correct : P2795999232829827059.Spec := by
  intro n
  simp only [A036800]

end A036800

/-! ## A036800.P12097804960166845777

`2*A036826(n)`
-/

namespace A036800.P12097804960166845777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036826 n

end

end A036800.P12097804960166845777

namespace A036800

/-- `2*A036826(n)` -/
def P12097804960166845777.Spec : Prop :=
  ∀ n, P12097804960166845777.a n = A036800 n

theorem P12097804960166845777.correct : P12097804960166845777.Spec := by
  intro n
  simp only [A036800, Nat.add_sub_cancel, A036800.P12097804960166845777.a, A036800.P2795999232829827059.a, A036826, A036826.P77442619776099478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036800

/-! ## A036800.P5559185434686565731

`∑[A007758(n)]`
-/

namespace A036800.P5559185434686565731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P5559185434686565731

namespace A036800

/-- `∑[A007758(n)]` -/
def P5559185434686565731.Spec : Prop :=
  ∀ n, P5559185434686565731.a n = A036800 n

end A036800

/-! ## A036800.P6592743174427148850

`∑[1-A168298(n)]`
-/

namespace A036800.P6592743174427148850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P6592743174427148850

namespace A036800

/-- `∑[1-A168298(n)]` -/
def P6592743174427148850.Spec : Prop :=
  ∀ n, P6592743174427148850.a n = A036800 n

end A036800

/-! ## A036800.P1059755009384688153

`∑[A248917(n)-1]`
-/

namespace A036800.P1059755009384688153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248917 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P1059755009384688153

namespace A036800

/-- `∑[A248917(n)-1]` -/
def P1059755009384688153.Spec : Prop :=
  ∀ n, P1059755009384688153.a n = A036800 n

end A036800

/-! ## A036800.P7682488352703391926

`∑[n*A036289(n)]`
-/

namespace A036800.P7682488352703391926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P7682488352703391926

namespace A036800

/-- `∑[n*A036289(n)]` -/
def P7682488352703391926.Spec : Prop :=
  ∀ n, P7682488352703391926.a n = A036800 n

end A036800

/-! ## A036800.P12817318972653935139

`∑[n*A134401(n)]`
-/

namespace A036800.P12817318972653935139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P12817318972653935139

namespace A036800

/-- `∑[n*A134401(n)]` -/
def P12817318972653935139.Spec : Prop :=
  ∀ n, P12817318972653935139.a n = A036800 n

end A036800

/-! ## A036800.P13533756054937763150

`∑[n²*A000079(n)]`
-/

namespace A036800.P13533756054937763150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P13533756054937763150

namespace A036800

/-- `∑[n²*A000079(n)]` -/
def P13533756054937763150.Spec : Prop :=
  ∀ n, P13533756054937763150.a n = A036800 n

end A036800

/-! ## A036800.P13234950062073457672

`∑[n²*A155559(n)]`
-/

namespace A036800.P13234950062073457672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P13234950062073457672

namespace A036800

/-- `∑[n²*A155559(n)]` -/
def P13234950062073457672.Spec : Prop :=
  ∀ n, P13234950062073457672.a n = A036800 n

end A036800

/-! ## A036800.P1176305766367119805

`∑[n²*A171449(n)]`
-/

namespace A036800.P1176305766367119805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A171449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P1176305766367119805

namespace A036800

/-- `∑[n²*A171449(n)]` -/
def P1176305766367119805.Spec : Prop :=
  ∀ n, P1176305766367119805.a n = A036800 n

end A036800

/-! ## A036800.P11069400039278293321

`∑[n²*A171559(n)]`
-/

namespace A036800.P11069400039278293321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A171559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P11069400039278293321

namespace A036800

/-- `∑[n²*A171559(n)]` -/
def P11069400039278293321.Spec : Prop :=
  ∀ n, P11069400039278293321.a n = A036800 n

end A036800

/-! ## A036800.P18329194029636939303

`∑[n*A097064(n+1)]`
-/

namespace A036800.P18329194029636939303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P18329194029636939303

namespace A036800

/-- `∑[n*A097064(n+1)]` -/
def P18329194029636939303.Spec : Prop :=
  ∀ n, P18329194029636939303.a n = A036800 n

end A036800

/-! ## A036800.P16207910023744972075

`2*∑[n*A001787(n)]`
-/

namespace A036800.P16207910023744972075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036800.P16207910023744972075

namespace A036800

/-- `2*∑[n*A001787(n)]` -/
def P16207910023744972075.Spec : Prop :=
  ∀ n, P16207910023744972075.a n = A036800 n

end A036800

/-! ## A036800.P14025422851122656091

`∑[n²*A011782(n+1)]`
-/

namespace A036800.P14025422851122656091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P14025422851122656091

namespace A036800

/-- `∑[n²*A011782(n+1)]` -/
def P14025422851122656091.Spec : Prop :=
  ∀ n, P14025422851122656091.a n = A036800 n

end A036800

/-! ## A036800.P16421585996156948601

`∑[n²*A131577(n+1)]`
-/

namespace A036800.P16421585996156948601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P16421585996156948601

namespace A036800

/-- `∑[n²*A131577(n+1)]` -/
def P16421585996156948601.Spec : Prop :=
  ∀ n, P16421585996156948601.a n = A036800 n

end A036800

/-! ## A036800.P2514012895857901818

`∑[(A000918(n)+2)*n²]`
-/

namespace A036800.P2514012895857901818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 n + 2) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036800.P2514012895857901818

namespace A036800

/-- `∑[(A000918(n)+2)*n²]` -/
def P2514012895857901818.Spec : Prop :=
  ∀ n, P2514012895857901818.a n = A036800 n

end A036800

/-! ## A036800.P3508930364200745744

`2*∑[n²*A011782(n)]`
-/

namespace A036800.P3508930364200745744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036800.P3508930364200745744

namespace A036800

/-- `2*∑[n²*A011782(n)]` -/
def P3508930364200745744.Spec : Prop :=
  ∀ n, P3508930364200745744.a n = A036800 n

end A036800

/-! ## A036800.P13368871196687372501

`2*(A055580(n)-A027992(n))`
-/

namespace A036800.P13368871196687372501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055580 n - A027992 n)

end

end A036800.P13368871196687372501

namespace A036800

/-- `2*(A055580(n)-A027992(n))` -/
def P13368871196687372501.Spec : Prop :=
  ∀ n, P13368871196687372501.a n = A036800 n

theorem P13368871196687372501.correct : P13368871196687372501.Spec := by
  intro n
  simp only [A036800, Nat.add_sub_cancel, A036800.P13368871196687372501.a, A036800.P2795999232829827059.a, A027992, A027992.P7713747682354996554.a, A055580, A055580.P7902495367089633892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036800

/-!
# A036801: Number of partitions satisfying (cn(0,5) <= cn(2,5) and cn(0,5) <= cn(3,5) and cn(0,5) <= cn(1,5) and cn(0,5) <= cn(4,5)).

The programs for A036801, there is no canonical definition to state claims against.
-/

/-! ## A036801.P9421379560215838064

`A347706(A368518(n+1))+A035959(n)`
-/

namespace A036801.P9421379560215838064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A368518 (n + 1)).toNat + A035959 n

end

end A036801.P9421379560215838064

/-! ## A036801.P8400778212352933140

`A035959(n)+A010051(A182908(n+4))`
-/

namespace A036801.P8400778212352933140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035959 n + A010051 (A182908 (n + 4)).toNat

end

end A036801.P8400778212352933140

/-! ## A036801.P1867795954760385251

`A121373(A207235(n+1))+A035959(n)`
-/

namespace A036801.P1867795954760385251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A207235 (n + 1)).toNat + A035959 n

end

end A036801.P1867795954760385251

/-! ## A036801.P14084659507699121216

`A102683(A325868(n+1))+A035959(n)`
-/

namespace A036801.P14084659507699121216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A325868 (n + 1)).toNat + A035959 n

end

end A036801.P14084659507699121216

/-!
# A036804: Number of partitions satisfying (cn(0,5) <= cn(2,5) = cn(3,5)).

The programs for A036804, there is no canonical definition to state claims against.
-/

/-! ## A036804.P1049013213364440904

`A036805(A055645(n))`
-/

namespace A036804.P1049013213364440904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036805 (A055645 n).toNat

end

end A036804.P1049013213364440904

/-! ## A036804.P15186102285254579373

`A036805(A262545(n+1))`
-/

namespace A036804.P15186102285254579373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036805 (A262545 (n + 1)).toNat

end

end A036804.P15186102285254579373

/-! ## A036804.P17499001966207143629

`filter[A036805(n), A140653(#)]`
-/

namespace A036804.P17499001966207143629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A140653 (f1 j).toNat = 1) n)

end

end A036804.P17499001966207143629

/-! ## A036804.P15333588954810553619

`A036805(n)^n^A326460(n)`
-/

namespace A036804.P15333588954810553619
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036805 n : ℝ) ^ ((n : ℚ) ^ (A326460 n : ℤ) : ℝ)

end

end A036804.P15333588954810553619

/-! ## A036804.P10640275944573264022

`A184955(A184955(n))+A036805(n)`
-/

namespace A036804.P10640275944573264022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A184955 n).toNat + A036805 n

end

end A036804.P10640275944573264022

/-!
# A036805: Number of partitions satisfying (cn(2,5) = cn(3,5) and cn(0,5) <= cn(1,5) and cn(0,5) <= cn(4,5)).

The programs for A036805, there is no canonical definition to state claims against.
-/

/-! ## A036805.P5507461839302146633

`A036807(n)+A036811(n)-A036816(n)`
-/

namespace A036805.P5507461839302146633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036807 n + (A036811 n - A036816 n)

end

end A036805.P5507461839302146633

/-!
# A036806: Number of partitions satisfying (cn(0,5) = 0 and cn(2,5) <= cn(1,5) and cn(3,5) <= cn(1,5) and cn(2,5) <= cn(4,5) and cn(3,5) <= cn(4,5)).

The programs for A036806, there is no canonical definition to state claims against.
-/

/-! ## A036806.P16400554535498884570

`A039908(A076710(n)+n)`
-/

namespace A036806.P16400554535498884570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039908 (A076710 n + (n : ℤ)).toNat

end

end A036806.P16400554535498884570

/-! ## A036806.P6920967432514114796

`A039908(or(n, A076710(n)))`
-/

namespace A036806.P6920967432514114796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039908 (Int.lor (n : ℤ) (A076710 n)).toNat

end

end A036806.P6920967432514114796

/-!
# A036807: Number of partitions satisfying (cn(0,5) <= cn(2,5) = cn(3,5) and cn(0,5) <= cn(1,5) and cn(0,5) <= cn(4,5)).

The programs for A036807, there is no canonical definition to state claims against.
-/

/-! ## A036807.P17646775047521480595

`A036805(n)+A036816(n)-A036811(n)`
-/

namespace A036807.P17646775047521480595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036805 n + (A036816 n - A036811 n)

end

end A036807.P17646775047521480595

/-! ## A036807.P2503743461566181614

`A036808(n)-A186747(A036814(n))`
-/

namespace A036807.P2503743461566181614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036808 n - A186747 (A036814 n).toNat

end

end A036807.P2503743461566181614

/-! ## A036807.P14990044820965980528

`A036815(n)+∑[A186747(A036814(n))]`
-/

namespace A036807.P14990044820965980528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A036814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036815 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036807.P14990044820965980528

/-! ## A036807.P10864153155887374041

`A185284(A036815(n))+A036815(n)`
-/

namespace A036807.P10864153155887374041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A036815 n).toNat + A036815 n

end

end A036807.P10864153155887374041

/-!
# A036808: Number of partitions satisfying (cn(2,5) = cn(3,5) and cn(2,5) <= cn(1,5) and cn(2,5) <= cn(4,5)).

The programs for A036808, there is no canonical definition to state claims against.
-/

/-! ## A036808.P8132532203027058254

`A186747(A036814(n))+A036807(n)`
-/

namespace A036808.P8132532203027058254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A036814 n).toNat + A036807 n

end

end A036808.P8132532203027058254

/-!
# A036809: Number of partitions satisfying (cn(0,5) <= cn(1,5) = cn(4,5)).

The programs for A036809, there is no canonical definition to state claims against.
-/

/-! ## A036809.P2092375858495745388

`A123068(A036810(n)+1)`
-/

namespace A036809.P2092375858495745388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A036810 n + 1).toNat

end

end A036809.P2092375858495745388

/-! ## A036809.P12678467508402646908

`A185236(A185236(n))+A036810(n)`
-/

namespace A036809.P12678467508402646908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 (A185236 n).toNat + A036810 n

end

end A036809.P12678467508402646908

/-! ## A036809.P6351444090307220065

`A036810(n)+A000122(A208445(n+1))`
-/

namespace A036809.P6351444090307220065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036810 n + A000122 (A208445 (n + 1)).toNat

end

end A036809.P6351444090307220065

/-! ## A036809.P5390420811903577175

`A036810(A055645(n))`
-/

namespace A036809.P5390420811903577175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036810 (A055645 n).toNat

end

end A036809.P5390420811903577175

/-! ## A036809.P13146501940009935438

`A036810(A262545(n+1))`
-/

namespace A036809.P13146501940009935438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036810 (A262545 (n + 1)).toNat

end

end A036809.P13146501940009935438

/-!
# A036810: Number of partitions satisfying (cn(1,5) = cn(4,5) and cn(0,5) <= cn(2,5) and cn(0,5) <= cn(3,5)).

The programs for A036810, there is no canonical definition to state claims against.
-/

/-! ## A036810.P16347397701555684115

`A036813(n)+A036817(n)-A036819(n)`
-/

namespace A036810.P16347397701555684115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036813 n + (A036817 n - A036819 n)

end

end A036810.P16347397701555684115

/-! ## A036810.P7080122876600294828

`A036809(n)-A185284(A036812(n))`
-/

namespace A036810.P7080122876600294828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036809 n - A185284 (A036812 n).toNat

end

end A036810.P7080122876600294828

/-!
# A036811: Number of partitions satisfying (cn(2,5) = cn(3,5) and cn(0,5) <= cn(1,5) and cn(0,5) <= cn(4,5) and cn(2,5) <= cn(1,5) and cn(2,5) <= cn(4,5)).

The programs for A036811, there is no canonical definition to state claims against.
-/

/-! ## A036811.P18100514555357831632

`A036805(n)+A036816(n)-A036807(n)`
-/

namespace A036811.P18100514555357831632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036805 n + (A036816 n - A036807 n)

end

end A036811.P18100514555357831632

/-! ## A036811.P5328800363262065471

`A057561(lcm(A036807(n), A036808(n)))`
-/

namespace A036811.P5328800363262065471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (Int.lcm (A036807 n) (A036808 n))

end

end A036811.P5328800363262065471

/-!
# A036813: Number of partitions satisfying (cn(0,5) <= cn(1,5) = cn(4,5) and cn(0,5) <= cn(2,5) and cn(0,5) <= cn(3,5)).

The programs for A036813, there is no canonical definition to state claims against.
-/

/-! ## A036813.P2868542568839285325

`A036810(n)+A036819(n)-A036817(n)`
-/

namespace A036813.P2868542568839285325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036810 n + (A036819 n - A036817 n)

end

end A036813.P2868542568839285325

/-! ## A036813.P17704141532889853027

`A036814(n)-A186747(A036814(n))`
-/

namespace A036813.P17704141532889853027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036814 n - A186747 (A036814 n).toNat

end

end A036813.P17704141532889853027

/-! ## A036813.P8006565002589149286

`A036814(A055646(n))`
-/

namespace A036813.P8006565002589149286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036814 (A055646 n).toNat

end

end A036813.P8006565002589149286

/-! ## A036813.P457179217318884121

`A036814(A330336(n))`
-/

namespace A036813.P457179217318884121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036814 (A330336 n).toNat

end

end A036813.P457179217318884121

/-! ## A036813.P2397770357803196074

`A036814(n)+A000007(A056045(n+1))`
-/

namespace A036813.P2397770357803196074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036814 n + A000007 (A056045 (n + 1)).toNat

end

end A036813.P2397770357803196074

/-!
# A036814: Number of partitions satisfying (cn(1,5) = cn(4,5) and cn(1,5) <= cn(2,5) and cn(1,5) <= cn(3,5)).

The programs for A036814, there is no canonical definition to state claims against.
-/

/-! ## A036814.P13138610549731399964

`A185284(A036806(n))+A036813(n)`
-/

namespace A036814.P13138610549731399964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A036806 n).toNat + A036813 n

end

end A036814.P13138610549731399964

/-! ## A036814.P17612692296341645663

`A185284(A036815(n))+A036813(n)`
-/

namespace A036814.P17612692296341645663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A036815 n).toNat + A036813 n

end

end A036814.P17612692296341645663

/-!
# A036815: Number of partitions satisfying (cn(0,5) = 0 and cn(2,5) = cn(3,5)).

The programs for A036815, there is no canonical definition to state claims against.
-/

/-! ## A036815.P4540196705025434394

`A036807(n)-∑[A186747(A036814(n))]`
-/

namespace A036815.P4540196705025434394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A036814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036807 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036815.P4540196705025434394

/-!
# A036816: Number of partitions satisfying (cn(0,5) <= cn(2,5) = cn(3,5) and cn(2,5) <= cn(1,5) and cn(2,5) <= cn(4,5)).

The programs for A036816, there is no canonical definition to state claims against.
-/

/-! ## A036816.P7789125475357914337

`A036807(n)+A036811(n)-A036805(n)`
-/

namespace A036816.P7789125475357914337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036807 n + (A036811 n - A036805 n)

end

end A036816.P7789125475357914337

/-!
# A036817: Number of partitions satisfying (cn(1,5) = cn(4,5) and cn(0,5) <= cn(2,5) and cn(0,5) <= cn(3,5) and cn(1,5) <= cn(2,5) and cn(1,5) <= cn(3,5)).

The programs for A036817, there is no canonical definition to state claims against.
-/

/-! ## A036817.P2936212333767104536

`A036810(n)+A036819(n)-A036813(n)`
-/

namespace A036817.P2936212333767104536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036810 n + (A036819 n - A036813 n)

end

end A036817.P2936212333767104536

/-!
# A036819: Number of partitions satisfying (cn(0,5) <= cn(1,5) = cn(4,5) and cn(1,5) <= cn(2,5) and cn(1,5) <= cn(3,5)).

The programs for A036819, there is no canonical definition to state claims against.
-/

/-! ## A036819.P12604437082264444006

`A036813(n)+A036817(n)-A036810(n)`
-/

namespace A036819.P12604437082264444006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036813 n + (A036817 n - A036810 n)

end

end A036819.P12604437082264444006

/-!
# A036820: Number of partitions satisfying (cn(2,5) = cn(3,5) = 0).

The programs for A036820, there is no canonical definition to state claims against.
-/

/-! ## A036820.P14185427032209815562

`A000041(n)-A039897(n)`
-/

namespace A036820.P14185427032209815562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A039897 n

end

end A036820.P14185427032209815562

/-! ## A036820.P13007810036404676893

`∑[A002865(n)]-A039897(n)`
-/

namespace A036820.P13007810036404676893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A039897 n

end

end A036820.P13007810036404676893

/-! ## A036820.P17644958316156817593

`A035363(2*n)-A039897(n)`
-/

namespace A036820.P17644958316156817593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A039897 n

end

end A036820.P17644958316156817593

/-! ## A036820.P16409384803534948516

`A139582(n)/2-A039897(n)`
-/

namespace A036820.P16409384803534948516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A039897 n : ℚ)

end

end A036820.P16409384803534948516

/-! ## A036820.P14907750690319224264

`A035444(A008586(n))-A039897(n)`
-/

namespace A036820.P14907750690319224264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A039897 n

end

end A036820.P14907750690319224264

/-! ## A036820.P10525369844067884247

`A000837(n)+A018783(n)-A039897(n)`
-/

namespace A036820.P10525369844067884247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A039897 n)

end

end A036820.P10525369844067884247

/-! ## A036820.P14962380712123653183

`A035559(n)-A035569(n)`
-/

namespace A036820.P14962380712123653183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 n - A035569 n

end

end A036820.P14962380712123653183

/-! ## A036820.P13234687281354450259

`A103923(∑[n])-A039897(n)`
-/

namespace A036820.P13234687281354450259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (∑ j ∈ Finset.range (n + 1), f1 j) - A039897 n

end

end A036820.P13234687281354450259

/-! ## A036820.P4355879168823284585

`A207383(A000124(n))-A039897(n)`
-/

namespace A036820.P4355879168823284585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207383 (A000124 n).toNat - A039897 n

end

end A036820.P4355879168823284585

/-!
# A036821: Number of partitions satisfying (cn(0,5) = cn(2,5) = cn(3,5) and cn(0,5) <= cn(1,5) and cn(0,5) <= cn(4,5)).

The programs for A036821, there is no canonical definition to state claims against.
-/

/-! ## A036821.P2068204345694813691

`A256474(A003114(n))%A239746(2*(n+2))`
-/

namespace A036821.P2068204345694813691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256474 (A003114 n).toNat) (A239746 (2 * (n + 2)))

end

end A036821.P2068204345694813691

/-! ## A036821.P14184029112830769129

`A259771(2*n+1)+A185284(A185284(2*n))`
-/

namespace A036821.P14184029112830769129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259771 (2 * n + 1) + A185284 (A185284 (2 * n)).toNat

end

end A036821.P14184029112830769129

/-! ## A036821.P4369340272435604542

`or(A016389(A187219(n+1)), A259771(2*n+1))`
-/

namespace A036821.P4369340272435604542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (A187219 (n + 1)).toNat) (A259771 (2 * n + 1))

end

end A036821.P4369340272435604542

/-! ## A036821.P17892995047074849105

`A371626(A357456(n+2)+1)-A305930(A018117(n+3))`
-/

namespace A036821.P17892995047074849105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371626 (A357456 (n + 2) + 1).toNat - A305930 (A018117 (n + 3)).toNat

end

end A036821.P17892995047074849105

/-! ## A036821.P1580501981180837313

`A048766(A003479(n))`
-/

namespace A036821.P1580501981180837313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A003479 n).toNat

end

end A036821.P1580501981180837313

/-!
# A036822: Number of partitions satisfying cn(1,5) = cn(4,5) = 0.

The programs for A036822, there is no canonical definition to state claims against.
-/

/-! ## A036822.P1564985851554429012

`Δ[A000070(n)]-A039898(n+1)`
-/

namespace A036822.P1564985851554429012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039898 (n + 1)

end

end A036822.P1564985851554429012

/-! ## A036822.P5089971886676810657

`A000041(n+1)-A039898(n+1)`
-/

namespace A036822.P5089971886676810657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039898 (n + 1)

end

end A036822.P5089971886676810657

/-! ## A036822.P7007737022532197354

`∑[A187219(n+1)]-A039898(n+1)`
-/

namespace A036822.P7007737022532197354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A039898 (n + 1)

end

end A036822.P7007737022532197354

/-! ## A036822.P9412330750555416350

`Δ[A000070(n)-A039898(n)]-A039898(n)`
-/

namespace A036822.P9412330750555416350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A039898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039898 n

end

end A036822.P9412330750555416350

/-! ## A036822.P9674133274850654386

`A035558(n+1)-A035568(n+1)`
-/

namespace A036822.P9674133274850654386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035558 (n + 1) - A035568 (n + 1)

end

end A036822.P9674133274850654386

/-!
# A036824: Number of partitions satisfying (cn(0,5) = cn(1,5) = cn(4,5) and cn(0,5) <= cn(2,5) and cn(0,5) <= cn(3,5)).

The programs for A036824, there is no canonical definition to state claims against.
-/

/-! ## A036824.P8699294460905705232

`A080584(A141150(n+1))+A003106(n)`
-/

namespace A036824.P8699294460905705232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 (A141150 (n + 1)).toNat + A003106 n

end

end A036824.P8699294460905705232

/-! ## A036824.P1432881077008819148

`A255065(lt[A264594(3*n), A321543(3*n+4)])`
-/

namespace A036824.P1432881077008819148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264594 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255065 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036824.P1432881077008819148

/-! ## A036824.P14803963223621793301

`A255065(2*n+1)+A121373(A360069(2*(n+2)))`
-/

namespace A036824.P14803963223621793301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255065 (2 * n + 1) + A121373 (A360069 (2 * (n + 2))).toNat

end

end A036824.P14803963223621793301

/-! ## A036824.P5501577898079107312

`A255065(lt[A003114(2*(n+1)), A321543(3*n+4)])`
-/

namespace A036824.P5501577898079107312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255065 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036824.P5501577898079107312

/-!
# A036826: a(n) = A036800(n)/2.

The programs for A036826, the canonical program `A036826.P77442619776099478` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036826 has offset 0).

The definition of A036826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A036800(n)/2` (program `A036826.P4862853135529074276`, by `A036826.P4862853135529074276.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036826.P77442619776099478

`2^n*(3-2*n+n²)-3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036826

/-- `2^n*(3-2*n+n²)-3` -/
def P77442619776099478.Spec : Prop :=
  ∀ n, P77442619776099478.a n = A036826 n

theorem P77442619776099478.correct : P77442619776099478.Spec := by
  intro n
  simp only [A036826]

end A036826

/-! ## A036826.P4862853135529074276

`A036800(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036826.P4862853135529074276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036800 n : ℚ) / 2

end

end A036826.P4862853135529074276

namespace A036826

/-- `A036800(n)/2` -/
def P4862853135529074276.Spec : Prop :=
  ∀ n, P4862853135529074276.a n = (A036826 n : ℚ)

theorem P4862853135529074276.correct : P4862853135529074276.Spec := by
  intro n
  simp only [A036826, Nat.add_sub_cancel, A036826.P4862853135529074276.a, A036826.P77442619776099478.a, A036800, A036800.P2795999232829827059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036826

/-! ## A036826.P1594555501406797980

`∑[A007758(n)/2]`
-/

namespace A036826.P1594555501406797980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036826.P1594555501406797980

namespace A036826

/-- `∑[A007758(n)/2]` -/
def P1594555501406797980.Spec : Prop :=
  ∀ n, P1594555501406797980.a n = (A036826 n : ℚ)

end A036826

/-! ## A036826.P9254719849065917717

`∑[n*A001787(n)]`
-/

namespace A036826.P9254719849065917717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036826.P9254719849065917717

namespace A036826

/-- `∑[n*A001787(n)]` -/
def P9254719849065917717.Spec : Prop :=
  ∀ n, P9254719849065917717.a n = A036826 n

end A036826

/-! ## A036826.P18368314169686859216

`∑[n²*A011782(n)]`
-/

namespace A036826.P18368314169686859216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036826.P18368314169686859216

namespace A036826

/-- `∑[n²*A011782(n)]` -/
def P18368314169686859216.Spec : Prop :=
  ∀ n, P18368314169686859216.a n = A036826 n

end A036826

/-! ## A036826.P17918084380876231344

`∑[n²*A131577(n)]`
-/

namespace A036826.P17918084380876231344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036826.P17918084380876231344

namespace A036826

/-- `∑[n²*A131577(n)]` -/
def P17918084380876231344.Spec : Prop :=
  ∀ n, P17918084380876231344.a n = A036826 n

end A036826

/-! ## A036826.P6605432590495774199

`∑[n*A097067(n+1)]`
-/

namespace A036826.P6605432590495774199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036826.P6605432590495774199

namespace A036826

/-- `∑[n*A097067(n+1)]` -/
def P6605432590495774199.Spec : Prop :=
  ∀ n, P6605432590495774199.a n = A036826 n

end A036826

/-! ## A036826.P3156150534070335358

`∑[n*A139756(n+1)]`
-/

namespace A036826.P3156150534070335358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036826.P3156150534070335358

namespace A036826

/-- `∑[n*A139756(n+1)]` -/
def P3156150534070335358.Spec : Prop :=
  ∀ n, P3156150534070335358.a n = A036826 n

end A036826

/-! ## A036826.P7562706637897033684

`∑[n²*A034008(n+1)]`
-/

namespace A036826.P7562706637897033684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A034008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036826.P7562706637897033684

namespace A036826

/-- `∑[n²*A034008(n+1)]` -/
def P7562706637897033684.Spec : Prop :=
  ∀ n, P7562706637897033684.a n = A036826 n

end A036826

/-! ## A036826.P15682769232992521415

`∑[n²*A166444(n+1)]`
-/

namespace A036826.P15682769232992521415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A166444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036826.P15682769232992521415

namespace A036826

/-- `∑[n²*A166444(n+1)]` -/
def P15682769232992521415.Spec : Prop :=
  ∀ n, P15682769232992521415.a n = A036826 n

end A036826

/-! ## A036826.P3397725220132683020

`∑[n*A036289(n)]/2`
-/

namespace A036826.P3397725220132683020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036289 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036826.P3397725220132683020

namespace A036826

/-- `∑[n*A036289(n)]/2` -/
def P3397725220132683020.Spec : Prop :=
  ∀ n, P3397725220132683020.a n = (A036826 n : ℚ)

end A036826

/-! ## A036826.P3786371926042563158

`∑[n*A134401(n)]/2`
-/

namespace A036826.P3786371926042563158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134401 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036826.P3786371926042563158

namespace A036826

/-- `∑[n*A134401(n)]/2` -/
def P3786371926042563158.Spec : Prop :=
  ∀ n, P3786371926042563158.a n = (A036826 n : ℚ)

end A036826

/-! ## A036826.P6848052051170499100

`∑[n²*A000079(n)]/2`
-/

namespace A036826.P6848052051170499100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036826.P6848052051170499100

namespace A036826

/-- `∑[n²*A000079(n)]/2` -/
def P6848052051170499100.Spec : Prop :=
  ∀ n, P6848052051170499100.a n = (A036826 n : ℚ)

end A036826

/-! ## A036826.P70415990431828646

`∑[(A000225(n)+1)*n²]/2`
-/

namespace A036826.P70415990431828646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036826.P70415990431828646

namespace A036826

/-- `∑[(A000225(n)+1)*n²]/2` -/
def P70415990431828646.Spec : Prop :=
  ∀ n, P70415990431828646.a n = (A036826 n : ℚ)

end A036826

/-! ## A036826.P14480120325739145898

`(A196514(n)-A036799(n))/2`
-/

namespace A036826.P14480120325739145898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196514 n - A036799 n : ℚ) / 2

end

end A036826.P14480120325739145898

namespace A036826

/-- `(A196514(n)-A036799(n))/2` -/
def P14480120325739145898.Spec : Prop :=
  ∀ n, P14480120325739145898.a n = (A036826 n : ℚ)

theorem P14480120325739145898.correct : P14480120325739145898.Spec := by
  intro n
  simp only [A036826, Nat.add_sub_cancel, A036826.P14480120325739145898.a, A036826.P77442619776099478.a, A036799, A036799.P11890976520549442909.a, A196514, A196514.P10306210964865599694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036826

/-! ## A036826.P2338579608380555564

`∑[A000079(n)*A000290(n)]/2`
-/

namespace A036826.P2338579608380555564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000290 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036826.P2338579608380555564

namespace A036826

/-- `∑[A000079(n)*A000290(n)]/2` -/
def P2338579608380555564.Spec : Prop :=
  ∀ n, P2338579608380555564.a n = (A036826 n : ℚ)

end A036826

/-!
# A036827: a(n) = 26 + 2^(n+1)*(-13 +9*n -3*n^2 +n^3).

The programs for A036827, the canonical program `A036827.P11394607514665482824` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036827 has offset 0).

The definition of A036827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26+2^(n+1)*(-13+9*n-3*n²+n^3)` (program `A036827.P11394607514665482824`, by `A036827.P11394607514665482824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036827.P8929185031177718480

`2^(n+1)*(n^3-3*n²+9*n-13)+26`
-/

namespace A036827.P8929185031177718480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * ((n ^ 3 : ℤ) - (3 * n ^ 2 : ℤ) + (9 * n : ℤ) - 13) + 26

end

end A036827.P8929185031177718480

namespace A036827

/-- `2^(n+1)*(n^3-3*n²+9*n-13)+26` -/
def P8929185031177718480.Spec : Prop :=
  ∀ n, P8929185031177718480.a n = A036827 n

theorem P8929185031177718480.correct : P8929185031177718480.Spec := by
  intro n
  simp only [A036827, Nat.add_sub_cancel, A036827.P8929185031177718480.a, A036827.P11394607514665482824.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A036827

/-! ## A036827.P11394607514665482824

`26+2^(n+1)*(-13+9*n-3*n²+n^3)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036827

/-- `26+2^(n+1)*(-13+9*n-3*n²+n^3)` -/
def P11394607514665482824.Spec : Prop :=
  ∀ n, P11394607514665482824.a n = A036827 n

theorem P11394607514665482824.correct : P11394607514665482824.Spec := by
  intro n
  simp only [A036827]

end A036827

/-! ## A036827.P7451404033332472620

`∑[A128789(n)]`
-/

namespace A036827.P7451404033332472620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036827.P7451404033332472620

namespace A036827

/-- `∑[A128789(n)]` -/
def P7451404033332472620.Spec : Prop :=
  ∀ n, P7451404033332472620.a n = A036827 n

end A036827

/-! ## A036827.P9230814765352406836

`2*A036828(n)`
-/

namespace A036827.P9230814765352406836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036828 n

end

end A036827.P9230814765352406836

namespace A036827

/-- `2*A036828(n)` -/
def P9230814765352406836.Spec : Prop :=
  ∀ n, P9230814765352406836.a n = A036827 n

theorem P9230814765352406836.correct : P9230814765352406836.Spec := by
  intro n
  simp only [A036827, Nat.add_sub_cancel, A036827.P9230814765352406836.a, A036827.P11394607514665482824.a, A036828, A036828.P9464040272662735202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036827

/-! ## A036827.P14248883529181629224

`∑[n*A007758(n)]`
-/

namespace A036827.P14248883529181629224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036827.P14248883529181629224

namespace A036827

/-- `∑[n*A007758(n)]` -/
def P14248883529181629224.Spec : Prop :=
  ∀ n, P14248883529181629224.a n = A036827 n

end A036827

/-! ## A036827.P1267558509929904187

`∑[n²*A036289(n)]`
-/

namespace A036827.P1267558509929904187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A036289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036827.P1267558509929904187

namespace A036827

/-- `∑[n²*A036289(n)]` -/
def P1267558509929904187.Spec : Prop :=
  ∀ n, P1267558509929904187.a n = A036827 n

end A036827

/-! ## A036827.P2727991567318469955

`∑[n²*A134401(n)]`
-/

namespace A036827.P2727991567318469955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A134401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036827.P2727991567318469955

namespace A036827

/-- `∑[n²*A134401(n)]` -/
def P2727991567318469955.Spec : Prop :=
  ∀ n, P2727991567318469955.a n = A036827 n

end A036827

/-! ## A036827.P5383749836494806022

`∑[n²*A097064(n+1)]`
-/

namespace A036827.P5383749836494806022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A097064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036827.P5383749836494806022

namespace A036827

/-- `∑[n²*A097064(n+1)]` -/
def P5383749836494806022.Spec : Prop :=
  ∀ n, P5383749836494806022.a n = A036827 n

end A036827

/-! ## A036827.P5516351645478610940

`2*∑[n*n²*A011782(n)]`
-/

namespace A036827.P5516351645478610940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036827.P5516351645478610940

namespace A036827

/-- `2*∑[n*n²*A011782(n)]` -/
def P5516351645478610940.Spec : Prop :=
  ∀ n, P5516351645478610940.a n = A036827 n

end A036827

/-! ## A036827.P7648799091212883390

`2*∑[n*n²*A131577(n)]`
-/

namespace A036827.P7648799091212883390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036827.P7648799091212883390

namespace A036827

/-- `2*∑[n*n²*A131577(n)]` -/
def P7648799091212883390.Spec : Prop :=
  ∀ n, P7648799091212883390.a n = A036827 n

end A036827

/-! ## A036827.P13061297407930461580

`2*round(∑[n*n²*A000079(n)]/2)`
-/

namespace A036827.P13061297407930461580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A036827.P13061297407930461580

namespace A036827

/-- `2*round(∑[n*n²*A000079(n)]/2)` -/
def P13061297407930461580.Spec : Prop :=
  ∀ n, P13061297407930461580.a n = A036827 n

end A036827

/-!
# A036828: A036827/2.

The programs for A036828, the canonical program `A036828.P9464040272662735202` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036828 has offset 0).

The definition of A036828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036828.P9464040272662735202

`2^n*(n^3-3*n²+9*n-13)+13`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036828

/-- `2^n*(n^3-3*n²+9*n-13)+13` -/
def P9464040272662735202.Spec : Prop :=
  ∀ n, P9464040272662735202.a n = A036828 n

theorem P9464040272662735202.correct : P9464040272662735202.Spec := by
  intro n
  simp only [A036828]

end A036828

/-! ## A036828.P16040913707093249780

`∑[A128789(n)/2]`
-/

namespace A036828.P16040913707093249780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128789 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036828.P16040913707093249780

namespace A036828

/-- `∑[A128789(n)/2]` -/
def P16040913707093249780.Spec : Prop :=
  ∀ n, P16040913707093249780.a n = (A036828 n : ℚ)

end A036828

/-! ## A036828.P5746833594417017093

`∑[n²*A001787(n)]`
-/

namespace A036828.P5746833594417017093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036828.P5746833594417017093

namespace A036828

/-- `∑[n²*A001787(n)]` -/
def P5746833594417017093.Spec : Prop :=
  ∀ n, P5746833594417017093.a n = A036828 n

end A036828

/-! ## A036828.P17993450274446863263

`∑[n²*A097067(n+1)]`
-/

namespace A036828.P17993450274446863263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A097067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036828.P17993450274446863263

namespace A036828

/-- `∑[n²*A097067(n+1)]` -/
def P17993450274446863263.Spec : Prop :=
  ∀ n, P17993450274446863263.a n = A036828 n

end A036828

/-! ## A036828.P11995250996459733787

`∑[n²*A139756(n+1)]`
-/

namespace A036828.P11995250996459733787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A139756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036828.P11995250996459733787

namespace A036828

/-- `∑[n²*A139756(n+1)]` -/
def P11995250996459733787.Spec : Prop :=
  ∀ n, P11995250996459733787.a n = A036828 n

end A036828

/-! ## A036828.P14951881737326120248

`-∑[Δ[A122958(n)]*A000578(n)]`
-/

namespace A036828.P14951881737326120248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036828.P14951881737326120248

namespace A036828

/-- `-∑[Δ[A122958(n)]*A000578(n)]` -/
def P14951881737326120248.Spec : Prop :=
  ∀ n, P14951881737326120248.a n = A036828 n

end A036828

/-! ## A036828.P1490673063725064228

`A036827(n)/2`
-/

namespace A036828.P1490673063725064228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036827 n : ℚ) / 2

end

end A036828.P1490673063725064228

namespace A036828

/-- `A036827(n)/2` -/
def P1490673063725064228.Spec : Prop :=
  ∀ n, P1490673063725064228.a n = (A036828 n : ℚ)

theorem P1490673063725064228.correct : P1490673063725064228.Spec := by
  intro n
  simp only [A036828, Nat.add_sub_cancel, A036828.P1490673063725064228.a, A036828.P9464040272662735202.a, A036827, A036827.P11394607514665482824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036828

/-! ## A036828.P202594037187744891

`∑[n*A007758(n)]/2`
-/

namespace A036828.P202594037187744891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007758 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036828.P202594037187744891

namespace A036828

/-- `∑[n*A007758(n)]/2` -/
def P202594037187744891.Spec : Prop :=
  ∀ n, P202594037187744891.a n = (A036828 n : ℚ)

end A036828

/-! ## A036828.P13351459193184729176

`∑[n*A000079(n)*n²]/2`
-/

namespace A036828.P13351459193184729176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000079 n * (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036828.P13351459193184729176

namespace A036828

/-- `∑[n*A000079(n)*n²]/2` -/
def P13351459193184729176.Spec : Prop :=
  ∀ n, P13351459193184729176.a n = (A036828 n : ℚ)

end A036828

/-! ## A036828.P11187342764187242956

`∑[n*Δ[A000225(n)]*n²]/2`
-/

namespace A036828.P11187342764187242956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n) * (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036828.P11187342764187242956

namespace A036828

/-- `∑[n*Δ[A000225(n)]*n²]/2` -/
def P11187342764187242956.Spec : Prop :=
  ∀ n, P11187342764187242956.a n = (A036828 n : ℚ)

end A036828

/-! ## A036828.P8456404106475525869

`∑[(A000225(n)+1)*n*A000290(n)]/2`
-/

namespace A036828.P8456404106475525869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * ((n : ℤ) * A000290 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036828.P8456404106475525869

namespace A036828

/-- `∑[(A000225(n)+1)*n*A000290(n)]/2` -/
def P8456404106475525869.Spec : Prop :=
  ∀ n, P8456404106475525869.a n = (A036828 n : ℚ)

end A036828

/-!
# A036829: a(n) = Sum_{k=0..n-1} C(3*k,k)*C(3*n-3*k-2,n-k-1).

The programs for A036829, there is no canonical definition to state claims against.
-/

/-! ## A036829.P14299663098369234343

`Δ[A255122(∏[or(1, n)])]`
-/

namespace A036829.P14299663098369234343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255122 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036829.P14299663098369234343

/-!
# A036830: Schoenheim bound L_1(n,n-4,n-5).

The programs for A036830, the canonical program `A036830.P13021919630508605256` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036830 has offset 6).

The definition of A036830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036830.P13021919630508605256

`ceil((n+6)/(n+2)*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036830

/-- `ceil((n+6)/(n+2)*a(n-1))` -/
def P13021919630508605256.Spec : Prop :=
  ∀ n, P13021919630508605256.a n = A036830 (n + 6)

theorem P13021919630508605256.correct : P13021919630508605256.Spec := by
  intro n
  simp only [A036830, Nat.add_sub_cancel]

end A036830

/-! ## A036830.P1941864552075417278

`record[ceil(n*a(n-1)/(n-4))]` with `a(0)=3, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A036830.P1941864552075417278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 0, 0, 0, 1] fun n f1 =>
  ⌈((n : ℤ) * f1 (n - 1) : ℚ) / ((n : ℤ) - 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036830.P1941864552075417278

namespace A036830

/-- `record[ceil(n*a(n-1)/(n-4))]` -/
def P1941864552075417278.Spec : Prop :=
  ∀ n, P1941864552075417278.a n = A036830 (n + 6)

end A036830

/-! ## A036830.P7508237903848809243

`A036838(A052905(n+2))`
-/

namespace A036830.P7508237903848809243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A052905 (n + 2)).toNat

end

end A036830.P7508237903848809243

namespace A036830

/-- `A036838(A052905(n+2))` -/
def P7508237903848809243.Spec : Prop :=
  ∀ n, P7508237903848809243.a n = A036830 (n + 6)

end A036830

/-! ## A036830.P5797319683533942060

`A036838(eq[16, A130321(n)])`
-/

namespace A036830.P5797319683533942060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036830.P5797319683533942060

namespace A036830

/-- `A036838(eq[16, A130321(n)])` -/
def P5797319683533942060.Spec : Prop :=
  ∀ n, P5797319683533942060.a n = A036830 (n + 6)

end A036830

/-! ## A036830.P1524141231114939137

`A036838(A046691(n+3)-1)`
-/

namespace A036830.P1524141231114939137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A046691 (n + 3) - 1).toNat

end

end A036830.P1524141231114939137

namespace A036830

/-- `A036838(A046691(n+3)-1)` -/
def P1524141231114939137.Spec : Prop :=
  ∀ n, P1524141231114939137.a n = A036830 (n + 6)

end A036830

/-! ## A036830.P16383641211840173040

`A036838(A000217(n+5)-5)`
-/

namespace A036830.P16383641211840173040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000217 (n + 5) - 5).toNat

end

end A036830.P16383641211840173040

namespace A036830

/-- `A036838(A000217(n+5)-5)` -/
def P16383641211840173040.Spec : Prop :=
  ∀ n, P16383641211840173040.a n = A036830 (n + 6)

end A036830

/-! ## A036830.P15182642561296297907

`A036838(A000124(n+5)-6)`
-/

namespace A036830.P15182642561296297907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000124 (n + 5) - 6).toNat

end

end A036830.P15182642561296297907

namespace A036830

/-- `A036838(A000124(n+5)-6)` -/
def P15182642561296297907.Spec : Prop :=
  ∀ n, P15182642561296297907.a n = A036830 (n + 6)

end A036830

/-! ## A036830.P11671527849935325853

`A036838(eq[5, A004736(n+1)])`
-/

namespace A036830.P11671527849935325853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036830.P11671527849935325853

namespace A036830

/-- `A036838(eq[5, A004736(n+1)])` -/
def P11671527849935325853.Spec : Prop :=
  ∀ n, P11671527849935325853.a n = A036830 (n + 6)

end A036830

/-! ## A036830.P3939014293153628424

`A036838(A167614(n+2)+A005408(n))`
-/

namespace A036830.P3939014293153628424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A167614 (n + 2) + A005408 n).toNat

end

end A036830.P3939014293153628424

namespace A036830

/-- `A036838(A167614(n+2)+A005408(n))` -/
def P3939014293153628424.Spec : Prop :=
  ∀ n, P3939014293153628424.a n = A036830 (n + 6)

end A036830

/-!
# A036831: Schoenheim bound L_1(n,4,3).

The programs for A036831, there is no canonical definition to state claims against.
-/

/-! ## A036831.P11258855390527171113

`A036838(∑[n+2]+3)`
-/

namespace A036831.P11258855390527171113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A036831.P11258855390527171113

/-! ## A036831.P6275637669670342589

`A036838(A340266(n+1))-A000038(n)`
-/

namespace A036831.P6275637669670342589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A340266 (n + 1)).toNat - A000038 n

end

end A036831.P6275637669670342589

/-! ## A036831.P678987889392673859

`and(A036838(A340266(n+1)), A260196(n))`
-/

namespace A036831.P678987889392673859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036838 (A340266 (n + 1)).toNat) (A260196 n)

end

end A036831.P678987889392673859

/-! ## A036831.P1589652225906543691

`A036838(A340266(n+1))%A212697(n+1)`
-/

namespace A036831.P1589652225906543691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036838 (A340266 (n + 1)).toNat) (A212697 (n + 1))

end

end A036831.P1589652225906543691

/-! ## A036831.P8600951223000722439

`A036838(A340266(n+1))-A286237(A286240(n))`
-/

namespace A036831.P8600951223000722439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A340266 (n + 1)).toNat - A286237 (A286240 n).toNat

end

end A036831.P8600951223000722439

/-! ## A036831.P12183636104251166800

`A036838(A340266(n+1))/gcd(3, A023394(n+1))`
-/

namespace A036831.P12183636104251166800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036838 (A340266 (n + 1)).toNat : ℚ) / (Int.gcd 3 (A023394 (n + 1)) : ℚ)

end

end A036831.P12183636104251166800

/-!
# A036832: Schoenheim bound L_1(n,5,4).

The programs for A036832, there is no canonical definition to state claims against.
-/

/-! ## A036832.P13190175371162854877

`A036838(A167614(n+2))`
-/

namespace A036832.P13190175371162854877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A167614 (n + 2)).toNat

end

end A036832.P13190175371162854877

/-! ## A036832.P8906228083518341320

`A036838(A052905(n)+8)`
-/

namespace A036832.P8906228083518341320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A052905 n + 8).toNat

end

end A036832.P8906228083518341320

/-! ## A036832.P56744013456257951

`A036838(A055999(n)+9)`
-/

namespace A036832.P56744013456257951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A055999 n + 9).toNat

end

end A036832.P56744013456257951

/-! ## A036832.P10742924062134544197

`A036838(eq[3, A002262(n)])`
-/

namespace A036832.P10742924062134544197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036832.P10742924062134544197

/-! ## A036832.P742815627074160589

`A036838(eq[8, A059268(n)])`
-/

namespace A036832.P742815627074160589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036832.P742815627074160589

/-! ## A036832.P11784899985059734353

`A036838(A340266(n+2)+1)`
-/

namespace A036832.P11784899985059734353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A340266 (n + 2) + 1).toNat

end

end A036832.P11784899985059734353

/-! ## A036832.P9077553720722123669

`A036838(A000217(n+3)+3)`
-/

namespace A036832.P9077553720722123669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000217 (n + 3) + 3).toNat

end

end A036832.P9077553720722123669

/-! ## A036832.P2957413453650850692

`A036838(A166136(n+2)-3)`
-/

namespace A036832.P2957413453650850692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A166136 (n + 2) - 3).toNat

end

end A036832.P2957413453650850692

/-! ## A036832.P5828350188801390537

`A036838(eq[7, A037126(n+1)])`
-/

namespace A036832.P5828350188801390537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036832.P5828350188801390537

/-! ## A036832.P3333227557703275194

`A036838(eq[2, A002260(n+1)-2])`
-/

namespace A036832.P3333227557703275194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036832.P3333227557703275194

/-! ## A036832.P1110277090087338152

`A036838(eq[2, A002260(n+1)/2])`
-/

namespace A036832.P1110277090087338152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A036832.P1110277090087338152

/-!
# A036833: Schoenheim bound L_1(n,6,5).

The programs for A036833, there is no canonical definition to state claims against.
-/

/-! ## A036833.P2754216638333029963

`A036838(eq[4, A002262(n)])`
-/

namespace A036833.P2754216638333029963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036833.P2754216638333029963

/-! ## A036833.P15977657745723467813

`A036838(A000096(n+3)+5)`
-/

namespace A036833.P15977657745723467813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000096 (n + 3) + 5).toNat

end

end A036833.P15977657745723467813

/-! ## A036833.P2400344739321489564

`A036838(A000217(n+4)+4)`
-/

namespace A036833.P2400344739321489564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000217 (n + 4) + 4).toNat

end

end A036833.P2400344739321489564

/-! ## A036833.P8041880278864516628

`A036838(A000124(n+5)-(n+2))`
-/

namespace A036833.P8041880278864516628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000124 (n + 5) - (n + 2 : ℤ)).toNat

end

end A036833.P8041880278864516628

/-! ## A036833.P8694839061914479966

`A036838(Δ[A023551(n+1)-n²])`
-/

namespace A036833.P8694839061914479966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (f1 (n + 1) - f1 n).toNat

end

end A036833.P8694839061914479966

/-! ## A036833.P6229221497039272576

`A036838(Δ[A026054(n+3)-n²])`
-/

namespace A036833.P6229221497039272576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (f1 (n + 1) - f1 n).toNat

end

end A036833.P6229221497039272576

/-! ## A036833.P13399416985741346763

`A036838(A055999(n+3)-(2*n+1))`
-/

namespace A036833.P13399416985741346763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A055999 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A036833.P13399416985741346763

/-! ## A036833.P2565377328706375047

`A036838(Δ[A023551(n+1)]-(2*n+1))`
-/

namespace A036833.P2565377328706375047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A036833.P2565377328706375047

/-! ## A036833.P3074023181553051332

`A036838(A166136(n+1)+A020735(n+1))`
-/

namespace A036833.P3074023181553051332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A166136 (n + 1) + A020735 (n + 1)).toNat

end

end A036833.P3074023181553051332

/-! ## A036833.P10215685603526135645

`A036838(A167614(n+1)+A005408(n)+7)`
-/

namespace A036833.P10215685603526135645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A167614 (n + 1) + A005408 n + 7).toNat

end

end A036833.P10215685603526135645

/-!
# A036834: Schoenheim bound L_1(n,7,6).

The programs for A036834, there is no canonical definition to state claims against.
-/

/-! ## A036834.P4696177255959931951

`A036838(eq[32, A059268(n)])`
-/

namespace A036834.P4696177255959931951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036834.P4696177255959931951

/-! ## A036834.P15463680900406117037

`A036838(A133263(n+5)+3)`
-/

namespace A036834.P15463680900406117037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A133263 (n + 5) + 3).toNat

end

end A036834.P15463680900406117037

/-! ## A036834.P2688503056851479207

`A036838(A000124(n+5)+4)`
-/

namespace A036834.P2688503056851479207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000124 (n + 5) + 4).toNat

end

end A036834.P2688503056851479207

/-! ## A036834.P1794471302319135432

`A036838(A046691(n+3)+9)`
-/

namespace A036834.P1794471302319135432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A046691 (n + 3) + 9).toNat

end

end A036834.P1794471302319135432

/-! ## A036834.P12664373486319605097

`A036838(A000217(n+6)-(n+1))`
-/

namespace A036834.P12664373486319605097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A036834.P12664373486319605097

/-! ## A036834.P17713001109622604313

`A036838(A055999(n+4)-2*(n+1))`
-/

namespace A036834.P17713001109622604313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A036834.P17713001109622604313

/-!
# A036835: Schoenheim bound L_1(n,8,7).

The programs for A036835, there is no canonical definition to state claims against.
-/

/-! ## A036835.P3059488932870816905

`A036838(A056119(n)+27)`
-/

namespace A036835.P3059488932870816905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A056119 n + 27).toNat

end

end A036835.P3059488932870816905

/-! ## A036835.P15273204124364278415

`A036838(eq[6, A002262(n)])`
-/

namespace A036835.P15273204124364278415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036835.P15273204124364278415

/-! ## A036835.P8616047265825645746

`A036838(A167487(n+5)-1)`
-/

namespace A036835.P8616047265825645746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A167487 (n + 5) - 1).toNat

end

end A036835.P8616047265825645746

/-! ## A036835.P3712321436712325534

`A036838(A000124(n+6)+5)`
-/

namespace A036835.P3712321436712325534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000124 (n + 6) + 5).toNat

end

end A036835.P3712321436712325534

/-! ## A036835.P5376746777037752577

`A036838(A000217(n+6)+6)`
-/

namespace A036835.P5376746777037752577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000217 (n + 6) + 6).toNat

end

end A036835.P5376746777037752577

/-! ## A036835.P11670238461901978109

`A036838(eq[7, A002260(n+1)])`
-/

namespace A036835.P11670238461901978109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036835.P11670238461901978109

/-! ## A036835.P11995972930447790739

`A036838(A055999(n+4)-(n-5))`
-/

namespace A036835.P11995972930447790739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A055999 (n + 4) - ((n : ℤ) - 5)).toNat

end

end A036835.P11995972930447790739

/-! ## A036835.P16590122789753392529

`A036838(A133263(n+7)-(n+3))`
-/

namespace A036835.P16590122789753392529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A133263 (n + 7) - (n + 3 : ℤ)).toNat

end

end A036835.P16590122789753392529

/-! ## A036835.P16043866082111196469

`A036838(A052905(n+3)+12-A033999(2*n))`
-/

namespace A036835.P16043866082111196469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A052905 (n + 3) + 12 - A033999 (2 * n)).toNat

end

end A036835.P16043866082111196469

/-!
# A036836: Schoenheim bound L_1(n,9,8).

The programs for A036836, there is no canonical definition to state claims against.
-/

/-! ## A036836.P7503577356779711860

`A036838(eq[7, A002262(n)])`
-/

namespace A036836.P7503577356779711860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036836.P7503577356779711860

/-! ## A036836.P12948422888563090170

`A036838(A167499(n+6)+2)`
-/

namespace A036836.P12948422888563090170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A167499 (n + 6) + 2).toNat

end

end A036836.P12948422888563090170

/-! ## A036836.P7721352727870590390

`A036838(A133263(n+7)+5)`
-/

namespace A036836.P7721352727870590390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A133263 (n + 7) + 5).toNat

end

end A036836.P7721352727870590390

/-! ## A036836.P10283047682374084423

`A036838(A000124(n+7)+6)`
-/

namespace A036836.P10283047682374084423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000124 (n + 7) + 6).toNat

end

end A036836.P10283047682374084423

/-! ## A036836.P4996749754947271295

`A036838(eq[8, A002260(n+1)])`
-/

namespace A036836.P4996749754947271295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036836.P4996749754947271295

/-! ## A036836.P16820254480576911024

`A036838(A000217(n+8)-(n+1))`
-/

namespace A036836.P16820254480576911024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A036836.P16820254480576911024

/-!
# A036837: Schoenheim bound L_1(n,n-5,n-6).

The programs for A036837, the canonical program `A036837.P1513785018416746919` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036837 has offset 7).

The definition of A036837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036837.P1513785018416746919

`∑[floor(C(n+6, 5)/(n+2))]+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036837

/-- `∑[floor(C(n+6, 5)/(n+2))]+1` -/
def P1513785018416746919.Spec : Prop :=
  ∀ n, P1513785018416746919.a n = A036837 (n + 7)

theorem P1513785018416746919.correct : P1513785018416746919.Spec := by
  intro n
  simp only [A036837, Nat.add_sub_cancel]

end A036837

/-! ## A036837.P14050134607125448993

`A215052(n+7)`
-/

namespace A036837.P14050134607125448993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215052 (n + 7)

end

end A036837.P14050134607125448993

namespace A036837

/-- `A215052(n+7)` -/
def P14050134607125448993.Spec : Prop :=
  ∀ n, P14050134607125448993.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P16956989148205255550

`∑[A051170(n+7)]+1`
-/

namespace A036837.P16956989148205255550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051170 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036837.P16956989148205255550

namespace A036837

/-- `∑[A051170(n+7)]+1` -/
def P16956989148205255550.Spec : Prop :=
  ∀ n, P16956989148205255550.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P546919588339878627

`∑[A011795(n+6)]+1`
-/

namespace A036837.P546919588339878627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036837.P546919588339878627

namespace A036837

/-- `∑[A011795(n+6)]+1` -/
def P546919588339878627.Spec : Prop :=
  ∀ n, P546919588339878627.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P7209490230557018118

`A011795(A028310(n)+6)+a(n-1)` with `a(0)=4`
-/

namespace A036837.P7209490230557018118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A011795 (A028310 n + 6).toNat + a (n - 1)

end

end A036837.P7209490230557018118

namespace A036837

/-- `A011795(A028310(n)+6)+a(n-1)` -/
def P7209490230557018118.Spec : Prop :=
  ∀ n, P7209490230557018118.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P4822172821716078571

`A036838(A055999(n+3))`
-/

namespace A036837.P4822172821716078571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A055999 (n + 3)).toNat

end

end A036837.P4822172821716078571

namespace A036837

/-- `A036838(A055999(n+3))` -/
def P4822172821716078571.Spec : Prop :=
  ∀ n, P4822172821716078571.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P16364555615092254828

`A036838(Δ[A023551(n+1)])`
-/

namespace A036837.P16364555615092254828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (f1 (n + 1) - f1 n).toNat

end

end A036837.P16364555615092254828

namespace A036837

/-- `A036838(Δ[A023551(n+1)])` -/
def P16364555615092254828.Spec : Prop :=
  ∀ n, P16364555615092254828.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P18349846249219517030

`A036838(Δ[A026054(n+3)])`
-/

namespace A036837.P18349846249219517030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (f1 (n + 1) - f1 n).toNat

end

end A036837.P18349846249219517030

namespace A036837

/-- `A036838(Δ[A026054(n+3)])` -/
def P18349846249219517030.Spec : Prop :=
  ∀ n, P18349846249219517030.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P18368000355764068451

`A036838(A052905(n+3)-1)`
-/

namespace A036837.P18368000355764068451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A052905 (n + 3) - 1).toNat

end

end A036837.P18368000355764068451

namespace A036837

/-- `A036838(A052905(n+3)-1)` -/
def P18368000355764068451.Spec : Prop :=
  ∀ n, P18368000355764068451.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P16456016775376518467

`A036838(A000217(n+6)-6)`
-/

namespace A036837.P16456016775376518467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000217 (n + 6) - 6).toNat

end

end A036837.P16456016775376518467

namespace A036837

/-- `A036838(A000217(n+6)-6)` -/
def P16456016775376518467.Spec : Prop :=
  ∀ n, P16456016775376518467.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P18226151193144873781

`A036838(eq[6, A004736(n+1)])`
-/

namespace A036837.P18226151193144873781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036837.P18226151193144873781

namespace A036837

/-- `A036838(eq[6, A004736(n+1)])` -/
def P18226151193144873781.Spec : Prop :=
  ∀ n, P18226151193144873781.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P13776239663493028291

`A036838(A000096(n+4)+n+1)`
-/

namespace A036837.P13776239663493028291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A036837.P13776239663493028291

namespace A036837

/-- `A036838(A000096(n+4)+n+1)` -/
def P13776239663493028291.Spec : Prop :=
  ∀ n, P13776239663493028291.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P14160666726188749652

`A036838(A000124(n+5)+n-1)`
-/

namespace A036837.P14160666726188749652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A036837.P14160666726188749652

namespace A036837

/-- `A036838(A000124(n+5)+n-1)` -/
def P14160666726188749652.Spec : Prop :=
  ∀ n, P14160666726188749652.a n = A036837 (n + 7)

end A036837

/-! ## A036837.P9128948476092434565

`A036838(2*n+A056000(n)+15)`
-/

namespace A036837.P9128948476092434565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 ((2 * n : ℤ) + (A056000 n + 15)).toNat

end

end A036837.P9128948476092434565

namespace A036837

/-- `A036838(2*n+A056000(n)+15)` -/
def P9128948476092434565.Spec : Prop :=
  ∀ n, P9128948476092434565.a n = A036837 (n + 7)

end A036837

/-!
# A036838: Triangle read by rows: T(n,k) = value of Schoenheim bound L_1(n+2,k+2,k+1) on covering numbers (0 <= k <= n).

The programs for A036838, there is no canonical definition to state claims against.
-/

/-! ## A036838.P5912795937076126573

`A066010(n+2)-A295884(A335471(n))`
-/

namespace A036838.P5912795937076126573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066010 (n + 2) - A295884 (A335471 n).toNat

end

end A036838.P5912795937076126573

/-! ## A036838.P9896534581875653789

`A240348(A272929(n+1))+A066010(n+2)`
-/

namespace A036838.P9896534581875653789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240348 (A272929 (n + 1)).toNat + A066010 (n + 2)

end

end A036838.P9896534581875653789

/-! ## A036838.P14037978655769743774

`A066010(n+2)-A286561(A102378(2*(n+2)))`
-/

namespace A036838.P14037978655769743774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066010 (n + 2) - A286561 (A102378 (2 * (n + 2))).toNat

end

end A036838.P14037978655769743774

/-! ## A036838.P14750457703622370767

`A240348(A241964(n+1))+A066010(n+2)`
-/

namespace A036838.P14750457703622370767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240348 (A241964 (n + 1)).toNat + A066010 (n + 2)

end

end A036838.P14750457703622370767

/-! ## A036838.P15003535741548692490

`A226029(A232295(n+1))`
-/

namespace A036838.P15003535741548692490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A232295 (n + 1)).toNat

end

end A036838.P15003535741548692490

/-!
# A036839: RATS(n): Reverse Add Then Sort the digits.

The programs for A036839, there is no canonical definition to state claims against.
-/

/-! ## A036839.P11275054977002057899

`A004185(A056964(n))`
-/

namespace A036839.P11275054977002057899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A056964 n).toNat

end

end A036839.P11275054977002057899

/-! ## A036839.P9441005631978621868

`A004185(A004086(n)+n)`
-/

namespace A036839.P9441005631978621868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A004086 n + (n : ℤ)).toNat

end

end A036839.P9441005631978621868

/-! ## A036839.P4987000814897069236

`A004185(2*n-A056965(n))`
-/

namespace A036839.P4987000814897069236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ((2 * n : ℤ) - A056965 n).toNat

end

end A036839.P4987000814897069236

/-! ## A036839.P12777910368617979710

`A004185(n-A056965(n)+n)`
-/

namespace A036839.P12777910368617979710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ((n : ℤ) - A056965 n + (n : ℤ)).toNat

end

end A036839.P12777910368617979710

/-! ## A036839.P2328089324688624005

`A004185(n-(A056965(n)-n))`
-/

namespace A036839.P2328089324688624005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ((n : ℤ) - (A056965 n - (n : ℤ))).toNat

end

end A036839.P2328089324688624005

/-! ## A036839.P17018002239249472992

`A004185(xor(n, A256756(n))+n)`
-/

namespace A036839.P17018002239249472992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (Int.xor (n : ℤ) (A256756 n) + (n : ℤ)).toNat

end

end A036839.P17018002239249472992

/-! ## A036839.P15402917515914070328

`A004086(A004186(A004086(n)+n))`
-/

namespace A036839.P15402917515914070328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004186 (A004086 n + (n : ℤ)).toNat).toNat

end

end A036839.P15402917515914070328

/-! ## A036839.P8092801427098856380

`A004185(A340479(n)+n-A007953(n))`
-/

namespace A036839.P8092801427098856380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A340479 n + ((n : ℤ) - A007953 n)).toNat

end

end A036839.P8092801427098856380

/-! ## A036839.P8333481556513718687

`A004185(n-(A007953(n)-A340479(n)))`
-/

namespace A036839.P8333481556513718687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ((n : ℤ) - (A007953 n - A340479 n)).toNat

end

end A036839.P8333481556513718687

/-!
# A036842: Smallest leg in right triangle with relatively prime sides and hypotenuse 5^n.

The programs for A036842, there is no canonical definition to state claims against.
-/

/-! ## A036842.P1705754028580685095

`A230710(2*(n+1))`
-/

namespace A036842.P1705754028580685095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230710 (2 * (n + 1))

end

end A036842.P1705754028580685095

/-! ## A036842.P14966509690812498302

`A230710(n+2+n)%A230702(n+1)`
-/

namespace A036842.P14966509690812498302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230710 (n + 2 + n)) (A230702 (n + 1))

end

end A036842.P14966509690812498302

/-! ## A036842.P4138854412536918005

`A230710(n+2+n)/ceil(1/A000034(n))`
-/

namespace A036842.P4138854412536918005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230710 (n + 2 + n) : ℚ) / (⌈1 / (A000034 n : ℚ)⌉ : ℚ)

end

end A036842.P4138854412536918005

/-! ## A036842.P4347730757693975596

`gcd(A008683(A224484(n+1)), A230710(n+2+n))`
-/

namespace A036842.P4347730757693975596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A224484 (n + 1)).toNat) (A230710 (n + 2 + n))

end

end A036842.P4347730757693975596

/-! ## A036842.P12675264530856331570

`and(A008683(A039734(n+2)), A230710(n+2+n))`
-/

namespace A036842.P12675264530856331570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A039734 (n + 2)).toNat) (A230710 (n + 2 + n))

end

end A036842.P12675264530856331570

/-! ## A036842.P12550406059701067693

`A230710(n+2+n)/A014963(A032641(n+1))`
-/

namespace A036842.P12550406059701067693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230710 (n + 2 + n) : ℚ) / (A014963 (A032641 (n + 1)).toNat : ℚ)

end

end A036842.P12550406059701067693

/-!
# A036843: Floor(X/Y), where X = concatenation of the triangular numbers and Y = concatenation of natural numbers.

The programs for A036843, there is no canonical definition to state claims against.
-/

/-! ## A036843.P3793345532278134218

`floor(A078795(n+1)/A007908(n+1))`
-/

namespace A036843.P3793345532278134218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078795 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)⌋

end

end A036843.P3793345532278134218

/-! ## A036843.P9879818092630817090

`A089601(2^n-(n-1))`
-/

namespace A036843.P9879818092630817090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089601 ((2 ^ n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A036843.P9879818092630817090

/-!
# A036844: Numbers k such that k / sopfr(k) is an integer, where sopfr = sum-of-prime-factors, A001414.

The programs for A036844, the canonical program `A036844.P16562848454133775618` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036844 has offset 1).

The definition of A036844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036844.P15802143003419481395

`∪[A000040(n+1), A046346(n+1)]`
-/

namespace A036844.P15802143003419481395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036844.P15802143003419481395

namespace A036844

/-- `∪[A000040(n+1), A046346(n+1)]` -/
def P15802143003419481395.Spec : Prop :=
  ∀ n, (P15802143003419481395.a n : ℤ) = A036844 (n + 1)

end A036844

/-! ## A036844.P895458679944566043

`∪[A046346(n+1), A175787(n+1)]`
-/

namespace A036844.P895458679944566043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036844.P895458679944566043

namespace A036844

/-- `∪[A046346(n+1), A175787(n+1)]` -/
def P895458679944566043.Spec : Prop :=
  ∀ n, (P895458679944566043.a n : ℤ) = A036844 (n + 1)

end A036844

/-! ## A036844.P16562848454133775618

`eq[1, A082343(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036844

/-- `eq[1, A082343(n+1)]+1` -/
def P16562848454133775618.Spec : Prop :=
  ∀ n, (P16562848454133775618.a n : ℤ) = A036844 (n + 1)

theorem P16562848454133775618.correct : P16562848454133775618.Spec := by
  intro n
  simp only [A036844, Nat.add_sub_cancel]

end A036844

/-! ## A036844.P16536439434130394638

`lt[A082343(n+2), 2]+2`
-/

namespace A036844.P16536439434130394638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A036844.P16536439434130394638

namespace A036844

/-- `lt[A082343(n+2), 2]+2` -/
def P16536439434130394638.Spec : Prop :=
  ∀ n, (P16536439434130394638.a n : ℤ) = A036844 (n + 1)

end A036844

/-! ## A036844.P2397726491097996994

`eq[n+1, lcm(n+1, A001414(n+1))]+1`
-/

namespace A036844.P2397726491097996994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036844.P2397726491097996994

namespace A036844

/-- `eq[n+1, lcm(n+1, A001414(n+1))]+1` -/
def P2397726491097996994.Spec : Prop :=
  ∀ n, (P2397726491097996994.a n : ℤ) = A036844 (n + 1)

end A036844

/-! ## A036844.P10607353684981794015

`filter[A246716(n+1), A342460(#)]`
-/

namespace A036844.P10607353684981794015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A036844.P10607353684981794015

namespace A036844

/-- `filter[A246716(n+1), A342460(#)]` -/
def P10607353684981794015.Spec : Prop :=
  ∀ n, P10607353684981794015.a n = A036844 (n + 1)

end A036844

/-! ## A036844.P11492369449333394576

`filter[A253567(n+1), A342460(#)]`
-/

namespace A036844.P11492369449333394576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A036844.P11492369449333394576

namespace A036844

/-- `filter[A253567(n+1), A342460(#)]` -/
def P11492369449333394576.Spec : Prop :=
  ∀ n, P11492369449333394576.a n = A036844 (n + 1)

end A036844

/-! ## A036844.P3236416590477528747

`filter[A054027(n+1), A342460(#)]`
-/

namespace A036844.P3236416590477528747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A036844.P3236416590477528747

namespace A036844

/-- `filter[A054027(n+1), A342460(#)]` -/
def P3236416590477528747.Spec : Prop :=
  ∀ n, P3236416590477528747.a n = A036844 (n + 1)

end A036844

/-! ## A036844.P8713112875848586646

`filter[n+1, A342460(#)]`
-/

namespace A036844.P8713112875848586646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j) = 1) n)

end

end A036844.P8713112875848586646

namespace A036844

/-- `filter[n+1, A342460(#)]` -/
def P8713112875848586646.Spec : Prop :=
  ∀ n, (P8713112875848586646.a n : ℤ) = A036844 (n + 1)

end A036844

/-! ## A036844.P9567350667020685637

`eq[1, A329656(n+1)]+1`
-/

namespace A036844.P9567350667020685637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036844.P9567350667020685637

namespace A036844

/-- `eq[1, A329656(n+1)]+1` -/
def P9567350667020685637.Spec : Prop :=
  ∀ n, (P9567350667020685637.a n : ℤ) = A036844 (n + 1)

end A036844

/-! ## A036844.P13854671887275343445

`eq[0, A238525(n+2)]+2`
-/

namespace A036844.P13854671887275343445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238525 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A036844.P13854671887275343445

namespace A036844

/-- `eq[0, A238525(n+2)]+2` -/
def P13854671887275343445.Spec : Prop :=
  ∀ n, (P13854671887275343445.a n : ℤ) = A036844 (n + 1)

end A036844

/-! ## A036844.P1494917703287415034

`record[(n+2)/A329656(n+2)]`
-/

namespace A036844.P1494917703287415034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A329656 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036844.P1494917703287415034

namespace A036844

/-- `record[(n+2)/A329656(n+2)]` -/
def P1494917703287415034.Spec : Prop :=
  ∀ n, P1494917703287415034.a n = (A036844 (n + 1) : ℚ)

end A036844

/-! ## A036844.P358881998247268062

`eq[1, A329656(A065033(2*n))]`
-/

namespace A036844.P358881998247268062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036844.P358881998247268062

namespace A036844

/-- `eq[1, A329656(A065033(2*n))]` -/
def P358881998247268062.Spec : Prop :=
  ∀ n, (P358881998247268062.a n : ℤ) = A036844 (n + 1)

end A036844

/-!
# A036845: a(n) = min_{k} {T(n,k)} where T(n,k) is the "phi/sigma tug-of-war sequence with seed n" defined by T(n,1) = phi(n), T(n,2) = sigma(phi(n)), T(n,3) = phi(sigma(phi(n))), ..., T(n,k) = phi(T(n,k-1)) if k is odd and = sigma(T(n,k-1)) if k is even.

The programs for A036845, there is no canonical definition to state claims against.
-/

/-! ## A036845.P251959295862324188

`A096865(A000010(n+1))`
-/

namespace A036845.P251959295862324188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (A000010 (n + 1)).toNat

end

end A036845.P251959295862324188

/-! ## A036845.P17587738375739195090

`A096865(Δ[A002088(n)])`
-/

namespace A036845.P17587738375739195090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (f1 (n + 1) - f1 n).toNat

end

end A036845.P17587738375739195090

/-! ## A036845.P1264292179093019732

`A096865(Δ[A005728(n)])`
-/

namespace A036845.P1264292179093019732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (f1 (n + 1) - f1 n).toNat

end

end A036845.P1264292179093019732

/-! ## A036845.P16758926523609656928

`A096865(sqrt(A127473(n+1)))`
-/

namespace A036845.P16758926523609656928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A036845.P16758926523609656928

/-! ## A036845.P12093195684501625764

`A096865(A109606(n+1)+1)`
-/

namespace A036845.P12093195684501625764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (A109606 (n + 1) + 1).toNat

end

end A036845.P12093195684501625764

/-! ## A036845.P14819715509273745130

`A096865(A039649(n+1)-1)`
-/

namespace A036845.P14819715509273745130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (A039649 (n + 1) - 1).toNat

end

end A036845.P14819715509273745130

/-! ## A036845.P16097237910456166198

`A096865(1-A051953(n+1)+n)`
-/

namespace A036845.P16097237910456166198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A036845.P16097237910456166198

/-! ## A036845.P9951282633213025282

`A096865(A002618(n+1)/(n+1))`
-/

namespace A036845.P9951282633213025282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A036845.P9951282633213025282

/-! ## A036845.P4134825571664624880

`A096865(A053191(n+1)/(n+1)²)`
-/

namespace A036845.P4134825571664624880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (SequenceMachineLib.roundAway ((A053191 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat

end

end A036845.P4134825571664624880

/-! ## A036845.P2628601671905525359

`A096865(A002088(n+1)-A002088(n))`
-/

namespace A036845.P2628601671905525359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (A002088 (n + 1) - A002088 n).toNat

end

end A036845.P2628601671905525359

/-! ## A036845.P4380234104098980181

`A096865(A005728(n+1)-A005728(n))`
-/

namespace A036845.P4380234104098980181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (A005728 (n + 1) - A005728 n).toNat

end

end A036845.P4380234104098980181

/-!
# A036846: Number of partitions of n such that cn(0,5) = cn(2,5) <= cn(3,5) = cn(4,5) <= cn(1,5).

The programs for A036846, there is no canonical definition to state claims against.
-/

/-! ## A036846.P1146736275582059245

`A036855(n+1)+A036847(n+1)`
-/

namespace A036846.P1146736275582059245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (n + 1) + A036847 (n + 1)

end

end A036846.P1146736275582059245

/-! ## A036846.P6431897194053123343

`A036847(n+1)+A036848(n+1)-A036851(n+1)`
-/

namespace A036846.P6431897194053123343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036847 (n + 1) + (A036848 (n + 1) - A036851 (n + 1))

end

end A036846.P6431897194053123343

/-! ## A036846.P15617023064587336444

`A036856(n+1)+A036847(A077342(n+1))`
-/

namespace A036846.P15617023064587336444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + A036847 (A077342 (n + 1)).toNat

end

end A036846.P15617023064587336444

/-! ## A036846.P5105181771500193535

`A036856(n+1)+A036847(A242474(n+1))`
-/

namespace A036846.P5105181771500193535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + A036847 (A242474 (n + 1)).toNat

end

end A036846.P5105181771500193535

/-!
# A036847: Number of partitions of n such that cn(0,5) = cn(2,5) <= cn(3,5) = cn(4,5) < cn(1,5).

The programs for A036847, there is no canonical definition to state claims against.
-/

/-! ## A036847.P11208412098969830450

`A036846(n+1)-A036855(n+1)`
-/

namespace A036847.P11208412098969830450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (n + 1) - A036855 (n + 1)

end

end A036847.P11208412098969830450

/-! ## A036847.P15934375780654861309

`A036846(n+1)+A036851(n+1)-A036848(n+1)`
-/

namespace A036847.P15934375780654861309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (n + 1) + (A036851 (n + 1) - A036848 (n + 1))

end

end A036847.P15934375780654861309

/-! ## A036847.P18194334811199953747

`A036846(n+1)+A036855(n+1)*A332814(A332812(n+1))`
-/

namespace A036847.P18194334811199953747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (n + 1) + A036855 (n + 1) * A332814 (A332812 (n + 1)).toNat

end

end A036847.P18194334811199953747

/-! ## A036847.P4315346402648108083

`A036846(n+1)-A036856(A077342(n+1))`
-/

namespace A036847.P4315346402648108083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (n + 1) - A036856 (A077342 (n + 1)).toNat

end

end A036847.P4315346402648108083

/-! ## A036847.P1834220149005378407

`A036846(n+1)-A036856(A242474(n+1))`
-/

namespace A036847.P1834220149005378407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (n + 1) - A036856 (A242474 (n + 1)).toNat

end

end A036847.P1834220149005378407

/-!
# A036848: Number of partitions of n such that cn(0,5) = cn(2,5) <= cn(1,5) <= cn(3,5) = cn(4,5).

The programs for A036848, there is no canonical definition to state claims against.
-/

/-! ## A036848.P1734706764694483227

`A036855(n+1)+A036851(n+1)`
-/

namespace A036848.P1734706764694483227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (n + 1) + A036851 (n + 1)

end

end A036848.P1734706764694483227

/-! ## A036848.P10004635458336481687

`A036850(n+1)+A036860(n+1)+A036857(n+1)`
-/

namespace A036848.P10004635458336481687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036860 (n + 1) + A036857 (n + 1))

end

end A036848.P10004635458336481687

/-! ## A036848.P2061044461362632927

`A036853(n+1)+A036860(n+1)+A036855(n+1)`
-/

namespace A036848.P2061044461362632927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036860 (n + 1) + A036855 (n + 1))

end

end A036848.P2061044461362632927

/-! ## A036848.P13805437451630453116

`A036855(n+1)+A036852(n+1)+A036860(n+1)-A036861(n+1)`
-/

namespace A036848.P13805437451630453116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (n + 1) + (A036852 (n + 1) + (A036860 (n + 1) - A036861 (n + 1)))

end

end A036848.P13805437451630453116

/-! ## A036848.P4156068045749917926

`A036856(n+1)+A036850(n+1)`
-/

namespace A036848.P4156068045749917926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + A036850 (n + 1)

end

end A036848.P4156068045749917926

/-! ## A036848.P9619592516635567499

`A036846(n+1)+A036851(n+1)-A036847(n+1)`
-/

namespace A036848.P9619592516635567499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (n + 1) + (A036851 (n + 1) - A036847 (n + 1))

end

end A036848.P9619592516635567499

/-! ## A036848.P10167633661526011254

`A036849(n+1)+A036856(n+1)-A036859(n+1)`
-/

namespace A036848.P10167633661526011254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) + (A036856 (n + 1) - A036859 (n + 1))

end

end A036848.P10167633661526011254

/-! ## A036848.P8240267189806567044

`A036849(n+1)-A036859(n+1)+A036860(n+1)+A036857(n+1)`
-/

namespace A036848.P8240267189806567044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) - A036859 (n + 1) + (A036860 (n + 1) + A036857 (n + 1))

end

end A036848.P8240267189806567044

/-! ## A036848.P5648407406514787182

`A036856(n+1)+A036853(n+1)+A036866(n+1)-A036869(n+1)`
-/

namespace A036848.P5648407406514787182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + (A036853 (n + 1) + (A036866 (n + 1) - A036869 (n + 1)))

end

end A036848.P5648407406514787182

/-! ## A036848.P17019103272364831882

`A036856(n+1)+A036853(n+1)+A036871(n+1)-A036873(n+1)`
-/

namespace A036848.P17019103272364831882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + (A036853 (n + 1) + (A036871 (n + 1) - A036873 (n + 1)))

end

end A036848.P17019103272364831882

/-!
# A036849: Number of partitions of n such that cn(1,5) <= cn(0,5) = cn(2,5) <= cn(3,5) = cn(4,5).

The programs for A036849, there is no canonical definition to state claims against.
-/

/-! ## A036849.P217451991890339925

`A036859(n+1)+A036850(n+1)`
-/

namespace A036849.P217451991890339925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036859 (n + 1) + A036850 (n + 1)

end

end A036849.P217451991890339925

/-! ## A036849.P15573781525487753186

`A036848(n+1)+A036859(n+1)-A036856(n+1)`
-/

namespace A036849.P15573781525487753186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) + (A036859 (n + 1) - A036856 (n + 1))

end

end A036849.P15573781525487753186

/-! ## A036849.P3911792454543091278

`A036859(n+1)+A036848(n+1)-(A036860(n+1)+A036857(n+1))`
-/

namespace A036849.P3911792454543091278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036859 (n + 1) + (A036848 (n + 1) - (A036860 (n + 1) + A036857 (n + 1)))

end

end A036849.P3911792454543091278

/-! ## A036849.P9048992990232581331

`A036859(n+1)+A036853(n+1)+A036855(n+1)-A036857(n+1)`
-/

namespace A036849.P9048992990232581331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036859 (n + 1) + (A036853 (n + 1) + (A036855 (n + 1) - A036857 (n + 1)))

end

end A036849.P9048992990232581331

/-! ## A036849.P13012728244029884383

`A036859(n+1)+A036853(n+1)+A036866(n+1)-A036869(n+1)`
-/

namespace A036849.P13012728244029884383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036859 (n + 1) + (A036853 (n + 1) + (A036866 (n + 1) - A036869 (n + 1)))

end

end A036849.P13012728244029884383

/-! ## A036849.P3071638344481230052

`A036859(n+1)+A036853(n+1)+A036871(n+1)-A036873(n+1)`
-/

namespace A036849.P3071638344481230052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036859 (n + 1) + (A036853 (n + 1) + (A036871 (n + 1) - A036873 (n + 1)))

end

end A036849.P3071638344481230052

/-!
# A036850: Number of partitions of n such that cn(0,5) = cn(1,5) = cn(2,5) <= cn(3,5) = cn(4,5).

The programs for A036850, there is no canonical definition to state claims against.
-/

/-! ## A036850.P3748105860427641589

`A036848(n+1)-(A036860(n+1)+A036857(n+1))`
-/

namespace A036850.P3748105860427641589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036860 (n + 1) + A036857 (n + 1))

end

end A036850.P3748105860427641589

/-! ## A036850.P9539660228235448283

`A036853(n+1)+A036855(n+1)-A036857(n+1)`
-/

namespace A036850.P9539660228235448283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036855 (n + 1) - A036857 (n + 1))

end

end A036850.P9539660228235448283

/-! ## A036850.P4047109465409932685

`A036853(n+1)+A036866(n+1)-A036869(n+1)`
-/

namespace A036850.P4047109465409932685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036866 (n + 1) - A036869 (n + 1))

end

end A036850.P4047109465409932685

/-! ## A036850.P4122393861802467792

`A036848(n+1)-A036856(n+1)`
-/

namespace A036850.P4122393861802467792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - A036856 (n + 1)

end

end A036850.P4122393861802467792

/-! ## A036850.P5395008907932059264

`A036849(n+1)-A036859(n+1)`
-/

namespace A036850.P5395008907932059264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) - A036859 (n + 1)

end

end A036850.P5395008907932059264

/-! ## A036850.P10679046565854097379

`A036851(n+1)+A036855(n+1)-A036856(n+1)`
-/

namespace A036850.P10679046565854097379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) + (A036855 (n + 1) - A036856 (n + 1))

end

end A036850.P10679046565854097379

/-! ## A036850.P9090696535018721827

`A036853(n+1)+A036871(n+1)-A036873(n+1)`
-/

namespace A036850.P9090696535018721827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036871 (n + 1) - A036873 (n + 1))

end

end A036850.P9090696535018721827

/-! ## A036850.P5241994019174623995

`A036846(n+1)+A036851(n+1)-A036847(n+1)-A036856(n+1)`
-/

namespace A036850.P5241994019174623995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (n + 1) + (A036851 (n + 1) - A036847 (n + 1)) - A036856 (n + 1)

end

end A036850.P5241994019174623995

/-!
# A036851: Number of partitions of n such that cn(0,5) = cn(2,5) <= cn(1,5) < cn(3,5) = cn(4,5).

The programs for A036851, there is no canonical definition to state claims against.
-/

/-! ## A036851.P8795386999445882276

`A036860(n+1)+A036853(n+1)`
-/

namespace A036851.P8795386999445882276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036860 (n + 1) + A036853 (n + 1)

end

end A036851.P8795386999445882276

/-! ## A036851.P14943172826161520259

`A036848(n+1)-A036855(n+1)`
-/

namespace A036851.P14943172826161520259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - A036855 (n + 1)

end

end A036851.P14943172826161520259

/-! ## A036851.P7550328690457131727

`A036852(n+1)+A036860(n+1)-A036861(n+1)`
-/

namespace A036851.P7550328690457131727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) + (A036860 (n + 1) - A036861 (n + 1))

end

end A036851.P7550328690457131727

/-! ## A036851.P4667383922178583177

`A036850(n+1)+A036860(n+1)+A036857(n+1)-A036855(n+1)`
-/

namespace A036851.P4667383922178583177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036860 (n + 1) + A036857 (n + 1)) - A036855 (n + 1)

end

end A036851.P4667383922178583177

/-! ## A036851.P14339152186411248831

`A036847(n+1)+A036848(n+1)-A036846(n+1)`
-/

namespace A036851.P14339152186411248831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036847 (n + 1) + (A036848 (n + 1) - A036846 (n + 1))

end

end A036851.P14339152186411248831

/-! ## A036851.P14014931571861018832

`A036850(n+1)+A036856(n+1)-A036855(n+1)`
-/

namespace A036851.P14014931571861018832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036856 (n + 1) - A036855 (n + 1))

end

end A036851.P14014931571861018832

/-! ## A036851.P15083570649312401169

`A036853(n+1)+A036856(n+1)-A036857(n+1)`
-/

namespace A036851.P15083570649312401169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036856 (n + 1) - A036857 (n + 1))

end

end A036851.P15083570649312401169

/-!
# A036852: Number of partitions of n such that cn(1,5) <= cn(0,5) = cn(2,5) < cn(3,5) = cn(4,5).

The programs for A036852, there is no canonical definition to state claims against.
-/

/-! ## A036852.P15307376899336072845

`A036861(n+1)+A036853(n+1)`
-/

namespace A036852.P15307376899336072845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (n + 1) + A036853 (n + 1)

end

end A036852.P15307376899336072845

/-! ## A036852.P8249400815441193964

`A036851(n+1)+A036861(n+1)-A036860(n+1)`
-/

namespace A036852.P8249400815441193964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) + (A036861 (n + 1) - A036860 (n + 1))

end

end A036852.P8249400815441193964

/-! ## A036852.P14809956996176183683

`A036861(n+1)+A036851(n+1)+A036860(n+1)*A057428(n)`
-/

namespace A036852.P14809956996176183683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (n + 1) + (A036851 (n + 1) + A036860 (n + 1) * A057428 n)

end

end A036852.P14809956996176183683

/-! ## A036852.P16003452713179531474

`A036861(n+1)+A036848(n+1)-(A036860(n+1)+A036855(n+1))`
-/

namespace A036852.P16003452713179531474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (n + 1) + (A036848 (n + 1) - (A036860 (n + 1) + A036855 (n + 1)))

end

end A036852.P16003452713179531474

/-! ## A036852.P3567054967346951646

`A036861(n+1)+A036850(n+1)+A036857(n+1)-A036855(n+1)`
-/

namespace A036852.P3567054967346951646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (n + 1) + (A036850 (n + 1) + (A036857 (n + 1) - A036855 (n + 1)))

end

end A036852.P3567054967346951646

/-! ## A036852.P17339573454108972669

`A036861(n+1)+A036850(n+1)+A036869(n+1)-A036866(n+1)`
-/

namespace A036852.P17339573454108972669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (n + 1) + (A036850 (n + 1) + (A036869 (n + 1) - A036866 (n + 1)))

end

end A036852.P17339573454108972669

/-! ## A036852.P13399142501057286628

`A036861(n+1)+A036851(n+1)+A036857(n+1)-A036856(n+1)`
-/

namespace A036852.P13399142501057286628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (n + 1) + (A036851 (n + 1) + (A036857 (n + 1) - A036856 (n + 1)))

end

end A036852.P13399142501057286628

/-! ## A036852.P1105727056147203589

`A036861(n+1)+A036850(n+1)+A036873(n+1)-A036871(n+1)`
-/

namespace A036852.P1105727056147203589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (n + 1) + (A036850 (n + 1) + (A036873 (n + 1) - A036871 (n + 1)))

end

end A036852.P1105727056147203589

/-!
# A036853: Number of partitions of n such that cn(0,5) = cn(1,5) = cn(2,5) < cn(3,5) = cn(4,5).

The programs for A036853, there is no canonical definition to state claims against.
-/

/-! ## A036853.P1830794495548407647

`A036851(n+1)-A036860(n+1)`
-/

namespace A036853.P1830794495548407647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) - A036860 (n + 1)

end

end A036853.P1830794495548407647

/-! ## A036853.P1010011557157331337

`A036852(n+1)-A036861(n+1)`
-/

namespace A036853.P1010011557157331337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) - A036861 (n + 1)

end

end A036853.P1010011557157331337

/-! ## A036853.P8411428778426308686

`A036851(n+1)+A036860(n+1)*A057428(n)`
-/

namespace A036853.P8411428778426308686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) + A036860 (n + 1) * A057428 n

end

end A036853.P8411428778426308686

/-! ## A036853.P14979051072505030782

`A036852(n+1)+A036861(n+1)*A057428(n)`
-/

namespace A036853.P14979051072505030782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) + A036861 (n + 1) * A057428 n

end

end A036853.P14979051072505030782

/-! ## A036853.P11548991589699440605

`A036848(n+1)-(A036860(n+1)+A036855(n+1))`
-/

namespace A036853.P11548991589699440605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036860 (n + 1) + A036855 (n + 1))

end

end A036853.P11548991589699440605

/-! ## A036853.P8928361557182639856

`A036850(n+1)+A036857(n+1)-A036855(n+1)`
-/

namespace A036853.P8928361557182639856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036857 (n + 1) - A036855 (n + 1))

end

end A036853.P8928361557182639856

/-! ## A036853.P12574293768108246336

`A036850(n+1)+A036869(n+1)-A036866(n+1)`
-/

namespace A036853.P12574293768108246336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036869 (n + 1) - A036866 (n + 1))

end

end A036853.P12574293768108246336

/-! ## A036853.P16454476905313977238

`A036851(n+1)+A036857(n+1)-A036856(n+1)`
-/

namespace A036853.P16454476905313977238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) + (A036857 (n + 1) - A036856 (n + 1))

end

end A036853.P16454476905313977238

/-! ## A036853.P6198602837336873636

`A036850(n+1)+A036873(n+1)-A036871(n+1)`
-/

namespace A036853.P6198602837336873636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036873 (n + 1) - A036871 (n + 1))

end

end A036853.P6198602837336873636

/-!
# A036854: Number of partitions of n such that cn(0,5) = cn(2,5) < cn(3,5) = cn(4,5) <= cn(1,5).

The programs for A036854, there is no canonical definition to state claims against.
-/

/-! ## A036854.P16037912592223962329

`A036858(n+1)+A036857(n+1)`
-/

namespace A036854.P16037912592223962329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036858 (n + 1) + A036857 (n + 1)

end

end A036854.P16037912592223962329

/-! ## A036854.P20766139778729131

`A036856(n+1)+A036858(n+1)-A036860(n+1)`
-/

namespace A036854.P20766139778729131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + (A036858 (n + 1) - A036860 (n + 1))

end

end A036854.P20766139778729131

/-! ## A036854.P210512215908254714

`A036858(n+1)+A036856(n+1)+A036860(n+1)*A057428(n)`
-/

namespace A036854.P210512215908254714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036858 (n + 1) + (A036856 (n + 1) + A036860 (n + 1) * A057428 n)

end

end A036854.P210512215908254714

/-! ## A036854.P7410542476531769413

`A036858(n+1)+A036848(n+1)-(A036860(n+1)+A036850(n+1))`
-/

namespace A036854.P7410542476531769413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036858 (n + 1) + (A036848 (n + 1) - (A036860 (n + 1) + A036850 (n + 1)))

end

end A036854.P7410542476531769413

/-! ## A036854.P8823194560916908055

`A036858(n+1)+A036853(n+1)+A036855(n+1)-A036850(n+1)`
-/

namespace A036854.P8823194560916908055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036858 (n + 1) + (A036853 (n + 1) + (A036855 (n + 1) - A036850 (n + 1)))

end

end A036854.P8823194560916908055

/-! ## A036854.P364796997501729557

`A036858(n+1)+A036853(n+1)+A036856(n+1)-A036851(n+1)`
-/

namespace A036854.P364796997501729557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036858 (n + 1) + (A036853 (n + 1) + (A036856 (n + 1) - A036851 (n + 1)))

end

end A036854.P364796997501729557

/-! ## A036854.P8854380618281848223

`A036858(n+1)+A036855(n+1)+A036869(n+1)-A036866(n+1)`
-/

namespace A036854.P8854380618281848223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036858 (n + 1) + (A036855 (n + 1) + (A036869 (n + 1) - A036866 (n + 1)))

end

end A036854.P8854380618281848223

/-!
# A036855: Number of partitions of n such that cn(0,5) = cn(2,5) <= cn(1,5) = cn(3,5) = cn(4,5).

The programs for A036855, there is no canonical definition to state claims against.
-/

/-! ## A036855.P16025894024387555571

`A036848(n+1)-A036851(n+1)`
-/

namespace A036855.P16025894024387555571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - A036851 (n + 1)

end

end A036855.P16025894024387555571

/-! ## A036855.P13739510138375542494

`A036848(n+1)-(A036860(n+1)+A036853(n+1))`
-/

namespace A036855.P13739510138375542494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036860 (n + 1) + A036853 (n + 1))

end

end A036855.P13739510138375542494

/-! ## A036855.P16721239368232655239

`A036850(n+1)+A036857(n+1)-A036853(n+1)`
-/

namespace A036855.P16721239368232655239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036857 (n + 1) - A036853 (n + 1))

end

end A036855.P16721239368232655239

/-! ## A036855.P1679924784561044917

`A036857(n+1)+A036866(n+1)-A036869(n+1)`
-/

namespace A036855.P1679924784561044917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036857 (n + 1) + (A036866 (n + 1) - A036869 (n + 1))

end

end A036855.P1679924784561044917

/-! ## A036855.P6215556738044456752

`A036848(n+1)-(A036852(n+1)+A036860(n+1)-A036861(n+1))`
-/

namespace A036855.P6215556738044456752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036852 (n + 1) + (A036860 (n + 1) - A036861 (n + 1)))

end

end A036855.P6215556738044456752

/-! ## A036855.P17082981695577324847

`A036846(n+1)-A036847(n+1)`
-/

namespace A036855.P17082981695577324847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (n + 1) - A036847 (n + 1)

end

end A036855.P17082981695577324847

/-! ## A036855.P10819371374526697083

`A036846(A000027(n+1))%A036847(n+1)`
-/

namespace A036855.P10819371374526697083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036846 (A000027 (n + 1)).toNat) (A036847 (n + 1))

end

end A036855.P10819371374526697083

/-! ## A036855.P436266063093950863

`A036846(A028310(n)+1)%A036847(n+1)`
-/

namespace A036855.P436266063093950863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036846 (A028310 n + 1).toNat) (A036847 (n + 1))

end

end A036855.P436266063093950863

/-! ## A036855.P16540592514007527228

`A036846(A008619(2*n))%A036847(n+1)`
-/

namespace A036855.P16540592514007527228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036846 (A008619 (2 * n)).toNat) (A036847 (n + 1))

end

end A036855.P16540592514007527228

/-! ## A036855.P16265875981381342949

`A036848(n+1)-(A036853(n+1)+A036856(n+1)-A036857(n+1))`
-/

namespace A036855.P16265875981381342949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036853 (n + 1) + (A036856 (n + 1) - A036857 (n + 1)))

end

end A036855.P16265875981381342949

/-!
# A036856: Number of partitions of n such that cn(0,5) = cn(2,5) < cn(1,5) <= cn(3,5) = cn(4,5).

The programs for A036856, there is no canonical definition to state claims against.
-/

/-! ## A036856.P7497648997660540831

`A036860(n+1)+A036857(n+1)`
-/

namespace A036856.P7497648997660540831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036860 (n + 1) + A036857 (n + 1)

end

end A036856.P7497648997660540831

/-! ## A036856.P2300795793509645532

`A036848(n+1)-A036850(n+1)`
-/

namespace A036856.P2300795793509645532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - A036850 (n + 1)

end

end A036856.P2300795793509645532

/-! ## A036856.P410104854690105123

`A036848(n+1)+A036859(n+1)-A036849(n+1)`
-/

namespace A036856.P410104854690105123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) + (A036859 (n + 1) - A036849 (n + 1))

end

end A036856.P410104854690105123

/-! ## A036856.P9682447424612429265

`A036851(n+1)+A036855(n+1)-A036850(n+1)`
-/

namespace A036856.P9682447424612429265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) + (A036855 (n + 1) - A036850 (n + 1))

end

end A036856.P9682447424612429265

/-! ## A036856.P9490941285058608591

`A036851(n+1)+A036857(n+1)-A036853(n+1)`
-/

namespace A036856.P9490941285058608591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) + (A036857 (n + 1) - A036853 (n + 1))

end

end A036856.P9490941285058608591

/-! ## A036856.P5622021695248349172

`A036854(n+1)+A036860(n+1)-A036858(n+1)`
-/

namespace A036856.P5622021695248349172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) + (A036860 (n + 1) - A036858 (n + 1))

end

end A036856.P5622021695248349172

/-! ## A036856.P16850418355477720407

`A036853(n+1)+A036860(n+1)+A036855(n+1)-A036850(n+1)`
-/

namespace A036856.P16850418355477720407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036860 (n + 1) + A036855 (n + 1)) - A036850 (n + 1)

end

end A036856.P16850418355477720407

/-! ## A036856.P2249366519036810586

`A036857(n+1)+A036848(n+1)-(A036855(n+1)+A036853(n+1))`
-/

namespace A036856.P2249366519036810586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036857 (n + 1) + (A036848 (n + 1) - (A036855 (n + 1) + A036853 (n + 1)))

end

end A036856.P2249366519036810586

/-! ## A036856.P17866646792865259191

`A036860(n+1)+A036855(n+1)+A036869(n+1)-A036866(n+1)`
-/

namespace A036856.P17866646792865259191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036860 (n + 1) + (A036855 (n + 1) + (A036869 (n + 1) - A036866 (n + 1)))

end

end A036856.P17866646792865259191

/-! ## A036856.P15520430545837754080

`A036848(n+1)-(A036853(n+1)+A036866(n+1)-A036869(n+1))`
-/

namespace A036856.P15520430545837754080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036853 (n + 1) + (A036866 (n + 1) - A036869 (n + 1)))

end

end A036856.P15520430545837754080

/-!
# A036857: Number of partitions of n such that cn(0,5) = cn(2,5) < cn(1,5) = cn(3,5) = cn(4,5).

The programs for A036857, there is no canonical definition to state claims against.
-/

/-! ## A036857.P13744338336091262163

`A036848(n+1)-(A036860(n+1)+A036850(n+1))`
-/

namespace A036857.P13744338336091262163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036860 (n + 1) + A036850 (n + 1))

end

end A036857.P13744338336091262163

/-! ## A036857.P2007284807631163713

`A036853(n+1)+A036855(n+1)-A036850(n+1)`
-/

namespace A036857.P2007284807631163713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036855 (n + 1) - A036850 (n + 1))

end

end A036857.P2007284807631163713

/-! ## A036857.P16478152111336455750

`A036855(n+1)+A036869(n+1)-A036866(n+1)`
-/

namespace A036857.P16478152111336455750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (n + 1) + (A036869 (n + 1) - A036866 (n + 1))

end

end A036857.P16478152111336455750

/-! ## A036857.P12198219388751785768

`A036854(n+1)-A036858(n+1)`
-/

namespace A036857.P12198219388751785768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) - A036858 (n + 1)

end

end A036857.P12198219388751785768

/-! ## A036857.P6521133867109616237

`A036856(n+1)-A036860(n+1)`
-/

namespace A036857.P6521133867109616237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) - A036860 (n + 1)

end

end A036857.P6521133867109616237

/-! ## A036857.P2535130350332758596

`A036856(n+1)+A036860(n+1)*A057428(n)`
-/

namespace A036857.P2535130350332758596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + A036860 (n + 1) * A057428 n

end

end A036857.P2535130350332758596

/-! ## A036857.P15825982325955475021

`A036853(n+1)+A036856(n+1)-A036851(n+1)`
-/

namespace A036857.P15825982325955475021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036856 (n + 1) - A036851 (n + 1))

end

end A036857.P15825982325955475021

/-! ## A036857.P10531380541357339339

`A036855(n+1)+A036873(n+1)-A036871(n+1)`
-/

namespace A036857.P10531380541357339339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (n + 1) + (A036873 (n + 1) - A036871 (n + 1))

end

end A036857.P10531380541357339339

/-!
# A036858: Number of partitions of n such that cn(0,5) = cn(2,5) < cn(3,5) = cn(4,5) < cn(1,5).

The programs for A036858, there is no canonical definition to state claims against.
-/

/-! ## A036858.P15849426279610306498

`A036854(n+1)-A036857(n+1)`
-/

namespace A036858.P15849426279610306498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) - A036857 (n + 1)

end

end A036858.P15849426279610306498

/-! ## A036858.P9347665049376873763

`A036854(n+1)+A036857(n+1)*A057428(n)`
-/

namespace A036858.P9347665049376873763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) + A036857 (n + 1) * A057428 n

end

end A036858.P9347665049376873763

/-! ## A036858.P3802691619124379882

`A036854(n+1)+A036860(n+1)-A036856(n+1)`
-/

namespace A036858.P3802691619124379882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) + (A036860 (n + 1) - A036856 (n + 1))

end

end A036858.P3802691619124379882

/-! ## A036858.P17876971836571099725

`A036854(n+1)-(A036848(n+1)-(A036860(n+1)+A036850(n+1)))`
-/

namespace A036858.P17876971836571099725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) - (A036848 (n + 1) - (A036860 (n + 1) + A036850 (n + 1)))

end

end A036858.P17876971836571099725

/-! ## A036858.P14027880029171331687

`A036854(n+1)-(A036853(n+1)+A036855(n+1)-A036850(n+1))`
-/

namespace A036858.P14027880029171331687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) - (A036853 (n + 1) + (A036855 (n + 1) - A036850 (n + 1)))

end

end A036858.P14027880029171331687

/-! ## A036858.P14878322112458683407

`A036854(n+1)-(A036853(n+1)+A036856(n+1)-A036851(n+1))`
-/

namespace A036858.P14878322112458683407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) - (A036853 (n + 1) + (A036856 (n + 1) - A036851 (n + 1)))

end

end A036858.P14878322112458683407

/-! ## A036858.P3147370568899806856

`A036854(n+1)-(A036855(n+1)+A036869(n+1)-A036866(n+1))`
-/

namespace A036858.P3147370568899806856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (n + 1) - (A036855 (n + 1) + (A036869 (n + 1) - A036866 (n + 1)))

end

end A036858.P3147370568899806856

/-!
# A036859: Number of partitions of n such that cn(1,5) < cn(0,5) = cn(2,5) <= cn(3,5) = cn(4,5).

The programs for A036859, there is no canonical definition to state claims against.
-/

/-! ## A036859.P16828672528396320999

`A036849(n+1)-A036850(n+1)`
-/

namespace A036859.P16828672528396320999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) - A036850 (n + 1)

end

end A036859.P16828672528396320999

/-! ## A036859.P15877816984358562366

`A036849(n+1)+A036856(n+1)-A036848(n+1)`
-/

namespace A036859.P15877816984358562366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) + (A036856 (n + 1) - A036848 (n + 1))

end

end A036859.P15877816984358562366

/-! ## A036859.P1285234447060862244

`A036849(n+1)-(A036848(n+1)-(A036860(n+1)+A036857(n+1)))`
-/

namespace A036859.P1285234447060862244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) - (A036848 (n + 1) - (A036860 (n + 1) + A036857 (n + 1)))

end

end A036859.P1285234447060862244

/-! ## A036859.P3211024718592106175

`A036849(n+1)-(A036853(n+1)+A036855(n+1)-A036857(n+1))`
-/

namespace A036859.P3211024718592106175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) - (A036853 (n + 1) + (A036855 (n + 1) - A036857 (n + 1)))

end

end A036859.P3211024718592106175

/-! ## A036859.P13006783049075610045

`A036849(n+1)-(A036853(n+1)+A036866(n+1)-A036869(n+1))`
-/

namespace A036859.P13006783049075610045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) - (A036853 (n + 1) + (A036866 (n + 1) - A036869 (n + 1)))

end

end A036859.P13006783049075610045

/-! ## A036859.P8915578322579020432

`A036849(n+1)-(A036853(n+1)+A036871(n+1)-A036873(n+1))`
-/

namespace A036859.P8915578322579020432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1) - (A036853 (n + 1) + (A036871 (n + 1) - A036873 (n + 1)))

end

end A036859.P8915578322579020432

/-!
# A036860: Number of partitions of n such that cn(0,5) = cn(2,5) < cn(1,5) < cn(3,5) = cn(4,5).

The programs for A036860, there is no canonical definition to state claims against.
-/

/-! ## A036860.P2635327462337744719

`A036851(n+1)-A036853(n+1)`
-/

namespace A036860.P2635327462337744719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) - A036853 (n + 1)

end

end A036860.P2635327462337744719

/-! ## A036860.P8700447853711955181

`A036848(n+1)-(A036855(n+1)+A036853(n+1))`
-/

namespace A036860.P8700447853711955181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036855 (n + 1) + A036853 (n + 1))

end

end A036860.P8700447853711955181

/-! ## A036860.P16876805825185151849

`A036848(n+1)-(A036857(n+1)+A036850(n+1))`
-/

namespace A036860.P16876805825185151849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) - (A036857 (n + 1) + A036850 (n + 1))

end

end A036860.P16876805825185151849

/-! ## A036860.P9039723759457682228

`A036851(n+1)+A036861(n+1)-A036852(n+1)`
-/

namespace A036860.P9039723759457682228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036851 (n + 1) + (A036861 (n + 1) - A036852 (n + 1))

end

end A036860.P9039723759457682228

/-! ## A036860.P9504647333136639766

`A036856(n+1)-A036857(n+1)`
-/

namespace A036860.P9504647333136639766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) - A036857 (n + 1)

end

end A036860.P9504647333136639766

/-! ## A036860.P6564319635265159765

`A036856(n+1)+A036857(n+1)*A057428(n)`
-/

namespace A036860.P6564319635265159765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + A036857 (n + 1) * A057428 n

end

end A036860.P6564319635265159765

/-! ## A036860.P8083975990549078149

`A036856(n+1)+A036858(n+1)-A036854(n+1)`
-/

namespace A036860.P8083975990549078149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) + (A036858 (n + 1) - A036854 (n + 1))

end

end A036860.P8083975990549078149

/-! ## A036860.P10304193923825110530

`A036848(n+1)+A036859(n+1)-A036849(n+1)-A036857(n+1)`
-/

namespace A036860.P10304193923825110530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036848 (n + 1) + (A036859 (n + 1) - A036849 (n + 1)) - A036857 (n + 1)

end

end A036860.P10304193923825110530

/-! ## A036860.P8040942084548806501

`A036856(n+1)-(A036855(n+1)+A036869(n+1)-A036866(n+1))`
-/

namespace A036860.P8040942084548806501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (n + 1) - (A036855 (n + 1) + (A036869 (n + 1) - A036866 (n + 1)))

end

end A036860.P8040942084548806501

/-!
# A036861: Number of partitions of n such that cn(1,5) < cn(0,5) = cn(2,5) < cn(3,5) = cn(4,5).

The programs for A036861, there is no canonical definition to state claims against.
-/

/-! ## A036861.P15281021155187413385

`A036852(n+1)-A036853(n+1)`
-/

namespace A036861.P15281021155187413385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) - A036853 (n + 1)

end

end A036861.P15281021155187413385

/-! ## A036861.P11640590094247083380

`A036852(n+1)+A036853(n+1)*A057428(n)`
-/

namespace A036861.P11640590094247083380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) + A036853 (n + 1) * A057428 n

end

end A036861.P11640590094247083380

/-! ## A036861.P5749460910628770595

`A036852(n+1)+A036860(n+1)-A036851(n+1)`
-/

namespace A036861.P5749460910628770595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) + (A036860 (n + 1) - A036851 (n + 1))

end

end A036861.P5749460910628770595

/-! ## A036861.P17882821529072999569

`A036852(n+1)-(A036848(n+1)-(A036860(n+1)+A036855(n+1)))`
-/

namespace A036861.P17882821529072999569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) - (A036848 (n + 1) - (A036860 (n + 1) + A036855 (n + 1)))

end

end A036861.P17882821529072999569

/-! ## A036861.P10581393304229096269

`A036852(n+1)-(A036850(n+1)+A036857(n+1)-A036855(n+1))`
-/

namespace A036861.P10581393304229096269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) - (A036850 (n + 1) + (A036857 (n + 1) - A036855 (n + 1)))

end

end A036861.P10581393304229096269

/-! ## A036861.P16383214659813195431

`A036852(n+1)-(A036850(n+1)+A036869(n+1)-A036866(n+1))`
-/

namespace A036861.P16383214659813195431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) - (A036850 (n + 1) + (A036869 (n + 1) - A036866 (n + 1)))

end

end A036861.P16383214659813195431

/-! ## A036861.P4006082866156054757

`A036852(n+1)-(A036851(n+1)+A036857(n+1)-A036856(n+1))`
-/

namespace A036861.P4006082866156054757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) - (A036851 (n + 1) + (A036857 (n + 1) - A036856 (n + 1)))

end

end A036861.P4006082866156054757

/-! ## A036861.P16915174457645216293

`A036852(n+1)-(A036850(n+1)+A036873(n+1)-A036871(n+1))`
-/

namespace A036861.P16915174457645216293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (n + 1) - (A036850 (n + 1) + (A036873 (n + 1) - A036871 (n + 1)))

end

end A036861.P16915174457645216293

/-!
# A036862: Number of partitions of n such that cn(0,5) = cn(1,5) <= cn(2,5) = cn(4,5) <= cn(3,5).

The programs for A036862, there is no canonical definition to state claims against.
-/

/-! ## A036862.P18386681297886999562

`A036871(n+1)+A036863(n+1)`
-/

namespace A036862.P18386681297886999562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036871 (n + 1) + A036863 (n + 1)

end

end A036862.P18386681297886999562

/-! ## A036862.P1977898146367840950

`A036863(n+1)+A036864(n+1)-A036867(n+1)`
-/

namespace A036862.P1977898146367840950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036864 (n + 1) - A036867 (n + 1))

end

end A036862.P1977898146367840950

/-! ## A036862.P3237614463788583007

`A036863(n+1)+A036850(n+1)+A036873(n+1)-A036853(n+1)`
-/

namespace A036862.P3237614463788583007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036850 (n + 1) + (A036873 (n + 1) - A036853 (n + 1)))

end

end A036862.P3237614463788583007

/-! ## A036862.P7193415422384989391

`A036863(n+1)+A036855(n+1)+A036873(n+1)-A036857(n+1)`
-/

namespace A036862.P7193415422384989391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036855 (n + 1) + (A036873 (n + 1) - A036857 (n + 1)))

end

end A036862.P7193415422384989391

/-! ## A036862.P4072568797573487761

`A036863(n+1)+A036864(n+1)-(A036876(n+1)+A036869(n+1))`
-/

namespace A036862.P4072568797573487761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036864 (n + 1) - (A036876 (n + 1) + A036869 (n + 1)))

end

end A036862.P4072568797573487761

/-! ## A036862.P3726337293821108397

`A036863(n+1)+A036866(n+1)+A036872(n+1)-A036867(n+1)`
-/

namespace A036862.P3726337293821108397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036866 (n + 1) + (A036872 (n + 1) - A036867 (n + 1)))

end

end A036862.P3726337293821108397

/-! ## A036862.P7996660996783298116

`A036863(n+1)+A036866(n+1)+A036873(n+1)-A036869(n+1)`
-/

namespace A036862.P7996660996783298116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036866 (n + 1) + (A036873 (n + 1) - A036869 (n + 1)))

end

end A036862.P7996660996783298116

/-!
# A036863: Number of partitions of n such that cn(0,5) = cn(1,5) <= cn(2,5) = cn(4,5) < cn(3,5).

The programs for A036863, there is no canonical definition to state claims against.
-/

/-! ## A036863.P17585676796810911000

`A036862(n+1)-A036871(n+1)`
-/

namespace A036863.P17585676796810911000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) - A036871 (n + 1)

end

end A036863.P17585676796810911000

/-! ## A036863.P416931202033377055

`A036862(n+1)+A036867(n+1)-A036864(n+1)`
-/

namespace A036863.P416931202033377055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) + (A036867 (n + 1) - A036864 (n + 1))

end

end A036863.P416931202033377055

/-! ## A036863.P17190579550930417566

`A036862(n+1)-A036864(n+1)+A036876(n+1)+A036869(n+1)`
-/

namespace A036863.P17190579550930417566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) - A036864 (n + 1) + (A036876 (n + 1) + A036869 (n + 1))

end

end A036863.P17190579550930417566

/-! ## A036863.P18316655416071115630

`A036862(n+1)+A036867(n+1)-(A036872(n+1)+A036866(n+1))`
-/

namespace A036863.P18316655416071115630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) + (A036867 (n + 1) - (A036872 (n + 1) + A036866 (n + 1)))

end

end A036863.P18316655416071115630

/-! ## A036863.P509850650382326809

`A036862(n+1)-(A036850(n+1)+A036873(n+1)-A036853(n+1))`
-/

namespace A036863.P509850650382326809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) - (A036850 (n + 1) + (A036873 (n + 1) - A036853 (n + 1)))

end

end A036863.P509850650382326809

/-! ## A036863.P11691886471917550288

`A036862(n+1)-(A036855(n+1)+A036873(n+1)-A036857(n+1))`
-/

namespace A036863.P11691886471917550288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) - (A036855 (n + 1) + (A036873 (n + 1) - A036857 (n + 1)))

end

end A036863.P11691886471917550288

/-! ## A036863.P14483082164027035326

`A036862(n+1)-(A036866(n+1)+A036873(n+1)-A036869(n+1))`
-/

namespace A036863.P14483082164027035326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) - (A036866 (n + 1) + (A036873 (n + 1) - A036869 (n + 1)))

end

end A036863.P14483082164027035326

/-!
# A036864: Number of partitions of n such that cn(0,5) = cn(1,5) <= cn(3,5) <= cn(2,5) = cn(4,5).

The programs for A036864, there is no canonical definition to state claims against.
-/

/-! ## A036864.P1124690081027963827

`A036871(n+1)+A036867(n+1)`
-/

namespace A036864.P1124690081027963827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036871 (n + 1) + A036867 (n + 1)

end

end A036864.P1124690081027963827

/-! ## A036864.P14219332781615957578

`A036872(n+1)+A036866(n+1)`
-/

namespace A036864.P14219332781615957578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036872 (n + 1) + A036866 (n + 1)

end

end A036864.P14219332781615957578

/-! ## A036864.P15649718911547797954

`A036866(n+1)+A036876(n+1)+A036873(n+1)`
-/

namespace A036864.P15649718911547797954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036866 (n + 1) + (A036876 (n + 1) + A036873 (n + 1))

end

end A036864.P15649718911547797954

/-! ## A036864.P6599300811519518458

`A036869(n+1)+A036876(n+1)+A036871(n+1)`
-/

namespace A036864.P6599300811519518458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036869 (n + 1) + (A036876 (n + 1) + A036871 (n + 1))

end

end A036864.P6599300811519518458

/-! ## A036864.P12455198524600229300

`A036862(n+1)+A036867(n+1)-A036863(n+1)`
-/

namespace A036864.P12455198524600229300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) + (A036867 (n + 1) - A036863 (n + 1))

end

end A036864.P12455198524600229300

/-! ## A036864.P4236726919613806772

`A036865(n+1)+A036872(n+1)-A036875(n+1)`
-/

namespace A036864.P4236726919613806772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) + (A036872 (n + 1) - A036875 (n + 1))

end

end A036864.P4236726919613806772

/-! ## A036864.P1409636759195988326

`A036862(n+1)-A036863(n+1)+A036876(n+1)+A036869(n+1)`
-/

namespace A036864.P1409636759195988326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) - A036863 (n + 1) + (A036876 (n + 1) + A036869 (n + 1))

end

end A036864.P1409636759195988326

/-! ## A036864.P8960724415406292023

`A036866(n+1)+A036867(n+1)+A036873(n+1)-A036869(n+1)`
-/

namespace A036864.P8960724415406292023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036866 (n + 1) + (A036867 (n + 1) + (A036873 (n + 1) - A036869 (n + 1)))

end

end A036864.P8960724415406292023

/-! ## A036864.P2372110273932943954

`A036871(n+1)+A036868(n+1)+A036876(n+1)-A036877(n+1)`
-/

namespace A036864.P2372110273932943954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036871 (n + 1) + (A036868 (n + 1) + (A036876 (n + 1) - A036877 (n + 1)))

end

end A036864.P2372110273932943954

/-!
# A036865: Number of partitions of n such that cn(3,5) <= cn(0,5) = cn(1,5) <= cn(2,5) = cn(4,5).

The programs for A036865, there is no canonical definition to state claims against.
-/

/-! ## A036865.P17353442766291100120

`A036875(n+1)+A036866(n+1)`
-/

namespace A036865.P17353442766291100120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1) + A036866 (n + 1)

end

end A036865.P17353442766291100120

/-! ## A036865.P7624267212920902421

`A036875(n+1)+A036850(n+1)+A036869(n+1)-A036853(n+1)`
-/

namespace A036865.P7624267212920902421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1) + (A036850 (n + 1) + (A036869 (n + 1) - A036853 (n + 1)))

end

end A036865.P7624267212920902421

/-! ## A036865.P11244252830972188614

`A036875(n+1)+A036855(n+1)+A036869(n+1)-A036857(n+1)`
-/

namespace A036865.P11244252830972188614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1) + (A036855 (n + 1) + (A036869 (n + 1) - A036857 (n + 1)))

end

end A036865.P11244252830972188614

/-! ## A036865.P15896094052854224608

`A036875(n+1)+A036867(n+1)+A036871(n+1)-A036872(n+1)`
-/

namespace A036865.P15896094052854224608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1) + (A036867 (n + 1) + (A036871 (n + 1) - A036872 (n + 1)))

end

end A036865.P15896094052854224608

/-! ## A036865.P10911163653572959156

`A036864(n+1)+A036875(n+1)-A036872(n+1)`
-/

namespace A036865.P10911163653572959156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) + (A036875 (n + 1) - A036872 (n + 1))

end

end A036865.P10911163653572959156

/-! ## A036865.P17181883157827579842

`A036875(n+1)+A036864(n+1)-(A036876(n+1)+A036873(n+1))`
-/

namespace A036865.P17181883157827579842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1) + (A036864 (n + 1) - (A036876 (n + 1) + A036873 (n + 1)))

end

end A036865.P17181883157827579842

/-! ## A036865.P10425075118185087866

`A036875(n+1)+A036864(n+1)-(A036867(n+1)+A036873(n+1)-A036869(n+1))`
-/

namespace A036865.P10425075118185087866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1) + (A036864 (n + 1) - (A036867 (n + 1) + (A036873 (n + 1) - A036869 (n + 1))))

end

end A036865.P10425075118185087866

/-! ## A036865.P16997898586808899496

`A036875(n+1)+A036864(n+1)-(A036870(n+1)+A036876(n+1)-A036874(n+1))`
-/

namespace A036865.P16997898586808899496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1) + (A036864 (n + 1) - (A036870 (n + 1) + (A036876 (n + 1) - A036874 (n + 1))))

end

end A036865.P16997898586808899496

/-!
# A036866: Number of partitions of n such that cn(0,5) = cn(1,5) = cn(3,5) <= cn(2,5) = cn(4,5).

The programs for A036866, there is no canonical definition to state claims against.
-/

/-! ## A036866.P14065810648509817897

`A036865(n+1)-A036875(n+1)`
-/

namespace A036866.P14065810648509817897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) - A036875 (n + 1)

end

end A036866.P14065810648509817897

/-! ## A036866.P2037099013091041532

`A036850(n+1)+A036869(n+1)-A036853(n+1)`
-/

namespace A036866.P2037099013091041532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036869 (n + 1) - A036853 (n + 1))

end

end A036866.P2037099013091041532

/-! ## A036866.P16656714043376830607

`A036855(n+1)+A036869(n+1)-A036857(n+1)`
-/

namespace A036866.P16656714043376830607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (n + 1) + (A036869 (n + 1) - A036857 (n + 1))

end

end A036866.P16656714043376830607

/-! ## A036866.P15378379363498763719

`A036867(n+1)+A036871(n+1)-A036872(n+1)`
-/

namespace A036866.P15378379363498763719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) + (A036871 (n + 1) - A036872 (n + 1))

end

end A036866.P15378379363498763719

/-! ## A036866.P1921119167015250591

`A036864(n+1)-A036872(n+1)`
-/

namespace A036866.P1921119167015250591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - A036872 (n + 1)

end

end A036866.P1921119167015250591

/-! ## A036866.P4861495636006069528

`A036864(n+1)-(A036876(n+1)+A036873(n+1))`
-/

namespace A036866.P4861495636006069528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036876 (n + 1) + A036873 (n + 1))

end

end A036866.P4861495636006069528

/-! ## A036866.P11862532747239631171

`A036869(n+1)+A036871(n+1)-A036873(n+1)`
-/

namespace A036866.P11862532747239631171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036869 (n + 1) + (A036871 (n + 1) - A036873 (n + 1))

end

end A036866.P11862532747239631171

/-! ## A036866.P16672479329259354335

`A036871(n+1)+A036867(n+1)-(A036876(n+1)+A036873(n+1))`
-/

namespace A036866.P16672479329259354335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036871 (n + 1) + A036867 (n + 1) - (A036876 (n + 1) + A036873 (n + 1))

end

end A036866.P16672479329259354335

/-! ## A036866.P1646039490992880063

`A036864(n+1)-(A036867(n+1)+A036873(n+1)-A036869(n+1))`
-/

namespace A036866.P1646039490992880063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036867 (n + 1) + (A036873 (n + 1) - A036869 (n + 1)))

end

end A036866.P1646039490992880063

/-! ## A036866.P13973673444473015903

`A036864(n+1)-(A036870(n+1)+A036876(n+1)-A036874(n+1))`
-/

namespace A036866.P13973673444473015903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036870 (n + 1) + (A036876 (n + 1) - A036874 (n + 1)))

end

end A036866.P13973673444473015903

/-!
# A036867: Number of partitions of n such that cn(0,5) = cn(1,5) <= cn(3,5) < cn(2,5) = cn(4,5).

The programs for A036867, there is no canonical definition to state claims against.
-/

/-! ## A036867.P3967057369317433815

`A036876(n+1)+A036869(n+1)`
-/

namespace A036867.P3967057369317433815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (n + 1) + A036869 (n + 1)

end

end A036867.P3967057369317433815

/-! ## A036867.P5977382054030394499

`A036866(n+1)+A036872(n+1)-A036871(n+1)`
-/

namespace A036867.P5977382054030394499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036866 (n + 1) + (A036872 (n + 1) - A036871 (n + 1))

end

end A036867.P5977382054030394499

/-! ## A036867.P617916035194885798

`A036868(n+1)+A036876(n+1)-A036877(n+1)`
-/

namespace A036867.P617916035194885798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) + (A036876 (n + 1) - A036877 (n + 1))

end

end A036867.P617916035194885798

/-! ## A036867.P7149664630744791641

`A036864(n+1)-A036871(n+1)`
-/

namespace A036867.P7149664630744791641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - A036871 (n + 1)

end

end A036867.P7149664630744791641

/-! ## A036867.P9575166568825353745

`A036863(n+1)+A036864(n+1)-A036862(n+1)`
-/

namespace A036867.P9575166568825353745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036864 (n + 1) - A036862 (n + 1))

end

end A036867.P9575166568825353745

/-! ## A036867.P11842468916934844706

`A036869(n+1)+A036872(n+1)-A036873(n+1)`
-/

namespace A036867.P11842468916934844706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036869 (n + 1) + (A036872 (n + 1) - A036873 (n + 1))

end

end A036867.P11842468916934844706

/-! ## A036867.P18355253432966087514

`A036866(n+1)+A036876(n+1)+A036873(n+1)-A036871(n+1)`
-/

namespace A036867.P18355253432966087514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036866 (n + 1) + (A036876 (n + 1) + A036873 (n + 1)) - A036871 (n + 1)

end

end A036867.P18355253432966087514

/-! ## A036867.P11217962496587066975

`A036864(n+1)-(A036866(n+1)+A036873(n+1)-A036869(n+1))`
-/

namespace A036867.P11217962496587066975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036866 (n + 1) + (A036873 (n + 1) - A036869 (n + 1)))

end

end A036867.P11217962496587066975

/-!
# A036868: Number of partitions of n such that cn(3,5) <= cn(0,5) = cn(1,5) < cn(2,5) = cn(4,5).

The programs for A036868, there is no canonical definition to state claims against.
-/

/-! ## A036868.P10519114133016464029

`A036877(n+1)+A036869(n+1)`
-/

namespace A036868.P10519114133016464029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036877 (n + 1) + A036869 (n + 1)

end

end A036868.P10519114133016464029

/-! ## A036868.P13686642016051917651

`A036867(n+1)+A036877(n+1)-A036876(n+1)`
-/

namespace A036868.P13686642016051917651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) + (A036877 (n + 1) - A036876 (n + 1))

end

end A036868.P13686642016051917651

/-! ## A036868.P17071441479640447662

`A036877(n+1)+A036853(n+1)+A036866(n+1)-A036850(n+1)`
-/

namespace A036868.P17071441479640447662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036877 (n + 1) + (A036853 (n + 1) + (A036866 (n + 1) - A036850 (n + 1)))

end

end A036868.P17071441479640447662

/-! ## A036868.P9631960687988625036

`A036877(n+1)+A036857(n+1)+A036866(n+1)-A036855(n+1)`
-/

namespace A036868.P9631960687988625036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036877 (n + 1) + (A036857 (n + 1) + (A036866 (n + 1) - A036855 (n + 1)))

end

end A036868.P9631960687988625036

/-! ## A036868.P6156704239343444967

`A036877(n+1)+A036864(n+1)-(A036876(n+1)+A036871(n+1))`
-/

namespace A036868.P6156704239343444967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036877 (n + 1) + (A036864 (n + 1) - (A036876 (n + 1) + A036871 (n + 1)))

end

end A036868.P6156704239343444967

/-! ## A036868.P1645866707847582192

`A036877(n+1)+A036866(n+1)+A036873(n+1)-A036871(n+1)`
-/

namespace A036868.P1645866707847582192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036877 (n + 1) + (A036866 (n + 1) + (A036873 (n + 1) - A036871 (n + 1)))

end

end A036868.P1645866707847582192

/-! ## A036868.P17372651236025707767

`A036877(n+1)+A036867(n+1)+A036873(n+1)-A036872(n+1)`
-/

namespace A036868.P17372651236025707767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036877 (n + 1) + (A036867 (n + 1) + (A036873 (n + 1) - A036872 (n + 1)))

end

end A036868.P17372651236025707767

/-!
# A036869: Number of partitions of n such that cn(0,5) = cn(1,5) = cn(3,5) < cn(2,5) = cn(4,5).

The programs for A036869, there is no canonical definition to state claims against.
-/

/-! ## A036869.P3891915742335604324

`A036867(n+1)-A036876(n+1)`
-/

namespace A036869.P3891915742335604324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) - A036876 (n + 1)

end

end A036869.P3891915742335604324

/-! ## A036869.P16325794175692776205

`A036868(n+1)-A036877(n+1)`
-/

namespace A036869.P16325794175692776205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) - A036877 (n + 1)

end

end A036869.P16325794175692776205

/-! ## A036869.P16505196878169618898

`A036853(n+1)+A036866(n+1)-A036850(n+1)`
-/

namespace A036869.P16505196878169618898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036866 (n + 1) - A036850 (n + 1))

end

end A036869.P16505196878169618898

/-! ## A036869.P5525129037164225058

`A036857(n+1)+A036866(n+1)-A036855(n+1)`
-/

namespace A036869.P5525129037164225058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036857 (n + 1) + (A036866 (n + 1) - A036855 (n + 1))

end

end A036869.P5525129037164225058

/-! ## A036869.P777986359609802559

`A036864(n+1)-(A036876(n+1)+A036871(n+1))`
-/

namespace A036869.P777986359609802559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036876 (n + 1) + A036871 (n + 1))

end

end A036869.P777986359609802559

/-! ## A036869.P8961273030744568303

`A036866(n+1)+A036873(n+1)-A036871(n+1)`
-/

namespace A036869.P8961273030744568303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036866 (n + 1) + (A036873 (n + 1) - A036871 (n + 1))

end

end A036869.P8961273030744568303

/-! ## A036869.P2530019834564207429

`A036867(n+1)+A036873(n+1)-A036872(n+1)`
-/

namespace A036869.P2530019834564207429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) + (A036873 (n + 1) - A036872 (n + 1))

end

end A036869.P2530019834564207429

/-! ## A036869.P11550312164304262392

`A036863(n+1)+A036864(n+1)-A036862(n+1)-A036876(n+1)`
-/

namespace A036869.P11550312164304262392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036864 (n + 1) - A036862 (n + 1)) - A036876 (n + 1)

end

end A036869.P11550312164304262392

/-!
# A036870: Number of partitions of n such that cn(0,5) = cn(1,5) < cn(2,5) = cn(4,5) <= cn(3,5).

The programs for A036870, there is no canonical definition to state claims against.
-/

/-! ## A036870.P15205560160325416304

`A036874(n+1)+A036873(n+1)`
-/

namespace A036870.P15205560160325416304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (n + 1) + A036873 (n + 1)

end

end A036870.P15205560160325416304

/-! ## A036870.P12716511954415897330

`A036872(n+1)+A036874(n+1)-A036876(n+1)`
-/

namespace A036870.P12716511954415897330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036872 (n + 1) + (A036874 (n + 1) - A036876 (n + 1))

end

end A036870.P12716511954415897330

/-! ## A036870.P16959345297134437112

`A036874(n+1)+A036853(n+1)+A036871(n+1)-A036850(n+1)`
-/

namespace A036870.P16959345297134437112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (n + 1) + (A036853 (n + 1) + (A036871 (n + 1) - A036850 (n + 1)))

end

end A036870.P16959345297134437112

/-! ## A036870.P3053726142768037037

`A036874(n+1)+A036857(n+1)+A036871(n+1)-A036855(n+1)`
-/

namespace A036870.P3053726142768037037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (n + 1) + (A036857 (n + 1) + (A036871 (n + 1) - A036855 (n + 1)))

end

end A036870.P3053726142768037037

/-! ## A036870.P3087131749274059973

`A036874(n+1)+A036864(n+1)-(A036876(n+1)+A036866(n+1))`
-/

namespace A036870.P3087131749274059973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (n + 1) + (A036864 (n + 1) - (A036876 (n + 1) + A036866 (n + 1)))

end

end A036870.P3087131749274059973

/-! ## A036870.P6123052598539617708

`A036874(n+1)+A036869(n+1)+A036871(n+1)-A036866(n+1)`
-/

namespace A036870.P6123052598539617708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (n + 1) + (A036869 (n + 1) + (A036871 (n + 1) - A036866 (n + 1)))

end

end A036870.P6123052598539617708

/-! ## A036870.P9661082592008805067

`A036874(n+1)+A036869(n+1)+A036872(n+1)-A036867(n+1)`
-/

namespace A036870.P9661082592008805067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (n + 1) + (A036869 (n + 1) + (A036872 (n + 1) - A036867 (n + 1)))

end

end A036870.P9661082592008805067

/-!
# A036871: Number of partitions of n such that cn(0,5) = cn(1,5) <= cn(2,5) = cn(3,5) = cn(4,5).

The programs for A036871, there is no canonical definition to state claims against.
-/

/-! ## A036871.P1805772536152955591

`A036866(n+1)+A036872(n+1)-A036867(n+1)`
-/

namespace A036871.P1805772536152955591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036866 (n + 1) + (A036872 (n + 1) - A036867 (n + 1))

end

end A036871.P1805772536152955591

/-! ## A036871.P16788273409089922871

`A036862(n+1)-A036863(n+1)`
-/

namespace A036871.P16788273409089922871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036862 (n + 1) - A036863 (n + 1)

end

end A036871.P16788273409089922871

/-! ## A036871.P13986190114598025065

`A036864(n+1)-A036867(n+1)`
-/

namespace A036871.P13986190114598025065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - A036867 (n + 1)

end

end A036871.P13986190114598025065

/-! ## A036871.P13745221668351383285

`A036850(n+1)+A036873(n+1)-A036853(n+1)`
-/

namespace A036871.P13745221668351383285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1) + (A036873 (n + 1) - A036853 (n + 1))

end

end A036871.P13745221668351383285

/-! ## A036871.P2273878145637218082

`A036855(n+1)+A036873(n+1)-A036857(n+1)`
-/

namespace A036871.P2273878145637218082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (n + 1) + (A036873 (n + 1) - A036857 (n + 1))

end

end A036871.P2273878145637218082

/-! ## A036871.P5560384340928154764

`A036864(n+1)-(A036876(n+1)+A036869(n+1))`
-/

namespace A036871.P5560384340928154764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036876 (n + 1) + A036869 (n + 1))

end

end A036871.P5560384340928154764

/-! ## A036871.P15346255430985263440

`A036866(n+1)+A036873(n+1)-A036869(n+1)`
-/

namespace A036871.P15346255430985263440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036866 (n + 1) + (A036873 (n + 1) - A036869 (n + 1))

end

end A036871.P15346255430985263440

/-! ## A036871.P9820584931538752974

`A036864(n+1)+A036867(n+1)*A118830(A017653(n))`
-/

namespace A036871.P9820584931538752974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) + A036867 (n + 1) * A118830 (A017653 n).toNat

end

end A036871.P9820584931538752974

/-! ## A036871.P7485895149500057926

`A036864(n+1)-(A036868(n+1)+A036876(n+1)-A036877(n+1))`
-/

namespace A036871.P7485895149500057926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036868 (n + 1) + (A036876 (n + 1) - A036877 (n + 1)))

end

end A036871.P7485895149500057926

/-!
# A036872: Number of partitions of n such that cn(0,5) = cn(1,5) < cn(3,5) <= cn(2,5) = cn(4,5).

The programs for A036872, there is no canonical definition to state claims against.
-/

/-! ## A036872.P11341896346659246701

`A036867(n+1)+A036871(n+1)-A036866(n+1)`
-/

namespace A036872.P11341896346659246701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) + (A036871 (n + 1) - A036866 (n + 1))

end

end A036872.P11341896346659246701

/-! ## A036872.P2152741366184095604

`A036876(n+1)+A036857(n+1)+A036871(n+1)-A036855(n+1)`
-/

namespace A036872.P2152741366184095604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (n + 1) + (A036857 (n + 1) + (A036871 (n + 1) - A036855 (n + 1)))

end

end A036872.P2152741366184095604

/-! ## A036872.P12912446037452735485

`A036876(n+1)+A036869(n+1)+A036871(n+1)-A036866(n+1)`
-/

namespace A036872.P12912446037452735485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (n + 1) + (A036869 (n + 1) + (A036871 (n + 1) - A036866 (n + 1)))

end

end A036872.P12912446037452735485

/-! ## A036872.P7481825753740033784

`A036876(n+1)+A036873(n+1)`
-/

namespace A036872.P7481825753740033784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (n + 1) + A036873 (n + 1)

end

end A036872.P7481825753740033784

/-! ## A036872.P12773732560842174761

`A036864(n+1)-A036866(n+1)`
-/

namespace A036872.P12773732560842174761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - A036866 (n + 1)

end

end A036872.P12773732560842174761

/-! ## A036872.P12152179704073042272

`A036864(n+1)+A036875(n+1)-A036865(n+1)`
-/

namespace A036872.P12152179704073042272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) + (A036875 (n + 1) - A036865 (n + 1))

end

end A036872.P12152179704073042272

/-! ## A036872.P2624901692999735327

`A036867(n+1)+A036873(n+1)-A036869(n+1)`
-/

namespace A036872.P2624901692999735327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) + (A036873 (n + 1) - A036869 (n + 1))

end

end A036872.P2624901692999735327

/-! ## A036872.P916661590176869570

`A036870(n+1)+A036876(n+1)-A036874(n+1)`
-/

namespace A036872.P916661590176869570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) + (A036876 (n + 1) - A036874 (n + 1))

end

end A036872.P916661590176869570

/-! ## A036872.P9283072474921030968

`A036864(n+1)-(A036855(n+1)+A036869(n+1)-A036857(n+1))`
-/

namespace A036872.P9283072474921030968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036855 (n + 1) + (A036869 (n + 1) - A036857 (n + 1)))

end

end A036872.P9283072474921030968

/-!
# A036873: Number of partitions of n such that cn(0,5) = cn(1,5) < cn(2,5) = cn(3,5) = cn(4,5).

The programs for A036873, there is no canonical definition to state claims against.
-/

/-! ## A036873.P6589012480975678405

`A036870(n+1)-A036874(n+1)`
-/

namespace A036873.P6589012480975678405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) - A036874 (n + 1)

end

end A036873.P6589012480975678405

/-! ## A036873.P8094225597751786757

`A036872(n+1)-A036876(n+1)`
-/

namespace A036873.P8094225597751786757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036872 (n + 1) - A036876 (n + 1)

end

end A036873.P8094225597751786757

/-! ## A036873.P10382246733496987770

`A036853(n+1)+A036871(n+1)-A036850(n+1)`
-/

namespace A036873.P10382246733496987770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1) + (A036871 (n + 1) - A036850 (n + 1))

end

end A036873.P10382246733496987770

/-! ## A036873.P3840578667236529216

`A036857(n+1)+A036871(n+1)-A036855(n+1)`
-/

namespace A036873.P3840578667236529216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036857 (n + 1) + (A036871 (n + 1) - A036855 (n + 1))

end

end A036873.P3840578667236529216

/-! ## A036873.P10047326105606028492

`A036864(n+1)-(A036876(n+1)+A036866(n+1))`
-/

namespace A036873.P10047326105606028492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036876 (n + 1) + A036866 (n + 1))

end

end A036873.P10047326105606028492

/-! ## A036873.P2676893081934989765

`A036869(n+1)+A036871(n+1)-A036866(n+1)`
-/

namespace A036873.P2676893081934989765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036869 (n + 1) + (A036871 (n + 1) - A036866 (n + 1))

end

end A036873.P2676893081934989765

/-! ## A036873.P1806765599374686716

`A036869(n+1)+A036872(n+1)-A036867(n+1)`
-/

namespace A036873.P1806765599374686716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036869 (n + 1) + (A036872 (n + 1) - A036867 (n + 1))

end

end A036873.P1806765599374686716

/-! ## A036873.P3561035517533319621

`A036871(n+1)+A036867(n+1)-(A036876(n+1)+A036866(n+1))`
-/

namespace A036873.P3561035517533319621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036871 (n + 1) + A036867 (n + 1) - (A036876 (n + 1) + A036866 (n + 1))

end

end A036873.P3561035517533319621

/-!
# A036874: Number of partitions of n such that cn(0,5) = cn(1,5) < cn(2,5) = cn(4,5) < cn(3,5).

The programs for A036874, there is no canonical definition to state claims against.
-/

/-! ## A036874.P14435924314138906581

`A036870(n+1)-A036873(n+1)`
-/

namespace A036874.P14435924314138906581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) - A036873 (n + 1)

end

end A036874.P14435924314138906581

/-! ## A036874.P9938752793057967817

`A036870(n+1)+A036876(n+1)-A036872(n+1)`
-/

namespace A036874.P9938752793057967817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) + (A036876 (n + 1) - A036872 (n + 1))

end

end A036874.P9938752793057967817

/-! ## A036874.P1202654814958287060

`A036870(n+1)-(A036853(n+1)+A036871(n+1)-A036850(n+1))`
-/

namespace A036874.P1202654814958287060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) - (A036853 (n + 1) + (A036871 (n + 1) - A036850 (n + 1)))

end

end A036874.P1202654814958287060

/-! ## A036874.P692414862902052324

`A036870(n+1)-(A036857(n+1)+A036871(n+1)-A036855(n+1))`
-/

namespace A036874.P692414862902052324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) - (A036857 (n + 1) + (A036871 (n + 1) - A036855 (n + 1)))

end

end A036874.P692414862902052324

/-! ## A036874.P13028195620760568493

`A036870(n+1)-(A036864(n+1)-(A036876(n+1)+A036866(n+1)))`
-/

namespace A036874.P13028195620760568493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) - (A036864 (n + 1) - (A036876 (n + 1) + A036866 (n + 1)))

end

end A036874.P13028195620760568493

/-! ## A036874.P9204523375875614618

`A036870(n+1)-(A036869(n+1)+A036871(n+1)-A036866(n+1))`
-/

namespace A036874.P9204523375875614618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) - (A036869 (n + 1) + (A036871 (n + 1) - A036866 (n + 1)))

end

end A036874.P9204523375875614618

/-! ## A036874.P7131510898197924175

`A036870(n+1)-(A036869(n+1)+A036872(n+1)-A036867(n+1))`
-/

namespace A036874.P7131510898197924175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (n + 1) - (A036869 (n + 1) + (A036872 (n + 1) - A036867 (n + 1)))

end

end A036874.P7131510898197924175

/-!
# A036875: Number of partitions of n such that cn(3,5) < cn(0,5) = cn(1,5) <= cn(2,5) = cn(4,5).

The programs for A036875, there is no canonical definition to state claims against.
-/

/-! ## A036875.P9127733269206555376

`A036865(n+1)-A036866(n+1)`
-/

namespace A036875.P9127733269206555376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) - A036866 (n + 1)

end

end A036875.P9127733269206555376

/-! ## A036875.P17548413267041628278

`A036865(n+1)+A036872(n+1)-(A036871(n+1)+A036867(n+1))`
-/

namespace A036875.P17548413267041628278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) + (A036872 (n + 1) - (A036871 (n + 1) + A036867 (n + 1)))

end

end A036875.P17548413267041628278

/-! ## A036875.P17442804046330078083

`A036865(n+1)-(A036850(n+1)+A036869(n+1)-A036853(n+1))`
-/

namespace A036875.P17442804046330078083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) - (A036850 (n + 1) + (A036869 (n + 1) - A036853 (n + 1)))

end

end A036875.P17442804046330078083

/-! ## A036875.P6294325003123420053

`A036865(n+1)-(A036855(n+1)+A036869(n+1)-A036857(n+1))`
-/

namespace A036875.P6294325003123420053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) - (A036855 (n + 1) + (A036869 (n + 1) - A036857 (n + 1)))

end

end A036875.P6294325003123420053

/-! ## A036875.P974423677988176436

`A036865(n+1)+A036872(n+1)-A036864(n+1)`
-/

namespace A036875.P974423677988176436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) + (A036872 (n + 1) - A036864 (n + 1))

end

end A036875.P974423677988176436

/-! ## A036875.P7366574183285725829

`A036865(n+1)-(A036864(n+1)-(A036876(n+1)+A036873(n+1)))`
-/

namespace A036875.P7366574183285725829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) - (A036864 (n + 1) - (A036876 (n + 1) + A036873 (n + 1)))

end

end A036875.P7366574183285725829

/-! ## A036875.P2443599149928783982

`A036865(n+1)-(A036869(n+1)+A036871(n+1)-A036873(n+1))`
-/

namespace A036875.P2443599149928783982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (n + 1) - (A036869 (n + 1) + (A036871 (n + 1) - A036873 (n + 1)))

end

end A036875.P2443599149928783982

/-!
# A036876: Number of partitions of n such that cn(0,5) = cn(1,5) < cn(3,5) < cn(2,5) = cn(4,5).

The programs for A036876, there is no canonical definition to state claims against.
-/

/-! ## A036876.P2966643392075913501

`A036867(n+1)-A036869(n+1)`
-/

namespace A036876.P2966643392075913501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) - A036869 (n + 1)

end

end A036876.P2966643392075913501

/-! ## A036876.P1421220579643918547

`A036867(n+1)+A036877(n+1)-A036868(n+1)`
-/

namespace A036876.P1421220579643918547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) + (A036877 (n + 1) - A036868 (n + 1))

end

end A036876.P1421220579643918547

/-! ## A036876.P13369047086098876859

`A036867(n+1)+A036869(n+1)*A118830(A017653(n))`
-/

namespace A036876.P13369047086098876859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (n + 1) + A036869 (n + 1) * A118830 (A017653 n).toNat

end

end A036876.P13369047086098876859

/-! ## A036876.P17638052393581420925

`A036872(n+1)-A036873(n+1)`
-/

namespace A036876.P17638052393581420925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036872 (n + 1) - A036873 (n + 1)

end

end A036876.P17638052393581420925

/-! ## A036876.P16201377632114306776

`A036864(n+1)-(A036871(n+1)+A036869(n+1))`
-/

namespace A036876.P16201377632114306776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036871 (n + 1) + A036869 (n + 1))

end

end A036876.P16201377632114306776

/-! ## A036876.P13620409197745685922

`A036864(n+1)-(A036873(n+1)+A036866(n+1))`
-/

namespace A036876.P13620409197745685922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - (A036873 (n + 1) + A036866 (n + 1))

end

end A036876.P13620409197745685922

/-! ## A036876.P12642409075152294503

`A036872(n+1)+A036874(n+1)-A036870(n+1)`
-/

namespace A036876.P12642409075152294503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036872 (n + 1) + (A036874 (n + 1) - A036870 (n + 1))

end

end A036876.P12642409075152294503

/-! ## A036876.P14728195525380933501

`A036863(n+1)+A036864(n+1)-A036862(n+1)-A036869(n+1)`
-/

namespace A036876.P14728195525380933501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036863 (n + 1) + (A036864 (n + 1) - A036862 (n + 1)) - A036869 (n + 1)

end

end A036876.P14728195525380933501

/-! ## A036876.P12017720457816495655

`A036864(n+1)-A036871(n+1)+A036877(n+1)-A036868(n+1)`
-/

namespace A036876.P12017720457816495655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1) - A036871 (n + 1) + (A036877 (n + 1) - A036868 (n + 1))

end

end A036876.P12017720457816495655

/-!
# A036877: Number of partitions of n such that cn(3,5) < cn(0,5) = cn(1,5) < cn(2,5) = cn(4,5).

The programs for A036877, there is no canonical definition to state claims against.
-/

/-! ## A036877.P12131564017965834045

`A036868(n+1)-A036869(n+1)`
-/

namespace A036877.P12131564017965834045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) - A036869 (n + 1)

end

end A036877.P12131564017965834045

/-! ## A036877.P17335881877299587427

`A036868(n+1)+A036876(n+1)-A036867(n+1)`
-/

namespace A036877.P17335881877299587427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) + (A036876 (n + 1) - A036867 (n + 1))

end

end A036877.P17335881877299587427

/-! ## A036877.P15233776824821764667

`A036868(n+1)-(A036853(n+1)+A036866(n+1)-A036850(n+1))`
-/

namespace A036877.P15233776824821764667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) - (A036853 (n + 1) + (A036866 (n + 1) - A036850 (n + 1)))

end

end A036877.P15233776824821764667

/-! ## A036877.P4380880746497816205

`A036868(n+1)-(A036857(n+1)+A036866(n+1)-A036855(n+1))`
-/

namespace A036877.P4380880746497816205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) - (A036857 (n + 1) + (A036866 (n + 1) - A036855 (n + 1)))

end

end A036877.P4380880746497816205

/-! ## A036877.P6517404991920007718

`A036868(n+1)-(A036864(n+1)-(A036876(n+1)+A036871(n+1)))`
-/

namespace A036877.P6517404991920007718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) - (A036864 (n + 1) - (A036876 (n + 1) + A036871 (n + 1)))

end

end A036877.P6517404991920007718

/-! ## A036877.P6297158435112775174

`A036868(n+1)-(A036866(n+1)+A036873(n+1)-A036871(n+1))`
-/

namespace A036877.P6297158435112775174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) - (A036866 (n + 1) + (A036873 (n + 1) - A036871 (n + 1)))

end

end A036877.P6297158435112775174

/-! ## A036877.P3124081068071667027

`A036868(n+1)-(A036867(n+1)+A036873(n+1)-A036872(n+1))`
-/

namespace A036877.P3124081068071667027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036868 (n + 1) - (A036867 (n + 1) + (A036873 (n + 1) - A036872 (n + 1)))

end

end A036877.P3124081068071667027

/-!
# A036878: a(n) = p^(p-1) where p = prime(n).

The programs for A036878, there is no canonical definition to state claims against.
-/

/-! ## A036878.P16075297255386254104

`record[∑{p}[n+2, #^(#-1)]]`
-/

namespace A036878.P16075297255386254104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (p : ℚ) ^ ((p : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036878.P16075297255386254104

/-! ## A036878.P15349957402309297386

`record[A036879(n+2)]`
-/

namespace A036878.P15349957402309297386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036878.P15349957402309297386

/-! ## A036878.P5210693554719277446

`record[A020639(n+2)^(n+1)]`
-/

namespace A036878.P5210693554719277446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036878.P5210693554719277446

/-! ## A036878.P1981566068050656928

`∏{d}[A000040(n+1), #^(#-1)]`
-/

namespace A036878.P1981566068050656928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A036878.P1981566068050656928

/-! ## A036878.P10930337263422539112

`A000169(A000040(n+1))`
-/

namespace A036878.P10930337263422539112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (A000040 (n + 1)).toNat

end

end A036878.P10930337263422539112

/-!
# A036879: If n = (p_1)^(m_1)...(p_k)^(m_k) then a(n) = (p_1)^((p_1)^(m_1) - 1)...(p_k)((p_k)^(m_k) - 1).

The programs for A036879, there is no canonical definition to state claims against.
-/

/-! ## A036879.P221433582570310204

`∏{d}[n+1, A014963(#)^A000010(#)]`
-/

namespace A036879.P221433582570310204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A014963 d : ℚ) ^ (A000010 d : ℤ)

end

end A036879.P221433582570310204

/-! ## A036879.P10907845980603031723

`A121075(A269939(n))+A121067(n+1)`
-/

namespace A036879.P10907845980603031723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121075 (A269939 n).toNat + A121067 (n + 1)

end

end A036879.P10907845980603031723

/-! ## A036879.P1774577277868266475

`A129194((n+1)^A322942(n))`
-/

namespace A036879.P1774577277868266475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A322942 n : ℤ))).toNat

end

end A036879.P1774577277868266475

/-!
# A036880: Number of partitions of 5n such that cn(0,5) <= cn(1,5) = cn(4,5) <= cn(2,5) = cn(3,5).

The programs for A036880, there is no canonical definition to state claims against.
-/

/-! ## A036880.P17208908267548785441

`A036884(n+1)+A036888(n+1)`
-/

namespace A036880.P17208908267548785441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + A036888 (n + 1)

end

end A036880.P17208908267548785441

/-! ## A036880.P10410023293942901266

`A202087(n+1)+A036883(n+1)`
-/

namespace A036880.P10410023293942901266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202087 (n + 1) + A036883 (n + 1)

end

end A036880.P10410023293942901266

/-! ## A036880.P6976311956075576026

`A036884(n+1)+A202088(n+1)+A036893(n+1)`
-/

namespace A036880.P6976311956075576026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + (A202088 (n + 1) + A036893 (n + 1))

end

end A036880.P6976311956075576026

/-! ## A036880.P16198417308782167075

`A036886(n+1)+A202087(n+1)+A036893(n+1)`
-/

namespace A036880.P16198417308782167075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036886 (n + 1) + (A202087 (n + 1) + A036893 (n + 1))

end

end A036880.P16198417308782167075

/-! ## A036880.P3529923712883321554

`A046776(n+1)+A036886(n+1)+A202088(n+1)+A036893(n+1)`
-/

namespace A036880.P3529923712883321554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 (n + 1) + A036886 (n + 1) + (A202088 (n + 1) + A036893 (n + 1))

end

end A036880.P3529923712883321554

/-!
# A036881: Number of partitions of 5n such that cn(1,5) = cn(4,5) <= cn(0,5) <= cn(2,5) = cn(3,5).

The programs for A036881, there is no canonical definition to state claims against.
-/

/-! ## A036881.P8648881033626711029

`A036884(n+1)+A036890(n+1)`
-/

namespace A036881.P8648881033626711029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + A036890 (n + 1)

end

end A036881.P8648881033626711029

/-! ## A036881.P13416778117934816108

`A036889(n+1)+A036885(n+1)`
-/

namespace A036881.P13416778117934816108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036889 (n + 1) + A036885 (n + 1)

end

end A036881.P13416778117934816108

/-! ## A036881.P8563788086594948157

`A036884(n+1)+A036894(n+1)+A036892(n+1)`
-/

namespace A036881.P8563788086594948157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + (A036894 (n + 1) + A036892 (n + 1))

end

end A036881.P8563788086594948157

/-! ## A036881.P10648213341016341033

`A036886(n+1)+A036894(n+1)+A036889(n+1)`
-/

namespace A036881.P10648213341016341033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036886 (n + 1) + (A036894 (n + 1) + A036889 (n + 1))

end

end A036881.P10648213341016341033

/-! ## A036881.P16275964591527175515

`A036885(n+1)+A046776(n+1)+A036892(n+1)`
-/

namespace A036881.P16275964591527175515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036885 (n + 1) + (A046776 (n + 1) + A036892 (n + 1))

end

end A036881.P16275964591527175515

/-!
# A036882: Number of partitions of 5n such that cn(1,5) = cn(4,5) <= cn(2,5) = cn(3,5) <= cn(0,5).

The programs for A036882, there is no canonical definition to state claims against.
-/

/-! ## A036882.P13834826087399087923

`A036889(A000007(n)+n)+A036887(A000007(n)+n)`
-/

namespace A036882.P13834826087399087923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036889 (A000007 n + (n : ℤ)).toNat + A036887 (A000007 n + (n : ℤ)).toNat

end

end A036882.P13834826087399087923

/-! ## A036882.P11173978059599715547

`∑[A097330(2^n+n)]-n`
-/

namespace A036882.P11173978059599715547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097330 (2 ^ n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A036882.P11173978059599715547

/-! ## A036882.P12595065623843950197

`A057142(A366221(n))`
-/

namespace A036882.P12595065623843950197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A366221 n).toNat

end

end A036882.P12595065623843950197

/-!
# A036883: Number of partitions of 5n such that cn(0,5) <= cn(1,5) = cn(4,5) < cn(2,5) = cn(3,5).

The programs for A036883, there is no canonical definition to state claims against.
-/

/-! ## A036883.P18281538241896383835

`A036886(n+1)+A036893(n+1)`
-/

namespace A036883.P18281538241896383835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036886 (n + 1) + A036893 (n + 1)

end

end A036883.P18281538241896383835

/-! ## A036883.P9618876564889182567

`A036880(n+1)-A202087(n+1)`
-/

namespace A036883.P9618876564889182567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036880 (n + 1) - A202087 (n + 1)

end

end A036883.P9618876564889182567

/-! ## A036883.P15958508220487762358

`A036885(n+1)+A036893(n+1)-A036894(n+1)`
-/

namespace A036883.P15958508220487762358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036885 (n + 1) + (A036893 (n + 1) - A036894 (n + 1))

end

end A036883.P15958508220487762358

/-! ## A036883.P5114812231416707127

`A036884(n+1)+A036893(n+1)-A046776(n+1)`
-/

namespace A036883.P5114812231416707127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + (A036893 (n + 1) - A046776 (n + 1))

end

end A036883.P5114812231416707127

/-! ## A036883.P14228357258576074249

`A036884(n+1)+A036888(n+1)-A202087(n+1)`
-/

namespace A036883.P14228357258576074249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + (A036888 (n + 1) - A202087 (n + 1))

end

end A036883.P14228357258576074249

/-!
# A036884: Number of partitions of 5n such that cn(0,5) = cn(1,5) = cn(4,5) <= cn(2,5) = cn(3,5).

The programs for A036884, there is no canonical definition to state claims against.
-/

/-! ## A036884.P10113344874507634636

`A046776(n+1)+A036886(n+1)`
-/

namespace A036884.P10113344874507634636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 (n + 1) + A036886 (n + 1)

end

end A036884.P10113344874507634636

/-! ## A036884.P11463631344657977086

`A036880(n+1)-A036888(n+1)`
-/

namespace A036884.P11463631344657977086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036880 (n + 1) - A036888 (n + 1)

end

end A036884.P11463631344657977086

/-! ## A036884.P7561078639273171324

`A036881(n+1)-A036890(n+1)`
-/

namespace A036884.P7561078639273171324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036881 (n + 1) - A036890 (n + 1)

end

end A036884.P7561078639273171324

/-! ## A036884.P5451913740161395416

`A036885(n+1)+A036889(n+1)-A036890(n+1)`
-/

namespace A036884.P5451913740161395416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036885 (n + 1) + (A036889 (n + 1) - A036890 (n + 1))

end

end A036884.P5451913740161395416

/-! ## A036884.P15718005550003164258

`A036886(n+1)+A036889(n+1)-A036892(n+1)`
-/

namespace A036884.P15718005550003164258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036886 (n + 1) + (A036889 (n + 1) - A036892 (n + 1))

end

end A036884.P15718005550003164258

/-!
# A036885: Number of partitions of 5n such that cn(1,5) = cn(4,5) <= cn(0,5) < cn(2,5) = cn(3,5).

The programs for A036885, there is no canonical definition to state claims against.
-/

/-! ## A036885.P8791251768292030590

`A036886(n+1)+A036894(n+1)`
-/

namespace A036885.P8791251768292030590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036886 (n + 1) + A036894 (n + 1)

end

end A036885.P8791251768292030590

/-! ## A036885.P7414178568048807789

`A036881(n+1)-A036889(n+1)`
-/

namespace A036885.P7414178568048807789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036881 (n + 1) - A036889 (n + 1)

end

end A036885.P7414178568048807789

/-! ## A036885.P1808860799821274632

`A036884(n+1)+A036890(n+1)-A036889(n+1)`
-/

namespace A036885.P1808860799821274632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + (A036890 (n + 1) - A036889 (n + 1))

end

end A036885.P1808860799821274632

/-! ## A036885.P8198259933206188218

`A036886(n+1)+A036890(n+1)-A036892(n+1)`
-/

namespace A036885.P8198259933206188218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036886 (n + 1) + (A036890 (n + 1) - A036892 (n + 1))

end

end A036885.P8198259933206188218

/-! ## A036885.P10645095204138756112

`A036884(n+1)+A036894(n+1)-A046776(n+1)`
-/

namespace A036885.P10645095204138756112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + (A036894 (n + 1) - A046776 (n + 1))

end

end A036885.P10645095204138756112

/-!
# A036886: Number of partitions of 5n such that cn(0,5) = cn(1,5) = cn(4,5) < cn(2,5) = cn(3,5).

The programs for A036886, there is no canonical definition to state claims against.
-/

/-! ## A036886.P14630320730475607156

`A036885(n+1)-A036894(n+1)`
-/

namespace A036886.P14630320730475607156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036885 (n + 1) - A036894 (n + 1)

end

end A036886.P14630320730475607156

/-! ## A036886.P5683173738020494046

`A036884(n+1)-A046776(n+1)`
-/

namespace A036886.P5683173738020494046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) - A046776 (n + 1)

end

end A036886.P5683173738020494046

/-! ## A036886.P14931231545717174636

`A036883(n+1)-A036893(n+1)`
-/

namespace A036886.P14931231545717174636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036883 (n + 1) - A036893 (n + 1)

end

end A036886.P14931231545717174636

/-! ## A036886.P7592480853888308449

`A036884(n+1)+A036892(n+1)-A036889(n+1)`
-/

namespace A036886.P7592480853888308449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1) + (A036892 (n + 1) - A036889 (n + 1))

end

end A036886.P7592480853888308449

/-! ## A036886.P14471281666117876610

`A036885(n+1)+A036892(n+1)-A036890(n+1)`
-/

namespace A036886.P14471281666117876610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036885 (n + 1) + (A036892 (n + 1) - A036890 (n + 1))

end

end A036886.P14471281666117876610

/-!
# A036887: Number of partitions of 5n such that cn(1,5) = cn(4,5) <= cn(2,5) = cn(3,5) < cn(0,5).

The programs for A036887, there is no canonical definition to state claims against.
-/

/-! ## A036887.P14354467661278617846

`A202086(n+1)+A036895(n+1)`
-/

namespace A036887.P14354467661278617846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202086 (n + 1) + A036895 (n + 1)

end

end A036887.P14354467661278617846

/-! ## A036887.P15870009347679362027

`A036882(n+1)-A036889(n+1)`
-/

namespace A036887.P15870009347679362027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036882 (n + 1) - A036889 (n + 1)

end

end A036887.P15870009347679362027

/-! ## A036887.P3349487526357282585

`A036895(n+1)+record[A046775(n)]-A202087(n+1)`
-/

namespace A036887.P3349487526357282585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036895 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A202087 (n + 1))

end

end A036887.P3349487526357282585

/-! ## A036887.P13062192865280999624

`A036882(n+1)-(A046776(n+1)+A036892(n+1))`
-/

namespace A036887.P13062192865280999624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036882 (n + 1) - (A046776 (n + 1) + A036892 (n + 1))

end

end A036887.P13062192865280999624

/-! ## A036887.P8064385610177842222

`A036891(n+1)+A202085(n+1)-A036889(n+1)`
-/

namespace A036887.P8064385610177842222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036891 (n + 1) + (A202085 (n + 1) - A036889 (n + 1))

end

end A036887.P8064385610177842222

/-!
# A036888: Number of partitions of 5n such that cn(0,5) < cn(1,5) = cn(4,5) <= cn(2,5) = cn(3,5).

The programs for A036888, there is no canonical definition to state claims against.
-/

/-! ## A036888.P14564284523607504365

`A202088(n+1)+A036893(n+1)`
-/

namespace A036888.P14564284523607504365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202088 (n + 1) + A036893 (n + 1)

end

end A036888.P14564284523607504365

/-! ## A036888.P13585002597887196293

`A036880(n+1)-A036884(n+1)`
-/

namespace A036888.P13585002597887196293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036880 (n + 1) - A036884 (n + 1)

end

end A036888.P13585002597887196293

/-! ## A036888.P13968369244562777986

`A036880(n+1)+A036890(n+1)-A036881(n+1)`
-/

namespace A036888.P13968369244562777986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036880 (n + 1) + (A036890 (n + 1) - A036881 (n + 1))

end

end A036888.P13968369244562777986

/-! ## A036888.P4206214697219366040

`A036880(n+1)-(A046776(n+1)+A036886(n+1))`
-/

namespace A036888.P4206214697219366040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036880 (n + 1) - (A046776 (n + 1) + A036886 (n + 1))

end

end A036888.P4206214697219366040

/-! ## A036888.P9773865357725570516

`A036883(n+1)+A202087(n+1)-A036884(n+1)`
-/

namespace A036888.P9773865357725570516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036883 (n + 1) + (A202087 (n + 1) - A036884 (n + 1))

end

end A036888.P9773865357725570516

/-!
# A036889: Number of partitions of 5n such that cn(1,5) = cn(4,5) <= cn(0,5) = cn(2,5) = cn(3,5).

The programs for A036889, there is no canonical definition to state claims against.
-/

/-! ## A036889.P17075708304873258107

`A046776(n+1)+A036892(n+1)`
-/

namespace A036889.P17075708304873258107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046776 (n + 1) + A036892 (n + 1)

end

end A036889.P17075708304873258107

/-! ## A036889.P2536822549329427015

`A036882(n+1)-A036887(n+1)`
-/

namespace A036889.P2536822549329427015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036882 (n + 1) - A036887 (n + 1)

end

end A036889.P2536822549329427015

/-! ## A036889.P1431093043456154576

`A036881(n+1)-A036885(n+1)`
-/

namespace A036889.P1431093043456154576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036881 (n + 1) - A036885 (n + 1)

end

end A036889.P1431093043456154576

/-! ## A036889.P17997580296666892794

`A036890(n+1)+A046776(n+1)-A036894(n+1)`
-/

namespace A036889.P17997580296666892794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036890 (n + 1) + (A046776 (n + 1) - A036894 (n + 1))

end

end A036889.P17997580296666892794

/-! ## A036889.P15177599689759020398

`A036892(n+1)+A202087(n+1)-A202088(n+1)`
-/

namespace A036889.P15177599689759020398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036892 (n + 1) + (A202087 (n + 1) - A202088 (n + 1))

end

end A036889.P15177599689759020398

/-!
# A036890: Number of partitions of 5n such that cn(1,5) = cn(4,5) < cn(0,5) <= cn(2,5) = cn(3,5).

The programs for A036890, there is no canonical definition to state claims against.
-/

/-! ## A036890.P10303791024452379337

`A036892(n+1)+A036894(n+1)`
-/

namespace A036890.P10303791024452379337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036892 (n + 1) + A036894 (n + 1)

end

end A036890.P10303791024452379337

/-! ## A036890.P527968383468154832

`A036881(n+1)-A036884(n+1)`
-/

namespace A036890.P527968383468154832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036881 (n + 1) - A036884 (n + 1)

end

end A036890.P527968383468154832

/-! ## A036890.P653893035133369968

`A036889(n+1)+A036894(n+1)-A046776(n+1)`
-/

namespace A036890.P653893035133369968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036889 (n + 1) + (A036894 (n + 1) - A046776 (n + 1))

end

end A036890.P653893035133369968

/-! ## A036890.P10845108978450298048

`A036894(n+1)+A036889(n+1)+A202088(n+1)-A202087(n+1)`
-/

namespace A036890.P10845108978450298048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036894 (n + 1) + (A036889 (n + 1) + (A202088 (n + 1) - A202087 (n + 1)))

end

end A036890.P10845108978450298048

/-! ## A036890.P18269656212807880323

`A036885(n+1)+A036889(n+1)-A036884(n+1)`
-/

namespace A036890.P18269656212807880323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036885 (n + 1) + (A036889 (n + 1) - A036884 (n + 1))

end

end A036890.P18269656212807880323

/-!
# A036891: Number of partitions of 5n such that cn(1,5) = cn(4,5) < cn(2,5) = cn(3,5) <= cn(0,5).

The programs for A036891, there is no canonical definition to state claims against.
-/

/-! ## A036891.P12916311039561105569

`A036892(n+1)+A036895(n+1)`
-/

namespace A036891.P12916311039561105569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036892 (n + 1) + A036895 (n + 1)

end

end A036891.P12916311039561105569

/-! ## A036891.P12846442824271025461

`A036882(n+1)-A202085(n+1)`
-/

namespace A036891.P12846442824271025461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036882 (n + 1) - A202085 (n + 1)

end

end A036891.P12846442824271025461

/-! ## A036891.P12344923583145816668

`A036890(n+1)+A036895(n+1)-A036894(n+1)`
-/

namespace A036891.P12344923583145816668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036890 (n + 1) + (A036895 (n + 1) - A036894 (n + 1))

end

end A036891.P12344923583145816668

/-! ## A036891.P6869217849110841558

`A036889(n+1)+A036895(n+1)-A046776(n+1)`
-/

namespace A036891.P6869217849110841558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036889 (n + 1) + (A036895 (n + 1) - A046776 (n + 1))

end

end A036891.P6869217849110841558

/-! ## A036891.P11933458482448224282

`A036887(n+1)+A036889(n+1)-A202085(n+1)`
-/

namespace A036891.P11933458482448224282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036887 (n + 1) + (A036889 (n + 1) - A202085 (n + 1))

end

end A036891.P11933458482448224282

/-!
# A036892: Number of partitions of 5n such that cn(1,5) = cn(4,5) < cn(0,5) = cn(2,5) = cn(3,5).

The programs for A036892, there is no canonical definition to state claims against.
-/

/-! ## A036892.P9849184892720001687

`A036890(n+1)-A036894(n+1)`
-/

namespace A036892.P9849184892720001687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036890 (n + 1) - A036894 (n + 1)

end

end A036892.P9849184892720001687

/-! ## A036892.P3031903809806051216

`A036889(n+1)-A046776(n+1)`
-/

namespace A036892.P3031903809806051216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036889 (n + 1) - A046776 (n + 1)

end

end A036892.P3031903809806051216

/-! ## A036892.P7609732164761374025

`A036891(n+1)-A036895(n+1)`
-/

namespace A036892.P7609732164761374025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036891 (n + 1) - A036895 (n + 1)

end

end A036892.P7609732164761374025

/-! ## A036892.P3572738714737239378

`A036889(n+1)+A202088(n+1)-A202087(n+1)`
-/

namespace A036892.P3572738714737239378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036889 (n + 1) + (A202088 (n + 1) - A202087 (n + 1))

end

end A036892.P3572738714737239378

/-! ## A036892.P12969570282157477844

`A036890(n+1)+A008683(A007918(n))*A036894(n+1)`
-/

namespace A036892.P12969570282157477844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036890 (n + 1) + A008683 (A007918 n).toNat * A036894 (n + 1)

end

end A036892.P12969570282157477844

/-!
# A036893: Number of partitions of 5n such that cn(0,5) < cn(1,5) = cn(4,5) < cn(2,5) = cn(3,5).

The programs for A036893, there is no canonical definition to state claims against.
-/

/-! ## A036893.P7128739093711708309

`A036883(n+1)-A036886(n+1)`
-/

namespace A036893.P7128739093711708309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036883 (n + 1) - A036886 (n + 1)

end

end A036893.P7128739093711708309

/-! ## A036893.P17050522064761835088

`A036888(n+1)-A202088(n+1)`
-/

namespace A036893.P17050522064761835088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036888 (n + 1) - A202088 (n + 1)

end

end A036893.P17050522064761835088

/-! ## A036893.P4333573584707067873

`A036880(n+1)-(A202087(n+1)+A036886(n+1))`
-/

namespace A036893.P4333573584707067873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036880 (n + 1) - (A202087 (n + 1) + A036886 (n + 1))

end

end A036893.P4333573584707067873

/-! ## A036893.P11644284299033531196

`A036880(n+1)-(A202088(n+1)+A036884(n+1))`
-/

namespace A036893.P11644284299033531196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036880 (n + 1) - (A202088 (n + 1) + A036884 (n + 1))

end

end A036893.P11644284299033531196

/-! ## A036893.P230706160983109075

`A036880(n+1)-(A046776(n+1)+A036886(n+1))-A202088(n+1)`
-/

namespace A036893.P230706160983109075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036880 (n + 1) - (A046776 (n + 1) + A036886 (n + 1)) - A202088 (n + 1)

end

end A036893.P230706160983109075

/-!
# A036894: Number of partitions of 5n such that cn(1,5) = cn(4,5) < cn(0,5) < cn(2,5) = cn(3,5).

The programs for A036894, there is no canonical definition to state claims against.
-/

/-! ## A036894.P6423025107087141500

`A036890(n+1)-A036892(n+1)`
-/

namespace A036894.P6423025107087141500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036890 (n + 1) - A036892 (n + 1)

end

end A036894.P6423025107087141500

/-! ## A036894.P16537437122842628753

`A036885(n+1)-A036886(n+1)`
-/

namespace A036894.P16537437122842628753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036885 (n + 1) - A036886 (n + 1)

end

end A036894.P16537437122842628753

/-! ## A036894.P4288365912388903480

`A036890(n+1)+A046776(n+1)-A036889(n+1)`
-/

namespace A036894.P4288365912388903480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036890 (n + 1) + (A046776 (n + 1) - A036889 (n + 1))

end

end A036894.P4288365912388903480

/-! ## A036894.P5478748676562380064

`(A036890(n+1)+A036882(n))%(A036892(n+1)+A036882(n))`
-/

namespace A036894.P5478748676562380064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036890 (n + 1) + A036882 n) (A036892 (n + 1) + A036882 n)

end

end A036894.P5478748676562380064

/-! ## A036894.P6030622398176726247

`A036890(n+1)-(A036889(n+1)+A202088(n+1)-A202087(n+1))`
-/

namespace A036894.P6030622398176726247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036890 (n + 1) - (A036889 (n + 1) + (A202088 (n + 1) - A202087 (n + 1)))

end

end A036894.P6030622398176726247

/-!
# A036895: Number of partitions of 5n such that cn(1,5) = cn(4,5) < cn(2,5) = cn(3,5) < cn(0,5).

The programs for A036895, there is no canonical definition to state claims against.
-/

/-! ## A036895.P4204834515724849002

`A036891(n+1)-A036892(n+1)`
-/

namespace A036895.P4204834515724849002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036891 (n + 1) - A036892 (n + 1)

end

end A036895.P4204834515724849002

/-! ## A036895.P12589304375676083020

`A036887(n+1)-A202086(n+1)`
-/

namespace A036895.P12589304375676083020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036887 (n + 1) - A202086 (n + 1)

end

end A036895.P12589304375676083020

/-! ## A036895.P16837266696445040218

`A036882(n+1)-(A036889(n+1)+A202192(n+1)-A202087(n+1))`
-/

namespace A036895.P16837266696445040218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036882 (n + 1) - (A036889 (n + 1) + (A202192 (n + 1) - A202087 (n + 1)))

end

end A036895.P16837266696445040218

/-! ## A036895.P2333639449663698441

`A036887(n+1)-(record[A046775(n)]-A202087(n+1))`
-/

namespace A036895.P2333639449663698441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036887 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A202087 (n + 1))

end

end A036895.P2333639449663698441

/-! ## A036895.P4775537787957933692

`A036891(n+1)+A036894(n+1)-A036890(n+1)`
-/

namespace A036895.P4775537787957933692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036891 (n + 1) + (A036894 (n + 1) - A036890 (n + 1))

end

end A036895.P4775537787957933692

/-!
# A036896: Odd refactorable numbers.

The programs for A036896, there is no canonical definition to state claims against.
-/

/-! ## A036896.P9182130205780544318

`record[A000265(sqrt(A181795(n+1)))²]`
-/

namespace A036896.P9182130205780544318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A181795 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036896.P9182130205780544318

/-! ## A036896.P2883513827466721755

`∩[A161493(n+1), A280353(n+1)]`
-/

namespace A036896.P2883513827466721755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P2883513827466721755

/-! ## A036896.P11837973378298981961

`∩[A161493(n+1), A322797(n+1)]`
-/

namespace A036896.P11837973378298981961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P11837973378298981961

/-! ## A036896.P5543863540885543754

`∩[A280353(n+1), A016754(n)]`
-/

namespace A036896.P5543863540885543754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P5543863540885543754

/-! ## A036896.P4701710872593785968

`∩[A322797(n+1), A016754(n)]`
-/

namespace A036896.P4701710872593785968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P4701710872593785968

/-! ## A036896.P15617481052617866574

`∩[A075109(n+1), A280353(n+1)]`
-/

namespace A036896.P15617481052617866574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P15617481052617866574

/-! ## A036896.P16348218089795266276

`∩[A075109(n+1), A322797(n+1)]`
-/

namespace A036896.P16348218089795266276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P16348218089795266276

/-! ## A036896.P5441693989936909211

`A036897(n+1)²`
-/

namespace A036896.P5441693989936909211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036897 (n + 1) ^ 2

end

end A036896.P5441693989936909211

/-! ## A036896.P17019582607707293315

`A036897(n+1)^A020639(A057265(n+1))`
-/

namespace A036896.P17019582607707293315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036897 (n + 1) : ℚ) ^ (A020639 (A057265 (n + 1)).toNat : ℤ)

end

end A036896.P17019582607707293315

/-! ## A036896.P6125730622987377300

`A036897(n+1)%A089894(n)*A036897(n+1)`
-/

namespace A036896.P6125730622987377300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036897 (n + 1)) (A089894 n) * A036897 (n + 1)

end

end A036896.P6125730622987377300

/-! ## A036896.P17717065821407227296

`A036897(n+1)^A085058(Δ[A036897(n+1)])`
-/

namespace A036896.P17717065821407227296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036897 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036897 (n + 1) : ℚ) ^ (A085058 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A036896.P17717065821407227296

/-! ## A036896.P9577438122531573269

`∩[A016754(n), A036907(n+1)]`
-/

namespace A036896.P9577438122531573269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P9577438122531573269

/-! ## A036896.P7302563708197045805

`record[A093178(sqrt(A036907(n+1)))²]`
-/

namespace A036896.P7302563708197045805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.roundAway (Real.sqrt (A036907 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036896.P7302563708197045805

/-! ## A036896.P4500321322362075873

`record[A093411(sqrt(A036907(n+1)))²]`
-/

namespace A036896.P4500321322362075873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (SequenceMachineLib.roundAway (Real.sqrt (A036907 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036896.P4500321322362075873

/-! ## A036896.P9053582476196873613

`∩[A036907(n+1), A075109(n+1)]`
-/

namespace A036896.P9053582476196873613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P9053582476196873613

/-! ## A036896.P279406509053111718

`∩[A036907(n+1), A161493(n+1)]`
-/

namespace A036896.P279406509053111718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P279406509053111718

/-! ## A036896.P14786421613951880616

`∩[A036907(n+1), A277925(n+1)]`
-/

namespace A036896.P14786421613951880616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P14786421613951880616

/-! ## A036896.P4954525431370406732

`∩[A036907(n+1), A062739(n+1)]`
-/

namespace A036896.P4954525431370406732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P4954525431370406732

/-! ## A036896.P215278000982838957

`∩[A062739(n+1), A280353(n+1)]`
-/

namespace A036896.P215278000982838957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P215278000982838957

/-! ## A036896.P8350844341375209052

`∩[A062739(n+1), A322797(n+1)]`
-/

namespace A036896.P8350844341375209052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036896.P8350844341375209052

/-!
# A036897: Square root of odd refactorable numbers.

The programs for A036897, there is no canonical definition to state claims against.
-/

/-! ## A036897.P8253717125232659584

`sqrt(A036896(n+1))`
-/

namespace A036897.P8253717125232659584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036896 (n + 1) : ℝ)

end

end A036897.P8253717125232659584

/-! ## A036897.P8643638657542712673

`∩[2*n+1, A181687(n+1)]`
-/

namespace A036897.P8643638657542712673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036897.P8643638657542712673

/-! ## A036897.P16601838104159100672

`record[A000265(sqrt(A181795(n+1)))]`
-/

namespace A036897.P16601838104159100672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A181795 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036897.P16601838104159100672

/-! ## A036897.P15153706379726309589

`∩[A181687(n+1), A004273(n)]`
-/

namespace A036897.P15153706379726309589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036897.P15153706379726309589

/-! ## A036897.P1411890051730027881

`∩[A181687(n+1), A060747(n)]`
-/

namespace A036897.P1411890051730027881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036897.P1411890051730027881

/-! ## A036897.P1481615501409275753

`record[A093178(sqrt(A036907(n+1)))]`
-/

namespace A036897.P1481615501409275753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.roundAway (Real.sqrt (A036907 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036897.P1481615501409275753

/-! ## A036897.P4791903011018009352

`record[A093411(sqrt(A036907(n+1)))]`
-/

namespace A036897.P4791903011018009352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (SequenceMachineLib.roundAway (Real.sqrt (A036907 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036897.P4791903011018009352

/-! ## A036897.P10563397513844424241

`filter[A181687(n+1), A000035(#)]`
-/

namespace A036897.P10563397513844424241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A036897.P10563397513844424241

/-! ## A036897.P17980817025244365113

`record[A026741(sqrt(A036907(n+1)))]`
-/

namespace A036897.P17980817025244365113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway (Real.sqrt (A036907 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036897.P17980817025244365113

/-!
# A036898: List of pairs of consecutive refactorable numbers.

The programs for A036898, there is no canonical definition to state claims against.
-/

/-! ## A036898.P8849145878234606521

`∪[A114617(n+1)+1, A114617(n+1)]`
-/

namespace A036898.P8849145878234606521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114617 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036898.P8849145878234606521

/-! ## A036898.P9958095851936444777

`A114617(A008619(n))+A000035(n)`
-/

namespace A036898.P9958095851936444777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114617 (A008619 n).toNat + A000035 n

end

end A036898.P9958095851936444777

/-! ## A036898.P15569562077279082839

`A114617(A008619(n))+Δ[A004526(n)]`
-/

namespace A036898.P15569562077279082839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114617 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A036898.P15569562077279082839

/-! ## A036898.P15180090625319536073

`A114617(A008619(n))+char[A005408(n)]`
-/

namespace A036898.P15180090625319536073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114617 (A008619 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036898.P15180090625319536073

/-! ## A036898.P17326302209609067627

`A114617(A008619(n))+A056594(n+1)²`
-/

namespace A036898.P17326302209609067627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114617 (A008619 n).toNat + A056594 (n + 1) ^ 2

end

end A036898.P17326302209609067627

/-! ## A036898.P7557648842924392834

`A114617(A008619(n))+char[A003961(n+1)]`
-/

namespace A036898.P7557648842924392834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114617 (A008619 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036898.P7557648842924392834

/-!
# A036899: Products of pairs of consecutive refactorable numbers.

The programs for A036899, there is no canonical definition to state claims against.
-/

/-! ## A036899.P14800209282433036261

`A036898(2*n+1)*A036898(2*n+1+1)`
-/

namespace A036899.P14800209282433036261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036898 (2 * n + 1) * A036898 (2 * n + 1 + 1)

end

end A036899.P14800209282433036261

/-! ## A036899.P10038609422944423580

`2*C(A036898(2*(n+1)), 2)`
-/

namespace A036899.P10038609422944423580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A036898 (2 * (n + 1))).toNat 2

end

end A036899.P10038609422944423580

/-! ## A036899.P4313072050100406823

`A114617(n+1)+A114617(n+1)²`
-/

namespace A036899.P4313072050100406823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114617 (n + 1) + A114617 (n + 1) ^ 2

end

end A036899.P4313072050100406823

/-! ## A036899.P2000074498965602046

`A036898(Δ[n²])+A036898(Δ[n²])²`
-/

namespace A036899.P2000074498965602046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A036898 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ 2

end

end A036899.P2000074498965602046

/-! ## A036899.P4586121188778634009

`A036898(2*(n+1))*A114617(n+1)`
-/

namespace A036899.P4586121188778634009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036898 (2 * (n + 1)) * A114617 (n + 1)

end

end A036899.P4586121188778634009

