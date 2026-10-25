import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199700: Number of -4..4 arrays x(0..n-1) of n elements with zero sum and no two neighbors equal.

The programs for A199700, there is no canonical definition to state claims against.
-/

/-! ## A199700.P16822029070496151802

`A199704(A027379(n+2))`
-/

namespace A199700.P16822029070496151802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A027379 (n + 2)).toNat

end

end A199700.P16822029070496151802

/-! ## A199700.P16703564157837439413

`A199704(A055998(n+2))`
-/

namespace A199700.P16703564157837439413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A055998 (n + 2)).toNat

end

end A199700.P16703564157837439413

/-! ## A199700.P9770055785065945306

`A199704(A052905(n+1)+2)`
-/

namespace A199700.P9770055785065945306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A052905 (n + 1) + 2).toNat

end

end A199700.P9770055785065945306

/-! ## A199700.P11673547761114517211

`A199704(A000096(n+3)-2)`
-/

namespace A199700.P11673547761114517211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000096 (n + 3) - 2).toNat

end

end A199700.P11673547761114517211

/-! ## A199700.P9638087497669434542

`A199704(A167614(n+3)-6)`
-/

namespace A199700.P9638087497669434542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A167614 (n + 3) - 6).toNat

end

end A199700.P9638087497669434542

/-!
# A199701: Number of -5..5 arrays x(0..n-1) of n elements with zero sum and no two neighbors equal.

The programs for A199701, there is no canonical definition to state claims against.
-/

/-! ## A199701.P11727719392001632140

`A199704(∑[n+5]+6)`
-/

namespace A199701.P11727719392001632140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A199701.P11727719392001632140

/-! ## A199701.P5649266849730394129

`record[A199704(n+11)/A199704(n+16)]`
-/

namespace A199701.P5649266849730394129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199704 (n + 11) : ℚ) / (A199704 (n + 16) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199701.P5649266849730394129

/-! ## A199701.P7034612068157137211

`gcd(n, n+1)*A199704(Δ[A023545(n+1)])`
-/

namespace A199701.P7034612068157137211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A199704 (f1 (n + 1) - f1 n).toNat

end

end A199701.P7034612068157137211

/-! ## A199701.P6403526831942091393

`A199704(Δ[A023545(n+1)])^(1-A000007(n))`
-/

namespace A199701.P6403526831942091393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199704 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A199701.P6403526831942091393

/-! ## A199701.P10098932458818422552

`A199704(Δ[A023545(n+1)])+A008683(16*(n+1))`
-/

namespace A199701.P10098932458818422552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (f1 (n + 1) - f1 n).toNat + A008683 (16 * (n + 1))

end

end A199701.P10098932458818422552

/-!
# A199702: Number of -6..6 arrays x(0..n-1) of n elements with zero sum and no two neighbors equal.

The programs for A199702, there is no canonical definition to state claims against.
-/

/-! ## A199702.P10863666026706086663

`A199704(A052905(n+3))`
-/

namespace A199702.P10863666026706086663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A052905 (n + 3)).toNat

end

end A199702.P10863666026706086663

/-! ## A199702.P3382565607621981369

`A199704(A000124(n+6)-6)`
-/

namespace A199702.P3382565607621981369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000124 (n + 6) - 6).toNat

end

end A199702.P3382565607621981369

/-! ## A199702.P5904641509649026482

`A199704(Δ[A023545(n+2)]-1)`
-/

namespace A199702.P5904641509649026482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (f1 (n + 1) - f1 n - 1).toNat

end

end A199702.P5904641509649026482

/-! ## A199702.P15560419173212950012

`A199704(A000096(n+4)+n+2)`
-/

namespace A199702.P15560419173212950012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A199702.P15560419173212950012

/-! ## A199702.P9928629108069540599

`A199704(Δ[n²]+A155212(n)+13)`
-/

namespace A199702.P9928629108069540599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A155212 n + 13)).toNat

end

end A199702.P9928629108069540599

/-!
# A199703: Number of -7..7 arrays x(0..n-1) of n elements with zero sum and no two neighbors equal.

The programs for A199703, there is no canonical definition to state claims against.
-/

/-! ## A199703.P12063384959885848281

`record[A199704(∑[n+4])]`
-/

namespace A199703.P12063384959885848281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199703.P12063384959885848281

/-! ## A199703.P13795920517934543257

`A199704(A055999(n+4))`
-/

namespace A199703.P13795920517934543257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A055999 (n + 4)).toNat

end

end A199703.P13795920517934543257

/-! ## A199703.P10686225541969324316

`A199704(A000217(n+7)-6)`
-/

namespace A199703.P10686225541969324316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000217 (n + 7) - 6).toNat

end

end A199703.P10686225541969324316

/-! ## A199703.P14254147552394141930

`A199704(A000124(n+7)-7)`
-/

namespace A199703.P14254147552394141930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000124 (n + 7) - 7).toNat

end

end A199703.P14254147552394141930

/-! ## A199703.P5194858764433045468

`A199704(eq[6, A025581(n)]+1)`
-/

namespace A199703.P5194858764433045468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199703.P5194858764433045468

/-!
# A199704: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with zero sum and no two neighbors equal.

The programs for A199704, there is no canonical definition to state claims against.
-/

/-! ## A199704.P6291746713568510441

`A024155(A153732(n))+A013609(n)`
-/

namespace A199704.P6291746713568510441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A153732 n).toNat + A013609 n

end

end A199704.P6291746713568510441

/-! ## A199704.P15309122938901394428

`or(A013609(n), A330167(A154537(n)))`
-/

namespace A199704.P15309122938901394428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013609 n) (A330167 (A154537 n).toNat)

end

end A199704.P15309122938901394428

/-! ## A199704.P3258065248807143924

`A218876(A101049(n+1))+A013609(n)`
-/

namespace A199704.P3258065248807143924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218876 (A101049 (n + 1)).toNat + A013609 n

end

end A199704.P3258065248807143924

/-!
# A199705: Number of -n..n arrays x(0..2) of 3 elements with zero sum and no two neighbors equal.

The programs for A199705, the canonical program `A199705.P4478946208255549817` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199705 has offset 1).

The definition of A199705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199705.P4478946208255549817

`∑[xor(2, 6*n+4)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199705

/-- `∑[xor(2, 6*n+4)]` -/
def P4478946208255549817.Spec : Prop :=
  ∀ n, (P4478946208255549817.a n : ℤ) = A199705 (n + 1)

theorem P4478946208255549817.correct : P4478946208255549817.Spec := by
  intro n
  simp only [A199705, Nat.add_sub_cancel]

end A199705

/-! ## A199705.P14476674884810282034

`∑[a(n-2)+12]` with `a(0)=6, a(1)=8`
-/

namespace A199705.P14476674884810282034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 8] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P14476674884810282034

namespace A199705

/-- `∑[a(n-2)+12]` -/
def P14476674884810282034.Spec : Prop :=
  ∀ n, (P14476674884810282034.a n : ℤ) = A199705 (n + 1)

end A199705

/-! ## A199705.P4882905674430248955

`∑[2-xor(6*n, -4)]`
-/

namespace A199705.P4882905674430248955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor (6 * n : ℤ) (-4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P4882905674430248955

namespace A199705

/-- `∑[2-xor(6*n, -4)]` -/
def P4882905674430248955.Spec : Prop :=
  ∀ n, P4882905674430248955.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P15756215580946775187

`record[or(5, n)]+Δ[n^3]`
-/

namespace A199705.P15756215580946775187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A199705.P15756215580946775187

namespace A199705

/-- `record[or(5, n)]+Δ[n^3]` -/
def P15756215580946775187.Spec : Prop :=
  ∀ n, P15756215580946775187.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P5096648062992499019

`record[xor(5, n)]+Δ[n^3]`
-/

namespace A199705.P5096648062992499019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A199705.P5096648062992499019

namespace A199705

/-- `record[xor(5, n)]+Δ[n^3]` -/
def P5096648062992499019.Spec : Prop :=
  ∀ n, P5096648062992499019.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P7320014919367087709

`∑[∑[12-a(n-1)]]` with `a(0)=6, a(1)=2`
-/

namespace A199705.P7320014919367087709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 2] fun n f2 =>
  12 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P7320014919367087709

namespace A199705

/-- `∑[∑[12-a(n-1)]]` -/
def P7320014919367087709.Spec : Prop :=
  ∀ n, P7320014919367087709.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P1854595527287227823

`∑[2*(or(3, 2*n)+n)]`
-/

namespace A199705.P1854595527287227823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lor 3 (2 * n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P1854595527287227823

namespace A199705

/-- `∑[2*(or(3, 2*n)+n)]` -/
def P1854595527287227823.Spec : Prop :=
  ∀ n, (P1854595527287227823.a n : ℤ) = A199705 (n + 1)

end A199705

/-! ## A199705.P6208644154382068962

`∑[∑[∑[ogf((6+2x+4x^2)/(1+x))]]]`
-/

namespace A199705.P6208644154382068962
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2, 4] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P6208644154382068962

namespace A199705

/-- `∑[∑[∑[ogf((6+2x+4x^2)/(1+x))]]]` -/
def P6208644154382068962.Spec : Prop :=
  ∀ n, P6208644154382068962.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P2723480563962223988

`ogf((6+2x+4x^2)/(1-2x+2x^3-x^4))`
-/

namespace A199705.P2723480563962223988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2, 4] [1, -2, 0, 2, -1] n

end

end A199705.P2723480563962223988

namespace A199705

/-- `ogf((6+2x+4x^2)/(1-2x+2x^3-x^4))` -/
def P2723480563962223988.Spec : Prop :=
  ∀ n, P2723480563962223988.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P5306094317560581699

`xor(1, n+2)+3*(n+1)²`
-/

namespace A199705.P5306094317560581699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2) + 3 * (n + 1) ^ 2

end

end A199705.P5306094317560581699

namespace A199705

/-- `xor(1, n+2)+3*(n+1)²` -/
def P5306094317560581699.Spec : Prop :=
  ∀ n, (P5306094317560581699.a n : ℤ) = A199705 (n + 1)

end A199705

/-! ## A199705.P7598051861609640608

`or(2, (3*n+2)*(n+2))-n`
-/

namespace A199705.P7598051861609640608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 ((3 * n + 2) * (n + 2)) : ℤ) - (n : ℤ)

end

end A199705.P7598051861609640608

namespace A199705

/-- `or(2, (3*n+2)*(n+2))-n` -/
def P7598051861609640608.Spec : Prop :=
  ∀ n, P7598051861609640608.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P3715135316155660306

`Δ[or(1, (n²+1+n)*(n+1))]`
-/

namespace A199705.P3715135316155660306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n ^ 2 + 1 + n) * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199705.P3715135316155660306

namespace A199705

/-- `Δ[or(1, (n²+1+n)*(n+1))]` -/
def P3715135316155660306.Spec : Prop :=
  ∀ n, P3715135316155660306.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P380184952941034380

`2*(∑[(-1)^n+n+1]+(n+1)²)`
-/

namespace A199705.P380184952941034380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ))

end

end A199705.P380184952941034380

namespace A199705

/-- `2*(∑[(-1)^n+n+1]+(n+1)²)` -/
def P380184952941034380.Spec : Prop :=
  ∀ n, P380184952941034380.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P11826333350904499104

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=6, a(1)=14, a(2)=32, a(3)=52`
-/

namespace A199705.P11826333350904499104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 14, 32, 52] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A199705.P11826333350904499104

namespace A199705

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P11826333350904499104.Spec : Prop :=
  ∀ n, P11826333350904499104.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P9060312002597642145

`∑[∑[A040024(n)]+1]`
-/

namespace A199705.P9060312002597642145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P9060312002597642145

namespace A199705

/-- `∑[∑[A040024(n)]+1]` -/
def P9060312002597642145.Spec : Prop :=
  ∀ n, P9060312002597642145.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P14576894637014656736

`∑[A092242(n+1)+1]`
-/

namespace A199705.P14576894637014656736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P14576894637014656736

namespace A199705

/-- `∑[A092242(n+1)+1]` -/
def P14576894637014656736.Spec : Prop :=
  ∀ n, P14576894637014656736.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P16415000531285202064

`∑[2*A047230(n+1)]`
-/

namespace A199705.P16415000531285202064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P16415000531285202064

namespace A199705

/-- `∑[2*A047230(n+1)]` -/
def P16415000531285202064.Spec : Prop :=
  ∀ n, P16415000531285202064.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P18273850163040565853

`∑[A146512(n+1)+5]`
-/

namespace A199705.P18273850163040565853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P18273850163040565853

namespace A199705

/-- `∑[A146512(n+1)+5]` -/
def P18273850163040565853.Spec : Prop :=
  ∀ n, P18273850163040565853.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P14061626903271834326

`∑[∑[A010131(2*n)]+1]`
-/

namespace A199705.P14061626903271834326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P14061626903271834326

namespace A199705

/-- `∑[∑[A010131(2*n)]+1]` -/
def P14061626903271834326.Spec : Prop :=
  ∀ n, P14061626903271834326.a n = A199705 (n + 1)

end A199705

/-! ## A199705.P13217898666678467219

`∑[∑[A040022(2*n)]+1]`
-/

namespace A199705.P13217898666678467219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040022 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199705.P13217898666678467219

namespace A199705

/-- `∑[∑[A040022(2*n)]+1]` -/
def P13217898666678467219.Spec : Prop :=
  ∀ n, P13217898666678467219.a n = A199705 (n + 1)

end A199705

/-!
# A199706: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no two neighbors equal.

The programs for A199706, the canonical program `A199706.P16105507406723659083` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199706 has offset 1).

The definition of A199706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199706.P16105507406723659083

