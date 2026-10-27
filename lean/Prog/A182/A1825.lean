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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B005.C000
import Seq.B005.C001
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
# A182504: Composite numbers k that divide both Fibonacci(k+1) and Fibonacci(2k+1)-1.

The programs for A182504, there is no canonical definition to state claims against.
-/

/-! ## A182504.P6385945759220561857

`record[lcm(2, A069107(n+1))-A069107(n+1)]`
-/

namespace A182504.P6385945759220561857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A069107 (n + 1)) : ℤ) - A069107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182504.P6385945759220561857

/-! ## A182504.P15383289941297458205

`∩[A069107(n+1), A337231(n+1)]`
-/

namespace A182504.P15383289941297458205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182504.P15383289941297458205

/-! ## A182504.P4955539080043555548

`∩[A069107(n+1), A335672(n+1)]`
-/

namespace A182504.P4955539080043555548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182504.P4955539080043555548

/-! ## A182504.P9640737233298457031

`record[A069107(n+1)%A253820(n+1)]`
-/

namespace A182504.P9640737233298457031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069107 (n + 1)) (A253820 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182504.P9640737233298457031

/-! ## A182504.P16071741676832785403

`A069107(A003983(A133263(n))+n)`
-/

namespace A182504.P16071741676832785403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (A003983 (A133263 n).toNat + (n : ℤ)).toNat

end

end A182504.P16071741676832785403

/-! ## A182504.P2152670407229648423

`∩[A069107(n+1), A086504(n+1)]`
-/

namespace A182504.P2152670407229648423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182504.P2152670407229648423

/-! ## A182504.P16796106047622164322

`A069107(A094683((n+1)²+3*n+1))`
-/

namespace A182504.P16796106047622164322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (A094683 ((n + 1) ^ 2 + (3 * n + 1))).toNat

end

end A182504.P16796106047622164322

/-!
# A182505: a(0)=0, a(1)=1, a(n) = ( (a(n-1)+a(n-2)) AND n) + n.

The programs for A182505, the canonical program `A182505.P17006633289560910604` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182505 has offset 0).

The definition of A182505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182505.P17006633289560910604

`and(a(n-1)+a(n-2), n)+n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182505

/-- `and(a(n-1)+a(n-2), n)+n` -/
def P17006633289560910604.Spec : Prop :=
  ∀ n, (P17006633289560910604.a n : ℤ) = A182505 n

theorem P17006633289560910604.correct : P17006633289560910604.Spec := by
  intro n
  simp only [A182505]

end A182505

/-!
# A182506: a(0)=0, a(1)=1, a(n) = ( (a(n-1)+a(n-2)) XOR n) + n.

The programs for A182506, the canonical program `A182506.P12106224314165569290` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182506 has offset 0).

The definition of A182506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182506.P12106224314165569290

`xor(a(n-1)+a(n-2), n)+n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182506

/-- `xor(a(n-1)+a(n-2), n)+n` -/
def P12106224314165569290.Spec : Prop :=
  ∀ n, (P12106224314165569290.a n : ℤ) = A182506 n

theorem P12106224314165569290.correct : P12106224314165569290.Spec := by
  intro n
  simp only [A182506]

end A182506

/-!
# A182507: G.f.: Sum_{n>=0} n! * 2^(n*(n-1)/2) * x^n / Product_{k=1..n} (1 + k*2^k*x).

The programs for A182507, there is no canonical definition to state claims against.
-/

/-! ## A182507.P14174970033675623220

`A011782(n)*A346538(A007598(n))`
-/

namespace A182507.P14174970033675623220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A346538 (A007598 n).toNat

end

end A182507.P14174970033675623220

/-!
# A182508: a(0)=0, a(1)=1, a(n) = (a(n-2)+a(n-1)+n) AND n.

The programs for A182508, the canonical program `A182508.P6477834093275709085` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182508 has offset 0).

The definition of A182508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182508.P6477834093275709085

`and(n, a(n-1)+a(n-2)+n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182508

/-- `and(n, a(n-1)+a(n-2)+n)` -/
def P6477834093275709085.Spec : Prop :=
  ∀ n, (P6477834093275709085.a n : ℤ) = A182508 n

theorem P6477834093275709085.correct : P6477834093275709085.Spec := by
  intro n
  simp only [A182508]

end A182508

/-! ## A182508.P14729339868767983101

`and(n, A010001(C(3*n, 3)))`
-/

namespace A182508.P14729339868767983101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A010001 (Nat.choose (3 * n) 3))

end

end A182508.P14729339868767983101

namespace A182508

/-- `and(n, A010001(C(3*n, 3)))` -/
def P14729339868767983101.Spec : Prop :=
  ∀ n, P14729339868767983101.a n = A182508 n

end A182508

/-! ## A182508.P17199282558262628226

`and(n, A010009(n*(∑[9*n-8]+9-n)))`
-/

namespace A182508.P17199282558262628226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A010009 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 9 - (n : ℤ))).toNat)

end

end A182508.P17199282558262628226

namespace A182508

/-- `and(n, A010009(n*(∑[9*n-8]+9-n)))` -/
def P17199282558262628226.Spec : Prop :=
  ∀ n, P17199282558262628226.a n = A182508 n

end A182508

/-! ## A182508.P11884665700496415556

`and(n, A005918(A006566(n)))`
-/

namespace A182508.P11884665700496415556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A005918 (A006566 n).toNat)

end

end A182508.P11884665700496415556

namespace A182508

/-- `and(n, A005918(A006566(n)))` -/
def P11884665700496415556.Spec : Prop :=
  ∀ n, P11884665700496415556.a n = A182508 n

end A182508

/-! ## A182508.P10962541241411314154

`and(n, A227146(A000051(n)))`
-/

namespace A182508.P10962541241411314154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A227146 (A000051 n).toNat)

end

end A182508.P10962541241411314154

namespace A182508

/-- `and(n, A227146(A000051(n)))` -/
def P10962541241411314154.Spec : Prop :=
  ∀ n, P10962541241411314154.a n = A182508 n

end A182508

/-!
# A182509: a(0)=0, a(1)=1, a(n)=(a(n-1) XOR n) + a(n-2).

The programs for A182509, the canonical program `A182509.P4554264476890223483` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182509 has offset 0).

The definition of A182509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182509.P4554264476890223483

`a(n-2)+xor(n, a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182509

/-- `a(n-2)+xor(n, a(n-1))` -/
def P4554264476890223483.Spec : Prop :=
  ∀ n, (P4554264476890223483.a n : ℤ) = A182509 n

theorem P4554264476890223483.correct : P4554264476890223483.Spec := by
  intro n
  simp only [A182509]

end A182509

/-! ## A182509.P587959464904774472

`a(n-2)-1-xor(-1, xor(n, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A182509.P587959464904774472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 1 - Int.xor (-1) (Int.xor (n : ℤ) (a (n - 1)))

end

end A182509.P587959464904774472

namespace A182509

/-- `a(n-2)-1-xor(-1, xor(n, a(n-1)))` -/
def P587959464904774472.Spec : Prop :=
  ∀ n, P587959464904774472.a n = A182509 n

end A182509

/-! ## A182509.P17338380228960552993

`a(n-2)-(n²%n-xor(n, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A182509.P17338380228960552993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (((n ^ 2 % n : ℕ) : ℤ) - Int.xor (n : ℤ) (a (n - 1)))

end

end A182509.P17338380228960552993

namespace A182509

/-- `a(n-2)-(n²%n-xor(n, a(n-1)))` -/
def P17338380228960552993.Spec : Prop :=
  ∀ n, P17338380228960552993.a n = A182509 n

end A182509

/-! ## A182509.P11702059162759356399

`2*a(n-2)-(a(n-2)-xor(n, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A182509.P11702059162759356399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 2) - (a (n - 2) - Int.xor (n : ℤ) (a (n - 1)))

end

end A182509.P11702059162759356399

namespace A182509

/-- `2*a(n-2)-(a(n-2)-xor(n, a(n-1)))` -/
def P11702059162759356399.Spec : Prop :=
  ∀ n, P11702059162759356399.a n = A182509 n

end A182509

/-! ## A182509.P2854825231721624298

`a(n-2)+or(n, a(n-1))-and(n, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A182509.P2854825231721624298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (Int.lor (n : ℤ) (a (n - 1)) - Int.land (n : ℤ) (a (n - 1)))

end

end A182509.P2854825231721624298

namespace A182509

/-- `a(n-2)+or(n, a(n-1))-and(n, a(n-1))` -/
def P2854825231721624298.Spec : Prop :=
  ∀ n, P2854825231721624298.a n = A182509 n

end A182509

/-!
# A182510: a(0)=0, a(1)=1, a(n)=(a(n-1) XOR n) - a(n-2).

The programs for A182510, the canonical program `A182510.P12781542892725264112` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182510 has offset 0).

The definition of A182510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182510.P12781542892725264112

`xor(n, a(n-1))-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182510

/-- `xor(n, a(n-1))-a(n-2)` -/
def P12781542892725264112.Spec : Prop :=
  ∀ n, P12781542892725264112.a n = A182510 n

theorem P12781542892725264112.correct : P12781542892725264112.Spec := by
  intro n
  simp only [A182510]

end A182510

/-! ## A182510.P8260808338595179788

`or(n, a(n-1))-(a(n-2)+and(n, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A182510.P8260808338595179788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (n : ℤ) (a (n - 1)) - (a (n - 2) + Int.land (n : ℤ) (a (n - 1)))

end

end A182510.P8260808338595179788

namespace A182510

/-- `or(n, a(n-1))-(a(n-2)+and(n, a(n-1)))` -/
def P8260808338595179788.Spec : Prop :=
  ∀ n, P8260808338595179788.a n = A182510 n

end A182510

/-! ## A182510.P558159912110803555

`or(n, a(n-1))-a(n-2)-and(n, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A182510.P558159912110803555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (n : ℤ) (a (n - 1)) - a (n - 2) - Int.land (n : ℤ) (a (n - 1))

end

end A182510.P558159912110803555

namespace A182510

/-- `or(n, a(n-1))-a(n-2)-and(n, a(n-1))` -/
def P558159912110803555.Spec : Prop :=
  ∀ n, P558159912110803555.a n = A182510 n

end A182510

/-!
# A182511: a(0)=1, a(1)=2, a(n) = (a(n-2)*a(n-1) mod n) + 1.

The programs for A182511, the canonical program `A182511.P13005175889148730000` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182511 has offset 0).

The definition of A182511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182511.P13005175889148730000

`(a(n-1)*a(n-2))%n+1` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182511

/-- `(a(n-1)*a(n-2))%n+1` -/
def P13005175889148730000.Spec : Prop :=
  ∀ n, (P13005175889148730000.a n : ℤ) = A182511 n

theorem P13005175889148730000.correct : P13005175889148730000.Spec := by
  intro n
  simp only [A182511]

end A182511

/-! ## A182511.P13881335325946545124

`1--(a(n-1)*a(n-2))%n` with `a(0)=1, a(1)=2`
-/

namespace A182511.P13881335325946545124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - Int.tmod (-(a (n - 1) * a (n - 2))) (n : ℤ)

end

end A182511.P13881335325946545124

namespace A182511

/-- `1--(a(n-1)*a(n-2))%n` -/
def P13881335325946545124.Spec : Prop :=
  ∀ n, P13881335325946545124.a n = A182511 n

end A182511

/-!
# A182512: a(n) = (16^n - 1)/5.

The programs for A182512, the canonical program `A182512.P8748127546379737448` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182512 has offset 0).

The definition of A182512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16^n-1)/5` (program `A182512.P1816945085967139853`, by `A182512.P1816945085967139853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182512.P1816945085967139853

`(16^n-1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182512.P1816945085967139853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ n : ℤ) - 1 : ℚ) / 5

end

end A182512.P1816945085967139853

namespace A182512

/-- `(16^n-1)/5` -/
def P1816945085967139853.Spec : Prop :=
  ∀ n, P1816945085967139853.a n = (A182512 n : ℚ)

theorem P1816945085967139853.correct : P1816945085967139853.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A182512, Nat.add_sub_cancel, A182512.P1816945085967139853.a, A182512.P8748127546379737448.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A182512, Nat.add_sub_cancel, A182512.P1816945085967139853.a, A182512.P8748127546379737448.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A182512

/-! ## A182512.P8748127546379737448

`16*a(n-1)+3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182512

/-- `16*a(n-1)+3` -/
def P8748127546379737448.Spec : Prop :=
  ∀ n, (P8748127546379737448.a n : ℤ) = A182512 n

theorem P8748127546379737448.correct : P8748127546379737448.Spec := by
  intro n
  simp only [A182512]

end A182512

/-! ## A182512.P5596557004211799665

`A015521(2*n)`
-/

namespace A182512.P5596557004211799665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (2 * n)

end

end A182512.P5596557004211799665

namespace A182512

/-- `A015521(2*n)` -/
def P5596557004211799665.Spec : Prop :=
  ∀ n, P5596557004211799665.a n = A182512 n

end A182512

/-! ## A182512.P10777357177588504634

`ogf(3x/(1-17x+16x^2))`
-/

namespace A182512.P10777357177588504634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -17, 16] n

end

end A182512.P10777357177588504634

namespace A182512

/-- `ogf(3x/(1-17x+16x^2))` -/
def P10777357177588504634.Spec : Prop :=
  ∀ n, P10777357177588504634.a n = A182512 n

end A182512

/-! ## A182512.P7591113442165757501

`record[floor((-4)^n/5)]`
-/

namespace A182512.P7591113442165757501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-4) ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182512.P7591113442165757501

namespace A182512

/-- `record[floor((-4)^n/5)]` -/
def P7591113442165757501.Spec : Prop :=
  ∀ n, P7591113442165757501.a n = A182512 n

end A182512

/-! ## A182512.P9891338068704524339

`round(record[(-4)^n/5])`
-/

namespace A182512.P9891338068704524339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-4) ^ n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A182512.P9891338068704524339

namespace A182512

/-- `round(record[(-4)^n/5])` -/
def P9891338068704524339.Spec : Prop :=
  ∀ n, P9891338068704524339.a n = A182512 n

end A182512

/-! ## A182512.P18205513721333005900

`lcm(16, a(n-1))+3` with `a(0)=0`
-/

namespace A182512.P18205513721333005900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 16 (a (n - 1)) + 3

end

end A182512.P18205513721333005900

namespace A182512

/-- `lcm(16, a(n-1))+3` -/
def P18205513721333005900.Spec : Prop :=
  ∀ n, (P18205513721333005900.a n : ℤ) = A182512 n

end A182512

/-! ## A182512.P17971035194143594316

`or(3, 16*a(n-1))` with `a(0)=0`
-/

namespace A182512.P17971035194143594316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 3 (16 * a (n - 1))

end

end A182512.P17971035194143594316

namespace A182512

/-- `or(3, 16*a(n-1))` -/
def P17971035194143594316.Spec : Prop :=
  ∀ n, (P17971035194143594316.a n : ℤ) = A182512 n

end A182512

/-! ## A182512.P12166653432698910673

`xor(3, 16*a(n-1))` with `a(0)=0`
-/

namespace A182512.P12166653432698910673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 3 (16 * a (n - 1))

end

end A182512.P12166653432698910673

namespace A182512

/-- `xor(3, 16*a(n-1))` -/
def P12166653432698910673.Spec : Prop :=
  ∀ n, (P12166653432698910673.a n : ℤ) = A182512 n

end A182512

/-! ## A182512.P8925732128214124798

`∑[16*a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A182512.P8925732128214124798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182512.P8925732128214124798

namespace A182512

/-- `∑[16*a(n-1)]` -/
def P8925732128214124798.Spec : Prop :=
  ∀ n, (P8925732128214124798.a n : ℤ) = A182512 n

end A182512

/-!
# A182513: a(n) is the solution of equation A001359(x) = A182482(n).

The programs for A182513, there is no canonical definition to state claims against.
-/

/-! ## A182513.P759244681976160477

`A071538(A182482(n+1))`
-/

namespace A182513.P759244681976160477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A182482 (n + 1)).toNat

end

end A182513.P759244681976160477

/-! ## A182513.P15877977585432327611

`A071538(A071256(6*(n+1))-1)`
-/

namespace A182513.P15877977585432327611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A071256 (6 * (n + 1)) - 1).toNat

end

end A182513.P15877977585432327611

/-!
# A182514: Primes prime(n) such that (prime(n+1)/prime(n))^n > n.

The programs for A182514, there is no canonical definition to state claims against.
-/

/-! ## A182514.P17774239817626383686

`A111870(record[A074971(n+1)])`
-/

namespace A182514.P17774239817626383686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111870 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182514.P17774239817626383686

/-!
# A182517: Chromatic invariant of the square grid graph G_(n,n).

The programs for A182517, there is no canonical definition to state claims against.
-/

/-! ## A182517.P11402050024047064525

`ceil(A005841(n+5)/A008458(n))`
-/

namespace A182517.P11402050024047064525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005841 (n + 5) : ℚ) / (A008458 n : ℚ)⌉

end

end A182517.P11402050024047064525

/-!
# A182519: a(n) = prime(n)^(n+1) - prime(n+1)^n.

The programs for A182519, the canonical program `A182519.P6963538028577590837` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182519 has offset 1).

The definition of A182519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)^(n+2)-A000040(n+2)^(n+1)` (program `A182519.P6963538028577590837`, by `A182519.P6963538028577590837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182519.P6963538028577590837

`A000040(n+1)^(n+2)-A000040(n+2)^(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A182519

/-- `A000040(n+1)^(n+2)-A000040(n+2)^(n+1)` -/
def P6963538028577590837.Spec : Prop :=
  ∀ n, P6963538028577590837.a n = A182519 (n + 1)

theorem P6963538028577590837.correct : P6963538028577590837.Spec := by
  intro n
  simp only [A182519, Nat.add_sub_cancel]

end A182519

/-! ## A182519.P12033074197516182113

`A197987(n+1)-A093360(n+2)`
-/

namespace A182519.P12033074197516182113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197987 (n + 1) - A093360 (n + 2)

end

end A182519.P12033074197516182113

namespace A182519

/-- `A197987(n+1)-A093360(n+2)` -/
def P12033074197516182113.Spec : Prop :=
  ∀ n, P12033074197516182113.a n = A182519 (n + 1)

theorem P12033074197516182113.correct : P12033074197516182113.Spec := by
  intro n
  simp only [A182519, Nat.add_sub_cancel, A182519.P12033074197516182113.a, A182519.P6963538028577590837.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A093360, A093360.P7739619721702777176.a, A197987, A197987.P9703799290314520004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182519

/-! ## A182519.P7615680346135994304

`A000040(n+1)^(n+2)-Δ[A135485(n+1)]`
-/

namespace A182519.P7615680346135994304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ (n + 2) - (f1 (n + 1) - f1 n)

end

end A182519.P7615680346135994304

namespace A182519

/-- `A000040(n+1)^(n+2)-Δ[A135485(n+1)]` -/
def P7615680346135994304.Spec : Prop :=
  ∀ n, P7615680346135994304.a n = A182519 (n + 1)

end A182519

/-! ## A182519.P15671926202152139990

`record[A006530(n+2)]^(n+2)-Δ[A135485(n+1)]`
-/

namespace A182519.P15671926202152139990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 2) - (f2 (n + 1) - f2 n)

end

end A182519.P15671926202152139990

namespace A182519

/-- `record[A006530(n+2)]^(n+2)-Δ[A135485(n+1)]` -/
def P15671926202152139990.Spec : Prop :=
  ∀ n, P15671926202152139990.a n = A182519 (n + 1)

end A182519

/-! ## A182519.P8633921092932869020

`record[A014963(n+2)]^(n+2)-Δ[A135485(n+1)]`
-/

namespace A182519.P8633921092932869020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 2) - (f2 (n + 1) - f2 n)

end

end A182519.P8633921092932869020

namespace A182519

/-- `record[A014963(n+2)]^(n+2)-Δ[A135485(n+1)]` -/
def P8633921092932869020.Spec : Prop :=
  ∀ n, P8633921092932869020.a n = A182519 (n + 1)

end A182519

/-!
# A182520: G.f.: x = Sum_{n>=1} a(n)*x^n * Sum_{k=0..n} (k+1)*binomial(n,k)*(-x)^k.

The programs for A182520, there is no canonical definition to state claims against.
-/

/-! ## A182520.P5115874651645203007

`∑[A000720(A103885(n))]+1`
-/

namespace A182520.P5115874651645203007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A182520.P5115874651645203007

/-! ## A182520.P14683532886337530005

`A005185(A001564(n)-A241378(n))`
-/

namespace A182520.P14683532886337530005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A001564 n - A241378 n).toNat

end

end A182520.P14683532886337530005

/-!
# A182521: Numbers n such that A182481(n)=1 and there is not a representation n=d_1*d_2 with d_2>1, such that A182481(d_1)=d_2.

The programs for A182521, there is no canonical definition to state claims against.
-/

/-! ## A182521.P12290546787594299421

`record[A182483(n+2)]`
-/

namespace A182521.P12290546787594299421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182483 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182521.P12290546787594299421

/-! ## A182521.P11487006311199288770

`filter[A182483(n+2), A100923(#)]`
-/

namespace A182521.P11487006311199288770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182483 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100923 (f1 j).toNat = 1) n)

end

end A182521.P11487006311199288770

/-! ## A182521.P5415772586882230285

`filter[A219255(n+1), A100923(#)]`
-/

namespace A182521.P5415772586882230285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100923 (f1 j).toNat = 1) n)

