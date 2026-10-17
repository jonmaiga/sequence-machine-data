import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A291100: Number of maximal irredundant sets in the n-ladder graph.

The programs for A291100, there is no canonical definition to state claims against.
-/

/-! ## A291100.P16551763473764417511

`A291439(∑[n+2])`
-/

namespace A291100.P16551763473764417511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291439 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291100.P16551763473764417511

/-! ## A291100.P477862173285145030

`record[A291439(Δ[A003453(n+5)])]`
-/

namespace A291100.P477862173285145030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291439 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291100.P477862173285145030

/-! ## A291100.P14246052353714614339

`record[A291439(A255546(n+1)+1)]`
-/

namespace A291100.P14246052353714614339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291439 (A255546 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291100.P14246052353714614339

/-! ## A291100.P17611145835639790174

`record[A291439(lt[A286847(n+1), n])]`
-/

namespace A291100.P17611145835639790174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291439 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291100.P17611145835639790174

/-! ## A291100.P11792578446147585192

`record[A291439(lt[A286849(n+1), n])]`
-/

namespace A291100.P11792578446147585192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291439 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291100.P11792578446147585192

/-!
# A291101: Number of maximal irredundant sets in the n-Mycielski graph.

The programs for A291101, there is no canonical definition to state claims against.
-/

/-! ## A291101.P10959198648840119568

`A002124(∑[A038155(n)])+floor(10^(n-1))`
-/

namespace A291101.P10959198648840119568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A291101.P10959198648840119568

/-!
# A291102: Number of maximal irredundant sets in the n-pan graph.

The programs for A291102, there is no canonical definition to state claims against.
-/

/-! ## A291102.P3791178681107437134

`p?[A129618(n+1)]-A220527(n)`
-/

namespace A291102.P3791178681107437134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A220527 n

end

end A291102.P3791178681107437134

/-!
# A291103: Number of maximal irredundant sets in the n X n queen graph.

The programs for A291103, there is no canonical definition to state claims against.
-/

/-! ## A291103.P1791864251945004023

`A284913(or(A003278(n+1), A346650(n)))`
-/

namespace A291103.P1791864251945004023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 (Int.lor (A003278 (n + 1)) (A346650 n)).toNat

end

end A291103.P1791864251945004023

/-!
# A291104: Number of maximal irredundant sets in the n X n rook graph.

The programs for A291104, there is no canonical definition to state claims against.
-/

/-! ## A291104.P5118164140130335759

`A291543(∑[4*n]+1)`
-/

namespace A291104.P5118164140130335759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291543 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A291104.P5118164140130335759

/-! ## A291104.P17529418473539438540

`record[A003982(n)*A291543(n+1)]`
-/

namespace A291104.P17529418473539438540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A291543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291104.P17529418473539438540

/-! ## A291104.P6514172152224162597

`record[gcd(A114327(n), A291543(n+1))]`
-/

namespace A291104.P6514172152224162597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A291543 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291104.P6514172152224162597

/-! ## A291104.P9318886759037267130

`A007318(C(n, 2))*A291543(A001844(n))`
-/

namespace A291104.P9318886759037267130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A291543 (A001844 n).toNat

end

end A291104.P9318886759037267130

/-! ## A291104.P2751277637732376358

`(A000040(n+1)%2)!*A291543(A001844(n))`
-/

namespace A291104.P2751277637732376358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * A291543 (A001844 n).toNat

end

end A291104.P2751277637732376358

/-!
# A291106: Number of maximal irredundant sets in the n X n white bishop graph.

The programs for A291106, there is no canonical definition to state claims against.
-/

/-! ## A291106.P4772580029044683621

`A291060(n+2)/A291061(n+2)`
-/

namespace A291106.P4772580029044683621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291060 (n + 2) : ℚ) / (A291061 (n + 2) : ℚ)

end

end A291106.P4772580029044683621

/-!
# A291107: Number of irredundant sets in the n-pan graph.

The programs for A291107, the canonical program `A291107.P13325288419692030841` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291107 has offset 1).

The definition of A291107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291107.P13325288419692030841

`a(n-1)+a(n-2)+a(n-4)-a(n-6)` with `a(0)=3, a(1)=5, a(2)=7, a(3)=16, a(4)=26, a(5)=42`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291107

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-6)` -/
def P13325288419692030841.Spec : Prop :=
  ∀ n, P13325288419692030841.a n = A291107 (n + 1)

theorem P13325288419692030841.correct : P13325288419692030841.Spec := by
  intro n
  simp only [A291107, Nat.add_sub_cancel]

end A291107

/-!
# A291108: Expansion of Sum_{k>=2} k^2*x^(2*k)/(1 - x^k).

The programs for A291108, the canonical program `A291108.P4809148251123526267` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291108 has offset 1).

The definition of A291108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291108.P4809148251123526267

`(∑{d}[n+1, #²]-1)%(n+1)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291108

/-- `(∑{d}[n+1, #²]-1)%(n+1)²` -/
def P4809148251123526267.Spec : Prop :=
  ∀ n, P4809148251123526267.a n = A291108 (n + 1)

theorem P4809148251123526267.correct : P4809148251123526267.Spec := by
  intro n
  simp only [A291108, Nat.add_sub_cancel]

end A291108

/-! ## A291108.P641186058146424987

`∑{d}[n+1, #²]-∑[char[1]+Δ[n²]]`
-/

namespace A291108.P641186058146424987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A291108.P641186058146424987

namespace A291108

/-- `∑{d}[n+1, #²]-∑[char[1]+Δ[n²]]` -/
def P641186058146424987.Spec : Prop :=
  ∀ n, P641186058146424987.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P6995454630965702224

`∑{d}[n+1, #²]%∑[char[1]+Δ[n²]]`
-/

namespace A291108.P6995454630965702224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A291108.P6995454630965702224

namespace A291108

/-- `∑{d}[n+1, #²]%∑[char[1]+Δ[n²]]` -/
def P6995454630965702224.Spec : Prop :=
  ∀ n, P6995454630965702224.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P1318928747101725786

`∑{d}[n+1, #²]-(n+1)²-ceil(abs(sin(n)))`
-/

namespace A291108.P1318928747101725786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ) - ⌈|Real.sin (n : ℝ)|⌉

end

end A291108.P1318928747101725786

namespace A291108

/-- `∑{d}[n+1, #²]-(n+1)²-ceil(abs(sin(n)))` -/
def P1318928747101725786.Spec : Prop :=
  ∀ n, P1318928747101725786.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P6409522416843926711

`∑{d}[n+1, #²]-(n+1)²-ceil(sin(n)²)`
-/

namespace A291108.P6409522416843926711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A291108.P6409522416843926711

namespace A291108

/-- `∑{d}[n+1, #²]-(n+1)²-ceil(sin(n)²)` -/
def P6409522416843926711.Spec : Prop :=
  ∀ n, P6409522416843926711.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P9549175080173960300

`(∑{d}[n+1, #²]-(n+1)²-1)*floor(atan(n))`
-/

namespace A291108.P9549175080173960300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ) - 1) * ⌊Real.arctan (n : ℝ)⌋

end

end A291108.P9549175080173960300

namespace A291108

/-- `(∑{d}[n+1, #²]-(n+1)²-1)*floor(atan(n))` -/
def P9549175080173960300.Spec : Prop :=
  ∀ n, P9549175080173960300.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P4726404701942997156

`A067558(n+1)-ceil(abs(sin(n)))`
-/

namespace A291108.P4726404701942997156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A291108.P4726404701942997156

namespace A291108

/-- `A067558(n+1)-ceil(abs(sin(n)))` -/
def P4726404701942997156.Spec : Prop :=
  ∀ n, P4726404701942997156.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P15459240593797356407

`A067558(n+1)+A057428(n)`
-/

namespace A291108.P15459240593797356407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) + A057428 n

end

end A291108.P15459240593797356407

namespace A291108

/-- `A067558(n+1)+A057428(n)` -/
def P15459240593797356407.Spec : Prop :=
  ∀ n, P15459240593797356407.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P2123565728706009708

`A067558(n+1)-A057427(n)`
-/

namespace A291108.P2123565728706009708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) - A057427 n

end

end A291108.P2123565728706009708

namespace A291108

/-- `A067558(n+1)-A057427(n)` -/
def P2123565728706009708.Spec : Prop :=
  ∀ n, P2123565728706009708.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P13621840409905263356

`A067558(n+1)-A067558(A006530(n+1))`
-/

namespace A291108.P13621840409905263356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) - A067558 (A006530 (n + 1)).toNat

end

end A291108.P13621840409905263356

namespace A291108

/-- `A067558(n+1)-A067558(A006530(n+1))` -/
def P13621840409905263356.Spec : Prop :=
  ∀ n, P13621840409905263356.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P7274883049899406573

`A053807(n+2)%(n+1)²`
-/

namespace A291108.P7274883049899406573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053807 (n + 2)) ((n + 1) ^ 2 : ℤ)

end

end A291108.P7274883049899406573

namespace A291108

/-- `A053807(n+2)%(n+1)²` -/
def P7274883049899406573.Spec : Prop :=
  ∀ n, P7274883049899406573.a n = A291108 (n + 1)

end A291108

/-! ## A291108.P4252297776922274308

`A071326((n+1)²)%(n+1)²`
-/

namespace A291108.P4252297776922274308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071326 ((n + 1) ^ 2)) ((n + 1) ^ 2 : ℤ)

end

end A291108.P4252297776922274308

namespace A291108

/-- `A071326((n+1)²)%(n+1)²` -/
def P4252297776922274308.Spec : Prop :=
  ∀ n, P4252297776922274308.a n = A291108 (n + 1)

end A291108

/-!
# A291109: Numbers that are not the sum of the squarefree divisors of some natural number.

The programs for A291109, the canonical program `A291109.P10337426377104296996` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291109 has offset 1).

The definition of A291109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291109.P10337426377104296996

`comp[A000203(A005117(n+1))-1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A291109

/-- `comp[A000203(A005117(n+1))-1]+1` -/
def P10337426377104296996.Spec : Prop :=
  ∀ n, (P10337426377104296996.a n : ℤ) = A291109 (n + 1)

theorem P10337426377104296996.correct : P10337426377104296996.Spec := by
  intro n
  simp only [A291109, Nat.add_sub_cancel]

end A291109

/-! ## A291109.P12107413892893326810

`comp[A000203(A007913(n+1))-1]+1`
-/

namespace A291109.P12107413892893326810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007913 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A291109.P12107413892893326810

namespace A291109

/-- `comp[A000203(A007913(n+1))-1]+1` -/
def P12107413892893326810.Spec : Prop :=
  ∀ n, (P12107413892893326810.a n : ℤ) = A291109 (n + 1)

end A291109

/-! ## A291109.P7617412111504474568

`comp[A000203(A007947(n+1))-1]+1`
-/

namespace A291109.P7617412111504474568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A291109.P7617412111504474568

namespace A291109

/-- `comp[A000203(A007947(n+1))-1]+1` -/
def P7617412111504474568.Spec : Prop :=
  ∀ n, (P7617412111504474568.a n : ℤ) = A291109 (n + 1)

end A291109

/-! ## A291109.P10298969214073713449

`comp[A000203(n+1)*A008966(n+1)]`
-/

namespace A291109.P10298969214073713449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291109.P10298969214073713449

namespace A291109

/-- `comp[A000203(n+1)*A008966(n+1)]` -/
def P10298969214073713449.Spec : Prop :=
  ∀ n, (P10298969214073713449.a n : ℤ) = A291109 (n + 1)

end A291109

/-! ## A291109.P16338200500755430879

`comp[A003959(n+1)*A008966(n+1)]`
-/

namespace A291109.P16338200500755430879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A008966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291109.P16338200500755430879

namespace A291109

/-- `comp[A003959(n+1)*A008966(n+1)]` -/
def P16338200500755430879.Spec : Prop :=
  ∀ n, (P16338200500755430879.a n : ℤ) = A291109 (n + 1)

end A291109

/-! ## A291109.P4795260771347375485

`comp[A000203(n+1)*A326815(n+1)]`
-/

namespace A291109.P4795260771347375485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A326815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291109.P4795260771347375485

namespace A291109

/-- `comp[A000203(n+1)*A326815(n+1)]` -/
def P4795260771347375485.Spec : Prop :=
  ∀ n, (P4795260771347375485.a n : ℤ) = A291109 (n + 1)

end A291109

/-! ## A291109.P4841486667481678694

`comp[lcm(A000203(n+1), A008683(n+1))]`
-/

namespace A291109.P4841486667481678694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (A008683 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A291109.P4841486667481678694

namespace A291109

/-- `comp[lcm(A000203(n+1), A008683(n+1))]` -/
def P4841486667481678694.Spec : Prop :=
  ∀ n, (P4841486667481678694.a n : ℤ) = A291109 (n + 1)

end A291109

/-! ## A291109.P6990923692118947478

`comp[A008683(n+1)²*ceil(A002659(n+1)/2)]`
-/

namespace A291109.P6990923692118947478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * ⌈(A002659 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291109.P6990923692118947478

namespace A291109

/-- `comp[A008683(n+1)²*ceil(A002659(n+1)/2)]` -/
def P6990923692118947478.Spec : Prop :=
  ∀ n, (P6990923692118947478.a n : ℤ) = A291109 (n + 1)

end A291109

/-! ## A291109.P6546302496733029074

`eq[C(2, n²), char[A092261(n+1)]]`
-/

namespace A291109.P6546302496733029074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291109.P6546302496733029074

namespace A291109

/-- `eq[C(2, n²), char[A092261(n+1)]]` -/
def P6546302496733029074.Spec : Prop :=
  ∀ n, (P6546302496733029074.a n : ℤ) = A291109 (n + 1)

end A291109

/-!
# A291110: Number of endofunctions on [n] such that the LCM of their cycle lengths equals four.

The programs for A291110, there is no canonical definition to state claims against.
-/

/-! ## A291110.P12281934360729091990

`A246524(n)-A209319(n)`
-/

namespace A291110.P12281934360729091990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246524 n - A209319 n

end

end A291110.P12281934360729091990

/-! ## A291110.P1317710580263399376

`A246524(n)-A246522(∑[n+3])`
-/

namespace A291110.P1317710580263399376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246524 n - A246522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291110.P1317710580263399376

/-! ## A291110.P6975037477453220434

`A246524(A028310(n))%A209319(n)`
-/

namespace A291110.P6975037477453220434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246524 (A028310 n).toNat) (A209319 n)

end

end A291110.P6975037477453220434

/-! ## A291110.P13538594101502471345

`A246524(A254667(n))%A209319(n)`
-/

namespace A291110.P13538594101502471345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246524 (A254667 n).toNat) (A209319 n)

end

end A291110.P13538594101502471345

/-! ## A291110.P13735274855267698623

`(A246524(n)+A000007(n))%A209319(n)`
-/

namespace A291110.P13735274855267698623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246524 n + A000007 n) (A209319 n)

end

end A291110.P13735274855267698623

/-!
# A291111: Number of endofunctions on [n] such that the LCM of their cycle lengths equals five.

The programs for A291111, there is no canonical definition to state claims against.
-/

/-! ## A291111.P4211969548221930405

`A246525(n)-A000272(n+1)`
-/

namespace A291111.P4211969548221930405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246525 n - A000272 (n + 1)

end

end A291111.P4211969548221930405

/-! ## A291111.P17415197933810660488

`A246525(n)-A105599(A000124(n))`
-/

namespace A291111.P17415197933810660488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246525 n - A105599 (A000124 n).toNat

end

end A291111.P17415197933810660488

/-! ## A291111.P1229290219539289849

`A163951(n)+A246525(n)-A209319(n)`
-/

namespace A291111.P1229290219539289849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163951 n + (A246525 n - A209319 n)

end

end A291111.P1229290219539289849

/-! ## A291111.P12126259198262130435

`A246530(n)-(A291116(n)+A209319(n))`
-/

namespace A291111.P12126259198262130435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246530 n - (A291116 n + A209319 n)

end

end A291111.P12126259198262130435

/-! ## A291111.P10013976930886318985

`A246525(n)%A000272(A151764(n+1))`
-/

namespace A291111.P10013976930886318985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246525 n) (A000272 (A151764 (n + 1)).toNat)

end

end A291111.P10013976930886318985

/-!
# A291112: Number of endofunctions on [n] such that the LCM of their cycle lengths equals six.

The programs for A291112, there is no canonical definition to state claims against.
-/

/-! ## A291112.P17248639712602464580

`n*A383710(C(n, 4))`
-/

namespace A291112.P17248639712602464580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A383710 (Nat.choose n 4)

end

end A291112.P17248639712602464580

/-! ## A291112.P6913681411340425915

`A277444(2*C(n, 4)+5)`
-/

namespace A291112.P6913681411340425915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277444 (2 * Nat.choose n 4 + 5)

end

end A291112.P6913681411340425915

/-! ## A291112.P7828331897609803323

`A004526(41^∑[floor(n/5)])`
-/

namespace A291112.P7828331897609803323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((41 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A291112.P7828331897609803323

/-!
# A291113: Number of endofunctions on [n] such that the LCM of their cycle lengths equals seven.

The programs for A291113, there is no canonical definition to state claims against.
-/

/-! ## A291113.P6312319152071726950

`A246527(n)-A000272(n+1)`
-/

namespace A291113.P6312319152071726950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246527 n - A000272 (n + 1)

end

end A291113.P6312319152071726950

/-! ## A291113.P426257808953014935

`A246527(n)-A105599(A000124(n))`
-/

namespace A291113.P426257808953014935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246527 n - A105599 (A000124 n).toNat

end

end A291113.P426257808953014935

/-! ## A291113.P16280763419247613290

`A246527(n)%A000272(A000027(n+1))`
-/

namespace A291113.P16280763419247613290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246527 n) (A000272 (A000027 (n + 1)).toNat)

end

end A291113.P16280763419247613290

/-! ## A291113.P4108735193657949484

`A163951(n)+A246527(n)-A209319(n)`
-/

namespace A291113.P4108735193657949484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163951 n + (A246527 n - A209319 n)

end

end A291113.P4108735193657949484

/-! ## A291113.P9089544808211380026

`A163952(n)+A246527(n)-A246523(n)`
-/

namespace A291113.P9089544808211380026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163952 n + (A246527 n - A246523 n)

end

end A291113.P9089544808211380026

/-!
# A291114: Number of endofunctions on [n] such that the LCM of their cycle lengths equals eight.

The programs for A291114, there is no canonical definition to state claims against.
-/

/-! ## A291114.P14851177008475530369

`A246528(n)-A246524(n)`
-/

namespace A291114.P14851177008475530369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246528 n - A246524 n

end

end A291114.P14851177008475530369

/-! ## A291114.P7983188960445064542

`A246528(A028310(n))%A246524(n)`
-/

namespace A291114.P7983188960445064542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246528 (A028310 n).toNat) (A246524 n)

end

end A291114.P7983188960445064542

/-! ## A291114.P12315454063947296523

`A246528(A254667(n))%A246524(n)`
-/

namespace A291114.P12315454063947296523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246528 (A254667 n).toNat) (A246524 n)

end

end A291114.P12315454063947296523

/-! ## A291114.P9225921698973862680

`A246528(A233583(n+1))%A246524(n)`
-/

namespace A291114.P9225921698973862680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246528 (A233583 (n + 1)).toNat) (A246524 n)

end

end A291114.P9225921698973862680

/-! ## A291114.P3999933130240282453

`A246528(A065033(2*n))%A246524(n)`
-/

namespace A291114.P3999933130240282453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246528 (A065033 (2 * n)).toNat) (A246524 n)

end

end A291114.P3999933130240282453

/-!
# A291115: Number of endofunctions on [n] such that the LCM of their cycle lengths equals nine.

The programs for A291115, there is no canonical definition to state claims against.
-/

/-! ## A291115.P12978510306500431829

`A246529(n)-A246523(n)`
-/

namespace A291115.P12978510306500431829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246529 n - A246523 n

end

end A291115.P12978510306500431829

/-! ## A291115.P1055545569944096024

`A246529(A028310(n))%A246523(n)`
-/

namespace A291115.P1055545569944096024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246529 (A028310 n).toNat) (A246523 n)

end

end A291115.P1055545569944096024

/-! ## A291115.P1754375227692523984

`A246529(A118759(n))%A246523(n)`
-/

namespace A291115.P1754375227692523984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246529 (A118759 n).toNat) (A246523 n)

end

end A291115.P1754375227692523984

/-! ## A291115.P1417021027140351206

`A246529(A254667(n))%A246523(n)`
-/

namespace A291115.P1417021027140351206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246529 (A254667 n).toNat) (A246523 n)

end

end A291115.P1417021027140351206

/-! ## A291115.P12251520557577653522

`A246529(A233583(n+1))%A246523(n)`
-/

namespace A291115.P12251520557577653522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246529 (A233583 (n + 1)).toNat) (A246523 n)

end

end A291115.P12251520557577653522

/-!
# A291116: Number of endofunctions on [n] such that the LCM of their cycle lengths equals ten.

The programs for A291116, there is no canonical definition to state claims against.
-/

/-! ## A291116.P9647955439903678061

`A246530(n)-(A291111(n)+A209319(n))`
-/

namespace A291116.P9647955439903678061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246530 n - (A291111 n + A209319 n)

end

end A291116.P9647955439903678061

/-! ## A291116.P1714397104389870115

`A246530(C(2, n²)+n)%(A291111(n)+A209319(n))`
-/

namespace A291116.P1714397104389870115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246530 (Nat.choose 2 (n ^ 2) + n)) (A291111 n + A209319 n)

end

end A291116.P1714397104389870115

/-! ## A291116.P9463930945957742905

`∑{e}[5^n, A179062(#)]/10`
-/

namespace A291116.P9463930945957742905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), A179062 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / 10

end

end A291116.P9463930945957742905

/-! ## A291116.P4002496562461336930

`A000045(floor(n!/3^n))*∑{e}[5^n, #!]/10`
-/

namespace A291116.P4002496562461336930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 ⌊(Nat.factorial n : ℚ) / (3 ^ n : ℚ)⌋.toNat * ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ) : ℚ) / 10

