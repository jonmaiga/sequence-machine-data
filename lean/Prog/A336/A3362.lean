import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A336200: Lexicographically earliest sequence of distinct terms such that every integer k appears twice, at distance a(k).

The programs for A336200, there is no canonical definition to state claims against.
-/

/-! ## A336200.P5082762268176339840

`A000194(A122364(∑[A008619(n)]))`
-/

namespace A336200.P5082762268176339840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A122364 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A336200.P5082762268176339840

/-! ## A336200.P560285437821445294

`A000194(A127286(∑[A008619(n)]))`
-/

namespace A336200.P560285437821445294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A127286 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A336200.P560285437821445294

/-! ## A336200.P2865608416780497377

`A000120(A024501(n)+A022349(n))`
-/

namespace A336200.P2865608416780497377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A024501 n + A022349 n).toNat

end

end A336200.P2865608416780497377

/-! ## A336200.P5506718836049026350

`A182535(or(A087160(n+1), A114322(n+1)))`
-/

namespace A336200.P5506718836049026350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (Int.lor (A087160 (n + 1)) (A114322 (n + 1))).toNat

end

end A336200.P5506718836049026350

/-! ## A336200.P288459521832371316

`A342385(lt[A306538(3*n+1), A099408(n+1)])`
-/

namespace A336200.P288459521832371316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306538 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342385 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336200.P288459521832371316

/-!
# A336201: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} (-k)^j * binomial(n,j)^k.

The programs for A336201, there is no canonical definition to state claims against.
-/

/-! ## A336201.P12346246706479690405

`A336179(n)%A329906(A008279(n))`
-/

namespace A336201.P12346246706479690405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336179 n) (A329906 (A008279 n).toNat)

end

end A336201.P12346246706479690405

/-! ## A336201.P6653468394071261839

`1-A037853(A364071(n))`
-/

namespace A336201.P6653468394071261839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A037853 (A364071 n).toNat

end

end A336201.P6653468394071261839

/-! ## A336201.P14179799581755635112

`1-A327891(A228899(n))`
-/

namespace A336201.P14179799581755635112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327891 (A228899 n).toNat

end

end A336201.P14179799581755635112

/-! ## A336201.P545743357912812787

`1-A363937(A368487(n))`
-/

namespace A336201.P545743357912812787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A363937 (A368487 n).toNat

end

end A336201.P545743357912812787

/-! ## A336201.P12292857359164036946

`A036297(2*n+3)+2-A112739(n)`
-/

namespace A336201.P12292857359164036946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036297 (2 * n + 3) + 2 - A112739 n

end

end A336201.P12292857359164036946

/-!
# A336202: a(n) = Sum_{k=0..n} (-n)^k * binomial(n,k)^n.

The programs for A336202, the canonical program `A336202.P6359261132302202159` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336202 has offset 0).

The definition of A336202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-n)^#*C(n, #)^n]` (program `A336202.P6359261132302202159`, by `A336202.P6359261132302202159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336202.P6359261132302202159

`∑{#}[n, (-n)^#*C(n, #)^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336202

/-- `∑{#}[n, (-n)^#*C(n, #)^n]` -/
def P6359261132302202159.Spec : Prop :=
  ∀ n, P6359261132302202159.a n = A336202 n

theorem P6359261132302202159.correct : P6359261132302202159.Spec := by
  intro n
  simp only [A336202]

end A336202

/-! ## A336202.P830055717779280156

`A336201(∑[4*n])`
-/

namespace A336202.P830055717779280156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336202.P830055717779280156

namespace A336202

/-- `A336201(∑[4*n])` -/
def P830055717779280156.Spec : Prop :=
  ∀ n, P830055717779280156.a n = A336202 n

end A336202

/-! ## A336202.P8479876983292333172

`A060576(n)*A336201(A046092(n))`
-/

namespace A336202.P8479876983292333172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A336201 (A046092 n).toNat

end

end A336202.P8479876983292333172

namespace A336202

/-- `A060576(n)*A336201(A046092(n))` -/
def P8479876983292333172.Spec : Prop :=
  ∀ n, P8479876983292333172.a n = A336202 n

end A336202

/-! ## A336202.P11344869898617809944

`A304042(n)*A336201(A046092(n))`
-/

namespace A336202.P11344869898617809944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A336201 (A046092 n).toNat

end

end A336202.P11344869898617809944

namespace A336202

/-- `A304042(n)*A336201(A046092(n))` -/
def P11344869898617809944.Spec : Prop :=
  ∀ n, P11344869898617809944.a n = A336202 n

end A336202

/-! ## A336202.P13589576906777051945

`or(A059841(n), A336201(A046092(n)))`
-/

namespace A336202.P13589576906777051945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A336201 (A046092 n).toNat)

end

end A336202.P13589576906777051945

namespace A336202

/-- `or(A059841(n), A336201(A046092(n)))` -/
def P13589576906777051945.Spec : Prop :=
  ∀ n, P13589576906777051945.a n = A336202 n

end A336202

/-!
# A336203: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} 2^j * binomial(n,j)^k.

The programs for A336203, there is no canonical definition to state claims against.
-/

/-! ## A336203.P10555314258360109167

`A347520(A343863(n))+A139531(A059268(n))`
-/

namespace A336203.P10555314258360109167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A343863 n).toNat + A139531 (A059268 n).toNat

end

end A336203.P10555314258360109167

/-! ## A336203.P4385500016320497405

`A115728(A215083(n)+A079520(n))`
-/

namespace A336203.P4385500016320497405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115728 (A215083 n + A079520 n).toNat

end

end A336203.P4385500016320497405

/-! ## A336203.P7806333025029534163

`or(A094250(n), A137940(A336574(n)))`
-/

namespace A336203.P7806333025029534163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094250 n) (A137940 (A336574 n).toNat)

end

end A336203.P7806333025029534163

/-! ## A336203.P10898292501121236964

`A130253(A002262(n)^A097043(n+1))`
-/

namespace A336203.P10898292501121236964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A097043 (n + 1) : ℤ))).toNat

end

end A336203.P10898292501121236964

/-! ## A336203.P3648775716372540911

`A103152(A005901(n))%A257257(n+1)`
-/

namespace A336203.P3648775716372540911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103152 (A005901 n).toNat) (A257257 (n + 1))

end

end A336203.P3648775716372540911

/-!
# A336204: a(n) = Sum_{k=0..n} 2^k * binomial(n,k)^n.

The programs for A336204, the canonical program `A336204.P15125217277975797` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336204 has offset 0).

The definition of A336204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n, #)^n]` (program `A336204.P15125217277975797`, by `A336204.P15125217277975797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336204.P15125217277975797

`∑{#}[n, 2^#*C(n, #)^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336204

/-- `∑{#}[n, 2^#*C(n, #)^n]` -/
def P15125217277975797.Spec : Prop :=
  ∀ n, (P15125217277975797.a n : ℤ) = A336204 n

theorem P15125217277975797.correct : P15125217277975797.Spec := by
  intro n
  simp only [A336204]

end A336204

/-! ## A336204.P2620420977253040779

`A336203(∑[4*n])`
-/

namespace A336204.P2620420977253040779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336204.P2620420977253040779

namespace A336204

/-- `A336203(∑[4*n])` -/
def P2620420977253040779.Spec : Prop :=
  ∀ n, P2620420977253040779.a n = A336204 n

end A336204

/-! ## A336204.P2117544277460886521

`or(1, A336203(A046092(n)))`
-/

namespace A336204.P2117544277460886521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A336203 (A046092 n).toNat)

end

end A336204.P2117544277460886521

namespace A336204

/-- `or(1, A336203(A046092(n)))` -/
def P2117544277460886521.Spec : Prop :=
  ∀ n, P2117544277460886521.a n = A336204 n

end A336204

/-!
# A336208: Squares visited by a knight on a square-spiral numbered board and moving to the lowest available unvisited square at each step, where the step is not in the same direction as the previous step.

The programs for A336208, there is no canonical definition to state claims against.
-/

/-! ## A336208.P2096922699545551642

`A328908(n)+A091218(A362378(n))`
-/

namespace A336208.P2096922699545551642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328908 n + A091218 (A362378 n).toNat

end

end A336208.P2096922699545551642

/-! ## A336208.P15881210978734743282

`A369589(A376121(n))+A328909(n)`
-/

namespace A336208.P15881210978734743282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369589 (A376121 n).toNat + A328909 n

end

end A336208.P15881210978734743282

/-! ## A336208.P16803278237603468832

`A316328(n)+A082859(A195644(n+1)+1)`
-/

namespace A336208.P16803278237603468832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316328 n + A082859 (A195644 (n + 1) + 1).toNat

end

end A336208.P16803278237603468832

/-!
# A336210: a(0) = 1; a(n) = -(1/n) * Sum_{k=0..n-1} binomial(n,k)^3 * (n-k) * a(k).

The programs for A336210, there is no canonical definition to state claims against.
-/

/-! ## A336210.P7975762008551951159

`A114156(A330718(n+1))`
-/

namespace A336210.P7975762008551951159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114156 (A330718 (n + 1)).toNat

end

end A336210.P7975762008551951159

/-!
# A336212: a(n) = Sum_{k=0..n} 3^k * binomial(n,k)^n.

The programs for A336212, the canonical program `A336212.P1735829822560816191` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336212 has offset 0).

The definition of A336212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)^n]` (program `A336212.P1735829822560816191`, by `A336212.P1735829822560816191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336212.P1735829822560816191

`∑{#}[n, 3^#*C(n, #)^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336212

/-- `∑{#}[n, 3^#*C(n, #)^n]` -/
def P1735829822560816191.Spec : Prop :=
  ∀ n, (P1735829822560816191.a n : ℤ) = A336212 n

theorem P1735829822560816191.correct : P1735829822560816191.Spec := by
  intro n
  simp only [A336212]

end A336212

/-!
# A336213: a(n) = Sum_{k=0..n} k^k * binomial(n,k)^n, with a(0)=1.

The programs for A336213, the canonical program `A336213.P12407246902453414656` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336213 has offset 0).

The definition of A336213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, #^#*C(n, #)^n]` (program `A336213.P12407246902453414656`, by `A336213.P12407246902453414656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336213.P12407246902453414656

`∑{#}[n, #^#*C(n, #)^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336213

/-- `∑{#}[n, #^#*C(n, #)^n]` -/
def P12407246902453414656.Spec : Prop :=
  ∀ n, (P12407246902453414656.a n : ℤ) = A336213 n

theorem P12407246902453414656.correct : P12407246902453414656.Spec := by
  intro n
  simp only [A336213]

end A336213

/-!
# A336214: a(n) = Sum_{k=0..n} k^n * binomial(n,k)^n, with a(0)=1.

The programs for A336214, the canonical program `A336214.P10109205871027348022` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336214 has offset 0).

The definition of A336214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, #^n*C(n, #)^n]` (program `A336214.P10109205871027348022`, by `A336214.P10109205871027348022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336214.P10109205871027348022

`∑{#}[n, #^n*C(n, #)^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336214

/-- `∑{#}[n, #^n*C(n, #)^n]` -/
def P10109205871027348022.Spec : Prop :=
  ∀ n, (P10109205871027348022.a n : ℤ) = A336214 n

theorem P10109205871027348022.correct : P10109205871027348022.Spec := by
  intro n
  simp only [A336214]

end A336214

/-!
# A336215: Lexicographically earliest sequence of positive integers such that for any k > 0, there are k occurrences of k in the sequence, and the distance between any two occurrences of k is a multiple of k.

The programs for A336215, there is no canonical definition to state claims against.
-/

/-! ## A336215.P2564672280461717081

`A002024(A371237(n+1))`
-/

namespace A336215.P2564672280461717081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A371237 (n + 1)).toNat

end

end A336215.P2564672280461717081

/-! ## A336215.P14438549454970423738

`A214371(n+1)-A055672(A306859(n))`
-/

namespace A336215.P14438549454970423738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214371 (n + 1) - A055672 (A306859 n).toNat

end

end A336215.P14438549454970423738

/-! ## A336215.P16320904687751197303

`A214371(A187829(n+1))-char[8]`
-/

namespace A336215.P16320904687751197303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214371 (A187829 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A336215.P16320904687751197303

/-! ## A336215.P7542231457414358670

`A214371(n+1)-A008403(A008406(2*(n+2)))`
-/

namespace A336215.P7542231457414358670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214371 (n + 1) - A008403 (A008406 (2 * (n + 2))).toNat

end

end A336215.P7542231457414358670

/-! ## A336215.P11889877286608151678

`A214371(n+1)-A107846(A141023(n))`
-/

namespace A336215.P11889877286608151678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214371 (n + 1) - A107846 (A141023 n).toNat

end

end A336215.P11889877286608151678

/-!
# A336218: a(n) is the length of the cycle of the purely periodic unitary sigma aliquot cycles listed in A336216.

The programs for A336218, there is no canonical definition to state claims against.
-/

/-! ## A336218.P13274849336517706973

`A318882(A336219(n+1))`
-/

namespace A336218.P13274849336517706973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (A336219 (n + 1)).toNat

end

end A336218.P13274849336517706973

/-! ## A336218.P6192227224184801008

`A097031(A336219(n+1))`
-/

namespace A336218.P6192227224184801008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A336219 (n + 1)).toNat

end

end A336218.P6192227224184801008

/-!
# A336219: a(n) is the smallest member of the n-th purely periodic unitary sigma aliquot cycle listed in A336216.

The programs for A336219, there is no canonical definition to state claims against.
-/

/-! ## A336219.P4656440879001990355

`A063919(A336216(∑[A336218(n+1)]))`
-/

