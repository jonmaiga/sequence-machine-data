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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A311100: Coordination sequence Gal.5.25.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311100, there is no canonical definition to state claims against.
-/

/-! ## A311100.P11642184682664913850

`A363929(A008292(3*(n+1)))+A118170(3*n)`
-/

namespace A311100.P11642184682664913850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (A008292 (3 * (n + 1))).toNat + A118170 (3 * n)

end

end A311100.P11642184682664913850

/-! ## A311100.P10377502550270508874

`A160338(n!)+A020656(3*n+1)`
-/

namespace A311100.P10377502550270508874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (Nat.factorial n) + A020656 (3 * n + 1)

end

end A311100.P10377502550270508874

/-! ## A311100.P1184436666379210543

`A349294(A008574(n))-A002265(n)`
-/

namespace A311100.P1184436666379210543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A008574 n).toNat - A002265 n

end

end A311100.P1184436666379210543

/-! ## A311100.P16741463400472409738

`A379155(2*n+1)-A055642(A373908(n))`
-/

namespace A311100.P16741463400472409738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379155 (2 * n + 1) - A055642 (A373908 n).toNat

end

end A311100.P16741463400472409738

/-! ## A311100.P7794613060990751018

`A269249(A348415(n+1))+A043091(3*n+1)`
-/

namespace A311100.P7794613060990751018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269249 (A348415 (n + 1)).toNat + A043091 (3 * n + 1)

end

end A311100.P7794613060990751018

/-!
# A311101: Coordination sequence Gal.3.47.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311101, the canonical program `A311101.P3732083526065594527` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311101 has offset 0).

The definition of A311101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311101.P16761565991173033716

`ogf((1+x+x^3+2x^5-2x^6+2x^7-x^8)/(1-3x+4x^2-3x^3+x^4))`
-/

namespace A311101.P16761565991173033716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1, 0, 2, -2, 2, -1] [1, -3, 4, -3, 1] n

end

end A311101.P16761565991173033716

namespace A311101

/-- `ogf((1+x+x^3+2x^5-2x^6+2x^7-x^8)/(1-3x+4x^2-3x^3+x^4))` -/
def P16761565991173033716.Spec : Prop :=
  ∀ n, P16761565991173033716.a n = A311101 n

end A311101

/-! ## A311101.P3732083526065594527

`3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=12, a(4)=15, a(5)=19, a(6)=23, a(7)=28, a(8)=33`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A311101

/-- `3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` -/
def P3732083526065594527.Spec : Prop :=
  ∀ n, P3732083526065594527.a n = A311101 n

theorem P3732083526065594527.correct : P3732083526065594527.Spec := by
  intro n
  simp only [A311101]

end A311101

/-! ## A311101.P14159393976535541257

`A265035(n)+n`
-/

namespace A311101.P14159393976535541257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 n + (n : ℤ)

end

end A311101.P14159393976535541257

namespace A311101

/-- `A265035(n)+n` -/
def P14159393976535541257.Spec : Prop :=
  ∀ n, P14159393976535541257.a n = A311101 n

theorem P14159393976535541257.correct : P14159393976535541257.Spec := by
  intro n
  simp only [A311101, Nat.add_sub_cancel, A311101.P14159393976535541257.a, A311101.P3732083526065594527.a, A265035, A265035.P10344988030138921737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311101

/-! ## A311101.P18253909088380907838

`A005843(n)-(n-A265035(n))`
-/

namespace A311101.P18253909088380907838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A265035 n)

end

end A311101.P18253909088380907838

namespace A311101

/-- `A005843(n)-(n-A265035(n))` -/
def P18253909088380907838.Spec : Prop :=
  ∀ n, P18253909088380907838.a n = A311101 n

theorem P18253909088380907838.correct : P18253909088380907838.Spec := by
  intro n
  simp only [A311101, Nat.add_sub_cancel, A311101.P18253909088380907838.a, A311101.P3732083526065594527.a, A005843, A005843.P3167286115683555970.a, A265035, A265035.P10344988030138921737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311101

/-! ## A311101.P10661163931544253116

`round(sqrt(A219529(n)*A265035(n)))`
-/

namespace A311101.P10661163931544253116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A219529 n * A265035 n : ℝ))

end

end A311101.P10661163931544253116

namespace A311101

/-- `round(sqrt(A219529(n)*A265035(n)))` -/
def P10661163931544253116.Spec : Prop :=
  ∀ n, P10661163931544253116.a n = A311101 n

end A311101

/-! ## A311101.P888014615166056800

`A004396(2*A265035(n))`
-/

namespace A311101.P888014615166056800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A265035 n).toNat

end

end A311101.P888014615166056800

namespace A311101

/-- `A004396(2*A265035(n))` -/
def P888014615166056800.Spec : Prop :=
  ∀ n, P888014615166056800.a n = A311101 n

end A311101

/-! ## A311101.P17553987741179791072

`A004396(A265035(n)/(1-1/2))`
-/

namespace A311101.P17553987741179791072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A265035 n : ℚ) / (1 - (1 : ℚ) / 2))).toNat

end

end A311101.P17553987741179791072

namespace A311101

/-- `A004396(A265035(n)/(1-1/2))` -/
def P17553987741179791072.Spec : Prop :=
  ∀ n, P17553987741179791072.a n = A311101 n

end A311101

/-! ## A311101.P9573033697331246107

`A274616(2*A265035(n))`
-/

namespace A311101.P9573033697331246107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (2 * A265035 n).toNat

end

end A311101.P9573033697331246107

namespace A311101

/-- `A274616(2*A265035(n))` -/
def P9573033697331246107.Spec : Prop :=
  ∀ n, P9573033697331246107.a n = A311101 n

end A311101

/-! ## A311101.P16481229780120796214

`n-A001057(2*A265035(n))`
-/

namespace A311101.P16481229780120796214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A265035 n).toNat

end

end A311101.P16481229780120796214

namespace A311101

/-- `n-A001057(2*A265035(n))` -/
def P16481229780120796214.Spec : Prop :=
  ∀ n, P16481229780120796214.a n = A311101 n

end A311101

/-!
# A311102: Coordination sequence Gal.3.48.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311102, there is no canonical definition to state claims against.
-/

/-! ## A311102.P12984913317046920120

`∑[A286357(∑[A347879(n+1)^n])]`
-/

namespace A311102.P12984913317046920120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347879 (n + 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311102.P12984913317046920120

/-! ## A311102.P2981047907071755820

`A238845(A259128(n+1))+(p?[3*n+1]-4)/3`
-/

namespace A311102.P2981047907071755820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238845 (A259128 (n + 1)).toNat : ℚ) + ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 4 : ℚ) / 3

end

end A311102.P2981047907071755820

/-! ## A311102.P3372413965495570914

`A311211(n)-A298428(n+1)%2-A018934(A057354(n))`
-/

namespace A311102.P3372413965495570914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311211 n - Int.tmod (A298428 (n + 1)) 2 - A018934 (A057354 n).toNat

end

end A311102.P3372413965495570914

/-! ## A311102.P16719810739484870954

`A004396(n+1)+A111576(n+1)%4+3*n`
-/

namespace A311102.P16719810739484870954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) + (Int.tmod (A111576 (n + 1)) 4 + (3 * n : ℤ))

end

end A311102.P16719810739484870954

/-! ## A311102.P2156535763700764672

`A325460(2*(n+1))-A333381(A163777(n+1))`
-/

namespace A311102.P2156535763700764672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (2 * (n + 1)) - A333381 (A163777 (n + 1)).toNat

end

end A311102.P2156535763700764672

/-!
# A311103: Coordination sequence Gal.5.18.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311103, there is no canonical definition to state claims against.
-/

/-! ## A311103.P10909813168089356818

`A311104(n)-A091447(A311093(2*n+1))`
-/

namespace A311103.P10909813168089356818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311104 n - A091447 (A311093 (2 * n + 1)).toNat

end

end A311103.P10909813168089356818

/-! ## A311103.P14581659588112215968

`A061979(2*n+1)+A000035(A018797(n))`
-/

namespace A311103.P14581659588112215968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061979 (2 * n + 1) + A000035 (A018797 n).toNat

end

end A311103.P14581659588112215968

/-! ## A311103.P13021491080926669694

`A311211(n)-A298428(n+1)%2`
-/

namespace A311103.P13021491080926669694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311211 n - Int.tmod (A298428 (n + 1)) 2

end

end A311103.P13021491080926669694

/-! ## A311103.P4264350476920766731

`A352178(2*n+3)-Δ[A193715(n+5)]`
-/

namespace A311103.P4264350476920766731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193715 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (2 * n + 3) - (f1 (n + 1) - f1 n)

end

end A311103.P4264350476920766731

/-! ## A311103.P6629885980739950206

`A311227(n)-A025427(A047865(n))`
-/

namespace A311103.P6629885980739950206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311227 n - A025427 (A047865 n).toNat

end

end A311103.P6629885980739950206

/-!
# A311104: Coordination sequence Gal.6.53.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311104, there is no canonical definition to state claims against.
-/

/-! ## A311104.P6297824951337321038

`A311230(n)-A316717(A000124(n))`
-/

namespace A311104.P6297824951337321038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 n - A316717 (A000124 n).toNat

end

end A311104.P6297824951337321038

/-! ## A311104.P14878719206716404507

`A311209(n)-A079978(round(11^(n/3)))`
-/

namespace A311104.P14878719206716404507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311209 n - A079978 (SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat

end

end A311104.P14878719206716404507

/-! ## A311104.P16124056870037673213

`A311209(n)-A121262(round(17^(n/3)))`
-/

namespace A311104.P16124056870037673213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311209 n - A121262 (SequenceMachineLib.roundAway ((17 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat

end

end A311104.P16124056870037673213

/-! ## A311104.P3929811361165259334

`A352178(2*(n+1))+A289481(A343955(n+4))`
-/

namespace A311104.P3929811361165259334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (2 * (n + 1)) + A289481 (A343955 (n + 4)).toNat

end

end A311104.P3929811361165259334

/-! ## A311104.P18129233098644134537

`A352178(2*n+3)-A026535(A108852(3*(n+1)))`
-/

namespace A311104.P18129233098644134537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (2 * n + 3) - A026535 (A108852 (3 * (n + 1))).toNat

end

end A311104.P18129233098644134537

/-!
# A311105: Coordination sequence Gal.6.61.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311105, there is no canonical definition to state claims against.
-/

/-! ## A311105.P9428955071079066125

`A188069(n+1)+A057918(A123029(n+1))`
-/

namespace A311105.P9428955071079066125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) + A057918 (A123029 (n + 1)).toNat

end

end A311105.P9428955071079066125

/-! ## A311105.P13218359728760813355

`A047998(A301730(n))+∑[A001222(A147536(n)+2)]`
-/

namespace A311105.P13218359728760813355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A147536 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 (A301730 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311105.P13218359728760813355

/-!
# A311106: Coordination sequence Gal.6.481.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311106, there is no canonical definition to state claims against.
-/

/-! ## A311106.P3588354710921748853

`A311176(n)-A000989(A006190(n))`
-/

namespace A311106.P3588354710921748853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311176 n - A000989 (A006190 n).toNat

end

end A311106.P3588354710921748853

/-! ## A311106.P8587699285432804009

`A311243(n)-A037833(A000244(n))`
-/

namespace A311106.P8587699285432804009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311243 n - A037833 (A000244 n).toNat

end

end A311106.P8587699285432804009

/-! ## A311106.P17953872727347280662

`A311147(n)-A067898(A149336(n))`
-/

namespace A311106.P17953872727347280662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n - A067898 (A149336 n).toNat

end

end A311106.P17953872727347280662

/-! ## A311106.P58975791015765297

`A359829(A257275(n+1)+A060144(n))`
-/

namespace A311106.P58975791015765297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359829 (A257275 (n + 1) + A060144 n).toNat

end

end A311106.P58975791015765297

/-! ## A311106.P8167726226638824432

`A328391(A263665(n+1))+A007095(3*n+1)`
-/

namespace A311106.P8167726226638824432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (A263665 (n + 1)).toNat + A007095 (3 * n + 1)

end

end A311106.P8167726226638824432

/-!
# A311107: Coordination sequence Gal.4.6.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311107, there is no canonical definition to state claims against.
-/

/-! ## A311107.P4575261099111259299

`A311312(n)-A232991(A001792(n))`
-/

namespace A311107.P4575261099111259299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n - A232991 (A001792 n).toNat

end

end A311107.P4575261099111259299

/-! ## A311107.P12521385356506841648

`∑[A055091(A000244(n))]+n`
-/

namespace A311107.P12521385356506841648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A000244 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311107.P12521385356506841648

/-! ## A311107.P631055911721241654

`∑[A331083(A240217(3*n+4))]`
-/

namespace A311107.P631055911721241654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A240217 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311107.P631055911721241654

/-! ## A311107.P853714020475581837

`A014684(∑[A376181((n+1)²)]+1)`
-/

namespace A311107.P853714020475581837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A311107.P853714020475581837

/-! ## A311107.P14061022532788514384

`A312880(n)-A067898(A111983(n))`
-/

namespace A311107.P14061022532788514384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312880 n - A067898 (A111983 n).toNat

end

end A311107.P14061022532788514384

/-!
# A311108: Coordination sequence Gal.6.612.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311108, there is no canonical definition to state claims against.
-/

/-! ## A311108.P6848222838677710179

`A081121(2*n+1)-A001316(2^ceil(∑[(n+1)/3]))`
-/

namespace A311108.P6848222838677710179
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (2 * n + 1) - A001316 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℤ))).toNat

end

end A311108.P6848222838677710179

/-! ## A311108.P11362256452524945583

`A299207(A299183(n+1))+A172338(n)`
-/

namespace A311108.P11362256452524945583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299207 (A299183 (n + 1)).toNat + A172338 n

end

end A311108.P11362256452524945583

/-! ## A311108.P7270595723420947500

`A372332(A006078(n+2))+A311047(n)`
-/

namespace A311108.P7270595723420947500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372332 (A006078 (n + 2)).toNat + A311047 n

end

end A311108.P7270595723420947500

/-! ## A311108.P12197119831442636177

`A081121(2*n+1)-A325248(A184248(n+1))`
-/

namespace A311108.P12197119831442636177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (2 * n + 1) - A325248 (A184248 (n + 1)).toNat

end

end A311108.P12197119831442636177

/-!
# A311109: Coordination sequence Gal.5.26.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311109, there is no canonical definition to state claims against.
-/

/-! ## A311109.P4505896574332026599

`A310734(n)+A099104(A047102(n))`
-/

namespace A311109.P4505896574332026599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310734 n + A099104 (A047102 n).toNat

end

end A311109.P4505896574332026599

/-!
# A311110: Coordination sequence Gal.5.28.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311110, there is no canonical definition to state claims against.
-/

/-! ## A311110.P3833449628541025941

`A147844(A053613(n+1))+floor(3/acot(n))`
-/

namespace A311110.P3833449628541025941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147844 (A053613 (n + 1)).toNat + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A311110.P3833449628541025941

/-! ## A311110.P5486373837952765236

`A016813(n)-A025426(A192398(n+1))`
-/

namespace A311110.P5486373837952765236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A025426 (A192398 (n + 1)).toNat

end

end A311110.P5486373837952765236

/-! ## A311110.P11291630277574680963

`A311991(n)-A001221(A003094(n))`
-/

namespace A311110.P11291630277574680963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311991 n - A001221 (A003094 n).toNat

end

end A311110.P11291630277574680963

/-! ## A311110.P16972038089618674454

`A311114(n)-A079978(A000108(n))`
-/

namespace A311110.P16972038089618674454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311114 n - A079978 (A000108 n).toNat

end

end A311110.P16972038089618674454

/-! ## A311110.P17853423705064944447

`A190437(n+1)-A035612(A190452(n))`
-/

namespace A311110.P17853423705064944447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190437 (n + 1) - A035612 (A190452 n).toNat

end

end A311110.P17853423705064944447

/-!
# A311111: Coordination sequence Gal.4.10.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311111, there is no canonical definition to state claims against.
-/

/-! ## A311111.P2832731315815964499

`A311891(n)-A118458(A229637(n+1))`
-/

namespace A311111.P2832731315815964499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311891 n - A118458 (A229637 (n + 1)).toNat

end

end A311111.P2832731315815964499

/-! ## A311111.P1302764266010525553

`A314734(n)-A160385(A000045(2*n))`
-/

namespace A311111.P1302764266010525553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314734 n - A160385 (A000045 (2 * n)).toNat

end

end A311111.P1302764266010525553

/-! ## A311111.P14418827840449098765

`A311300(n)-A086008(A025049(2*n+3))`
-/

namespace A311111.P14418827840449098765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311300 n - A086008 (A025049 (2 * n + 3)).toNat

end

end A311111.P14418827840449098765

/-! ## A311111.P13319342127653890973

`A018252(∑[∑{e}[A187018(n)+1, #]])`
-/

namespace A311111.P13319342127653890973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187018 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A311111.P13319342127653890973

/-! ## A311111.P5419740595034304577

`A396684(3*n+1)+A334201(A306919(n))`
-/

namespace A311111.P5419740595034304577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (3 * n + 1) + A334201 (A306919 n).toNat

end

end A311111.P5419740595034304577

/-!
# A311112: Coordination sequence Gal.6.613.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311112, there is no canonical definition to state claims against.
-/

/-! ## A311112.P8244567661117121236

`A311361(n)-A046080(A001835(n))`
-/

namespace A311112.P8244567661117121236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311361 n - A046080 (A001835 n).toNat

end

end A311112.P8244567661117121236

/-! ## A311112.P2046821135806317682

`A135042(n+1)-A328324(A247662(n))`
-/

namespace A311112.P2046821135806317682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (n + 1) - A328324 (A247662 n).toNat

end

end A311112.P2046821135806317682

/-! ## A311112.P8421445006789844828

`A347788(A003965(6*(n+1)))-A046080(A001835(n))`
-/

namespace A311112.P8421445006789844828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347788 (A003965 (6 * (n + 1))).toNat - A046080 (A001835 n).toNat

end

end A311112.P8421445006789844828

/-!
# A311113: Coordination sequence Gal.6.505.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311113, there is no canonical definition to state claims against.
-/

/-! ## A311113.P5579692936596789585

`A347777(A326774(3*n+1))+A133280(n)`
-/

namespace A311113.P5579692936596789585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 (A326774 (3 * n + 1)).toNat + A133280 n

end

end A311113.P5579692936596789585

/-! ## A311113.P15621181369532223469

`A152771(2*(n+1))+A084558(A000244(n))`
-/

namespace A311113.P15621181369532223469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152771 (2 * (n + 1)) + A084558 (A000244 n).toNat

end

end A311113.P15621181369532223469

/-!
# A311114: Coordination sequence Gal.4.22.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311114, there is no canonical definition to state claims against.
-/

/-! ## A311114.P11697307501630920925

`A311110(n)+A079978(A000108(n))`
-/

namespace A311114.P11697307501630920925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311110 n + A079978 (A000108 n).toNat

end

end A311114.P11697307501630920925

/-! ## A311114.P11807648453639479132

`∑[A043276(A121736(n+1))]`
-/

namespace A311114.P11807648453639479132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A121736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311114.P11807648453639479132

/-! ## A311114.P8851450535360761175

`∑[∑{e}[A353774(n)+A111592(n+1), #]]`
-/

namespace A311114.P8851450535360761175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353774 n + A111592 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311114.P8851450535360761175

/-! ## A311114.P10515848612650532831

`A311344(n)-A011702(A030268(n))`
-/

namespace A311114.P10515848612650532831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n - A011702 (A030268 n).toNat

end

end A311114.P10515848612650532831

/-! ## A311114.P16203728536915348798

`A312136(n)-A001222(A182117(n))`
-/

namespace A311114.P16203728536915348798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312136 n - A001222 (A182117 n).toNat

end

end A311114.P16203728536915348798

/-!
# A311116: Coordination sequence Gal.4.23.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311116, there is no canonical definition to state claims against.
-/

/-! ## A311116.P13854270649854549968

`A037228(A046097(n+1))+A004976(n)`
-/

namespace A311116.P13854270649854549968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (A046097 (n + 1)).toNat + A004976 n

end

end A311116.P13854270649854549968

/-! ## A311116.P18013984494588005107

`A346131(A330031(n+1))-A016016(2*(n+2))`
-/

namespace A311116.P18013984494588005107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (A330031 (n + 1)).toNat - A016016 (2 * (n + 2))

end

end A311116.P18013984494588005107

/-! ## A311116.P7176161711071023441

`A005117(3*(n+1))-A001222(A066186(3*(n+1)))`
-/

namespace A311116.P7176161711071023441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * (n + 1)) - A001222 (A066186 (3 * (n + 1))).toNat