end

end A182521.P5415772586882230285

/-! ## A182521.P2579134124521234146

`∩[A002822(n+1), A219255(n+1)]`
-/

namespace A182521.P2579134124521234146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182521.P2579134124521234146

/-!
# A182522: a(0) = 1; thereafter a(2*n + 1) = 3^n, a(2*n + 2) = 2 * 3^n.

The programs for A182522, the canonical program `A182522.P14682687547002529594` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182522 has offset 0).

The definition of A182522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182522.P14682687547002529594

`3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182522

/-- `3*a(n-2)` -/
def P14682687547002529594.Spec : Prop :=
  ∀ n, (P14682687547002529594.a n : ℤ) = A182522 n

theorem P14682687547002529594.correct : P14682687547002529594.Spec := by
  intro n
  simp only [A182522]

end A182522

/-! ## A182522.P2688042533744617845

`2*A056353(n)-A002076(n)`
-/

namespace A182522.P2688042533744617845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056353 n - A002076 n

end

end A182522.P2688042533744617845

namespace A182522

/-- `2*A056353(n)-A002076(n)` -/
def P2688042533744617845.Spec : Prop :=
  ∀ n, P2688042533744617845.a n = A182522 n

end A182522

/-! ## A182522.P354031654220298156

`ogf((1+x-x^2)/(1-3x^2))`
-/

namespace A182522.P354031654220298156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -3] n

end

end A182522.P354031654220298156

namespace A182522

/-- `ogf((1+x-x^2)/(1-3x^2))` -/
def P354031654220298156.Spec : Prop :=
  ∀ n, P354031654220298156.a n = A182522 n

end A182522

/-! ## A182522.P37894537099041590

`∏[3/a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A182522.P37894537099041590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182522.P37894537099041590

namespace A182522

/-- `∏[3/a(n-1)]` -/
def P37894537099041590.Spec : Prop :=
  ∀ n, P37894537099041590.a n = (A182522 n : ℚ)

end A182522

/-! ## A182522.P13600122659617050977

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A182522.P13600122659617050977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A182522.P13600122659617050977

namespace A182522

/-- `a(n-2)/(1-2/3)` -/
def P13600122659617050977.Spec : Prop :=
  ∀ n, P13600122659617050977.a n = (A182522 n : ℚ)

end A182522

/-! ## A182522.P8175742793999546714

`a(or(1, n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A182522.P8175742793999546714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (Int.lor 1 ((n : ℤ) - 2)).toNat + a (n - 1)

end

end A182522.P8175742793999546714

namespace A182522

/-- `a(or(1, n-2))+a(n-1)` -/
def P8175742793999546714.Spec : Prop :=
  ∀ n, (P8175742793999546714.a n : ℤ) = A182522 n

end A182522

/-! ## A182522.P13075556507953489834

`a(n-1)+a(n-(n%2+1))` with `a(0)=1, a(1)=1`
-/

namespace A182522.P13075556507953489834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - (n % 2 + 1))

end

end A182522.P13075556507953489834

namespace A182522

/-- `a(n-1)+a(n-(n%2+1))` -/
def P13075556507953489834.Spec : Prop :=
  ∀ n, (P13075556507953489834.a n : ℤ) = A182522 n

end A182522

/-! ## A182522.P7322079837863126835

`a(n-1)+a(n-gcd(2, n+1))` with `a(0)=1, a(1)=1`
-/

namespace A182522.P7322079837863126835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - Nat.gcd 2 (n + 1))

end

end A182522.P7322079837863126835

namespace A182522

/-- `a(n-1)+a(n-gcd(2, n+1))` -/
def P7322079837863126835.Spec : Prop :=
  ∀ n, (P7322079837863126835.a n : ℤ) = A182522 n

end A182522

/-! ## A182522.P17966073867022527266

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A182522.P17966073867022527266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A182522.P17966073867022527266

namespace A182522

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P17966073867022527266.Spec : Prop :=
  ∀ n, (P17966073867022527266.a n : ℤ) = A182522 n

theorem P17966073867022527266.correct : P17966073867022527266.Spec := by
  intro n
  simp only [A182522, Nat.add_sub_cancel, A182522.P17966073867022527266.a, A182522.P14682687547002529594.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182522

/-! ## A182522.P1112299133626406800

`a(n-1)-((a(n-2)-a(n-1))%a(n-2)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A182522.P1112299133626406800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 2) - a (n - 1)) (a (n - 2)) - a (n - 2))

end

end A182522.P1112299133626406800

namespace A182522

/-- `a(n-1)-((a(n-2)-a(n-1))%a(n-2)-a(n-2))` -/
def P1112299133626406800.Spec : Prop :=
  ∀ n, P1112299133626406800.a n = A182522 n

end A182522

/-! ## A182522.P12901035661501130936

`A038754((n-1)%(n+1))`
-/

namespace A182522.P12901035661501130936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A182522.P12901035661501130936

namespace A182522

/-- `A038754((n-1)%(n+1))` -/
def P12901035661501130936.Spec : Prop :=
  ∀ n, P12901035661501130936.a n = A182522 n

end A182522

/-! ## A182522.P12701746135399156834

`A083658(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A182522.P12701746135399156834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A083658 n - a (n - 1)

end

end A182522.P12701746135399156834

namespace A182522

/-- `A083658(n)-a(n-1)` -/
def P12701746135399156834.Spec : Prop :=
  ∀ n, P12701746135399156834.a n = A182522 n

end A182522

/-! ## A182522.P409224371514955406

`a(n-1)+a(A267458(n))` with `a(0)=1, a(1)=1`
-/

namespace A182522.P409224371514955406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A267458 n).toNat

end

end A182522.P409224371514955406

namespace A182522

/-- `a(n-1)+a(A267458(n))` -/
def P409224371514955406.Spec : Prop :=
  ∀ n, (P409224371514955406.a n : ℤ) = A182522 n

end A182522

/-! ## A182522.P16181013231437293182

`A108411(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A182522.P16181013231437293182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A108411 (n - 2) + a (n - 1)

end

end A182522.P16181013231437293182

namespace A182522

/-- `A108411(n-2)+a(n-1)` -/
def P16181013231437293182.Spec : Prop :=
  ∀ n, P16181013231437293182.a n = A182522 n

end A182522

/-! ## A182522.P203971059531213450

`A000792(A267528(n))`
-/

namespace A182522.P203971059531213450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A267528 n).toNat

end

end A182522.P203971059531213450

namespace A182522

/-- `A000792(A267528(n))` -/
def P203971059531213450.Spec : Prop :=
  ∀ n, P203971059531213450.a n = A182522 n

end A182522

/-! ## A182522.P12992169130906369489

`∑[A140429(A123108(n))]`
-/

namespace A182522.P12992169130906369489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182522.P12992169130906369489

namespace A182522

/-- `∑[A140429(A123108(n))]` -/
def P12992169130906369489.Spec : Prop :=
  ∀ n, P12992169130906369489.a n = A182522 n

end A182522

/-! ## A182522.P18268832436096875295

`A038754(A289207(n+1))`
-/

namespace A182522.P18268832436096875295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A289207 (n + 1)).toNat

end

end A182522.P18268832436096875295

namespace A182522

/-- `A038754(A289207(n+1))` -/
def P18268832436096875295.Spec : Prop :=
  ∀ n, P18268832436096875295.a n = A182522 n

end A182522

/-! ## A182522.P8807676547439220839

`A038754(A028310(n)-1)`
-/

namespace A182522.P8807676547439220839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A028310 n - 1).toNat

end

end A182522.P8807676547439220839

namespace A182522

/-- `A038754(A028310(n)-1)` -/
def P8807676547439220839.Spec : Prop :=
  ∀ n, P8807676547439220839.a n = A182522 n

end A182522

/-! ## A182522.P5518030696292831908

`A304973(n)+A016116(n)`
-/

namespace A182522.P5518030696292831908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 n + A016116 n

end

end A182522.P5518030696292831908

namespace A182522

/-- `A304973(n)+A016116(n)` -/
def P5518030696292831908.Spec : Prop :=
  ∀ n, P5518030696292831908.a n = A182522 n

theorem P5518030696292831908.correct : P5518030696292831908.Spec := by
  intro n
  simp only [A182522, Nat.add_sub_cancel, A182522.P5518030696292831908.a, A182522.P14682687547002529594.a, A016116, A016116.P661627231399665482.a, A304973, A304973.P4987803302753247775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182522

/-! ## A182522.P4619295904922635025

`A074324(n)/A040001(n)`
-/

namespace A182522.P4619295904922635025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074324 n : ℚ) / (A040001 n : ℚ)

end

end A182522.P4619295904922635025

namespace A182522

/-- `A074324(n)/A040001(n)` -/
def P4619295904922635025.Spec : Prop :=
  ∀ n, P4619295904922635025.a n = (A182522 n : ℚ)

end A182522

/-!
# A182525: a(n) = n! * Sum_{k=0..n} binomial(2*n, 2*k) / binomial(n,k).

The programs for A182525, the canonical program `A182525.P6244120076233453913` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182525 has offset 0).

The definition of A182525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182525.P6244120076233453913

`3*n*a(n-1)-n*(2*n-3)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182525

/-- `3*n*a(n-1)-n*(2*n-3)*a(n-2)` -/
def P6244120076233453913.Spec : Prop :=
  ∀ n, P6244120076233453913.a n = A182525 n

theorem P6244120076233453913.correct : P6244120076233453913.Spec := by
  intro n
  simp only [A182525]

end A182525

/-! ## A182525.P13466169526921855465

`n!+n*A087547(n)`
-/

namespace A182525.P13466169526921855465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (n : ℤ) * A087547 n

end

end A182525.P13466169526921855465

namespace A182525

/-- `n!+n*A087547(n)` -/
def P13466169526921855465.Spec : Prop :=
  ∀ n, P13466169526921855465.a n = A182525 n

end A182525

/-! ## A182525.P16515558335490847974

`A000142(n)+n*A087547(n)`
-/

namespace A182525.P16515558335490847974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (n : ℤ) * A087547 n

end

end A182525.P16515558335490847974

namespace A182525

/-- `A000142(n)+n*A087547(n)` -/
def P16515558335490847974.Spec : Prop :=
  ∀ n, P16515558335490847974.a n = A182525 n

end A182525

/-! ## A182525.P9171274309888118277

`A000142(n)+n*A336601(A152947(n+1))`
-/

namespace A182525.P9171274309888118277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (n : ℤ) * A336601 (A152947 (n + 1)).toNat

end

end A182525.P9171274309888118277

namespace A182525

/-- `A000142(n)+n*A336601(A152947(n+1))` -/
def P9171274309888118277.Spec : Prop :=
  ∀ n, P9171274309888118277.a n = A182525 n

end A182525

/-! ## A182525.P6332845363001635629

`(2*n-1)*a(n-1)+A336601(A152947(n+1))-A000007(n)` with `a(0)=1`
-/

namespace A182525.P6332845363001635629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) + (A336601 (A152947 (n + 1)).toNat - A000007 n)

end

end A182525.P6332845363001635629

namespace A182525

/-- `(2*n-1)*a(n-1)+A336601(A152947(n+1))-A000007(n)` -/
def P6332845363001635629.Spec : Prop :=
  ∀ n, P6332845363001635629.a n = A182525 n

end A182525

/-! ## A182525.P12007651012503409685

`A336601(A152947(n+1))%A034430(n)+(2*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A182525.P12007651012503409685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A336601 (A152947 (n + 1)).toNat) (A034430 n) + ((2 * n : ℤ) - 1) * a (n - 1)

end

end A182525.P12007651012503409685

namespace A182525

/-- `A336601(A152947(n+1))%A034430(n)+(2*n-1)*a(n-1)` -/
def P12007651012503409685.Spec : Prop :=
  ∀ n, P12007651012503409685.a n = A182525 n

end A182525

/-! ## A182525.P8270645353505153393

`A021009(A000217(n))+n*A336601(A152947(n+1))`
-/

namespace A182525.P8270645353505153393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A000217 n).toNat + (n : ℤ) * A336601 (A152947 (n + 1)).toNat

end

end A182525.P8270645353505153393

namespace A182525

/-- `A021009(A000217(n))+n*A336601(A152947(n+1))` -/
def P8270645353505153393.Spec : Prop :=
  ∀ n, P8270645353505153393.a n = A182525 n

end A182525

/-!
# A182529: E.g.f.: exp( Sum_{n>=1} x^n * Sum_{k=1..n} 1/k^2 ) = Sum_{n>=0} a(n)*x^n/n!^2.

The programs for A182529, there is no canonical definition to state claims against.
-/

/-! ## A182529.P9886902400665494377

`A235776(n)/A000984(n)`
-/

namespace A182529.P9886902400665494377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235776 n : ℚ) / (A000984 n : ℚ)

end

end A182529.P9886902400665494377

/-! ## A182529.P473983056116442360

`A235776(n)/record[A182411(n)]`
-/

namespace A182529.P473983056116442360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182411 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235776 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A182529.P473983056116442360

/-! ## A182529.P10296152668725536017

`A235776(n)/A001405(2*n)`
-/

namespace A182529.P10296152668725536017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235776 n : ℚ) / (A001405 (2 * n) : ℚ)

end

end A182529.P10296152668725536017

/-! ## A182529.P566974429419764556

`2/A028329(n)*A235776(n)`
-/

namespace A182529.P566974429419764556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028329 n : ℚ) * (A235776 n : ℚ)

end

end A182529.P566974429419764556

/-! ## A182529.P9010426025376141743

`A235776(n)/A007318(A046092(n))`
-/

namespace A182529.P9010426025376141743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235776 n : ℚ) / (A007318 (A046092 n).toNat : ℚ)

end

end A182529.P9010426025376141743

/-!
# A182530: Number of Dyck 2n-paths with all ascents of even length and all descents of odd length.

The programs for A182530, there is no canonical definition to state claims against.
-/

/-! ## A182530.P12458119400261681734

`A008618(A119375(n)+A119371(n))`
-/

namespace A182530.P12458119400261681734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A119375 n + A119371 n).toNat

end

end A182530.P12458119400261681734

/-! ## A182530.P10331119158247995193

`A008618(A119371(n)-(2-A119375(n)))`
-/

namespace A182530.P10331119158247995193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A119371 n - (2 - A119375 n)).toNat

end

end A182530.P10331119158247995193

/-! ## A182530.P11322389451085143714

`A383110(A001006(n))-A004525(n)`
-/

namespace A182530.P11322389451085143714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (A001006 n).toNat - A004525 n

end

end A182530.P11322389451085143714

/-!
# A182531: Extremal graph numbers for a triangle with an edge off it.

The programs for A182531, the canonical program `A182531.P5211742306738512480` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182531 has offset 1).

The definition of A182531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182531.P1000096083257475585

`char[2]+∑[ceil(n/2)]`
-/

namespace A182531.P1000096083257475585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A182531.P1000096083257475585

namespace A182531

/-- `char[2]+∑[ceil(n/2)]` -/
def P1000096083257475585.Spec : Prop :=
  ∀ n, P1000096083257475585.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P15863710761708952817

`or(∑[ceil(n/2)], char[2])`
-/

namespace A182531.P15863710761708952817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182531.P15863710761708952817

namespace A182531

/-- `or(∑[ceil(n/2)], char[2])` -/
def P15863710761708952817.Spec : Prop :=
  ∀ n, P15863710761708952817.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P5211742306738512480

`∑[n-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182531

/-- `∑[n-a(n-1)]` -/
def P5211742306738512480.Spec : Prop :=
  ∀ n, P5211742306738512480.a n = A182531 (n + 1)

theorem P5211742306738512480.correct : P5211742306738512480.Spec := by
  intro n
  simp only [A182531, Nat.add_sub_cancel]

end A182531

/-! ## A182531.P1091951861202301256

`floor(a(n-1)*(n+1)/(n-1))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A182531.P1091951861202301256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  ⌊(a (n - 1) * (n + 1 : ℤ) : ℚ) / ((n : ℤ) - 1 : ℚ)⌋

end

end A182531.P1091951861202301256

namespace A182531

/-- `floor(a(n-1)*(n+1)/(n-1))` -/
def P1091951861202301256.Spec : Prop :=
  ∀ n, P1091951861202301256.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P10549305415326003808

`record[round((n+3)²/12)%floor((floor(n/3)/2+1)²)]`
-/

namespace A182531.P10549305415326003808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)) ⌊((⌊(n : ℚ) / 3⌋ : ℚ) / 2 + 1) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182531.P10549305415326003808

namespace A182531

/-- `record[round((n+3)²/12)%floor((floor(n/3)/2+1)²)]` -/
def P10549305415326003808.Spec : Prop :=
  ∀ n, P10549305415326003808.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P11794478203622152263

`(A030978(n)+n)/2`
-/

namespace A182531.P11794478203622152263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030978 n + (n : ℤ) : ℚ) / 2

end

end A182531.P11794478203622152263

namespace A182531

/-- `(A030978(n)+n)/2` -/
def P11794478203622152263.Spec : Prop :=
  ∀ n, P11794478203622152263.a n = (A182531 (n + 1) : ℚ)

end A182531

/-! ## A182531.P6811811528496309431

`xor(∑[A110654(n)], char[2])`
-/

namespace A182531.P6811811528496309431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182531.P6811811528496309431

namespace A182531

/-- `xor(∑[A110654(n)], char[2])` -/
def P6811811528496309431.Spec : Prop :=
  ∀ n, P6811811528496309431.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P18134881527159617709

`floor(A087327(n+1)/2)`
-/

namespace A182531.P18134881527159617709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087327 (n + 1) : ℚ) / 2⌋

end

end A182531.P18134881527159617709

namespace A182531

/-- `floor(A087327(n+1)/2)` -/
def P18134881527159617709.Spec : Prop :=
  ∀ n, P18134881527159617709.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P5799961545878878356

`floor(A181385(n)+n/2)`
-/

namespace A182531.P5799961545878878356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181385 n : ℚ) + (n : ℚ) / 2⌋

end

end A182531.P5799961545878878356

namespace A182531

/-- `floor(A181385(n)+n/2)` -/
def P5799961545878878356.Spec : Prop :=
  ∀ n, P5799961545878878356.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P663848414289326088

`∪[A217748(n+3)+2, n²]`
-/

namespace A182531.P663848414289326088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A182531.P663848414289326088

namespace A182531

/-- `∪[A217748(n+3)+2, n²]` -/
def P663848414289326088.Spec : Prop :=
  ∀ n, (P663848414289326088.a n : ℤ) = A182531 (n + 1)

end A182531

/-! ## A182531.P400950048290470407

`∪[n*A348776(n+1), n²]`
-/

namespace A182531.P400950048290470407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A348776 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A182531.P400950048290470407

namespace A182531

/-- `∪[n*A348776(n+1), n²]` -/
def P400950048290470407.Spec : Prop :=
  ∀ n, (P400950048290470407.a n : ℤ) = A182531 (n + 1)

end A182531

/-! ## A182531.P15407086540210087837

`A039623(n+1)%A087327(n+1)`
-/

namespace A182531.P15407086540210087837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039623 (n + 1)) (A087327 (n + 1))

end

end A182531.P15407086540210087837

namespace A182531

/-- `A039623(n+1)%A087327(n+1)` -/
def P15407086540210087837.Spec : Prop :=
  ∀ n, P15407086540210087837.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P9779224649674336359

`A184534(n+1)%A080476(n+1)`
-/

namespace A182531.P9779224649674336359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184534 (n + 1)) (A080476 (n + 1))

end

end A182531.P9779224649674336359

namespace A182531

/-- `A184534(n+1)%A080476(n+1)` -/
def P9779224649674336359.Spec : Prop :=
  ∀ n, P9779224649674336359.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P2017137421827443322

`xor(A076921(n+1), A154272(n+1))`
-/

namespace A182531.P2017137421827443322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076921 (n + 1)) (A154272 (n + 1))

end

end A182531.P2017137421827443322

namespace A182531

/-- `xor(A076921(n+1), A154272(n+1))` -/
def P2017137421827443322.Spec : Prop :=
  ∀ n, P2017137421827443322.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P12372013128990477763

`xor(char[2], A307018(3*n))`
-/

namespace A182531.P12372013128990477763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A307018 (3 * n))

end

end A182531.P12372013128990477763

namespace A182531

