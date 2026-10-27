import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A377401: a(n) = denominator((1/n!)*Sum_{k=1..n} 1/(2*k)).

The programs for A377401, there is no canonical definition to state claims against.
-/

/-! ## A377401.P12884062036792062802

`A180098(a(n-1)+1)` with `a(0)=1, a(1)=2`
-/

namespace A377401.P12884062036792062802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A180098 (a (n - 1) + 1).toNat

end

end A377401.P12884062036792062802

/-! ## A377401.P1650362615480675718

`A000010(A297708(2*n)+n)`
-/

namespace A377401.P1650362615480675718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A297708 (2 * n) + (n : ℤ)).toNat

end

end A377401.P1650362615480675718

/-!
# A377402: Least k such that the ratio of the number of residues mod k coprime to k and the number of primitive roots mod k is greater than or equal to n for k such that at least one primitive root mod k exists. Equivalently, k such that floor(phi(k)/phi(phi(k)) is a record value for those k belonging to A033948.

The programs for A377402, there is no canonical definition to state claims against.
-/

/-! ## A377402.P14444324975528859660

`A289125(A327353(n)+n)`
-/

namespace A377402.P14444324975528859660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289125 (A327353 n + (n : ℤ)).toNat

end

end A377402.P14444324975528859660

/-!
# A377403: For n >= 2, a(n) is the number of iterations needed for the map: x -> x / A085392(x) if A085392(x) > 1, otherwise x -> x + A151800(x), to (the first occurrence of) 2.

The programs for A377403, there is no canonical definition to state claims against.
-/

/-! ## A377403.P9840806806733876754

`A023506(A056550(n+1))+A010673(n)`
-/

namespace A377403.P9840806806733876754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (A056550 (n + 1)).toNat + A010673 n

end

end A377403.P9840806806733876754

/-! ## A377403.P12800114772793598658

`A070940(n+4)-A357638(A206692(n+5))`
-/

namespace A377403.P12800114772793598658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (n + 4) - A357638 (A206692 (n + 5)).toNat

end

end A377403.P12800114772793598658

/-!
# A377404: In the binary expansion of n, replace the first, third, fifth, etc. 1's by 0's.

The programs for A377404, the canonical program `A377404.P15784403255783113757` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377404 has offset 0).

The definition of A377404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377404.P15784403255783113757

`n-A265263(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A377404

/-- `n-A265263(n)` -/
def P15784403255783113757.Spec : Prop :=
  ∀ n, P15784403255783113757.a n = A377404 n

theorem P15784403255783113757.correct : P15784403255783113757.Spec := by
  intro n
  simp only [A377404]

end A377404

/-! ## A377404.P5659791151454282384

`and(n, A038558(n))`
-/

namespace A377404.P5659791151454282384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A038558 n)

end

end A377404.P5659791151454282384

namespace A377404

/-- `and(n, A038558(n))` -/
def P5659791151454282384.Spec : Prop :=
  ∀ n, P5659791151454282384.a n = A377404 n

end A377404

/-! ## A377404.P16289234613974848183

`and(n, A292600(n))`
-/

namespace A377404.P16289234613974848183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A292600 n)

end

end A377404.P16289234613974848183

namespace A377404

/-- `and(n, A292600(n))` -/
def P16289234613974848183.Spec : Prop :=
  ∀ n, P16289234613974848183.a n = A377404 n

end A377404

/-! ## A377404.P4103763396768953710

`n-and(n, A006068(n))`
-/

namespace A377404.P4103763396768953710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A006068 n)

end

end A377404.P4103763396768953710

namespace A377404

/-- `n-and(n, A006068(n))` -/
def P4103763396768953710.Spec : Prop :=
  ∀ n, P4103763396768953710.a n = A377404 n

end A377404

/-! ## A377404.P3749390905150795757

`and(n, n-A292601(n))`
-/

namespace A377404.P3749390905150795757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A292601 n)

end

end A377404.P3749390905150795757

namespace A377404

/-- `and(n, n-A292601(n))` -/
def P3749390905150795757.Spec : Prop :=
  ∀ n, P3749390905150795757.a n = A377404 n

end A377404

/-! ## A377404.P4371430133083757865

`A004526(A292601(n))`
-/

namespace A377404.P4371430133083757865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292601 n).toNat

end

end A377404.P4371430133083757865

namespace A377404

/-- `A004526(A292601(n))` -/
def P4371430133083757865.Spec : Prop :=
  ∀ n, P4371430133083757865.a n = A377404 n

end A377404

/-! ## A377404.P13529813075874479719

`A292944(A233279(n))`
-/

namespace A377404.P13529813075874479719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (A233279 n).toNat

end

end A377404.P13529813075874479719

namespace A377404

/-- `A292944(A233279(n))` -/
def P13529813075874479719.Spec : Prop :=
  ∀ n, P13529813075874479719.a n = A377404 n

end A377404

/-! ## A377404.P18039238740926974875

`A004526(n-A292600(n))`
-/

namespace A377404.P18039238740926974875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A292600 n).toNat

end

end A377404.P18039238740926974875

namespace A377404

/-- `A004526(n-A292600(n))` -/
def P18039238740926974875.Spec : Prop :=
  ∀ n, P18039238740926974875.a n = A377404 n

end A377404

/-! ## A377404.P10513905526107054256

`n-A292272(A006068(n))`
-/

namespace A377404.P10513905526107054256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292272 (A006068 n).toNat

end

end A377404.P10513905526107054256

namespace A377404

/-- `n-A292272(A006068(n))` -/
def P10513905526107054256.Spec : Prop :=
  ∀ n, P10513905526107054256.a n = A377404 n

end A377404

/-! ## A377404.P13491117243223435111

`A286548(n-A292600(n))`
-/

namespace A377404.P13491117243223435111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 ((n : ℤ) - A292600 n).toNat

end

end A377404.P13491117243223435111

namespace A377404

/-- `A286548(n-A292600(n))` -/
def P13491117243223435111.Spec : Prop :=
  ∀ n, P13491117243223435111.a n = A377404 n

end A377404

/-! ## A377404.P11631222344931487387

`A286548(A292601(2*n-n))`
-/

namespace A377404.P11631222344931487387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A292601 (2 * n - n)).toNat

end

end A377404.P11631222344931487387

namespace A377404

/-- `A286548(A292601(2*n-n))` -/
def P11631222344931487387.Spec : Prop :=
  ∀ n, P11631222344931487387.a n = A377404 n

end A377404

/-! ## A377404.P12227087023985994337

`and(A005843(n), A006068(n))/2`
-/

namespace A377404.P12227087023985994337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A005843 n) (A006068 n) : ℚ) / 2

end

end A377404.P12227087023985994337

namespace A377404

/-- `and(A005843(n), A006068(n))/2` -/
def P12227087023985994337.Spec : Prop :=
  ∀ n, P12227087023985994337.a n = (A377404 n : ℚ)

end A377404

/-! ## A377404.P5142331914811202398

`A004526(n-A006068(A004526(n)))`
-/

namespace A377404.P5142331914811202398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A006068 (A004526 n).toNat).toNat

end

end A377404.P5142331914811202398

namespace A377404

/-- `A004526(n-A006068(A004526(n)))` -/
def P5142331914811202398.Spec : Prop :=
  ∀ n, P5142331914811202398.a n = A377404 n

end A377404

/-! ## A377404.P15978261792747171647

`A286548(A286548(n-A286546(n)))`
-/

namespace A377404.P15978261792747171647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A286548 ((n : ℤ) - A286546 n).toNat).toNat

end

end A377404.P15978261792747171647

namespace A377404

/-- `A286548(A286548(n-A286546(n)))` -/
def P15978261792747171647.Spec : Prop :=
  ∀ n, P15978261792747171647.a n = A377404 n

end A377404

/-! ## A377404.P11812150289179296480

`n-and(n, A371944(n))`
-/

namespace A377404.P11812150289179296480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A371944 n)

end

end A377404.P11812150289179296480

namespace A377404

/-- `n-and(n, A371944(n))` -/
def P11812150289179296480.Spec : Prop :=
  ∀ n, P11812150289179296480.a n = A377404 n

end A377404

/-! ## A377404.P10683477638075991833

`A229762(A006068(n))`
-/

namespace A377404.P10683477638075991833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229762 (A006068 n).toNat

end

end A377404.P10683477638075991833

namespace A377404

/-- `A229762(A006068(n))` -/
def P10683477638075991833.Spec : Prop :=
  ∀ n, P10683477638075991833.a n = A377404 n

end A377404

/-! ## A377404.P11532528498939523200

`A292944(A038558(n))`
-/

namespace A377404.P11532528498939523200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (A038558 n).toNat

end

end A377404.P11532528498939523200

namespace A377404

/-- `A292944(A038558(n))` -/
def P11532528498939523200.Spec : Prop :=
  ∀ n, P11532528498939523200.a n = A377404 n

end A377404

/-! ## A377404.P8640732038854678943

`A341691(n)-A246160(n)`
-/

namespace A377404.P8640732038854678943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341691 n - A246160 n

end

end A377404.P8640732038854678943

namespace A377404

/-- `A341691(n)-A246160(n)` -/
def P8640732038854678943.Spec : Prop :=
  ∀ n, P8640732038854678943.a n = A377404 n

end A377404

/-! ## A377404.P1063540726971151261

`A286548(A292601(2*n))/2`
-/

namespace A377404.P1063540726971151261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286548 (A292601 (2 * n)).toNat : ℚ) / 2

end

end A377404.P1063540726971151261

namespace A377404

/-- `A286548(A292601(2*n))/2` -/
def P1063540726971151261.Spec : Prop :=
  ∀ n, P1063540726971151261.a n = (A377404 n : ℚ)

end A377404

/-! ## A377404.P13866966108588608700

`A286548(A286548(A292601(2*n)))`
-/

namespace A377404.P13866966108588608700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A286548 (A292601 (2 * n)).toNat).toNat

end

end A377404.P13866966108588608700

namespace A377404

/-- `A286548(A286548(A292601(2*n)))` -/
def P13866966108588608700.Spec : Prop :=
  ∀ n, P13866966108588608700.a n = A377404 n

end A377404

/-!
# A377406: Primes which are sums of a prime triple (p, p+4, p+6).

The programs for A377406, there is no canonical definition to state claims against.
-/

/-! ## A377406.P2001131630394608904

`filter[A309354(n+1), A070563(#)]`
-/

namespace A377406.P2001131630394608904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A377406.P2001131630394608904

/-! ## A377406.P4789897870598623493

`filter[A309354(n+1), A135461(#)]`
-/

namespace A377406.P4789897870598623493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A377406.P4789897870598623493

/-! ## A377406.P6261728044254747256

`filter[A309354(n+1), A319691(#)]`
-/

namespace A377406.P6261728044254747256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A377406.P6261728044254747256

/-! ## A377406.P10515063100676034969

`filter[A309354(n+1), A353815(#)]`
-/

namespace A377406.P10515063100676034969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A377406.P10515063100676034969

/-! ## A377406.P389055247573881598

`filter[A309354(n+1), A353816(#)]`
-/

namespace A377406.P389055247573881598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A377406.P389055247573881598

/-!
# A377407: Lexicographically earliest sequence of nonnegative integers such that the alternating sums of consecutive terms are all distinct.

The programs for A377407, there is no canonical definition to state claims against.
-/

/-! ## A377407.P10495896444823665568

`∑[∑[A006694(A077372(n+1))]]`
-/

namespace A377407.P10495896444823665568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A077372 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377407.P10495896444823665568

/-! ## A377407.P7716417816495222205

`A000196(A004250(2*n+1)*A005555(n))`
-/

namespace A377407.P7716417816495222205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004250 (2 * n + 1) * A005555 n).toNat

end

end A377407.P7716417816495222205

/-! ## A377407.P16482990269414955148

`A000196(A004250(2*n+1)*A187829(n+1))`
-/

namespace A377407.P16482990269414955148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004250 (2 * n + 1) * A187829 (n + 1)).toNat

