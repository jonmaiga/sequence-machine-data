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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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
# A102600: Largest prime which can be formed from digits of n^2, or 0, if no prime.

The programs for A102600, there is no canonical definition to state claims against.
-/

/-! ## A102600.P16781010040138064139

`A101991((n+1)²)`
-/

namespace A102600.P16781010040138064139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101991 ((n + 1) ^ 2)

end

end A102600.P16781010040138064139

/-! ## A102600.P3537692119316954789

`A101991(A000463(2*n+2))+A000007(n+1)`
-/

namespace A102600.P3537692119316954789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101991 (A000463 (2 * n + 2)).toNat + A000007 (n + 1)

end

end A102600.P3537692119316954789

/-! ## A102600.P12011541222474192805

`A101991(A000463(2*(n+1)))+A000035(2*(n+1))`
-/

namespace A102600.P12011541222474192805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101991 (A000463 (2 * (n + 1))).toNat + A000035 (2 * (n + 1))

end

end A102600.P12011541222474192805

/-! ## A102600.P9804767745394868140

`A000034(2*(n+1))*A101991(A000463(2*(n+1)))`
-/

namespace A102600.P9804767745394868140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 1)) * A101991 (A000463 (2 * (n + 1))).toNat

end

end A102600.P9804767745394868140

/-!
# A102601: a(n)= least k such that ((k+1)^n)*(k^n-1)-1 is prime.

The programs for A102601, there is no canonical definition to state claims against.
-/

/-! ## A102601.P17446539006928847136

`p?[A059711(record[A060280(n+1)])]`
-/

namespace A102601.P17446539006928847136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102601.P17446539006928847136

/-! ## A102601.P2492294022266514704

`p?[A175007(2*(n+1))%A175003(2*(n+1))]`
-/

namespace A102601.P2492294022266514704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175007 (2 * (n + 1))) (A175003 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102601.P2492294022266514704

/-! ## A102601.P9071603704690249131

`A235629(n+1)%A140599(A271077(n))`
-/

namespace A102601.P9071603704690249131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235629 (n + 1)) (A140599 (A271077 n).toNat)

end

end A102601.P9071603704690249131

/-!
# A102603: a(n) = 24*n + 21.

The programs for A102603, the canonical program `A102603.P3247987965860974134` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102603 has offset 0).

The definition of A102603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n+21` (program `A102603.P3247987965860974134`, by `A102603.P3247987965860974134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102603.P3247987965860974134

`24*n+21`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102603

/-- `24*n+21` -/
def P3247987965860974134.Spec : Prop :=
  ∀ n, (P3247987965860974134.a n : ℤ) = A102603 n

theorem P3247987965860974134.correct : P3247987965860974134.Spec := by
  intro n
  simp only [A102603]

end A102603

/-!
# A102604: Numbers k such that ((2*k)^k - 1)/(2*k - 1) is prime.

The programs for A102604, there is no canonical definition to state claims against.
-/

/-! ## A102604.P6863295700015006355

`p?[A142150(A088875(n+1))]`
-/

namespace A102604.P6863295700015006355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A088875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102604.P6863295700015006355

/-! ## A102604.P3610831563967574617

`p?[∑[A048679(A317065(n+1))]]`
-/

namespace A102604.P3610831563967574617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A317065 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102604.P3610831563967574617

/-! ## A102604.P15359447126500246063

`∪[A265776(n+1), A265761(A265736(n+2))]`
-/

namespace A102604.P15359447126500246063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265761 (A265736 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102604.P15359447126500246063

/-!
# A102605: Number of ways of writing 2n+1 as p+q+r where p,q,r are primes with p < q < r, offset=0.

The programs for A102605, there is no canonical definition to state claims against.
-/

/-! ## A102605.P17218763054687480795

`A054860(n)-A046927(n)`
-/

namespace A102605.P17218763054687480795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054860 n - A046927 n

end

end A102605.P17218763054687480795

/-! ## A102605.P11387232639217742822

`A125688(Δ[n²])`
-/

namespace A102605.P11387232639217742822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102605.P11387232639217742822

/-! ## A102605.P357465646083254785

`A125688(2*n+1)%(n+1)²`
-/

namespace A102605.P357465646083254785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125688 (2 * n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A102605.P357465646083254785

/-! ## A102605.P8444669640453433133

`A125688(2*n+1)+A063524(3*n)`
-/

namespace A102605.P8444669640453433133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (2 * n + 1) + A063524 (3 * n)

end

end A102605.P8444669640453433133

/-! ## A102605.P8108252655936828504

`A008836(n+1)²*A125688(2*n+1)`
-/

namespace A102605.P8108252655936828504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A125688 (2 * n + 1)

end

end A102605.P8108252655936828504

/-! ## A102605.P16971388712170836895

`A068307(2*n+1)-A046926(2*n+1)`
-/

namespace A102605.P16971388712170836895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * n + 1) - A046926 (2 * n + 1)

end

end A102605.P16971388712170836895

/-! ## A102605.P12709654626192971138

`A083338(2*n+1)-A046926(2*n+1)`
-/

namespace A102605.P12709654626192971138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (2 * n + 1) - A046926 (2 * n + 1)

end

end A102605.P12709654626192971138

/-! ## A102605.P11538790106111557251

`A125688(2*n+1)+A010051(2*(n+2))`
-/

namespace A102605.P11538790106111557251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A102605.P11538790106111557251

/-! ## A102605.P10911992154403060415

`A125688(A004442(2*n))-A159075(2*n)`
-/

namespace A102605.P10911992154403060415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A004442 (2 * n)).toNat - A159075 (2 * n)

end

end A102605.P10911992154403060415

/-! ## A102605.P7391679174597397795

`A068307(2*n+1)+A046926(2*n+1)*A057428(n+1)`
-/

namespace A102605.P7391679174597397795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * n + 1) + A046926 (2 * n + 1) * A057428 (n + 1)

end

end A102605.P7391679174597397795

/-! ## A102605.P11991811394140034962

`A061357(A072511(A125688(2*n+1)))`
-/

namespace A102605.P11991811394140034962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A072511 (A125688 (2 * n + 1)).toNat).toNat

end

end A102605.P11991811394140034962

/-! ## A102605.P14175885097226564814

`A002264(A087916(n)+2)-A007963(n)`
-/

namespace A102605.P14175885097226564814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A087916 n + 2).toNat - A007963 n

end

end A102605.P14175885097226564814

/-! ## A102605.P13665905632391021808

`A223893(2*n+1)-(A117929(2*n+1)+A010051(2*n+1))`
-/

namespace A102605.P13665905632391021808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (2 * n + 1) - (A117929 (2 * n + 1) + A010051 (2 * n + 1))

end

end A102605.P13665905632391021808

/-! ## A102605.P518668510731690717

`A223893(2*n+1)+A223893(2*(n+1))-A218469(2*(n+1))`
-/

namespace A102605.P518668510731690717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (2 * n + 1) + (A223893 (2 * (n + 1)) - A218469 (2 * (n + 1)))

end

end A102605.P518668510731690717

/-! ## A102605.P15877579157661418291

`A001222(A125713(n+1))*A125688(2*n+1)`
-/

namespace A102605.P15877579157661418291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125713 (n + 1)).toNat * A125688 (2 * n + 1)

end

end A102605.P15877579157661418291

/-!
# A102609: a(n) = 1 iff n^2-n+41 is prime (else 0).

The programs for A102609, the canonical program `A102609.P5262779225458545555` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102609 has offset 0).

The definition of A102609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102609.P5262779225458545555

`A010051(n²-n+41)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102609

/-- `A010051(n²-n+41)` -/
def P5262779225458545555.Spec : Prop :=
  ∀ n, P5262779225458545555.a n = A102609 n

theorem P5262779225458545555.correct : P5262779225458545555.Spec := by
  intro n
  simp only [A102609]

end A102609

/-! ## A102609.P10156363979211785079

`char[A002837(n+1)]`
-/

namespace A102609.P10156363979211785079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A102609.P10156363979211785079

namespace A102609

/-- `char[A002837(n+1)]` -/
def P10156363979211785079.Spec : Prop :=
  ∀ n, (P10156363979211785079.a n : ℤ) = A102609 n

end A102609

/-! ## A102609.P12361982288516405763

`char[comp[A007634(n+1)+1]]`
-/

namespace A102609.P12361982288516405763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007634 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A102609.P12361982288516405763

namespace A102609

/-- `char[comp[A007634(n+1)+1]]` -/
def P12361982288516405763.Spec : Prop :=
  ∀ n, (P12361982288516405763.a n : ℤ) = A102609 n

end A102609

/-! ## A102609.P4054422881375965642

`1-char[comp[A056561(n+1)]+1]`
-/

namespace A102609.P4054422881375965642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A102609.P4054422881375965642

namespace A102609

/-- `1-char[comp[A056561(n+1)]+1]` -/
def P4054422881375965642.Spec : Prop :=
  ∀ n, P4054422881375965642.a n = A102609 n

end A102609

/-! ## A102609.P10393449621420584333

`A358751(A202018(n)-2*n)`
-/

namespace A102609.P10393449621420584333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358751 (A202018 n - (2 * n : ℤ)).toNat

end

end A102609.P10393449621420584333

namespace A102609

/-- `A358751(A202018(n)-2*n)` -/
def P10393449621420584333.Spec : Prop :=
  ∀ n, P10393449621420584333.a n = A102609 n

end A102609

/-! ## A102609.P18336582023731785789

`A072547(∑{e}[2*n-A202018(n), #])`
-/

namespace A102609.P18336582023731785789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102609.P18336582023731785789

namespace A102609

/-- `A072547(∑{e}[2*n-A202018(n), #])` -/
def P18336582023731785789.Spec : Prop :=
  ∀ n, P18336582023731785789.a n = A102609 n

end A102609

/-! ## A102609.P6584022476696794071

`A173787(∑{e}[2*n-A202018(n), #])`
-/

namespace A102609.P6584022476696794071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102609.P6584022476696794071

namespace A102609

/-- `A173787(∑{e}[2*n-A202018(n), #])` -/
def P6584022476696794071.Spec : Prop :=
  ∀ n, P6584022476696794071.a n = A102609 n

end A102609

/-! ## A102609.P10252732000688912842

`A307183(∑{e}[2*n-A202018(n), #])`
-/

namespace A102609.P10252732000688912842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307183 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102609.P10252732000688912842

namespace A102609

/-- `A307183(∑{e}[2*n-A202018(n), #])` -/
def P10252732000688912842.Spec : Prop :=
  ∀ n, P10252732000688912842.a n = A102609 n

end A102609

/-! ## A102609.P18297695302703104214

`A337107(∑{e}[2*n-A202018(n), #])`
-/

namespace A102609.P18297695302703104214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337107 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102609.P18297695302703104214

namespace A102609

/-- `A337107(∑{e}[2*n-A202018(n), #])` -/
def P18297695302703104214.Spec : Prop :=
  ∀ n, P18297695302703104214.a n = A102609 n

end A102609

/-! ## A102609.P2523769672665037494

`A072547(∑{e}[n-A202018(n)+n, #])`
-/

namespace A102609.P2523769672665037494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A202018 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102609.P2523769672665037494

namespace A102609

/-- `A072547(∑{e}[n-A202018(n)+n, #])` -/
def P2523769672665037494.Spec : Prop :=
  ∀ n, P2523769672665037494.a n = A102609 n

end A102609

/-! ## A102609.P7771763472535611816

`A173787(∑{e}[n-A202018(n)+n, #])`
-/

namespace A102609.P7771763472535611816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A202018 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102609.P7771763472535611816

namespace A102609

/-- `A173787(∑{e}[n-A202018(n)+n, #])` -/
def P7771763472535611816.Spec : Prop :=
  ∀ n, P7771763472535611816.a n = A102609 n

end A102609

/-! ## A102609.P14599998885360009207

`A307183(∑{e}[n-A202018(n)+n, #])`
-/

namespace A102609.P14599998885360009207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A202018 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307183 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102609.P14599998885360009207

namespace A102609

/-- `A307183(∑{e}[n-A202018(n)+n, #])` -/
def P14599998885360009207.Spec : Prop :=
  ∀ n, P14599998885360009207.a n = A102609 n

end A102609

/-! ## A102609.P15795543062265786408

`A337107(∑{e}[n-A202018(n)+n, #])`
-/

namespace A102609.P15795543062265786408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A202018 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337107 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102609.P15795543062265786408

namespace A102609

/-- `A337107(∑{e}[n-A202018(n)+n, #])` -/
def P15795543062265786408.Spec : Prop :=
  ∀ n, P15795543062265786408.a n = A102609 n

end A102609

/-! ## A102609.P10828141893231747871

`A109925(A202018(n+1)-(4*n+1))`
-/

namespace A102609.P10828141893231747871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A202018 (n + 1) - (4 * n + 1 : ℤ)).toNat

end

end A102609.P10828141893231747871

namespace A102609

/-- `A109925(A202018(n+1)-(4*n+1))` -/
def P10828141893231747871.Spec : Prop :=
  ∀ n, P10828141893231747871.a n = A102609 n

end A102609

/-!
# A102610: Triangle read by rows: coefficients of characteristic polynomials of lower triangular matrix of Robbins triangle numbers.

The programs for A102610, there is no canonical definition to state claims against.
-/

/-! ## A102610.P534022992727038703

`A118686(n)-A355741(A197465(n+1))`
-/

namespace A102610.P534022992727038703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118686 n - A355741 (A197465 (n + 1)).toNat

end

end A102610.P534022992727038703

/-!
# A102611: Numbers k such that the number k77 is prime.

The programs for A102611, the canonical program `A102611.P8027776513147577979` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102611 has offset 1).

The definition of A102611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102611.P8027776513147577979

`eq[2, A000005(A053743(n)+32)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102611

/-- `eq[2, A000005(A053743(n)+32)]` -/
def P8027776513147577979.Spec : Prop :=
  ∀ n, (P8027776513147577979.a n : ℤ) = A102611 (n + 1)

theorem P8027776513147577979.correct : P8027776513147577979.Spec := by
  intro n
  simp only [A102611, Nat.add_sub_cancel]

end A102611

/-! ## A102611.P14401201980290523295

`eq[1, A001222(A017353(10*n+7))]`
-/

namespace A102611.P14401201980290523295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017353 (10 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P14401201980290523295

namespace A102611

/-- `eq[1, A001222(A017353(10*n+7))]` -/
def P14401201980290523295.Spec : Prop :=
  ∀ n, (P14401201980290523295.a n : ℤ) = A102611 (n + 1)

end A102611

/-! ## A102611.P13243277546775806405

`eq[1, A001222(A053742(2*n+1)+2)]`
-/

namespace A102611.P13243277546775806405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053742 (2 * n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P13243277546775806405

namespace A102611

/-- `eq[1, A001222(A053742(2*n+1)+2)]` -/
def P13243277546775806405.Spec : Prop :=
  ∀ n, (P13243277546775806405.a n : ℤ) = A102611 (n + 1)

end A102611

/-! ## A102611.P14029663240316009934

`eq[2, A000005(A017353(A017353(n)))]`
-/

namespace A102611.P14029663240316009934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017353 (A017353 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P14029663240316009934

namespace A102611

/-- `eq[2, A000005(A017353(A017353(n)))]` -/
def P14029663240316009934.Spec : Prop :=
  ∀ n, (P14029663240316009934.a n : ℤ) = A102611 (n + 1)

end A102611

/-! ## A102611.P8251019198731312410

`eq[A053743(n)+32, A020639(A053743(n)+32)]`
-/

namespace A102611.P8251019198731312410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053743 n + 32).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102611.P8251019198731312410

namespace A102611

/-- `eq[A053743(n)+32, A020639(A053743(n)+32)]` -/
def P8251019198731312410.Spec : Prop :=
  ∀ n, (P8251019198731312410.a n : ℤ) = A102611 (n + 1)

end A102611

/-! ## A102611.P5297076984107045261

`eq[1, A049653(A242181(n+1))]`
-/

namespace A102611.P5297076984107045261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (A242181 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P5297076984107045261

namespace A102611

/-- `eq[1, A049653(A242181(n+1))]` -/
def P5297076984107045261.Spec : Prop :=
  ∀ n, (P5297076984107045261.a n : ℤ) = A102611 (n + 1)

end A102611

/-! ## A102611.P673742035914443990

`eq[1, A049653(A017377(5*n+3))]`
-/

namespace A102611.P673742035914443990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (A017377 (5 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P673742035914443990

namespace A102611

/-- `eq[1, A049653(A017377(5*n+3))]` -/
def P673742035914443990.Spec : Prop :=
  ∀ n, (P673742035914443990.a n : ℤ) = A102611 (n + 1)

end A102611

/-! ## A102611.P12155554919916325124

`eq[3, A020483(5*A017353(n)+2)]`
-/

namespace A102611.P12155554919916325124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (5 * A017353 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P12155554919916325124

namespace A102611

/-- `eq[3, A020483(5*A017353(n)+2)]` -/
def P12155554919916325124.Spec : Prop :=
  ∀ n, (P12155554919916325124.a n : ℤ) = A102611 (n + 1)

end A102611

/-!
# A102613: Numerators of the reduced fractions of the ratios of the number of primes less than n over the number of composites less than n.

The programs for A102613, there is no canonical definition to state claims against.
-/

/-! ## A102613.P5960266731755341342

`lcm(n+1, ∑[C(n, ∏{e}[n+1, n*#])])/(n+1)`
-/

namespace A102613.P5960266731755341342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A102613.P5960266731755341342

/-! ## A102613.P5763384372031542867

`lcm(n+1, A000720(n+1))/(n+1)`
-/

namespace A102613.P5763384372031542867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000720 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A102613.P5763384372031542867

/-! ## A102613.P16018275686635972610

`∑[∑{p}[n+1, val(#, n+1)]]/A087267(n+1)`
-/

namespace A102613.P16018275686635972610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102613.P16018275686635972610

/-! ## A102613.P3189043911378630638

`A167192(A256885(n+1))`
-/

namespace A102613.P3189043911378630638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (A256885 (n + 1)).toNat

end

end A102613.P3189043911378630638

/-! ## A102613.P6836881530786057795

`A167192(∑[A014684(n+1)])`
-/

namespace A102613.P6836881530786057795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102613.P6836881530786057795

/-! ## A102613.P10910985004585056575

`A000720(n+1)/A087267(n+1)`
-/

namespace A102613.P10910985004585056575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102613.P10910985004585056575

/-! ## A102613.P15174191566661273018

`∑[A010051(n+1)]/A087267(n+1)`
-/

namespace A102613.P15174191566661273018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102613.P15174191566661273018

/-! ## A102613.P11086049332184980989

`∑[char[A000040(n+1)-1]]/A087267(n+1)`
-/

namespace A102613.P11086049332184980989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102613.P11086049332184980989

/-! ## A102613.P7676664854233224683

`∑[char[A006530(n+2)-1]]/A087267(n+1)`
-/

namespace A102613.P7676664854233224683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102613.P7676664854233224683

/-! ## A102613.P12568452988596728646

`∑[char[A020639(n+2)-1]]/A087267(n+1)`
-/

namespace A102613.P12568452988596728646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102613.P12568452988596728646

/-!
# A102614: Denominators of the reduced fractions of the ratios of the number of primes less than n over the number of composites less than n.

The programs for A102614, there is no canonical definition to state claims against.
-/

/-! ## A102614.P4433560110001452770

`lcm(n+1, A062298(n+1))/(n+1)`
-/

namespace A102614.P4433560110001452770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A062298 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A102614.P4433560110001452770

/-! ## A102614.P12554529739154923073

`∑[∏{p}[n+1, C(#%n, #)]]/A087267(n+1)`
-/

namespace A102614.P12554529739154923073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102614.P12554529739154923073

/-! ## A102614.P1509242029182356923

`A164306(A256885(n+1))`
-/

namespace A102614.P1509242029182356923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A256885 (n + 1)).toNat

end

end A102614.P1509242029182356923

/-! ## A102614.P785618024170197402

`A164306(∑[A014684(n+1)])`
-/

namespace A102614.P785618024170197402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102614.P785618024170197402

/-! ## A102614.P14230774502643062954

`A164306(∑[A005171(n+1)+n])`
-/

namespace A102614.P14230774502643062954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102614.P14230774502643062954

/-! ## A102614.P124161507866464290

`A164306(A062298(n+1)+∑[n])`
-/

namespace A102614.P124161507866464290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A062298 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A102614.P124161507866464290

/-! ## A102614.P5946645768299552635

`A392359(n+1)-A102613(n+1)`
-/

namespace A102614.P5946645768299552635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (n + 1) - A102613 (n + 1)

end

end A102614.P5946645768299552635

/-! ## A102614.P2478326119766373500

`A062298(n+1)/A087267(n+1)`
-/

namespace A102614.P2478326119766373500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062298 (n + 1) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102614.P2478326119766373500

/-! ## A102614.P13640541712263264486

`A164306(∑[n+1]-A000720(n+1))`
-/

namespace A102614.P13640541712263264486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000720 (n + 1)).toNat

end

end A102614.P13640541712263264486

/-! ## A102614.P17968963381234871081

`∑[A005171(n+1)]/A087267(n+1)`
-/

namespace A102614.P17968963381234871081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A087267 (n + 1) : ℚ)

end

end A102614.P17968963381234871081

/-!
# A102615: Nonprime numbers of order 2.

The programs for A102615, there is no canonical definition to state claims against.
-/

/-! ## A102615.P8428759561171699760

`A018252(lt[∑{p}[n, #], n])`
-/

namespace A102615.P8428759561171699760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A102615.P8428759561171699760

/-! ## A102615.P3067429077164985661

`A018252(comp[p?[xor(1, n)]-1]+1)`
-/

namespace A102615.P3067429077164985661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A102615.P3067429077164985661

/-! ## A102615.P991511150421301843

`A018252(comp[n%2*p?[floor(n/2)]])`
-/

namespace A102615.P991511150421301843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A102615.P991511150421301843

/-! ## A102615.P8588483414745665616

`A018252(comp[p?[round(3*n/7)]-1]+1)`
-/

namespace A102615.P8588483414745665616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A102615.P8588483414745665616

/-! ## A102615.P16193862494164689704

`A018252(Δ[A051349(n)])`
-/

namespace A102615.P16193862494164689704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (n + 1) - f1 n).toNat

end

end A102615.P16193862494164689704

/-! ## A102615.P13722220515259060637

`A018252(comp[A047814(n)])`
-/

namespace A102615.P13722220515259060637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A102615.P13722220515259060637

/-! ## A102615.P15904684180990543119

`A018252(comp[A331097(n)])`
-/

namespace A102615.P15904684180990543119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A102615.P15904684180990543119

/-! ## A102615.P904076008050049791

`A026234(A007821(n+1))`
-/

namespace A102615.P904076008050049791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A007821 (n + 1)).toNat

end

end A102615.P904076008050049791

/-! ## A102615.P14530197008570130231

`A018252(A018252(n+1))`
-/

namespace A102615.P14530197008570130231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 1)).toNat

end

end A102615.P14530197008570130231

/-! ## A102615.P12723322750589809589

`A056653(A060462(n+1))`
-/

namespace A102615.P12723322750589809589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A060462 (n + 1)).toNat

end

end A102615.P12723322750589809589

/-!
# A102616: Nonprime numbers of order 3.

The programs for A102616, there is no canonical definition to state claims against.
-/

/-! ## A102616.P3595503751771611080

`A018252(A102615(n+1))`
-/

namespace A102616.P3595503751771611080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A102615 (n + 1)).toNat

end

end A102616.P3595503751771611080

/-! ## A102616.P16101607836448131960

`comp[A168181(n)*A237739(n)]`
-/

namespace A102616.P16101607836448131960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n * A237739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102616.P16101607836448131960

/-! ## A102616.P10834294332831368722

`A141468(A102615(n+1)+1)`
-/

namespace A102616.P10834294332831368722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A102615 (n + 1) + 1).toNat

end

end A102616.P10834294332831368722

/-! ## A102616.P5958742370411963947

`A237739(8*A071574(n+1))`
-/

namespace A102616.P5958742370411963947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (8 * A071574 (n + 1)).toNat

end

end A102616.P5958742370411963947

/-! ## A102616.P13411228286827823726

`A018252(A018252(comp[p?[n%3+n]-1]+1))`
-/

namespace A102616.P13411228286827823726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)).toNat

end

end A102616.P13411228286827823726

/-! ## A102616.P18394969518033832358

`A018252(A018252(A018252(n+1)))`
-/

namespace A102616.P18394969518033832358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (A018252 (n + 1)).toNat).toNat

end

end A102616.P18394969518033832358

/-! ## A102616.P7463629908266871182

`A141468(A141468(A141468(n+2)+1)+1)`
-/

namespace A102616.P7463629908266871182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A141468 (A141468 (n + 2) + 1).toNat + 1).toNat

end

end A102616.P7463629908266871182

/-! ## A102616.P15452302644589521597

`A006255(A297022(A102615(A067565(A006255(n+1)))))`
-/

namespace A102616.P15452302644589521597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (A297022 (A102615 (A067565 (A006255 (n + 1)).toNat).toNat).toNat).toNat

end

end A102616.P15452302644589521597

/-! ## A102616.P2181329234264019277

`A006255(A297022(A102615(A297104(A297022(n+1)))))`
-/

namespace A102616.P2181329234264019277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (A297022 (A102615 (A297104 (A297022 (n + 1)).toNat).toNat).toNat).toNat

end

end A102616.P2181329234264019277

/-! ## A102616.P5004385261538277918

`A066260(A008578(A066260(A175249(n+1))))`
-/

namespace A102616.P5004385261538277918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066260 (A008578 (A066260 (A175249 (n + 1)).toNat).toNat).toNat

end

end A102616.P5004385261538277918

/-!
# A102617: Primes prime(k) where k is a second-order nonprime number.

The programs for A102617, there is no canonical definition to state claims against.
-/

/-! ## A102617.P1618731651280215053

`A007821(comp[p?[xor(1, n)]-1]+1)`
-/

namespace A102617.P1618731651280215053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A102617.P1618731651280215053

/-! ## A102617.P13871634518416219240

`A007821(Δ[A051349(n)])`
-/

namespace A102617.P13871634518416219240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f1 (n + 1) - f1 n).toNat

end

end A102617.P13871634518416219240

/-! ## A102617.P9463031553408877857

`A007821(comp[A331044(n)])`
-/

namespace A102617.P9463031553408877857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A102617.P9463031553408877857

/-! ## A102617.P7847628862349468225

`A007821(A018252(n+1))`
-/

namespace A102617.P7847628862349468225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A018252 (n + 1)).toNat

end

end A102617.P7847628862349468225

/-! ## A102617.P5064906195223088105

`A000040(A102615(n+1))`
-/

namespace A102617.P5064906195223088105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A102615 (n + 1)).toNat

end

end A102617.P5064906195223088105

/-! ## A102617.P5390552600348324849

`A026234(A102616(n+1))`
-/

namespace A102617.P5390552600348324849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A102616 (n + 1)).toNat

end

end A102617.P5390552600348324849

/-! ## A102617.P6633395185759251534

`A007821(A141468(n+2))`
-/

namespace A102617.P6633395185759251534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (A141468 (n + 2)).toNat

end

end A102617.P6633395185759251534

/-! ## A102617.P6727162241622773445

`A007821(∑[A054546(n+1)])`
-/

namespace A102617.P6727162241622773445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102617.P6727162241622773445

/-! ## A102617.P17860588464334372598

`A007821(comp[A061397(n+1)])`
-/

namespace A102617.P17860588464334372598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A102617.P17860588464334372598

/-! ## A102617.P11987068152298926110

`A008578(A102615(n+1)+1)`
-/

namespace A102617.P11987068152298926110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A102615 (n + 1) + 1).toNat

end

end A102617.P11987068152298926110

/-!
# A102618: Numbers which are the sum of two positive cubes and divisible by 37.

The programs for A102618, there is no canonical definition to state claims against.
-/

/-! ## A102618.P7403113165966344740

`∩[A003325(n+1), A085959(n)]`
-/

namespace A102618.P7403113165966344740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102618.P7403113165966344740

/-! ## A102618.P14124591290787463420

`∩[A008601(2*n)-n, A003325(n+2)]`
-/

namespace A102618.P14124591290787463420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102618.P14124591290787463420

/-! ## A102618.P10687834341629082818

`A028310(∩[A024670(n+1), A085959(n)])`
-/

namespace A102618.P10687834341629082818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102618.P10687834341629082818

/-! ## A102618.P1161398010212096253

`A028310(∩[A338667(n+1), A085959(n)])`
-/

