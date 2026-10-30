import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

/-!
# A380500: Table T(n,k) = phi(phi(prime(n)^k)), n >= 1, k >= 0, read by upwards antidiagonals, where phi = A000010.

The programs for A380500, the canonical program `A380500.P102637748916631371` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380500 has offset 1).

The definition of A380500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000010(A000040(row(n)-col(n)+1)^col(n)))` (program `A380500.P102637748916631371`, by `A380500.P102637748916631371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A380500.P102637748916631371

`A000010(A000010(A000040(row(n)-col(n)+1)^col(n)))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A380500

/-- `A000010(A000010(A000040(row(n)-col(n)+1)^col(n)))` -/
def P102637748916631371.Spec : Prop :=
  ∀ n, P102637748916631371.a n = A380500 (n + 1)

theorem P102637748916631371.correct : P102637748916631371.Spec := by
  intro n
  simp only [A380500, Nat.add_sub_cancel]

end A380500

/-! ## A380500.P17954389248133916948

`A010554(A000040(row(n)-col(n)+1)^col(n))`
-/

namespace A380500.P17954389248133916948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat ^ SequenceMachineLib.triCol n).toNat

end

end A380500.P17954389248133916948

namespace A380500

/-- `A010554(A000040(row(n)-col(n)+1)^col(n))` -/
def P17954389248133916948.Spec : Prop :=
  ∀ n, P17954389248133916948.a n = A380500 (n + 1)

end A380500

/-!
# A380502: a(n) = (7*n^6 - 21*n^5 + 55*n^4 - 75*n^3 + 70*n^2 - 36*n + 8)/8.

The programs for A380502, the canonical program `A380502.P12071263036603944797` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380502 has offset 0).

The definition of A380502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380502.P12071263036603944797

`ogf((1-6x+48x^2+118x^3+303x^4+132x^5+34x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380502

/-- `ogf((1-6x+48x^2+118x^3+303x^4+132x^5+34x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P12071263036603944797.Spec : Prop :=
  ∀ n, P12071263036603944797.a n = A380502 n

theorem P12071263036603944797.correct : P12071263036603944797.Spec := by
  intro n
  simp only [A380502]

end A380502

/-!
# A380503: Split A377091 into sublists consisting of runs of terms with the same sign. Sequence gives k's such that A377091(k) is the first term of those sublists whose terms (in absolute value) form an arithmetic progression with common difference 1.

The programs for A380503, there is no canonical definition to state claims against.
-/

/-! ## A380503.P6970046799628689387

`∩[A264120(n+1), A380505(n+1)]`
-/

namespace A380503.P6970046799628689387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380503.P6970046799628689387

/-!
# A380504: Split A377091 into sublists consisting of runs of terms with the same sign. Sequence gives k's such that A377091(k) is the first term of those sublists whose terms (in absolute value) form an arithmetic progression with common difference -1.

The programs for A380504, there is no canonical definition to state claims against.
-/

/-! ## A380504.P2666184292413654573

`A380505(A036498(n+1)+∏{e}[n+1, (-C(2, #))^#])`
-/

namespace A380504.P2666184292413654573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380505 (A036498 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p).toNat

end

end A380504.P2666184292413654573

/-!
# A380505: Split A377091 into sublists consisting of runs of terms with the same sign. Sequence gives k's such that A377091(k) is the first term of those sublists whose terms form an arithmetic progression with common difference 1 or -1.

The programs for A380505, there is no canonical definition to state claims against.
-/

/-! ## A380505.P11071222896929931715

`∪[A380503(n+1), A380504(n+1)]`
-/

namespace A380505.P11071222896929931715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380505.P11071222896929931715

/-!
# A380506: Smallest k such that A073734(k) is in A055932, where A073734 is the GCD of consecutive terms of the EKG sequence A064413.

The programs for A380506, there is no canonical definition to state claims against.
-/

/-! ## A380506.P10928188531454809749

`A382222(A055932(n+1))`
-/

namespace A380506.P10928188531454809749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382222 (A055932 (n + 1)).toNat

end

end A380506.P10928188531454809749

/-! ## A380506.P11676523020339355182

`A382222(A025487(n+1)%A000375(3*(n+1)))`
-/

namespace A380506.P11676523020339355182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382222 (Int.tmod (A025487 (n + 1)) (A000375 (3 * (n + 1)))).toNat

end

end A380506.P11676523020339355182

/-!
# A380507: Lexicographically earliest infinite sequence of positive integers such that for any n, consecutive occurrences of n are separated by a(n) terms and each subsequence enclosed by consecutive equal values is distinct.

The programs for A380507, there is no canonical definition to state claims against.
-/

/-! ## A380507.P16826093343519181109

`A159918(lt[A327125(n), A159918(n)])`
-/

namespace A380507.P16826093343519181109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A380507.P16826093343519181109

/-!
# A380508: Lexicographically earliest sequence of positive integers such that for any n, consecutive occurrences of n are separated by a(n) distinct terms and each subsequence enclosed by consecutive equal values is distinct.

The programs for A380508, there is no canonical definition to state claims against.
-/

/-! ## A380508.P18310883104236747539

`A333805(A045680(n)*A186438(n+1))`
-/

namespace A380508.P18310883104236747539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A045680 n * A186438 (n + 1)).toNat

end

end A380508.P18310883104236747539

/-!
# A380509: Numbers of the form i+j+4ij for i,j >= 1 together with numbers of the form -i-j+4ij for i,j >= 2.

The programs for A380509, the canonical program `A380509.P17107691641625589008` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380509 has offset 1).

The definition of A380509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380509.P17107691641625589008

`lt[A006530(4*n+1), n]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A380509

/-- `lt[A006530(4*n+1), n]` -/
def P17107691641625589008.Spec : Prop :=
  ∀ n, (P17107691641625589008.a n : ℤ) = A380509 (n + 1)

theorem P17107691641625589008.correct : P17107691641625589008.Spec := by
  intro n
  simp only [A380509, Nat.add_sub_cancel]

end A380509

/-! ## A380509.P676267177332651066

`lt[3, A305801((4*n+1)/gcd(3, n+1))]`
-/

namespace A380509.P676267177332651066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (SequenceMachineLib.roundAway ((4 * n + 1 : ℚ) / (Nat.gcd 3 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380509.P676267177332651066

namespace A380509

/-- `lt[3, A305801((4*n+1)/gcd(3, n+1))]` -/
def P676267177332651066.Spec : Prop :=
  ∀ n, (P676267177332651066.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P4842884426450978845

`comp[(n*ceil((n/2)²))%A020639(n+1)]`
-/

namespace A380509.P4842884426450978845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ⌈((n : ℚ) / 2) ^ 2⌉) (A020639 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A380509.P4842884426450978845

namespace A380509

/-- `comp[(n*ceil((n/2)²))%A020639(n+1)]` -/
def P4842884426450978845.Spec : Prop :=
  ∀ n, (P4842884426450978845.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P11350365658985635131

`lt[1, A305439(A016813(n))]`
-/

namespace A380509.P11350365658985635131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305439 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380509.P11350365658985635131

namespace A380509

/-- `lt[1, A305439(A016813(n))]` -/
def P11350365658985635131.Spec : Prop :=
  ∀ n, (P11350365658985635131.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P18063922116906383683

`lt[1, A337135(A093544(n+1))]`
-/

namespace A380509.P18063922116906383683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (A093544 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380509.P18063922116906383683

namespace A380509

/-- `lt[1, A337135(A093544(n+1))]` -/
def P18063922116906383683.Spec : Prop :=
  ∀ n, (P18063922116906383683.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P14778133790363621662

`lt[A076565(A004277(n)), n]`
-/

namespace A380509.P14778133790363621662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380509.P14778133790363621662

namespace A380509

/-- `lt[A076565(A004277(n)), n]` -/
def P14778133790363621662.Spec : Prop :=
  ∀ n, (P14778133790363621662.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P10394847447502936974

`lt[3, A377864(2*n+1)]`
-/

namespace A380509.P10394847447502936974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377864 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380509.P10394847447502936974

namespace A380509

/-- `lt[3, A377864(2*n+1)]` -/
def P10394847447502936974.Spec : Prop :=
  ∀ n, (P10394847447502936974.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P12203032558386137390

`lt[4, A052126(4*n+1)]`
-/

namespace A380509.P12203032558386137390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380509.P12203032558386137390

namespace A380509

/-- `lt[4, A052126(4*n+1)]` -/
def P12203032558386137390.Spec : Prop :=
  ∀ n, (P12203032558386137390.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P12986910608874375969

`lt[1, A325135(or(1, 8*n)+1)]`
-/

namespace A380509.P12986910608874375969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (Nat.lor 1 (8 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380509.P12986910608874375969

namespace A380509

/-- `lt[1, A325135(or(1, 8*n)+1)]` -/
def P12986910608874375969.Spec : Prop :=
  ∀ n, (P12986910608874375969.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P3034823325385009496

`lt[A033677(4*n+1), n+1]`
-/

namespace A380509.P3034823325385009496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (4 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380509.P3034823325385009496

namespace A380509

/-- `lt[A033677(4*n+1), n+1]` -/
def P3034823325385009496.Spec : Prop :=
  ∀ n, (P3034823325385009496.a n : ℤ) = A380509 (n + 1)

end A380509

/-! ## A380509.P7621224450701037654

`lt[3, A318360(A222945(n))]`
-/

namespace A380509.P7621224450701037654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A222945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380509.P7621224450701037654

namespace A380509

/-- `lt[3, A318360(A222945(n))]` -/
def P7621224450701037654.Spec : Prop :=
  ∀ n, (P7621224450701037654.a n : ℤ) = A380509 (n + 1)

end A380509

/-!
# A380510: Split A377091 into sublists consisting of runs of terms with the same sign. Then a(n) = 1 if sorted terms in the n-th sublist form an arithmetic progression with common difference 1, 0 otherwise.

The programs for A380510, there is no canonical definition to state claims against.
-/

/-! ## A380510.P10522135273179081675

`A318997(or(A000040(n+1), A117004(n+1)))`
-/

namespace A380510.P10522135273179081675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318997 (Int.lor (A000040 (n + 1)) (A117004 (n + 1))).toNat

end

end A380510.P10522135273179081675

/-! ## A380510.P160838970149239518

`A039966(A284171(A112345(A078635(n+1))))`
-/

namespace A380510.P160838970149239518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A284171 (A112345 (A078635 (n + 1)).toNat).toNat).toNat

end

end A380510.P160838970149239518

/-! ## A380510.P14931089743935563823

`A053121(and(A059995(n), A096524(n+1)))`
-/

namespace A380510.P14931089743935563823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (Int.land (A059995 n) (A096524 (n + 1))).toNat

end

end A380510.P14931089743935563823

/-! ## A380510.P10884159677790681217

`A015900(A180649(n))`
-/

namespace A380510.P10884159677790681217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015900 (A180649 n).toNat

end

end A380510.P10884159677790681217

/-! ## A380510.P6467702934447746982

`A013664(floor(A180649(n)/A071339(n)))`
-/

namespace A380510.P6467702934447746982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013664 (⌊(A180649 n : ℚ) / (A071339 n : ℚ)⌋.toNat + 1)

end

end A380510.P6467702934447746982

/-! ## A380510.P8031809314602777382

`A010054(A034441(n+1)+6)`
-/

namespace A380510.P8031809314602777382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A034441 (n + 1) + 6).toNat

end

end A380510.P8031809314602777382

/-! ## A380510.P5490879747126202922

`A118135(2*n+1)^A185294(A057354(n+1))`
-/

namespace A380510.P5490879747126202922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118135 (2 * n + 1) : ℚ) ^ (A185294 (A057354 (n + 1)).toNat : ℤ)

end

end A380510.P5490879747126202922

/-! ## A380510.P15277440323044934821

`A014031(A034447(n+1))`
-/

namespace A380510.P15277440323044934821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014031 (A034447 (n + 1)).toNat

end

end A380510.P15277440323044934821

/-! ## A380510.P9132860090715135975

`A032552(n+3)%2`
-/

namespace A380510.P9132860090715135975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032552 (n + 3)) 2

end

end A380510.P9132860090715135975

/-! ## A380510.P3593793500382374061

`A230642(C(A038802(n+4), 24))`
-/

namespace A380510.P3593793500382374061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (Nat.choose (A038802 (n + 4)).toNat 24)

end

end A380510.P3593793500382374061

/-!
# A380511: Expansion of e.g.f. exp(x*G(x)^2) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A380511, there is no canonical definition to state claims against.
-/

/-! ## A380511.P14641011411360629717

`A143409(A062708(n))`
-/

namespace A380511.P14641011411360629717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A062708 n).toNat

end

end A380511.P14641011411360629717

/-! ## A380511.P3984774861163468285

`A143409(A001107(n)+A000217(n))`
-/

namespace A380511.P3984774861163468285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A001107 n + A000217 n).toNat

end

end A380511.P3984774861163468285

/-!
# A380512: Expansion of e.g.f. exp(x*G(x)^3) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A380512, there is no canonical definition to state claims against.
-/

/-! ## A380512.P4191524094899794688

`A382101(A155212(n)+4)`
-/

namespace A380512.P4191524094899794688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382101 (A155212 n + 4).toNat

end

end A380512.P4191524094899794688

/-! ## A380512.P17444006608963573404

`A088699(8*n²+n)`
-/

namespace A380512.P17444006608963573404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (8 * n ^ 2 + n)

end

end A380512.P17444006608963573404

/-! ## A380512.P5987661678626020938

`A293985(eq[3, A171232(n+2)])`
-/

namespace A380512.P5987661678626020938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171232 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A380512.P5987661678626020938

/-! ## A380512.P12282121347819024589

`A293985(A000096(3*n)+n)`
-/

namespace A380512.P12282121347819024589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A000096 (3 * n) + (n : ℤ)).toNat

end

end A380512.P12282121347819024589

/-!
# A380513: Expansion of e.g.f. exp(x*G(x)) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A380513, there is no canonical definition to state claims against.
-/

/-! ## A380513.P12840646608247110279

`A055643(A363529(n))`
-/

namespace A380513.P12840646608247110279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A363529 n).toNat

end

end A380513.P12840646608247110279

/-!
# A380514: Expansion of e.g.f. exp(x*G(x)^2) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A380514, there is no canonical definition to state claims against.
-/

/-! ## A380514.P10039885165526317313

`A065039(A000364(n))`
-/

namespace A380514.P10039885165526317313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (A000364 n).toNat

end

end A380514.P10039885165526317313

/-!
# A380515: Expansion of e.g.f. exp(x*G(x)^3) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A380515, there is no canonical definition to state claims against.
-/

/-! ## A380515.P16704598749812452287

`A143409(A139273(n))`
-/

namespace A380515.P16704598749812452287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A139273 n).toNat

end

end A380515.P16704598749812452287

/-! ## A380515.P2070028513013044246

`A143409(A085250(n)+n)`
-/

namespace A380515.P2070028513013044246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A085250 n + (n : ℤ)).toNat

end

end A380515.P2070028513013044246

/-! ## A380515.P12014925413501880206

`A143409(A000384(2*n)-n)`
-/

namespace A380515.P12014925413501880206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A000384 (2 * n) - (n : ℤ)).toNat

end

end A380515.P12014925413501880206

/-!
# A380516: Expansion of e.g.f. exp(x*G(x)^4) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A380516, there is no canonical definition to state claims against.
-/

/-! ## A380516.P13113449241397772148

`A088699(A022283(n)+n)`
-/

namespace A380516.P13113449241397772148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A022283 n + (n : ℤ)).toNat

end

end A380516.P13113449241397772148

/-! ## A380516.P13076597904908514679

`A088699(A005449(3*n)-n²)`
-/

namespace A380516.P13076597904908514679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A005449 (3 * n) - (n ^ 2 : ℤ)).toNat

end

end A380516.P13076597904908514679

/-! ## A380516.P16524923096378655464

`A293985(A139278(n))`
-/

namespace A380516.P16524923096378655464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A139278 n).toNat

end

end A380516.P16524923096378655464

/-! ## A380516.P1697902734880366652

`A176120(A132209(2*n)-n)`
-/

namespace A380516.P1697902734880366652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A132209 (2 * n) - (n : ℤ)).toNat

end

end A380516.P1697902734880366652

/-!
# A380521: Primes p such that between p and the next prime there exist 2 distinct integers which are a square and a cube, respectively.

The programs for A380521, there is no canonical definition to state claims against.
-/

/-! ## A380521.P7159475397078342652

`A151799(A380405(n+1))`
-/

namespace A380521.P7159475397078342652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A380405 (n + 1)).toNat

end

end A380521.P7159475397078342652

/-!
# A380523: Positive cubes k such that there are no primes between k and the nearest square that is not k.

The programs for A380523, there is no canonical definition to state claims against.
-/

/-! ## A380523.P8725810362757040527

`A384816(A051835(n+2))`
-/

namespace A380523.P8725810362757040527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384816 (A051835 (n + 2)).toNat

end

end A380523.P8725810362757040527

/-!
# A380524: a(n) = 1 if n is a squarefree and for all factorizations of n as x*y, the sum (x * y') + (x' * y) is carryfree when the addition is done in the primorial base, otherwise 0. Here u' stands for A003415(u), the arithmetic derivative of u.

The programs for A380524, there is no canonical definition to state claims against.
-/

/-! ## A380524.P13373081871654826571

`A008966(n+1)*A358672(n+1)`
-/

namespace A380524.P13373081871654826571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A358672 (n + 1)

end

end A380524.P13373081871654826571

/-! ## A380524.P11651084807277192109

`char[A380525(n+1)-1]`
-/

namespace A380524.P11651084807277192109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380524.P11651084807277192109

/-! ## A380524.P4035019752227192295

`and(A002033(n), A358672(n+1))`
-/

namespace A380524.P4035019752227192295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A358672 (n + 1))

end

end A380524.P4035019752227192295

/-! ## A380524.P9728417151041183504

`and(A195588(n), A358672(n+1))`
-/

namespace A380524.P9728417151041183504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195588 n) (A358672 (n + 1))

end

end A380524.P9728417151041183504

/-! ## A380524.P14481604473529119458

`A323154(n+1)*A358672(n+1)`
-/

namespace A380524.P14481604473529119458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323154 (n + 1) * A358672 (n + 1)

end

end A380524.P14481604473529119458

/-! ## A380524.P16954652668460359221

`and(A007424(n+1), A358672(n+1))`
-/

namespace A380524.P16954652668460359221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007424 (n + 1)) (A358672 (n + 1))

end

end A380524.P16954652668460359221

/-! ## A380524.P5199863552800350

`and(A008683(n+1), A358672(n+1))`
-/

namespace A380524.P5199863552800350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 1)) (A358672 (n + 1))

end

end A380524.P5199863552800350

/-! ## A380524.P15352424829642907531

`and(A069626(n+1), A358672(n+1))`
-/

namespace A380524.P15352424829642907531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069626 (n + 1)) (A358672 (n + 1))

end

end A380524.P15352424829642907531

/-! ## A380524.P5214447700013916456

`and(A080323(n+1), A358672(n+1))`
-/

namespace A380524.P5214447700013916456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080323 (n + 1)) (A358672 (n + 1))

end

end A380524.P5214447700013916456

/-! ## A380524.P13242493498500108815

`and(A085384(n+1), A358672(n+1))`
-/

namespace A380524.P13242493498500108815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085384 (n + 1)) (A358672 (n + 1))

end

end A380524.P13242493498500108815

/-! ## A380524.P4498041101466374091

`and(A111217(n+1), A358672(n+1))`
-/

namespace A380524.P4498041101466374091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111217 (n + 1)) (A358672 (n + 1))

end

end A380524.P4498041101466374091

/-! ## A380524.P17336043598586224682

`and(A112624(n+1), A358672(n+1))`
-/

namespace A380524.P17336043598586224682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112624 (n + 1)) (A358672 (n + 1))

end

end A380524.P17336043598586224682

/-! ## A380524.P7356536669211039521

`and(A140697(n+1), A358672(n+1))`
-/

namespace A380524.P7356536669211039521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140697 (n + 1)) (A358672 (n + 1))

end

end A380524.P7356536669211039521

/-! ## A380524.P9775996789866024448

`and(A157657(n+1), A358672(n+1))`
-/

namespace A380524.P9775996789866024448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157657 (n + 1)) (A358672 (n + 1))

end

end A380524.P9775996789866024448

/-! ## A380524.P1254554351173651906

`and(A162510(n+1), A358672(n+1))`
-/

namespace A380524.P1254554351173651906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A162510 (n + 1)) (A358672 (n + 1))

end

end A380524.P1254554351173651906

/-! ## A380524.P17453518670347876263

`and(A293902(n+1), A358672(n+1))`
-/

namespace A380524.P17453518670347876263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293902 (n + 1)) (A358672 (n + 1))

end

end A380524.P17453518670347876263

/-! ## A380524.P4897275874657087307

`and(A294874(n+1), A358672(n+1))`
-/

namespace A380524.P4897275874657087307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294874 (n + 1)) (A358672 (n + 1))

end

end A380524.P4897275874657087307

/-! ## A380524.P11812062469392916085

`and(A059499(n+1), A358672(n+1))`
-/

namespace A380524.P11812062469392916085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059499 (n + 1)) (A358672 (n + 1))

end

end A380524.P11812062469392916085

/-! ## A380524.P9654110687088985480

`and(A082588(n+1), A358672(n+1))`
-/

namespace A380524.P9654110687088985480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082588 (n + 1)) (A358672 (n + 1))

end

end A380524.P9654110687088985480

/-! ## A380524.P7543698383360676924

`and(A123708(n+1), A358672(n+1))`
-/

namespace A380524.P7543698383360676924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123708 (n + 1)) (A358672 (n + 1))

end

end A380524.P7543698383360676924

/-!
# A380525: Squarefree numbers k such that for all factorizations of k as x*y, the sum (x * y') + (x' * y) is carryless when the addition is done in the primorial base, A049345. Here n' stands for A003415(n), the arithmetic derivative of n.

The programs for A380525, there is no canonical definition to state claims against.
-/

/-! ## A380525.P794882260221280753

`filter[A005117(n+1), A358672(#)]`
-/

namespace A380525.P794882260221280753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A380525.P794882260221280753

/-! ## A380525.P3435296261080765825

`filter[A358673(n+1), A008966(#)]`
-/

namespace A380525.P3435296261080765825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A380525.P3435296261080765825

/-! ## A380525.P18111019109337793478

`∩[A005117(n+1), A358673(n+1)]`
-/

namespace A380525.P18111019109337793478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380525.P18111019109337793478

/-! ## A380525.P13882726212108990587

`filter[A005117(n+1), A380524(#)]`
-/

namespace A380525.P13882726212108990587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P13882726212108990587

/-! ## A380525.P2292700824091084079

`filter[A358673(n+1), A323154(#)]`
-/

namespace A380525.P2292700824091084079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A380525.P2292700824091084079

/-! ## A380525.P11922947746454979380

`filter[A358673(n+1), A380524(#)]`
-/

namespace A380525.P11922947746454979380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P11922947746454979380

/-! ## A380525.P5632577264773680476

`eq[1, A380524(n+1)]+1`
-/

namespace A380525.P5632577264773680476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380525.P5632577264773680476

/-! ## A380525.P15268393157660907410

`filter[A348506(n+1), A358672(#)]`
-/

namespace A380525.P15268393157660907410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A380525.P15268393157660907410

/-! ## A380525.P9340225434279374313

`filter[A348506(n+1), A380524(#)]`
-/

namespace A380525.P9340225434279374313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P9340225434279374313

/-! ## A380525.P7582565325043987076

`∩[A348506(n+1), A358673(n+1)]`
-/

namespace A380525.P7582565325043987076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380525.P7582565325043987076

/-! ## A380525.P16921650549936250002

`filter[A367801(n+1), A380524(#)]`
-/

namespace A380525.P16921650549936250002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P16921650549936250002

/-! ## A380525.P12995733402768949160

`filter[A064594(n+1), A358672(#)]`
-/

namespace A380525.P12995733402768949160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A380525.P12995733402768949160

/-! ## A380525.P11289555059418161475

`filter[A064594(n+1), A380524(#)]`
-/

namespace A380525.P11289555059418161475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P11289555059418161475

/-! ## A380525.P960052275832995853

`∩[A064594(n+1), A358673(n+1)]`
-/

namespace A380525.P960052275832995853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380525.P960052275832995853

/-! ## A380525.P13697040854619225299

`filter[A167207(n+1), A380524(#)]`
-/

namespace A380525.P13697040854619225299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P13697040854619225299

/-! ## A380525.P11400779792675397184

`filter[A072774(n+1), A380524(#)]`
-/

namespace A380525.P11400779792675397184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P11400779792675397184

/-! ## A380525.P16877493615914138640

`filter[A210490(n+1), A380524(#)]`
-/

namespace A380525.P16877493615914138640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P16877493615914138640

/-! ## A380525.P16125397475299575813

`∩[A348961(n+1), A358673(n+1)]`
-/

namespace A380525.P16125397475299575813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380525.P16125397475299575813

/-! ## A380525.P9657586197210519573

`filter[A065200(n+1), A380524(#)]`
-/

namespace A380525.P9657586197210519573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P9657586197210519573

/-! ## A380525.P14841514558031087042

`filter[A304678(n+1), A380524(#)]`
-/

namespace A380525.P14841514558031087042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380524 (f1 j).toNat = 1) n)

end

end A380525.P14841514558031087042

/-!
# A380527: Numbers k such that k is a multiple of A327860(k), where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A380527, there is no canonical definition to state claims against.
-/

/-! ## A380527.P6433042956550887772

`∩[A276156(n), A400155(n+1)]`
-/

namespace A380527.P6433042956550887772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380527.P6433042956550887772

/-! ## A380527.P13623553205242831466

`eq[A327860(n), A351083(n)]`
-/

namespace A380527.P13623553205242831466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380527.P13623553205242831466

/-! ## A380527.P14083100762590798530

`eq[A329029(n), A351083(n)]`
-/

namespace A380527.P14083100762590798530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380527.P14083100762590798530

/-! ## A380527.P13719128570689242077

`∩[A191922(n+1), A400835(n+1)]`
-/

namespace A380527.P13719128570689242077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380527.P13719128570689242077

/-! ## A380527.P7133729170191503497

`lt[A327860(n), A027833(A319240(3*n+4))]`
-/

namespace A380527.P7133729170191503497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (A319240 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380527.P7133729170191503497

/-!
# A380528: Smallest prime p such that p^p is a divisor of A380459(n), or 1 if no such factor exists, where A380459(n) = Product_{d|n} A276086(n/d)^A349394(d).

The programs for A380528, there is no canonical definition to state claims against.
-/

/-! ## A380528.P10006835736151300443

`A249739(n+1)-A400159(n+1)`
-/

namespace A380528.P10006835736151300443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1) - A400159 (n + 1)

end

end A380528.P10006835736151300443

/-! ## A380528.P12538472899894143639

`A353745(∑[A001248(n+4)])`
-/

namespace A380528.P12538472899894143639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A380528.P12538472899894143639

/-! ## A380528.P7257629020512746177

`A082067(C(A000217(n), A360676(n+1)))`
-/

namespace A380528.P7257629020512746177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (Nat.choose (A000217 n).toNat (A360676 (n + 1)).toNat)

end

end A380528.P7257629020512746177

/-! ## A380528.P967513958290720731

`A231719(3^A342001(n+1))`
-/

namespace A380528.P967513958290720731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231719 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A342001 (n + 1) : ℤ))).toNat

end

end A380528.P967513958290720731

/-! ## A380528.P7078564939863995710

`A323023(A063994(n+4)+A003520(n))`
-/

namespace A380528.P7078564939863995710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A063994 (n + 4) + A003520 n).toNat