end

end A377407.P16482990269414955148

/-! ## A377407.P13618842865315857092

`∑[round(log2(A229048(n+1)))]`
-/

namespace A377407.P13618842865315857092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A229048 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377407.P13618842865315857092

/-! ## A377407.P13651871171960947196

`∑[record[A071838(A175105(2*(n+2)))]]`
-/

namespace A377407.P13651871171960947196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A175105 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377407.P13651871171960947196

/-!
# A377408: Number of unlabeled semidistributive lattices with n elements.

The programs for A377408, there is no canonical definition to state claims against.
-/

/-! ## A377408.P6988260500272208945

`A292790(n+1)+char[13]`
-/

namespace A377408.P6988260500272208945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292790 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A377408.P6988260500272208945

/-! ## A377408.P12711073435438888111

`A362425(n)+A292790(n+1)`
-/

namespace A377408.P12711073435438888111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n + A292790 (n + 1)

end

end A377408.P12711073435438888111

/-! ## A377408.P16732574591080373815

`A326445(A029931(n))+A292790(n+1)`
-/

namespace A377408.P16732574591080373815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326445 (A029931 n).toNat + A292790 (n + 1)

end

end A377408.P16732574591080373815

/-! ## A377408.P13557297865038681237

`A375405(A072000(n+1))+A292790(n+1)`
-/

namespace A377408.P13557297865038681237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375405 (A072000 (n + 1)).toNat + A292790 (n + 1)

end

end A377408.P13557297865038681237

/-! ## A377408.P12129433672065869147

`A352516(A117371(n+1))+A292790(n+1)`
-/

namespace A377408.P12129433672065869147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A117371 (n + 1)).toNat + A292790 (n + 1)

end

end A377408.P12129433672065869147

/-!
# A377409: Number of unlabeled join-semidistributive lattices with n elements.

The programs for A377409, there is no canonical definition to state claims against.
-/

/-! ## A377409.P3985099721153440130

`A086425(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A377409.P3985099721153440130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A086425 (a (n - 1)).toNat + 1

end

end A377409.P3985099721153440130

/-! ## A377409.P14753181506529594656

`A122298(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A377409.P14753181506529594656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A122298 (a (n - 1)).toNat + 1

end

end A377409.P14753181506529594656

/-! ## A377409.P6549146238208577720

`A122357(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A377409.P6549146238208577720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A122357 (a (n - 1)).toNat + 1

end

end A377409.P6549146238208577720

/-! ## A377409.P12453828891939649877

`A082852(A143546(n)*A351653(n+1))`
-/

namespace A377409.P12453828891939649877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 (A143546 n * A351653 (n + 1)).toNat

end

end A377409.P12453828891939649877

/-!
# A377410: Maximum sum of a subset of {1..n} such that every pair of distinct elements has a different difference.

The programs for A377410, there is no canonical definition to state claims against.
-/

/-! ## A377410.P13696877589737032836

`eq[A057427(n), A359359(A227551(n))]`
-/

namespace A377410.P13696877589737032836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359359 (A227551 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377410.P13696877589737032836

/-! ## A377410.P11668700865139469881

`eq[A019590(A001597(n+1)), A227551(n)]`
-/

namespace A377410.P11668700865139469881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A001597 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377410.P11668700865139469881

/-! ## A377410.P9127101474613073719

`eq[A227551(n), A323239(A256691(n+1))]`
-/

namespace A377410.P9127101474613073719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A256691 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377410.P9127101474613073719

/-! ## A377410.P17307114476745549604

`∑[∑[A258825(A340112(2*n+3))]]`
-/

namespace A377410.P17307114476745549604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258825 (A340112 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377410.P17307114476745549604

/-! ## A377410.P17806347403102467677

`eq[A151909(n), A227551(n)]`
-/

namespace A377410.P17806347403102467677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377410.P17806347403102467677

/-!
# A377413: a(n) is the least term of A126684 of the form k*n with k > 0.

The programs for A377413, there is no canonical definition to state claims against.
-/

/-! ## A377413.P10404109582324414674

`A377412(n)*n`
-/

namespace A377413.P10404109582324414674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377412 n * (n : ℤ)

end

end A377413.P10404109582324414674

/-!
# A377414: a(n) is the largest term of A126684, say b, such that n AND b = b (where AND denotes the bitwise AND operator).

The programs for A377414, the canonical program `A377414.P9376123289896213115` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377414 has offset 0).

The definition of A377414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377414.P9379103887139197983

`n-A377415(n)`
-/

namespace A377414.P9379103887139197983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A377415 n

end

end A377414.P9379103887139197983

namespace A377414

/-- `n-A377415(n)` -/
def P9379103887139197983.Spec : Prop :=
  ∀ n, P9379103887139197983.a n = A377414 n

theorem P9379103887139197983.correct : P9379103887139197983.Spec := by
  intro n
  simp only [A377414, Nat.add_sub_cancel, A377414.P9379103887139197983.a, A377414.P9376123289896213115.a, A002264, A002264.P5647656940077635922.a, A377415, A377415.P2443321957255259376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A377414

/-! ## A377414.P9376123289896213115

`and(n, xor(n, A002264(2^ceil(log2(n+1)))))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377414

/-- `and(n, xor(n, A002264(2^ceil(log2(n+1)))))` -/
def P9376123289896213115.Spec : Prop :=
  ∀ n, P9376123289896213115.a n = A377414 n

theorem P9376123289896213115.correct : P9376123289896213115.Spec := by
  intro n
  simp only [A377414]

end A377414

/-! ## A377414.P5083798550082927345

`and(n, A375184(A375183(n)))`
-/

namespace A377414.P5083798550082927345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A375184 (A375183 n).toNat)