`4*(A219054(n+1)+A002264(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199706

/-- `4*(A219054(n+1)+A002264(n+1))` -/
def P16105507406723659083.Spec : Prop :=
  ∀ n, P16105507406723659083.a n = A199706 (n + 1)

theorem P16105507406723659083.correct : P16105507406723659083.Spec := by
  intro n
  simp only [A199706, Nat.add_sub_cancel]

end A199706

/-! ## A199706.P17766947204355332616

`A202964(n+1)+A046092(2*n+1)`
-/

namespace A199706.P17766947204355332616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202964 (n + 1) + A046092 (2 * n + 1)

end

end A199706.P17766947204355332616

namespace A199706

/-- `A202964(n+1)+A046092(2*n+1)` -/
def P17766947204355332616.Spec : Prop :=
  ∀ n, P17766947204355332616.a n = A199706 (n + 1)

end A199706

/-! ## A199706.P11148017555311254163

`∑[A017617(∑[A047399(1+n)])]`
-/

namespace A199706.P11148017555311254163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047399 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199706.P11148017555311254163

namespace A199706

/-- `∑[A017617(∑[A047399(1+n)])]` -/
def P11148017555311254163.Spec : Prop :=
  ∀ n, P11148017555311254163.a n = A199706 (n + 1)

end A199706

/-! ## A199706.P347862604946027778

`∑[A016933(∑[A063089(n+1)])]`
-/

namespace A199706.P347862604946027778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199706.P347862604946027778

namespace A199706

/-- `∑[A016933(∑[A063089(n+1)])]` -/
def P347862604946027778.Spec : Prop :=
  ∀ n, P347862604946027778.a n = A199706 (n + 1)

end A199706

/-! ## A199706.P9155246367628827971

`A199704(A167614(n+2)+1)`
-/

namespace A199706.P9155246367628827971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A167614 (n + 2) + 1).toNat

end

end A199706.P9155246367628827971

namespace A199706

/-- `A199704(A167614(n+2)+1)` -/
def P9155246367628827971.Spec : Prop :=
  ∀ n, P9155246367628827971.a n = A199706 (n + 1)

end A199706

/-!
# A199707: Number of -n..n arrays x(0..4) of 5 elements with zero sum and no two neighbors equal.

The programs for A199707, there is no canonical definition to state claims against.
-/

/-! ## A199707.P3673368797143104418

`A199704(A167499(n+3))`
-/

namespace A199707.P3673368797143104418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A167499 (n + 3)).toNat

end

end A199707.P3673368797143104418

/-! ## A199707.P17748616499320701928

`A199704(A167614(n+3)+2)`
-/

namespace A199707.P17748616499320701928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A167614 (n + 3) + 2).toNat

end

end A199707.P17748616499320701928

/-! ## A199707.P10822656010257153888

`A199704(A055998(n+2)+8)`
-/

namespace A199707.P10822656010257153888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A055998 (n + 2) + 8).toNat

end

end A199707.P10822656010257153888

/-! ## A199707.P6881566420569066089

`record[A199704(n+15)/A199704(n+11)]`
-/

namespace A199707.P6881566420569066089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199704 (n + 15) : ℚ) / (A199704 (n + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199707.P6881566420569066089

/-! ## A199707.P14279707751083316864

`A199704(A038722(Δ[A023545(n+1)]))`
-/

namespace A199707.P14279707751083316864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A199707.P14279707751083316864

/-!
# A199708: Number of -n..n arrays x(0..5) of 6 elements with zero sum and no two neighbors equal.

The programs for A199708, there is no canonical definition to state claims against.
-/

/-! ## A199708.P9457365752551226183

`A199704(A133263(n+5)+4)`
-/

namespace A199708.P9457365752551226183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A133263 (n + 5) + 4).toNat

end

end A199708.P9457365752551226183

/-! ## A199708.P17179402674421783791

`A199704(A000217(n+5)+6)`
-/

namespace A199708.P17179402674421783791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000217 (n + 5) + 6).toNat

end

end A199708.P17179402674421783791

/-! ## A199708.P15910824069417599297

`A199704(A046691(n+3)+10)`
-/

namespace A199708.P15910824069417599297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A046691 (n + 3) + 10).toNat

end

end A199708.P15910824069417599297

/-! ## A199708.P3732681907371210040

`A199704(A000124(n+6)-(n+1))`
-/

namespace A199708.P3732681907371210040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A199708.P3732681907371210040

/-! ## A199708.P16351513047410069969

`A199704(A020715(A000217(n+5)))`
-/

namespace A199708.P16351513047410069969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A020715 (A000217 (n + 5)).toNat).toNat

end

end A199708.P16351513047410069969

/-!
# A199709: Number of -n..n arrays x(0..6) of 7 elements with zero sum and no two neighbors equal.

The programs for A199709, there is no canonical definition to state claims against.
-/

/-! ## A199709.P16486806461106553985

`A199704(A167499(n+5)+2)`
-/

namespace A199709.P16486806461106553985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A167499 (n + 5) + 2).toNat

end

end A199709.P16486806461106553985

/-! ## A199709.P8765149470748918768

`A199704(A000217(n+6)+7)`
-/

namespace A199709.P8765149470748918768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000217 (n + 6) + 7).toNat

end

end A199709.P8765149470748918768

/-! ## A199709.P16949059358752474741

`A199704(eq[6, A002262(n)]+1)`
-/

namespace A199709.P16949059358752474741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199709.P16949059358752474741

/-! ## A199709.P2544106314421924786

`A199704(A000124(n+7)-(n+1))`
-/

namespace A199709.P2544106314421924786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A199709.P2544106314421924786

/-! ## A199709.P8320439338722792656

`A199704(A133263(n+7)-(n+2))`
-/

namespace A199709.P8320439338722792656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199704 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A199709.P8320439338722792656

/-!
# A199710: Expansion of (1+x-14*x^2+13*x^3)/(1-28*x^2+169*x^4).

The programs for A199710, the canonical program `A199710.P12204250135701223791` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199710 has offset 0).

The definition of A199710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-14x^2+13x^3)/(1-28x^2+169x^4))` (program `A199710.P12204250135701223791`, by `A199710.P12204250135701223791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199710.P6680842113529071006

`28*a(n-2)-169*a(n-4)` with `a(0)=1, a(1)=1, a(2)=14, a(3)=41`
-/

namespace A199710.P6680842113529071006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 14, 41] fun n a =>
  28 * a (n - 2) - 169 * a (n - 4)

end

end A199710.P6680842113529071006

namespace A199710

/-- `28*a(n-2)-169*a(n-4)` -/
def P6680842113529071006.Spec : Prop :=
  ∀ n, P6680842113529071006.a n = A199710 n

end A199710

/-! ## A199710.P12204250135701223791

`ogf((1+x-14x^2+13x^3)/(1-28x^2+169x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199710

/-- `ogf((1+x-14x^2+13x^3)/(1-28x^2+169x^4))` -/
def P12204250135701223791.Spec : Prop :=
  ∀ n, P12204250135701223791.a n = A199710 n

theorem P12204250135701223791.correct : P12204250135701223791.Spec := by
  intro n
  simp only [A199710]

end A199710

/-! ## A199710.P15891439688678825463

`((1+3*sqrt(3))^n+(1-3*sqrt(3))^n)/(2*2^floor(n/2))`
-/

namespace A199710.P15891439688678825463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * Real.sqrt (3 : ℝ)) ^ n + (1 - 3 * Real.sqrt (3 : ℝ)) ^ n) / (2 * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) : ℝ)

end

end A199710.P15891439688678825463

namespace A199710

/-- `((1+3*sqrt(3))^n+(1-3*sqrt(3))^n)/(2*2^floor(n/2))` -/
def P15891439688678825463.Spec : Prop :=
  ∀ n, P15891439688678825463.a n = (A199710 n : ℝ)

end A199710

/-!
# A199711: Triangular array: T(n,k) gives the number of numerical semigroups of genus n and multiplicity k, (n>=1, k>=2).

The programs for A199711, there is no canonical definition to state claims against.
-/

/-! ## A199711.P16037319743024649296

`A088519(A123349(n))`
-/

namespace A199711.P16037319743024649296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A123349 n).toNat

end

end A199711.P16037319743024649296

/-! ## A199711.P9075165000443408448

`A088519(A394582(n+1))`
-/

namespace A199711.P9075165000443408448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A394582 (n + 1)).toNat

end

end A199711.P9075165000443408448

/-! ## A199711.P6416555562906528706

`A117707(A095145(n)+A048993(n))`
-/

namespace A199711.P6416555562906528706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A095145 n + A048993 n).toNat

end

end A199711.P6416555562906528706

/-! ## A199711.P7404547132906917511

`A088519(A099608(n)-A014473(n))`
-/

namespace A199711.P7404547132906917511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A099608 n - A014473 n).toNat

end

end A199711.P7404547132906917511

/-! ## A199711.P7411848012953022929

`A168443(n+1)-A055641(A083773(2*n+5))`
-/

namespace A199711.P7411848012953022929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (n + 1) - A055641 (A083773 (2 * n + 5)).toNat

end

end A199711.P7411848012953022929

/-!
# A199713: Smallest prime greater than n-th prime containing all of its digits in decimal representation.

The programs for A199713, there is no canonical definition to state claims against.
-/

/-! ## A199713.P17236114529813054546

`A167372(A246447(n+2))`
-/

namespace A199713.P17236114529813054546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167372 (A246447 (n + 2)).toNat

end

end A199713.P17236114529813054546

/-!
# A199716: Numbers k such that 6k-5 and 6k-1 are both composite.

The programs for A199716, the canonical program `A199716.P7143510606697811794` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199716 has offset 1).

The definition of A199716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199716.P7143510606697811794