/-- `xor(char[2], A307018(3*n))` -/
def P12372013128990477763.Spec : Prop :=
  ∀ n, P12372013128990477763.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P16632188733495803927

`A348542(A326494(n+1))`
-/

namespace A182531.P16632188733495803927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348542 (A326494 (n + 1)).toNat

end

end A182531.P16632188733495803927

namespace A182531

/-- `A348542(A326494(n+1))` -/
def P16632188733495803927.Spec : Prop :=
  ∀ n, P16632188733495803927.a n = A182531 (n + 1)

end A182531

/-! ## A182531.P13902461021691738259

`eq[A038760(n), A156660(n)]`
-/

namespace A182531.P13902461021691738259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182531.P13902461021691738259

namespace A182531

/-- `eq[A038760(n), A156660(n)]` -/
def P13902461021691738259.Spec : Prop :=
  ∀ n, (P13902461021691738259.a n : ℤ) = A182531 (n + 1)

end A182531

/-! ## A182531.P5449818437781756824

`eq[A008314(n), A267621(n)]`
-/

namespace A182531.P5449818437781756824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182531.P5449818437781756824

namespace A182531

/-- `eq[A008314(n), A267621(n)]` -/
def P5449818437781756824.Spec : Prop :=
  ∀ n, (P5449818437781756824.a n : ℤ) = A182531 (n + 1)

end A182531

/-! ## A182531.P392290298075827452

`eq[A008314(n), A267919(n)]`
-/

namespace A182531.P392290298075827452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182531.P392290298075827452

namespace A182531

/-- `eq[A008314(n), A267919(n)]` -/
def P392290298075827452.Spec : Prop :=
  ∀ n, (P392290298075827452.a n : ℤ) = A182531 (n + 1)

end A182531

/-!
# A182533: A symmetrical triangle. Read by rows: T(n,k) = 2*C(n-2,k-1) - C(n-2,k) - C(n-2,k-2), n >= 2, 0 <= k <= n, with T(0,0) = 0, T(1,0) = T(1,1) = 1.

The programs for A182533, there is no canonical definition to state claims against.
-/

/-! ## A182533.P2048514628985569662

`A000122(A002418(n))-A173120(n)`
-/

namespace A182533.P2048514628985569662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A002418 n).toNat - A173120 n

end

end A182533.P2048514628985569662

/-! ## A182533.P5865241972831968395

`A000122(A363239(3*n+2))-A173120(n)`
-/

namespace A182533.P5865241972831968395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A363239 (3 * n + 2)).toNat - A173120 n

end

end A182533.P5865241972831968395

/-!
# A182535: Number of terms in Zeckendorf representation of prime(n).

The programs for A182535, the canonical program `A182535.P17468542528139783195` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182535 has offset 1).

The definition of A182535 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182535.P17468542528139783195

`A007895(A000040(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182535

/-- `A007895(A000040(n+1))` -/
def P17468542528139783195.Spec : Prop :=
  ∀ n, P17468542528139783195.a n = A182535 (n + 1)

theorem P17468542528139783195.correct : P17468542528139783195.Spec := by
  intro n
  simp only [A182535, Nat.add_sub_cancel]

end A182535

/-! ## A182535.P17028831395587376389

`A007895(p?[xor(1, n)])`
-/

namespace A182535.P17028831395587376389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A182535.P17028831395587376389

namespace A182535

/-- `A007895(p?[xor(1, n)])` -/
def P17028831395587376389.Spec : Prop :=
  ∀ n, P17028831395587376389.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P1639081761433344153

`A007895(p?[comp[n²]])`
-/

namespace A182535.P1639081761433344153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A182535.P1639081761433344153

namespace A182535

/-- `A007895(p?[comp[n²]])` -/
def P1639081761433344153.Spec : Prop :=
  ∀ n, P1639081761433344153.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P7702733930253402293

`A007895(Δ[A007504(n)])`
-/

namespace A182535.P7702733930253402293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (f1 (n + 1) - f1 n).toNat

end

end A182535.P7702733930253402293

namespace A182535

/-- `A007895(Δ[A007504(n)])` -/
def P7702733930253402293.Spec : Prop :=
  ∀ n, P7702733930253402293.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P1754772989842312614

`A007895(A006005(n+1))`
-/

namespace A182535.P1754772989842312614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A006005 (n + 1)).toNat

end

end A182535.P1754772989842312614

namespace A182535

/-- `A007895(A006005(n+1))` -/
def P1754772989842312614.Spec : Prop :=
  ∀ n, P1754772989842312614.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P11886715352725275546

`A007895(A161847(n+1))`
-/

namespace A182535.P11886715352725275546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A161847 (n + 1)).toNat

end

end A182535.P11886715352725275546

namespace A182535

/-- `A007895(A161847(n+1))` -/
def P11886715352725275546.Spec : Prop :=
  ∀ n, P11886715352725275546.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P9750723922552742866

`A007895(A008578(n+2))`
-/

namespace A182535.P9750723922552742866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A008578 (n + 2)).toNat

end

end A182535.P9750723922552742866

namespace A182535

/-- `A007895(A008578(n+2))` -/
def P9750723922552742866.Spec : Prop :=
  ∀ n, P9750723922552742866.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P14488388782470012776

`A007895(A075643(n+2))`
-/

namespace A182535.P14488388782470012776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A075643 (n + 2)).toNat

end

end A182535.P14488388782470012776

namespace A182535

/-- `A007895(A075643(n+2))` -/
def P14488388782470012776.Spec : Prop :=
  ∀ n, P14488388782470012776.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P16301973296613212858

`A007895(A171525(n+2))`
-/

namespace A182535.P16301973296613212858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A171525 (n + 2)).toNat

end

end A182535.P16301973296613212858

namespace A182535

/-- `A007895(A171525(n+2))` -/
def P16301973296613212858.Spec : Prop :=
  ∀ n, P16301973296613212858.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P3072160006639705629

`A007895(A182986(n+2))`
-/

namespace A182535.P3072160006639705629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A182986 (n + 2)).toNat

end

end A182535.P3072160006639705629

namespace A182535

/-- `A007895(A182986(n+2))` -/
def P3072160006639705629.Spec : Prop :=
  ∀ n, P3072160006639705629.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P232987597973135223

`A007895(eq[0, A007920(n)])`
-/

namespace A182535.P232987597973135223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182535.P232987597973135223

namespace A182535

/-- `A007895(eq[0, A007920(n)])` -/
def P232987597973135223.Spec : Prop :=
  ∀ n, P232987597973135223.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P13005221626144383137

`A007895(eq[2, A005127(n)])`
-/

namespace A182535.P13005221626144383137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182535.P13005221626144383137

namespace A182535

/-- `A007895(eq[2, A005127(n)])` -/
def P13005221626144383137.Spec : Prop :=
  ∀ n, P13005221626144383137.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P5966004041120400804

`A007895(eq[2, A005128(n)])`
-/

namespace A182535.P5966004041120400804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182535.P5966004041120400804

namespace A182535

/-- `A007895(eq[2, A005128(n)])` -/
def P5966004041120400804.Spec : Prop :=
  ∀ n, P5966004041120400804.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P17005997412138026260

`A007895(eq[2, A322366(n)])`
-/

namespace A182535.P17005997412138026260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182535.P17005997412138026260

namespace A182535

/-- `A007895(eq[2, A322366(n)])` -/
def P17005997412138026260.Spec : Prop :=
  ∀ n, P17005997412138026260.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P1095975540940292268

`A007895(record[A006530(n+2)])`
-/

namespace A182535.P1095975540940292268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182535.P1095975540940292268

namespace A182535

/-- `A007895(record[A006530(n+2)])` -/
def P1095975540940292268.Spec : Prop :=
  ∀ n, P1095975540940292268.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P7243487862343820461

`A007895(record[A020639(n+2)])`
-/

namespace A182535.P7243487862343820461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182535.P7243487862343820461

namespace A182535

/-- `A007895(record[A020639(n+2)])` -/
def P7243487862343820461.Spec : Prop :=
  ∀ n, P7243487862343820461.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P5990513333283978124

`A007895(A100484(n+1)/2)`
-/

namespace A182535.P5990513333283978124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A182535.P5990513333283978124

namespace A182535

/-- `A007895(A100484(n+1)/2)` -/
def P5990513333283978124.Spec : Prop :=
  ∀ n, P5990513333283978124.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P9530535575556375131

`A007895(record[A000010(n+1)+1])`
-/

namespace A182535.P9530535575556375131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182535.P9530535575556375131

namespace A182535

/-- `A007895(record[A000010(n+1)+1])` -/
def P9530535575556375131.Spec : Prop :=
  ∀ n, P9530535575556375131.a n = A182535 (n + 1)

end A182535

/-! ## A182535.P18364587929788347564

`A007895(comp[A103164(n)])`
-/

namespace A182535.P18364587929788347564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A182535.P18364587929788347564

namespace A182535

/-- `A007895(comp[A103164(n)])` -/
def P18364587929788347564.Spec : Prop :=
  ∀ n, P18364587929788347564.a n = A182535 (n + 1)

end A182535

/-!
# A182536: a(0)=0, a(1)=1, a(n)=(a(n-1) XOR a(n-2)) + n.

The programs for A182536, the canonical program `A182536.P1602444082913205430` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182536 has offset 0).

The definition of A182536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182536.P1602444082913205430

`xor(a(n-1), a(n-2))+n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182536

/-- `xor(a(n-1), a(n-2))+n` -/
def P1602444082913205430.Spec : Prop :=
  ∀ n, (P1602444082913205430.a n : ℤ) = A182536 n

theorem P1602444082913205430.correct : P1602444082913205430.Spec := by
  intro n
  simp only [A182536]

end A182536

/-! ## A182536.P16881334027122603420