namespace A336219.P4656440879001990355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (A336216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A336219.P4656440879001990355

/-! ## A336219.P1825817842843260817

`A327157(eq[A284996(n+1), A327168(n)])`
-/

namespace A336219.P1825817842843260817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327157 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A336219.P1825817842843260817

/-!
# A336220: Perfect powers which are totients of factorials.

The programs for A336220, there is no canonical definition to state claims against.
-/

/-! ## A336220.P4927460177979618957

`A048855(A187224(n+3)-3)`
-/

namespace A336220.P4927460177979618957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (A187224 (n + 3) - 3).toNat

end

end A336220.P4927460177979618957

/-! ## A336220.P4924295807066161447

`A048855(char[A082758(n)]+Δ[n²])`
-/

namespace A336220.P4924295807066161447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082758 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A336220.P4924295807066161447

/-! ## A336220.P11534489679765854037

`A048855(2*(n+1)-A043545(n))`
-/

namespace A336220.P11534489679765854037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 ((2 * (n + 1) : ℤ) - A043545 n).toNat

end

end A336220.P11534489679765854037

/-!
# A336222: Numbers k such that the square root of the largest square dividing k has an even number of prime divisors (counted with multiplicity).

The programs for A336222, the canonical program `A336222.P11154110656235782542` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336222 has offset 1).

The definition of A336222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336222.P11141469530337787456

`eq[1, A086222(n+1)%2]+1`
-/

namespace A336222.P11141469530337787456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086222 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336222.P11141469530337787456

namespace A336222

/-- `eq[1, A086222(n+1)%2]+1` -/
def P11141469530337787456.Spec : Prop :=
  ∀ n, (P11141469530337787456.a n : ℤ) = A336222 (n + 1)

end A336222

/-! ## A336222.P6103188212742813254

`lt[1, gcd(2, A086165(n+1))]+1`
-/

namespace A336222.P6103188212742813254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A086165 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336222.P6103188212742813254

namespace A336222

/-- `lt[1, gcd(2, A086165(n+1))]+1` -/
def P6103188212742813254.Spec : Prop :=
  ∀ n, (P6103188212742813254.a n : ℤ) = A336222 (n + 1)

end A336222

/-! ## A336222.P14085487959899603755

`record[(n+1)*A008836(A000188(n+1))]`
-/

namespace A336222.P14085487959899603755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008836 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336222.P14085487959899603755

namespace A336222

/-- `record[(n+1)*A008836(A000188(n+1))]` -/
def P14085487959899603755.Spec : Prop :=
  ∀ n, P14085487959899603755.a n = A336222 (n + 1)

end A336222

/-! ## A336222.P14493551794298257709

`record[(n+1)*A000217(A018892(n+1))%2]`
-/

namespace A336222.P14493551794298257709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000217 (A018892 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336222.P14493551794298257709

namespace A336222

/-- `record[(n+1)*A000217(A018892(n+1))%2]` -/
def P14493551794298257709.Spec : Prop :=
  ∀ n, P14493551794298257709.a n = A336222 (n + 1)

end A336222

/-! ## A336222.P11154110656235782542

`lt[∏{e}[9*n, A280222(#)], 0]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A336222

/-- `lt[∏{e}[9*n, A280222(#)], 0]` -/
def P11154110656235782542.Spec : Prop :=
  ∀ n, (P11154110656235782542.a n : ℤ) = A336222 (n + 1)

theorem P11154110656235782542.correct : P11154110656235782542.Spec := by
  intro n
  simp only [A336222, Nat.add_sub_cancel]

end A336222

/-! ## A336222.P15919677138871579469

`record[n+1-and(4, A000005((n+1)²))]`
-/

namespace A336222.P15919677138871579469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land 4 (A000005 ((n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336222.P15919677138871579469

namespace A336222

/-- `record[n+1-and(4, A000005((n+1)²))]` -/
def P15919677138871579469.Spec : Prop :=
  ∀ n, P15919677138871579469.a n = A336222 (n + 1)

end A336222

/-!
# A336223: Numbers k such that the largest square dividing k is a unitary divisor of k and its square root has an even number of distinct prime divisors.

The programs for A336223, the canonical program `A336223.P2667989203815519279` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336223 has offset 1).

The definition of A336223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336223.P2667989203815519279

`record[A056192(A333634(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336223

/-- `record[A056192(A333634(n+1))]` -/
def P2667989203815519279.Spec : Prop :=
  ∀ n, P2667989203815519279.a n = A336223 (n + 1)

theorem P2667989203815519279.correct : P2667989203815519279.Spec := by
  intro n
  simp only [A336223, Nat.add_sub_cancel]

end A336223

/-! ## A336223.P1707112457384021016

`record[A056192(n+1)*A162511(n+1)]`
-/

namespace A336223.P1707112457384021016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1) * A162511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336223.P1707112457384021016

namespace A336223

/-- `record[A056192(n+1)*A162511(n+1)]` -/
def P1707112457384021016.Spec : Prop :=
  ∀ n, P1707112457384021016.a n = A336223 (n + 1)

end A336223

/-! ## A336223.P752462333475196377

`record[A008683(A071773(n+1))*A056192(n+1)]`
-/

namespace A336223.P752462333475196377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A071773 (n + 1)).toNat * A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336223.P752462333475196377

namespace A336223

/-- `record[A008683(A071773(n+1))*A056192(n+1)]` -/
def P752462333475196377.Spec : Prop :=
  ∀ n, P752462333475196377.a n = A336223 (n + 1)

end A336223

/-! ## A336223.P15514714493204269347

`record[A056192(n+1)*A189021(A066990(n+1))]`
-/

namespace A336223.P15514714493204269347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1) * A189021 (A066990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336223.P15514714493204269347

namespace A336223

/-- `record[A056192(n+1)*A189021(A066990(n+1))]` -/
def P15514714493204269347.Spec : Prop :=
  ∀ n, P15514714493204269347.a n = A336223 (n + 1)

end A336223

/-! ## A336223.P15598901302505156660

`eq[A066060(n+1), A075447(A066060(n+1)+1)]+1`
-/

namespace A336223.P15598901302505156660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075447 (A066060 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336223.P15598901302505156660

namespace A336223

/-- `eq[A066060(n+1), A075447(A066060(n+1)+1)]+1` -/
def P15598901302505156660.Spec : Prop :=
  ∀ n, (P15598901302505156660.a n : ℤ) = A336223 (n + 1)

end A336223

/-! ## A336223.P3136056878076790881

`record[(n+1)*A304653(A003557(n+1))]`
-/

namespace A336223.P3136056878076790881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A304653 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336223.P3136056878076790881

namespace A336223

/-- `record[(n+1)*A304653(A003557(n+1))]` -/
def P3136056878076790881.Spec : Prop :=
  ∀ n, P3136056878076790881.a n = A336223 (n + 1)

end A336223

/-! ## A336223.P17143981905463826996

`record[A019554(A019554(n+1)^A056624(n+1))]`
-/

namespace A336223.P17143981905463826996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((A019554 (n + 1) : ℚ) ^ (A056624 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336223.P17143981905463826996

namespace A336223

/-- `record[A019554(A019554(n+1)^A056624(n+1))]` -/
def P17143981905463826996.Spec : Prop :=
  ∀ n, P17143981905463826996.a n = A336223 (n + 1)

end A336223

/-! ## A336223.P4912280003566058596

`record[A019555(A019555(n+1)^A323308(n+1))]`
-/

namespace A336223.P4912280003566058596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((A019555 (n + 1) : ℚ) ^ (A323308 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336223.P4912280003566058596

namespace A336223

/-- `record[A019555(A019555(n+1)^A323308(n+1))]` -/
def P4912280003566058596.Spec : Prop :=
  ∀ n, P4912280003566058596.a n = A336223 (n + 1)

end A336223

/-!
# A336224: Numbers k such that the largest square dividing k is a unitary divisor of k and its square root has an even number of prime divisors (counted with multiplicity).

The programs for A336224, the canonical program `A336224.P7478826169894314693` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336224 has offset 1).

The definition of A336224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336224.P7478826169894314693

`record[A056192(A336222(n+1))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336224

/-- `record[A056192(A336222(n+1))]` -/
def P7478826169894314693.Spec : Prop :=
  ∀ n, P7478826169894314693.a n = A336224 (n + 1)

theorem P7478826169894314693.correct : P7478826169894314693.Spec := by
  intro n
  simp only [A336224, Nat.add_sub_cancel]

end A336224

/-! ## A336224.P6810183287406833868

`record[A008836(A000188(n+1))*A056192(n+1)]`
-/

namespace A336224.P6810183287406833868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000188 (n + 1)).toNat * A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336224.P6810183287406833868

namespace A336224

/-- `record[A008836(A000188(n+1))*A056192(n+1)]` -/
def P6810183287406833868.Spec : Prop :=
  ∀ n, P6810183287406833868.a n = A336224 (n + 1)

end A336224

/-! ## A336224.P13899371807051968162

`eq[1, A318843(A000688(n+1))%5]+1`
-/

namespace A336224.P13899371807051968162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318843 (A000688 (n + 1)).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336224.P13899371807051968162

namespace A336224

/-- `eq[1, A318843(A000688(n+1))%5]+1` -/
def P13899371807051968162.Spec : Prop :=
  ∀ n, (P13899371807051968162.a n : ℤ) = A336224 (n + 1)

end A336224

/-!
# A336225: Table read by antidiagonals: T(n, k) = digitsum(n*k) with n >= 0 and k >= 0.

The programs for A336225, the canonical program `A336225.P17998549237820422195` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336225 has offset 0).

The definition of A336225 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336225.P3663749167678481810

`A007953(col(n)*(row(n)-col(n)))`
-/

namespace A336225.P3663749167678481810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A336225.P3663749167678481810

namespace A336225

/-- `A007953(col(n)*(row(n)-col(n)))` -/
def P3663749167678481810.Spec : Prop :=
  ∀ n, P3663749167678481810.a n = A336225 n

end A336225

/-! ## A336225.P17998549237820422195

`A007953(A004247(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336225

/-- `A007953(A004247(n))` -/
def P17998549237820422195.Spec : Prop :=
  ∀ n, P17998549237820422195.a n = A336225 n

theorem P17998549237820422195.correct : P17998549237820422195.Spec := by
  intro n
  simp only [A336225]

end A336225

/-! ## A336225.P2224964040423491106

`∑{digits}[(col(n)-row(n))*col(n), #]`
-/

namespace A336225.P2224964040423491106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A336225.P2224964040423491106

namespace A336225

/-- `∑{digits}[(col(n)-row(n))*col(n), #]` -/
def P2224964040423491106.Spec : Prop :=
  ∀ n, (P2224964040423491106.a n : ℤ) = A336225 n

end A336225

/-! ## A336225.P248535293440628637

`∑{digits}[A391365(n), #]`
-/

namespace A336225.P248535293440628637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A336225.P248535293440628637

namespace A336225

/-- `∑{digits}[A391365(n), #]` -/
def P248535293440628637.Spec : Prop :=
  ∀ n, (P248535293440628637.a n : ℤ) = A336225 n

end A336225

/-! ## A336225.P196539440425236867

`∑{digits}[log2(A117401(n)), #]`
-/

namespace A336225.P196539440425236867
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117401 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A336225.P196539440425236867

namespace A336225

/-- `∑{digits}[log2(A117401(n)), #]` -/
def P196539440425236867.Spec : Prop :=
  ∀ n, (P196539440425236867.a n : ℤ) = A336225 n

end A336225

/-! ## A336225.P11466010580638259691

`∑{digits}[1-A077028(n), #]`
-/

namespace A336225.P11466010580638259691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A336225.P11466010580638259691

namespace A336225

/-- `∑{digits}[1-A077028(n), #]` -/
def P11466010580638259691.Spec : Prop :=
  ∀ n, (P11466010580638259691.a n : ℤ) = A336225 n

end A336225

/-! ## A336225.P5444233201391943123

`∑{digits}[1-A176270(n), #]`
-/

namespace A336225.P5444233201391943123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A336225.P5444233201391943123

namespace A336225

/-- `∑{digits}[1-A176270(n), #]` -/
def P5444233201391943123.Spec : Prop :=
  ∀ n, (P5444233201391943123.a n : ℤ) = A336225 n

end A336225

/-! ## A336225.P9185895755270349105

`∑{digits}[(1-A176625(n))/3, #]`
-/

namespace A336225.P9185895755270349105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A176625 n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A336225.P9185895755270349105

namespace A336225

/-- `∑{digits}[(1-A176625(n))/3, #]` -/
def P9185895755270349105.Spec : Prop :=
  ∀ n, (P9185895755270349105.a n : ℤ) = A336225 n

end A336225

/-! ## A336225.P4395927254101690605

`A007953(A391365(n))`
-/

namespace A336225.P4395927254101690605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A391365 n).toNat

end

end A336225.P4395927254101690605

namespace A336225

/-- `A007953(A391365(n))` -/
def P4395927254101690605.Spec : Prop :=
  ∀ n, P4395927254101690605.a n = A336225 n

end A336225

/-! ## A336225.P3074046171862718804

`A007953(log2(A117401(n)))`
-/

namespace A336225.P3074046171862718804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway (Real.logb 2 (A117401 n : ℝ))).toNat

end

end A336225.P3074046171862718804

namespace A336225

/-- `A007953(log2(A117401(n)))` -/
def P3074046171862718804.Spec : Prop :=
  ∀ n, P3074046171862718804.a n = A336225 n

end A336225

/-!
# A336227: a(0) = 1; a(n) = n * Sum_{k=0..n-1} binomial(n-1,k)^2 * a(k).

The programs for A336227, there is no canonical definition to state claims against.
-/

/-! ## A336227.P15420878281311633702

`gcd(A051953(n²*a(n-1)), A285709(n+1))+n` with `a(0)=1`
-/

namespace A336227.P15420878281311633702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A051953 (n ^ 2 * a (n - 1))) (A285709 (n + 1)) + n

end

end A336227.P15420878281311633702

/-!
# A336228: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^2 * (n-k) * a(k).

The programs for A336228, there is no canonical definition to state claims against.
-/

/-! ## A336228.P2322480108269731763

`A337635(∑[A138764(n)])`
-/

namespace A336228.P2322480108269731763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336228.P2322480108269731763

/-!
# A336229: Nonisomorphic n-element posets whose order polynomial factors into linear factors over the rationals.

The programs for A336229, there is no canonical definition to state claims against.
-/

/-! ## A336229.P9973764098406751903

`A331204(A182094(n))`
-/

namespace A336229.P9973764098406751903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331204 (A182094 n).toNat

end

end A336229.P9973764098406751903

/-! ## A336229.P13108208294588783757

`∑[A007306(A001423(n))]`
-/

namespace A336229.P13108208294588783757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A001423 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336229.P13108208294588783757

/-!
# A336230: Values z of primitive solutions (x, y, z) to the Diophantine equation x^3 + y^3 + 2*z^3 = 128.

The programs for A336230, there is no canonical definition to state claims against.
-/

/-! ## A336230.P11683174791875417877

`(lt[n, a(n-2)+1]+1)²` with `a(0)=7, a(1)=2`
-/

namespace A336230.P11683174791875417877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 2] fun n f2 =>
  f2 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2

end

end A336230.P11683174791875417877

/-! ## A336230.P8223643234128288432

`lt[C(2, C(3, n²))+n, (4/gcd(4, n))²]²`
-/

namespace A336230.P8223643234128288432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 / (Nat.gcd 4 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n ^ 2

end

end A336230.P8223643234128288432

/-! ## A336230.P8558356563058322899

`record[A164659(n)²]`
-/

namespace A336230.P8558356563058322899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164659 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336230.P8558356563058322899

/-! ## A336230.P11140420271865988775

`eq[1, A307153(n)]²`
-/

namespace A336230.P11140420271865988775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A336230.P11140420271865988775

/-!
# A336231: Integers whose binary digit expansion has an even number of 0's between any two consecutive 1's.

The programs for A336231, there is no canonical definition to state claims against.
-/

/-! ## A336231.P5469733859394828462

`floor(A060142(n+1)/2)`
-/

namespace A336231.P5469733859394828462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060142 (n + 1) : ℚ) / 2⌋

end

end A336231.P5469733859394828462

/-! ## A336231.P2222166886870637400

`∪[2*A060142(n), A060142(n)]`
-/

namespace A336231.P2222166886870637400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336231.P2222166886870637400

/-! ## A336231.P16538276567055321017

`lt[A213191(A361020(n)), 2]`
-/

namespace A336231.P16538276567055321017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A361020 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336231.P16538276567055321017

/-! ## A336231.P1483328374646234665

`lt[A316831(n), 3]`
-/

namespace A336231.P1483328374646234665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336231.P1483328374646234665

/-! ## A336231.P5217542330942849793

`record[and(n, A180200(n))]`
-/

namespace A336231.P5217542330942849793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A180200 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336231.P5217542330942849793

/-! ## A336231.P16235220041400201356

`eq[1, gcd(3, A302436(n))]`
-/

namespace A336231.P16235220041400201356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A302436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336231.P16235220041400201356

/-! ## A336231.P15496887758854190273

`eq[A000120(n)², A004718(n)²]`
-/

namespace A336231.P15496887758854190273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336231.P15496887758854190273

/-! ## A336231.P8992200992758962716

`eq[A053985(n)², A065620(n)²]`
-/

namespace A336231.P8992200992758962716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336231.P8992200992758962716

/-! ## A336231.P4450176755144714175

`eq[A000120(n)*A343029(n), A343029(n)²]`
-/

namespace A336231.P4450176755144714175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A343029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336231.P4450176755144714175

/-! ## A336231.P14174782526868149628

`eq[A000120(n)*A343030(n), A343030(n)²]`
-/

namespace A336231.P14174782526868149628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A343030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336231.P14174782526868149628

/-! ## A336231.P5937755082961161867

`eq[A004718(n)*A343029(n), A343029(n)²]`
-/

namespace A336231.P5937755082961161867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 n * A343029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336231.P5937755082961161867

/-! ## A336231.P17260916428829403636

`A180201(A003754(n+1))`
-/

namespace A336231.P17260916428829403636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A003754 (n + 1)).toNat

end

end A336231.P17260916428829403636

/-! ## A336231.P5987779645324070585

`eq[A265263(n), A377414(n)]`
-/

namespace A336231.P5987779645324070585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336231.P5987779645324070585

/-! ## A336231.P18081172828477693493

`eq[A377404(n), A377415(n)]`
-/

namespace A336231.P18081172828477693493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336231.P18081172828477693493

/-! ## A336231.P15096758446951737184

`record[and(n, n-A229762(A004526(n)))]`
-/

namespace A336231.P15096758446951737184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A229762 (A004526 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336231.P15096758446951737184

/-! ## A336231.P5850908196418110346

`floor(eq[1, A086747(n)]/2)`
-/

namespace A336231.P5850908196418110346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2⌋

end

end A336231.P5850908196418110346

/-! ## A336231.P6020622371617886658

`A004524(A060142(n+1))`
-/

namespace A336231.P6020622371617886658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A060142 (n + 1)).toNat

end

end A336231.P6020622371617886658

/-! ## A336231.P1630840592990271199

`A004526(∑[A219609(n+1)])`
-/

namespace A336231.P1630840592990271199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336231.P1630840592990271199

/-!
# A336232: Integers whose binary digit expansion has a prime number of 0's between any two consecutive 1's.

The programs for A336232, there is no canonical definition to state claims against.
-/

/-! ## A336232.P8445115706531472761

`record[A262689(A057889(A000695(n)))]`
-/

namespace A336232.P8445115706531472761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A057889 (A000695 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336232.P8445115706531472761

/-! ## A336232.P10383909371462248707

`A048715(∑[A327407(A217755(n+1))])`
-/

namespace A336232.P10383909371462248707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327407 (A217755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336232.P10383909371462248707

/-!
# A336233: a(n) is the player who has highest winning probability in the "Random Josephus Game" with n players.

The programs for A336233, there is no canonical definition to state claims against.
-/

/-! ## A336233.P242270722810694368

`A000030(∑[A020753(n+1)]*A130011(n+1))`
-/

namespace A336233.P242270722810694368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 ((∑ j ∈ Finset.range (n + 1), f1 j) * A130011 (n + 1)).toNat

end

end A336233.P242270722810694368

/-!
# A336234: Edge length of 'Prime squares': sum the four numbers at the corners of a square drawn on a diagonally numbered 2D board, with 1 at the corner of the square. The sequence gives the size of the square such that the sum is a prime number.

The programs for A336234, there is no canonical definition to state claims against.
-/

/-! ## A336234.P14752802474389420045

`eq[1, A001222((n+2)²+2*n²)]`
-/

namespace A336234.P14752802474389420045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2) ^ 2 + 2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336234.P14752802474389420045

/-! ## A336234.P7745136463419812031

`eq[2, A000005((n+2)²+2*n²)]`
-/

namespace A336234.P7745136463419812031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) ^ 2 + 2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336234.P7745136463419812031

/-! ## A336234.P9375232387616250201

`lt[A001222((3*n+1)*(n+1)+3), 2]`
-/

namespace A336234.P9375232387616250201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n + 1) * (n + 1) + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336234.P9375232387616250201