end

end A377414.P5083798550082927345

namespace A377414

/-- `and(n, A375184(A375183(n)))` -/
def P5083798550082927345.Spec : Prop :=
  ∀ n, P5083798550082927345.a n = A377414 n

end A377414

/-! ## A377414.P13656138676950105006

`xor(2*n, A375183(2*n))`
-/

namespace A377414.P13656138676950105006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A375183 (2 * n))

end

end A377414.P13656138676950105006

namespace A377414

/-- `xor(2*n, A375183(2*n))` -/
def P13656138676950105006.Spec : Prop :=
  ∀ n, P13656138676950105006.a n = A377414 n

end A377414

/-! ## A377414.P12371664343282156378

`A377415(A004760(n+2))`
-/

namespace A377414.P12371664343282156378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377415 (A004760 (n + 2)).toNat

end

end A377414.P12371664343282156378

namespace A377414

/-- `A377415(A004760(n+2))` -/
def P12371664343282156378.Spec : Prop :=
  ∀ n, P12371664343282156378.a n = A377414 n

end A377414

/-! ## A377414.P3457159661194030107

`and(n, A165199(n))`
-/

namespace A377414.P3457159661194030107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A165199 n)

end

end A377414.P3457159661194030107

namespace A377414

/-- `and(n, A165199(n))` -/
def P3457159661194030107.Spec : Prop :=
  ∀ n, P3457159661194030107.a n = A377414 n

end A377414

/-! ## A377414.P4024654676752176963

`A165199(or(n, A165199(n)))`
-/

namespace A377414.P4024654676752176963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (Int.lor (n : ℤ) (A165199 n)).toNat

end

end A377414.P4024654676752176963

namespace A377414

/-- `A165199(or(n, A165199(n)))` -/
def P4024654676752176963.Spec : Prop :=
  ∀ n, P4024654676752176963.a n = A377414 n

end A377414

/-!
# A377415: a(n) = n - A377414(n).

The programs for A377415, the canonical program `A377415.P2443321957255259376` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377415 has offset 0).

The definition of A377415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377415.P2443321957255259376

`n-A377414(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A377415

/-- `n-A377414(n)` -/
def P2443321957255259376.Spec : Prop :=
  ∀ n, P2443321957255259376.a n = A377415 n

theorem P2443321957255259376.correct : P2443321957255259376.Spec := by
  intro n
  simp only [A377415]

end A377415

/-! ## A377415.P17920541082951858253

`and(n, floor(2^ceil(log2(n+1))/3))`
-/

namespace A377415.P17920541082951858253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊(2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) / 3⌋

end

end A377415.P17920541082951858253

namespace A377415

/-- `and(n, floor(2^ceil(log2(n+1))/3))` -/
def P17920541082951858253.Spec : Prop :=
  ∀ n, P17920541082951858253.a n = A377415 n

end A377415

/-! ## A377415.P14051476434656924175

`A377414(xor(n, A377414(n)))`
-/

namespace A377415.P14051476434656924175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377414 (Int.xor (n : ℤ) (A377414 n)).toNat

end

end A377415.P14051476434656924175

namespace A377415

/-- `A377414(xor(n, A377414(n)))` -/
def P14051476434656924175.Spec : Prop :=
  ∀ n, P14051476434656924175.a n = A377415 n

end A377415

/-! ## A377415.P6785575512949613598

`n-and(n, A375184(A375183(n)))`
-/

namespace A377415.P6785575512949613598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A375184 (A375183 n).toNat)

end

end A377415.P6785575512949613598

namespace A377415

/-- `n-and(n, A375184(A375183(n)))` -/
def P6785575512949613598.Spec : Prop :=
  ∀ n, P6785575512949613598.a n = A377415 n

end A377415

/-! ## A377415.P10454388342096515418

`n-and(n, A165199(n))`
-/

namespace A377415.P10454388342096515418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A165199 n)

end

end A377415.P10454388342096515418

namespace A377415

/-- `n-and(n, A165199(n))` -/
def P10454388342096515418.Spec : Prop :=
  ∀ n, P10454388342096515418.a n = A377415 n

end A377415

/-!
# A377421: Numbers whose binary reversal is prime and unequal to the original number.

The programs for A377421, the canonical program `A377421.P16177160434784500960` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377421 has offset 1).

The definition of A377421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377421.P16177160434784500960

`filter[A204232(n+1), A178226(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A377421

/-- `filter[A204232(n+1), A178226(#)]` -/
def P16177160434784500960.Spec : Prop :=
  ∀ n, P16177160434784500960.a n = A377421 (n + 1)

theorem P16177160434784500960.correct : P16177160434784500960.Spec := by
  intro n
  simp only [A377421, Nat.add_sub_cancel]

end A377421

/-! ## A377421.P6853954638102462882

`∩[A154809(n+1), A204232(n+1)]`
-/

namespace A377421.P6853954638102462882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377421.P6853954638102462882

namespace A377421

/-- `∩[A154809(n+1), A204232(n+1)]` -/
def P6853954638102462882.Spec : Prop :=
  ∀ n, (P6853954638102462882.a n : ℤ) = A377421 (n + 1)

end A377421

/-!
# A377423: Distinct values of the number of integers between consecutive self numbers (A163139), in order of occurrence.

The programs for A377423, there is no canonical definition to state claims against.
-/

/-! ## A377423.P6908272188692739647

`A377473(n+1)-1`
-/

namespace A377423.P6908272188692739647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377473 (n + 1) - 1

end

end A377423.P6908272188692739647

/-! ## A377423.P10874004713553272192

`A023443(A377473(n+1))`
-/

namespace A377423.P10874004713553272192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A377473 (n + 1)).toNat

end

end A377423.P10874004713553272192

/-! ## A377423.P3980464636662362677

`A087061(C(A377473(n+1), 2))`
-/

namespace A377423.P3980464636662362677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (Nat.choose (A377473 (n + 1)).toNat 2)

end

end A377423.P3980464636662362677

/-!
# A377430: Numbers k such that there is exactly one squarefree number between prime(k)+1 and prime(k+1)-1.

The programs for A377430, the canonical program `A377430.P4255043940740327153` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377430 has offset 1).

The definition of A377430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377430.P16153547186736038199

`eq[1, A061398(n+1)]+1`
-/

namespace A377430.P16153547186736038199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377430.P16153547186736038199

namespace A377430

/-- `eq[1, A061398(n+1)]+1` -/
def P16153547186736038199.Spec : Prop :=
  ∀ n, (P16153547186736038199.a n : ℤ) = A377430 (n + 1)

end A377430

/-! ## A377430.P17124401987261441268

`eq[2, A373198(n+1)]+1`
-/

namespace A377430.P17124401987261441268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377430.P17124401987261441268

namespace A377430

/-- `eq[2, A373198(n+1)]+1` -/
def P17124401987261441268.Spec : Prop :=
  ∀ n, (P17124401987261441268.a n : ℤ) = A377430 (n + 1)