end

end A291116.P4002496562461336930

/-! ## A291116.P10079397762746965301

`Δ[A000203(4^A118334(n))]`
-/

namespace A291116.P10079397762746965301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A118334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291116.P10079397762746965301

/-!
# A291119: Triangle read by rows: T(n,k) number of ways of partitioning the (n+4)-element multiset {1,1,1,1,1,2,3,...,n} into exactly k nonempty parts, n >= 0 and 1 <= k <= n + 4.

The programs for A291119, there is no canonical definition to state claims against.
-/

/-! ## A291119.P10439355439469172659

`A246028(A038455(n+1)*A338236(3*n+2))`
-/

namespace A291119.P10439355439469172659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 (A038455 (n + 1) * A338236 (3 * n + 2)).toNat

end

end A291119.P10439355439469172659

/-!
# A291121: Number of parking functions of length 2n whose maximum element is n.

The programs for A291121, there is no canonical definition to state claims against.
-/

/-! ## A291121.P12252645341214160807

`A260693(∑[4*n])`
-/

namespace A291121.P12252645341214160807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260693 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291121.P12252645341214160807

/-! ## A291121.P2073643155647301341

`char[A025581(n)]*A260693(A046092(n))`
-/

namespace A291121.P2073643155647301341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A260693 (A046092 n).toNat

end

end A291121.P2073643155647301341

/-! ## A291121.P11861051797352053726

`char[A057300(n)]*A260693(A046092(n))`
-/

namespace A291121.P11861051797352053726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A260693 (A046092 n).toNat

end

end A291121.P11861051797352053726

/-! ## A291121.P12684656168631069627

`A260693(A046092(n))+A260675(3*n+1)`
-/

namespace A291121.P12684656168631069627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260693 (A046092 n).toNat + A260675 (3 * n + 1)

end

end A291121.P12684656168631069627

/-! ## A291121.P17703287444175069939

`A014963(A036379(n+1))*A260693(A046092(n))`
-/

namespace A291121.P17703287444175069939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A036379 (n + 1)).toNat * A260693 (A046092 n).toNat

end

end A291121.P17703287444175069939

/-!
# A291122: Numbers k such that k!4 + 2^2 is prime, where k!4 = k!!!! is the quadruple factorial number (A007662).

The programs for A291122, there is no canonical definition to state claims against.
-/

/-! ## A291122.P5033003453380144334

`record[A254764(n+1)%A293535(n+1)]`
-/

namespace A291122.P5033003453380144334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254764 (n + 1)) (A293535 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291122.P5033003453380144334

/-!
# A291123: Number of ways to write 4*n+1 as (p-1)^2 + q^2 + r^2, where p is prime and q and r are nonnegative integers with q <= r.

The programs for A291123, there is no canonical definition to state claims against.
-/

/-! ## A291123.P10100340452905517297

`A030998(A290995(n+2)+A281013(n+1))`
-/

namespace A291123.P10100340452905517297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (A290995 (n + 2) + A281013 (n + 1)).toNat

end

end A291123.P10100340452905517297

/-! ## A291123.P7400850791700097281

`A086669(A086625(n))+A011655(n)`
-/

namespace A291123.P7400850791700097281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (A086625 n).toNat + A011655 n

end

end A291123.P7400850791700097281

/-! ## A291123.P9547605370083123198

`A001221(A005009(n+1)-A001611(n))`
-/

namespace A291123.P9547605370083123198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005009 (n + 1) - A001611 n).toNat

end

end A291123.P9547605370083123198

/-! ## A291123.P8742956702329888368

`A001221(A086224(n+1)-A000045(n))`
-/

namespace A291123.P8742956702329888368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086224 (n + 1) - A000045 n).toNat

end

end A291123.P8742956702329888368

/-! ## A291123.P7230976840986604856

`A087039(A022568(n)*A066633(n+3))`
-/

namespace A291123.P7230976840986604856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A022568 n * A066633 (n + 3)).toNat

end

end A291123.P7230976840986604856

/-!
# A291124: Expansion of phi(x)^6 * phi(-x)^2 in powers of x where phi() is a Ramanujan theta function.

The programs for A291124, there is no canonical definition to state claims against.
-/

/-! ## A291124.P10730142639127226236

`-A030188(A030225(3*n+2))`
-/

namespace A291124.P10730142639127226236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030188 (A030225 (3 * n + 2)).toNat

end

end A291124.P10730142639127226236

/-!
# A291125: "Doubly A289484" numbers: numbers with prime factorization p1^e1 * p2^e2 * ... * pk^ek such that there exist i < j < k with p1^e1 * p2^e2 * ... pi^ei > p(i+1) and p1^e1 * p2^e2 * ... pj^ej > p(j+1).

The programs for A291125, there is no canonical definition to state claims against.
-/

/-! ## A291125.P2549908840709767487

`A009129(lt[A352035(2*n+3), A145549(2*(n+1))])`
-/

namespace A291125.P2549908840709767487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352035 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145549 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009129 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291125.P2549908840709767487

/-! ## A291125.P12538915030080825934

`A009129(A007417(n+1)%A001997(3*(n+1)))`
-/

namespace A291125.P12538915030080825934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009129 (Int.tmod (A007417 (n + 1)) (A001997 (3 * (n + 1)))).toNat

end

end A291125.P12538915030080825934

/-!
# A291127: Consider the zeros of the polynomial P(m,x) whose coefficients are the divisors of a number m. The sequence lists the numbers m such that P(m,x) contains at least two zeros that are purely imaginary numbers.

The programs for A291127, there is no canonical definition to state claims against.
-/

/-! ## A291127.P11226366524499463639

`∩[A120497(n+1), A027855(n+2)]`
-/

namespace A291127.P11226366524499463639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291127.P11226366524499463639

/-! ## A291127.P5841910944761750663

`eq[A032741(A337984(n+1)), A032741(n)]`
-/

namespace A291127.P5841910944761750663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A337984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291127.P5841910944761750663

/-! ## A291127.P4838789001861885618

`eq[A319410(A337984(n+1)), A319410(n)]`
-/

namespace A291127.P4838789001861885618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (A337984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291127.P4838789001861885618

/-! ## A291127.P3213615674900067013

`eq[4, A000005(A034495(n+1)+n+1)]+1`
-/

namespace A291127.P3213615674900067013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034495 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291127.P3213615674900067013

/-! ## A291127.P5084595836975646872

`eq[∏{e}[n, #+1]-1, A225445(A076303(n+1))]`
-/

namespace A291127.P5084595836975646872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 (A076303 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A291127.P5084595836975646872

/-!
# A291128: Number of defective parking functions of length n and defect two.

The programs for A291128, there is no canonical definition to state claims against.
-/

/-! ## A291128.P6681366157822743681

`A264902(∑[n+2]+4)`
-/

namespace A291128.P6681366157822743681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A291128.P6681366157822743681

/-! ## A291128.P2624874083717051725

`record[gcd(A264902(n+1), A303913(n))]`
-/

namespace A291128.P2624874083717051725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264902 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291128.P2624874083717051725

/-! ## A291128.P9590524856222731642

`lcm((-1)^n, A264902(A167614(n+1)))`
-/

namespace A291128.P9590524856222731642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264902 (A167614 (n + 1)).toNat)

end

end A291128.P9590524856222731642

/-! ## A291128.P2406370869845654732

`gcd(A000038(n), A264902(A167614(n+1)))`
-/

namespace A291128.P2406370869845654732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A264902 (A167614 (n + 1)).toNat)

end

end A291128.P2406370869845654732

/-! ## A291128.P5375739684255364697

`or(A000007(n), A264902(A167614(n+1)))`
-/

namespace A291128.P5375739684255364697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A264902 (A167614 (n + 1)).toNat)

end

end A291128.P5375739684255364697

/-! ## A291128.P15258218244953263159

`or(A151878(n), A264902(A167614(n+1)))`
-/

namespace A291128.P15258218244953263159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A264902 (A167614 (n + 1)).toNat)

end

end A291128.P15258218244953263159

/-! ## A291128.P12580262294321964484

`A267860(2*n)+A264902(A167614(n+1))`
-/

namespace A291128.P12580262294321964484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267860 (2 * n) + A264902 (A167614 (n + 1)).toNat

end

end A291128.P12580262294321964484

/-!
# A291129: Number of defective parking functions of length n and defect three.

The programs for A291129, there is no canonical definition to state claims against.
-/

/-! ## A291129.P16975248487252682609

`A264902(A052905(n)+9)`
-/

namespace A291129.P16975248487252682609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A052905 n + 9).toNat

end

end A291129.P16975248487252682609

/-! ## A291129.P6915687321113114603

`A264902(A055999(n)+10)`
-/

namespace A291129.P6915687321113114603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A055999 n + 10).toNat

end

end A291129.P6915687321113114603

/-! ## A291129.P14759067894454808195

`A264902(A167614(n+2)+1)`
-/

namespace A291129.P14759067894454808195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A167614 (n + 2) + 1).toNat

end

end A291129.P14759067894454808195

/-! ## A291129.P12037271517861233943

`A264902(A167487(n+2)-3)`
-/

namespace A291129.P12037271517861233943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A167487 (n + 2) - 3).toNat

end

end A291129.P12037271517861233943

/-! ## A291129.P3069509168001962580

`A264902(eq[5, A131818(n+1)])`
-/

namespace A291129.P3069509168001962580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291129.P3069509168001962580

/-!
# A291130: Number of defective parking functions of length n and defect four.

The programs for A291130, there is no canonical definition to state claims against.
-/

/-! ## A291130.P2667204042197230267

`A264902(A167499(n+3))`
-/

namespace A291130.P2667204042197230267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A167499 (n + 3)).toNat

end

end A291130.P2667204042197230267

/-! ## A291130.P6530670118187011087

`A264902(A155212(n)+13)`
-/

namespace A291130.P6530670118187011087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A155212 n + 13).toNat

end

end A291130.P6530670118187011087

/-! ## A291130.P14940284094344412443

`A264902(A056000(n)+15)`
-/