end

end A380528.P7078564939863995710

/-!
# A380529: Smallest prime p such that p^p is a divisor of A380459(A005117(n)), or 1 if no such factor exists, where A380459(n) = Product_{d|n} A276086(n/d)^A349394(d) and A005117 lists the squarefree numbers.

The programs for A380529, there is no canonical definition to state claims against.
-/

/-! ## A380529.P11839289861961231883

`A380528(A005117(n+1))`
-/

namespace A380529.P11839289861961231883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380528 (A005117 (n + 1)).toNat

end

end A380529.P11839289861961231883

/-! ## A380529.P11935074929663344213

`A380528(record[A007913(n+1)])`
-/

namespace A380529.P11935074929663344213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A380529.P11935074929663344213

/-! ## A380529.P15806574606059837040

`A380528(record[A007947(n+1)])`
-/

namespace A380529.P15806574606059837040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A380529.P15806574606059837040

/-! ## A380529.P2591603904910577017

`A380528(record[A353832(n+1)])`
-/

namespace A380529.P2591603904910577017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A380529.P2591603904910577017

/-! ## A380529.P8763961703005990098

`A380528(A243348(n+1)-A001478(n+1))`
-/

namespace A380529.P8763961703005990098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380528 (A243348 (n + 1) - A001478 (n + 1)).toNat