end

end A311116.P7176161711071023441

/-! ## A311116.P6261242760666676805

`A008784(A032559(n+1)+1)-A193680(A035176(n+1))`
-/

namespace A311116.P6261242760666676805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (A032559 (n + 1) + 1).toNat - A193680 (A035176 (n + 1)).toNat

end

end A311116.P6261242760666676805

/-!
# A311119: Coordination sequence Gal.6.4.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311119, there is no canonical definition to state claims against.
-/

/-! ## A311119.P7866898916775960989

`A311402(n)-A081603(A334774(n+1))`
-/

namespace A311119.P7866898916775960989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311402 n - A081603 (A334774 (n + 1)).toNat

end

end A311119.P7866898916775960989

/-! ## A311119.P16336058376469899853

`A311120(n)-A103675(A184291(n+1))`
-/

namespace A311119.P16336058376469899853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311120 n - A103675 (A184291 (n + 1)).toNat

end

end A311119.P16336058376469899853

/-! ## A311119.P6755285279692984660

`A061071(A229325(n+1))`
-/

namespace A311119.P6755285279692984660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A229325 (n + 1)).toNat

end

end A311119.P6755285279692984660

/-! ## A311119.P15619519415686684218

`record[A311688(n)-A101708(n)]`
-/

namespace A311119.P15619519415686684218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311688 n - A101708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311119.P15619519415686684218

/-! ## A311119.P11957175783591144199

`A050877(n+1)-A016332(A050874(n+1))`
-/

namespace A311119.P11957175783591144199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050877 (n + 1) - A016332 (A050874 (n + 1)).toNat

end

end A311119.P11957175783591144199

/-!
# A311120: Coordination sequence Gal.6.40.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311120, there is no canonical definition to state claims against.
-/

/-! ## A311120.P7623727814927046654

`xor(A037800(n), A055572(A133280(2*n+1)))`
-/

namespace A311120.P7623727814927046654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037800 n) (A055572 (A133280 (2 * n + 1)).toNat)

end

end A311120.P7623727814927046654

/-! ## A311120.P1877091230731532506

`A321177(n+1)+∑[A263280(n)]`
-/

namespace A311120.P1877091230731532506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321177 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311120.P1877091230731532506

/-! ## A311120.P11298500337637031369

`A321177(n+1)+A054899(A001591(n))`
-/

namespace A311120.P11298500337637031369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321177 (n + 1) + A054899 (A001591 n).toNat

end

end A311120.P11298500337637031369

/-! ## A311120.P7855217630221922436

`A321177(n+1)+A161680(A035578(n))`
-/

namespace A311120.P7855217630221922436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321177 (n + 1) + A161680 (A035578 n).toNat

end

end A311120.P7855217630221922436

/-! ## A311120.P12261477506049357962

`A321177(n+1)+A047486(A195852(n))`
-/

namespace A311120.P12261477506049357962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321177 (n + 1) + A047486 (A195852 n).toNat

end

end A311120.P12261477506049357962

/-!
# A311121: Coordination sequence Gal.5.6.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311121, there is no canonical definition to state claims against.
-/

/-! ## A311121.P8078621346588838183

`∑[A000005(∑[A319748(n+2)])]`
-/

namespace A311121.P8078621346588838183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319748 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311121.P8078621346588838183

/-! ## A311121.P16266277398661748301

`∑[A000005(A112493(3*n+2)+1)]-1`
-/

namespace A311121.P16266277398661748301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A112493 (3 * n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A311121.P16266277398661748301

/-! ## A311121.P16552052621320193284

`eq[A152271(n), A305098(A097098(n))]`
-/

namespace A311121.P16552052621320193284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305098 (A097098 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311121.P16552052621320193284

/-! ## A311121.P10235953726127250196

`A068509(A125084(n+2))`
-/

namespace A311121.P10235953726127250196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A125084 (n + 2)).toNat

end

end A311121.P10235953726127250196

/-! ## A311121.P9307592773858447134

`A065033(A312333(2*n))+A010893(A028303(n+2))`
-/

namespace A311121.P9307592773858447134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312333 (2 * n)).toNat + A010893 ((A028303 (n + 2)).toNat + 13)

end

end A311121.P9307592773858447134

/-!
# A311122: Coordination sequence Gal.6.81.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311122, there is no canonical definition to state claims against.
-/

/-! ## A311122.P10017993292084565708

`∑[A190321(A100164(n+1))]`
-/

namespace A311122.P10017993292084565708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190321 (A100164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311122.P10017993292084565708

/-! ## A311122.P14009062784426379263

`A239504(A002605(n)+n²)`
-/

namespace A311122.P14009062784426379263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (A002605 n + (n ^ 2 : ℤ)).toNat

end

end A311122.P14009062784426379263

/-! ## A311122.P10356285983937113682

`A008574(n)-A005091(A120588(n))`
-/

namespace A311122.P10356285983937113682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A005091 (A120588 n).toNat

end

end A311122.P10356285983937113682

/-! ## A311122.P2819339878272326289

`∑[A001221(A101094(n+4))]-1`
-/

namespace A311122.P2819339878272326289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A101094 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A311122.P2819339878272326289

/-! ## A311122.P12698637803274853718

`A080148(2*n+1)-A076259(A056941(3*n+2))`
-/

namespace A311122.P12698637803274853718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (2 * n + 1) - A076259 (A056941 (3 * n + 2)).toNat

end

end A311122.P12698637803274853718

/-!
# A311123: Coordination sequence Gal.5.22.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311123, there is no canonical definition to state claims against.
-/

/-! ## A311123.P7992672746442356471

`xor(4*n+1, A151962(A238124(n)))`
-/

namespace A311123.P7992672746442356471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n + 1 : ℤ) (A151962 (A238124 n).toNat)

end

end A311123.P7992672746442356471

/-! ## A311123.P2184506376395807560

`A250120(n)-A061394(A048499(n))`
-/

namespace A311123.P2184506376395807560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A061394 (A048499 n).toNat

end

end A311123.P2184506376395807560

/-! ## A311123.P996309534690641366

`A106633(n)-A065353(A355666(n))`
-/

namespace A311123.P996309534690641366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n - A065353 (A355666 n).toNat

end

end A311123.P996309534690641366

/-! ## A311123.P14166716242364023647

`A349151(n+1)+A001222(A000302(n))`
-/

namespace A311123.P14166716242364023647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (n + 1) + A001222 (A000302 n).toNat

end

end A311123.P14166716242364023647

/-! ## A311123.P15600783255724184659

`A349151(n+1)+A056239(A000244(n))`
-/

namespace A311123.P15600783255724184659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (n + 1) + A056239 (A000244 n).toNat

end

end A311123.P15600783255724184659

/-!
# A311124: Coordination sequence Gal.6.89.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311124, there is no canonical definition to state claims against.
-/

/-! ## A311124.P10196903566472097755

`A311153(n)-A133010(A034856(n+1))`
-/

namespace A311124.P10196903566472097755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 n - A133010 (A034856 (n + 1)).toNat

end

end A311124.P10196903566472097755

/-! ## A311124.P5137538870877763903

`A311154(n)-A133010(A034856(n+1))`
-/

namespace A311124.P5137538870877763903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311154 n - A133010 (A034856 (n + 1)).toNat

end

end A311124.P5137538870877763903

/-! ## A311124.P6028855109951206279

`A311153(n)-A055641(A002523(n))`
-/

namespace A311124.P6028855109951206279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 n - A055641 (A002523 n).toNat

end

end A311124.P6028855109951206279

/-! ## A311124.P11620364974199084162

`A311154(n)-A055641(A002523(n))`
-/

namespace A311124.P11620364974199084162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311154 n - A055641 (A002523 n).toNat

end

end A311124.P11620364974199084162

/-! ## A311124.P13253358589575816922

`A068509(A098931(n))`
-/

namespace A311124.P13253358589575816922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A098931 n).toNat

end

end A311124.P13253358589575816922

/-!
# A311125: Coordination sequence Gal.6.419.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311125, the canonical program `A311125.P2083360044693346749` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311125 has offset 0).

The definition of A311125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311125.P2083360044693346749