namespace A291130.P14940284094344412443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A056000 n + 15).toNat

end

end A291130.P14940284094344412443

/-! ## A291130.P17117621281743694681

`A264902(A000124(n+4)+4)`
-/

namespace A291130.P17117621281743694681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A000124 (n + 4) + 4).toNat

end

end A291130.P17117621281743694681

/-! ## A291130.P2768612496519725106

`A264902(eq[6, A131818(n+1)])`
-/

namespace A291130.P2768612496519725106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291130.P2768612496519725106

/-! ## A291130.P16582977018335201881

`A264902(eq[6, A135223(n+1)])`
-/

namespace A291130.P16582977018335201881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291130.P16582977018335201881

/-!
# A291131: Number of defective parking functions of length n and defect five.

The programs for A291131, there is no canonical definition to state claims against.
-/

/-! ## A291131.P4053872542885895718

`A264902(A167499(n+4)+1)`
-/

namespace A291131.P4053872542885895718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A167499 (n + 4) + 1).toNat

end

end A291131.P4053872542885895718

/-! ## A291131.P13195335375501648312

`A264902(A000217(n+5)+6)`
-/

namespace A291131.P13195335375501648312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A000217 (n + 5) + 6).toNat

end

end A291131.P13195335375501648312

/-! ## A291131.P8123406223310273169

`A264902(A046691(n+3)+10)`
-/

namespace A291131.P8123406223310273169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A046691 (n + 3) + 10).toNat

end

end A291131.P8123406223310273169

/-! ## A291131.P17201435223326536964

`A264902(eq[6, A130270(n+1)])`
-/

namespace A291131.P17201435223326536964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291131.P17201435223326536964

/-! ## A291131.P1143604216827422910

`A264902(eq[7, A131818(n+1)])`
-/

namespace A291131.P1143604216827422910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291131.P1143604216827422910

/-!
# A291132: Number of defective parking functions of length n and defect six.

The programs for A291132, there is no canonical definition to state claims against.
-/

/-! ## A291132.P1576607929142302058

`A264902(eq[11, A066657(n)])`
-/

namespace A291132.P1576607929142302058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291132.P1576607929142302058

/-! ## A291132.P17746498731593336956

`A264902(A167499(n+5)+2)`
-/

namespace A291132.P17746498731593336956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A167499 (n + 5) + 2).toNat

end

end A291132.P17746498731593336956

/-! ## A291132.P16581906680159967567

`A264902(A000217(n+6)+7)`
-/

namespace A291132.P16581906680159967567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A000217 (n + 6) + 7).toNat

end

end A291132.P16581906680159967567

/-! ## A291132.P4936341263884934742

`A264902(eq[6, A002262(n)]+1)`
-/

namespace A291132.P4936341263884934742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A291132.P4936341263884934742

/-! ## A291132.P6421417355763793577

`A264902(eq[8, A131818(n+1)])`
-/

namespace A291132.P6421417355763793577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291132.P6421417355763793577

/-!
# A291133: Number of defective parking functions of length n and defect seven.

The programs for A291133, there is no canonical definition to state claims against.
-/

/-! ## A291133.P7697131775057430981

`A264902(eq[13, A066657(n)])`
-/

namespace A291133.P7697131775057430981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291133.P7697131775057430981

/-! ## A291133.P15170281915181717552

`A264902(A167614(n+6)+5)`
-/

namespace A291133.P15170281915181717552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A167614 (n + 6) + 5).toNat

end

end A291133.P15170281915181717552

/-! ## A291133.P16135269728544486636

`A264902(A000217(n+7)+8)`
-/

namespace A291133.P16135269728544486636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A000217 (n + 7) + 8).toNat

end

end A291133.P16135269728544486636

/-! ## A291133.P1033042209306805913

`A264902(eq[9, A131818(n+1)])`
-/

namespace A291133.P1033042209306805913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291133.P1033042209306805913

/-! ## A291133.P1754000898580243458

`A264902(A167499(n+7)-(n+5))`
-/

namespace A291133.P1754000898580243458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A167499 (n + 7) - (n + 5 : ℤ)).toNat

end

end A291133.P1754000898580243458

/-!
# A291134: Number of defective parking functions of length n and defect eight.

The programs for A291134, there is no canonical definition to state claims against.
-/

/-! ## A291134.P937509639207496941

`A264902(eq[17, A066657(n)])`
-/

namespace A291134.P937509639207496941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291134.P937509639207496941

/-! ## A291134.P12205423597880314242

`A264902(A167499(n+7)+4)`
-/

namespace A291134.P12205423597880314242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A167499 (n + 7) + 4).toNat

end

end A291134.P12205423597880314242

/-! ## A291134.P5699950773060833392

`A264902(eq[8, A002262(n)]+1)`
-/

namespace A291134.P5699950773060833392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A291134.P5699950773060833392

/-! ## A291134.P4414861795661117016

`A264902(eq[10, A131818(n+1)])`
-/

namespace A291134.P4414861795661117016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291134.P4414861795661117016

/-! ## A291134.P4162789373713165246

`A264902(eq[10, A135223(n+1)])`
-/

namespace A291134.P4162789373713165246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291134.P4162789373713165246

/-!
# A291135: Number of defective parking functions of length n and defect nine.

The programs for A291135, there is no canonical definition to state claims against.
-/

/-! ## A291135.P8033545069338852434

`A264902(A000217(n+9)+10)`
-/

namespace A291135.P8033545069338852434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (A000217 (n + 9) + 10).toNat

end

end A291135.P8033545069338852434

/-! ## A291135.P3008449929918371784

`A264902(eq[10, A130270(n+1)])`
-/

namespace A291135.P3008449929918371784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291135.P3008449929918371784

/-! ## A291135.P7605978631648868814

`A264902(eq[11, A131818(n+1)])`
-/

namespace A291135.P7605978631648868814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291135.P7605978631648868814

/-!
# A291137: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of inverse of k-th cyclotomic polynomial.

The programs for A291137, there is no canonical definition to state claims against.
-/

/-! ## A291137.P14093352300590704242

`Δ[A131531(A014462(n+1)+A000045(n+2))]`
-/

namespace A291137.P14093352300590704242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (A014462 (n + 1) + A000045 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291137.P14093352300590704242

/-! ## A291137.P12292660492625746150

`A008683(A139714(n+1)-A008683(2*n+3))`
-/

namespace A291137.P12292660492625746150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139714 (n + 1) - A008683 (2 * n + 3)).toNat

end

end A291137.P12292660492625746150

/-! ## A291137.P11187394030596360557

`A029883(∑[A163915(A245282(n+1))])`
-/

namespace A291137.P11187394030596360557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 (A245282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291137.P11187394030596360557

/-! ## A291137.P9360691631417372675

`A106400(n)%A320487(A112340(n+1))`
-/

namespace A291137.P9360691631417372675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106400 n) (A320487 (A112340 (n + 1)).toNat)

end

end A291137.P9360691631417372675

/-! ## A291137.P3679860414361654536

`A016345(A311086(n))`
-/

namespace A291137.P3679860414361654536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016345 (A311086 n).toNat

end

end A291137.P3679860414361654536

/-!
# A291138: a(n) is the smallest k such that psi(k) and phi(k) have same distinct prime factors when k is the product of n distinct primes (psi(k) = A001615(k) and phi(k) = A000010(k)), or 0 if no such k exists.

The programs for A291138, there is no canonical definition to state claims against.
-/

/-! ## A291138.P18010556653530711845

`A002110(n)*A239693(A348764(n+1))`
-/

namespace A291138.P18010556653530711845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A239693 (A348764 (n + 1)).toNat

end

end A291138.P18010556653530711845

/-!
# A291139: Primes of the form floor(k^(3/2)) for some integer k.

The programs for A291139, the canonical program `A291139.P12754508386249642698` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291139 has offset 1).

The definition of A291139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 731 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291139.P12754508386249642698