namespace A102618.P1161398010212096253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102618.P1161398010212096253

/-!
# A102619: Numbers which are the sum of two positive cubes and divisible by 19.

The programs for A102619, there is no canonical definition to state claims against.
-/

/-! ## A102619.P11626039013659197717

`∩[19*n, A003325(n+5)]`
-/

namespace A102619.P11626039013659197717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102619.P11626039013659197717

/-! ## A102619.P14715137570412165075

`∩[A003325(n+1), A008601(n)]`
-/

namespace A102619.P14715137570412165075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102619.P14715137570412165075

/-! ## A102619.P9755813870659418565

`∩[A003325(n+1), A008599(n)+n+n]`
-/

namespace A102619.P9755813870659418565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102619.P9755813870659418565

/-! ## A102619.P10062759159709410128

`∩[A003325(n+1), A008591(A005843(n))+n]`
-/

namespace A102619.P10062759159709410128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A005843 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102619.P10062759159709410128

/-!
# A102620: Number of legal Go positions on a 1 X n board (for which 3^n is a trivial upper bound).

The programs for A102620, the canonical program `A102620.P7657028880195894792` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102620 has offset 1).

The definition of A102620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102620.P7657028880195894792

`3*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=15`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102620

/-- `3*a(n-1)-a(n-2)+a(n-3)` -/
def P7657028880195894792.Spec : Prop :=
  ∀ n, P7657028880195894792.a n = A102620 (n + 1)

theorem P7657028880195894792.correct : P7657028880195894792.Spec := by
  intro n
  simp only [A102620, Nat.add_sub_cancel]

end A102620

/-! ## A102620.P11587176065785844544

`ogf((1+2x+x^2)/(1-3x+x^2-x^3))`
-/

namespace A102620.P11587176065785844544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -3, 1, -1] n

end

end A102620.P11587176065785844544

namespace A102620

/-- `ogf((1+2x+x^2)/(1-3x+x^2-x^3))` -/
def P11587176065785844544.Spec : Prop :=
  ∀ n, P11587176065785844544.a n = A102620 (n + 1)

end A102620

/-! ## A102620.P11813590369046098857

`Δ[A098182(n)]+Δ[A202207(n)]`
-/

namespace A102620.P11813590369046098857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A102620.P11813590369046098857

namespace A102620

/-- `Δ[A098182(n)]+Δ[A202207(n)]` -/
def P11813590369046098857.Spec : Prop :=
  ∀ n, P11813590369046098857.a n = A102620 (n + 1)

end A102620

/-! ## A102620.P15432391581690905413

`A098182(n+1)+Δ[A098182(n)]`
-/

namespace A102620.P15432391581690905413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 (n + 1) + (f1 (n + 1) - f1 n)

end

end A102620.P15432391581690905413

namespace A102620

/-- `A098182(n+1)+Δ[A098182(n)]` -/
def P15432391581690905413.Spec : Prop :=
  ∀ n, P15432391581690905413.a n = A102620 (n + 1)

end A102620

/-! ## A102620.P10766324364183402966

`A202207(n+1)+Δ[A200752(n)]`
-/

namespace A102620.P10766324364183402966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202207 (n + 1) + (f1 (n + 1) - f1 n)

end

end A102620.P10766324364183402966

namespace A102620

/-- `A202207(n+1)+Δ[A200752(n)]` -/
def P10766324364183402966.Spec : Prop :=
  ∀ n, P10766324364183402966.a n = A102620 (n + 1)

end A102620

/-! ## A102620.P9366827020947510585

`A200752(n+1)+A202207(n+1)-A200752(n)`
-/

namespace A102620.P9366827020947510585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 (n + 1) + (A202207 (n + 1) - A200752 n)

end

end A102620.P9366827020947510585

namespace A102620

/-- `A200752(n+1)+A202207(n+1)-A200752(n)` -/
def P9366827020947510585.Spec : Prop :=
  ∀ n, P9366827020947510585.a n = A102620 (n + 1)

end A102620

/-! ## A102620.P15584327704920384712

`Δ[A202207(n)+A098182(n)]`
-/

namespace A102620.P15584327704920384712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202207 n + A098182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102620.P15584327704920384712

namespace A102620

/-- `Δ[A202207(n)+A098182(n)]` -/
def P15584327704920384712.Spec : Prop :=
  ∀ n, P15584327704920384712.a n = A102620 (n + 1)

end A102620

/-! ## A102620.P8063770883028876500

`Δ[Δ[A202207(n)-A200752(n)]]`
-/

namespace A102620.P8063770883028876500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202207 n - A200752 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102620.P8063770883028876500

namespace A102620

/-- `Δ[Δ[A202207(n)-A200752(n)]]` -/
def P8063770883028876500.Spec : Prop :=
  ∀ n, P8063770883028876500.a n = A102620 (n + 1)

end A102620

/-! ## A102620.P13176928330707220867

`Δ[A200752(n+3)+A200752(n)]`
-/

namespace A102620.P13176928330707220867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 (n + 3) + A200752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102620.P13176928330707220867

namespace A102620

/-- `Δ[A200752(n+3)+A200752(n)]` -/
def P13176928330707220867.Spec : Prop :=
  ∀ n, P13176928330707220867.a n = A102620 (n + 1)

end A102620

/-! ## A102620.P8222616106432143666

`A200752(n+6)%A200752(n+4)`
-/

namespace A102620.P8222616106432143666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200752 (n + 6)) (A200752 (n + 4))

end

end A102620.P8222616106432143666

namespace A102620

/-- `A200752(n+6)%A200752(n+4)` -/
def P8222616106432143666.Spec : Prop :=
  ∀ n, P8222616106432143666.a n = A102620 (n + 1)

end A102620

/-!
# A102622: Nonprime numbers n concatenated n times.

The programs for A102622, there is no canonical definition to state claims against.
-/

/-! ## A102622.P15840820362141108537

`A000461(A018252(n+1))`
-/

namespace A102622.P15840820362141108537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000461 (A018252 (n + 1)).toNat

end

end A102622.P15840820362141108537

/-!
# A102623: Number of compositions into a prime number of distinct parts.

The programs for A102623, there is no canonical definition to state claims against.
-/

/-! ## A102623.P17372161534994610569

`A004442(A332304(n+1)+A052928(n))`
-/

namespace A102623.P17372161534994610569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A332304 (n + 1) + A052928 n).toNat

end

end A102623.P17372161534994610569

/-! ## A102623.P7512428563515494052

`A052928(A332304(n+1)+A052928(n))`
-/

namespace A102623.P7512428563515494052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A332304 (n + 1) + A052928 n).toNat

end

end A102623.P7512428563515494052

/-! ## A102623.P7118556004334142048

`A023444(A332304(n+1)+A004525(2*n+1))`
-/

namespace A102623.P7118556004334142048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A332304 (n + 1) + A004525 (2 * n + 1)).toNat

end

end A102623.P7118556004334142048

/-! ## A102623.P18168122384805172960

`∑[A244158(Δ[A032020(n)])]`
-/

namespace A102623.P18168122384805172960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102623.P18168122384805172960

/-!
# A102624: Numbers k such that the number k23 is prime.

The programs for A102624, the canonical program `A102624.P12330737729857547922` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102624 has offset 1).

The definition of A102624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102624.P11198053882209825961

`eq[3, A096915(10*n+2)]`
-/

namespace A102624.P11198053882209825961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (10 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102624.P11198053882209825961

namespace A102624

/-- `eq[3, A096915(10*n+2)]` -/
def P11198053882209825961.Spec : Prop :=
  ∀ n, (P11198053882209825961.a n : ℤ) = A102624 (n + 1)

end A102624

/-! ## A102624.P769555349864358274

`eq[1, A001222(10*10*n+23)]`
-/

namespace A102624.P769555349864358274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (10 * n) + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102624.P769555349864358274

namespace A102624

/-- `eq[1, A001222(10*10*n+23)]` -/
def P769555349864358274.Spec : Prop :=
  ∀ n, (P769555349864358274.a n : ℤ) = A102624 (n + 1)

end A102624

/-! ## A102624.P5272028286821541728

`eq[2, A000005(10*10*n+23)]`
-/

namespace A102624.P5272028286821541728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (10 * n) + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102624.P5272028286821541728

namespace A102624

/-- `eq[2, A000005(10*10*n+23)]` -/
def P5272028286821541728.Spec : Prop :=
  ∀ n, (P5272028286821541728.a n : ℤ) = A102624 (n + 1)

end A102624

/-! ## A102624.P12330737729857547922

`eq[10*10*n+23, A006530(10*10*n+23)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A102624

/-- `eq[10*10*n+23, A006530(10*10*n+23)]` -/
def P12330737729857547922.Spec : Prop :=
  ∀ n, (P12330737729857547922.a n : ℤ) = A102624 (n + 1)

theorem P12330737729857547922.correct : P12330737729857547922.Spec := by
  intro n
  simp only [A102624, Nat.add_sub_cancel]

end A102624

/-! ## A102624.P5038224418862553449

`lt[A096915(A017293(n)), 4]`
-/

namespace A102624.P5038224418862553449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A017293 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102624.P5038224418862553449

namespace A102624

/-- `lt[A096915(A017293(n)), 4]` -/
def P5038224418862553449.Spec : Prop :=
  ∀ n, (P5038224418862553449.a n : ℤ) = A102624 (n + 1)

end A102624

/-! ## A102624.P3989647459364935706

`lt[A001222(A053742(2*n)-2), 2]`
-/

namespace A102624.P3989647459364935706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053742 (2 * n) - 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102624.P3989647459364935706

namespace A102624

/-- `lt[A001222(A053742(2*n)-2), 2]` -/
def P3989647459364935706.Spec : Prop :=
  ∀ n, (P3989647459364935706.a n : ℤ) = A102624 (n + 1)

end A102624

/-! ## A102624.P12164165676725761885

`eq[1, A001221(A017293(A017293(n))+1)]`
-/

namespace A102624.P12164165676725761885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017293 (A017293 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102624.P12164165676725761885

namespace A102624

/-- `eq[1, A001221(A017293(A017293(n))+1)]` -/
def P12164165676725761885.Spec : Prop :=
  ∀ n, (P12164165676725761885.a n : ℤ) = A102624 (n + 1)

end A102624

/-! ## A102624.P14762117974302554993

`eq[A053742(2*n)-2, A020639(A053742(2*n)-2)]`
-/

namespace A102624.P14762117974302554993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (2 * n) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 (2 * n) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102624.P14762117974302554993

namespace A102624

/-- `eq[A053742(2*n)-2, A020639(A053742(2*n)-2)]` -/
def P14762117974302554993.Spec : Prop :=
  ∀ n, (P14762117974302554993.a n : ℤ) = A102624 (n + 1)

end A102624

/-!
# A102625: Triangle read by rows: T(n,k) is the sum of the weights of all vertices labeled k at depth n in the Catalan tree (1 <= k <= n+1, n >= 0).

The programs for A102625, the canonical program `A102625.P7375229500006825034` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102625 has offset 0).

The definition of A102625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102625.P7375229500006825034

`(col(n)+1)*T(n-1,k-1)+(2*row(n)-(col(n)+1))*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102625

/-- `(col(n)+1)*T(n-1,k-1)+(2*row(n)-(col(n)+1))*T(n-1,k)` -/
def P7375229500006825034.Spec : Prop :=
  ∀ n, P7375229500006825034.a n = A102625 n

theorem P7375229500006825034.correct : P7375229500006825034.Spec := by
  intro n
  simp only [A102625]

end A102625

/-! ## A102625.P13897454653762715593

`A193561(A061579(n))`
-/

namespace A102625.P13897454653762715593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193561 (A061579 n).toNat

end

end A102625.P13897454653762715593

namespace A102625

/-- `A193561(A061579(n))` -/
def P13897454653762715593.Spec : Prop :=
  ∀ n, P13897454653762715593.a n = A102625 n

end A102625

/-! ## A102625.P10186245155927190658

`A001497(n)*A166350(n+1)`
-/

namespace A102625.P10186245155927190658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A166350 (n + 1)

end

end A102625.P10186245155927190658

namespace A102625

/-- `A001497(n)*A166350(n+1)` -/
def P10186245155927190658.Spec : Prop :=
  ∀ n, P10186245155927190658.a n = A102625 n

end A102625

/-! ## A102625.P969518729669029530

`A002260(n+1)*A193229(n)`
-/

namespace A102625.P969518729669029530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A193229 n

end

end A102625.P969518729669029530

namespace A102625

/-- `A002260(n+1)*A193229(n)` -/
def P969518729669029530.Spec : Prop :=
  ∀ n, P969518729669029530.a n = A102625 n

end A102625

/-! ## A102625.P15996691363356464839

`(A002262(n)+1)*A193229(n)`
-/

namespace A102625.P15996691363356464839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A193229 n

end

end A102625.P15996691363356464839

namespace A102625

/-- `(A002262(n)+1)*A193229(n)` -/
def P15996691363356464839.Spec : Prop :=
  ∀ n, P15996691363356464839.a n = A102625 n

end A102625

/-! ## A102625.P4877094435037155141

`A002260(n+1)!*A001497(n)`
-/

namespace A102625.P4877094435037155141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A001497 n

end

end A102625.P4877094435037155141

namespace A102625

/-- `A002260(n+1)!*A001497(n)` -/
def P4877094435037155141.Spec : Prop :=
  ∀ n, P4877094435037155141.a n = A102625 n

end A102625

/-! ## A102625.P8039911165769007674

`A004736(A038722(n+1))*A193229(n)`
-/

namespace A102625.P8039911165769007674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A193229 n

end

end A102625.P8039911165769007674

namespace A102625

/-- `A004736(A038722(n+1))*A193229(n)` -/
def P8039911165769007674.Spec : Prop :=
  ∀ n, P8039911165769007674.a n = A102625 n

end A102625

/-! ## A102625.P9920315721326988628

`A019538(n+1)/A008277(n+1)*A001497(n)`
-/

namespace A102625.P9920315721326988628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A001497 n : ℚ)

end

end A102625.P9920315721326988628

namespace A102625

/-- `A019538(n+1)/A008277(n+1)*A001497(n)` -/
def P9920315721326988628.Spec : Prop :=
  ∀ n, P9920315721326988628.a n = (A102625 n : ℚ)

end A102625

/-! ## A102625.P2309977345703485486

`A000005(A059268(n))*A193229(n)`
-/

namespace A102625.P2309977345703485486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A193229 n

end

end A102625.P2309977345703485486

namespace A102625

/-- `A000005(A059268(n))*A193229(n)` -/
def P2309977345703485486.Spec : Prop :=
  ∀ n, P2309977345703485486.a n = A102625 n

end A102625

/-!
# A102627: Number of partitions of n into distinct parts in which the number of parts divides n.

The programs for A102627, there is no canonical definition to state claims against.
-/

/-! ## A102627.P17165057866245381045

`A000009(n+1)-A361391(n+1)`
-/

namespace A102627.P17165057866245381045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A361391 (n + 1)

end

end A102627.P17165057866245381045

/-! ## A102627.P1080253247990277536

`A359907(n+1)+A360952(n+1)-A361391(n+1)`
-/

namespace A102627.P1080253247990277536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359907 (n + 1) + (A360952 (n + 1) - A361391 (n + 1))

end

end A102627.P1080253247990277536

/-! ## A102627.P17119668508154752014

`A325563(A324896(n+1)+A318505(n+1))`
-/

namespace A102627.P17119668508154752014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A324896 (n + 1) + A318505 (n + 1)).toNat

end

end A102627.P17119668508154752014

/-! ## A102627.P615264465002334415

`C(A000120(A056712(n+1)), A339846(n+1))`
-/

namespace A102627.P615264465002334415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (A056712 (n + 1)).toNat).toNat (A339846 (n + 1)).toNat

end

end A102627.P615264465002334415

/-! ## A102627.P13240667493656819774

`A000005(A283543(n+1)^A292108(n+1))`
-/

namespace A102627.P13240667493656819774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A283543 (n + 1) : ℚ) ^ (A292108 (n + 1) : ℤ))).toNat

end

end A102627.P13240667493656819774

/-!
# A102630: Numbers n such that no positive number of the form prime(n)-2^k is prime.

The programs for A102630, there is no canonical definition to state claims against.
-/

/-! ## A102630.P17563362433555776695

`record[(n+1)/n^A078687(n+1)]`
-/

namespace A102630.P17563362433555776695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n : ℚ) ^ (A078687 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102630.P17563362433555776695

/-! ## A102630.P6851603108870100517

`record[A003963(A133122(n+1))]`
-/

namespace A102630.P6851603108870100517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A133122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102630.P6851603108870100517

/-! ## A102630.P4672551826752691707

`record[A263111(A006286(n+1)-1)]`
-/

namespace A102630.P4672551826752691707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A006286 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102630.P4672551826752691707

/-! ## A102630.P12175935608273390155

`record[(A078687(n+1)+n+1)%A000027(n+2)]`
-/

namespace A102630.P12175935608273390155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078687 (n + 1) + (n + 1 : ℤ)) (A000027 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102630.P12175935608273390155

/-! ## A102630.P511272319471210836

`A151934(n)+record[A055396(A133122(n+1))]`
-/

namespace A102630.P511272319471210836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A133122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102630.P511272319471210836

/-!
# A102631: a(n) = n^2 / (squarefree kernel of n).

The programs for A102631, the canonical program `A102631.P2518186412754313282` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102631 has offset 1).

The definition of A102631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102631.P476758800683466779

`(n+1)*A003557(n+1)`
-/

namespace A102631.P476758800683466779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003557 (n + 1)

end

end A102631.P476758800683466779

namespace A102631

/-- `(n+1)*A003557(n+1)` -/
def P476758800683466779.Spec : Prop :=
  ∀ n, P476758800683466779.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P2518186412754313282

`A000290(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102631

/-- `A000290(n+1)/A007947(n+1)` -/
def P2518186412754313282.Spec : Prop :=
  ∀ n, P2518186412754313282.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P8748328723851842205

`A350390((n+1)²)`
-/

namespace A102631.P8748328723851842205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 ((n + 1) ^ 2)

end

end A102631.P8748328723851842205

namespace A102631

/-- `A350390((n+1)²)` -/
def P8748328723851842205.Spec : Prop :=
  ∀ n, P8748328723851842205.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P3923135600167624479

`(n+1)²/∏{p}[n+1, #]`
-/

namespace A102631.P3923135600167624479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A102631.P3923135600167624479

namespace A102631

/-- `(n+1)²/∏{p}[n+1, #]` -/
def P3923135600167624479.Spec : Prop :=
  ∀ n, P3923135600167624479.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P4560070647484499677

`(n+1)*(n+1)/∏{p}[n+1, #]`
-/

namespace A102631.P4560070647484499677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))

end

end A102631.P4560070647484499677

namespace A102631

/-- `(n+1)*(n+1)/∏{p}[n+1, #]` -/
def P4560070647484499677.Spec : Prop :=
  ∀ n, P4560070647484499677.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P17520873199879242700

`ceil(∑[n+1+n]/∏{p}[n+1, #])`
-/

namespace A102631.P17520873199879242700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌉

end

end A102631.P17520873199879242700

namespace A102631

/-- `ceil(∑[n+1+n]/∏{p}[n+1, #])` -/
def P17520873199879242700.Spec : Prop :=
  ∀ n, P17520873199879242700.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P10912525439065781526

`(n+1)*(A336551(n+1)+1)`
-/

namespace A102631.P10912525439065781526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A336551 (n + 1) + 1)

end

end A102631.P10912525439065781526

namespace A102631

/-- `(n+1)*(A336551(n+1)+1)` -/
def P10912525439065781526.Spec : Prop :=
  ∀ n, P10912525439065781526.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P316647365397166944

`(n+1)^3/A064549(n+1)`
-/

namespace A102631.P316647365397166944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A064549 (n + 1) : ℚ)

end

end A102631.P316647365397166944

namespace A102631

/-- `(n+1)^3/A064549(n+1)` -/
def P316647365397166944.Spec : Prop :=
  ∀ n, P316647365397166944.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P5518033882069960956

`(n+1)²²/A355038(n+1)`
-/

namespace A102631.P5518033882069960956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℚ) / (A355038 (n + 1) : ℚ)

end

end A102631.P5518033882069960956

namespace A102631

/-- `(n+1)²²/A355038(n+1)` -/
def P5518033882069960956.Spec : Prop :=
  ∀ n, P5518033882069960956.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P16393018357291019538

`(n+1)*(n+1-A010848(n+1))`
-/

namespace A102631.P16393018357291019538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A010848 (n + 1))

end

end A102631.P16393018357291019538

namespace A102631

/-- `(n+1)*(n+1-A010848(n+1))` -/
def P16393018357291019538.Spec : Prop :=
  ∀ n, P16393018357291019538.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P11727876914077797747

`A052126(n+1)*A217434(n+1)`
-/

namespace A102631.P11727876914077797747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A217434 (n + 1)

end

end A102631.P11727876914077797747

namespace A102631

/-- `A052126(n+1)*A217434(n+1)` -/
def P11727876914077797747.Spec : Prop :=
  ∀ n, P11727876914077797747.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P16082787546195114299

`A008833(n+1)*A350390(n+1)`
-/

namespace A102631.P16082787546195114299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A350390 (n + 1)

end

end A102631.P16082787546195114299

namespace A102631

/-- `A008833(n+1)*A350390(n+1)` -/
def P16082787546195114299.Spec : Prop :=
  ∀ n, P16082787546195114299.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P18284714846726189760

`A000082(n+1)/A048250(n+1)`
-/

namespace A102631.P18284714846726189760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A102631.P18284714846726189760

namespace A102631

/-- `A000082(n+1)/A048250(n+1)` -/
def P18284714846726189760.Spec : Prop :=
  ∀ n, P18284714846726189760.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P5664858091268056326

`A002618(n+1)/A173557(n+1)`
-/

namespace A102631.P5664858091268056326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A102631.P5664858091268056326

namespace A102631

/-- `A002618(n+1)/A173557(n+1)` -/
def P5664858091268056326.Spec : Prop :=
  ∀ n, P5664858091268056326.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P12185752345581748385

`A033196(n+1)/A181797(n+1)`
-/

namespace A102631.P12185752345581748385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033196 (n + 1) : ℚ) / (A181797 (n + 1) : ℚ)

end

end A102631.P12185752345581748385

namespace A102631

/-- `A033196(n+1)/A181797(n+1)` -/
def P12185752345581748385.Spec : Prop :=
  ∀ n, P12185752345581748385.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P2950223273162049038

`A137933(n+1)/A099985(n+1)`
-/

namespace A102631.P2950223273162049038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137933 (n + 1) : ℚ) / (A099985 (n + 1) : ℚ)

end

end A102631.P2950223273162049038

namespace A102631

/-- `A137933(n+1)/A099985(n+1)` -/
def P2950223273162049038.Spec : Prop :=
  ∀ n, P2950223273162049038.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P2428850220120800603

`(n+1)²/A053166(A053166(n+1))`
-/

namespace A102631.P2428850220120800603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A053166 (A053166 (n + 1)).toNat : ℚ)

end

end A102631.P2428850220120800603

namespace A102631

/-- `(n+1)²/A053166(A053166(n+1))` -/
def P2428850220120800603.Spec : Prop :=
  ∀ n, P2428850220120800603.a n = (A102631 (n + 1) : ℚ)

end A102631

/-! ## A102631.P13811276518226843693

`(A065423(n+1)+1)*A357689(n+1)`
-/

namespace A102631.P13811276518226843693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065423 (n + 1) + 1) * A357689 (n + 1)

end

end A102631.P13811276518226843693

namespace A102631

/-- `(A065423(n+1)+1)*A357689(n+1)` -/
def P13811276518226843693.Spec : Prop :=
  ∀ n, P13811276518226843693.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P17761631958582679085

`∑{d}[n+1, A008683(#)*A380322((n+1)/#)]`
-/

namespace A102631.P17761631958582679085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A380322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A102631.P17761631958582679085

namespace A102631

/-- `∑{d}[n+1, A008683(#)*A380322((n+1)/#)]` -/
def P17761631958582679085.Spec : Prop :=
  ∀ n, P17761631958582679085.a n = A102631 (n + 1)

end A102631

/-! ## A102631.P7011961638074210505

`A306458(A361936(n+1))`
-/

namespace A102631.P7011961638074210505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (A361936 (n + 1)).toNat

end

end A102631.P7011961638074210505

namespace A102631

/-- `A306458(A361936(n+1))` -/
def P7011961638074210505.Spec : Prop :=
  ∀ n, P7011961638074210505.a n = A102631 (n + 1)

end A102631

/-!
# A102632: Smallest k such that at least one of 2^k+/ -prime(n) is prime.

The programs for A102632, there is no canonical definition to state claims against.
-/

/-! ## A102632.P7713913898399525072

`A000196(A089856(A094076(n+1)²))`
-/

namespace A102632.P7713913898399525072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A089856 (A094076 (n + 1) ^ 2).toNat).toNat

end

end A102632.P7713913898399525072

/-! ## A102632.P4055136162886148892

`A005599(A094076(n+1)%A360104(2*n+1))`
-/

namespace A102632.P4055136162886148892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (Int.tmod (A094076 (n + 1)) (A360104 (2 * n + 1))).toNat

end

end A102632.P4055136162886148892

/-! ## A102632.P14545993989051611355

`A005599(A094076(n+1)%A335456(n))`
-/

namespace A102632.P14545993989051611355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (Int.tmod (A094076 (n + 1)) (A335456 n)).toNat

end

end A102632.P14545993989051611355

/-! ## A102632.P16924482221722004747

`A005599(A094076(n+1))%(A101525(n+1)+1)`
-/

namespace A102632.P16924482221722004747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005599 (A094076 (n + 1)).toNat) (A101525 (n + 1) + 1)

end

end A102632.P16924482221722004747

/-! ## A102632.P4587920730526142541

`A165597(A094076(n+1))%A379722(3*n+3)`
-/

namespace A102632.P4587920730526142541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165597 (A094076 (n + 1)).toNat) (A379722 (3 * n + 3))

end

end A102632.P4587920730526142541

/-!
# A102633: Numbers k such that 2^k + 11 is prime.

The programs for A102633, there is no canonical definition to state claims against.
-/

/-! ## A102633.P14387290472709368943

`log2(A156940(n+1)-11)`
-/

namespace A102633.P14387290472709368943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A156940 (n + 1) - 11 : ℝ)

end

end A102633.P14387290472709368943

/-! ## A102633.P2872698165069343875

`or(A073674(n+1), A136617(A304887(n)))`
-/

namespace A102633.P2872698165069343875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073674 (n + 1)) (A136617 (A304887 n).toNat)

end

end A102633.P2872698165069343875

/-! ## A102633.P17284849621529784323

`or(A083566(n+1), A136617(A304887(n)))`
-/

namespace A102633.P17284849621529784323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083566 (n + 1)) (A136617 (A304887 n).toNat)

end

end A102633.P17284849621529784323

/-! ## A102633.P12725133174801452685

`lt[A331216(n), A152822(A008277(n+1))]`
-/

namespace A102633.P12725133174801452685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A008277 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102633.P12725133174801452685

/-! ## A102633.P12962695303941574261

`or(A064896(n+1), A324288(A243338(n+1)))`
-/

namespace A102633.P12962695303941574261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064896 (n + 1)) (A324288 (A243338 (n + 1)).toNat)

end

end A102633.P12962695303941574261

/-!
# A102634: Numbers k such that 2^k + 13 is prime.

The programs for A102634, there is no canonical definition to state claims against.
-/

/-! ## A102634.P11653240338933073274

`2*A253772(n+1)`
-/

namespace A102634.P11653240338933073274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253772 (n + 1)

end

end A102634.P11653240338933073274

/-! ## A102634.P1310345482388076028

`record[2*A253772(A051340(n))]`
-/

namespace A102634.P1310345482388076028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253772 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102634.P1310345482388076028

/-! ## A102634.P13831167542063097262

`A253772(A005555(n))/(1-1/2)`
-/

namespace A102634.P13831167542063097262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253772 (A005555 n).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A102634.P13831167542063097262

/-! ## A102634.P17490778731430052438

`A253772(n+1)+A253772(Δ[n²]-n)`
-/

namespace A102634.P17490778731430052438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253772 (n + 1) + A253772 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A102634.P17490778731430052438

/-! ## A102634.P7210125622133700371

`A253772(n+1)+record[A253772(A051340(n))]`
-/

namespace A102634.P7210125622133700371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253772 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253772 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102634.P7210125622133700371

/-!
# A102640: Compute the greatest prime factors (GPFs, A006530()) of j + 2^n for j = 0, 1, ..., L. a(n) is the maximal length L of such a sequence in which the greatest prime factors are increasing with increasing j.