`2*n-(n-xor(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182536.P16881334027122603420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - Int.xor (a (n - 1)) (a (n - 2)))

end

end A182536.P16881334027122603420

namespace A182536

/-- `2*n-(n-xor(a(n-1), a(n-2)))` -/
def P16881334027122603420.Spec : Prop :=
  ∀ n, P16881334027122603420.a n = A182536 n

end A182536

/-! ## A182536.P18119842707891021075

`n-1-xor(-1, xor(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182536.P18119842707891021075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - 1 - Int.xor (-1) (Int.xor (a (n - 1)) (a (n - 2)))

end

end A182536.P18119842707891021075

namespace A182536

/-- `n-1-xor(-1, xor(a(n-1), a(n-2)))` -/
def P18119842707891021075.Spec : Prop :=
  ∀ n, P18119842707891021075.a n = A182536 n

end A182536

/-!
# A182537: a(0)=0, a(1)=1, a(n) = a(n-1) + (a(n-2) XOR n).

The programs for A182537, the canonical program `A182537.P11994822655521449408` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182537 has offset 0).

The definition of A182537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182537.P11994822655521449408

`a(n-1)+xor(n, a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182537

/-- `a(n-1)+xor(n, a(n-2))` -/
def P11994822655521449408.Spec : Prop :=
  ∀ n, (P11994822655521449408.a n : ℤ) = A182537 n

theorem P11994822655521449408.correct : P11994822655521449408.Spec := by
  intro n
  simp only [A182537]

end A182537

/-! ## A182537.P5297417089357756021

`a(n-1)-1-xor(-1, xor(n, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182537.P5297417089357756021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - 1 - Int.xor (-1) (Int.xor (n : ℤ) (a (n - 2)))

end

end A182537.P5297417089357756021

namespace A182537

/-- `a(n-1)-1-xor(-1, xor(n, a(n-2)))` -/
def P5297417089357756021.Spec : Prop :=
  ∀ n, P5297417089357756021.a n = A182537 n

end A182537

/-! ## A182537.P3693853840723808543

`a(n-1)-(n²%n-xor(n, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182537.P3693853840723808543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (((n ^ 2 % n : ℕ) : ℤ) - Int.xor (n : ℤ) (a (n - 2)))

end

end A182537.P3693853840723808543

namespace A182537

/-- `a(n-1)-(n²%n-xor(n, a(n-2)))` -/
def P3693853840723808543.Spec : Prop :=
  ∀ n, P3693853840723808543.a n = A182537 n

end A182537

/-! ## A182537.P3277699926097967457

`a(n-1)+or(n, a(n-2))-and(n, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A182537.P3277699926097967457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (Int.lor (n : ℤ) (a (n - 2)) - Int.land (n : ℤ) (a (n - 2)))

end

end A182537.P3277699926097967457

namespace A182537

/-- `a(n-1)+or(n, a(n-2))-and(n, a(n-2))` -/
def P3277699926097967457.Spec : Prop :=
  ∀ n, P3277699926097967457.a n = A182537 n

end A182537

/-! ## A182537.P8150672365458306500

`a(n-1)-(and(n, a(n-2))-or(n, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182537.P8150672365458306500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (Int.land (n : ℤ) (a (n - 2)) - Int.lor (n : ℤ) (a (n - 2)))

end

end A182537.P8150672365458306500

namespace A182537

/-- `a(n-1)-(and(n, a(n-2))-or(n, a(n-2)))` -/
def P8150672365458306500.Spec : Prop :=
  ∀ n, P8150672365458306500.a n = A182537 n

end A182537

/-! ## A182537.P2620302260295057870

`2*a(n-1)-(a(n-1)-xor(n, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182537.P2620302260295057870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - (a (n - 1) - Int.xor (n : ℤ) (a (n - 2)))

end

end A182537.P2620302260295057870

namespace A182537

/-- `2*a(n-1)-(a(n-1)-xor(n, a(n-2)))` -/
def P2620302260295057870.Spec : Prop :=
  ∀ n, P2620302260295057870.a n = A182537 n

end A182537

/-!
# A182538: a(n) = (a(n-1) AND a(n-2)) + n.

The programs for A182538, the canonical program `A182538.P3280235782081464416` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182538 has offset 0).

The definition of A182538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182538.P3280235782081464416

`and(a(n-1), a(n-2))+n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182538

/-- `and(a(n-1), a(n-2))+n` -/
def P3280235782081464416.Spec : Prop :=
  ∀ n, (P3280235782081464416.a n : ℤ) = A182538 n

theorem P3280235782081464416.correct : P3280235782081464416.Spec := by
  intro n
  simp only [A182538]

end A182538

/-! ## A182538.P14012959841289947891

`or(1, and(a(n-1), a(n-2)))-(1-n)` with `a(0)=0, a(1)=1`
-/

namespace A182538.P14012959841289947891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor 1 (Int.land (a (n - 1)) (a (n - 2))) - (1 - (n : ℤ))

end

end A182538.P14012959841289947891

namespace A182538

/-- `or(1, and(a(n-1), a(n-2)))-(1-n)` -/
def P14012959841289947891.Spec : Prop :=
  ∀ n, P14012959841289947891.a n = A182538 n

end A182538

/-! ## A182538.P17159755714180085425

`xor(1, and(a(n-1), a(n-2)))-(1-n)` with `a(0)=0, a(1)=1`
-/

namespace A182538.P17159755714180085425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor 1 (Int.land (a (n - 1)) (a (n - 2))) - (1 - (n : ℤ))

end

end A182538.P17159755714180085425

namespace A182538

/-- `xor(1, and(a(n-1), a(n-2)))-(1-n)` -/
def P17159755714180085425.Spec : Prop :=
  ∀ n, P17159755714180085425.a n = A182538 n

end A182538

/-! ## A182538.P3106747675271305147

`2*n-(n-and(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182538.P3106747675271305147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - Int.land (a (n - 1)) (a (n - 2)))

end

end A182538.P3106747675271305147

namespace A182538

/-- `2*n-(n-and(a(n-1), a(n-2)))` -/
def P3106747675271305147.Spec : Prop :=
  ∀ n, P3106747675271305147.a n = A182538 n

end A182538

/-! ## A182538.P4368773321373021782

`a(n-1)-or(a(n-1), a(n-2))+a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A182538.P4368773321373021782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - Int.lor (a (n - 1)) (a (n - 2)) + (a (n - 2) + (n : ℤ))

end

end A182538.P4368773321373021782

namespace A182538

/-- `a(n-1)-or(a(n-1), a(n-2))+a(n-2)+n` -/
def P4368773321373021782.Spec : Prop :=
  ∀ n, P4368773321373021782.a n = A182538 n

end A182538

/-!
# A182539: a(0)=0, a(1)=1, a(n) = a(n-1) + (a(n-2) AND n), where AND is the bitwise AND operator.

The programs for A182539, the canonical program `A182539.P11536664393292348152` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182539 has offset 0).

The definition of A182539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182539.P11536664393292348152

`a(n-1)+and(n, a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182539

/-- `a(n-1)+and(n, a(n-2))` -/
def P11536664393292348152.Spec : Prop :=
  ∀ n, (P11536664393292348152.a n : ℤ) = A182539 n

theorem P11536664393292348152.correct : P11536664393292348152.Spec := by
  intro n
  simp only [A182539]

end A182539

/-! ## A182539.P16910717690566569957

`or(4, and(n, a(n-2)))-(4-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A182539.P16910717690566569957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor 4 (Int.land (n : ℤ) (a (n - 2))) - (4 - a (n - 1))

end

end A182539.P16910717690566569957

namespace A182539

/-- `or(4, and(n, a(n-2)))-(4-a(n-1))` -/
def P16910717690566569957.Spec : Prop :=
  ∀ n, P16910717690566569957.a n = A182539 n

end A182539

/-! ## A182539.P8251985070223908096

`xor(4, and(n, a(n-2)))-(4-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A182539.P8251985070223908096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor 4 (Int.land (n : ℤ) (a (n - 2))) - (4 - a (n - 1))

end

end A182539.P8251985070223908096

namespace A182539

/-- `xor(4, and(n, a(n-2)))-(4-a(n-1))` -/
def P8251985070223908096.Spec : Prop :=
  ∀ n, P8251985070223908096.a n = A182539 n

end A182539

/-! ## A182539.P7195960545448995791

`2*a(n-1)-(a(n-1)-and(n, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182539.P7195960545448995791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - (a (n - 1) - Int.land (n : ℤ) (a (n - 2)))

end

end A182539.P7195960545448995791

namespace A182539

/-- `2*a(n-1)-(a(n-1)-and(n, a(n-2)))` -/
def P7195960545448995791.Spec : Prop :=
  ∀ n, P7195960545448995791.a n = A182539 n

end A182539

/-! ## A182539.P8417440845569690064

`a(n-1)+a(n-2)-or(n, a(n-2))+n` with `a(0)=0, a(1)=1`
-/

namespace A182539.P8417440845569690064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - Int.lor (n : ℤ) (a (n - 2)) + (n : ℤ))

end

end A182539.P8417440845569690064

namespace A182539

/-- `a(n-1)+a(n-2)-or(n, a(n-2))+n` -/
def P8417440845569690064.Spec : Prop :=
  ∀ n, P8417440845569690064.a n = A182539 n

end A182539

/-! ## A182539.P13433306375257918607

`a(n-1)-(or(n, a(n-2))-a(n-2)-n)` with `a(0)=0, a(1)=1`
-/

namespace A182539.P13433306375257918607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (Int.lor (n : ℤ) (a (n - 2)) - a (n - 2) - (n : ℤ))

end

end A182539.P13433306375257918607

namespace A182539

/-- `a(n-1)-(or(n, a(n-2))-a(n-2)-n)` -/
def P13433306375257918607.Spec : Prop :=
  ∀ n, P13433306375257918607.a n = A182539 n

end A182539

/-!
# A182540: Number of ways of arranging the numbers 1 through n on a circle so that no sum of two adjacent numbers is prime, up to rotations and reflections.

The programs for A182540, there is no canonical definition to state claims against.
-/

/-! ## A182540.P3445414671241578657

`A132178(∑[n+1])`
-/

namespace A182540.P3445414671241578657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182540.P3445414671241578657

/-! ## A182540.P3121589731827479580

`A065712(A303160(n)+A087061(n))`
-/

namespace A182540.P3121589731827479580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (A303160 n + A087061 n).toNat

end

end A182540.P3121589731827479580

/-! ## A182540.P13690964860076981355

`A090620(A000045(n)*A055113(n))`
-/

namespace A182540.P13690964860076981355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A000045 n * A055113 n).toNat

end

end A182540.P13690964860076981355

/-!
# A182541: Coefficients in g.f. for certain marked mesh patterns.

The programs for A182541, there is no canonical definition to state claims against.
-/

/-! ## A182541.P13655822686938527423

`A285795(n+1)+(n+1)!`
-/

namespace A182541.P13655822686938527423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285795 (n + 1) + (Nat.factorial (n + 1) : ℤ)

end

end A182541.P13655822686938527423

/-! ## A182541.P6367274058352295456

`A000254(n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A182541.P6367274058352295456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000254 (n + 1) + (n : ℤ) * a (n - 1)

end

end A182541.P6367274058352295456

/-! ## A182541.P13264753488816665317

`A285382(n+1)-A180119(n)`
-/

namespace A182541.P13264753488816665317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285382 (n + 1) - A180119 n

end

end A182541.P13264753488816665317

/-! ## A182541.P14611542825344364075

`A285795(n+1)+A000142(n+1)`
-/

namespace A182541.P14611542825344364075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285795 (n + 1) + A000142 (n + 1)

end

end A182541.P14611542825344364075

/-! ## A182541.P5937296777157134169

`A285382(n+1)+1-A300559(n)`
-/

namespace A182541.P5937296777157134169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285382 (n + 1) + (1 - A300559 n)

end

end A182541.P5937296777157134169

/-! ## A182541.P14232371304622317084

`record[A285795(A025581(n))+A130534(n)]`
-/

namespace A182541.P14232371304622317084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285795 (A025581 n).toNat + A130534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182541.P14232371304622317084

/-! ## A182541.P5612779260636918622

`A285382(n+1)-A000142(n)*A000217(n)`
-/

namespace A182541.P5612779260636918622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285382 (n + 1) - A000142 n * A000217 n

end

end A182541.P5612779260636918622

/-! ## A182541.P600804471460689427

`A307642(n+1)/(n+1)`
-/

namespace A182541.P600804471460689427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307642 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A182541.P600804471460689427

/-! ## A182541.P10596238945465549712

`record[A285795(n)+A081047(n)]/(n+1)`
-/

namespace A182541.P10596238945465549712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285795 n + A081047 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A182541.P10596238945465549712

/-!
# A182542: Second diagonal of triangle in A145879.

The programs for A182542, the canonical program `A182542.P15100388221755167558` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182542 has offset 3).

The definition of A182542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182542.P15100388221755167558

`4^(n+2)-C(2*(n+3), n+3)*(n+3)/(n+4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182542

/-- `4^(n+2)-C(2*(n+3), n+3)*(n+3)/(n+4)` -/
def P15100388221755167558.Spec : Prop :=
  ∀ n, P15100388221755167558.a n = (A182542 (n + 3) : ℚ)

end A182542

/-! ## A182542.P18386104452315835868

`A002057(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A182542.P18386104452315835868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002057 n + 4 * a (n - 1)

end

end A182542.P18386104452315835868

namespace A182542

/-- `A002057(n)+4*a(n-1)` -/
def P18386104452315835868.Spec : Prop :=
  ∀ n, P18386104452315835868.a n = A182542 (n + 3)

end A182542

/-! ## A182542.P947433159595132970

`4^(n+2)-(n+3)*A000108(n+3)`
-/

namespace A182542.P947433159595132970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 2) : ℤ) - (n + 3 : ℤ) * A000108 (n + 3)

end

end A182542.P947433159595132970

namespace A182542

/-- `4^(n+2)-(n+3)*A000108(n+3)` -/
def P947433159595132970.Spec : Prop :=
  ∀ n, P947433159595132970.a n = A182542 (n + 3)

end A182542

/-! ## A182542.P8273811682805939064

`record[A011782(n)²-A001791(n)]`
-/

namespace A182542.P8273811682805939064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 - A001791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182542.P8273811682805939064

namespace A182542

/-- `record[A011782(n)²-A001791(n)]` -/
def P8273811682805939064.Spec : Prop :=
  ∀ n, P8273811682805939064.a n = A182542 (n + 3)

end A182542

/-! ## A182542.P10968621740436365745

`A008549(n+2)-A002054(n+2)`
-/

namespace A182542.P10968621740436365745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 (n + 2) - A002054 (n + 2)

end

end A182542.P10968621740436365745

namespace A182542

/-- `A008549(n+2)-A002054(n+2)` -/
def P10968621740436365745.Spec : Prop :=
  ∀ n, P10968621740436365745.a n = A182542 (n + 3)

end A182542

/-! ## A182542.P1427705754251649492

`A000302(n+2)-A001791(n+3)`
-/

namespace A182542.P1427705754251649492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 2) - A001791 (n + 3)

end

end A182542.P1427705754251649492

namespace A182542

/-- `A000302(n+2)-A001791(n+3)` -/
def P1427705754251649492.Spec : Prop :=
  ∀ n, P1427705754251649492.a n = A182542 (n + 3)

end A182542

/-! ## A182542.P13389732514964087212

`2*A000346(n+1)-A007946(n+1)`
-/

namespace A182542.P13389732514964087212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000346 (n + 1) - A007946 (n + 1)

end

end A182542.P13389732514964087212

namespace A182542

/-- `2*A000346(n+1)-A007946(n+1)` -/
def P13389732514964087212.Spec : Prop :=
  ∀ n, P13389732514964087212.a n = A182542 (n + 3)

end A182542

/-! ## A182542.P16010479801424088915

`record[A011782(A004280(n+1))-A001791(n)]`
-/

namespace A182542.P16010479801424088915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004280 (n + 1)).toNat - A001791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182542.P16010479801424088915

namespace A182542

/-- `record[A011782(A004280(n+1))-A001791(n)]` -/
def P16010479801424088915.Spec : Prop :=
  ∀ n, P16010479801424088915.a n = A182542 (n + 3)

end A182542

/-! ## A182542.P9617793200430248279

`Δ[A008549(n+2)]-A000346(n+2)`
-/

namespace A182542.P9617793200430248279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000346 (n + 2)

end

end A182542.P9617793200430248279

namespace A182542

/-- `Δ[A008549(n+2)]-A000346(n+2)` -/
def P9617793200430248279.Spec : Prop :=
  ∀ n, P9617793200430248279.a n = A182542 (n + 3)

end A182542

/-! ## A182542.P14200243515026945678

`A145879(∑[n+1]+3)`
-/

namespace A182542.P14200243515026945678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145879 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A182542.P14200243515026945678

namespace A182542

/-- `A145879(∑[n+1]+3)` -/
def P14200243515026945678.Spec : Prop :=
  ∀ n, P14200243515026945678.a n = A182542 (n + 3)

end A182542

/-!
# A182543: Penultimate diagonal of triangle in A145879.

The programs for A182543, there is no canonical definition to state claims against.
-/

/-! ## A182543.P14141313972231920005

`A145879(C(n+3, 2))`
-/

namespace A182543.P14141313972231920005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145879 (Nat.choose (n + 3) 2)

end

end A182543.P14141313972231920005

/-! ## A182543.P9501357574734504898

`A145879(∑[n+2]+1)`
-/

namespace A182543.P9501357574734504898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145879 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A182543.P9501357574734504898

/-! ## A182543.P5610306890561164443

`A202992(∑[n+4]+2)`
-/

namespace A182543.P5610306890561164443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202992 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A182543.P5610306890561164443

/-!
# A182554: Composite numbers k that divide Fibonacci(k+1) or Fibonacci(k-1).

The programs for A182554, there is no canonical definition to state claims against.
-/

/-! ## A182554.P4489146060773173305

`∪[A069106(n+1), A069107(n+1)]`
-/

namespace A182554.P4489146060773173305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182554.P4489146060773173305

/-! ## A182554.P17960952547676155509

`record[A251643(p?[A017029(n)])]`
-/

namespace A182554.P17960952547676155509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251643 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182554.P17960952547676155509

/-!
# A182555: Expansion of g.f. (3-4*x-sqrt(1-4*x^2))/(2*(1-2*x)^2).

The programs for A182555, the canonical program `A182555.P4612867072512672630` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182555 has offset 0).

The definition of A182555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182555.P12464264899177027226

`A206603(n)+2^n`
-/

namespace A182555.P12464264899177027226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + (2 ^ n : ℤ)

end

end A182555.P12464264899177027226

namespace A182555

/-- `A206603(n)+2^n` -/
def P12464264899177027226.Spec : Prop :=
  ∀ n, P12464264899177027226.a n = A182555 n

end A182555

/-! ## A182555.P1568726934252669620

`A001792(n)-A189391(n)`
-/

namespace A182555.P1568726934252669620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A189391 n

end

end A182555.P1568726934252669620

namespace A182555

/-- `A001792(n)-A189391(n)` -/
def P1568726934252669620.Spec : Prop :=
  ∀ n, P1568726934252669620.a n = A182555 n

end A182555

/-! ## A182555.P4612867072512672630

`A153335(n+1)+A027306(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A182555

/-- `A153335(n+1)+A027306(n)` -/
def P4612867072512672630.Spec : Prop :=
  ∀ n, P4612867072512672630.a n = A182555 n

theorem P4612867072512672630.correct : P4612867072512672630.Spec := by
  intro n
  simp only [A182555]

end A182555

/-! ## A182555.P14052365550062260081

`A000225(n)+A206603(n)+1`
-/

namespace A182555.P14052365550062260081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A206603 n + 1)

end

end A182555.P14052365550062260081

namespace A182555

/-- `A000225(n)+A206603(n)+1` -/
def P14052365550062260081.Spec : Prop :=
  ∀ n, P14052365550062260081.a n = A182555 n

end A182555

/-! ## A182555.P6524514103506441292

`A153334(n+1)+A058622(n)`
-/

namespace A182555.P6524514103506441292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (n + 1) + A058622 n

end

end A182555.P6524514103506441292

namespace A182555

/-- `A153334(n+1)+A058622(n)` -/
def P6524514103506441292.Spec : Prop :=
  ∀ n, P6524514103506441292.a n = A182555 n

end A182555

/-! ## A182555.P5502248124024355450

`A047859(n)+1-A099325(n)`
-/

namespace A182555.P5502248124024355450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n + (1 - A099325 n)

end

end A182555.P5502248124024355450

namespace A182555

/-- `A047859(n)+1-A099325(n)` -/
def P5502248124024355450.Spec : Prop :=
  ∀ n, P5502248124024355450.a n = A182555 n

end A182555

/-! ## A182555.P14107523059560453486

`A000051(n)+A206603(n)-1`
-/

namespace A182555.P14107523059560453486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A206603 n - 1)

end

end A182555.P14107523059560453486

namespace A182555

/-- `A000051(n)+A206603(n)-1` -/
def P14107523059560453486.Spec : Prop :=
  ∀ n, P14107523059560453486.a n = A182555 n

end A182555

/-! ## A182555.P909276095878314353

`A245560(n)-A107373(n+1)`
-/

namespace A182555.P909276095878314353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245560 n - A107373 (n + 1)

end

end A182555.P909276095878314353

namespace A182555

/-- `A245560(n)-A107373(n+1)` -/
def P909276095878314353.Spec : Prop :=
  ∀ n, P909276095878314353.a n = A182555 n

end A182555

/-! ## A182555.P12205460360393698166

`A049610(n+2)-A189391(n)`
-/

namespace A182555.P12205460360393698166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2) - A189391 n

end

end A182555.P12205460360393698166

namespace A182555

/-- `A049610(n+2)-A189391(n)` -/
def P12205460360393698166.Spec : Prop :=
  ∀ n, P12205460360393698166.a n = A182555 n

end A182555

/-! ## A182555.P9159911295218317838

`A099326(n)-2*A189391(n)`
-/

namespace A182555.P9159911295218317838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - 2 * A189391 n

end

end A182555.P9159911295218317838

namespace A182555

/-- `A099326(n)-2*A189391(n)` -/
def P9159911295218317838.Spec : Prop :=
  ∀ n, P9159911295218317838.a n = A182555 n

end A182555

/-! ## A182555.P15714329209649777638

`A336102(2*(n+1))-A189391(n)`
-/

namespace A182555.P15714329209649777638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 * (n + 1)) - A189391 n

end

end A182555.P15714329209649777638

namespace A182555

/-- `A336102(2*(n+1))-A189391(n)` -/
def P15714329209649777638.Spec : Prop :=
  ∀ n, P15714329209649777638.a n = A182555 n

end A182555

/-! ## A182555.P16578068976002143655

`A001792(n)+A001792(n)-A099326(n)`
-/

namespace A182555.P16578068976002143655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A001792 n - A099326 n)

end

end A182555.P16578068976002143655

namespace A182555

/-- `A001792(n)+A001792(n)-A099326(n)` -/
def P16578068976002143655.Spec : Prop :=
  ∀ n, P16578068976002143655.a n = A182555 n

end A182555

/-! ## A182555.P11768680700864606237

`A000079(n)+A001787(n)-A189391(n)`
-/

namespace A182555.P11768680700864606237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A001787 n - A189391 n)

end

end A182555.P11768680700864606237

namespace A182555

/-- `A000079(n)+A001787(n)-A189391(n)` -/
def P11768680700864606237.Spec : Prop :=
  ∀ n, P11768680700864606237.a n = A182555 n

end A182555

/-! ## A182555.P7821292863629476167

`A099325(n)+A206603(n)-A189391(n)`
-/

namespace A182555.P7821292863629476167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n + (A206603 n - A189391 n)

end

end A182555.P7821292863629476167

namespace A182555

/-- `A099325(n)+A206603(n)-A189391(n)` -/
def P7821292863629476167.Spec : Prop :=
  ∀ n, P7821292863629476167.a n = A182555 n

end A182555

/-! ## A182555.P8024262254340820358

`Δ[A001792(n)]-A099325(n)`
-/

namespace A182555.P8024262254340820358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099325 n

end

end A182555.P8024262254340820358

namespace A182555

/-- `Δ[A001792(n)]-A099325(n)` -/
def P8024262254340820358.Spec : Prop :=
  ∀ n, P8024262254340820358.a n = A182555 n

end A182555

/-! ## A182555.P4783781717917336117

`Δ[A001787(n)]-A189391(n)`
-/

namespace A182555.P4783781717917336117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A189391 n

end

end A182555.P4783781717917336117

namespace A182555

/-- `Δ[A001787(n)]-A189391(n)` -/
def P4783781717917336117.Spec : Prop :=
  ∀ n, P4783781717917336117.a n = A182555 n

end A182555

/-! ## A182555.P11252961911085248947

`Δ[A005183(n)]-A189391(n)`
-/

namespace A182555.P11252961911085248947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A189391 n

end

end A182555.P11252961911085248947

namespace A182555

/-- `Δ[A005183(n)]-A189391(n)` -/
def P11252961911085248947.Spec : Prop :=
  ∀ n, P11252961911085248947.a n = A182555 n

end A182555

/-! ## A182555.P3115286638186458275

`A189162(n+1)-A001787(n)`
-/

namespace A182555.P3115286638186458275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) - A001787 n

end

end A182555.P3115286638186458275

namespace A182555

/-- `A189162(n+1)-A001787(n)` -/
def P3115286638186458275.Spec : Prop :=
  ∀ n, P3115286638186458275.a n = A182555 n

end A182555

/-! ## A182555.P16819174751855915997

`A102699(n+1)-A206603(n)`
-/

namespace A182555.P16819174751855915997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102699 (n + 1) - A206603 n

end

end A182555.P16819174751855915997

namespace A182555

/-- `A102699(n+1)-A206603(n)` -/
def P16819174751855915997.Spec : Prop :=
  ∀ n, P16819174751855915997.a n = A182555 n

end A182555

/-! ## A182555.P6092605936220611971

`2*A001792(n)-A099326(n)`
-/

namespace A182555.P6092605936220611971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001792 n - A099326 n

end

end A182555.P6092605936220611971

namespace A182555

/-- `2*A001792(n)-A099326(n)` -/
def P6092605936220611971.Spec : Prop :=
  ∀ n, P6092605936220611971.a n = A182555 n

end A182555

/-!
# A182556: a(0)=1, a(n+1) = (a(n)*6) XOR a(n).

The programs for A182556, the canonical program `A182556.P8603215907089389732` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182556 has offset 0).

The definition of A182556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182556.P8603215907089389732

`xor(6*a(n-1), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182556

/-- `xor(6*a(n-1), a(n-1))` -/
def P8603215907089389732.Spec : Prop :=
  ∀ n, (P8603215907089389732.a n : ℤ) = A182556 n

theorem P8603215907089389732.correct : P8603215907089389732.Spec := by
  intro n
  simp only [A182556]

end A182556

/-! ## A182556.P15149083266691587135

`A178732(a(n-1))` with `a(0)=1`
-/

namespace A182556.P15149083266691587135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178732 (a (n - 1)).toNat

end

end A182556.P15149083266691587135

namespace A182556

/-- `A178732(a(n-1))` -/
def P15149083266691587135.Spec : Prop :=
  ∀ n, P15149083266691587135.a n = A182556 n

end A182556

/-!
# A182557: a(n) = a(n-1)*2 + floor(sqrt(a(n-2))).

The programs for A182557, the canonical program `A182557.P15536148867491642624` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182557 has offset 0).

The definition of A182557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*2+floor(sqrt(a(n-2)))` (program `A182557.P15536148867491642624`, by `A182557.P15536148867491642624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182557.P15536148867491642624

`a(n-1)*2+floor(sqrt(a(n-2)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182557

/-- `a(n-1)*2+floor(sqrt(a(n-2)))` -/
def P15536148867491642624.Spec : Prop :=
  ∀ n, (P15536148867491642624.a n : ℤ) = A182557 n

theorem P15536148867491642624.correct : P15536148867491642624.Spec := by
  intro n
  simp only [A182557]

end A182557

/-! ## A182557.P9445472579603431289

`floor(a(n-1)+a(n-1)+sqrt(a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182557.P9445472579603431289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((a (n - 1) : ℝ) + Real.sqrt (a (n - 2) : ℝ))⌋

end

end A182557.P9445472579603431289

namespace A182557

/-- `floor(a(n-1)+a(n-1)+sqrt(a(n-2)))` -/
def P9445472579603431289.Spec : Prop :=
  ∀ n, P9445472579603431289.a n = A182557 n

end A182557

/-! ## A182557.P18018330773229330950

`floor(3*a(n-1)-(a(n-1)-sqrt(a(n-2))))` with `a(0)=0, a(1)=1`
-/

namespace A182557.P18018330773229330950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(3 * a (n - 1) : ℝ) - ((a (n - 1) : ℝ) - Real.sqrt (a (n - 2) : ℝ))⌋

end

end A182557.P18018330773229330950

namespace A182557

/-- `floor(3*a(n-1)-(a(n-1)-sqrt(a(n-2))))` -/
def P18018330773229330950.Spec : Prop :=
  ∀ n, P18018330773229330950.a n = A182557 n

end A182557

/-! ## A182557.P9080520192396638717

`A000196(a(n-2))+2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A182557.P9080520192396638717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000196 (a (n - 2)).toNat + 2 * a (n - 1)

end

end A182557.P9080520192396638717

namespace A182557

/-- `A000196(a(n-2))+2*a(n-1)` -/
def P9080520192396638717.Spec : Prop :=
  ∀ n, P9080520192396638717.a n = A182557 n

end A182557

/-! ## A182557.P4725535888337104291

`2^n-A000194(A084078(n))`
-/

namespace A182557.P4725535888337104291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000194 (A084078 n).toNat

end

end A182557.P4725535888337104291

namespace A182557

/-- `2^n-A000194(A084078(n))` -/
def P4725535888337104291.Spec : Prop :=
  ∀ n, P4725535888337104291.a n = A182557 n

end A182557

/-!
# A182558: a(n) = a(n-1)*2 - floor(sqrt(a(n-2))).

The programs for A182558, the canonical program `A182558.P13902652713895417828` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182558 has offset 0).

The definition of A182558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*2-floor(sqrt(a(n-2)))` (program `A182558.P13902652713895417828`, by `A182558.P13902652713895417828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182558.P13902652713895417828

`a(n-1)*2-floor(sqrt(a(n-2)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182558

/-- `a(n-1)*2-floor(sqrt(a(n-2)))` -/
def P13902652713895417828.Spec : Prop :=
  ∀ n, P13902652713895417828.a n = A182558 n

theorem P13902652713895417828.correct : P13902652713895417828.Spec := by
  intro n
  simp only [A182558]

end A182558

/-! ## A182558.P12162351672006164017

`a(n-1)+a(n-1)-floor(sqrt(a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182558.P12162351672006164017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) - Int.sqrt (a (n - 2)))

end

end A182558.P12162351672006164017

namespace A182558

/-- `a(n-1)+a(n-1)-floor(sqrt(a(n-2)))` -/
def P12162351672006164017.Spec : Prop :=
  ∀ n, P12162351672006164017.a n = A182558 n

theorem P12162351672006164017.correct : P12162351672006164017.Spec := by
  intro n
  simp only [A182558, Nat.add_sub_cancel, A182558.P12162351672006164017.a, A182558.P13902652713895417828.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182558

/-! ## A182558.P12953729311368277266

`a(n-1)-(floor(sqrt(a(n-2)))-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A182558.P12953729311368277266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (Int.sqrt (a (n - 2)) - a (n - 1))

end

end A182558.P12953729311368277266

namespace A182558

/-- `a(n-1)-(floor(sqrt(a(n-2)))-a(n-1))` -/
def P12953729311368277266.Spec : Prop :=
  ∀ n, P12953729311368277266.a n = A182558 n

theorem P12953729311368277266.correct : P12953729311368277266.Spec := by
  intro n
  simp only [A182558, Nat.add_sub_cancel, A182558.P12953729311368277266.a, A182558.P13902652713895417828.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182558

/-! ## A182558.P12330193377694160209

`a(n-1)+a(n-1)-A000196(a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A182558.P12330193377694160209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) - A000196 (a (n - 2)).toNat)

end

end A182558.P12330193377694160209

namespace A182558

/-- `a(n-1)+a(n-1)-A000196(a(n-2))` -/
def P12330193377694160209.Spec : Prop :=
  ∀ n, P12330193377694160209.a n = A182558 n

end A182558

/-! ## A182558.P9648131094078704988

`A305025(A001410(n))`
-/

namespace A182558.P9648131094078704988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (A001410 n).toNat

end

end A182558.P9648131094078704988

namespace A182558

/-- `A305025(A001410(n))` -/
def P9648131094078704988.Spec : Prop :=
  ∀ n, P9648131094078704988.a n = A182558 n

end A182558

/-!
# A182559: a(n) = a(n-2)*2 + floor(sqrt(a(n-1))).

The programs for A182559, the canonical program `A182559.P16705843733750757097` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182559 has offset 0).

The definition of A182559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*2+floor(sqrt(a(n-1)))` (program `A182559.P16705843733750757097`, by `A182559.P16705843733750757097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182559.P6504809552313653129

`2*a(n-2)+floor(sqrt(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A182559.P6504809552313653129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 2) + Nat.sqrt (a (n - 1))

end

end A182559.P6504809552313653129

namespace A182559

/-- `2*a(n-2)+floor(sqrt(a(n-1)))` -/
def P6504809552313653129.Spec : Prop :=
  ∀ n, (P6504809552313653129.a n : ℤ) = A182559 n

theorem P6504809552313653129.correct : P6504809552313653129.Spec := by
  intro n
  simp only [A182559, Nat.add_sub_cancel, A182559.P6504809552313653129.a, A182559.P16705843733750757097.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182559

/-! ## A182559.P16705843733750757097

`a(n-2)*2+floor(sqrt(a(n-1)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182559

/-- `a(n-2)*2+floor(sqrt(a(n-1)))` -/
def P16705843733750757097.Spec : Prop :=
  ∀ n, (P16705843733750757097.a n : ℤ) = A182559 n

theorem P16705843733750757097.correct : P16705843733750757097.Spec := by
  intro n
  simp only [A182559]

end A182559

/-! ## A182559.P9131997734182752787

`A005843(a(n-2))+floor(sqrt(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A182559.P9131997734182752787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A005843 (a (n - 2)).toNat + Int.sqrt (a (n - 1))

end

end A182559.P9131997734182752787

namespace A182559

/-- `A005843(a(n-2))+floor(sqrt(a(n-1)))` -/
def P9131997734182752787.Spec : Prop :=
  ∀ n, P9131997734182752787.a n = A182559 n

end A182559

/-! ## A182559.P10216613191270606942

`A000196(a(n-1))+a(n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A182559.P10216613191270606942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000196 (a (n - 1)).toNat + (a (n - 2) + a (n - 2))

end

end A182559.P10216613191270606942

namespace A182559

/-- `A000196(a(n-1))+a(n-2)+a(n-2)` -/
def P10216613191270606942.Spec : Prop :=
  ∀ n, P10216613191270606942.a n = A182559 n

end A182559

/-!
# A182560: a(n) = (a(n-1) AND a(n-2)) XOR n.

The programs for A182560, the canonical program `A182560.P11863696456408664162` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182560 has offset 0).

The definition of A182560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182560.P11863696456408664162

`xor(n, and(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182560

/-- `xor(n, and(a(n-1), a(n-2)))` -/
def P11863696456408664162.Spec : Prop :=
  ∀ n, (P11863696456408664162.a n : ℤ) = A182560 n

theorem P11863696456408664162.correct : P11863696456408664162.Spec := by
  intro n
  simp only [A182560]

end A182560

/-! ## A182560.P4112302314076649085

`xor(n, a(n-1)+a(n-2)-or(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182560.P4112302314076649085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (n : ℤ) (a (n - 1) + (a (n - 2) - Int.lor (a (n - 1)) (a (n - 2))))

end

end A182560.P4112302314076649085

namespace A182560

/-- `xor(n, a(n-1)+a(n-2)-or(a(n-1), a(n-2)))` -/
def P4112302314076649085.Spec : Prop :=
  ∀ n, P4112302314076649085.a n = A182560 n

end A182560

/-! ## A182560.P15670260845972168651

`xor(n, a(n-1)-(or(a(n-1), a(n-2))-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182560.P15670260845972168651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (n : ℤ) (a (n - 1) - (Int.lor (a (n - 1)) (a (n - 2)) - a (n - 2)))

end

end A182560.P15670260845972168651

namespace A182560

/-- `xor(n, a(n-1)-(or(a(n-1), a(n-2))-a(n-2)))` -/
def P15670260845972168651.Spec : Prop :=
  ∀ n, P15670260845972168651.a n = A182560 n

end A182560

/-!
# A182561: Position of first occurrence of n in A182535.

The programs for A182561, there is no canonical definition to state claims against.
-/

/-! ## A182561.P8831467350545558034

`A000720(A182667(n+1))`
-/

namespace A182561.P8831467350545558034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A182667 (n + 1)).toNat

end

end A182561.P8831467350545558034

/-! ## A182561.P9182156209983133093

`A061395(2*A182667(n+1))`
-/

namespace A182561.P9182156209983133093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A182667 (n + 1)).toNat

end

end A182561.P9182156209983133093

/-! ## A182561.P7094891762107338062

`A061395(lcm(2, A182667(n+1)))`
-/

namespace A182561.P7094891762107338062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A182667 (n + 1)))

end

end A182561.P7094891762107338062

/-!
# A182562: Number of ways to place k non-attacking semi-knights on an n x n chessboard, sum over all k>=0.

The programs for A182562, there is no canonical definition to state claims against.
-/

/-! ## A182562.P8942799691798569441

`A263989(2*(n+1)²)`
-/

namespace A182562.P8942799691798569441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263989 (2 * (n + 1) ^ 2)

end

end A182562.P8942799691798569441

/-! ## A182562.P10747847790201354006

`record[A263989(A093005(n+2))]`
-/

namespace A182562.P10747847790201354006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263989 (A093005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182562.P10747847790201354006

/-!
# A182564: Number of primes < Fibonacci(n).

The programs for A182564, there is no canonical definition to state claims against.
-/

/-! ## A182564.P6094100229525179049

`A054782(n)-char[A001605(n+1)]`
-/

namespace A182564.P6094100229525179049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A182564.P6094100229525179049

/-! ## A182564.P17626324386907940344

`A054782(n)-char[eq[0, A079677(n)]]`
-/

namespace A182564.P17626324386907940344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182564.P17626324386907940344

/-! ## A182564.P3523569419278248869

`A054782(n)-char[eq[1, A038575(n)]]`
-/

namespace A182564.P3523569419278248869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182564.P3523569419278248869

/-! ## A182564.P6054379341976070544

`A054782(n)-char[A069744(n+1)+1]`
-/

namespace A182564.P6054379341976070544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A182564.P6054379341976070544

/-! ## A182564.P8239891547758937846

`∑[A076777(abs(1-n))]-char[eq[0, A079677(n)]]`
-/

namespace A182564.P8239891547758937846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 |1 - (n : ℤ)|.toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182564.P8239891547758937846

/-!
# A182568: a(n) = 2*floor(n/4)*(n - 2*(1 + floor(n/4))).

The programs for A182568, the canonical program `A182568.P2617063082500049018` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182568 has offset 0).

The definition of A182568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*floor(n/4)*(n-2*(1+floor(n/4)))` (program `A182568.P2617063082500049018`, by `A182568.P2617063082500049018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182568.P2617063082500049018

`2*floor(n/4)*(n-2*(1+floor(n/4)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182568

/-- `2*floor(n/4)*(n-2*(1+floor(n/4)))` -/
def P2617063082500049018.Spec : Prop :=
  ∀ n, P2617063082500049018.a n = A182568 n

theorem P2617063082500049018.correct : P2617063082500049018.Spec := by
  intro n
  simp only [A182568]

end A182568

/-! ## A182568.P12724063517244331612

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2`
-/

namespace A182568.P12724063517244331612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 2] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A182568.P12724063517244331612

namespace A182568

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P12724063517244331612.Spec : Prop :=
  ∀ n, P12724063517244331612.a n = A182568 n

end A182568

/-! ## A182568.P14820097201733008375

`and(-6, (2-n)²)/4`
-/

namespace A182568.P14820097201733008375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-6) ((2 - (n : ℤ)) ^ 2) : ℚ) / 4

end

end A182568.P14820097201733008375

namespace A182568

/-- `and(-6, (2-n)²)/4` -/
def P14820097201733008375.Spec : Prop :=
  ∀ n, P14820097201733008375.a n = (A182568 n : ℚ)

end A182568

/-! ## A182568.P8508748798398509253

`(or(5, (2-n)²)-5)/4`
-/

namespace A182568.P8508748798398509253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 5 ((2 - (n : ℤ)) ^ 2) - 5 : ℚ) / 4

end

end A182568.P8508748798398509253

namespace A182568

/-- `(or(5, (2-n)²)-5)/4` -/
def P8508748798398509253.Spec : Prop :=
  ∀ n, P8508748798398509253.a n = (A182568 n : ℚ)

end A182568

/-! ## A182568.P11896822145102397770

`or(1, ∑[∑[(n-1)%2]])+1`
-/

namespace A182568.P11896822145102397770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A182568.P11896822145102397770

namespace A182568

/-- `or(1, ∑[∑[(n-1)%2]])+1` -/
def P11896822145102397770.Spec : Prop :=
  ∀ n, P11896822145102397770.a n = A182568 n

end A182568

/-! ## A182568.P18052736467380589180

`ceil((n%4+n²)/4)-n`
-/

namespace A182568.P18052736467380589180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n % 4 + n ^ 2 : ℕ) : ℚ) / 4⌉ - (n : ℤ)

end

end A182568.P18052736467380589180

namespace A182568

/-- `ceil((n%4+n²)/4)-n` -/
def P18052736467380589180.Spec : Prop :=
  ∀ n, P18052736467380589180.a n = A182568 n

end A182568

/-! ## A182568.P3903279481172632351

`∑[a(n-4)+2]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A182568.P3903279481172632351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182568.P3903279481172632351

namespace A182568

/-- `∑[a(n-4)+2]` -/
def P3903279481172632351.Spec : Prop :=
  ∀ n, (P3903279481172632351.a n : ℤ) = A182568 n

end A182568

/-! ## A182568.P7990194435343781761

`∑[round(∑[n]/or(2, n+1))]-n`
-/

namespace A182568.P7990194435343781761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (Nat.lor 2 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A182568.P7990194435343781761

namespace A182568

/-- `∑[round(∑[n]/or(2, n+1))]-n` -/
def P7990194435343781761.Spec : Prop :=
  ∀ n, P7990194435343781761.a n = A182568 n

end A182568

/-! ## A182568.P10130342466106241849

`2-∑[a(n-4)-2]` with `a(0)=2, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A182568.P10130342466106241849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0, 0] fun n f1 =>
  f1 (n - 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182568.P10130342466106241849

namespace A182568

/-- `2-∑[a(n-4)-2]` -/
def P10130342466106241849.Spec : Prop :=
  ∀ n, P10130342466106241849.a n = A182568 n

end A182568

/-! ## A182568.P86097318026130375

`a(n-1)+2*floor((n-1)/4)` with `a(0)=0`
-/

namespace A182568.P86097318026130375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * ⌊((n : ℤ) - 1 : ℚ) / 4⌋

end

end A182568.P86097318026130375

namespace A182568

/-- `a(n-1)+2*floor((n-1)/4)` -/
def P86097318026130375.Spec : Prop :=
  ∀ n, P86097318026130375.a n = A182568 n

end A182568

/-! ## A182568.P667451473257338607

`floor((3-n)²/2-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A182568.P667451473257338607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊((3 - (n : ℤ)) ^ 2 : ℚ) / 2 - (a (n - 2) : ℚ)⌋

end

end A182568.P667451473257338607

namespace A182568

/-- `floor((3-n)²/2-a(n-2))` -/
def P667451473257338607.Spec : Prop :=
  ∀ n, P667451473257338607.a n = A182568 n

end A182568

/-! ## A182568.P6708529512562332917

`∑[∑[and(2, and(n+1, n+2))]]-2*n`
-/

namespace A182568.P6708529512562332917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.land (n + 1) (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)

end

end A182568.P6708529512562332917

namespace A182568

/-- `∑[∑[and(2, and(n+1, n+2))]]-2*n` -/
def P6708529512562332917.Spec : Prop :=
  ∀ n, P6708529512562332917.a n = A182568 n

end A182568

/-! ## A182568.P1982163837096200459

`A008811(n)-n`
-/

namespace A182568.P1982163837096200459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n - (n : ℤ)

end

end A182568.P1982163837096200459

namespace A182568

/-- `A008811(n)-n` -/
def P1982163837096200459.Spec : Prop :=
  ∀ n, P1982163837096200459.a n = A182568 n

end A182568

/-! ## A182568.P931243854294006442

`∑[A122461(abs(1-n))]`
-/

namespace A182568.P931243854294006442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182568.P931243854294006442

namespace A182568

/-- `∑[A122461(abs(1-n))]` -/
def P931243854294006442.Spec : Prop :=
  ∀ n, P931243854294006442.a n = A182568 n

end A182568

/-! ## A182568.P17166292485406915276

`ceil(A104563(n)/2-n)`
-/

namespace A182568.P17166292485406915276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104563 n : ℚ) / 2 - (n : ℚ)⌉

end

end A182568.P17166292485406915276

namespace A182568

/-- `ceil(A104563(n)/2-n)` -/
def P17166292485406915276.Spec : Prop :=
  ∀ n, P17166292485406915276.a n = A182568 n

end A182568

/-! ## A182568.P17364631373007899978

`∑[2*A002265(abs(1-n))]`
-/

namespace A182568.P17364631373007899978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002265 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182568.P17364631373007899978

namespace A182568

/-- `∑[2*A002265(abs(1-n))]` -/
def P17364631373007899978.Spec : Prop :=
  ∀ n, P17364631373007899978.a n = A182568 n

end A182568

/-! ## A182568.P10375912981874475008

`A200975(n+1)-Δ[n²]`
-/

namespace A182568.P10375912981874475008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A182568.P10375912981874475008

namespace A182568

/-- `A200975(n+1)-Δ[n²]` -/
def P10375912981874475008.Spec : Prop :=
  ∀ n, P10375912981874475008.a n = A182568 n

end A182568

/-! ## A182568.P16265898876360568029

`∑[n-A162330(n+1)]+2`
-/

namespace A182568.P16265898876360568029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A162330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A182568.P16265898876360568029

namespace A182568

/-- `∑[n-A162330(n+1)]+2` -/
def P16265898876360568029.Spec : Prop :=
  ∀ n, P16265898876360568029.a n = A182568 n

end A182568

/-! ## A182568.P10285237334839740159

`2*∑[ceil(n/4)]-A005843(n)`
-/

namespace A182568.P10285237334839740159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - A005843 n

end

end A182568.P10285237334839740159

namespace A182568

/-- `2*∑[ceil(n/4)]-A005843(n)` -/
def P10285237334839740159.Spec : Prop :=
  ∀ n, P10285237334839740159.a n = A182568 n

end A182568

/-! ## A182568.P18000335629172830547

`∑[round(n/2)]-lt[A020639(n+2), 4]`
-/

namespace A182568.P18000335629172830547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ)

end

end A182568.P18000335629172830547

namespace A182568

/-- `∑[round(n/2)]-lt[A020639(n+2), 4]` -/
def P18000335629172830547.Spec : Prop :=
  ∀ n, P18000335629172830547.a n = A182568 n

end A182568

/-!
# A182569: Primes that have two terms in their Zeckendorf representation.

The programs for A182569, there is no canonical definition to state claims against.
-/

/-! ## A182569.P14437174739798383791

`∩[A178576(n+1), A179242(n+1)]`
-/

namespace A182569.P14437174739798383791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182569.P14437174739798383791

/-! ## A182569.P12480843774233354357

`p?[A179242(n+1)]`
-/

namespace A182569.P12480843774233354357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182569.P12480843774233354357

/-! ## A182569.P16516482839940965052

`p?[record[A179242(A291766(n))]]`
-/

namespace A182569.P16516482839940965052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182569.P16516482839940965052

/-! ## A182569.P16521743546390944515

`p?[record[A179242(A324347(n))]]`
-/

namespace A182569.P16521743546390944515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182569.P16521743546390944515

/-! ## A182569.P2910117402406047495

`p?[record[A179242(A328395(n))]]`
-/

namespace A182569.P2910117402406047495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182569.P2910117402406047495

/-!
# A182570: Primes that have three terms in their Zeckendorf representation.

The programs for A182570, the canonical program `A182570.P16827199781017962522` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182570 has offset 1).

The definition of A182570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182570.P16827199781017962522

`p?[A179243(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A182570

/-- `p?[A179243(n+1)]` -/
def P16827199781017962522.Spec : Prop :=
  ∀ n, P16827199781017962522.a n = A182570 (n + 1)

theorem P16827199781017962522.correct : P16827199781017962522.Spec := by
  intro n
  simp only [A182570, Nat.add_sub_cancel]

end A182570

/-! ## A182570.P18129190983305814863

`p?[record[A179243(A291769(n))]]`
-/

namespace A182570.P18129190983305814863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182570.P18129190983305814863

namespace A182570

/-- `p?[record[A179243(A291769(n))]]` -/
def P18129190983305814863.Spec : Prop :=
  ∀ n, P18129190983305814863.a n = A182570 (n + 1)

end A182570

/-! ## A182570.P16596052899803756775

`∩[A095083(n+1), A179243(n+1)]`
-/

namespace A182570.P16596052899803756775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P16596052899803756775

namespace A182570

/-- `∩[A095083(n+1), A179243(n+1)]` -/
def P16596052899803756775.Spec : Prop :=
  ∀ n, (P16596052899803756775.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P980875586976512326

`A065091(eq[3, A182535(n+1)])`
-/

namespace A182570.P980875586976512326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182570.P980875586976512326

namespace A182570

/-- `A065091(eq[3, A182535(n+1)])` -/
def P980875586976512326.Spec : Prop :=
  ∀ n, P980875586976512326.a n = A182570 (n + 1)

end A182570

/-! ## A182570.P4725850800770658667

`∩[A000040(n+1), A179243(n+1)]`
-/

namespace A182570.P4725850800770658667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P4725850800770658667

namespace A182570

/-- `∩[A000040(n+1), A179243(n+1)]` -/
def P4725850800770658667.Spec : Prop :=
  ∀ n, (P4725850800770658667.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P9708087072332607481

`∩[A004139(n+1), A179243(n+1)]`
-/

namespace A182570.P9708087072332607481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P9708087072332607481

namespace A182570

/-- `∩[A004139(n+1), A179243(n+1)]` -/
def P9708087072332607481.Spec : Prop :=
  ∀ n, (P9708087072332607481.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P3149150217988996468

`∩[A006005(n+1), A179243(n+1)]`
-/

namespace A182570.P3149150217988996468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P3149150217988996468

namespace A182570

/-- `∩[A006005(n+1), A179243(n+1)]` -/
def P3149150217988996468.Spec : Prop :=
  ∀ n, (P3149150217988996468.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P12879266250537781964

`∩[A008578(n+1), A179243(n+1)]`
-/

namespace A182570.P12879266250537781964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P12879266250537781964

namespace A182570

/-- `∩[A008578(n+1), A179243(n+1)]` -/
def P12879266250537781964.Spec : Prop :=
  ∀ n, (P12879266250537781964.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P10925575523749609209

`∩[A033946(n+1), A179243(n+1)]`
-/

namespace A182570.P10925575523749609209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P10925575523749609209

namespace A182570

/-- `∩[A033946(n+1), A179243(n+1)]` -/
def P10925575523749609209.Spec : Prop :=
  ∀ n, (P10925575523749609209.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P3551532421520204439

`∩[A045319(n+1), A179243(n+1)]`
-/

namespace A182570.P3551532421520204439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P3551532421520204439

namespace A182570

/-- `∩[A045319(n+1), A179243(n+1)]` -/
def P3551532421520204439.Spec : Prop :=
  ∀ n, (P3551532421520204439.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P5267576251969544072

`∩[A045344(n+1), A179243(n+1)]`
-/

namespace A182570.P5267576251969544072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P5267576251969544072

namespace A182570

/-- `∩[A045344(n+1), A179243(n+1)]` -/
def P5267576251969544072.Spec : Prop :=
  ∀ n, (P5267576251969544072.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P9492415036074127094

`∩[A046022(n+1), A179243(n+1)]`
-/

namespace A182570.P9492415036074127094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P9492415036074127094

namespace A182570

/-- `∩[A046022(n+1), A179243(n+1)]` -/
def P9492415036074127094.Spec : Prop :=
  ∀ n, (P9492415036074127094.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P93468240865024809

`∩[A051948(n+1), A179243(n+1)]`
-/

namespace A182570.P93468240865024809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P93468240865024809

namespace A182570

/-- `∩[A051948(n+1), A179243(n+1)]` -/
def P93468240865024809.Spec : Prop :=
  ∀ n, (P93468240865024809.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P167242974717873749

`∩[A060634(n+1), A179243(n+1)]`
-/

namespace A182570.P167242974717873749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P167242974717873749

namespace A182570

/-- `∩[A060634(n+1), A179243(n+1)]` -/
def P167242974717873749.Spec : Prop :=
  ∀ n, (P167242974717873749.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P8047940419725795351

`∩[A062972(n+1), A179243(n+1)]`
-/

namespace A182570.P8047940419725795351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P8047940419725795351

namespace A182570

/-- `∩[A062972(n+1), A179243(n+1)]` -/
def P8047940419725795351.Spec : Prop :=
  ∀ n, (P8047940419725795351.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P5884858742390251536

`∩[A065091(n+1), A179243(n+1)]`
-/

namespace A182570.P5884858742390251536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P5884858742390251536

namespace A182570

/-- `∩[A065091(n+1), A179243(n+1)]` -/
def P5884858742390251536.Spec : Prop :=
  ∀ n, (P5884858742390251536.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P11081738451421319788

`∩[A066050(n+1), A179243(n+1)]`
-/

namespace A182570.P11081738451421319788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P11081738451421319788

namespace A182570

/-- `∩[A066050(n+1), A179243(n+1)]` -/
def P11081738451421319788.Spec : Prop :=
  ∀ n, (P11081738451421319788.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P7184879700770248277

`∩[A067126(n+1), A179243(n+1)]`
-/

namespace A182570.P7184879700770248277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P7184879700770248277

namespace A182570

/-- `∩[A067126(n+1), A179243(n+1)]` -/
def P7184879700770248277.Spec : Prop :=
  ∀ n, (P7184879700770248277.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P678548964649892538

`∩[A083249(n+1), A179243(n+1)]`
-/

namespace A182570.P678548964649892538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P678548964649892538

namespace A182570

/-- `∩[A083249(n+1), A179243(n+1)]` -/
def P678548964649892538.Spec : Prop :=
  ∀ n, (P678548964649892538.a n : ℤ) = A182570 (n + 1)

end A182570

/-! ## A182570.P3329917444045122877

`∩[A106118(n+1), A179243(n+1)]`
-/

namespace A182570.P3329917444045122877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182570.P3329917444045122877

namespace A182570

/-- `∩[A106118(n+1), A179243(n+1)]` -/
def P3329917444045122877.Spec : Prop :=
  ∀ n, (P3329917444045122877.a n : ℤ) = A182570 (n + 1)

end A182570

/-!
# A182571: Primes that have four terms in their Zeckendorf representation.

The programs for A182571, the canonical program `A182571.P14148324421551641499` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182571 has offset 1).

The definition of A182571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182571.P14148324421551641499

`p?[A179244(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A182571

/-- `p?[A179244(n+1)]` -/
def P14148324421551641499.Spec : Prop :=
  ∀ n, P14148324421551641499.a n = A182571 (n + 1)

theorem P14148324421551641499.correct : P14148324421551641499.Spec := by
  intro n
  simp only [A182571, Nat.add_sub_cancel]

end A182571

/-! ## A182571.P14383787023938725277

`p?[record[A179244(A291766(n))]]`
-/

namespace A182571.P14383787023938725277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182571.P14383787023938725277

namespace A182571

/-- `p?[record[A179244(A291766(n))]]` -/
def P14383787023938725277.Spec : Prop :=
  ∀ n, P14383787023938725277.a n = A182571 (n + 1)

end A182571

/-! ## A182571.P1481993872438620705

`∩[A000040(n+1), A179244(n+1)]`
-/

namespace A182571.P1481993872438620705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P1481993872438620705

namespace A182571

/-- `∩[A000040(n+1), A179244(n+1)]` -/
def P1481993872438620705.Spec : Prop :=
  ∀ n, (P1481993872438620705.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P3769016498399086671

`∩[A004139(n+1), A179244(n+1)]`
-/

namespace A182571.P3769016498399086671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P3769016498399086671

namespace A182571

/-- `∩[A004139(n+1), A179244(n+1)]` -/
def P3769016498399086671.Spec : Prop :=
  ∀ n, (P3769016498399086671.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P13140572906441238333

`∩[A006005(n+1), A179244(n+1)]`
-/

namespace A182571.P13140572906441238333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P13140572906441238333

namespace A182571

/-- `∩[A006005(n+1), A179244(n+1)]` -/
def P13140572906441238333.Spec : Prop :=
  ∀ n, (P13140572906441238333.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P11802068426900476195

`∩[A008578(n+1), A179244(n+1)]`
-/

namespace A182571.P11802068426900476195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P11802068426900476195

namespace A182571

/-- `∩[A008578(n+1), A179244(n+1)]` -/
def P11802068426900476195.Spec : Prop :=
  ∀ n, (P11802068426900476195.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P16825934513975264896

`∩[A045319(n+1), A179244(n+1)]`
-/

namespace A182571.P16825934513975264896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P16825934513975264896

namespace A182571

/-- `∩[A045319(n+1), A179244(n+1)]` -/
def P16825934513975264896.Spec : Prop :=
  ∀ n, (P16825934513975264896.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P13162876727336821650

`∩[A045344(n+1), A179244(n+1)]`
-/

namespace A182571.P13162876727336821650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P13162876727336821650

namespace A182571

/-- `∩[A045344(n+1), A179244(n+1)]` -/
def P13162876727336821650.Spec : Prop :=
  ∀ n, (P13162876727336821650.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P16869514614206179981

`∩[A046022(n+1), A179244(n+1)]`
-/

namespace A182571.P16869514614206179981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P16869514614206179981

namespace A182571

/-- `∩[A046022(n+1), A179244(n+1)]` -/
def P16869514614206179981.Spec : Prop :=
  ∀ n, (P16869514614206179981.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P10817858474288347275

`∩[A051948(n+1), A179244(n+1)]`
-/

namespace A182571.P10817858474288347275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P10817858474288347275

namespace A182571

/-- `∩[A051948(n+1), A179244(n+1)]` -/
def P10817858474288347275.Spec : Prop :=
  ∀ n, (P10817858474288347275.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P3174145328476167372

`∩[A053813(n+1), A179244(n+1)]`
-/

namespace A182571.P3174145328476167372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P3174145328476167372

namespace A182571

/-- `∩[A053813(n+1), A179244(n+1)]` -/
def P3174145328476167372.Spec : Prop :=
  ∀ n, (P3174145328476167372.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P5271755252410290404

`∩[A065091(n+1), A179244(n+1)]`
-/

namespace A182571.P5271755252410290404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P5271755252410290404

namespace A182571

/-- `∩[A065091(n+1), A179244(n+1)]` -/
def P5271755252410290404.Spec : Prop :=
  ∀ n, (P5271755252410290404.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P15809356715025964207

`∩[A065396(n+1), A179244(n+1)]`
-/

namespace A182571.P15809356715025964207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P15809356715025964207

namespace A182571

/-- `∩[A065396(n+1), A179244(n+1)]` -/
def P15809356715025964207.Spec : Prop :=
  ∀ n, (P15809356715025964207.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P15694485046969245301

`∩[A066050(n+1), A179244(n+1)]`
-/

namespace A182571.P15694485046969245301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P15694485046969245301

namespace A182571

/-- `∩[A066050(n+1), A179244(n+1)]` -/
def P15694485046969245301.Spec : Prop :=
  ∀ n, (P15694485046969245301.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P5463497554032164292

`∩[A060634(n+1), A179244(n+1)]`
-/

namespace A182571.P5463497554032164292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182571.P5463497554032164292

namespace A182571

/-- `∩[A060634(n+1), A179244(n+1)]` -/
def P5463497554032164292.Spec : Prop :=
  ∀ n, (P5463497554032164292.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P4485047080251226691

`record[A001414(A179244(n+4))]`
-/

namespace A182571.P4485047080251226691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A179244 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182571.P4485047080251226691

namespace A182571

/-- `record[A001414(A179244(n+4))]` -/
def P4485047080251226691.Spec : Prop :=
  ∀ n, P4485047080251226691.a n = A182571 (n + 1)

end A182571

/-! ## A182571.P3361697274947299686

`filter[A179244(n+1), A010051(#)]`
-/

namespace A182571.P3361697274947299686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A182571.P3361697274947299686

namespace A182571

/-- `filter[A179244(n+1), A010051(#)]` -/
def P3361697274947299686.Spec : Prop :=
  ∀ n, P3361697274947299686.a n = A182571 (n + 1)

end A182571

/-! ## A182571.P10099421537538090977

`filter[A179244(n+1), A323153(#)]`
-/

namespace A182571.P10099421537538090977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A182571.P10099421537538090977

namespace A182571

/-- `filter[A179244(n+1), A323153(#)]` -/
def P10099421537538090977.Spec : Prop :=
  ∀ n, P10099421537538090977.a n = A182571 (n + 1)

end A182571

/-! ## A182571.P3426148358394680469

`p?[eq[4, A007895(n)]]`
-/

namespace A182571.P3426148358394680469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A182571.P3426148358394680469

namespace A182571

/-- `p?[eq[4, A007895(n)]]` -/
def P3426148358394680469.Spec : Prop :=
  ∀ n, (P3426148358394680469.a n : ℤ) = A182571 (n + 1)

end A182571

/-! ## A182571.P8021039587596530407

`eq[A005127(n)², A007895(n)]`
-/

namespace A182571.P8021039587596530407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182571.P8021039587596530407

namespace A182571

/-- `eq[A005127(n)², A007895(n)]` -/
def P8021039587596530407.Spec : Prop :=
  ∀ n, (P8021039587596530407.a n : ℤ) = A182571 (n + 1)

end A182571

/-!
# A182572: Primes that have five terms in their Zeckendorf representation.

The programs for A182572, the canonical program `A182572.P9032645758922252144` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182572 has offset 1).

The definition of A182572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182572.P9032645758922252144

`A065091(eq[5, A182535(n+1)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A182572

/-- `A065091(eq[5, A182535(n+1)])` -/
def P9032645758922252144.Spec : Prop :=
  ∀ n, P9032645758922252144.a n = A182572 (n + 1)

theorem P9032645758922252144.correct : P9032645758922252144.Spec := by
  intro n
  simp only [A182572, Nat.add_sub_cancel]

end A182572

/-! ## A182572.P7087398130429827447

`p?[A179245(n+1)]`
-/

namespace A182572.P7087398130429827447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182572.P7087398130429827447

namespace A182572

/-- `p?[A179245(n+1)]` -/
def P7087398130429827447.Spec : Prop :=
  ∀ n, P7087398130429827447.a n = A182572 (n + 1)

end A182572

/-! ## A182572.P7175209478321081118

`p?[record[A179245(A291766(n))]]`
-/

namespace A182572.P7175209478321081118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182572.P7175209478321081118

namespace A182572

/-- `p?[record[A179245(A291766(n))]]` -/
def P7175209478321081118.Spec : Prop :=
  ∀ n, P7175209478321081118.a n = A182572 (n + 1)

end A182572

/-! ## A182572.P8067044865351443588

`filter[A179245(n+1), A010051(#)]`
-/

namespace A182572.P8067044865351443588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A182572.P8067044865351443588

namespace A182572

/-- `filter[A179245(n+1), A010051(#)]` -/
def P8067044865351443588.Spec : Prop :=
  ∀ n, P8067044865351443588.a n = A182572 (n + 1)

end A182572

/-! ## A182572.P18047289841267556800

`∩[A000040(n+1), A179245(n+1)]`
-/

namespace A182572.P18047289841267556800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P18047289841267556800

namespace A182572

/-- `∩[A000040(n+1), A179245(n+1)]` -/
def P18047289841267556800.Spec : Prop :=
  ∀ n, (P18047289841267556800.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P967515832958686799

`∩[A004139(n+1), A179245(n+1)]`
-/

namespace A182572.P967515832958686799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P967515832958686799

namespace A182572

/-- `∩[A004139(n+1), A179245(n+1)]` -/
def P967515832958686799.Spec : Prop :=
  ∀ n, (P967515832958686799.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P5326683578913954424

`∩[A006005(n+1), A179245(n+1)]`
-/

namespace A182572.P5326683578913954424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P5326683578913954424

namespace A182572

/-- `∩[A006005(n+1), A179245(n+1)]` -/
def P5326683578913954424.Spec : Prop :=
  ∀ n, (P5326683578913954424.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P8278469857427999499

`∩[A008578(n+1), A179245(n+1)]`
-/

namespace A182572.P8278469857427999499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P8278469857427999499

namespace A182572

/-- `∩[A008578(n+1), A179245(n+1)]` -/
def P8278469857427999499.Spec : Prop :=
  ∀ n, (P8278469857427999499.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P4641064293428220022

`∩[A033946(n+1), A179245(n+1)]`
-/

namespace A182572.P4641064293428220022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P4641064293428220022

namespace A182572

/-- `∩[A033946(n+1), A179245(n+1)]` -/
def P4641064293428220022.Spec : Prop :=
  ∀ n, (P4641064293428220022.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P16288950667796556183

`∩[A045319(n+1), A179245(n+1)]`
-/

namespace A182572.P16288950667796556183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P16288950667796556183

namespace A182572

/-- `∩[A045319(n+1), A179245(n+1)]` -/
def P16288950667796556183.Spec : Prop :=
  ∀ n, (P16288950667796556183.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P12372294348060253661

`∩[A045344(n+1), A179245(n+1)]`
-/

namespace A182572.P12372294348060253661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P12372294348060253661

namespace A182572

/-- `∩[A045344(n+1), A179245(n+1)]` -/
def P12372294348060253661.Spec : Prop :=
  ∀ n, (P12372294348060253661.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P6682492424092898592

`∩[A046022(n+1), A179245(n+1)]`
-/

namespace A182572.P6682492424092898592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P6682492424092898592

namespace A182572

/-- `∩[A046022(n+1), A179245(n+1)]` -/
def P6682492424092898592.Spec : Prop :=
  ∀ n, (P6682492424092898592.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P15569461360187855211

`∩[A051948(n+1), A179245(n+1)]`
-/

namespace A182572.P15569461360187855211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P15569461360187855211

namespace A182572

/-- `∩[A051948(n+1), A179245(n+1)]` -/
def P15569461360187855211.Spec : Prop :=
  ∀ n, (P15569461360187855211.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P12764936325101742118

`∩[A060634(n+1), A179245(n+1)]`
-/

namespace A182572.P12764936325101742118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P12764936325101742118

namespace A182572

/-- `∩[A060634(n+1), A179245(n+1)]` -/
def P12764936325101742118.Spec : Prop :=
  ∀ n, (P12764936325101742118.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P18188397917510342315

`∩[A062972(n+1), A179245(n+1)]`
-/

namespace A182572.P18188397917510342315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P18188397917510342315

namespace A182572

/-- `∩[A062972(n+1), A179245(n+1)]` -/
def P18188397917510342315.Spec : Prop :=
  ∀ n, (P18188397917510342315.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P16021444109971275559

`∩[A065091(n+1), A179245(n+1)]`
-/

namespace A182572.P16021444109971275559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P16021444109971275559

namespace A182572

/-- `∩[A065091(n+1), A179245(n+1)]` -/
def P16021444109971275559.Spec : Prop :=
  ∀ n, (P16021444109971275559.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P5489003237291220571

`∩[A066050(n+1), A179245(n+1)]`
-/

namespace A182572.P5489003237291220571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P5489003237291220571

namespace A182572

/-- `∩[A066050(n+1), A179245(n+1)]` -/
def P5489003237291220571.Spec : Prop :=
  ∀ n, (P5489003237291220571.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P9353727463791437489

`∩[A067126(n+1), A179245(n+1)]`
-/

namespace A182572.P9353727463791437489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P9353727463791437489

namespace A182572

/-- `∩[A067126(n+1), A179245(n+1)]` -/
def P9353727463791437489.Spec : Prop :=
  ∀ n, (P9353727463791437489.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P17539465618438997507

`∩[A071621(n+1), A179245(n+1)]`
-/

namespace A182572.P17539465618438997507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182572.P17539465618438997507

namespace A182572

/-- `∩[A071621(n+1), A179245(n+1)]` -/
def P17539465618438997507.Spec : Prop :=
  ∀ n, (P17539465618438997507.a n : ℤ) = A182572 (n + 1)

end A182572

/-! ## A182572.P14257484446726314638

`p?[record[A179245(A133310(n))]]`
-/

namespace A182572.P14257484446726314638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179245 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182572.P14257484446726314638

namespace A182572

/-- `p?[record[A179245(A133310(n))]]` -/
def P14257484446726314638.Spec : Prop :=
  ∀ n, P14257484446726314638.a n = A182572 (n + 1)

end A182572

/-!
# A182573: Primes that have six terms in their Zeckendorf representation.

The programs for A182573, there is no canonical definition to state claims against.
-/

/-! ## A182573.P5918960086886475028

`p?[A179246(n+1)]`
-/

namespace A182573.P5918960086886475028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182573.P5918960086886475028

/-! ## A182573.P13290518038893216857

`p?[record[A179246(A291766(n))]]`
-/

namespace A182573.P13290518038893216857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182573.P13290518038893216857

/-! ## A182573.P1805784070294767808

`p?[record[A179246(A324347(n))]]`
-/

namespace A182573.P1805784070294767808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182573.P1805784070294767808

/-! ## A182573.P5226215226958483486

`record[A006530(A179246(n+5))]`
-/

namespace A182573.P5226215226958483486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A179246 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182573.P5226215226958483486

/-! ## A182573.P5806354885521221833

`filter[A179246(n+1), A010051(#)]`
-/

namespace A182573.P5806354885521221833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A182573.P5806354885521221833

/-! ## A182573.P17141973280615185778

`filter[A179246(n+1), A323152(#)]`
-/

namespace A182573.P17141973280615185778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A182573.P17141973280615185778

/-! ## A182573.P131086727848918724

`filter[A179246(n+1), A323153(#)]`
-/

namespace A182573.P131086727848918724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A182573.P131086727848918724

/-! ## A182573.P4301100086110759341

`∩[A000040(n+1), A179246(n+1)]`
-/

namespace A182573.P4301100086110759341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P4301100086110759341

/-! ## A182573.P11378152025197564744

`∩[A004139(n+1), A179246(n+1)]`
-/

namespace A182573.P11378152025197564744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P11378152025197564744

/-! ## A182573.P12568087561559758319

`∩[A006005(n+1), A179246(n+1)]`
-/

namespace A182573.P12568087561559758319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P12568087561559758319

/-! ## A182573.P12717129632788512425

`∩[A008578(n+1), A179246(n+1)]`
-/

namespace A182573.P12717129632788512425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P12717129632788512425

/-! ## A182573.P365008585728771247

`∩[A033946(n+1), A179246(n+1)]`
-/

namespace A182573.P365008585728771247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P365008585728771247

/-! ## A182573.P1270632383981439714

`∩[A045319(n+1), A179246(n+1)]`
-/

namespace A182573.P1270632383981439714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P1270632383981439714

/-! ## A182573.P15142419692637701251

`∩[A045344(n+1), A179246(n+1)]`
-/

namespace A182573.P15142419692637701251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P15142419692637701251

/-! ## A182573.P9917536477569761711

`∩[A046022(n+1), A179246(n+1)]`
-/

namespace A182573.P9917536477569761711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P9917536477569761711

/-! ## A182573.P12533605300107123121

`∩[A051948(n+1), A179246(n+1)]`
-/

namespace A182573.P12533605300107123121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P12533605300107123121

/-! ## A182573.P14337092241534623596

`∩[A053140(n+1), A179246(n+1)]`
-/

namespace A182573.P14337092241534623596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P14337092241534623596

/-! ## A182573.P8160370347529062539

`∩[A053813(n+1), A179246(n+1)]`
-/

namespace A182573.P8160370347529062539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P8160370347529062539

/-! ## A182573.P15955708337799992241

`∩[A060634(n+1), A179246(n+1)]`
-/

namespace A182573.P15955708337799992241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P15955708337799992241

/-! ## A182573.P10059932217272523550

`∩[A062972(n+1), A179246(n+1)]`
-/

namespace A182573.P10059932217272523550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182573.P10059932217272523550

/-!
# A182574: Primes that have seven terms in their Zeckendorf representation.

The programs for A182574, there is no canonical definition to state claims against.
-/

/-! ## A182574.P1266815466643843083

`p?[A179247(n+1)]`
-/

namespace A182574.P1266815466643843083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182574.P1266815466643843083

/-! ## A182574.P9676951472457984944

`or(1, p?[A179247(n-log2(1/2))])`
-/

namespace A182574.P9676951472457984944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179247 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A182574.P9676951472457984944

/-! ## A182574.P11957324255537029691

`record[p?[A179247(A116966(n))]]`
-/

namespace A182574.P11957324255537029691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179247 (A116966 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182574.P11957324255537029691

/-! ## A182574.P4623966251090763510

`record[p?[A179247(A263449(n))]]`
-/

namespace A182574.P4623966251090763510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179247 (A263449 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182574.P4623966251090763510

/-! ## A182574.P16474616084901617605

`p?[A048680(A023689(n+1))]`
-/

namespace A182574.P16474616084901617605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A023689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182574.P16474616084901617605

/-!
# A182575: Primes with equal number of 1's and 0's in their representation in base of Fibonacci numbers (A014417).

The programs for A182575, there is no canonical definition to state claims against.
-/

/-! ## A182575.P10052611819741863668

`p?[A210619(n+1)]`
-/

namespace A182575.P10052611819741863668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182575.P10052611819741863668

/-! ## A182575.P10340213524173562644

`p?[record[A210619(A052938(n))]]`
-/

namespace A182575.P10340213524173562644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210619 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182575.P10340213524173562644

/-! ## A182575.P3843608825936559596

`p?[record[A210619(A133310(n))]]`
-/

namespace A182575.P3843608825936559596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210619 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182575.P3843608825936559596

/-! ## A182575.P5979101493145453852

`p?[record[A210619(A263131(n))]]`
-/

namespace A182575.P5979101493145453852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210619 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182575.P5979101493145453852

/-! ## A182575.P1491723205966930265

`p?[record[A210619(A291769(n))]]`
-/

namespace A182575.P1491723205966930265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210619 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182575.P1491723205966930265

/-!
# A182576: Number of 1's in the Zeckendorf representation of n^2.

The programs for A182576, the canonical program `A182576.P13232943474279536911` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182576 has offset 0).

The definition of A182576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182576.P13232943474279536911

`ceil(A104324(n²)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A182576

/-- `ceil(A104324(n²)/2)` -/
def P13232943474279536911.Spec : Prop :=
  ∀ n, P13232943474279536911.a n = A182576 n

theorem P13232943474279536911.correct : P13232943474279536911.Spec := by
  intro n
  simp only [A182576]

end A182576

/-! ## A182576.P4994450560102552036

`round(A104324(n^2)/2)`
-/

namespace A182576.P4994450560102552036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104324 (n ^ 2) : ℚ) / 2)

end

end A182576.P4994450560102552036

namespace A182576

/-- `round(A104324(n^2)/2)` -/
def P4994450560102552036.Spec : Prop :=
  ∀ n, P4994450560102552036.a n = A182576 n

end A182576

/-! ## A182576.P4999574477544277738

`A110654(A104324(n²))`
-/

namespace A182576.P4999574477544277738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A104324 (n ^ 2)).toNat

end

end A182576.P4999574477544277738

namespace A182576

/-- `A110654(A104324(n²))` -/
def P4999574477544277738.Spec : Prop :=
  ∀ n, P4999574477544277738.a n = A182576 n

end A182576

/-! ## A182576.P14883099409116284934

`A004526(A104324(n²)+1)`
-/

namespace A182576.P14883099409116284934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A104324 (n ^ 2) + 1).toNat

end

end A182576.P14883099409116284934

namespace A182576

/-- `A004526(A104324(n²)+1)` -/
def P14883099409116284934.Spec : Prop :=
  ∀ n, P14883099409116284934.a n = A182576 n

end A182576

/-! ## A182576.P13425439047076903867

`A028242(xor(1, A104324(n²)))`
-/

namespace A182576.P13425439047076903867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A104324 (n ^ 2))).toNat

end

end A182576.P13425439047076903867

namespace A182576

/-- `A028242(xor(1, A104324(n²)))` -/
def P13425439047076903867.Spec : Prop :=
  ∀ n, P13425439047076903867.a n = A182576 n

end A182576

/-! ## A182576.P11599222811104164902

`round(A104324(n²)/2)%A000124(n)`
-/

namespace A182576.P11599222811104164902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A104324 (n ^ 2) : ℚ) / 2)) (A000124 n)

end

end A182576.P11599222811104164902

namespace A182576

/-- `round(A104324(n²)/2)%A000124(n)` -/
def P11599222811104164902.Spec : Prop :=
  ∀ n, P11599222811104164902.a n = A182576 n

end A182576

/-! ## A182576.P13418551928835751957

`A007318(C(2, n))*round(A104324(n²)/2)`
-/

namespace A182576.P13418551928835751957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A104324 (n ^ 2) : ℚ) / 2)

end

end A182576.P13418551928835751957

namespace A182576

/-- `A007318(C(2, n))*round(A104324(n²)/2)` -/
def P13418551928835751957.Spec : Prop :=
  ∀ n, P13418551928835751957.a n = A182576 n

end A182576

/-! ## A182576.P1017205959537668265

`round(A104324(n²)/2)*A014963(4*n+2)`
-/

namespace A182576.P1017205959537668265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104324 (n ^ 2) : ℚ) / 2) * A014963 (4 * n + 2)

end

end A182576.P1017205959537668265

namespace A182576

/-- `round(A104324(n²)/2)*A014963(4*n+2)` -/
def P1017205959537668265.Spec : Prop :=
  ∀ n, P1017205959537668265.a n = A182576 n

end A182576

/-! ## A182576.P10864437574043090449

`A007895(n²)`
-/

namespace A182576.P10864437574043090449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n ^ 2)

end

end A182576.P10864437574043090449

namespace A182576

/-- `A007895(n²)` -/
def P10864437574043090449.Spec : Prop :=
  ∀ n, P10864437574043090449.a n = A182576 n

end A182576

/-! ## A182576.P9498276017224746020

`dr(A014417(n²))`
-/

namespace A182576.P9498276017224746020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 (n ^ 2))

end

end A182576.P9498276017224746020

namespace A182576

/-- `dr(A014417(n²))` -/
def P9498276017224746020.Spec : Prop :=
  ∀ n, (P9498276017224746020.a n : ℤ) = A182576 n

end A182576

/-! ## A182576.P4171641499314750998

`dr(A007895(n^2))`
-/

namespace A182576.P4171641499314750998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007895 (n ^ 2))

end

end A182576.P4171641499314750998

namespace A182576

/-- `dr(A007895(n^2))` -/
def P4171641499314750998.Spec : Prop :=
  ∀ n, (P4171641499314750998.a n : ℤ) = A182576 n

end A182576

/-! ## A182576.P9040481572304400866

`n²-A219641(n²)`
-/

namespace A182576.P9040481572304400866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A219641 (n ^ 2)

end

end A182576.P9040481572304400866

namespace A182576

/-- `n²-A219641(n²)` -/
def P9040481572304400866.Spec : Prop :=
  ∀ n, P9040481572304400866.a n = A182576 n

end A182576

/-! ## A182576.P12476543220242736920

`A007895(A000290(n))%9`
-/

namespace A182576.P12476543220242736920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007895 (A000290 n).toNat) 9

end

end A182576.P12476543220242736920

namespace A182576

/-- `A007895(A000290(n))%9` -/
def P12476543220242736920.Spec : Prop :=
  ∀ n, P12476543220242736920.a n = A182576 n

end A182576

/-!
# A182579: Triangle read by rows: T(0,0) = 1, for n>0: T(n,n) = 2 and for k<=floor(n/2): T(n,2*k) = n/(n-k) * binomial(n-k,k), T(n,2*k+1) = (n-1)/(n-1-k) * binomial(n-1-k,k).

The programs for A182579, there is no canonical definition to state claims against.
-/

/-! ## A182579.P15733440137820503739

`A065941(n)+A129714(n)-A103631(n)`
-/

namespace A182579.P15733440137820503739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A129714 n - A103631 n)

end

end A182579.P15733440137820503739

/-! ## A182579.P8222031402886130750

`A219347(A198453(3*n+4)+n)`
-/

namespace A182579.P8222031402886130750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A198453 (3 * n + 4) + (n : ℤ)).toNat

end

end A182579.P8222031402886130750

/-! ## A182579.P2060616123735812975

`A181656(A294212(n))+A065941(n)`
-/

namespace A182579.P2060616123735812975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181656 (A294212 n).toNat + A065941 n

end

end A182579.P2060616123735812975

/-! ## A182579.P17248213180976217374

`gcd(A200370(n+1), A303337(A337886(n+2)))`
-/

namespace A182579.P17248213180976217374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A200370 (n + 1)) (A303337 (A337886 (n + 2)).toNat)

end

end A182579.P17248213180976217374

/-! ## A182579.P10014527319983490018

`A242442(A097607(n))`
-/

namespace A182579.P10014527319983490018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242442 (A097607 n).toNat

end

end A182579.P10014527319983490018

/-!
# A182581: (3-adic valuation of n), read mod 2.

The programs for A182581, the canonical program `A182581.P15975095684460395508` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182581 has offset 1).

The definition of A182581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182581.P15975095684460395508

`val(n+1, 3)%2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182581

/-- `val(n+1, 3)%2` -/
def P15975095684460395508.Spec : Prop :=
  ∀ n, (P15975095684460395508.a n : ℤ) = A182581 (n + 1)

theorem P15975095684460395508.correct : P15975095684460395508.Spec := by
  intro n
  simp only [A182581, Nat.add_sub_cancel]

end A182581

/-! ## A182581.P12413290020977051451

`A007949(n+1)%2`
-/

namespace A182581.P12413290020977051451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007949 (n + 1)) 2

end

end A182581.P12413290020977051451

namespace A182581

/-- `A007949(n+1)%2` -/
def P12413290020977051451.Spec : Prop :=
  ∀ n, P12413290020977051451.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P7063281675334382166

`and(1, val(n+1, 3))`
-/

namespace A182581.P7063281675334382166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 3)

end

end A182581.P7063281675334382166

namespace A182581

/-- `and(1, val(n+1, 3))` -/
def P7063281675334382166.Spec : Prop :=
  ∀ n, (P7063281675334382166.a n : ℤ) = A182581 (n + 1)

theorem P7063281675334382166.correct : P7063281675334382166.Spec := by
  intro n
  simp only [A182581, Nat.add_sub_cancel, A182581.P7063281675334382166.a, A182581.P15975095684460395508.a, SequenceMachineLib.memo_apply]
  try simp

end A182581

/-! ## A182581.P6206053130322557515

`2-gcd(2, val(n+1, 3))`
-/

namespace A182581.P6206053130322557515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 3) : ℤ)

end

end A182581.P6206053130322557515

namespace A182581

/-- `2-gcd(2, val(n+1, 3))` -/
def P6206053130322557515.Spec : Prop :=
  ∀ n, P6206053130322557515.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P5871803483982540656

`val(val(n+1, 3)²+1, 2)`
-/

namespace A182581.P5871803483982540656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (n + 1) 3 ^ 2 + 1) 2

end

end A182581.P5871803483982540656

namespace A182581

/-- `val(val(n+1, 3)²+1, 2)` -/
def P5871803483982540656.Spec : Prop :=
  ∀ n, (P5871803483982540656.a n : ℤ) = A182581 (n + 1)

end A182581

/-! ## A182581.P4202192187844866329

`or(-2, val(n+1, 3))+2`
-/

namespace A182581.P4202192187844866329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-2) (SequenceMachineLib.valuation (n + 1) 3 : ℤ) + 2

end

end A182581.P4202192187844866329

namespace A182581

/-- `or(-2, val(n+1, 3))+2` -/
def P4202192187844866329.Spec : Prop :=
  ∀ n, P4202192187844866329.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P8055443532118221542

`and(1, -val(2*n-(n-1), 3))`
-/

namespace A182581.P8055443532118221542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 3 : ℤ))

end

end A182581.P8055443532118221542

namespace A182581

/-- `and(1, -val(2*n-(n-1), 3))` -/
def P8055443532118221542.Spec : Prop :=
  ∀ n, P8055443532118221542.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P17824848618650066057

`and(1, val(2*n-(n-1), 3)²)`
-/

namespace A182581.P17824848618650066057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 3 ^ 2)

end

end A182581.P17824848618650066057

namespace A182581

/-- `and(1, val(2*n-(n-1), 3)²)` -/
def P17824848618650066057.Spec : Prop :=
  ∀ n, (P17824848618650066057.a n : ℤ) = A182581 (n + 1)

end A182581

/-! ## A182581.P9228075724408281379

`val(A364900(n), 3)`
-/

namespace A182581.P9228075724408281379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A364900 n).toNat 3

end

end A182581.P9228075724408281379

namespace A182581

/-- `val(A364900(n), 3)` -/
def P9228075724408281379.Spec : Prop :=
  ∀ n, (P9228075724408281379.a n : ℤ) = A182581 (n + 1)

end A182581

/-! ## A182581.P16507347348675494524

`abs(Δ[A163529(n)])`
-/

namespace A182581.P16507347348675494524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182581.P16507347348675494524

namespace A182581

/-- `abs(Δ[A163529(n)])` -/
def P16507347348675494524.Spec : Prop :=
  ∀ n, P16507347348675494524.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P5310740923547648675

`abs(A163533(n+1))`
-/

namespace A182581.P5310740923547648675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163533 (n + 1)|

end

end A182581.P5310740923547648675

namespace A182581

/-- `abs(A163533(n+1))` -/
def P5310740923547648675.Spec : Prop :=
  ∀ n, P5310740923547648675.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P11753881255801225734

`and(1, Δ[A054861(n)])`
-/

namespace A182581.P11753881255801225734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A182581.P11753881255801225734

namespace A182581

/-- `and(1, Δ[A054861(n)])` -/
def P11753881255801225734.Spec : Prop :=
  ∀ n, P11753881255801225734.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P15922869019934547146

`1-A014578(n+1)`
-/

namespace A182581.P15922869019934547146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014578 (n + 1)

end

end A182581.P15922869019934547146

namespace A182581

/-- `1-A014578(n+1)` -/
def P15922869019934547146.Spec : Prop :=
  ∀ n, P15922869019934547146.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P5688151447283490526

`A014578(3*(n+1))`
-/

namespace A182581.P5688151447283490526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (3 * (n + 1))

end

end A182581.P5688151447283490526

namespace A182581

/-- `A014578(3*(n+1))` -/
def P5688151447283490526.Spec : Prop :=
  ∀ n, P5688151447283490526.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P5827086035224779536

`A088838(n+1)%2`
-/

namespace A182581.P5827086035224779536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088838 (n + 1)) 2

end

end A182581.P5827086035224779536

namespace A182581

/-- `A088838(n+1)%2` -/
def P5827086035224779536.Spec : Prop :=
  ∀ n, P5827086035224779536.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P16194661456958597535

`A163534(n+1)%2`
-/

namespace A182581.P16194661456958597535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163534 (n + 1)) 2

end

end A182581.P16194661456958597535

namespace A182581

/-- `A163534(n+1)%2` -/
def P16194661456958597535.Spec : Prop :=
  ∀ n, P16194661456958597535.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P13014801695067227785

`A246920(n+1)%2`
-/

namespace A182581.P13014801695067227785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246920 (n + 1)) 2

end

end A182581.P13014801695067227785

namespace A182581

/-- `A246920(n+1)%2` -/
def P13014801695067227785.Spec : Prop :=
  ∀ n, P13014801695067227785.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P12606010849863364685

`A366922(n+1)%2`
-/

namespace A182581.P12606010849863364685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366922 (n + 1)) 2

end

end A182581.P12606010849863364685

namespace A182581

/-- `A366922(n+1)%2` -/
def P12606010849863364685.Spec : Prop :=
  ∀ n, P12606010849863364685.a n = A182581 (n + 1)

end A182581

/-! ## A182581.P1991730891180318582

`A371638(n+1)%2`
-/

namespace A182581.P1991730891180318582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371638 (n + 1)) 2

end

end A182581.P1991730891180318582

namespace A182581

/-- `A371638(n+1)%2` -/
def P1991730891180318582.Spec : Prop :=
  ∀ n, P1991730891180318582.a n = A182581 (n + 1)

end A182581

/-!
# A182582: a(n) = (A096268(n-1) + A182581(n)) mod 2.

The programs for A182582, the canonical program `A182582.P13784820974145358773` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182582 has offset 1).

The definition of A182582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182582.P315010159301156386

`(val(n+1, 2)+val(n+1, 3))%2`
-/

namespace A182582.P315010159301156386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + SequenceMachineLib.valuation (n + 1) 3) % 2

end

end A182582.P315010159301156386

namespace A182582

/-- `(val(n+1, 2)+val(n+1, 3))%2` -/
def P315010159301156386.Spec : Prop :=
  ∀ n, (P315010159301156386.a n : ℤ) = A182582 (n + 1)

end A182582

/-! ## A182582.P17036911180797299518

`A000035(A169611(n+1))`
-/

namespace A182582.P17036911180797299518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A169611 (n + 1)).toNat

end

end A182582.P17036911180797299518

namespace A182582

/-- `A000035(A169611(n+1))` -/
def P17036911180797299518.Spec : Prop :=
  ∀ n, P17036911180797299518.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P13784820974145358773

`(A096268(n)+A182581(n+1))%2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A182582

/-- `(A096268(n)+A182581(n+1))%2` -/
def P13784820974145358773.Spec : Prop :=
  ∀ n, P13784820974145358773.a n = A182582 (n + 1)

theorem P13784820974145358773.correct : P13784820974145358773.Spec := by
  intro n
  simp only [A182582, Nat.add_sub_cancel]

end A182582

/-! ## A182582.P2853272872599928934

`A000035(A007814(n+1)+A007949(n+1))`
-/

namespace A182582.P2853272872599928934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007814 (n + 1) + A007949 (n + 1)).toNat

end

end A182582.P2853272872599928934

namespace A182582

/-- `A000035(A007814(n+1)+A007949(n+1))` -/
def P2853272872599928934.Spec : Prop :=
  ∀ n, P2853272872599928934.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P8820555870705745370

`∑{p}[n+7, val(n+1, #)]%2`
-/

namespace A182582.P8820555870705745370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p) % 2

end

end A182582.P8820555870705745370

namespace A182582

/-- `∑{p}[n+7, val(n+1, #)]%2` -/
def P8820555870705745370.Spec : Prop :=
  ∀ n, (P8820555870705745370.a n : ℤ) = A182582 (n + 1)

end A182582

/-! ## A182582.P3792456682832689189

`and(1, ∑{p}[n+7, val(n+1, #)])`
-/

namespace A182582.P3792456682832689189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A182582.P3792456682832689189

namespace A182582

/-- `and(1, ∑{p}[n+7, val(n+1, #)])` -/
def P3792456682832689189.Spec : Prop :=
  ∀ n, (P3792456682832689189.a n : ℤ) = A182582 (n + 1)

end A182582

/-! ## A182582.P9065595937504816069

`and(1, val(n+1, 2)+val(n+1, 3))`
-/

namespace A182582.P9065595937504816069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2 + SequenceMachineLib.valuation (n + 1) 3)

end

end A182582.P9065595937504816069

namespace A182582

/-- `and(1, val(n+1, 2)+val(n+1, 3))` -/
def P9065595937504816069.Spec : Prop :=
  ∀ n, (P9065595937504816069.a n : ℤ) = A182582 (n + 1)

end A182582

/-! ## A182582.P5578354178855833349

`1-A373136(n+1)`
-/

namespace A182582.P5578354178855833349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A373136 (n + 1)

end

end A182582.P5578354178855833349

namespace A182582

/-- `1-A373136(n+1)` -/
def P5578354178855833349.Spec : Prop :=
  ∀ n, P5578354178855833349.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P7969171983329042080

`A373136(2*(n+1))`
-/

namespace A182582.P7969171983329042080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373136 (2 * (n + 1))

end

end A182582.P7969171983329042080

namespace A182582

/-- `A373136(2*(n+1))` -/
def P7969171983329042080.Spec : Prop :=
  ∀ n, P7969171983329042080.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P5285980336727270366

`A066829(A065331(n+1))`
-/

namespace A182582.P5285980336727270366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A065331 (n + 1)).toNat

end

end A182582.P5285980336727270366

namespace A182582

/-- `A066829(A065331(n+1))` -/
def P5285980336727270366.Spec : Prop :=
  ∀ n, P5285980336727270366.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P6609504598823643439

`A066829(A102440(n+1))`
-/

namespace A182582.P6609504598823643439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A102440 (n + 1)).toNat

end

end A182582.P6609504598823643439

namespace A182582

/-- `A066829(A102440(n+1))` -/
def P6609504598823643439.Spec : Prop :=
  ∀ n, P6609504598823643439.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P17426265156438378980

`A182581(A334747(n+1))`
-/

namespace A182582.P17426265156438378980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (A334747 (n + 1)).toNat

end

end A182582.P17426265156438378980

namespace A182582

/-- `A182581(A334747(n+1))` -/
def P17426265156438378980.Spec : Prop :=
  ∀ n, P17426265156438378980.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P10133756172772846621

`A292077(A355582(n+1))`
-/

namespace A182582.P10133756172772846621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (A355582 (n + 1)).toNat

end

end A182582.P10133756172772846621

namespace A182582

/-- `A292077(A355582(n+1))` -/
def P10133756172772846621.Spec : Prop :=
  ∀ n, P10133756172772846621.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P3193032140556260504

`A096268(A169611(n+1)²)`
-/

namespace A182582.P3193032140556260504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A169611 (n + 1) ^ 2).toNat

end

end A182582.P3193032140556260504

namespace A182582

/-- `A096268(A169611(n+1)²)` -/
def P3193032140556260504.Spec : Prop :=
  ∀ n, P3193032140556260504.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P8434453222827730424

`A059841(A169611(n+1)+1)`
-/

namespace A182582.P8434453222827730424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A169611 (n + 1) + 1).toNat

end

end A182582.P8434453222827730424

namespace A182582

/-- `A059841(A169611(n+1)+1)` -/
def P8434453222827730424.Spec : Prop :=
  ∀ n, P8434453222827730424.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P668831481764436631

`1-A035263(A079707(n+1))`
-/

namespace A182582.P668831481764436631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (A079707 (n + 1)).toNat

end

end A182582.P668831481764436631

namespace A182582

/-- `1-A035263(A079707(n+1))` -/
def P668831481764436631.Spec : Prop :=
  ∀ n, P668831481764436631.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P13178396538620959757

`A035263(2*A079707(n+1))`
-/

namespace A182582.P13178396538620959757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * A079707 (n + 1)).toNat

end

end A182582.P13178396538620959757

namespace A182582

/-- `A035263(2*A079707(n+1))` -/
def P13178396538620959757.Spec : Prop :=
  ∀ n, P13178396538620959757.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P9596361545811350164

`A065043(2*A065331(n+1))`
-/

namespace A182582.P9596361545811350164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * A065331 (n + 1)).toNat

end

end A182582.P9596361545811350164

namespace A182582

/-- `A065043(2*A065331(n+1))` -/
def P9596361545811350164.Spec : Prop :=
  ∀ n, P9596361545811350164.a n = A182582 (n + 1)

end A182582

/-! ## A182582.P8337918327703605725

`A065043(2*A102440(n+1))`
-/

namespace A182582.P8337918327703605725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * A102440 (n + 1)).toNat

end

end A182582.P8337918327703605725

namespace A182582

/-- `A065043(2*A102440(n+1))` -/
def P8337918327703605725.Spec : Prop :=
  ∀ n, P8337918327703605725.a n = A182582 (n + 1)

end A182582

/-!
# A182583: Primes p such that (5p^2-1)/4 is also prime.

The programs for A182583, there is no canonical definition to state claims against.
-/

/-! ## A182583.P3164805804698497118

`2*A104012(n+1)+1`
-/

namespace A182583.P3164805804698497118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104012 (n + 1) + 1

end

end A182583.P3164805804698497118

/-! ## A182583.P6093728583082591274

`A151800(2*A104012(n+1))`
-/

namespace A182583.P6093728583082591274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A104012 (n + 1)).toNat

end

end A182583.P6093728583082591274

/-! ## A182583.P1400946623176413531

`A151800(A104012(n+1)+A104012(n+1))`
-/

namespace A182583.P1400946623176413531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A104012 (n + 1) + A104012 (n + 1)).toNat

end

end A182583.P1400946623176413531

/-! ## A182583.P1648053510643994070

`A020639(A104012(n+1)+A104012(n+1)+1)`
-/

namespace A182583.P1648053510643994070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104012 (n + 1) + (A104012 (n + 1) + 1)).toNat

end

end A182583.P1648053510643994070

/-! ## A182583.P17564884876061678382

`A000010(A104012(n+1)+A104012(n+1)+1)+1`
-/

namespace A182583.P17564884876061678382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104012 (n + 1) + A104012 (n + 1) + 1).toNat + 1

end

end A182583.P17564884876061678382

/-! ## A182583.P4868458029266835386

`p?[2*A090563(n+1)+1]`
-/

namespace A182583.P4868458029266835386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090563 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182583.P4868458029266835386

/-! ## A182583.P12716142251247699286

`A037287(A104012(n+1))`
-/

namespace A182583.P12716142251247699286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037287 (A104012 (n + 1)).toNat

end

end A182583.P12716142251247699286

/-! ## A182583.P4931855765275681493

`A080512(A104012(n+1)+A104012(n+1)+1)`
-/

namespace A182583.P4931855765275681493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A104012 (n + 1) + (A104012 (n + 1) + 1)).toNat

end

end A182583.P4931855765275681493

/-!
# A182584: Central terms of the triangle A182579.

The programs for A182584, the canonical program `A182584.P10431393163449915345` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182584 has offset 0).

The definition of A182584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182584.P10431393163449915345

`A034807(A174114(n+1)-char[A034807(n)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A182584

/-- `A034807(A174114(n+1)-char[A034807(n)])` -/
def P10431393163449915345.Spec : Prop :=
  ∀ n, P10431393163449915345.a n = A182584 n

theorem P10431393163449915345.correct : P10431393163449915345.Spec := by
  intro n
  simp only [A182584]

end A182584

/-! ## A182584.P17084610823210849359

`A135226(A210981(n))`
-/

namespace A182584.P17084610823210849359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 (A210981 n).toNat

end

end A182584.P17084610823210849359

namespace A182584

/-- `A135226(A210981(n))` -/
def P17084610823210849359.Spec : Prop :=
  ∀ n, P17084610823210849359.a n = A182584 n

end A182584

/-! ## A182584.P4477627287602805277

`A029653(A000217(A032766(n))+n)`
-/

namespace A182584.P4477627287602805277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A000217 (A032766 n).toNat + (n : ℤ)).toNat

end

end A182584.P4477627287602805277

namespace A182584

/-- `A029653(A000217(A032766(n))+n)` -/
def P4477627287602805277.Spec : Prop :=
  ∀ n, P4477627287602805277.a n = A182584 n

end A182584

/-! ## A182584.P3887247980056225073

`A182579(∑[4*n])`
-/

namespace A182584.P3887247980056225073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182584.P3887247980056225073

namespace A182584

/-- `A182579(∑[4*n])` -/
def P3887247980056225073.Spec : Prop :=
  ∀ n, P3887247980056225073.a n = A182584 n

end A182584

/-! ## A182584.P4619189540011468108

`A182579(A046092(n))%A001348(n+1)`
-/

namespace A182584.P4619189540011468108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182579 (A046092 n).toNat) (A001348 (n + 1))

end

end A182584.P4619189540011468108

namespace A182584

/-- `A182579(A046092(n))%A001348(n+1)` -/
def P4619189540011468108.Spec : Prop :=
  ∀ n, P4619189540011468108.a n = A182584 n

end A182584

/-!
# A182585: Markov numbers that are semiprime.

The programs for A182585, there is no canonical definition to state claims against.
-/

/-! ## A182585.P5348604294406112921

`filter[A002559(n+1), A064911(#)]`
-/

namespace A182585.P5348604294406112921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A182585.P5348604294406112921

/-! ## A182585.P9337768250263796990

`filter[A256395(n+1), A064911(#)]`
-/

namespace A182585.P9337768250263796990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A182585.P9337768250263796990

/-! ## A182585.P75485915248423630

`filter[A256395(n+1), A065043(#)]`
-/

namespace A182585.P75485915248423630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A182585.P75485915248423630

/-! ## A182585.P4404929403666101135

`filter[A256395(n+1), A101040(#)]`
-/

namespace A182585.P4404929403666101135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A182585.P4404929403666101135

/-!
# A182589: Number of p-gons in cubic curve, where p = n-th prime.

The programs for A182589, there is no canonical definition to state claims against.
-/

/-! ## A182589.P2664525679042639549

`8*A200903(n+1)`
-/

namespace A182589.P2664525679042639549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A200903 (n + 1)

end

end A182589.P2664525679042639549

/-! ## A182589.P8377709260103135773

`lcm(8, A200903(A000027(n+1)))`
-/

namespace A182589.P8377709260103135773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A200903 (A000027 (n + 1)).toNat)

end

end A182589.P8377709260103135773

/-! ## A182589.P670219583351128990

`8*A092431(A006093(n+1))/Δ[A007504(n)]`
-/

namespace A182589.P670219583351128990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A092431 (A006093 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A182589.P670219583351128990

/-! ## A182589.P12314968561345199182

`8*A092431(A006093(n+1))/p?[A018252(n+1)-7]`
-/

namespace A182589.P12314968561345199182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A092431 (A006093 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A182589.P12314968561345199182

/-!
# A182590: Number of distinct prime factors of 2^n - 1 of the form k*n + 1.

The programs for A182590, there is no canonical definition to state claims against.
-/

/-! ## A182590.P11849726490318905644

`A115583(A026780(n+3)*A196493(n+1))`
-/

namespace A182590.P11849726490318905644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A026780 (n + 3) * A196493 (n + 1)).toNat

end

end A182590.P11849726490318905644

/-! ## A182590.P9907233825069092803

`A334184(A360556(3*n+2))+A080224(n+4)`
-/

namespace A182590.P9907233825069092803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334184 (A360556 (3 * n + 2)).toNat + A080224 (n + 4)

end

end A182590.P9907233825069092803

/-!
# A182591: Number of prime factors of form cn+1 for numbers 3^n-1.

The programs for A182591, there is no canonical definition to state claims against.
-/

/-! ## A182591.P13719351711273332940

`A091304(A009262(∑[A013609(n)]))`
-/

namespace A182591.P13719351711273332940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A009262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A182591.P13719351711273332940

/-! ## A182591.P7887289424114619323

`A379679(A301684(n)+8)`
-/

namespace A182591.P7887289424114619323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A301684 n + 8).toNat

end

end A182591.P7887289424114619323

/-! ## A182591.P1379696445369038422

`A001222(xor(A016777(n), A080610(n)))`
-/

namespace A182591.P1379696445369038422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A016777 n) (A080610 n)).toNat

end

end A182591.P1379696445369038422

/-! ## A182591.P12018539995449576392

`A246359(lcm(A020753(n+1), A048766(n)))`
-/

namespace A182591.P12018539995449576392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (Int.lcm (A020753 (n + 1)) (A048766 n))

end

end A182591.P12018539995449576392

/-! ## A182591.P15176483229017329734

`A122375(A326352(n)+A283067(n))`
-/

namespace A182591.P15176483229017329734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (A326352 n + A283067 n).toNat

end

end A182591.P15176483229017329734

/-!
# A182592: Number of prime factors of form cn+1 for numbers 5^n-1.

The programs for A182592, there is no canonical definition to state claims against.
-/

/-! ## A182592.P12594955715181419115

`A007302(A273798(∑[A028242(n)]))`
-/

namespace A182592.P12594955715181419115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A273798 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A182592.P12594955715181419115

/-! ## A182592.P7934824811051531817

`A275811(A301205(n)+A047171(n))`
-/

namespace A182592.P7934824811051531817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (A301205 n + A047171 n).toNat

end

end A182592.P7934824811051531817

/-! ## A182592.P16273517304580261656

`A334862(A291326(n+2))+A000002(A003242(n))`
-/

namespace A182592.P16273517304580261656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334862 (A291326 (n + 2)).toNat + A000002 (A003242 n).toNat

end

end A182592.P16273517304580261656

/-! ## A182592.P3217952314843869722

`A115092(A316147(n+2))`
-/

namespace A182592.P3217952314843869722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115092 (A316147 (n + 2)).toNat

end

end A182592.P3217952314843869722

/-! ## A182592.P10894645007493968824

`A001221(or(A001221(n+2), A239178(n+1)))`
-/

namespace A182592.P10894645007493968824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A001221 (n + 2)) (A239178 (n + 1))).toNat

end

end A182592.P10894645007493968824

/-!
# A182593: Number of prime factors of form c*n+1 for numbers 6^n-1.

The programs for A182593, there is no canonical definition to state claims against.
-/

/-! ## A182593.P661040378599588870

`A001221(xor(A267892(n+1), A268003(n+1)))`
-/

namespace A182593.P661040378599588870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A267892 (n + 1)) (A268003 (n + 1))).toNat

end

end A182593.P661040378599588870

/-! ## A182593.P17567765828195155745

`A001221(xor(15, A115389(n+4)))`
-/

namespace A182593.P17567765828195155745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor 15 (A115389 (n + 4))).toNat

end

end A182593.P17567765828195155745

/-! ## A182593.P12755253428724570854

`∑{e}[xor(15, A115389(n+4)), A000010(#)]`
-/

namespace A182593.P12755253428724570854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 15 (A115389 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A182593.P12755253428724570854

/-! ## A182593.P3977146672334255404

`∑{e}[A000005(xor(15, A115389(n+4))), #]`
-/

namespace A182593.P3977146672334255404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor 15 (A115389 (n + 4))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A182593.P3977146672334255404

/-! ## A182593.P13916199128392066484

`∑{e}[xor(15, A115389(n+4)), A007318(#)]`
-/

namespace A182593.P13916199128392066484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 15 (A115389 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A182593.P13916199128392066484

/-!
# A182594: Number of prime factors of form c*n+1 for numbers 7^n-1, counted with multiplicity.

The programs for A182594, there is no canonical definition to state claims against.
-/

/-! ## A182594.P16090489365065255738

`A001222(A233217(n+1)+A000055(n))`
-/

namespace A182594.P16090489365065255738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A233217 (n + 1) + A000055 n).toNat

end

end A182594.P16090489365065255738

/-! ## A182594.P17557314327072274353

`A037180(A356637(A000265(A292266(2*n))))`
-/

namespace A182594.P17557314327072274353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037180 (A356637 (A000265 (A292266 (2 * n)).toNat).toNat).toNat

end

end A182594.P17557314327072274353

/-! ## A182594.P5338982269825294649

`A001222(∑[A129761(A056469(n))])`
-/

namespace A182594.P5338982269825294649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A056469 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182594.P5338982269825294649

/-! ## A182594.P13825029352900121748

`A285200(A284349(n)+A003188(n))`
-/

namespace A182594.P13825029352900121748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285200 (A284349 n + A003188 n).toNat

end

end A182594.P13825029352900121748

/-!
# A182595: Number of prime factors of form cn+1 for numbers 2^n+1.

The programs for A182595, there is no canonical definition to state claims against.
-/

/-! ## A182595.P119301070073917254

`A288864(A009936(n))+A025922(n)`
-/

namespace A182595.P119301070073917254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (A009936 n).toNat + A025922 n

end

end A182595.P119301070073917254

/-! ## A182595.P18350879110853248602

`A060128(A236506(2*n+3)+A185214(n))`
-/

namespace A182595.P18350879110853248602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A236506 (2 * n + 3) + A185214 n).toNat

end

end A182595.P18350879110853248602

/-! ## A182595.P3426183701606530911

`gcd(floor(floor(n/3)+1-n/4), A275281(A176452(2*n+1)))`
-/

namespace A182595.P3426183701606530911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(⌊(n : ℚ) / 3⌋ : ℚ) + (1 - (n : ℚ) / 4)⌋ (A275281 (A176452 (2 * n + 1)).toNat)

end

end A182595.P3426183701606530911

/-! ## A182595.P14809455187195293870

`A055640(A022307(A166517(n)²))`
-/

namespace A182595.P14809455187195293870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A022307 (A166517 n ^ 2).toNat).toNat

end

end A182595.P14809455187195293870

/-!
# A182596: Number of prime factors of form cn+1 for numbers 3^n+1.

The programs for A182596, there is no canonical definition to state claims against.
-/

/-! ## A182596.P14472023797365747143

`A318306(A005408(A089819(n+1)+A007089(n)))`
-/

namespace A182596.P14472023797365747143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (A005408 (A089819 (n + 1) + A007089 n).toNat).toNat

end

end A182596.P14472023797365747143

/-! ## A182596.P16476256138132292444

`A239140(floor(sqrt(A094206(n+1))))`
-/

namespace A182596.P16476256138132292444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (Int.sqrt (A094206 (n + 1))).toNat

end

end A182596.P16476256138132292444

/-! ## A182596.P17332497085681671207

`A379731(or(A000010(n+4), A008327(2*n)))`
-/

namespace A182596.P17332497085681671207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379731 (Int.lor (A000010 (n + 4)) (A008327 (2 * n))).toNat

end

end A182596.P17332497085681671207

/-! ## A182596.P12521490014534638073

`A058071(A000120(∑[A002062(n)]))`
-/

namespace A182596.P12521490014534638073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A182596.P12521490014534638073

/-! ## A182596.P14170712632074049015

`A001221(A000267(or(n, A090167(n))))`
-/

namespace A182596.P14170712632074049015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000267 (Int.lor (n : ℤ) (A090167 n)).toNat).toNat

end

end A182596.P14170712632074049015

/-!
# A182597: Number of prime factors of form cn+1 for numbers 5^n+1.

The programs for A182597, there is no canonical definition to state claims against.
-/

/-! ## A182597.P12003625004921462121

`A071625(7*A054064(n+1))`
-/

namespace A182597.P12003625004921462121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (7 * A054064 (n + 1)).toNat

end

end A182597.P12003625004921462121

/-! ## A182597.P8553743599063339833

`A072273(A262086(n+1)+Δ[A072278(n+1)])`
-/

namespace A182597.P8553743599063339833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A262086 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A182597.P8553743599063339833

/-! ## A182597.P2775906510352298422

`A069010(A131632(n+2)+A131614(n+2))`
-/

namespace A182597.P2775906510352298422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A131632 (n + 2) + A131614 (n + 2)).toNat

end

end A182597.P2775906510352298422

/-! ## A182597.P3545636740040281656

`A121041(A191106(n+1)^(val(n+1, 5)+1))`
-/

namespace A182597.P3545636740040281656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (A191106 (n + 1) ^ (SequenceMachineLib.valuation (n + 1) 5 + 1)).toNat

end

end A182597.P3545636740040281656

/-! ## A182597.P5888912446916561686

`A353849(A256598(n)+A190565(n+1))`
-/

namespace A182597.P5888912446916561686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A256598 n + A190565 (n + 1)).toNat

end

end A182597.P5888912446916561686

/-!
# A182598: Number of prime factors of form cn+1 for numbers 6^n+1.

The programs for A182598, there is no canonical definition to state claims against.
-/

/-! ## A182598.P1224998278902995111

`gcd(p?[A338199(2*n+1)], A338184(n))`
-/

namespace A182598.P1224998278902995111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338199 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A338184 n)

end

end A182598.P1224998278902995111

/-! ## A182598.P16382615178764665909

`A001222(A099462(n)+A064735(n+1))`
-/

namespace A182598.P16382615178764665909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A099462 n + A064735 (n + 1)).toNat

end

end A182598.P16382615178764665909

/-! ## A182598.P14540549953245710698

`A328114(n)+A321892(A007318(3*n+2))`
-/

namespace A182598.P14540549953245710698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n + A321892 (A007318 (3 * n + 2)).toNat

end

end A182598.P14540549953245710698

/-! ## A182598.P13435645503200689407

`A001221(or(A085148(4*n+2), A204659(3*n+2)))`
-/

namespace A182598.P13435645503200689407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A085148 (4 * n + 2)) (A204659 (3 * n + 2))).toNat