`p?[floor(sqrt(n^3))]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291139

/-- `p?[floor(sqrt(n^3))]` -/
def P12754508386249642698.Spec : Prop :=
  ∀ n, (P12754508386249642698.a n : ℤ) = A291139 (n + 1)

theorem P12754508386249642698.correct : P12754508386249642698.Spec := by
  intro n
  simp only [A291139, Nat.add_sub_cancel]

end A291139

/-! ## A291139.P11870651649885922399

`∏{d}[p?[floor(n*sqrt(n))], #]`
-/

namespace A291139.P11870651649885922399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A291139.P11870651649885922399

namespace A291139

/-- `∏{d}[p?[floor(n*sqrt(n))], #]` -/
def P11870651649885922399.Spec : Prop :=
  ∀ n, (P11870651649885922399.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P1008254081820039142

`∑{p}[p?[floor(n*sqrt(n))], #]`
-/

namespace A291139.P1008254081820039142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A291139.P1008254081820039142

namespace A291139

/-- `∑{p}[p?[floor(n*sqrt(n))], #]` -/
def P1008254081820039142.Spec : Prop :=
  ∀ n, (P1008254081820039142.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P8869868923377497575

`∏{p}[p?[floor(n*sqrt(n))], #]`
-/

namespace A291139.P8869868923377497575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A291139.P8869868923377497575

namespace A291139

/-- `∏{p}[p?[floor(n*sqrt(n))], #]` -/
def P8869868923377497575.Spec : Prop :=
  ∀ n, (P8869868923377497575.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P12132723516984860264

`p?[floor(n*sqrt(n))]%A189229(n+1)`
-/

namespace A291139.P12132723516984860264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A189229 (n + 1))

end

end A291139.P12132723516984860264

namespace A291139

/-- `p?[floor(n*sqrt(n))]%A189229(n+1)` -/
def P12132723516984860264.Spec : Prop :=
  ∀ n, P12132723516984860264.a n = A291139 (n + 1)

end A291139

/-! ## A291139.P17709257133286622132

`p?[A000093(n)]%A155014(n+2)`
-/

namespace A291139.P17709257133286622132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A155014 (n + 2))

end

end A291139.P17709257133286622132

namespace A291139

/-- `p?[A000093(n)]%A155014(n+2)` -/
def P17709257133286622132.Spec : Prop :=
  ∀ n, P17709257133286622132.a n = A291139 (n + 1)

end A291139

/-! ## A291139.P14043103076029215355

`record[p?[A000093(A137661(n+1))]]`
-/

namespace A291139.P14043103076029215355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A137661 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291139.P14043103076029215355

namespace A291139

/-- `record[p?[A000093(A137661(n+1))]]` -/
def P14043103076029215355.Spec : Prop :=
  ∀ n, P14043103076029215355.a n = A291139 (n + 1)

end A291139

/-! ## A291139.P15611571117533132674

`∩[A000040(n+1), A000093(n)]`
-/

namespace A291139.P15611571117533132674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291139.P15611571117533132674

namespace A291139

/-- `∩[A000040(n+1), A000093(n)]` -/
def P15611571117533132674.Spec : Prop :=
  ∀ n, (P15611571117533132674.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P17482762528322172788

`∩[A045344(n+1), A000093(n)]`
-/

namespace A291139.P17482762528322172788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291139.P17482762528322172788

namespace A291139

/-- `∩[A045344(n+1), A000093(n)]` -/
def P17482762528322172788.Spec : Prop :=
  ∀ n, (P17482762528322172788.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P1973576251596837825

`∩[A053813(n+1), A000093(n)]`
-/

namespace A291139.P1973576251596837825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291139.P1973576251596837825

namespace A291139

/-- `∩[A053813(n+1), A000093(n)]` -/
def P1973576251596837825.Spec : Prop :=
  ∀ n, (P1973576251596837825.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P17409779945476487692

`∩[A116974(n+1), A000093(n)]`
-/

namespace A291139.P17409779945476487692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291139.P17409779945476487692

namespace A291139

/-- `∩[A116974(n+1), A000093(n)]` -/
def P17409779945476487692.Spec : Prop :=
  ∀ n, (P17409779945476487692.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P13333688969256806267

`∩[A175787(n+1), A000093(n)]`
-/

namespace A291139.P13333688969256806267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291139.P13333688969256806267

namespace A291139

/-- `∩[A175787(n+1), A000093(n)]` -/
def P13333688969256806267.Spec : Prop :=
  ∀ n, (P13333688969256806267.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P16964046653290600955

`∩[A189710(n+1), A000093(n)]`
-/

namespace A291139.P16964046653290600955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291139.P16964046653290600955

namespace A291139

/-- `∩[A189710(n+1), A000093(n)]` -/
def P16964046653290600955.Spec : Prop :=
  ∀ n, (P16964046653290600955.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P7574250516159949022

`∩[A328232(n+1), A000093(n)]`
-/

namespace A291139.P7574250516159949022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291139.P7574250516159949022

namespace A291139

/-- `∩[A328232(n+1), A000093(n)]` -/
def P7574250516159949022.Spec : Prop :=
  ∀ n, (P7574250516159949022.a n : ℤ) = A291139 (n + 1)

end A291139

/-! ## A291139.P13765552741522514898

`record[A006530(A000093(n+2))]`
-/

namespace A291139.P13765552741522514898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000093 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291139.P13765552741522514898

namespace A291139

/-- `record[A006530(A000093(n+2))]` -/
def P13765552741522514898.Spec : Prop :=
  ∀ n, P13765552741522514898.a n = A291139 (n + 1)

end A291139

/-! ## A291139.P15074684449787788743

`filter[A000093(n+1), A010051(#)]`
-/

namespace A291139.P15074684449787788743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A291139.P15074684449787788743

namespace A291139

/-- `filter[A000093(n+1), A010051(#)]` -/
def P15074684449787788743.Spec : Prop :=
  ∀ n, P15074684449787788743.a n = A291139 (n + 1)

end A291139

/-! ## A291139.P3563836849346183892

`filter[A000093(n+1), A323153(#)]`
-/

namespace A291139.P3563836849346183892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A291139.P3563836849346183892

namespace A291139

/-- `filter[A000093(n+1), A323153(#)]` -/
def P3563836849346183892.Spec : Prop :=
  ∀ n, P3563836849346183892.a n = A291139 (n + 1)

end A291139

/-! ## A291139.P5403292838250951978

`filter[A000093(n+2), A323152(#)]`
-/

namespace A291139.P5403292838250951978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A291139.P5403292838250951978

namespace A291139

/-- `filter[A000093(n+2), A323152(#)]` -/
def P5403292838250951978.Spec : Prop :=
  ∀ n, P5403292838250951978.a n = A291139 (n + 1)

end A291139

/-!
# A291140: Sum of the n-th powers of the first n primes.

The programs for A291140, there is no canonical definition to state claims against.
-/

/-! ## A291140.P7725701699627649650

`∑[abs(Δ[A120459(n)])]`
-/

namespace A291140.P7725701699627649650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291140.P7725701699627649650

/-! ## A291140.P17826456105623979603

`A120459(n+1)-1`
-/

namespace A291140.P17826456105623979603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120459 (n + 1) - 1

end

end A291140.P17826456105623979603

/-! ## A291140.P12612780171919022762

`A120492(n+2)-(A093360(n+2)+1)`
-/

namespace A291140.P12612780171919022762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120492 (n + 2) - (A093360 (n + 2) + 1)

end

end A291140.P12612780171919022762

/-! ## A291140.P9194311334160474689

`n+1+A123855(n+1)-A124271(n+1)`
-/

namespace A291140.P9194311334160474689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A123855 (n + 1) - A124271 (n + 1))

end

end A291140.P9194311334160474689

/-!
# A291141: a(1) = 3 and a(n+1) is the least prime greater than a(n) + 2n such that a(n+1) + 2n + 2 is prime.

The programs for A291141, there is no canonical definition to state claims against.
-/

/-! ## A291141.P15750550022492912194

`p?[A322902(∑[A140595(n)])]`
-/

namespace A291141.P15750550022492912194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291141.P15750550022492912194

/-! ## A291141.P10373774835452183002

`A368100(A324766(n+1)+A324742(n+1))`
-/

namespace A291141.P10373774835452183002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (A324766 (n + 1) + A324742 (n + 1)).toNat

end

end A291141.P10373774835452183002

/-! ## A291141.P16406243904268832376

`A368100(A324849(n+1)+A324742(n+1))`
-/

namespace A291141.P16406243904268832376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (A324849 (n + 1) + A324742 (n + 1)).toNat

end

end A291141.P16406243904268832376

/-! ## A291141.P12030159370242680028

`A326623(A326635(2*(n+1))+A326623(3*n+1))`
-/

namespace A291141.P12030159370242680028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (A326635 (2 * (n + 1)) + A326623 (3 * n + 1)).toNat

end

end A291141.P12030159370242680028

/-!
# A291142: a(n) = (1/4)*A291024(n).

The programs for A291142, the canonical program `A291142.P9047614576043823958` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291142 has offset 0).

The definition of A291142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291142.P9047614576043823958

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291142

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P9047614576043823958.Spec : Prop :=
  ∀ n, P9047614576043823958.a n = A291142 n

theorem P9047614576043823958.correct : P9047614576043823958.Spec := by
  intro n
  simp only [A291142]

end A291142

/-! ## A291142.P12954274801817990335

`1/4*A291024(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291142.P12954274801817990335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A291024 n : ℚ)

end

end A291142.P12954274801817990335

namespace A291142

/-- `1/4*A291024(n)` -/
def P12954274801817990335.Spec : Prop :=
  ∀ n, P12954274801817990335.a n = (A291142 n : ℚ)

end A291142

/-! ## A291142.P16299144054113324822

`A006645(abs(1-n))+A000129(n)`
-/

namespace A291142.P16299144054113324822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 |1 - (n : ℤ)|.toNat + A000129 n

end

end A291142.P16299144054113324822

namespace A291142

/-- `A006645(abs(1-n))+A000129(n)` -/
def P16299144054113324822.Spec : Prop :=
  ∀ n, P16299144054113324822.a n = A291142 n

end A291142

/-! ## A291142.P7682892056086287139

`∑[(A093969(n)+A000129(n))/2]`
-/

namespace A291142.P7682892056086287139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093969 n + A000129 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291142.P7682892056086287139

namespace A291142

/-- `∑[(A093969(n)+A000129(n))/2]` -/
def P7682892056086287139.Spec : Prop :=
  ∀ n, P7682892056086287139.a n = (A291142 n : ℚ)

end A291142

/-! ## A291142.P1785368709284989563

`A291024(n)/4`
-/

namespace A291142.P1785368709284989563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291024 n : ℚ) / 4

end

end A291142.P1785368709284989563

namespace A291142

/-- `A291024(n)/4` -/
def P1785368709284989563.Spec : Prop :=
  ∀ n, P1785368709284989563.a n = (A291142 n : ℚ)

end A291142

/-! ## A291142.P9066262535472411567

`Δ[A006645(n)]-A006645(n)`
-/

namespace A291142.P9066262535472411567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006645 n

end

end A291142.P9066262535472411567

namespace A291142

/-- `Δ[A006645(n)]-A006645(n)` -/
def P9066262535472411567.Spec : Prop :=
  ∀ n, P9066262535472411567.a n = A291142 n

end A291142

/-! ## A291142.P1493238838455629320

`A006645(n+1)-2*A006645(n)`
-/

namespace A291142.P1493238838455629320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) - 2 * A006645 n

end

end A291142.P1493238838455629320

namespace A291142

/-- `A006645(n+1)-2*A006645(n)` -/
def P1493238838455629320.Spec : Prop :=
  ∀ n, P1493238838455629320.a n = A291142 n

end A291142

/-! ## A291142.P14097002184717858729

`Δ[(A093969(n+1)+A000129(n))/4]`
-/

namespace A291142.P14097002184717858729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093969 (n + 1) + A000129 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291142.P14097002184717858729

namespace A291142

/-- `Δ[(A093969(n+1)+A000129(n))/4]` -/
def P14097002184717858729.Spec : Prop :=
  ∀ n, P14097002184717858729.a n = (A291142 n : ℚ)

end A291142

/-! ## A291142.P14565053448431403344

`A054447(n)%Δ[Δ[A006645(n)]]`
-/

namespace A291142.P14565053448431403344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054447 n) (f1 (n + 1) - f1 n)

end

end A291142.P14565053448431403344

namespace A291142

/-- `A054447(n)%Δ[Δ[A006645(n)]]` -/
def P14565053448431403344.Spec : Prop :=
  ∀ n, P14565053448431403344.a n = A291142 n

end A291142

/-!
# A291143: p-INVERT of (1,1,1,1,1,...), where p(S) = (1 - S^3)^3.

The programs for A291143, there is no canonical definition to state claims against.
-/

/-! ## A291143.P16925626104907868160

`Δ[A080607(A332295(∑[n]))]`
-/

namespace A291143.P16925626104907868160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080607 (A332295 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291143.P16925626104907868160

/-! ## A291143.P2669551561827462736

`A040218((n²+17*n+64)*2^(n-2)-15)*A290997(n)`
-/

namespace A291143.P2669551561827462736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040218 (SequenceMachineLib.roundAway ((n ^ 2 + 17 * n + 64 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 15)).toNat * A290997 n

end

end A291143.P2669551561827462736

/-! ## A291143.P4017157451879968705

`A010702(A000142(n))*A052103(n)`
-/

namespace A291143.P4017157451879968705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A000142 n).toNat * A052103 n

end

end A291143.P4017157451879968705

/-! ## A291143.P799444041094545471

`A048250(A046161(n))*A052103(n)`
-/

namespace A291143.P799444041094545471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A046161 n).toNat * A052103 n

end

end A291143.P799444041094545471

/-!
# A291144: a(n) is the smallest number k such that psi(k) = A001615(k) is the product of n distinct primes.

The programs for A291144, there is no canonical definition to state claims against.
-/

/-! ## A291144.P4236111837491539072

`A106291(A112670(n+2))+A000009(n)`
-/

namespace A291144.P4236111837491539072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A112670 (n + 2)).toNat + A000009 n

end

end A291144.P4236111837491539072

/-!
# A291145: 

The programs for A291145, there is no canonical definition to state claims against.
-/

/-! ## A291145.P13695210578838971335

`A286650(n)^4`
-/

namespace A291145.P13695210578838971335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286650 n ^ 4

end

end A291145.P13695210578838971335

/-!
# A291146: Expansion of 1/(1 - x/(1 - x^8/(1 - x^27/(1 - x^64/(1 - x^125/(1 - x^216/(1 - ... - x^(n^3)/(1 - ...)))))))), a continued fraction.

The programs for A291146, there is no canonical definition to state claims against.
-/

/-! ## A291146.P623739779580692061

`A367800(n)%A002764(n)`
-/

namespace A291146.P623739779580692061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367800 n) (A002764 n)

end

end A291146.P623739779580692061

/-! ## A291146.P16219481321809992067

`and(A359082(n+1), A367800(n))`
-/

namespace A291146.P16219481321809992067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359082 (n + 1)) (A367800 n)

end

end A291146.P16219481321809992067

/-! ## A291146.P15904131226981087372

`A008966(A027642(n))*A367800(n)`
-/

namespace A291146.P15904131226981087372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A027642 n).toNat * A367800 n

end

end A291146.P15904131226981087372

/-! ## A291146.P1816556984182834960

`A367800(n)+A056170(A127341(n+2))`
-/

namespace A291146.P1816556984182834960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367800 n + A056170 (A127341 (n + 2)).toNat

end

end A291146.P1816556984182834960

/-! ## A291146.P5082297899598816045

`and(A057428(A208852(n+1)), A367800(n))`
-/

namespace A291146.P5082297899598816045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (A208852 (n + 1)).toNat) (A367800 n)

end

end A291146.P5082297899598816045

/-!
# A291147: Expansion of 1 - x/(1 - x^8/(1 - x^27/(1 - x^64/(1 - x^125/(1 - x^216/(1 - ... - x^(n^3)/(1 - ...))))))), a continued fraction.

The programs for A291147, there is no canonical definition to state claims against.
-/

/-! ## A291147.P10107908096368836620

`floor(Δ[or(4, n+2)]%2/A066369(n))`
-/

namespace A291147.P10107908096368836620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 : ℚ) / (A066369 n : ℚ)⌋

end

end A291147.P10107908096368836620

/-! ## A291147.P9074653203504801541

`floor(A208604(n)/A066369(n))`
-/

namespace A291147.P9074653203504801541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208604 n : ℚ) / (A066369 n : ℚ)⌋

end

end A291147.P9074653203504801541

/-! ## A291147.P5922012778422329705

`floor(A208604(n)/A092820(n))`
-/

namespace A291147.P5922012778422329705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208604 n : ℚ) / (A092820 n : ℚ)⌋

end

end A291147.P5922012778422329705

/-! ## A291147.P14874868430939517420

`floor(A112301(n+1)/A178877(n+1))`
-/

namespace A291147.P14874868430939517420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112301 (n + 1) : ℚ) / (A178877 (n + 1) : ℚ)⌋

end

end A291147.P14874868430939517420

/-! ## A291147.P15033045926282355124

`A263635(2*n+3)+A368329(3*n+5)%2-1`
-/

namespace A291147.P15033045926282355124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263635 (2 * n + 3) + Int.tmod (A368329 (3 * n + 5)) 2 - 1

end

end A291147.P15033045926282355124

/-!
# A291149: Expansion of 1/(1 - x/(1 - x^16/(1 - x^81/(1 - x^256/(1 - x^625/(1 - x^1296/(1 - ... - x^(n^4)/(1 - ...)))))))), a continued fraction.

The programs for A291149, there is no canonical definition to state claims against.
-/

/-! ## A291149.P16743846199834437751

`A363748(abs(1-n))`
-/

namespace A291149.P16743846199834437751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363748 |1 - (n : ℤ)|.toNat

end

end A291149.P16743846199834437751

/-! ## A291149.P9125936366011626479

`∑[A025876(∑[A245536(3*n+4)])]`
-/

namespace A291149.P9125936366011626479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245536 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025876 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291149.P9125936366011626479

/-! ## A291149.P15906992666626226141

`Δ[n²]-comp[A176036(n+1)]`
-/

namespace A291149.P15906992666626226141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176036 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A291149.P15906992666626226141

/-! ## A291149.P5451919154663897895

`∑[A010059(∑[A369732(n)])]`
-/

namespace A291149.P5451919154663897895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291149.P5451919154663897895

/-! ## A291149.P7070214086096072159

`∑[A133872(A003892(n+1))]`
-/

namespace A291149.P7070214086096072159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A003892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291149.P7070214086096072159

/-!
# A291150: Number of ways to write 2*n+1 as x^2 + y^2 + z^2 + 4*w^2, where x,y,z,w are nonnegative integers with x <= y <= z such that 2^x + 2^y + 2^z + 1 is prime.

The programs for A291150, there is no canonical definition to state claims against.
-/

/-! ## A291150.P6614160967891683571

`A001222(lcm(A111227(n+1), A292375(n+1)))`
-/

namespace A291150.P6614160967891683571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A111227 (n + 1)) (A292375 (n + 1)))

end

end A291150.P6614160967891683571

/-! ## A291150.P1394396606313379778

`A257639(A039635(n+1)^A157635(A199123(n)))`
-/

namespace A291150.P1394396606313379778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (SequenceMachineLib.roundAway ((A039635 (n + 1) : ℚ) ^ (A157635 (A199123 n).toNat : ℤ))).toNat

end

end A291150.P1394396606313379778

/-! ## A291150.P1765842423633622796

`A001221(A000098(∑{d}[n+1, #*#%2]))`
-/

namespace A291150.P1765842423633622796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000098 (∑ d ∈ Nat.divisors (f1 n), d * (d % 2))).toNat

end

end A291150.P1765842423633622796

/-! ## A291150.P2608720488422747226

`A001222(A041006(floor(n/(xor(n, n+1)+1))))`
-/

namespace A291150.P2608720488422747226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A041006 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat).toNat

end

end A291150.P2608720488422747226

/-! ## A291150.P4467638620503534581

`A026600(A228564(floor(n/(xor(n, n+1)+1)))²)`
-/

namespace A291150.P4467638620503534581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (A228564 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat ^ 2).toNat

end

end A291150.P4467638620503534581

/-!
# A291151: Sequence of numbers on the single-zero (European) roulette wheel, read counterclockwise.

The programs for A291151, there is no canonical definition to state claims against.
-/

/-! ## A291151.P12483465464522840068

`A069892(A161952(n+1)-A023482(2*n+3))`
-/

namespace A291151.P12483465464522840068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (A161952 (n + 1) - A023482 (2 * n + 3)).toNat

end

end A291151.P12483465464522840068

/-!
# A291153: a(n) is the prime index of A191304(n+1).

The programs for A291153, there is no canonical definition to state claims against.
-/

/-! ## A291153.P15570972419375143398

`A000720(A191304(n+2))`
-/

namespace A291153.P15570972419375143398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A191304 (n + 2)).toNat

end

end A291153.P15570972419375143398

/-! ## A291153.P11781956998493471578

`A000720(record[A137613(n+1)])`
-/

namespace A291153.P11781956998493471578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291153.P11781956998493471578

/-! ## A291153.P11776645742006467268

`A061395(record[A137613(n+1)])`
-/

namespace A291153.P11776645742006467268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291153.P11776645742006467268

/-! ## A291153.P1533014670316532667

`A066328(record[A137613(n+1)])`
-/

namespace A291153.P1533014670316532667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291153.P1533014670316532667

/-! ## A291153.P17517698828317896284

`A000720(record[A221869(n+1)])`
-/

namespace A291153.P17517698828317896284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291153.P17517698828317896284

/-!
# A291154: Red numbers on the roulette wheel.

The programs for A291154, there is no canonical definition to state claims against.
-/

/-! ## A291154.P10273007861187182596

`lt[0, and(n, dr(n)^7)]`
-/

namespace A291154.P10273007861187182596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (SequenceMachineLib.digitalRoot (n : ℤ) ^ 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291154.P10273007861187182596

/-! ## A291154.P13117547677716095243

`Δ[n²]-floor(sin(7*n))`
-/

namespace A291154.P13117547677716095243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ⌊Real.sin (7 * n : ℝ)⌋

end

end A291154.P13117547677716095243

/-! ## A291154.P2636199455178738760

`ceil(Δ[n²]-sin(7*n))`
-/

namespace A291154.P2636199455178738760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.sin (7 * n : ℝ)⌉

end

end A291154.P2636199455178738760

/-! ## A291154.P449094768178278122

`ceil(dr(n+1)/5+2*n)`
-/

namespace A291154.P449094768178278122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) / 5 + (2 * n : ℚ)⌉

end

end A291154.P449094768178278122

/-! ## A291154.P5149407020447846183

`comp[dr(n)%2-n*(-1)^n]`
-/

namespace A291154.P5149407020447846183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (n : ℤ) % 2 : ℕ) : ℤ) - (n : ℤ) * (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291154.P5149407020447846183

/-!
# A291155: Sequence of red numbers on the single zero (European) roulette wheel read clockwise.

The programs for A291155, there is no canonical definition to state claims against.
-/

/-! ## A291155.P12998633349343401180

`A069892(∑[p?[A035187(n+1)]])`
-/

namespace A291155.P12998633349343401180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291155.P12998633349343401180

/-! ## A291155.P10301106419659141263

`A069892(lt[A062786(n+2), A260215(n+1)])`
-/

namespace A291155.P10301106419659141263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291155.P10301106419659141263

/-! ## A291155.P11278247469427852554

`A069892(2*n+2)+A000035(A272139(n+1))`
-/

namespace A291155.P11278247469427852554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (2 * n + 2) + A000035 (A272139 (n + 1)).toNat

end

end A291155.P11278247469427852554

/-! ## A291155.P5258797126074427173

`A069892(2*n+2)*A071178(A001632(n+1))`
-/

namespace A291155.P5258797126074427173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (2 * n + 2) * A071178 (A001632 (n + 1)).toNat

end

end A291155.P5258797126074427173

/-! ## A291155.P1373521201133354888

`A051903(A347334(n+1))*A069892(2*n+2)`
-/

namespace A291155.P1373521201133354888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A347334 (n + 1)).toNat * A069892 (2 * n + 2)

end

end A291155.P1373521201133354888

/-!
# A291156: Sequence of red numbers on the single zero (European) roulette wheel read counterclockwise.

The programs for A291156, there is no canonical definition to state claims against.
-/

/-! ## A291156.P4057250468744714757

`A291151(∑[p?[A035187(n+1)]]+1)`
-/

namespace A291156.P4057250468744714757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291151 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A291156.P4057250468744714757

/-! ## A291156.P13709601598804096633

`A291151(A151764(2*(n+1))+1)`
-/

namespace A291156.P13709601598804096633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291151 (A151764 (2 * (n + 1)) + 1).toNat

end

end A291156.P13709601598804096633

/-! ## A291156.P3500390595410912252

`A291151(2*n+3)%A291160(2*n+1)²`
-/

namespace A291156.P3500390595410912252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291151 (2 * n + 3)) (A291160 (2 * n + 1) ^ 2)

end

end A291156.P3500390595410912252

/-! ## A291156.P4530983705253744919

`A291151(2*n+3)+A036987(A359757(2*n+3))`
-/

namespace A291156.P4530983705253744919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291151 (2 * n + 3) + A036987 (A359757 (2 * n + 3)).toNat

end

end A291156.P4530983705253744919

/-! ## A291156.P4540198835626561811

`A014306(A242394(3*n+4))*A291151(2*n+3)`
-/

namespace A291156.P4540198835626561811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A242394 (3 * n + 4)).toNat * A291151 (2 * n + 3)

end

end A291156.P4540198835626561811

/-!
# A291157: Sequence of black numbers on the single zero (European) roulette wheel read clockwise.

The programs for A291157, there is no canonical definition to state claims against.
-/

/-! ## A291157.P10346895439112934071

`A069892(∑[p?[A035187(n+1)]]+1)`
-/

namespace A291157.P10346895439112934071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A291157.P10346895439112934071

/-! ## A291157.P827239382490904862

`A069892(lt[A046281(n+1), A030018(n)])`
-/

namespace A291157.P827239382490904862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291157.P827239382490904862

/-! ## A291157.P12131207899437934165

`A069892(lt[A062786(n+1), A260215(n)])`
-/

namespace A291157.P12131207899437934165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291157.P12131207899437934165

/-! ## A291157.P18309682936307254316

`A069892(lt[A000040(3*n+2), A153156(n)])`
-/

namespace A291157.P18309682936307254316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069892 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291157.P18309682936307254316

/-! ## A291157.P10362873165908257902

`A359774(A006794(n+1))+A069892(2*n+3)`
-/

namespace A291157.P10362873165908257902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359774 (A006794 (n + 1)).toNat + A069892 (2 * n + 3)

end

end A291157.P10362873165908257902

/-!
# A291158: Sequence of black numbers on the single zero (European) roulette wheel read counterclockwise.

The programs for A291158, there is no canonical definition to state claims against.
-/

/-! ## A291158.P1427661709704122000

`A291151(∑[p?[A035187(n+1)]])`
-/

namespace A291158.P1427661709704122000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291151 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291158.P1427661709704122000

/-! ## A291158.P16166694028852412887

`A291151(∑[char[A213427(2*n+5)]+2])`
-/

namespace A291158.P16166694028852412887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213427 (2 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291158.P16166694028852412887

/-! ## A291158.P16446283462220456535

`A291151(2*A076084(n+1))`
-/

namespace A291158.P16446283462220456535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291151 (2 * A076084 (n + 1)).toNat

end

end A291158.P16446283462220456535

/-! ## A291158.P14273410699371423125

`A291151(2*A151764(n+1))`
-/

namespace A291158.P14273410699371423125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291151 (2 * A151764 (n + 1)).toNat

end

end A291158.P14273410699371423125

/-! ## A291158.P14601249534742303245

`A291151(lt[A286505(n), A255071(n+1)])`
-/

namespace A291158.P14601249534742303245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291151 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291158.P14601249534742303245

/-!
# A291160: Sequence of red numbers on the double zero (American) roulette wheel read counterclockwise.

The programs for A291160, there is no canonical definition to state claims against.
-/

/-! ## A291160.P6095876723353596267

`A291152(2*n+41)`
-/

namespace A291160.P6095876723353596267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291152 (2 * n + 41)

end

end A291160.P6095876723353596267

/-!
# A291164: Numbers k such that 2^psi(k) == -1 (mod k) where psi(k) = A001615(k).

The programs for A291164, there is no canonical definition to state claims against.
-/

/-! ## A291164.P1288923706638431731

`A109613((5-char[6])^n)`
-/

namespace A291164.P1288923706638431731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ((5 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ n).toNat

end

end A291164.P1288923706638431731

/-! ## A291164.P9369375698046707113

`(5^n)%A079896(A141858(2^n+1))`
-/

namespace A291164.P9369375698046707113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 ^ n : ℤ) (A079896 (A141858 (2 ^ n + 1)).toNat)

end

end A291164.P9369375698046707113

/-!
# A291165: Disconnected Haar graph numbers.

The programs for A291165, there is no canonical definition to state claims against.
-/

/-! ## A291165.P14631896440784101915

`lt[1, A064894(2*n)]`
-/

namespace A291165.P14631896440784101915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291165.P14631896440784101915

/-! ## A291165.P8887754440839297172

`lt[A064895(2*n), 2*n]`
-/

namespace A291165.P8887754440839297172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064895 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A291165.P8887754440839297172

/-! ## A291165.P17168163359833762513

`lt[1, A064894(A005408(n))²]`
-/

namespace A291165.P17168163359833762513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A005408 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291165.P17168163359833762513

/-! ## A291165.P12236105066004437912

`A337666(n+2)`
-/

namespace A291165.P12236105066004437912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 2)

end

end A291165.P12236105066004437912

/-! ## A291165.P10831201208739855113

`record[A337666(A002024(A020484(n)))]`
-/

namespace A291165.P10831201208739855113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (A002024 (A020484 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291165.P10831201208739855113

/-! ## A291165.P2684382369096081443

`record[A337666(A020986(A008619(n)))]`
-/

namespace A291165.P2684382369096081443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (A020986 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291165.P2684382369096081443

/-! ## A291165.P11582265140066191742

`record[A337666(A028920(A004442(n)))]`
-/

namespace A291165.P11582265140066191742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (A028920 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291165.P11582265140066191742

/-! ## A291165.P4475099345266280467

`record[A337666(A080513(A007599(n)))]`
-/

namespace A291165.P4475099345266280467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (A080513 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291165.P4475099345266280467

/-! ## A291165.P11626936988014551477

`record[A337666(A080513(A008611(n)))]`
-/

namespace A291165.P11626936988014551477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (A080513 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291165.P11626936988014551477

/-! ## A291165.P4850842957997135805

`record[A337666(A133310(A028242(n)))]`
-/

namespace A291165.P4850842957997135805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (A133310 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291165.P4850842957997135805

/-!
# A291166: Connected Haar graph numbers.

The programs for A291166, there is no canonical definition to state claims against.
-/

/-! ## A291166.P12645991050686438123

`comp[A337666(n+1)]`
-/

namespace A291166.P12645991050686438123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291166.P12645991050686438123

/-! ## A291166.P9196501320810331139

`eq[1, A064894(2*n)]`
-/

namespace A291166.P9196501320810331139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291166.P9196501320810331139

/-! ## A291166.P9415780820489132081

`lt[n, A064895(2*n)]`
-/

namespace A291166.P9415780820489132081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064895 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291166.P9415780820489132081

/-! ## A291166.P14200303336114780559

`eq[1, A326674(n+1)]+1`
-/

namespace A291166.P14200303336114780559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291166.P14200303336114780559

/-! ## A291166.P17129832588128792857

`comp[A291165(n+1)-1]+1`
-/

namespace A291166.P17129832588128792857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A291166.P17129832588128792857

/-! ## A291166.P10882341582473737427

`record[n+3-A326674(n+2)]`
-/

namespace A291166.P10882341582473737427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A326674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291166.P10882341582473737427

/-! ## A291166.P15718790081704906042

`eq[1, A064894(n+2+n)]+1`
-/

namespace A291166.P15718790081704906042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (n + 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291166.P15718790081704906042

/-! ## A291166.P15077391916225037525

`record[n+2-A064894(2*(n+1))]`
-/

namespace A291166.P15077391916225037525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A064894 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291166.P15077391916225037525

/-! ## A291166.P7837713197510115059

`eq[1, A052409(A057335(n))]`
-/

namespace A291166.P7837713197510115059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A057335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291166.P7837713197510115059

/-! ## A291166.P4902815859084274609

`∪[A047584(n+1), A358866(n+1)]`
-/

namespace A291166.P4902815859084274609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291166.P4902815859084274609

/-!
# A291167: Numbers k such that psi(k) is a perfect square where psi(k) = A001615(k).

The programs for A291167, the canonical program `A291167.P12219534965446572701` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291167 has offset 1).

The definition of A291167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291167.P6486474122846142908

`eq[1, A010052(A001615(n+1))]+1`
-/

namespace A291167.P6486474122846142908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A001615 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291167.P6486474122846142908

namespace A291167

/-- `eq[1, A010052(A001615(n+1))]+1` -/
def P6486474122846142908.Spec : Prop :=
  ∀ n, (P6486474122846142908.a n : ℤ) = A291167 (n + 1)

end A291167

/-! ## A291167.P12219534965446572701

`record[A000027(n+1)*A214295(A001615(n+1))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A291167

/-- `record[A000027(n+1)*A214295(A001615(n+1))]` -/
def P12219534965446572701.Spec : Prop :=
  ∀ n, P12219534965446572701.a n = A291167 (n + 1)

theorem P12219534965446572701.correct : P12219534965446572701.Spec := by
  intro n
  simp only [A291167, Nat.add_sub_cancel]

end A291167

/-! ## A291167.P4994843815853808797

`record[A028310(n+1)*A214295(A001615(n+1))]`
-/

namespace A291167.P4994843815853808797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) * A214295 (A001615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291167.P4994843815853808797

namespace A291167

/-- `record[A028310(n+1)*A214295(A001615(n+1))]` -/
def P4994843815853808797.Spec : Prop :=
  ∀ n, P4994843815853808797.a n = A291167 (n + 1)

end A291167

/-! ## A291167.P7164374354288158275

`record[A008619(2*n)*A214295(A001615(n+1))]`
-/

namespace A291167.P7164374354288158275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A214295 (A001615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291167.P7164374354288158275

namespace A291167

/-- `record[A008619(2*n)*A214295(A001615(n+1))]` -/
def P7164374354288158275.Spec : Prop :=
  ∀ n, P7164374354288158275.a n = A291167 (n + 1)

end A291167

/-! ## A291167.P4293362183901614291

`record[A060576(n)+n*A214295(A001615(n+1))]`
-/

namespace A291167.P4293362183901614291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + (n : ℤ) * A214295 (A001615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291167.P4293362183901614291

namespace A291167

/-- `record[A060576(n)+n*A214295(A001615(n+1))]` -/
def P4293362183901614291.Spec : Prop :=
  ∀ n, P4293362183901614291.a n = A291167 (n + 1)

end A291167

/-! ## A291167.P3484712510315079616

`eq[A158388(n+1), A214295(A001615(n+1))]+1`
-/

namespace A291167.P3484712510315079616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (A001615 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A291167.P3484712510315079616

namespace A291167

/-- `eq[A158388(n+1), A214295(A001615(n+1))]+1` -/
def P3484712510315079616.Spec : Prop :=
  ∀ n, (P3484712510315079616.a n : ℤ) = A291167 (n + 1)

end A291167

/-!
# A291168: Expansion of 1/(1 - x/(1 - x^32/(1 - x^243/(1 - x^1024/(1 - x^3125/(1 - x^7776/(1 - ... - x^(n^5)/(1 - ...)))))))), a continued fraction.

The programs for A291168, there is no canonical definition to state claims against.
-/

/-! ## A291168.P17626028413585687050

`A363749(abs(1-n))`
-/

namespace A291168.P17626028413585687050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363749 |1 - (n : ℤ)|.toNat

end

end A291168.P17626028413585687050

/-! ## A291168.P17861683566178564151

`∑[∑[A240348(A071651(n))]]`
-/

namespace A291168.P17861683566178564151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240348 (A071651 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291168.P17861683566178564151

/-! ## A291168.P748885312545683151

`A277112(∑[(A277112(n+1)-(n+1))^n])`
-/

namespace A291168.P748885312545683151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277112 (n + 1) - (n + 1 : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277112 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291168.P748885312545683151

/-! ## A291168.P17793980067174841006

`2*n+1-comp[A171968(n)]`
-/

namespace A291168.P17793980067174841006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171968 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A291168.P17793980067174841006

/-! ## A291168.P16073737695758715327

`Δ[n²]-comp[A321901(n+1)]`
-/

namespace A291168.P16073737695758715327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A291168.P16073737695758715327

/-! ## A291168.P3816697754766446516

`Δ[n²]-comp[A321902(n+1)]`
-/

namespace A291168.P3816697754766446516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A291168.P3816697754766446516

/-! ## A291168.P7309139872323347863

`Δ[n²]-comp[A321904(n+1)]`
-/

namespace A291168.P7309139872323347863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A291168.P7309139872323347863

/-! ## A291168.P75513618076500958

`Δ[n²]-comp[A321905(n+1)]`
-/

namespace A291168.P75513618076500958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321905 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A291168.P75513618076500958

/-! ## A291168.P3821555483450931092

`n+1-(comp[A171968(n+1)]-n)`
-/

namespace A291168.P3821555483450931092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171968 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A291168.P3821555483450931092

/-! ## A291168.P17142912592232664574

`n+1-comp[A321901(n+2)]+n`
-/

namespace A291168.P17142912592232664574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (n : ℤ)

end

end A291168.P17142912592232664574

/-!
# A291170: Expansion of 1 + x/(1 + x^4/(1 + x^9/(1 + x^16/(1 + x^25/(1 + ... + x^(k^2)/(1 + ...)))))), a continued fraction.

The programs for A291170, there is no canonical definition to state claims against.
-/

/-! ## A291170.P4334435872744841919

`A290975(n)^A347354(n+1)!`
-/

namespace A291170.P4334435872744841919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290975 n ^ Nat.factorial (A347354 (n + 1)).toNat

end

end A291170.P4334435872744841919

/-! ## A291170.P12918567248499876222

`A290975(n)^A078898(A003312(n+1))`
-/

namespace A291170.P12918567248499876222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290975 n : ℚ) ^ (A078898 (A003312 (n + 1)).toNat : ℤ)

end

end A291170.P12918567248499876222

/-! ## A291170.P9075786081689837211

`A290975(n)^A174502(A038722(n+1))`
-/

namespace A291170.P9075786081689837211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290975 n : ℚ) ^ (A174502 (A038722 (n + 1)).toNat : ℤ)

end

end A291170.P9075786081689837211

/-! ## A291170.P9394159901659115134

`A290975(n)^A219421(A059561(n+1))`
-/

namespace A291170.P9394159901659115134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290975 n : ℚ) ^ (A219421 (A059561 (n + 1)).toNat : ℤ)

end

end A291170.P9394159901659115134

/-! ## A291170.P4855168468807794038

`A290975(n)^A290954(A278539(2*n+3))`
-/

namespace A291170.P4855168468807794038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290975 n : ℚ) ^ (A290954 (A278539 (2 * n + 3)).toNat : ℤ)

end

end A291170.P4855168468807794038

/-!
# A291171: Black numbers on the roulette wheel.

The programs for A291171, there is no canonical definition to state claims against.
-/

/-! ## A291171.P2817827206122035332

`ceil(comp[10*n]/acot(ϕ))`
-/

namespace A291171.P2817827206122035332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) / SequenceMachineLib.acot Real.goldenRatio⌉

end

end A291171.P2817827206122035332

/-! ## A291171.P6695128432220296050

`∑[2-Δ[round(∑{digits}[n, #/11])]]`
-/

namespace A291171.P6695128432220296050
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (x : ℚ) / 11).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291171.P6695128432220296050

/-! ## A291171.P7198403953325207299

`Δ[n²]+dr(Δ[n²])%2`
-/

namespace A291171.P7198403953325207299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((SequenceMachineLib.digitalRoot ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) % 2 : ℕ) : ℤ)

end

end A291171.P7198403953325207299

/-! ## A291171.P4353680259595031078

`gcd(2, (2*n)%9)+2*n`
-/

namespace A291171.P4353680259595031078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n % 9) + 2 * n

end

end A291171.P4353680259595031078

/-! ## A291171.P17780275155124470389

`record[xor(1, n)+dr(n+1)%2]`
-/

namespace A291171.P17780275155124470389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + SequenceMachineLib.digitalRoot (n + 1 : ℤ) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291171.P17780275155124470389

/-!
# A291172: Number of maximal chord diagrams of genus g counted up to rotations.

The programs for A291172, there is no canonical definition to state claims against.
-/

/-! ## A291172.P14912462698152558758

`A379438((n+1)*(n+3))`
-/

namespace A291172.P14912462698152558758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 ((n + 1) * (n + 3))

end

end A291172.P14912462698152558758

/-!
# A291173: Totient superdeficient numbers: numbers n > 1 such that s(n)/n < s(m)/m for all m < n, where s(n) is the sum of iterated phi(n) (A092693).

The programs for A291173, there is no canonical definition to state claims against.
-/

/-! ## A291173.P7836080938441245750

`A080289(A080276(n+2))%A080286(2*n+3)`
-/

namespace A291173.P7836080938441245750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080289 (A080276 (n + 2)).toNat) (A080286 (2 * n + 3))

end

end A291173.P7836080938441245750

/-!
# A291176: Numbers k such that s(k) = s(k-1) + s(k-2), where s(k) is the sum of proper divisors of k (A001065).

The programs for A291176, there is no canonical definition to state claims against.
-/

/-! ## A291176.P12753198177477346488

`A332976(A085262(n+1))-char[2]`
-/

namespace A291176.P12753198177477346488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332976 (A085262 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A291176.P12753198177477346488

/-!
# A291179: Numbers in at least one Fibonacci sequence starting with two 1-digit numbers.

The programs for A291179, the canonical program `A291179.P5775307500960395627` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291179 has offset 1).

The definition of A291179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291179.P14774451180960691808

`A014707(comp[A001734(n+4)]-n)+n`
-/

namespace A291179.P14774451180960691808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001734 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) + (n : ℤ)

end

end A291179.P14774451180960691808

namespace A291179

/-- `A014707(comp[A001734(n+4)]-n)+n` -/
def P14774451180960691808.Spec : Prop :=
  ∀ n, P14774451180960691808.a n = A291179 (n + 1)

end A291179

/-! ## A291179.P9221784747565932145

`A333382(comp[A001734(n+4)]-n)+n`
-/

namespace A291179.P9221784747565932145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001734 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) + (n : ℤ)

end

end A291179.P9221784747565932145

namespace A291179

/-- `A333382(comp[A001734(n+4)]-n)+n` -/
def P9221784747565932145.Spec : Prop :=
  ∀ n, P9221784747565932145.a n = A291179 (n + 1)

end A291179

/-! ## A291179.P11241195961360229828

`a(floor(A102806(n+1)/A370859(n+1)))+n` with `a(0)=0`
-/

namespace A291179.P11241195961360229828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(A102806 (n + 1) : ℚ) / (A370859 (n + 1) : ℚ)⌋.toNat + n

end

end A291179.P11241195961360229828

namespace A291179

/-- `a(floor(A102806(n+1)/A370859(n+1)))+n` -/
def P11241195961360229828.Spec : Prop :=
  ∀ n, (P11241195961360229828.a n : ℤ) = A291179 (n + 1)

end A291179

/-! ## A291179.P1848933088152153057

`∪[A023443(A122825(n+1)), A344881(n+1)]`
-/

namespace A291179.P1848933088152153057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122825 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291179.P1848933088152153057

namespace A291179

/-- `∪[A023443(A122825(n+1)), A344881(n+1)]` -/
def P1848933088152153057.Spec : Prop :=
  ∀ n, (P1848933088152153057.a n : ℤ) = A291179 (n + 1)

end A291179

/-! ## A291179.P66152576849702195

`C(comp[A001721(A218020(2*n+1))]-n, 2)+n`
-/

namespace A291179.P66152576849702195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001721 (A218020 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 + n

end

end A291179.P66152576849702195

namespace A291179

/-- `C(comp[A001721(A218020(2*n+1))]-n, 2)+n` -/
def P66152576849702195.Spec : Prop :=
  ∀ n, (P66152576849702195.a n : ℤ) = A291179 (n + 1)

end A291179

/-! ## A291179.P604385780048091386

`C(comp[A275640(A179386(2*n+1))]-n, 2)+n`
-/

namespace A291179.P604385780048091386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275640 (A179386 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 + n

end

end A291179.P604385780048091386

namespace A291179

/-- `C(comp[A275640(A179386(2*n+1))]-n, 2)+n` -/
def P604385780048091386.Spec : Prop :=
  ∀ n, (P604385780048091386.a n : ℤ) = A291179 (n + 1)

end A291179

/-! ## A291179.P15785539265140654200

`C(comp[A001721(A008302(3*n+2))]-n, 2)+n`
-/

namespace A291179.P15785539265140654200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001721 (A008302 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 + n

end

end A291179.P15785539265140654200

namespace A291179

/-- `C(comp[A001721(A008302(3*n+2))]-n, 2)+n` -/
def P15785539265140654200.Spec : Prop :=
  ∀ n, (P15785539265140654200.a n : ℤ) = A291179 (n + 1)

end A291179

/-! ## A291179.P5775307500960395627

`A057427(C(A174058(n+1), A333242(n+1)))+n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A291179

/-- `A057427(C(A174058(n+1), A333242(n+1)))+n` -/
def P5775307500960395627.Spec : Prop :=
  ∀ n, P5775307500960395627.a n = A291179 (n + 1)

theorem P5775307500960395627.correct : P5775307500960395627.Spec := by
  intro n
  simp only [A291179, Nat.add_sub_cancel]

end A291179

/-! ## A291179.P11235177241545283145

`A193095(A067947(3*n+5))+n`
-/

namespace A291179.P11235177241545283145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A067947 (3 * n + 5)).toNat + (n : ℤ)

end

end A291179.P11235177241545283145

namespace A291179

/-- `A193095(A067947(3*n+5))+n` -/
def P11235177241545283145.Spec : Prop :=
  ∀ n, P11235177241545283145.a n = A291179 (n + 1)

end A291179

/-! ## A291179.P12500826526194646395

`floor(A345014(n+2)/A210892(2*n+1))+n`
-/

namespace A291179.P12500826526194646395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345014 (n + 2) : ℚ) / (A210892 (2 * n + 1) : ℚ)⌋ + (n : ℤ)

end

end A291179.P12500826526194646395

namespace A291179

/-- `floor(A345014(n+2)/A210892(2*n+1))+n` -/
def P12500826526194646395.Spec : Prop :=
  ∀ n, P12500826526194646395.a n = A291179 (n + 1)

end A291179

/-!
# A291180: Numbers of the form 4*k + 1 with k >= 1 that are not divisible by any prime factor of the form 4*m + 1, except themselves.

The programs for A291180, the canonical program `A291180.P12347732886849579905` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291180 has offset 1).

The definition of A291180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291180.P12347732886849579905

`record[A097706(4*n+5)*A110560(4*(n+1))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A291180

/-- `record[A097706(4*n+5)*A110560(4*(n+1))]` -/
def P12347732886849579905.Spec : Prop :=
  ∀ n, P12347732886849579905.a n = A291180 (n + 1)

theorem P12347732886849579905.correct : P12347732886849579905.Spec := by
  intro n
  simp only [A291180, Nat.add_sub_cancel]

end A291180

/-! ## A291180.P6983304266930536219

`record[A123901(4*n+2)^A348039(n+1)!]`
-/

namespace A291180.P6983304266930536219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123901 (4 * n + 2) ^ Nat.factorial (A348039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291180.P6983304266930536219

namespace A291180

/-- `record[A123901(4*n+2)^A348039(n+1)!]` -/
def P6983304266930536219.Spec : Prop :=
  ∀ n, P6983304266930536219.a n = A291180 (n + 1)

end A291180

/-! ## A291180.P17982856622568963864

`record[A123901(4*n+2)%A111304(n+1)]`
-/

namespace A291180.P17982856622568963864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123901 (4 * n + 2)) (A111304 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291180.P17982856622568963864

namespace A291180

/-- `record[A123901(4*n+2)%A111304(n+1)]` -/
def P17982856622568963864.Spec : Prop :=
  ∀ n, P17982856622568963864.a n = A291180 (n + 1)

end A291180

/-! ## A291180.P16003669828791731152

`record[A123901(4*n+2)+A098108((8*n)²)]`
-/

namespace A291180.P16003669828791731152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123901 (4 * n + 2) + A098108 ((8 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291180.P16003669828791731152

namespace A291180

/-- `record[A123901(4*n+2)+A098108((8*n)²)]` -/
def P16003669828791731152.Spec : Prop :=
  ∀ n, P16003669828791731152.a n = A291180 (n + 1)

end A291180

/-!
# A291181: p-INVERT of the positive integers, where p(S) = 1 - 8*S.

The programs for A291181, the canonical program `A291181.P17830278419652606790` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291181 has offset 0).

The definition of A291181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291181.P17830278419652606790

`10*a(n-1)-a(n-2)` with `a(0)=8, a(1)=80`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291181

/-- `10*a(n-1)-a(n-2)` -/
def P17830278419652606790.Spec : Prop :=
  ∀ n, P17830278419652606790.a n = A291181 n

theorem P17830278419652606790.correct : P17830278419652606790.Spec := by
  intro n
  simp only [A291181]

end A291181

/-! ## A291181.P11065009168751258892

`8*A004189(n+1)`
-/

namespace A291181.P11065009168751258892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A004189 (n + 1)

end

end A291181.P11065009168751258892

namespace A291181

/-- `8*A004189(n+1)` -/
def P11065009168751258892.Spec : Prop :=
  ∀ n, P11065009168751258892.a n = A291181 n

end A291181

/-! ## A291181.P12376547167580485628

`Δ[A138288(n)]`
-/

namespace A291181.P12376547167580485628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P12376547167580485628

namespace A291181

/-- `Δ[A138288(n)]` -/
def P12376547167580485628.Spec : Prop :=
  ∀ n, P12376547167580485628.a n = A291181 n

end A291181

/-! ## A291181.P10274082672441781095

`Δ[Δ[A004189(n)]]`
-/

namespace A291181.P10274082672441781095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P10274082672441781095

namespace A291181

/-- `Δ[Δ[A004189(n)]]` -/
def P10274082672441781095.Spec : Prop :=
  ∀ n, P10274082672441781095.a n = A291181 n

end A291181

/-! ## A291181.P2272804938167703491

`Δ[A072256(n+1)]`
-/

namespace A291181.P2272804938167703491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P2272804938167703491

namespace A291181

/-- `Δ[A072256(n+1)]` -/
def P2272804938167703491.Spec : Prop :=
  ∀ n, P2272804938167703491.a n = A291181 n

end A291181

/-! ## A291181.P12463223235171304597

`Δ[A041007(2*n)]`
-/

namespace A291181.P12463223235171304597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P12463223235171304597

namespace A291181

/-- `Δ[A041007(2*n)]` -/
def P12463223235171304597.Spec : Prop :=
  ∀ n, P12463223235171304597.a n = A291181 n

end A291181

/-! ## A291181.P14187453762541618722

`Δ[A041039(2*n)]`
-/

namespace A291181.P14187453762541618722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P14187453762541618722

namespace A291181

/-- `Δ[A041039(2*n)]` -/
def P14187453762541618722.Spec : Prop :=
  ∀ n, P14187453762541618722.a n = A291181 n

end A291181

/-! ## A291181.P14348078115761845491

`Δ[2*A105038(n)]`
-/

namespace A291181.P14348078115761845491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P14348078115761845491

namespace A291181

/-- `Δ[2*A105038(n)]` -/
def P14348078115761845491.Spec : Prop :=
  ∀ n, P14348078115761845491.a n = A291181 n

end A291181

/-! ## A291181.P1338143609538307775

`Δ[A142239(2*n)]`
-/

namespace A291181.P1338143609538307775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P1338143609538307775

namespace A291181

/-- `Δ[A142239(2*n)]` -/
def P1338143609538307775.Spec : Prop :=
  ∀ n, P1338143609538307775.a n = A291181 n

end A291181

/-! ## A291181.P5595444950729562109

`Δ[A080872(Δ[n²])]`
-/

namespace A291181.P5595444950729562109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P5595444950729562109

namespace A291181

/-- `Δ[A080872(Δ[n²])]` -/
def P5595444950729562109.Spec : Prop :=
  ∀ n, P5595444950729562109.a n = A291181 n

end A291181

/-! ## A291181.P14494442320992572581

`2*A122652(n+1)`
-/

namespace A291181.P14494442320992572581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122652 (n + 1)

end

end A291181.P14494442320992572581

namespace A291181

/-- `2*A122652(n+1)` -/
def P14494442320992572581.Spec : Prop :=
  ∀ n, P14494442320992572581.a n = A291181 n

end A291181

/-! ## A291181.P17388101357070578965

`4*A001078(n+1)`
-/

namespace A291181.P17388101357070578965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001078 (n + 1)

end

end A291181.P17388101357070578965

namespace A291181

/-- `4*A001078(n+1)` -/
def P17388101357070578965.Spec : Prop :=
  ∀ n, P17388101357070578965.a n = A291181 n

end A291181

/-! ## A291181.P2441581296352941125

`Δ[Δ[A001078(n)/2]]`
-/

namespace A291181.P2441581296352941125
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P2441581296352941125

namespace A291181

/-- `Δ[Δ[A001078(n)/2]]` -/
def P2441581296352941125.Spec : Prop :=
  ∀ n, P2441581296352941125.a n = (A291181 n : ℚ)

end A291181

/-! ## A291181.P4428892599607360883

`Δ[2*A054318(n+1)]`
-/

namespace A291181.P4428892599607360883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P4428892599607360883

namespace A291181

/-- `Δ[2*A054318(n+1)]` -/
def P4428892599607360883.Spec : Prop :=
  ∀ n, P4428892599607360883.a n = A291181 n

end A291181

/-! ## A291181.P13742300713424985774

`2*A142239(2*n+1)`
-/

namespace A291181.P13742300713424985774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142239 (2 * n + 1)

end

end A291181.P13742300713424985774

namespace A291181

/-- `2*A142239(2*n+1)` -/
def P13742300713424985774.Spec : Prop :=
  ∀ n, P13742300713424985774.a n = A291181 n

end A291181

/-! ## A291181.P15462197725132788975

`4*A041007(2*n+1)`
-/

namespace A291181.P15462197725132788975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A041007 (2 * n + 1)

end

end A291181.P15462197725132788975

namespace A291181

/-- `4*A041007(2*n+1)` -/
def P15462197725132788975.Spec : Prop :=
  ∀ n, P15462197725132788975.a n = A291181 n

end A291181

/-! ## A291181.P17507428888272464761

`2*A204519(3*(n+2))`
-/

namespace A291181.P17507428888272464761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204519 (3 * (n + 2))

end

end A291181.P17507428888272464761

namespace A291181

/-- `2*A204519(3*(n+2))` -/
def P17507428888272464761.Spec : Prop :=
  ∀ n, P17507428888272464761.a n = A291181 n

end A291181

/-! ## A291181.P4944172158202714866

`8*A041039(2*n+1)`
-/

namespace A291181.P4944172158202714866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A041039 (2 * n + 1)

end

end A291181.P4944172158202714866

namespace A291181

/-- `8*A041039(2*n+1)` -/
def P4944172158202714866.Spec : Prop :=
  ∀ n, P4944172158202714866.a n = A291181 n

end A291181

/-! ## A291181.P2652287213119491880

`Δ[A140780(n)+A122653(n)]`
-/

namespace A291181.P2652287213119491880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140780 n + A122653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291181.P2652287213119491880

namespace A291181

/-- `Δ[A140780(n)+A122653(n)]` -/
def P2652287213119491880.Spec : Prop :=
  ∀ n, P2652287213119491880.a n = A291181 n

end A291181

/-!
# A291182: p-INVERT of the positive integers, where p(S) = 1 - 3*S + 2*S^2.

The programs for A291182, the canonical program `A291182.P9264713134337343280` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291182 has offset 0).

The definition of A291182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291182.P9264713134337343280

`7*a(n-1)-14*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=3, a(1)=13, a(2)=52, a(3)=203`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291182

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)-a(n-4)` -/
def P9264713134337343280.Spec : Prop :=
  ∀ n, P9264713134337343280.a n = A291182 n

theorem P9264713134337343280.correct : P9264713134337343280.Spec := by
  intro n
  simp only [A291182]

end A291182

/-! ## A291182.P2848728777472665581

`A291250(Δ[n²])`
-/

namespace A291182.P2848728777472665581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A291182.P2848728777472665581

namespace A291182

/-- `A291250(Δ[n²])` -/
def P2848728777472665581.Spec : Prop :=
  ∀ n, P2848728777472665581.a n = A291182 n

end A291182

/-! ## A291182.P14653911182444901484

`Δ[A291250(2*n)]`
-/

namespace A291182.P14653911182444901484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291182.P14653911182444901484

namespace A291182

/-- `Δ[A291250(2*n)]` -/
def P14653911182444901484.Spec : Prop :=
  ∀ n, P14653911182444901484.a n = A291182 n

end A291182

/-! ## A291182.P18279546934607980921

`abs(Δ[A291250(A005843(n))])`
-/

namespace A291182.P18279546934607980921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A291182.P18279546934607980921

namespace A291182

/-- `abs(Δ[A291250(A005843(n))])` -/
def P18279546934607980921.Spec : Prop :=
  ∀ n, P18279546934607980921.a n = A291182 n

end A291182

/-! ## A291182.P10625956377664674267

`record[A291250(A093803(n+1))]`
-/

namespace A291182.P10625956377664674267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (A093803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291182.P10625956377664674267

namespace A291182

/-- `record[A291250(A093803(n+1))]` -/
def P10625956377664674267.Spec : Prop :=
  ∀ n, P10625956377664674267.a n = A291182 n

end A291182

/-! ## A291182.P6934988275268777108

`2*A052530(n+1)-A001906(n+1)`
-/

namespace A291182.P6934988275268777108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052530 (n + 1) - A001906 (n + 1)

end

end A291182.P6934988275268777108

namespace A291182

/-- `2*A052530(n+1)-A001906(n+1)` -/
def P6934988275268777108.Spec : Prop :=
  ∀ n, P6934988275268777108.a n = A291182 n

end A291182

/-! ## A291182.P17089828555661554243

`A291250(2*n+1)+A010678(2*n)`
-/

namespace A291182.P17089828555661554243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (2 * n + 1) + A010678 (2 * n)

end

end A291182.P17089828555661554243

namespace A291182

/-- `A291250(2*n+1)+A010678(2*n)` -/
def P17089828555661554243.Spec : Prop :=
  ∀ n, P17089828555661554243.a n = A291182 n

end A291182

/-! ## A291182.P10629981176059072598

`A291250(2*n+1)+A110270(2*n)`
-/

namespace A291182.P10629981176059072598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (2 * n + 1) + A110270 (2 * n)

end

end A291182.P10629981176059072598

namespace A291182

/-- `A291250(2*n+1)+A110270(2*n)` -/
def P10629981176059072598.Spec : Prop :=
  ∀ n, P10629981176059072598.a n = A291182 n

end A291182

/-! ## A291182.P15319644472950033771

`A291250(2*n+1)+A131734(2*n)`
-/

namespace A291182.P15319644472950033771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (2 * n + 1) + A131734 (2 * n)

end

end A291182.P15319644472950033771

namespace A291182

/-- `A291250(2*n+1)+A131734(2*n)` -/
def P15319644472950033771.Spec : Prop :=
  ∀ n, P15319644472950033771.a n = A291182 n

end A291182

/-! ## A291182.P9363053022729583673

`A291250(2*(n+1))-A291250(2*n)`
-/

namespace A291182.P9363053022729583673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (2 * (n + 1)) - A291250 (2 * n)

end

end A291182.P9363053022729583673

namespace A291182

/-- `A291250(2*(n+1))-A291250(2*n)` -/
def P9363053022729583673.Spec : Prop :=
  ∀ n, P9363053022729583673.a n = A291182 n

end A291182

/-! ## A291182.P10699845993304658151

`A057979(2*n)*A291250(2*n+1)`
-/

namespace A291182.P10699845993304658151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A291250 (2 * n + 1)

end

end A291182.P10699845993304658151

namespace A291182

/-- `A057979(2*n)*A291250(2*n+1)` -/
def P10699845993304658151.Spec : Prop :=
  ∀ n, P10699845993304658151.a n = A291182 n

end A291182

/-! ## A291182.P3020035957628258690

`A059841(2*n)*A291250(2*n+1)`
-/

namespace A291182.P3020035957628258690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A291250 (2 * n + 1)

end

end A291182.P3020035957628258690

namespace A291182

/-- `A059841(2*n)*A291250(2*n+1)` -/
def P3020035957628258690.Spec : Prop :=
  ∀ n, P3020035957628258690.a n = A291182 n

end A291182

/-! ## A291182.P13818453306052261333

`A291250(2*n+1)+A181587(2*(n+1))`
-/

namespace A291182.P13818453306052261333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (2 * n + 1) + A181587 (2 * (n + 1))

end

end A291182.P13818453306052261333

namespace A291182

/-- `A291250(2*n+1)+A181587(2*(n+1))` -/
def P13818453306052261333.Spec : Prop :=
  ∀ n, P13818453306052261333.a n = A291182 n

end A291182

/-! ## A291182.P3639080800627369070

`A353481(2*(n+1))+A291250(2*n+1)`
-/

namespace A291182.P3639080800627369070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (2 * (n + 1)) + A291250 (2 * n + 1)

end

end A291182.P3639080800627369070

namespace A291182

/-- `A353481(2*(n+1))+A291250(2*n+1)` -/
def P3639080800627369070.Spec : Prop :=
  ∀ n, P3639080800627369070.a n = A291182 n

end A291182

/-! ## A291182.P3180023578046653644

`A353478(2*n+1)+A291250(2*n+1)`
-/

namespace A291182.P3180023578046653644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (2 * n + 1) + A291250 (2 * n + 1)

end

end A291182.P3180023578046653644

namespace A291182

/-- `A353478(2*n+1)+A291250(2*n+1)` -/
def P3180023578046653644.Spec : Prop :=
  ∀ n, P3180023578046653644.a n = A291182 n

end A291182

/-! ## A291182.P7786147315120373111

`A353673(2*(n+1))+A291250(2*n+1)`
-/

namespace A291182.P7786147315120373111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353673 (2 * (n + 1)) + A291250 (2 * n + 1)

end

end A291182.P7786147315120373111

namespace A291182

/-- `A353673(2*(n+1))+A291250(2*n+1)` -/
def P7786147315120373111.Spec : Prop :=
  ∀ n, P7786147315120373111.a n = A291182 n

end A291182

/-! ## A291182.P14158846757605157328

`A353675(2*(n+1))+A291250(2*n+1)`
-/

namespace A291182.P14158846757605157328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353675 (2 * (n + 1)) + A291250 (2 * n + 1)

end

end A291182.P14158846757605157328

namespace A291182

/-- `A353675(2*(n+1))+A291250(2*n+1)` -/
def P14158846757605157328.Spec : Prop :=
  ∀ n, P14158846757605157328.a n = A291182 n

end A291182

/-! ## A291182.P17441714633940890906

`A356172(2*(n+1))+A291250(2*n+1)`
-/

namespace A291182.P17441714633940890906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 (2 * (n + 1)) + A291250 (2 * n + 1)

end

end A291182.P17441714633940890906

namespace A291182

/-- `A356172(2*(n+1))+A291250(2*n+1)` -/
def P17441714633940890906.Spec : Prop :=
  ∀ n, P17441714633940890906.a n = A291182 n

end A291182

/-! ## A291182.P11011964279842436498

`A291250(2*n+1)*A318658(2*(n+1))`
-/

namespace A291182.P11011964279842436498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (2 * n + 1) * A318658 (2 * (n + 1))

end

end A291182.P11011964279842436498

namespace A291182

/-- `A291250(2*n+1)*A318658(2*(n+1))` -/
def P11011964279842436498.Spec : Prop :=
  ∀ n, P11011964279842436498.a n = A291182 n

end A291182

/-! ## A291182.P16219443031288346742

`A291250(2*n+1)*A359832(2*n+1)`
-/

namespace A291182.P16219443031288346742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291250 (2 * n + 1) * A359832 (2 * n + 1)

end

end A291182.P16219443031288346742

namespace A291182

/-- `A291250(2*n+1)*A359832(2*n+1)` -/
def P16219443031288346742.Spec : Prop :=
  ∀ n, P16219443031288346742.a n = A291182 n

end A291182

/-!
# A291183: p-INVERT of the positive integers, where p(S) = 1 - 4*S + 2*S^2.

The programs for A291183, the canonical program `A291183.P15254957385467432604` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291183 has offset 0).

The definition of A291183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291183.P15254957385467432604

`8*a(n-1)-16*a(n-2)+8*a(n-3)-a(n-4)` with `a(0)=4, a(1)=22, a(2)=116, a(3)=608`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291183

/-- `8*a(n-1)-16*a(n-2)+8*a(n-3)-a(n-4)` -/
def P15254957385467432604.Spec : Prop :=
  ∀ n, P15254957385467432604.a n = A291183 n

theorem P15254957385467432604.correct : P15254957385467432604.Spec := by
  intro n
  simp only [A291183]

end A291183

/-!
# A291184: p-INVERT of the positive integers, where p(S) = 1 - 4*S + 3*S^2.

The programs for A291184, the canonical program `A291184.P3902948161933406564` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291184 has offset 0).

The definition of A291184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291184.P3902948161933406564

`8*a(n-1)-17*a(n-2)+8*a(n-3)-a(n-4)` with `a(0)=4, a(1)=21, a(2)=104, a(3)=507`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291184

/-- `8*a(n-1)-17*a(n-2)+8*a(n-3)-a(n-4)` -/
def P3902948161933406564.Spec : Prop :=
  ∀ n, P3902948161933406564.a n = A291184 n

theorem P3902948161933406564.correct : P3902948161933406564.Spec := by
  intro n
  simp only [A291184]

end A291184

/-! ## A291184.P3556762227625730847

`∑[A008706(A004253(n+1))-A151191(n)]`
-/

namespace A291184.P3556762227625730847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A004253 (n + 1)).toNat - A151191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291184.P3556762227625730847

namespace A291184

/-- `∑[A008706(A004253(n+1))-A151191(n)]` -/
def P3556762227625730847.Spec : Prop :=
  ∀ n, P3556762227625730847.a n = A291184 n

end A291184

/-!
# A291185: a(n) = the smallest number k such that sigma(k) / phi(k) >= n.

The programs for A291185, there is no canonical definition to state claims against.
-/

/-! ## A291185.P13748687020019083356

`A046523(gcd(A070033(2*(n+2)), A070033(n+1)))`
-/

namespace A291185.P13748687020019083356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.gcd (A070033 (2 * (n + 2))) (A070033 (n + 1)))

end

end A291185.P13748687020019083356

/-! ## A291185.P3215006179381184407

`A071364(lcm(A002523(n), A132439(n+1)))`
-/

namespace A291185.P3215006179381184407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.lcm (A002523 n) (A132439 (n + 1)))

end

end A291185.P3215006179381184407

/-! ## A291185.P7177052414195319044

`A019555(record[A261358(n)])`
-/

namespace A291185.P7177052414195319044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291185.P7177052414195319044

/-! ## A291185.P3774081288159621420

`A283465((n+1)*A000207(n+1))`
-/

namespace A291185.P3774081288159621420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283465 ((n + 1 : ℤ) * A000207 (n + 1)).toNat

end

end A291185.P3774081288159621420

/-! ## A291185.P7043427796846998451

`A283465(A098550(n+1)+n²²)`
-/

namespace A291185.P7043427796846998451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283465 (A098550 (n + 1) + ((n ^ 2) ^ 2 : ℤ)).toNat

end

end A291185.P7043427796846998451

/-!
# A291186: a(n) = numerator of (pod(n) / tau(n)).

The programs for A291186, the canonical program `A291186.P9759207513551932445` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291186 has offset 1).

The definition of A291186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291186.P9759207513551932445

`∏{d}[n+1, #]/A306671(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A291186

/-- `∏{d}[n+1, #]/A306671(n+1)` -/
def P9759207513551932445.Spec : Prop :=
  ∀ n, P9759207513551932445.a n = (A291186 (n + 1) : ℚ)

end A291186

/-! ## A291186.P10806521207915268492

`A007955(n+1)/A306671(n+1)`
-/

namespace A291186.P10806521207915268492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A291186.P10806521207915268492

namespace A291186

/-- `A007955(n+1)/A306671(n+1)` -/
def P10806521207915268492.Spec : Prop :=
  ∀ n, P10806521207915268492.a n = (A291186 (n + 1) : ℚ)

end A291186

/-! ## A291186.P15001427348262053273

`A324528(n+1)/A000005(n+1)`
-/

namespace A291186.P15001427348262053273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324528 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A291186.P15001427348262053273

namespace A291186

/-- `A324528(n+1)/A000005(n+1)` -/
def P15001427348262053273.Spec : Prop :=
  ∀ n, P15001427348262053273.a n = (A291186 (n + 1) : ℚ)

end A291186

/-! ## A291186.P17005877731029391274

`sqrt(n+1)^Δ[A006218(n)]/A306671(n+1)`
-/

namespace A291186.P17005877731029391274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A306671 (n + 1) : ℝ)

end

end A291186.P17005877731029391274

namespace A291186

/-- `sqrt(n+1)^Δ[A006218(n)]/A306671(n+1)` -/
def P17005877731029391274.Spec : Prop :=
  ∀ n, P17005877731029391274.a n = (A291186 (n + 1) : ℝ)

end A291186

/-! ## A291186.P2388765026575079406

`(n+1)^(A000005(n+1)/2)/A306671(n+1)`
-/

namespace A291186.P2388765026575079406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) / (A306671 (n + 1) : ℝ)

end

end A291186.P2388765026575079406

namespace A291186

/-- `(n+1)^(A000005(n+1)/2)/A306671(n+1)` -/
def P2388765026575079406.Spec : Prop :=
  ∀ n, P2388765026575079406.a n = (A291186 (n + 1) : ℝ)

end A291186

/-! ## A291186.P14505133923947881224

`A007955(n+1)/A000005(n+1)*A137927(n+1)`
-/

namespace A291186.P14505133923947881224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A137927 (n + 1) : ℚ)

end

end A291186.P14505133923947881224

namespace A291186

/-- `A007955(n+1)/A000005(n+1)*A137927(n+1)` -/
def P14505133923947881224.Spec : Prop :=
  ∀ n, P14505133923947881224.a n = (A291186 (n + 1) : ℚ)

end A291186

/-! ## A291186.P2500350609974179436

`A076722(n+1)/(A000203(n+1)*A306671(n+1))`
-/

namespace A291186.P2500350609974179436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076722 (n + 1) : ℚ) / (A000203 (n + 1) * A306671 (n + 1) : ℚ)

end

end A291186.P2500350609974179436

namespace A291186

/-- `A076722(n+1)/(A000203(n+1)*A306671(n+1))` -/
def P2500350609974179436.Spec : Prop :=
  ∀ n, P2500350609974179436.a n = (A291186 (n + 1) : ℚ)

end A291186

/-! ## A291186.P11296005312328121756

`A061537(n+1)*A061538(n+1)/A306671(n+1)`
-/

namespace A291186.P11296005312328121756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) * A061538 (n + 1) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A291186.P11296005312328121756

namespace A291186

/-- `A061537(n+1)*A061538(n+1)/A306671(n+1)` -/
def P11296005312328121756.Spec : Prop :=
  ∀ n, P11296005312328121756.a n = (A291186 (n + 1) : ℚ)

end A291186

/-! ## A291186.P15388893968306232984

`A183091(n+1)*A183092(n+1)/A306671(n+1)`
-/

namespace A291186.P15388893968306232984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) * A183092 (n + 1) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A291186.P15388893968306232984

namespace A291186

/-- `A183091(n+1)*A183092(n+1)/A306671(n+1)` -/
def P15388893968306232984.Spec : Prop :=
  ∀ n, P15388893968306232984.a n = (A291186 (n + 1) : ℚ)

end A291186

/-! ## A291186.P1442844387951546573

`A394346(n+1)/(A000005(n+1)*A306671(n+1))`
-/

namespace A291186.P1442844387951546573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394346 (n + 1) : ℚ) / (A000005 (n + 1) * A306671 (n + 1) : ℚ)

end

end A291186.P1442844387951546573

namespace A291186

/-- `A394346(n+1)/(A000005(n+1)*A306671(n+1))` -/
def P1442844387951546573.Spec : Prop :=
  ∀ n, P1442844387951546573.a n = (A291186 (n + 1) : ℚ)

end A291186

/-! ## A291186.P1895162441366909413

`A007955(n+1)/gcd(A007955(n+1), A125518(n+1))`
-/

namespace A291186.P1895162441366909413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (Int.gcd (A007955 (n + 1)) (A125518 (n + 1)) : ℚ)

end

end A291186.P1895162441366909413

namespace A291186

/-- `A007955(n+1)/gcd(A007955(n+1), A125518(n+1))` -/
def P1895162441366909413.Spec : Prop :=
  ∀ n, P1895162441366909413.a n = (A291186 (n + 1) : ℚ)

end A291186

/-!
# A291189: G.f. satisfies: A(x - A(x) + A(x)^2) = -x^4.

The programs for A291189, there is no canonical definition to state claims against.
-/

/-! ## A291189.P6781600787043042707

`A214843(n+1)-A004526(A309861(n))`
-/

namespace A291189.P6781600787043042707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214843 (n + 1) - A004526 (A309861 n).toNat

end

end A291189.P6781600787043042707

/-! ## A291189.P12953119541827625573

`A034888(A135339(n+1))-A004526(A309861(n))`
-/

namespace A291189.P12953119541827625573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A135339 (n + 1)).toNat - A004526 (A309861 n).toNat

end

end A291189.P12953119541827625573

/-! ## A291189.P16898227700545329995

`A226190(A135336(n+1))`
-/

namespace A291189.P16898227700545329995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A135336 (n + 1)).toNat

end

end A291189.P16898227700545329995

/-!
# A291190: G.f. satisfies: A(x - A(x) + A(x)^2) = x^4.

The programs for A291190, there is no canonical definition to state claims against.
-/

/-! ## A291190.P12356357994867473952

`A217699(n)+A011738(A094729(n))`
-/

namespace A291190.P12356357994867473952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217699 n + A011738 (A094729 n).toNat

end

end A291190.P12356357994867473952

/-! ## A291190.P2519839866066200167

`A217699(n)+A011738(A152120(n))`
-/

namespace A291190.P2519839866066200167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217699 n + A011738 (A152120 n).toNat

end

end A291190.P2519839866066200167

/-! ## A291190.P1616578765163753863

`A217699(n)+A102683(A122206(n))`
-/

namespace A291190.P1616578765163753863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217699 n + A102683 (A122206 n).toNat

end

end A291190.P1616578765163753863

/-! ## A291190.P16950500308626952297

`A226022(n)+A001222(A309861(n))`
-/

namespace A291190.P16950500308626952297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226022 n + A001222 (A309861 n).toNat

end

end A291190.P16950500308626952297

/-!
# A291191: Number of ways to write 2*n+1 as x^2 + y^2 + z^2 + w^2, where x,y,z,w are nonnegative integers with x <= y, z <= w and x + y < z + w such that 2^(x+y) + 2^(z+w) + 1 is prime.

The programs for A291191, there is no canonical definition to state claims against.
-/

/-! ## A291191.P2143530512923718102

`gcd(A175540(n+1), A290735(A327778(n)))`
-/

namespace A291191.P2143530512923718102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175540 (n + 1)) (A290735 (A327778 n).toNat)

end

end A291191.P2143530512923718102

/-! ## A291191.P12171197108372039402

`A099501(A326611(n+1)+A139843(n+1))`
-/

namespace A291191.P12171197108372039402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099501 (A326611 (n + 1) + A139843 (n + 1)).toNat

end

end A291191.P12171197108372039402

/-! ## A291191.P9969858724895657167

`A342788(A214971(n+5)+A001222(2*n+5))`
-/

namespace A291191.P9969858724895657167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342788 (A214971 (n + 5) + A001222 (2 * n + 5)).toNat

end

end A291191.P9969858724895657167

/-! ## A291191.P17514994862216219630

`A322812(A093101(n)*A125293(n+1))`
-/

namespace A291191.P17514994862216219630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (A093101 n * A125293 (n + 1)).toNat

end

end A291191.P17514994862216219630

/-! ## A291191.P7358985850065786024

`gcd(A007947(A135491(n)), A308081(n+1))`
-/

namespace A291191.P7358985850065786024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (A135491 n).toNat) (A308081 (n + 1))

end

end A291191.P7358985850065786024

/-!
# A291193: Expansion of 1 + x*(1-x)/(1 + x^2*(1-x^2)/(1 + x^3*(1-x^3)/(1 + x^4*(1-x^4)/(1 + x^5*(1-x^5)/(1 + ...))))), a continued fraction.

The programs for A291193, there is no canonical definition to state claims against.
-/

/-! ## A291193.P10239927436735741790

`(-1)^n*A291200(n)`
-/

namespace A291193.P10239927436735741790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A291200 n

end

end A291193.P10239927436735741790

/-! ## A291193.P8775325993170649720

`A291200(n)/A033999(n)`
-/

namespace A291193.P8775325993170649720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291200 n : ℚ) / (A033999 n : ℚ)