/-! ## A336234.P8892179933613863663

`lt[A000005(A003215(n)+3+n), 3]`
-/

namespace A336234.P8892179933613863663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003215 n + 3 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336234.P8892179933613863663

/-! ## A336234.P1235515700596078228

`lt[A000005(A001082(2*(n+1))+3), 3]`
-/

namespace A336234.P1235515700596078228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001082 (2 * (n + 1)) + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336234.P1235515700596078228

/-!
# A336235: Numbers m such that Sum_{i=3..m} (prime(i) modulo 6) = 3*m, where prime(i) is the i-th prime.

The programs for A336235, there is no canonical definition to state claims against.
-/

/-! ## A336235.P9350200064664894789

`eq[3, A174695(A028310(n))]`
-/

namespace A336235.P9350200064664894789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336235.P9350200064664894789

/-! ## A336235.P1552358611325499485

`eq[3, A174695(A093178(n))]`
-/

namespace A336235.P1552358611325499485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336235.P1552358611325499485

/-! ## A336235.P13208012616804774625

`eq[4, A112632(A257088(n))]`
-/

namespace A336235.P13208012616804774625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336235.P13208012616804774625

/-! ## A336235.P894971800929936948

`A004442(eq[3, A174695(n+1)])`
-/

namespace A336235.P894971800929936948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336235.P894971800929936948

/-! ## A336235.P12954329791354887262

`A020725(eq[3, A174695(n+1)])`
-/

namespace A336235.P12954329791354887262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336235.P12954329791354887262

/-! ## A336235.P8106572769159090427

`A065190(eq[3, A174695(n+1)])`
-/

namespace A336235.P8106572769159090427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336235.P8106572769159090427

/-! ## A336235.P11001369668827701099

`A004442(eq[4, A112632(n+1)])`
-/

namespace A336235.P11001369668827701099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336235.P11001369668827701099

/-! ## A336235.P4820066705376737874

`A109613(eq[4, A112632(n+1)])`
-/

namespace A336235.P4820066705376737874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336235.P4820066705376737874

/-! ## A336235.P17958319215988380083

`2*eq[4, A112632(A005408(n))]+1`
-/

namespace A336235.P17958319215988380083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336235.P17958319215988380083

/-! ## A336235.P6895528046840187779

`A005408(eq[3, A174695(A005408(n))])`
-/

namespace A336235.P6895528046840187779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336235.P6895528046840187779

/-!
# A336236: a(n) = prime(n-2) - a(n-2) for n > 2, starting with a(1)=1, a(2)=1.

The programs for A336236, the canonical program `A336236.P7694628031854543111` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336236 has offset 1).

The definition of A336236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n-1)-a(n-2)` (program `A336236.P7694628031854543111`, by `A336236.P7694628031854543111.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336236.P7694628031854543111

`A000040(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A336236

/-- `A000040(n-1)-a(n-2)` -/
def P7694628031854543111.Spec : Prop :=
  ∀ n, P7694628031854543111.a n = A336236 (n + 1)

theorem P7694628031854543111.correct : P7694628031854543111.Spec := by
  intro n
  simp only [A336236, Nat.add_sub_cancel]

end A336236

/-! ## A336236.P16495266858275889201

`A008578(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A336236.P16495266858275889201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008578 n - a (n - 2)

end

end A336236.P16495266858275889201

namespace A336236

/-- `A008578(n)-a(n-2)` -/
def P16495266858275889201.Spec : Prop :=
  ∀ n, P16495266858275889201.a n = A336236 (n + 1)

end A336236

/-! ## A336236.P15959386538483280478

`A182986(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A336236.P15959386538483280478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A182986 n - a (n - 2)

end

end A336236.P15959386538483280478

namespace A336236

/-- `A182986(n)-a(n-2)` -/
def P15959386538483280478.Spec : Prop :=
  ∀ n, P15959386538483280478.a n = A336236 (n + 1)

end A336236

/-! ## A336236.P12248893215202438367

`A158611(n+1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A336236.P12248893215202438367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A158611 (n + 1) - a (n - 2)

end

end A336236.P12248893215202438367

namespace A336236

/-- `A158611(n+1)-a(n-2)` -/
def P12248893215202438367.Spec : Prop :=
  ∀ n, P12248893215202438367.a n = A336236 (n + 1)

end A336236

/-! ## A336236.P17192310782829165130

`A275017(n+1)-A101455(n)`
-/

namespace A336236.P17192310782829165130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275017 (n + 1) - A101455 n

end

end A336236.P17192310782829165130

namespace A336236

/-- `A275017(n+1)-A101455(n)` -/
def P17192310782829165130.Spec : Prop :=
  ∀ n, P17192310782829165130.a n = A336236 (n + 1)

end A336236

/-! ## A336236.P16406248929464100084

`A000040(n+1)-(A083242(n+1)+A083242(n))`
-/

namespace A336236.P16406248929464100084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A083242 (n + 1) + A083242 n)

end

end A336236.P16406248929464100084

namespace A336236

/-- `A000040(n+1)-(A083242(n+1)+A083242(n))` -/
def P16406248929464100084.Spec : Prop :=
  ∀ n, P16406248929464100084.a n = A336236 (n + 1)

end A336236

/-! ## A336236.P11812970638186714175

`A075643(n)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A336236.P11812970638186714175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A075643 n - a (n - 2)

end

end A336236.P11812970638186714175

namespace A336236

/-- `A075643(n)-a(n-2)` -/
def P11812970638186714175.Spec : Prop :=
  ∀ n, P11812970638186714175.a n = A336236 (n + 1)

end A336236

/-!
# A336237: Numbers of the form ab such that phi(ab) = a*b where ab is the concatenation of a and b.

The programs for A336237, there is no canonical definition to state claims against.
-/

/-! ## A336237.P6545852365264162132

`eq[A035930(n), A225530(n)]`
-/

namespace A336237.P6545852365264162132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336237.P6545852365264162132

/-!
# A336241: a(n) = (n!)^2 * Sum_{d|n} 1 / (d!)^2.

The programs for A336241, the canonical program `A336241.P11290877907426580092` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336241 has offset 1).

The definition of A336241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336241.P11290877907426580092

`(n+1)!²*∑{d}[n+1, 1/#!²]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336241

/-- `(n+1)!²*∑{d}[n+1, 1/#!²]` -/
def P11290877907426580092.Spec : Prop :=
  ∀ n, P11290877907426580092.a n = (A336241 (n + 1) : ℚ)

end A336241

/-! ## A336241.P14939377505648269969

`∑{d}[n+1, ((n+1)!/#!)²]`
-/

namespace A336241.P14939377505648269969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.factorial (n + 1) : ℚ) / (Nat.factorial d : ℚ)) ^ 2