`A314669(n)-A004525(A004525(A004525(n)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311125

/-- `A314669(n)-A004525(A004525(A004525(n)))` -/
def P2083360044693346749.Spec : Prop :=
  ∀ n, P2083360044693346749.a n = A311125 n

theorem P2083360044693346749.correct : P2083360044693346749.Spec := by
  intro n
  simp only [A311125]

end A311125

/-! ## A311125.P16402983167758211897

`A314669(n)-A136107(2^n)`
-/

namespace A311125.P16402983167758211897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A136107 (2 ^ n)

end

end A311125.P16402983167758211897

namespace A311125

/-- `A314669(n)-A136107(2^n)` -/
def P16402983167758211897.Spec : Prop :=
  ∀ n, P16402983167758211897.a n = A311125 n

end A311125

/-! ## A311125.P15439056311470418289

`A314669(n)+A057428(A007088(n))`
-/

namespace A311125.P15439056311470418289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n + A057428 (A007088 n).toNat

end

end A311125.P15439056311470418289

namespace A311125

/-- `A314669(n)+A057428(A007088(n))` -/
def P15439056311470418289.Spec : Prop :=
  ∀ n, P15439056311470418289.a n = A311125 n

end A311125

/-! ## A311125.P17656275251112758410

`A314669(n)-A059841(A038260(n))`
-/

namespace A311125.P17656275251112758410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A059841 (A038260 n).toNat

end

end A311125.P17656275251112758410

namespace A311125

/-- `A314669(n)-A059841(A038260(n))` -/
def P17656275251112758410.Spec : Prop :=
  ∀ n, P17656275251112758410.a n = A311125 n

end A311125

/-! ## A311125.P8760375369086810169

`A314669(n)-A059841(A081668(n))`
-/

namespace A311125.P8760375369086810169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A059841 (A081668 n).toNat

end

end A311125.P8760375369086810169

namespace A311125

/-- `A314669(n)-A059841(A081668(n))` -/
def P8760375369086810169.Spec : Prop :=
  ∀ n, P8760375369086810169.a n = A311125 n

end A311125

/-!
# A311126: Coordination sequence Gal.6.402.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311126, there is no canonical definition to state claims against.
-/

/-! ## A311126.P12258475714971848740

`∑[∑[A256067(A256056(2*(n+1)))]]`
-/

namespace A311126.P12258475714971848740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256067 (A256056 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311126.P12258475714971848740

/-! ## A311126.P17485475482112670824

`∑[∑[A189206(A307683(3*n+5)+1)]]+n`
-/

namespace A311126.P17485475482112670824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189206 (A307683 (3 * n + 5) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311126.P17485475482112670824

/-! ## A311126.P8190922559433733098

`A351870(A309439(n)+A008574(n))`
-/

namespace A311126.P8190922559433733098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A309439 n + A008574 n).toNat

end

end A311126.P8190922559433733098

/-! ## A311126.P18276910840532087924

`∑[∑[A320655(A002905(n))]+1]-1`
-/

namespace A311126.P18276910840532087924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A002905 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A311126.P18276910840532087924

/-! ## A311126.P13586396675397582030

`∑[∑[A049076(A290213(n)+1)-1]]`
-/

namespace A311126.P13586396675397582030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A290213 n + 1).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311126.P13586396675397582030

/-!
# A311127: Coordination sequence Gal.6.529.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311127, there is no canonical definition to state claims against.
-/

/-! ## A311127.P4362803292465279463

`A067742(A019460(n))+4*n`
-/

namespace A311127.P4362803292465279463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A019460 n).toNat + (4 * n : ℤ)

end

end A311127.P4362803292465279463

/-! ## A311127.P10364835380299040520

`and(A008458(A000975(n)), A311133(n))`
-/

namespace A311127.P10364835380299040520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008458 (A000975 n).toNat) (A311133 n)

end

end A311127.P10364835380299040520

/-! ## A311127.P13772590067406616034

`and(A008458(A000975(n)), A311278(n))`
-/

namespace A311127.P13772590067406616034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008458 (A000975 n).toNat) (A311278 n)

end

end A311127.P13772590067406616034

/-! ## A311127.P4123626927947909337

`A136107(A267267(n+1))+A008574(n)`
-/

namespace A311127.P4123626927947909337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (A267267 (n + 1)).toNat + A008574 n

end

end A311127.P4123626927947909337

/-! ## A311127.P13723459789128922140

`A312456(n)-(A016825(n)-A147735(n+1)%4)%A004277(n)`
-/

namespace A311127.P13723459789128922140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n - Int.tmod (A016825 n - Int.tmod (A147735 (n + 1)) 4) (A004277 n)

end

end A311127.P13723459789128922140

/-!
# A311128: Coordination sequence Gal.6.183.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311128, there is no canonical definition to state claims against.
-/

/-! ## A311128.P3847784095641953833

`A311125(n)+A171765(A077168(n))`
-/

namespace A311128.P3847784095641953833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311125 n + A171765 (A077168 n).toNat

end

end A311128.P3847784095641953833

/-! ## A311128.P6306991628753041558

`record[A311129(A163351(n))]`
-/

namespace A311128.P6306991628753041558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311129 (A163351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311128.P6306991628753041558

/-! ## A311128.P2365070997745387517

`A311129(lcm(n, A213000(n)))`
-/

namespace A311128.P2365070997745387517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311129 (Int.lcm (n : ℤ) (A213000 n))

end

end A311128.P2365070997745387517

/-! ## A311128.P2730009423449170429

`∏{e}[A000244(n), A311129(#)]`
-/

namespace A311128.P2730009423449170429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311129 (Nat.factorization (f1 n).natAbs p)

end

end A311128.P2730009423449170429

/-! ## A311128.P7482426559734609616

`A311129(n)^A269129(n)!`
-/

namespace A311128.P7482426559734609616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311129 n ^ Nat.factorial (A269129 n).toNat

end

end A311128.P7482426559734609616

/-!
# A311129: Coordination sequence Gal.6.167.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311129, there is no canonical definition to state claims against.
-/

/-! ## A311129.P7607169707939659076

`∑[∑[A134269(A097976(n+1))]]`
-/

namespace A311129.P7607169707939659076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (A097976 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311129.P7607169707939659076

/-! ## A311129.P11126104216173562772

`∑[∑[A371222(A005669(n+1))]]`
-/

namespace A311129.P11126104216173562772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371222 (A005669 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311129.P11126104216173562772

/-! ## A311129.P15904157071281452963

`∑[∑[A008966(A283877(n))]]+n`
-/

namespace A311129.P15904157071281452963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A283877 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311129.P15904157071281452963

/-! ## A311129.P5604744103113088175

`∑[∑[A186114(A129844(2*n+1))]]`
-/

namespace A311129.P5604744103113088175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A129844 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311129.P5604744103113088175

/-! ## A311129.P4297823851045637974

`∑[∑[A025448(A229467(2*n+5))]]`
-/

namespace A311129.P4297823851045637974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 (A229467 (2 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311129.P4297823851045637974

/-!
# A311130: Coordination sequence Gal.6.288.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311130, there is no canonical definition to state claims against.
-/

/-! ## A311130.P6551514925339397793

`A311138(n)-A259195(A187829(n+1))`
-/

namespace A311130.P6551514925339397793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311138 n - A259195 (A187829 (n + 1)).toNat

end

end A311130.P6551514925339397793

/-! ## A311130.P8956067102293984015

`record[A008574(n)/Δ[A032555(n+1)]]`
-/

namespace A311130.P8956067102293984015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311130.P8956067102293984015

/-! ## A311130.P10662098855734251145

`A315171(n)-A091453(A001621(n))`
-/

namespace A311130.P10662098855734251145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315171 n - A091453 (A001621 n).toNat

end

end A311130.P10662098855734251145

/-! ## A311130.P2209226677101282224

`A301579(A000079(n))+A272670(n+1)`
-/

namespace A311130.P2209226677101282224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301579 (A000079 n).toNat + A272670 (n + 1)

end

end A311130.P2209226677101282224

/-! ## A311130.P4877273593870247400

`∑[A007875(∑[n+1]²)]+n+n`
-/

namespace A311130.P4877273593870247400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + (n : ℤ)

end

end A311130.P4877273593870247400

/-!
# A311131: Coordination sequence Gal.6.274.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311131, there is no canonical definition to state claims against.
-/

/-! ## A311131.P12480690032502091165

`∑[∑[A112378(A001694(n+1))]]`
-/

namespace A311131.P12480690032502091165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112378 (A001694 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311131.P12480690032502091165

/-! ## A311131.P6927617116693764558

`∑[∑[A332015(A303321(n+1))]]`
-/

namespace A311131.P6927617116693764558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A303321 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311131.P6927617116693764558

/-! ## A311131.P3496007766057602068

`∑[A161506(∏[A085398(n+1)])]`
-/

namespace A311131.P3496007766057602068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161506 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311131.P3496007766057602068

/-! ## A311131.P10295878137762123415

`∑[∑[A073267(A213338(2*n+3))]]`
-/

namespace A311131.P10295878137762123415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (A213338 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311131.P10295878137762123415

/-!
# A311132: Coordination sequence Gal.5.172.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311132, there is no canonical definition to state claims against.
-/

/-! ## A311132.P17825463609035901291

`A315685(n)-n-∑[A095130(A001045(n))]`
-/

namespace A311132.P17825463609035901291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095130 (A001045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311132.P17825463609035901291

/-! ## A311132.P1436741237875998741

`∑[A053610(A213247(n+1))]`
-/

namespace A311132.P1436741237875998741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (A213247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311132.P1436741237875998741

/-! ## A311132.P13505212568057479504

`A314671(n)-A131576(A033844(n))`
-/

namespace A311132.P13505212568057479504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n - A131576 (A033844 n).toNat

end

end A311132.P13505212568057479504

/-! ## A311132.P2223630277337641631

`A314671(n)-A057427(A306662(n))`
-/

namespace A311132.P2223630277337641631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n - A057427 (A306662 n).toNat

end

end A311132.P2223630277337641631

/-! ## A311132.P15245741739284742463

`A314671(n)-A063962(A060546(2*(n+1)))`
-/

namespace A311132.P15245741739284742463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n - A063962 (A060546 (2 * (n + 1))).toNat

end

end A311132.P15245741739284742463

/-!
# A311133: Coordination sequence Gal.6.288.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311133, there is no canonical definition to state claims against.
-/

/-! ## A311133.P15750234551847947656

`A112765(A031923(n+1))+A008574(n)`
-/

namespace A311133.P15750234551847947656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A031923 (n + 1)).toNat + A008574 n

end

end A311133.P15750234551847947656

/-! ## A311133.P18279071334763999098

`A311134(n)-A083896(A011782(n))`
-/

namespace A311133.P18279071334763999098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311134 n - A083896 (A011782 n).toNat

end

end A311133.P18279071334763999098

/-! ## A311133.P4819820888966144796

`A311134(n)-A083896(Δ[A127904(n)])`
-/

namespace A311133.P4819820888966144796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311134 n - A083896 (f1 (n + 1) - f1 n).toNat

end

end A311133.P4819820888966144796

/-! ## A311133.P12194936316691438386

`A182220(A313683(n)+2)-A057354(A057354(n))`
-/

namespace A311133.P12194936316691438386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A313683 n + 2).toNat - A057354 (A057354 n).toNat

end

end A311133.P12194936316691438386

/-! ## A311133.P12343260646114534635

`A313735(n)-A108611(6*n)-A057354(A057354(n))`
-/

namespace A311133.P12343260646114534635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313735 n - A108611 (6 * n) - A057354 (A057354 n).toNat

end

end A311133.P12343260646114534635

/-!
# A311134: Coordination sequence Gal.6.183.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311134, there is no canonical definition to state claims against.
-/

/-! ## A311134.P14830985136106856386

`A311133(n)+A083896(A011782(n))`
-/

namespace A311134.P14830985136106856386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311133 n + A083896 (A011782 n).toNat

end

end A311134.P14830985136106856386

/-! ## A311134.P14541733368858092241

`A313476(n)-A000120(A127904(n))`
-/

namespace A311134.P14541733368858092241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n - A000120 (A127904 n).toNat

end

end A311134.P14541733368858092241

/-! ## A311134.P1065651574373025707

`A313476(n)-A294901(A000079(n))`
-/

namespace A311134.P1065651574373025707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n - A294901 (A000079 n).toNat

end

end A311134.P1065651574373025707

/-! ## A311134.P11616178353038698237

`A313476(n)-A294901(A011782(n+1))`
-/

namespace A311134.P11616178353038698237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n - A294901 (A011782 (n + 1)).toNat

end

end A311134.P11616178353038698237

/-! ## A311134.P13771816099718206842

`A084618(A315684(n))`
-/

namespace A311134.P13771816099718206842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A315684 n).toNat

end

end A311134.P13771816099718206842

/-!
# A311135: Coordination sequence Gal.6.167.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311135, there is no canonical definition to state claims against.
-/

/-! ## A311135.P18061070145088017123

`A311134(n)+A083896(A000079(n))`
-/

namespace A311135.P18061070145088017123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311134 n + A083896 (A000079 n).toNat

end

end A311135.P18061070145088017123

/-! ## A311135.P11795428750871931703

`A311134(n)+A083896(A011782(n+1))`
-/

namespace A311135.P11795428750871931703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311134 n + A083896 (A011782 (n + 1)).toNat

end

end A311135.P11795428750871931703

/-! ## A311135.P3176518158160807704

`∑[∑[A080843(A046201(n+1))]]`
-/

namespace A311135.P3176518158160807704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A046201 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311135.P3176518158160807704

/-! ## A311135.P5648628666541870150

`∑[A076620(p?[A293753(n+1)])]`
-/

namespace A311135.P5648628666541870150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293753 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311135.P5648628666541870150

/-! ## A311135.P3490243097881578542

`∑[A235224(A135381(3*n))+1]`
-/

namespace A311135.P3490243097881578542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A135381 (3 * n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311135.P3490243097881578542

/-!
# A311136: Coordination sequence Gal.6.274.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311136, there is no canonical definition to state claims against.
-/

/-! ## A311136.P6794714004562577595

`∑[∑[A116856(A002145(n+1))]]`
-/

namespace A311136.P6794714004562577595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116856 (A002145 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311136.P6794714004562577595

/-! ## A311136.P5742975395705165114

`∑[∑[A083093(A066970(n+1))]]`
-/

namespace A311136.P5742975395705165114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083093 (A066970 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311136.P5742975395705165114

/-! ## A311136.P10453876676929110825

`∑[∑[A022928(A056353(n))]]+n`
-/

namespace A311136.P10453876676929110825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022928 (A056353 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311136.P10453876676929110825

/-! ## A311136.P7519090449799701938

`A008486(n)+lt[n, A277223(n+1)]`
-/

namespace A311136.P7519090449799701938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A311136.P7519090449799701938

/-! ## A311136.P3111580443654288965

`∑[∑[A262683(A091584(n+1))]]+n`
-/

namespace A311136.P3111580443654288965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262683 (A091584 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311136.P3111580443654288965

/-!
# A311137: Coordination sequence Gal.5.162.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311137, there is no canonical definition to state claims against.
-/

/-! ## A311137.P2493977745361458084

`A311138(n)-A185284(A001400(n))`
-/

namespace A311137.P2493977745361458084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311138 n - A185284 (A001400 n).toNat

end

end A311137.P2493977745361458084

/-! ## A311137.P6218817672388541549

`A311139(n)-A185284(A001400(n))`
-/

namespace A311137.P6218817672388541549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311139 n - A185284 (A001400 n).toNat

end

end A311137.P6218817672388541549

/-! ## A311137.P1058850751230901343

`A311138(n)-A185284(A251711(n)+1)`
-/

namespace A311137.P1058850751230901343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311138 n - A185284 (A251711 n + 1).toNat

end

end A311137.P1058850751230901343

/-! ## A311137.P6701999283239891213

`A311138(n)-A185284(A251712(n)+2)`
-/

namespace A311137.P6701999283239891213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311138 n - A185284 (A251712 n + 2).toNat

end

end A311137.P6701999283239891213

/-! ## A311137.P16358873438614045190

`∑[A181796(A320459(n+1))]+n`
-/

namespace A311137.P16358873438614045190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A320459 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311137.P16358873438614045190

/-!
# A311138: Coordination sequence Gal.6.146.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311138, there is no canonical definition to state claims against.
-/

/-! ## A311138.P2905623753718198694

`A311139(n)-A055641(A002531(n))`
-/

namespace A311138.P2905623753718198694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311139 n - A055641 (A002531 n).toNat

end

end A311138.P2905623753718198694

/-! ## A311138.P15335467765199145835

`xor(A037912(A011782(n)), A311139(n))`
-/

namespace A311138.P15335467765199145835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037912 (A011782 n).toNat) (A311139 n)

end

end A311138.P15335467765199145835

/-! ## A311138.P4163425090994719124

`A311130(n)+A259195(A187829(n+1))`
-/

namespace A311138.P4163425090994719124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311130 n + A259195 (A187829 (n + 1)).toNat

end

end A311138.P4163425090994719124

/-! ## A311138.P12443599303236067467

`A311139(n)-A185284(A036806(n+1))`
-/

namespace A311138.P12443599303236067467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311139 n - A185284 (A036806 (n + 1)).toNat

end

end A311138.P12443599303236067467

/-! ## A311138.P8184676222004064804

`A311139(n)+A000007(A005902(n))`
-/

namespace A311138.P8184676222004064804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311139 n + A000007 (A005902 n).toNat

end

end A311138.P8184676222004064804

/-!
# A311139: Coordination sequence Gal.6.139.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311139, there is no canonical definition to state claims against.
-/

/-! ## A311139.P9189929853389586870

`A311138(n)+A055641(A002531(n))`
-/

namespace A311139.P9189929853389586870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311138 n + A055641 (A002531 n).toNat

end

end A311139.P9189929853389586870

/-! ## A311139.P3281591068769458832

`A311138(n)+A185284(A251748(n))`
-/

namespace A311139.P3281591068769458832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311138 n + A185284 (A251748 n).toNat

end

end A311139.P3281591068769458832

/-! ## A311139.P6844781410100210638

`xor(A037912(A011782(n)), A311138(n))`
-/

namespace A311139.P6844781410100210638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037912 (A011782 n).toNat) (A311138 n)

end

end A311139.P6844781410100210638

/-! ## A311139.P12267374073627643433

`A311138(n)+A180834(A187829(n+1))`
-/

namespace A311139.P12267374073627643433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311138 n + A180834 (A187829 (n + 1)).toNat

end

end A311139.P12267374073627643433

/-! ## A311139.P10681014506291406590

`A311143(n)-A017888(A187829(n+1))`
-/

namespace A311139.P10681014506291406590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311143 n - A017888 (A187829 (n + 1)).toNat

end

end A311139.P10681014506291406590

/-!
# A311140: Coordination sequence Gal.6.435.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311140, there is no canonical definition to state claims against.
-/

/-! ## A311140.P10148328396978608567

`2*A310806(n)-A310621(n)`
-/

namespace A311140.P10148328396978608567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310806 n - A310621 n

end

end A311140.P10148328396978608567

/-! ## A311140.P15438024555992042819

`A004277(A310806(n))-A310621(n)`
-/

namespace A311140.P15438024555992042819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A310806 n).toNat - A310621 n

end

end A311140.P15438024555992042819

/-! ## A311140.P8557825909387973536

`∑[A317713(∑[A208408(n+1)])]`
-/

namespace A311140.P8557825909387973536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311140.P8557825909387973536

/-! ## A311140.P9475989663261207665

`A012265(A019557(n))`
-/

namespace A311140.P9475989663261207665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A019557 n).toNat

end

end A311140.P9475989663261207665

/-! ## A311140.P6220123358820745111

`eq[A049206(n+1), A336162(n+1)]`
-/

namespace A311140.P6220123358820745111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311140.P6220123358820745111

/-!
# A311141: Coordination sequence Gal.5.238.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311141, there is no canonical definition to state claims against.
-/

/-! ## A311141.P14842218969752909390

`or(A008574(n), A331218(A083705(n)))`
-/

namespace A311141.P14842218969752909390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A331218 (A083705 n).toNat)

end

end A311141.P14842218969752909390

/-! ## A311141.P827535696320608739

`A311140(n)+A025466(A099036(n+2))`
-/

namespace A311141.P827535696320608739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311140 n + A025466 (A099036 (n + 2)).toNat

end

end A311141.P827535696320608739

/-! ## A311141.P2507381115103043124

`xor(A054908(A002113(n+1)), A311142(n))`
-/

namespace A311141.P2507381115103043124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054908 (A002113 (n + 1)).toNat) (A311142 n)

end

end A311141.P2507381115103043124

/-! ## A311141.P3833039776643670738

`xor(A054908(A002113(n+1)), A311143(n))`
-/

namespace A311141.P3833039776643670738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054908 (A002113 (n + 1)).toNat) (A311143 n)

end

end A311141.P3833039776643670738

/-! ## A311141.P10690561831954072393

`A012265(A074834(n+1)+A004767(3*n))`
-/

namespace A311141.P10690561831954072393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A074834 (n + 1) + A004767 (3 * n)).toNat

end

end A311141.P10690561831954072393

/-!
# A311142: Coordination sequence Gal.6.242.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311142, there is no canonical definition to state claims against.
-/

/-! ## A311142.P14319423998897668081

`and(A008579(A000225(n)), A311152(n))`
-/

namespace A311142.P14319423998897668081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008579 (A000225 n).toNat) (A311152 n)

end

end A311142.P14319423998897668081

/-! ## A311142.P16566327022285214015

`A311143(A354522(∑[n]))`
-/

namespace A311142.P16566327022285214015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311143 (A354522 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311142.P16566327022285214015

/-! ## A311142.P17970986449189818130

`A311143(lcm(n, A213000(n)))`
-/

namespace A311142.P17970986449189818130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311143 (Int.lcm (n : ℤ) (A213000 n))

end

end A311142.P17970986449189818130

/-! ## A311142.P6435527931775323735

`A311143(n)%A376950(n+2)`
-/

namespace A311142.P6435527931775323735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311143 n) (A376950 (n + 2))

end

end A311142.P6435527931775323735

/-! ## A311142.P76660433622327372

`A311143(n)+A000007(A275864(n))`
-/

namespace A311142.P76660433622327372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311143 n + A000007 (A275864 n).toNat

end

end A311142.P76660433622327372

/-!
# A311143: Coordination sequence Gal.6.237.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311143, there is no canonical definition to state claims against.
-/

/-! ## A311143.P8856530649889507431

`∑[A263765(A266355(n))]*A040000(n)`
-/

namespace A311143.P8856530649889507431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (A266355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A040000 n

end

end A311143.P8856530649889507431

/-! ## A311143.P14048086553338462332

`A307629(A281724(n+1))+A008574(n)`
-/

namespace A311143.P14048086553338462332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 (A281724 (n + 1)).toNat + A008574 n

end

end A311143.P14048086553338462332

/-! ## A311143.P8518845988470980810

`∑[A263765(A266355(n))]*A000122(n²)`
-/

namespace A311143.P8518845988470980810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (A266355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000122 (n ^ 2)

end

end A311143.P8518845988470980810

/-! ## A311143.P14021423092458428467

`∑[A263765(A266355(n))]*A036453(n+1)`
-/

namespace A311143.P14021423092458428467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (A266355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A036453 (n + 1)

end

end A311143.P14021423092458428467

/-! ## A311143.P12732709112445113657

`(A178334(n)+1)*∑[A263765(A266355(n))]`
-/

namespace A311143.P12732709112445113657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (A266355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A311143.P12732709112445113657

/-!
# A311144: Coordination sequence Gal.6.459.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311144, there is no canonical definition to state claims against.
-/

/-! ## A311144.P12042622555306637868

`A218876(A002729(n))+A008574(n)`
-/

namespace A311144.P12042622555306637868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218876 (A002729 n).toNat + A008574 n

end

end A311144.P12042622555306637868

/-! ## A311144.P8313335874911640623

`A025442(A077740(n+1))+A008574(n)`
-/

namespace A311144.P8313335874911640623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A077740 (n + 1)).toNat + A008574 n

end

end A311144.P8313335874911640623

/-! ## A311144.P13400529851602368833

`xor(A004277(2*n), A280639(A099325(n)))`
-/

namespace A311144.P13400529851602368833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004277 (2 * n)) (A280639 (A099325 n).toNat)

end

end A311144.P13400529851602368833

/-! ## A311144.P1507214015047787259

`A008574(C(∑{d}[n+1, #], 18)+n)`
-/

namespace A311144.P1507214015047787259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) 18 + n)

end

end A311144.P1507214015047787259

/-! ## A311144.P10945709544825438905

`A365920(A188158(n+1))+A008574(n)`
-/

namespace A311144.P10945709544825438905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365920 (A188158 (n + 1)).toNat + A008574 n

end

end A311144.P10945709544825438905

/-!
# A311145: Coordination sequence Gal.6.146.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311145, there is no canonical definition to state claims against.
-/

/-! ## A311145.P6148286629318381994

`A182220(A313683(n)+2)`
-/

namespace A311145.P6148286629318381994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A313683 n + 2).toNat

end

end A311145.P6148286629318381994

/-! ## A311145.P9291289849765492422

`A313735(n)-A108611(6*n)`
-/

namespace A311145.P9291289849765492422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313735 n - A108611 (6 * n)

end

end A311145.P9291289849765492422

/-! ## A311145.P12389120617920970636

`xor(A280046(A276086(n)), A311431(n))`
-/

namespace A311145.P12389120617920970636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280046 (A276086 n).toNat) (A311431 n)

end

end A311145.P12389120617920970636

/-! ## A311145.P15212516545046864249

`A311148(n)-A168184(A089454(n+1))`
-/

namespace A311145.P15212516545046864249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311148 n - A168184 (A089454 (n + 1)).toNat

end

end A311145.P15212516545046864249

/-! ## A311145.P9127998753937901354

`∑[∑[A127093(A061712(n+1))]]`
-/

namespace A311145.P9127998753937901354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A061712 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311145.P9127998753937901354

/-!
# A311146: Coordination sequence Gal.6.139.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311146, there is no canonical definition to state claims against.
-/

/-! ## A311146.P8150931799052049127

`A225541(A036638(n))+A008574(n)`
-/

namespace A311146.P8150931799052049127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A036638 n).toNat + A008574 n