theorem P17124401987261441268.correct : P17124401987261441268.Spec := by
  intro n
  simp only [A377430, Nat.add_sub_cancel, A377430.P17124401987261441268.f1, A377430.P17124401987261441268.f2, A377430.P17124401987261441268.a, A377430.P4255043940740327153.f1, A377430.P4255043940740327153.f3, A377430.P4255043940740327153.f2, A377430.P4255043940740327153.a, A112930, A112930.P7126053726691172401.a, A373198, A373198.P11417829531777717316.a, A061398, A061398.P14693318756630178419.a, A112929, A112929.P128816744454326581.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A377430

/-! ## A377430.P4255043940740327153

`eq[2, Δ[A112930(n+1)]]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A377430

/-- `eq[2, Δ[A112930(n+1)]]+1` -/
def P4255043940740327153.Spec : Prop :=
  ∀ n, (P4255043940740327153.a n : ℤ) = A377430 (n + 1)

theorem P4255043940740327153.correct : P4255043940740327153.Spec := by
  intro n
  simp only [A377430, Nat.add_sub_cancel]

end A377430

/-! ## A377430.P6979995372864453477

`eq[1, A061398(A028310(n))]`
-/

namespace A377430.P6979995372864453477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377430.P6979995372864453477

namespace A377430

/-- `eq[1, A061398(A028310(n))]` -/
def P6979995372864453477.Spec : Prop :=
  ∀ n, (P6979995372864453477.a n : ℤ) = A377430 (n + 1)

end A377430

/-! ## A377430.P468006430427730483

`A009056(eq[1, A061398(n+2)])`
-/

namespace A377430.P468006430427730483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377430.P468006430427730483

namespace A377430

/-- `A009056(eq[1, A061398(n+2)])` -/
def P468006430427730483.Spec : Prop :=
  ∀ n, P468006430427730483.a n = A377430 (n + 1)

end A377430

/-! ## A377430.P3827265075214851200

`lt[A132881(A061398(n+1)+1), 1]+1`
-/

namespace A377430.P3827265075214851200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (A061398 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A377430.P3827265075214851200

namespace A377430

/-- `lt[A132881(A061398(n+1)+1), 1]+1` -/
def P3827265075214851200.Spec : Prop :=
  ∀ n, (P3827265075214851200.a n : ℤ) = A377430 (n + 1)

end A377430

/-!
# A377431: Numbers k such that there is at least one squarefree number between prime(k)+1 and prime(k+1)-1.

The programs for A377431, there is no canonical definition to state claims against.
-/

/-! ## A377431.P12640952481831404068

`lt[0, A061398(n+1)]+1`
-/

namespace A377431.P12640952481831404068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377431.P12640952481831404068

/-! ## A377431.P11415653081231330914

`lt[1, A373198(n+1)]+1`
-/

namespace A377431.P11415653081231330914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377431.P11415653081231330914

/-! ## A377431.P2921699640337419373

`comp[A068360(n+1)-1]+1`
-/

namespace A377431.P2921699640337419373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377431.P2921699640337419373

/-! ## A377431.P13019776628158014614

`lt[0, A061398(A028310(n))]`
-/

namespace A377431.P13019776628158014614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377431.P13019776628158014614

/-! ## A377431.P304469975256008404

`lt[1, A033273(A112925(n+1))]`
-/

namespace A377431.P304469975256008404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A112925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377431.P304469975256008404

/-! ## A377431.P13872614547248828887

`lt[A057427(3*n+2), A342085(A112925(n+1))]`
-/

namespace A377431.P13872614547248828887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (A112925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377431.P13872614547248828887

/-!
# A377432: Number of perfect-powers x in the range prime(n) < x < prime(n+1).

The programs for A377432, there is no canonical definition to state claims against.
-/

/-! ## A377432.P10053525037099587859

`Δ[A069623(Δ[A007504(n)])]`
-/

namespace A377432.P10053525037099587859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377432.P10053525037099587859

/-! ## A377432.P11466029175142802951

`Δ[A076411(Δ[A007504(n)])]`
-/

namespace A377432.P11466029175142802951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377432.P11466029175142802951

/-! ## A377432.P17534801191395705155

`Δ[A069623(A000040(n+1))]`
-/

namespace A377432.P17534801191395705155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377432.P17534801191395705155

/-! ## A377432.P1687280047118329478

`Δ[A069623(A006093(n+1))]`
-/

namespace A377432.P1687280047118329478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377432.P1687280047118329478

/-! ## A377432.P11840044289362909149

`Δ[A076411(A008864(n+1))]`
-/

namespace A377432.P11840044289362909149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377432.P11840044289362909149

/-! ## A377432.P6518875634264886669

`Δ[A069623(record[A039649(n+1)])]`
-/

namespace A377432.P6518875634264886669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377432.P6518875634264886669

/-! ## A377432.P5781085606059297737

`Δ[A076411(record[A020639(n+2)])]`
-/

namespace A377432.P5781085606059297737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377432.P5781085606059297737

/-! ## A377432.P9180961573037399799

`Δ[A076411(A000040(n+1)+1)]`
-/

namespace A377432.P9180961573037399799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377432.P9180961573037399799

/-! ## A377432.P3928828319678107583

`A046933(n+1)-A377433(n+1)`
-/

namespace A377432.P3928828319678107583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - A377433 (n + 1)

end

end A377432.P3928828319678107583

/-! ## A377432.P15007754671627656987

`A065890(n+2)-(A377433(n+1)+A065890(n+1))`
-/

namespace A377432.P15007754671627656987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 2) - (A377433 (n + 1) + A065890 (n + 1))

end

end A377432.P15007754671627656987

/-!
# A377433: Number of non-perfect-powers x in the range prime(n) < x < prime(n+1).

The programs for A377433, there is no canonical definition to state claims against.
-/

/-! ## A377433.P11631170929459192273

`Δ[A279984(n+1)]-1`
-/

namespace A377433.P11631170929459192273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A377433.P11631170929459192273

/-! ## A377433.P10465901272563439521

`Δ[A278029(p?[A259153(n)])]-1`
-/

namespace A377433.P10465901272563439521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A377433.P10465901272563439521

/-! ## A377433.P5044792454575529249

`A046933(n+1)-A377432(n+1)`
-/

namespace A377433.P5044792454575529249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - A377432 (n + 1)

end

end A377433.P5044792454575529249

/-! ## A377433.P3129324316086267104

`A057428(n+1)+Δ[A279984(n+1)]`
-/

namespace A377433.P3129324316086267104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (f1 (n + 1) - f1 n)

end

end A377433.P3129324316086267104

/-! ## A377433.P4927632458833654701

`Δ[A014689(n+1)]-A377432(n+1)`
-/

namespace A377433.P4927632458833654701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A377432 (n + 1)

end

end A377433.P4927632458833654701

/-! ## A377433.P905285678296001596

`A001223(n+1)-(A377432(n+1)+1)`
-/

namespace A377433.P905285678296001596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (A377432 (n + 1) + 1)

end

end A377433.P905285678296001596

/-! ## A377433.P12765569762896674950

`sqrt(A076821(n+1))-(A377432(n+1)+1)`
-/

namespace A377433.P12765569762896674950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (n + 1) : ℝ) - (A377432 (n + 1) + 1 : ℝ)

end

end A377433.P12765569762896674950

/-! ## A377433.P18288250617056855822

`A065890(n+2)-(A377432(n+1)+A065890(n+1))`
-/

namespace A377433.P18288250617056855822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 2) - (A377432 (n + 1) + A065890 (n + 1))

end

end A377433.P18288250617056855822

/-! ## A377433.P698028796433720202

`Δ[A278029(A091276(n+1)+A091185(n+1))]-1`
-/

namespace A377433.P698028796433720202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A091276 (n + 1) + A091185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A377433.P698028796433720202

/-!
# A377434: Numbers k such that there is a unique perfect-power x in the range prime(k) < x < prime(k+1).

The programs for A377434, there is no canonical definition to state claims against.
-/

/-! ## A377434.P172075898677235551

`A000720(A379154(n+1))`
-/

namespace A377434.P172075898677235551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A379154 (n + 1)).toNat

end

end A377434.P172075898677235551

/-! ## A377434.P898821171305849408

`A156061(2*A379154(n+1))`
-/

namespace A377434.P898821171305849408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A379154 (n + 1)).toNat

end

end A377434.P898821171305849408

/-! ## A377434.P4538828215034202345

`A290103(2*A379154(n+1))`
-/

namespace A377434.P4538828215034202345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A379154 (n + 1)).toNat

end

end A377434.P4538828215034202345

/-! ## A377434.P8249740820066103194

`A003963(lcm(2, A379154(n+1)))`
-/

namespace A377434.P8249740820066103194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A379154 (n + 1)))

end

end A377434.P8249740820066103194

/-! ## A377434.P2889836283274578684

`A003963(or(1, A379154(n+1)))`
-/

namespace A377434.P2889836283274578684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A379154 (n + 1))).toNat

end

end A377434.P2889836283274578684

/-! ## A377434.P17493719299269164246

`∑{d}[A379154(n+1), A056239(#)]`
-/

namespace A377434.P17493719299269164246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A377434.P17493719299269164246

/-! ## A377434.P13961211887035783012

`A056239(A379154(n+1)%A033215(n+1))`
-/

namespace A377434.P13961211887035783012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A379154 (n + 1)) (A033215 (n + 1))).toNat

end

end A377434.P13961211887035783012

/-! ## A377434.P15643674078918843794

`A290103(A379154(n+1))%A033201(n+1)`
-/

namespace A377434.P15643674078918843794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A379154 (n + 1)).toNat) (A033201 (n + 1))

end

end A377434.P15643674078918843794

/-! ## A377434.P17938042395023468410

`A289508(A379154(n+1)/A289508(2*(n+1)))`
-/

namespace A377434.P17938042395023468410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A379154 (n + 1) : ℚ) / (A289508 (2 * (n + 1)) : ℚ))).toNat

end

end A377434.P17938042395023468410

/-!
# A377435: Number of perfect-powers x in the range 2^n <= x < 2^(n+1).

The programs for A377435, there is no canonical definition to state claims against.
-/

/-! ## A377435.P4528045039825721477

`A377467(n)+1-char[1]`
-/

namespace A377435.P4528045039825721477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377467 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A377435.P4528045039825721477

/-! ## A377435.P344590546545576471

`Δ[A188951(n)]`
-/

namespace A377435.P344590546545576471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377435.P344590546545576471