end

end A336241.P14939377505648269969

namespace A336241

/-- `∑{d}[n+1, ((n+1)!/#!)²]` -/
def P14939377505648269969.Spec : Prop :=
  ∀ n, P14939377505648269969.a n = (A336241 (n + 1) : ℚ)

end A336241

/-!
# A336242: a(n) = (n!)^2 * Sum_{d|n} (-1)^(d+1) / (d!)^2.

The programs for A336242, the canonical program `A336242.P3417770546841922345` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336242 has offset 1).

The definition of A336242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336242.P3417770546841922345

`(n+1)!²*∑{d}[n+1, (-1)^(#+1)/#!²]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336242

/-- `(n+1)!²*∑{d}[n+1, (-1)^(#+1)/#!²]` -/
def P3417770546841922345.Spec : Prop :=
  ∀ n, P3417770546841922345.a n = (A336242 (n + 1) : ℚ)

end A336242

/-!
# A336243: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^2 * (n-k-1)! * a(k).

The programs for A336243, there is no canonical definition to state claims against.
-/

/-! ## A336243.P8686963264185369582

`A288734(a(n-1)*∑[n]+1)-1` with `a(0)=1, a(1)=1`
-/

namespace A336243.P8686963264185369582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A288734 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat - 1

end

end A336243.P8686963264185369582

/-!
# A336246: Array read by upwards antidiagonals: T(n,k) is the number of ways to place n persons on different seats such that each person number p, 1 <= p <= n, differs from the seat number s(p), 1 <= s(p) <= n+k, k >= 0.

The programs for A336246, the canonical program `A336246.P14830530072838926104` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336246 has offset 1).

The definition of A336246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336246.P1721786756527435684

`A086764(comp[∑[n-1]])`
-/

namespace A336246.P1721786756527435684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A336246.P1721786756527435684

namespace A336246

/-- `A086764(comp[∑[n-1]])` -/
def P1721786756527435684.Spec : Prop :=
  ∀ n, P1721786756527435684.a n = A336246 (n + 1)

end A336246

/-! ## A336246.P11787422465012599015

`A060475(2*C(comp[∑[n]]-n, 2)-n)`
-/

namespace A336246.P11787422465012599015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (2 * Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A336246.P11787422465012599015

namespace A336246

/-- `A060475(2*C(comp[∑[n]]-n, 2)-n)` -/
def P11787422465012599015.Spec : Prop :=
  ∀ n, P11787422465012599015.a n = A336246 (n + 1)

end A336246

/-! ## A336246.P8709162430373897611

`A060475(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A336246.P8709162430373897611
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A336246.P8709162430373897611

namespace A336246

/-- `A060475(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)` -/
def P8709162430373897611.Spec : Prop :=
  ∀ n, P8709162430373897611.a n = A336246 (n + 1)

end A336246

/-! ## A336246.P17561026703476714427

`A076731(A038722(n+1))`
-/

namespace A336246.P17561026703476714427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076731 (A038722 (n + 1)).toNat

end

end A336246.P17561026703476714427

namespace A336246

/-- `A076731(A038722(n+1))` -/
def P17561026703476714427.Spec : Prop :=
  ∀ n, P17561026703476714427.a n = A336246 (n + 1)

end A336246

/-! ## A336246.P14830530072838926104

`and(-1, A086764(A007401(n+1)))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A336246

/-- `and(-1, A086764(A007401(n+1)))` -/
def P14830530072838926104.Spec : Prop :=
  ∀ n, P14830530072838926104.a n = A336246 (n + 1)

theorem P14830530072838926104.correct : P14830530072838926104.Spec := by
  intro n
  simp only [A336246, Nat.add_sub_cancel]

end A336246

/-! ## A336246.P13005518057547955550

`or(char[1], A086764(A002024(n+1)+n))`
-/

namespace A336246.P13005518057547955550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A086764 (A002024 (n + 1) + (n : ℤ)).toNat)

end

end A336246.P13005518057547955550

namespace A336246

/-- `or(char[1], A086764(A002024(n+1)+n))` -/
def P13005518057547955550.Spec : Prop :=
  ∀ n, P13005518057547955550.a n = A336246 (n + 1)

end A336246

/-! ## A336246.P11724518233685777260

`(A000007(n)+1)*A086764(A007401(n+1))`
-/

namespace A336246.P11724518233685777260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A086764 (A007401 (n + 1)).toNat

end

end A336246.P11724518233685777260

namespace A336246

/-- `(A000007(n)+1)*A086764(A007401(n+1))` -/
def P11724518233685777260.Spec : Prop :=
  ∀ n, P11724518233685777260.a n = A336246 (n + 1)

end A336246

/-! ## A336246.P3491844946437106443

`A007318(C(2, n))*A086764(A002024(n+1)+n)`
-/

namespace A336246.P3491844946437106443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A086764 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A336246.P3491844946437106443

namespace A336246

/-- `A007318(C(2, n))*A086764(A002024(n+1)+n)` -/
def P3491844946437106443.Spec : Prop :=
  ∀ n, P3491844946437106443.a n = A336246 (n + 1)

end A336246

/-! ## A336246.P9356457184194815249

`A086764(A007401(n+1)+A000007(n))-A000007(n)`
-/

namespace A336246.P9356457184194815249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A007401 (n + 1) + A000007 n).toNat - A000007 n

end

end A336246.P9356457184194815249

namespace A336246

/-- `A086764(A007401(n+1)+A000007(n))-A000007(n)` -/
def P9356457184194815249.Spec : Prop :=
  ∀ n, P9356457184194815249.a n = A336246 (n + 1)

end A336246

/-! ## A336246.P8502011810368121358

`A068106(A007401(n+1))/A233543(n)`
-/

namespace A336246.P8502011810368121358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068106 (A007401 (n + 1)).toNat : ℚ) / (A233543 n : ℚ)

end

end A336246.P8502011810368121358

namespace A336246

/-- `A068106(A007401(n+1))/A233543(n)` -/
def P8502011810368121358.Spec : Prop :=
  ∀ n, P8502011810368121358.a n = (A336246 (n + 1) : ℚ)

end A336246

/-!
# A336247: a(n) = (n!)^n * Sum_{k=0..n} 1 / (k!)^n.

The programs for A336247, the canonical program `A336247.P11311942657684818303` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336247 has offset 0).

The definition of A336247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336247.P11311942657684818303

`n!^n*∑{#}[n, 1/#!^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336247

/-- `n!^n*∑{#}[n, 1/#!^n]` -/
def P11311942657684818303.Spec : Prop :=
  ∀ n, P11311942657684818303.a n = (A336247 n : ℚ)

end A336247

/-! ## A336247.P344028424035324922

`A343863(∑[4*n])`
-/

namespace A336247.P344028424035324922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343863 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336247.P344028424035324922

namespace A336247

/-- `A343863(∑[4*n])` -/
def P344028424035324922.Spec : Prop :=
  ∀ n, P344028424035324922.a n = A336247 n

end A336247

/-!
# A336248: a(n) = (n!)^n * Sum_{k=0..n} (-1)^k / (k!)^n.

The programs for A336248, the canonical program `A336248.P18429257925754432926` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336248 has offset 0).

The definition of A336248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336248.P18429257925754432926

`n!^n*∑{#}[n, (-1)^#/#!^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336248

/-- `n!^n*∑{#}[n, (-1)^#/#!^n]` -/
def P18429257925754432926.Spec : Prop :=
  ∀ n, P18429257925754432926.a n = (A336248 n : ℚ)

end A336248

/-!
# A336249: a(n) = (n!)^n * Sum_{k=0..n} 1 / ((k!)^n * (n-k)!).

The programs for A336249, the canonical program `A336249.P14603341614335720390` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336249 has offset 0).

The definition of A336249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336249.P14603341614335720390

`n!^n*∑{#}[n, 1/(#!^n*(n-#)!)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336249

/-- `n!^n*∑{#}[n, 1/(#!^n*(n-#)!)]` -/
def P14603341614335720390.Spec : Prop :=
  ∀ n, P14603341614335720390.a n = (A336249 n : ℚ)

end A336249

/-!
# A336250: a(n) = (n!)^n * Sum_{k=1..n} (-1)^(k+1) / k^n.

The programs for A336250, the canonical program `A336250.P3787070562893046714` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336250 has offset 0).

The definition of A336250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336250.P3787070562893046714

`n!^n*∑{#}[n-1, (-1)^(#+1+1)/(#+1)^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336250

/-- `n!^n*∑{#}[n-1, (-1)^(#+1+1)/(#+1)^n]` -/
def P3787070562893046714.Spec : Prop :=
  ∀ n, P3787070562893046714.a n = (A336250 n : ℚ)

end A336250

/-!
# A336252: Infinitary barely deficient numbers: infinitary deficient numbers whose infinitary abundancy is closer to 2 than that of any smaller infinitary deficient number.

The programs for A336252, there is no canonical definition to state claims against.
-/

/-! ## A336252.P10184542156251806763

`A091090(n)*A124827(A000124(n))`
-/

namespace A336252.P10184542156251806763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n * A124827 (A000124 n).toNat

end

end A336252.P10184542156251806763

/-! ## A336252.P12991839236395423668

`A057820(A214765(n))*A115269(n)`
-/

namespace A336252.P12991839236395423668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A214765 n).toNat * A115269 n

end

end A336252.P12991839236395423668

/-!
# A336253: Exponential barely deficient numbers: exponential deficient numbers whose exponential abundancy is closer to 2 than that of any smaller exponential deficient number.

The programs for A336253, there is no canonical definition to state claims against.
-/

/-! ## A336253.P15081885052147088241

`A375745(A276782(n+1))`
-/

namespace A336253.P15081885052147088241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375745 (A276782 (n + 1)).toNat

end

end A336253.P15081885052147088241

/-!
# A336255: Irregular triangular array read by rows. T(n,k) is the number of rooted labeled trees on n nodes with path length exactly k, n>=1, 0<=k<=C(n,2).

The programs for A336255, there is no canonical definition to state claims against.
-/

/-! ## A336255.P14558030288745126693

`gcd(A307380(A096193(n+1)), A336309(n+1))`
-/

namespace A336255.P14558030288745126693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307380 (A096193 (n + 1)).toNat) (A336309 (n + 1))

end

end A336255.P14558030288745126693

/-! ## A336255.P11473951341158208091

`A336309(n+1)+A307380(A336309(n+1)+A096193(n+1))`
-/

namespace A336255.P11473951341158208091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336309 (n + 1) + A307380 (A336309 (n + 1) + A096193 (n + 1)).toNat

end

end A336255.P11473951341158208091

/-!
# A336257: a(n) = Catalan(n) mod (2*n+1).

The programs for A336257, the canonical program `A336257.P14569327549434183101` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336257 has offset 0).

The definition of A336257 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)%(2*n+1)` (program `A336257.P14569327549434183101`, by `A336257.P14569327549434183101.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336257.P14569327549434183101