end

end A380529.P8763961703005990098

/-!
# A380530: Positions of records in A380528.

The programs for A380530, there is no canonical definition to state claims against.
-/

/-! ## A380530.P17599968611923690674

`A345912(a(n-1))` with `a(0)=1, a(1)=4, a(2)=10, a(3)=42`
-/

namespace A380530.P17599968611923690674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 42] fun n a =>
  A345912 (a (n - 1)).toNat

end

end A380530.P17599968611923690674

/-!
# A380534: a(n) = 1 if the least significant nonzero digit in primorial base representation of n (A049345) is greater than 1, otherwise 0.

The programs for A380534, there is no canonical definition to state claims against.
-/

/-! ## A380534.P4965694305668360496

`char[A380535(n+1)-1]`
-/

namespace A380534.P4965694305668360496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380535 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380534.P4965694305668360496

/-! ## A380534.P13310657276172473365

`val(A328571(n), A328571(n+1))`
-/

namespace A380534.P13310657276172473365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328571 n).toNat (A328571 (n + 1)).toNat

end

end A380534.P13310657276172473365

/-! ## A380534.P14308757949352651535

`val(A328613(n+1), A328613(n))`
-/

namespace A380534.P14308757949352651535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328613 (n + 1)).toNat (A328613 n).toNat

end

end A380534.P14308757949352651535

/-! ## A380534.P17325170998322251784

`val(A276086(n), 2*A053669(n+1))`
-/

namespace A380534.P17325170998322251784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 n).toNat (2 * A053669 (n + 1)).toNat

end

end A380534.P17325170998322251784

/-! ## A380534.P392868749519139136

`A276088(n)%A276088(n+1)`
-/

namespace A380534.P392868749519139136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276088 n) (A276088 (n + 1))

end

end A380534.P392868749519139136

/-! ## A380534.P10998951031124819594

`A276088(round(log(A276088(n+1))))`
-/

namespace A380534.P10998951031124819594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (SequenceMachineLib.roundAway (Real.log (A276088 (n + 1) : ℝ))).toNat

end

end A380534.P10998951031124819594

/-! ## A380534.P7913993163574159677

`A276088(∑{p}[A276088(n+1), #])`
-/

namespace A380534.P7913993163574159677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A380534.P7913993163574159677

/-! ## A380534.P17378112380996654004

`A067029(A020639(A276088(n+1)²))`
-/

namespace A380534.P17378112380996654004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A020639 (A276088 (n + 1) ^ 2).toNat).toNat

end

end A380534.P17378112380996654004

/-! ## A380534.P11161264363444725178

`A003415(A399372(A276088(n+1)²))`
-/

namespace A380534.P11161264363444725178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A399372 (A276088 (n + 1) ^ 2).toNat).toNat

end

end A380534.P11161264363444725178

/-! ## A380534.P307869146267790719

`A276088(A392605(A276088(n+1)²))`
-/

namespace A380534.P307869146267790719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A392605 (A276088 (n + 1) ^ 2).toNat).toNat

end

end A380534.P307869146267790719

/-! ## A380534.P10128408798391018576

`A276088(A399374(A276088(n+1)²))`
-/

namespace A380534.P10128408798391018576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A399374 (A276088 (n + 1) ^ 2).toNat).toNat

end

end A380534.P10128408798391018576

/-! ## A380534.P18024898213090638155

`A051903(A328572(n+1)/A328575(n+1))`
-/

namespace A380534.P18024898213090638155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A328572 (n + 1) : ℚ) / (A328575 (n + 1) : ℚ))).toNat

end

end A380534.P18024898213090638155

/-! ## A380534.P2710477702133035899

`A276088(n*A003415(A276088(n+1)))`
-/

namespace A380534.P2710477702133035899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 ((n : ℤ) * A003415 (A276088 (n + 1)).toNat).toNat

end

end A380534.P2710477702133035899

/-! ## A380534.P13220422462793973543

`A001221(A324895(n+1)/A392858(n+1))`
-/

namespace A380534.P13220422462793973543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A324895 (n + 1) : ℚ) / (A392858 (n + 1) : ℚ))).toNat

end

end A380534.P13220422462793973543

/-! ## A380534.P13212784444495944481

`A276088(A399379(A276088(n+1)²))`
-/

namespace A380534.P13212784444495944481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A399379 (A276088 (n + 1) ^ 2).toNat).toNat

end

end A380534.P13212784444495944481

/-! ## A380534.P8538180935058527179

`A038189(A277022(n+1))`
-/

namespace A380534.P8538180935058527179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A277022 (n + 1)).toNat

end

end A380534.P8538180935058527179

/-!
# A380535: Numbers such that the least significant nonzero digit in their primorial base representation (A049345) is greater than 1.

The programs for A380535, there is no canonical definition to state claims against.
-/

/-! ## A380535.P11146348935290098163

`eq[1, A380534(n+1)]+1`
-/

namespace A380535.P11146348935290098163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380535.P11146348935290098163

/-! ## A380535.P18201481573117933067

`filter[A047233(n+2), A380534(#)]`
-/

namespace A380535.P18201481573117933067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P18201481573117933067

/-! ## A380535.P1629039468467061487

`comp[A381035(n+1)-1]+1`
-/

namespace A380535.P1629039468467061487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381035 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A380535.P1629039468467061487

/-! ## A380535.P3955492633232908304

`filter[A053228(n+1), A380534(#)]`
-/

namespace A380535.P3955492633232908304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P3955492633232908304

/-! ## A380535.P16697375821846821383

`filter[A092486(n), A380534(#)]`
-/

namespace A380535.P16697375821846821383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P16697375821846821383

/-! ## A380535.P14488320149299254354

`filter[A004277(n), A380534(#)]`
-/

namespace A380535.P14488320149299254354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P14488320149299254354

/-! ## A380535.P14404021910093281308

`filter[A092535(n), A380534(#)]`
-/

namespace A380535.P14404021910093281308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P14404021910093281308

/-! ## A380535.P10540217303063904210

`filter[A103517(n), A380534(#)]`
-/

namespace A380535.P10540217303063904210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P10540217303063904210

/-! ## A380535.P18216175301293549197

`filter[A004275(n+1), A380534(#)]`
-/

namespace A380535.P18216175301293549197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P18216175301293549197

/-! ## A380535.P5084293418655366775

`filter[A005843(n+1), A380534(#)]`
-/

namespace A380535.P5084293418655366775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P5084293418655366775

/-! ## A380535.P17257371488580307305

`filter[A047231(n+2), A380534(#)]`
-/

namespace A380535.P17257371488580307305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P17257371488580307305

/-! ## A380535.P6044545487452144679

`filter[A047234(n+2), A380534(#)]`
-/

namespace A380535.P6044545487452144679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P6044545487452144679

/-! ## A380535.P8807898829231704043

`filter[A047258(n+2), A380534(#)]`
-/

namespace A380535.P8807898829231704043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047258 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P8807898829231704043

/-! ## A380535.P7020520654157578472

`filter[A051755(n+2), A380534(#)]`
-/

namespace A380535.P7020520654157578472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P7020520654157578472

/-! ## A380535.P12025851995799962445

`filter[A163300(n+2), A380534(#)]`
-/

namespace A380535.P12025851995799962445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P12025851995799962445

/-! ## A380535.P9556882577125108206

`filter[A004278(n+1), A380534(#)]`
-/

namespace A380535.P9556882577125108206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P9556882577125108206

/-! ## A380535.P6038194033802246270

`filter[A144429(n+1), A380534(#)]`
-/

namespace A380535.P6038194033802246270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P6038194033802246270

/-! ## A380535.P5959063808493601277

`filter[A300576(n+1), A380534(#)]`
-/

namespace A380535.P5959063808493601277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P5959063808493601277

/-! ## A380535.P2214749543023203344

`filter[A058992(n+2), A380534(#)]`
-/

namespace A380535.P2214749543023203344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P2214749543023203344

/-! ## A380535.P4085881678079630920

`filter[A004279(n), A380534(#)]`
-/

namespace A380535.P4085881678079630920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A380535.P4085881678079630920

/-!
# A380536: a(n) = 1 if n is a multiple of A351566(n), otherwise 0, where A351566 is the radix prime of the second least significant nonzero digit in the primorial base expansion of n, or 1 if there is no such digit.

The programs for A380536, there is no canonical definition to state claims against.
-/

/-! ## A380536.P17127641137255260847

`char[A380537(1+n)-1]`
-/

namespace A380536.P17127641137255260847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380537 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380536.P17127641137255260847

/-! ## A380536.P7248775093960760423

`A321381(A321351(2*(n+1)))%2`
-/

namespace A380536.P7248775093960760423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321381 (A321351 (2 * (n + 1))).toNat) 2

end

end A380536.P7248775093960760423

/-! ## A380536.P17555150160079071833

`A079978(A171960(n)*A310160(2*n+1))`
-/

namespace A380536.P17555150160079071833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A171960 n * A310160 (2 * n + 1)).toNat

end

end A380536.P17555150160079071833

/-! ## A380536.P11136726226198428267

`A189084(A287176(n+1)+A129526(n+2))`
-/

namespace A380536.P11136726226198428267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (A287176 (n + 1) + A129526 (n + 2)).toNat

end