The programs for A102640, there is no canonical definition to state claims against.
-/

/-! ## A102640.P3453616249856063458

`A102642(n+1)+1-A102641(n+1)`
-/

namespace A102640.P3453616249856063458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102642 (n + 1) + (1 - A102641 (n + 1))

end

end A102640.P3453616249856063458

/-! ## A102640.P15978338215325193699

`A102642(n+1)-A023443(A048578(n)%A102644(n+1))`
-/

namespace A102640.P15978338215325193699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102642 (n + 1) - A023443 (Int.tmod (A048578 n) (A102644 (n + 1))).toNat

end

end A102640.P15978338215325193699

/-! ## A102640.P10816175559416648165

`A102642(n+1)-A023443(A000051(n+1)%A102644(n+1))`
-/

namespace A102640.P10816175559416648165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102642 (n + 1) - A023443 (Int.tmod (A000051 (n + 1)) (A102644 (n + 1))).toNat

end

end A102640.P10816175559416648165

/-! ## A102640.P3805054847537922532

`A102641(A377598(n+1))`
-/

namespace A102640.P3805054847537922532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102641 (A377598 (n + 1)).toNat

end

end A102640.P3805054847537922532

/-! ## A102640.P8192378830301504047

`A049076(A333379(3*n+5)+A261422(2*n))+1`
-/

namespace A102640.P8192378830301504047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A333379 (3 * n + 5) + A261422 (2 * n)).toNat + 1

end

end A102640.P8192378830301504047

/-!
# A102641: Compute the greatest prime factors (GPFs, A006530()) of -j + 2^n for j = 0, 1, ..., L. a(n) is the maximal length L of such a sequence in which the greatest prime factors are increasing with decreasing j.

The programs for A102641, there is no canonical definition to state claims against.
-/

/-! ## A102641.P10048714443620296242

`A048578(n)%A102644(n+1)`
-/

namespace A102641.P10048714443620296242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048578 n) (A102644 (n + 1))

end

end A102641.P10048714443620296242

/-! ## A102641.P15323333517077310771

`Δ[A083706(n)]%A102644(n+1)`
-/

namespace A102641.P15323333517077310771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A102644 (n + 1))

end

end A102641.P15323333517077310771

/-! ## A102641.P6654376614666619224

`A000051(n+1)%A102644(n+1)`
-/

namespace A102641.P6654376614666619224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (n + 1)) (A102644 (n + 1))

end

end A102641.P6654376614666619224

/-! ## A102641.P17912212008276682176

`A102642(n+1)+1-A102640(n+1)`
-/

namespace A102641.P17912212008276682176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102642 (n + 1) + (1 - A102640 (n + 1))

end

end A102641.P17912212008276682176

/-! ## A102641.P11439144524229427264

`A020737(abs(A023443(n)))%A102644(n+1)`
-/

namespace A102641.P11439144524229427264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020737 |A023443 n|.toNat) (A102644 (n + 1))

end

end A102641.P11439144524229427264

/-!
# A102642: a(n) = A102640(n) + A102641(n) - 1.

The programs for A102642, there is no canonical definition to state claims against.
-/

/-! ## A102642.P14346618724175422247

`A102640(n+1)+A102641(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102642.P14346618724175422247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102640 (n + 1) + A102641 (n + 1) - 1

end

end A102642.P14346618724175422247

/-! ## A102642.P8294056566516853301

`A102640(n+1)+A017653(n)%A102641(n+1)`
-/

namespace A102642.P8294056566516853301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102640 (n + 1) + Int.tmod (A017653 n) (A102641 (n + 1))

end

end A102642.P8294056566516853301

/-! ## A102642.P5651209051128196891

`A023443(A102640(n+1)+A048578(n)%A102644(n+1))`
-/

namespace A102642.P5651209051128196891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A102640 (n + 1) + Int.tmod (A048578 n) (A102644 (n + 1))).toNat

end

end A102642.P5651209051128196891

/-! ## A102642.P3293836490586559953

`A023443(A102640(n+1)+A000051(n+1)%A102644(n+1))`
-/

namespace A102642.P3293836490586559953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A102640 (n + 1) + Int.tmod (A000051 (n + 1)) (A102644 (n + 1))).toNat

end

end A102642.P3293836490586559953

/-! ## A102642.P9147157778182739787

`A102640(n+1)+A102636(n+1)%A102641(n+1)`
-/

namespace A102642.P9147157778182739787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102640 (n + 1) + Int.tmod (A102636 (n + 1)) (A102641 (n + 1))

end

end A102642.P9147157778182739787

/-!
# A102643: A006530(x)=2 is a local minimum if x=2^n. Running upward with argument x, the largest prime divisor should increase. The value of first peak is a(n).

The programs for A102643, there is no canonical definition to state claims against.
-/

/-! ## A102643.P2319130900434976335

`A006530(A126646(n)+A102640(n+1))`
-/

namespace A102643.P2319130900434976335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A126646 n + A102640 (n + 1)).toNat

end

end A102643.P2319130900434976335

/-! ## A102643.P8704994720741305354

`A088387(A126646(n)+A102640(n+1))`
-/

namespace A102643.P8704994720741305354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A126646 n + A102640 (n + 1)).toNat

end

end A102643.P8704994720741305354

/-! ## A102643.P5512448081106072298

`A006530(A102640(n+1)+∑[A000079(n)])`
-/

namespace A102643.P5512448081106072298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102640 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102643.P5512448081106072298

/-! ## A102643.P7981622715993126559

`A006530(A102640(n+1)+A000225(n+1))`
-/

namespace A102643.P7981622715993126559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102640 (n + 1) + A000225 (n + 1)).toNat

end

end A102643.P7981622715993126559

/-! ## A102643.P8106981876540951895

`A006530(A102640(n+1)+A048578(n)-2)`
-/

namespace A102643.P8106981876540951895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102640 (n + 1) + (A048578 n - 2)).toNat

end

end A102643.P8106981876540951895

/-!
# A102644: A006530(x)=2 is a local minimum if x=2^n. Running downward with argument x started at 2^n, the largest prime divisor should increase. The value of first peak is a(n).

The programs for A102644, there is no canonical definition to state claims against.
-/

/-! ## A102644.P4627013508388564263

`A006530(A048578(n)-A102641(n+1))`
-/

namespace A102644.P4627013508388564263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A048578 n - A102641 (n + 1)).toNat

end

end A102644.P4627013508388564263

/-! ## A102644.P9278380626455819207

`A034699(A048578(n)-A102641(n+1))`
-/

namespace A102644.P9278380626455819207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A048578 n - A102641 (n + 1)).toNat

end

end A102644.P9278380626455819207

/-! ## A102644.P16005241979803861223

`A006530(Δ[A083706(n)]-A102641(n+1))`
-/

namespace A102644.P16005241979803861223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n - A102641 (n + 1)).toNat

end

end A102644.P16005241979803861223

/-! ## A102644.P9875028078240448321

`A006530(A000051(n+1)-A102641(n+1))`
-/

namespace A102644.P9875028078240448321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000051 (n + 1) - A102641 (n + 1)).toNat

end

end A102644.P9875028078240448321

/-! ## A102644.P1204756465510366114

`A006530(A126646(n)+2-A102641(n+1))`
-/

namespace A102644.P1204756465510366114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A126646 n + (2 - A102641 (n + 1))).toNat

end

end A102644.P1204756465510366114

/-!
# A102646: Numbers of form j k^2 with 1 <= j <= k, gcd(j,k) = 1.

The programs for A102646, there is no canonical definition to state claims against.
-/

/-! ## A102646.P3195473844571512638

`A104021(n)%a(n-1)²` with `a(0)=1, a(1)=4`
-/

namespace A102646.P3195473844571512638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.tmod (A104021 n) (a (n - 1) ^ 2)

end

end A102646.P3195473844571512638

/-! ## A102646.P6014211933894509322

`A104021(round(acot(a(n-1))+n))` with `a(0)=1, a(1)=4`
-/

namespace A102646.P6014211933894509322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A104021 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (a (n - 1) : ℝ) + (n : ℝ))).toNat

end

end A102646.P6014211933894509322

/-! ## A102646.P14122768122950569166

`gcd(floor(acot(n)), A104021(abs(1-n)+1))`
-/

namespace A102646.P14122768122950569166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A104021 (|1 - (n : ℤ)| + 1).toNat)

end

end A102646.P14122768122950569166

/-! ## A102646.P247355451149914317

`A104021(C(n+1, 9*a(n-1))+n)` with `a(0)=1`
-/

namespace A102646.P247355451149914317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104021 (Nat.choose (n + 1) (9 * a (n - 1)).toNat + n)

end

end A102646.P247355451149914317

/-! ## A102646.P11705220553556545983

`∪[A000156(n), A104021(n+1)]`
-/

namespace A102646.P11705220553556545983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102646.P11705220553556545983

/-! ## A102646.P5613010906571461500

`∪[A000302(n), A104021(n+1)]`
-/

namespace A102646.P5613010906571461500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102646.P5613010906571461500

/-! ## A102646.P3766870852489696700

`∪[A001249(n), A104021(n+1)]`
-/

namespace A102646.P3766870852489696700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102646.P3766870852489696700

/-! ## A102646.P1841337747854962063

`∪[A006360(n), A104021(n+1)]`
-/

namespace A102646.P1841337747854962063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006360 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102646.P1841337747854962063

/-! ## A102646.P15123051961079059825

`∪[A007204(n), A104021(n+1)]`
-/

namespace A102646.P15123051961079059825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102646.P15123051961079059825

/-! ## A102646.P18298515117375897311

`∪[A008376(n), A104021(n+1)]`
-/

namespace A102646.P18298515117375897311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102646.P18298515117375897311

/-!
# A102647: a(n) = product of the remainders when the n-th prime is divided by primes up to the (n-1)-st prime.

The programs for A102647, there is no canonical definition to state claims against.
-/

/-! ## A102647.P14692446732657708769

`A383752(A000040(n+1))`
-/

namespace A102647.P14692446732657708769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383752 (A000040 (n + 1)).toNat

end

end A102647.P14692446732657708769

/-! ## A102647.P2687653948373231872

`A383752(A006005(n+1))`
-/

namespace A102647.P2687653948373231872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383752 (A006005 (n + 1)).toNat

end

end A102647.P2687653948373231872

/-! ## A102647.P361407498739673529

`A383752(eq[1, A383777(n)])`
-/

namespace A102647.P361407498739673529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102647.P361407498739673529

/-! ## A102647.P13958081081994785691

`A383752(record[A383748(n+1)])`
-/

namespace A102647.P13958081081994785691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383752 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102647.P13958081081994785691

/-! ## A102647.P4069951900279806809

`A383752(A182231(n+1))`
-/

namespace A102647.P4069951900279806809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383752 (A182231 (n + 1)).toNat

end

end A102647.P4069951900279806809

/-!
# A102649: Numbers n such that 11*n^2 + 11*n + 3 is prime.

The programs for A102649, there is no canonical definition to state claims against.
-/

/-! ## A102649.P2209390065765661640

`eq[2, A000005(11*(n²+n)+3)]`
-/

namespace A102649.P2209390065765661640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * (n ^ 2 + n) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102649.P2209390065765661640

/-! ## A102649.P14115064241214837256

`lt[A001222(11*(n²+n)+3), 2]`
-/

namespace A102649.P14115064241214837256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * (n ^ 2 + n) + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102649.P14115064241214837256

/-! ## A102649.P15014139711806487747

`eq[11*n²+11*n+3, A008472(11*n²+11*n+3)]`
-/

namespace A102649.P15014139711806487747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n ^ 2 + 11 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (11 * n ^ 2 + 11 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102649.P15014139711806487747

/-! ## A102649.P4653754858436134654

`eq[or(1, 11*(n²+n)+3), A020639(or(1, 11*(n²+n)+3))]`
-/

namespace A102649.P4653754858436134654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (11 * (n ^ 2 + n) + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 (11 * (n ^ 2 + n) + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102649.P4653754858436134654

/-! ## A102649.P1500751995971129917

`eq[1, A001222(A006222(n))]`
-/

namespace A102649.P1500751995971129917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102649.P1500751995971129917

/-!
# A102650: a(n) = 4 * floor(28*2^n/15).

The programs for A102650, the canonical program `A102650.P3182014706462239335` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102650 has offset 0).

The definition of A102650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*floor(28*2^n/15)` (program `A102650.P3182014706462239335`, by `A102650.P3182014706462239335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102650.P3182014706462239335

`4*floor(28*2^n/15)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102650

/-- `4*floor(28*2^n/15)` -/
def P3182014706462239335.Spec : Prop :=
  ∀ n, P3182014706462239335.a n = A102650 n

theorem P3182014706462239335.correct : P3182014706462239335.Spec := by
  intro n
  simp only [A102650]

end A102650

/-! ## A102650.P5836302040434007089

`C(4, xor(n, n+1))+2*a(n-1)` with `a(0)=4`
-/

namespace A102650.P5836302040434007089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.choose 4 (Nat.xor n (n + 1)) + 2 * a (n - 1)

end

end A102650.P5836302040434007089

namespace A102650

/-- `C(4, xor(n, n+1))+2*a(n-1)` -/
def P5836302040434007089.Spec : Prop :=
  ∀ n, (P5836302040434007089.a n : ℤ) = A102650 n

end A102650

/-! ## A102650.P11500359627926447166

`or(A102652(n), A102653(n))`
-/

namespace A102650.P11500359627926447166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102652 n) (A102653 n)

end

end A102650.P11500359627926447166

namespace A102650

/-- `or(A102652(n), A102653(n))` -/
def P11500359627926447166.Spec : Prop :=
  ∀ n, P11500359627926447166.a n = A102650 n

end A102650

/-! ## A102650.P10292054030314059527

`or(4*A007910(n), ∑[4*A007910(n)])`
-/

namespace A102650.P10292054030314059527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A007910 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102650.P10292054030314059527

namespace A102650

/-- `or(4*A007910(n), ∑[4*A007910(n)])` -/
def P10292054030314059527.Spec : Prop :=
  ∀ n, P10292054030314059527.a n = A102650 n

end A102650

/-! ## A102650.P42678099281008266

`A102652(n)+A102653(n)-A102651(n)`
-/

namespace A102650.P42678099281008266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102652 n + (A102653 n - A102651 n)

end

end A102650.P42678099281008266

namespace A102650

/-- `A102652(n)+A102653(n)-A102651(n)` -/
def P42678099281008266.Spec : Prop :=
  ∀ n, P42678099281008266.a n = A102650 n

end A102650

/-!
# A102651: a(n) = 4 * floor(23*2^n/15).

The programs for A102651, the canonical program `A102651.P9888959084197147771` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102651 has offset 0).

The definition of A102651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*floor(23*2^n/15)` (program `A102651.P9888959084197147771`, by `A102651.P9888959084197147771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102651.P9888959084197147771

`4*floor(23*2^n/15)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102651

/-- `4*floor(23*2^n/15)` -/
def P9888959084197147771.Spec : Prop :=
  ∀ n, P9888959084197147771.a n = A102651 n

theorem P9888959084197147771.correct : P9888959084197147771.Spec := by
  intro n
  simp only [A102651]

end A102651

/-! ## A102651.P6907569843069195986

`or(2*a(n-1), and(4, (n+1)²))` with `a(0)=4`
-/

namespace A102651.P6907569843069195986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor (2 * a (n - 1)) (Nat.land 4 ((n + 1) ^ 2))

end

end A102651.P6907569843069195986

namespace A102651

/-- `or(2*a(n-1), and(4, (n+1)²))` -/
def P6907569843069195986.Spec : Prop :=
  ∀ n, (P6907569843069195986.a n : ℤ) = A102651 n

end A102651

/-! ## A102651.P8984014449290640759

`xor(2*a(n-1), and(4, (n+1)²))` with `a(0)=4`
-/

namespace A102651.P8984014449290640759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.land 4 ((n + 1) ^ 2))

end

end A102651.P8984014449290640759

namespace A102651

/-- `xor(2*a(n-1), and(4, (n+1)²))` -/
def P8984014449290640759.Spec : Prop :=
  ∀ n, (P8984014449290640759.a n : ℤ) = A102651 n

end A102651

/-! ## A102651.P5604458819185068461

`and(A102652(n), A102653(n))`
-/

namespace A102651.P5604458819185068461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102652 n) (A102653 n)

end

end A102651.P5604458819185068461

namespace A102651

/-- `and(A102652(n), A102653(n))` -/
def P5604458819185068461.Spec : Prop :=
  ∀ n, P5604458819185068461.a n = A102651 n

end A102651

/-! ## A102651.P2660658514831962959

`and(-A052997(n), A102652(n))`
-/

namespace A102651.P2660658514831962959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A052997 n) (A102652 n)

end

end A102651.P2660658514831962959

namespace A102651

/-- `and(-A052997(n), A102652(n))` -/
def P2660658514831962959.Spec : Prop :=
  ∀ n, P2660658514831962959.a n = A102651 n

end A102651

/-! ## A102651.P14691749746260703475

`and(A077854(n+2), A102653(n))`
-/

namespace A102651.P14691749746260703475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 (n + 2)) (A102653 n)

end

end A102651.P14691749746260703475

namespace A102651

/-- `and(A077854(n+2), A102653(n))` -/
def P14691749746260703475.Spec : Prop :=
  ∀ n, P14691749746260703475.a n = A102651 n

end A102651

/-! ## A102651.P2154804360471400344

`and(A007910(n+3), A102653(n))`
-/

namespace A102651.P2154804360471400344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007910 (n + 3)) (A102653 n)

end

end A102651.P2154804360471400344

namespace A102651

/-- `and(A007910(n+3), A102653(n))` -/
def P2154804360471400344.Spec : Prop :=
  ∀ n, P2154804360471400344.a n = A102651 n

end A102651

/-! ## A102651.P17687196793250969376

`and(A007909(n+4), A102653(n))`
-/

namespace A102651.P17687196793250969376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007909 (n + 4)) (A102653 n)

end

end A102651.P17687196793250969376

namespace A102651

/-- `and(A007909(n+4), A102653(n))` -/
def P17687196793250969376.Spec : Prop :=
  ∀ n, P17687196793250969376.a n = A102651 n

end A102651

/-! ## A102651.P6760288030680375973

`A102652(n)+A102653(n)-A102650(n)`
-/

namespace A102651.P6760288030680375973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102652 n + (A102653 n - A102650 n)

end

end A102651.P6760288030680375973

namespace A102651

/-- `A102652(n)+A102653(n)-A102650(n)` -/
def P6760288030680375973.Spec : Prop :=
  ∀ n, P6760288030680375973.a n = A102651 n

end A102651

/-! ## A102651.P5414432668065413270

`A102653(n)-and(A077854(n), A102653(n))`
-/

namespace A102651.P5414432668065413270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102653 n - Int.land (A077854 n) (A102653 n)

end

end A102651.P5414432668065413270

namespace A102651

/-- `A102653(n)-and(A077854(n), A102653(n))` -/
def P5414432668065413270.Spec : Prop :=
  ∀ n, P5414432668065413270.a n = A102651 n

end A102651

/-! ## A102651.P14868045524853657538

`and(A102653(n+1), A102653(n))`
-/

namespace A102651.P14868045524853657538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102653 (n + 1)) (A102653 n)

end

end A102651.P14868045524853657538

namespace A102651

/-- `and(A102653(n+1), A102653(n))` -/
def P14868045524853657538.Spec : Prop :=
  ∀ n, P14868045524853657538.a n = A102651 n

end A102651

/-!
# A102652: a(n) = 4 * floor(24*2^n/15) = 4*A077854(n).

The programs for A102652, the canonical program `A102652.P660520306303841404` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102652 has offset 0).

The definition of A102652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*floor(24*2^n/15)` (program `A102652.P660520306303841404`, by `A102652.P660520306303841404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102652.P10955924201272103778

`4*A077854(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102652.P10955924201272103778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A077854 n

end

end A102652.P10955924201272103778

namespace A102652

/-- `4*A077854(n)` -/
def P10955924201272103778.Spec : Prop :=
  ∀ n, P10955924201272103778.a n = A102652 n

end A102652

/-! ## A102652.P660520306303841404

`4*floor(24*2^n/15)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102652

/-- `4*floor(24*2^n/15)` -/
def P660520306303841404.Spec : Prop :=
  ∀ n, P660520306303841404.a n = A102652 n

theorem P660520306303841404.correct : P660520306303841404.Spec := by
  intro n
  simp only [A102652]

end A102652

/-! ## A102652.P847167519336034750

`ogf(4/(1-3x+3x^2-3x^3+2x^4))`
-/

namespace A102652.P847167519336034750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -3, 3, -3, 2] n

end

end A102652.P847167519336034750

namespace A102652

/-- `ogf(4/(1-3x+3x^2-3x^3+2x^4))` -/
def P847167519336034750.Spec : Prop :=
  ∀ n, P847167519336034750.a n = A102652 n

end A102652

/-! ## A102652.P1945216459948969196

`∑[∑[∑[2^n-a(n-2)]]]` with `a(0)=4, a(1)=0`
-/

namespace A102652.P1945216459948969196
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f3 =>
  (2 ^ n : ℤ) - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102652.P1945216459948969196

namespace A102652

/-- `∑[∑[∑[2^n-a(n-2)]]]` -/
def P1945216459948969196.Spec : Prop :=
  ∀ n, P1945216459948969196.a n = A102652 n

end A102652

/-! ## A102652.P10489154750285727884

`∑[4*A007910(n)]`
-/

namespace A102652.P10489154750285727884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102652.P10489154750285727884

namespace A102652

/-- `∑[4*A007910(n)]` -/
def P10489154750285727884.Spec : Prop :=
  ∀ n, P10489154750285727884.a n = A102652 n

end A102652

/-! ## A102652.P696552931185194552

`∑[∑[4*A007909(n)]]`
-/

namespace A102652.P696552931185194552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007909 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102652.P696552931185194552

namespace A102652

/-- `∑[∑[4*A007909(n)]]` -/
def P696552931185194552.Spec : Prop :=
  ∀ n, P696552931185194552.a n = A102652 n

end A102652

/-! ## A102652.P14155193832010108655

`2*A007909(n+3)-2`
-/

namespace A102652.P14155193832010108655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007909 (n + 3) - 2

end

end A102652.P14155193832010108655

namespace A102652

/-- `2*A007909(n+3)-2` -/
def P14155193832010108655.Spec : Prop :=
  ∀ n, P14155193832010108655.a n = A102652 n

end A102652

/-! ## A102652.P6371227956346559034

`∑[4*ceil(∑[A007283(n+1)/3]/5)]`
-/

namespace A102652.P6371227956346559034
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 (n + 1) : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌈(∑ j ∈ Finset.range (n + 1), f2 j) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102652.P6371227956346559034

namespace A102652

/-- `∑[4*ceil(∑[A007283(n+1)/3]/5)]` -/
def P6371227956346559034.Spec : Prop :=
  ∀ n, P6371227956346559034.a n = A102652 n

end A102652

/-! ## A102652.P16808700467072270417

`A077854(n)/(A153881(n+1)/2)²`
-/

namespace A102652.P16808700467072270417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077854 n : ℚ) / ((A153881 (n + 1) : ℚ) / 2) ^ 2

end

end A102652.P16808700467072270417

namespace A102652

/-- `A077854(n)/(A153881(n+1)/2)²` -/
def P16808700467072270417.Spec : Prop :=
  ∀ n, P16808700467072270417.a n = (A102652 n : ℚ)

end A102652

/-! ## A102652.P17125561471945868667

`A102650(n)+A102651(n)-A102653(n)`
-/

namespace A102652.P17125561471945868667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102650 n + (A102651 n - A102653 n)

end

end A102652.P17125561471945868667

namespace A102652

/-- `A102650(n)+A102651(n)-A102653(n)` -/
def P17125561471945868667.Spec : Prop :=
  ∀ n, P17125561471945868667.a n = A102652 n

end A102652

/-! ## A102652.P3351224369619529559

`Δ[4*A178452(n+2)]`
-/

namespace A102652.P3351224369619529559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A178452 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102652.P3351224369619529559

namespace A102652

/-- `Δ[4*A178452(n+2)]` -/
def P3351224369619529559.Spec : Prop :=
  ∀ n, P3351224369619529559.a n = A102652 n

end A102652

/-! ## A102652.P10475954437678699153

`A102653(n+1)-2^(n+3)`
-/

namespace A102652.P10475954437678699153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102653 (n + 1) - (2 ^ (n + 3) : ℤ)

end

end A102652.P10475954437678699153

namespace A102652

/-- `A102653(n+1)-2^(n+3)` -/
def P10475954437678699153.Spec : Prop :=
  ∀ n, P10475954437678699153.a n = A102652 n

end A102652

/-! ## A102652.P15769267919627925029

`and(A102650(n+1), A102650(n))`
-/

namespace A102652.P15769267919627925029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102650 (n + 1)) (A102650 n)

end

end A102652.P15769267919627925029

namespace A102652

/-- `and(A102650(n+1), A102650(n))` -/
def P15769267919627925029.Spec : Prop :=
  ∀ n, P15769267919627925029.a n = A102652 n

end A102652

/-!
# A102653: a(n) = 4 * floor(9*2^n/5).

The programs for A102653, the canonical program `A102653.P8175031074044504269` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102653 has offset 0).

The definition of A102653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*floor(9*2^n/5)` (program `A102653.P8175031074044504269`, by `A102653.P8175031074044504269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102653.P8175031074044504269

`4*floor(9*2^n/5)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102653

/-- `4*floor(9*2^n/5)` -/
def P8175031074044504269.Spec : Prop :=
  ∀ n, P8175031074044504269.a n = A102653 n

theorem P8175031074044504269.correct : P8175031074044504269.Spec := by
  intro n
  simp only [A102653]

end A102653

/-! ## A102653.P13798062595967077585

`3*a(n-1)-3*a(n-2)+3*a(n-3)-2*a(n-4)` with `a(0)=4, a(1)=12, a(2)=28, a(3)=56`
-/

namespace A102653.P13798062595967077585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 12, 28, 56] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - 2 * a (n - 4)

end

end A102653.P13798062595967077585

namespace A102653

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-2*a(n-4)` -/
def P13798062595967077585.Spec : Prop :=
  ∀ n, P13798062595967077585.a n = A102653 n

end A102653

/-! ## A102653.P17857196340029774188

`ogf((4+4x^2-4x^3)/(1-3x+3x^2-3x^3+2x^4))`
-/

namespace A102653.P17857196340029774188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 4, -4] [1, -3, 3, -3, 2] n

end

end A102653.P17857196340029774188

namespace A102653

/-- `ogf((4+4x^2-4x^3)/(1-3x+3x^2-3x^3+2x^4))` -/
def P17857196340029774188.Spec : Prop :=
  ∀ n, P17857196340029774188.a n = A102653 n

end A102653

/-! ## A102653.P17252460427786532992

`and(4, 6*n)+2*a(n-1)` with `a(0)=4`
-/

namespace A102653.P17252460427786532992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.land 4 (6 * n) + 2 * a (n - 1)

end

end A102653.P17252460427786532992

namespace A102653

/-- `and(4, 6*n)+2*a(n-1)` -/
def P17252460427786532992.Spec : Prop :=
  ∀ n, (P17252460427786532992.a n : ℤ) = A102653 n

end A102653

/-! ## A102653.P14539196036287875551

`or(2*a(n-1), and(4, 6*n))` with `a(0)=4`
-/

namespace A102653.P14539196036287875551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor (2 * a (n - 1)) (Nat.land 4 (6 * n))

end

end A102653.P14539196036287875551

namespace A102653

/-- `or(2*a(n-1), and(4, 6*n))` -/
def P14539196036287875551.Spec : Prop :=
  ∀ n, (P14539196036287875551.a n : ℤ) = A102653 n

end A102653

/-! ## A102653.P13738501764923543809

`xor(2*a(n-1), and(4, 6*n))` with `a(0)=4`
-/

namespace A102653.P13738501764923543809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.land 4 (6 * n))

end

end A102653.P13738501764923543809

namespace A102653

/-- `xor(2*a(n-1), and(4, 6*n))` -/
def P13738501764923543809.Spec : Prop :=
  ∀ n, (P13738501764923543809.a n : ℤ) = A102653 n

end A102653

/-! ## A102653.P2817707548143293581

`A102650(n)+A102651(n)-A102652(n)`
-/

namespace A102653.P2817707548143293581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102650 n + (A102651 n - A102652 n)

end

end A102653.P2817707548143293581

namespace A102653

/-- `A102650(n)+A102651(n)-A102652(n)` -/
def P2817707548143293581.Spec : Prop :=
  ∀ n, P2817707548143293581.a n = A102653 n

end A102653

/-! ## A102653.P4456864209663698525

`A008574(A008574(n))*A151754(n+1)/A008574(n)`
-/

namespace A102653.P4456864209663698525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A008574 n).toNat * A151754 (n + 1) : ℚ) / (A008574 n : ℚ)

end

end A102653.P4456864209663698525

namespace A102653

/-- `A008574(A008574(n))*A151754(n+1)/A008574(n)` -/
def P4456864209663698525.Spec : Prop :=
  ∀ n, P4456864209663698525.a n = (A102653 n : ℚ)

end A102653

/-! ## A102653.P16856413420909386717

`A102652(n)*A151754(n+1)/A077854(n)`
-/

namespace A102653.P16856413420909386717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102652 n * A151754 (n + 1) : ℚ) / (A077854 n : ℚ)

end

end A102653.P16856413420909386717

namespace A102653

/-- `A102652(n)*A151754(n+1)/A077854(n)` -/
def P16856413420909386717.Spec : Prop :=
  ∀ n, P16856413420909386717.a n = (A102653 n : ℚ)

end A102653

/-!
# A102655: Numbers that are the arithmetic mean of four successive primes.

The programs for A102655, the canonical program `A102655.P10974709254634012816` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102655 has offset 1).

The definition of A102655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102655.P7239446082786914772

`record[A174571(A034963(A177028(n+3)))]`
-/

namespace A102655.P7239446082786914772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A034963 (A177028 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102655.P7239446082786914772

namespace A102655

/-- `record[A174571(A034963(A177028(n+3)))]` -/
def P7239446082786914772.Spec : Prop :=
  ∀ n, P7239446082786914772.a n = A102655 (n + 1)

end A102655

/-! ## A102655.P17376285386382520467

`record[A174571(A127333(n+1)-A001043(n+1))]`
-/

namespace A102655.P17376285386382520467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A127333 (n + 1) - A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102655.P17376285386382520467

namespace A102655

/-- `record[A174571(A127333(n+1)-A001043(n+1))]` -/
def P17376285386382520467.Spec : Prop :=
  ∀ n, P17376285386382520467.a n = A102655 (n + 1)

end A102655

/-! ## A102655.P7225773072593814062

`record[A054576(A034963(n+3))]`
-/

namespace A102655.P7225773072593814062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A034963 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102655.P7225773072593814062

namespace A102655

/-- `record[A054576(A034963(n+3))]` -/
def P7225773072593814062.Spec : Prop :=
  ∀ n, P7225773072593814062.a n = A102655 (n + 1)

end A102655

/-! ## A102655.P10974709254634012816

`record[A025480(A034963(n+1)+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102655

/-- `record[A025480(A034963(n+1)+1)]` -/
def P10974709254634012816.Spec : Prop :=
  ∀ n, P10974709254634012816.a n = A102655 (n + 1)

theorem P10974709254634012816.correct : P10974709254634012816.Spec := by
  intro n
  simp only [A102655, Nat.add_sub_cancel]

end A102655

/-! ## A102655.P16146689463240106182

`record[A025480(A153152(A034963(n+1)))]`
-/

namespace A102655.P16146689463240106182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A153152 (A034963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102655.P16146689463240106182

namespace A102655

/-- `record[A025480(A153152(A034963(n+1)))]` -/
def P16146689463240106182.Spec : Prop :=
  ∀ n, P16146689463240106182.a n = A102655 (n + 1)

end A102655

/-! ## A102655.P185454015070752440

`record[A054576(A001043(n+3)+A001043(n+5))]`
-/

namespace A102655.P185454015070752440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A001043 (n + 3) + A001043 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102655.P185454015070752440

namespace A102655

/-- `record[A054576(A001043(n+3)+A001043(n+5))]` -/
def P185454015070752440.Spec : Prop :=
  ∀ n, P185454015070752440.a n = A102655 (n + 1)

end A102655

/-!
# A102656: Numbers k such that 11*k + 1 is prime.

The programs for A102656, the canonical program `A102656.P8844784265076372744` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102656 has offset 1).

The definition of A102656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102656.P8844784265076372744

`2*A215667(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102656

/-- `2*A215667(n+1)` -/
def P8844784265076372744.Spec : Prop :=
  ∀ n, P8844784265076372744.a n = A102656 (n + 1)

theorem P8844784265076372744.correct : P8844784265076372744.Spec := by
  intro n
  simp only [A102656, Nat.add_sub_cancel]

end A102656

/-! ## A102656.P661735182576752751

`(A141849(n+1)-1)/11`
-/

namespace A102656.P661735182576752751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141849 (n + 1) - 1 : ℚ) / 11

end

end A102656.P661735182576752751

namespace A102656

/-- `(A141849(n+1)-1)/11` -/
def P661735182576752751.Spec : Prop :=
  ∀ n, P661735182576752751.a n = (A102656 (n + 1) : ℚ)

end A102656

/-! ## A102656.P1589932307773809067

`A102731(n+1)+2`
-/

namespace A102656.P1589932307773809067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102731 (n + 1) + 2

end

end A102656.P1589932307773809067

namespace A102656

/-- `A102731(n+1)+2` -/
def P1589932307773809067.Spec : Prop :=
  ∀ n, P1589932307773809067.a n = A102656 (n + 1)

theorem P1589932307773809067.correct : P1589932307773809067.Spec := by
  intro n
  simp only [A102656, Nat.add_sub_cancel, A102656.P1589932307773809067.a, A102656.P8844784265076372744.a, A102731, A102731.P15648990086754285571.a, A215667, A215667.P1287202979309322342.a, A141849, A141849.P13731461525299827843.f1, A141849.P13731461525299827843.f2, A141849.P13731461525299827843.a, A142049, A142049.P7957472508449430480.f1, A142049.P7957472508449430480.a, A142062, A142062.P18079343739128686435.f1, A142062.P18079343739128686435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102656

/-! ## A102656.P1001965129096959500

`floor(A141849(n+1)/11)`
-/

namespace A102656.P1001965129096959500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141849 (n + 1) : ℚ) / 11⌋

end

end A102656.P1001965129096959500

namespace A102656

/-- `floor(A141849(n+1)/11)` -/
def P1001965129096959500.Spec : Prop :=
  ∀ n, P1001965129096959500.a n = A102656 (n + 1)

end A102656

/-! ## A102656.P14435105895987949887

`round(p?[a(n-1)+11]/11)` with `a(0)=10, a(1)=1`
-/

namespace A102656.P14435105895987949887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11)

end

end A102656.P14435105895987949887

namespace A102656

/-- `round(p?[a(n-1)+11]/11)` -/
def P14435105895987949887.Spec : Prop :=
  ∀ n, P14435105895987949887.a n = A102656 (n + 1)

end A102656

/-! ## A102656.P16981771212534224555

`ceil(p?[a(n-1)+11]/11)-1` with `a(0)=6, a(1)=1`
-/

namespace A102656.P16981771212534224555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉ - 1

end

end A102656.P16981771212534224555

namespace A102656

/-- `ceil(p?[a(n-1)+11]/11)-1` -/
def P16981771212534224555.Spec : Prop :=
  ∀ n, P16981771212534224555.a n = A102656 (n + 1)

end A102656

/-! ## A102656.P14941551798433100054

`A004277(A215667(n+1))`
-/

namespace A102656.P14941551798433100054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A215667 (n + 1)).toNat

end

end A102656.P14941551798433100054

namespace A102656

/-- `A004277(A215667(n+1))` -/
def P14941551798433100054.Spec : Prop :=
  ∀ n, P14941551798433100054.a n = A102656 (n + 1)

end A102656

/-! ## A102656.P1608641266175896000

`A321220(A102731(n+1))`
-/

namespace A102656.P1608641266175896000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (A102731 (n + 1)).toNat

end

end A102656.P1608641266175896000

namespace A102656

/-- `A321220(A102731(n+1))` -/
def P1608641266175896000.Spec : Prop :=
  ∀ n, P1608641266175896000.a n = A102656 (n + 1)

end A102656

/-! ## A102656.P15800531655691442821

`eq[1, A001222(11*n+1)]`
-/

namespace A102656.P15800531655691442821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102656.P15800531655691442821

namespace A102656

/-- `eq[1, A001222(11*n+1)]` -/
def P15800531655691442821.Spec : Prop :=
  ∀ n, (P15800531655691442821.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P4501133652619048478

`eq[2, A000005(11*n+1)]`
-/

namespace A102656.P4501133652619048478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102656.P4501133652619048478

namespace A102656

/-- `eq[2, A000005(11*n+1)]` -/
def P4501133652619048478.Spec : Prop :=
  ∀ n, (P4501133652619048478.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P16549350276093190363

`lt[n+1, A020639(11*n+1)]`
-/

namespace A102656.P16549350276093190363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102656.P16549350276093190363

namespace A102656

/-- `lt[n+1, A020639(11*n+1)]` -/
def P16549350276093190363.Spec : Prop :=
  ∀ n, (P16549350276093190363.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P5258276406419663165

`eq[11*n, A000010(11*n+1)]`
-/

namespace A102656.P5258276406419663165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (11 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102656.P5258276406419663165

namespace A102656

/-- `eq[11*n, A000010(11*n+1)]` -/
def P5258276406419663165.Spec : Prop :=
  ∀ n, (P5258276406419663165.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P16766018684658249074

`lt[A001222(11*(n+1)+1), 2]+1`
-/

namespace A102656.P16766018684658249074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102656.P16766018684658249074

namespace A102656

/-- `lt[A001222(11*(n+1)+1), 2]+1` -/
def P16766018684658249074.Spec : Prop :=
  ∀ n, (P16766018684658249074.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P15960442032700854574

`eq[1, A010051(A008593(n)+1)]`
-/

namespace A102656.P15960442032700854574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008593 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102656.P15960442032700854574

namespace A102656

/-- `eq[1, A010051(A008593(n)+1)]` -/
def P15960442032700854574.Spec : Prop :=
  ∀ n, (P15960442032700854574.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P9626246970366056193

`eq[1, A010051(A017413(n)-1)]`
-/

namespace A102656.P9626246970366056193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A017413 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102656.P9626246970366056193

namespace A102656

/-- `eq[1, A010051(A017413(n)-1)]` -/
def P9626246970366056193.Spec : Prop :=
  ∀ n, (P9626246970366056193.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P14344039673052023408

`lt[A001222(5*A004277(n)+n+1), 2]`
-/

namespace A102656.P14344039673052023408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * A004277 n + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102656.P14344039673052023408

namespace A102656

/-- `lt[A001222(5*A004277(n)+n+1), 2]` -/
def P14344039673052023408.Spec : Prop :=
  ∀ n, (P14344039673052023408.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P661880167495774071

`eq[A000010(A017401(n))+2, A017413(n)]`
-/

namespace A102656.P661880167495774071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017401 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102656.P661880167495774071

namespace A102656

/-- `eq[A000010(A017401(n))+2, A017413(n)]` -/
def P661880167495774071.Spec : Prop :=
  ∀ n, (P661880167495774071.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P14384572473264353810

`eq[1, A001222(A016969(n)+A016873(n)+5)]+1`
-/

namespace A102656.P14384572473264353810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n + A016873 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102656.P14384572473264353810

namespace A102656

/-- `eq[1, A001222(A016969(n)+A016873(n)+5)]+1` -/
def P14384572473264353810.Spec : Prop :=
  ∀ n, (P14384572473264353810.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P12523582442508561950

`eq[1, A129950(A017401(n))²]`
-/

namespace A102656.P12523582442508561950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (A017401 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102656.P12523582442508561950

namespace A102656

/-- `eq[1, A129950(A017401(n))²]` -/
def P12523582442508561950.Spec : Prop :=
  ∀ n, (P12523582442508561950.a n : ℤ) = A102656 (n + 1)

end A102656

/-! ## A102656.P750165703840351852

`lt[n+1, A014963(11*n+1)]`
-/

namespace A102656.P750165703840351852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (11 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102656.P750165703840351852

namespace A102656

/-- `lt[n+1, A014963(11*n+1)]` -/
def P750165703840351852.Spec : Prop :=
  ∀ n, (P750165703840351852.a n : ℤ) = A102656 (n + 1)

end A102656

/-!
# A102657: Numbers k such that 11*k^2 + 11*k + 1 is prime.

The programs for A102657, the canonical program `A102657.P874716213421221396` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102657 has offset 1).

The definition of A102657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102657.P874716213421221396

`floor(sqrt(A276262(n+1)/11))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102657

/-- `floor(sqrt(A276262(n+1)/11))` -/
def P874716213421221396.Spec : Prop :=
  ∀ n, P874716213421221396.a n = A102657 (n + 1)

theorem P874716213421221396.correct : P874716213421221396.Spec := by
  intro n
  simp only [A102657, Nat.add_sub_cancel]

end A102657

/-! ## A102657.P15042565235888954656

`A000027(round(sqrt(A276262(n+1)/11)))`
-/

namespace A102657.P15042565235888954656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt ((A276262 (n + 1) : ℚ) / 11 : ℝ))).toNat

end

end A102657.P15042565235888954656

namespace A102657

/-- `A000027(round(sqrt(A276262(n+1)/11)))` -/
def P15042565235888954656.Spec : Prop :=
  ∀ n, P15042565235888954656.a n = A102657 (n + 1)

end A102657

/-! ## A102657.P11857132442342037306

`round(sqrt(A276262(n+1)/11))%A017233(n)`
-/

namespace A102657.P11857132442342037306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A276262 (n + 1) : ℚ) / 11 : ℝ))) (A017233 n)

