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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A362601: Domination number for pawns' graph P(n).

The programs for A362601, there is no canonical definition to state claims against.
-/

/-! ## A362601.P4038582158578282384

`∑[A386641(∑[A325347(n+1)])]`
-/

namespace A362601.P4038582158578282384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325347 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386641 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362601.P4038582158578282384

/-! ## A362601.P3466958455907577487

`∑[A000120(A331456(floor(γ*n)))]`
-/

namespace A362601.P3466958455907577487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A331456 ⌊Real.eulerMascheroniConstant * (n : ℝ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362601.P3466958455907577487

/-! ## A362601.P12194329324331492173

`A084525(n)+A001511(A135504(n+1))`
-/

namespace A362601.P12194329324331492173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n + A001511 (A135504 (n + 1)).toNat

end

end A362601.P12194329324331492173

/-! ## A362601.P5529544462117637965

`A376698(A104429(n))+A065514(n+1)`
-/

namespace A362601.P5529544462117637965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376698 (A104429 n).toNat + A065514 (n + 1)

end

end A362601.P5529544462117637965

/-! ## A362601.P5199542838886882279

`A337484(n+2)+A000120(A025192(n))`
-/

namespace A362601.P5199542838886882279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337484 (n + 2) + A000120 (A025192 n).toNat

end

end A362601.P5199542838886882279

/-!
# A362602: Integers in the interval [Pi*k - 1/k, Pi*k + 1/k] for some k > 0 that are numerators of convergents to 2*Pi.

The programs for A362602, there is no canonical definition to state claims against.
-/

/-! ## A362602.P10810331113000475563

`∩[A046955(n+1), A265735(n+1)]`
-/

namespace A362602.P10810331113000475563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362602.P10810331113000475563

/-!
# A362603: Number of permutations p of [2n] in which exactly the first n terms satisfy the up-down property p(1) < p(2) > p(3) < ... .

The programs for A362603, there is no canonical definition to state claims against.
-/

/-! ## A362603.P7387952923400571807

`A092580(A004277(n²))`
-/

namespace A362603.P7387952923400571807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092580 (A004277 (n ^ 2)).toNat

end

end A362603.P7387952923400571807

/-! ## A362603.P16885483145188020511

`A092580(A028310(2*n²))`
-/

namespace A362603.P16885483145188020511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092580 (A028310 (2 * n ^ 2)).toNat

end

end A362603.P16885483145188020511

/-! ## A362603.P5753610923666373228

`A092580(A001105(n)+A000007(n))`
-/

namespace A362603.P5753610923666373228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092580 (A001105 n + A000007 n).toNat

end

end A362603.P5753610923666373228

/-! ## A362603.P2932534918161543585

`A092580(A028310(n)+A000384(n))`
-/

namespace A362603.P2932534918161543585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092580 (A028310 n + A000384 n).toNat

end

end A362603.P2932534918161543585

/-!
# A362604: Expansion of e.g.f. 1/(1 + LambertW(-x * exp(x^2))).

The programs for A362604, the canonical program `A362604.P43512675331077735` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362604 has offset 0).

The definition of A362604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362604.P43512675331077735

`n!*∑{#}[floor(n/2), (n-2*#)^(n-#)/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362604

/-- `n!*∑{#}[floor(n/2), (n-2*#)^(n-#)/(#!*(n-2*#)!)]` -/
def P43512675331077735.Spec : Prop :=
  ∀ n, P43512675331077735.a n = (A362604 n : ℚ)

end A362604

/-! ## A362604.P17807065743253811183

`A333489(A359893(n+5)+A352327(n))`
-/

namespace A362604.P17807065743253811183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A359893 (n + 5) + A352327 n).toNat

end

end A362604.P17807065743253811183

namespace A362604

/-- `A333489(A359893(n+5)+A352327(n))` -/
def P17807065743253811183.Spec : Prop :=
  ∀ n, P17807065743253811183.a n = A362604 n

end A362604

/-!
# A362605: Numbers whose prime factorization has more than one mode. Numbers without a unique exponent of maximum frequency in the prime signature.

The programs for A362605, the canonical program `A362605.P13958044388673276970` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362605 has offset 1).

The definition of A362605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362605.P13958044388673276970

`comp[A356862(n+1)-2]+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A362605

/-- `comp[A356862(n+1)-2]+2` -/
def P13958044388673276970.Spec : Prop :=
  ∀ n, (P13958044388673276970.a n : ℤ) = A362605 (n + 1)

theorem P13958044388673276970.correct : P13958044388673276970.Spec := by
  intro n
  simp only [A362605, Nat.add_sub_cancel]

end A362605

/-! ## A362605.P18270558258450156393

`lt[1, A362611(n+1)]+1`
-/

namespace A362605.P18270558258450156393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A362605.P18270558258450156393

namespace A362605

/-- `lt[1, A362611(n+1)]+1` -/
def P18270558258450156393.Spec : Prop :=
  ∀ n, (P18270558258450156393.a n : ℤ) = A362605 (n + 1)

end A362605

/-! ## A362605.P8146378247359723999

`lt[1, A362611(A028310(n))]`
-/

namespace A362605.P8146378247359723999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A362605.P8146378247359723999

namespace A362605

/-- `lt[1, A362611(A028310(n))]` -/
def P8146378247359723999.Spec : Prop :=
  ∀ n, (P8146378247359723999.a n : ℤ) = A362605 (n + 1)

end A362605

/-! ## A362605.P12938974689797946995

`A020725(lt[1, A362611(n+1)])`
-/

namespace A362605.P12938974689797946995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A362605.P12938974689797946995

namespace A362605

/-- `A020725(lt[1, A362611(n+1)])` -/
def P12938974689797946995.Spec : Prop :=
  ∀ n, P12938974689797946995.a n = A362605 (n + 1)

end A362605

/-! ## A362605.P13240076371636551946

`lt[2, A020639(A238745(n+1))]+1`
-/

namespace A362605.P13240076371636551946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A238745 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A362605.P13240076371636551946

namespace A362605

/-- `lt[2, A020639(A238745(n+1))]+1` -/
def P13240076371636551946.Spec : Prop :=
  ∀ n, (P13240076371636551946.a n : ℤ) = A362605 (n + 1)

end A362605

/-! ## A362605.P5441635938734278871

`lt[1, A362611(A065033(2*n))]`
-/

namespace A362605.P5441635938734278871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A362605.P5441635938734278871

namespace A362605

/-- `lt[1, A362611(A065033(2*n))]` -/
def P5441635938734278871.Spec : Prop :=
  ∀ n, (P5441635938734278871.a n : ℤ) = A362605 (n + 1)

end A362605

/-! ## A362605.P12774742216823200589

`A244465(A008000(n))+A182853(n+1)`
-/

namespace A362605.P12774742216823200589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244465 (A008000 n).toNat + A182853 (n + 1)

end

end A362605.P12774742216823200589

namespace A362605

/-- `A244465(A008000(n))+A182853(n+1)` -/
def P12774742216823200589.Spec : Prop :=
  ∀ n, P12774742216823200589.a n = A362605 (n + 1)

end A362605

/-! ## A362605.P11296190906839787895

`A182853(n+1)+A000007(A198384(n+1))`
-/

namespace A362605.P11296190906839787895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1) + A000007 (A198384 (n + 1)).toNat

end

end A362605.P11296190906839787895

namespace A362605

/-- `A182853(n+1)+A000007(A198384(n+1))` -/
def P11296190906839787895.Spec : Prop :=
  ∀ n, P11296190906839787895.a n = A362605 (n + 1)

end A362605

/-! ## A362605.P15220589080236930642

`A003415(A307472(n+1))*A182853(n+1)`
-/

namespace A362605.P15220589080236930642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A307472 (n + 1)).toNat * A182853 (n + 1)

end

end A362605.P15220589080236930642

namespace A362605

/-- `A003415(A307472(n+1))*A182853(n+1)` -/
def P15220589080236930642.Spec : Prop :=
  ∀ n, P15220589080236930642.a n = A362605 (n + 1)

end A362605

/-! ## A362605.P5467658454142905719

`A182853(n+1)+A000007(A327076(n+5))`
-/

namespace A362605.P5467658454142905719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1) + A000007 (A327076 (n + 5)).toNat

end

end A362605.P5467658454142905719

namespace A362605

/-- `A182853(n+1)+A000007(A327076(n+5))` -/
def P5467658454142905719.Spec : Prop :=
  ∀ n, P5467658454142905719.a n = A362605 (n + 1)

end A362605

/-!
# A362607: Number of integer partitions of n with more than one mode.

The programs for A362607, there is no canonical definition to state claims against.
-/

/-! ## A362607.P17572640671063878342

`A052810(n)-(A362608(n)+1)`
-/

namespace A362607.P17572640671063878342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A362608 n + 1)

end

end A362607.P17572640671063878342

/-! ## A362607.P8377798442254662237

`A000041(n)-A362608(A028310(n))`
-/

namespace A362607.P8377798442254662237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A362608 (A028310 n).toNat

end

end A362607.P8377798442254662237

/-! ## A362607.P2916585587980322713

`A000041(n)-A362608(A000007(n)+n)`
-/

namespace A362607.P2916585587980322713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A362608 (A000007 n + (n : ℤ)).toNat

end

end A362607.P2916585587980322713

/-! ## A362607.P17430694563395656747

`A000041(n)%(A362608(A028310(n))%A133140(n))`
-/

namespace A362607.P17430694563395656747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) (Int.tmod (A362608 (A028310 n).toNat) (A133140 n))

end

end A362607.P17430694563395656747

/-! ## A362607.P17272432234576282053

`A362609(n)+A362610(n)-A362608(n)`
-/

namespace A362607.P17272432234576282053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362609 n + (A362610 n - A362608 n)

end

end A362607.P17272432234576282053

/-!
# A362608: Number of integer partitions of n having a unique mode.

The programs for A362608, there is no canonical definition to state claims against.
-/

/-! ## A362608.P15449962926777100271

`record[A035363(n+1)]-A362607(n)`
-/

namespace A362608.P15449962926777100271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A362607 n

end

end A362608.P15449962926777100271

/-! ## A362608.P418706121113548259

`record[A035377(n+1)]-A362607(n)`
-/

namespace A362608.P418706121113548259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A362607 n

end

end A362608.P418706121113548259

/-! ## A362608.P1727334308873958044

`A362614(∑[a(n-a(n-1))+1])` with `a(0)=1, a(1)=1`
-/

namespace A362608.P1727334308873958044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362614 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362608.P1727334308873958044

/-! ## A362608.P8365956246162341904

`A362614(A075349(n+1))`
-/

namespace A362608.P8365956246162341904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362614 (A075349 (n + 1)).toNat

end

end A362608.P8365956246162341904

/-! ## A362608.P13570674662756810831

`A362614(A006463(n)+n+1)`
-/

namespace A362608.P13570674662756810831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362614 (A006463 n + (n + 1 : ℤ)).toNat

end

end A362608.P13570674662756810831

/-!
# A362609: Number of integer partitions of n with more than one part of least multiplicity.

The programs for A362609, there is no canonical definition to state claims against.
-/

/-! ## A362609.P277306201790685818

`A052810(n)-(A362610(n)+1)`
-/

namespace A362609.P277306201790685818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A362610 n + 1)

end

end A362609.P277306201790685818

/-! ## A362609.P7701096209221046139

`A000041(n)-A362610(A028310(n))`
-/

namespace A362609.P7701096209221046139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A362610 (A028310 n).toNat

end

end A362609.P7701096209221046139

/-! ## A362609.P1413121626826098360

`A035363(A004277(n))-A362610(n)`
-/

namespace A362609.P1413121626826098360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - A362610 n

end

end A362609.P1413121626826098360

/-! ## A362609.P16211608310051499473

`A362607(n)+A362608(n)-A362610(n)`
-/

namespace A362609.P16211608310051499473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362607 n + (A362608 n - A362610 n)

end

end A362609.P16211608310051499473

/-! ## A362609.P15610944742343279294

`A281116(A007283(n))-A362610(n)`
-/

namespace A362609.P15610944742343279294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A007283 n).toNat - A362610 n

end

end A362609.P15610944742343279294

/-!
# A362610: Number of integer partitions of n having a unique part of least multiplicity.

The programs for A362610, there is no canonical definition to state claims against.
-/

/-! ## A362610.P17712009925049348885

`A362615(∑[round(sqrt(2*n))]+1)`
-/

namespace A362610.P17712009925049348885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A362610.P17712009925049348885

/-! ## A362610.P4894914477830317785

`record[A035363(n+1)]-A362609(n)`
-/

namespace A362610.P4894914477830317785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A362609 n

end

end A362610.P4894914477830317785

/-! ## A362610.P17028970066620265708

`record[A035377(n+1)]-A362609(n)`
-/

namespace A362610.P17028970066620265708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A362609 n

end

end A362610.P17028970066620265708

/-! ## A362610.P8325541310176872643

`A358480(A085889(n+1))+A239455(n)`
-/

namespace A362610.P8325541310176872643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358480 (A085889 (n + 1)).toNat + A239455 n

end

end A362610.P8325541310176872643

/-!
# A362611: Number of modes in the prime factorization of n.

The programs for A362611, the canonical program `A362611.P1337459329844090610` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362611 has offset 1).

The definition of A362611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362611.P8356585510244448062

`∑{e}[A261969(n+1), #]`
-/

namespace A362611.P8356585510244448062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A362611.P8356585510244448062

namespace A362611

/-- `∑{e}[A261969(n+1), #]` -/
def P8356585510244448062.Spec : Prop :=
  ∀ n, (P8356585510244448062.a n : ℤ) = A362611 (n + 1)

end A362611

/-! ## A362611.P11911335622042571385

`A071178(A181819(n+1))`
-/

namespace A362611.P11911335622042571385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A181819 (n + 1)).toNat

end

end A362611.P11911335622042571385

namespace A362611

/-- `A071178(A181819(n+1))` -/
def P11911335622042571385.Spec : Prop :=
  ∀ n, P11911335622042571385.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P15522412985737983088

`A001221(A261969(n+1))`
-/

namespace A362611.P15522412985737983088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A261969 (n + 1)).toNat

end

end A362611.P15522412985737983088

namespace A362611

/-- `A001221(A261969(n+1))` -/
def P15522412985737983088.Spec : Prop :=
  ∀ n, P15522412985737983088.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P6108327715179607116

`A055396(A238745(n+1))`
-/

namespace A362611.P6108327715179607116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A238745 (n + 1)).toNat

end

end A362611.P6108327715179607116

namespace A362611

/-- `A055396(A238745(n+1))` -/
def P6108327715179607116.Spec : Prop :=
  ∀ n, P6108327715179607116.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P1337459329844090610

`A071178(∏{e}[n+1, A000040(#)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A362611

/-- `A071178(∏{e}[n+1, A000040(#)])` -/
def P1337459329844090610.Spec : Prop :=
  ∀ n, P1337459329844090610.a n = A362611 (n + 1)

theorem P1337459329844090610.correct : P1337459329844090610.Spec := by
  intro n
  simp only [A362611, Nat.add_sub_cancel]

end A362611

/-! ## A362611.P8967766389962563754

`A071178(∏{e}[n+1, A065091(#)])`
-/

namespace A362611.P8967766389962563754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (∏ p ∈ Nat.primeFactors (f1 n), A065091 (Nat.factorization (f1 n) p)).toNat

end

end A362611.P8967766389962563754

namespace A362611

/-- `A071178(∏{e}[n+1, A065091(#)])` -/
def P8967766389962563754.Spec : Prop :=
  ∀ n, P8967766389962563754.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P9800837307720071589

`A001221(n+1)-A363127(n+1)`
-/

namespace A362611.P9800837307720071589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A363127 (n + 1)

end

end A362611.P9800837307720071589

namespace A362611

/-- `A001221(n+1)-A363127(n+1)` -/
def P9800837307720071589.Spec : Prop :=
  ∀ n, P9800837307720071589.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P15703281878406486443

`A001222(A261969(2*n+1-n))`
-/

namespace A362611.P15703281878406486443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A261969 (2 * n + 1 - n)).toNat

end

end A362611.P15703281878406486443

namespace A362611

/-- `A001222(A261969(2*n+1-n))` -/
def P15703281878406486443.Spec : Prop :=
  ∀ n, P15703281878406486443.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P6493936910074404890

`A001221(n+1)-A001221(A066636(n+1))`
-/

namespace A362611.P6493936910074404890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A066636 (n + 1)).toNat

end

end A362611.P6493936910074404890

namespace A362611

/-- `A001221(n+1)-A001221(A066636(n+1))` -/
def P6493936910074404890.Spec : Prop :=
  ∀ n, P6493936910074404890.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P13760328029444128239

`A001222(A261969(n+1)²)/2`
-/

namespace A362611.P13760328029444128239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A261969 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A362611.P13760328029444128239

namespace A362611

/-- `A001222(A261969(n+1)²)/2` -/
def P13760328029444128239.Spec : Prop :=
  ∀ n, P13760328029444128239.a n = (A362611 (n + 1) : ℚ)

end A362611

/-! ## A362611.P7987065866839756891

`A001221(n+1)/A309004(A242420(n+1))`
-/

namespace A362611.P7987065866839756891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) / (A309004 (A242420 (n + 1)).toNat : ℚ)