`A000108(n)%(2*n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A336257

/-- `A000108(n)%(2*n+1)` -/
def P14569327549434183101.Spec : Prop :=
  ∀ n, P14569327549434183101.a n = A336257 n

theorem P14569327549434183101.correct : P14569327549434183101.Spec := by
  intro n
  simp only [A336257]

end A336257

/-! ## A336257.P16658248852717321898

`abs(A168491(n)%Δ[n²])`
-/

namespace A336257.P16658248852717321898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A336257.P16658248852717321898

namespace A336257

/-- `abs(A168491(n)%Δ[n²])` -/
def P16658248852717321898.Spec : Prop :=
  ∀ n, P16658248852717321898.a n = A336257 n

end A336257

/-! ## A336257.P15573215876737344707

`A120588(n+1)%Δ[n²]`
-/

namespace A336257.P15573215876737344707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P15573215876737344707

namespace A336257

/-- `A120588(n+1)%Δ[n²]` -/
def P15573215876737344707.Spec : Prop :=
  ∀ n, P15573215876737344707.a n = A336257 n

end A336257

/-! ## A336257.P2443310532768286759

`(A120304(n)+2)%Δ[n²]`
-/

namespace A336257.P2443310532768286759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P2443310532768286759

namespace A336257

/-- `(A120304(n)+2)%Δ[n²]` -/
def P2443310532768286759.Spec : Prop :=
  ∀ n, P2443310532768286759.a n = A336257 n

theorem P2443310532768286759.correct : P2443310532768286759.Spec := by
  intro n
  simp only [A336257, Nat.add_sub_cancel, A336257.P2443310532768286759.f1, A336257.P2443310532768286759.a, A336257.P14569327549434183101.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336257

/-! ## A336257.P6968251013548504323

`A028303(2*n)%Δ[n²]`
-/

namespace A336257.P6968251013548504323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P6968251013548504323

namespace A336257

/-- `A028303(2*n)%Δ[n²]` -/
def P6968251013548504323.Spec : Prop :=
  ∀ n, P6968251013548504323.a n = A336257 n

end A336257

/-! ## A336257.P7516884403434095034

`A126324(2*n)%Δ[n²]`
-/

namespace A336257.P7516884403434095034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (2 * n)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P7516884403434095034

namespace A336257

/-- `A126324(2*n)%Δ[n²]` -/
def P7516884403434095034.Spec : Prop :=
  ∀ n, P7516884403434095034.a n = A336257 n

end A336257

/-! ## A336257.P16999718376967983534

`A208355(2*n)%Δ[n²]`
-/

namespace A336257.P16999718376967983534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * n)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P16999718376967983534

namespace A336257

/-- `A208355(2*n)%Δ[n²]` -/
def P16999718376967983534.Spec : Prop :=
  ∀ n, P16999718376967983534.a n = A336257 n

end A336257

/-! ## A336257.P9522805897243911366

`A329687(3*n)%Δ[n²]`
-/

namespace A336257.P9522805897243911366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329687 (3 * n)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P9522805897243911366

namespace A336257

/-- `A329687(3*n)%Δ[n²]` -/
def P9522805897243911366.Spec : Prop :=
  ∀ n, P9522805897243911366.a n = A336257 n

end A336257

/-! ## A336257.P3111133942556918298

`(A246604(n)+n)%Δ[n²]`
-/

namespace A336257.P3111133942556918298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246604 n + (n : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P3111133942556918298

namespace A336257

/-- `(A246604(n)+n)%Δ[n²]` -/
def P3111133942556918298.Spec : Prop :=
  ∀ n, P3111133942556918298.a n = A336257 n

theorem P3111133942556918298.correct : P3111133942556918298.Spec := by
  intro n
  simp only [A336257, Nat.add_sub_cancel, A336257.P3111133942556918298.f1, A336257.P3111133942556918298.a, A336257.P14569327549434183101.a, A000108, A000108.P17551949696095299361.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336257

/-! ## A336257.P7552527708103925042

`A089408(Δ[n²])%Δ[n²]`
-/

namespace A336257.P7552527708103925042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A336257.P7552527708103925042

namespace A336257

/-- `A089408(Δ[n²])%Δ[n²]` -/
def P7552527708103925042.Spec : Prop :=
  ∀ n, P7552527708103925042.a n = A336257 n

end A336257

/-! ## A336257.P5526917669523893776

`A028304(2*n)%(2*n+1)`
-/

namespace A336257.P5526917669523893776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (2 * n)) (2 * n + 1 : ℤ)

end

end A336257.P5526917669523893776

namespace A336257

/-- `A028304(2*n)%(2*n+1)` -/
def P5526917669523893776.Spec : Prop :=
  ∀ n, P5526917669523893776.a n = A336257 n

end A336257

/-! ## A336257.P17093580244940144345

`A126120(2*n)%(2*n+1)`
-/

namespace A336257.P17093580244940144345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * n)) (2 * n + 1 : ℤ)

end

end A336257.P17093580244940144345

namespace A336257

/-- `A126120(2*n)%(2*n+1)` -/
def P17093580244940144345.Spec : Prop :=
  ∀ n, P17093580244940144345.a n = A336257 n

end A336257

/-! ## A336257.P17352288193208064702

`A097331(2*n+1)%(2*n+1)`
-/

namespace A336257.P17352288193208064702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A336257.P17352288193208064702

namespace A336257

/-- `A097331(2*n+1)%(2*n+1)` -/
def P17352288193208064702.Spec : Prop :=
  ∀ n, P17352288193208064702.a n = A336257 n

end A336257

/-! ## A336257.P9189704892574258446

`(A263986(n)+A000045(n))%Δ[n²]`
-/

namespace A336257.P9189704892574258446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A000045 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P9189704892574258446

namespace A336257

/-- `(A263986(n)+A000045(n))%Δ[n²]` -/
def P9189704892574258446.Spec : Prop :=
  ∀ n, P9189704892574258446.a n = A336257 n

theorem P9189704892574258446.correct : P9189704892574258446.Spec := by
  intro n
  simp only [A336257, Nat.add_sub_cancel, A336257.P9189704892574258446.f1, A336257.P9189704892574258446.a, A336257.P14569327549434183101.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A263986, A263986.P11008450882714767519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336257

/-! ## A336257.P15275081840166074279

`A099363(2*n)%(2*n+1)`
-/

namespace A336257.P15275081840166074279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099363 (2 * n)) (2 * n + 1 : ℤ)

end

end A336257.P15275081840166074279

namespace A336257

/-- `A099363(2*n)%(2*n+1)` -/
def P15275081840166074279.Spec : Prop :=
  ∀ n, P15275081840166074279.a n = A336257 n

end A336257

/-! ## A336257.P183953404798713568

`A057977(2*n)%(2*n+1)`
-/

namespace A336257.P183953404798713568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057977 (2 * n)) (2 * n + 1 : ℤ)

end

end A336257.P183953404798713568

namespace A336257

/-- `A057977(2*n)%(2*n+1)` -/
def P183953404798713568.Spec : Prop :=
  ∀ n, P183953404798713568.a n = A336257 n

end A336257

/-! ## A336257.P1633935946349661553

`A089849(2*n+1)%(2*n+1)`
-/

namespace A336257.P1633935946349661553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089849 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A336257.P1633935946349661553

namespace A336257

/-- `A089849(2*n+1)%(2*n+1)` -/
def P1633935946349661553.Spec : Prop :=
  ∀ n, P1633935946349661553.a n = A336257 n

end A336257

/-! ## A336257.P2162477335052803267

`(A000984(n)/(n+1))%(2*n+1)`
-/

namespace A336257.P2162477335052803267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000984 n : ℚ) / (n + 1 : ℚ))) (2 * n + 1 : ℤ)

end

end A336257.P2162477335052803267

namespace A336257

/-- `(A000984(n)/(n+1))%(2*n+1)` -/
def P2162477335052803267.Spec : Prop :=
  ∀ n, P2162477335052803267.a n = A336257 n

end A336257

/-! ## A336257.P17816383641850043575

`A028329(n)%(2*n+1)`
-/

namespace A336257.P17816383641850043575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028329 n) (2 * n + 1 : ℤ)

end

end A336257.P17816383641850043575

namespace A336257

/-- `A028329(n)%(2*n+1)` -/
def P17816383641850043575.Spec : Prop :=
  ∀ n, P17816383641850043575.a n = A336257 n

end A336257

/-! ## A336257.P14584660353435307523

`A100320(n)%(2*n+1)`
-/

namespace A336257.P14584660353435307523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100320 n) (2 * n + 1 : ℤ)

end

end A336257.P14584660353435307523

namespace A336257

/-- `A100320(n)%(2*n+1)` -/
def P14584660353435307523.Spec : Prop :=
  ∀ n, P14584660353435307523.a n = A336257 n

end A336257

/-! ## A336257.P11486757091817823871

`(2*C(2*n, n))%(2*n+1)`
-/

namespace A336257.P11486757091817823871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) n % (2 * n + 1)

end

end A336257.P11486757091817823871

namespace A336257

/-- `(2*C(2*n, n))%(2*n+1)` -/
def P11486757091817823871.Spec : Prop :=
  ∀ n, (P11486757091817823871.a n : ℤ) = A336257 n

end A336257

/-!
# A336258: a(0) = 1; a(n) = (n!)^2 * Sum_{k=0..n-1} a(k) / (k! * (n-k))^2.

The programs for A336258, there is no canonical definition to state claims against.
-/

/-! ## A336258.P15474887149892032644

`A184480(n²*a(n-1))` with `a(0)=1`
-/

namespace A336258.P15474887149892032644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184480 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A336258.P15474887149892032644

/-!
# A336262: Number of self-avoiding walks on a 2-dimensional square lattice where the walk consists of steps with incrementing lengths equal to the prime numbers, from 2 to prime(n).

The programs for A336262, there is no canonical definition to state claims against.
-/

/-! ## A336262.P18320540206463389236

`A028310(A347506(n)-A061993(n))`
-/

namespace A336262.P18320540206463389236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A347506 n - A061993 n).toNat

end

end A336262.P18320540206463389236

/-! ## A336262.P3304131860893440263

`A137564(A347506(n)-A061993(n))`
-/

namespace A336262.P3304131860893440263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A347506 n - A061993 n).toNat

end

end A336262.P3304131860893440263

/-! ## A336262.P10567930742794508749

`A347506(n)-lcm(A061993(n), A282741(n))`
-/

namespace A336262.P10567930742794508749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347506 n - (Int.lcm (A061993 n) (A282741 n) : ℤ)

end

end A336262.P10567930742794508749

/-!
# A336263: Numbers of the form k + s + 2*k*s where k is a positive integer and s is a Sundaram number (A159919).

The programs for A336263, there is no canonical definition to state claims against.
-/

/-! ## A336263.P14061151031575040555

`lt[2, A340101(n)]`
-/

namespace A336263.P14061151031575040555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336263.P14061151031575040555

/-! ## A336263.P13712896456416233635

`lt[3, A352063(n)]`
-/

namespace A336263.P13712896456416233635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336263.P13712896456416233635

/-! ## A336263.P7235565725135019984

`lt[9, A158315(n)]`
-/

namespace A336263.P7235565725135019984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336263.P7235565725135019984

/-! ## A336263.P18391514597118770430

`lt[8, sqrt(A158280(n))]`
-/

namespace A336263.P18391514597118770430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A158280 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A336263.P18391514597118770430

/-! ## A336263.P5831304223775455650

`lt[1, A285716(n+1)]`
-/

namespace A336263.P5831304223775455650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336263.P5831304223775455650

/-! ## A336263.P15757811488021492869

`lt[2, A091304(n+1)]`
-/

namespace A336263.P15757811488021492869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336263.P15757811488021492869

/-! ## A336263.P3484401285201093833

`lt[3, A002033(2*n)]`
-/

namespace A336263.P3484401285201093833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336263.P3484401285201093833

/-! ## A336263.P18247795175752469169

`lt[2, log(A278223(n+1))]`
-/

namespace A336263.P18247795175752469169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A278223 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A336263.P18247795175752469169

/-! ## A336263.P2086276373269468804

`eq[0, A109810(2*n+1)]`
-/

namespace A336263.P2086276373269468804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109810 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336263.P2086276373269468804

/-! ## A336263.P15445858408060275906

`eq[0, A230594(2*n+1)]`
-/

namespace A336263.P15445858408060275906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230594 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336263.P15445858408060275906

/-!
# A336265: Number of 2D closed-loop self-avoiding paths on a square lattice where each path consists of steps with successive lengths equal to the prime numbers, from 2 to prime(2n+1).

The programs for A336265, there is no canonical definition to state claims against.
-/

/-! ## A336265.P8427402576877510920

`A236378(7*A282741(n))`
-/

namespace A336265.P8427402576877510920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 (7 * A282741 n).toNat

end

end A336265.P8427402576877510920

/-! ## A336265.P11060305472340411869

`A061858(or(2, A327644(n)))`
-/

namespace A336265.P11060305472340411869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (Int.lor 2 (A327644 n)).toNat

end

end A336265.P11060305472340411869

/-! ## A336265.P1746017305312528122

`A236378(lcm(7, A282741(n)))`
-/

namespace A336265.P1746017305312528122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 (Int.lcm 7 (A282741 n))

end

end A336265.P1746017305312528122

/-! ## A336265.P3130369664696164077

`A048735(lcm(n, A356753(n)))`
-/

namespace A336265.P3130369664696164077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (Int.lcm (n : ℤ) (A356753 n))

end

end A336265.P3130369664696164077

/-! ## A336265.P2819767733826166480

`A236378(A323901(n)+A118929(n))`
-/

namespace A336265.P2819767733826166480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 (A323901 n + A118929 n).toNat

end

end A336265.P2819767733826166480

/-!
# A336267: Number of free polyominoes of width 3 and height n.

The programs for A336267, there is no canonical definition to state claims against.
-/

/-! ## A336267.P6803393566130200225

`record[A268371(A007318(n)+3)]`
-/

namespace A336267.P6803393566130200225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268371 (A007318 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336267.P6803393566130200225

/-! ## A336267.P14204916910402654648

`record[gcd(A182748(n), A268371(n+4))]`
-/

namespace A336267.P14204916910402654648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182748 n) (A268371 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336267.P14204916910402654648

/-! ## A336267.P1251607102656064654

`record[root(A268371(n+4), A080416(n+1))]`
-/

namespace A336267.P1251607102656064654
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268371 (n + 4) : ℝ) ^ (1 / (A080416 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336267.P1251607102656064654

/-!
# A336268: Lexicographically earliest sequence of positive integers such that for any term, say k, there are k occurrences of k in the sequence, and the distance between any two consecutive occurrences of k equals k.

The programs for A336268, there is no canonical definition to state claims against.
-/

/-! ## A336268.P9893065764979634264

`A117818(A117818(n+1)²)-A287372(A294871(2*n+5))`
-/

namespace A336268.P9893065764979634264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A117818 (n + 1) ^ 2).toNat - A287372 (A294871 (2 * n + 5)).toNat

end

end A336268.P9893065764979634264

/-!
# A336269: Number of compositions of n containing no part p of multiplicity p.

The programs for A336269, there is no canonical definition to state claims against.
-/

/-! ## A336269.P15252906280713113766

`A011782(n)-A336273(n)`
-/

namespace A336269.P15252906280713113766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A336273 n

end

end A336269.P15252906280713113766

/-! ## A336269.P8122624788180546612

`2-(A336273(n)+A122958(n))`
-/

namespace A336269.P8122624788180546612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A336273 n + A122958 n)

end

end A336269.P8122624788180546612

/-! ## A336269.P6096669506210360728

`Δ[A094373(n)]-A336273(n)`
-/

namespace A336269.P6096669506210360728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336273 n

end

end A336269.P6096669506210360728

/-! ## A336269.P6942176258464828491

`Δ[A131577(n)]-A336273(n)`
-/

namespace A336269.P6942176258464828491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336273 n

end

end A336269.P6942176258464828491

/-! ## A336269.P9150150050308860599

`ceil(A000079(n)/2-A336273(n))`
-/

namespace A336269.P9150150050308860599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n : ℚ) / 2 - (A336273 n : ℚ)⌉

end

end A336269.P9150150050308860599

/-!
# A336271: a(0) = 1; a(n) = Sum_{k=1..n} (-1)^(k+1) * binomial(n,k)^2 * binomial(2*k,k) * a(n-k).

The programs for A336271, there is no canonical definition to state claims against.
-/

/-! ## A336271.P1184520457142962215

`A340986(∑[n+3])`
-/

namespace A336271.P1184520457142962215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336271.P1184520457142962215

/-! ## A336271.P8457374993892356811

`record[A340986(A049777(n+1))]`
-/

namespace A336271.P8457374993892356811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336271.P8457374993892356811

/-! ## A336271.P2143579811514536286

`record[A340986(n)/A055133(n+2)]`
-/

namespace A336271.P2143579811514536286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340986 n : ℚ) / (A055133 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336271.P2143579811514536286

/-! ## A336271.P17088500844096767239

`record[A340986(n)/A192721(n+3)]`
-/

namespace A336271.P17088500844096767239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340986 n : ℚ) / (A192721 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336271.P17088500844096767239

/-!
# A336273: Number of compositions of n containing at least one part p of multiplicity p.

The programs for A336273, there is no canonical definition to state claims against.
-/

/-! ## A336273.P7520178814592996748

`A011782(n)-A336269(n)`
-/

namespace A336273.P7520178814592996748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A336269 n

end

end A336273.P7520178814592996748

/-! ## A336273.P5914877376804296172

`A016116(A014681(2*n))-A336269(n)`
-/

namespace A336273.P5914877376804296172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A014681 (2 * n)).toNat - A336269 n

end

end A336273.P5914877376804296172

/-! ## A336273.P14271230152445274127

`Δ[A056469(n)]-A336269(n)`
-/

namespace A336273.P14271230152445274127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336269 n

end

end A336273.P14271230152445274127

/-! ## A336273.P1395511312795883130

`(A006516(n)-A336269(n))%A000079(n)`
-/

namespace A336273.P1395511312795883130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006516 n - A336269 n) (A000079 n)

end

end A336273.P1395511312795883130

/-! ## A336273.P6263512152986646442

`A155038(A167614(n+1))-A336269(n)`
-/

namespace A336273.P6263512152986646442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (A167614 (n + 1)).toNat - A336269 n

end

end A336273.P6263512152986646442

/-!
# A336276: a(n) = Sum_{k=1..n} mu(k)*k^2.

The programs for A336276, the canonical program `A336276.P11981885828726030914` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336276 has offset 1).

The definition of A336276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336276.P11981885828726030914

`∑[C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336276

/-- `∑[C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]]` -/
def P11981885828726030914.Spec : Prop :=
  ∀ n, P11981885828726030914.a n = A336276 (n + 1)

theorem P11981885828726030914.correct : P11981885828726030914.Spec := by
  intro n
  simp only [A336276, Nat.add_sub_cancel]

end A336276

/-! ## A336276.P3989813378897387651

`a(n-1)+C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]` with `a(0)=1`
-/

namespace A336276.P3989813378897387651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))