end

end A102657.P11857132442342037306

namespace A102657

/-- `round(sqrt(A276262(n+1)/11))%A017233(n)` -/
def P11857132442342037306.Spec : Prop :=
  ∀ n, P11857132442342037306.a n = A102657 (n + 1)

end A102657

/-! ## A102657.P10915365164705857534

`ceil(sqrt(A276262(n+1)/11)-A017077(n)%2)`
-/

namespace A102657.P10915365164705857534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A276262 (n + 1) : ℚ) / 11 : ℝ) - (Int.tmod (A017077 n) 2 : ℝ)⌉

end

end A102657.P10915365164705857534

namespace A102657

/-- `ceil(sqrt(A276262(n+1)/11)-A017077(n)%2)` -/
def P10915365164705857534.Spec : Prop :=
  ∀ n, P10915365164705857534.a n = A102657 (n + 1)

end A102657

/-! ## A102657.P8173660670083893372

`round((A004442(n)-n)²*sqrt(A276262(n+1)/11))`
-/

namespace A102657.P8173660670083893372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A004442 n - (n : ℤ)) ^ 2 : ℝ) * Real.sqrt ((A276262 (n + 1) : ℚ) / 11 : ℝ))

end

end A102657.P8173660670083893372

namespace A102657

/-- `round((A004442(n)-n)²*sqrt(A276262(n+1)/11))` -/
def P8173660670083893372.Spec : Prop :=
  ∀ n, P8173660670083893372.a n = A102657 (n + 1)

end A102657

/-! ## A102657.P13314608798248379435

`eq[2, ∑{e}[(n+1)*11*n+1, #]+1]`
-/

namespace A102657.P13314608798248379435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (11 * n) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102657.P13314608798248379435

namespace A102657

/-- `eq[2, ∑{e}[(n+1)*11*n+1, #]+1]` -/
def P13314608798248379435.Spec : Prop :=
  ∀ n, (P13314608798248379435.a n : ℤ) = A102657 (n + 1)

end A102657

/-!
# A102658: Numbers which are the sum of two positive cubes and divisible by 31.

The programs for A102658, there is no canonical definition to state claims against.
-/

/-! ## A102658.P3154893499421222510

`∩[A003325(n+1), A135631(n)]`
-/

namespace A102658.P3154893499421222510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102658.P3154893499421222510

/-! ## A102658.P13971966509415182120

`A028310(∩[A024670(n+1), A135631(n)])`
-/

namespace A102658.P13971966509415182120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102658.P13971966509415182120

/-! ## A102658.P12191973249963802108

`A028310(∩[A338667(n+1), A135631(n)])`
-/

namespace A102658.P12191973249963802108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102658.P12191973249963802108

/-! ## A102658.P9993398047469586227

`A117358(∩[A135631(2*n), A339993(n+1)])`
-/

namespace A102658.P9993398047469586227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102658.P9993398047469586227

/-!
# A102659: List of Lyndon words on {1,2} sorted first by length and then lexicographically.

The programs for A102659, there is no canonical definition to state claims against.
-/

/-! ## A102659.P12243261103955649070

`A007931(A339608(n+1))`
-/

namespace A102659.P12243261103955649070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A339608 (n + 1)).toNat

end

end A102659.P12243261103955649070

/-! ## A102659.P7086029103476274127

`A007931(eq[2, A211100(n+1)])`
-/

namespace A102659.P7086029103476274127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102659.P7086029103476274127

/-! ## A102659.P8101391156274031980

`A007931(eq[2, A211100(n)]-1)`
-/

namespace A102659.P8101391156274031980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A102659.P8101391156274031980

/-! ## A102659.P16151734255842655334

`A007931(eq[1, A211097(n+1)]+1)`
-/

namespace A102659.P16151734255842655334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A102659.P16151734255842655334

/-! ## A102659.P318154472624596932

`∩[A007931(n+1), A102660(n+1)]`
-/

namespace A102659.P318154472624596932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102659.P318154472624596932

/-! ## A102659.P16731902646250351280

`∩[A102660(n+1), A213969(n+1)]`
-/

namespace A102659.P16731902646250351280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102659.P16731902646250351280

/-! ## A102659.P2203478277804007299

`∩[A102660(n+1), A238109(n+1)]`
-/

namespace A102659.P2203478277804007299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102659.P2203478277804007299

/-! ## A102659.P10813983978069654612

`∩[A085184(n+1), A102660(n+1)]`
-/

namespace A102659.P10813983978069654612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102659.P10813983978069654612

/-! ## A102659.P12629831719762989425

`∩[A102660(n+1), A007089(n)]`
-/

namespace A102659.P12629831719762989425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102659.P12629831719762989425

/-! ## A102659.P8119065421644928420

`∩[A210584(n+1), A007089(n)]`
-/

namespace A102659.P8119065421644928420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102659.P8119065421644928420

/-!
# A102660: List of Lyndon words on {1,2,3} sorted first by length and then lexicographically.

The programs for A102660, there is no canonical definition to state claims against.
-/

/-! ## A102660.P6485353136723310615

`∩[A007932(n+1), A210584(n+1)]`
-/

namespace A102660.P6485353136723310615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P6485353136723310615

/-! ## A102660.P3641015020778606733

`∩[A210584(n+1), A007090(n)]`
-/

namespace A102660.P3641015020778606733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P3641015020778606733

/-! ## A102660.P3140738617913768120

`∩[A001742(n+1), A210584(n+1)]`
-/

namespace A102660.P3140738617913768120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P3140738617913768120

/-! ## A102660.P16435250633425292992

`∩[A210585(n+1), A007090(n)]`
-/

namespace A102660.P16435250633425292992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P16435250633425292992

/-! ## A102660.P825364742078100760

`∩[A007932(n+1), A210585(n+1)]`
-/

namespace A102660.P825364742078100760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P825364742078100760

/-! ## A102660.P17773566659320045711

`∩[A202267(n+1), A210584(n+1)]`
-/

namespace A102660.P17773566659320045711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P17773566659320045711

/-! ## A102660.P137984844353113

`∩[A008541(n+1), A210584(n+1)]`
-/

namespace A102660.P137984844353113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P137984844353113

/-! ## A102660.P103972505088774172

`∩[A039115(n+1), A210584(n+1)]`
-/

namespace A102660.P103972505088774172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P103972505088774172

/-! ## A102660.P2459704667975008530

`∩[A039141(n+1), A210584(n+1)]`
-/

namespace A102660.P2459704667975008530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P2459704667975008530

/-! ## A102660.P9445500613901563019

`∩[A039142(n+1), A210584(n+1)]`
-/

namespace A102660.P9445500613901563019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102660.P9445500613901563019

/-!
# A102661: Triangle of partial sums of Stirling numbers of 2nd kind (A008277): T(n,k) = Sum_{i=1..k} Stirling2(n,i), 1<=k<=n.

The programs for A102661, there is no canonical definition to state claims against.
-/

/-! ## A102661.P11887858299158688113

`A011971(n)+∑[A008277(n+1)-A095149(n)]`
-/

namespace A102661.P11887858299158688113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102661.P11887858299158688113

/-! ## A102661.P17059647747494455892

`A137855(A245300(n)+A004736(n+1))`
-/

namespace A102661.P17059647747494455892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A245300 n + A004736 (n + 1)).toNat

end

end A102661.P17059647747494455892

/-! ## A102661.P14964197598098089469

`A167128(n+1)/A008277(n+1)`
-/

namespace A102661.P14964197598098089469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167128 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)

end

end A102661.P14964197598098089469

/-! ## A102661.P4612710382476428464

`A167128(n+1)/A008278(A038722(n+1))`
-/

namespace A102661.P4612710382476428464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167128 (n + 1) : ℚ) / (A008278 (A038722 (n + 1)).toNat : ℚ)

end

end A102661.P4612710382476428464

/-! ## A102661.P410877381724604664

`A167128(n+1)/A136011(A056537(n+1))`
-/

namespace A102661.P410877381724604664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167128 (n + 1) : ℚ) / (A136011 (A056537 (n + 1)).toNat : ℚ)

end

end A102661.P410877381724604664

/-! ## A102661.P3589996918979354128

`A167128(n+1)/gcd(A075497(n+1), A232598(n+1))`
-/

namespace A102661.P3589996918979354128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167128 (n + 1) : ℚ) / (Int.gcd (A075497 (n + 1)) (A232598 (n + 1)) : ℚ)

end

end A102661.P3589996918979354128

/-! ## A102661.P9059794399256934300

`A278984(A245300(n)+1)`
-/

namespace A102661.P9059794399256934300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A245300 n + 1).toNat

end

end A102661.P9059794399256934300

/-!
# A102662: Triangle read by rows: T(1,1)=1,T(2,1)=1,T(2,2)=3, T(k-1,r-1)+T(k-1,r)+T(k-2,r-1).

The programs for A102662, the canonical program `A102662.P4501221864725476499` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102662 has offset 1).

The definition of A102662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102662.P4501221864725476499

`2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)-T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102662

/-- `2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)-T(n-1,k)` -/
def P4501221864725476499.Spec : Prop :=
  ∀ n, P4501221864725476499.a n = A102662 (n + 1)

theorem P4501221864725476499.correct : P4501221864725476499.Spec := by
  intro n
  simp only [A102662, Nat.add_sub_cancel]

end A102662

/-! ## A102662.P13703239191943699833

`2*A035607(n)-A008288(n)`
-/

namespace A102662.P13703239191943699833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035607 n - A008288 n

end

end A102662.P13703239191943699833

namespace A102662

/-- `2*A035607(n)-A008288(n)` -/
def P13703239191943699833.Spec : Prop :=
  ∀ n, P13703239191943699833.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P1519566226497288038

`A008288(n)+A035607(n)-A266213(n)`
-/

namespace A102662.P1519566226497288038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A035607 n - A266213 n)

end

end A102662.P1519566226497288038

namespace A102662

/-- `A008288(n)+A035607(n)-A266213(n)` -/
def P1519566226497288038.Spec : Prop :=
  ∀ n, P1519566226497288038.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P14151713251347909875

`A035607(n)+A112475(n)-A197870(n)`
-/

namespace A102662.P14151713251347909875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n + (A112475 n - A197870 n)

end

end A102662.P14151713251347909875

namespace A102662

/-- `A035607(n)+A112475(n)-A197870(n)` -/
def P14151713251347909875.Spec : Prop :=
  ∀ n, P14151713251347909875.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P1562129755441255584

`A047671(n+1)-A266213(n)+A047671(n+1)-A266213(n)+1`
-/

namespace A102662.P1562129755441255584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (n + 1) - A266213 n + (A047671 (n + 1) - A266213 n + 1)

end

end A102662.P1562129755441255584

namespace A102662

/-- `A047671(n+1)-A266213(n)+A047671(n+1)-A266213(n)+1` -/
def P1562129755441255584.Spec : Prop :=
  ∀ n, P1562129755441255584.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P11453871847506833680

`2*A035607(n)+A008288(n)*A033999(2*n+1)`
-/

namespace A102662.P11453871847506833680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035607 n + A008288 n * A033999 (2 * n + 1)

end

end A102662.P11453871847506833680

namespace A102662

/-- `2*A035607(n)+A008288(n)*A033999(2*n+1)` -/
def P11453871847506833680.Spec : Prop :=
  ∀ n, P11453871847506833680.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P15364945735393181425

`A093411(A035607(n)-A008288(n))+A035607(n)`
-/

namespace A102662.P15364945735393181425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A035607 n - A008288 n).toNat + A035607 n

end

end A102662.P15364945735393181425

namespace A102662

/-- `A093411(A035607(n)-A008288(n))+A035607(n)` -/
def P15364945735393181425.Spec : Prop :=
  ∀ n, P15364945735393181425.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P16162149811751919863

`A000265(A035607(n)+A035607(n)-A008288(n))`
-/

namespace A102662.P16162149811751919863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A035607 n + (A035607 n - A008288 n)).toNat

end

end A102662.P16162149811751919863

namespace A102662

/-- `A000265(A035607(n)+A035607(n)-A008288(n))` -/
def P16162149811751919863.Spec : Prop :=
  ∀ n, P16162149811751919863.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P8512268988502673972

`A000265(A035607(n)-(A008288(n)-A035607(n)))`
-/

namespace A102662.P8512268988502673972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A035607 n - (A008288 n - A035607 n)).toNat

end

end A102662.P8512268988502673972

namespace A102662

/-- `A000265(A035607(n)-(A008288(n)-A035607(n)))` -/
def P8512268988502673972.Spec : Prop :=
  ∀ n, P8512268988502673972.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P18090143516429627224

`A008288(n)+A005843(A035607(n)-A008288(n))`
-/

namespace A102662.P18090143516429627224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + A005843 (A035607 n - A008288 n).toNat

end

end A102662.P18090143516429627224

namespace A102662

/-- `A008288(n)+A005843(A035607(n)-A008288(n))` -/
def P18090143516429627224.Spec : Prop :=
  ∀ n, P18090143516429627224.a n = A102662 (n + 1)

end A102662

/-! ## A102662.P6042318174735033338

`A093411(A035607(n)-(A008288(n)-A035607(n)))`
-/

namespace A102662.P6042318174735033338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A035607 n - (A008288 n - A035607 n)).toNat

end

end A102662.P6042318174735033338

namespace A102662

/-- `A093411(A035607(n)-(A008288(n)-A035607(n)))` -/
def P6042318174735033338.Spec : Prop :=
  ∀ n, P6042318174735033338.a n = A102662 (n + 1)

end A102662

/-!
# A102665: Number of primitive polynomials of degree n over GF(4) with trace 0.

The programs for A102665, there is no canonical definition to state claims against.
-/

/-! ## A102665.P13377951519598612932

`A346146(A022562(n+1))-1`
-/

namespace A102665.P13377951519598612932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346146 (A022562 (n + 1)).toNat - 1

end

end A102665.P13377951519598612932

/-! ## A102665.P10119025206825497379

`A008475(or(n, A147443(2*(n+1))))`
-/

namespace A102665.P10119025206825497379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Int.lor (n : ℤ) (A147443 (2 * (n + 1)))).toNat

end

end A102665.P10119025206825497379

/-!
# A102666: Number of primitive polynomials of degree n over GF(4) with trace omega.

The programs for A102666, there is no canonical definition to state claims against.
-/

/-! ## A102666.P17357970663863070438

`A011260(2*(n+2))-A152049(2*(n+2))`
-/

namespace A102666.P17357970663863070438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (2 * (n + 2)) - A152049 (2 * (n + 2))

end

end A102666.P17357970663863070438

/-!
# A102667: Number of primitive polynomials of degree n over GF(4) with trace 1.

The programs for A102667, there is no canonical definition to state claims against.
-/

/-! ## A102667.P8766203840414289554

`A127237(A027742(n+2)+3)`
-/

namespace A102667.P8766203840414289554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127237 (A027742 (n + 2) + 3).toNat

end

end A102667.P8766203840414289554

/-! ## A102667.P11660116207026198967

`A305441(xor(lcm(16, n)/16, A333106(n)))`
-/

namespace A102667.P11660116207026198967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305441 (Int.xor (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)) (A333106 n)).toNat

end

end A102667.P11660116207026198967

/-!
# A102668: Fixed point of the morphism 1 -> 3, 2 -> 1, 3 -> 212, starting with 1.

The programs for A102668, there is no canonical definition to state claims against.
-/

/-! ## A102668.P7955530818560483443

`A007913(A000537(n+1)*A106049(n))`
-/

namespace A102668.P7955530818560483443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000537 (n + 1) * A106049 n).toNat

end

end A102668.P7955530818560483443

/-! ## A102668.P17628586514300003808

`A007913(A106049(n)^A227578(n))`
-/

namespace A102668.P17628586514300003808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A106049 n : ℚ) ^ (A227578 n : ℤ))).toNat

end

end A102668.P17628586514300003808

/-! ## A102668.P17290429283784899732

`gcd(A006530(A084221(n)), A025426(n))`
-/

namespace A102668.P17290429283784899732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (A084221 n).toNat) (A025426 n)

end

end A102668.P17290429283784899732

/-! ## A102668.P14278878495759799868

`(A018597(n+1)+n)%4`
-/

namespace A102668.P14278878495759799868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018597 (n + 1) + (n : ℤ)) 4

end

end A102668.P14278878495759799868

/-! ## A102668.P15222309488699059474

`(A018703(n+1)+n)%4`
-/

namespace A102668.P15222309488699059474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018703 (n + 1) + (n : ℤ)) 4

end

end A102668.P15222309488699059474

/-!
# A102669: Number of digits >= 2 in decimal representation of n.

The programs for A102669, the canonical program `A102669.P5830126414193983171` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102669 has offset 0).

The definition of A102669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102669.P15301485636247944453

`∑{digits}[n, floor(atan(#))]`
-/

namespace A102669.P15301485636247944453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.arctan (x : ℝ)⌋).sum

end

end A102669.P15301485636247944453

namespace A102669

/-- `∑{digits}[n, floor(atan(#))]` -/
def P15301485636247944453.Spec : Prop :=
  ∀ n, P15301485636247944453.a n = A102669 n

end A102669

/-! ## A102669.P9818536332021910093

`∑{digits}[n, floor(tan(tanh(#)))]`
-/

namespace A102669.P9818536332021910093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.tan (Real.tanh (x : ℝ))⌋).sum

end

end A102669.P9818536332021910093

namespace A102669

/-- `∑{digits}[n, floor(tan(tanh(#)))]` -/
def P9818536332021910093.Spec : Prop :=
  ∀ n, P9818536332021910093.a n = A102669 n

end A102669

/-! ## A102669.P7259815416675709021

`∑{digits}[n, floor(asin(tanh(#)))]`
-/

namespace A102669.P7259815416675709021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.arcsin (Real.tanh (x : ℝ))⌋).sum