end

end A311146.P8150931799052049127

/-! ## A311146.P8835192862006744427

`A263364(A187829(n+1))+A188188(3*n+1)`
-/

namespace A311146.P8835192862006744427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263364 (A187829 (n + 1)).toNat + A188188 (3 * n + 1)

end

end A311146.P8835192862006744427

/-! ## A311146.P5981710714637428880

`∑[A102313(xor(1, 7*n)+n)]`
-/

namespace A311146.P5981710714637428880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102313 (Nat.xor 1 (7 * n) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311146.P5981710714637428880

/-! ## A311146.P5994848352327283786

`∑[floor(log2(A261908(3*n+1))/2)]`
-/

namespace A311146.P5994848352327283786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A261908 (3 * n + 1) : ℝ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311146.P5994848352327283786

/-!
# A311147: Coordination sequence Gal.6.242.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311147, there is no canonical definition to state claims against.
-/

/-! ## A311147.P705100194020773895

`A311148(n)-A185284(A251711(n)+1)`
-/

namespace A311147.P705100194020773895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311148 n - A185284 (A251711 n + 1).toNat

end

end A311147.P705100194020773895

/-! ## A311147.P8710509181505911472

`A311148(n)-A185284(A269303(n+1))`
-/

namespace A311147.P8710509181505911472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311148 n - A185284 (A269303 (n + 1)).toNat

end

end A311147.P8710509181505911472

/-! ## A311147.P4285122356921267757

`A311148(n)-A185284(A251712(n)+2)`
-/

namespace A311147.P4285122356921267757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311148 n - A185284 (A251712 n + 2).toNat

end

end A311147.P4285122356921267757

/-! ## A311147.P17928171821692394673

`A311145(n)+A185284(A007947(3*n+4))`
-/

namespace A311147.P17928171821692394673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311145 n + A185284 (A007947 (3 * n + 4)).toNat

end

end A311147.P17928171821692394673

/-! ## A311147.P14749754714703172247

`A175553(A348798(n)+A083652(n))`
-/

namespace A311147.P14749754714703172247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (A348798 n + A083652 n).toNat

end

end A311147.P14749754714703172247

/-!
# A311148: Coordination sequence Gal.6.237.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311148, there is no canonical definition to state claims against.
-/

/-! ## A311148.P11199389671989377814

`A311147(n)+A093391(A077168(n))`
-/

namespace A311148.P11199389671989377814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + A093391 (A077168 n).toNat

end

end A311148.P11199389671989377814

/-! ## A311148.P9037085424263394818

`A311134(n)+A286852(A146652(n+1))`
-/

namespace A311148.P9037085424263394818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311134 n + A286852 (A146652 (n + 1)).toNat

end

end A311148.P9037085424263394818

/-! ## A311148.P3529263413914588764

`A282290(A001678(n))+A008574(n)`
-/

namespace A311148.P3529263413914588764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282290 (A001678 n).toNat + A008574 n

end

end A311148.P3529263413914588764

/-! ## A311148.P44254920878329332

`A311147(n)+A025437(A208059(n))`
-/

namespace A311148.P44254920878329332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + A025437 (A208059 n).toNat

end

end A311148.P44254920878329332

/-! ## A311148.P9478217807035513363

`A311147(n)+A284261(A284298(n))`
-/

namespace A311148.P9478217807035513363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + A284261 (A284298 n).toNat

end

end A311148.P9478217807035513363

/-!
# A311149: Coordination sequence Gal.6.127.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311149, there is no canonical definition to state claims against.
-/

/-! ## A311149.P12223016523558018230

`A311219(n)+A311241(n)-A311275(n)`
-/

namespace A311149.P12223016523558018230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311219 n + (A311241 n - A311275 n)

end

end A311149.P12223016523558018230

/-! ## A311149.P7779446344013346304

`A311150(n)-A086080(A099099(n))`
-/

namespace A311149.P7779446344013346304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311150 n - A086080 (A099099 n).toNat

end

end A311149.P7779446344013346304

/-! ## A311149.P8328140202210950584

`A311150(n)-A235145(A036640(n))`
-/

namespace A311149.P8328140202210950584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311150 n - A235145 (A036640 n).toNat

end

end A311149.P8328140202210950584

/-! ## A311149.P13197914062613895318

`A311150(n)-A185284(A109434(n))`
-/

namespace A311149.P13197914062613895318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311150 n - A185284 (A109434 n).toNat

end

end A311149.P13197914062613895318

/-! ## A311149.P6668996376834272301

`A311247(n)-A277155(A238859(n))`
-/

namespace A311149.P6668996376834272301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311247 n - A277155 (A238859 n).toNat

end

end A311149.P6668996376834272301

/-!
# A311150: Coordination sequence Gal.6.123.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311150, there is no canonical definition to state claims against.
-/

/-! ## A311150.P16368212183361389532

`A311149(n)+A086080(A099099(n))`
-/

namespace A311150.P16368212183361389532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311149 n + A086080 (A099099 n).toNat

end

end A311150.P16368212183361389532

/-! ## A311150.P771211367387516474

`A311149(n)+A235145(A036640(n))`
-/

namespace A311150.P771211367387516474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311149 n + A235145 (A036640 n).toNat

end

end A311150.P771211367387516474

/-! ## A311150.P11967869875808740439

`A311149(n)+A185284(A109434(n))`
-/

namespace A311150.P11967869875808740439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311149 n + A185284 (A109434 n).toNat

end

end A311150.P11967869875808740439

/-! ## A311150.P15353077352349635004

`A311149(n)-A030121(A147365(n+1))`
-/

namespace A311150.P15353077352349635004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311149 n - A030121 (A147365 (n + 1)).toNat

end

end A311150.P15353077352349635004

/-! ## A311150.P5231323131439933137

`A311155(n)-A284939(A147253(n+1))`
-/

namespace A311150.P5231323131439933137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311155 n - A284939 (A147253 (n + 1)).toNat

end

end A311150.P5231323131439933137

/-!
# A311151: Coordination sequence Gal.5.78.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311151, there is no canonical definition to state claims against.
-/

/-! ## A311151.P7833666823091608089

`A311152(n)+A178798(A174527(n))`
-/

namespace A311151.P7833666823091608089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311152 n + A178798 (A174527 n).toNat

end

end A311151.P7833666823091608089

/-! ## A311151.P4180146413325390447

`A311147(n)+A163351(A306860(n))`
-/

namespace A311151.P4180146413325390447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + A163351 (A306860 n).toNat

end

end A311151.P4180146413325390447

/-! ## A311151.P14625741366911543609

`A311152(n)+A178798(A306860(n))`
-/

namespace A311151.P14625741366911543609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311152 n + A178798 (A306860 n).toNat

end

end A311151.P14625741366911543609

/-! ## A311151.P13644486999898157908

`A311152(n)-A048412(A068045(n))`
-/

namespace A311151.P13644486999898157908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311152 n - A048412 (A068045 n).toNat

end

end A311151.P13644486999898157908

/-! ## A311151.P13907078640469743819

`A311147(n)-A178798(A000124(n))`
-/

namespace A311151.P13907078640469743819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n - A178798 (A000124 n).toNat

end

end A311151.P13907078640469743819

/-!
# A311152: Coordination sequence Gal.5.73.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311152, there is no canonical definition to state claims against.
-/

/-! ## A311152.P450667727601601624

`A311147(n)+A010051(A146173(n+2))`
-/

namespace A311152.P450667727601601624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + A010051 (A146173 (n + 2)).toNat

end

end A311152.P450667727601601624

/-! ## A311152.P2655192010407690560

`A311147(n)+Δ[A171765(A077168(n))]`
-/

namespace A311152.P2655192010407690560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + (f1 (n + 1) - f1 n)

end

end A311152.P2655192010407690560

/-! ## A311152.P6134389823960061607

`A311151(n)+A048412(A068045(n))`
-/

namespace A311152.P6134389823960061607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311151 n + A048412 (A068045 n).toNat

end

end A311152.P6134389823960061607

/-! ## A311152.P16769196764915216914

`A311151(n)+A178798(A074677(n))`
-/

namespace A311152.P16769196764915216914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311151 n + A178798 (A074677 n).toNat

end

end A311152.P16769196764915216914

/-! ## A311152.P6590032899611963905

`A311151(n)-A178798(A174527(n))`
-/

namespace A311152.P6590032899611963905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311151 n - A178798 (A174527 n).toNat

end

end A311152.P6590032899611963905

/-!
# A311153: Coordination sequence Gal.5.121.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311153, the canonical program `A311153.P6232300738477938526` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311153 has offset 0).

The definition of A311153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311153.P17713996451206194496

`2*A311686(n)-A312248(n)`
-/

namespace A311153.P17713996451206194496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311686 n - A312248 n

end

end A311153.P17713996451206194496

namespace A311153

/-- `2*A311686(n)-A312248(n)` -/
def P17713996451206194496.Spec : Prop :=
  ∀ n, P17713996451206194496.a n = A311153 n

end A311153

/-! ## A311153.P3469161770024075869

`A005843(A311686(n))-A312248(n)`
-/

namespace A311153.P3469161770024075869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311686 n).toNat - A312248 n

end

end A311153.P3469161770024075869

namespace A311153

/-- `A005843(A311686(n))-A312248(n)` -/
def P3469161770024075869.Spec : Prop :=
  ∀ n, P3469161770024075869.a n = A311153 n

end A311153

/-! ## A311153.P6232300738477938526

`A310533(n)+A008574(n)-A310530(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A311153

/-- `A310533(n)+A008574(n)-A310530(n)` -/
def P6232300738477938526.Spec : Prop :=
  ∀ n, P6232300738477938526.a n = A311153 n

theorem P6232300738477938526.correct : P6232300738477938526.Spec := by
  intro n
  simp only [A311153]

end A311153

/-! ## A311153.P1100104118349262962

`A310533(n)-A310530(n)%A004277(n)`
-/

namespace A311153.P1100104118349262962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310533 n - Int.tmod (A310530 n) (A004277 n)

end

end A311153.P1100104118349262962

namespace A311153

/-- `A310533(n)-A310530(n)%A004277(n)` -/
def P1100104118349262962.Spec : Prop :=
  ∀ n, P1100104118349262962.a n = A311153 n

end A311153

/-! ## A311153.P14895958105391735085

`A008574(n)+2*A314253(n)-A008458(n)-A310530(n)`
-/

namespace A311153.P14895958105391735085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (2 * A314253 n - A008458 n) - A310530 n

end

end A311153.P14895958105391735085

namespace A311153

/-- `A008574(n)+2*A314253(n)-A008458(n)-A310530(n)` -/
def P14895958105391735085.Spec : Prop :=
  ∀ n, P14895958105391735085.a n = A311153 n

theorem P14895958105391735085.correct : P14895958105391735085.Spec := by
  intro n
  simp only [A311153, Nat.add_sub_cancel, A311153.P14895958105391735085.a, A311153.P6232300738477938526.a, A008458, A008458.P7339383310184415644.a, A008574, A008574.P1300280032690682112.a, A310530, A310530.P10773156038924726472.a, A310533, A310533.P10206175859937310339.a, A314253, A314253.P2574229848549978750.a, A004525, A004525.P4158271949796742323.a, A008592, A008592.P4981059802862696142.a, A314669, A314669.P15172117768028029009.a, A314707, A314707.P15635996145671668947.f1, A314707.P15635996145671668947.a, A011864, A011864.P3547417513882699266.a, A314837, A314837.P13056047557632493089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311153

/-! ## A311153.P9357690143412989916

`A315173(n)+A008574(n)-A315170(n)`
-/

namespace A311153.P9357690143412989916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n + A008574 n - A315170 n

end

end A311153.P9357690143412989916

namespace A311153

/-- `A315173(n)+A008574(n)-A315170(n)` -/
def P9357690143412989916.Spec : Prop :=
  ∀ n, P9357690143412989916.a n = A311153 n

end A311153

/-!
# A311154: Coordination sequence Gal.6.228.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311154, there is no canonical definition to state claims against.
-/

/-! ## A311154.P4388722488965110465

`2*A311246(n)-A311339(n)`
-/

namespace A311154.P4388722488965110465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311246 n - A311339 n

end

end A311154.P4388722488965110465

/-! ## A311154.P1064588079601379626

`A004277(A311246(n))-A311339(n)`
-/

namespace A311154.P1064588079601379626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311246 n).toNat - A311339 n

end

end A311154.P1064588079601379626

/-! ## A311154.P7079826321930029225

`A311155(n)-A045839(A125666(n+1))`
-/

namespace A311154.P7079826321930029225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311155 n - A045839 (A125666 (n + 1)).toNat

end

end A311154.P7079826321930029225

/-! ## A311154.P11595214163604463359

`A311155(A122201(∑[n]))`
-/

namespace A311154.P11595214163604463359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311155 (A122201 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311154.P11595214163604463359

/-! ## A311154.P7743361473258419454

`A311155(A122203(∑[n]))`
-/

namespace A311154.P7743361473258419454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311155 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311154.P7743361473258419454

/-!
# A311155: Coordination sequence Gal.6.224.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311155, there is no canonical definition to state claims against.
-/

/-! ## A311155.P145540924297867454

`2*A311247(n)-A311340(n)`
-/

namespace A311155.P145540924297867454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311247 n - A311340 n

end

end A311155.P145540924297867454

/-! ## A311155.P6197427804828499158

`A005843(A311247(n))-A311340(n)`
-/

namespace A311155.P6197427804828499158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311247 n).toNat - A311340 n

end

end A311155.P6197427804828499158

/-! ## A311155.P17808570567769199106

`A311150(n)+A284939(A147253(n+1))`
-/

namespace A311155.P17808570567769199106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311150 n + A284939 (A147253 (n + 1)).toNat

end

end A311155.P17808570567769199106

/-! ## A311155.P16956729787708122092

`record[A338922(2*n+1)]%A338933(2*n+3)`
-/

namespace A311155.P16956729787708122092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338922 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A338933 (2 * n + 3))

end

end A311155.P16956729787708122092

/-! ## A311155.P15022438082797265106

`A315173(n)-A344908(A000079(n))`
-/

namespace A311155.P15022438082797265106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n - A344908 (A000079 n).toNat

end

end A311155.P15022438082797265106

/-!
# A311156: Coordination sequence Gal.5.118.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311156, there is no canonical definition to state claims against.
-/

/-! ## A311156.P4377216835250445150

`A311240(n)-A010894(A311157(n))`
-/

namespace A311156.P4377216835250445150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311240 n - A010894 ((A311157 n).toNat + 21)

end

end A311156.P4377216835250445150

/-! ## A311156.P10474959109376412087

`∑[∑[A053694(A041456(n))]]`
-/

namespace A311156.P10474959109376412087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053694 (A041456 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311156.P10474959109376412087

/-! ## A311156.P8152204016624524413

`∑[∑[A127249(A127272(n+1))]]`
-/

namespace A311156.P8152204016624524413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127249 (A127272 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311156.P8152204016624524413

/-! ## A311156.P925812536301617006

`∑[∑[A002654(A303676(n+1))]]`
-/

namespace A311156.P925812536301617006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A303676 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311156.P925812536301617006

/-! ## A311156.P12273965650695557187

`∑[∑[A351819(A060640(n+1))]]`
-/

namespace A311156.P12273965650695557187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351819 (A060640 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311156.P12273965650695557187

/-!
# A311157: Coordination sequence Gal.4.89.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311157, the canonical program `A311157.P16536294086485933595` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311157 has offset 0).

The definition of A311157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311157.P12161457718846717595

`abs(A191275(n+1)+A314670(n)-A008592(n))`
-/

namespace A311157.P12161457718846717595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A191275 (n + 1) + (A314670 n - A008592 n)|

end

end A311157.P12161457718846717595

namespace A311157

/-- `abs(A191275(n+1)+A314670(n)-A008592(n))` -/
def P12161457718846717595.Spec : Prop :=
  ∀ n, P12161457718846717595.a n = A311157 n

end A311157

/-! ## A311157.P4319057683360820142

`A008458(n)+A008574(n)-A314670(n)-A191275(n+1)`
-/

namespace A311157.P4319057683360820142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314670 n) - A191275 (n + 1)

end

end A311157.P4319057683360820142

namespace A311157

/-- `A008458(n)+A008574(n)-A314670(n)-A191275(n+1)` -/
def P4319057683360820142.Spec : Prop :=
  ∀ n, P4319057683360820142.a n = A311157 n

end A311157

/-! ## A311157.P16536294086485933595

`A047299(n+1)+A311958(n)-A191275(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311157

/-- `A047299(n+1)+A311958(n)-A191275(n+1)` -/
def P16536294086485933595.Spec : Prop :=
  ∀ n, P16536294086485933595.a n = A311157 n

theorem P16536294086485933595.correct : P16536294086485933595.Spec := by
  intro n
  simp only [A311157]

end A311157

/-! ## A311157.P13862806870610600168

`A151988(n)+A313090(n)-A191275(n+1)`
-/

namespace A311157.P13862806870610600168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A313090 n - A191275 (n + 1))