`∩[A046953(n+1), A272902(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A199716

/-- `∩[A046953(n+1), A272902(n+1)]` -/
def P7143510606697811794.Spec : Prop :=
  ∀ n, (P7143510606697811794.a n : ℤ) = A199716 (n + 1)

theorem P7143510606697811794.correct : P7143510606697811794.Spec := by
  intro n
  simp only [A199716, Nat.add_sub_cancel]

end A199716

/-! ## A199716.P16953650147685927187

`lt[7, A020481(3*n+4)]+1`
-/

namespace A199716.P16953650147685927187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A199716.P16953650147685927187

namespace A199716

/-- `lt[7, A020481(3*n+4)]+1` -/
def P16953650147685927187.Spec : Prop :=
  ∀ n, (P16953650147685927187.a n : ℤ) = A199716 (n + 1)

end A199716

/-! ## A199716.P15314245445137801810

`lt[3, A219252(3*(n+1))]`
-/

namespace A199716.P15314245445137801810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219252 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A199716.P15314245445137801810

namespace A199716

/-- `lt[3, A219252(3*(n+1))]` -/
def P15314245445137801810.Spec : Prop :=
  ∀ n, (P15314245445137801810.a n : ℤ) = A199716 (n + 1)

end A199716

/-! ## A199716.P6324903590655488281

`lt[5, A103153(3*n+2)]`
-/

namespace A199716.P6324903590655488281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A199716.P6324903590655488281

namespace A199716

/-- `lt[5, A103153(3*n+2)]` -/
def P6324903590655488281.Spec : Prop :=
  ∀ n, (P6324903590655488281.a n : ℤ) = A199716 (n + 1)

end A199716

/-! ## A199716.P15935091663583733350

`lt[3, A255274(3*n+2)]+1`
-/

namespace A199716.P15935091663583733350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A199716.P15935091663583733350

namespace A199716

/-- `lt[3, A255274(3*n+2)]+1` -/
def P15935091663583733350.Spec : Prop :=
  ∀ n, (P15935091663583733350.a n : ℤ) = A199716 (n + 1)

end A199716

/-!
# A199717: Numbers k such that 6*k-1 is composite, but 6*k-5 is prime.

The programs for A199717, the canonical program `A199717.P5345418810345977314` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199717 has offset 1).

The definition of A199717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199717.P5345418810345977314

`∩[A024899(n+1)+1, A046953(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A199717

/-- `∩[A024899(n+1)+1, A046953(n+1)]` -/
def P5345418810345977314.Spec : Prop :=
  ∀ n, (P5345418810345977314.a n : ℤ) = A199717 (n + 1)

theorem P5345418810345977314.correct : P5345418810345977314.Spec := by
  intro n
  simp only [A199717, Nat.add_sub_cancel]

end A199717

/-! ## A199717.P10739528167908490607

`eq[6, A175851(6*(n+1))]+1`
-/

namespace A199717.P10739528167908490607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A199717.P10739528167908490607

namespace A199717

/-- `eq[6, A175851(6*(n+1))]+1` -/
def P10739528167908490607.Spec : Prop :=
  ∀ n, (P10739528167908490607.a n : ℤ) = A199717 (n + 1)

end A199717

/-! ## A199717.P498857202471320689

`eq[7, A020481(3*n+4)]+1`
-/

namespace A199717.P498857202471320689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A199717.P498857202471320689

namespace A199717

/-- `eq[7, A020481(3*n+4)]+1` -/
def P498857202471320689.Spec : Prop :=
  ∀ n, (P498857202471320689.a n : ℤ) = A199717 (n + 1)

end A199717

/-! ## A199717.P16509319905873885392

`eq[3, A219252(3*(n+1))]`
-/

namespace A199717.P16509319905873885392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219252 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199717.P16509319905873885392

namespace A199717

/-- `eq[3, A219252(3*(n+1))]` -/
def P16509319905873885392.Spec : Prop :=
  ∀ n, (P16509319905873885392.a n : ℤ) = A199717 (n + 1)

end A199717

/-! ## A199717.P7408225830550260184

`eq[6, A212595(3*n)]+2`
-/

namespace A199717.P7408225830550260184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212595 (3 * n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A199717.P7408225830550260184

namespace A199717

/-- `eq[6, A212595(3*n)]+2` -/
def P7408225830550260184.Spec : Prop :=
  ∀ n, (P7408225830550260184.a n : ℤ) = A199717 (n + 1)

end A199717

/-! ## A199717.P263502913408949060

`eq[2, A078772(6*n+1)]`
-/

namespace A199717.P263502913408949060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199717.P263502913408949060

namespace A199717

/-- `eq[2, A078772(6*n+1)]` -/
def P263502913408949060.Spec : Prop :=
  ∀ n, (P263502913408949060.a n : ℤ) = A199717 (n + 1)

end A199717

/-! ## A199717.P9521396394635427023

`eq[2, A208645(A016969(n))]+2`
-/

namespace A199717.P9521396394635427023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A016969 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A199717.P9521396394635427023

namespace A199717

/-- `eq[2, A208645(A016969(n))]+2` -/
def P9521396394635427023.Spec : Prop :=
  ∀ n, (P9521396394635427023.a n : ℤ) = A199717 (n + 1)

end A199717

/-!
# A199718: Numbers k such that 6*k-5 is composite, but 6*k-1 is prime.

The programs for A199718, the canonical program `A199718.P15975727589693316819` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199718 has offset 1).

The definition of A199718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199718.P15975727589693316819

`∩[A024898(n+2), A046954(n+2)+1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A199718

/-- `∩[A024898(n+2), A046954(n+2)+1]` -/
def P15975727589693316819.Spec : Prop :=
  ∀ n, (P15975727589693316819.a n : ℤ) = A199718 (n + 1)

theorem P15975727589693316819.correct : P15975727589693316819.Spec := by
  intro n
  simp only [A199718, Nat.add_sub_cancel]

end A199718

/-! ## A199718.P10639348417527498337

`filter[A272902(n+2), A167020(#)]`
-/

namespace A199718.P10639348417527498337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A199718.P10639348417527498337

namespace A199718

/-- `filter[A272902(n+2), A167020(#)]` -/
def P10639348417527498337.Spec : Prop :=
  ∀ n, P10639348417527498337.a n = A199718 (n + 1)

end A199718

/-! ## A199718.P5837679569152085796

`eq[1, A253074(3*n+1)%3]`
-/

namespace A199718.P5837679569152085796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253074 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199718.P5837679569152085796

namespace A199718

/-- `eq[1, A253074(3*n+1)%3]` -/
def P5837679569152085796.Spec : Prop :=
  ∀ n, (P5837679569152085796.a n : ℤ) = A199718 (n + 1)

end A199718

/-! ## A199718.P277404028986585419

`eq[A003188(A249920(3*n+1)), A003188(3*n)]`
-/

namespace A199718.P277404028986585419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A249920 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199718.P277404028986585419

namespace A199718

/-- `eq[A003188(A249920(3*n+1)), A003188(3*n)]` -/
def P277404028986585419.Spec : Prop :=
  ∀ n, (P277404028986585419.a n : ℤ) = A199718 (n + 1)

end A199718

/-! ## A199718.P7052354739606501912

`record[A278529(A134100(n+1))]`
-/

namespace A199718.P7052354739606501912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A134100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199718.P7052354739606501912

namespace A199718

/-- `record[A278529(A134100(n+1))]` -/
def P7052354739606501912.Spec : Prop :=
  ∀ n, P7052354739606501912.a n = A199718 (n + 1)

end A199718

/-! ## A199718.P11764192123386533208

`record[A078898(A134101(n+1))]`
-/

namespace A199718.P11764192123386533208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A134101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199718.P11764192123386533208

namespace A199718

/-- `record[A078898(A134101(n+1))]` -/
def P11764192123386533208.Spec : Prop :=
  ∀ n, P11764192123386533208.a n = A199718 (n + 1)

end A199718

/-! ## A199718.P18413662595361897951

`A103221(p?[A038509(n+1)+4])`
-/

namespace A199718.P18413662595361897951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A199718.P18413662595361897951

namespace A199718

/-- `A103221(p?[A038509(n+1)+4])` -/
def P18413662595361897951.Spec : Prop :=
  ∀ n, P18413662595361897951.a n = A199718 (n + 1)

end A199718

/-! ## A199718.P4834055179846919567

`A008619(record[A032742(A134101(n+1))])`
-/

namespace A199718.P4834055179846919567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A134101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199718.P4834055179846919567

namespace A199718

/-- `A008619(record[A032742(A134101(n+1))])` -/
def P4834055179846919567.Spec : Prop :=
  ∀ n, P4834055179846919567.a n = A199718 (n + 1)

end A199718

/-!
# A199743: Rounded near-integers (exp(Pi*sqrt(h)) - 744)^(1/3) where h is A003173(n+3) (Heegner numbers of the form 4p-1 where p is prime).

The programs for A199743, there is no canonical definition to state claims against.
-/

/-! ## A199743.P1082895818439582568

`root(A305500(n+2), 3)`
-/

namespace A199743.P1082895818439582568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305500 (n + 2) : ℝ) ^ (1 / (3 : ℝ))

end

end A199743.P1082895818439582568

/-!
# A199744: G.f.: 1/(1 + x + 2*x^2 + 2*x^3 + x^4).

The programs for A199744, the canonical program `A199744.P15440960796344854694` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199744 has offset 0).

The definition of A199744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199744.P9193561905838380997

`ogf(1/(1+x+2x^2+2x^3+x^4))`
-/

namespace A199744.P9193561905838380997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 2, 2, 1] n

end

end A199744.P9193561905838380997

namespace A199744

/-- `ogf(1/(1+x+2x^2+2x^3+x^4))` -/
def P9193561905838380997.Spec : Prop :=
  ∀ n, P9193561905838380997.a n = A199744 n

end A199744

/-! ## A199744.P15440960796344854694

`a(n-4)+a(n-5)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199744

/-- `a(n-4)+a(n-5)-a(n-2)` -/
def P15440960796344854694.Spec : Prop :=
  ∀ n, P15440960796344854694.a n = A199744 n

theorem P15440960796344854694.correct : P15440960796344854694.Spec := by
  intro n
  simp only [A199744]

end A199744

/-! ## A199744.P13950992046007786631

`Δ[A115055(n+1)]-A115055(A028310(n))`
-/

namespace A199744.P13950992046007786631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A115055 (A028310 n).toNat

end

end A199744.P13950992046007786631

namespace A199744

/-- `Δ[A115055(n+1)]-A115055(A028310(n))` -/
def P13950992046007786631.Spec : Prop :=
  ∀ n, P13950992046007786631.a n = A199744 n

end A199744

/-! ## A199744.P17868328357332465236

`A115055(n+2)+A375319(n)-A375321(n)`
-/

namespace A199744.P17868328357332465236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115055 (n + 2) + (A375319 n - A375321 n)

end

end A199744.P17868328357332465236

namespace A199744

/-- `A115055(n+2)+A375319(n)-A375321(n)` -/
def P17868328357332465236.Spec : Prop :=
  ∀ n, P17868328357332465236.a n = A199744 n

end A199744

/-!
# A199745: Numbers such that the sum of the largest and the smallest prime divisor equals the sum of the other distinct prime divisors.

The programs for A199745, there is no canonical definition to state claims against.
-/

/-! ## A199745.P6386437361987557564

`A200145(A330929(n+1))`
-/

namespace A199745.P6386437361987557564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200145 (A330929 (n + 1)).toNat

end

end A199745.P6386437361987557564

/-!
# A199746: E.g.f.: 1/(1 + Sum_{n>=1} (-1)^n*x^(n*(3*n-1)/2)/(n*(3*n-1)/2)! + (-1)^n*x^(n*(3*n+1)/2)/(n*(3*n+1)/2)! ).

The programs for A199746, there is no canonical definition to state claims against.
-/

/-! ## A199746.P14940934084419679642

`A028310(A248871(n)-A006820(n))`
-/

namespace A199746.P14940934084419679642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A248871 n - A006820 n).toNat

end

end A199746.P14940934084419679642

/-! ## A199746.P15735252650558166632

`A248871(n)-A011731(A048899(n))`
-/

namespace A199746.P15735252650558166632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248871 n - A011731 (A048899 n).toNat

end

end A199746.P15735252650558166632

/-! ## A199746.P16761837192383587185

`A028310(A248871(n)-A036669(n))`
-/

namespace A199746.P16761837192383587185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A248871 n - A036669 n).toNat

end

end A199746.P16761837192383587185

/-!
# A199747: a(n) = binomial(n*(3*n+1)/2, n).

The programs for A199747, the canonical program `A199747.P14145470627878626110` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199747 has offset 0).

The definition of A199747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n*(3*n+1)/2, n)` (program `A199747.P14145470627878626110`, by `A199747.P14145470627878626110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199747.P14145470627878626110

`C(n*(3*n+1)/2, n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199747

/-- `C(n*(3*n+1)/2, n)` -/
def P14145470627878626110.Spec : Prop :=
  ∀ n, (P14145470627878626110.a n : ℤ) = A199747 n

theorem P14145470627878626110.correct : P14145470627878626110.Spec := by
  intro n
  simp only [A199747]

end A199747

/-! ## A199747.P11692770553435998479

`gcd(C(2, n+2), C(A005449(n), n))`
-/

namespace A199747.P11692770553435998479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose 2 (n + 2)) (Nat.choose (A005449 n).toNat n)

end

end A199747.P11692770553435998479

namespace A199747

/-- `gcd(C(2, n+2), C(A005449(n), n))` -/
def P11692770553435998479.Spec : Prop :=
  ∀ n, (P11692770553435998479.a n : ℤ) = A199747 n

end A199747

/-! ## A199747.P1563580214935813200

`record[C(A225468(n), A286718(n))]`
-/

namespace A199747.P1563580214935813200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225468 n).toNat (A286718 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199747.P1563580214935813200

namespace A199747

/-- `record[C(A225468(n), A286718(n))]` -/
def P1563580214935813200.Spec : Prop :=
  ∀ n, (P1563580214935813200.a n : ℤ) = A199747 n

end A199747

/-! ## A199747.P15560522525058728970

`A107862(∑[4*n])`
-/

namespace A199747.P15560522525058728970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199747.P15560522525058728970

namespace A199747

/-- `A107862(∑[4*n])` -/
def P15560522525058728970.Spec : Prop :=
  ∀ n, P15560522525058728970.a n = A199747 n

end A199747

/-! ## A199747.P908855257450621307

`record[A003982(n)*A107862(n)]`
-/

namespace A199747.P908855257450621307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A107862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199747.P908855257450621307

namespace A199747

/-- `record[A003982(n)*A107862(n)]` -/
def P908855257450621307.Spec : Prop :=
  ∀ n, P908855257450621307.a n = A199747 n

end A199747

/-!
# A199748: a(n) = binomial(n*(3*n-1)/2, n).

The programs for A199748, the canonical program `A199748.P13289809499913734485` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199748 has offset 0).

The definition of A199748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n*(3*n-1)/2, n)` (program `A199748.P13289809499913734485`, by `A199748.P13289809499913734485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199748.P13289809499913734485

`C(n*(3*n-1)/2, n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199748

/-- `C(n*(3*n-1)/2, n)` -/
def P13289809499913734485.Spec : Prop :=
  ∀ n, (P13289809499913734485.a n : ℤ) = A199748 n

theorem P13289809499913734485.correct : P13289809499913734485.Spec := by
  intro n
  simp only [A199748]

end A199748

/-! ## A199748.P6178708738291264382

`A107862(A004273(n²))`
-/

namespace A199748.P6178708738291264382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107862 (A004273 (n ^ 2)).toNat

end

end A199748.P6178708738291264382

namespace A199748

/-- `A107862(A004273(n²))` -/
def P6178708738291264382.Spec : Prop :=
  ∀ n, P6178708738291264382.a n = A199748 n

end A199748

/-!
# A199750: a(n) = 2*11^n+1.

The programs for A199750, the canonical program `A199750.P11300349495876433357` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199750 has offset 0).

The definition of A199750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*11^n+1` (program `A199750.P11300349495876433357`, by `A199750.P11300349495876433357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199750.P11300349495876433357

`2*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199750

/-- `2*11^n+1` -/
def P11300349495876433357.Spec : Prop :=
  ∀ n, (P11300349495876433357.a n : ℤ) = A199750 n

theorem P11300349495876433357.correct : P11300349495876433357.Spec := by
  intro n
  simp only [A199750]

end A199750

/-! ## A199750.P13662806758315587231

`or(1, 2*11^n)`
-/

namespace A199750.P13662806758315587231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 11 ^ n)

end

end A199750.P13662806758315587231

namespace A199750

/-- `or(1, 2*11^n)` -/
def P13662806758315587231.Spec : Prop :=
  ∀ n, (P13662806758315587231.a n : ℤ) = A199750 n

end A199750

/-! ## A199750.P2857120341941444957

`xor(1, 2*11^n)`
-/

namespace A199750.P2857120341941444957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 11 ^ n)

end

end A199750.P2857120341941444957

namespace A199750

/-- `xor(1, 2*11^n)` -/
def P2857120341941444957.Spec : Prop :=
  ∀ n, (P2857120341941444957.a n : ℤ) = A199750 n

end A199750

/-! ## A199750.P9059976701184802742

`ogf((3-13x)/(1-12x+11x^2))`
-/

namespace A199750.P9059976701184802742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -13] [1, -12, 11] n

end

end A199750.P9059976701184802742

namespace A199750

/-- `ogf((3-13x)/(1-12x+11x^2))` -/
def P9059976701184802742.Spec : Prop :=
  ∀ n, P9059976701184802742.a n = A199750 n

end A199750

/-! ## A199750.P15175975390692939981

`∑[11*a(n-1)]` with `a(0)=3, a(1)=20`
-/

namespace A199750.P15175975390692939981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 20] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199750.P15175975390692939981

namespace A199750

/-- `∑[11*a(n-1)]` -/
def P15175975390692939981.Spec : Prop :=
  ∀ n, (P15175975390692939981.a n : ℤ) = A199750 n

end A199750

/-! ## A199750.P392664132335000541

`ceil(A199753(n)/2)`
-/

namespace A199750.P392664132335000541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199753 n : ℚ) / 2⌉

end

end A199750.P392664132335000541

namespace A199750

/-- `ceil(A199753(n)/2)` -/
def P392664132335000541.Spec : Prop :=
  ∀ n, P392664132335000541.a n = A199750 n

end A199750

/-! ## A199750.P10181043917407178037

`(A199020(n)+3)/2`
-/

namespace A199750.P10181043917407178037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199020 n + 3 : ℚ) / 2

end

end A199750.P10181043917407178037

namespace A199750

/-- `(A199020(n)+3)/2` -/
def P10181043917407178037.Spec : Prop :=
  ∀ n, P10181043917407178037.a n = (A199750 n : ℚ)

theorem P10181043917407178037.correct : P10181043917407178037.Spec := by
  intro n
  simp only [A199750, Nat.add_sub_cancel, A199750.P10181043917407178037.a, A199750.P11300349495876433357.a, A199020, A199020.P17105954108518898010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199750

/-! ## A199750.P10021339734208410190

`(A199756(n)+2)/3`
-/

namespace A199750.P10021339734208410190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199756 n + 2 : ℚ) / 3

end

end A199750.P10021339734208410190

namespace A199750

/-- `(A199756(n)+2)/3` -/
def P10021339734208410190.Spec : Prop :=
  ∀ n, P10021339734208410190.a n = (A199750 n : ℚ)

theorem P10021339734208410190.correct : P10021339734208410190.Spec := by
  intro n
  simp only [A199750, Nat.add_sub_cancel, A199750.P10021339734208410190.a, A199750.P11300349495876433357.a, A199756, A199756.P14785815373982145534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199750

/-! ## A199750.P8992794706666387908

`(A199024(n)+4)/3`
-/

namespace A199750.P8992794706666387908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199024 n + 4 : ℚ) / 3

end

end A199750.P8992794706666387908

namespace A199750

/-- `(A199024(n)+4)/3` -/
def P8992794706666387908.Spec : Prop :=
  ∀ n, P8992794706666387908.a n = (A199750 n : ℚ)

theorem P8992794706666387908.correct : P8992794706666387908.Spec := by
  intro n
  simp only [A199750, Nat.add_sub_cancel, A199750.P8992794706666387908.a, A199750.P11300349495876433357.a, A199024, A199024.P15306623222728880314.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199750

/-! ## A199750.P12833757488294375752

`(A199759(n)+3)/4`
-/

namespace A199750.P12833757488294375752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199759 n + 3 : ℚ) / 4

end

end A199750.P12833757488294375752

namespace A199750

/-- `(A199759(n)+3)/4` -/
def P12833757488294375752.Spec : Prop :=
  ∀ n, P12833757488294375752.a n = (A199750 n : ℚ)

theorem P12833757488294375752.correct : P12833757488294375752.Spec := by
  intro n
  simp only [A199750, Nat.add_sub_cancel, A199750.P12833757488294375752.a, A199750.P11300349495876433357.a, A199759, A199759.P2206190039063985725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199750

/-!
# A199751: a(n) = (3*11^n+1)/2.

The programs for A199751, the canonical program `A199751.P2969219495547039276` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199751 has offset 0).

The definition of A199751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*11^n+1)/2` (program `A199751.P9270732228656867339`, by `A199751.P9270732228656867339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199751.P9270732228656867339