end

end A362611.P7987065866839756891

namespace A362611

/-- `A001221(n+1)/A309004(A242420(n+1))` -/
def P7987065866839756891.Spec : Prop :=
  ∀ n, P7987065866839756891.a n = (A362611 (n + 1) : ℚ)

end A362611

/-! ## A362611.P9441534803948317042

`A051904(A111306(n+1))`
-/

namespace A362611.P9441534803948317042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A111306 (n + 1)).toNat

end

end A362611.P9441534803948317042

namespace A362611

/-- `A051904(A111306(n+1))` -/
def P9441534803948317042.Spec : Prop :=
  ∀ n, P9441534803948317042.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P18241127124072949328

`A052409(∏{e}[n+1, A167442(#)])`
-/

namespace A362611.P18241127124072949328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (∏ p ∈ Nat.primeFactors (f1 n), A167442 (Nat.factorization (f1 n) p)).toNat

end

end A362611.P18241127124072949328

namespace A362611

/-- `A052409(∏{e}[n+1, A167442(#)])` -/
def P18241127124072949328.Spec : Prop :=
  ∀ n, P18241127124072949328.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P17854852186987729708

`A051904(A124859(n+1))`
-/

namespace A362611.P17854852186987729708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A124859 (n + 1)).toNat

end

end A362611.P17854852186987729708

namespace A362611

/-- `A051904(A124859(n+1))` -/
def P17854852186987729708.Spec : Prop :=
  ∀ n, P17854852186987729708.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P12537643717701989328

`A052409(∏{e}[n+1, A002110(#)])`
-/

namespace A362611.P12537643717701989328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (∏ p ∈ Nat.primeFactors (f1 n), A002110 (Nat.factorization (f1 n) p)).toNat

end

end A362611.P12537643717701989328

namespace A362611

/-- `A052409(∏{e}[n+1, A002110(#)])` -/
def P12537643717701989328.Spec : Prop :=
  ∀ n, P12537643717701989328.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P3444996268621301166

`gcd(A001221(n+1), A024693(A294875(n+1)))`
-/

namespace A362611.P3444996268621301166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 1)) (A024693 (A294875 (n + 1)).toNat)

end

end A362611.P3444996268621301166

namespace A362611

/-- `gcd(A001221(n+1), A024693(A294875(n+1)))` -/
def P3444996268621301166.Spec : Prop :=
  ∀ n, (P3444996268621301166.a n : ℤ) = A362611 (n + 1)

end A362611

/-! ## A362611.P1538978951008502863

`gcd(A001222(A256693(n+1)), A257090(n+1))`
-/

namespace A362611.P1538978951008502863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A256693 (n + 1)).toNat) (A257090 (n + 1))

end

end A362611.P1538978951008502863

namespace A362611

/-- `gcd(A001222(A256693(n+1)), A257090(n+1))` -/
def P1538978951008502863.Spec : Prop :=
  ∀ n, (P1538978951008502863.a n : ℤ) = A362611 (n + 1)

end A362611

/-! ## A362611.P9262287881046088558

`A087179(A138011((n+1)²))`
-/

namespace A362611.P9262287881046088558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A138011 ((n + 1) ^ 2)).toNat

end

end A362611.P9262287881046088558

namespace A362611

/-- `A087179(A138011((n+1)²))` -/
def P9262287881046088558.Spec : Prop :=
  ∀ n, P9262287881046088558.a n = A362611 (n + 1)

end A362611

/-! ## A362611.P14179427890566638871

`A051904(A181819((n+1)²))`
-/

namespace A362611.P14179427890566638871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A181819 ((n + 1) ^ 2)).toNat

end

end A362611.P14179427890566638871

namespace A362611

/-- `A051904(A181819((n+1)²))` -/
def P14179427890566638871.Spec : Prop :=
  ∀ n, P14179427890566638871.a n = A362611 (n + 1)

end A362611

/-!
# A362612: Number of integer partitions of n such that the greatest part is the unique mode.

The programs for A362612, there is no canonical definition to state claims against.
-/

/-! ## A362612.P16527609855417571477

`A331137(A286141(n+1))`
-/

namespace A362612.P16527609855417571477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331137 (A286141 (n + 1)).toNat

end

end A362612.P16527609855417571477

/-! ## A362612.P8865656526029648069

`A331137(A350842(n+1))`
-/

namespace A362612.P8865656526029648069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331137 (A350842 (n + 1)).toNat

end

end A362612.P8865656526029648069

/-!
# A362613: 

The programs for A362613, there is no canonical definition to state claims against.
-/

/-! ## A362613.P17690060882961268728

`A067029(A181819(n+1))`
-/

namespace A362613.P17690060882961268728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A181819 (n + 1)).toNat

end

end A362613.P17690060882961268728

/-! ## A362613.P17606758146758832191

`A067029(∏{e}[n+1, A000040(#)])`
-/

namespace A362613.P17606758146758832191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A362613.P17606758146758832191

/-! ## A362613.P11788933216369488950

`A001221(n+1)-A363131(n+1)`
-/

namespace A362613.P11788933216369488950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A363131 (n + 1)

end

end A362613.P11788933216369488950

/-! ## A362613.P5582405828130295427

`A067029(∏{e}[n+1, A059263(#+1)])`
-/

namespace A362613.P5582405828130295427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (∏ p ∈ Nat.primeFactors (f1 n), A059263 (Nat.factorization (f1 n) p + 1)).toNat

end

end A362613.P5582405828130295427

/-! ## A362613.P6916893548628507199

`val(A071364(∏{e}[n+1, A000040(#)]), 2)`
-/

namespace A362613.P6916893548628507199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat).toNat 2

end

end A362613.P6916893548628507199

/-! ## A362613.P14381164487448241390

`val(A071364(∏{e}[n+1, A049561(#)]), 2)`
-/

namespace A362613.P14381164487448241390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (∏ p ∈ Nat.primeFactors (f1 n), A049561 (Nat.factorization (f1 n) p)).toNat).toNat 2

end

end A362613.P14381164487448241390

/-! ## A362613.P8980436909686978882

`val(A071364(∏{e}[n+1, A054403(#)]), 2)`
-/

namespace A362613.P8980436909686978882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (∏ p ∈ Nat.primeFactors (f1 n), A054403 (Nat.factorization (f1 n) p)).toNat).toNat 2

end

end A362613.P8980436909686978882

/-! ## A362613.P15378002675600509497

`val(A071364(∏{e}[n+1, A061022(#)]), 2)`
-/

namespace A362613.P15378002675600509497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (∏ p ∈ Nat.primeFactors (f1 n), A061022 (Nat.factorization (f1 n) p)).toNat).toNat 2

end

end A362613.P15378002675600509497

/-! ## A362613.P9236655692604952360

`val(A071364(∏{e}[n+1, A216883(#)]), 2)`
-/

namespace A362613.P9236655692604952360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (∏ p ∈ Nat.primeFactors (f1 n), A216883 (Nat.factorization (f1 n) p)).toNat).toNat 2

end

end A362613.P9236655692604952360

/-! ## A362613.P12915028781561339801

`val(A071364(∏{e}[n+1, A005180(#+1)]), 2)`
-/

namespace A362613.P12915028781561339801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (∏ p ∈ Nat.primeFactors (f1 n), A005180 (Nat.factorization (f1 n) p + 1)).toNat).toNat 2

end

end A362613.P12915028781561339801

/-! ## A362613.P4984319992968099454

`A001221(n+1)-A001221(A062760(n+1))`
-/

namespace A362613.P4984319992968099454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A062760 (n + 1)).toNat

end

end A362613.P4984319992968099454

/-! ## A362613.P15767738423958887072

`val(A071364(A329601(n+1)*A351944(n+1)), 2)`
-/

namespace A362613.P15767738423958887072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (A329601 (n + 1) * A351944 (n + 1)).toNat).toNat 2

end

end A362613.P15767738423958887072

/-! ## A362613.P1659253181098528497

`A067029(A295879((n+1)²))`
-/

namespace A362613.P1659253181098528497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A295879 ((n + 1) ^ 2)).toNat

end

end A362613.P1659253181098528497

/-! ## A362613.P1065870022567344799

`and(A036571(n), A327500(n+1))`
-/

namespace A362613.P1065870022567344799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036571 n) (A327500 (n + 1))

end

end A362613.P1065870022567344799

/-! ## A362613.P8983529344486579851

`and(A131428(n), A327500(n+1))`
-/

namespace A362613.P8983529344486579851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131428 n) (A327500 (n + 1))

end

end A362613.P8983529344486579851

/-! ## A362613.P7982736989719401446

`gcd(A048118(n), A327500(n+1))`
-/

namespace A362613.P7982736989719401446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048118 n) (A327500 (n + 1))

end

end A362613.P7982736989719401446

/-!
# A362614: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with k modes.

The programs for A362614, there is no canonical definition to state claims against.
-/

/-! ## A362614.P4989908134604822345

`A362615(lt[A064230(n), A004676(n+1)])`
-/

namespace A362614.P4989908134604822345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362614.P4989908134604822345

/-! ## A362614.P18116620946711652840

`A362615(n)+A185284(A004273(n))`
-/

namespace A362614.P18116620946711652840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 n + A185284 (A004273 n).toNat

end

end A362614.P18116620946711652840

/-! ## A362614.P9347301190585493050

`A013937(A362615(n)%A096818(n+1))`
-/

namespace A362614.P9347301190585493050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 (Int.tmod (A362615 n) (A096818 (n + 1))).toNat

end

end A362614.P9347301190585493050

/-! ## A362614.P14618116717847067447

`A007095(A362615(n))%A229276(3*n+4)`
-/

namespace A362614.P14618116717847067447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A362615 n).toNat) (A229276 (3 * n + 4))

end

end A362614.P14618116717847067447

/-! ## A362614.P7061833710641646691

`A325033(3^A362615(n))`
-/

namespace A362614.P7061833710641646691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A362615 n : ℤ))).toNat

end

end A362614.P7061833710641646691

/-!
# A362615: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with k co-modes.

The programs for A362615, there is no canonical definition to state claims against.
-/

/-! ## A362615.P17108287786402538583

`A362614(n)+A178798(A117167(n+1)+A000700(2*n+3))`
-/

namespace A362615.P17108287786402538583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362614 n + A178798 (A117167 (n + 1) + A000700 (2 * n + 3)).toNat

end

end A362615.P17108287786402538583

/-! ## A362615.P10937461979288456219

`A362614(n)+A178798(A078840(n)*A091255(n+2))`
-/

namespace A362615.P10937461979288456219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362614 n + A178798 (A078840 n * A091255 (n + 2)).toNat

end

end A362615.P10937461979288456219

/-! ## A362615.P16902177152623176306

`A362614(n)-A185284(A000931(n))`
-/

namespace A362615.P16902177152623176306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362614 n - A185284 (A000931 n).toNat

end

end A362615.P16902177152623176306

/-! ## A362615.P3812788244469052605

`A362614(n)-A353495(A208728(n+1))`
-/

namespace A362615.P3812788244469052605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362614 n - A353495 (A208728 (n + 1)).toNat

end

end A362615.P3812788244469052605

/-! ## A362615.P17936122790112457600

`A028904(A362614(n)%A229418(n+1))`
-/

namespace A362615.P17936122790112457600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (Int.tmod (A362614 n) (A229418 (n + 1))).toNat

end

end A362615.P17936122790112457600

/-!
# A362617: Numbers whose prime factorization has both (1) even length, and (2) unequal middle parts.

The programs for A362617, there is no canonical definition to state claims against.
-/

/-! ## A362617.P11439399336160926243

`∩[A173339(n+1), A357850(n+1)]`
-/

namespace A362617.P11439399336160926243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362617.P11439399336160926243

/-! ## A362617.P4797038590789823875

`∩[A173339(n+1), A362980(n+1)]`
-/

namespace A362617.P4797038590789823875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362617.P4797038590789823875

/-! ## A362617.P572838129891328052

`∩[A173339(n+1), A383088(n+1)]`
-/

namespace A362617.P572838129891328052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362617.P572838129891328052

/-! ## A362617.P16246458519232189895

`lt[A079879(n+1), A079879(A253560(n+1))]+1`
-/

namespace A362617.P16246458519232189895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A253560 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362617.P16246458519232189895

/-! ## A362617.P11096567989789117092

`∩[A140209(n+1), A325259(n+1)]`
-/

namespace A362617.P11096567989789117092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362617.P11096567989789117092

/-!
# A362618: Numbers whose prime factorization has either (1) odd length, or (2) equal middle parts.

The programs for A362618, there is no canonical definition to state claims against.
-/

/-! ## A362618.P1527754552898722225

`comp[A362617(n+1)-2]+2`
-/

namespace A362618.P1527754552898722225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362617 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A362618.P1527754552898722225

/-! ## A362618.P18144833996648973853

`∪[A097256(n+1), A371782(n+1)]`
-/

namespace A362618.P18144833996648973853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362618.P18144833996648973853

/-! ## A362618.P8136459798964097976

`∪[A038603(2*(n+1))+1, A371782(n+1)]`
-/

namespace A362618.P8136459798964097976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362618.P8136459798964097976

/-! ## A362618.P4192302023163017963

`∪[A002378(A079000(n+1)), A371782(n+1)]`
-/

namespace A362618.P4192302023163017963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A079000 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362618.P4192302023163017963

/-! ## A362618.P302926495144721884

`∪[A015702(A106856(n+1)), A371782(n+1)]`
-/