end

end A291193.P8775325993170649720

/-! ## A291193.P15337690040695233221

`A291200(n)/A087960(n²)`
-/

namespace A291193.P15337690040695233221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291200 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A291193.P15337690040695233221

/-! ## A291193.P12088948458456352674

`A291200(n)/∑[A280560(n)]`
-/

namespace A291193.P12088948458456352674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291200 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A291193.P12088948458456352674

/-! ## A291193.P16917961289450924150

`A291200(n)/A165326(n+1)`
-/

namespace A291193.P16917961289450924150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291200 n : ℚ) / (A165326 (n + 1) : ℚ)

end

end A291193.P16917961289450924150

/-! ## A291193.P6178248390451883795

`A291200(n)/A056594(2*n)`
-/

namespace A291193.P6178248390451883795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291200 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A291193.P6178248390451883795

/-! ## A291193.P7177914604423518460

`A291200(n)/A008683(A116570(n))`
-/

namespace A291193.P7177914604423518460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291200 n : ℚ) / (A008683 (A116570 n).toNat : ℚ)

end

end A291193.P7177914604423518460

/-!
# A291195: The number of total solar eclipses visible from Earth's surface during year n (TD).

The programs for A291195, there is no canonical definition to state claims against.
-/

/-! ## A291195.P6063064301898670830