end

end A102669.P7259815416675709021

namespace A102669

/-- `∑{digits}[n, floor(asin(tanh(#)))]` -/
def P7259815416675709021.Spec : Prop :=
  ∀ n, P7259815416675709021.a n = A102669 n

end A102669

/-! ## A102669.P965616453329208089

`∑{digits}[n, floor(sinh(tanh(#)))]`
-/

namespace A102669.P965616453329208089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.sinh (Real.tanh (x : ℝ))⌋).sum

end

end A102669.P965616453329208089

namespace A102669

/-- `∑{digits}[n, floor(sinh(tanh(#)))]` -/
def P965616453329208089.Spec : Prop :=
  ∀ n, P965616453329208089.a n = A102669 n

end A102669

/-! ## A102669.P4729805871762671698

`∑{digits}[n, floor(acot(acot(#)))]`
-/

namespace A102669.P4729805871762671698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (x : ℝ))⌋).sum

end

end A102669.P4729805871762671698

namespace A102669

/-- `∑{digits}[n, floor(acot(acot(#)))]` -/
def P4729805871762671698.Spec : Prop :=
  ∀ n, P4729805871762671698.a n = A102669 n

end A102669

/-! ## A102669.P5830126414193983171

`∑{digits}[n, gcd(2, #!)-1]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102669

/-- `∑{digits}[n, gcd(2, #!)-1]` -/
def P5830126414193983171.Spec : Prop :=
  ∀ n, P5830126414193983171.a n = A102669 n

theorem P5830126414193983171.correct : P5830126414193983171.Spec := by
  intro n
  simp only [A102669]

end A102669

/-! ## A102669.P9098792347468814078

`∑{digits}[n, and(1, #!+1)]`
-/

namespace A102669.P9098792347468814078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 (Nat.factorial x + 1)).sum

end

end A102669.P9098792347468814078

namespace A102669

/-- `∑{digits}[n, and(1, #!+1)]` -/
def P9098792347468814078.Spec : Prop :=
  ∀ n, (P9098792347468814078.a n : ℤ) = A102669 n

end A102669

/-! ## A102669.P18049932270724332924

`∑{digits}[n, and(1, 1-#!)]`
-/

namespace A102669.P18049932270724332924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.land 1 (1 - (Nat.factorial x : ℤ))).sum

end

end A102669.P18049932270724332924

namespace A102669

/-- `∑{digits}[n, and(1, 1-#!)]` -/
def P18049932270724332924.Spec : Prop :=
  ∀ n, P18049932270724332924.a n = A102669 n

end A102669

/-! ## A102669.P16069123551132705499

`∑{digits}[n, 1-C(#, #²)]`
-/

namespace A102669.P16069123551132705499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - (Nat.choose x (x ^ 2) : ℤ)).sum

end

end A102669.P16069123551132705499

namespace A102669

/-- `∑{digits}[n, 1-C(#, #²)]` -/
def P16069123551132705499.Spec : Prop :=
  ∀ n, P16069123551132705499.a n = A102669 n

end A102669

/-! ## A102669.P16029822064876642081

`∑{digits}[n, round(#/(#+2))]`
-/

namespace A102669.P16029822064876642081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway ((x : ℚ) / (x + 2 : ℚ))).sum

end

end A102669.P16029822064876642081

namespace A102669

/-- `∑{digits}[n, round(#/(#+2))]` -/
def P16029822064876642081.Spec : Prop :=
  ∀ n, P16029822064876642081.a n = A102669 n

end A102669

/-! ## A102669.P8050604621918639301

`Δ[A102670(abs(1-n))]`
-/

namespace A102669.P8050604621918639301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102670 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102669.P8050604621918639301

namespace A102669

/-- `Δ[A102670(abs(1-n))]` -/
def P8050604621918639301.Spec : Prop :=
  ∀ n, P8050604621918639301.a n = A102669 n

end A102669

/-! ## A102669.P11101146800739827000

`A055640(A004176(n))`
-/

namespace A102669.P11101146800739827000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A004176 n).toNat

end

end A102669.P11101146800739827000

namespace A102669

/-- `A055640(A004176(n))` -/
def P11101146800739827000.Spec : Prop :=
  ∀ n, P11101146800739827000.a n = A102669 n

end A102669

/-! ## A102669.P16834563336431420407

`A055640(A107130(n))`
-/

namespace A102669.P16834563336431420407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A107130 n).toNat

end

end A102669.P16834563336431420407

namespace A102669

/-- `A055640(A107130(n))` -/
def P16834563336431420407.Spec : Prop :=
  ∀ n, P16834563336431420407.a n = A102669 n

end A102669

/-! ## A102669.P12279725143149056401

`A102677(A106746(n))`
-/

namespace A102669.P12279725143149056401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A106746 n).toNat

end

end A102669.P12279725143149056401

namespace A102669

/-- `A102677(A106746(n))` -/
def P12279725143149056401.Spec : Prop :=
  ∀ n, P12279725143149056401.a n = A102669 n

end A102669

/-! ## A102669.P9013958381155910926

`A055640(A235049(n))`
-/

namespace A102669.P9013958381155910926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A235049 n).toNat

end

end A102669.P9013958381155910926

namespace A102669

/-- `A055640(A235049(n))` -/
def P9013958381155910926.Spec : Prop :=
  ∀ n, P9013958381155910926.a n = A102669 n

end A102669

/-! ## A102669.P13630435423179465205

`A102671(A351744(n))`
-/

namespace A102669.P13630435423179465205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A351744 n).toNat

end

end A102669.P13630435423179465205

namespace A102669

/-- `A102671(A351744(n))` -/
def P13630435423179465205.Spec : Prop :=
  ∀ n, P13630435423179465205.a n = A102669 n

end A102669

/-! ## A102669.P4660215943938131035

`A316863(n)+A102671(n)`
-/

namespace A102669.P4660215943938131035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n + A102671 n

end

end A102669.P4660215943938131035

namespace A102669

/-- `A316863(n)+A102671(n)` -/
def P4660215943938131035.Spec : Prop :=
  ∀ n, P4660215943938131035.a n = A102669 n

end A102669

/-! ## A102669.P16781529605396243555

`A055640(n)-A268643(n)`
-/

namespace A102669.P16781529605396243555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n - A268643 n

end

end A102669.P16781529605396243555

namespace A102669

/-- `A055640(n)-A268643(n)` -/
def P16781529605396243555.Spec : Prop :=
  ∀ n, P16781529605396243555.a n = A102669 n

end A102669

/-! ## A102669.P10517900301370326682

`dr(A136400(n-A136400(n)))`
-/

namespace A102669.P10517900301370326682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136400 ((n : ℤ) - A136400 n).toNat)

end

end A102669.P10517900301370326682

namespace A102669

/-- `dr(A136400(n-A136400(n)))` -/
def P10517900301370326682.Spec : Prop :=
  ∀ n, (P10517900301370326682.a n : ℤ) = A102669 n

end A102669

/-! ## A102669.P12153471689327399016

`A001222(∏{digits}[n, A006530(A000041(#))])`
-/

namespace A102669.P12153471689327399016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A006530 (A000041 x).toNat).prod.toNat

end

end A102669.P12153471689327399016

namespace A102669

/-- `A001222(∏{digits}[n, A006530(A000041(#))])` -/
def P12153471689327399016.Spec : Prop :=
  ∀ n, P12153471689327399016.a n = A102669 n

end A102669

/-!
# A102670: Number of digits >= 2 in the decimal representations of all integers from 0 to n.

The programs for A102670, the canonical program `A102670.P6841008716975873602` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102670 has offset 0).

The definition of A102670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102670.P8443126189671164785

`∑[∑{digits}[n, floor(atan(#))]]`
-/

namespace A102670.P8443126189671164785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊Real.arctan (x : ℝ)⌋).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102670.P8443126189671164785

namespace A102670

/-- `∑[∑{digits}[n, floor(atan(#))]]` -/
def P8443126189671164785.Spec : Prop :=
  ∀ n, P8443126189671164785.a n = A102670 n

end A102670

/-! ## A102670.P6841008716975873602

`∑[∑{digits}[n, 1-C(#, #²)]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102670

/-- `∑[∑{digits}[n, 1-C(#, #²)]]` -/
def P6841008716975873602.Spec : Prop :=
  ∀ n, P6841008716975873602.a n = A102670 n

theorem P6841008716975873602.correct : P6841008716975873602.Spec := by
  intro n
  simp only [A102670]

end A102670

/-! ## A102670.P6977356365866158057

`∑{digits}[n, floor(atan(#))]+a(n-1)` with `a(0)=0`
-/

namespace A102670.P6977356365866158057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.arctan (x : ℝ)⌋).sum + a (n - 1)

end

end A102670.P6977356365866158057

namespace A102670

/-- `∑{digits}[n, floor(atan(#))]+a(n-1)` -/
def P6977356365866158057.Spec : Prop :=
  ∀ n, P6977356365866158057.a n = A102670 n

end A102670

/-! ## A102670.P196665726180972965

`∑[A102669(n)]`
-/

namespace A102670.P196665726180972965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102670.P196665726180972965

namespace A102670

/-- `∑[A102669(n)]` -/
def P196665726180972965.Spec : Prop :=
  ∀ n, P196665726180972965.a n = A102670 n

end A102670

/-! ## A102670.P12520486654423434253

`∑[A055640(A004176(n))]`
-/

namespace A102670.P12520486654423434253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A004176 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102670.P12520486654423434253

namespace A102670

/-- `∑[A055640(A004176(n))]` -/
def P12520486654423434253.Spec : Prop :=
  ∀ n, P12520486654423434253.a n = A102670 n

end A102670

/-! ## A102670.P3446881542031697112

`∑[A102677(A106746(n))]`
-/

namespace A102670.P3446881542031697112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A106746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102670.P3446881542031697112

namespace A102670

/-- `∑[A102677(A106746(n))]` -/
def P3446881542031697112.Spec : Prop :=
  ∀ n, P3446881542031697112.a n = A102670 n

end A102670

/-! ## A102670.P1508903572722435858

`∑[dr(A136400(n-A136400(n)))]`
-/

namespace A102670.P1508903572722435858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136400 ((n : ℤ) - A136400 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102670.P1508903572722435858

namespace A102670

/-- `∑[dr(A136400(n-A136400(n)))]` -/
def P1508903572722435858.Spec : Prop :=
  ∀ n, (P1508903572722435858.a n : ℤ) = A102670 n

end A102670

/-! ## A102670.P8897153297041230859

`∑[A087436(A113581(n))]`
-/

namespace A102670.P8897153297041230859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A113581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102670.P8897153297041230859

namespace A102670

/-- `∑[A087436(A113581(n))]` -/
def P8897153297041230859.Spec : Prop :=
  ∀ n, P8897153297041230859.a n = A102670 n

end A102670

/-! ## A102670.P8587933560296535003

`∑[A010874(A055013(A004526(n)))]`
-/

namespace A102670.P8587933560296535003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A055013 (A004526 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102670.P8587933560296535003

namespace A102670

/-- `∑[A010874(A055013(A004526(n)))]` -/
def P8587933560296535003.Spec : Prop :=
  ∀ n, P8587933560296535003.a n = A102670 n

end A102670

/-!
# A102671: Number of digits >= 3 in decimal representation of n.

The programs for A102671, the canonical program `A102671.P7490517839970818167` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102671 has offset 0).

The definition of A102671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102671.P1062954094012028864

`∑{digits}[n, floor(atan(sqrt(#)))]`
-/

namespace A102671.P1062954094012028864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.arctan (Real.sqrt (x : ℝ))⌋).sum

end

end A102671.P1062954094012028864

namespace A102671

/-- `∑{digits}[n, floor(atan(sqrt(#)))]` -/
def P1062954094012028864.Spec : Prop :=
  ∀ n, P1062954094012028864.a n = A102671 n

end A102671

/-! ## A102671.P7490517839970818167

`∑{digits}[n, round(#/(#+3))]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102671

/-- `∑{digits}[n, round(#/(#+3))]` -/
def P7490517839970818167.Spec : Prop :=
  ∀ n, P7490517839970818167.a n = A102671 n

theorem P7490517839970818167.correct : P7490517839970818167.Spec := by
  intro n
  simp only [A102671]

end A102671

/-! ## A102671.P5199170343785145153

`Δ[A102672(abs(1-n))]`
-/

namespace A102671.P5199170343785145153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102672 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102671.P5199170343785145153

namespace A102671

/-- `Δ[A102672(abs(1-n))]` -/
def P5199170343785145153.Spec : Prop :=
  ∀ n, P5199170343785145153.a n = A102671 n

end A102671

/-! ## A102671.P9942638336821742505

`A102669(A004177(n))`
-/

namespace A102671.P9942638336821742505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A004177 n).toNat

end

end A102671.P9942638336821742505

namespace A102671

/-- `A102669(A004177(n))` -/
def P9942638336821742505.Spec : Prop :=
  ∀ n, P9942638336821742505.a n = A102671 n

end A102671

/-! ## A102671.P13596284051310303887

`A102669(A107128(n))`
-/

namespace A102671.P13596284051310303887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A107128 n).toNat

end

end A102671.P13596284051310303887

namespace A102671

/-- `A102669(A107128(n))` -/
def P13596284051310303887.Spec : Prop :=
  ∀ n, P13596284051310303887.a n = A102671 n

end A102671

/-! ## A102671.P6061451611024751819

`A055640(A176407(n))`
-/

namespace A102671.P6061451611024751819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A176407 n).toNat

end

end A102671.P6061451611024751819

namespace A102671

/-- `A055640(A176407(n))` -/
def P6061451611024751819.Spec : Prop :=
  ∀ n, P6061451611024751819.a n = A102671 n

end A102671

/-! ## A102671.P13826733897594542077

`A102669(A235049(n))`
-/

namespace A102671.P13826733897594542077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A235049 n).toNat

end

end A102671.P13826733897594542077

namespace A102671

/-- `A102669(A235049(n))` -/
def P13826733897594542077.Spec : Prop :=
  ∀ n, P13826733897594542077.a n = A102671 n

end A102671

/-! ## A102671.P14497058523729508552

`A316864(n)+A102673(n)`
-/

namespace A102671.P14497058523729508552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n + A102673 n

end

end A102671.P14497058523729508552

namespace A102671

/-- `A316864(n)+A102673(n)` -/
def P14497058523729508552.Spec : Prop :=
  ∀ n, P14497058523729508552.a n = A102671 n

end A102671

/-! ## A102671.P9449586788844110909

`A102669(n-A064770(n))`
-/

namespace A102671.P9449586788844110909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 ((n : ℤ) - A064770 n).toNat

end

end A102671.P9449586788844110909

namespace A102671

/-- `A102669(n-A064770(n))` -/
def P9449586788844110909.Spec : Prop :=
  ∀ n, P9449586788844110909.a n = A102671 n

end A102671

/-! ## A102671.P8241342498027483165

`A102669(n-A106747(n))`
-/

namespace A102671.P8241342498027483165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 ((n : ℤ) - A106747 n).toNat

end

end A102671.P8241342498027483165

namespace A102671

/-- `A102669(n-A106747(n))` -/
def P8241342498027483165.Spec : Prop :=
  ∀ n, P8241342498027483165.a n = A102671 n

end A102671

/-! ## A102671.P9828518496865805407

`A102669(n)-A316863(n)`
-/

namespace A102671.P9828518496865805407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n - A316863 n

end

end A102671.P9828518496865805407

namespace A102671

/-- `A102669(n)-A316863(n)` -/
def P9828518496865805407.Spec : Prop :=
  ∀ n, P9828518496865805407.a n = A102671 n

end A102671

/-! ## A102671.P3594687279615211214

`A001222(∏{digits}[n, A239701(#²)])`
-/

namespace A102671.P3594687279615211214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A239701 (x ^ 2)).prod.toNat

end

end A102671.P3594687279615211214

namespace A102671

/-- `A001222(∏{digits}[n, A239701(#²)])` -/
def P3594687279615211214.Spec : Prop :=
  ∀ n, P3594687279615211214.a n = A102671 n

end A102671

/-! ## A102671.P10231177082406480321

`A102669(n)+A102673(n)-A102669(A107130(n))`
-/

namespace A102671.P10231177082406480321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n + (A102673 n - A102669 (A107130 n).toNat)

end

end A102671.P10231177082406480321

namespace A102671

/-- `A102669(n)+A102673(n)-A102669(A107130(n))` -/
def P10231177082406480321.Spec : Prop :=
  ∀ n, P10231177082406480321.a n = A102671 n

end A102671

/-! ## A102671.P13075771839690321471

`A106799(A113581(n))`
-/

namespace A102671.P13075771839690321471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A113581 n).toNat

end

end A102671.P13075771839690321471

namespace A102671

/-- `A106799(A113581(n))` -/
def P13075771839690321471.Spec : Prop :=
  ∀ n, P13075771839690321471.a n = A102671 n

end A102671

/-! ## A102671.P12111016035137763439

`A102675(A048385(n))`
-/

namespace A102671.P12111016035137763439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A048385 n).toNat

end

end A102671.P12111016035137763439

namespace A102671

/-- `A102675(A048385(n))` -/
def P12111016035137763439.Spec : Prop :=
  ∀ n, P12111016035137763439.a n = A102671 n

end A102671

/-!
# A102672: Number of digits >= 3 in the decimal representations of all integers from 0 to n.

The programs for A102672, the canonical program `A102672.P4958325122262897204` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102672 has offset 0).

The definition of A102672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102672.P14965145749712630011

`∑[∑{digits}[n, floor(atan(sqrt(#)))]]`
-/

namespace A102672.P14965145749712630011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊Real.arctan (Real.sqrt (x : ℝ))⌋).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P14965145749712630011

namespace A102672

/-- `∑[∑{digits}[n, floor(atan(sqrt(#)))]]` -/
def P14965145749712630011.Spec : Prop :=
  ∀ n, P14965145749712630011.a n = A102672 n

end A102672

/-! ## A102672.P4958325122262897204

`∑[∑{digits}[n, round(#/(#+3))]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102672

/-- `∑[∑{digits}[n, round(#/(#+3))]]` -/
def P4958325122262897204.Spec : Prop :=
  ∀ n, P4958325122262897204.a n = A102672 n

theorem P4958325122262897204.correct : P4958325122262897204.Spec := by
  intro n
  simp only [A102672]

end A102672

/-! ## A102672.P6352471521983803872

`∑{digits}[n, floor(atan(sqrt(#)))]+a(n-1)` with `a(0)=0`
-/

namespace A102672.P6352471521983803872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.arctan (Real.sqrt (x : ℝ))⌋).sum + a (n - 1)

end

end A102672.P6352471521983803872

namespace A102672

/-- `∑{digits}[n, floor(atan(sqrt(#)))]+a(n-1)` -/
def P6352471521983803872.Spec : Prop :=
  ∀ n, P6352471521983803872.a n = A102672 n

end A102672

/-! ## A102672.P6331046297470358848

`∑{digits}[n, round(#/(#+3))]+a(n-1)` with `a(0)=0`
-/

namespace A102672.P6331046297470358848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway ((x : ℚ) / (x + 3 : ℚ))).sum + a (n - 1)

end

end A102672.P6331046297470358848

namespace A102672

/-- `∑{digits}[n, round(#/(#+3))]+a(n-1)` -/
def P6331046297470358848.Spec : Prop :=
  ∀ n, P6331046297470358848.a n = A102672 n

end A102672

/-! ## A102672.P16720169851203882398

`∑[A102671(n)]`
-/

namespace A102672.P16720169851203882398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P16720169851203882398

namespace A102672

/-- `∑[A102671(n)]` -/
def P16720169851203882398.Spec : Prop :=
  ∀ n, P16720169851203882398.a n = A102672 n

end A102672

/-! ## A102672.P17330119159008958919

`∑[A102669(A107128(n))]`
-/

namespace A102672.P17330119159008958919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A107128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P17330119159008958919

namespace A102672

/-- `∑[A102669(A107128(n))]` -/
def P17330119159008958919.Spec : Prop :=
  ∀ n, P17330119159008958919.a n = A102672 n

end A102672

/-! ## A102672.P9472684241033352372

`∑[A102669(A176407(n))]`
-/

namespace A102672.P9472684241033352372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A176407 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P9472684241033352372

namespace A102672

/-- `∑[A102669(A176407(n))]` -/
def P9472684241033352372.Spec : Prop :=
  ∀ n, P9472684241033352372.a n = A102672 n

end A102672

/-! ## A102672.P2529685079547695924

`∑[A102669(A235049(n))]`
-/

namespace A102672.P2529685079547695924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A235049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P2529685079547695924

namespace A102672

/-- `∑[A102669(A235049(n))]` -/
def P2529685079547695924.Spec : Prop :=
  ∀ n, P2529685079547695924.a n = A102672 n

end A102672

/-! ## A102672.P7964204494951310992

`∑[A102669(n-A064770(n))]`
-/

namespace A102672.P7964204494951310992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 ((n : ℤ) - A064770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P7964204494951310992

namespace A102672

/-- `∑[A102669(n-A064770(n))]` -/
def P7964204494951310992.Spec : Prop :=
  ∀ n, P7964204494951310992.a n = A102672 n

end A102672

/-! ## A102672.P12721969644228852857

`∑[A102669(n-A106747(n))]`
-/

namespace A102672.P12721969644228852857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 ((n : ℤ) - A106747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P12721969644228852857

namespace A102672

/-- `∑[A102669(n-A106747(n))]` -/
def P12721969644228852857.Spec : Prop :=
  ∀ n, P12721969644228852857.a n = A102672 n

end A102672

/-! ## A102672.P6699765195716338903

`∑[A106799(A113581(n))]`
-/

namespace A102672.P6699765195716338903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A113581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P6699765195716338903

namespace A102672

/-- `∑[A106799(A113581(n))]` -/
def P6699765195716338903.Spec : Prop :=
  ∀ n, P6699765195716338903.a n = A102672 n

end A102672

/-! ## A102672.P14091297834650080368

`∑[A102675(A048385(n))]`
-/

namespace A102672.P14091297834650080368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A048385 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102672.P14091297834650080368

namespace A102672

/-- `∑[A102675(A048385(n))]` -/
def P14091297834650080368.Spec : Prop :=
  ∀ n, P14091297834650080368.a n = A102672 n

end A102672

/-!
# A102673: Number of digits >= 4 in decimal representation of n.

The programs for A102673, the canonical program `A102673.P6409883008678884231` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102673 has offset 0).

The definition of A102673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102673.P6409883008678884231

`∑{digits}[n, round(#/7)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102673

/-- `∑{digits}[n, round(#/7)]` -/
def P6409883008678884231.Spec : Prop :=
  ∀ n, P6409883008678884231.a n = A102673 n

theorem P6409883008678884231.correct : P6409883008678884231.Spec := by
  intro n
  simp only [A102673]

end A102673

/-! ## A102673.P4429112217328529824

`Δ[A102674(abs(1-n))]`
-/

namespace A102673.P4429112217328529824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102674 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102673.P4429112217328529824

namespace A102673

/-- `Δ[A102674(abs(1-n))]` -/
def P4429112217328529824.Spec : Prop :=
  ∀ n, P4429112217328529824.a n = A102673 n

end A102673

/-! ## A102673.P11558634549288789158

`A102671(A004178(n))`
-/

namespace A102673.P11558634549288789158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A004178 n).toNat

end

end A102673.P11558634549288789158

namespace A102673

/-- `A102671(A004178(n))` -/
def P11558634549288789158.Spec : Prop :=
  ∀ n, P11558634549288789158.a n = A102673 n

end A102673

/-! ## A102673.P9963674712778355476

`A102669(A064770(n))`
-/

namespace A102673.P9963674712778355476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A064770 n).toNat

end

end A102673.P9963674712778355476

namespace A102673

/-- `A102669(A064770(n))` -/
def P9963674712778355476.Spec : Prop :=
  ∀ n, P9963674712778355476.a n = A102673 n

end A102673

/-! ## A102673.P6682130688324023886

`A102669(A106747(n))`
-/

namespace A102673.P6682130688324023886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A106747 n).toNat

end

end A102673.P6682130688324023886

namespace A102673

/-- `A102669(A106747(n))` -/
def P6682130688324023886.Spec : Prop :=
  ∀ n, P6682130688324023886.a n = A102673 n

end A102673

/-! ## A102673.P8783861007126844085

`A102679(A106746(n))`
-/

namespace A102673.P8783861007126844085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A106746 n).toNat

end

end A102673.P8783861007126844085

namespace A102673

/-- `A102679(A106746(n))` -/
def P8783861007126844085.Spec : Prop :=
  ∀ n, P8783861007126844085.a n = A102673 n

end A102673

/-! ## A102673.P4648052960464028821

`A102671(A235049(n))`
-/

namespace A102673.P4648052960464028821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A235049 n).toNat

end

end A102673.P4648052960464028821

namespace A102673

/-- `A102671(A235049(n))` -/
def P4648052960464028821.Spec : Prop :=
  ∀ n, P4648052960464028821.a n = A102673 n

end A102673

/-! ## A102673.P595280559148123179

`A102675(A351744(n))`
-/

namespace A102673.P595280559148123179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A351744 n).toNat

end

end A102673.P595280559148123179

namespace A102673

/-- `A102675(A351744(n))` -/
def P595280559148123179.Spec : Prop :=
  ∀ n, P595280559148123179.a n = A102673 n

end A102673

/-! ## A102673.P8101312486036897641

`A102671(2*A064770(n))`
-/

namespace A102673.P8101312486036897641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (2 * A064770 n).toNat

end

end A102673.P8101312486036897641

namespace A102673

/-- `A102671(2*A064770(n))` -/
def P8101312486036897641.Spec : Prop :=
  ∀ n, P8101312486036897641.a n = A102673 n

end A102673

/-! ## A102673.P7735827810724437218

`A316865(n)+A102675(n)`
-/

namespace A102673.P7735827810724437218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n + A102675 n

end

end A102673.P7735827810724437218

namespace A102673