namespace A362618.P302926495144721884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015702 (A106856 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362618.P302926495144721884

/-! ## A362618.P4428816029829027175

`∪[A002378(A159619(n+1)), A371782(n+1)]`
-/

namespace A362618.P4428816029829027175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A159619 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362618.P4428816029829027175

/-! ## A362618.P11271425969637083294

`∪[A135197(A032924(n+1)), A371782(n+1)]`
-/

namespace A362618.P11271425969637083294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135197 (A032924 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362618.P11271425969637083294

/-! ## A362618.P6069301311293093715

`∪[A002378(A212462(n+1)), A371782(n+1)]`
-/

namespace A362618.P6069301311293093715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A212462 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362618.P6069301311293093715

/-! ## A362618.P1664982219588618113

`∪[A014613(A098464(3*n+2)), A371782(n+1)]`
-/

namespace A362618.P1664982219588618113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A098464 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362618.P1664982219588618113

/-!
# A362619: 

The programs for A362619, there is no canonical definition to state claims against.
-/

/-! ## A362619.P17414179546226638196

`comp[A362620(n+1)-1]+1`
-/

namespace A362619.P17414179546226638196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362620 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362619.P17414179546226638196

/-!
# A362620: Numbers whose greatest prime factor is not a mode, meaning it appears fewer times than some other.

The programs for A362620, the canonical program `A362620.P8952144317770323777` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362620 has offset 1).

The definition of A362620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362620.P8952144317770323777

`lt[A071178(n+1), A051903(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A362620

/-- `lt[A071178(n+1), A051903(n+1)]+1` -/
def P8952144317770323777.Spec : Prop :=
  ∀ n, (P8952144317770323777.a n : ℤ) = A362620 (n + 1)

theorem P8952144317770323777.correct : P8952144317770323777.Spec := by
  intro n
  simp only [A362620, Nat.add_sub_cancel]

end A362620

/-! ## A362620.P6815007944157334631

`lt[A034699(n+1), A304180(n+1)]+1`
-/

namespace A362620.P6815007944157334631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362620.P6815007944157334631

namespace A362620

/-- `lt[A034699(n+1), A304180(n+1)]+1` -/
def P6815007944157334631.Spec : Prop :=
  ∀ n, (P6815007944157334631.a n : ℤ) = A362620 (n + 1)

end A362620

/-! ## A362620.P4544757349097599350

`lt[A053585(n+1), A304180(n+1)]+1`
-/

namespace A362620.P4544757349097599350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362620.P4544757349097599350

namespace A362620

/-- `lt[A053585(n+1), A304180(n+1)]+1` -/
def P4544757349097599350.Spec : Prop :=
  ∀ n, (P4544757349097599350.a n : ℤ) = A362620 (n + 1)

end A362620

/-!
# A362622: One and numbers whose prime factorization has its greatest part at a middle position.

The programs for A362622, there is no canonical definition to state claims against.
-/

/-! ## A362622.P12467822515658369362

`∩[A070915(n+1), A304678(n+1)]`
-/

namespace A362622.P12467822515658369362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362622.P12467822515658369362

/-! ## A362622.P5678866262374789782

`∪[A097319(n+1), A085156(n+1)]`
-/

namespace A362622.P5678866262374789782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362622.P5678866262374789782

/-! ## A362622.P11980140212712539634

`record[lcm(A034699(n+1), A304181(n+1))]`
-/

namespace A362622.P11980140212712539634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034699 (n + 1)) (A304181 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362622.P11980140212712539634

/-! ## A362622.P11309236009513805222

`∩[comp[A000977(n+1)], A304678(n+1)]`
-/

namespace A362622.P11309236009513805222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A362622.P11309236009513805222

/-!
# A362623: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, the initial digit "d" of a(n) divides a(n+d).

The programs for A362623, there is no canonical definition to state claims against.
-/

/-! ## A362623.P12427775549647978980

`lt[n/(n%2+2)+1, 12]+1`
-/

namespace A362623.P12427775549647978980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A362623.P12427775549647978980

/-! ## A362623.P11211887875182332696

`lt[3, ∑[-a(n-1)]²-n]` with `a(0)=-1, a(1)=6, a(2)=1`
-/

namespace A362623.P11211887875182332696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1, 6, 1] fun n f3 =>
  -f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A362623.P11211887875182332696

/-! ## A362623.P16020018849311945768

`lt[floor((∑[n]+n²)/a(n-1)), 35]` with `a(0)=35, a(1)=2`
-/

namespace A362623.P16020018849311945768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [35, 2] fun n f1 =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2 : ℕ) : ℚ) / (f1 (n - 1) : ℚ)⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A362623.P16020018849311945768

/-! ## A362623.P1275263286633947192

`lt[a(n-1)+2, ∑[2-a(n-1)]]` with `a(0)=1, a(1)=8, a(2)=8, a(3)=12, a(4)=12`
-/

namespace A362623.P1275263286633947192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 8, 12, 12] fun n f1 =>
  f1 (n - 1) + 2

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 8, 12, 12] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A362623.P1275263286633947192

/-! ## A362623.P17708483328805725149

`lt[A393511(n), n]`
-/

namespace A362623.P17708483328805725149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393511 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A362623.P17708483328805725149

/-!
# A362624: a(n) = Sum_{d|n, gcd(d,n/d)=1} psi(d), where psi is the Dedekind psi function (A001615).

The programs for A362624, the canonical program `A362624.P11916797117466685256` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362624 has offset 1).

The definition of A362624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362624.P11916797117466685256

`∑{d}[n+1, A008966(#)*A399736((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A362624

/-- `∑{d}[n+1, A008966(#)*A399736((n+1)/#)]` -/
def P11916797117466685256.Spec : Prop :=
  ∀ n, P11916797117466685256.a n = A362624 (n + 1)

theorem P11916797117466685256.correct : P11916797117466685256.Spec := by
  intro n
  simp only [A362624, Nat.add_sub_cancel]

end A362624

/-!
# A362625: a(n) = Sum_{k not divides n - k, 0 <= k < n} k.

The programs for A362625, the canonical program `A362625.P11895608257886230771` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362625 has offset 1).

The definition of A362625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362625.P11895608257886230771

`A161680(n+1)-A094471(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A362625

/-- `A161680(n+1)-A094471(n+1)` -/
def P11895608257886230771.Spec : Prop :=
  ∀ n, P11895608257886230771.a n = A362625 (n + 1)

theorem P11895608257886230771.correct : P11895608257886230771.Spec := by
  intro n
  simp only [A362625, Nat.add_sub_cancel]

end A362625

/-! ## A362625.P6986183775150436457

`(n+1)*n/2-(n+1)*A000005(n+1)+A000203(n+1)`
-/

namespace A362625.P6986183775150436457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n : ℚ) / 2 - ((n + 1 : ℤ) * A000005 (n + 1) : ℚ) + (A000203 (n + 1) : ℚ)

end

end A362625.P6986183775150436457

namespace A362625

/-- `(n+1)*n/2-(n+1)*A000005(n+1)+A000203(n+1)` -/
def P6986183775150436457.Spec : Prop :=
  ∀ n, P6986183775150436457.a n = (A362625 (n + 1) : ℚ)

theorem P6986183775150436457.correct : P6986183775150436457.Spec := by
  intro n
  simp only [A362625, Nat.add_sub_cancel, A362625.P6986183775150436457.a, A362625.P11895608257886230771.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A094471, A094471.P10880822235094612413.a, A161680, A161680.P17206074215489759881.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038040, A038040.P16512896840577774730.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362625

/-! ## A362625.P344674080712382234

`∑{#}[n, (n+1-(#+1))*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`
-/

namespace A362625.P344674080712382234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n + 1 : ℤ) - (k + 1 : ℤ)) * (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋)

end

end A362625.P344674080712382234

namespace A362625

/-- `∑{#}[n, (n+1-(#+1))*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` -/
def P344674080712382234.Spec : Prop :=
  ∀ n, P344674080712382234.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P5733840190238635288

`∑{d}[n+1, #-(n+1)]+∑[n]`
-/

namespace A362625.P5733840190238635288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (n + 1 : ℤ)) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A362625.P5733840190238635288

namespace A362625

/-- `∑{d}[n+1, #-(n+1)]+∑[n]` -/
def P5733840190238635288.Spec : Prop :=
  ∀ n, P5733840190238635288.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P8734181750021830149

`∑[n]-A094471(n+1)`
-/

namespace A362625.P8734181750021830149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A094471 (n + 1)

end

end A362625.P8734181750021830149

namespace A362625

/-- `∑[n]-A094471(n+1)` -/
def P8734181750021830149.Spec : Prop :=
  ∀ n, P8734181750021830149.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P4867735462138488314

`A367368(n+1)-(n+1)`
-/

namespace A362625.P4867735462138488314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367368 (n + 1) - (n + 1 : ℤ)

end

end A362625.P4867735462138488314

namespace A362625

/-- `A367368(n+1)-(n+1)` -/
def P4867735462138488314.Spec : Prop :=
  ∀ n, P4867735462138488314.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P2410495957315040097

`A344483(n+1)-∑[n+1]`
-/

namespace A362625.P2410495957315040097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344483 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A362625.P2410495957315040097

namespace A362625

/-- `A344483(n+1)-∑[n+1]` -/
def P2410495957315040097.Spec : Prop :=
  ∀ n, P2410495957315040097.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P409910093130277594

`A000217(n)-∑{d}[n+1, 1-#+n]`
-/

namespace A362625.P409910093130277594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) + (n : ℤ))

end

end A362625.P409910093130277594

namespace A362625

/-- `A000217(n)-∑{d}[n+1, 1-#+n]` -/
def P409910093130277594.Spec : Prop :=
  ∀ n, P409910093130277594.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P4170334914706278861

`∑[n]-((n+1)*∏{e}[n+1, #+1]-(A155085(n+1)-(n+1)))`
-/

namespace A362625.P4170334914706278861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℤ) - (A155085 (n + 1) - (n + 1 : ℤ)))

end

end A362625.P4170334914706278861

namespace A362625

/-- `∑[n]-((n+1)*∏{e}[n+1, #+1]-(A155085(n+1)-(n+1)))` -/
def P4170334914706278861.Spec : Prop :=
  ∀ n, P4170334914706278861.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P17794389801067437041

`A355947(n)-A339370(n+1)`
-/

namespace A362625.P17794389801067437041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355947 n - A339370 (n + 1)

end

end A362625.P17794389801067437041

namespace A362625

/-- `A355947(n)-A339370(n+1)` -/
def P17794389801067437041.Spec : Prop :=
  ∀ n, P17794389801067437041.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P8887791741295927360

`A000124(n)-(A094471(n+1)+1)`
-/

namespace A362625.P8887791741295927360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A094471 (n + 1) + 1)

end

end A362625.P8887791741295927360

namespace A362625

/-- `A000124(n)-(A094471(n+1)+1)` -/
def P8887791741295927360.Spec : Prop :=
  ∀ n, P8887791741295927360.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P5262964788133358499

`A344483(n+1)%A089594(n+1)`
-/

namespace A362625.P5262964788133358499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344483 (n + 1)) (A089594 (n + 1))

end

end A362625.P5262964788133358499

namespace A362625

/-- `A344483(n+1)%A089594(n+1)` -/
def P5262964788133358499.Spec : Prop :=
  ∀ n, P5262964788133358499.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P14484231335439423427

`∑[n]-(A094472(n+1)+A000010(n+1))`
-/

namespace A362625.P14484231335439423427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A094472 (n + 1) + A000010 (n + 1))

end

end A362625.P14484231335439423427

namespace A362625

/-- `∑[n]-(A094472(n+1)+A000010(n+1))` -/
def P14484231335439423427.Spec : Prop :=
  ∀ n, P14484231335439423427.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P16008705352836254814

`∑[n]-(A038040(n+1)-A000203(n+1))`
-/

namespace A362625.P16008705352836254814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A038040 (n + 1) - A000203 (n + 1))

end

end A362625.P16008705352836254814

namespace A362625

/-- `∑[n]-(A038040(n+1)-A000203(n+1))` -/
def P16008705352836254814.Spec : Prop :=
  ∀ n, P16008705352836254814.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P13910942997238256885

`∑[n]-(A081307(n+1)-A000005(n+1))`
-/

namespace A362625.P13910942997238256885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A081307 (n + 1) - A000005 (n + 1))

end

end A362625.P13910942997238256885

namespace A362625

/-- `∑[n]-(A081307(n+1)-A000005(n+1))` -/
def P13910942997238256885.Spec : Prop :=
  ∀ n, P13910942997238256885.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P18333830885821634910

`∑[n]-(A152211(n+1)-A074400(n+1))`
-/

namespace A362625.P18333830885821634910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A152211 (n + 1) - A074400 (n + 1))

end

end A362625.P18333830885821634910

namespace A362625

/-- `∑[n]-(A152211(n+1)-A074400(n+1))` -/
def P18333830885821634910.Spec : Prop :=
  ∀ n, P18333830885821634910.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P2572275866723068667

`∑[n]-(A152211(n+1)-2*A000203(n+1))`
-/

namespace A362625.P2572275866723068667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A152211 (n + 1) - 2 * A000203 (n + 1))

end

end A362625.P2572275866723068667

namespace A362625

/-- `∑[n]-(A152211(n+1)-2*A000203(n+1))` -/
def P2572275866723068667.Spec : Prop :=
  ∀ n, P2572275866723068667.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P3186044435892983824

`∑[n]-((n+1)*A000005(n+1)-A000203(n+1))`
-/

namespace A362625.P3186044435892983824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1 : ℤ) * A000005 (n + 1) - A000203 (n + 1))

end

end A362625.P3186044435892983824

namespace A362625

/-- `∑[n]-((n+1)*A000005(n+1)-A000203(n+1))` -/
def P3186044435892983824.Spec : Prop :=
  ∀ n, P3186044435892983824.a n = A362625 (n + 1)

end A362625

/-! ## A362625.P12962898291425326015

`A000203(n+1)+A000217(n)-A038040(n+1)`
-/

namespace A362625.P12962898291425326015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A000217 n - A038040 (n + 1))

end

end A362625.P12962898291425326015

namespace A362625

/-- `A000203(n+1)+A000217(n)-A038040(n+1)` -/
def P12962898291425326015.Spec : Prop :=
  ∀ n, P12962898291425326015.a n = A362625 (n + 1)

theorem P12962898291425326015.correct : P12962898291425326015.Spec := by
  intro n
  simp only [A362625, Nat.add_sub_cancel, A362625.P12962898291425326015.a, A362625.P11895608257886230771.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A038040, A038040.P16512896840577774730.a, A094471, A094471.P10880822235094612413.a, A161680, A161680.P17206074215489759881.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362625

/-! ## A362625.P4235551966831677059

`A296955(n+1)+A297053(n+1)+A297024(n+1)`
-/

namespace A362625.P4235551966831677059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (n + 1) + (A297053 (n + 1) + A297024 (n + 1))

end

end A362625.P4235551966831677059

namespace A362625

/-- `A296955(n+1)+A297053(n+1)+A297024(n+1)` -/
def P4235551966831677059.Spec : Prop :=
  ∀ n, P4235551966831677059.a n = A362625 (n + 1)

end A362625

/-!
# A362627: Euler transform of sigma_n(n) (sum of n-th powers of divisors of n).

The programs for A362627, there is no canonical definition to state claims against.
-/

/-! ## A362627.P9915978068370908679

`A117571(or(A052704(n), A146599(2*n+1)))`
-/

namespace A362627.P9915978068370908679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (Int.lor (A052704 n) (A146599 (2 * n + 1))).toNat

end

end A362627.P9915978068370908679

/-!
# A362630: Squarefree semiprimes (products of two distinct primes) whose factors are strong primes.

The programs for A362630, there is no canonical definition to state claims against.
-/

/-! ## A362630.P4413711878599981821

`filter[A225493(n+1), A280710(#)]`
-/

namespace A362630.P4413711878599981821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A362630.P4413711878599981821

/-! ## A362630.P17181341698148722718

`filter[A225493(n+1), A340370(#)]`
-/

namespace A362630.P17181341698148722718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A362630.P17181341698148722718

/-! ## A362630.P366297535607338832

`filter[A225493(n+1), A353481(#)]`
-/

namespace A362630.P366297535607338832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A362630.P366297535607338832

/-! ## A362630.P15760341716522746763

`filter[A225493(n+1), A353669(#)]`
-/

namespace A362630.P15760341716522746763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A362630.P15760341716522746763

/-! ## A362630.P7948209982190502027

`filter[A225493(n+1), A354353(#)]`
-/

namespace A362630.P7948209982190502027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A362630.P7948209982190502027

/-! ## A362630.P12101684714747805009

`filter[A225493(n+1), A380469(#)]`
-/

namespace A362630.P12101684714747805009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A362630.P12101684714747805009

/-! ## A362630.P17377925818203528689

`filter[A225493(n+2), A353629(#)]`
-/

namespace A362630.P17377925818203528689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A362630.P17377925818203528689

/-! ## A362630.P15932366909910743906

`filter[A225493(n+2), A354819(#)]`
-/

namespace A362630.P15932366909910743906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A362630.P15932366909910743906

/-! ## A362630.P16292167860086098178

`filter[A225493(n+2), A359156(#)]`
-/

namespace A362630.P16292167860086098178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A362630.P16292167860086098178

/-! ## A362630.P9365302436418369983

`filter[A225493(n+2), A359465(#)]`
-/

namespace A362630.P9365302436418369983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A362630.P9365302436418369983

/-!
# A362632: a(n) = Sum_{d|n, gcd(d,n/d)=1} d * psi(d), where psi is the Dedekind psi function (A001615).

The programs for A362632, the canonical program `A362632.P2419837277974987510` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362632 has offset 1).

The definition of A362632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362632.P2419837277974987510