end

end A311157.P13862806870610600168

namespace A311157

/-- `A151988(n)+A313090(n)-A191275(n+1)` -/
def P13862806870610600168.Spec : Prop :=
  ∀ n, P13862806870610600168.a n = A311157 n

end A311157

/-! ## A311157.P9286237807712317036

`A313116(n)-A191275(n+1)+n`
-/

namespace A311157.P9286237807712317036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n - A191275 (n + 1) + (n : ℤ)

end

end A311157.P9286237807712317036

namespace A311157

/-- `A313116(n)-A191275(n+1)+n` -/
def P9286237807712317036.Spec : Prop :=
  ∀ n, P9286237807712317036.a n = A311157 n

end A311157

/-! ## A311157.P14549750265682123279

`A314674(n)+A313116(n)-A008706(n)`
-/

namespace A311157.P14549750265682123279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + A313116 n - A008706 n

end

end A311157.P14549750265682123279

namespace A311157

/-- `A314674(n)+A313116(n)-A008706(n)` -/
def P14549750265682123279.Spec : Prop :=
  ∀ n, P14549750265682123279.a n = A311157 n

end A311157

/-! ## A311157.P16032943599662503701

`A314674(n)+A008706(n)-A315468(n)`
-/

namespace A311157.P16032943599662503701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + A008706 n - A315468 n

end

end A311157.P16032943599662503701

namespace A311157

/-- `A314674(n)+A008706(n)-A315468(n)` -/
def P16032943599662503701.Spec : Prop :=
  ∀ n, P16032943599662503701.a n = A311157 n

end A311157

/-! ## A311157.P11342597339761143067

`A314252(n)-A191275(n+1)`
-/

namespace A311157.P11342597339761143067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A191275 (n + 1)

end

end A311157.P11342597339761143067

namespace A311157

/-- `A314252(n)-A191275(n+1)` -/
def P11342597339761143067.Spec : Prop :=
  ∀ n, P11342597339761143067.a n = A311157 n

end A311157

/-! ## A311157.P1419888623133928731

`A315761(n)-(A330025(n)+A191275(n+1))`
-/

namespace A311157.P1419888623133928731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - (A330025 n + A191275 (n + 1))

end

end A311157.P1419888623133928731

namespace A311157

/-- `A315761(n)-(A330025(n)+A191275(n+1))` -/
def P1419888623133928731.Spec : Prop :=
  ∀ n, P1419888623133928731.a n = A311157 n

end A311157

/-!
# A311158: Coordination sequence Gal.6.480.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311158, there is no canonical definition to state claims against.
-/

/-! ## A311158.P14740007363731836601

`A311163(n)-A178926(A222779(n+1))`
-/

namespace A311158.P14740007363731836601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311163 n - A178926 (A222779 (n + 1)).toNat

end

end A311158.P14740007363731836601

/-! ## A311158.P10849789658468902180

`A161886(n+1)+A001221(A163176(n+1))`
-/

namespace A311158.P10849789658468902180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161886 (n + 1) + A001221 (A163176 (n + 1)).toNat

end

end A311158.P10849789658468902180

/-!
# A311159: Coordination sequence Gal.6.117.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311159, the canonical program `A311159.P5266207967888646588` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311159 has offset 0).

The definition of A311159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311159.P5266207967888646588