/-- `A316865(n)+A102675(n)` -/
def P7735827810724437218.Spec : Prop :=
  ∀ n, P7735827810724437218.a n = A102673 n

end A102673

/-! ## A102673.P14717366427438366897

`A102671(n)-A316864(n)`
-/

namespace A102673.P14717366427438366897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n - A316864 n

end

end A102673.P14717366427438366897

namespace A102673

/-- `A102671(n)-A316864(n)` -/
def P14717366427438366897.Spec : Prop :=
  ∀ n, P14717366427438366897.a n = A102673 n

end A102673

/-! ## A102673.P10533230255830928052

`A102677(2*(n-A132387(n)))`
-/

namespace A102673.P10533230255830928052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (2 * ((n : ℤ) - A132387 n)).toNat

end

end A102673.P10533230255830928052

namespace A102673

/-- `A102677(2*(n-A132387(n)))` -/
def P10533230255830928052.Spec : Prop :=
  ∀ n, P10533230255830928052.a n = A102673 n

end A102673

/-!
# A102674: Number of digits >= 4 in the decimal representations of all integers from 0 to n.

The programs for A102674, the canonical program `A102674.P3292213634126461413` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102674 has offset 0).

The definition of A102674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102674.P3292213634126461413

`∑[∑{digits}[n, round(#/7)]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102674

/-- `∑[∑{digits}[n, round(#/7)]]` -/
def P3292213634126461413.Spec : Prop :=
  ∀ n, P3292213634126461413.a n = A102674 n

theorem P3292213634126461413.correct : P3292213634126461413.Spec := by
  intro n
  simp only [A102674]

end A102674

/-! ## A102674.P8830811809342696510

`∑{digits}[n, round(#/7)]+a(n-1)` with `a(0)=0`
-/

namespace A102674.P8830811809342696510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway ((x : ℚ) / 7)).sum + a (n - 1)

end

end A102674.P8830811809342696510

namespace A102674

/-- `∑{digits}[n, round(#/7)]+a(n-1)` -/
def P8830811809342696510.Spec : Prop :=
  ∀ n, P8830811809342696510.a n = A102674 n

end A102674

/-! ## A102674.P14592966615111127778

`∑[A102673(n)]`
-/

namespace A102674.P14592966615111127778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102674.P14592966615111127778

namespace A102674

/-- `∑[A102673(n)]` -/
def P14592966615111127778.Spec : Prop :=
  ∀ n, P14592966615111127778.a n = A102674 n

end A102674

/-! ## A102674.P3756794628761145212

`∑[A102671(A004178(n))]`
-/

namespace A102674.P3756794628761145212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A004178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102674.P3756794628761145212

namespace A102674

/-- `∑[A102671(A004178(n))]` -/
def P3756794628761145212.Spec : Prop :=
  ∀ n, P3756794628761145212.a n = A102674 n

end A102674

/-! ## A102674.P14874785749054644909

`∑[A102669(A064770(n))]`
-/

namespace A102674.P14874785749054644909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A064770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102674.P14874785749054644909

namespace A102674

/-- `∑[A102669(A064770(n))]` -/
def P14874785749054644909.Spec : Prop :=
  ∀ n, P14874785749054644909.a n = A102674 n

end A102674

/-! ## A102674.P1968385356724885719

`∑[A102669(A106747(n))]`
-/

namespace A102674.P1968385356724885719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A106747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102674.P1968385356724885719

namespace A102674

/-- `∑[A102669(A106747(n))]` -/
def P1968385356724885719.Spec : Prop :=
  ∀ n, P1968385356724885719.a n = A102674 n

end A102674

/-! ## A102674.P14006970843110262350

`∑[A102679(A106746(n))]`
-/

namespace A102674.P14006970843110262350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A106746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102674.P14006970843110262350

namespace A102674

/-- `∑[A102679(A106746(n))]` -/
def P14006970843110262350.Spec : Prop :=
  ∀ n, P14006970843110262350.a n = A102674 n

end A102674

/-! ## A102674.P7571882694291811898

`∑[A102671(A235049(n))]`
-/

namespace A102674.P7571882694291811898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A235049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102674.P7571882694291811898

namespace A102674

/-- `∑[A102671(A235049(n))]` -/
def P7571882694291811898.Spec : Prop :=
  ∀ n, P7571882694291811898.a n = A102674 n

end A102674

/-!
# A102675: Number of digits >= 5 in decimal representation of n.

The programs for A102675, the canonical program `A102675.P8109729123285045221` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102675 has offset 0).

The definition of A102675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102675.P8109729123285045221

`∑{digits}[n, floor(#/5)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102675

/-- `∑{digits}[n, floor(#/5)]` -/
def P8109729123285045221.Spec : Prop :=
  ∀ n, P8109729123285045221.a n = A102675 n

theorem P8109729123285045221.correct : P8109729123285045221.Spec := by
  intro n
  simp only [A102675]

end A102675

/-! ## A102675.P5952805256046287366

`val(∏{digits}[n, #!], 5)`
-/

namespace A102675.P5952805256046287366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).prod 5

end

end A102675.P5952805256046287366

namespace A102675

/-- `val(∏{digits}[n, #!], 5)` -/
def P5952805256046287366.Spec : Prop :=
  ∀ n, (P5952805256046287366.a n : ℤ) = A102675 n

end A102675

/-! ## A102675.P15934840362387862797

`A055015(floor(n/5))%8`
-/

namespace A102675.P15934840362387862797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055015 ⌊(n : ℚ) / 5⌋.toNat) 8

end

end A102675.P15934840362387862797

namespace A102675

/-- `A055015(floor(n/5))%8` -/
def P15934840362387862797.Spec : Prop :=
  ∀ n, P15934840362387862797.a n = A102675 n

end A102675

/-! ## A102675.P5692587467356436849

`A308003(A002266(n))%5`
-/

namespace A102675.P5692587467356436849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308003 (A002266 n).toNat) 5

end

end A102675.P5692587467356436849

namespace A102675

/-- `A308003(A002266(n))%5` -/
def P5692587467356436849.Spec : Prop :=
  ∀ n, P5692587467356436849.a n = A102675 n

end A102675

/-! ## A102675.P15315655198253353868

`A316866(n)+A102677(n)`
-/

namespace A102675.P15315655198253353868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n + A102677 n

end

end A102675.P15315655198253353868

namespace A102675

/-- `A316866(n)+A102677(n)` -/
def P15315655198253353868.Spec : Prop :=
  ∀ n, P15315655198253353868.a n = A102675 n

end A102675

/-! ## A102675.P13343585255340173763

`A235487(∑{digits}[n, A025780(#)-1])`
-/

namespace A102675.P13343585255340173763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025780 x - 1).sum.toNat

end

end A102675.P13343585255340173763

namespace A102675

/-- `A235487(∑{digits}[n, A025780(#)-1])` -/
def P13343585255340173763.Spec : Prop :=
  ∀ n, P13343585255340173763.a n = A102675 n

end A102675

/-! ## A102675.P14509480955260262114

`A340288(∑{digits}[n, A340288(#+1)-#]+1)`
-/

namespace A102675.P14509480955260262114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340288 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A340288 (x + 1) - (x : ℤ)).sum + 1).toNat

end

end A102675.P14509480955260262114

namespace A102675

/-- `A340288(∑{digits}[n, A340288(#+1)-#]+1)` -/
def P14509480955260262114.Spec : Prop :=
  ∀ n, P14509480955260262114.a n = A102675 n

end A102675

/-! ## A102675.P16226097358111027372

`A196564(2*n)`
-/

namespace A102675.P16226097358111027372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (2 * n)

end

end A102675.P16226097358111027372

namespace A102675

/-- `A196564(2*n)` -/
def P16226097358111027372.Spec : Prop :=
  ∀ n, P16226097358111027372.a n = A102675 n

end A102675

/-! ## A102675.P12230201629334014167

`(2*A007953(n)-A007953(2*n))/9`
-/

namespace A102675.P12230201629334014167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A007953 n - A007953 (2 * n) : ℚ) / 9

end

end A102675.P12230201629334014167

namespace A102675

/-- `(2*A007953(n)-A007953(2*n))/9` -/
def P12230201629334014167.Spec : Prop :=
  ∀ n, P12230201629334014167.a n = (A102675 n : ℚ)

end A102675

/-! ## A102675.P15829830514987448299

`∑{p}[A122643(n+1), A019590(#)]`
-/

namespace A102675.P15829830514987448299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A019590 p

end

end A102675.P15829830514987448299

namespace A102675

/-- `∑{p}[A122643(n+1), A019590(#)]` -/
def P15829830514987448299.Spec : Prop :=
  ∀ n, P15829830514987448299.a n = A102675 n

end A102675

/-!
# A102676: Number of digits >= 5 in the decimal representations of all integers from 0 to n.

The programs for A102676, the canonical program `A102676.P17554380705502626904` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102676 has offset 0).

The definition of A102676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102676.P17554380705502626904

`∑[∑{digits}[n, floor(#/5)]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102676

/-- `∑[∑{digits}[n, floor(#/5)]]` -/
def P17554380705502626904.Spec : Prop :=
  ∀ n, P17554380705502626904.a n = A102676 n

theorem P17554380705502626904.correct : P17554380705502626904.Spec := by
  intro n
  simp only [A102676]

end A102676

/-! ## A102676.P18249170060666590193

`∑[val(∏{digits}[n, #!], 5)]`
-/

namespace A102676.P18249170060666590193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).prod 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102676.P18249170060666590193

namespace A102676

/-- `∑[val(∏{digits}[n, #!], 5)]` -/
def P18249170060666590193.Spec : Prop :=
  ∀ n, (P18249170060666590193.a n : ℤ) = A102676 n

end A102676

/-! ## A102676.P1497642119849210235

`∑{digits}[2*n, and(1, #)]+a(n-1)` with `a(0)=0`
-/

namespace A102676.P1497642119849210235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum + a (n - 1)

end

end A102676.P1497642119849210235

namespace A102676

/-- `∑{digits}[2*n, and(1, #)]+a(n-1)` -/
def P1497642119849210235.Spec : Prop :=
  ∀ n, (P1497642119849210235.a n : ℤ) = A102676 n

end A102676

/-! ## A102676.P9721101740253527864

`∑[A102675(n)]`
-/

namespace A102676.P9721101740253527864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102676.P9721101740253527864

namespace A102676

/-- `∑[A102675(n)]` -/
def P9721101740253527864.Spec : Prop :=
  ∀ n, P9721101740253527864.a n = A102676 n

end A102676

/-! ## A102676.P16921146800331056148

`∑[val(A066459(n), 5)]`
-/

namespace A102676.P16921146800331056148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066459 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102676.P16921146800331056148

namespace A102676

/-- `∑[val(A066459(n), 5)]` -/
def P16921146800331056148.Spec : Prop :=
  ∀ n, (P16921146800331056148.a n : ℤ) = A102676 n

end A102676

/-! ## A102676.P3642829667070250008

`∑[A196564(2*n)]`
-/

namespace A102676.P3642829667070250008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102676.P3642829667070250008

namespace A102676

/-- `∑[A196564(2*n)]` -/
def P3642829667070250008.Spec : Prop :=
  ∀ n, P3642829667070250008.a n = A102676 n

end A102676

/-! ## A102676.P7279684467690243126

`A196564(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A102676.P7279684467690243126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A196564 (n + n) + a (n - 1)

end

end A102676.P7279684467690243126

namespace A102676

/-- `A196564(n+n)+a(n-1)` -/
def P7279684467690243126.Spec : Prop :=
  ∀ n, P7279684467690243126.a n = A102676 n

end A102676

/-! ## A102676.P12429336134657672239

`∑[A102669(n-A106747(2*n))]`
-/

namespace A102676.P12429336134657672239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 ((n : ℤ) - A106747 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102676.P12429336134657672239

namespace A102676

/-- `∑[A102669(n-A106747(2*n))]` -/
def P12429336134657672239.Spec : Prop :=
  ∀ n, P12429336134657672239.a n = A102676 n

end A102676

/-! ## A102676.P7147120170934991352

`∑[dr(A103181(2*n))]`
-/

namespace A102676.P7147120170934991352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A103181 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102676.P7147120170934991352

namespace A102676

/-- `∑[dr(A103181(2*n))]` -/
def P7147120170934991352.Spec : Prop :=
  ∀ n, (P7147120170934991352.a n : ℤ) = A102676 n

end A102676

/-! ## A102676.P13217145133501144711

`∑[dr(A196564(A169910(n)))]`
-/

namespace A102676.P13217145133501144711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A196564 (A169910 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102676.P13217145133501144711

namespace A102676

/-- `∑[dr(A196564(A169910(n)))]` -/
def P13217145133501144711.Spec : Prop :=
  ∀ n, (P13217145133501144711.a n : ℤ) = A102676 n

end A102676

/-!
# A102677: Number of digits >= 6 in decimal representation of n.

The programs for A102677, the canonical program `A102677.P13177228487956605855` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102677 has offset 0).

The definition of A102677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102677.P13177228487956605855

`∑{digits}[n, floor(#/6)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102677

/-- `∑{digits}[n, floor(#/6)]` -/
def P13177228487956605855.Spec : Prop :=
  ∀ n, P13177228487956605855.a n = A102677 n

theorem P13177228487956605855.correct : P13177228487956605855.Spec := by
  intro n
  simp only [A102677]

end A102677

/-! ## A102677.P4002902818062593791

`Δ[A102678(abs(1-n))]`
-/

namespace A102677.P4002902818062593791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102678 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102677.P4002902818062593791

namespace A102677

/-- `Δ[A102678(abs(1-n))]` -/
def P4002902818062593791.Spec : Prop :=
  ∀ n, P4002902818062593791.a n = A102677 n

end A102677

/-! ## A102677.P3599731944177460584

`A102675(A004180(n))`
-/

namespace A102677.P3599731944177460584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A004180 n).toNat

end

end A102677.P3599731944177460584

namespace A102677

/-- `A102675(A004180(n))` -/
def P3599731944177460584.Spec : Prop :=
  ∀ n, P3599731944177460584.a n = A102677 n

end A102677

/-! ## A102677.P1531906778433877913

`val(A066459(A106747(n)), 3)`
-/

namespace A102677.P1531906778433877913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066459 (A106747 n).toNat).toNat 3

end

end A102677.P1531906778433877913

namespace A102677

/-- `val(A066459(A106747(n)), 3)` -/
def P1531906778433877913.Spec : Prop :=
  ∀ n, (P1531906778433877913.a n : ℤ) = A102677 n

end A102677

/-! ## A102677.P14462403449764120068

`A316867(n)+A102679(n)`
-/

namespace A102677.P14462403449764120068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + A102679 n

end

end A102677.P14462403449764120068

namespace A102677

/-- `A316867(n)+A102679(n)` -/
def P14462403449764120068.Spec : Prop :=
  ∀ n, P14462403449764120068.a n = A102677 n

end A102677

/-! ## A102677.P12457867131058647306

`A102673(n-A064770(n))`
-/

namespace A102677.P12457867131058647306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 ((n : ℤ) - A064770 n).toNat

end

end A102677.P12457867131058647306

namespace A102677

/-- `A102673(n-A064770(n))` -/
def P12457867131058647306.Spec : Prop :=
  ∀ n, P12457867131058647306.a n = A102677 n

end A102677

/-! ## A102677.P17647099165049250460

`A102675(n)-A316866(n)`
-/

namespace A102677.P17647099165049250460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n - A316866 n

end

end A102677.P17647099165049250460

namespace A102677

/-- `A102675(n)-A316866(n)` -/
def P17647099165049250460.Spec : Prop :=
  ∀ n, P17647099165049250460.a n = A102677 n

end A102677

/-! ## A102677.P7261985190500208844

`A001222(∏{digits}[n, A029113(#)])`
-/

namespace A102677.P7261985190500208844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod.toNat

end

end A102677.P7261985190500208844

namespace A102677

/-- `A001222(∏{digits}[n, A029113(#)])` -/
def P7261985190500208844.Spec : Prop :=
  ∀ n, P7261985190500208844.a n = A102677 n

end A102677

/-! ## A102677.P5147937665456026949

`A102683(n)+A102679(A048379(n))`
-/

namespace A102677.P5147937665456026949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A102679 (A048379 n).toNat

end

end A102677.P5147937665456026949

namespace A102677

/-- `A102683(n)+A102679(A048379(n))` -/
def P5147937665456026949.Spec : Prop :=
  ∀ n, P5147937665456026949.a n = A102677 n

end A102677

/-! ## A102677.P4124343799089433811

`A102683(n)+A102679(A222251(n))`
-/

namespace A102677.P4124343799089433811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A102679 (A222251 n).toNat

end

end A102677.P4124343799089433811

namespace A102677

/-- `A102683(n)+A102679(A222251(n))` -/
def P4124343799089433811.Spec : Prop :=
  ∀ n, P4124343799089433811.a n = A102677 n

end A102677

/-! ## A102677.P7696768883763170212

`A001222(∏{digits}[n, A118458(A000041(#))])`
-/

namespace A102677.P7696768883763170212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A118458 (A000041 x).toNat).prod.toNat

end

end A102677.P7696768883763170212

namespace A102677

/-- `A001222(∏{digits}[n, A118458(A000041(#))])` -/
def P7696768883763170212.Spec : Prop :=
  ∀ n, P7696768883763170212.a n = A102677 n

end A102677

/-! ## A102677.P4979486707550885369

`A196564(2*A235049(n))`
-/

namespace A102677.P4979486707550885369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (2 * A235049 n).toNat

end

end A102677.P4979486707550885369

namespace A102677

/-- `A196564(2*A235049(n))` -/
def P4979486707550885369.Spec : Prop :=
  ∀ n, P4979486707550885369.a n = A102677 n

end A102677

/-!
# A102678: Number of digits >= 6 in the decimal representations of all integers from 0 to n.

The programs for A102678, the canonical program `A102678.P2719229082847808635` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102678 has offset 0).

The definition of A102678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102678.P2719229082847808635

`∑[∑{digits}[n, floor(#/6)]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102678

/-- `∑[∑{digits}[n, floor(#/6)]]` -/
def P2719229082847808635.Spec : Prop :=
  ∀ n, P2719229082847808635.a n = A102678 n

theorem P2719229082847808635.correct : P2719229082847808635.Spec := by
  intro n
  simp only [A102678]

end A102678

/-! ## A102678.P16893384634775751913

`∑[A102677(n)]`
-/

namespace A102678.P16893384634775751913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102678.P16893384634775751913

namespace A102678

/-- `∑[A102677(n)]` -/
def P16893384634775751913.Spec : Prop :=
  ∀ n, P16893384634775751913.a n = A102678 n

end A102678

/-! ## A102678.P956711017057423853

`∑[A102675(A004180(n))]`
-/

namespace A102678.P956711017057423853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A004180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102678.P956711017057423853

namespace A102678

/-- `∑[A102675(A004180(n))]` -/
def P956711017057423853.Spec : Prop :=
  ∀ n, P956711017057423853.a n = A102678 n

end A102678

/-! ## A102678.P14982252237611690208

`∑[A102675(2*A106747(n))]`
-/

namespace A102678.P14982252237611690208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (2 * A106747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102678.P14982252237611690208

namespace A102678

/-- `∑[A102675(2*A106747(n))]` -/
def P14982252237611690208.Spec : Prop :=
  ∀ n, P14982252237611690208.a n = A102678 n

end A102678

/-! ## A102678.P192126862334053054

`∑[A001222(∏{digits}[n, A029113(#)])]`
-/

namespace A102678.P192126862334053054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A029113 x).prod.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102678.P192126862334053054

namespace A102678

/-- `∑[A001222(∏{digits}[n, A029113(#)])]` -/
def P192126862334053054.Spec : Prop :=
  ∀ n, P192126862334053054.a n = A102678 n

end A102678

/-! ## A102678.P6656346638635380874

`∑[A102675(A106747(n)+A106747(n))]`
-/

namespace A102678.P6656346638635380874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A106747 n + A106747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102678.P6656346638635380874

namespace A102678

/-- `∑[A102675(A106747(n)+A106747(n))]` -/
def P6656346638635380874.Spec : Prop :=
  ∀ n, P6656346638635380874.a n = A102678 n

end A102678

/-! ## A102678.P4381800666409936062

`∑[A095345(2*n+3)%A106795(n)]`
-/

namespace A102678.P4381800666409936062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095345 (2 * n + 3)) (A106795 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102678.P4381800666409936062

namespace A102678

/-- `∑[A095345(2*n+3)%A106795(n)]` -/
def P4381800666409936062.Spec : Prop :=
  ∀ n, P4381800666409936062.a n = A102678 n

end A102678

/-!
# A102679: Number of digits >= 7 in decimal representation of n.

The programs for A102679, the canonical program `A102679.P8464242945239361624` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102679 has offset 0).

The definition of A102679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102679.P8464242945239361624

`∑{digits}[n, floor(#/7)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102679

/-- `∑{digits}[n, floor(#/7)]` -/
def P8464242945239361624.Spec : Prop :=
  ∀ n, P8464242945239361624.a n = A102679 n

theorem P8464242945239361624.correct : P8464242945239361624.Spec := by
  intro n
  simp only [A102679]

end A102679

/-! ## A102679.P14921455775871928386

`val(∏{digits}[n, #!], 7)`
-/

namespace A102679.P14921455775871928386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).prod 7

end

end A102679.P14921455775871928386

namespace A102679

/-- `val(∏{digits}[n, #!], 7)` -/
def P14921455775871928386.Spec : Prop :=
  ∀ n, (P14921455775871928386.a n : ℤ) = A102679 n

end A102679

/-! ## A102679.P832861137538888107

`val(A066459(n), 7)`
-/

namespace A102679.P832861137538888107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066459 n).toNat 7

end

end A102679.P832861137538888107

namespace A102679

/-- `val(A066459(n), 7)` -/
def P832861137538888107.Spec : Prop :=
  ∀ n, (P832861137538888107.a n : ℤ) = A102679 n

end A102679

/-! ## A102679.P6677934646260762073

`Δ[A102680(abs(1-n))]`
-/

namespace A102679.P6677934646260762073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102680 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102679.P6677934646260762073

namespace A102679

/-- `Δ[A102680(abs(1-n))]` -/
def P6677934646260762073.Spec : Prop :=
  ∀ n, P6677934646260762073.a n = A102679 n

end A102679

/-! ## A102679.P13741540683474446027

`A102677(A004181(n))`
-/

namespace A102679.P13741540683474446027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A004181 n).toNat

end

end A102679.P13741540683474446027

namespace A102679

/-- `A102677(A004181(n))` -/
def P13741540683474446027.Spec : Prop :=
  ∀ n, P13741540683474446027.a n = A102679 n

end A102679

/-! ## A102679.P16831281237219802320

`A102677(A235049(n))`
-/

namespace A102679.P16831281237219802320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A235049 n).toNat

end

end A102679.P16831281237219802320

namespace A102679

/-- `A102677(A235049(n))` -/
def P16831281237219802320.Spec : Prop :=
  ∀ n, P16831281237219802320.a n = A102679 n

end A102679

/-! ## A102679.P10163650814202464927

`A316868(n)+A102681(n)`
-/

namespace A102679.P10163650814202464927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n + A102681 n

end

end A102679.P10163650814202464927

namespace A102679

/-- `A316868(n)+A102681(n)` -/
def P10163650814202464927.Spec : Prop :=
  ∀ n, P10163650814202464927.a n = A102679 n

end A102679

/-! ## A102679.P4360321619807103227

`A102673(n-A106747(n))`
-/

namespace A102679.P4360321619807103227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 ((n : ℤ) - A106747 n).toNat

end

end A102679.P4360321619807103227

namespace A102679

/-- `A102673(n-A106747(n))` -/
def P4360321619807103227.Spec : Prop :=
  ∀ n, P4360321619807103227.a n = A102679 n

end A102679

/-! ## A102679.P6983429346110881266

`A102677(n)-A316867(n)`
-/

namespace A102679.P6983429346110881266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n - A316867 n

end

end A102679.P6983429346110881266

namespace A102679

/-- `A102677(n)-A316867(n)` -/
def P6983429346110881266.Spec : Prop :=
  ∀ n, P6983429346110881266.a n = A102679 n

end A102679

/-! ## A102679.P9433016475155269607

`A110654(2*∑{digits}[n, A011699(#)])`
-/

namespace A102679.P9433016475155269607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011699 x).sum).toNat

end

end A102679.P9433016475155269607

namespace A102679

/-- `A110654(2*∑{digits}[n, A011699(#)])` -/
def P9433016475155269607.Spec : Prop :=
  ∀ n, P9433016475155269607.a n = A102679 n

end A102679

/-! ## A102679.P12760984741952467485

`A102677(n-A132387(A222253(n)))`
-/

namespace A102679.P12760984741952467485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 ((n : ℤ) - A132387 (A222253 n).toNat).toNat

end

end A102679.P12760984741952467485

namespace A102679

/-- `A102677(n-A132387(A222253(n)))` -/
def P12760984741952467485.Spec : Prop :=
  ∀ n, P12760984741952467485.a n = A102679 n

end A102679

/-! ## A102679.P14563699033583390129

`A014963(3*A000040(n+1))*∑{digits}[n, A011699(#)]`
-/

namespace A102679.P14563699033583390129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * A000040 (n + 1)).toNat * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011699 x).sum

end

end A102679.P14563699033583390129

namespace A102679

/-- `A014963(3*A000040(n+1))*∑{digits}[n, A011699(#)]` -/
def P14563699033583390129.Spec : Prop :=
  ∀ n, P14563699033583390129.a n = A102679 n

end A102679

/-!
# A102680: Number of digits >= 7 in the decimal representations of all integers from 0 to n.

The programs for A102680, the canonical program `A102680.P16579414949965377652` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102680 has offset 0).

The definition of A102680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102680.P16579414949965377652

`∑[val(∏{digits}[n, #!], 7)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102680

/-- `∑[val(∏{digits}[n, #!], 7)]` -/
def P16579414949965377652.Spec : Prop :=
  ∀ n, (P16579414949965377652.a n : ℤ) = A102680 n

theorem P16579414949965377652.correct : P16579414949965377652.Spec := by
  intro n
  simp only [A102680]

end A102680

/-! ## A102680.P11707296802530122962

`∑[A102679(n)]`
-/

namespace A102680.P11707296802530122962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102680.P11707296802530122962

namespace A102680

/-- `∑[A102679(n)]` -/
def P11707296802530122962.Spec : Prop :=
  ∀ n, P11707296802530122962.a n = A102680 n

end A102680

/-! ## A102680.P6696219071303392940

`∑[∑{digits}[n, A011699(#)]]`
-/

namespace A102680.P6696219071303392940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A011699 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102680.P6696219071303392940

namespace A102680

/-- `∑[∑{digits}[n, A011699(#)]]` -/
def P6696219071303392940.Spec : Prop :=
  ∀ n, P6696219071303392940.a n = A102680 n

end A102680

/-! ## A102680.P8377879915586940110

`∑[∑{digits}[n, A277152(#)]]`
-/

namespace A102680.P8377879915586940110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A277152 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102680.P8377879915586940110

namespace A102680

/-- `∑[∑{digits}[n, A277152(#)]]` -/
def P8377879915586940110.Spec : Prop :=
  ∀ n, P8377879915586940110.a n = A102680 n

end A102680

/-! ## A102680.P2181378748125014529

`∑[∑{digits}[n, A025788(#)-1]]`
-/

namespace A102680.P2181378748125014529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A025788 x - 1).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102680.P2181378748125014529

namespace A102680

/-- `∑[∑{digits}[n, A025788(#)-1]]` -/
def P2181378748125014529.Spec : Prop :=
  ∀ n, P2181378748125014529.a n = A102680 n

end A102680

/-! ## A102680.P16892630241075507610

`∑[A102677(A004181(n))]`
-/

namespace A102680.P16892630241075507610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A004181 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102680.P16892630241075507610

namespace A102680

/-- `∑[A102677(A004181(n))]` -/
def P16892630241075507610.Spec : Prop :=
  ∀ n, P16892630241075507610.a n = A102680 n

end A102680

/-! ## A102680.P5916303343446931540

`∑[A102673(n-A106747(n))]`
-/

namespace A102680.P5916303343446931540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 ((n : ℤ) - A106747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102680.P5916303343446931540

namespace A102680

/-- `∑[A102673(n-A106747(n))]` -/
def P5916303343446931540.Spec : Prop :=
  ∀ n, P5916303343446931540.a n = A102680 n

end A102680

/-! ## A102680.P13001652084316598096

`∑[∑{digits}[n, A060510(A033438(#))]]`
-/

namespace A102680.P13001652084316598096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A060510 (A033438 x).toNat).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102680.P13001652084316598096

namespace A102680

/-- `∑[∑{digits}[n, A060510(A033438(#))]]` -/
def P13001652084316598096.Spec : Prop :=
  ∀ n, P13001652084316598096.a n = A102680 n

end A102680

/-!
# A102681: Number of digits >= 8 in decimal representation of n.

The programs for A102681, the canonical program `A102681.P10763331520782827620` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102681 has offset 0).

The definition of A102681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102681.P8987615286214575547

`∑{digits}[n, and(8, #)/8]`
-/

namespace A102681.P8987615286214575547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

end

end A102681.P8987615286214575547

namespace A102681

/-- `∑{digits}[n, and(8, #)/8]` -/
def P8987615286214575547.Spec : Prop :=
  ∀ n, P8987615286214575547.a n = (A102681 n : ℚ)

end A102681

/-! ## A102681.P10763331520782827620

`∑{digits}[n, and(1, C(#, 8))]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102681

/-- `∑{digits}[n, and(1, C(#, 8))]` -/
def P10763331520782827620.Spec : Prop :=
  ∀ n, (P10763331520782827620.a n : ℤ) = A102681 n

theorem P10763331520782827620.correct : P10763331520782827620.Spec := by
  intro n
  simp only [A102681]

end A102681

/-! ## A102681.P1752343905300491511

`∑{digits}[n, or(7, #)]%7`
-/

namespace A102681.P1752343905300491511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.lor 7 x).sum % 7

end

end A102681.P1752343905300491511

namespace A102681

/-- `∑{digits}[n, or(7, #)]%7` -/
def P1752343905300491511.Spec : Prop :=
  ∀ n, (P1752343905300491511.a n : ℤ) = A102681 n

end A102681

/-! ## A102681.P4713820232356456335

`∑{digits}[n, and(8, #)]%7`
-/

namespace A102681.P4713820232356456335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 8 x).sum % 7

end

end A102681.P4713820232356456335

namespace A102681

/-- `∑{digits}[n, and(8, #)]%7` -/
def P4713820232356456335.Spec : Prop :=
  ∀ n, (P4713820232356456335.a n : ℤ) = A102681 n

end A102681

/-! ## A102681.P8779955691577365693

`∑{digits}[n, floor((#+1)/9)]`
-/

namespace A102681.P8779955691577365693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x + 1 : ℚ) / 9⌋).sum