`∑{d}[n+1, A046692(#)*A069546((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362632

/-- `∑{d}[n+1, A046692(#)*A069546((n+1)/#)]` -/
def P2419837277974987510.Spec : Prop :=
  ∀ n, P2419837277974987510.a n = A362632 (n + 1)

theorem P2419837277974987510.correct : P2419837277974987510.Spec := by
  intro n
  simp only [A362632, Nat.add_sub_cancel]

end A362632

/-! ## A362632.P11158438419361007159

`∑{d}[n+1, A254520(#)*A358346((n+1)/#)]`
-/

namespace A362632.P11158438419361007159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d * A358346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A362632.P11158438419361007159

namespace A362632

/-- `∑{d}[n+1, A254520(#)*A358346((n+1)/#)]` -/
def P11158438419361007159.Spec : Prop :=
  ∀ n, P11158438419361007159.a n = A362632 (n + 1)

end A362632

/-! ## A362632.P11716520967014069135

`A362624((n+1)²)`
-/

namespace A362632.P11716520967014069135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362624 ((n + 1) ^ 2)

end

end A362632.P11716520967014069135

namespace A362632

/-- `A362624((n+1)²)` -/
def P11716520967014069135.Spec : Prop :=
  ∀ n, P11716520967014069135.a n = A362632 (n + 1)

end A362632

/-!
# A362633: Square array read by antidiagonals: Consider n k-sided fair dice, whose faces are numbered 1, ..., n*k (in any order). The outcome of a roll of the dice determines an ordering of them. T(n,k) is the minimum difference of the number of outcomes resulting in the most common ordering and the number of outcomes resulting in the least common ordering, n,k >= 1.

The programs for A362633, there is no canonical definition to state claims against.
-/

/-! ## A362633.P16525901627063596019

`A362634(A000040(row(n)-col(n)+1)^(col(n)+1))`
-/

namespace A362633.P16525901627063596019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362634 (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat ^ (SequenceMachineLib.triCol n + 1)).toNat

end

end A362633.P16525901627063596019

/-! ## A362633.P4886340104232391575

`A362634(A182945(n+1))`
-/

namespace A362633.P4886340104232391575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362634 (A182945 (n + 1)).toNat

end

end A362633.P4886340104232391575

/-! ## A362633.P6045760114458449140

`A232703(A131325(n))%A263666(n+1)`
-/

namespace A362633.P6045760114458449140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232703 (A131325 n).toNat) (A263666 (n + 1))

end

end A362633.P6045760114458449140

/-! ## A362633.P6208369086189771520

`A000120(A330341(n+1)^A302996(n))`
-/

namespace A362633.P6208369086189771520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A330341 (n + 1) : ℚ) ^ (A302996 n : ℤ))).toNat

end

end A362633.P6208369086189771520

/-! ## A362633.P9489252396021988211

`A107110(A193860(n))`
-/

namespace A362633.P9489252396021988211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107110 (A193860 n).toNat

end

end A362633.P9489252396021988211

/-!
# A362634: Let (k_1, ..., k_m) be the partition with Heinz number n (i.e., n = Product_{i=1..m} prime(k_i)) and consider a set of fair dice with k_1, ..., k_m faces numbered 1, ..., k_1 + ... + k_m (in any order). The outcome of a roll of the dice determines an ordering of them. a(n) is the minimum difference of the number of outcomes resulting in the most common ordering and the number of outcomes resulting in the least common ordering.

The programs for A362634, there is no canonical definition to state claims against.
-/

/-! ## A362634.P2192166180188467829

`and(A037810(n+1), A272269(n+1))`
-/

namespace A362634.P2192166180188467829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037810 (n + 1)) (A272269 (n + 1))

end

end A362634.P2192166180188467829

/-! ## A362634.P16752742084025344744

`A127708(A160121(n+5)+3)`
-/

namespace A362634.P16752742084025344744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (A160121 (n + 5) + 3).toNat

end

end A362634.P16752742084025344744

/-! ## A362634.P13402191401769766690

`A333735(n)%A097848(n+1)`
-/

namespace A362634.P13402191401769766690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333735 n) (A097848 (n + 1))

end

end A362634.P13402191401769766690

/-! ## A362634.P89462147876044913

`A006053(A327109(2*n+5)%(∑{e}[n+1, #]+1))`
-/

namespace A362634.P89462147876044913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (Int.tmod (A327109 (2 * n + 5)) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ)).toNat

end

end A362634.P89462147876044913

/-! ## A362634.P1919920075047993291

`A341994(A075426(n))`
-/

namespace A362634.P1919920075047993291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A075426 n).toNat

end

end A362634.P1919920075047993291

/-!
# A362636: a(n) = Sum_{d|n, gcd(d,n/d)=1} d^d.

The programs for A362636, there is no canonical definition to state claims against.
-/

/-! ## A362636.P8778349602586187858

`A345263(n+1)+A345256(A345267(n))`
-/

namespace A362636.P8778349602586187858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345263 (n + 1) + A345256 (A345267 n).toNat

end

end A362636.P8778349602586187858

/-! ## A362636.P16329685581085250251

`A258210(A193394(n+1))+A062796(n+1)`
-/

namespace A362636.P16329685581085250251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 (A193394 (n + 1)).toNat + A062796 (n + 1)

end

end A362636.P16329685581085250251

/-! ## A362636.P892749136269146482

`A062796(n+1)-A270890(A327778(3*n+1))`
-/

namespace A362636.P892749136269146482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1) - A270890 (A327778 (3 * n + 1)).toNat

end

end A362636.P892749136269146482

/-!
# A362637: Number of partitions of [n] whose blocks are ordered with increasing least elements and where block i (except possibly the last) has size at least i.

The programs for A362637, there is no canonical definition to state claims against.
-/

/-! ## A362637.P459228553977451587

`A089576(A326245(n)+A141254(n))`
-/

namespace A362637.P459228553977451587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (A326245 n + A141254 n).toNat

end

end A362637.P459228553977451587

/-!
# A362638: Number of partitions of [n] whose blocks are ordered with increasing least elements and where block i has size at most i.

The programs for A362638, there is no canonical definition to state claims against.
-/

/-! ## A362638.P11687670440830226393

`A026834(A190790(n))`
-/

namespace A362638.P11687670440830226393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A190790 n).toNat

end

end A362638.P11687670440830226393

/-! ## A362638.P8963711933973883603

`A126356(A344490(n))`
-/

namespace A362638.P8963711933973883603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126356 (A344490 n).toNat

end

end A362638.P8963711933973883603

/-! ## A362638.P8187841645094788889

`A293627(∑[A052337(n)])`
-/

namespace A362638.P8187841645094788889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362638.P8187841645094788889

/-! ## A362638.P4586472372000103774

`A293627(∑[A241652(n)])`
-/

namespace A362638.P4586472372000103774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362638.P4586472372000103774

/-!
# A362639: Number of partitions of [n] whose blocks are ordered with increasing least elements and where block i (except possibly the last) has size i.

The programs for A362639, there is no canonical definition to state claims against.
-/

/-! ## A362639.P1960050444776276578

`A181648(floor((n/3)^n))`
-/

namespace A362639.P1960050444776276578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181648 ⌊((n : ℚ) / 3) ^ n⌋.toNat

end

end A362639.P1960050444776276578

/-! ## A362639.P2541435661684782136

`A128629(A104880(n))`
-/

namespace A362639.P2541435661684782136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128629 (A104880 n).toNat

end

end A362639.P2541435661684782136

/-! ## A362639.P6718143673901379416

`A258445(A153643(n))`
-/

namespace A362639.P6718143673901379416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258445 (A153643 n).toNat

end

end A362639.P6718143673901379416

/-! ## A362639.P15965578834781526113

`A157873(A300442(n))`
-/

namespace A362639.P15965578834781526113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157873 (A300442 n).toNat

end

end A362639.P15965578834781526113

/-! ## A362639.P8000807274662584020

`A162453(A360892(n))`
-/

namespace A362639.P8000807274662584020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162453 (A360892 n).toNat

end

end A362639.P8000807274662584020

/-!
# A362640: Product of the larger primes, q, in the Goldbach partitions of 2n such that p + q = 2n, p <= q, and p,q prime (or 1 if no Goldbach partition of 2n exists).

The programs for A362640, there is no canonical definition to state claims against.
-/

/-! ## A362640.P12352227787685379336

`A337568(n+1)/A362641(n+1)`
-/

namespace A362640.P12352227787685379336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337568 (n + 1) : ℚ) / (A362641 (n + 1) : ℚ)

end

end A362640.P12352227787685379336

/-! ## A362640.P4518794892324135337

`gcd(A261130(n), A337568(n+1))`
-/

namespace A362640.P4518794892324135337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261130 n) (A337568 (n + 1))

end

end A362640.P4518794892324135337

/-! ## A362640.P18126278251655306692

`A324371(A261130(n))`
-/

namespace A362640.P18126278251655306692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A261130 n).toNat

end

end A362640.P18126278251655306692

/-! ## A362640.P17106830107683037586

`A347044(A337568(n+1))`
-/

namespace A362640.P17106830107683037586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347044 (A337568 (n + 1)).toNat

end

end A362640.P17106830107683037586

/-! ## A362640.P9125625065069636266

`gcd(A007947(A000984(n)), A038111(n+1))`
-/

namespace A362640.P9125625065069636266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (A000984 n).toNat) (A038111 (n + 1))

end

end A362640.P9125625065069636266

/-!
# A362641: Product of the smaller primes, p, in the Goldbach partitions of 2n such that p + q = 2n, p <= q, and p,q prime (or 1 if no Goldbach partition of 2n exists).

The programs for A362641, there is no canonical definition to state claims against.
-/

/-! ## A362641.P2878562388924300622

`A337568(n+1)/A362640(n+1)`
-/

namespace A362641.P2878562388924300622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337568 (n + 1) : ℚ) / (A362640 (n + 1) : ℚ)

end

end A362641.P2878562388924300622

/-! ## A362641.P10104436406054681434

`gcd(A066616(n+1), A337568(n+1))`
-/

namespace A362641.P10104436406054681434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066616 (n + 1)) (A337568 (n + 1))

end

end A362641.P10104436406054681434

/-! ## A362641.P8810663398150536225

`gcd(A247651(n), A337568(n+1))`
-/

namespace A362641.P8810663398150536225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247651 n) (A337568 (n + 1))

end

end A362641.P8810663398150536225

/-! ## A362641.P12786828518457530228

`A337568(A032563(n+1))/A261130(n)`
-/

namespace A362641.P12786828518457530228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337568 (A032563 (n + 1)).toNat : ℚ) / (A261130 n : ℚ)

end

end A362641.P12786828518457530228

/-!
# A362642: Number of nonisomorphic magmas with n elements satisfying the equations (xy)y = x and x(yz) = xy.

The programs for A362642, there is no canonical definition to state claims against.
-/

/-! ## A362642.P9798224870329994389

`A111854(∑[A000522(n)]+2)`
-/

namespace A362642.P9798224870329994389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111854 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A362642.P9798224870329994389

/-! ## A362642.P16855391238022782748

`A132292(A000522(n))+A000041(n)`
-/

namespace A362642.P16855391238022782748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A000522 n).toNat + A000041 n

end

end A362642.P16855391238022782748

/-! ## A362642.P5801657427175883758

`A242701(n)+A132292(A000522(n))`
-/

namespace A362642.P5801657427175883758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242701 (n + 100) + A132292 (A000522 n).toNat

end

end A362642.P5801657427175883758

/-!
# A362643: Number of labeled magmas with n elements satisfying the equations (xy)y = x and x(yz) = xy.

The programs for A362643, there is no canonical definition to state claims against.
-/

/-! ## A362643.P11785163192225734573

`A032711(A067735(n))-1`
-/

namespace A362643.P11785163192225734573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (A067735 n).toNat - 1

end

end A362643.P11785163192225734573

/-! ## A362643.P15316761858987894890

`A271980(A138212(n))+A080576(n+1)`
-/

namespace A362643.P15316761858987894890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271980 (A138212 n).toNat + A080576 (n + 1)

end

end A362643.P15316761858987894890

/-!
# A362644: Array read by antidiagonals: T(n,k) is the number of nonisomorphic multisets of permutations of an n-set with k permutations.

The programs for A362644, there is no canonical definition to state claims against.
-/

/-! ## A362644.P18681655230851427

`A156081(2*A361290(n)+1)`
-/

namespace A362644.P18681655230851427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156081 (2 * A361290 n + 1).toNat

end

end A362644.P18681655230851427

/-! ## A362644.P11274516480127827566

`A085152(A096751(n))%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)`
-/

namespace A362644.P11274516480127827566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085152 (A096751 n).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1))

end

end A362644.P11274516480127827566

/-! ## A362644.P4170242813966401593

`A088519(A362897(n))`
-/

namespace A362644.P4170242813966401593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A362897 n).toNat

end

end A362644.P4170242813966401593

/-! ## A362644.P13770784471815285006

`A201052(A384437(n))`
-/

namespace A362644.P13770784471815285006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (A384437 n).toNat

end

end A362644.P13770784471815285006

/-! ## A362644.P3788526894532095757

`A225644(A383905(n))`
-/

namespace A362644.P3788526894532095757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A383905 n).toNat

end

end A362644.P3788526894532095757

/-!
# A362645: Number of nonisomorphic unordered pairs of permutations of an n-set.

The programs for A362645, there is no canonical definition to state claims against.
-/

/-! ## A362645.P6225794592138344441

`A362644(∑[n+3])`
-/

namespace A362645.P6225794592138344441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362645.P6225794592138344441

/-! ## A362645.P5293095800285877070

`A362644(A141214(n))+A186685(2*(n+2))`
-/

namespace A362645.P5293095800285877070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (A141214 n).toNat + A186685 (2 * (n + 2))

end

end A362645.P5293095800285877070

/-! ## A362645.P14017985806707220627

`A362644(A141214(n))+A002448(3*n+2)`
-/

namespace A362645.P14017985806707220627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (A141214 n).toNat + A002448 (3 * n + 2)

end

end A362645.P14017985806707220627

/-! ## A362645.P7615623195090070579

`A362644(A141214(n))^A213217(n)`
-/

namespace A362645.P7615623195090070579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362644 (A141214 n).toNat : ℚ) ^ (A213217 n : ℤ)

end

end A362645.P7615623195090070579

/-!
# A362646: Number of nonisomorphic unordered triples of permutations of an n-set.

The programs for A362646, there is no canonical definition to state claims against.
-/

/-! ## A362646.P10122238334150096871

`A362644(A056000(n)+6)`
-/

namespace A362646.P10122238334150096871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (A056000 n + 6).toNat

end

end A362646.P10122238334150096871

/-! ## A362646.P4452589634681804631

`A362644(A141214(n+1)-1)`
-/

namespace A362646.P4452589634681804631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (A141214 (n + 1) - 1).toNat

end

end A362646.P4452589634681804631

/-! ## A362646.P170721476648883039

`A362644(A000217(n+4)-4)`
-/

namespace A362646.P170721476648883039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (A000217 (n + 4) - 4).toNat

end

end A362646.P170721476648883039

/-! ## A362646.P12936734361199694802

`A362644(lt[A224262(n+4), A250120(n)])`
-/

namespace A362646.P12936734361199694802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362646.P12936734361199694802

/-! ## A362646.P16906992439603951960

`A362644(lt[A224262(n+4), A001358(n+1)])`
-/

namespace A362646.P16906992439603951960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362646.P16906992439603951960

/-!
# A362647: Number of nonisomorphic multisets of permutations of an n-set with n permutations.

The programs for A362647, there is no canonical definition to state claims against.
-/

/-! ## A362647.P9252808035105413089

`A362644(∑[4*n])`
-/

namespace A362647.P9252808035105413089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362644 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362647.P9252808035105413089

/-! ## A362647.P8381136136355014851

`A036225(n)*A362644(A046092(n))`
-/

namespace A362647.P8381136136355014851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A362644 (A046092 n).toNat

end

end A362647.P8381136136355014851

/-! ## A362647.P12132849822320291674

`A291168(n)*A362644(A046092(n))`
-/

namespace A362647.P12132849822320291674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n * A362644 (A046092 n).toNat

end

end A362647.P12132849822320291674

/-! ## A362647.P484253219241827096

`A000035(2*n+1)*A362644(A046092(n))`
-/

namespace A362647.P484253219241827096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A362644 (A046092 n).toNat

end

end A362647.P484253219241827096

/-!
# A362648: Array read by antidiagonals: T(n,k) is the number of nonisomorphic multisets of involutions on an n-set with k involutions.

The programs for A362648, there is no canonical definition to state claims against.
-/

/-! ## A362648.P17340348977343871562

`or(A086008(A292734(2*n+3)), A363349(n))`
-/

namespace A362648.P17340348977343871562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086008 (A292734 (2 * n + 3)).toNat) (A363349 n)

end

end A362648.P17340348977343871562