`(3*11^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199751.P9270732228656867339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 11 ^ n + 1 : ℚ) / 2

end

end A199751.P9270732228656867339

namespace A199751

/-- `(3*11^n+1)/2` -/
def P9270732228656867339.Spec : Prop :=
  ∀ n, P9270732228656867339.a n = (A199751 n : ℚ)

theorem P9270732228656867339.correct : P9270732228656867339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199751, Nat.add_sub_cancel, A199751.P9270732228656867339.a, A199751.P2969219495547039276.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199751, Nat.add_sub_cancel, A199751.P9270732228656867339.a, A199751.P2969219495547039276.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199751

/-! ## A199751.P2969219495547039276

`11*a(n-1)-5` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199751

/-- `11*a(n-1)-5` -/
def P2969219495547039276.Spec : Prop :=
  ∀ n, P2969219495547039276.a n = A199751 n

theorem P2969219495547039276.correct : P2969219495547039276.Spec := by
  intro n
  simp only [A199751]

end A199751

/-! ## A199751.P15428066687685090667

`ogf((2-7x)/(1-12x+11x^2))`
-/

namespace A199751.P15428066687685090667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -12, 11] n

end

end A199751.P15428066687685090667

namespace A199751

/-- `ogf((2-7x)/(1-12x+11x^2))` -/
def P15428066687685090667.Spec : Prop :=
  ∀ n, P15428066687685090667.a n = A199751 n

end A199751

/-! ## A199751.P9385982420490629381

`lcm(11, a(n-1))-5` with `a(0)=2`
-/

namespace A199751.P9385982420490629381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 5

end

end A199751.P9385982420490629381

namespace A199751

/-- `lcm(11, a(n-1))-5` -/
def P9385982420490629381.Spec : Prop :=
  ∀ n, P9385982420490629381.a n = A199751 n

end A199751

/-! ## A199751.P1909366902243634349

`A199018(n)+1`
-/

namespace A199751.P1909366902243634349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199018 n + 1

end

end A199751.P1909366902243634349

namespace A199751

/-- `A199018(n)+1` -/
def P1909366902243634349.Spec : Prop :=
  ∀ n, P1909366902243634349.a n = A199751 n

end A199751

/-! ## A199751.P6972378965033881073

`A199019(n)/2+1`
-/

namespace A199751.P6972378965033881073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199019 n : ℚ) / 2 + 1

end

end A199751.P6972378965033881073

namespace A199751

/-- `A199019(n)/2+1` -/
def P6972378965033881073.Spec : Prop :=
  ∀ n, P6972378965033881073.a n = (A199751 n : ℚ)

end A199751

/-! ## A199751.P7870185111064695629

`3*A034659(n)-1`
-/

namespace A199751.P7870185111064695629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034659 n - 1

end

end A199751.P7870185111064695629

namespace A199751

/-- `3*A034659(n)-1` -/
def P7870185111064695629.Spec : Prop :=
  ∀ n, P7870185111064695629.a n = A199751 n

end A199751

/-! ## A199751.P8637984096243512442

`A297181(A016873(n))`
-/

namespace A199751.P8637984096243512442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297181 (A016873 n).toNat

end

end A199751.P8637984096243512442

namespace A199751

/-- `A297181(A016873(n))` -/
def P8637984096243512442.Spec : Prop :=
  ∀ n, P8637984096243512442.a n = A199751 n

end A199751

/-!
# A199752: a(n) = 3*11^n+1.

The programs for A199752, the canonical program `A199752.P7341861829474905545` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199752 has offset 0).

The definition of A199752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*11^n+1` (program `A199752.P7341861829474905545`, by `A199752.P7341861829474905545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199752.P7341861829474905545

`3*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199752

/-- `3*11^n+1` -/
def P7341861829474905545.Spec : Prop :=
  ∀ n, (P7341861829474905545.a n : ℤ) = A199752 n

theorem P7341861829474905545.correct : P7341861829474905545.Spec := by
  intro n
  simp only [A199752]

end A199752

/-! ## A199752.P9972141421102973097

`ogf((4-14x)/(1-12x+11x^2))`
-/

namespace A199752.P9972141421102973097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -14] [1, -12, 11] n

end

end A199752.P9972141421102973097

namespace A199752

/-- `ogf((4-14x)/(1-12x+11x^2))` -/
def P9972141421102973097.Spec : Prop :=
  ∀ n, P9972141421102973097.a n = A199752 n

end A199752

/-! ## A199752.P7480950221206015874

`2*A199751(n)`
-/

namespace A199752.P7480950221206015874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199751 n

end

end A199752.P7480950221206015874

namespace A199752

/-- `2*A199751(n)` -/
def P7480950221206015874.Spec : Prop :=
  ∀ n, P7480950221206015874.a n = A199752 n

end A199752

/-! ## A199752.P9161809428982026127

`ceil(A199756(n)/2)`
-/

namespace A199752.P9161809428982026127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199756 n : ℚ) / 2⌉

end

end A199752.P9161809428982026127

namespace A199752

/-- `ceil(A199756(n)/2)` -/
def P9161809428982026127.Spec : Prop :=
  ∀ n, P9161809428982026127.a n = A199752 n

end A199752

/-! ## A199752.P1065464112235240268

`2*(A199018(n)+1)`
-/

namespace A199752.P1065464112235240268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199018 n + 1)

end

end A199752.P1065464112235240268

namespace A199752

/-- `2*(A199018(n)+1)` -/
def P1065464112235240268.Spec : Prop :=
  ∀ n, P1065464112235240268.a n = A199752 n

end A199752

/-! ## A199752.P542750362295479530

`(A199024(n)+3)/2`
-/

namespace A199752.P542750362295479530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199024 n + 3 : ℚ) / 2

end

end A199752.P542750362295479530

namespace A199752

/-- `(A199024(n)+3)/2` -/
def P542750362295479530.Spec : Prop :=
  ∀ n, P542750362295479530.a n = (A199752 n : ℚ)

theorem P542750362295479530.correct : P542750362295479530.Spec := by
  intro n
  simp only [A199752, Nat.add_sub_cancel, A199752.P542750362295479530.a, A199752.P7341861829474905545.a, A199024, A199024.P15306623222728880314.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199752

/-! ## A199752.P5575455380385224316

`(A199763(n)+2)/3`
-/

namespace A199752.P5575455380385224316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199763 n + 2 : ℚ) / 3

end

end A199752.P5575455380385224316

namespace A199752

/-- `(A199763(n)+2)/3` -/
def P5575455380385224316.Spec : Prop :=
  ∀ n, P5575455380385224316.a n = (A199752 n : ℚ)

theorem P5575455380385224316.correct : P5575455380385224316.Spec := by
  intro n
  simp only [A199752, Nat.add_sub_cancel, A199752.P5575455380385224316.a, A199752.P7341861829474905545.a, A199763, A199763.P6771920329356579825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199752

/-! ## A199752.P16621428205321699570

`(A199029(n)+4)/3`
-/

namespace A199752.P16621428205321699570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199029 n + 4 : ℚ) / 3

end

end A199752.P16621428205321699570

namespace A199752

/-- `(A199029(n)+4)/3` -/
def P16621428205321699570.Spec : Prop :=
  ∀ n, P16621428205321699570.a n = (A199752 n : ℚ)

theorem P16621428205321699570.correct : P16621428205321699570.Spec := by
  intro n
  simp only [A199752, Nat.add_sub_cancel, A199752.P16621428205321699570.a, A199752.P7341861829474905545.a, A199029, A199029.P10690101604887470321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199752

/-! ## A199752.P1212433987808068072

`abs(3*A034524(n)-2)`
-/

namespace A199752.P1212433987808068072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A034524 n - 2|

end

end A199752.P1212433987808068072

namespace A199752

/-- `abs(3*A034524(n)-2)` -/
def P1212433987808068072.Spec : Prop :=
  ∀ n, P1212433987808068072.a n = A199752 n

end A199752

/-!
# A199753: a(n) = 4*11^n+1.

The programs for A199753, the canonical program `A199753.P15556829936786948682` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199753 has offset 0).

The definition of A199753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*11^n+1` (program `A199753.P15556829936786948682`, by `A199753.P15556829936786948682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199753.P15556829936786948682

`4*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199753

/-- `4*11^n+1` -/
def P15556829936786948682.Spec : Prop :=
  ∀ n, (P15556829936786948682.a n : ℤ) = A199753 n

theorem P15556829936786948682.correct : P15556829936786948682.Spec := by
  intro n
  simp only [A199753]

end A199753

/-! ## A199753.P2156370771920597176

`or(1, 4*11^n)`
-/

namespace A199753.P2156370771920597176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 11 ^ n)

end

end A199753.P2156370771920597176

namespace A199753

/-- `or(1, 4*11^n)` -/
def P2156370771920597176.Spec : Prop :=
  ∀ n, (P2156370771920597176.a n : ℤ) = A199753 n

end A199753

/-! ## A199753.P11526450121282268338

`xor(1, 4*11^n)`
-/

namespace A199753.P11526450121282268338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 11 ^ n)

end

end A199753.P11526450121282268338

namespace A199753

/-- `xor(1, 4*11^n)` -/
def P11526450121282268338.Spec : Prop :=
  ∀ n, (P11526450121282268338.a n : ℤ) = A199753 n

end A199753

/-! ## A199753.P17991532253369792714

`ogf((5-15x)/(1-12x+11x^2))`
-/

namespace A199753.P17991532253369792714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -15] [1, -12, 11] n

end

end A199753.P17991532253369792714

namespace A199753

/-- `ogf((5-15x)/(1-12x+11x^2))` -/
def P17991532253369792714.Spec : Prop :=
  ∀ n, P17991532253369792714.a n = A199753 n

end A199753

/-! ## A199753.P2549320116432865148

`∑[11*a(n-1)]` with `a(0)=5, a(1)=40`
-/

namespace A199753.P2549320116432865148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 40] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199753.P2549320116432865148

namespace A199753

/-- `∑[11*a(n-1)]` -/
def P2549320116432865148.Spec : Prop :=
  ∀ n, (P2549320116432865148.a n : ℤ) = A199753 n

end A199753

/-! ## A199753.P13583888491884464437

`5*A083077(n)`
-/

namespace A199753.P13583888491884464437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A083077 n

end

end A199753.P13583888491884464437

namespace A199753

/-- `5*A083077(n)` -/
def P13583888491884464437.Spec : Prop :=
  ∀ n, P13583888491884464437.a n = A199753 n

end A199753

/-! ## A199753.P15006074332266581920

`ceil(A199759(n)/2)`
-/

namespace A199753.P15006074332266581920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199759 n : ℚ) / 2⌉

end

end A199753.P15006074332266581920

namespace A199753

/-- `ceil(A199759(n)/2)` -/
def P15006074332266581920.Spec : Prop :=
  ∀ n, P15006074332266581920.a n = A199753 n

end A199753

/-! ## A199753.P2937429391019841298

`(A199027(n)+3)/2`
-/

namespace A199753.P2937429391019841298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199027 n + 3 : ℚ) / 2

end

end A199753.P2937429391019841298

namespace A199753

/-- `(A199027(n)+3)/2` -/
def P2937429391019841298.Spec : Prop :=
  ∀ n, P2937429391019841298.a n = (A199753 n : ℚ)

theorem P2937429391019841298.correct : P2937429391019841298.Spec := by
  intro n
  simp only [A199753, Nat.add_sub_cancel, A199753.P2937429391019841298.a, A199753.P15556829936786948682.a, A199027, A199027.P3945229730653344754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199753

/-! ## A199753.P10716502169302138627

`5/2*A156341(n)`
-/

namespace A199753.P10716502169302138627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A156341 n : ℚ)

end

end A199753.P10716502169302138627

namespace A199753

/-- `5/2*A156341(n)` -/
def P10716502169302138627.Spec : Prop :=
  ∀ n, P10716502169302138627.a n = (A199753 n : ℚ)

end A199753

/-!
# A199754: a(n) = (5*11^n+1)/2.

The programs for A199754, the canonical program `A199754.P4188387840883751990` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199754 has offset 0).

The definition of A199754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*11^n+1)/2` (program `A199754.P16498026638651520775`, by `A199754.P16498026638651520775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199754.P16498026638651520775

`(5*11^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199754.P16498026638651520775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 11 ^ n + 1 : ℚ) / 2

end

end A199754.P16498026638651520775

namespace A199754

/-- `(5*11^n+1)/2` -/
def P16498026638651520775.Spec : Prop :=
  ∀ n, P16498026638651520775.a n = (A199754 n : ℚ)

theorem P16498026638651520775.correct : P16498026638651520775.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199754, Nat.add_sub_cancel, A199754.P16498026638651520775.a, A199754.P4188387840883751990.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199754, Nat.add_sub_cancel, A199754.P16498026638651520775.a, A199754.P4188387840883751990.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199754

/-! ## A199754.P4188387840883751990

`11*a(n-1)-5` with `a(0)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199754

/-- `11*a(n-1)-5` -/
def P4188387840883751990.Spec : Prop :=
  ∀ n, P4188387840883751990.a n = A199754 n

theorem P4188387840883751990.correct : P4188387840883751990.Spec := by
  intro n
  simp only [A199754]

end A199754

/-! ## A199754.P17090173043010694684

`ogf((3-8x)/(1-12x+11x^2))`
-/

namespace A199754.P17090173043010694684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8] [1, -12, 11] n

end

end A199754.P17090173043010694684

namespace A199754

/-- `ogf((3-8x)/(1-12x+11x^2))` -/
def P17090173043010694684.Spec : Prop :=
  ∀ n, P17090173043010694684.a n = A199754 n

end A199754

/-! ## A199754.P1227430116716605124

`lcm(11, a(n-1))-5` with `a(0)=3`
-/

namespace A199754.P1227430116716605124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 5

end

end A199754.P1227430116716605124

namespace A199754

/-- `lcm(11, a(n-1))-5` -/
def P1227430116716605124.Spec : Prop :=
  ∀ n, P1227430116716605124.a n = A199754 n

end A199754

/-! ## A199754.P11544056186868978374

`A199021(n)+1`
-/

namespace A199754.P11544056186868978374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199021 n + 1

end

end A199754.P11544056186868978374

namespace A199754

/-- `A199021(n)+1` -/
def P11544056186868978374.Spec : Prop :=
  ∀ n, P11544056186868978374.a n = A199754 n

end A199754

/-! ## A199754.P6682331068125820345

`A199022(n)/2+1`
-/

namespace A199754.P6682331068125820345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199022 n : ℚ) / 2 + 1

end

end A199754.P6682331068125820345

namespace A199754

/-- `A199022(n)/2+1` -/
def P6682331068125820345.Spec : Prop :=
  ∀ n, P6682331068125820345.a n = (A199754 n : ℚ)

end A199754

/-! ## A199754.P10206720900701715698

`5*A034659(n)-2`
-/

namespace A199754.P10206720900701715698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A034659 n - 2

end

end A199754.P10206720900701715698

namespace A199754

/-- `5*A034659(n)-2` -/
def P10206720900701715698.Spec : Prop :=
  ∀ n, P10206720900701715698.a n = A199754 n

end A199754

/-! ## A199754.P3317869044745407688

`A297181(A016885(n))`
-/

namespace A199754.P3317869044745407688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297181 (A016885 n).toNat

end

end A199754.P3317869044745407688

namespace A199754

/-- `A297181(A016885(n))` -/
def P3317869044745407688.Spec : Prop :=
  ∀ n, P3317869044745407688.a n = A199754 n

end A199754

/-!
# A199755: a(n) = 5*11^n+1.

The programs for A199755, the canonical program `A199755.P11771926122342622862` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199755 has offset 0).

The definition of A199755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*11^n+1` (program `A199755.P11771926122342622862`, by `A199755.P11771926122342622862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199755.P11771926122342622862

`5*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199755

/-- `5*11^n+1` -/
def P11771926122342622862.Spec : Prop :=
  ∀ n, (P11771926122342622862.a n : ℤ) = A199755 n

theorem P11771926122342622862.correct : P11771926122342622862.Spec := by
  intro n
  simp only [A199755]

end A199755

/-! ## A199755.P11401101326405070876

`ogf((6-16x)/(1-12x+11x^2))`
-/

namespace A199755.P11401101326405070876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -16] [1, -12, 11] n

end

end A199755.P11401101326405070876

namespace A199755

/-- `ogf((6-16x)/(1-12x+11x^2))` -/
def P11401101326405070876.Spec : Prop :=
  ∀ n, P11401101326405070876.a n = A199755 n

end A199755

/-! ## A199755.P11265576038073933629

`abs(10-lcm(11, a(n-1)))` with `a(0)=6`
-/

namespace A199755.P11265576038073933629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |10 - (Int.lcm 11 (a (n - 1)) : ℤ)|

end

end A199755.P11265576038073933629

namespace A199755

/-- `abs(10-lcm(11, a(n-1)))` -/
def P11265576038073933629.Spec : Prop :=
  ∀ n, P11265576038073933629.a n = A199755 n

end A199755

/-! ## A199755.P2639993343962825027

`xor(1, Δ[11^n]+3)/2`
-/

namespace A199755.P2639993343962825027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3) : ℚ) / 2