end

end A102681.P8779955691577365693

namespace A102681

/-- `∑{digits}[n, floor((#+1)/9)]` -/
def P8779955691577365693.Spec : Prop :=
  ∀ n, P8779955691577365693.a n = A102681 n

end A102681

/-! ## A102681.P55735700989015871

`A102679(A004182(n))`
-/

namespace A102681.P55735700989015871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A004182 n).toNat

end

end A102681.P55735700989015871

namespace A102681

/-- `A102679(A004182(n))` -/
def P55735700989015871.Spec : Prop :=
  ∀ n, P55735700989015871.a n = A102681 n

end A102681

/-! ## A102681.P2704970232481866518

`A102673(A106747(n))`
-/

namespace A102681.P2704970232481866518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A106747 n).toNat

end

end A102681.P2704970232481866518

namespace A102681

/-- `A102673(A106747(n))` -/
def P2704970232481866518.Spec : Prop :=
  ∀ n, P2704970232481866518.a n = A102681 n

end A102681

/-! ## A102681.P3969256897517857925

`A316869(n)+A102683(n)`
-/

namespace A102681.P3969256897517857925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n + A102683 n

end

end A102681.P3969256897517857925

namespace A102681

/-- `A316869(n)+A102683(n)` -/
def P3969256897517857925.Spec : Prop :=
  ∀ n, P3969256897517857925.a n = A102681 n

end A102681

/-! ## A102681.P17584962548898549040

`A102679(n)-A316868(n)`
-/

namespace A102681.P17584962548898549040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n - A316868 n

end

end A102681.P17584962548898549040

namespace A102681

/-- `A102679(n)-A316868(n)` -/
def P17584962548898549040.Spec : Prop :=
  ∀ n, P17584962548898549040.a n = A102681 n

end A102681

/-! ## A102681.P14540286020216553185

`A102683(n)+A102683(A222254(n))`
-/

namespace A102681.P14540286020216553185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A102683 (A222254 n).toNat

end

end A102681.P14540286020216553185

namespace A102681

/-- `A102683(n)+A102683(A222254(n))` -/
def P14540286020216553185.Spec : Prop :=
  ∀ n, P14540286020216553185.a n = A102681 n

end A102681

/-! ## A102681.P2553477429719419741

`A316869(A222254(n))+A316869(n)`
-/

namespace A102681.P2553477429719419741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A222254 n).toNat + A316869 n

end

end A102681.P2553477429719419741

namespace A102681

/-- `A316869(A222254(n))+A316869(n)` -/
def P2553477429719419741.Spec : Prop :=
  ∀ n, P2553477429719419741.a n = A102681 n

end A102681

/-!
# A102682: Number of digits >= 8 in the decimal representations of all integers from 0 to n.

The programs for A102682, the canonical program `A102682.P14000101664436532519` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102682 has offset 0).

The definition of A102682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102682.P16835728320979927346

`∑[∑{digits}[n, and(8, #)/8]]`
-/

namespace A102682.P16835728320979927346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P16835728320979927346

namespace A102682

/-- `∑[∑{digits}[n, and(8, #)/8]]` -/
def P16835728320979927346.Spec : Prop :=
  ∀ n, P16835728320979927346.a n = (A102682 n : ℚ)

end A102682

/-! ## A102682.P14000101664436532519

`∑[∑{digits}[n, C(and(8, #), 8)]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102682

/-- `∑[∑{digits}[n, C(and(8, #), 8)]]` -/
def P14000101664436532519.Spec : Prop :=
  ∀ n, (P14000101664436532519.a n : ℤ) = A102682 n

theorem P14000101664436532519.correct : P14000101664436532519.Spec := by
  intro n
  simp only [A102682]

end A102682

/-! ## A102682.P317091644053711417

`∑[A102681(n)]`
-/

namespace A102682.P317091644053711417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P317091644053711417

namespace A102682

/-- `∑[A102681(n)]` -/
def P317091644053711417.Spec : Prop :=
  ∀ n, P317091644053711417.a n = A102682 n

end A102682

/-! ## A102682.P8096770346753868821

`∑[∑{digits}[n, A161097(#+1)]]`
-/

namespace A102682.P8096770346753868821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A161097 (x + 1)).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P8096770346753868821

namespace A102682

/-- `∑[∑{digits}[n, A161097(#+1)]]` -/
def P8096770346753868821.Spec : Prop :=
  ∀ n, P8096770346753868821.a n = A102682 n

end A102682

/-! ## A102682.P1181745689069295233

`∑[A102679(A004182(n))]`
-/

namespace A102682.P1181745689069295233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A004182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P1181745689069295233

namespace A102682

/-- `∑[A102679(A004182(n))]` -/
def P1181745689069295233.Spec : Prop :=
  ∀ n, P1181745689069295233.a n = A102682 n

end A102682

/-! ## A102682.P11346338064866578773

`∑[A102673(A106747(n))]`
-/

namespace A102682.P11346338064866578773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A106747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P11346338064866578773

namespace A102682

/-- `∑[A102673(A106747(n))]` -/
def P11346338064866578773.Spec : Prop :=
  ∀ n, P11346338064866578773.a n = A102682 n

end A102682

/-! ## A102682.P6882808248708310930

`∑[A316869(n)+A102683(n)]`
-/

namespace A102682.P6882808248708310930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n + A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P6882808248708310930

namespace A102682

/-- `∑[A316869(n)+A102683(n)]` -/
def P6882808248708310930.Spec : Prop :=
  ∀ n, P6882808248708310930.a n = A102682 n

end A102682

/-! ## A102682.P15115418006879568359

`∑[∑{digits}[n, A103609(A009641(#))]]`
-/

namespace A102682.P15115418006879568359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A103609 (A009641 x).toNat).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P15115418006879568359

namespace A102682

/-- `∑[∑{digits}[n, A103609(A009641(#))]]` -/
def P15115418006879568359.Spec : Prop :=
  ∀ n, P15115418006879568359.a n = A102682 n

end A102682

/-! ## A102682.P13258360476795515593

`∑[∑{digits}[n, A277152(A004182(#))]]`
-/

namespace A102682.P13258360476795515593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A277152 (A004182 x).toNat).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P13258360476795515593

namespace A102682

/-- `∑[∑{digits}[n, A277152(A004182(#))]]` -/
def P13258360476795515593.Spec : Prop :=
  ∀ n, P13258360476795515593.a n = A102682 n

end A102682

/-! ## A102682.P6779190074919163731

`∑[A316869(n)^A066308(n+1)]`
-/

namespace A102682.P6779190074919163731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316869 n : ℚ) ^ (A066308 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102682.P6779190074919163731

namespace A102682

/-- `∑[A316869(n)^A066308(n+1)]` -/
def P6779190074919163731.Spec : Prop :=
  ∀ n, P6779190074919163731.a n = (A102682 n : ℚ)

end A102682

/-!
# A102683: Number of digits 9 in decimal representation of n.

The programs for A102683, the canonical program `A102683.P15481255346739621049` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102683 has offset 0).

The definition of A102683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102683.P15481255346739621049

`∑{digits}[n, C(#, 9)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102683

/-- `∑{digits}[n, C(#, 9)]` -/
def P15481255346739621049.Spec : Prop :=
  ∀ n, (P15481255346739621049.a n : ℤ) = A102683 n

theorem P15481255346739621049.correct : P15481255346739621049.Spec := by
  intro n
  simp only [A102683]

end A102683

/-! ## A102683.P9104338777331044234

`∑{digits}[n, floor(#/9)]`
-/

namespace A102683.P9104338777331044234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 9⌋).sum

end

end A102683.P9104338777331044234

namespace A102683

/-- `∑{digits}[n, floor(#/9)]` -/
def P9104338777331044234.Spec : Prop :=
  ∀ n, P9104338777331044234.a n = A102683 n

end A102683

/-! ## A102683.P641730985493018940

`round(∑{digits}[n, 9^(#-9)])`
-/

namespace A102683.P641730985493018940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (9 : ℚ) ^ ((x : ℤ) - 9 : ℤ)).sum

end

end A102683.P641730985493018940

namespace A102683

/-- `round(∑{digits}[n, 9^(#-9)])` -/
def P641730985493018940.Spec : Prop :=
  ∀ n, P641730985493018940.a n = A102683 n

end A102683

/-! ## A102683.P6352381048511153342

`A102681(A004183(n))`
-/

namespace A102683.P6352381048511153342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A004183 n).toNat

end

end A102683.P6352381048511153342

namespace A102683

/-- `A102681(A004183(n))` -/
def P6352381048511153342.Spec : Prop :=
  ∀ n, P6352381048511153342.a n = A102683 n

end A102683

/-! ## A102683.P3419024744437619993

`A102681(A235049(n))`
-/

namespace A102683.P3419024744437619993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A235049 n).toNat

end

end A102683.P3419024744437619993

namespace A102683

/-- `A102681(A235049(n))` -/
def P3419024744437619993.Spec : Prop :=
  ∀ n, P3419024744437619993.a n = A102683 n

end A102683

/-! ## A102683.P4183258208774854483

`A316864(A064770(n))`
-/

namespace A102683.P4183258208774854483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A064770 n).toNat

end

end A102683.P4183258208774854483

namespace A102683

/-- `A316864(A064770(n))` -/
def P4183258208774854483.Spec : Prop :=
  ∀ n, P4183258208774854483.a n = A102683 n

end A102683

/-! ## A102683.P5636445820429305839

`A316869(A222254(n))`
-/

namespace A102683.P5636445820429305839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A222254 n).toNat

end

end A102683.P5636445820429305839

namespace A102683

/-- `A316869(A222254(n))` -/
def P5636445820429305839.Spec : Prop :=
  ∀ n, P5636445820429305839.a n = A102683 n

end A102683

/-! ## A102683.P17369525874989604953

`A102681(3*A064770(n))`
-/

namespace A102683.P17369525874989604953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (3 * A064770 n).toNat

end

end A102683.P17369525874989604953

namespace A102683

/-- `A102681(3*A064770(n))` -/
def P17369525874989604953.Spec : Prop :=
  ∀ n, P17369525874989604953.a n = A102683 n

end A102683

/-! ## A102683.P1500113889212959627

`A006942(n)-A277116(n)`
-/

namespace A102683.P1500113889212959627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A277116 n

end

end A102683.P1500113889212959627

namespace A102683

/-- `A006942(n)-A277116(n)` -/
def P1500113889212959627.Spec : Prop :=
  ∀ n, P1500113889212959627.a n = A102683 n

theorem P1500113889212959627.correct : P1500113889212959627.Spec := by
  intro n
  simp only [A102683, Nat.add_sub_cancel, A102683.P1500113889212959627.a, A102683.P15481255346739621049.f1, A102683.P15481255346739621049.a, A006942, A006942.P5821546574884217156.a, A277116, A277116.P17367549874121161640.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102683

/-! ## A102683.P13858161380074372216

`log2(∏{digits}[n, A007318(A007318(#+2))])`
-/

namespace A102683.P13858161380074372216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 (x + 2)).toNat).prod : ℤ) : ℝ)

end

end A102683.P13858161380074372216

namespace A102683

/-- `log2(∏{digits}[n, A007318(A007318(#+2))])` -/
def P13858161380074372216.Spec : Prop :=
  ∀ n, P13858161380074372216.a n = (A102683 n : ℝ)

end A102683

/-! ## A102683.P1564017171297682370

`A102679(n)-A102679(A004184(n))`
-/

namespace A102683.P1564017171297682370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n - A102679 (A004184 n).toNat

end

end A102683.P1564017171297682370

namespace A102683

/-- `A102679(n)-A102679(A004184(n))` -/
def P1564017171297682370.Spec : Prop :=
  ∀ n, P1564017171297682370.a n = A102683 n

end A102683

/-! ## A102683.P12597202634487003529

`A001222(∏{digits}[n, A007318(A007318(#+2))])`
-/

namespace A102683.P12597202634487003529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 (x + 2)).toNat).prod.toNat

end

end A102683.P12597202634487003529

namespace A102683

/-- `A001222(∏{digits}[n, A007318(A007318(#+2))])` -/
def P12597202634487003529.Spec : Prop :=
  ∀ n, P12597202634487003529.a n = A102683 n

end A102683

/-!
# A102684: Number of times the digit 9 appears in the decimal representations of all integers from 0 to n.

The programs for A102684, the canonical program `A102684.P13654992812489336575` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102684 has offset 0).

The definition of A102684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102684.P13654992812489336575

`∑[∑{digits}[n, C(#, 9)]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102684

/-- `∑[∑{digits}[n, C(#, 9)]]` -/
def P13654992812489336575.Spec : Prop :=
  ∀ n, (P13654992812489336575.a n : ℤ) = A102684 n

theorem P13654992812489336575.correct : P13654992812489336575.Spec := by
  intro n
  simp only [A102684]

end A102684

/-! ## A102684.P5127979903256116274

`∑[A102683(n)]`
-/

namespace A102684.P5127979903256116274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P5127979903256116274

namespace A102684

/-- `∑[A102683(n)]` -/
def P5127979903256116274.Spec : Prop :=
  ∀ n, P5127979903256116274.a n = A102684 n

theorem P5127979903256116274.correct : P5127979903256116274.Spec := by
  intro n
  simp only [A102684, Nat.add_sub_cancel, A102684.P5127979903256116274.f1, A102684.P5127979903256116274.a, A102684.P13654992812489336575.f2, A102684.P13654992812489336575.f1, A102684.P13654992812489336575.a, A102683, A102683.P15481255346739621049.f1, A102683.P15481255346739621049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102684

/-! ## A102684.P3402823633644206217

`∑[∑{digits}[n, A025462(#)]]`
-/

namespace A102684.P3402823633644206217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A025462 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P3402823633644206217

namespace A102684

/-- `∑[∑{digits}[n, A025462(#)]]` -/
def P3402823633644206217.Spec : Prop :=
  ∀ n, P3402823633644206217.a n = A102684 n

end A102684

/-! ## A102684.P16170962044778351858

`∑[A316869(A222254(n))]`
-/

namespace A102684.P16170962044778351858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A222254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P16170962044778351858

namespace A102684

/-- `∑[A316869(A222254(n))]` -/
def P16170962044778351858.Spec : Prop :=
  ∀ n, P16170962044778351858.a n = A102684 n

end A102684

/-! ## A102684.P3598809325717912107

`∑[A010371(n)-A074458(n)]`
-/

namespace A102684.P3598809325717912107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A074458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P3598809325717912107

namespace A102684

/-- `∑[A010371(n)-A074458(n)]` -/
def P3598809325717912107.Spec : Prop :=
  ∀ n, P3598809325717912107.a n = A102684 n

end A102684

/-! ## A102684.P14716727605386982517

`∑[A006942(n)-A277116(n)]`
-/

namespace A102684.P14716727605386982517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A277116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P14716727605386982517

namespace A102684

/-- `∑[A006942(n)-A277116(n)]` -/
def P14716727605386982517.Spec : Prop :=
  ∀ n, P14716727605386982517.a n = A102684 n

theorem P14716727605386982517.correct : P14716727605386982517.Spec := by
  intro n
  simp only [A102684, Nat.add_sub_cancel, A102684.P14716727605386982517.f1, A102684.P14716727605386982517.a, A102684.P13654992812489336575.f2, A102684.P13654992812489336575.f1, A102684.P13654992812489336575.a, A006942, A006942.P5821546574884217156.a, A277116, A277116.P17367549874121161640.a, A102683, A102683.P15481255346739621049.f1, A102683.P15481255346739621049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102684

/-! ## A102684.P13306120447186249575

`∑[∑{digits}[n, A002264(A002264(#))]]`
-/

namespace A102684.P13306120447186249575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A002264 (A002264 x).toNat).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P13306120447186249575

namespace A102684

/-- `∑[∑{digits}[n, A002264(A002264(#))]]` -/
def P13306120447186249575.Spec : Prop :=
  ∀ n, P13306120447186249575.a n = A102684 n

end A102684

/-! ## A102684.P6945082471703549857

`∑[∑{digits}[n, A014081(A080018(#))]]`
-/

namespace A102684.P6945082471703549857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A014081 (A080018 x).toNat).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P6945082471703549857

namespace A102684

/-- `∑[∑{digits}[n, A014081(A080018(#))]]` -/
def P6945082471703549857.Spec : Prop :=
  ∀ n, P6945082471703549857.a n = A102684 n

end A102684

/-! ## A102684.P12374933901356689801

`∑[∑{digits}[n, A130520(A130520(#))]]`
-/

namespace A102684.P12374933901356689801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A130520 (A130520 x).toNat).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P12374933901356689801

namespace A102684

/-- `∑[∑{digits}[n, A130520(A130520(#))]]` -/
def P12374933901356689801.Spec : Prop :=
  ∀ n, P12374933901356689801.a n = A102684 n

end A102684

/-! ## A102684.P13148312797490605905

`(A102683(n)+a(n-1))%A024166(n)` with `a(0)=0`
-/

namespace A102684.P13148312797490605905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A102683 n + a (n - 1)) (A024166 n)

end

end A102684.P13148312797490605905

namespace A102684

/-- `(A102683(n)+a(n-1))%A024166(n)` -/
def P13148312797490605905.Spec : Prop :=
  ∀ n, P13148312797490605905.a n = A102684 n

end A102684

/-! ## A102684.P2161500708088640873

`∑[A100910(A017281(n)+8)]`
-/

namespace A102684.P2161500708088640873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017281 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102684.P2161500708088640873

namespace A102684

/-- `∑[A100910(A017281(n)+8)]` -/
def P2161500708088640873.Spec : Prop :=
  ∀ n, P2161500708088640873.a n = A102684 n

end A102684

/-!
# A102685: Partial sums of A055640.

The programs for A102685, the canonical program `A102685.P16479452265008472786` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102685 has offset 0).

The definition of A102685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102685.P11066134993443274829

`∑[∑{digits}[n, round(atan(#))]]`
-/

namespace A102685.P11066134993443274829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.arctan (x : ℝ))).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P11066134993443274829

namespace A102685

/-- `∑[∑{digits}[n, round(atan(#))]]` -/
def P11066134993443274829.Spec : Prop :=
  ∀ n, P11066134993443274829.a n = A102685 n

end A102685

/-! ## A102685.P718602833238073545

`∑[∑{digits}[n, ceil(tanh(#))]]`
-/

namespace A102685.P718602833238073545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌈Real.tanh (x : ℝ)⌉).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P718602833238073545

namespace A102685

/-- `∑[∑{digits}[n, ceil(tanh(#))]]` -/
def P718602833238073545.Spec : Prop :=
  ∀ n, P718602833238073545.a n = A102685 n

end A102685

/-! ## A102685.P15880934243461857916

`∑[∑{digits}[n, round(tanh(#))]]`
-/

namespace A102685.P15880934243461857916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.tanh (x : ℝ))).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P15880934243461857916

namespace A102685

/-- `∑[∑{digits}[n, round(tanh(#))]]` -/
def P15880934243461857916.Spec : Prop :=
  ∀ n, P15880934243461857916.a n = A102685 n

end A102685

/-! ## A102685.P16479452265008472786

`∑[∑{digits}[n, ceil(#/9)]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102685

/-- `∑[∑{digits}[n, ceil(#/9)]]` -/
def P16479452265008472786.Spec : Prop :=
  ∀ n, P16479452265008472786.a n = A102685 n

theorem P16479452265008472786.correct : P16479452265008472786.Spec := by
  intro n
  simp only [A102685]

end A102685

/-! ## A102685.P17600018462025957983

`∑[A055640(n)]`
-/

namespace A102685.P17600018462025957983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P17600018462025957983

namespace A102685

/-- `∑[A055640(n)]` -/
def P17600018462025957983.Spec : Prop :=
  ∀ n, P17600018462025957983.a n = A102685 n

end A102685

/-! ## A102685.P14346711081588728083

`∑[dr(A136400(n))]`
-/

namespace A102685.P14346711081588728083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A136400 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P14346711081588728083

namespace A102685

/-- `∑[dr(A136400(n))]` -/
def P14346711081588728083.Spec : Prop :=
  ∀ n, (P14346711081588728083.a n : ℤ) = A102685 n

end A102685

/-! ## A102685.P16808889924389781126

`∑[dr(n-A235049(n))]`
-/

namespace A102685.P16808889924389781126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n : ℤ) - A235049 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P16808889924389781126

namespace A102685

/-- `∑[dr(n-A235049(n))]` -/
def P16808889924389781126.Spec : Prop :=
  ∀ n, (P16808889924389781126.a n : ℤ) = A102685 n

end A102685

/-! ## A102685.P8155904489152699051

`∑[dr(A064770(A064770(n)))]`
-/

namespace A102685.P8155904489152699051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A064770 (A064770 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P8155904489152699051

namespace A102685

/-- `∑[dr(A064770(A064770(n)))]` -/
def P8155904489152699051.Spec : Prop :=
  ∀ n, (P8155904489152699051.a n : ℤ) = A102685 n

end A102685

/-! ## A102685.P4979911367372054080

`∑[A102669(2*A064770(n))]`
-/

namespace A102685.P4979911367372054080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * A064770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P4979911367372054080

namespace A102685

/-- `∑[A102669(2*A064770(n))]` -/
def P4979911367372054080.Spec : Prop :=
  ∀ n, P4979911367372054080.a n = A102685 n

end A102685

/-! ## A102685.P11923580190423512380

`∑[A055642(n)-A055641(n)]`
-/

namespace A102685.P11923580190423512380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P11923580190423512380

namespace A102685

/-- `∑[A055642(n)-A055641(n)]` -/
def P11923580190423512380.Spec : Prop :=
  ∀ n, P11923580190423512380.a n = A102685 n

end A102685

/-! ## A102685.P7063606479253048941

`∑[A007953(n-A235049(n))]`
-/

namespace A102685.P7063606479253048941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) - A235049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P7063606479253048941

namespace A102685

/-- `∑[A007953(n-A235049(n))]` -/
def P7063606479253048941.Spec : Prop :=
  ∀ n, P7063606479253048941.a n = A102685 n

end A102685

/-! ## A102685.P17701038424635046202

`∑[A001222(∏{digits}[n, A048380(#)])]`
-/

namespace A102685.P17701038424635046202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A048380 x).prod.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P17701038424635046202

namespace A102685

/-- `∑[A001222(∏{digits}[n, A048380(#)])]` -/
def P17701038424635046202.Spec : Prop :=
  ∀ n, P17701038424635046202.a n = A102685 n

end A102685

/-! ## A102685.P9721625737523908138

`∑[A001222(A113581(n))]`
-/

namespace A102685.P9721625737523908138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A113581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102685.P9721625737523908138

namespace A102685

/-- `∑[A001222(A113581(n))]` -/
def P9721625737523908138.Spec : Prop :=
  ∀ n, P9721625737523908138.a n = A102685 n

end A102685

/-! ## A102685.P250257491665720337

`∑[A098378(n+1)]-A098378(n+1)`
-/

namespace A102685.P250257491665720337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098378 (n + 1)

end

end A102685.P250257491665720337

namespace A102685

/-- `∑[A098378(n+1)]-A098378(n+1)` -/
def P250257491665720337.Spec : Prop :=
  ∀ n, P250257491665720337.a n = A102685 n

end A102685

/-! ## A102685.P2712609771175470758

`∑[A084677(n²)]-n`
-/

namespace A102685.P2712609771175470758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084677 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A102685.P2712609771175470758

namespace A102685

/-- `∑[A084677(n²)]-n` -/
def P2712609771175470758.Spec : Prop :=
  ∀ n, P2712609771175470758.a n = A102685 n

end A102685

/-!
# A102686: Numbers k such that 11*k + 3 is prime, k >= 0.

The programs for A102686, the canonical program `A102686.P3139443971602561214` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102686 has offset 1).

The definition of A102686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7814 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102686.P3139443971602561214