/-! ## A362648.P17358587576577717056

`A001222(5^A363349(n))`
-/

namespace A362648.P17358587576577717056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A363349 n : ℤ))).toNat

end

end A362648.P17358587576577717056

/-! ## A362648.P16596700994818275263

`A363349(n)%A232328(n)`
-/

namespace A362648.P16596700994818275263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363349 n) (A232328 n)

end

end A362648.P16596700994818275263

/-! ## A362648.P4332758064515585948

`and(A113860(n), A363349(n))`
-/

namespace A362648.P4332758064515585948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113860 n) (A363349 n)

end

end A362648.P4332758064515585948

/-! ## A362648.P17228841579570904446

`A363349(n)^A010122(n)!`
-/

namespace A362648.P17228841579570904446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 n ^ Nat.factorial (A010122 n).toNat

end

end A362648.P17228841579570904446

/-!
# A362649: Number of nonisomorphic unordered pairs of involutions on an n-set.

The programs for A362649, there is no canonical definition to state claims against.
-/

/-! ## A362649.P14297136946800979647

`A362648(∑[n+3])`
-/

namespace A362649.P14297136946800979647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362649.P14297136946800979647

/-! ## A362649.P2549472705512140490

`A362648(A141214(n))+A260502(n+1)`
-/

namespace A362649.P2549472705512140490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (A141214 n).toNat + A260502 (n + 1)

end

end A362649.P2549472705512140490

/-! ## A362649.P1423050819588884696

`A357875(A092119(n))`
-/

namespace A362649.P1423050819588884696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (A092119 n).toNat

end

end A362649.P1423050819588884696

/-! ## A362649.P3021896494521708592

`or(A025480(n), A239215(A145722(n)))`
-/

namespace A362649.P3021896494521708592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025480 n) (A239215 (A145722 n).toNat)

end

end A362649.P3021896494521708592

/-!
# A362650: Number of nonisomorphic unordered triples of involutions on an n-set.

The programs for A362650, there is no canonical definition to state claims against.
-/

/-! ## A362650.P2657195356779716570

`A362648(A155212(n)+4)`
-/

namespace A362650.P2657195356779716570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (A155212 n + 4).toNat

end

end A362650.P2657195356779716570

/-! ## A362650.P437310732428751242

`A362648(A056000(n)+6)`
-/

namespace A362650.P437310732428751242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (A056000 n + 6).toNat

end

end A362650.P437310732428751242

/-! ## A362650.P87509984497480640

`A362648(A052905(n+1)+1)`
-/

namespace A362650.P87509984497480640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (A052905 (n + 1) + 1).toNat

end

end A362650.P87509984497480640

/-! ## A362650.P17710568801855399867

`A362648(A141214(n+1)-1)`
-/

namespace A362650.P17710568801855399867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (A141214 (n + 1) - 1).toNat

end

end A362650.P17710568801855399867

/-! ## A362650.P3975760688459125267

`A362648(A000217(n+4)-4)`
-/

namespace A362650.P3975760688459125267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (A000217 (n + 4) - 4).toNat

end

end A362650.P3975760688459125267

/-!
# A362651: Number of nonisomorphic multisets of involutions on an n-set with n involutions.

The programs for A362651, there is no canonical definition to state claims against.
-/

/-! ## A362651.P2143015667053969713

`A362648(∑[4*n])`
-/

namespace A362651.P2143015667053969713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362651.P2143015667053969713

/-! ## A362651.P13737614800449242488

`and(-1, A362648(A046092(n)))`
-/

namespace A362651.P13737614800449242488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A362648 (A046092 n).toNat)

end

end A362651.P13737614800449242488

/-! ## A362651.P2423086616852294535

`A036225(n)*A362648(A046092(n))`
-/

namespace A362651.P2423086616852294535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A362648 (A046092 n).toNat

end

end A362651.P2423086616852294535

/-! ## A362651.P17279674496781902960

`or(A086008(n+2), A362648(A046092(n)))`
-/

namespace A362651.P17279674496781902960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086008 (n + 2)) (A362648 (A046092 n).toNat)

end

end A362651.P17279674496781902960

/-! ## A362651.P3880232541570716790

`A362648(A046092(n))%A080293(n)`
-/

namespace A362651.P3880232541570716790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362648 (A046092 n).toNat) (A080293 n)

end

end A362651.P3880232541570716790

/-!
# A362652: Expansion of g.f. x*(-2 - 2*x + x^2 - x^3)/((1 + x)^2 *(-1 + x)^3).

The programs for A362652, the canonical program `A362652.P10432050116958536880` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362652 has offset 1).

The definition of A362652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+2x-x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))` (program `A362652.P10432050116958536880`, by `A362652.P10432050116958536880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362652.P10432050116958536880

`ogf((2+2x-x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362652

/-- `ogf((2+2x-x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P10432050116958536880.Spec : Prop :=
  ∀ n, P10432050116958536880.a n = A362652 (n + 1)

theorem P10432050116958536880.correct : P10432050116958536880.Spec := by
  intro n
  simp only [A362652, Nat.add_sub_cancel]

end A362652

/-! ## A362652.P14003019058094683247

`n+1+(n+1)%2+(n+1)*(n+1-(n+1)%2)/2`
-/

namespace A362652.P14003019058094683247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 + (n + 1) % 2 : ℕ) : ℚ) + ((n + 1 : ℤ) * ((n + 1 : ℤ) - (((n + 1) % 2 : ℕ) : ℤ)) : ℚ) / 2

end

end A362652.P14003019058094683247

namespace A362652

/-- `n+1+(n+1)%2+(n+1)*(n+1-(n+1)%2)/2` -/
def P14003019058094683247.Spec : Prop :=
  ∀ n, P14003019058094683247.a n = (A362652 (n + 1) : ℚ)

end A362652

/-! ## A362652.P3418541566701195851

`∑[∑[(2-n)*(-1)^n]+n]`
-/

namespace A362652.P3418541566701195851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362652.P3418541566701195851

namespace A362652

/-- `∑[∑[(2-n)*(-1)^n]+n]` -/
def P3418541566701195851.Spec : Prop :=
  ∀ n, P3418541566701195851.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P9302793352786356587

`floor((lcm(2, n)+n²)/2)+2+n`
-/

namespace A362652.P9302793352786356587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n + n ^ 2 : ℚ) / 2⌋ + 2 + (n : ℤ)

end

end A362652.P9302793352786356587

namespace A362652

/-- `floor((lcm(2, n)+n²)/2)+2+n` -/
def P9302793352786356587.Spec : Prop :=
  ∀ n, P9302793352786356587.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P3693391644623121225

`floor(∑[n+2]-n/gcd(2, n+1))`
-/

namespace A362652.P3693391644623121225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌋

end

end A362652.P3693391644623121225

namespace A362652

/-- `floor(∑[n+2]-n/gcd(2, n+1))` -/
def P3693391644623121225.Spec : Prop :=
  ∀ n, P3693391644623121225.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P4431295800810636501

`((n+2)²-gcd(n, a(n-1)))/2` with `a(0)=2`
-/

namespace A362652.P4431295800810636501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (((n + 2) ^ 2 : ℤ) - (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ) : ℚ) / 2

end

end A362652.P4431295800810636501

namespace A362652

/-- `((n+2)²-gcd(n, a(n-1)))/2` -/
def P4431295800810636501.Spec : Prop :=
  ∀ n, P4431295800810636501.a n = (A362652 (n + 1) : ℚ)

end A362652

/-! ## A362652.P9005173678795342052

`n+1+∑[n]+gcd(xor(1, -n), ∑[n])`
-/

namespace A362652.P9005173678795342052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + (∑ j ∈ Finset.range (n + 1), f1 j + Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A362652.P9005173678795342052

namespace A362652

/-- `n+1+∑[n]+gcd(xor(1, -n), ∑[n])` -/
def P9005173678795342052.Spec : Prop :=
  ∀ n, (P9005173678795342052.a n : ℤ) = A362652 (n + 1)

end A362652

/-! ## A362652.P7043297567167632628

`∑[5-a(n-1)]+n²-a(n-1)` with `a(0)=2`
-/

namespace A362652.P7043297567167632628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n ^ 2 : ℤ) - a (n - 1))

end

end A362652.P7043297567167632628

namespace A362652

/-- `∑[5-a(n-1)]+n²-a(n-1)` -/
def P7043297567167632628.Spec : Prop :=
  ∀ n, P7043297567167632628.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P12479049557533167705

`∑[5-a(n-1)]-(a(n-1)-n²)` with `a(0)=2`
-/

namespace A362652.P12479049557533167705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 1) - (n ^ 2 : ℤ))

end

end A362652.P12479049557533167705

namespace A362652

/-- `∑[5-a(n-1)]-(a(n-1)-n²)` -/
def P12479049557533167705.Spec : Prop :=
  ∀ n, P12479049557533167705.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P10605157275434702903

`a(n-2)+∑[floor(a(n-2))]-(n+1)` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A362652.P10605157275434702903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A362652.P10605157275434702903

namespace A362652

/-- `a(n-2)+∑[floor(a(n-2))]-(n+1)` -/
def P10605157275434702903.Spec : Prop :=
  ∀ n, P10605157275434702903.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P439938884055076648

`floor((n+1)*((n+1)²-a(n-1))/n)` with `a(0)=2`
-/

namespace A362652.P439938884055076648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(n + 1 : ℚ) * ((((n + 1) ^ 2 : ℤ) - a (n - 1) : ℚ) / (n : ℚ))⌋

end

end A362652.P439938884055076648

namespace A362652

/-- `floor((n+1)*((n+1)²-a(n-1))/n)` -/
def P439938884055076648.Spec : Prop :=
  ∀ n, P439938884055076648.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P1251195134661575903

`(n+1)²-floor(a(n-1)-a(n-1)/n)` with `a(0)=2`
-/

namespace A362652.P1251195134661575903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 1) ^ 2 : ℤ) - ⌊(a (n - 1) : ℚ) - (a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A362652.P1251195134661575903

namespace A362652

/-- `(n+1)²-floor(a(n-1)-a(n-1)/n)` -/
def P1251195134661575903.Spec : Prop :=
  ∀ n, P1251195134661575903.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P11613791453633468957

`A053439(n)+1+n`
-/

namespace A362652.P11613791453633468957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053439 n + 1 + (n : ℤ)

end

end A362652.P11613791453633468957

namespace A362652

/-- `A053439(n)+1+n` -/
def P11613791453633468957.Spec : Prop :=
  ∀ n, P11613791453633468957.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P12045950847870196941

`A128223(n)+2+n`
-/

namespace A362652.P12045950847870196941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 n + 2 + (n : ℤ)

end

end A362652.P12045950847870196941

namespace A362652

/-- `A128223(n)+2+n` -/
def P12045950847870196941.Spec : Prop :=
  ∀ n, P12045950847870196941.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P6758296124148520500

`A152271(n)+∑[n+1]`
-/

namespace A362652.P6758296124148520500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A362652.P6758296124148520500

namespace A362652

/-- `A152271(n)+∑[n+1]` -/
def P6758296124148520500.Spec : Prop :=
  ∀ n, P6758296124148520500.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P7592311282710239040

`A195013(n+1)+∑[n]`
-/

namespace A362652.P7592311282710239040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A362652.P7592311282710239040

namespace A362652

/-- `A195013(n+1)+∑[n]` -/
def P7592311282710239040.Spec : Prop :=
  ∀ n, P7592311282710239040.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P4491388676667820133

`A265225(n)+A059841(n)`
-/

namespace A362652.P4491388676667820133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n + A059841 n

end

end A362652.P4491388676667820133

namespace A362652

/-- `A265225(n)+A059841(n)` -/
def P4491388676667820133.Spec : Prop :=
  ∀ n, P4491388676667820133.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P11370425081884327330

`A266287(n)+A133265(n)`
-/

namespace A362652.P11370425081884327330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 n + A133265 n

end

end A362652.P11370425081884327330

namespace A362652

/-- `A266287(n)+A133265(n)` -/
def P11370425081884327330.Spec : Prop :=
  ∀ n, P11370425081884327330.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P14621398980856070250

`A266723(n)+A158416(n)`
-/

namespace A362652.P14621398980856070250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n + A158416 n

end

end A362652.P14621398980856070250

namespace A362652

/-- `A266723(n)+A158416(n)` -/
def P14621398980856070250.Spec : Prop :=
  ∀ n, P14621398980856070250.a n = A362652 (n + 1)

end A362652

/-! ## A362652.P10035762827407343284

`A266438(n)+A174239(n)`
-/

namespace A362652.P10035762827407343284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266438 n + A174239 n

end

end A362652.P10035762827407343284

namespace A362652

/-- `A266438(n)+A174239(n)` -/
def P10035762827407343284.Spec : Prop :=
  ∀ n, P10035762827407343284.a n = A362652 (n + 1)

end A362652

/-!
# A362654: E.g.f. satisfies A(x) = exp( x * exp(x^2) * A(x) ).

The programs for A362654, there is no canonical definition to state claims against.
-/

/-! ## A362654.P3639850107430202991

`A234016(3*A143924(n))`
-/

namespace A362654.P3639850107430202991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 (3 * A143924 n).toNat

end

end A362654.P3639850107430202991

/-! ## A362654.P13746350952036775286

`A004526(A300048(n)+A050351(n))`
-/

namespace A362654.P13746350952036775286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A300048 n + A050351 n).toNat

end

end A362654.P13746350952036775286

/-!
# A362656: E.g.f. satisfies A(x) = exp( x * exp(x) * A(x)^3 ).

The programs for A362656, the canonical program `A362656.P1000363635767391791` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362656 has offset 0).

The definition of A362656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362656.P1000363635767391791

`∑{#}[n, #^(n-#)*(3*#+1)^(#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362656

/-- `∑{#}[n, #^(n-#)*(3*#+1)^(#-1)*C(n, #)]` -/
def P1000363635767391791.Spec : Prop :=
  ∀ n, P1000363635767391791.a n = (A362656 n : ℚ)

end A362656

/-!
# A362657: Number of bracelets consisting of three instances each of n swappable colors.

The programs for A362657, there is no canonical definition to state claims against.
-/

/-! ## A362657.P2027920162576758595

`A240314(2^(n+1)-n)`
-/

namespace A362657.P2027920162576758595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240314 (2 ^ (n + 1) - n)

end

end A362657.P2027920162576758595

/-!
# A362660: E.g.f. satisfies A(x) = exp( x * exp(x^2/2) * A(x) ).

The programs for A362660, there is no canonical definition to state claims against.
-/

/-! ## A362660.P13011694223272145682

`A269371(A072034(n))+A027868(n)`
-/

namespace A362660.P13011694223272145682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (A072034 n).toNat + A027868 n

end

end A362660.P13011694223272145682

/-! ## A362660.P15477706557929966978

`A325106(A212510(n))+A235322(n)`
-/

namespace A362660.P15477706557929966978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A212510 n).toNat + A235322 n

end

end A362660.P15477706557929966978

/-!
# A362661: E.g.f. satisfies A(x) = exp( x * exp(x^3/6) * A(x) ).

The programs for A362661, there is no canonical definition to state claims against.
-/

/-! ## A362661.P10729579351669343708

`or(∑{e}[n+1, #]!%2, A246277(A326096(n)))`
-/

namespace A362661.P10729579351669343708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2 : ℕ) : ℤ) (A246277 (A326096 n).toNat)

end

end A362661.P10729579351669343708

/-!
# A362663: a(n) is the partial sum of b(n), which is defined to be the difference between the numbers of primes in (n^2, n^2 + n] and in (n^2 - n, n^2].

The programs for A362663, the canonical program `A362663.P1700409875105677060` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362663 has offset 1).

The definition of A362663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362663.P1700409875105677060