end

end A336276.P3989813378897387651

namespace A336276

/-- `a(n-1)+C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]` -/
def P3989813378897387651.Spec : Prop :=
  ∀ n, P3989813378897387651.a n = A336276 (n + 1)

end A336276

/-! ## A336276.P9608828564101176030

`∑[A334657(n+1)]`
-/

namespace A336276.P9608828564101176030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P9608828564101176030

namespace A336276

/-- `∑[A334657(n+1)]` -/
def P9608828564101176030.Spec : Prop :=
  ∀ n, P9608828564101176030.a n = A336276 (n + 1)

end A336276

/-! ## A336276.P2770022038081899241

`∑[∑{d}[n+1, A053822(#)]]`
-/

namespace A336276.P2770022038081899241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A053822 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P2770022038081899241

namespace A336276

/-- `∑[∑{d}[n+1, A053822(#)]]` -/
def P2770022038081899241.Spec : Prop :=
  ∀ n, P2770022038081899241.a n = A336276 (n + 1)

end A336276

/-! ## A336276.P6765303295452306422

`∑[(n+1)*A055615(n+1)]`
-/

namespace A336276.P6765303295452306422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P6765303295452306422

namespace A336276

/-- `∑[(n+1)*A055615(n+1)]` -/
def P6765303295452306422.Spec : Prop :=
  ∀ n, P6765303295452306422.a n = A336276 (n + 1)

end A336276

/-! ## A336276.P17809896097307124470

`∑[A334659(n+1)/(n+1)]`
-/

namespace A336276.P17809896097307124470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334659 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P17809896097307124470

namespace A336276

/-- `∑[A334659(n+1)/(n+1)]` -/
def P17809896097307124470.Spec : Prop :=
  ∀ n, P17809896097307124470.a n = (A336276 (n + 1) : ℚ)

end A336276

/-! ## A336276.P5249268934132668701

`∑[(n+1)²*A008683(n+1)]`
-/

namespace A336276.P5249268934132668701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P5249268934132668701

namespace A336276

/-- `∑[(n+1)²*A008683(n+1)]` -/
def P5249268934132668701.Spec : Prop :=
  ∀ n, P5249268934132668701.a n = A336276 (n + 1)

end A336276

/-! ## A336276.P15684222844892986422

`∑[A334660(n+1)/(n+1)²]`
-/

namespace A336276.P15684222844892986422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334660 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P15684222844892986422

namespace A336276

/-- `∑[A334660(n+1)/(n+1)²]` -/
def P15684222844892986422.Spec : Prop :=
  ∀ n, P15684222844892986422.a n = (A336276 (n + 1) : ℚ)

end A336276

/-! ## A336276.P14020215259728982056

`∑[(n+1)*(n+1)*A008683(C(n+1, n))]`
-/

namespace A336276.P14020215259728982056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A008683 (Nat.choose (n + 1) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P14020215259728982056

namespace A336276

/-- `∑[(n+1)*(n+1)*A008683(C(n+1, n))]` -/
def P14020215259728982056.Spec : Prop :=
  ∀ n, P14020215259728982056.a n = A336276 (n + 1)

end A336276

/-! ## A336276.P7983202945397348326

`∑[A008683(2*n+1-n)*∑[2*n+1]]`
-/

namespace A336276.P7983202945397348326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P7983202945397348326

namespace A336276

/-- `∑[A008683(2*n+1-n)*∑[2*n+1]]` -/
def P7983202945397348326.Spec : Prop :=
  ∀ n, P7983202945397348326.a n = A336276 (n + 1)

end A336276

/-! ## A336276.P11073849525190889909

`∑[(n+1)*A328729((n+1)²)]`
-/

namespace A336276.P11073849525190889909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328729 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336276.P11073849525190889909

namespace A336276

/-- `∑[(n+1)*A328729((n+1)²)]` -/
def P11073849525190889909.Spec : Prop :=
  ∀ n, P11073849525190889909.a n = A336276 (n + 1)

end A336276

/-!
# A336277: a(n) = Sum_{k=1..n} mu(k)*k^3.

The programs for A336277, the canonical program `A336277.P14362927698031689843` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336277 has offset 1).

The definition of A336277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336277.P14362927698031689843