end A380536.P11136726226198428267

/-! ## A380536.P2305427033872154212

`A023532(A338557(2*n+5)*A389235(2*(n+1)))`
-/

namespace A380536.P2305427033872154212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A338557 (2 * n + 5) * A389235 (2 * (n + 1))).toNat

end

end A380536.P2305427033872154212

/-!
# A380537: Numbers k such that k is a multiple of A351566(k), where A351566 is the radix prime of the second least significant nonzero digit in the primorial base expansion of n, or 1 if there is no such digit.

The programs for A380537, there is no canonical definition to state claims against.
-/

/-! ## A380537.P7308153940315842486

`eq[1, A380536(n+1)]+1`
-/

namespace A380537.P7308153940315842486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380536 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380537.P7308153940315842486

/-! ## A380537.P16413056872784828164

`filter[A376198(n+1), A380536(#)]`
-/

namespace A380537.P16413056872784828164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P16413056872784828164

/-! ## A380537.P89972627808633534

`filter[A101513(n+1), A380536(#)]`
-/

namespace A380537.P89972627808633534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P89972627808633534

/-! ## A380537.P15484542023494043060

`filter[A047226(n+2), A380536(#)]`
-/

namespace A380537.P15484542023494043060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P15484542023494043060

/-! ## A380537.P5980411113226745336

`filter[A171581(n+1), A380536(#)]`
-/

namespace A380537.P5980411113226745336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P5980411113226745336

/-! ## A380537.P5678858786498691701

`filter[A173905(n+2), A380536(#)]`
-/

namespace A380537.P5678858786498691701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P5678858786498691701

/-! ## A380537.P10790259776833237182

`filter[A368108(n+1), A380536(#)]`
-/

namespace A380537.P10790259776833237182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P10790259776833237182

/-! ## A380537.P7565854620807127849

`filter[A156657(n+2), A380536(#)]`
-/

namespace A380537.P7565854620807127849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P7565854620807127849

/-! ## A380537.P12479633794483487028

`filter[A131717(n+1), A380536(#)]`
-/

namespace A380537.P12479633794483487028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P12479633794483487028

/-! ## A380537.P15613514385259148307

`eq[char[A380538(n+1)], A000007(n)]`
-/

namespace A380537.P15613514385259148307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380538 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A380537.P15613514385259148307

/-! ## A380537.P16866852933821739936

`filter[A084408(n+1), A380536(#)]`
-/

namespace A380537.P16866852933821739936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P16866852933821739936

/-! ## A380537.P16312446916026599331

`filter[A255004(n+1), A380536(#)]`
-/

namespace A380537.P16312446916026599331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P16312446916026599331

/-! ## A380537.P8522312559204106271

`filter[A083197(n+1), A380536(#)]`
-/

namespace A380537.P8522312559204106271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P8522312559204106271

/-! ## A380537.P3891448800893495880

`filter[A282649(n+1), A380536(#)]`
-/

namespace A380537.P3891448800893495880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P3891448800893495880

/-! ## A380537.P14539297637818132263

`filter[A230086(n+1), A380536(#)]`
-/

namespace A380537.P14539297637818132263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P14539297637818132263

/-! ## A380537.P6057780363111718800

`filter[A138561(n+1), A380536(#)]`
-/

namespace A380537.P6057780363111718800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A380537.P6057780363111718800

/-!
# A380538: Numbers k such that k is not a multiple of A351566(k), where A351566 is the radix prime of the second least significant nonzero digit in the primorial base expansion of n, or 1 if there is no such digit.

The programs for A380538, there is no canonical definition to state claims against.
-/

/-! ## A380538.P9107740284726034474

`eq[0, A380536(n+1)]+1`
-/

namespace A380538.P9107740284726034474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380536 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380538.P9107740284726034474

/-! ## A380538.P963793081565934334

`A010685(A348717(n+3))+lt[A380536(n+1), 1]`
-/

namespace A380538.P963793081565934334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380536 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A348717 (n + 3)).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A380538.P963793081565934334

/-! ## A380538.P17116224566831202352

`eq[char[A380537(n+1)], A000007(n)]`
-/

namespace A380538.P17116224566831202352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380537 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A380538.P17116224566831202352

/-! ## A380538.P9500375761414380687

`A010685(A005843(n))+lt[A380536(n+1), 1]`
-/

namespace A380538.P9500375761414380687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380536 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A005843 n).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A380538.P9500375761414380687

/-! ## A380538.P1911700730447423453

`A010685(A017341(n))+lt[A380536(n+1), 1]`
-/

namespace A380538.P1911700730447423453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380536 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A017341 n).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A380538.P1911700730447423453

/-! ## A380538.P13255152817174747927

`A010685(A083211(3*(n+1)))+lt[A380536(n+1), 1]`
-/

namespace A380538.P13255152817174747927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380536 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A083211 (3 * (n + 1))).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A380538.P13255152817174747927

/-!
# A380539: The second smallest prime not dividing n.

The programs for A380539, there is no canonical definition to state claims against.
-/

/-! ## A380539.P7292715717736385621

`A002034(A381805(n+1))`
-/

namespace A380539.P7292715717736385621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A381805 (n + 1)).toNat

end

end A380539.P7292715717736385621

/-! ## A380539.P6550523957453864554

`A006530(A382248(n+1))`
-/

namespace A380539.P6550523957453864554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A382248 (n + 1)).toNat

end

end A380539.P6550523957453864554

/-! ## A380539.P4514070079260302254

`A006530(A382767(n+1))`
-/

namespace A380539.P4514070079260302254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A382767 (n + 1)).toNat

end

end A380539.P4514070079260302254

/-! ## A380539.P3658319799861647200

`A014673(sqrt(A382767(n+1)))`
-/

namespace A380539.P3658319799861647200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (SequenceMachineLib.roundAway (Real.sqrt (A382767 (n + 1) : ℝ))).toNat

end

end A380539.P3658319799861647200

/-! ## A380539.P8827818534366433387

`A381031(n+1)+A053669(n+1)`
-/

namespace A380539.P8827818534366433387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381031 (n + 1) + A053669 (n + 1)

end

end A380539.P8827818534366433387

/-! ## A380539.P6372941232334531295

`A381805(n+1)/A053669(n+1)`
-/

namespace A380539.P6372941232334531295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381805 (n + 1) : ℚ) / (A053669 (n + 1) : ℚ)

end

end A380539.P6372941232334531295

/-! ## A380539.P11161672092329191732

`A382248(n+1)/A089090(n+1)`
-/

namespace A380539.P11161672092329191732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382248 (n + 1) : ℚ) / (A089090 (n + 1) : ℚ)

end

end A380539.P11161672092329191732

/-! ## A380539.P1919511940155759507

`A382767(n+1)/A382248(n+1)`
-/

namespace A380539.P1919511940155759507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382767 (n + 1) : ℚ) / (A382248 (n + 1) : ℚ)

end

end A380539.P1919511940155759507

/-! ## A380539.P12037442855203640165

`A381805(n+1)/A020639(A382248(n+1))`
-/

namespace A380539.P12037442855203640165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381805 (n + 1) : ℚ) / (A020639 (A382248 (n + 1)).toNat : ℚ)

end

end A380539.P12037442855203640165

/-! ## A380539.P4012584375523541560

`A381805(n+1)/A020639(A382767(n+1))`
-/

namespace A380539.P4012584375523541560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381805 (n + 1) : ℚ) / (A020639 (A382767 (n + 1)).toNat : ℚ)

end

end A380539.P4012584375523541560

/-! ## A380539.P17812118077413140983

`A381031(n+1)+A382248(n+1)/A381805(n+1)`
-/

namespace A380539.P17812118077413140983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381031 (n + 1) : ℚ) + (A382248 (n + 1) : ℚ) / (A381805 (n + 1) : ℚ)

end

end A380539.P17812118077413140983

/-! ## A380539.P14636254541341353760

`A053669(A087560(n+1))`
-/

namespace A380539.P14636254541341353760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A087560 (n + 1)).toNat

end

end A380539.P14636254541341353760

/-! ## A380539.P12318218359876221375

`A053669((n+1)*A053669(n+1))`
-/

namespace A380539.P12318218359876221375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 ((n + 1 : ℤ) * A053669 (n + 1)).toNat

end

end A380539.P12318218359876221375

/-! ## A380539.P11272927724353426644

`A053669(lcm(n+1, A053669(n+1)))`
-/

namespace A380539.P11272927724353426644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (Int.lcm (n + 1 : ℤ) (A053669 (n + 1)))

end

end A380539.P11272927724353426644

/-! ## A380539.P13609413987870383870

`A006530(A087560(A087560(n+1))/(n+1))`
-/

namespace A380539.P13609413987870383870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A087560 (A087560 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))).toNat

end

end A380539.P13609413987870383870

/-!
# A380543: Nonsquarefree weak numbers k whose squarefree kernel is a primorial.

The programs for A380543, there is no canonical definition to state claims against.
-/

/-! ## A380543.P3210119975168966804

`∪[A386223(n+1), A386224(n+1)]`
-/

namespace A380543.P3210119975168966804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P3210119975168966804

/-! ## A380543.P8259773755011945614

`filter[A055932(n+1), A389905(#)]`
-/

namespace A380543.P8259773755011945614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A380543.P8259773755011945614

/-! ## A380543.P1796813103752939102

`filter[A304450(n+1), A389905(#)]`
-/

namespace A380543.P1796813103752939102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A380543.P1796813103752939102

/-! ## A380543.P10419535205240387749

`filter[A363814(n+1), A389905(#)]`
-/

namespace A380543.P10419535205240387749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A380543.P10419535205240387749

/-! ## A380543.P7913259288483326332

`filter[A391026(n+1), A137794(#)]`
-/

namespace A380543.P7913259288483326332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A380543.P7913259288483326332

/-! ## A380543.P17464097470901009247

`filter[A391026(n+1), A341629(#)]`
-/

namespace A380543.P17464097470901009247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A380543.P17464097470901009247

/-! ## A380543.P15594391419748789004

`∩[A055932(n+1), A391026(n+1)]`
-/

namespace A380543.P15594391419748789004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P15594391419748789004

/-! ## A380543.P10100321255319927770

`∩[A066311(n+1), A391026(n+1)]`
-/

namespace A380543.P10100321255319927770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P10100321255319927770

/-! ## A380543.P9982839362292845104

`∩[A066312(n+1), A391026(n+1)]`
-/

namespace A380543.P9982839362292845104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P9982839362292845104

/-! ## A380543.P13334925729600117521

`∩[A073491(n+1), A391026(n+1)]`
-/

namespace A380543.P13334925729600117521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P13334925729600117521

/-! ## A380543.P3211128198578366697

`∩[A304450(n+1), A391026(n+1)]`
-/

namespace A380543.P3211128198578366697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P3211128198578366697

/-! ## A380543.P14664415182841671619

`∩[A363814(n+1), A391026(n+1)]`
-/

namespace A380543.P14664415182841671619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P14664415182841671619

/-! ## A380543.P5290895698894808711

`filter[A332785(n+1), A341629(#)]`
-/

namespace A380543.P5290895698894808711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A380543.P5290895698894808711

/-! ## A380543.P17953296902282454838

`∩[A055932(n+1), A332785(n+1)]`
-/

namespace A380543.P17953296902282454838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P17953296902282454838

/-! ## A380543.P14484982787687212125

`∩[A304450(n+1), A332785(n+1)]`
-/

namespace A380543.P14484982787687212125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P14484982787687212125

/-! ## A380543.P13634730391047900733

`∩[A332785(n+1), A363814(n+1)]`
-/

namespace A380543.P13634730391047900733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P13634730391047900733

/-! ## A380543.P14462766325145412014

`∩[A304450(n+1), A390055(n+1)]`
-/

namespace A380543.P14462766325145412014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P14462766325145412014

/-! ## A380543.P2874939677841368385

`∩[A363814(n+1), A389065(n+1)]`
-/

namespace A380543.P2874939677841368385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380543.P2874939677841368385

/-!
# A380544: Numbers of the form A073138(k) XOR A038573(k).

The programs for A380544, there is no canonical definition to state claims against.
-/

/-! ## A380544.P481538837071897394

`record[xor(n, A325401(n))]`
-/

namespace A380544.P481538837071897394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A325401 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380544.P481538837071897394

/-! ## A380544.P262388049114436237

`record[A175919(n)]`
-/

namespace A380544.P262388049114436237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380544.P262388049114436237

/-! ## A380544.P11886332839975578430

`record[xor(n, A030101(n))]`
-/

namespace A380544.P11886332839975578430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A030101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380544.P11886332839975578430

/-! ## A380544.P3762194346170538022

`record[A055944(A140900(n+1))]`
-/