`a(n-1)+A000720((n+1)²+n+1)+A000720((n+1)²-(n+1))-2*A000720((n+1)²)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362663

/-- `a(n-1)+A000720((n+1)²+n+1)+A000720((n+1)²-(n+1))-2*A000720((n+1)²)` -/
def P1700409875105677060.Spec : Prop :=
  ∀ n, P1700409875105677060.a n = A362663 (n + 1)

theorem P1700409875105677060.correct : P1700409875105677060.Spec := by
  intro n
  simp only [A362663, Nat.add_sub_cancel]

end A362663

/-! ## A362663.P4064754111046502547

`∑[A089610(n+1)-A220492(2*n+1)]`
-/

namespace A362663.P4064754111046502547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (n + 1) - A220492 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362663.P4064754111046502547

namespace A362663

/-- `∑[A089610(n+1)-A220492(2*n+1)]` -/
def P4064754111046502547.Spec : Prop :=
  ∀ n, P4064754111046502547.a n = A362663 (n + 1)

end A362663

/-!
# A362664: Numbers k with exactly two solutions x to the equation iphi(x) = k, where iphi is the infinitary totient function A091732.

The programs for A362664, there is no canonical definition to state claims against.
-/

/-! ## A362664.P14165510377329178133

`A091732(A362665(n+1))`
-/

namespace A362664.P14165510377329178133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (A362665 (n + 1)).toNat

end

end A362664.P14165510377329178133

/-! ## A362664.P18410986624330926536

`eq[2, A362485(n+1)]+1`
-/

namespace A362664.P18410986624330926536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362664.P18410986624330926536

/-!
# A362665: a(n) is the smaller of the two solutions to A091732(x) = A362664(n).

The programs for A362665, there is no canonical definition to state claims against.
-/

/-! ## A362665.P7998186816223415625

`A362666(A362664(n+1))/2`
-/

namespace A362665.P7998186816223415625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362666 (A362664 (n + 1)).toNat : ℚ) / 2

end

end A362665.P7998186816223415625

/-! ## A362665.P14777429487839021988

`A362666(eq[2, A362485(n+1)]+1)/2`
-/

namespace A362665.P14777429487839021988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A362665.P14777429487839021988

/-! ## A362665.P12613836656494499390

`A135347(A362664(n+1))%A272770(3*n+4)`
-/

namespace A362665.P12613836656494499390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135347 (A362664 (n + 1)).toNat) (A272770 (3 * n + 4))

end

end A362665.P12613836656494499390

/-! ## A362665.P18218072540902735263

`A135347(eq[2, A362485(n+1)]+1)%A272770(3*n+4)`
-/

namespace A362665.P18218072540902735263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) (A272770 (3 * n + 4))

end

end A362665.P18218072540902735263

/-!
# A362667: Infinitary sparsely totient numbers: numbers k such that m > k implies iphi(m) > iphi(k), where iphi is the infinitary totient function A091732.

The programs for A362667, there is no canonical definition to state claims against.
-/

/-! ## A362667.P8098448576244314341

`record[A362666(n+1)]`
-/

namespace A362667.P8098448576244314341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362667.P8098448576244314341

/-! ## A362667.P12734855014964422118

`A362666(A362668(n+1))`
-/

namespace A362667.P12734855014964422118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362666 (A362668 (n + 1)).toNat

end

end A362667.P12734855014964422118

/-! ## A362667.P10147763196036246086

`record[A362484(∑[A362485(n+1)])]`
-/

namespace A362667.P10147763196036246086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362484 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362667.P10147763196036246086

/-! ## A362667.P17572485450745320565

`∑[A001223(∑[A268170(n)+1])]`
-/

namespace A362667.P17572485450745320565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268170 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362667.P17572485450745320565

/-! ## A362667.P17379884369658815688

`∩[A028772(n+1), A227762(n+1)]`
-/

namespace A362667.P17379884369658815688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362667.P17379884369658815688

/-!
# A362668: a(n) = A091732(A362667(n)).

The programs for A362668, there is no canonical definition to state claims against.
-/

/-! ## A362668.P5846537578531997000

`A091732(A362667(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362668.P5846537578531997000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (A362667 (n + 1)).toNat

end

end A362668.P5846537578531997000

/-! ## A362668.P10826560070761390887

`A091732(record[A362666(n+1)/2])`
-/

namespace A362668.P10826560070761390887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362666 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A362668.P10826560070761390887

/-! ## A362668.P12072532552549147417

`A091732(record[A362666(n+1)])`
-/

namespace A362668.P12072532552549147417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362668.P12072532552549147417

/-! ## A362668.P9299000655469664935

`lt[lcm(12, n)/12, log2(A060789(2*n+3))]`
-/

namespace A362668.P9299000655469664935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 n : ℚ) / 12

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060789 (2 * n + 3) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A362668.P9299000655469664935

/-! ## A362668.P10275839728939808612

`eq[A076511(n+1), A301333(n)]`
-/

namespace A362668.P10275839728939808612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362668.P10275839728939808612

/-!
# A362670: Integer inradii for which there exists an isosceles triangle with integer sides (a, a, c) where a < c.

The programs for A362670, there is no canonical definition to state claims against.
-/

/-! ## A362670.P4360095022239056966

`lt[1, A323068(gcd(n, C(2, n))+n)]`
-/

namespace A362670.P4360095022239056966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323068 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A362670.P4360095022239056966

/-! ## A362670.P9297802700622183516

`A059267(A118759(n+1))`
-/

namespace A362670.P9297802700622183516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (A118759 (n + 1)).toNat

end

end A362670.P9297802700622183516

/-! ## A362670.P3937783698297158313

`A059267(A130446(n+1))`
-/

namespace A362670.P3937783698297158313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (A130446 (n + 1)).toNat

end

end A362670.P3937783698297158313

/-! ## A362670.P13968586207768770648

`A255408(A059267(n+1))`
-/

namespace A362670.P13968586207768770648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A059267 (n + 1)).toNat

end

end A362670.P13968586207768770648

/-! ## A362670.P4769175241520272499

`A059267(A296882(n+1))`
-/

namespace A362670.P4769175241520272499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (A296882 (n + 1)).toNat

end

end A362670.P4769175241520272499

/-! ## A362670.P4890582552373442120

`A059267(A361338(n)+n)`
-/

namespace A362670.P4890582552373442120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (A361338 n + (n : ℤ)).toNat

end

end A362670.P4890582552373442120

/-! ## A362670.P6855702863984189207

`or(char[A004924(n)], A059267(n+1))`
-/

namespace A362670.P6855702863984189207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004924 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A059267 (n + 1))

end

end A362670.P6855702863984189207

/-! ## A362670.P17591246106010166783

`or(char[A069072(n)], A059267(n+1))`
-/

namespace A362670.P17591246106010166783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069072 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A059267 (n + 1))

end

end A362670.P17591246106010166783

/-! ## A362670.P5087489960849027506

`A255408(lt[0, A243865(n+1)]+1)`
-/

namespace A362670.P5087489960849027506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A362670.P5087489960849027506

/-! ## A362670.P109356814701637168

`lt[A319797(n), A243983(n+1)]+1`
-/

namespace A362670.P109356814701637168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362670.P109356814701637168

/-!
# A362671: E.g.f. satisfies A(x) = exp( x * exp(x) / A(x)^2 ).

The programs for A362671, there is no canonical definition to state claims against.
-/

/-! ## A362671.P2885933001927245065

`1-A165472(A332391(n+1))`
-/

namespace A362671.P2885933001927245065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A165472 (A332391 (n + 1)).toNat

end

end A362671.P2885933001927245065

/-!
# A362674: E.g.f. satisfies A(x) = exp( x * exp(x^3) / A(x) ).

The programs for A362674, there is no canonical definition to state claims against.
-/

/-! ## A362674.P14889089448429223053

`A263274(A031973(n))-n`
-/

namespace A362674.P14889089448429223053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 (A031973 n).toNat - (n : ℤ)

end

end A362674.P14889089448429223053

/-! ## A362674.P12967794421350113860

`A362275(n)+A217148(n²+2)`
-/

namespace A362674.P12967794421350113860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362275 n + A217148 (n ^ 2 + 2)

end

end A362674.P12967794421350113860

/-!
# A362676: a(n) = Sum_{k = 0..n} 4^(n-k)*binomial(n,k)*binomial(n-1,k)*binomial(2*k,k).

The programs for A362676, there is no canonical definition to state claims against.
-/

/-! ## A362676.P3928873740530530220

`A000010(A130534(2*(n+1))+∏[dr(1-9*n)+n])`
-/

namespace A362676.P3928873740530530220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - (9 * n : ℤ)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130534 (2 * (n + 1)) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A362676.P3928873740530530220

/-!
# A362678: Primes whose digits are prime and in nondecreasing order.

The programs for A362678, there is no canonical definition to state claims against.
-/

/-! ## A362678.P8507700444261810461

`∩[A019546(n+1), A028864(n+1)]`
-/

namespace A362678.P8507700444261810461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362678.P8507700444261810461

/-! ## A362678.P6756267999247965176

`∩[A019546(n+1), A032524(n+1)]`
-/

namespace A362678.P6756267999247965176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362678.P6756267999247965176

/-! ## A362678.P10633493597482914634

`∩[A028864(n+1), A062087(n+1)]`
-/

namespace A362678.P10633493597482914634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362678.P10633493597482914634

/-! ## A362678.P3325377113709022543

`∩[A019546(n+1), A190221(n+1)]`
-/

namespace A362678.P3325377113709022543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362678.P3325377113709022543

/-! ## A362678.P11108555368612672378

`∩[A019546(n+1), A249443(n+1)]`
-/

namespace A362678.P11108555368612672378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362678.P11108555368612672378

/-! ## A362678.P449565737145561465

`∩[A009994(n+1), A019546(n+1)]`
-/

namespace A362678.P449565737145561465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362678.P449565737145561465

/-! ## A362678.P910707695309659340

`∩[A028864(n+1), A046034(n+1)]`
-/

namespace A362678.P910707695309659340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362678.P910707695309659340

/-!
# A362679: a(n) is the permanent of the n X n symmetric matrix M(n) defined by M[i, j, n] = min(i, j)*(n + 1) - i*j.

The programs for A362679, there is no canonical definition to state claims against.
-/

/-! ## A362679.P13801892075470481706

`A132340(A132316(n)-n)`
-/

namespace A362679.P13801892075470481706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132340 (A132316 n - (n : ℤ)).toNat

end

end A362679.P13801892075470481706

/-!
# A362680: a(n) is the number of decimal digits in A173426(n).

The programs for A362680, the canonical program `A362680.P16293648216085454390` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362680 has offset 1).

The definition of A362680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058183, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362680.P16293648216085454390

`2*A058183(n+1)-A055642(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362680

/-- `2*A058183(n+1)-A055642(n+1)` -/
def P16293648216085454390.Spec : Prop :=
  ∀ n, P16293648216085454390.a n = A362680 (n + 1)

theorem P16293648216085454390.correct : P16293648216085454390.Spec := by
  intro n
  simp only [A362680, Nat.add_sub_cancel]

end A362680

/-! ## A362680.P11723485245084566721

`A055642(n)+A004216(n+1)+a(n-1)+1` with `a(0)=1`
-/

namespace A362680.P11723485245084566721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 n + (A004216 (n + 1) + (a (n - 1) + 1))

end

end A362680.P11723485245084566721

namespace A362680

/-- `A055642(n)+A004216(n+1)+a(n-1)+1` -/
def P11723485245084566721.Spec : Prop :=
  ∀ n, P11723485245084566721.a n = A362680 (n + 1)

end A362680

/-! ## A362680.P6965641126208140286

`A055642(n)+∑{digits}[n+1, A036370(#)]+a(n-1)` with `a(0)=1`
-/

namespace A362680.P6965641126208140286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 n + (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum + a (n - 1))

end

end A362680.P6965641126208140286

namespace A362680

/-- `A055642(n)+∑{digits}[n+1, A036370(#)]+a(n-1)` -/
def P6965641126208140286.Spec : Prop :=
  ∀ n, P6965641126208140286.a n = A362680 (n + 1)

end A362680

/-! ## A362680.P12802743296529731712

`A073053(n)%5+A004216(n+1)+a(n-1)+1` with `a(0)=1`
-/

namespace A362680.P12802743296529731712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A073053 n) 5 + (A004216 (n + 1) + (a (n - 1) + 1))

end

end A362680.P12802743296529731712

namespace A362680

/-- `A073053(n)%5+A004216(n+1)+a(n-1)+1` -/
def P12802743296529731712.Spec : Prop :=
  ∀ n, P12802743296529731712.a n = A362680 (n + 1)

end A362680

/-! ## A362680.P9589223380443156298

`A289207(A117804(n+1)+A117804(n+2))`
-/

namespace A362680.P9589223380443156298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A117804 (n + 1) + A117804 (n + 2)).toNat

end

end A362680.P9589223380443156298

namespace A362680

/-- `A289207(A117804(n+1)+A117804(n+2))` -/
def P9589223380443156298.Spec : Prop :=
  ∀ n, P9589223380443156298.a n = A362680 (n + 1)

end A362680

/-! ## A362680.P2703813290304943023

`A004216(A017293(n))+A055642(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A362680.P2703813290304943023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004216 (A017293 n).toNat + (A055642 (n + 1) + a (n - 1))

end

end A362680.P2703813290304943023

namespace A362680

/-- `A004216(A017293(n))+A055642(n+1)+a(n-1)` -/
def P2703813290304943023.Spec : Prop :=
  ∀ n, P2703813290304943023.a n = A362680 (n + 1)

end A362680

/-! ## A362680.P17838324568880829151

`A032520(2*n+3)-A130130(A141925(n+1))`
-/

namespace A362680.P17838324568880829151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032520 (2 * n + 3) - A130130 (A141925 (n + 1)).toNat

end

end A362680.P17838324568880829151

namespace A362680

/-- `A032520(2*n+3)-A130130(A141925(n+1))` -/
def P17838324568880829151.Spec : Prop :=
  ∀ n, P17838324568880829151.a n = A362680 (n + 1)

end A362680

/-!
# A362681: The number of steps, starting from n, to reach k<=2 in an iteration k -> 2*k - (sum of proper factors of 2*k).

The programs for A362681, there is no canonical definition to state claims against.
-/

/-! ## A362681.P15068677544165745822

`A078898(A053828(n))%A324765(n+1)`
-/

namespace A362681.P15068677544165745822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A053828 n).toNat) (A324765 (n + 1))

end

end A362681.P15068677544165745822

/-! ## A362681.P1253498622653561017

`A001221(A122983(n)%A088101(3*n+5))`
-/

namespace A362681.P1253498622653561017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A122983 n) (A088101 (3 * n + 5))).toNat

end

end A362681.P1253498622653561017

/-! ## A362681.P7835727563463841291

`A190593(gcd(A028422(n+1), A102125(n)))`
-/

namespace A362681.P7835727563463841291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190593 (Int.gcd (A028422 (n + 1)) (A102125 n))

end

end A362681.P7835727563463841291

/-! ## A362681.P10261990923977269930

`A023506(A286335(2*(n+2))+A152049(n+1))`
-/

namespace A362681.P10261990923977269930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (A286335 (2 * (n + 2)) + A152049 (n + 1)).toNat

end

end A362681.P10261990923977269930

/-! ## A362681.P13927953506577668213

`A400261(A128269(n+1))`
-/

namespace A362681.P13927953506577668213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400261 (A128269 (n + 1)).toNat

end

end A362681.P13927953506577668213

/-!
# A362682: Expansion of e.g.f. exp(-LambertW(-x))/(1+x).

The programs for A362682, there is no canonical definition to state claims against.
-/

/-! ## A362682.P5795584899440110760

`(n+1)^(n-1)-n*a(n-1)` with `a(0)=1`
-/

namespace A362682.P5795584899440110760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n : ℚ) * a (n - 1)

end

end A362682.P5795584899440110760

/-! ## A362682.P16398199342061844397

`(n+1)^(n-1)-a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A362682.P16398199342061844397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A362682.P16398199342061844397

/-! ## A362682.P13529348332712624130

`A000272(n+1)-abs(n*a(floor(n²/(n+1))))` with `a(0)=1`
-/

namespace A362682.P13529348332712624130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000272 (n + 1) - |(n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat|

end

end A362682.P13529348332712624130

/-! ## A362682.P17206185610529272622

`A000272(n+1)-A277511(n)`
-/

namespace A362682.P17206185610529272622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) - A277511 n

end

end A362682.P17206185610529272622

/-! ## A362682.P5564829161048166370

`A277511(n+1)/(n+1)`
-/

namespace A362682.P5564829161048166370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277511 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A362682.P5564829161048166370

/-!
# A362683: Expansion of Sum_{k>0} (1/(1 - k*x^k)^2 - 1).

The programs for A362683, the canonical program `A362683.P14326268890355957891` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362683 has offset 1).

The definition of A362683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362683.P15380359932828173537

`∑{d}[n+1, ((n+1)/#)^#*(#+1)]`
-/