end

end A199755.P2639993343962825027

namespace A199755

/-- `xor(1, Δ[11^n]+3)/2` -/
def P2639993343962825027.Spec : Prop :=
  ∀ n, P2639993343962825027.a n = (A199755 n : ℚ)

end A199755

/-! ## A199755.P17648249475639705346

`2*A199754(n)`
-/

namespace A199755.P17648249475639705346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199754 n

end

end A199755.P17648249475639705346

namespace A199755

/-- `2*A199754(n)` -/
def P17648249475639705346.Spec : Prop :=
  ∀ n, P17648249475639705346.a n = A199755 n

end A199755

/-! ## A199755.P16147764706840836941

`2*(A199021(n)+1)`
-/

namespace A199755.P16147764706840836941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199021 n + 1)

end

end A199755.P16147764706840836941

namespace A199755

/-- `2*(A199021(n)+1)` -/
def P16147764706840836941.Spec : Prop :=
  ∀ n, P16147764706840836941.a n = A199755 n

end A199755

/-! ## A199755.P16297918878867694267

`(A199764(n)+1)/2`
-/

namespace A199755.P16297918878867694267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199764 n + 1 : ℚ) / 2

end

end A199755.P16297918878867694267

namespace A199755

/-- `(A199764(n)+1)/2` -/
def P16297918878867694267.Spec : Prop :=
  ∀ n, P16297918878867694267.a n = (A199755 n : ℚ)

theorem P16297918878867694267.correct : P16297918878867694267.Spec := by
  intro n
  simp only [A199755, Nat.add_sub_cancel, A199755.P16297918878867694267.a, A199755.P11771926122342622862.a, A199764, A199764.P5667583440997340111.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199755

/-! ## A199755.P3807192014695297338

`(A199030(n)+3)/2`
-/

namespace A199755.P3807192014695297338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199030 n + 3 : ℚ) / 2

end

end A199755.P3807192014695297338

namespace A199755

/-- `(A199030(n)+3)/2` -/
def P3807192014695297338.Spec : Prop :=
  ∀ n, P3807192014695297338.a n = (A199755 n : ℚ)

theorem P3807192014695297338.correct : P3807192014695297338.Spec := by
  intro n
  simp only [A199755, Nat.add_sub_cancel, A199755.P3807192014695297338.a, A199755.P11771926122342622862.a, A199030, A199030.P3461858790821088743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199755

/-! ## A199755.P17354002609437496082

`(Δ[A226737(n)]+1)/2`
-/

namespace A199755.P17354002609437496082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226737 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A199755.P17354002609437496082

namespace A199755

/-- `(Δ[A226737(n)]+1)/2` -/
def P17354002609437496082.Spec : Prop :=
  ∀ n, P17354002609437496082.a n = (A199755 n : ℚ)

theorem P17354002609437496082.correct : P17354002609437496082.Spec := by
  intro n
  simp only [A199755, Nat.add_sub_cancel, A199755.P17354002609437496082.f1, A199755.P17354002609437496082.a, A199755.P11771926122342622862.a, A226737, A226737.P863771708348360538.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199755

/-!
# A199756: a(n) = 6*11^n + 1.

The programs for A199756, the canonical program `A199756.P14785815373982145534` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199756 has offset 0).

The definition of A199756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*11^n+1` (program `A199756.P14785815373982145534`, by `A199756.P14785815373982145534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199756.P14785815373982145534

`6*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199756

/-- `6*11^n+1` -/
def P14785815373982145534.Spec : Prop :=
  ∀ n, (P14785815373982145534.a n : ℤ) = A199756 n

theorem P14785815373982145534.correct : P14785815373982145534.Spec := by
  intro n
  simp only [A199756]

end A199756

/-! ## A199756.P15178901266048852241

`or(1, 6*11^n)`
-/

namespace A199756.P15178901266048852241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * 11 ^ n)

end

end A199756.P15178901266048852241

namespace A199756

/-- `or(1, 6*11^n)` -/
def P15178901266048852241.Spec : Prop :=
  ∀ n, (P15178901266048852241.a n : ℤ) = A199756 n

end A199756

/-! ## A199756.P8761454635743610138

`ogf((7-17x)/(1-12x+11x^2))`
-/

namespace A199756.P8761454635743610138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -17] [1, -12, 11] n

end

end A199756.P8761454635743610138

namespace A199756

/-- `ogf((7-17x)/(1-12x+11x^2))` -/
def P8761454635743610138.Spec : Prop :=
  ∀ n, P8761454635743610138.a n = A199756 n

end A199756

/-! ## A199756.P3862088660738061399

`xor(2, 6*11^n-1)`
-/

namespace A199756.P3862088660738061399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((6 * 11 ^ n : ℤ) - 1)

end

end A199756.P3862088660738061399

namespace A199756

/-- `xor(2, 6*11^n-1)` -/
def P3862088660738061399.Spec : Prop :=
  ∀ n, P3862088660738061399.a n = A199756 n

end A199756

/-! ## A199756.P16219433331476157152

`ceil(xor(1, 3*2*(A198974(n)+1))/2)`
-/

namespace A199756.P16219433331476157152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 (3 * (2 * (A198974 n + 1))) : ℚ) / 2⌉

end

end A199756.P16219433331476157152

namespace A199756

/-- `ceil(xor(1, 3*2*(A198974(n)+1))/2)` -/
def P16219433331476157152.Spec : Prop :=
  ∀ n, P16219433331476157152.a n = A199756 n

end A199756

/-! ## A199756.P11452712415622417040

`Δ[A199018(n)]%A199029(n)`
-/

namespace A199756.P11452712415622417040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A199029 n)

end

end A199756.P11452712415622417040

namespace A199756

/-- `Δ[A199018(n)]%A199029(n)` -/
def P11452712415622417040.Spec : Prop :=
  ∀ n, P11452712415622417040.a n = A199756 n

end A199756

/-!
# A199757: a(n) = (7*11^n+1)/2.

The programs for A199757, the canonical program `A199757.P9211735485086720416` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199757 has offset 0).

The definition of A199757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*11^n+1)/2` (program `A199757.P6728371611622009673`, by `A199757.P6728371611622009673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199757.P6728371611622009673

`(7*11^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199757.P6728371611622009673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 11 ^ n + 1 : ℚ) / 2

end

end A199757.P6728371611622009673

namespace A199757

/-- `(7*11^n+1)/2` -/
def P6728371611622009673.Spec : Prop :=
  ∀ n, P6728371611622009673.a n = (A199757 n : ℚ)

theorem P6728371611622009673.correct : P6728371611622009673.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199757, Nat.add_sub_cancel, A199757.P6728371611622009673.a, A199757.P9211735485086720416.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199757, Nat.add_sub_cancel, A199757.P6728371611622009673.a, A199757.P9211735485086720416.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199757

/-! ## A199757.P9211735485086720416

`11*a(n-1)-5` with `a(0)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199757

/-- `11*a(n-1)-5` -/
def P9211735485086720416.Spec : Prop :=
  ∀ n, P9211735485086720416.a n = A199757 n

theorem P9211735485086720416.correct : P9211735485086720416.Spec := by
  intro n
  simp only [A199757]

end A199757

/-! ## A199757.P17999741105489500243

`ogf((4-9x)/(1-12x+11x^2))`
-/

namespace A199757.P17999741105489500243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -9] [1, -12, 11] n

end

end A199757.P17999741105489500243

namespace A199757

/-- `ogf((4-9x)/(1-12x+11x^2))` -/
def P17999741105489500243.Spec : Prop :=
  ∀ n, P17999741105489500243.a n = A199757 n

end A199757

/-! ## A199757.P5514439492596159206

`lcm(11, a(n-1))-5` with `a(0)=4`
-/

namespace A199757.P5514439492596159206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 5

end

end A199757.P5514439492596159206

namespace A199757

/-- `lcm(11, a(n-1))-5` -/
def P5514439492596159206.Spec : Prop :=
  ∀ n, P5514439492596159206.a n = A199757 n

end A199757

/-! ## A199757.P8704135778047636662

`A199025(n)+1`
-/

namespace A199757.P8704135778047636662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199025 n + 1

end

end A199757.P8704135778047636662

namespace A199757

/-- `A199025(n)+1` -/
def P8704135778047636662.Spec : Prop :=
  ∀ n, P8704135778047636662.a n = A199757 n

end A199757

/-! ## A199757.P10805010150947883109

`A199026(n)/2+1`
-/

namespace A199757.P10805010150947883109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199026 n : ℚ) / 2 + 1

end

end A199757.P10805010150947883109

namespace A199757

/-- `A199026(n)/2+1` -/
def P10805010150947883109.Spec : Prop :=
  ∀ n, P10805010150947883109.a n = (A199757 n : ℚ)

end A199757

/-! ## A199757.P17293252235960174126

`A297181(5*n+4)`
-/

namespace A199757.P17293252235960174126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297181 (5 * n + 4)

end

end A199757.P17293252235960174126

namespace A199757

/-- `A297181(5*n+4)` -/
def P17293252235960174126.Spec : Prop :=
  ∀ n, P17293252235960174126.a n = A199757 n

end A199757

/-! ## A199757.P675041797887551962

`A199756(n)-A199754(n)`
-/

namespace A199757.P675041797887551962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199756 n - A199754 n

end

end A199757.P675041797887551962

namespace A199757

/-- `A199756(n)-A199754(n)` -/
def P675041797887551962.Spec : Prop :=
  ∀ n, P675041797887551962.a n = A199757 n

end A199757

/-! ## A199757.P13298010008201119922

`A199759(n)-A199763(n)/2`
-/

namespace A199757.P13298010008201119922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199759 n : ℚ) - (A199763 n : ℚ) / 2

end

end A199757.P13298010008201119922

namespace A199757

/-- `A199759(n)-A199763(n)/2` -/
def P13298010008201119922.Spec : Prop :=
  ∀ n, P13298010008201119922.a n = (A199757 n : ℚ)

end A199757

/-!
# A199758: a(n) = 7*11^n + 1.

The programs for A199758, the canonical program `A199758.P7657953075516208428` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199758 has offset 0).

The definition of A199758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*11^n+1` (program `A199758.P7657953075516208428`, by `A199758.P7657953075516208428.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199758.P7657953075516208428

`7*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199758

/-- `7*11^n+1` -/
def P7657953075516208428.Spec : Prop :=
  ∀ n, (P7657953075516208428.a n : ℤ) = A199758 n

theorem P7657953075516208428.correct : P7657953075516208428.Spec := by
  intro n
  simp only [A199758]

end A199758

/-! ## A199758.P2750838681701770905

`ogf((8-18x)/(1-12x+11x^2))`
-/

namespace A199758.P2750838681701770905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -18] [1, -12, 11] n

end

end A199758.P2750838681701770905

namespace A199758

/-- `ogf((8-18x)/(1-12x+11x^2))` -/
def P2750838681701770905.Spec : Prop :=
  ∀ n, P2750838681701770905.a n = A199758 n

end A199758

/-! ## A199758.P13340133035977153929

`2*A199757(n)`
-/

namespace A199758.P13340133035977153929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199757 n

end

end A199758.P13340133035977153929

namespace A199758

/-- `2*A199757(n)` -/
def P13340133035977153929.Spec : Prop :=
  ∀ n, P13340133035977153929.a n = A199758 n

end A199758

/-! ## A199758.P12969366038973466105

`2*(A199025(n)+1)`
-/

namespace A199758.P12969366038973466105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199025 n + 1)

end

end A199758.P12969366038973466105

namespace A199758

/-- `2*(A199025(n)+1)` -/
def P12969366038973466105.Spec : Prop :=
  ∀ n, P12969366038973466105.a n = A199758 n

end A199758

/-! ## A199758.P4645316407054414810

`2*A297181(A016885(n)+1)`
-/

namespace A199758.P4645316407054414810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297181 (A016885 n + 1).toNat

end

end A199758.P4645316407054414810

namespace A199758

/-- `2*A297181(A016885(n)+1)` -/
def P4645316407054414810.Spec : Prop :=
  ∀ n, P4645316407054414810.a n = A199758 n

end A199758

/-! ## A199758.P13130259861673759232

`2*A297181(A016873(n)+2)`
-/

namespace A199758.P13130259861673759232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297181 (A016873 n + 2).toNat

end

end A199758.P13130259861673759232

namespace A199758

/-- `2*A297181(A016873(n)+2)` -/
def P13130259861673759232.Spec : Prop :=
  ∀ n, P13130259861673759232.a n = A199758 n

end A199758

/-! ## A199758.P17928613562657945663

`2*(A199756(n)-A199754(n))`
-/

namespace A199758.P17928613562657945663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199756 n - A199754 n)

end

end A199758.P17928613562657945663

namespace A199758

/-- `2*(A199756(n)-A199754(n))` -/
def P17928613562657945663.Spec : Prop :=
  ∀ n, P17928613562657945663.a n = A199758 n

end A199758

/-! ## A199758.P7522089257438422198

`(A199757(n)+A199757(n))%A199764(n)`
-/

namespace A199758.P7522089257438422198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199757 n + A199757 n) (A199764 n)

end

end A199758.P7522089257438422198

namespace A199758

/-- `(A199757(n)+A199757(n))%A199764(n)` -/
def P7522089257438422198.Spec : Prop :=
  ∀ n, P7522089257438422198.a n = A199758 n

end A199758

/-!
# A199759: a(n) = 8*11^n+1.

The programs for A199759, the canonical program `A199759.P2206190039063985725` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199759 has offset 0).

The definition of A199759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*11^n+1` (program `A199759.P2206190039063985725`, by `A199759.P2206190039063985725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199759.P2206190039063985725