/-! ## A377435.P5152137761019011550

`Δ[A070228(char[1]+n)]`
-/

namespace A377435.P5152137761019011550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070228 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377435.P5152137761019011550

/-! ## A377435.P5138867249377901191

`A188951(n+1)-A188951(n)`
-/

namespace A377435.P5138867249377901191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188951 (n + 1) - A188951 n

end

end A377435.P5138867249377901191

/-! ## A377435.P190216562208872200

`Δ[A076411(2^n)]`
-/

namespace A377435.P190216562208872200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377435.P190216562208872200

/-!
# A377436: Numbers k such that there is no perfect-power x in the range prime(k) < x < prime(k+1).

The programs for A377436, there is no canonical definition to state claims against.
-/

/-! ## A377436.P6310576407576852682

`comp[A377283(n+1)]`
-/

namespace A377436.P6310576407576852682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377436.P6310576407576852682

/-! ## A377436.P10426767230118498156

`comp[A378356(n+1)-1]`
-/

namespace A377436.P10426767230118498156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378356 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377436.P10426767230118498156

/-! ## A377436.P15818108236564988901

`comp[A378365(n+1)-1]`
-/

namespace A377436.P15818108236564988901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378365 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377436.P15818108236564988901

/-! ## A377436.P12407238591395482882

`comp[∑[A080769(n+1)]-1]+1`
-/

namespace A377436.P12407238591395482882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080769 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377436.P12407238591395482882

/-! ## A377436.P14802093494123654963

`comp[∑[A378251(n+1)]-1]+1`
-/

namespace A377436.P14802093494123654963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377436.P14802093494123654963

/-! ## A377436.P18370791921404552685

`comp[A000720(∑[A076412(n)])]`
-/

namespace A377436.P18370791921404552685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377436.P18370791921404552685

/-! ## A377436.P15561186602334956289

`comp[A000720(A001597(n+1))]`
-/

namespace A377436.P15561186602334956289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001597 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377436.P15561186602334956289

/-! ## A377436.P8222853111212771818

`comp[A000720(A081676(n+1))]`
-/

namespace A377436.P8222853111212771818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A081676 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377436.P8222853111212771818

/-!
# A377437: Number of multiplication steps for n to reach 1 when iterating 5x+1 removing factors 2 and 3, or -1 if it never reaches 1.

The programs for A377437, there is no canonical definition to state claims against.
-/

/-! ## A377437.P17293264391537614233

`A052452(A006530(n+1))%A240233(n+1)`
-/

namespace A377437.P17293264391537614233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052452 (A006530 (n + 1)).toNat) (A240233 (n + 1))

end

end A377437.P17293264391537614233

/-!
# A377440: Lexicographically latest sequence of nonnegative integers such that for any n >= 0, A265263(n) = A265263(a(n)).

The programs for A377440, there is no canonical definition to state claims against.
-/

/-! ## A377440.P14338139674820008735

`A214417(n)+A025469(A175395(n))`
-/

namespace A377440.P14338139674820008735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214417 n + A025469 (A175395 n).toNat

end

end A377440.P14338139674820008735

/-! ## A377440.P12222834856129567922

`A367307(A303768(n)%A099709(n))`
-/

namespace A377440.P12222834856129567922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367307 (Int.tmod (A303768 n) (A099709 n)).toNat

end

end A377440.P12222834856129567922

/-!
# A377441: Square array T(n, k) read by rising antidiagonals. Row n has the ordinary generating function (-(n*x^3-(n+1)*x^2+x) + sqrt((n*x^3-(n+1)*x^2+x)^2 - 4*(x^3-x^2)*((n+1)*x^2-x)))/(2*(x^3-x^2)).

The programs for A377441, there is no canonical definition to state claims against.
-/

/-! ## A377441.P816381447025875465

`A341359(lcm(n, A335570(n)))`
-/

namespace A377441.P816381447025875465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341359 (Int.lcm (n : ℤ) (A335570 n))

end

end A377441.P816381447025875465

/-! ## A377441.P12491475776473429078

`A212619(A265656(n+1))+A125311(n)`
-/

namespace A377441.P12491475776473429078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A265656 (n + 1)).toNat + A125311 n

end

end A377441.P12491475776473429078

/-! ## A377441.P9591066222380980322

`A117517(A274859(n)%A332337(n+3))`
-/

namespace A377441.P9591066222380980322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117517 (Int.tmod (A274859 n) (A332337 (n + 3))).toNat

end

end A377441.P9591066222380980322

/-! ## A377441.P554087063182768668

`A275839(A259799(n+1)%A277317(n+1))`
-/

namespace A377441.P554087063182768668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275839 (Int.tmod (A259799 (n + 1)) (A277317 (n + 1))).toNat

end

end A377441.P554087063182768668

/-! ## A377441.P15913519984599952910

`A309522(n)/A351202(A265656(n+1))`
-/

namespace A377441.P15913519984599952910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309522 n : ℚ) / (A351202 (A265656 (n + 1)).toNat : ℚ)

end

end A377441.P15913519984599952910

/-!
# A377442: Square array read by rising antidiagonals: T(n, k) = A377441(-n, k), an extension of A377441 into the domain of negative n.

The programs for A377442, there is no canonical definition to state claims against.
-/

/-! ## A377442.P1483513235462826828

`A325877(A303696(n)%A132298(n+3))`
-/

namespace A377442.P1483513235462826828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325877 (Int.tmod (A303696 n) (A132298 (n + 3))).toNat

end

end A377442.P1483513235462826828

/-! ## A377442.P1937276022655886679

`A325877(A303696(n))%A362559(3*(n+1))`
-/

namespace A377442.P1937276022655886679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325877 (A303696 n).toNat) (A362559 (3 * (n + 1)))

end

end A377442.P1937276022655886679

/-! ## A377442.P318502633904625828

`A125311(n)-A212619(A045355(n+1))`
-/

namespace A377442.P318502633904625828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 n - A212619 (A045355 (n + 1)).toNat

end

end A377442.P318502633904625828

/-! ## A377442.P4491800175545208898

`A125311(n)-A212619(A007318(3*n+1))`
-/

namespace A377442.P4491800175545208898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 n - A212619 (A007318 (3 * n + 1)).toNat

end

end A377442.P4491800175545208898

/-!
# A377444: a(n) is the smallest integer k such that the Diophantine equation x^3 + y^3 + z^3 = k^3, where 0 < x <= y <= z has exactly n integer solutions.

The programs for A377444, there is no canonical definition to state claims against.
-/

/-! ## A377444.P10825657635916131276

`A346071(A001096(n+1))`
-/

namespace A377444.P10825657635916131276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346071 (A001096 (n + 1)).toNat

end

end A377444.P10825657635916131276

/-!
# A377445: E.g.f. satisfies A(x) = 1/(1 + A(x) * log(1 - x))^2.

The programs for A377445, there is no canonical definition to state claims against.
-/

/-! ## A377445.P4412623769576505113

`A006093(A052873(n)+n)`
-/

namespace A377445.P4412623769576505113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A052873 n + (n : ℤ)).toNat

end

end A377445.P4412623769576505113

/-!
# A377447: E.g.f. satisfies A(x) = 1/(1 + A(x)^3 * log(1 - x)).

The programs for A377447, there is no canonical definition to state claims against.
-/

/-! ## A377447.P15249780591600467975

`A007094(A113670(n))-A327610(n+1)`
-/

namespace A377447.P15249780591600467975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A113670 n).toNat - A327610 (n + 1)

end

end A377447.P15249780591600467975

/-!
# A377448: E.g.f. satisfies A(x) = 1/(1 + A(x)^4 * log(1 - x)).

The programs for A377448, there is no canonical definition to state claims against.
-/

/-! ## A377448.P11082301274857849111

`A377451(n)+A334996(A377451(n))`
-/

namespace A377448.P11082301274857849111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377451 n + A334996 (A377451 n).toNat

end

end A377448.P11082301274857849111

/-!
# A377450: E.g.f. satisfies A(x) = 1/(1 - A(x)^3 * (exp(x) - 1)).

The programs for A377450, there is no canonical definition to state claims against.
-/

/-! ## A377450.P3838322834883448771

`A003603(A000108(n)*A293574(n))`
-/

namespace A377450.P3838322834883448771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A000108 n * A293574 n).toNat

end

end A377450.P3838322834883448771

/-!
# A377451: E.g.f. satisfies A(x) = 1/(1 - A(x)^4 * (exp(x) - 1)).

The programs for A377451, there is no canonical definition to state claims against.
-/

/-! ## A377451.P12299209553761950774

`or(A272351(A060941(n)), A361143(n))`
-/

namespace A377451.P12299209553761950774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A272351 (A060941 n).toNat) (A361143 n)

end

end A377451.P12299209553761950774