end

end A182598.P13435645503200689407

/-! ## A182598.P5372905277705714431

`A324534(A038573(n)+A069010(2^(-1%(n+1)+n))*A353857(n+1))`
-/

namespace A182598.P5372905277705714431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324534 (A038573 n + A069010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ))).toNat * A353857 (n + 1)).toNat

end

end A182598.P5372905277705714431

/-!
# A182599: Number of prime factors of form cn+1 for numbers 7^n+1.

The programs for A182599, there is no canonical definition to state claims against.
-/

/-! ## A182599.P9876848804628025405

`gcd(A064134(n), A131452(A023491(n)))`
-/

namespace A182599.P9876848804628025405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064134 n) (A131452 (A023491 n).toNat)

end

end A182599.P9876848804628025405

/-! ## A182599.P15390081674064448955

`A323023(A299143(n+4)+A233277(n))`
-/

namespace A182599.P15390081674064448955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A299143 (n + 4) + A233277 n).toNat

end

end A182599.P15390081674064448955

/-! ## A182599.P13573371781292912563

`A348042(xor(A054022(n+1), A076082(n+2)))`
-/

namespace A182599.P13573371781292912563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348042 (Int.xor (A054022 (n + 1)) (A076082 (n + 2))).toNat

end

end A182599.P13573371781292912563

/-! ## A182599.P4986890452367455754

`A214027(A349057(3*n+1)+A222413(n+1))`
-/

namespace A182599.P4986890452367455754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A349057 (3 * n + 1) + A222413 (n + 1)).toNat

end

end A182599.P4986890452367455754

/-! ## A182599.P826206006722335688

`A188169(A005098(∑[A111947(n+1)]))`
-/

namespace A182599.P826206006722335688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (A005098 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A182599.P826206006722335688