`A008574(n)+A311332(n)-A311331(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A311159

/-- `A008574(n)+A311332(n)-A311331(n)` -/
def P5266207967888646588.Spec : Prop :=
  ∀ n, P5266207967888646588.a n = A311159 n

theorem P5266207967888646588.correct : P5266207967888646588.Spec := by
  intro n
  simp only [A311159]

end A311159

/-! ## A311159.P22972007517243663

`A311332(n)-A311331(n)%A004277(n)`
-/

namespace A311159.P22972007517243663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311332 n - Int.tmod (A311331 n) (A004277 n)

end

end A311159.P22972007517243663

namespace A311159

/-- `A311332(n)-A311331(n)%A004277(n)` -/
def P22972007517243663.Spec : Prop :=
  ∀ n, P22972007517243663.a n = A311159 n

end A311159

/-! ## A311159.P14829802434268704962

`A314720(n)+A311332(n)-A314741(n)`
-/

namespace A311159.P14829802434268704962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314720 n + A311332 n - A314741 n

end

end A311159.P14829802434268704962

namespace A311159

/-- `A314720(n)+A311332(n)-A314741(n)` -/
def P14829802434268704962.Spec : Prop :=
  ∀ n, P14829802434268704962.a n = A311159 n

end A311159

/-! ## A311159.P18367719238295997738

`A351870(A311160(n))`
-/

namespace A311159.P18367719238295997738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311160 n).toNat

end

end A311159.P18367719238295997738

namespace A311159

/-- `A351870(A311160(n))` -/
def P18367719238295997738.Spec : Prop :=
  ∀ n, P18367719238295997738.a n = A311159 n

end A311159

/-! ## A311159.P5438832946071914069

`A311160(n)%(A197308(n+1)+1)`
-/

namespace A311159.P5438832946071914069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311160 n) (A197308 (n + 1) + 1)

end

end A311159.P5438832946071914069

namespace A311159

/-- `A311160(n)%(A197308(n+1)+1)` -/
def P5438832946071914069.Spec : Prop :=
  ∀ n, P5438832946071914069.a n = A311159 n

end A311159

/-!
# A311160: Coordination sequence Gal.6.116.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311160, there is no canonical definition to state claims against.
-/

/-! ## A311160.P11438315212400940490

`A000196(A311161(n)*A311196(n))`
-/

namespace A311160.P11438315212400940490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A311161 n * A311196 n).toNat

end

end A311160.P11438315212400940490

/-! ## A311160.P7453390861706006912

`A123068(A226764(n+4)+A008574(n))`
-/

namespace A311160.P7453390861706006912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A226764 (n + 4) + A008574 n).toNat

end

end A311160.P7453390861706006912

/-! ## A311160.P5513045021814195722

`∑[A333868(A208149(A000124(n)))]`
-/

namespace A311160.P5513045021814195722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333868 (A208149 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311160.P5513045021814195722

/-!
# A311161: Coordination sequence Gal.6.383.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311161, there is no canonical definition to state claims against.
-/

/-! ## A311161.P7828244075198729411

`eq[1, A279244(n+1)%6]`
-/

namespace A311161.P7828244075198729411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279244 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A311161.P7828244075198729411

/-! ## A311161.P5127736677017961338

`eq[1, A010875(A279244(n+1))]`
-/

namespace A311161.P5127736677017961338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A279244 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A311161.P5127736677017961338

/-! ## A311161.P8027908479756803727

`A313026(n)-A201219(A000325(n))`
-/

namespace A311161.P8027908479756803727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n - A201219 (A000325 n).toNat

end

end A311161.P8027908479756803727

/-! ## A311161.P14559669066041224675

`A313026(n)-A304095(A135092(n))`
-/

namespace A311161.P14559669066041224675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n - A304095 (A135092 n).toNat

end

end A311161.P14559669066041224675

/-! ## A311161.P1140691355843465567

`A008574(n)+∑[A094912(A305750(n))]`
-/

namespace A311161.P1140691355843465567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094912 (A305750 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311161.P1140691355843465567

/-!
# A311162: Coordination sequence Gal.6.127.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311162, there is no canonical definition to state claims against.
-/

/-! ## A311162.P16194264262666472666

`A311163(n)-A340998(A066806(n))`
-/

namespace A311162.P16194264262666472666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311163 n - A340998 ((A066806 n).toNat + 140)

end

end A311162.P16194264262666472666

/-! ## A311162.P16897592138150031925

`A311163(n)-A340998(A321359(n))`
-/

namespace A311162.P16897592138150031925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311163 n - A340998 ((A321359 n).toNat + 140)

end

end A311162.P16897592138150031925

/-! ## A311162.P9763934651634201016

`A311163(n)-A025469(A279754(n))`
-/

namespace A311162.P9763934651634201016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311163 n - A025469 (A279754 n).toNat

end

end A311162.P9763934651634201016

/-! ## A311162.P15384759233316363352

`A311163(A122283(∑[n]))`
-/

namespace A311162.P15384759233316363352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311163 (A122283 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311162.P15384759233316363352

/-! ## A311162.P16357191081209178485

`A311163(n)%A127592(A006127(n))`
-/

namespace A311162.P16357191081209178485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311163 n) (A127592 (A006127 n).toNat)

end

end A311162.P16357191081209178485

/-!
# A311163: Coordination sequence Gal.6.123.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311163, there is no canonical definition to state claims against.
-/

/-! ## A311163.P5042073681452241013

`A311162(n)+A025469(A279754(n))`
-/

namespace A311163.P5042073681452241013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311162 n + A025469 (A279754 n).toNat

end

end A311163.P5042073681452241013

/-! ## A311163.P6787318932485086692

`A311162(n)+A102683(A329530(n))`
-/

namespace A311163.P6787318932485086692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311162 n + A102683 (A329530 n).toNat

end

end A311163.P6787318932485086692

/-! ## A311163.P540102436670423097

`A311162(n)+A185284(A251748(n))`
-/

namespace A311163.P540102436670423097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311162 n + A185284 (A251748 n).toNat

end

end A311163.P540102436670423097

/-!
# A311164: Coordination sequence Gal.5.121.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311164, the canonical program `A311164.P13411701003134110298` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311164 has offset 0).

The definition of A311164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311164.P13411701003134110298

`A008574(n)-(A313475(n)-(A315685(n)-n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A311164

/-- `A008574(n)-(A313475(n)-(A315685(n)-n))` -/
def P13411701003134110298.Spec : Prop :=
  ∀ n, P13411701003134110298.a n = A311164 n

theorem P13411701003134110298.correct : P13411701003134110298.Spec := by
  intro n
  simp only [A311164]

end A311164

/-! ## A311164.P12908211155180724321

`A313480(n)+A008574(n)-A313475(n)`
-/

namespace A311164.P12908211155180724321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + A008574 n - A313475 n

end

end A311164.P12908211155180724321

namespace A311164

/-- `A313480(n)+A008574(n)-A313475(n)` -/
def P12908211155180724321.Spec : Prop :=
  ∀ n, P12908211155180724321.a n = A311164 n

theorem P12908211155180724321.correct : P12908211155180724321.Spec := by
  intro n
  simp only [A311164, Nat.add_sub_cancel, A311164.P12908211155180724321.a, A311164.P13411701003134110298.a, A008574, A008574.P1300280032690682112.a, A313475, A313475.P17328450546123291622.a, A313480, A313480.P5748992067713966907.a, A315685, A315685.P11286154691469663950.a, A008592, A008592.P4981059802862696142.a, A313929, A313929.P15374622491825537121.f1, A313929.P15374622491825537121.a, A011864, A011864.P3547417513882699266.a, A313814, A313814.P16685413866964249119.a, A313738, A313738.P18419223100438122022.a, A313788, A313788.P6713366544553221303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311164

/-! ## A311164.P3362585928944977044

`A311166(n)-A083896(A000079(n+1))`
-/

namespace A311164.P3362585928944977044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n - A083896 (A000079 (n + 1)).toNat

end

end A311164.P3362585928944977044

namespace A311164

/-- `A311166(n)-A083896(A000079(n+1))` -/
def P3362585928944977044.Spec : Prop :=
  ∀ n, P3362585928944977044.a n = A311164 n

end A311164

/-! ## A311164.P1750437462737585982

`A311167(n)-A083896(A000079(n+1))`
-/

namespace A311164.P1750437462737585982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n - A083896 (A000079 (n + 1)).toNat

end

end A311164.P1750437462737585982

namespace A311164

/-- `A311167(n)-A083896(A000079(n+1))` -/
def P1750437462737585982.Spec : Prop :=
  ∀ n, P1750437462737585982.a n = A311164 n

end A311164

/-! ## A311164.P16605304259882252469

`A311166(n)-A083896(2*A000079(n))`
-/

namespace A311164.P16605304259882252469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n - A083896 (2 * A000079 n).toNat

end

end A311164.P16605304259882252469

namespace A311164

/-- `A311166(n)-A083896(2*A000079(n))` -/
def P16605304259882252469.Spec : Prop :=
  ∀ n, P16605304259882252469.a n = A311164 n

end A311164

/-!
# A311165: Coordination sequence Gal.5.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311165, the canonical program `A311165.P16138864998668461834` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311165 has offset 0).

The definition of A311165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311165.P16138864998668461834

`A008574(n)+A313803(n)-A313799(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311165

/-- `A008574(n)+A313803(n)-A313799(n)` -/
def P16138864998668461834.Spec : Prop :=
  ∀ n, P16138864998668461834.a n = A311165 n

theorem P16138864998668461834.correct : P16138864998668461834.Spec := by
  intro n
  simp only [A311165]

end A311165

/-! ## A311165.P4345785386564122055

`A313803(n)-A313799(n)%A004277(n)`
-/

namespace A311165.P4345785386564122055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n - Int.tmod (A313799 n) (A004277 n)

end

end A311165.P4345785386564122055

namespace A311165

/-- `A313803(n)-A313799(n)%A004277(n)` -/
def P4345785386564122055.Spec : Prop :=
  ∀ n, P4345785386564122055.a n = A311165 n

end A311165

/-! ## A311165.P8016090903193816573

`A004277(2*n)+A313803(n)-A313799(n)`
-/

namespace A311165.P8016090903193816573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (A313803 n - A313799 n)

end

end A311165.P8016090903193816573

namespace A311165

/-- `A004277(2*n)+A313803(n)-A313799(n)` -/
def P8016090903193816573.Spec : Prop :=
  ∀ n, P8016090903193816573.a n = A311165 n

end A311165

/-! ## A311165.P6646730262328237734

`A008486(n)+A313803(n)-A313799(n)+n`
-/

namespace A311165.P6646730262328237734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313803 n - A313799 n + (n : ℤ))

end

end A311165.P6646730262328237734

namespace A311165

/-- `A008486(n)+A313803(n)-A313799(n)+n` -/
def P6646730262328237734.Spec : Prop :=
  ∀ n, P6646730262328237734.a n = A311165 n

end A311165

/-! ## A311165.P4858635146194177325

`A008706(n)+A313803(n)-A313799(n)-n`
-/

namespace A311165.P4858635146194177325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A313803 n - A313799 n - (n : ℤ))

end

end A311165.P4858635146194177325

namespace A311165

/-- `A008706(n)+A313803(n)-A313799(n)-n` -/
def P4858635146194177325.Spec : Prop :=
  ∀ n, P4858635146194177325.a n = A311165 n

end A311165

/-!
# A311166: Coordination sequence Gal.6.242.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311166, there is no canonical definition to state claims against.
-/

/-! ## A311166.P10727927113879156684

`record[A311167(n)%or(60, A088748(n))]`
-/

namespace A311166.P10727927113879156684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311167 n) (Int.lor 60 (A088748 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311166.P10727927113879156684

/-! ## A311166.P1631561924319860472

`A311167(n)-A185284(A002125(n))`
-/

namespace A311166.P1631561924319860472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n - A185284 (A002125 n).toNat

end

end A311166.P1631561924319860472

/-! ## A311166.P17728987766213615622

`A311167(n)-A185284(A008732(n))`
-/

namespace A311166.P17728987766213615622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n - A185284 (A008732 n).toNat

end

end A311166.P17728987766213615622

/-! ## A311166.P12738453109395435077

`A311167(n)-A185284(A017981(n))`
-/

namespace A311166.P12738453109395435077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n - A185284 (A017981 n).toNat

end

end A311166.P12738453109395435077

/-! ## A311166.P16317775446571994768

`A311167(n)-A185284(A282504(n))`
-/

namespace A311166.P16317775446571994768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n - A185284 (A282504 n).toNat

end

end A311166.P16317775446571994768

/-!
# A311167: Coordination sequence Gal.6.146.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311167, there is no canonical definition to state claims against.
-/

/-! ## A311167.P8981851700949505969

`A311166(n)+A185284(A002125(n))`
-/

namespace A311167.P8981851700949505969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A185284 (A002125 n).toNat

end

end A311167.P8981851700949505969

/-! ## A311167.P8535519655225648685

`A311166(n)+A185284(A008732(n))`
-/

namespace A311167.P8535519655225648685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A185284 (A008732 n).toNat

end

end A311167.P8535519655225648685

/-! ## A311167.P7415320646659367431

`A311166(n)+A185284(A017981(n))`
-/

namespace A311167.P7415320646659367431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A185284 (A017981 n).toNat

end

end A311167.P7415320646659367431

/-! ## A311167.P3837850295827352935

`A311166(n)+A153174(A184955(n))`
-/

namespace A311167.P3837850295827352935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A153174 (A184955 n).toNat

end

end A311167.P3837850295827352935

/-! ## A311167.P9281898767261569635

`A311166(n)+A185284(A282504(n))`
-/

namespace A311167.P9281898767261569635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A185284 (A282504 n).toNat

end

end A311167.P9281898767261569635

/-!
# A311168: Coordination sequence Gal.6.139.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311168, there is no canonical definition to state claims against.
-/

/-! ## A311168.P16577499180056054840

`∑[A007318(p?[A097623(n+4)])]`
-/

namespace A311168.P16577499180056054840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097623 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311168.P16577499180056054840

/-! ## A311168.P11812251367897013077

`A311166(n)+A083896(A000079(n))`
-/

namespace A311168.P11812251367897013077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A083896 (A000079 n).toNat

end

end A311168.P11812251367897013077

/-! ## A311168.P2518361355611003772

`A311167(n)+A083896(A000079(n))`
-/

namespace A311168.P2518361355611003772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A083896 (A000079 n).toNat

end

end A311168.P2518361355611003772

/-! ## A311168.P11893646817920111726

`A311166(n)+A083896(A011782(n+1))`
-/

namespace A311168.P11893646817920111726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311166 n + A083896 (A011782 (n + 1)).toNat

end

end A311168.P11893646817920111726

/-! ## A311168.P2650841873858099643

`A311167(n)+A083896(A011782(n+1))`
-/

namespace A311168.P2650841873858099643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A083896 (A011782 (n + 1)).toNat

end

end A311168.P2650841873858099643

/-!
# A311169: Coordination sequence Gal.6.237.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311169, there is no canonical definition to state claims against.
-/

/-! ## A311169.P8527140271123963971

`A311167(n)+A126307(A011856(n))`
-/

namespace A311169.P8527140271123963971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A126307 (A011856 n).toNat

end

end A311169.P8527140271123963971

/-! ## A311169.P9129179422114848978

`∑[A097849(2*A312548(n))]`
-/

namespace A311169.P9129179422114848978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (2 * A312548 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311169.P9129179422114848978

/-! ## A311169.P6019794786670766760

`A182112(n)+A001222(A003418(n))`
-/

namespace A311169.P6019794786670766760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182112 n + A001222 (A003418 n).toNat

end

end A311169.P6019794786670766760

/-! ## A311169.P3039503801861795651

`∑[A212625(A339562(n+1))]`
-/

namespace A311169.P3039503801861795651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A339562 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311169.P3039503801861795651

/-! ## A311169.P16567044808131811313

`A020914(ceil(log2(A369109(n+1))))`
-/

namespace A311169.P16567044808131811313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 ⌈Real.logb 2 (A369109 (n + 1) : ℝ)⌉.toNat

end

end A311169.P16567044808131811313

/-!
# A311170: Coordination sequence Gal.6.228.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311170, there is no canonical definition to state claims against.
-/

/-! ## A311170.P16699855200274768640

`A311167(n)+A000035(A324417(n+1))`
-/

namespace A311170.P16699855200274768640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A000035 (A324417 (n + 1)).toNat

end

end A311170.P16699855200274768640

/-! ## A311170.P4578075735773472706

`A322358(A002426(n))+A311171(n)`
-/

namespace A311170.P4578075735773472706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A002426 n).toNat + A311171 n

end

end A311170.P4578075735773472706

/-! ## A311170.P17528443505828015058

`A311171(n)+A185035(A068932(n))`
-/

namespace A311170.P17528443505828015058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311171 n + A185035 (A068932 n).toNat

end

end A311170.P17528443505828015058

/-! ## A311170.P16355889131259615168

`A311171(n)+A000122(A070029(n+1))`
-/

namespace A311170.P16355889131259615168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311171 n + A000122 (A070029 (n + 1)).toNat

end

end A311170.P16355889131259615168

/-! ## A311170.P9086551812134081561

`A010879(A061247(n+1))*A311171(n)`
-/

namespace A311170.P9086551812134081561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A061247 (n + 1)).toNat * A311171 n

end

end A311170.P9086551812134081561

/-!
# A311171: Coordination sequence Gal.6.224.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311171, there is no canonical definition to state claims against.
-/

/-! ## A311171.P9921417345034426132

`A311167(n)+A064458(A187829(n+1))`
-/

namespace A311171.P9921417345034426132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A064458 (A187829 (n + 1)).toNat

end

end A311171.P9921417345034426132

/-! ## A311171.P16630572928004510201

`A311150(n)+A124761(A318650(n+1))`
-/

namespace A311171.P16630572928004510201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311150 n + A124761 (A318650 (n + 1)).toNat

end

end A311171.P16630572928004510201

/-! ## A311171.P16186003727839885083

`A311150(n)+A284939(A147253(n+2))`
-/

namespace A311171.P16186003727839885083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311150 n + A284939 (A147253 (n + 2)).toNat

end

end A311171.P16186003727839885083

/-! ## A311171.P8016412324661245904

`A311207(n)-A286996(A077139(n+2))`
-/

namespace A311171.P8016412324661245904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n - A286996 (A077139 (n + 2)).toNat

end

end A311171.P8016412324661245904

/-! ## A311171.P10044436117157045541

`A313480(n)-A001221(A208131(n))`
-/

namespace A311171.P10044436117157045541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n - A001221 (A208131 n).toNat

end

end A311171.P10044436117157045541

/-!
# A311172: Coordination sequence Gal.5.73.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311172, there is no canonical definition to state claims against.
-/

/-! ## A311172.P12391176483118230911

`A311170(n)+A284258(A050142(2*(n+2)))`
-/

namespace A311172.P12391176483118230911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311170 n + A284258 (A050142 (2 * (n + 2))).toNat

end

end A311172.P12391176483118230911

/-! ## A311172.P356440801482007573

`A311171(n)+A124761(A022144(n))`
-/

namespace A311172.P356440801482007573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311171 n + A124761 (A022144 n).toNat

end

end A311172.P356440801482007573

/-! ## A311172.P8074976653830948370

`or(A235145(A287324(n)), A311171(n))`
-/

namespace A311172.P8074976653830948370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235145 (A287324 n).toNat) (A311171 n)

end

end A311172.P8074976653830948370

/-! ## A311172.P16843487913557482722

`A311167(n)+A126307(A011856(n+1))`
-/

namespace A311172.P16843487913557482722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A126307 (A011856 (n + 1)).toNat

end

end A311172.P16843487913557482722

/-! ## A311172.P12014754678998782027

`A311170(n)+A240331(A258585(n+1))`
-/

namespace A311172.P12014754678998782027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311170 n + A240331 (A258585 (n + 1)).toNat

end

end A311172.P12014754678998782027

/-!
# A311173: Coordination sequence Gal.5.118.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311173, there is no canonical definition to state claims against.
-/

/-! ## A311173.P5850662184422640808

`A311170(n)-A178798(A000124(n))`
-/

namespace A311173.P5850662184422640808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311170 n - A178798 (A000124 n).toNat

end

end A311173.P5850662184422640808

/-! ## A311173.P16424330041116722127

`A311153(n)+A025462(A129740(n+1))`
-/

namespace A311173.P16424330041116722127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 n + A025462 (A129740 (n + 1)).toNat

end

end A311173.P16424330041116722127

/-! ## A311173.P8559027596841847189

`A071562(2*n+1)-A020987(A283877(n))`
-/

namespace A311173.P8559027596841847189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (2 * n + 1) - A020987 (A283877 n).toNat

end

end A311173.P8559027596841847189

/-! ## A311173.P14090601837870556192

`A333635(3*n+1)+A074290(A333625(n+1))`
-/

namespace A311173.P14090601837870556192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (3 * n + 1) + A074290 (A333625 (n + 1)).toNat

end

end A311173.P14090601837870556192

/-! ## A311173.P393214813031059573

`∑[A037968(A000041(3*n))]+n`
-/

namespace A311173.P393214813031059573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037968 (A000041 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311173.P393214813031059573

/-!
# A311174: Coordination sequence Gal.5.62.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311174, the canonical program `A311174.P5997335018186226775` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311174 has offset 0).

The definition of A311174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311174.P5997335018186226775

`A065502(A313802(n))-A312207(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A311174

/-- `A065502(A313802(n))-A312207(n)` -/
def P5997335018186226775.Spec : Prop :=
  ∀ n, P5997335018186226775.a n = A311174 n

theorem P5997335018186226775.correct : P5997335018186226775.Spec := by
  intro n
  simp only [A311174]

end A311174

/-! ## A311174.P17494807237696672179

`A311165(n)+A188432(A147221(n+1))`
-/

namespace A311174.P17494807237696672179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311165 n + A188432 (A147221 (n + 1)).toNat

end

end A311174.P17494807237696672179

namespace A311174

/-- `A311165(n)+A188432(A147221(n+1))` -/
def P17494807237696672179.Spec : Prop :=
  ∀ n, P17494807237696672179.a n = A311174 n

end A311174

/-! ## A311174.P8123086829276533293

`A311167(n)+A188432(A147221(n+1))`
-/

namespace A311174.P8123086829276533293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A188432 (A147221 (n + 1)).toNat

end

end A311174.P8123086829276533293

namespace A311174

/-- `A311167(n)+A188432(A147221(n+1))` -/
def P8123086829276533293.Spec : Prop :=
  ∀ n, P8123086829276533293.a n = A311174 n

end A311174

/-! ## A311174.P7828215393332713258

`A311167(n)+A128174(A334544(n+1))`
-/

namespace A311174.P7828215393332713258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A128174 (A334544 (n + 1)).toNat

end

end A311174.P7828215393332713258

namespace A311174

/-- `A311167(n)+A128174(A334544(n+1))` -/
def P7828215393332713258.Spec : Prop :=
  ∀ n, P7828215393332713258.a n = A311174 n

end A311174

/-! ## A311174.P15319588642148139799

`A311175(n)-A185284(A005180(n+1))`
-/

namespace A311174.P15319588642148139799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311175 n - A185284 (A005180 (n + 1)).toNat

end

end A311174.P15319588642148139799

namespace A311174

/-- `A311175(n)-A185284(A005180(n+1))` -/
def P15319588642148139799.Spec : Prop :=
  ∀ n, P15319588642148139799.a n = A311174 n

end A311174

/-!
# A311175: Coordination sequence Gal.5.58.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311175, there is no canonical definition to state claims against.
-/

/-! ## A311175.P3476205607935126705

`A311165(n)+A056978(A228151(n))`
-/

namespace A311175.P3476205607935126705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311165 n + A056978 (A228151 n).toNat

end

end A311175.P3476205607935126705

/-! ## A311175.P2338037778001161548

`A311165(n)+A279210(A008615(A026579(n)))`
-/

namespace A311175.P2338037778001161548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311165 n + A279210 (A008615 (A026579 n).toNat).toNat

end

end A311175.P2338037778001161548

/-! ## A311175.P14777708926255126754

`A311167(n)+A245794(A077168(n))`
-/

namespace A311175.P14777708926255126754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311167 n + A245794 (A077168 n).toNat

end

end A311175.P14777708926255126754

/-! ## A311175.P3045210676188139307

`A311154(n)+A055641(A049954(n+1))`
-/

namespace A311175.P3045210676188139307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311154 n + A055641 (A049954 (n + 1)).toNat

end

end A311175.P3045210676188139307

/-! ## A311175.P15116322360414579495

`A311155(n)+A025426(A126460(2*(n+1)))`
-/

namespace A311175.P15116322360414579495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311155 n + A025426 (A126460 (2 * (n + 1))).toNat

end

end A311175.P15116322360414579495

/-!
# A311176: Coordination sequence Gal.4.86.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311176, there is no canonical definition to state claims against.
-/

/-! ## A311176.P13388534312498031363

`A311174(n)+A022003(A181153(n))`
-/

namespace A311176.P13388534312498031363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311174 n + A022003 (A181153 n).toNat

end

end A311176.P13388534312498031363

/-! ## A311176.P12775148832311044990

`A311175(n)+A022003(A181153(n))`
-/

namespace A311176.P12775148832311044990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311175 n + A022003 (A181153 n).toNat

end

end A311176.P12775148832311044990

/-! ## A311176.P9568591303313651595

`A341619(A013013(n))+A311174(n)`
-/

namespace A311176.P9568591303313651595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A013013 n).toNat + A311174 n

end

end A311176.P9568591303313651595

/-! ## A311176.P1949647986578764948

`A341619(A013013(n))+A311175(n)`
-/

namespace A311176.P1949647986578764948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A013013 n).toNat + A311175 n

end

end A311176.P1949647986578764948

/-! ## A311176.P8670635788966955814

`A311174(n)+A185284(A310094(n))`
-/

namespace A311176.P8670635788966955814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311174 n + A185284 (A310094 n).toNat

end

end A311176.P8670635788966955814

/-!
# A311177: Coordination sequence Gal.5.182.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311177, there is no canonical definition to state claims against.
-/

/-! ## A311177.P3297053559173680872

`A008574(n)+and(2, A006393(n+2))`
-/

namespace A311177.P3297053559173680872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + Int.land 2 (A006393 (n + 2))

end

end A311177.P3297053559173680872

/-! ## A311177.P8625871189343039126

`A221166(A006584(n))+A008574(n)`
-/

namespace A311177.P8625871189343039126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221166 (A006584 n).toNat + A008574 n

end

end A311177.P8625871189343039126

/-! ## A311177.P13747613532958677571

`A087624(A181832(n))+A008574(n)`
-/

namespace A311177.P13747613532958677571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A181832 n).toNat + A008574 n

end

end A311177.P13747613532958677571

/-! ## A311177.P10156533184921051850

`A279315(A022144(n))+A008574(n)`
-/

namespace A311177.P10156533184921051850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279315 (A022144 n).toNat + A008574 n

end

end A311177.P10156533184921051850

/-! ## A311177.P15231864082381738043

`A311178(A087051(n))`
-/

namespace A311177.P15231864082381738043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311178 (A087051 n).toNat

end

end A311177.P15231864082381738043

/-!
# A311178: Coordination sequence Gal.6.218.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311178, the canonical program `A311178.P9708193100883446863` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311178 has offset 0).

The definition of A311178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311178.P7166703320535522866

`A311385(n)-A005843(A151988(n)-n)`
-/

namespace A311178.P7166703320535522866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n - A005843 (A151988 n - (n : ℤ)).toNat

end

end A311178.P7166703320535522866

namespace A311178

/-- `A311385(n)-A005843(A151988(n)-n)` -/
def P7166703320535522866.Spec : Prop :=
  ∀ n, P7166703320535522866.a n = A311178 n

end A311178

/-! ## A311178.P12553684321515675181

`A311385(n)-A311384(n)%A028310(n)`
-/

namespace A311178.P12553684321515675181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n - Int.tmod (A311384 n) (A028310 n)

end

end A311178.P12553684321515675181

namespace A311178

/-- `A311385(n)-A311384(n)%A028310(n)` -/
def P12553684321515675181.Spec : Prop :=
  ∀ n, P12553684321515675181.a n = A311178 n

end A311178

/-! ## A311178.P18254494974435278158

`A311385(n)+A004277(2*n)-A311384(n)`
-/

namespace A311178.P18254494974435278158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n + A004277 (2 * n) - A311384 n

end

end A311178.P18254494974435278158

namespace A311178

/-- `A311385(n)+A004277(2*n)-A311384(n)` -/
def P18254494974435278158.Spec : Prop :=
  ∀ n, P18254494974435278158.a n = A311178 n

end A311178

/-! ## A311178.P9708193100883446863

`2*A313719(n)-A315754(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A311178

/-- `2*A313719(n)-A315754(n)` -/
def P9708193100883446863.Spec : Prop :=
  ∀ n, P9708193100883446863.a n = A311178 n

theorem P9708193100883446863.correct : P9708193100883446863.Spec := by
  intro n
  simp only [A311178]

end A311178

/-! ## A311178.P91658674122361988

`A315754(n)-A005843(A315754(n)-A313719(n))`
-/

namespace A311178.P91658674122361988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315754 n - A005843 (A315754 n - A313719 n).toNat

end

end A311178.P91658674122361988

namespace A311178

/-- `A315754(n)-A005843(A315754(n)-A313719(n))` -/
def P91658674122361988.Spec : Prop :=
  ∀ n, P91658674122361988.a n = A311178 n

end A311178

/-! ## A311178.P3223177715796304346

`A005843(A313719(n))-A315754(n)`
-/

namespace A311178.P3223177715796304346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313719 n).toNat - A315754 n

end

end A311178.P3223177715796304346

namespace A311178

/-- `A005843(A313719(n))-A315754(n)` -/
def P3223177715796304346.Spec : Prop :=
  ∀ n, P3223177715796304346.a n = A311178 n

end A311178

/-!
# A311179: Coordination sequence Gal.6.217.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311179, there is no canonical definition to state claims against.
-/

/-! ## A311179.P4500308060661613113

`A333183(A333214(2*n+1)%A333190(3*n+2))`
-/

namespace A311179.P4500308060661613113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333183 (Int.tmod (A333214 (2 * n + 1)) (A333190 (3 * n + 2))).toNat

end

end A311179.P4500308060661613113

/-! ## A311179.P15386576556117040637

`A311196(n)-A248394(C(n, 6))`
-/

namespace A311179.P15386576556117040637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n - A248394 (Nat.choose n 6)

end

end A311179.P15386576556117040637

/-! ## A311179.P1684968167962866433

`A311196(n)-A248395(C(n, 6))`
-/

namespace A311179.P1684968167962866433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n - A248395 (Nat.choose n 6)

end

end A311179.P1684968167962866433

/-! ## A311179.P12783426298568057029

`∑[A322868(A187039((n+1)^3))]`
-/

namespace A311179.P12783426298568057029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (A187039 ((n + 1) ^ 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311179.P12783426298568057029

/-! ## A311179.P1909676823410667292

`char[7]+A311160(n)%A067026(2*n+1)²`
-/

namespace A311179.P1909676823410667292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A311160 n) (A067026 (2 * n + 1) ^ 2)

end

end A311179.P1909676823410667292

/-!
# A311180: Coordination sequence Gal.4.117.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311180, there is no canonical definition to state claims against.
-/

/-! ## A311180.P4884246381190914056

`or(A008574(n), A048105(A233896(n)))`
-/

namespace A311180.P4884246381190914056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A048105 (A233896 n).toNat)

end

end A311180.P4884246381190914056

/-! ## A311180.P5793400106813088577

`A311179(n)+A007814(A250942(n+1))`
-/

namespace A311180.P5793400106813088577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311179 n + A007814 (A250942 (n + 1)).toNat

end

end A311180.P5793400106813088577

/-! ## A311180.P12864946095333277403

`A311160(n)+A086078(A139447(n+3))`
-/

namespace A311180.P12864946095333277403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311160 n + A086078 (A139447 (n + 3)).toNat

end

end A311180.P12864946095333277403

/-! ## A311180.P17096705921274572691

`A311225(n)-Δ[A055641(A221225(n+1))]`
-/

namespace A311180.P17096705921274572691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A221225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311225 n - (f1 (n + 1) - f1 n)

end

end A311180.P17096705921274572691

/-! ## A311180.P5296336611086319860

`A209211(2*n+1)+A102681(A095975(n+1))`
-/

namespace A311180.P5296336611086319860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (2 * n + 1) + A102681 (A095975 (n + 1)).toNat

end

end A311180.P5296336611086319860

/-!
# A311181: Coordination sequence Gal.5.107.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311181, the canonical program `A311181.P11413614855013295294` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311181 has offset 0).

The definition of A311181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311181.P25605126930229732

`2*A311416(n)-A311570(n)`
-/

namespace A311181.P25605126930229732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311416 n - A311570 n

end

end A311181.P25605126930229732

namespace A311181

/-- `2*A311416(n)-A311570(n)` -/
def P25605126930229732.Spec : Prop :=
  ∀ n, P25605126930229732.a n = A311181 n

end A311181

/-! ## A311181.P7240213677808075779

`2*A312143(n)-(A004275(2*n+1)+∑[and(4, n+1)/2])`
-/

namespace A311181.P7240213677808075779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A312143 n : ℚ) - ((A004275 (2 * n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A311181.P7240213677808075779

namespace A311181

/-- `2*A312143(n)-(A004275(2*n+1)+∑[and(4, n+1)/2])` -/
def P7240213677808075779.Spec : Prop :=
  ∀ n, P7240213677808075779.a n = (A311181 n : ℚ)

end A311181

/-! ## A311181.P4025833777026794611

`A005843(A311416(n))-A311570(n)`
-/

namespace A311181.P4025833777026794611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311416 n).toNat - A311570 n

end

end A311181.P4025833777026794611

namespace A311181

/-- `A005843(A311416(n))-A311570(n)` -/
def P4025833777026794611.Spec : Prop :=
  ∀ n, P4025833777026794611.a n = A311181 n

end A311181

/-! ## A311181.P14718144139193203275

`A004277(A311416(n))-abs(7*n-A348237(n))`
-/

namespace A311181.P14718144139193203275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311416 n).toNat - |(7 * n : ℤ) - A348237 n|

end

end A311181.P14718144139193203275

namespace A311181

/-- `A004277(A311416(n))-abs(7*n-A348237(n))` -/
def P14718144139193203275.Spec : Prop :=
  ∀ n, P14718144139193203275.a n = A311181 n

end A311181

/-! ## A311181.P4344967903099917840

`A201629(n)+A004277(A311416(n))-A310518(n)`
-/

namespace A311181.P4344967903099917840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n + (A004277 (A311416 n).toNat - A310518 n)

end

end A311181.P4344967903099917840

namespace A311181

/-- `A201629(n)+A004277(A311416(n))-A310518(n)` -/
def P4344967903099917840.Spec : Prop :=
  ∀ n, P4344967903099917840.a n = A311181 n

end A311181

/-! ## A311181.P17034571094786927500

`A004277(A311416(n))-(A348236(n)+A047299(n+1))`
-/

namespace A311181.P17034571094786927500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311416 n).toNat - (A348236 n + A047299 (n + 1))

end

end A311181.P17034571094786927500

namespace A311181

/-- `A004277(A311416(n))-(A348236(n)+A047299(n+1))` -/
def P17034571094786927500.Spec : Prop :=
  ∀ n, P17034571094786927500.a n = A311181 n

end A311181

/-! ## A311181.P11413614855013295294

`2*A312143(n)-A312682(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311181

/-- `2*A312143(n)-A312682(n)` -/
def P11413614855013295294.Spec : Prop :=
  ∀ n, P11413614855013295294.a n = A311181 n

theorem P11413614855013295294.correct : P11413614855013295294.Spec := by
  intro n
  simp only [A311181]

end A311181

/-! ## A311181.P18153413455287656946

`A312682(n)-A005843(A312682(n)-A312143(n))`
-/

namespace A311181.P18153413455287656946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312682 n - A005843 (A312682 n - A312143 n).toNat

end

end A311181.P18153413455287656946

namespace A311181

/-- `A312682(n)-A005843(A312682(n)-A312143(n))` -/
def P18153413455287656946.Spec : Prop :=
  ∀ n, P18153413455287656946.a n = A311181 n

end A311181

/-! ## A311181.P11930274070817440076

`A005843(A312143(n))-A312682(n)`
-/

namespace A311181.P11930274070817440076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312143 n).toNat - A312682 n

end

end A311181.P11930274070817440076

namespace A311181

/-- `A005843(A312143(n))-A312682(n)` -/
def P11930274070817440076.Spec : Prop :=
  ∀ n, P11930274070817440076.a n = A311181 n

end A311181

/-!
# A311182: Coordination sequence Gal.5.103.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311182, there is no canonical definition to state claims against.
-/

/-! ## A311182.P6267899378748167750

`A311230(n)-A010893(A311115(n))`
-/

namespace A311182.P6267899378748167750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 n - A010893 ((A311115 n).toNat + 13)

end

end A311182.P6267899378748167750

/-! ## A311182.P2520097265930672923

`A311230(n)-A010893(A311144(n))`
-/

namespace A311182.P2520097265930672923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 n - A010893 ((A311144 n).toNat + 13)

end

end A311182.P2520097265930672923

/-! ## A311182.P527510411664419522

`∑[A333257(∑[A247622(3*n+4)])]`
-/

namespace A311182.P527510411664419522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247622 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311182.P527510411664419522

/-! ## A311182.P7629726007788910354

`A318984(A114538(n+4))+A008574(n)`
-/

namespace A311182.P7629726007788910354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 (A114538 (n + 4)).toNat + A008574 n

end

end A311182.P7629726007788910354

/-!
# A311183: Coordination sequence Gal.5.8.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311183, there is no canonical definition to state claims against.
-/

/-! ## A311183.P11980785102139546680

`A287931(A026625(n))+A008574(n)`
-/

namespace A311183.P11980785102139546680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (A026625 n).toNat + A008574 n

end

end A311183.P11980785102139546680

/-! ## A311183.P12553356925903522337

`(A073484(n+1)+A008574(n))*A072189(n)!`
-/

namespace A311183.P12553356925903522337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073484 (n + 1) + A008574 n) * (Nat.factorial (A072189 n).toNat : ℤ)