namespace A362683.P15380359932828173537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d * (d + 1 : ℚ)

end

end A362683.P15380359932828173537

namespace A362683

/-- `∑{d}[n+1, ((n+1)/#)^#*(#+1)]` -/
def P15380359932828173537.Spec : Prop :=
  ∀ n, P15380359932828173537.a n = (A362683 (n + 1) : ℚ)

end A362683

/-! ## A362683.P14326268890355957891

`A055225(n+1)+A359103(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362683

/-- `A055225(n+1)+A359103(n+1)` -/
def P14326268890355957891.Spec : Prop :=
  ∀ n, P14326268890355957891.a n = A362683 (n + 1)

theorem P14326268890355957891.correct : P14326268890355957891.Spec := by
  intro n
  simp only [A362683, Nat.add_sub_cancel]

end A362683

/-! ## A362683.P4893538306177768564

`A359103(n+1)+∑{d}[n+1, ((n+1)/#)^#]`
-/

namespace A362683.P4893538306177768564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359103 (n + 1) : ℚ) + ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d

end

end A362683.P4893538306177768564

namespace A362683

/-- `A359103(n+1)+∑{d}[n+1, ((n+1)/#)^#]` -/
def P4893538306177768564.Spec : Prop :=
  ∀ n, P4893538306177768564.a n = (A362683 (n + 1) : ℚ)

end A362683

/-! ## A362683.P2095467067484776761

`A359103(n+1)+A326121(n+1)+1+n`
-/

namespace A362683.P2095467067484776761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359103 (n + 1) + (A326121 (n + 1) + 1 + (n : ℤ))

end

end A362683.P2095467067484776761

namespace A362683

/-- `A359103(n+1)+A326121(n+1)+1+n` -/
def P2095467067484776761.Spec : Prop :=
  ∀ n, P2095467067484776761.a n = A362683 (n + 1)

theorem P2095467067484776761.correct : P2095467067484776761.Spec := by
  intro n
  simp only [A362683, Nat.add_sub_cancel, A362683.P2095467067484776761.a, A362683.P14326268890355957891.a, A055225, A055225.P11906148766251727436.f1, A055225.P11906148766251727436.a, A326121, A326121.P12241620532846043604.a, A359103, A359103.P9432903221071312981.a, A087909, A087909.P16712763867366152426.f1, A087909.P16712763867366152426.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362683

/-! ## A362683.P2101501645241674866

`A359103(n+1)+2*A333823(n+1)-A076717(n+1)`
-/

namespace A362683.P2101501645241674866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359103 (n + 1) + (2 * A333823 (n + 1) - A076717 (n + 1))

end

end A362683.P2101501645241674866

namespace A362683

/-- `A359103(n+1)+2*A333823(n+1)-A076717(n+1)` -/
def P2101501645241674866.Spec : Prop :=
  ∀ n, P2101501645241674866.a n = A362683 (n + 1)

end A362683

/-! ## A362683.P13744589353334984556

`(n+1)*A308694(∑[n+2])+A326121(n+1)+1+n`
-/

namespace A362683.P13744589353334984556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308694 (∑ j ∈ Finset.range (n + 1), f1 j) + (A326121 (n + 1) + 1 + (n : ℤ))

end

end A362683.P13744589353334984556

namespace A362683

/-- `(n+1)*A308694(∑[n+2])+A326121(n+1)+1+n` -/
def P13744589353334984556.Spec : Prop :=
  ∀ n, P13744589353334984556.a n = A362683 (n + 1)

end A362683

/-!
# A362685: Triangle of numbers read by rows, T(n, k) = (n*(n-1))*Stirling2(k, 2), for n >= 1 and 1 <= k <= n.

The programs for A362685, the canonical program `A362685.P6275879267292374181` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362685 has offset 1).

The definition of A362685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362685.P6275879267292374181

`(A059268(n)-1)*A056942(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A362685

/-- `(A059268(n)-1)*A056942(n)` -/
def P6275879267292374181.Spec : Prop :=
  ∀ n, P6275879267292374181.a n = A362685 (n + 1)

theorem P6275879267292374181.correct : P6275879267292374181.Spec := by
  intro n
  simp only [A362685, Nat.add_sub_cancel]

end A362685

/-! ## A362685.P9678702746881553481

`A000225(A002262(n))*A056942(n)`
-/

namespace A362685.P9678702746881553481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002262 n).toNat * A056942 n

end

end A362685.P9678702746881553481

namespace A362685

/-- `A000225(A002262(n))*A056942(n)` -/
def P9678702746881553481.Spec : Prop :=
  ∀ n, P9678702746881553481.a n = A362685 (n + 1)

end A362685

/-! ## A362685.P2364391760059544242

`A000225(A330709(2*n+1))*A056942(n)`
-/

namespace A362685.P2364391760059544242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A330709 (2 * n + 1)).toNat * A056942 n

end

end A362685.P2364391760059544242

namespace A362685

/-- `A000225(A330709(2*n+1))*A056942(n)` -/
def P2364391760059544242.Spec : Prop :=
  ∀ n, P2364391760059544242.a n = A362685 (n + 1)

end A362685

/-! ## A362685.P13958625843455283333

`(n-(A056944(n)-n))*A000225(A330709(2*n+1))`
-/

namespace A362685.P13958625843455283333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (A056944 n - (n : ℤ))) * A000225 (A330709 (2 * n + 1)).toNat

end

end A362685.P13958625843455283333

namespace A362685

/-- `(n-(A056944(n)-n))*A000225(A330709(2*n+1))` -/
def P13958625843455283333.Spec : Prop :=
  ∀ n, P13958625843455283333.a n = A362685 (n + 1)

end A362685

/-! ## A362685.P2699716873073088721

`A000225(A330709(2*n+1))*A232091(A063656(n))`
-/

namespace A362685.P2699716873073088721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A330709 (2 * n + 1)).toNat * A232091 (A063656 n).toNat

end

end A362685.P2699716873073088721

namespace A362685

/-- `A000225(A330709(2*n+1))*A232091(A063656(n))` -/
def P2699716873073088721.Spec : Prop :=
  ∀ n, P2699716873073088721.a n = A362685 (n + 1)

end A362685

/-! ## A362685.P3753922751161862063

`A023443(A059268(n))*A056942(n)`
-/

namespace A362685.P3753922751161862063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A059268 n).toNat * A056942 n

end

end A362685.P3753922751161862063

namespace A362685

/-- `A023443(A059268(n))*A056942(n)` -/
def P3753922751161862063.Spec : Prop :=
  ∀ n, P3753922751161862063.a n = A362685 (n + 1)

end A362685

/-!
# A362686: Binomial(n+p, n) mod n where p=6.

The programs for A362686, the canonical program `A362686.P14862044381807885633` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362686 has offset 1).

The definition of A362686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362686.P14862044381807885633

`C(n+7, 6)%(n+1)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362686

/-- `C(n+7, 6)%(n+1)` -/
def P14862044381807885633.Spec : Prop :=
  ∀ n, (P14862044381807885633.a n : ℤ) = A362686 (n + 1)

theorem P14862044381807885633.correct : P14862044381807885633.Spec := by
  intro n
  simp only [A362686, Nat.add_sub_cancel]

end A362686

/-! ## A362686.P16607975794491314641

`A008500(n+1)%(n+1)`
-/

namespace A362686.P16607975794491314641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008500 (n + 1)) (n + 1 : ℤ)

end

end A362686.P16607975794491314641

namespace A362686

/-- `A008500(n+1)%(n+1)` -/
def P16607975794491314641.Spec : Prop :=
  ∀ n, P16607975794491314641.a n = A362686 (n + 1)

end A362686

/-! ## A362686.P12199268682060018747

`A027818(n+1)%(n+1)`
-/

namespace A362686.P12199268682060018747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027818 (n + 1)) (n + 1 : ℤ)

end

end A362686.P12199268682060018747

namespace A362686

/-- `A027818(n+1)%(n+1)` -/
def P12199268682060018747.Spec : Prop :=
  ∀ n, P12199268682060018747.a n = A362686 (n + 1)

end A362686

/-! ## A362686.P17910382181931106077

`A050403(n+1)%(n+1)`
-/

namespace A362686.P17910382181931106077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050403 (n + 1)) (n + 1 : ℤ)

end

end A362686.P17910382181931106077

namespace A362686

/-- `A050403(n+1)%(n+1)` -/
def P17910382181931106077.Spec : Prop :=
  ∀ n, P17910382181931106077.a n = A362686 (n + 1)

end A362686

/-! ## A362686.P13305054645213713342

`A061605(n+1)%(n+1)`
-/

namespace A362686.P13305054645213713342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061605 (n + 1)) (n + 1 : ℤ)

end

end A362686.P13305054645213713342

namespace A362686

/-- `A061605(n+1)%(n+1)` -/
def P13305054645213713342.Spec : Prop :=
  ∀ n, P13305054645213713342.a n = A362686 (n + 1)

end A362686

/-! ## A362686.P188151808279327127

`A108681(n+1)%(n+1)`
-/

namespace A362686.P188151808279327127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108681 (n + 1)) (n + 1 : ℤ)

end

end A362686.P188151808279327127

namespace A362686

/-- `A108681(n+1)%(n+1)` -/
def P188151808279327127.Spec : Prop :=
  ∀ n, P188151808279327127.a n = A362686 (n + 1)

end A362686

/-! ## A362686.P619636352070344935

`A256861(n+2)%(n+1)`
-/

namespace A362686.P619636352070344935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256861 (n + 2)) (n + 1 : ℤ)

end

end A362686.P619636352070344935

namespace A362686

/-- `A256861(n+2)%(n+1)` -/
def P619636352070344935.Spec : Prop :=
  ∀ n, P619636352070344935.a n = A362686 (n + 1)

end A362686

/-! ## A362686.P12363318498753207052

`Δ[A000580(n+7)]%(n+1)`
-/

namespace A362686.P12363318498753207052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A362686.P12363318498753207052

namespace A362686

/-- `Δ[A000580(n+7)]%(n+1)` -/
def P12363318498753207052.Spec : Prop :=
  ∀ n, P12363318498753207052.a n = A362686 (n + 1)

end A362686

/-! ## A362686.P4803641542348369981

`A007318(A046691(n+6)-3)%(n+1)`
-/

namespace A362686.P4803641542348369981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A046691 (n + 6) - 3).toNat) (n + 1 : ℤ)

end

end A362686.P4803641542348369981

namespace A362686

/-- `A007318(A046691(n+6)-3)%(n+1)` -/
def P4803641542348369981.Spec : Prop :=
  ∀ n, P4803641542348369981.a n = A362686 (n + 1)

end A362686

/-!
# A362687: Binomial(n+p, n) mod n where p=7.

The programs for A362687, the canonical program `A362687.P16682149152740573241` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362687 has offset 1).

The definition of A362687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362687.P16682149152740573241

`C(n+8, 7)%(n+1)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362687

/-- `C(n+8, 7)%(n+1)` -/
def P16682149152740573241.Spec : Prop :=
  ∀ n, (P16682149152740573241.a n : ℤ) = A362687 (n + 1)

theorem P16682149152740573241.correct : P16682149152740573241.Spec := by
  intro n
  simp only [A362687, Nat.add_sub_cancel]

end A362687

/-! ## A362687.P8684309828076339527

`A056001(n+1)%(n+1)`
-/

namespace A362687.P8684309828076339527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056001 (n + 1)) (n + 1 : ℤ)

end

end A362687.P8684309828076339527

namespace A362687

/-- `A056001(n+1)%(n+1)` -/
def P8684309828076339527.Spec : Prop :=
  ∀ n, P8684309828076339527.a n = A362687 (n + 1)

end A362687

/-! ## A362687.P5533255588626754256

`Δ[A165618(n)]%(n+1)`
-/

namespace A362687.P5533255588626754256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A362687.P5533255588626754256

namespace A362687

/-- `Δ[A165618(n)]%(n+1)` -/
def P5533255588626754256.Spec : Prop :=
  ∀ n, P5533255588626754256.a n = A362687 (n + 1)

end A362687

/-! ## A362687.P2384277337253812747

`A052226(n+1)%(n+1)`
-/

namespace A362687.P2384277337253812747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052226 (n + 1)) (n + 1 : ℤ)

end

end A362687.P2384277337253812747

namespace A362687

/-- `A052226(n+1)%(n+1)` -/
def P2384277337253812747.Spec : Prop :=
  ∀ n, P2384277337253812747.a n = A362687 (n + 1)

end A362687

/-! ## A362687.P10806406927682054394

`Δ[A000581(n+8)]%(n+1)`
-/

namespace A362687.P10806406927682054394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A362687.P10806406927682054394

namespace A362687

/-- `Δ[A000581(n+8)]%(n+1)` -/
def P10806406927682054394.Spec : Prop :=
  ∀ n, P10806406927682054394.a n = A362687 (n + 1)

end A362687

/-! ## A362687.P17970774477977372790

`A000580(A019425(n*record[lcm(2, n)])+n+7)%(n+1)`
-/

namespace A362687.P17970774477977372790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000580 (A019425 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + (n : ℤ) + 7).toNat) (n + 1 : ℤ)

end

end A362687.P17970774477977372790

namespace A362687

/-- `A000580(A019425(n*record[lcm(2, n)])+n+7)%(n+1)` -/
def P17970774477977372790.Spec : Prop :=
  ∀ n, P17970774477977372790.a n = A362687 (n + 1)

end A362687

/-!
# A362688: Binomial(n+p, n) mod n where p=8.

The programs for A362688, the canonical program `A362688.P11920325744235798791` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362688 has offset 1).

The definition of A362688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362688.P11920325744235798791

`C(n+9, 8)%(n+1)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362688

/-- `C(n+9, 8)%(n+1)` -/
def P11920325744235798791.Spec : Prop :=
  ∀ n, (P11920325744235798791.a n : ℤ) = A362688 (n + 1)

theorem P11920325744235798791.correct : P11920325744235798791.Spec := by
  intro n
  simp only [A362688, Nat.add_sub_cancel]

end A362688

/-! ## A362688.P1017620791119829101

`A056003(n+1)%(n+1)`
-/

namespace A362688.P1017620791119829101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056003 (n + 1)) (n + 1 : ℤ)

end

end A362688.P1017620791119829101

namespace A362688

/-- `A056003(n+1)%(n+1)` -/
def P1017620791119829101.Spec : Prop :=
  ∀ n, P1017620791119829101.a n = A362688 (n + 1)

end A362688

/-! ## A362688.P1712677854072467166

`(A063417(n)+1)%(n+1)`
-/

namespace A362688.P1712677854072467166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063417 n + 1) (n + 1 : ℤ)

end

end A362688.P1712677854072467166

namespace A362688

/-- `(A063417(n)+1)%(n+1)` -/
def P1712677854072467166.Spec : Prop :=
  ∀ n, P1712677854072467166.a n = A362688 (n + 1)

end A362688

/-! ## A362688.P5952320718701691610

`(A166813(n+1)+2)%(n+1)`
-/

namespace A362688.P5952320718701691610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166813 (n + 1) + 2) (n + 1 : ℤ)

end

end A362688.P5952320718701691610

namespace A362688

/-- `(A166813(n+1)+2)%(n+1)` -/
def P5952320718701691610.Spec : Prop :=
  ∀ n, P5952320718701691610.a n = A362688 (n + 1)

end A362688

/-! ## A362688.P401857710214957563

`A056117(n+1)%(n+1)`
-/

namespace A362688.P401857710214957563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056117 (n + 1)) (n + 1 : ℤ)

end

end A362688.P401857710214957563

namespace A362688

/-- `A056117(n+1)%(n+1)` -/
def P401857710214957563.Spec : Prop :=
  ∀ n, P401857710214957563.a n = A362688 (n + 1)

end A362688

/-! ## A362688.P14918498383643680502

`Δ[A000582(n+9)]%(n+1)`
-/

namespace A362688.P14918498383643680502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A362688.P14918498383643680502

namespace A362688

/-- `Δ[A000582(n+9)]%(n+1)` -/
def P14918498383643680502.Spec : Prop :=
  ∀ n, P14918498383643680502.a n = A362688 (n + 1)

end A362688

/-! ## A362688.P4748283299363360908

`(A000581(n+9)-(n+2)²+1)%(n+1)`
-/