namespace A380544.P3762194346170538022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (A140900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380544.P3762194346170538022

/-! ## A380544.P11736626666445663441

`record[xor(n+1, A059893(n+1))]`
-/

namespace A380544.P11736626666445663441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A059893 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380544.P11736626666445663441

/-!
# A380545: Cumulative sum of the smallest prime in the minimal Goldbach partition for 2*n, n>=2.

The programs for A380545, there is no canonical definition to state claims against.
-/

/-! ## A380545.P7116979985948899079

`a(n-1)+A020481(n+2)` with `a(0)=2`
-/

namespace A380545.P7116979985948899079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A020481 (n + 2)

end

end A380545.P7116979985948899079

/-! ## A380545.P9072549930490117858

`∑[A020481(n+2)]`
-/

namespace A380545.P9072549930490117858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380545.P9072549930490117858

/-! ## A380545.P16361325214513104316

`∑[A000040(A377758(2+n))]`
-/

namespace A380545.P16361325214513104316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377758 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380545.P16361325214513104316

/-! ## A380545.P14783941726678984651

`∑[A008578(A377758(n+2)+1)]`
-/

namespace A380545.P14783941726678984651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A377758 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380545.P14783941726678984651

/-! ## A380545.P13142216450115476121

`∑[A005843(n+2)-A020482(n+2)]`
-/

namespace A380545.P13142216450115476121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2) - A020482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380545.P13142216450115476121

/-! ## A380545.P7693346364407834873

`∑[A210957(2*(n+1))]`
-/

namespace A380545.P7693346364407834873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380545.P7693346364407834873

/-! ## A380545.P930713600580354701

`∑[A020639(A073046(n+2))]`
-/

namespace A380545.P930713600580354701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073046 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380545.P930713600580354701

/-!
# A380546: Cumulative sum of the greatest prime in the minimal Goldbach partition for 2*n, n>=2.

The programs for A380546, there is no canonical definition to state claims against.
-/

/-! ## A380546.P10360618899045973991

`a(n-1)+A020482(n+2)` with `a(0)=2`
-/

namespace A380546.P10360618899045973991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A020482 (n + 2)

end

end A380546.P10360618899045973991

/-! ## A380546.P5240454923140635782

`∑[A020482(2+n)]`
-/

namespace A380546.P5240454923140635782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380546.P5240454923140635782

/-! ## A380546.P13250285790099802413

`∑[A047949(n+2)+2+n]`
-/

namespace A380546.P13250285790099802413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (n + 2) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380546.P13250285790099802413

/-! ## A380546.P15492323693290080200

`∑[2*(n+2)-A020481(n+2)]`
-/

namespace A380546.P15492323693290080200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A020481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380546.P15492323693290080200

/-! ## A380546.P11129583614239435748

`∑[A000040(A377972(n+2))]`
-/

namespace A380546.P11129583614239435748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377972 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380546.P11129583614239435748

/-! ## A380546.P3983239466515364253

`∑[A210957(2*n+3)]`
-/

namespace A380546.P3983239466515364253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380546.P3983239466515364253

/-! ## A380546.P10770102165457386037

`∑[A006530(A073046(n+2))]`
-/

namespace A380546.P10770102165457386037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073046 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380546.P10770102165457386037

/-!
# A380548: Main diagonal of A125585.

The programs for A380548, the canonical program `A380548.P7650037946524293487` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380548 has offset 1).

The definition of A380548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125585, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380548.P7650037946524293487