`8*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199759

/-- `8*11^n+1` -/
def P2206190039063985725.Spec : Prop :=
  ∀ n, (P2206190039063985725.a n : ℤ) = A199759 n

theorem P2206190039063985725.correct : P2206190039063985725.Spec := by
  intro n
  simp only [A199759]

end A199759

/-! ## A199759.P5673354216570298620

`or(1, 8*11^n)`
-/

namespace A199759.P5673354216570298620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * 11 ^ n)

end

end A199759.P5673354216570298620

namespace A199759

/-- `or(1, 8*11^n)` -/
def P5673354216570298620.Spec : Prop :=
  ∀ n, (P5673354216570298620.a n : ℤ) = A199759 n

end A199759

/-! ## A199759.P11214240799013404278

`xor(1, 8*11^n)`
-/

namespace A199759.P11214240799013404278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * 11 ^ n)

end

end A199759.P11214240799013404278

namespace A199759

/-- `xor(1, 8*11^n)` -/
def P11214240799013404278.Spec : Prop :=
  ∀ n, (P11214240799013404278.a n : ℤ) = A199759 n

end A199759

/-! ## A199759.P317038114596410996

`ogf((9-19x)/(1-12x+11x^2))`
-/

namespace A199759.P317038114596410996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -19] [1, -12, 11] n

end

end A199759.P317038114596410996

namespace A199759

/-- `ogf((9-19x)/(1-12x+11x^2))` -/
def P317038114596410996.Spec : Prop :=
  ∀ n, P317038114596410996.a n = A199759 n

end A199759

/-! ## A199759.P5423699896258394562

`abs(10-11*a(n-1))` with `a(0)=9`
-/

namespace A199759.P5423699896258394562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  |10 - 11 * a (n - 1)|

end

end A199759.P5423699896258394562

namespace A199759

/-- `abs(10-11*a(n-1))` -/
def P5423699896258394562.Spec : Prop :=
  ∀ n, P5423699896258394562.a n = A199759 n

end A199759

/-! ## A199759.P14157600469454234064

`Δ[A083077(n)+n]`
-/

namespace A199759.P14157600469454234064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083077 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199759.P14157600469454234064

namespace A199759

/-- `Δ[A083077(n)+n]` -/
def P14157600469454234064.Spec : Prop :=
  ∀ n, P14157600469454234064.a n = A199759 n

end A199759

/-! ## A199759.P1019528057078668945

`record[A199027(A003987(n))+2]`
-/

namespace A199759.P1019528057078668945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199027 (A003987 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199759.P1019528057078668945

namespace A199759

/-- `record[A199027(A003987(n))+2]` -/
def P1019528057078668945.Spec : Prop :=
  ∀ n, P1019528057078668945.a n = A199759 n

end A199759

/-! ## A199759.P6541205810121482642

`lcm(A199027(n)+2, A087960(n²))`
-/

namespace A199759.P6541205810121482642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A199027 n + 2) (A087960 (n ^ 2))

end

end A199759.P6541205810121482642

namespace A199759

/-- `lcm(A199027(n)+2, A087960(n²))` -/
def P6541205810121482642.Spec : Prop :=
  ∀ n, (P6541205810121482642.a n : ℤ) = A199759 n

end A199759

/-! ## A199759.P10876177154564228037

`(Δ[A156341(n)]+2)/2`
-/

namespace A199759.P10876177154564228037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156341 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2 : ℚ) / 2

end

end A199759.P10876177154564228037

namespace A199759

/-- `(Δ[A156341(n)]+2)/2` -/
def P10876177154564228037.Spec : Prop :=
  ∀ n, P10876177154564228037.a n = (A199759 n : ℚ)

end A199759

/-! ## A199759.P13282905173854416578

`(A199763(n)+A199758(n))/2`
-/

namespace A199759.P13282905173854416578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199763 n + A199758 n : ℚ) / 2

end

end A199759.P13282905173854416578

namespace A199759

/-- `(A199763(n)+A199758(n))/2` -/
def P13282905173854416578.Spec : Prop :=
  ∀ n, P13282905173854416578.a n = (A199759 n : ℚ)

theorem P13282905173854416578.correct : P13282905173854416578.Spec := by
  intro n
  simp only [A199759, Nat.add_sub_cancel, A199759.P13282905173854416578.a, A199759.P2206190039063985725.a, A199758, A199758.P7657953075516208428.a, A199763, A199763.P6771920329356579825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199759

/-!
# A199760: a(n) = (9*11^n + 1)/10.

The programs for A199760, the canonical program `A199760.P15193462914691152263` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199760 has offset 0).

The definition of A199760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*11^n+1)/10` (program `A199760.P6714294831767585608`, by `A199760.P6714294831767585608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199760.P15193462914691152263

`11*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199760

/-- `11*a(n-1)-1` -/
def P15193462914691152263.Spec : Prop :=
  ∀ n, P15193462914691152263.a n = A199760 n

theorem P15193462914691152263.correct : P15193462914691152263.Spec := by
  intro n
  simp only [A199760]

end A199760

/-! ## A199760.P6714294831767585608

`(9*11^n+1)/10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199760.P6714294831767585608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 11 ^ n + 1 : ℚ) / 10

end

end A199760.P6714294831767585608

namespace A199760

/-- `(9*11^n+1)/10` -/
def P6714294831767585608.Spec : Prop :=
  ∀ n, P6714294831767585608.a n = (A199760 n : ℚ)

theorem P6714294831767585608.correct : P6714294831767585608.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199760, Nat.add_sub_cancel, A199760.P6714294831767585608.a, A199760.P15193462914691152263.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199760, Nat.add_sub_cancel, A199760.P6714294831767585608.a, A199760.P15193462914691152263.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199760

/-! ## A199760.P6209164046679201490

`ogf((1-2x)/(1-12x+11x^2))`
-/

namespace A199760.P6209164046679201490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -12, 11] n

end

end A199760.P6209164046679201490

namespace A199760

/-- `ogf((1-2x)/(1-12x+11x^2))` -/
def P6209164046679201490.Spec : Prop :=
  ∀ n, P6209164046679201490.a n = A199760 n

end A199760

/-! ## A199760.P3585008125780570944

`lcm(11, a(n-1))-1` with `a(0)=1`
-/

namespace A199760.P3585008125780570944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 1

end

end A199760.P3585008125780570944

namespace A199760

/-- `lcm(11, a(n-1))-1` -/
def P3585008125780570944.Spec : Prop :=
  ∀ n, P3585008125780570944.a n = A199760 n

end A199760

/-! ## A199760.P6011212897759126280

`9*(A047856(n)-1)+1`
-/

namespace A199760.P6011212897759126280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A047856 n - 1) + 1

end

end A199760.P6011212897759126280

namespace A199760

/-- `9*(A047856(n)-1)+1` -/
def P6011212897759126280.Spec : Prop :=
  ∀ n, P6011212897759126280.a n = A199760 n

end A199760

/-! ## A199760.P3766949036116140675

`A034524(n)-A047856(n)`
-/

namespace A199760.P3766949036116140675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 n - A047856 n

end

end A199760.P3766949036116140675

namespace A199760

/-- `A034524(n)-A047856(n)` -/
def P3766949036116140675.Spec : Prop :=
  ∀ n, P3766949036116140675.a n = A199760 n

end A199760

/-! ## A199760.P11641705130517624184

`ceil(A199028(n)/5)`
-/

namespace A199760.P11641705130517624184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199028 n : ℚ) / 5⌉

end

end A199760.P11641705130517624184

namespace A199760

/-- `ceil(A199028(n)/5)` -/
def P11641705130517624184.Spec : Prop :=
  ∀ n, P11641705130517624184.a n = A199760 n

end A199760

/-! ## A199760.P18439749765068882650

`∑[A199029(n)+1]-A199029(n)`
-/

namespace A199760.P18439749765068882650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199029 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A199029 n

end

end A199760.P18439749765068882650

namespace A199760

/-- `∑[A199029(n)+1]-A199029(n)` -/
def P18439749765068882650.Spec : Prop :=
  ∀ n, P18439749765068882650.a n = A199760 n

end A199760

/-! ## A199760.P5975000125932949134

`2*A001020(n)-∑[A001020(n)]`
-/

namespace A199760.P5975000125932949134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001020 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199760.P5975000125932949134

namespace A199760

/-- `2*A001020(n)-∑[A001020(n)]` -/
def P5975000125932949134.Spec : Prop :=
  ∀ n, P5975000125932949134.a n = A199760 n

end A199760

/-!
# A199761: a(n) = (9*11^n+1)/5.

The programs for A199761, the canonical program `A199761.P9012313034848399062` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199761 has offset 0).

The definition of A199761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*11^n+1)/5` (program `A199761.P9759871098308061481`, by `A199761.P9759871098308061481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199761.P9759871098308061481

`(9*11^n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199761.P9759871098308061481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 11 ^ n + 1 : ℚ) / 5

end

end A199761.P9759871098308061481

namespace A199761

/-- `(9*11^n+1)/5` -/
def P9759871098308061481.Spec : Prop :=
  ∀ n, P9759871098308061481.a n = (A199761 n : ℚ)

theorem P9759871098308061481.correct : P9759871098308061481.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199761, Nat.add_sub_cancel, A199761.P9759871098308061481.a, A199761.P9012313034848399062.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199761, Nat.add_sub_cancel, A199761.P9759871098308061481.a, A199761.P9012313034848399062.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199761

/-! ## A199761.P9012313034848399062

`11*a(n-1)-2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199761

/-- `11*a(n-1)-2` -/
def P9012313034848399062.Spec : Prop :=
  ∀ n, P9012313034848399062.a n = A199761 n

theorem P9012313034848399062.correct : P9012313034848399062.Spec := by
  intro n
  simp only [A199761]

end A199761

/-! ## A199761.P9474720487843531988

`ogf((2-4x)/(1-12x+11x^2))`
-/

namespace A199761.P9474720487843531988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -12, 11] n

end

end A199761.P9474720487843531988

namespace A199761

/-- `ogf((2-4x)/(1-12x+11x^2))` -/
def P9474720487843531988.Spec : Prop :=
  ∀ n, P9474720487843531988.a n = A199761 n

end A199761

/-! ## A199761.P7982036880714465483

`lcm(11, a(n-1))-2` with `a(0)=2`
-/

namespace A199761.P7982036880714465483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 2

end

end A199761.P7982036880714465483

namespace A199761

/-- `lcm(11, a(n-1))-2` -/
def P7982036880714465483.Spec : Prop :=
  ∀ n, P7982036880714465483.a n = A199761 n

end A199761

/-! ## A199761.P9181734804999940163

`2*A199760(n)`
-/

namespace A199761.P9181734804999940163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199760 n

end

end A199761.P9181734804999940163

namespace A199761

/-- `2*A199760(n)` -/
def P9181734804999940163.Spec : Prop :=
  ∀ n, P9181734804999940163.a n = A199761 n

end A199761

/-! ## A199761.P2599249175048114947

`ceil(A199029(n)/5)`
-/

namespace A199761.P2599249175048114947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199029 n : ℚ) / 5⌉

end

end A199761.P2599249175048114947

namespace A199761

/-- `ceil(A199029(n)/5)` -/
def P2599249175048114947.Spec : Prop :=
  ∀ n, P2599249175048114947.a n = A199761 n

end A199761

/-! ## A199761.P5979939002228972799

`2/5*A199762(n)`
-/

namespace A199761.P5979939002228972799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A199762 n : ℚ)

end

end A199761.P5979939002228972799

namespace A199761

/-- `2/5*A199762(n)` -/
def P5979939002228972799.Spec : Prop :=
  ∀ n, P5979939002228972799.a n = (A199761 n : ℚ)

end A199761

/-! ## A199761.P12542676250105971449

`A083077(n)+11^n`
-/

namespace A199761.P12542676250105971449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083077 n + (11 ^ n : ℤ)

end

end A199761.P12542676250105971449

namespace A199761

/-- `A083077(n)+11^n` -/
def P12542676250105971449.Spec : Prop :=
  ∀ n, P12542676250105971449.a n = A199761 n

end A199761

/-! ## A199761.P10225096720362443582

`2*(A034524(n)-A047856(n))`
-/

namespace A199761.P10225096720362443582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034524 n - A047856 n)

end

end A199761.P10225096720362443582

namespace A199761

/-- `2*(A034524(n)-A047856(n))` -/
def P10225096720362443582.Spec : Prop :=
  ∀ n, P10225096720362443582.a n = A199761 n

end A199761

/-!
# A199762: a(n) = (9*11^n+1)/2.

The programs for A199762, the canonical program `A199762.P14046005701472629213` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199762 has offset 0).

The definition of A199762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*11^n+1)/2` (program `A199762.P10974206601141328795`, by `A199762.P10974206601141328795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199762.P10974206601141328795

`(9*11^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199762.P10974206601141328795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 11 ^ n + 1 : ℚ) / 2

end

end A199762.P10974206601141328795

namespace A199762

/-- `(9*11^n+1)/2` -/
def P10974206601141328795.Spec : Prop :=
  ∀ n, P10974206601141328795.a n = (A199762 n : ℚ)

theorem P10974206601141328795.correct : P10974206601141328795.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199762, Nat.add_sub_cancel, A199762.P10974206601141328795.a, A199762.P14046005701472629213.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199762, Nat.add_sub_cancel, A199762.P10974206601141328795.a, A199762.P14046005701472629213.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199762

/-! ## A199762.P14046005701472629213

`11*a(n-1)-5` with `a(0)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199762

/-- `11*a(n-1)-5` -/
def P14046005701472629213.Spec : Prop :=
  ∀ n, P14046005701472629213.a n = A199762 n

theorem P14046005701472629213.correct : P14046005701472629213.Spec := by
  intro n
  simp only [A199762]

end A199762

/-! ## A199762.P2300535666651602653

`ogf((5-10x)/(1-12x+11x^2))`
-/

namespace A199762.P2300535666651602653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10] [1, -12, 11] n

end

end A199762.P2300535666651602653

namespace A199762

/-- `ogf((5-10x)/(1-12x+11x^2))` -/
def P2300535666651602653.Spec : Prop :=
  ∀ n, P2300535666651602653.a n = A199762 n

end A199762

/-! ## A199762.P3471484227460453264

`lcm(11, a(n-1))-5` with `a(0)=5`
-/

namespace A199762.P3471484227460453264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 5

end

end A199762.P3471484227460453264

namespace A199762

/-- `lcm(11, a(n-1))-5` -/
def P3471484227460453264.Spec : Prop :=
  ∀ n, P3471484227460453264.a n = A199762 n

end A199762

/-! ## A199762.P15245162329823723288

`A199028(n)+1`
-/

namespace A199762.P15245162329823723288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199028 n + 1

end

end A199762.P15245162329823723288

namespace A199762

/-- `A199028(n)+1` -/
def P15245162329823723288.Spec : Prop :=
  ∀ n, P15245162329823723288.a n = A199762 n

end A199762

/-! ## A199762.P15096539260641410448

`5*A199760(n)`
-/

namespace A199762.P15096539260641410448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A199760 n

end

end A199762.P15096539260641410448

namespace A199762

/-- `5*A199760(n)` -/
def P15096539260641410448.Spec : Prop :=
  ∀ n, P15096539260641410448.a n = A199762 n

end A199762

/-! ## A199762.P3515187639140973470

`floor(A199763(n)/2)`
-/

namespace A199762.P3515187639140973470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199763 n : ℚ) / 2⌋

end

end A199762.P3515187639140973470

namespace A199762

/-- `floor(A199763(n)/2)` -/
def P3515187639140973470.Spec : Prop :=
  ∀ n, P3515187639140973470.a n = A199762 n

end A199762

/-! ## A199762.P4926684238760651649

`A199029(n)/2+1`
-/

namespace A199762.P4926684238760651649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199029 n : ℚ) / 2 + 1

end

end A199762.P4926684238760651649

namespace A199762

/-- `A199029(n)/2+1` -/
def P4926684238760651649.Spec : Prop :=
  ∀ n, P4926684238760651649.a n = (A199762 n : ℚ)

end A199762

/-! ## A199762.P14196094797836046806

`3*A199018(n)+2`
-/

namespace A199762.P14196094797836046806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199018 n + 2

end

end A199762.P14196094797836046806

namespace A199762

/-- `3*A199018(n)+2` -/
def P14196094797836046806.Spec : Prop :=
  ∀ n, P14196094797836046806.a n = A199762 n

end A199762

/-! ## A199762.P11413688400073539465

`3*A199751(n)-1`
-/

namespace A199762.P11413688400073539465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199751 n - 1

end

end A199762.P11413688400073539465

namespace A199762

/-- `3*A199751(n)-1` -/
def P11413688400073539465.Spec : Prop :=
  ∀ n, P11413688400073539465.a n = A199762 n

end A199762

/-!
# A199763: a(n) = 9*11^n + 1.

The programs for A199763, the canonical program `A199763.P6771920329356579825` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199763 has offset 0).

The definition of A199763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*11^n+1` (program `A199763.P6771920329356579825`, by `A199763.P6771920329356579825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199763.P6771920329356579825

`9*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199763

/-- `9*11^n+1` -/
def P6771920329356579825.Spec : Prop :=
  ∀ n, (P6771920329356579825.a n : ℤ) = A199763 n

theorem P6771920329356579825.correct : P6771920329356579825.Spec := by
  intro n
  simp only [A199763]

end A199763

/-! ## A199763.P11626820206721019156

`10*A199760(n)`
-/

namespace A199763.P11626820206721019156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A199760 n

end

end A199763.P11626820206721019156

namespace A199763

/-- `10*A199760(n)` -/
def P11626820206721019156.Spec : Prop :=
  ∀ n, P11626820206721019156.a n = A199763 n

end A199763

/-! ## A199763.P6188664723815324163

`ogf((10-20x)/(1-12x+11x^2))`
-/

namespace A199763.P6188664723815324163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -20] [1, -12, 11] n

end

end A199763.P6188664723815324163

namespace A199763

/-- `ogf((10-20x)/(1-12x+11x^2))` -/
def P6188664723815324163.Spec : Prop :=
  ∀ n, P6188664723815324163.a n = A199763 n

end A199763

/-! ## A199763.P392059262288541443

`2*A199762(n)`
-/

namespace A199763.P392059262288541443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199762 n

end

end A199763.P392059262288541443

namespace A199763

/-- `2*A199762(n)` -/
def P392059262288541443.Spec : Prop :=
  ∀ n, P392059262288541443.a n = A199763 n

end A199763

/-! ## A199763.P5733459125147350549

`5*A199761(n)`
-/

namespace A199763.P5733459125147350549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A199761 n

end

end A199763.P5733459125147350549

namespace A199763

/-- `5*A199761(n)` -/
def P5733459125147350549.Spec : Prop :=
  ∀ n, P5733459125147350549.a n = A199763 n

end A199763

/-! ## A199763.P15471123617075978754

`2*(A199028(n)+1)`
-/

namespace A199763.P15471123617075978754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199028 n + 1)

end

end A199763.P15471123617075978754

namespace A199763

/-- `2*(A199028(n)+1)` -/
def P15471123617075978754.Spec : Prop :=
  ∀ n, P15471123617075978754.a n = A199763 n

end A199763

/-! ## A199763.P12711607903091842700

`2*A297181(A016885(n)+2)`
-/

namespace A199763.P12711607903091842700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297181 (A016885 n + 2).toNat

end

end A199763.P12711607903091842700

namespace A199763

/-- `2*A297181(A016885(n)+2)` -/
def P12711607903091842700.Spec : Prop :=
  ∀ n, P12711607903091842700.a n = A199763 n

end A199763

/-! ## A199763.P4389864817954606532

`floor(A199756(n)+A199756(n)/2)`
-/

namespace A199763.P4389864817954606532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199756 n : ℚ) + (A199756 n : ℚ) / 2⌋

end

end A199763.P4389864817954606532

namespace A199763

/-- `floor(A199756(n)+A199756(n)/2)` -/
def P4389864817954606532.Spec : Prop :=
  ∀ n, P4389864817954606532.a n = A199763 n

end A199763

/-!
# A199764: a(n) = 10*11^n+1.

The programs for A199764, the canonical program `A199764.P5667583440997340111` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199764 has offset 0).