end

end A311183.P12553356925903522337

/-! ## A311183.P3709124677283964415

`A073484(n+1)+A080425(A022086(n))+A008574(n)`
-/

namespace A311183.P3709124677283964415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (n + 1) + (A080425 (A022086 n).toNat + A008574 n)

end

end A311183.P3709124677283964415

/-! ## A311183.P16502054151703287387

`A025426(A286795(n))+A008574(n)`
-/

namespace A311183.P16502054151703287387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A286795 n).toNat + A008574 n

end

end A311183.P16502054151703287387

/-! ## A311183.P628178701037853723

`A087049(A000041(3*n+1))+4*n`
-/

namespace A311183.P628178701037853723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A000041 (3 * n + 1)).toNat + (4 * n : ℤ)

end

end A311183.P628178701037853723

/-!
# A311184: Coordination sequence Gal.5.26.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311184, there is no canonical definition to state claims against.
-/

/-! ## A311184.P6920176917266534969

`A023604(∑[A314252(n)²])`
-/

namespace A311184.P6920176917266534969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311184.P6920176917266534969

/-! ## A311184.P315883452624140980

`∑[A321944(∑[A142925(n+1)])]`
-/

namespace A311184.P315883452624140980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311184.P315883452624140980

/-! ## A311184.P16381078956028547831

`∑[A273221(A148533(n))%(n+1)+2]-1`
-/

namespace A311184.P16381078956028547831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273221 (A148533 n).toNat) (n + 1 : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A311184.P16381078956028547831

/-! ## A311184.P11740321264648904051

`A311804(n)-A001842(A039300(n))`
-/

namespace A311184.P11740321264648904051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n - A001842 (A039300 n).toNat

end

end A311184.P11740321264648904051

/-! ## A311184.P17297017545075337558

`A311185(n)-A210455(A273468(n+1))`
-/

namespace A311184.P17297017545075337558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311185 n - A210455 (A273468 (n + 1)).toNat

end

end A311184.P17297017545075337558

/-!
# A311185: Coordination sequence Gal.6.125.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311185, there is no canonical definition to state claims against.
-/

/-! ## A311185.P1455970989012314387

`A311186(n)-A024362(A022171(n))`
-/

namespace A311185.P1455970989012314387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311186 n - A024362 (A022171 n).toNat

end

end A311185.P1455970989012314387

/-! ## A311185.P13247702489082675295

`A311186(n)-A025436(A038234(n))`
-/

namespace A311185.P13247702489082675295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311186 n - A025436 (A038234 n).toNat

end

end A311185.P13247702489082675295

/-! ## A311185.P9507664315586188193

`A311186(n)-A185284(A163511(n))`
-/

namespace A311185.P9507664315586188193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311186 n - A185284 (A163511 n).toNat

end

end A311185.P9507664315586188193

/-! ## A311185.P17231889866009877927

`A311186(n)-A122924(A282441(n+1))`
-/

namespace A311185.P17231889866009877927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311186 n - A122924 (A282441 (n + 1)).toNat

end

end A311185.P17231889866009877927

/-! ## A311185.P10339536368410364030

`A057427(A242783(n))*A311186(n)`
-/

namespace A311185.P10339536368410364030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A242783 n).toNat * A311186 n

end

end A311185.P10339536368410364030

/-!
# A311186: Coordination sequence Gal.6.121.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311186, there is no canonical definition to state claims against.
-/

/-! ## A311186.P13462161412656477776

`A311185(n)+A185284(A163511(n))`
-/

namespace A311186.P13462161412656477776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311185 n + A185284 (A163511 n).toNat

end

end A311186.P13462161412656477776

/-! ## A311186.P1014889266877249238

`A323162(A078859(n+1))+A311185(n)`
-/

namespace A311186.P1014889266877249238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (A078859 (n + 1)).toNat + A311185 n

end

end A311186.P1014889266877249238

/-! ## A311186.P9432798797606378749

`A311185(n)+A122924(A282441(n+1))`
-/

namespace A311186.P9432798797606378749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311185 n + A122924 (A282441 (n + 1)).toNat

end

end A311186.P9432798797606378749

/-! ## A311186.P7323022772661228169

`A185284(A163511(n))-(A185284(n)-A311185(n))`
-/

namespace A311186.P7323022772661228169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A163511 n).toNat - (A185284 n - A311185 n)

end

end A311186.P7323022772661228169

/-!
# A311187: Coordination sequence Gal.6.117.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311187, the canonical program `A311187.P9914018373786840220` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311187 has offset 0).

The definition of A311187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311187.P9914018373786840220

`A311536(n)-A311523(n)%A028310(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A311187

/-- `A311536(n)-A311523(n)%A028310(n)` -/
def P9914018373786840220.Spec : Prop :=
  ∀ n, P9914018373786840220.a n = A311187 n

theorem P9914018373786840220.correct : P9914018373786840220.Spec := by
  intro n
  simp only [A311187]

end A311187

/-! ## A311187.P529371326034339263

`A311188(n)-A059841(A105356(A016789(n)))`
-/

namespace A311187.P529371326034339263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311188 n - A059841 (A105356 (A016789 n).toNat).toNat

end

end A311187.P529371326034339263

namespace A311187

/-- `A311188(n)-A059841(A105356(A016789(n)))` -/
def P529371326034339263.Spec : Prop :=
  ∀ n, P529371326034339263.a n = A311187 n

end A311187

/-! ## A311187.P14882784768735279396

`A311188(n)-A025465(A293025(n))`
-/

namespace A311187.P14882784768735279396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311188 n - A025465 (A293025 n).toNat

end

end A311187.P14882784768735279396

namespace A311187

/-- `A311188(n)-A025465(A293025(n))` -/
def P14882784768735279396.Spec : Prop :=
  ∀ n, P14882784768735279396.a n = A311187 n

end A311187

/-! ## A311187.P2972784450599709271

`A311196(n)-A044941(A290683(n))`
-/

namespace A311187.P2972784450599709271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n - A044941 (A290683 n).toNat

end

end A311187.P2972784450599709271

namespace A311187

/-- `A311196(n)-A044941(A290683(n))` -/
def P2972784450599709271.Spec : Prop :=
  ∀ n, P2972784450599709271.a n = A311187 n

end A311187

/-! ## A311187.P13172511714272673661

`A311188(n)+A025465(A000079(n))`
-/

namespace A311187.P13172511714272673661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311188 n + A025465 (A000079 n).toNat

end

end A311187.P13172511714272673661

namespace A311187

/-- `A311188(n)+A025465(A000079(n))` -/
def P13172511714272673661.Spec : Prop :=
  ∀ n, P13172511714272673661.a n = A311187 n

end A311187

/-!
# A311188: Coordination sequence Gal.6.116.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311188, there is no canonical definition to state claims against.
-/

/-! ## A311188.P2812072280274102688

`A311257(n)-A345952(A329723(n))`
-/

namespace A311188.P2812072280274102688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n - A345952 (A329723 n).toNat

end

end A311188.P2812072280274102688

/-! ## A311188.P16075653953994637237

`A137734(A008586(n*A311889(n)))`
-/

namespace A311188.P16075653953994637237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A008586 ((n : ℤ) * A311889 n).toNat).toNat

end

end A311188.P16075653953994637237

/-! ## A311188.P16842294867421977307

`A311257(n)-A010051(A266309(n+1))`
-/

namespace A311188.P16842294867421977307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n - A010051 (A266309 (n + 1)).toNat

end

end A311188.P16842294867421977307

/-! ## A311188.P16529856273822524732

`A311257(n)-A069846(A069826(n+1))`
-/

namespace A311188.P16529856273822524732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n - A069846 (A069826 (n + 1)).toNat

end

end A311188.P16529856273822524732

/-! ## A311188.P13401766842868454537

`A085736(A311187(n))`
-/

namespace A311188.P13401766842868454537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A311187 n).toNat

end

end A311188.P13401766842868454537

/-!
# A311189: Coordination sequence Gal.6.383.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311189, there is no canonical definition to state claims against.
-/

/-! ## A311189.P17802362353935569080

`A008486(n)+∑[A337531(A000124(n))]`
-/

namespace A311189.P17802362353935569080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337531 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311189.P17802362353935569080

/-! ## A311189.P2699419707408875616

`n+1+A004273(n)+∑[A337531(A000124(n))]`
-/

namespace A311189.P2699419707408875616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337531 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A004273 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A311189.P2699419707408875616

/-! ## A311189.P2581327553313457198

`A008574(n)+A004216(A153896(n))`
-/

namespace A311189.P2581327553313457198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004216 (A153896 n).toNat

end

end A311189.P2581327553313457198

/-! ## A311189.P2100112715450999503

`A196049(A036614(n))+A008574(n)`
-/

namespace A311189.P2100112715450999503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (A036614 n).toNat + A008574 n

end

end A311189.P2100112715450999503

/-! ## A311189.P15568206545576870753

`record[A014682(n)+A000005(A165514(n+1))]`
-/

namespace A311189.P15568206545576870753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A000005 (A165514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311189.P15568206545576870753

/-!
# A311190: Coordination sequence Gal.6.218.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311190, the canonical program `A311190.P13315914860690084580` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311190 has offset 0).

The definition of A311190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311190.P6891607560456426386

`A311541(n)-A311535(n)%A028310(n)`
-/

namespace A311190.P6891607560456426386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311541 n - Int.tmod (A311535 n) (A028310 n)

end

end A311190.P6891607560456426386

namespace A311190

/-- `A311541(n)-A311535(n)%A028310(n)` -/
def P6891607560456426386.Spec : Prop :=
  ∀ n, P6891607560456426386.a n = A311190 n

end A311190

/-! ## A311190.P13315914860690084580

`A310398(n)+A315303(n)-A315740(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A311190

/-- `A310398(n)+A315303(n)-A315740(n)` -/
def P13315914860690084580.Spec : Prop :=
  ∀ n, P13315914860690084580.a n = A311190 n

theorem P13315914860690084580.correct : P13315914860690084580.Spec := by
  intro n
  simp only [A311190]

end A311190

/-! ## A311190.P10011165412579158857

`A008574(n)+A315742(n)-A315740(n)`
-/

namespace A311190.P10011165412579158857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315742 n - A315740 n)

end

end A311190.P10011165412579158857

namespace A311190

/-- `A008574(n)+A315742(n)-A315740(n)` -/
def P10011165412579158857.Spec : Prop :=
  ∀ n, P10011165412579158857.a n = A311190 n

end A311190

/-! ## A311190.P2633451828131362252

`2*n+1+A004273(n)+A315742(n)-A315740(n)`
-/

namespace A311190.P2633451828131362252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A004273 n + (A315742 n - A315740 n))

end

end A311190.P2633451828131362252

namespace A311190

/-- `2*n+1+A004273(n)+A315742(n)-A315740(n)` -/
def P2633451828131362252.Spec : Prop :=
  ∀ n, P2633451828131362252.a n = A311190 n

end A311190

/-! ## A311190.P3983442586990996213

`A004273(n)+A005408(n)+A315742(n)-A315740(n)`
-/

namespace A311190.P3983442586990996213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A005408 n + (A315742 n - A315740 n))

end

end A311190.P3983442586990996213

namespace A311190

/-- `A004273(n)+A005408(n)+A315742(n)-A315740(n)` -/
def P3983442586990996213.Spec : Prop :=
  ∀ n, P3983442586990996213.a n = A311190 n

end A311190

/-!
# A311191: Coordination sequence Gal.6.217.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311191, there is no canonical definition to state claims against.
-/