`A125585(C(n+1+n+1-1, 2)+n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A380548

/-- `A125585(C(n+1+n+1-1, 2)+n+1)` -/
def P7650037946524293487.Spec : Prop :=
  ∀ n, P7650037946524293487.a n = A380548 (n + 1)

theorem P7650037946524293487.correct : P7650037946524293487.Spec := by
  intro n
  simp only [A380548, Nat.add_sub_cancel]

end A380548

/-! ## A380548.P2777029757015881289

`n*∑[char[∑[n]]]+col(n)+1`
-/

namespace A380548.P2777029757015881289
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + SequenceMachineLib.triCol n + 1

end

end A380548.P2777029757015881289

namespace A380548

/-- `n*∑[char[∑[n]]]+col(n)+1` -/
def P2777029757015881289.Spec : Prop :=
  ∀ n, (P2777029757015881289.a n : ℤ) = A380548 (n + 1)

end A380548

/-! ## A380548.P6518407004156227676

`col(n)+(row(n)+1)*n+1`
-/

namespace A380548.P6518407004156227676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + ((SequenceMachineLib.triRow n + 1) * n + 1)

end

end A380548.P6518407004156227676

namespace A380548

/-- `col(n)+(row(n)+1)*n+1` -/
def P6518407004156227676.Spec : Prop :=
  ∀ n, (P6518407004156227676.a n : ℤ) = A380548 (n + 1)

end A380548

/-! ## A380548.P5588617361391462724

`∑[n]+n-C(A083920(n), 2)+1`
-/

namespace A380548.P5588617361391462724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (A083920 n).toNat 2 : ℤ)) + 1

end

end A380548.P5588617361391462724

namespace A380548

/-- `∑[n]+n-C(A083920(n), 2)+1` -/
def P5588617361391462724.Spec : Prop :=
  ∀ n, P5588617361391462724.a n = A380548 (n + 1)

end A380548

/-! ## A380548.P4738912749937948198

`A002260(n+1)+∑[char[∑[n]]]*n`
-/

namespace A380548.P4738912749937948198
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) * n : ℕ) : ℤ)

end

end A380548.P4738912749937948198

namespace A380548

/-- `A002260(n+1)+∑[char[∑[n]]]*n` -/
def P4738912749937948198.Spec : Prop :=
  ∀ n, P4738912749937948198.a n = A380548 (n + 1)

end A380548

/-! ## A380548.P11511599326447913708

`A002262(n)+n*∑[char[∑[n]]]+1`
-/

namespace A380548.P11511599326447913708
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + 1

end

end A380548.P11511599326447913708

namespace A380548

/-- `A002262(n)+n*∑[char[∑[n]]]+1` -/
def P11511599326447913708.Spec : Prop :=
  ∀ n, P11511599326447913708.a n = A380548 (n + 1)

end A380548

/-! ## A380548.P13034358919663664951

`A002024(n+1)*n+col(n)+1`
-/

namespace A380548.P13034358919663664951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * (n : ℤ) + (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A380548.P13034358919663664951

namespace A380548

/-- `A002024(n+1)*n+col(n)+1` -/
def P13034358919663664951.Spec : Prop :=
  ∀ n, P13034358919663664951.a n = A380548 (n + 1)

end A380548

/-! ## A380548.P9171220183379498614

`∑[n]-C(n-A003056(n), 2)+n+1`
-/

namespace A380548.P9171220183379498614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose ((n : ℤ) - A003056 n).toNat 2 : ℤ) + (n : ℤ) + 1

end

end A380548.P9171220183379498614

namespace A380548

/-- `∑[n]-C(n-A003056(n), 2)+n+1` -/
def P9171220183379498614.Spec : Prop :=
  ∀ n, P9171220183379498614.a n = A380548 (n + 1)

end A380548

/-! ## A380548.P12853662003736932296

`(n+1)*∑[A010054(n)]-A025581(n)`
-/

namespace A380548.P12853662003736932296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A025581 n

end

end A380548.P12853662003736932296

namespace A380548

/-- `(n+1)*∑[A010054(n)]-A025581(n)` -/
def P12853662003736932296.Spec : Prop :=
  ∀ n, P12853662003736932296.a n = A380548 (n + 1)

end A380548

/-! ## A380548.P6449739852887511774

`(n+1)*A002024(n+1)-A025581(n)`
-/

namespace A380548.P6449739852887511774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002024 (n + 1) - A025581 n

end

end A380548.P6449739852887511774

namespace A380548

/-- `(n+1)*A002024(n+1)-A025581(n)` -/
def P6449739852887511774.Spec : Prop :=
  ∀ n, P6449739852887511774.a n = A380548 (n + 1)

end A380548

/-!
# A380549: List of numbers of the form i + 3*j + 4*i*j for i, j >= 1.

The programs for A380549, the canonical program `A380549.P265450254835180974` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380549 has offset 1).

The definition of A380549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380549.P265450254835180974

`lt[n+2, A364085(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A380549

/-- `lt[n+2, A364085(n+1)]` -/
def P265450254835180974.Spec : Prop :=
  ∀ n, (P265450254835180974.a n : ℤ) = A380549 (n + 1)

theorem P265450254835180974.correct : P265450254835180974.Spec := by
  intro n
  simp only [A380549, Nat.add_sub_cancel]

end A380549

/-! ## A380549.P9172260694879725944

`lt[4, A303386(A017629(n))]`
-/

namespace A380549.P9172260694879725944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (A017629 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380549.P9172260694879725944

namespace A380549

/-- `lt[4, A303386(A017629(n))]` -/
def P9172260694879725944.Spec : Prop :=
  ∀ n, (P9172260694879725944.a n : ℤ) = A380549 (n + 1)

end A380549

/-! ## A380549.P1599470796094324780

`lt[A377865(2*(n+1)), n]`
-/

namespace A380549.P1599470796094324780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377865 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380549.P1599470796094324780

namespace A380549

/-- `lt[A377865(2*(n+1)), n]` -/
def P1599470796094324780.Spec : Prop :=
  ∀ n, (P1599470796094324780.a n : ℤ) = A380549 (n + 1)

end A380549

/-! ## A380549.P10740209102082070674

`lt[1, A371212(A005408(2*n+1))]`
-/

namespace A380549.P10740209102082070674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371212 (A005408 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380549.P10740209102082070674

namespace A380549

/-- `lt[1, A371212(A005408(2*n+1))]` -/
def P10740209102082070674.Spec : Prop :=
  ∀ n, (P10740209102082070674.a n : ℤ) = A380549 (n + 1)

end A380549

/-! ## A380549.P5880932625751031310

`lt[2, A359240(3*(n+1))]`
-/

namespace A380549.P5880932625751031310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380549.P5880932625751031310

namespace A380549

/-- `lt[2, A359240(3*(n+1))]` -/
def P5880932625751031310.Spec : Prop :=
  ∀ n, (P5880932625751031310.a n : ℤ) = A380549 (n + 1)

end A380549

/-! ## A380549.P4444135894337865467

`lt[5, A325937(A016813(3*n+2))]`
-/

namespace A380549.P4444135894337865467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A016813 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380549.P4444135894337865467

namespace A380549

/-- `lt[5, A325937(A016813(3*n+2))]` -/
def P4444135894337865467.Spec : Prop :=
  ∀ n, (P4444135894337865467.a n : ℤ) = A380549 (n + 1)

end A380549

/-! ## A380549.P3201043879720037403

`lt[3, A033676(3+4*n)]`
-/

namespace A380549.P3201043879720037403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (3 + 4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380549.P3201043879720037403

namespace A380549

/-- `lt[3, A033676(3+4*n)]` -/
def P3201043879720037403.Spec : Prop :=
  ∀ n, (P3201043879720037403.a n : ℤ) = A380549 (n + 1)

end A380549

/-! ## A380549.P6346150223754524928

`lt[2, A321014(A004767(n))]`
-/

namespace A380549.P6346150223754524928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A380549.P6346150223754524928

namespace A380549

/-- `lt[2, A321014(A004767(n))]` -/
def P6346150223754524928.Spec : Prop :=
  ∀ n, (P6346150223754524928.a n : ℤ) = A380549 (n + 1)

end A380549

/-! ## A380549.P6691613975692526799

`lt[A002034(A016825(2*n+1)), n]`
-/

namespace A380549.P6691613975692526799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A016825 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380549.P6691613975692526799

namespace A380549

/-- `lt[A002034(A016825(2*n+1)), n]` -/
def P6691613975692526799.Spec : Prop :=
  ∀ n, (P6691613975692526799.a n : ℤ) = A380549 (n + 1)

end A380549

/-! ## A380549.P8856402843326545053

`lt[A002034(A004767(n)), A261906(n+1)]`
-/

namespace A380549.P8856402843326545053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A004767 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380549.P8856402843326545053

namespace A380549

/-- `lt[A002034(A004767(n)), A261906(n+1)]` -/
def P8856402843326545053.Spec : Prop :=
  ∀ n, (P8856402843326545053.a n : ℤ) = A380549 (n + 1)

end A380549

/-!
# A380550: List of numbers not of the form i + 3*j + 4*i*j for i, j >= 1.

The programs for A380550, the canonical program `A380550.P7718080083690173409` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380550 has offset 1).

The definition of A380550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380550.P7718080083690173409

`eq[A079978(n), A095808(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A380550

/-- `eq[A079978(n), A095808(n+1)]` -/
def P7718080083690173409.Spec : Prop :=
  ∀ n, (P7718080083690173409.a n : ℤ) = A380550 (n + 1)

theorem P7718080083690173409.correct : P7718080083690173409.Spec := by
  intro n
  simp only [A380550, Nat.add_sub_cancel]

end A380550

/-! ## A380550.P5891629933321544154

`eq[1, A371245(A004767(n))]`
-/

namespace A380550.P5891629933321544154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371245 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380550.P5891629933321544154

namespace A380550

/-- `eq[1, A371245(A004767(n))]` -/
def P5891629933321544154.Spec : Prop :=
  ∀ n, (P5891629933321544154.a n : ℤ) = A380550 (n + 1)

end A380550

/-! ## A380550.P16869783913444829490

`eq[1, A371212(A005408(2*n+1))]`
-/

namespace A380550.P16869783913444829490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371212 (A005408 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380550.P16869783913444829490

namespace A380550

/-- `eq[1, A371212(A005408(2*n+1))]` -/
def P16869783913444829490.Spec : Prop :=
  ∀ n, (P16869783913444829490.a n : ℤ) = A380550 (n + 1)

end A380550

/-! ## A380550.P14981923846576778386

`eq[2, A359240(3*(n+1))]`
-/

namespace A380550.P14981923846576778386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380550.P14981923846576778386

namespace A380550

/-- `eq[2, A359240(3*(n+1))]` -/
def P14981923846576778386.Spec : Prop :=
  ∀ n, (P14981923846576778386.a n : ℤ) = A380550 (n + 1)

end A380550

/-! ## A380550.P5505020065390390893

`lt[A157019(A004767(n)), A166148(n+1)]`
-/

namespace A380550.P5505020065390390893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157019 (A004767 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166148 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380550.P5505020065390390893

namespace A380550

/-- `lt[A157019(A004767(n)), A166148(n+1)]` -/
def P5505020065390390893.Spec : Prop :=
  ∀ n, (P5505020065390390893.a n : ℤ) = A380550 (n + 1)

end A380550

/-! ## A380550.P1859151796561636753

`eq[A001511(A001750(n+1)), A125203(3*n+2)]`
-/

namespace A380550.P1859151796561636753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001750 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380550.P1859151796561636753

namespace A380550

/-- `eq[A001511(A001750(n+1)), A125203(3*n+2)]` -/
def P1859151796561636753.Spec : Prop :=
  ∀ n, (P1859151796561636753.a n : ℤ) = A380550 (n + 1)

end A380550

/-!
# A380551: G.f. A(x) satisfies x = Sum_{n>=1} A( x^n*(1-x)^(2*n) ).

The programs for A380551, the canonical program `A380551.P2476517037860401760` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380551 has offset 1).

The definition of A380551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380551.P2476517037860401760

`∑{d}[n+1, A008683((n+1)/#)*C(3*#-1, #-1)*2/(3*#-1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380551

/-- `∑{d}[n+1, A008683((n+1)/#)*C(3*#-1, #-1)*2/(3*#-1)]` -/
def P2476517037860401760.Spec : Prop :=
  ∀ n, P2476517037860401760.a n = (A380551 (n + 1) : ℚ)

end A380551

/-! ## A380551.P10454585789178978975

`A036726(n)+A002266(A151254(n))`
-/

namespace A380551.P10454585789178978975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036726 n + A002266 (A151254 n).toNat

end

end A380551.P10454585789178978975

namespace A380551

/-- `A036726(n)+A002266(A151254(n))` -/
def P10454585789178978975.Spec : Prop :=
  ∀ n, P10454585789178978975.a n = A380551 (n + 1)

end A380551

/-!
# A380552: G.f. A(x) satisfies x = Sum_{n>=1} A( x^n*(1-x)^(3*n) ).

The programs for A380552, the canonical program `A380552.P14386878814842490116` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380552 has offset 1).

The definition of A380552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380552.P14386878814842490116

`∑{d}[n+1, A008683((n+1)/#)*C(4*#-1, #-1)*3/(4*#-1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380552

/-- `∑{d}[n+1, A008683((n+1)/#)*C(4*#-1, #-1)*3/(4*#-1)]` -/
def P14386878814842490116.Spec : Prop :=
  ∀ n, P14386878814842490116.a n = (A380552 (n + 1) : ℚ)

end A380552

/-!
# A380553: G.f. A(x) satisfies x = Sum_{n>=1} A( x^n*(1-x)^(4*n) ).

The programs for A380553, the canonical program `A380553.P12542287577920186072` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380553 has offset 1).

The definition of A380553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380553.P12542287577920186072

`∑{d}[n+1, A008683((n+1)/#)*C(5*#-1, #-1)*4/(5*#-1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380553

/-- `∑{d}[n+1, A008683((n+1)/#)*C(5*#-1, #-1)*4/(5*#-1)]` -/
def P12542287577920186072.Spec : Prop :=
  ∀ n, P12542287577920186072.a n = (A380553 (n + 1) : ℚ)

end A380553

/-!
# A380554: G.f. A(x) satisfies A(x)^4 = A( A(x)^3 * x/(1-x) ).

The programs for A380554, there is no canonical definition to state claims against.
-/

/-! ## A380554.P15018215893765877019

`A353495(A000225(n))+A127902(n+1)`
-/

namespace A380554.P15018215893765877019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A000225 n).toNat + A127902 (n + 1)

end

end A380554.P15018215893765877019

/-! ## A380554.P15403820485804047623

`A141728(A262809(n))+A127902(n+1)`
-/

namespace A380554.P15403820485804047623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141728 (A262809 n).toNat + A127902 (n + 1)

end

end A380554.P15403820485804047623

/-! ## A380554.P10659422436557857188

`A127902(n+1)+A020987(A185274(n+1))`
-/

namespace A380554.P10659422436557857188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127902 (n + 1) + A020987 (A185274 (n + 1)).toNat

end

end A380554.P10659422436557857188

/-! ## A380554.P3968236157785336117

`A127902(n+1)+A121373(A016754(3*n+1))`
-/

namespace A380554.P3968236157785336117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127902 (n + 1) + A121373 (A016754 (3 * n + 1)).toNat

end

end A380554.P3968236157785336117

/-!
# A380557: G.f. satisfies A(x) such that: -1 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n+1) * (1 + x^n)^(n+1) * A(x)^n.

The programs for A380557, there is no canonical definition to state claims against.
-/

/-! ## A380557.P8791944671417523737

`ceil(sqrt(A000010((C(2*n, n)/(n+1))^3)))`
-/

namespace A380557.P8791944671417523737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000010 (SequenceMachineLib.roundAway (((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 3)).toNat : ℝ)⌉

end

end A380557.P8791944671417523737

/-! ## A380557.P7708778619592194793

`A115985(A308240(n))`
-/

namespace A380557.P7708778619592194793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (A308240 n).toNat

end

end A380557.P7708778619592194793

/-!
# A380558: G.f. A(x) satisfies A(x - A(x)) = x^2/(1 - x^2).

The programs for A380558, there is no canonical definition to state claims against.
-/

/-! ## A380558.P10562110674693245496

`A131191(n*a(n-2))` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A380558.P10562110674693245496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  A131191 ((n : ℤ) * a (n - 2)).toNat

end

end A380558.P10562110674693245496

/-!
# A380560: Rectangular array R, read by descending antidiagonals: (row 1) = (R(1,k)) = (A006337(k)), k >= 1; (row n+1) = inverse runlength sequence of row n; and R(n,1) = 1 for n >=1, See Comments.

The programs for A380560, there is no canonical definition to state claims against.
-/

/-! ## A380560.P6728588857408644710

`A000002(A185628(n)-char[∑[n+1]])`
-/

namespace A380560.P6728588857408644710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A185628 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A380560.P6728588857408644710

/-! ## A380560.P4634669219798137936

`A006928(A079726(2*n+1)+A001605(n+1))`
-/

namespace A380560.P4634669219798137936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A079726 (2 * n + 1) + A001605 (n + 1)).toNat

end

end A380560.P4634669219798137936

/-! ## A380560.P12911907737728235546

`A078880(A079726(2*n+1)+A001605(n+1))`
-/

namespace A380560.P12911907737728235546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (A079726 (2 * n + 1) + A001605 (n + 1)).toNat

end

end A380560.P12911907737728235546

/-! ## A380560.P9020888463182802159

`A000002(gcd(A064510(n+1), A144484(n)))`
-/

namespace A380560.P9020888463182802159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Int.gcd (A064510 (n + 1)) (A144484 n))

end

end A380560.P9020888463182802159

/-! ## A380560.P17526908729184372078

`A001285(lcm(A001265(n+2), A175081(n+1)))`
-/

namespace A380560.P17526908729184372078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Int.lcm (A001265 (n + 2)) (A175081 (n + 1)))

end

end A380560.P17526908729184372078

/-!
# A380562: Rectangular array R read by descending antidiagonals: (row 1) = (R(1,k)) = (A006337(k)), k >= 1; (row n+1) = inverse runlength sequence of row n; and R(n,1) = (1, 2, 2, 1, 2, 2, 1, 2, 2, ...) = (A130196(n)) for n >= 1. See Comments.

The programs for A380562, there is no canonical definition to state claims against.
-/

/-! ## A380562.P9659619101634617404

`A000002(A020639(n+1)+9*n*(2*n-1))`
-/

namespace A380562.P9659619101634617404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A020639 (n + 1) + 9 * ((n : ℤ) * ((2 * n : ℤ) - 1))).toNat

end

end A380562.P9659619101634617404

/-! ## A380562.P15180040006827776564

`A000002(A152994(n)+A020639(n+1))`
-/

namespace A380562.P15180040006827776564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A152994 n + A020639 (n + 1)).toNat

end

end A380562.P15180040006827776564

/-! ## A380562.P11855498384966703998

`A000002(A219206(n+1)+n)`
-/

namespace A380562.P11855498384966703998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A219206 (n + 1) + (n : ℤ)).toNat

end

end A380562.P11855498384966703998

/-! ## A380562.P1672839254620882308

`A270644(A047726(3*(n+1))*A270632(n))`
-/

namespace A380562.P1672839254620882308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270644 (A047726 (3 * (n + 1)) * A270632 n).toNat

end

end A380562.P1672839254620882308

/-! ## A380562.P7583955008094497684

`A000002(A079262(n)+A047304(n+1))`
-/

namespace A380562.P7583955008094497684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A079262 n + A047304 (n + 1)).toNat

end

end A380562.P7583955008094497684

/-!
# A380563: Rectangular array R read by descending antidiagonals: (row 1) = (R(1,k)) = (1 + A010060(k)), k >= 1; (row n+1) = inverse runlength sequence of row n; and R(n,1) = (1, 1, 1, 1, 1,...) = (A130196(n)) for n >= 1. See Comments.

The programs for A380563, there is no canonical definition to state claims against.
-/

/-! ## A380563.P15793430759436488426

`A270643(xor(3, A248987(n+1)))`
-/

namespace A380563.P15793430759436488426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 (Int.xor 3 (A248987 (n + 1))).toNat

end

end A380563.P15793430759436488426

/-! ## A380563.P15782664479177969258

`A270643(A050302(n+1))`
-/

namespace A380563.P15782664479177969258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 (A050302 (n + 1)).toNat

end

end A380563.P15782664479177969258

/-! ## A380563.P9740174150813990393

`A112526(A187617(n+2))+A057427(n)`
-/

namespace A380563.P9740174150813990393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (A187617 (n + 2)).toNat + A057427 n

end

end A380563.P9740174150813990393

/-! ## A380563.P9691698365754563764

`A341593(A370527(n+2)+7)`
-/

namespace A380563.P9691698365754563764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341593 (A370527 (n + 2) + 7).toNat

end

end A380563.P9691698365754563764

/-! ## A380563.P13632228027484172479

`A000002(and(A054840(3*n+5), A116063(n+1)))`
-/

namespace A380563.P13632228027484172479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Int.land (A054840 (3 * n + 5)) (A116063 (n + 1))).toNat

end

end A380563.P13632228027484172479

/-!
# A380565: Numbers k such that k^2 - 2 divides 2^k - 2.

The programs for A380565, there is no canonical definition to state claims against.
-/

/-! ## A380565.P6113036012028235720

`a(n-2)²²` with `a(0)=1, a(1)=2, a(2)=4, a(3)=46`
-/

namespace A380565.P6113036012028235720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 46] fun n a =>
  (a (n - 2) ^ 2) ^ 2

end

end A380565.P6113036012028235720

/-!
# A380567: a(n) = k the least number for which k^6 is n digits long and the sum of digits of k^6 is the maximum possible for a 6th power of that length (A373994(n)).

The programs for A380567, there is no canonical definition to state claims against.
-/

/-! ## A380567.P12832501432066425709

`A018261(n+1)+1-A225641(n)`
-/

namespace A380567.P12832501432066425709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 1) + 1 - A225641 n

end

end A380567.P12832501432066425709

/-! ## A380567.P10743992743303883094

`A018261(n+1)-A211242(col(n)+1)`
-/