/-!
# A377452: E.g.f. satisfies A(x) = 1/(1 - A(x) * (exp(x) - 1))^2.

The programs for A377452, there is no canonical definition to state claims against.
-/

/-! ## A377452.P12808612493687671418

`and(-A317968(n), A301581(n))`
-/

namespace A377452.P12808612493687671418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A317968 n) (A301581 n)

end

end A377452.P12808612493687671418

/-!
# A377453: E.g.f. satisfies A(x) = 1/(1 - A(x) * (exp(x) - 1))^3.

The programs for A377453, there is no canonical definition to state claims against.
-/

/-! ## A377453.P14677172012312386478

`A032667(A376093(n)+A300605(n+1))`
-/

namespace A377453.P14677172012312386478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (A376093 n + A300605 (n + 1)).toNat

end

end A377453.P14677172012312386478

/-!
# A377461: Number of ranked labeled trees compatible with the 2-leaf perfect phylogeny of sample size n that possesses the largest number of compatible ranked labeled trees.

The programs for A377461, the canonical program `A377461.P17554263378634026354` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377461 has offset 2).

The definition of A377461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377461.P17554263378634026354

`A001405(n)*A006472(floor((n+2)/2))*A006472(ceil((n+2)/2))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A377461

/-- `A001405(n)*A006472(floor((n+2)/2))*A006472(ceil((n+2)/2))` -/
def P17554263378634026354.Spec : Prop :=
  ∀ n, P17554263378634026354.a n = A377461 (n + 2)

theorem P17554263378634026354.correct : P17554263378634026354.Spec := by
  intro n
  simp only [A377461, Nat.add_sub_cancel]

end A377461

/-! ## A377461.P7680984694481821762

`floor(floor(A301293(A005867(n))/2)/2)`
-/

namespace A377461.P7680984694481821762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A301293 (A005867 n).toNat : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A377461.P7680984694481821762

namespace A377461

/-- `floor(floor(A301293(A005867(n))/2)/2)` -/
def P7680984694481821762.Spec : Prop :=
  ∀ n, P7680984694481821762.a n = A377461 (n + 2)

end A377461

/-! ## A377461.P10069197855517949158

`A235489(A038110(n+1)*A058250(n))`
-/

namespace A377461.P10069197855517949158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A038110 (n + 1) * A058250 n).toNat

end

end A377461.P10069197855517949158

namespace A377461

/-- `A235489(A038110(n+1)*A058250(n))` -/
def P10069197855517949158.Spec : Prop :=
  ∀ n, P10069197855517949158.a n = A377461 (n + 2)

end A377461

/-!
# A377462: a(n) is the size of the central part of the symmetric representation of sigma(n), or 0 if such a part does not exist.

The programs for A377462, there is no canonical definition to state claims against.
-/

/-! ## A377462.P16185865530029519983

`A295422(n+1)*A347950(n+1)`
-/

namespace A377462.P16185865530029519983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (n + 1) * A347950 (n + 1)

end

end A377462.P16185865530029519983

/-! ## A377462.P11803707731906494390

`lcm(A067742(n+1), A295422(n+1))`
-/

namespace A377462.P11803707731906494390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067742 (n + 1)) (A295422 (n + 1))

end

end A377462.P11803707731906494390

/-! ## A377462.P2336261260936379310

`A295422(n+1)%A300966(A270813(2*(n+2)))`
-/

namespace A377462.P2336261260936379310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295422 (n + 1)) (A300966 (A270813 (2 * (n + 2))).toNat)

end

end A377462.P2336261260936379310

/-!
# A377463: Numbers that are not the sum of distinct powers of 4.

The programs for A377463, there is no canonical definition to state claims against.
-/

/-! ## A377463.P17531111467190838638

`comp[and(n, -43)]`
-/

namespace A377463.P17531111467190838638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-43)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377463.P17531111467190838638

/-! ## A377463.P1162692540032241945

`lt[and(n, -43), n]`
-/

namespace A377463.P1162692540032241945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-43)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A377463.P1162692540032241945

/-! ## A377463.P5039513684020379216

`comp[∑{p}[∑[n], (3-#)²]]`
-/

namespace A377463.P5039513684020379216
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (3 - (p : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377463.P5039513684020379216

/-! ## A377463.P3100767563485093298

`comp[n-2*a(floor(n/2))]` with `a(0)=0`
-/

namespace A377463.P3100767563485093298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 2 * f1 ⌊(n : ℚ) / 2⌋.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377463.P3100767563485093298

/-! ## A377463.P11552230249749145421

`lt[n-2*a(floor(n/2)), n]` with `a(0)=0`
-/

namespace A377463.P11552230249749145421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A377463.P11552230249749145421

/-! ## A377463.P839581733213198327

`comp[xor(n, 2*a(floor(n/2)))]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A377463.P839581733213198327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  Nat.xor n (2 * f1 ⌊(n : ℚ) / 2⌋.toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A377463.P839581733213198327

/-! ## A377463.P999207743511232425

`comp[A000695(n)]`
-/

namespace A377463.P999207743511232425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377463.P999207743511232425

/-! ## A377463.P3521864200242235725

`comp[A063694(n)]`
-/

namespace A377463.P3521864200242235725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377463.P3521864200242235725

/-! ## A377463.P10092990712196185128

`comp[A115637(n)]`
-/

namespace A377463.P10092990712196185128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115637 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377463.P10092990712196185128

/-!
# A377464: Number of connected pairs of subsets of [n] with each being a different size.

The programs for A377464, there is no canonical definition to state claims against.
-/

/-! ## A377464.P14491446927419641617

`and(-2, A325132(C(5*n, 2)/5))`
-/

namespace A377464.P14491446927419641617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A325132 (SequenceMachineLib.roundAway ((Nat.choose (5 * n) 2 : ℚ) / 5)).toNat)

end

end A377464.P14491446927419641617

/-! ## A377464.P6005195411182730588

`A160126(A008998(n))`
-/

namespace A377464.P6005195411182730588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160126 (A008998 n).toNat

end

end A377464.P6005195411182730588

/-!
# A377465: Exponents of Mersenne primes that are emirps.

The programs for A377465, there is no canonical definition to state claims against.
-/

/-! ## A377465.P13491819265482163265

`A000043(A317718(n+1)+n+4)`
-/

namespace A377465.P13491819265482163265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (A317718 (n + 1) + (n + 4 : ℤ)).toNat

end

end A377465.P13491819265482163265

/-! ## A377465.P8371560114184364066

`A366029(A030742(n+2))`
-/

namespace A377465.P8371560114184364066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366029 (A030742 (n + 2)).toNat

end

end A377465.P8371560114184364066

/-!
# A377466: Numbers k such that there is more than one perfect power x in the range prime(k) < x < prime(k+1).

The programs for A377466, there is no canonical definition to state claims against.
-/

/-! ## A377466.P10579889552330980032

`A000720(A116086(n+1))`
-/

namespace A377466.P10579889552330980032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A116086 (n + 1)).toNat

end

end A377466.P10579889552330980032

/-! ## A377466.P14671439436462780636

`A000720(A116455(n+1))`
-/

namespace A377466.P14671439436462780636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A116455 (n + 1)).toNat

end

end A377466.P14671439436462780636

/-! ## A377466.P14699472472294319727

`A000720(A001597(A274605(n+1)))`
-/

namespace A377466.P14699472472294319727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001597 (A274605 (n + 1)).toNat).toNat

end

end A377466.P14699472472294319727

/-!
# A377467: Number of perfect-powers x in the range 2^n < x < 2^(n+1).

The programs for A377467, there is no canonical definition to state claims against.
-/

/-! ## A377467.P16067755807061920330

`A377435(n)-A060576(n)`
-/

namespace A377467.P16067755807061920330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377435 n - A060576 n

end

end A377467.P16067755807061920330

/-! ## A377467.P10848512927774850464

`A377435(n)-A131576(A055664(n+1))`
-/

namespace A377467.P10848512927774850464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377435 n - A131576 (A055664 (n + 1)).toNat

end

end A377467.P10848512927774850464

/-! ## A377467.P8625043860099997895

`A188951(n)-(A070228(n)-A377435(n))`
-/

namespace A377467.P8625043860099997895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188951 n - (A070228 n - A377435 n)

end

end A377467.P8625043860099997895

/-! ## A377467.P10904644348846984233

`Δ[A070228(n)]-A057427(n)`
-/

namespace A377467.P10904644348846984233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057427 n

end

end A377467.P10904644348846984233

/-! ## A377467.P14766051522456265284

`A188951(n+1)-A070228(n)`
-/

namespace A377467.P14766051522456265284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188951 (n + 1) - A070228 n

end

end A377467.P14766051522456265284

/-! ## A377467.P14263001820721587249

`A000225(n)-A377701(n)`
-/

namespace A377467.P14263001820721587249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A377701 n

end

end A377467.P14263001820721587249

/-!
# A377468: Least perfect-power >= n.

The programs for A377468, there is no canonical definition to state claims against.
-/

/-! ## A377468.P13724339760227180483

`A074984(n+1)+1+n`
-/

namespace A377468.P13724339760227180483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (n + 1) + 1 + (n : ℤ)

end

end A377468.P13724339760227180483

/-! ## A377468.P7591054646577774889

`comp[A081676(n+1)+n]-n+1`
-/

namespace A377468.P7591054646577774889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A377468.P7591054646577774889

/-! ## A377468.P560248502002179330

`A001597(∑[char[(n+1)*∏{p}[n+1, #]]]+1)`
-/

namespace A377468.P560248502002179330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), p)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A377468.P560248502002179330

/-! ## A377468.P11765373653852138800

`A001597(A076411(n+1)+1)`
-/

namespace A377468.P11765373653852138800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A076411 (n + 1) + 1).toNat

end

end A377468.P11765373653852138800

/-! ## A377468.P2629542236685003440

`A090516(A076411(n+1)+1)`
-/

namespace A377468.P2629542236685003440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (A076411 (n + 1) + 1).toNat

end

end A377468.P2629542236685003440

/-! ## A377468.P11811526632734200909

`A001597(A217038(n+1)+1)`
-/

namespace A377468.P11811526632734200909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A217038 (n + 1) + 1).toNat

end

end A377468.P11811526632734200909

/-! ## A377468.P11244693399668237022

`A075309(A217038(n+1)+1)`
-/

namespace A377468.P11244693399668237022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (A217038 (n + 1) + 1).toNat

end

end A377468.P11244693399668237022

/-! ## A377468.P18107198664766180441

`A090516(A217038(n+1)+1)`
-/

namespace A377468.P18107198664766180441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (A217038 (n + 1) + 1).toNat

end

end A377468.P18107198664766180441

/-! ## A377468.P16674240494275886958

`A175031(A217038(n+1)+1)`
-/

namespace A377468.P16674240494275886958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175031 (A217038 (n + 1) + 1).toNat

end

end A377468.P16674240494275886958

/-! ## A377468.P5582705738919225730

`A001597(∑[char[A001597(n+1)]]+1)`
-/

namespace A377468.P5582705738919225730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A377468.P5582705738919225730

/-!
# A377469: a(n) = (A003309(n)-1)*a(n-1) (n > 1), a(1) = 1, where A003309 are the ludic numbers.

The programs for A377469, there is no canonical definition to state claims against.
-/

/-! ## A377469.P17069293958411254805

`(A003309(n+1)-1)*a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377469.P17069293958411254805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A003309 (n + 1) - 1) * a (n - 1)

end

end A377469.P17069293958411254805

/-! ## A377469.P1513008015913388665

`∏[A260723(n)+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A377469.P1513008015913388665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A260723 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A377469.P1513008015913388665

/-! ## A377469.P7203688322871736416

`∏[A003309(n+1)-ceil(n/63)]`
-/

namespace A377469.P7203688322871736416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - ⌈(n : ℚ) / 63⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A377469.P7203688322871736416

/-! ## A377469.P2257950819616253816

`a(n-1)*lt[A302037(n+1)², 3]` with `a(0)=1`
-/

namespace A377469.P2257950819616253816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A377469.P2257950819616253816

/-!
# A377472: First differences of Colombian or self numbers A003052.

The programs for A377472, there is no canonical definition to state claims against.
-/

/-! ## A377472.P9422703137734976479

`A163139(n+1)+1`
-/

namespace A377472.P9422703137734976479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163139 (n + 1) + 1

end

end A377472.P9422703137734976479

/-! ## A377472.P7656046822300368815

`A003052(n+2)-A003052(n+1)`
-/

namespace A377472.P7656046822300368815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 2) - A003052 (n + 1)

end

end A377472.P7656046822300368815

/-! ## A377472.P5743175366754888943

`A163128(n+2)-A163128(n+1)+1`
-/

namespace A377472.P5743175366754888943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 2) - A163128 (n + 1) + 1

end

end A377472.P5743175366754888943

/-! ## A377472.P18061029180284576810

`Δ[A003052(n+1)]`
-/

namespace A377472.P18061029180284576810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377472.P18061029180284576810

/-! ## A377472.P5738174044749791793

`Δ[A163128(n+1)]+1`
-/

namespace A377472.P5738174044749791793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A377472.P5738174044749791793

/-! ## A377472.P1481252010838608934

`Δ[record[A036233(n+1)]]`
-/

namespace A377472.P1481252010838608934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377472.P1481252010838608934

/-!
# A377473: Distinct first differences of Colombian or self numbers (A377472), listed in the order they appear.

The programs for A377473, there is no canonical definition to state claims against.
-/

/-! ## A377473.P3264899726359965902

`A377423(n+1)+1`
-/

namespace A377473.P3264899726359965902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377423 (n + 1) + 1

end

end A377473.P3264899726359965902

/-! ## A377473.P6469263271658060115

`A020725(A377423(n+1))`
-/

namespace A377473.P6469263271658060115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A377423 (n + 1)).toNat

end

end A377473.P6469263271658060115

/-!
# A377475: a(n) is the Even-Rodeh encoding of n as an integer.

The programs for A377475, there is no canonical definition to state claims against.
-/

/-! ## A377475.P12316883274065913211

`n*A325248(A352795(n))`
-/

namespace A377475.P12316883274065913211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325248 (A352795 n).toNat

end

end A377475.P12316883274065913211

/-! ## A377475.P7583337405805919699

`n*A037289(A014981(n+1))`
-/

namespace A377475.P7583337405805919699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037289 (A014981 (n + 1)).toNat

end

end A377475.P7583337405805919699

/-! ## A377475.P6884778092205027027

`n*A057820(A246655(A049614(n)))`
-/

namespace A377475.P6884778092205027027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057820 (A246655 (A049614 n).toNat).toNat

end

end A377475.P6884778092205027027

/-! ## A377475.P12517651934289520797

`n*A339489(A339489(A132005(n)))`
-/

namespace A377475.P12517651934289520797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A339489 (A339489 (A132005 n).toNat).toNat

end

end A377475.P12517651934289520797

/-!
# A377478: a(n) = first frugal number > 1 in base n.

The programs for A377478, there is no canonical definition to state claims against.
-/

/-! ## A377478.P10420367538360755947

`A379538(∑[n+1]+3)`
-/

namespace A377478.P10420367538360755947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379538 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A377478.P10420367538360755947

/-!
# A377484: a(n) = Product_{d|n, d>1} (d - 1).

The programs for A377484, the canonical program `A377484.P12663303119291746690` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377484 has offset 1).

The definition of A377484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377484.P12663303119291746690

`∏{d}[n+1, #-n²%#]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A377484

/-- `∏{d}[n+1, #-n²%#]` -/
def P12663303119291746690.Spec : Prop :=
  ∀ n, P12663303119291746690.a n = A377484 (n + 1)

theorem P12663303119291746690.correct : P12663303119291746690.Spec := by
  intro n
  simp only [A377484, Nat.add_sub_cancel]

end A377484

/-! ## A377484.P18089226509183411674

`∏{d}[n+1, (n-1)%#+1]`
-/

namespace A377484.P18089226509183411674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (Int.tmod ((n : ℤ) - 1) (d : ℤ) + 1)

end

end A377484.P18089226509183411674

namespace A377484

/-- `∏{d}[n+1, (n-1)%#+1]` -/
def P18089226509183411674.Spec : Prop :=
  ∀ n, P18089226509183411674.a n = A377484 (n + 1)

end A377484

/-! ## A377484.P8459699501289657169

`A072513(n+1)/A007956(n+1)`
-/

namespace A377484.P8459699501289657169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072513 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A377484.P8459699501289657169

namespace A377484

/-- `A072513(n+1)/A007956(n+1)` -/
def P8459699501289657169.Spec : Prop :=
  ∀ n, P8459699501289657169.a n = (A377484 (n + 1) : ℚ)

end A377484

/-! ## A377484.P6297657295372287453

`A010786(n)/A076891(n+1)`
-/

namespace A377484.P6297657295372287453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010786 n : ℚ) / (A076891 (n + 1) : ℚ)

end

end A377484.P6297657295372287453

namespace A377484

/-- `A010786(n)/A076891(n+1)` -/
def P6297657295372287453.Spec : Prop :=
  ∀ n, P6297657295372287453.a n = (A377484 (n + 1) : ℚ)

end A377484

/-! ## A377484.P3342433057559779200

`A007955(n+1)/A010786(n+1)*A010786(n)`
-/

namespace A377484.P3342433057559779200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A010786 (n + 1) : ℚ) * (A010786 n : ℚ)

end

end A377484.P3342433057559779200

namespace A377484

/-- `A007955(n+1)/A010786(n+1)*A010786(n)` -/
def P3342433057559779200.Spec : Prop :=
  ∀ n, P3342433057559779200.a n = (A377484 (n + 1) : ℚ)

end A377484

/-! ## A377484.P15220233165548925851

`∏{d}[n+1, gcd(1-#, #!)]`
-/

namespace A377484.P15220233165548925851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (1 - (d : ℤ)) (Nat.factorial d : ℤ)

end

end A377484.P15220233165548925851

namespace A377484

/-- `∏{d}[n+1, gcd(1-#, #!)]` -/
def P15220233165548925851.Spec : Prop :=
  ∀ n, (P15220233165548925851.a n : ℤ) = A377484 (n + 1)

end A377484

/-!
# A377485: Irregular triangle where row n lists powers p^k of primes p | n such that p^k <= n and k > 0.

The programs for A377485, there is no canonical definition to state claims against.
-/

/-! ## A377485.P5093027996298287789

`filter[A120499(n+1), A010055(#)]`
-/

namespace A377485.P5093027996298287789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A377485.P5093027996298287789

/-! ## A377485.P8051584032999656076

`A120499(n+1)+A024155(A221898(n+4))`
-/

namespace A377485.P8051584032999656076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120499 (n + 1) + A024155 (A221898 (n + 4)).toNat

end

end A377485.P8051584032999656076

/-!
# A377486: a(n) = product of {p^k : p | n, k = 1..floor(log n/log p)}, a(1) = 1.

The programs for A377486, there is no canonical definition to state claims against.
-/

/-! ## A377486.P8991815685681579064

`A183091(A064446(n+1))`
-/

namespace A377486.P8991815685681579064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183091 (A064446 (n + 1)).toNat

end

end A377486.P8991815685681579064

/-! ## A377486.P10816650500763874405

`A000027(A243103(n+1))/A183092(n+1)`
-/

namespace A377486.P10816650500763874405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A243103 (n + 1)).toNat : ℚ) / (A183092 (n + 1) : ℚ)