`A005408(A089949(n))%Δ[A188469(n+9)]`
-/

namespace A291195.P6063064301898670830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A089949 n).toNat) (f1 (n + 1) - f1 n)

end

end A291195.P6063064301898670830

/-! ## A291195.P7427904069845742275

`A098725(C(A357873(2*n+5), 2))`
-/

namespace A291195.P7427904069845742275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (Nat.choose (A357873 (2 * n + 5)).toNat 2)

end

end A291195.P7427904069845742275

/-! ## A291195.P9179976125563896215

`A005171(A007953(n)+Δ[A007088(n)])`
-/

namespace A291195.P9179976125563896215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A007953 n + (f1 (n + 1) - f1 n)).toNat

end

end A291195.P9179976125563896215

/-! ## A291195.P2485877637062790692

`A283265(A007953(n)+Δ[A007088(n)])`
-/

namespace A291195.P2485877637062790692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A007953 n + (f1 (n + 1) - f1 n)).toNat

end

end A291195.P2485877637062790692

/-! ## A291195.P1450018596774598985

`and(A000045(A046147(n+2)), A046154(n+1))`
-/

namespace A291195.P1450018596774598985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A046147 (n + 2)).toNat) (A046154 (n + 1))

end

end A291195.P1450018596774598985

/-!
# A291196: Third differences of {Pi*n^2}, fractional part of Pi*n^2.