The definition of A199764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*11^n+1` (program `A199764.P5667583440997340111`, by `A199764.P5667583440997340111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199764.P5667583440997340111

`10*11^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199764

/-- `10*11^n+1` -/
def P5667583440997340111.Spec : Prop :=
  ∀ n, (P5667583440997340111.a n : ℤ) = A199764 n

theorem P5667583440997340111.correct : P5667583440997340111.Spec := by
  intro n
  simp only [A199764]

end A199764

/-! ## A199764.P5601626258451003889

`or(1, Δ[11^n])`
-/

namespace A199764.P5601626258451003889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199764.P5601626258451003889

namespace A199764

/-- `or(1, Δ[11^n])` -/
def P5601626258451003889.Spec : Prop :=
  ∀ n, P5601626258451003889.a n = A199764 n

end A199764

/-! ## A199764.P11243861480108213967

`xor(1, Δ[11^n])`
-/

namespace A199764.P11243861480108213967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199764.P11243861480108213967

namespace A199764

/-- `xor(1, Δ[11^n])` -/
def P11243861480108213967.Spec : Prop :=
  ∀ n, P11243861480108213967.a n = A199764 n

end A199764

/-! ## A199764.P6592042569008897459

`ogf((11-21x)/(1-12x+11x^2))`
-/

namespace A199764.P6592042569008897459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -21] [1, -12, 11] n

end

end A199764.P6592042569008897459

namespace A199764

/-- `ogf((11-21x)/(1-12x+11x^2))` -/
def P6592042569008897459.Spec : Prop :=
  ∀ n, P6592042569008897459.a n = A199764 n

end A199764

/-! ## A199764.P2932198548840412260

`Δ[A226737(n)]`
-/

namespace A199764.P2932198548840412260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199764.P2932198548840412260

namespace A199764

/-- `Δ[A226737(n)]` -/
def P2932198548840412260.Spec : Prop :=
  ∀ n, P2932198548840412260.a n = A199764 n

theorem P2932198548840412260.correct : P2932198548840412260.Spec := by
  intro n
  simp only [A199764, Nat.add_sub_cancel, A199764.P2932198548840412260.f1, A199764.P2932198548840412260.a, A199764.P5667583440997340111.a, A226737, A226737.P863771708348360538.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199764

/-! ## A199764.P229637169611214894

`Δ[A001020(n)+n]`
-/

namespace A199764.P229637169611214894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199764.P229637169611214894

namespace A199764

/-- `Δ[A001020(n)+n]` -/
def P229637169611214894.Spec : Prop :=
  ∀ n, P229637169611214894.a n = A199764 n

theorem P229637169611214894.correct : P229637169611214894.Spec := by
  intro n
  simp only [A199764, Nat.add_sub_cancel, A199764.P229637169611214894.f1, A199764.P229637169611214894.a, A199764.P5667583440997340111.a, A001020, A001020.P6110418391945528251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199764

/-! ## A199764.P6351426630234827475

`Δ[A024127(n)+n]`
-/

namespace A199764.P6351426630234827475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024127 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199764.P6351426630234827475

namespace A199764

/-- `Δ[A024127(n)+n]` -/
def P6351426630234827475.Spec : Prop :=
  ∀ n, P6351426630234827475.a n = A199764 n

theorem P6351426630234827475.correct : P6351426630234827475.Spec := by
  intro n
  simp only [A199764, Nat.add_sub_cancel, A199764.P6351426630234827475.f1, A199764.P6351426630234827475.a, A199764.P5667583440997340111.a, A024127, A024127.P11041693200226580728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199764

/-! ## A199764.P13969487668216449872

`Δ[A073211(∑[n])+n]`
-/

namespace A199764.P13969487668216449872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073211 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199764.P13969487668216449872

namespace A199764

/-- `Δ[A073211(∑[n])+n]` -/
def P13969487668216449872.Spec : Prop :=
  ∀ n, P13969487668216449872.a n = A199764 n

end A199764

/-!
# A199765: Number of Landsberg zones in the n-th Brillouin zone of a rectangular lattice.

The programs for A199765, there is no canonical definition to state claims against.
-/

/-! ## A199765.P9595609980910324448

`eq[A007431(n), A010060(A035555(n))]`
-/

namespace A199765.P9595609980910324448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A035555 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199765.P9595609980910324448

/-! ## A199765.P7000946480312708614

`∑[A000005(A246704(∏[n%2+2]-1))]`
-/

namespace A199765.P7000946480312708614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A246704 (∏ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199765.P7000946480312708614

/-! ## A199765.P12084864487787344571

`xor(A108563(A099214(n)), A315187(n))`
-/

namespace A199765.P12084864487787344571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108563 (A099214 n).toNat) (A315187 n)

end

end A199765.P12084864487787344571

/-!
# A199768: Numbers whose greatest prime factor is less than their number of divisors.

The programs for A199768, the canonical program `A199768.P6760462723311011706` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199768 has offset 1).

The definition of A199768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199768.P6760462723311011706

`lt[A006530(n+1), A000005(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A199768

/-- `lt[A006530(n+1), A000005(n+1)]+1` -/
def P6760462723311011706.Spec : Prop :=
  ∀ n, (P6760462723311011706.a n : ℤ) = A199768 (n + 1)

theorem P6760462723311011706.correct : P6760462723311011706.Spec := by
  intro n
  simp only [A199768, Nat.add_sub_cancel]

end A199768

/-! ## A199768.P124701458850993572

`lt[A006530(∏{p}[n+1, #]), ∏{e}[n+1, #+1]]+1`
-/

namespace A199768.P124701458850993572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A199768.P124701458850993572

namespace A199768

/-- `lt[A006530(∏{p}[n+1, #]), ∏{e}[n+1, #+1]]+1` -/
def P124701458850993572.Spec : Prop :=
  ∀ n, (P124701458850993572.a n : ℤ) = A199768 (n + 1)

end A199768

/-! ## A199768.P2108602573786081528

`lt[A006530(n+1), Δ[A006218(n)]]+1`
-/

namespace A199768.P2108602573786081528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A199768.P2108602573786081528

namespace A199768

/-- `lt[A006530(n+1), Δ[A006218(n)]]+1` -/
def P2108602573786081528.Spec : Prop :=
  ∀ n, (P2108602573786081528.a n : ℤ) = A199768 (n + 1)

end A199768

/-! ## A199768.P2352889570418927528

`lt[A111089(n+1), A000005(n+1)]+1`
-/

namespace A199768.P2352889570418927528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A199768.P2352889570418927528

namespace A199768

/-- `lt[A111089(n+1), A000005(n+1)]+1` -/
def P2352889570418927528.Spec : Prop :=
  ∀ n, (P2352889570418927528.a n : ℤ) = A199768 (n + 1)

end A199768

/-! ## A199768.P6804007633371294866

`lt[A284695(n+1), A000005(n+1)]+1`
-/

namespace A199768.P6804007633371294866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A199768.P6804007633371294866

namespace A199768

/-- `lt[A284695(n+1), A000005(n+1)]+1` -/
def P6804007633371294866.Spec : Prop :=
  ∀ n, (P6804007633371294866.a n : ℤ) = A199768 (n + 1)

end A199768

/-! ## A199768.P15331881345483732766

`A020725(lt[A006530(n+1), ∏{e}[n+1, #+1]])`
-/

namespace A199768.P15331881345483732766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A199768.P15331881345483732766

namespace A199768

/-- `A020725(lt[A006530(n+1), ∏{e}[n+1, #+1]])` -/
def P15331881345483732766.Spec : Prop :=
  ∀ n, P15331881345483732766.a n = A199768 (n + 1)

end A199768

/-! ## A199768.P13780038088670506769

`lt[A006530(A088835(n+1)), ∏{e}[n+1, #+1]]+1`
-/

namespace A199768.P13780038088670506769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088835 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A199768.P13780038088670506769

namespace A199768

/-- `lt[A006530(A088835(n+1)), ∏{e}[n+1, #+1]]+1` -/
def P13780038088670506769.Spec : Prop :=
  ∀ n, (P13780038088670506769.a n : ℤ) = A199768 (n + 1)

end A199768

/-! ## A199768.P5945411608024250192

`lt[A014963(A053585(n+1)), A000005(n+1)]+1`
-/

namespace A199768.P5945411608024250192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053585 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A199768.P5945411608024250192

namespace A199768

/-- `lt[A014963(A053585(n+1)), A000005(n+1)]+1` -/
def P5945411608024250192.Spec : Prop :=
  ∀ n, (P5945411608024250192.a n : ℤ) = A199768 (n + 1)

end A199768

/-! ## A199768.P13453873288592152176

`lt[A014963(A345941(n+1)), A000005(n+1)]+1`
-/

namespace A199768.P13453873288592152176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A345941 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A199768.P13453873288592152176

namespace A199768

/-- `lt[A014963(A345941(n+1)), A000005(n+1)]+1` -/
def P13453873288592152176.Spec : Prop :=
  ∀ n, (P13453873288592152176.a n : ℤ) = A199768 (n + 1)

end A199768

/-! ## A199768.P12329259396031944518

`A337674(A055495(n+1))`
-/

namespace A199768.P12329259396031944518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (A055495 (n + 1)).toNat

end

end A199768.P12329259396031944518

namespace A199768

/-- `A337674(A055495(n+1))` -/
def P12329259396031944518.Spec : Prop :=
  ∀ n, P12329259396031944518.a n = A199768 (n + 1)

end A199768

/-!
# A199769: Number of brackets in distinct sets with fewest possible elements.

The programs for A199769, there is no canonical definition to state claims against.
-/

/-! ## A199769.P15416223936411465702

`A198759(n+1)-A198759(n)`
-/

namespace A199769.P15416223936411465702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198759 (n + 1) - A198759 n

end

end A199769.P15416223936411465702

/-! ## A199769.P7329734761993634962

`Δ[A198759(n)]`
-/

namespace A199769.P7329734761993634962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199769.P7329734761993634962

/-! ## A199769.P10702890349868990516

`∑[char[A196118(n)]]`
-/

namespace A199769.P10702890349868990516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199769.P10702890349868990516

/-! ## A199769.P8789182300915110659

`∑[char[∑[A004111(n)]]]`
-/

namespace A199769.P8789182300915110659
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199769.P8789182300915110659

/-! ## A199769.P17648250538348906417

`∑[char[∑[A255517(∑[n+2]-1)]]]`
-/

namespace A199769.P17648250538348906417
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (∑ j ∈ Finset.range (n + 1), f4 j - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199769.P17648250538348906417

/-! ## A199769.P12825666094973320537

`∑[char[∑[A316101(∑[n+2]-1)]]]`
-/

namespace A199769.P12825666094973320537
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (∑ j ∈ Finset.range (n + 1), f4 j - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199769.P12825666094973320537

/-! ## A199769.P5814379044842840697

`char[A196118(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A199769.P5814379044842840697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A199769.P5814379044842840697

/-! ## A199769.P7449675315525444506

`char[A004111(n+1)+a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A199769.P7449675315525444506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004111 (n + 1) + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A199769.P7449675315525444506

/-! ## A199769.P7357525453197387222

`A001222(∏[char[A196118(n)]+1])`
-/

namespace A199769.P7357525453197387222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A199769.P7357525453197387222

/-! ## A199769.P3978046395264280888

`A000027(a(n-1))+char[A196118(n)]` with `a(0)=1`
-/

namespace A199769.P3978046395264280888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A199769.P3978046395264280888

/-!
# A199770: Self-convolution with "addition" played by bitwise XOR.

The programs for A199770, there is no canonical definition to state claims against.
-/

/-! ## A199770.P15298138741374968150

`xor(1, floor(A192484(n)/2))`
-/

namespace A199770.P15298138741374968150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(A192484 n : ℚ) / 2⌋

end

end A199770.P15298138741374968150

/-! ## A199770.P15010622200690350393

`(xor(2, A192484(n))/2)^abs(A057428(n))`
-/

namespace A199770.P15010622200690350393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.xor 2 (A192484 n) : ℚ) / 2) ^ (|A057428 n| : ℤ)

end

end A199770.P15010622200690350393

/-! ## A199770.P11075601464957566704

`(xor(2, A192484(n))/2)^abs(A062157(n))`
-/

namespace A199770.P11075601464957566704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.xor 2 (A192484 n) : ℚ) / 2) ^ (|A062157 n| : ℤ)

end

end A199770.P11075601464957566704

/-! ## A199770.P10225417709060138471

`round(xor(2, A192484(n))/2-A000007(n))`
-/

namespace A199770.P10225417709060138471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 2 (A192484 n) : ℚ) / 2 - (A000007 n : ℚ))