end

end A377486.P10816650500763874405

/-!
# A377487: a(n) = largest power p^k <= n for prime p among prime factors of n.

The programs for A377487, there is no canonical definition to state claims against.
-/

/-! ## A377487.P6349287767437201078

`A377488(A082186(n+1))`
-/

namespace A377487.P6349287767437201078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377488 (A082186 (n + 1)).toNat

end

end A377487.P6349287767437201078

/-! ## A377487.P1720683042891396998

`A034699(A064446(n+1))`
-/

namespace A377487.P1720683042891396998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A064446 (n + 1)).toNat

end

end A377487.P1720683042891396998

/-! ## A377487.P17020960736793112424

`A034699((n+1)*A133910(n+1))`
-/

namespace A377487.P17020960736793112424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 ((n + 1 : ℤ) * A133910 (n + 1)).toNat

end

end A377487.P17020960736793112424

/-! ## A377487.P9654393792333434114

`A034699(A133900(n+1)/(n+1))`
-/

namespace A377487.P9654393792333434114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((A133900 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A377487.P9654393792333434114

/-! ## A377487.P18193791673712338172

`A034699(A003418(n+1)/A038610(n+1))`
-/

namespace A377487.P18193791673712338172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((A003418 (n + 1) : ℚ) / (A038610 (n + 1) : ℚ))).toNat

end

end A377487.P18193791673712338172

/-!
# A377490: E.g.f. satisfies A(x) = 1/(1 - A(x) * (exp(x*A(x)) - 1))^2.

The programs for A377490, there is no canonical definition to state claims against.
-/

/-! ## A377490.P2101993484982985884

`A377492(n)-A355108(A001710(n))`
-/

namespace A377490.P2101993484982985884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377492 n - A355108 (A001710 n).toNat

end

end A377490.P2101993484982985884

/-!
# A377499: a(n) is the median of the divisors of 2n-1.

The programs for A377499, there is no canonical definition to state claims against.
-/

/-! ## A377499.P8060394164334286071

`sqrt(2*(n+1)-1+A219695(n+1)²)`
-/

namespace A377499.P8060394164334286071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * (n + 1) : ℤ) - 1 + A219695 (n + 1) ^ 2 : ℝ)