namespace A380567.P10743992743303883094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 1) - A211242 (SequenceMachineLib.triCol n + 1)

end

end A380567.P10743992743303883094

/-! ## A380567.P6206103493969688258

`A018261(n+1)+1-A047913(n+1)`
-/

namespace A380567.P6206103493969688258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 1) + 1 - A047913 (n + 1)

end

end A380567.P6206103493969688258

/-! ## A380567.P7249817665592059128

`A018261(n+1)+1-A153452(n+1)`
-/

namespace A380567.P7249817665592059128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 1) + 1 - A153452 (n + 1)

end

end A380567.P7249817665592059128

/-! ## A380567.P13906107834680033253

`A018261(n+1)-A180662((n-1)*char[and(n, n+1)+1+n])`
-/

namespace A380567.P13906107834680033253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (n + 1) - A180662 (((n : ℤ) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A380567.P13906107834680033253

/-!
# A380570: Triangle T(n, k) read by rows: Row n gives the coefficients of the even powers in Product_{t=1..n}(2*x - (2*t - 1))*Product_{t=1..n}(2*x + (2*t - 1)).

The programs for A380570, there is no canonical definition to state claims against.
-/

/-! ## A380570.P2928991086975328713

`A008956(C(row(n)+1, 2)+col(n))*4^(row(n)-col(n))*(-1)^col(n)`
-/

namespace A380570.P2928991086975328713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008956 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) * (4 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * ((-1) ^ SequenceMachineLib.triCol n : ℚ)

end

end A380570.P2928991086975328713

/-!
# A380571: Number of Dynkin systems on [n].

The programs for A380571, there is no canonical definition to state claims against.
-/

/-! ## A380571.P9473420503682251958

`A002372((n+1)^(n-1))+1`
-/

namespace A380571.P9473420503682251958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + 1

end

end A380571.P9473420503682251958

/-! ## A380571.P5528734009548901089

`A035026((n+1)^(n-1))+1`
-/

namespace A380571.P5528734009548901089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + 1

end

end A380571.P5528734009548901089

/-!
# A380572: Complement of A380509.

The programs for A380572, the canonical program `A380572.P12751547405263348882` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380572 has offset 1).

The definition of A380572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380572.P12751547405263348882

`∪[A005098(n+1), A190105(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380572

/-- `∪[A005098(n+1), A190105(n+1)]` -/
def P12751547405263348882.Spec : Prop :=
  ∀ n, (P12751547405263348882.a n : ℤ) = A380572 (n + 1)

theorem P12751547405263348882.correct : P12751547405263348882.Spec := by
  intro n
  simp only [A380572, Nat.add_sub_cancel]

end A380572

/-! ## A380572.P3960511223315851215

`lt[A005185(n+1), A020639(A093544(n+1))]`
-/

namespace A380572.P3960511223315851215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093544 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380572.P3960511223315851215

namespace A380572

/-- `lt[A005185(n+1), A020639(A093544(n+1))]` -/
def P3960511223315851215.Spec : Prop :=
  ∀ n, (P3960511223315851215.a n : ℤ) = A380572 (n + 1)

end A380572

/-! ## A380572.P15152109260931971198

`lt[A004709(n+3), A001414(A016813(n))]`
-/

namespace A380572.P15152109260931971198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380572.P15152109260931971198

namespace A380572

/-- `lt[A004709(n+3), A001414(A016813(n))]` -/
def P15152109260931971198.Spec : Prop :=
  ∀ n, (P15152109260931971198.a n : ℤ) = A380572 (n + 1)

end A380572

/-! ## A380572.P12971261268133806625

`record[A032742(n+1)%A199423(n+1)]`
-/

namespace A380572.P12971261268133806625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (n + 1)) (A199423 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380572.P12971261268133806625

namespace A380572

/-- `record[A032742(n+1)%A199423(n+1)]` -/
def P12971261268133806625.Spec : Prop :=
  ∀ n, P12971261268133806625.a n = A380572 (n + 1)

end A380572

/-! ## A380572.P17219302396874062665

`record[A152271(n)%A006530(2*n+3)]`
-/

namespace A380572.P17219302396874062665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152271 n) (A006530 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380572.P17219302396874062665

namespace A380572

/-- `record[A152271(n)%A006530(2*n+3)]` -/
def P17219302396874062665.Spec : Prop :=
  ∀ n, P17219302396874062665.a n = A380572 (n + 1)

end A380572

/-! ## A380572.P1998558522518956532

`record[A027656(n)%A006530(2*n+5)]`
-/

namespace A380572.P1998558522518956532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027656 n) (A006530 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380572.P1998558522518956532

namespace A380572

/-- `record[A027656(n)%A006530(2*n+5)]` -/
def P1998558522518956532.Spec : Prop :=
  ∀ n, P1998558522518956532.a n = A380572 (n + 1)

end A380572

/-! ## A380572.P11692771597380055846

`record[A289439(n+2)%A006530(2*n+5)]`
-/

namespace A380572.P11692771597380055846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289439 (n + 2)) (A006530 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380572.P11692771597380055846

namespace A380572

/-- `record[A289439(n+2)%A006530(2*n+5)]` -/
def P11692771597380055846.Spec : Prop :=
  ∀ n, P11692771597380055846.a n = A380572 (n + 1)

end A380572

/-! ## A380572.P4393937619226599535

`lt[A028310(n), A006530(A004273(2*n+1))]`
-/

namespace A380572.P4393937619226599535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004273 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380572.P4393937619226599535

namespace A380572

/-- `lt[A028310(n), A006530(A004273(2*n+1))]` -/
def P4393937619226599535.Spec : Prop :=
  ∀ n, (P4393937619226599535.a n : ℤ) = A380572 (n + 1)

end A380572

/-! ## A380572.P16618793601718061544

`lt[A075255(A093544(n+1)), 1]`
-/

namespace A380572.P16618793601718061544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A093544 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380572.P16618793601718061544

namespace A380572

/-- `lt[A075255(A093544(n+1)), 1]` -/
def P16618793601718061544.Spec : Prop :=
  ∀ n, (P16618793601718061544.a n : ℤ) = A380572 (n + 1)

end A380572

/-!
# A380573: Number of distinct free polyominoes that are terraces in the first n levels of the stepped pyramid described in A245092.

The programs for A380573, there is no canonical definition to state claims against.
-/

/-! ## A380573.P10825614954762678967

`∑[gcd(n, A117546(n))]`
-/

namespace A380573.P10825614954762678967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A117546 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380573.P10825614954762678967

/-! ## A380573.P254414239775027483

`∑[A387053(n+2)!]`
-/

namespace A380573.P254414239775027483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A387053 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380573.P254414239775027483

/-! ## A380573.P12947953476530477227

`comp[A313659(n+3)]+1`
-/

namespace A380573.P12947953476530477227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313659 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A380573.P12947953476530477227

/-! ## A380573.P5820621492742778448

`lt[A103153(n+1), 6]+1`
-/

namespace A380573.P5820621492742778448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A380573.P5820621492742778448

/-! ## A380573.P752630361926703615

`comp[A379301(2*n+3)]+1`
-/

namespace A380573.P752630361926703615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379301 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A380573.P752630361926703615

/-!
# A380574: For an integer k with prime factorization p_1*p_2*p_3* ... *p_m let k* = (p_1+1)*(p_2+1)*(p_3+1)* ... *(p_m+1); sequence gives k* such that k* is divisible by k.

The programs for A380574, there is no canonical definition to state claims against.
-/

/-! ## A380574.P15949066711289799844

`∩[A025613(n+1), A064476(n+1)]`
-/

namespace A380574.P15949066711289799844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380574.P15949066711289799844

/-! ## A380574.P18289074494134527521

`∩[A064476(n+1), A342009(n+1)]`
-/

namespace A380574.P18289074494134527521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380574.P18289074494134527521

/-! ## A380574.P11092615319431044211

`∩[A064476(n+1), A349725(n+1)]`
-/

namespace A380574.P11092615319431044211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380574.P11092615319431044211

/-! ## A380574.P12756175823036313991

`∩[A064476(n+1), A230781(n+1)]`
-/

namespace A380574.P12756175823036313991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380574.P12756175823036313991

/-!
# A380575: One half of the sum of the perimeters of the free polyominoes with n cells.

The programs for A380575, there is no canonical definition to state claims against.
-/

/-! ## A380575.P16535692984774997300

`A380287(n+1)/2`
-/

namespace A380575.P16535692984774997300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380287 (n + 1) : ℚ) / 2

end

end A380575.P16535692984774997300

/-! ## A380575.P14083699530310545805

`A090331(A380287(n+1))`
-/

namespace A380575.P14083699530310545805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (A380287 (n + 1)).toNat

end

end A380575.P14083699530310545805

/-! ## A380575.P3668882268744496610

`A025480(A380287(n+1))`
-/

namespace A380575.P3668882268744496610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A380287 (n + 1)).toNat

end

end A380575.P3668882268744496610

/-! ## A380575.P13907192390865976697

`A064455(A380287(n+1)-1)`
-/

namespace A380575.P13907192390865976697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A380287 (n + 1) - 1).toNat

end

end A380575.P13907192390865976697

/-!
# A380576: Total number of "block reversals" needed to transform all permutations of [n] into 12...n.

The programs for A380576, there is no canonical definition to state claims against.
-/

/-! ## A380576.P17907337376520359157

`A025461(A304371(n))`
-/

namespace A380576.P17907337376520359157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (A304371 n).toNat

end

end A380576.P17907337376520359157

/-! ## A380576.P15471640401430356033

`A074286(A344065(n))/3`
-/

namespace A380576.P15471640401430356033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074286 (A344065 n).toNat : ℚ) / 3

end

end A380576.P15471640401430356033

/-!
# A380578: Number of nonisomorphic abelian groups of order n which appear as the group of units of the ring Z/kZ taken over every k such that phi(k) = n.

The programs for A380578, there is no canonical definition to state claims against.
-/

/-! ## A380578.P9114585297998528750

`A000688(n+1)-A394390(n+1)`
-/

namespace A380578.P9114585297998528750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A394390 (n + 1)

end

end A380578.P9114585297998528750

/-! ## A380578.P1703842228941609870

`∑{d}[n+1, A188585(#)]-A394390(n+1)`
-/

namespace A380578.P1703842228941609870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188585 d - A394390 (n + 1)

end

end A380578.P1703842228941609870

/-! ## A380578.P9187705378151138785

`∏{e}[n+1, A242699(#)]-A394390(n+1)`
-/

namespace A380578.P9187705378151138785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64) - A394390 (n + 1)

end

end A380578.P9187705378151138785

/-! ## A380578.P15428522668965654473

`∏{e}[n+1, A330642(#)]-A394390(n+1)`
-/

namespace A380578.P15428522668965654473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A330642 (Nat.factorization (f1 n) p) - A394390 (n + 1)

end

end A380578.P15428522668965654473

/-! ## A380578.P5294644243703141673

`∏{e}[n+1, A332746(#)]-A394390(n+1)`
-/

namespace A380578.P5294644243703141673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A332746 (Nat.factorization (f1 n) p) - A394390 (n + 1)

end

end A380578.P5294644243703141673

/-! ## A380578.P4866169065628637197

`A000001(n+1)-A060689(n+1)-A394390(n+1)`
-/

namespace A380578.P4866169065628637197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A060689 (n + 1) - A394390 (n + 1)

end

end A380578.P4866169065628637197

/-!
# A380579: Triangle read by rows in which row n lists n successive integers in descending order starting with the n-th positive integer not divisible by 3, with n >= 1 and 1 <= k <= n.

The programs for A380579, the canonical program `A380579.P8739931289538626971` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380579 has offset 1).

The definition of A380579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380579.P8739931289538626971

`A001651(row(n)+1)-col(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A380579

/-- `A001651(row(n)+1)-col(n)` -/
def P8739931289538626971.Spec : Prop :=
  ∀ n, P8739931289538626971.a n = A380579 (n + 1)

theorem P8739931289538626971.correct : P8739931289538626971.Spec := by
  intro n
  simp only [A380579, Nat.add_sub_cancel]

end A380579

/-! ## A380579.P1651320892306688870

`ceil((sqrt(8*(n+1)+1)-1)/4)+row(n)-col(n)`
-/

namespace A380579.P1651320892306688870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (8 * (n + 1) + 1 : ℝ) - 1) / 4⌉ + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A380579.P1651320892306688870

namespace A380579

/-- `ceil((sqrt(8*(n+1)+1)-1)/4)+row(n)-col(n)` -/
def P1651320892306688870.Spec : Prop :=
  ∀ n, P1651320892306688870.a n = A380579 (n + 1)

end A380579

/-! ## A380579.P12854682278429611367

`ceil(A131914(n+1)/2)`
-/

namespace A380579.P12854682278429611367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131914 (n + 1) : ℚ) / 2⌉

end

end A380579.P12854682278429611367

namespace A380579

/-- `ceil(A131914(n+1)/2)` -/
def P12854682278429611367.Spec : Prop :=
  ∀ n, P12854682278429611367.a n = A380579 (n + 1)

end A380579

/-! ## A380579.P14739747893888023454

`A393450(n+1)-Δ[n²]`
-/

namespace A380579.P14739747893888023454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393450 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A380579.P14739747893888023454

namespace A380579

/-- `A393450(n+1)-Δ[n²]` -/
def P14739747893888023454.Spec : Prop :=
  ∀ n, P14739747893888023454.a n = A380579 (n + 1)

end A380579

/-! ## A380579.P2582371097191592398

`comp[∑[n]]-A074147(n+1)`
-/

namespace A380579.P2582371097191592398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A074147 (n + 1)

end

end A380579.P2582371097191592398

namespace A380579

/-- `comp[∑[n]]-A074147(n+1)` -/
def P2582371097191592398.Spec : Prop :=
  ∀ n, P2582371097191592398.a n = A380579 (n + 1)

end A380579

/-! ## A380579.P9268663637897065131

`A004526((n+1)²%(comp[∑[n]]+2)+1)`
-/

namespace A380579.P9268663637897065131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1) ^ 2 % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) + 1)

end

end A380579.P9268663637897065131

namespace A380579

/-- `A004526((n+1)²%(comp[∑[n]]+2)+1)` -/
def P9268663637897065131.Spec : Prop :=
  ∀ n, P9268663637897065131.a n = A380579 (n + 1)

end A380579

/-! ## A380579.P899158997873201198

`A204164(n+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A380579.P899158997873201198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A380579.P899158997873201198

namespace A380579

/-- `A204164(n+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P899158997873201198.Spec : Prop :=
  ∀ n, P899158997873201198.a n = A380579 (n + 1)

end A380579

/-! ## A380579.P16021644780000923983

`A065033(A131914(n+1))`
-/

namespace A380579.P16021644780000923983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A131914 (n + 1)).toNat

end

end A380579.P16021644780000923983

namespace A380579

/-- `A065033(A131914(n+1))` -/
def P16021644780000923983.Spec : Prop :=
  ∀ n, P16021644780000923983.a n = A380579 (n + 1)

end A380579

/-! ## A380579.P10704825267614354371

`A179753(A128217(n+2))`
-/

namespace A380579.P10704825267614354371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A128217 (n + 2)).toNat

end

end A380579.P10704825267614354371

namespace A380579

/-- `A179753(A128217(n+2))` -/
def P10704825267614354371.Spec : Prop :=
  ∀ n, P10704825267614354371.a n = A380579 (n + 1)

end A380579

/-! ## A380579.P16002733494911791035

`A204164(n+1)+A025581(n)`
-/

namespace A380579.P16002733494911791035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (n + 1) + A025581 n

end

end A380579.P16002733494911791035

namespace A380579

/-- `A204164(n+1)+A025581(n)` -/
def P16002733494911791035.Spec : Prop :=
  ∀ n, P16002733494911791035.a n = A380579 (n + 1)

end A380579

/-!
# A380582: a(n) = [x^n] G(x)^n, where G(x) = Product_{k >= 1} ((1 + x^k)/(1 - x^k))^(k^2) is the g.f. of A206622.

The programs for A380582, there is no canonical definition to state claims against.
-/

/-! ## A380582.P6357420933120180942

`A007094(A258791(n)-A038219(n+1))`
-/

namespace A380582.P6357420933120180942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A258791 n - A038219 (n + 1)).toNat

end

end A380582.P6357420933120180942

/-!
# A380583: a(n) = [x^n] G(x)^n, where G(x) = Product_{k >= 1} ((1 + x^(2*k))/(1 - x^k))^(k^2).

The programs for A380583, there is no canonical definition to state claims against.
-/

/-! ## A380583.P11609157225867046519

`A278061(A279637(n)-A048146(n+1))`
-/

namespace A380583.P11609157225867046519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278061 (A279637 n - A048146 (n + 1)).toNat

end

end A380583.P11609157225867046519

/-!
# A380584: Number of positive integers <= n that have the same sum of odd divisors as n.

The programs for A380584, there is no canonical definition to state claims against.
-/

/-! ## A380584.P15679223187213138429

`A382290(A208183(n))+A001511(n+1)`
-/

namespace A380584.P15679223187213138429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (A208183 n).toNat + A001511 (n + 1)

end

end A380584.P15679223187213138429

/-! ## A380584.P10749058234986450529

`A307608(A077661(2*(n+2)))+A007814(n+1)`
-/

namespace A380584.P10749058234986450529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307608 (A077661 (2 * (n + 2))).toNat + A007814 (n + 1)

end

end A380584.P10749058234986450529

/-! ## A380584.P1274830126268923153

`A304118(3*n+4)+A007814(n+1)`
-/

namespace A380584.P1274830126268923153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (3 * n + 4) + A007814 (n + 1)

end

end A380584.P1274830126268923153

/-! ## A380584.P15706319208905433530

`lcm(val(n+1, 2)+1, A279060(A122111(2*n+1)))`
-/

namespace A380584.P15706319208905433530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (A279060 (A122111 (2 * n + 1)).toNat)

end

end A380584.P15706319208905433530

/-! ## A380584.P17637058671413899025

`A257679(A130534(n))+A007814(n+1)`
-/

namespace A380584.P17637058671413899025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A130534 n).toNat + A007814 (n + 1)

end

end A380584.P17637058671413899025

/-!
# A380585: a(n) = floor(n^2 / 10^m) + (n^2 mod 10^m) where m is the number of decimal digits in n.

The programs for A380585, there is no canonical definition to state claims against.
-/

/-! ## A380585.P980938846130822941

`A007953(n²*A143683(n))`
-/

namespace A380585.P980938846130822941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n ^ 2 : ℤ) * A143683 n).toNat

end

end A380585.P980938846130822941

/-! ## A380585.P6723724328719775961

`A004159(n*A362073(A069816(n)))`
-/

namespace A380585.P6723724328719775961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 ((n : ℤ) * A362073 (A069816 n).toNat).toNat

end

end A380585.P6723724328719775961

/-! ## A380585.P15148184804623036006

`or(A004159(n), A004159(A185037(2*(n+2))))`
-/

namespace A380585.P15148184804623036006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004159 n) (A004159 (A185037 (2 * (n + 2))).toNat)

end

end A380585.P15148184804623036006

/-!
# A380586: Split A377091 into sublists consisting of runs of terms with the same sign. Then a(n) is the maximum value of the first differences of the sorted terms within the n-th sublist.

The programs for A380586, there is no canonical definition to state claims against.
-/

/-! ## A380586.P18047498790046045629

`gcd(2, A032552(n+4))`
-/

namespace A380586.P18047498790046045629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A032552 (n + 4))

end

end A380586.P18047498790046045629

/-! ## A380586.P14975306184254868857

`floor(root(∏{p}[A336331(n+1), #], 11))`
-/

namespace A380586.P14975306184254868857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℝ) ^ (1 / (11 : ℝ))⌋

end

end A380586.P14975306184254868857

/-! ## A380586.P9301594424782818168

`A048821(C((2*n+7-3*(-1)^n)/4, 24))`
-/

namespace A380586.P9301594424782818168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (Nat.choose (SequenceMachineLib.roundAway (((2 * n : ℤ) + (7 - 3 * (-1) ^ n) : ℚ) / 4)).toNat 24)

end

end A380586.P9301594424782818168

/-! ## A380586.P5458407771686569269

`A244227(A078725(n+1))`
-/

namespace A380586.P5458407771686569269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 (A078725 (n + 1)).toNat

end

end A380586.P5458407771686569269

/-! ## A380586.P10497636511581154719

`gcd(A153675(n+1), A274153(n))`
-/

namespace A380586.P10497636511581154719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153675 (n + 1)) (A274153 n)

end

end A380586.P10497636511581154719

/-!
# A380588: Split A377091 into sublists consisting of runs of terms with the same sign. Then a(n) is max(b) - min(b), where b is the n-th sublist.

The programs for A380588, there is no canonical definition to state claims against.
-/

/-! ## A380588.P1729990993882169990

`(A379882(n+1)-1)%A007865(2*(n+1))`
-/

namespace A380588.P1729990993882169990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379882 (n + 1) - 1) (A007865 (2 * (n + 1)))

end

end A380588.P1729990993882169990

/-! ## A380588.P2428888323016495300

`A379882(n+1)-A228572(A000217(n))`
-/

namespace A380588.P2428888323016495300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379882 (n + 1) - A228572 (A000217 n).toNat

end

end A380588.P2428888323016495300

/-! ## A380588.P17008740686660256112

`A379882(n+1)+A008683(A089782(n+1))`
-/

namespace A380588.P17008740686660256112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379882 (n + 1) + A008683 (A089782 (n + 1)).toNat

end

end A380588.P17008740686660256112

/-! ## A380588.P1985844155064032512

`A379882(n+1)+A008683(A133959(n+1))`
-/

namespace A380588.P1985844155064032512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379882 (n + 1) + A008683 (A133959 (n + 1)).toNat

end

end A380588.P1985844155064032512

/-! ## A380588.P17839804458632165730

`A379882(n+1)-A035316(A141978(n+1))`
-/

namespace A380588.P17839804458632165730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379882 (n + 1) - A035316 (A141978 (n + 1)).toNat

end

end A380588.P17839804458632165730

/-!
# A380591: a(n) is the number of dissections of a convex (n+2)-sided polygon by nonintersecting diagonals into triangles and quadrilaterals such that at least one of the dividing diagonals passes through a chosen vertex.

The programs for A380591, the canonical program `A380591.P13031959473465638529` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380591 has offset 1).

The definition of A380591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380591.P4902832994498146004

`A001002(n+1)+A217596(n+1)`
-/

namespace A380591.P4902832994498146004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001002 (n + 1) + A217596 (n + 1)

end

end A380591.P4902832994498146004

namespace A380591

/-- `A001002(n+1)+A217596(n+1)` -/
def P4902832994498146004.Spec : Prop :=
  ∀ n, P4902832994498146004.a n = A380591 (n + 1)

end A380591

/-! ## A380591.P13031959473465638529

`A001002(n+1)-(A052706(n+1)+A001002(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A380591

/-- `A001002(n+1)-(A052706(n+1)+A001002(n))` -/
def P13031959473465638529.Spec : Prop :=
  ∀ n, P13031959473465638529.a n = A380591 (n + 1)

theorem P13031959473465638529.correct : P13031959473465638529.Spec := by
  intro n
  simp only [A380591, Nat.add_sub_cancel]

end A380591

/-! ## A380591.P14728600176714795018

`A001002(n+1)+A001002(n)-A400582(n+1)`
-/

namespace A380591.P14728600176714795018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001002 (n + 1) + A001002 n - A400582 (n + 1)

end

end A380591.P14728600176714795018

namespace A380591

/-- `A001002(n+1)+A001002(n)-A400582(n+1)` -/
def P14728600176714795018.Spec : Prop :=
  ∀ n, P14728600176714795018.a n = A380591 (n + 1)

end A380591

/-!
# A380596: Numbers with embedded palindromes as proper substrings of the term.

The programs for A380596, there is no canonical definition to state claims against.
-/

/-! ## A380596.P15195836641945857004

`A171901(n+10)`
-/

namespace A380596.P15195836641945857004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 10)

end

end A380596.P15195836641945857004

/-! ## A380596.P10264496415632324876

`A044821(n+19)`
-/

namespace A380596.P10264496415632324876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (n + 19)

end

end A380596.P10264496415632324876

/-! ## A380596.P17802861894534119480

`eq[1, A196368(n)+A107843(n+1)]`
-/

namespace A380596.P17802861894534119480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n + A107843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380596.P17802861894534119480

/-! ## A380596.P972445779523572207

`∪[A033284(n+1), A044866(n+1)]`
-/

namespace A380596.P972445779523572207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380596.P972445779523572207

/-! ## A380596.P8684154572473444675

`∪[A044866(n+1), A074842(n+1)]`
-/

namespace A380596.P8684154572473444675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380596.P8684154572473444675

/-! ## A380596.P10530463100487702292

`∪[A044866(n+1), A123673(n+1)]`
-/

namespace A380596.P10530463100487702292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380596.P10530463100487702292

/-! ## A380596.P14285687816164309049

`∪[A044866(n+1), A177769(n+1)]`
-/

namespace A380596.P14285687816164309049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380596.P14285687816164309049

/-! ## A380596.P13992229514481940489

`∪[A044866(n+1), A291266(n+1)]`
-/

namespace A380596.P13992229514481940489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380596.P13992229514481940489

/-! ## A380596.P7884937587448627540

`∪[A044866(n+1), A316849(n+1)]`
-/

namespace A380596.P7884937587448627540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380596.P7884937587448627540