`∑[(n+1)*C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336277

/-- `∑[(n+1)*C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]]` -/
def P14362927698031689843.Spec : Prop :=
  ∀ n, P14362927698031689843.a n = A336277 (n + 1)

theorem P14362927698031689843.correct : P14362927698031689843.Spec := by
  intro n
  simp only [A336277, Nat.add_sub_cancel]

end A336277

/-! ## A336277.P7780493219886767655

`∑[A334659(n+1)]`
-/

namespace A336277.P7780493219886767655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P7780493219886767655

namespace A336277

/-- `∑[A334659(n+1)]` -/
def P7780493219886767655.Spec : Prop :=
  ∀ n, P7780493219886767655.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P17743347024527255894

`∑[A055615(n+1)^3]`
-/

namespace A336277.P17743347024527255894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P17743347024527255894

namespace A336277

/-- `∑[A055615(n+1)^3]` -/
def P17743347024527255894.Spec : Prop :=
  ∀ n, P17743347024527255894.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P9241379075971518345

`∑[∑{d}[n+1, A053825(#)]]`
-/

namespace A336277.P9241379075971518345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A053825 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P9241379075971518345

namespace A336277

/-- `∑[∑{d}[n+1, A053825(#)]]` -/
def P9241379075971518345.Spec : Prop :=
  ∀ n, P9241379075971518345.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P15729050711318748354

`∑[(n+1)*A334657(n+1)]`
-/

namespace A336277.P15729050711318748354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P15729050711318748354

namespace A336277

/-- `∑[(n+1)*A334657(n+1)]` -/
def P15729050711318748354.Spec : Prop :=
  ∀ n, P15729050711318748354.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P17586536202542196735

`∑[A334660(n+1)/(n+1)]`
-/

namespace A336277.P17586536202542196735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334660 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P17586536202542196735

namespace A336277

/-- `∑[A334660(n+1)/(n+1)]` -/
def P17586536202542196735.Spec : Prop :=
  ∀ n, P17586536202542196735.a n = (A336277 (n + 1) : ℚ)

end A336277

/-! ## A336277.P18126581262273879732

`∑[(n+1)^3*A008683(n+1)]`
-/

namespace A336277.P18126581262273879732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P18126581262273879732

namespace A336277

/-- `∑[(n+1)^3*A008683(n+1)]` -/
def P18126581262273879732.Spec : Prop :=
  ∀ n, P18126581262273879732.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P362223981903173966

`∑[A008683(n+1)*∑[A003215(n)]]`
-/

namespace A336277.P362223981903173966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P362223981903173966

namespace A336277

/-- `∑[A008683(n+1)*∑[A003215(n)]]` -/
def P362223981903173966.Spec : Prop :=
  ∀ n, P362223981903173966.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P3950266446399459340

`∑[A008683(n+1)*A000578(n+1)]`
-/

namespace A336277.P3950266446399459340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P3950266446399459340

namespace A336277

/-- `∑[A008683(n+1)*A000578(n+1)]` -/
def P3950266446399459340.Spec : Prop :=
  ∀ n, P3950266446399459340.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P4320266833128527703

`∑[A008683(n+1)*A053149(n+1)]`
-/

namespace A336277.P4320266833128527703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A053149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P4320266833128527703

namespace A336277

/-- `∑[A008683(n+1)*A053149(n+1)]` -/
def P4320266833128527703.Spec : Prop :=
  ∀ n, P4320266833128527703.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P12543968903792041169

`∑[A008683(n+1)*A056555(n+1)]`
-/

namespace A336277.P12543968903792041169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A056555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P12543968903792041169

namespace A336277

/-- `∑[A008683(n+1)*A056555(n+1)]` -/
def P12543968903792041169.Spec : Prop :=
  ∀ n, P12543968903792041169.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P2086087262172015245

`∑[A000026(n+1)²*A055615(n+1)]`
-/

namespace A336277.P2086087262172015245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1) ^ 2 * A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P2086087262172015245

namespace A336277

/-- `∑[A000026(n+1)²*A055615(n+1)]` -/
def P2086087262172015245.Spec : Prop :=
  ∀ n, P2086087262172015245.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P1770353175992297608

`∑[A008683(n+1)*Δ[A000537(n)]]`
-/

namespace A336277.P1770353175992297608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P1770353175992297608

namespace A336277

/-- `∑[A008683(n+1)*Δ[A000537(n)]]` -/
def P1770353175992297608.Spec : Prop :=
  ∀ n, P1770353175992297608.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P6358815368804375798

`∑[A328729((n+1)²)^3]`
-/

namespace A336277.P6358815368804375798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328729 ((n + 1) ^ 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P6358815368804375798

namespace A336277

/-- `∑[A328729((n+1)²)^3]` -/
def P6358815368804375798.Spec : Prop :=
  ∀ n, P6358815368804375798.a n = A336277 (n + 1)

end A336277

/-! ## A336277.P11011467942228386780

`∑[A008683(n+1)*A064549(A064549(n+1))]`
-/

namespace A336277.P11011467942228386780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A064549 (A064549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336277.P11011467942228386780

namespace A336277

/-- `∑[A008683(n+1)*A064549(A064549(n+1))]` -/
def P11011467942228386780.Spec : Prop :=
  ∀ n, P11011467942228386780.a n = A336277 (n + 1)

end A336277

/-!
# A336278: a(n) = Sum_{k=1..n} mu(k)*k^4.

The programs for A336278, the canonical program `A336278.P11475677679489198694` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336278 has offset 1).

The definition of A336278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336278.P11475677679489198694

`∑[A334660(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336278

/-- `∑[A334660(n+1)]` -/
def P11475677679489198694.Spec : Prop :=
  ∀ n, P11475677679489198694.a n = A336278 (n + 1)

theorem P11475677679489198694.correct : P11475677679489198694.Spec := by
  intro n
  simp only [A336278, Nat.add_sub_cancel]

end A336278

/-! ## A336278.P12633066975371070277

`∑[∑{d}[n+1, A053826(#)]]`
-/

namespace A336278.P12633066975371070277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A053826 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336278.P12633066975371070277

namespace A336278

/-- `∑[∑{d}[n+1, A053826(#)]]` -/
def P12633066975371070277.Spec : Prop :=
  ∀ n, P12633066975371070277.a n = A336278 (n + 1)

end A336278

/-! ## A336278.P17378898679811280847

`∑[(n+1)*A334659(n+1)]`
-/

namespace A336278.P17378898679811280847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336278.P17378898679811280847

namespace A336278

/-- `∑[(n+1)*A334659(n+1)]` -/
def P17378898679811280847.Spec : Prop :=
  ∀ n, P17378898679811280847.a n = A336278 (n + 1)

end A336278

/-! ## A336278.P12939650353633205617

`∑[(n+1)²*A334657(n+1)]`
-/

namespace A336278.P12939650353633205617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A334657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336278.P12939650353633205617

namespace A336278

/-- `∑[(n+1)²*A334657(n+1)]` -/
def P12939650353633205617.Spec : Prop :=
  ∀ n, P12939650353633205617.a n = A336278 (n + 1)

end A336278

/-! ## A336278.P6332132488695360232

`∑[(n+1)^4*A008683(n+1)]`
-/

namespace A336278.P6332132488695360232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336278.P6332132488695360232

namespace A336278

/-- `∑[(n+1)^4*A008683(n+1)]` -/
def P6332132488695360232.Spec : Prop :=
  ∀ n, P6332132488695360232.a n = A336278 (n + 1)

end A336278

/-! ## A336278.P1073981921773381222

`∑[A055615(n+1)^5/(n+1)]`
-/

namespace A336278.P1073981921773381222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) ^ 5 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336278.P1073981921773381222

namespace A336278

/-- `∑[A055615(n+1)^5/(n+1)]` -/
def P1073981921773381222.Spec : Prop :=
  ∀ n, P1073981921773381222.a n = (A336278 (n + 1) : ℚ)

end A336278

/-! ## A336278.P8376746673463098311

`∑[A008683(n+1)*A053167(n+1)]`
-/

namespace A336278.P8376746673463098311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A053167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336278.P8376746673463098311

namespace A336278

/-- `∑[A008683(n+1)*A053167(n+1)]` -/
def P8376746673463098311.Spec : Prop :=
  ∀ n, P8376746673463098311.a n = A336278 (n + 1)

end A336278

/-! ## A336278.P15717518375676047288

`∑[A008683(n+1)*∑[A005917(n+1)]]`
-/

namespace A336278.P15717518375676047288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336278.P15717518375676047288

namespace A336278

/-- `∑[A008683(n+1)*∑[A005917(n+1)]]` -/
def P15717518375676047288.Spec : Prop :=
  ∀ n, P15717518375676047288.a n = A336278 (n + 1)

end A336278

/-!
# A336279: a(n) = Sum_{k=1..n} mu(k)*k^5.

The programs for A336279, the canonical program `A336279.P1082395451436490023` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336279 has offset 1).

The definition of A336279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336279.P1082395451436490023

`∑[A055615(n+1)^5]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336279

/-- `∑[A055615(n+1)^5]` -/
def P1082395451436490023.Spec : Prop :=
  ∀ n, P1082395451436490023.a n = A336279 (n + 1)

theorem P1082395451436490023.correct : P1082395451436490023.Spec := by
  intro n
  simp only [A336279, Nat.add_sub_cancel]

end A336279

/-! ## A336279.P6003791037436428244

`∑[(n+1)*A334660(n+1)]`
-/

namespace A336279.P6003791037436428244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336279.P6003791037436428244

namespace A336279

/-- `∑[(n+1)*A334660(n+1)]` -/
def P6003791037436428244.Spec : Prop :=
  ∀ n, P6003791037436428244.a n = A336279 (n + 1)

end A336279

/-! ## A336279.P12498876808394142851

`∑[(n+1)²*A334659(n+1)]`
-/

namespace A336279.P12498876808394142851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A334659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336279.P12498876808394142851

namespace A336279

/-- `∑[(n+1)²*A334659(n+1)]` -/
def P12498876808394142851.Spec : Prop :=
  ∀ n, P12498876808394142851.a n = A336279 (n + 1)

end A336279

/-! ## A336279.P16814488320568295733

`∑[(n+1)^5*A008683(n+1)]`
-/

namespace A336279.P16814488320568295733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336279.P16814488320568295733

namespace A336279

/-- `∑[(n+1)^5*A008683(n+1)]` -/
def P16814488320568295733.Spec : Prop :=
  ∀ n, P16814488320568295733.a n = A336279 (n + 1)

end A336279

/-! ## A336279.P12975270423988367391

`∑[A000026(n+1)²²*A055615(n+1)]`
-/

namespace A336279.P12975270423988367391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) ^ 2) ^ 2 * A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336279.P12975270423988367391

namespace A336279

/-- `∑[A000026(n+1)²²*A055615(n+1)]` -/
def P12975270423988367391.Spec : Prop :=
  ∀ n, P12975270423988367391.a n = A336279 (n + 1)

end A336279

/-! ## A336279.P13864168411239027982

`∑[(n+1)*A008683(n+1)*A000583(n+1)]`
-/

namespace A336279.P13864168411239027982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008683 (n + 1) * A000583 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336279.P13864168411239027982

namespace A336279

/-- `∑[(n+1)*A008683(n+1)*A000583(n+1)]` -/
def P13864168411239027982.Spec : Prop :=
  ∀ n, P13864168411239027982.a n = A336279 (n + 1)

end A336279

/-!
# A336280: Number of consecutive primes of the form k*prime(n) + 1, starting with the least such prime A035095(n), that divides the Wendt determinant A048954(prime(n)).

The programs for A336280, there is no canonical definition to state claims against.
-/

/-! ## A336280.P4027068752503938151

`A289628(A000085(n))%7`
-/

namespace A336280.P4027068752503938151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289628 (A000085 n).toNat) 7

end

end A336280.P4027068752503938151

/-! ## A336280.P14064208034788596212

`A001222(A033491(n*a(n-1)*a(n-1)))` with `a(0)=1`
-/

namespace A336280.P14064208034788596212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (A033491 ((n : ℤ) * a (n - 1) * a (n - 1)).toNat).toNat

end

end A336280.P14064208034788596212

/-! ## A336280.P12221006834185510792

`A187279(or(A187273(n), A225456(n)))`
-/

namespace A336280.P12221006834185510792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187279 (Int.lor (A187273 n) (A225456 n)).toNat

end

end A336280.P12221006834185510792

/-! ## A336280.P16786166497277839890

`A001222(A290996(n+1)+A099612(n))`
-/

namespace A336280.P16786166497277839890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290996 (n + 1) + A099612 n).toNat

end

end A336280.P16786166497277839890

/-! ## A336280.P4142278449233342195

`A240471(A334774(n+1)+A218336(n+1))`
-/

namespace A336280.P4142278449233342195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240471 (A334774 (n + 1) + A218336 (n + 1)).toNat

end

end A336280.P4142278449233342195

/-!
# A336281: Total number of ways of embedding connected graphs with n edges in the square lattice with diagonals allowed.

The programs for A336281, there is no canonical definition to state claims against.
-/

/-! ## A336281.P874451890046735588

`round(A366340(n+3)/3)`
-/

namespace A336281.P874451890046735588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A366340 (n + 3) : ℚ) / 3)

end

end A336281.P874451890046735588

/-!
# A336282: Number of heapable permutations of length n.

The programs for A336282, there is no canonical definition to state claims against.
-/

/-! ## A336282.P4780596889403230753

`A390546(∑[n+1])`
-/

namespace A336282.P4780596889403230753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390546 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336282.P4780596889403230753

/-! ## A336282.P15278327530562912004

`A390377(C(n+3, 2))`
-/

namespace A336282.P15278327530562912004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390377 (Nat.choose (n + 3) 2)

end

end A336282.P15278327530562912004

/-! ## A336282.P16415772997958013195

`A390377(A025731(n+1))`
-/

namespace A336282.P16415772997958013195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390377 (A025731 (n + 1)).toNat

end

end A336282.P16415772997958013195

/-! ## A336282.P18311706277596401953

`A390377(A025738(n+1))`
-/

namespace A336282.P18311706277596401953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390377 (A025738 (n + 1)).toNat

end

end A336282.P18311706277596401953

/-! ## A336282.P9956717367827429520

`A390377(A025747(n+1))`
-/

namespace A336282.P9956717367827429520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390377 (A025747 (n + 1)).toNat

end

end A336282.P9956717367827429520

/-!
# A336283: Row sums of A192933.

The programs for A336283, there is no canonical definition to state claims against.
-/

/-! ## A336283.P8980112195870441586

`Δ[A131577(n)*A155069(n)]`
-/

namespace A336283.P8980112195870441586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A155069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336283.P8980112195870441586

/-! ## A336283.P7172611445530989664

`Δ[Δ[A011782(n)]*A155069(n)]`
-/

namespace A336283.P7172611445530989664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A155069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336283.P7172611445530989664

/-! ## A336283.P3511769760539207850

`Δ[A049600(A000096(n))*A155069(n)]`
-/

namespace A336283.P3511769760539207850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000096 n).toNat * A155069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336283.P3511769760539207850

/-! ## A336283.P4576367601822546782

`Δ[A106579(A000096(n))*A131577(n)]`
-/

namespace A336283.P4576367601822546782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A000096 n).toNat * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336283.P4576367601822546782

/-! ## A336283.P6659348702037662411

`A011782(n)*A132372(A000124(n+1))`
-/

namespace A336283.P6659348702037662411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A132372 (A000124 (n + 1)).toNat

end

end A336283.P6659348702037662411

/-! ## A336283.P10345206354835621365

`(A238113(n)+A238112(n))*A011782(n)`
-/

namespace A336283.P10345206354835621365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238113 n + A238112 n) * A011782 n

end

end A336283.P10345206354835621365

/-!
# A336286: The hafnian of a symmetric Toeplitz matrix of order 2*n, n>=2 with the first row (0,1,2,...,2,0); a(0)=a(1)=1.

The programs for A336286, there is no canonical definition to state claims against.
-/

/-! ## A336286.P3298120292969283091

`A233929(5*a(n-1)+2)` with `a(0)=1, a(1)=1`
-/

namespace A336286.P3298120292969283091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A233929 (5 * a (n - 1) + 2).toNat

end

end A336286.P3298120292969283091

/-!
# A336288: Numbers of squares formed by this procedure on n-th step: Step 1, draw a unit square. Step n, draw a unit square with center in every intersection of lines of the figure in step n-1.

The programs for A336288, the canonical program `A336288.P12097761459921669886` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336288 has offset 1).

The definition of A336288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336288.P1457983869021043142

`ogf((1+6x+9x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A336288.P1457983869021043142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 9] [1, -4, 6, -4, 1] n

end

end A336288.P1457983869021043142

namespace A336288

/-- `ogf((1+6x+9x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1457983869021043142.Spec : Prop :=
  ∀ n, P1457983869021043142.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P11864788082632070183

`(8*(n+1)^3-12*(n+1)²+7*(n+1))/3`
-/

namespace A336288.P11864788082632070183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * (n + 1) ^ 3 : ℤ) - (12 * (n + 1) ^ 2 : ℤ) + (7 * (n + 1) : ℤ) : ℚ) / 3

end

end A336288.P11864788082632070183

namespace A336288

/-- `(8*(n+1)^3-12*(n+1)²+7*(n+1))/3` -/
def P11864788082632070183.Spec : Prop :=
  ∀ n, P11864788082632070183.a n = (A336288 (n + 1) : ℚ)

theorem P11864788082632070183.correct : P11864788082632070183.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A336288, Nat.add_sub_cancel, A336288.P11864788082632070183.a, A336288.P12097761459921669886.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A336288, Nat.add_sub_cancel, A336288.P11864788082632070183.a, A336288.P12097761459921669886.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A336288

/-! ## A336288.P12097761459921669886

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=43, a(3)=116`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336288

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12097761459921669886.Spec : Prop :=
  ∀ n, P12097761459921669886.a n = A336288 (n + 1)

theorem P12097761459921669886.correct : P12097761459921669886.Spec := by
  intro n
  simp only [A336288, Nat.add_sub_cancel]

end A336288

/-! ## A336288.P15885138360025545934

`or(∑[or(1, 8*n²)], char[2])`
-/

namespace A336288.P15885138360025545934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f2 j = n then 1 else 0)

end

end A336288.P15885138360025545934

namespace A336288

/-- `or(∑[or(1, 8*n²)], char[2])` -/
def P15885138360025545934.Spec : Prop :=
  ∀ n, (P15885138360025545934.a n : ℤ) = A336288 (n + 1)

end A336288

/-! ## A336288.P14985498977156934981

`∑[ceil(2/acot(2*n)²)]-n`
-/

namespace A336288.P14985498977156934981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A336288.P14985498977156934981

namespace A336288

/-- `∑[ceil(2/acot(2*n)²)]-n` -/
def P14985498977156934981.Spec : Prop :=
  ∀ n, P14985498977156934981.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P9908189089341027003

`8*n²+a(n-1)+1` with `a(0)=1`
-/

namespace A336288.P9908189089341027003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * n ^ 2 + (a (n - 1) + 1)

end

end A336288.P9908189089341027003

namespace A336288

/-- `8*n²+a(n-1)+1` -/
def P9908189089341027003.Spec : Prop :=
  ∀ n, (P9908189089341027003.a n : ℤ) = A336288 (n + 1)

end A336288

/-! ## A336288.P12321600811678167340

`2*C(2*(n+1), 3)+1+n`
-/

namespace A336288.P12321600811678167340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * (n + 1)) 3 + 1 + n

end

end A336288.P12321600811678167340

namespace A336288

/-- `2*C(2*(n+1), 3)+1+n` -/
def P12321600811678167340.Spec : Prop :=
  ∀ n, (P12321600811678167340.a n : ℤ) = A336288 (n + 1)

end A336288

/-! ## A336288.P11850751858050708232

`∑[A081585(n)]`
-/

namespace A336288.P11850751858050708232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336288.P11850751858050708232

namespace A336288

/-- `∑[A081585(n)]` -/
def P11850751858050708232.Spec : Prop :=
  ∀ n, P11850751858050708232.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P2077394994914288145

`A057813(n)-n`
-/

namespace A336288.P2077394994914288145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - (n : ℤ)

end

end A336288.P2077394994914288145

namespace A336288

/-- `A057813(n)-n` -/
def P2077394994914288145.Spec : Prop :=
  ∀ n, P2077394994914288145.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P14320675613467190254

`∑[A139098(n)+1]`
-/

namespace A336288.P14320675613467190254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336288.P14320675613467190254

namespace A336288

/-- `∑[A139098(n)+1]` -/
def P14320675613467190254.Spec : Prop :=
  ∀ n, P14320675613467190254.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P14744650973285565140

`∑[A108100(n)-1]`
-/

namespace A336288.P14744650973285565140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108100 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336288.P14744650973285565140

namespace A336288

/-- `∑[A108100(n)-1]` -/
def P14744650973285565140.Spec : Prop :=
  ∀ n, P14744650973285565140.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P16321589769159608244

`∑[A275543(2*n)]`
-/

namespace A336288.P16321589769159608244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336288.P16321589769159608244

namespace A336288

/-- `∑[A275543(2*n)]` -/
def P16321589769159608244.Spec : Prop :=
  ∀ n, P16321589769159608244.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P2579608345774219095

`∑[A008527(n)]-n`
-/

namespace A336288.P2579608345774219095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A336288.P2579608345774219095

namespace A336288

/-- `∑[A008527(n)]-n` -/
def P2579608345774219095.Spec : Prop :=
  ∀ n, P2579608345774219095.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P16999303026128405305

`Δ[A072819(n)]+n+1`
-/

namespace A336288.P16999303026128405305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A336288.P16999303026128405305

namespace A336288

/-- `Δ[A072819(n)]+n+1` -/
def P16999303026128405305.Spec : Prop :=
  ∀ n, P16999303026128405305.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P3837665610123538893

`2*A002492(n)+n+1`
-/

namespace A336288.P3837665610123538893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002492 n + (n + 1 : ℤ)

end

end A336288.P3837665610123538893

namespace A336288

/-- `2*A002492(n)+n+1` -/
def P3837665610123538893.Spec : Prop :=
  ∀ n, P3837665610123538893.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P12315751391780847092

`2*A050533(n)+1-n`
-/

namespace A336288.P12315751391780847092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050533 n + 1 - (n : ℤ)

end

end A336288.P12315751391780847092

namespace A336288

/-- `2*A050533(n)+1-n` -/
def P12315751391780847092.Spec : Prop :=
  ∀ n, P12315751391780847092.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P1142623872016474262

`∑[A014635(n)]+(n+1)²`
-/

namespace A336288.P1142623872016474262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A336288.P1142623872016474262

namespace A336288

/-- `∑[A014635(n)]+(n+1)²` -/
def P1142623872016474262.Spec : Prop :=
  ∀ n, P1142623872016474262.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P13891611758587970257

`A050409(n)+∑[(n+1)²]`
-/

namespace A336288.P13891611758587970257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A336288.P13891611758587970257

namespace A336288

/-- `A050409(n)+∑[(n+1)²]` -/
def P13891611758587970257.Spec : Prop :=
  ∀ n, P13891611758587970257.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P6304297352496294121

`∑[8*A000290(n)]+1+n`
-/

namespace A336288.P6304297352496294121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A336288.P6304297352496294121

namespace A336288

/-- `∑[8*A000290(n)]+1+n` -/
def P6304297352496294121.Spec : Prop :=
  ∀ n, P6304297352496294121.a n = A336288 (n + 1)

end A336288

/-! ## A336288.P418701055355548542

`A007584(n)+A005920(n)`
-/

namespace A336288.P418701055355548542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 n + A005920 n

end

end A336288.P418701055355548542

namespace A336288

/-- `A007584(n)+A005920(n)` -/
def P418701055355548542.Spec : Prop :=
  ∀ n, P418701055355548542.a n = A336288 (n + 1)

end A336288

/-!
# A336289: a(0) = 1; a(n) = n! * Sum_{k=1..n} binomial(n-1,k-1) * (k-1)! * H(k) * a(n-k) / (n-k)!, where H(k) is the k-th harmonic number.

The programs for A336289, there is no canonical definition to state claims against.
-/

/-! ## A336289.P12233577157894352650

`A038129(∑[floor(C(n²+1, n)/3)]+1)`
-/

namespace A336289.P12233577157894352650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n ^ 2 + 1) n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038129 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A336289.P12233577157894352650

/-!
# A336290: a(0) = 1; a(n) = n! * Sum_{k=1..n} binomial(n-1,k-1) * H(k) * a(n-k) / (n-k)!, where H(k) is the k-th harmonic number.

The programs for A336290, there is no canonical definition to state claims against.
-/

/-! ## A336290.P5792875702450523071

`A325810(∑{d}[A006902(n), #])`
-/

namespace A336290.P5792875702450523071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325810 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A336290.P5792875702450523071

/-!
# A336291: a(n) = (n!)^2 * Sum_{k=1..n} 1 / (k * ((n-k)!)^2).

The programs for A336291, the canonical program `A336291.P8150459313096035197` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336291 has offset 0).

The definition of A336291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336291.P8150459313096035197

`n!²*∑{#}[n-1, 1/((#+1)*(n-(#+1))!²)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336291

/-- `n!²*∑{#}[n-1, 1/((#+1)*(n-(#+1))!²)]` -/
def P8150459313096035197.Spec : Prop :=
  ∀ n, P8150459313096035197.a n = (A336291 n : ℚ)

end A336291

/-! ## A336291.P15120779244795868995

`∑{#}[n-1, (n!/#!)²/(n-#)]`
-/

namespace A336291.P15120779244795868995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((Nat.factorial n : ℚ) / (Nat.factorial k : ℚ)) ^ 2 / ((n : ℤ) - (k : ℤ) : ℚ)

end

end A336291.P15120779244795868995

namespace A336291

/-- `∑{#}[n-1, (n!/#!)²/(n-#)]` -/
def P15120779244795868995.Spec : Prop :=
  ∀ n, P15120779244795868995.a n = (A336291 n : ℚ)

end A336291

/-!
# A336292: a(n) = (n!)^2 * Sum_{k=1..n} (-1)^(n-k) / (k * ((n-k)!)^2).

The programs for A336292, the canonical program `A336292.P1655315823919211996` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336292 has offset 0).

The definition of A336292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336292.P1655315823919211996

`n!²*∑{#}[n-1, (-1)^(n-(#+1))/((#+1)*(n-(#+1))!²)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336292

/-- `n!²*∑{#}[n-1, (-1)^(n-(#+1))/((#+1)*(n-(#+1))!²)]` -/
def P1655315823919211996.Spec : Prop :=
  ∀ n, P1655315823919211996.a n = (A336292 n : ℚ)

end A336292

/-! ## A336292.P3932828746724508493

`∑[A275485(A322380(n))]-A053411(n)`
-/

namespace A336292.P3932828746724508493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275485 (A322380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053411 n

end

end A336292.P3932828746724508493

namespace A336292

/-- `∑[A275485(A322380(n))]-A053411(n)` -/
def P3932828746724508493.Spec : Prop :=
  ∀ n, P3932828746724508493.a n = A336292 n

end A336292

/-!
# A336293: a(n) = Sum_{k=0..n} binomial(n,k)^2 * binomial(2*k,k) * (n-k)!.

The programs for A336293, the canonical program `A336293.P12151352160711550495` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336293 has offset 0).

The definition of A336293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)²*C(2*#, #)*(n-#)!]` (program `A336293.P12151352160711550495`, by `A336293.P12151352160711550495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336293.P12151352160711550495

`∑{#}[n, C(n, #)²*C(2*#, #)*(n-#)!]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A336293

/-- `∑{#}[n, C(n, #)²*C(2*#, #)*(n-#)!]` -/
def P12151352160711550495.Spec : Prop :=
  ∀ n, (P12151352160711550495.a n : ℤ) = A336293 n

theorem P12151352160711550495.correct : P12151352160711550495.Spec := by
  intro n
  simp only [A336293]

end A336293

/-! ## A336293.P9310872227196175587

`A082580(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A336293.P9310872227196175587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082580 n + (n : ℤ) * a (n - 1)

end

end A336293.P9310872227196175587

namespace A336293

/-- `A082580(n)+n*a(n-1)` -/
def P9310872227196175587.Spec : Prop :=
  ∀ n, P9310872227196175587.a n = A336293 n

end A336293

/-!
# A336294: a(n) = (n!)^n * [x^n] Product_{k>=1} (1 + x^k/(k!)^n).

The programs for A336294, there is no canonical definition to state claims against.
-/

/-! ## A336294.P2312131399816742208

`n^n^a(n-2)+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A336294.P2312131399816742208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  n ^ n ^ a (n - 2) + 1

end

end A336294.P2312131399816742208

/-!
# A336296: The least prime p such that equation x = p*sopf(x) (where sopf(x) is the sum of distinct prime factors of x) has exactly n solutions in positive integers.

The programs for A336296, there is no canonical definition to state claims against.
-/

/-! ## A336296.P11467993771735871911

`A213892(a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A336296.P11467993771735871911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A213892 (a (n - 2)).toNat

end

end A336296.P11467993771735871911

/-! ## A336296.P2874550693365815659

`p?[A262745(n)+a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A336296.P2874550693365815659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A262745 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336296.P2874550693365815659

/-!
# A336298: Greatest prime < prime(n)/2.

The programs for A336298, there is no canonical definition to state claims against.
-/

/-! ## A336298.P3989766231873424316

`A139421(p?[2*n+5]-1)`
-/

namespace A336298.P3989766231873424316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A336298.P3989766231873424316

/-! ## A336298.P2153789030124138342

`A055377(A066047(n+1))`
-/

namespace A336298.P2153789030124138342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A066047 (n + 1)).toNat

end

end A336298.P2153789030124138342

/-! ## A336298.P6640363699996277421

`A055377(A215848(n+1))`
-/

namespace A336298.P6640363699996277421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A215848 (n + 1)).toNat

end

end A336298.P6640363699996277421

/-! ## A336298.P13264082706350682150

`A055377(A240710(n+1))`
-/

namespace A336298.P13264082706350682150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A240710 (n + 1)).toNat

end

end A336298.P13264082706350682150

/-! ## A336298.P8166449332316776711

`A060308(A024698(n+2))`
-/

namespace A336298.P8166449332316776711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A024698 (n + 2)).toNat