end

end A377499.P8060394164334286071

/-! ## A377499.P13548898410515575592

`A377864(n+1)+A219695(n+1)`
-/

namespace A377499.P13548898410515575592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377864 (n + 1) + A219695 (n + 1)

end

end A377499.P13548898410515575592

/-! ## A377499.P4849263994439953982

`A377865(n+1)-A219695(n+1)`
-/

namespace A377499.P4849263994439953982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377865 (n + 1) - A219695 (n + 1)

end

end A377499.P4849263994439953982

/-! ## A377499.P13594487868637068826

`(A377865(n+1)+A377864(n+1))/2`
-/

namespace A377499.P13594487868637068826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377865 (n + 1) + A377864 (n + 1) : ℚ) / 2

end

end A377499.P13594487868637068826

/-! ## A377499.P14290325803541783271

`A361565(2*n+1)`
-/

namespace A377499.P14290325803541783271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361565 (2 * n + 1)

end

end A377499.P14290325803541783271

/-! ## A377499.P1505574848676959537

`A063655(2*(n+1)-1)/2`
-/

namespace A377499.P1505574848676959537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063655 (2 * (n + 1) - 1) : ℚ) / 2

end

end A377499.P1505574848676959537

/-! ## A377499.P11099533471277249097

`(A033677(2*(n+1)-1)+A033676(2*(n+1)-1))/2`
-/

namespace A377499.P11099533471277249097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033677 (2 * (n + 1) - 1) + A033676 (2 * (n + 1) - 1) : ℚ) / 2

end

end A377499.P11099533471277249097

/-! ## A377499.P771484715477630935

`A107325(Δ[n²])`
-/

namespace A377499.P771484715477630935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A377499.P771484715477630935

/-! ## A377499.P16828981172575994342

`A306284(Δ[n²])`
-/

namespace A377499.P16828981172575994342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A377499.P16828981172575994342

/-! ## A377499.P16788234560702853246

`A247654(2*n+1)/4`
-/

namespace A377499.P16788234560702853246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247654 (2 * n + 1) : ℚ) / 4

end

end A377499.P16788234560702853246

/-! ## A377499.P4147199738693988272

`A262767(2*n+1)/4`
-/

namespace A377499.P4147199738693988272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262767 (2 * n + 1) : ℚ) / 4

end

end A377499.P4147199738693988272

/-! ## A377499.P4556921835002158051

`A107325(2*n+1)%(n+2)`
-/

namespace A377499.P4556921835002158051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107325 (2 * n + 1)) (n + 2 : ℤ)

end

end A377499.P4556921835002158051

/-! ## A377499.P13491073959677979390

`A306284(2*n+1)%(n+2)`
-/

namespace A377499.P13491073959677979390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306284 (2 * n + 1)) (n + 2 : ℤ)

end

end A377499.P13491073959677979390

/-! ## A377499.P5441002425707566167

`A032742(A063655(2*n+1))`
-/

namespace A377499.P5441002425707566167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A063655 (2 * n + 1)).toNat

end

end A377499.P5441002425707566167

/-! ## A377499.P18431596793838857040

`A219695(n+1)+A033676(2*n+1)`
-/

namespace A377499.P18431596793838857040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219695 (n + 1) + A033676 (2 * n + 1)

end

end A377499.P18431596793838857040

/-! ## A377499.P7347998492402523790

`A033677(2*n+1)-A219695(n+1)`
-/

namespace A377499.P7347998492402523790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (2 * n + 1) - A219695 (n + 1)

end

end A377499.P7347998492402523790

/-! ## A377499.P17631754307955023581

`A063655(2*n+1)-A107325(2*n+1)`
-/

namespace A377499.P17631754307955023581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (2 * n + 1) - A107325 (2 * n + 1)

end

end A377499.P17631754307955023581

/-! ## A377499.P1382104161290838145

`A207376(2*n+1)/A275437(2*n)`
-/

namespace A377499.P1382104161290838145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207376 (2 * n + 1) : ℚ) / (A275437 (2 * n) : ℚ)

end

end A377499.P1382104161290838145

/-! ## A377499.P4388211862907063740

`A375674(A262767(2*n+1))`
-/

namespace A377499.P4388211862907063740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375674 (A262767 (2 * n + 1)).toNat

end

end A377499.P4388211862907063740

/-! ## A377499.P5558706734431971753

`A375674(2*A063655(2*n+1))`
-/

namespace A377499.P5558706734431971753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375674 (2 * A063655 (2 * n + 1)).toNat

end

end A377499.P5558706734431971753