The programs for A291196, the canonical program `A291196.P12246191278883837724` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291196 has offset 1).

The definition of A291196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291196.P12246191278883837724

`Δ[Δ[n-A338020(n+2)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291196

/-- `Δ[Δ[n-A338020(n+2)]]` -/
def P12246191278883837724.Spec : Prop :=
  ∀ n, P12246191278883837724.a n = A291196 (n + 1)

theorem P12246191278883837724.correct : P12246191278883837724.Spec := by
  intro n
  simp only [A291196, Nat.add_sub_cancel]

end A291196

/-! ## A291196.P12587674116598058523

`Δ[Δ[Δ[A235532(n+1)]]]`
-/

namespace A291196.P12587674116598058523
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291196.P12587674116598058523

namespace A291196

/-- `Δ[Δ[Δ[A235532(n+1)]]]` -/
def P12587674116598058523.Spec : Prop :=
  ∀ n, P12587674116598058523.a n = A291196 (n + 1)

end A291196

/-! ## A291196.P6520332086564913815

`Δ[Δ[Δ[-A066643(n+1)]]]`
-/

namespace A291196.P6520332086564913815
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A066643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291196.P6520332086564913815

namespace A291196

/-- `Δ[Δ[Δ[-A066643(n+1)]]]` -/
def P6520332086564913815.Spec : Prop :=
  ∀ n, P6520332086564913815.a n = A291196 (n + 1)

end A291196

/-! ## A291196.P17480795659458114587

`Δ[Δ[Δ[n-A135039(n+1)]]]`
-/

namespace A291196.P17480795659458114587
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A135039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291196.P17480795659458114587

namespace A291196

/-- `Δ[Δ[Δ[n-A135039(n+1)]]]` -/
def P17480795659458114587.Spec : Prop :=
  ∀ n, P17480795659458114587.a n = A291196 (n + 1)

end A291196

/-! ## A291196.P2203354440048462944

`Δ[Δ[A066643(n+1)-A066643(n+2)]]`
-/

namespace A291196.P2203354440048462944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (n + 1) - A066643 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291196.P2203354440048462944

namespace A291196

/-- `Δ[Δ[A066643(n+1)-A066643(n+2)]]` -/
def P2203354440048462944.Spec : Prop :=
  ∀ n, P2203354440048462944.a n = A291196 (n + 1)

end A291196

/-!
# A291197: Second differences of frac(n/log(n)) rounded, n >= 2.

The programs for A291197, the canonical program `A291197.P12306781684361658534` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291197 has offset 2).

The definition of A291197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291197.P12306781684361658534

`Δ[Δ[-A050500(n+2)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291197

/-- `Δ[Δ[-A050500(n+2)]]` -/
def P12306781684361658534.Spec : Prop :=
  ∀ n, P12306781684361658534.a n = A291197 (n + 2)

theorem P12306781684361658534.correct : P12306781684361658534.Spec := by
  intro n
  simp only [A291197, Nat.add_sub_cancel]

end A291197

/-! ## A291197.P578278856970406019

`Δ[Δ[n-A050501(n+2)]]`
-/

namespace A291197.P578278856970406019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A050501 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P578278856970406019

namespace A291197

/-- `Δ[Δ[n-A050501(n+2)]]` -/
def P578278856970406019.Spec : Prop :=
  ∀ n, P578278856970406019.a n = A291197 (n + 2)

end A291197

/-! ## A291197.P3443540915272642177

`Δ[A000032(Δ[A050500(n+2)])]`
-/

namespace A291197.P3443540915272642177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P3443540915272642177

namespace A291197

/-- `Δ[A000032(Δ[A050500(n+2)])]` -/
def P3443540915272642177.Spec : Prop :=
  ∀ n, P3443540915272642177.a n = A291197 (n + 2)

end A291197

/-! ## A291197.P16002731026139501859

`Δ[A000032(Δ[A050501(n+2)])]`
-/

namespace A291197.P16002731026139501859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P16002731026139501859

namespace A291197

/-- `Δ[A000032(Δ[A050501(n+2)])]` -/
def P16002731026139501859.Spec : Prop :=
  ∀ n, P16002731026139501859.a n = A291197 (n + 2)

end A291197

/-! ## A291197.P3142807381918712317

`Δ[A030451(Δ[A050500(n+2)]+1)]`
-/

namespace A291197.P3142807381918712317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P3142807381918712317

namespace A291197

/-- `Δ[A030451(Δ[A050500(n+2)]+1)]` -/
def P3142807381918712317.Spec : Prop :=
  ∀ n, P3142807381918712317.a n = A291197 (n + 2)

end A291197

/-! ## A291197.P18199051048623798789

`Δ[A088705(Δ[A050501(n+2)]+1)]`
-/

namespace A291197.P18199051048623798789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P18199051048623798789

namespace A291197

/-- `Δ[A088705(Δ[A050501(n+2)]+1)]` -/
def P18199051048623798789.Spec : Prop :=
  ∀ n, P18199051048623798789.a n = A291197 (n + 2)

end A291197

/-! ## A291197.P12680789915659168178

`Δ[A143220(Δ[A050500(n+2)]+1)]`
-/

namespace A291197.P12680789915659168178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143220 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P12680789915659168178

namespace A291197

/-- `Δ[A143220(Δ[A050500(n+2)]+1)]` -/
def P12680789915659168178.Spec : Prop :=
  ∀ n, P12680789915659168178.a n = A291197 (n + 2)

end A291197

/-! ## A291197.P17635321508558915835

`Δ[A188192(Δ[A050501(n+2)]+2)]`
-/

namespace A291197.P17635321508558915835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P17635321508558915835

namespace A291197

/-- `Δ[A188192(Δ[A050501(n+2)]+2)]` -/
def P17635321508558915835.Spec : Prop :=
  ∀ n, P17635321508558915835.a n = A291197 (n + 2)

end A291197

/-! ## A291197.P11486301108103763156

`Δ[A015053(2-Δ[A050500(n+2)])]`
-/

namespace A291197.P11486301108103763156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P11486301108103763156

namespace A291197

/-- `Δ[A015053(2-Δ[A050500(n+2)])]` -/
def P11486301108103763156.Spec : Prop :=
  ∀ n, P11486301108103763156.a n = A291197 (n + 2)

end A291197

/-! ## A291197.P5099422635354407381

`Δ[2/A328571(Δ[A050500(n+2)])]`
-/

namespace A291197.P5099422635354407381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A328571 (f2 (n + 1) - f2 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P5099422635354407381

namespace A291197

/-- `Δ[2/A328571(Δ[A050500(n+2)])]` -/
def P5099422635354407381.Spec : Prop :=
  ∀ n, P5099422635354407381.a n = (A291197 (n + 2) : ℚ)

end A291197

/-!
# A291198: G.f. A(x) satisfies: A( 3*x - 2*A(x) ) = x - x^2.

The programs for A291198, there is no canonical definition to state claims against.
-/

/-! ## A291198.P12805013858580998880

`A123344(n)*A138739(n+1)`
-/

namespace A291198.P12805013858580998880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n * A138739 (n + 1)

end

end A291198.P12805013858580998880

/-! ## A291198.P6914444109031411607

`A123344(n)*A278950(2*A337552(n))`
-/

namespace A291198.P6914444109031411607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n * A278950 (2 * A337552 n).toNat

end

end A291198.P6914444109031411607