/-! ## A311191.P4763512891464626921

`A008486(n)+A039262(n+1)%A018399(n+1)`
-/

namespace A311191.P4763512891464626921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + Int.tmod (A039262 (n + 1)) (A018399 (n + 1))

end

end A311191.P4763512891464626921

/-! ## A311191.P2066291920773633912

`A072491(A000579(n))+A008574(n)`
-/

namespace A311191.P2066291920773633912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A000579 n).toNat + A008574 n

end

end A311191.P2066291920773633912

/-! ## A311191.P16273547230862222520

`A039262(n+1)+A004273(n)+A000005(A000079(n))`
-/

namespace A311191.P16273547230862222520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039262 (n + 1) + (A004273 n + A000005 (A000079 n).toNat)

end

end A311191.P16273547230862222520

/-! ## A311191.P18368362294380908054

`A008486(n)+lt[n, A089504(2*n+3)]`
-/

namespace A311191.P18368362294380908054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089504 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A311191.P18368362294380908054

/-! ## A311191.P4685201733424242470

`A311160(n)+A024153(A318748(n))`
-/

namespace A311191.P4685201733424242470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311160 n + A024153 (A318748 n).toNat

end

end A311191.P4685201733424242470

/-!
# A311192: Coordination sequence Gal.6.181.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311192, there is no canonical definition to state claims against.
-/

/-! ## A311192.P2499425186211238428

`A311193(n)-A024360(A146220(n+1))`
-/

namespace A311192.P2499425186211238428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311193 n - A024360 (A146220 (n + 1)).toNat

end

end A311192.P2499425186211238428

/-! ## A311192.P14871484298165341642

`A311193(n)-A024360(A166672(n+1))`
-/

namespace A311192.P14871484298165341642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311193 n - A024360 (A166672 (n + 1)).toNat

end

end A311192.P14871484298165341642

/-! ## A311192.P2684595009509416796

`A311193(n)-A185284(A177263(n+1))`
-/

namespace A311192.P2684595009509416796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311193 n - A185284 (A177263 (n + 1)).toNat

end

end A311192.P2684595009509416796

/-! ## A311192.P3539027570500043283

`A311193(n)-A010051(A060628(n+2))`
-/

namespace A311192.P3539027570500043283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311193 n - A010051 (A060628 (n + 2)).toNat

end

end A311192.P3539027570500043283

/-! ## A311192.P32228465884975748

`A028310(xor(A172543(n+1), A311193(n)))`
-/

namespace A311192.P32228465884975748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A172543 (n + 1)) (A311193 n)).toNat

end

end A311192.P32228465884975748

/-!
# A311193: Coordination sequence Gal.6.165.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311193, there is no canonical definition to state claims against.
-/

/-! ## A311193.P106491813754184774

`or(A185037(A003520(n)), A311192(n))`
-/

namespace A311193.P106491813754184774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185037 (A003520 n).toNat) (A311192 n)

end

end A311193.P106491813754184774

/-! ## A311193.P5995450656834846188

`A311192(n)+A024360(A146220(n+1))`
-/

namespace A311193.P5995450656834846188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311192 n + A024360 (A146220 (n + 1)).toNat

end

end A311193.P5995450656834846188

/-! ## A311193.P10366338418982627231

`A000027(A311192(n)+A172543(n+1))`
-/

namespace A311193.P10366338418982627231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A311192 n + A172543 (n + 1)).toNat

end

end A311193.P10366338418982627231

/-!
# A311194: Coordination sequence Gal.6.383.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311194, there is no canonical definition to state claims against.
-/

/-! ## A311194.P5588647801504070167

`A311198(n)-A270417(A006138(n))`
-/

namespace A311194.P5588647801504070167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311198 n - A270417 (A006138 n).toNat

end

end A311194.P5588647801504070167

/-! ## A311194.P10976174455473439307

`A311198(n)-A024360(A064096(n))`
-/

namespace A311194.P10976174455473439307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311198 n - A024360 (A064096 n).toNat

end

end A311194.P10976174455473439307

/-! ## A311194.P9877339636883925728

`A301301(n)-A277017(A000081(n))`
-/

namespace A311194.P9877339636883925728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n - A277017 (A000081 n).toNat

end

end A311194.P9877339636883925728

/-! ## A311194.P13769895132950841400

`A128559(A008458(n))-A047412(n+1)`
-/

namespace A311194.P13769895132950841400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A008458 n).toNat - A047412 (n + 1)

end

end A311194.P13769895132950841400

/-! ## A311194.P12727769970554736125

`A037800(A148001(n))+A008574(n)`
-/

namespace A311194.P12727769970554736125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A148001 n).toNat + A008574 n

end

end A311194.P12727769970554736125

/-!
# A311195: Coordination sequence Gal.5.52.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311195, there is no canonical definition to state claims against.
-/

/-! ## A311195.P13382904118619622794

`A311262(n)-A055641(A164454(n+4))`
-/

namespace A311195.P13382904118619622794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311262 n - A055641 (A164454 (n + 4)).toNat

end

end A311195.P13382904118619622794

/-! ## A311195.P6229456297154885861

`A311196(n)-A122922(A006927(n))`
-/

namespace A311195.P6229456297154885861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n - A122922 (A006927 n).toNat

end

end A311195.P6229456297154885861

/-! ## A311195.P5197451832532061858

`A311197(n)-A122922(A006927(n))`
-/

namespace A311195.P5197451832532061858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311197 n - A122922 (A006927 n).toNat

end

end A311195.P5197451832532061858

/-! ## A311195.P15393273635358649952

`A313930(n)-A047412(A187829(n+1))`
-/

namespace A311195.P15393273635358649952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - A047412 (A187829 (n + 1)).toNat

end

end A311195.P15393273635358649952

/-! ## A311195.P17280594219078063004

`A313739(n)-lt[A314288(n), A310925(n+3)]`
-/

namespace A311195.P17280594219078063004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310925 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A311195.P17280594219078063004

/-!
# A311196: Coordination sequence Gal.6.115.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311196, the canonical program `A311196.P10875495913881152623` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311196 has offset 0).

The definition of A311196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311196.P10875495913881152623

`A312896(n)-A004525(n-A004396(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311196

/-- `A312896(n)-A004525(n-A004396(n))` -/
def P10875495913881152623.Spec : Prop :=
  ∀ n, P10875495913881152623.a n = A311196 n

theorem P10875495913881152623.correct : P10875495913881152623.Spec := by
  intro n
  simp only [A311196]

end A311196

/-! ## A311196.P4234533538661242199

`A008458(n)+A008576(n)-A314884(n)`
-/

namespace A311196.P4234533538661242199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A314884 n)

end

end A311196.P4234533538661242199

namespace A311196

/-- `A008458(n)+A008576(n)-A314884(n)` -/
def P4234533538661242199.Spec : Prop :=
  ∀ n, P4234533538661242199.a n = A311196 n

theorem P4234533538661242199.correct : P4234533538661242199.Spec := by
  intro n
  simp only [A311196, Nat.add_sub_cancel, A311196.P4234533538661242199.a, A311196.P10875495913881152623.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A008458, A008458.P7339383310184415644.a, A008576, A008576.P14557774928279059610.a, A312896, A312896.P16473508619976293498.a, A314884, A314884.P14768008204403589957.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311196

/-! ## A311196.P17515278597428876154

`A314726(n)-A004525(n)`
-/

namespace A311196.P17515278597428876154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n - A004525 n

end

end A311196.P17515278597428876154

namespace A311196

/-- `A314726(n)-A004525(n)` -/
def P17515278597428876154.Spec : Prop :=
  ∀ n, P17515278597428876154.a n = A311196 n

theorem P17515278597428876154.correct : P17515278597428876154.Spec := by
  intro n
  simp only [A311196, Nat.add_sub_cancel, A311196.P17515278597428876154.a, A311196.P10875495913881152623.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312896, A312896.P16473508619976293498.a, A314726, A314726.P6332999963874052355.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311196

/-! ## A311196.P14395018664572664149

`abs(9*n-A313729(n))`
-/

namespace A311196.P14395018664572664149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A313729 n|

end

end A311196.P14395018664572664149

namespace A311196

/-- `abs(9*n-A313729(n))` -/
def P14395018664572664149.Spec : Prop :=
  ∀ n, P14395018664572664149.a n = A311196 n

end A311196

/-! ## A311196.P16318105031996273146

`A008458(n)+A008486(n)-A313729(n)`
-/

namespace A311196.P16318105031996273146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313729 n)

end

end A311196.P16318105031996273146

namespace A311196

/-- `A008458(n)+A008486(n)-A313729(n)` -/
def P16318105031996273146.Spec : Prop :=
  ∀ n, P16318105031996273146.a n = A311196 n

end A311196

/-! ## A311196.P4351456837649597152

`A000122(A005117(n+1))+9*n-A313729(n)`
-/

namespace A311196.P4351456837649597152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A005117 (n + 1)).toNat + ((9 * n : ℤ) - A313729 n)

end

end A311196.P4351456837649597152

namespace A311196

/-- `A000122(A005117(n+1))+9*n-A313729(n)` -/
def P4351456837649597152.Spec : Prop :=
  ∀ n, P4351456837649597152.a n = A311196 n

end A311196

/-! ## A311196.P9517240095956674110

`A128834(n)+A313283(n)-n`
-/

namespace A311196.P9517240095956674110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313283 n - (n : ℤ))

end

end A311196.P9517240095956674110

namespace A311196

/-- `A128834(n)+A313283(n)-n` -/
def P9517240095956674110.Spec : Prop :=
  ∀ n, P9517240095956674110.a n = A311196 n

end A311196

/-! ## A311196.P9023417945993029120

`A313739(n)-n`
-/

namespace A311196.P9023417945993029120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - (n : ℤ)

end

end A311196.P9023417945993029120

namespace A311196

/-- `A313739(n)-n` -/
def P9023417945993029120.Spec : Prop :=
  ∀ n, P9023417945993029120.a n = A311196 n

end A311196

/-! ## A311196.P2499854909474053119

`A314134(n)-A042965(n+1)`
-/

namespace A311196.P2499854909474053119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - A042965 (n + 1)

end

end A311196.P2499854909474053119

namespace A311196

/-- `A314134(n)-A042965(n+1)` -/
def P2499854909474053119.Spec : Prop :=
  ∀ n, P2499854909474053119.a n = A311196 n

end A311196

/-! ## A311196.P3176212869994375481

`A314134(n)-A004396(2*n)`
-/

namespace A311196.P3176212869994375481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - A004396 (2 * n)

end

end A311196.P3176212869994375481

namespace A311196

/-- `A314134(n)-A004396(2*n)` -/
def P3176212869994375481.Spec : Prop :=
  ∀ n, P3176212869994375481.a n = A311196 n

end A311196

/-! ## A311196.P555883390003539489

`A008576(n)+A314134(n)-A008574(n)`
-/

namespace A311196.P555883390003539489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314134 n - A008574 n)

end

end A311196.P555883390003539489

namespace A311196

/-- `A008576(n)+A314134(n)-A008574(n)` -/
def P555883390003539489.Spec : Prop :=
  ∀ n, P555883390003539489.a n = A311196 n

end A311196

/-! ## A311196.P6569713628788823266

`A315499(n)-A047229(n+1)`
-/

namespace A311196.P6569713628788823266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - A047229 (n + 1)

end

end A311196.P6569713628788823266

namespace A311196

/-- `A315499(n)-A047229(n+1)` -/
def P6569713628788823266.Spec : Prop :=
  ∀ n, P6569713628788823266.a n = A311196 n

end A311196

/-! ## A311196.P14550504485888496285

`A315499(n)-(A004525(n)+n)`
-/

namespace A311196.P14550504485888496285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - (A004525 n + (n : ℤ))

end

end A311196.P14550504485888496285

namespace A311196

/-- `A315499(n)-(A004525(n)+n)` -/
def P14550504485888496285.Spec : Prop :=
  ∀ n, P14550504485888496285.a n = A311196 n

end A311196

/-! ## A311196.P13608674183834436422

`abs(A008592(n)-A315768(n))`
-/

namespace A311196.P13608674183834436422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315768 n|

end

end A311196.P13608674183834436422

namespace A311196

/-- `abs(A008592(n)-A315768(n))` -/
def P13608674183834436422.Spec : Prop :=
  ∀ n, P13608674183834436422.a n = A311196 n

end A311196

/-! ## A311196.P10753721833203355869

`A008458(n)+A008574(n)-A315768(n)`
-/

namespace A311196.P10753721833203355869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315768 n)

end

end A311196.P10753721833203355869

namespace A311196

/-- `A008458(n)+A008574(n)-A315768(n)` -/
def P10753721833203355869.Spec : Prop :=
  ∀ n, P10753721833203355869.a n = A311196 n

end A311196

/-! ## A311196.P11125531576841615680

`A004525(A310466(n)+n)+n`
-/

namespace A311196.P11125531576841615680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310466 n + (n : ℤ)).toNat + (n : ℤ)

end

end A311196.P11125531576841615680

namespace A311196

/-- `A004525(A310466(n)+n)+n` -/
def P11125531576841615680.Spec : Prop :=
  ∀ n, P11125531576841615680.a n = A311196 n

end A311196

/-! ## A311196.P8540155745816373979

`A004525(A313754(n)+n)+n`
-/

namespace A311196.P8540155745816373979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313754 n + (n : ℤ)).toNat + (n : ℤ)

end

end A311196.P8540155745816373979

namespace A311196

/-- `A004525(A313754(n)+n)+n` -/
def P8540155745816373979.Spec : Prop :=
  ∀ n, P8540155745816373979.a n = A311196 n

end A311196

/-! ## A311196.P14034945973666509185

`A000122(n²+1)+9*n-A313729(n)`
-/

namespace A311196.P14034945973666509185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) + ((9 * n : ℤ) - A313729 n)

end

end A311196.P14034945973666509185

namespace A311196

/-- `A000122(n²+1)+9*n-A313729(n)` -/
def P14034945973666509185.Spec : Prop :=
  ∀ n, P14034945973666509185.a n = A311196 n

end A311196

/-!
# A311197: Coordination sequence Gal.5.51.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311197, there is no canonical definition to state claims against.
-/

/-! ## A311197.P3642828636872221595

`A311289(n)-A025456(A094348(n+1))`
-/

namespace A311197.P3642828636872221595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n - A025456 (A094348 (n + 1)).toNat

end

end A311197.P3642828636872221595

/-! ## A311197.P12521599334205560574

`A311289(n)-A087032(∑[A071843(n)])`
-/

namespace A311197.P12521599334205560574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n - A087032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311197.P12521599334205560574

/-! ## A311197.P13165681346679498859

`A311289(n)-A010052(A131405(A062298(n+1)))`
-/

namespace A311197.P13165681346679498859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n - A010052 (A131405 (A062298 (n + 1)).toNat).toNat

end

end A311197.P13165681346679498859

/-! ## A311197.P12528100356202197043

`A311289(n)-A073424(A004768(A077868(n)))`
-/

namespace A311197.P12528100356202197043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n - A073424 (A004768 (A077868 n).toNat).toNat

end

end A311197.P12528100356202197043

/-! ## A311197.P10020742451468585138

`A311196(n)+A060500(A184955(n))`
-/

namespace A311197.P10020742451468585138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A060500 (A184955 n).toNat

end

end A311197.P10020742451468585138

/-!
# A311198: Coordination sequence Gal.6.127.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311198, there is no canonical definition to state claims against.
-/

/-! ## A311198.P11410486354267967152

`A160755(A311860(n)-n)+n`
-/

namespace A311198.P11410486354267967152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A311860 n - (n : ℤ)).toNat + (n : ℤ)

end

end A311198.P11410486354267967152

/-! ## A311198.P11628765144596547599

`A311199(n)-A122922(A006927(n))`
-/

namespace A311198.P11628765144596547599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311199 n - A122922 (A006927 n).toNat

end

end A311198.P11628765144596547599

/-! ## A311198.P5631457540137639292

`A311199(n)%A358427(3*n)`
-/

namespace A311198.P5631457540137639292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311199 n) (A358427 (3 * n))

end

end A311198.P5631457540137639292

/-! ## A311198.P14065311866381259486

`A311199(n)%A017462(A000081(n))`
-/

namespace A311198.P14065311866381259486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311199 n) (A017462 (A000081 n).toNat)

end

end A311198.P14065311866381259486

/-! ## A311198.P14020109698187360744

`A311199(n)+A302048(A110320(n+1))`
-/

namespace A311198.P14020109698187360744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311199 n + A302048 (A110320 (n + 1)).toNat

end

end A311198.P14020109698187360744

/-!
# A311199: Coordination sequence Gal.6.123.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311199, there is no canonical definition to state claims against.
-/

/-! ## A311199.P3417688171232091157

`∑[floor(a(n-5))]%A123287(n)` with `a(0)=3, a(1)=1, a(2)=4, a(3)=4, a(4)=4, a(5)=4, a(6)=5, a(7)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A311199.P3417688171232091157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 4, 4, 4, 4, 5, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A123287 (n + 31))

end

end A311199.P3417688171232091157

/-! ## A311199.P13501331350295465687

`A092982(A315261(n))+n`
-/

namespace A311199.P13501331350295465687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A315261 n).toNat + (n : ℤ)

end

end A311199.P13501331350295465687

/-! ## A311199.P6976592109214354961

`A311198(n)+A122922(A006927(n))`
-/

namespace A311199.P6976592109214354961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311198 n + A122922 (A006927 n).toNat

end

end A311199.P6976592109214354961

/-! ## A311199.P11242322997831616343

`A248333(A292656(n+1))`
-/

namespace A311199.P11242322997831616343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A292656 (n + 1)).toNat

end

end A311199.P11242322997831616343

/-! ## A311199.P11837412655267417432

`∑[A351014(A333489(3*n+4))]+n+n`
-/

namespace A311199.P11837412655267417432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A333489 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + (n : ℤ)

end

end A311199.P11837412655267417432