end

end A199770.P10225417709060138471

/-! ## A199770.P295641202106013519

`xor(2, A192484(n))/A020639(A039915(n+1))`
-/

namespace A199770.P295641202106013519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A192484 n) : ℚ) / (A020639 (A039915 (n + 1)).toNat : ℚ)

end

end A199770.P295641202106013519

/-! ## A199770.P12796873411095246034

`(xor(2, A192484(n))/2)^A001221(A034444(n+1))`
-/

namespace A199770.P12796873411095246034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.xor 2 (A192484 n) : ℚ) / 2) ^ (A001221 (A034444 (n + 1)).toNat : ℤ)

end

end A199770.P12796873411095246034

/-! ## A199770.P3546969400292836911

`(xor(2, A192484(n))/2)^A001221(A061142(n+1))`
-/

namespace A199770.P3546969400292836911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.xor 2 (A192484 n) : ℚ) / 2) ^ (A001221 (A061142 (n + 1)).toNat : ℤ)

end

end A199770.P3546969400292836911

/-!
# A199771: Row sums of the triangle in A199332.

The programs for A199771, the canonical program `A199771.P1769207775715912863` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199771 has offset 1).

The definition of A199771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199771.P1769207775715912863

`(n+1)*(3+2*(n+1)²+4*(n+1)+(-1)^(n+1))/8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199771

/-- `(n+1)*(3+2*(n+1)²+4*(n+1)+(-1)^(n+1))/8` -/
def P1769207775715912863.Spec : Prop :=
  ∀ n, P1769207775715912863.a n = (A199771 (n + 1) : ℚ)

end A199771

/-! ## A199771.P16872115597431734924

`∑[∑[lcm(2, n)+1]]`
-/

namespace A199771.P16872115597431734924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P16872115597431734924

namespace A199771

/-- `∑[∑[lcm(2, n)+1]]` -/
def P16872115597431734924.Spec : Prop :=
  ∀ n, (P16872115597431734924.a n : ℤ) = A199771 (n + 1)

end A199771

/-! ## A199771.P1757368989684996859

`∑[∑[or(1, sqrt(lcm(4, n²)))]]`
-/

namespace A199771.P1757368989684996859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.sqrt (Nat.lcm 4 (n ^ 2) : ℝ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P1757368989684996859

namespace A199771

/-- `∑[∑[or(1, sqrt(lcm(4, n²)))]]` -/
def P1757368989684996859.Spec : Prop :=
  ∀ n, P1757368989684996859.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P1689962773278520713

`∑[∑[2*gcd(n, ∑[n])+1]]`
-/

namespace A199771.P1689962773278520713
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P1689962773278520713

namespace A199771

/-- `∑[∑[2*gcd(n, ∑[n])+1]]` -/
def P1689962773278520713.Spec : Prop :=
  ∀ n, (P1689962773278520713.a n : ℤ) = A199771 (n + 1)

end A199771

/-! ## A199771.P3374292538016655583

`∑[∑[n*(n%2+1)+1]]`
-/

namespace A199771.P3374292538016655583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P3374292538016655583

namespace A199771

/-- `∑[∑[n*(n%2+1)+1]]` -/
def P3374292538016655583.Spec : Prop :=
  ∀ n, (P3374292538016655583.a n : ℤ) = A199771 (n + 1)

end A199771

/-! ## A199771.P15470809374512621231

`∑[∑[n*(and(1, n)+1)+1]]`
-/

namespace A199771.P15470809374512621231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P15470809374512621231

namespace A199771

/-- `∑[∑[n*(and(1, n)+1)+1]]` -/
def P15470809374512621231.Spec : Prop :=
  ∀ n, (P15470809374512621231.a n : ℤ) = A199771 (n + 1)

end A199771

/-! ## A199771.P16032125326079080486

`∑[∑[gcd(n+1, and(1, n+1))+n]]`
-/

namespace A199771.P16032125326079080486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.land 1 (n + 1)) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P16032125326079080486

namespace A199771

/-- `∑[∑[gcd(n+1, and(1, n+1))+n]]` -/
def P16032125326079080486.Spec : Prop :=
  ∀ n, (P16032125326079080486.a n : ℤ) = A199771 (n + 1)

end A199771

/-! ## A199771.P1278686255441176760

`∑[n+1]+(n+1)*floor(a(n-1)/n)` with `a(0)=1`
-/

namespace A199771.P1278686255441176760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A199771.P1278686255441176760

namespace A199771

/-- `∑[n+1]+(n+1)*floor(a(n-1)/n)` -/
def P1278686255441176760.Spec : Prop :=
  ∀ n, P1278686255441176760.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P11023320945157447514

`∑[n+1]+(n+1)*∑[n-a(n-1)]` with `a(0)=0`
-/

namespace A199771.P11023320945157447514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A199771.P11023320945157447514

namespace A199771

/-- `∑[n+1]+(n+1)*∑[n-a(n-1)]` -/
def P11023320945157447514.Spec : Prop :=
  ∀ n, P11023320945157447514.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P16401552383673837077

`∑[∑[A114753(n+1)]]`
-/

namespace A199771.P16401552383673837077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114753 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P16401552383673837077

namespace A199771

/-- `∑[∑[A114753(n+1)]]` -/
def P16401552383673837077.Spec : Prop :=
  ∀ n, P16401552383673837077.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P6730528274965907930

`∑[A152749(n)+n+1]`
-/

namespace A199771.P6730528274965907930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P6730528274965907930

namespace A199771

/-- `∑[A152749(n)+n+1]` -/
def P6730528274965907930.Spec : Prop :=
  ∀ n, P6730528274965907930.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P11425184532367472596

`∑[(n+1)²-A110660(n)]`
-/

namespace A199771.P11425184532367472596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199771.P11425184532367472596

namespace A199771

/-- `∑[(n+1)²-A110660(n)]` -/
def P11425184532367472596.Spec : Prop :=
  ∀ n, P11425184532367472596.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P3142064687968041387

`(n+1)²+A323724(n+1)/2`
-/

namespace A199771.P3142064687968041387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) + (A323724 (n + 1) : ℚ) / 2

end

end A199771.P3142064687968041387

namespace A199771

/-- `(n+1)²+A323724(n+1)/2` -/
def P3142064687968041387.Spec : Prop :=
  ∀ n, P3142064687968041387.a n = (A199771 (n + 1) : ℚ)

end A199771

/-! ## A199771.P12856259625563806032

`A246695(n)+A093353(n)`
-/

namespace A199771.P12856259625563806032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n + A093353 n

end

end A199771.P12856259625563806032

namespace A199771

/-- `A246695(n)+A093353(n)` -/
def P12856259625563806032.Spec : Prop :=
  ∀ n, P12856259625563806032.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P14920010244326694878

`A111710(n+1)+A002717(n)`
-/

namespace A199771.P14920010244326694878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111710 (n + 1) + A002717 n

end

end A199771.P14920010244326694878

namespace A199771

/-- `A111710(n+1)+A002717(n)` -/
def P14920010244326694878.Spec : Prop :=
  ∀ n, P14920010244326694878.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P6437300781144706536

`A254749(n+1)+A212967(n)`
-/

namespace A199771.P6437300781144706536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254749 (n + 1) + A212967 n

end

end A199771.P6437300781144706536

namespace A199771

/-- `A254749(n+1)+A212967(n)` -/
def P6437300781144706536.Spec : Prop :=
  ∀ n, P6437300781144706536.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P15770100430267489305

`A003451(n+5)+A000292(n)`
-/

namespace A199771.P15770100430267489305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003451 (n + 5) + A000292 n

end

end A199771.P15770100430267489305

namespace A199771

/-- `A003451(n+5)+A000292(n)` -/
def P15770100430267489305.Spec : Prop :=
  ∀ n, P15770100430267489305.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P2233217285811016617

`∪[A200252(n+1), A280059(n)]`
-/

namespace A199771.P2233217285811016617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280059 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A199771.P2233217285811016617

namespace A199771

/-- `∪[A200252(n+1), A280059(n)]` -/
def P2233217285811016617.Spec : Prop :=
  ∀ n, (P2233217285811016617.a n : ℤ) = A199771 (n + 1)

end A199771

/-! ## A199771.P3396639763895988976

`A000217(n+1)+2*A109900(n)`
-/

namespace A199771.P3396639763895988976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 2 * A109900 n

end

end A199771.P3396639763895988976

namespace A199771

/-- `A000217(n+1)+2*A109900(n)` -/
def P3396639763895988976.Spec : Prop :=
  ∀ n, P3396639763895988976.a n = A199771 (n + 1)

end A199771

/-! ## A199771.P13419872197149795230

`A006578(n+1)+n*A002620(n+1)`
-/

namespace A199771.P13419872197149795230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 (n + 1) + (n : ℤ) * A002620 (n + 1)

end

end A199771.P13419872197149795230

namespace A199771

/-- `A006578(n+1)+n*A002620(n+1)` -/
def P13419872197149795230.Spec : Prop :=
  ∀ n, P13419872197149795230.a n = A199771 (n + 1)

end A199771

/-!
# A199772: x-values in the solution to 17*x^2 - 16 = y^2.

The programs for A199772, there is no canonical definition to state claims against.
-/

/-! ## A199772.P6813675576835357614

`(A199774(n+3)-A199773(n+1))/4`
-/

namespace A199772.P6813675576835357614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199774 (n + 3) - A199773 (n + 1) : ℚ) / 4

end

end A199772.P6813675576835357614

/-! ## A199772.P6180131122229451792

`A199798(n+3)%A199774(n+3)`
-/

namespace A199772.P6180131122229451792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199798 (n + 3)) (A199774 (n + 3))

end

end A199772.P6180131122229451792

/-! ## A199772.P8557090405032160472

`A199773(n+4)%A199774(n+3)/4`
-/

namespace A199772.P8557090405032160472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A199773 (n + 4)) (A199774 (n + 3)) : ℚ) / 4

end

end A199772.P8557090405032160472

/-!
# A199773: y-values in the solution to 17*x^2 - 16 = y^2.

The programs for A199773, there is no canonical definition to state claims against.
-/

/-! ## A199773.P14829261421773542697

`A199774(n+3)-4*A199772(n+1)`
-/

namespace A199773.P14829261421773542697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199774 (n + 3) - 4 * A199772 (n + 1)

end

end A199773.P14829261421773542697

/-! ## A199773.P17314915097512008108

`A199798(n+6)%A199798(n+3)/8`
-/

namespace A199773.P17314915097512008108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A199798 (n + 6)) (A199798 (n + 3)) : ℚ) / 8

end

end A199773.P17314915097512008108

/-!
# A199774: x-values in the solution to 17*x^2 + 16 = y^2.

The programs for A199774, the canonical program `A199774.P1828747593809432190` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199774 has offset 1).

The definition of A199774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199774.P1828747593809432190

`66*a(n-3)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=32, a(4)=203, a(5)=333`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199774

/-- `66*a(n-3)-a(n-6)` -/
def P1828747593809432190.Spec : Prop :=
  ∀ n, P1828747593809432190.a n = A199774 (n + 1)

theorem P1828747593809432190.correct : P1828747593809432190.Spec := by
  intro n
  simp only [A199774, Nat.add_sub_cancel]

end A199774

/-! ## A199774.P8698415898831861869

`(A199772(n+2)-A199798(n+1))/4`
-/

namespace A199774.P8698415898831861869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199772 (n + 2) - A199798 (n + 1) : ℚ) / 4

end

end A199774.P8698415898831861869

namespace A199774

/-- `(A199772(n+2)-A199798(n+1))/4` -/
def P8698415898831861869.Spec : Prop :=
  ∀ n, P8698415898831861869.a n = (A199774 (n + 1) : ℚ)

end A199774

/-! ## A199774.P12605207127045637891

`A199773(n+2)%A199772(n+2)`
-/

namespace A199774.P12605207127045637891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199773 (n + 2)) (A199772 (n + 2))

end

end A199774.P12605207127045637891

namespace A199774

/-- `A199773(n+2)%A199772(n+2)` -/
def P12605207127045637891.Spec : Prop :=
  ∀ n, P12605207127045637891.a n = A199774 (n + 1)

end A199774

/-! ## A199774.P7786934330038050514

`A199772(n+5)%A199772(n+2)/8`
-/

namespace A199774.P7786934330038050514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A199772 (n + 5)) (A199772 (n + 2)) : ℚ) / 8

end

end A199774.P7786934330038050514

namespace A199774

/-- `A199772(n+5)%A199772(n+2)/8` -/
def P7786934330038050514.Spec : Prop :=
  ∀ n, P7786934330038050514.a n = (A199774 (n + 1) : ℚ)

end A199774

/-!
# A199798: y-values in the solution to 17*x^2 + 16 = y^2.

The programs for A199798, there is no canonical definition to state claims against.
-/

/-! ## A199798.P10190133473889299132

`A199772(n+2)-4*A199774(n+1)`
-/

namespace A199798.P10190133473889299132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199772 (n + 2) - 4 * A199774 (n + 1)

end

end A199798.P10190133473889299132

/-!
# A199799: Totatives of 111111.

The programs for A199799, the canonical program `A199799.P11622776229895565109` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199799 has offset 1).

The definition of A199799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199799.P11622776229895565109

`eq[1, gcd(n, A154549(n+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199799

/-- `eq[1, gcd(n, A154549(n+1))]` -/
def P11622776229895565109.Spec : Prop :=
  ∀ n, (P11622776229895565109.a n : ℤ) = A199799 (n + 1)

theorem P11622776229895565109.correct : P11622776229895565109.Spec := by
  intro n
  simp only [A199799, Nat.add_sub_cancel]

end A199799

/-! ## A199799.P10917293242086479774

`eq[A141323(n), A144610(n)]`
-/

namespace A199799.P10917293242086479774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141323 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199799.P10917293242086479774

namespace A199799

/-- `eq[A141323(n), A144610(n)]` -/
def P10917293242086479774.Spec : Prop :=
  ∀ n, (P10917293242086479774.a n : ℤ) = A199799 (n + 1)

end A199799

/-! ## A199799.P11826221672441128973

`eq[A141323(n), A188068(n+1)]`
-/

namespace A199799.P11826221672441128973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141323 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199799.P11826221672441128973

namespace A199799

/-- `eq[A141323(n), A188068(n+1)]` -/
def P11826221672441128973.Spec : Prop :=
  ∀ n, (P11826221672441128973.a n : ℤ) = A199799 (n + 1)

end A199799

/-! ## A199799.P10322849475028337179

`A326926(A000217(n))+A010462(n+1)`
-/

namespace A199799.P10322849475028337179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326926 (A000217 n).toNat + A010462 (n + 1)

end

end A199799.P10322849475028337179

namespace A199799

/-- `A326926(A000217(n))+A010462(n+1)` -/
def P10322849475028337179.Spec : Prop :=
  ∀ n, P10322849475028337179.a n = A199799 (n + 1)

end A199799