`floor(p?[a(n-1)+11]/11)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102686

/-- `floor(p?[a(n-1)+11]/11)` -/
def P3139443971602561214.Spec : Prop :=
  ∀ n, P3139443971602561214.a n = A102686 (n + 1)

theorem P3139443971602561214.correct : P3139443971602561214.Spec := by
  intro n
  simp only [A102686, Nat.add_sub_cancel]

end A102686

/-! ## A102686.P4210996629025065141

`round(p?[a(n-1)+11]/11)` with `a(0)=3`
-/

namespace A102686.P4210996629025065141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11)

end

end A102686.P4210996629025065141

namespace A102686

/-- `round(p?[a(n-1)+11]/11)` -/
def P4210996629025065141.Spec : Prop :=
  ∀ n, P4210996629025065141.a n = A102686 (n + 1)

end A102686

/-! ## A102686.P16973809377117187633

`ceil(p?[a(n-1)+11]/11)-1` with `a(0)=6, a(1)=3`
-/

namespace A102686.P16973809377117187633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 3] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉ - 1

end

end A102686.P16973809377117187633

namespace A102686

/-- `ceil(p?[a(n-1)+11]/11)-1` -/
def P16973809377117187633.Spec : Prop :=
  ∀ n, P16973809377117187633.a n = A102686 (n + 1)

end A102686

/-! ## A102686.P6526140751113816947

`eq[1, A001222(11*n+3)]`
-/

namespace A102686.P6526140751113816947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102686.P6526140751113816947

namespace A102686

/-- `eq[1, A001222(11*n+3)]` -/
def P6526140751113816947.Spec : Prop :=
  ∀ n, (P6526140751113816947.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P14018891298342741982

`eq[2, A000005(11*n+3)]`
-/

namespace A102686.P14018891298342741982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102686.P14018891298342741982

namespace A102686

/-- `eq[2, A000005(11*n+3)]` -/
def P14018891298342741982.Spec : Prop :=
  ∀ n, (P14018891298342741982.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P3157833173225685384

`lt[A001222(10*n+n+3)+1, 3]`
-/

namespace A102686.P3157833173225685384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + (n + 3)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102686.P3157833173225685384

namespace A102686

/-- `lt[A001222(10*n+n+3)+1, 3]` -/
def P3157833173225685384.Spec : Prop :=
  ∀ n, (P3157833173225685384.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P4263722860696007679

`lt[3*n+1, A020639(11*n+3)]`
-/

namespace A102686.P4263722860696007679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102686.P4263722860696007679

namespace A102686

/-- `lt[3*n+1, A020639(11*n+3)]` -/
def P4263722860696007679.Spec : Prop :=
  ∀ n, (P4263722860696007679.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P15071245753627071933

`lt[A000005(5*(2*n+1)+n-2), 3]`
-/

namespace A102686.P15071245753627071933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((5 * (2 * n + 1) : ℤ) + ((n : ℤ) - 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102686.P15071245753627071933

namespace A102686

/-- `lt[A000005(5*(2*n+1)+n-2), 3]` -/
def P15071245753627071933.Spec : Prop :=
  ∀ n, (P15071245753627071933.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P6374504381973500328

`eq[1, A010051(A017413(n)+1)]`
-/

namespace A102686.P6374504381973500328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A017413 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102686.P6374504381973500328

namespace A102686

/-- `eq[1, A010051(A017413(n)+1)]` -/
def P6374504381973500328.Spec : Prop :=
  ∀ n, (P6374504381973500328.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P8342988666745975895

`eq[A000010(A017413(n)+1), A017413(n)]`
-/

namespace A102686.P8342988666745975895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017413 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102686.P8342988666745975895

namespace A102686

/-- `eq[A000010(A017413(n)+1), A017413(n)]` -/
def P8342988666745975895.Spec : Prop :=
  ∀ n, (P8342988666745975895.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P12573634305952771567

`eq[A000203(A017437(n)-1), A017437(n)]`
-/

namespace A102686.P12573634305952771567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017437 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102686.P12573634305952771567

namespace A102686

/-- `eq[A000203(A017437(n)-1), A017437(n)]` -/
def P12573634305952771567.Spec : Prop :=
  ∀ n, (P12573634305952771567.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P16598057004567723285

`lt[A017401(n), A000010(A017401(n)+2)]`
-/

namespace A102686.P16598057004567723285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017401 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102686.P16598057004567723285

namespace A102686

/-- `lt[A017401(n), A000010(A017401(n)+2)]` -/
def P16598057004567723285.Spec : Prop :=
  ∀ n, (P16598057004567723285.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P3139485625498461054

`lt[A000203(A017437(n)-1), A017461(n)]`
-/

namespace A102686.P3139485625498461054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017437 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102686.P3139485625498461054

namespace A102686

/-- `lt[A000203(A017437(n)-1), A017461(n)]` -/
def P3139485625498461054.Spec : Prop :=
  ∀ n, (P3139485625498461054.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P17695961862207543450

`lt[A008593(n), A000010(A017449(n)-2)]`
-/

namespace A102686.P17695961862207543450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102686.P17695961862207543450

namespace A102686

/-- `lt[A008593(n), A000010(A017449(n)-2)]` -/
def P17695961862207543450.Spec : Prop :=
  ∀ n, (P17695961862207543450.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P12498183586288795990

`lt[A017401(n), A000010(A017449(n)-2)]`
-/

namespace A102686.P12498183586288795990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102686.P12498183586288795990

namespace A102686

/-- `lt[A017401(n), A000010(A017449(n)-2)]` -/
def P12498183586288795990.Spec : Prop :=
  ∀ n, (P12498183586288795990.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P3444612593346045321

`lt[3*n, A014963(11*n+3)]`
-/

namespace A102686.P3444612593346045321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (11 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102686.P3444612593346045321

namespace A102686

/-- `lt[3*n, A014963(11*n+3)]` -/
def P3444612593346045321.Spec : Prop :=
  ∀ n, (P3444612593346045321.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P7616962833263185513

`A079483(A141850(n+1))`
-/

namespace A102686.P7616962833263185513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079483 (A141850 (n + 1)).toNat

end

end A102686.P7616962833263185513

namespace A102686

/-- `A079483(A141850(n+1))` -/
def P7616962833263185513.Spec : Prop :=
  ∀ n, P7616962833263185513.a n = A102686 (n + 1)

end A102686

/-! ## A102686.P746133999596898994

`A262115(p?[A017413(n)+1])`
-/

namespace A102686.P746133999596898994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102686.P746133999596898994

namespace A102686

/-- `A262115(p?[A017413(n)+1])` -/
def P746133999596898994.Spec : Prop :=
  ∀ n, P746133999596898994.a n = A102686 (n + 1)

end A102686

/-! ## A102686.P10595129097091373790

`eq[1, A032742(A017413(n)+1)]`
-/

namespace A102686.P10595129097091373790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A017413 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102686.P10595129097091373790

namespace A102686

/-- `eq[1, A032742(A017413(n)+1)]` -/
def P10595129097091373790.Spec : Prop :=
  ∀ n, (P10595129097091373790.a n : ℤ) = A102686 (n + 1)

end A102686

/-! ## A102686.P17568627196614951170

`eq[1, A246277(A017437(n)-1)]`
-/

namespace A102686.P17568627196614951170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A017437 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102686.P17568627196614951170

namespace A102686

/-- `eq[1, A246277(A017437(n)-1)]` -/
def P17568627196614951170.Spec : Prop :=
  ∀ n, (P17568627196614951170.a n : ℤ) = A102686 (n + 1)

end A102686

/-!
# A102687: Number of different squares of labeled mappings of a finite set of n elements into itself.

The programs for A102687, there is no canonical definition to state claims against.
-/

/-! ## A102687.P16318640697267358618

`A247026(∑[n+3])`
-/

namespace A102687.P16318640697267358618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102687.P16318640697267358618

/-! ## A102687.P2879767457050788746

`A247026(A141214(n))+char[10]`
-/

namespace A102687.P2879767457050788746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A102687.P2879767457050788746

/-! ## A102687.P8808124577810452723

`A291115(n)+A247026(A141214(n))`
-/

namespace A102687.P8808124577810452723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291115 n + A247026 (A141214 n).toNat

end

end A102687.P8808124577810452723

/-! ## A102687.P7548254218941401484

`A326523(n)+A247026(A141214(n))`
-/

namespace A102687.P7548254218941401484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n + A247026 (A141214 n).toNat

end

end A102687.P7548254218941401484

/-! ## A102687.P7532953006478278134

`A043568(n)*A247026(A141214(n))`
-/

namespace A102687.P7532953006478278134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A247026 (A141214 n).toNat

end

end A102687.P7532953006478278134

/-!
# A102688: a(n) = (1/n)*Sum_{k=1..n} k*2^gcd(n,k).

The programs for A102688, the canonical program `A102688.P13779856742604042101` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102688 has offset 1).

The definition of A102688 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102688.P13779856742604042101

`(A000079(n+1)+(n+1)*A000031(n+1))/2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102688

/-- `(A000079(n+1)+(n+1)*A000031(n+1))/2` -/
def P13779856742604042101.Spec : Prop :=
  ∀ n, P13779856742604042101.a n = (A102688 (n + 1) : ℚ)

end A102688

/-! ## A102688.P16404085220619821589

`A034738(n+1)+2^n`
-/

namespace A102688.P16404085220619821589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034738 (n + 1) + (2 ^ n : ℤ)

end

end A102688.P16404085220619821589

namespace A102688

/-- `A034738(n+1)+2^n` -/
def P16404085220619821589.Spec : Prop :=
  ∀ n, P16404085220619821589.a n = A102688 (n + 1)

end A102688

/-! ## A102688.P17729257076480842513

`2^n+A053635(n+1)/2`
-/

namespace A102688.P17729257076480842513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (A053635 (n + 1) : ℚ) / 2

end

end A102688.P17729257076480842513

namespace A102688

/-- `2^n+A053635(n+1)/2` -/
def P17729257076480842513.Spec : Prop :=
  ∀ n, P17729257076480842513.a n = (A102688 (n + 1) : ℚ)

end A102688

/-! ## A102688.P12873832892613671657

`2^n+(n+1)/2*A000031(n+1)`
-/

namespace A102688.P12873832892613671657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (n + 1 : ℚ) / 2 * (A000031 (n + 1) : ℚ)

end

end A102688.P12873832892613671657

namespace A102688

/-- `2^n+(n+1)/2*A000031(n+1)` -/
def P12873832892613671657.Spec : Prop :=
  ∀ n, P12873832892613671657.a n = (A102688 (n + 1) : ℚ)

end A102688

/-! ## A102688.P11347225774002785824

`2^n+(n+1)*(A008965(n+1)+1)/2`
-/

namespace A102688.P11347225774002785824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (n + 1 : ℚ) * ((A008965 (n + 1) + 1 : ℚ) / 2)

end

end A102688.P11347225774002785824

namespace A102688

/-- `2^n+(n+1)*(A008965(n+1)+1)/2` -/
def P11347225774002785824.Spec : Prop :=
  ∀ n, P11347225774002785824.a n = (A102688 (n + 1) : ℚ)

end A102688

/-! ## A102688.P12813367237341236335

`∑{d}[n+1, A000740(#)*A020725((n+1)/#)]`
-/

namespace A102688.P12813367237341236335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A020725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A102688.P12813367237341236335

namespace A102688

/-- `∑{d}[n+1, A000740(#)*A020725((n+1)/#)]` -/
def P12813367237341236335.Spec : Prop :=
  ∀ n, P12813367237341236335.a n = A102688 (n + 1)

end A102688

/-! ## A102688.P13696002044050651903

`∑{d}[n+1, A007503(#)*A296302((n+1)/#)]`
-/

namespace A102688.P13696002044050651903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007503 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A102688.P13696002044050651903

namespace A102688

/-- `∑{d}[n+1, A007503(#)*A296302((n+1)/#)]` -/
def P13696002044050651903.Spec : Prop :=
  ∀ n, P13696002044050651903.a n = A102688 (n + 1)

end A102688

/-! ## A102688.P2077487107597745698

`A000225(n+1)+A034738(n+1)-A000225(n)`
-/

namespace A102688.P2077487107597745698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A034738 (n + 1) - A000225 n)

end

end A102688.P2077487107597745698

namespace A102688

/-- `A000225(n+1)+A034738(n+1)-A000225(n)` -/
def P2077487107597745698.Spec : Prop :=
  ∀ n, P2077487107597745698.a n = A102688 (n + 1)

end A102688

/-! ## A102688.P5051981957738231589

`2^n+A160619(n+1)/4`
-/

namespace A102688.P5051981957738231589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (A160619 (n + 1) : ℚ) / 4

end

end A102688.P5051981957738231589

namespace A102688

/-- `2^n+A160619(n+1)/4` -/
def P5051981957738231589.Spec : Prop :=
  ∀ n, P5051981957738231589.a n = (A102688 (n + 1) : ℚ)

end A102688

/-! ## A102688.P16175827156125864278

`xor(A007283(n), A034738(n+1))`
-/

namespace A102688.P16175827156125864278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A034738 (n + 1))

end

end A102688.P16175827156125864278

namespace A102688

/-- `xor(A007283(n), A034738(n+1))` -/
def P16175827156125864278.Spec : Prop :=
  ∀ n, P16175827156125864278.a n = A102688 (n + 1)

end A102688

/-!
# A102689: a(n) = 10000*n + 2468.

The programs for A102689, the canonical program `A102689.P17299837537175666882` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102689 has offset 0).

The definition of A102689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102689.P17299837537175666882

`4*A045803(A053742(2*n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102689

/-- `4*A045803(A053742(2*n))` -/
def P17299837537175666882.Spec : Prop :=
  ∀ n, P17299837537175666882.a n = A102689 n

theorem P17299837537175666882.correct : P17299837537175666882.Spec := by
  intro n
  simp only [A102689]

end A102689

/-!
# A102692: a(n) = number of digraphs (allowing loops) with vertices 1,2,...,n that have a unique Eulerian tour (up to cyclic shift).

The programs for A102692, there is no canonical definition to state claims against.
-/

/-! ## A102692.P17398490398856228426

`A004277(A276852(n)*A297200(n))`
-/

namespace A102692.P17398490398856228426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A276852 n * A297200 n).toNat

end

end A102692.P17398490398856228426

/-!
# A102693: a(n) is the number of digraphs (not allowing loops) with vertices 1,2,...,n that have a unique Eulerian tour (up to cyclic shift).

The programs for A102693, the canonical program `A102693.P8278738889318132967` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102693 has offset 2).

The definition of A102693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102693.P8278738889318132967

`1/2*A065866(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102693

/-- `1/2*A065866(n+1)` -/
def P8278738889318132967.Spec : Prop :=
  ∀ n, P8278738889318132967.a n = (A102693 (n + 2) : ℚ)

end A102693

/-! ## A102693.P12931988432275524283

`2*(n+1)*(2*(n+2)-1)*a(n-1)/(n+3)` with `a(0)=1`
-/

namespace A102693.P12931988432275524283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * (n + 1) : ℤ) * ((2 * (n + 2) : ℤ) - 1) : ℚ) * a (n - 1) / (n + 3 : ℚ)

end

end A102693.P12931988432275524283

namespace A102693

/-- `2*(n+1)*(2*(n+2)-1)*a(n-1)/(n+3)` -/
def P12931988432275524283.Spec : Prop :=
  ∀ n, P12931988432275524283.a n = (A102693 (n + 2) : ℚ)

end A102693

/-! ## A102693.P8340449228570189940

`n!*C(2*n+3, n)`
-/

namespace A102693.P8340449228570189940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (2 * n + 3) n

end

end A102693.P8340449228570189940

namespace A102693

/-- `n!*C(2*n+3, n)` -/
def P8340449228570189940.Spec : Prop :=
  ∀ n, (P8340449228570189940.a n : ℤ) = A102693 (n + 2)

end A102693

/-! ## A102693.P13116471314579236590

`A065866(n+1)/2`
-/

namespace A102693.P13116471314579236590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065866 (n + 1) : ℚ) / 2

end

end A102693.P13116471314579236590

namespace A102693

/-- `A065866(n+1)/2` -/
def P13116471314579236590.Spec : Prop :=
  ∀ n, P13116471314579236590.a n = (A102693 (n + 2) : ℚ)

end A102693

/-! ## A102693.P17096439958471302930

`A262034(2*n+3)`
-/

namespace A102693.P17096439958471302930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262034 (2 * n + 3)

end

end A102693.P17096439958471302930

namespace A102693

/-- `A262034(2*n+3)` -/
def P17096439958471302930.Spec : Prop :=
  ∀ n, P17096439958471302930.a n = A102693 (n + 2)

end A102693

/-! ## A102693.P3172136145549200422

`A110371(n+2)/4`
-/

namespace A102693.P3172136145549200422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110371 (n + 2) : ℚ) / 4

end

end A102693.P3172136145549200422

namespace A102693

/-- `A110371(n+2)/4` -/
def P3172136145549200422.Spec : Prop :=
  ∀ n, P3172136145549200422.a n = (A102693 (n + 2) : ℚ)

end A102693

/-! ## A102693.P10232621884663583503

`n!*A002054(n+1)`
-/

namespace A102693.P10232621884663583503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002054 (n + 1)

end

end A102693.P10232621884663583503

namespace A102693

/-- `n!*A002054(n+1)` -/
def P10232621884663583503.Spec : Prop :=
  ∀ n, P10232621884663583503.a n = A102693 (n + 2)

end A102693

/-! ## A102693.P6202640721612156622

`(n+1)!/2*A000108(n+2)`
-/

namespace A102693.P6202640721612156622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 2 * (A000108 (n + 2) : ℚ)

end

end A102693.P6202640721612156622

namespace A102693

/-- `(n+1)!/2*A000108(n+2)` -/
def P6202640721612156622.Spec : Prop :=
  ∀ n, P6202640721612156622.a n = (A102693 (n + 2) : ℚ)

end A102693

/-! ## A102693.P6107253102992230118

`(n+1)*ratio[A000108(n+1)]*a(n-1)` with `a(0)=1`
-/

namespace A102693.P6107253102992230118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * a (n - 1)

end

end A102693.P6107253102992230118

namespace A102693

/-- `(n+1)*ratio[A000108(n+1)]*a(n-1)` -/
def P6107253102992230118.Spec : Prop :=
  ∀ n, P6107253102992230118.a n = (A102693 (n + 2) : ℚ)

end A102693

/-! ## A102693.P8531137655621498985

`A000142(n)*A002054(n+1)`
-/

namespace A102693.P8531137655621498985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002054 (n + 1)

end

end A102693.P8531137655621498985

namespace A102693

/-- `A000142(n)*A002054(n+1)` -/
def P8531137655621498985.Spec : Prop :=
  ∀ n, P8531137655621498985.a n = A102693 (n + 2)

end A102693

/-!
# A102694: Take the n-th pair of consecutive digits of the sequence and form their absolute difference; the result is the n-th digit of the sequence; a(n) < a(n+1).

The programs for A102694, there is no canonical definition to state claims against.
-/

/-! ## A102694.P5892196710011768200

`A181776(∑[A181769(n)+1])+n`
-/

namespace A102694.P5892196710011768200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181769 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181776 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A102694.P5892196710011768200

/-! ## A102694.P13821680020230480385

`lcm(A193592(A291114(n)), A240555(n+1))`
-/

namespace A102694.P13821680020230480385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A193592 (A291114 n).toNat) (A240555 (n + 1))

end

end A102694.P13821680020230480385

/-! ## A102694.P5286420783952609231

`A005361(A243794(n+3))*A240555(n+1)`
-/

namespace A102694.P5286420783952609231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A243794 (n + 3)).toNat * A240555 (n + 1)

end

end A102694.P5286420783952609231

/-! ## A102694.P8699249179537699818

`lcm(A240555(A121939(n+1)), A351699(n+1))`
-/

namespace A102694.P8699249179537699818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A240555 (A121939 (n + 1)).toNat) (A351699 (n + 1))

end

end A102694.P8699249179537699818

/-! ## A102694.P12798043345479906843

`A240555(n+1)*A258789(A058343(2*(n+2)))`
-/

namespace A102694.P12798043345479906843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240555 (n + 1) * A258789 (A058343 (2 * (n + 2))).toNat

end

end A102694.P12798043345479906843

/-!
# A102695: Making the absolute difference between the last two digits of a(n) gives the n-t h digit of the sequence; a(n) < a(n+1).

The programs for A102695, there is no canonical definition to state claims against.
-/

/-! ## A102695.P15187931144042199104

`lt[8, A171937(A030533(n))]`
-/

namespace A102695.P15187931144042199104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (A030533 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102695.P15187931144042199104

/-! ## A102695.P2604186345022921563

`eq[A106848(n+1), A258034(A062705(n+1))]`
-/

namespace A102695.P2604186345022921563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258034 (A062705 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102695.P2604186345022921563

/-!
# A102696: Number of positive even integers that can be written as the sum of 2 of the first n odd primes (not necessarily distinct).

The programs for A102696, there is no canonical definition to state claims against.
-/

/-! ## A102696.P11262072173192105549

`∑[A255402(n+1)-1]`
-/

namespace A102696.P11262072173192105549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255402 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102696.P11262072173192105549

/-! ## A102696.P2633118466904361301

`A061781(n+2)-(n+2)`
-/

namespace A102696.P2633118466904361301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061781 (n + 2) - (n + 2 : ℤ)

end

end A102696.P2633118466904361301

/-! ## A102696.P13182620327660087357

`∑[n+1]-A061784(n+2)`
-/

namespace A102696.P13182620327660087357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A061784 (n + 2)

end

end A102696.P13182620327660087357

/-! ## A102696.P1856923187749459385

`A000124(n+1)-(A061784(n+2)+1)`
-/

namespace A102696.P1856923187749459385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) - (A061784 (n + 2) + 1)

end

end A102696.P1856923187749459385

/-! ## A102696.P16310593291285071850

`A006093(n+2)-(A334810(n+2)+1)`
-/

namespace A102696.P16310593291285071850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) - (A334810 (n + 2) + 1)

end

end A102696.P16310593291285071850

/-! ## A102696.P11540744082116945279

`A000040(n+2)-(A334810(n+2)+2)`
-/

namespace A102696.P11540744082116945279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (A334810 (n + 2) + 2)

end

end A102696.P11540744082116945279

/-! ## A102696.P17533176373743163987

`A065307(A040976(n+2))`
-/

namespace A102696.P17533176373743163987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065307 (A040976 (n + 2)).toNat

end

end A102696.P17533176373743163987

/-! ## A102696.P2674912033027149915

`A065307(A065091(n+1)-2)`
-/

namespace A102696.P2674912033027149915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065307 (A065091 (n + 1) - 2).toNat

end

end A102696.P2674912033027149915

/-! ## A102696.P10130782317229954761

`A065307(A000040(n+2)-2)`
-/

namespace A102696.P10130782317229954761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065307 (A000040 (n + 2) - 2).toNat

end

end A102696.P10130782317229954761

/-! ## A102696.P10281040954187704095

`∑[A105047(n+2)]`
-/

namespace A102696.P10281040954187704095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102696.P10281040954187704095

/-!
# A102697: Numbers n such that the period length P(n) of the Fibonacci sequence mod n is also a Fibonacci number.

The programs for A102697, there is no canonical definition to state claims against.
-/

/-! ## A102697.P9936044774250737028

`lt[A226080(A001175(n+1)), 2]+1`
-/

namespace A102697.P9936044774250737028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (A001175 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102697.P9936044774250737028

/-!
# A102698: Number of equilateral triangles with coordinates (x,y,z) in the set {0, 1,...,n}.

The programs for A102698, there is no canonical definition to state claims against.
-/

/-! ## A102698.P6943285236714330064

`8*A103501(n+1)`
-/

namespace A102698.P6943285236714330064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A103501 (n + 1)

end

end A102698.P6943285236714330064

/-! ## A102698.P10543966003704022743

`A338322(2*(n+2))/4`
-/

namespace A102698.P10543966003704022743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338322 (2 * (n + 2)) : ℚ) / 4

end

end A102698.P10543966003704022743

/-! ## A102698.P14966049605364617109

`A008590(A103501(n+1))`
-/

namespace A102698.P14966049605364617109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A103501 (n + 1)).toNat

end

end A102698.P14966049605364617109

/-! ## A102698.P2022665332402186229

`A022144(A103501(C(n+1, n)))`
-/

namespace A102698.P2022665332402186229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A103501 (Nat.choose (n + 1) n)).toNat

end

end A102698.P2022665332402186229

/-! ## A102698.P13724789027694963116

`A022144(A103501(n+1)+A054900(n))`
-/

namespace A102698.P13724789027694963116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A103501 (n + 1) + A054900 n).toNat

end

end A102698.P13724789027694963116

/-!
# A102699: Number of strings of length n, using as symbols numbers from the set {1, 2, ..., n}, in which consecutive symbols differ by exactly 1.

The programs for A102699, the canonical program `A102699.P1856221950307135282` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102699 has offset 0).

The definition of A102699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102699.P1856221950307135282

`A210736(n)+A206603(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102699

/-- `A210736(n)+A206603(n)` -/
def P1856221950307135282.Spec : Prop :=
  ∀ n, P1856221950307135282.a n = A102699 n

theorem P1856221950307135282.correct : P1856221950307135282.Spec := by
  intro n
  simp only [A102699]

end A102699

/-! ## A102699.P17225525147041083917

`A099326(n)-A305612(n)`
-/

namespace A102699.P17225525147041083917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - A305612 n

end

end A102699.P17225525147041083917

namespace A102699

/-- `A099326(n)-A305612(n)` -/
def P17225525147041083917.Spec : Prop :=
  ∀ n, P17225525147041083917.a n = A102699 n

end A102699

/-! ## A102699.P10604739463947525493

`A001787(n)+A099325(n)-A305612(n)`
-/

namespace A102699.P10604739463947525493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A099325 n - A305612 n)

end

end A102699.P10604739463947525493

namespace A102699

/-- `A001787(n)+A099325(n)-A305612(n)` -/
def P10604739463947525493.Spec : Prop :=
  ∀ n, P10604739463947525493.a n = A102699 n

end A102699

/-! ## A102699.P3440163830888508007

`A001792(n)+A189391(n)-A305612(n)`
-/

namespace A102699.P3440163830888508007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A189391 n - A305612 n)

end

end A102699.P3440163830888508007

namespace A102699

/-- `A001792(n)+A189391(n)-A305612(n)` -/
def P3440163830888508007.Spec : Prop :=
  ∀ n, P3440163830888508007.a n = A102699 n

end A102699

/-! ## A102699.P6359651122755255338

`A152548(n)+A206603(n)-A305612(n)`
-/

namespace A102699.P6359651122755255338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152548 n + (A206603 n - A305612 n)

end

end A102699.P6359651122755255338

namespace A102699

/-- `A152548(n)+A206603(n)-A305612(n)` -/
def P6359651122755255338.Spec : Prop :=
  ∀ n, P6359651122755255338.a n = A102699 n

theorem P6359651122755255338.correct : P6359651122755255338.Spec := by
  intro n
  simp only [A102699, Nat.add_sub_cancel, A102699.P6359651122755255338.a, A102699.P1856221950307135282.a, A152548, A152548.P1256914078301777679.a, A206603, A206603.P3063521816794991771.a, A210736, A210736.P1250447749793702526.a, A305612, A305612.P1112257045889294607.a, A001405, A001405.P5205018418992951678.a, A001787, A001787.P18099519164826187117.a, A063886, A063886.P2008880257839641201.a, A189391, A189391.P8056155733493856481.a, A099325, A099325.P1293649765398382915.a, A027306, A027306.P2966041652703629727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102699

/-! ## A102699.P15530957760849666764

`abs(A305612(n)-(A189391(n)+A049610(n+2)))`
-/

namespace A102699.P15530957760849666764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305612 n - (A189391 n + A049610 (n + 2))|

end

end A102699.P15530957760849666764

namespace A102699

/-- `abs(A305612(n)-(A189391(n)+A049610(n+2)))` -/
def P15530957760849666764.Spec : Prop :=
  ∀ n, P15530957760849666764.a n = A102699 n

end A102699

/-! ## A102699.P11037193309718717709

`A001787(n)+A152548(n)-A189391(n)-A305612(n)`
-/

namespace A102699.P11037193309718717709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A152548 n - A189391 n) - A305612 n

end

end A102699.P11037193309718717709

namespace A102699

/-- `A001787(n)+A152548(n)-A189391(n)-A305612(n)` -/
def P11037193309718717709.Spec : Prop :=
  ∀ n, P11037193309718717709.a n = A102699 n

theorem P11037193309718717709.correct : P11037193309718717709.Spec := by
  intro n
  simp only [A102699, Nat.add_sub_cancel, A102699.P11037193309718717709.a, A102699.P1856221950307135282.a, A001787, A001787.P18099519164826187117.a, A152548, A152548.P1256914078301777679.a, A189391, A189391.P8056155733493856481.a, A206603, A206603.P3063521816794991771.a, A210736, A210736.P1250447749793702526.a, A305612, A305612.P1112257045889294607.a, A001405, A001405.P5205018418992951678.a, A063886, A063886.P2008880257839641201.a, A099325, A099325.P1293649765398382915.a, A027306, A027306.P2966041652703629727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102699

/-! ## A102699.P13162930838194066827

`Δ[A001787(n)]+A189391(n)-A305612(n)`
-/

namespace A102699.P13162930838194066827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A189391 n - A305612 n)

end

end A102699.P13162930838194066827

namespace A102699

/-- `Δ[A001787(n)]+A189391(n)-A305612(n)` -/
def P13162930838194066827.Spec : Prop :=
  ∀ n, P13162930838194066827.a n = A102699 n

end A102699

/-! ## A102699.P7286945142402589096

`2*A001792(n)-A182555(n)-A305612(n)`
-/

namespace A102699.P7286945142402589096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001792 n - A182555 n - A305612 n

end

end A102699.P7286945142402589096

namespace A102699

/-- `2*A001792(n)-A182555(n)-A305612(n)` -/
def P7286945142402589096.Spec : Prop :=
  ∀ n, P7286945142402589096.a n = A102699 n

end A102699

/-! ## A102699.P2630743361121451582

`abs(A305612(n)-(A001787(n+1)-A206603(n)))`
-/

namespace A102699.P2630743361121451582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305612 n - (A001787 (n + 1) - A206603 n)|

end

end A102699.P2630743361121451582

namespace A102699

/-- `abs(A305612(n)-(A001787(n+1)-A206603(n)))` -/
def P2630743361121451582.Spec : Prop :=
  ∀ n, P2630743361121451582.a n = A102699 n

end A102699

/-! ## A102699.P5243369776111190226

`A206603(n)+A007318(A007590(n))`
-/

namespace A102699.P5243369776111190226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A007318 (A007590 n).toNat

end

end A102699.P5243369776111190226

namespace A102699

/-- `A206603(n)+A007318(A007590(n))` -/
def P5243369776111190226.Spec : Prop :=
  ∀ n, P5243369776111190226.a n = A102699 n

end A102699