end

end A336298.P8166449332316776711

/-! ## A336298.P9514022279478819644

`A055377(A045344(n+2))`
-/

namespace A336298.P9514022279478819644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A045344 (n + 2)).toNat

end

end A336298.P9514022279478819644

/-! ## A336298.P904905332764050811

`A055377(A065091(n+2))`
-/

namespace A336298.P904905332764050811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A065091 (n + 2)).toNat

end

end A336298.P904905332764050811

/-! ## A336298.P16527270772914276011

`A136548(A006254(n+2))`
-/

namespace A336298.P16527270772914276011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A006254 (n + 2)).toNat

end

end A336298.P16527270772914276011

/-! ## A336298.P10701104472092840744

`A055377(A114331(n+2))`
-/

namespace A336298.P10701104472092840744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A114331 (n + 2)).toNat

end

end A336298.P10701104472092840744

/-!
# A336299: (Least prime > prime(n)/2) - (greatest prime < prime(n)/2).

The programs for A336299, there is no canonical definition to state claims against.
-/

/-! ## A336299.P17939409519247199029

`A335185(A215848(n+1))`
-/

namespace A336299.P17939409519247199029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (A215848 (n + 1)).toNat

end

end A336299.P17939409519247199029

/-! ## A336299.P6502175425028183305

`A335185(A240710(n+1))`
-/

namespace A336299.P6502175425028183305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (A240710 (n + 1)).toNat

end

end A336299.P6502175425028183305

/-! ## A336299.P1213786861804173708

`A166597(A005097(n+2))`
-/

namespace A336299.P1213786861804173708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A005097 (n + 2)).toNat

end

end A336299.P1213786861804173708

/-! ## A336299.P1989535931251238829

`A335185(A045344(n+2))`
-/

namespace A336299.P1989535931251238829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (A045344 (n + 2)).toNat

end

end A336299.P1989535931251238829

/-! ## A336299.P17917879647979733820

`A335185(A065091(n+2))`
-/

namespace A336299.P17917879647979733820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (A065091 (n + 2)).toNat

end

end A336299.P17917879647979733820

/-! ## A336299.P1465062074157829373

`A335185(A140475(n+2))`
-/

namespace A336299.P1465062074157829373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (A140475 (n + 2)).toNat

end

end A336299.P1465062074157829373

/-! ## A336299.P18102887097310775808

`A001223(A055930(n+3))`
-/

namespace A336299.P18102887097310775808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A055930 (n + 3)).toNat

end

end A336299.P18102887097310775808

/-! ## A336299.P16961804159917682891

`A001223(A079952(n+3))`
-/

namespace A336299.P16961804159917682891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A079952 (n + 3)).toNat

end

end A336299.P16961804159917682891

/-! ## A336299.P17967750702962396272

`A049711(A039734(n+3))`
-/

namespace A336299.P17967750702962396272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A039734 (n + 3)).toNat

end

end A336299.P17967750702962396272

/-! ## A336299.P17971818485447661722

`A054541(A039733(n+3))`
-/

namespace A336299.P17971818485447661722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A039733 (n + 3)).toNat

end

end A336299.P17971818485447661722