namespace A362688.P4748283299363360908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000581 (n + 9) - ((n + 2) ^ 2 : ℤ) + 1) (n + 1 : ℤ)

end

end A362688.P4748283299363360908

namespace A362688

/-- `(A000581(n+9)-(n+2)²+1)%(n+1)` -/
def P4748283299363360908.Spec : Prop :=
  ∀ n, P4748283299363360908.a n = A362688 (n + 1)

end A362688

/-! ## A362688.P11068295154145725601

`(∑[A000580(n+8)-(2*n+3)]+1)%(n+1)`
-/

namespace A362688.P11068295154145725601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 1 : ℤ)

end

end A362688.P11068295154145725601

namespace A362688

/-- `(∑[A000580(n+8)-(2*n+3)]+1)%(n+1)` -/
def P11068295154145725601.Spec : Prop :=
  ∀ n, P11068295154145725601.a n = A362688 (n + 1)

end A362688

/-! ## A362688.P9495225169255743202

`A081371(Δ[A111144(n)]+2)`
-/

namespace A362688.P9495225169255743202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081371 (f1 (n + 1) - f1 n + 2).toNat

end

end A362688.P9495225169255743202

namespace A362688

/-- `A081371(Δ[A111144(n)]+2)` -/
def P9495225169255743202.Spec : Prop :=
  ∀ n, P9495225169255743202.a n = A362688 (n + 1)

end A362688

/-!
# A362689: Binomial(n+p, n) mod n where p=9.

The programs for A362689, the canonical program `A362689.P17073946142327081057` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362689 has offset 1).

The definition of A362689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362689.P17073946142327081057

`C(n+10, 9)%(n+1)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362689

/-- `C(n+10, 9)%(n+1)` -/
def P17073946142327081057.Spec : Prop :=
  ∀ n, (P17073946142327081057.a n : ℤ) = A362689 (n + 1)

theorem P17073946142327081057.correct : P17073946142327081057.Spec := by
  intro n
  simp only [A362689, Nat.add_sub_cancel]

end A362689

/-! ## A362689.P13124379879311879729

`(∑[A166813(n+1)]+1)%(n+1)`
-/

namespace A362689.P13124379879311879729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 1 : ℤ)

end

end A362689.P13124379879311879729

namespace A362689

/-- `(∑[A166813(n+1)]+1)%(n+1)` -/
def P13124379879311879729.Spec : Prop :=
  ∀ n, P13124379879311879729.a n = A362689 (n + 1)

end A362689

/-! ## A362689.P7692358549276324046

`Δ[A001287(n)]%(n+1)`
-/

namespace A362689.P7692358549276324046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A362689.P7692358549276324046

namespace A362689

/-- `Δ[A001287(n)]%(n+1)` -/
def P7692358549276324046.Spec : Prop :=
  ∀ n, P7692358549276324046.a n = A362689 (n + 1)

end A362689

/-! ## A362689.P2365826018677776439

`A056114(n+1)%(n+1)`
-/

namespace A362689.P2365826018677776439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056114 (n + 1)) (n + 1 : ℤ)

end

end A362689.P2365826018677776439

namespace A362689

/-- `A056114(n+1)%(n+1)` -/
def P2365826018677776439.Spec : Prop :=
  ∀ n, P2365826018677776439.a n = A362689 (n + 1)

end A362689

/-! ## A362689.P12859037219840581564

`A093646(n+1)%(n+1)`
-/

namespace A362689.P12859037219840581564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093646 (n + 1)) (n + 1 : ℤ)

end

end A362689.P12859037219840581564

namespace A362689

/-- `A093646(n+1)%(n+1)` -/
def P12859037219840581564.Spec : Prop :=
  ∀ n, P12859037219840581564.a n = A362689 (n + 1)

end A362689

/-! ## A362689.P12931758369652821321

`(A035927(n+1)+1)%(n+1)`
-/

namespace A362689.P12931758369652821321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035927 (n + 1) + 1) (n + 1 : ℤ)

end

end A362689.P12931758369652821321

namespace A362689

/-- `(A035927(n+1)+1)%(n+1)` -/
def P12931758369652821321.Spec : Prop :=
  ∀ n, P12931758369652821321.a n = A362689 (n + 1)

end A362689

/-!
# A362690: E.g.f. satisfies A(x) = exp(x^2 + x * A(x)).

The programs for A362690, the canonical program `A362690.P2965373925541708745` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362690 has offset 0).

The definition of A362690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362690.P2965373925541708745

`n!*∑{#}[floor(n/2), (n-2*#+1)^(n-#-1)/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362690

/-- `n!*∑{#}[floor(n/2), (n-2*#+1)^(n-#-1)/(#!*(n-2*#)!)]` -/
def P2965373925541708745.Spec : Prop :=
  ∀ n, P2965373925541708745.a n = (A362690 n : ℚ)

end A362690

/-! ## A362690.P10109101319248527395

`A360432(n+1)/(n+1)`
-/

namespace A362690.P10109101319248527395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360432 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A362690.P10109101319248527395

namespace A362690

/-- `A360432(n+1)/(n+1)` -/
def P10109101319248527395.Spec : Prop :=
  ∀ n, P10109101319248527395.a n = (A362690 n : ℚ)

end A362690

/-! ## A362690.P3768945229686452768

`A138293(n-char[1])`
-/

namespace A362690.P3768945229686452768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138293 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A362690.P3768945229686452768

namespace A362690

/-- `A138293(n-char[1])` -/
def P3768945229686452768.Spec : Prop :=
  ∀ n, P3768945229686452768.a n = A362690 n

end A362690

/-! ## A362690.P10281508903296082434

`A138293(n)-A340728(A008578(n+2))`
-/

namespace A362690.P10281508903296082434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138293 n - A340728 (A008578 (n + 2)).toNat

end

end A362690.P10281508903296082434

namespace A362690

/-- `A138293(n)-A340728(A008578(n+2))` -/
def P10281508903296082434.Spec : Prop :=
  ∀ n, P10281508903296082434.a n = A362690 n

end A362690

/-! ## A362690.P16709734399415660894

`A138293(n)-A240332(A240307(n+1))`
-/

namespace A362690.P16709734399415660894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138293 n - A240332 (A240307 (n + 1)).toNat

end

end A362690.P16709734399415660894

namespace A362690

/-- `A138293(n)-A240332(A240307(n+1))` -/
def P16709734399415660894.Spec : Prop :=
  ∀ n, P16709734399415660894.a n = A362690 n

end A362690

/-!
# A362691: E.g.f. satisfies A(x) = exp(x^3 + x * A(x)).

The programs for A362691, there is no canonical definition to state claims against.
-/

/-! ## A362691.P4554244194088809877

`A360433(n+1)/(n+1)`
-/

namespace A362691.P4554244194088809877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360433 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A362691.P4554244194088809877

/-! ## A362691.P13451604109895489964

`A284265(A116956(n))+A116956(n)`
-/

namespace A362691.P13451604109895489964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284265 (A116956 n).toNat + A116956 n

end

end A362691.P13451604109895489964

/-!
# A362692: Length of the "integer part" of the phi-expansion of n.

The programs for A362692, the canonical program `A362692.P10750454726631979169` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362692 has offset 0).

The definition of A362692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362692.P10750454726631979169

`∑[char[A062724(n)]]+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362692

/-- `∑[char[A062724(n)]]+1` -/
def P10750454726631979169.Spec : Prop :=
  ∀ n, (P10750454726631979169.a n : ℤ) = A362692 n

theorem P10750454726631979169.correct : P10750454726631979169.Spec := by
  intro n
  simp only [A362692]

end A362692

/-! ## A362692.P8313804214557741630

`∑[char[A014217(n)+1]]+1`
-/

namespace A362692.P8313804214557741630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A362692.P8313804214557741630

namespace A362692

/-- `∑[char[A014217(n)+1]]+1` -/
def P8313804214557741630.Spec : Prop :=
  ∀ n, (P8313804214557741630.a n : ℤ) = A362692 n

end A362692

/-! ## A362692.P17900233194429841275

`A362918(n+1-A330037(n))`
-/

namespace A362692.P17900233194429841275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362918 ((n + 1 : ℤ) - A330037 n).toNat

end

end A362692.P17900233194429841275

namespace A362692

/-- `A362918(n+1-A330037(n))` -/
def P17900233194429841275.Spec : Prop :=
  ∀ n, P17900233194429841275.a n = A362692 n

end A362692

/-! ## A362692.P11748243992976076726

`∑{digits}[A105424(n), #!]`
-/

namespace A362692.P11748243992976076726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A362692.P11748243992976076726

namespace A362692

/-- `∑{digits}[A105424(n), #!]` -/
def P11748243992976076726.Spec : Prop :=
  ∀ n, (P11748243992976076726.a n : ℤ) = A362692 n

end A362692

/-! ## A362692.P5008248503742102203

`∑{digits}[A105424(n), A000041(#)]`
-/

namespace A362692.P5008248503742102203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 x).sum

end

end A362692.P5008248503742102203

namespace A362692

/-- `∑{digits}[A105424(n), A000041(#)]` -/
def P5008248503742102203.Spec : Prop :=
  ∀ n, P5008248503742102203.a n = A362692 n

end A362692

/-! ## A362692.P18047072286302150757

`∑{digits}[A105424(n), A001586(#)]`
-/

namespace A362692.P18047072286302150757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001586 x).sum

end

end A362692.P18047072286302150757

namespace A362692

/-- `∑{digits}[A105424(n), A001586(#)]` -/
def P18047072286302150757.Spec : Prop :=
  ∀ n, P18047072286302150757.a n = A362692 n

end A362692

/-! ## A362692.P2336643605448661302

`∑{digits}[A105424(n), A003418(#)]`
-/

namespace A362692.P2336643605448661302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003418 x).sum

end

end A362692.P2336643605448661302

namespace A362692

/-- `∑{digits}[A105424(n), A003418(#)]` -/
def P2336643605448661302.Spec : Prop :=
  ∀ n, P2336643605448661302.a n = A362692 n

end A362692

/-! ## A362692.P3693377202895599966

`∑{digits}[A105424(n), A008621(#)]`
-/

namespace A362692.P3693377202895599966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008621 x).sum

end

end A362692.P3693377202895599966

namespace A362692

/-- `∑{digits}[A105424(n), A008621(#)]` -/
def P3693377202895599966.Spec : Prop :=
  ∀ n, P3693377202895599966.a n = A362692 n

end A362692

/-! ## A362692.P15882306893897394087

`∑{digits}[A105424(n), A033638(#)]`
-/

namespace A362692.P15882306893897394087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033638 x).sum

end

end A362692.P15882306893897394087

namespace A362692

/-- `∑{digits}[A105424(n), A033638(#)]` -/
def P15882306893897394087.Spec : Prop :=
  ∀ n, P15882306893897394087.a n = A362692 n

end A362692

/-! ## A362692.P14434293159406957012

`∑{digits}[A105424(n), A035512(#)]`
-/

namespace A362692.P14434293159406957012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A035512 x).sum

end

end A362692.P14434293159406957012

namespace A362692

/-- `∑{digits}[A105424(n), A035512(#)]` -/
def P14434293159406957012.Spec : Prop :=
  ∀ n, P14434293159406957012.a n = A362692 n

end A362692

/-! ## A362692.P15938701523879333229

`A070939(A105425(n))`
-/

namespace A362692.P15938701523879333229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A105425 n).toNat

end

end A362692.P15938701523879333229

namespace A362692

/-- `A070939(A105425(n))` -/
def P15938701523879333229.Spec : Prop :=
  ∀ n, P15938701523879333229.a n = A362692 n

end A362692

/-!
# A362693: E.g.f. satisfies A(x) = exp(x + x / A(x)).

The programs for A362693, there is no canonical definition to state claims against.
-/

/-! ## A362693.P2988689863353894724

`2^n*A349719(n)`
-/

namespace A362693.P2988689863353894724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A349719 n

end

end A362693.P2988689863353894724

/-! ## A362693.P1470657393385120675

`A349816(A189426(n))*A366363(n)`
-/

namespace A362693.P1470657393385120675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349816 (A189426 n).toNat * A366363 n

end

end A362693.P1470657393385120675

/-!
# A362694: E.g.f. satisfies A(x) = exp(x + x * A(x)^2).

The programs for A362694, the canonical program `A362694.P3528724716901404152` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362694 has offset 0).

The definition of A362694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362694.P15516102751903437013

`∑{#}[n, (2*#+1)^(n-1)*C(n, #)]`
-/

namespace A362694.P15516102751903437013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 * k + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n k : ℚ)

end

end A362694.P15516102751903437013

namespace A362694

/-- `∑{#}[n, (2*#+1)^(n-1)*C(n, #)]` -/
def P15516102751903437013.Spec : Prop :=
  ∀ n, P15516102751903437013.a n = (A362694 n : ℚ)

end A362694

/-! ## A362694.P3528724716901404152

`2^n*A202617(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362694

/-- `2^n*A202617(n)` -/
def P3528724716901404152.Spec : Prop :=
  ∀ n, P3528724716901404152.a n = A362694 n

theorem P3528724716901404152.correct : P3528724716901404152.Spec := by
  intro n
  simp only [A362694]

end A362694

/-! ## A362694.P9692060487138931722

`(ceil(abs(sin(n)))+1)*A218303(n)`
-/

namespace A362694.P9692060487138931722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + 1) * A218303 n

end

end A362694.P9692060487138931722

namespace A362694

/-- `(ceil(abs(sin(n)))+1)*A218303(n)` -/
def P9692060487138931722.Spec : Prop :=
  ∀ n, P9692060487138931722.a n = A362694 n

end A362694

/-! ## A362694.P18113626758684071836

`lcm(A000079(n), A218303(n))`
-/

namespace A362694.P18113626758684071836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A218303 n)

end

end A362694.P18113626758684071836

namespace A362694

/-- `lcm(A000079(n), A218303(n))` -/
def P18113626758684071836.Spec : Prop :=
  ∀ n, (P18113626758684071836.a n : ℤ) = A362694 n

end A362694

/-! ## A362694.P1729788698247157488

`(A178334(n)+1)*A218303(n)`
-/

namespace A362694.P1729788698247157488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A218303 n

end

end A362694.P1729788698247157488

namespace A362694

/-- `(A178334(n)+1)*A218303(n)` -/
def P1729788698247157488.Spec : Prop :=
  ∀ n, P1729788698247157488.a n = A362694 n

end A362694

/-!
# A362697: Expansion of e.g.f. Product_{k>0} (1 - x^(3*k-1))^(-1/(3*k-1)).

The programs for A362697, there is no canonical definition to state claims against.
-/

/-! ## A362697.P1037072705414769791

`A261381(n)^A108992(A046094(n+1))`
-/

namespace A362697.P1037072705414769791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261381 n : ℚ) ^ (A108992 (A046094 (n + 1)).toNat : ℤ)

end

end A362697.P1037072705414769791

/-! ## A362697.P17464123790377251342

`A261381(n)*A375127(A261381(n))`
-/

namespace A362697.P17464123790377251342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261381 n * A375127 (A261381 n).toNat

end

end A362697.P17464123790377251342

/-! ## A362697.P3914254952994875393

`A262689(A261381(n)^A075526(n))`
-/

namespace A362697.P3914254952994875393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((A261381 n : ℚ) ^ (A075526 n : ℤ))).toNat

end

end A362697.P3914254952994875393

/-!
# A362699: Expansion of e.g.f. 1/(1 + LambertW(-x * exp(x^3))).

The programs for A362699, the canonical program `A362699.P16163272018344211314` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362699 has offset 0).

The definition of A362699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362699.P16163272018344211314

`n!*∑{#}[floor(n/3), (n-3*#)^(n-2*#)/(#!*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362699

/-- `n!*∑{#}[floor(n/3), (n-3*#)^(n-2*#)/(#!*(n-3*#)!)]` -/
def P16163272018344211314.Spec : Prop :=
  ∀ n, P16163272018344211314.a n = (A362699 n : ℚ)

end A362699

/-! ## A362699.P4832922485913281381

`A028310(A052715(n)+n^n)`
-/

namespace A362699.P4832922485913281381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052715 n + (n ^ n : ℤ)).toNat

end

end A362699.P4832922485913281381

namespace A362699

/-- `A028310(A052715(n)+n^n)` -/
def P4832922485913281381.Spec : Prop :=
  ∀ n, P4832922485913281381.a n = A362699 n

end A362699

