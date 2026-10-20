import SequenceMachineLib
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A190300: Composite numbers that are not Brazilian.

The programs for A190300, there is no canonical definition to state claims against.
-/

/-! ## A190300.P13267681347119244046

`∩[A220570(n+1), A033476(n)]`
-/

namespace A190300.P13267681347119244046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P13267681347119244046

/-! ## A190300.P16280373915052003966

`∩[A220570(n+1), A079142(n)]`
-/

namespace A190300.P16280373915052003966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P16280373915052003966

/-! ## A190300.P16697943113550933317

`∩[A067127(n+1), A220570(n+1)]`
-/

namespace A190300.P16697943113550933317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P16697943113550933317

/-! ## A190300.P6126120156449805331

`∩[A071964(n+1), A220570(n+1)]`
-/

namespace A190300.P6126120156449805331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P6126120156449805331

/-! ## A190300.P15928121411027378750

`∩[A073540(n+1), A220570(n+1)]`
-/

namespace A190300.P15928121411027378750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P15928121411027378750

/-! ## A190300.P4705644848192408142

`∩[A078972(n+1), A220570(n+1)]`
-/

namespace A190300.P4705644848192408142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P4705644848192408142

/-! ## A190300.P12912616382989077590

`∩[A085721(n+1), A220570(n+1)]`
-/

namespace A190300.P12912616382989077590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P12912616382989077590

/-! ## A190300.P15622589807703874200

`∩[A085842(n+1), A220570(n+1)]`
-/

namespace A190300.P15622589807703874200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P15622589807703874200

/-! ## A190300.P12029763791981947647

`∩[A087718(n+1), A220570(n+1)]`
-/

namespace A190300.P12029763791981947647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P12029763791981947647

/-! ## A190300.P1462540827913329655

`∩[A116661(n+1), A220570(n+1)]`
-/

namespace A190300.P1462540827913329655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190300.P1462540827913329655

/-!
# A190301: Smallest number h such that n*h is a repunit (A002275), or 0 if no such h exists.

The programs for A190301, there is no canonical definition to state claims against.
-/

/-! ## A190301.P18232655760452714861

`ceil(A216479(n+1)/(n+1))`
-/

namespace A190301.P18232655760452714861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216479 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A190301.P18232655760452714861

/-! ## A190301.P11933230498559618203

`A002275(A084681(n+1))/(n+1)`
-/

namespace A190301.P11933230498559618203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (A084681 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A190301.P11933230498559618203

/-! ## A190301.P17727160951205955230

`A244927(n+1)%A216485(n+1)`
-/

namespace A190301.P17727160951205955230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244927 (n + 1)) (A216485 (n + 1))

end

end A190301.P17727160951205955230

/-! ## A190301.P17744127612718024146

`A002275(A084681(n+1))%A216485(n+1)`
-/

namespace A190301.P17744127612718024146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (A084681 (n + 1)).toNat) (A216485 (n + 1))

end

end A190301.P17744127612718024146

/-! ## A190301.P3169681527847413714

`A216479(A000265(n+1))%A216485(n+1)`
-/

namespace A190301.P3169681527847413714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216479 (A000265 (n + 1)).toNat) (A216485 (n + 1))

end

end A190301.P3169681527847413714

/-! ## A190301.P14324185155058408104

`A216479(A132740(n+1))%A216485(n+1)`
-/

namespace A190301.P14324185155058408104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216479 (A132740 (n + 1)).toNat) (A216485 (n + 1))

end

end A190301.P14324185155058408104

/-!
# A190302: Smallest number h such that the decimal expansion of n*h starts with 1.

The programs for A190302, the canonical program `A190302.P8878479900364276909` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190302 has offset 1).

The definition of A190302 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187285, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190302.P8878479900364276909

`A187285(n+1)/(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190302

/-- `A187285(n+1)/(n+1)` -/
def P8878479900364276909.Spec : Prop :=
  ∀ n, P8878479900364276909.a n = (A190302 (n + 1) : ℚ)

end A190302

/-! ## A190302.P5371606837595398249

`(4*A187285(n+1))%A004767(n)`
-/

namespace A190302.P5371606837595398249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A187285 (n + 1)) (A004767 n)

end

end A190302.P5371606837595398249

namespace A190302

/-- `(4*A187285(n+1))%A004767(n)` -/
def P5371606837595398249.Spec : Prop :=
  ∀ n, P5371606837595398249.a n = A190302 (n + 1)

end A190302

/-! ## A190302.P10528906919270152925

`A097327(n+1)%(A000030(n+1)*A097326(n+1))`
-/

namespace A190302.P10528906919270152925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097327 (n + 1)) (A000030 (n + 1) * A097326 (n + 1))

end

end A190302.P10528906919270152925

namespace A190302

/-- `A097327(n+1)%(A000030(n+1)*A097326(n+1))` -/
def P10528906919270152925.Spec : Prop :=
  ∀ n, P10528906919270152925.a n = A190302 (n + 1)

end A190302

/-! ## A190302.P13510067257441550903

`A008706(A187285(n+1))%A016897(n)`
-/

namespace A190302.P13510067257441550903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A187285 (n + 1)).toNat) (A016897 n)

end

end A190302.P13510067257441550903

namespace A190302

/-- `A008706(A187285(n+1))%A016897(n)` -/
def P13510067257441550903.Spec : Prop :=
  ∀ n, P13510067257441550903.a n = A190302 (n + 1)

end A190302

/-! ## A190302.P10876796545807113887

`A097327(n+1)%A097326(A187285(n+1))`
-/

namespace A190302.P10876796545807113887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097327 (n + 1)) (A097326 (A187285 (n + 1)).toNat)

end

end A190302.P10876796545807113887

namespace A190302

/-- `A097327(n+1)%A097326(A187285(n+1))` -/
def P10876796545807113887.Spec : Prop :=
  ∀ n, P10876796545807113887.a n = A190302 (n + 1)

end A190302

/-! ## A190302.P15190908505976435356

`A008574(A187285(n+1))%A004767(n)`
-/

namespace A190302.P15190908505976435356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A187285 (n + 1)).toNat) (A004767 n)

end

end A190302.P15190908505976435356

namespace A190302

/-- `A008574(A187285(n+1))%A004767(n)` -/
def P15190908505976435356.Spec : Prop :=
  ∀ n, P15190908505976435356.a n = A190302 (n + 1)

end A190302

/-! ## A190302.P16409084557589093564

`A082791((n+1)*A082791(A187285(n+1)))`
-/

namespace A190302.P16409084557589093564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082791 ((n + 1 : ℤ) * A082791 (A187285 (n + 1)).toNat).toNat

end

end A190302.P16409084557589093564

namespace A190302

/-- `A082791((n+1)*A082791(A187285(n+1)))` -/
def P16409084557589093564.Spec : Prop :=
  ∀ n, P16409084557589093564.a n = A190302 (n + 1)

end A190302

/-! ## A190302.P4960950554842959123

`gcd(A187285(A030665(n+1)), A187285(n+1))`
-/

namespace A190302.P4960950554842959123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187285 (A030665 (n + 1)).toNat) (A187285 (n + 1))

end

end A190302.P4960950554842959123

namespace A190302

/-- `gcd(A187285(A030665(n+1)), A187285(n+1))` -/
def P4960950554842959123.Spec : Prop :=
  ∀ n, (P4960950554842959123.a n : ℤ) = A190302 (n + 1)

end A190302

/-!
# A190304: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=csch(1), t=sech(1).

The programs for A190304, the canonical program `A190304.P6653989466381648733` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190304 has offset 1).

The definition of A190304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190304.P6653989466381648733

`n+1+floor((n+1)/sinh(1))+floor((n+1)/cosh(1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190304

/-- `n+1+floor((n+1)/sinh(1))+floor((n+1)/cosh(1))` -/
def P6653989466381648733.Spec : Prop :=
  ∀ n, P6653989466381648733.a n = A190304 (n + 1)

theorem P6653989466381648733.correct : P6653989466381648733.Spec := by
  intro n
  simp only [A190304, Nat.add_sub_cancel]

end A190304

/-! ## A190304.P12092917120877921476

`A123108(5*n+3)+A000035(A257297(3*(n+1)))`
-/

namespace A190304.P12092917120877921476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (5 * n + 3) + A000035 (A257297 (3 * (n + 1))).toNat

end

end A190304.P12092917120877921476

namespace A190304

/-- `A123108(5*n+3)+A000035(A257297(3*(n+1)))` -/
def P12092917120877921476.Spec : Prop :=
  ∀ n, P12092917120877921476.a n = A190304 (n + 1)

end A190304

/-! ## A190304.P176915128192097519

`A274701(A061793(n)-A090171(n))`
-/

namespace A190304.P176915128192097519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A061793 n - A090171 n).toNat

end

end A190304.P176915128192097519

namespace A190304

/-- `A274701(A061793(n)-A090171(n))` -/
def P176915128192097519.Spec : Prop :=
  ∀ n, P176915128192097519.a n = A190304 (n + 1)

end A190304

/-! ## A190304.P1159298147813751072

`A274701(A061793(n)-A111495(n+1))`
-/

namespace A190304.P1159298147813751072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A061793 n - A111495 (n + 1)).toNat

end

end A190304.P1159298147813751072

namespace A190304

/-- `A274701(A061793(n)-A111495(n+1))` -/
def P1159298147813751072.Spec : Prop :=
  ∀ n, P1159298147813751072.a n = A190304 (n + 1)

end A190304

/-! ## A190304.P12668775475792138753

`A274701(A061793(n)+2*A090171(n))`
-/

namespace A190304.P12668775475792138753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A061793 n + 2 * A090171 n).toNat

end

end A190304.P12668775475792138753

namespace A190304

/-- `A274701(A061793(n)+2*A090171(n))` -/
def P12668775475792138753.Spec : Prop :=
  ∀ n, P12668775475792138753.a n = A190304 (n + 1)

end A190304

/-!
# A190305: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=csch(1), t=sech(1).

The programs for A190305, the canonical program `A190305.P12157173027598516387` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190305 has offset 1).

The definition of A190305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190305.P12157173027598516387

`n+1+floor((n+1)*sinh(1))+floor((n+1)*tanh(1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190305

/-- `n+1+floor((n+1)*sinh(1))+floor((n+1)*tanh(1))` -/
def P12157173027598516387.Spec : Prop :=
  ∀ n, P12157173027598516387.a n = A190305 (n + 1)

theorem P12157173027598516387.correct : P12157173027598516387.Spec := by
  intro n
  simp only [A190305, Nat.add_sub_cancel]

end A190305

/-! ## A190305.P18418861267376832616

`∑[A245477(n)+A130196(A167808(n))]`
-/

namespace A190305.P18418861267376832616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 n + A130196 (A167808 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190305.P18418861267376832616

namespace A190305

/-- `∑[A245477(n)+A130196(A167808(n))]` -/
def P18418861267376832616.Spec : Prop :=
  ∀ n, P18418861267376832616.a n = A190305 (n + 1)

end A190305

/-! ## A190305.P12074080596742689125

`A182766(n+1)+A108611(A004767(n))`
-/

namespace A190305.P12074080596742689125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182766 (n + 1) + A108611 (A004767 n).toNat

end

end A190305.P12074080596742689125

namespace A190305

/-- `A182766(n+1)+A108611(A004767(n))` -/
def P12074080596742689125.Spec : Prop :=
  ∀ n, P12074080596742689125.a n = A190305 (n + 1)

end A190305

/-! ## A190305.P17642649317761813646

`A080339(A045680(n))+3*n+1`
-/

namespace A190305.P17642649317761813646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A045680 n).toNat + (3 * n + 1 : ℤ)

end

end A190305.P17642649317761813646

namespace A190305

/-- `A080339(A045680(n))+3*n+1` -/
def P17642649317761813646.Spec : Prop :=
  ∀ n, P17642649317761813646.a n = A190305 (n + 1)

end A190305

/-! ## A190305.P11962913604485688849

`A000007(A218880(n+1))+3*n+1`
-/

namespace A190305.P11962913604485688849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A218880 (n + 1)).toNat + (3 * n + 1 : ℤ)

end

end A190305.P11962913604485688849

namespace A190305

/-- `A000007(A218880(n+1))+3*n+1` -/
def P11962913604485688849.Spec : Prop :=
  ∀ n, P11962913604485688849.a n = A190305 (n + 1)

end A190305

/-!
# A190306: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=csch(1), t=sech(1).

The programs for A190306, the canonical program `A190306.P3243146392766294597` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190306 has offset 1).

The definition of A190306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190306.P3243146392766294597

`n+1+floor((n+1)*cosh(1))+floor((n+1)/tanh(1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190306

/-- `n+1+floor((n+1)*cosh(1))+floor((n+1)/tanh(1))` -/
def P3243146392766294597.Spec : Prop :=
  ∀ n, P3243146392766294597.a n = A190306 (n + 1)

theorem P3243146392766294597.correct : P3243146392766294597.Spec := by
  intro n
  simp only [A190306, Nat.add_sub_cancel]

end A190306

/-! ## A190306.P12219554207594288800

`n+1+A109237(n+1)+A109231(n+1)`
-/

namespace A190306.P12219554207594288800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A109237 (n + 1) + A109231 (n + 1))

end

end A190306.P12219554207594288800

namespace A190306

/-- `n+1+A109237(n+1)+A109231(n+1)` -/
def P12219554207594288800.Spec : Prop :=
  ∀ n, P12219554207594288800.a n = A190306 (n + 1)

end A190306

/-! ## A190306.P14808622137117696665

`A109231(n+1)+A067100(A277690(n+1)+2*n+1)+n+1`
-/

namespace A190306.P14808622137117696665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109231 (n + 1) + A067100 (A277690 (n + 1) + (2 * n + 1 : ℤ)).toNat + (n + 1 : ℤ)

end

end A190306.P14808622137117696665

namespace A190306

/-- `A109231(n+1)+A067100(A277690(n+1)+2*n+1)+n+1` -/
def P14808622137117696665.Spec : Prop :=
  ∀ n, P14808622137117696665.a n = A190306 (n + 1)

end A190306

/-! ## A190306.P2397924451521851650

`A164088(A164086(n+1)%A164074(n+1))+A109231(n+1)+n+1`
-/

namespace A190306.P2397924451521851650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164088 (Int.tmod (A164086 (n + 1)) (A164074 (n + 1))).toNat + A109231 (n + 1) + (n + 1 : ℤ)

end

end A190306.P2397924451521851650

namespace A190306

/-- `A164088(A164086(n+1)%A164074(n+1))+A109231(n+1)+n+1` -/
def P2397924451521851650.Spec : Prop :=
  ∀ n, P2397924451521851650.a n = A190306 (n + 1)

end A190306

/-! ## A190306.P5701424262631853756

`A005843(2*(n+1))-A281527(∑[n+2])`
-/

namespace A190306.P5701424262631853756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * (n + 1)) - A281527 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190306.P5701424262631853756

namespace A190306

/-- `A005843(2*(n+1))-A281527(∑[n+2])` -/
def P5701424262631853756.Spec : Prop :=
  ∀ n, P5701424262631853756.a n = A190306 (n + 1)

end A190306

/-!
# A190309: Number of acute isosceles triangles, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A190309, there is no canonical definition to state claims against.
-/

/-! ## A190309.P11918093964563240599

`A189978(n+1)-A190310(n+1)-A108279(n+1)`
-/

namespace A190309.P11918093964563240599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189978 (n + 1) - A190310 (n + 1) - A108279 (n + 1)

end

end A190309.P11918093964563240599

/-! ## A190309.P6470106742041237259

`xor(A003192(n+1), A026813(comp[2*(n+1)]))`
-/

namespace A190309.P6470106742041237259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003192 (n + 1)) (A026813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A190309.P6470106742041237259

/-!
# A190310: Number of obtuse isosceles triangles, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A190310, there is no canonical definition to state claims against.
-/

/-! ## A190310.P2650179793662927265

`A189978(n+1)-A190309(n+1)-A108279(n+1)`
-/

namespace A190310.P2650179793662927265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189978 (n + 1) - A190309 (n + 1) - A108279 (n + 1)

end

end A190310.P2650179793662927265

/-! ## A190310.P3247509143647753944

`floor(A209383(3*n+4)/A000165(n+3))`
-/

namespace A190310.P3247509143647753944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209383 (3 * n + 4) : ℚ) / (A000165 (n + 3) : ℚ)⌋

end

end A190310.P3247509143647753944

/-! ## A190310.P1135627056909824289

`A039900(n)-A125184(A364779(2*(n+1)))`
-/

namespace A190310.P1135627056909824289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n - A125184 (A364779 (2 * (n + 1))).toNat

end

end A190310.P1135627056909824289

/-!
# A190311: Number of nonzero digits when writing n in base where place values are positive cubes, cf. A000433.

The programs for A190311, there is no canonical definition to state claims against.
-/

/-! ## A190311.P17813188145267966900

`∑{digits}[A000433(n), A048762(#)]`
-/

namespace A190311.P17813188145267966900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A048762 x).sum

end

end A190311.P17813188145267966900

/-! ## A190311.P624967757509584762

`∑{digits}[A000433(n), A048766(#)]`
-/

namespace A190311.P624967757509584762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A048766 x).sum

end

end A190311.P624967757509584762

/-! ## A190311.P4334020099049263827

`∑{digits}[A000433(n), A055640(#)]`
-/

namespace A190311.P4334020099049263827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055640 x).sum

end

end A190311.P4334020099049263827

/-! ## A190311.P18203320226478335683

`∑{digits}[A000433(n), A188642(#)]`
-/

namespace A190311.P18203320226478335683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A188642 x).sum

end

end A190311.P18203320226478335683

/-! ## A190311.P17282130753209785050

`∑{digits}[A000433(n), A225770(A225770(#))]`
-/

namespace A190311.P17282130753209785050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A225770 (A225770 x).toNat).sum

end

end A190311.P17282130753209785050

/-! ## A190311.P7454448123582493599

`A055640(A000433(n))`
-/

namespace A190311.P7454448123582493599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A000433 n).toNat

end

end A190311.P7454448123582493599

/-!
# A190312: Number of scalene triangles on an n X n grid (or geoboard).

The programs for A190312, there is no canonical definition to state claims against.
-/

/-! ## A190312.P8740896261837022713

`A045996(n+1)-A186434(n+1)`
-/

namespace A190312.P8740896261837022713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045996 (n + 1) - A186434 (n + 1)

end

end A190312.P8740896261837022713

/-! ## A190312.P13857860937651643208

`A045996(n+1)-4*A271908(n+1)`
-/

namespace A190312.P13857860937651643208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045996 (n + 1) - 4 * A271908 (n + 1)

end

end A190312.P13857860937651643208

/-! ## A190312.P1362496671403714365

`A045996(n+1)-A271910(∑[4*n]+1)`
-/

namespace A190312.P1362496671403714365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045996 (n + 1) - A271910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190312.P1362496671403714365

/-! ## A190312.P17816444435092519553

`A045996(n+1)-lcm(2, A271910((n+1)²+n²))`
-/

namespace A190312.P17816444435092519553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045996 (n + 1) - (Int.lcm 2 (A271910 ((n + 1) ^ 2 + n ^ 2)) : ℤ)

end

end A190312.P17816444435092519553

/-! ## A190312.P18395035141860895407

`C((n+1)², 3)-A000938(n+1)-A186434(n+1)`
-/

namespace A190312.P18395035141860895407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 3 : ℤ) - A000938 (n + 1) - A186434 (n + 1)

end

end A190312.P18395035141860895407

/-!
# A190313: Number of scalene triangles, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A190313, there is no canonical definition to state claims against.
-/

/-! ## A190313.P5290999226013568708

`A028419(n)-A189978(n+1)`
-/

namespace A190313.P5290999226013568708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028419 n - A189978 (n + 1)

end

end A190313.P5290999226013568708

/-! ## A190313.P14138917014006447012

`A028419(n)-(A108279(n+1)+A190310(n+1)+A190309(n+1))`
-/

namespace A190313.P14138917014006447012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028419 n - (A108279 (n + 1) + (A190310 (n + 1) + A190309 (n + 1)))

end

end A190313.P14138917014006447012

/-! ## A190313.P17061667612866356624

`A189979(n+1)+A190022(n+1)+A190021(n+1)-A189978(n+1)`
-/

namespace A190313.P17061667612866356624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189979 (n + 1) + (A190022 (n + 1) + A190021 (n + 1)) - A189978 (n + 1)

end

end A190313.P17061667612866356624

/-! ## A190313.P6091468921973687252

`A272053(n)-2*A028419(n)`
-/

namespace A190313.P6091468921973687252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272053 n - 2 * A028419 n

end

end A190313.P6091468921973687252

/-! ## A190313.P13784882532881801192

`A272053(n)%A028419(A028310(n))`
-/

namespace A190313.P13784882532881801192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272053 n) (A028419 (A028310 n).toNat)

end

end A190313.P13784882532881801192

/-!
# A190314: The number of cycles in the digraph representation of all endofunctions on {1,2,...,n}.

The programs for A190314, there is no canonical definition to state claims against.
-/

/-! ## A190314.P5906417731275194118

`A063170(n)-A304866(n+1)`
-/

namespace A190314.P5906417731275194118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063170 n - A304866 (n + 1)

end

end A190314.P5906417731275194118

/-! ## A190314.P17330745687254928331

`A089901(n)-(A304866(n+1)+A007778(n))`
-/

namespace A190314.P17330745687254928331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089901 n - (A304866 (n + 1) + A007778 n)

end

end A190314.P17330745687254928331

/-! ## A190314.P4057145365857917096

`record[A244137(n)]-(A304866(n+1)+A219706(n))`
-/

namespace A190314.P4057145365857917096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A304866 (n + 1) + A219706 n)

end

end A190314.P4057145365857917096

/-! ## A190314.P10907957357934074775

`A089901(n)-n*A000312(n)-A304866(n+1)`
-/

namespace A190314.P10907957357934074775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089901 n - (n : ℤ) * A000312 n - A304866 (n + 1)

end

end A190314.P10907957357934074775

/-! ## A190314.P3304461540381767264

`A228154(∑[n]+1)-A219706(n)-A304866(n+1)`
-/

namespace A190314.P3304461540381767264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228154 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A219706 n - A304866 (n + 1)

end

end A190314.P3304461540381767264

/-! ## A190314.P16036126831371165081

`A000312(n)+n^(n+1)-A219706(n)-A304866(n+1)`
-/

namespace A190314.P16036126831371165081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n + (n ^ (n + 1) : ℤ) - A219706 n - A304866 (n + 1)

end

end A190314.P16036126831371165081

/-! ## A190314.P15613019031712596883

`A225723(A000124(n))-(A304866(n+1)+A219706(n))`
-/

namespace A190314.P15613019031712596883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A000124 n).toNat - (A304866 (n + 1) + A219706 n)

end

end A190314.P15613019031712596883

/-!
# A190315: Central coefficients of the Riordan matrix ((1-x-x^2)/(1-2x-x^2),(x-x^2-x^3)/(1-2x-x^2)) (A190215).

The programs for A190315, there is no canonical definition to state claims against.
-/

/-! ## A190315.P11337169801472196968

`(n+1)*A307412(n)`
-/

namespace A190315.P11337169801472196968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A307412 n

end

end A190315.P11337169801472196968

/-! ## A190315.P1480697193140154935

`A190215(∑[4*n])`
-/

namespace A190315.P1480697193140154935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190315.P1480697193140154935

/-! ## A190315.P2195828957102485691

`lcm(n+1, A190215(A046092(n)))`
-/

namespace A190315.P2195828957102485691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A190215 (A046092 n).toNat)

end

end A190315.P2195828957102485691

/-! ## A190315.P3381726241829633445

`record[A190215(A249122((n+1)²))]`
-/

namespace A190315.P3381726241829633445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (A249122 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190315.P3381726241829633445

/-! ## A190315.P1190033765050120865

`record[A190215(gcd(n, A204016(n+1)))]`
-/

namespace A190315.P1190033765050120865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (Int.gcd (n : ℤ) (A204016 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190315.P1190033765050120865

/-! ## A190315.P15689642207027331726

`record[(1-A204016(n+1))*A190215(n)]`
-/

namespace A190315.P15689642207027331726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A204016 (n + 1)) * A190215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190315.P15689642207027331726

/-! ## A190315.P3016825472821228489

`A190215(A046092(n))%A133472(n)`
-/

namespace A190315.P3016825472821228489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190215 (A046092 n).toNat) (A133472 n)

end

end A190315.P3016825472821228489

/-! ## A190315.P8259650348533030613

`abs(A097807(n)*A190215(A046092(n)))`
-/

namespace A190315.P8259650348533030613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097807 n * A190215 (A046092 n).toNat|

end

end A190315.P8259650348533030613

/-! ## A190315.P12341100106006052881

`A020985(n)²*A190215(A046092(n))`
-/

namespace A190315.P12341100106006052881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A190215 (A046092 n).toNat

end

end A190315.P12341100106006052881

/-! ## A190315.P12932975180462172472

`and(A153881(n+2), A190215(A046092(n)))`
-/

namespace A190315.P12932975180462172472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 2)) (A190215 (A046092 n).toNat)

end

end A190315.P12932975180462172472

/-!
# A190316: Numbers with prime factorization pqrstuv^3.

The programs for A190316, there is no canonical definition to state claims against.
-/

/-! ## A190316.P8849742180339743223

`A272598(A250261(n)+A106000(n))`
-/

namespace A190316.P8849742180339743223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272598 (A250261 n + A106000 n).toNat

end

end A190316.P8849742180339743223

/-! ## A190316.P13768051600863987296

`A123321(n+1)*A226276(A082582(n))`
-/

namespace A190316.P13768051600863987296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123321 (n + 1) * A226276 (A082582 n).toNat

end

end A190316.P13768051600863987296

/-! ## A190316.P8777787552855028853

`A123321(n+1)*A309500(A016116(n))`
-/

namespace A190316.P8777787552855028853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123321 (n + 1) * A309500 (A016116 n).toNat

end

end A190316.P8777787552855028853

/-! ## A190316.P16304718548295044867

`A272598(C(A081061(n+1), A007095(n)))`
-/

namespace A190316.P16304718548295044867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272598 (Nat.choose (A081061 (n + 1)).toNat (A007095 n).toNat)

end

end A190316.P16304718548295044867

/-! ## A190316.P12934738658787677025

`A091844(A057200(n+1))*A123321(n+1)`
-/

namespace A190316.P12934738658787677025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091844 (A057200 (n + 1)).toNat * A123321 (n + 1)

end

end A190316.P12934738658787677025

/-!
# A190317: Number of acute isosceles triangles on an n X n grid.

The programs for A190317, there is no canonical definition to state claims against.
-/

/-! ## A190317.P10240481984635275741

`A186434(n+1)-A187452(n+1)-A190318(n+1)`
-/

namespace A190317.P10240481984635275741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186434 (n + 1) - A187452 (n + 1) - A190318 (n + 1)

end

end A190317.P10240481984635275741

/-! ## A190317.P4666176031748313710

`A272625(∑[4*n]+1)`
-/

namespace A190317.P4666176031748313710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190317.P4666176031748313710

/-! ## A190317.P9054793223694488171

`lcm(2, A272625(A001844(n)))`
-/

namespace A190317.P9054793223694488171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A272625 (A001844 n).toNat)

end

end A190317.P9054793223694488171

/-! ## A190317.P15415515303210567489

`(1-C(n, n²))*A272625(A046092(n)+1)`
-/

namespace A190317.P15415515303210567489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose n (n ^ 2) : ℤ)) * A272625 (A046092 n + 1).toNat

end

end A190317.P15415515303210567489

/-! ## A190317.P12883903096788465567

`A272625(A001844(n))%A008514(n)`
-/

namespace A190317.P12883903096788465567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272625 (A001844 n).toNat) (A008514 n)

end

end A190317.P12883903096788465567

/-!
# A190318: Number of obtuse isosceles triangles on an n X n grid.

The programs for A190318, there is no canonical definition to state claims against.
-/

/-! ## A190318.P5217250678266032867

`A186434(n+1)-A190317(n+1)-A187452(n+1)`
-/

namespace A190318.P5217250678266032867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186434 (n + 1) - A190317 (n + 1) - A187452 (n + 1)

end

end A190318.P5217250678266032867

/-! ## A190318.P742305459815325322

`A272624(∑[4*n]+1)`
-/

namespace A190318.P742305459815325322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190318.P742305459815325322

/-! ## A190318.P15070299271966824383

`lcm(2, A272624(A001844(n)))`
-/

namespace A190318.P15070299271966824383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A272624 (A001844 n).toNat)

end

end A190318.P15070299271966824383

/-! ## A190318.P5123336920217938924

`A057427(n)*A272624(A001844(n))`
-/

namespace A190318.P5123336920217938924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A272624 (A001844 n).toNat

end

end A190318.P5123336920217938924

/-! ## A190318.P13925717586103582811

`A178334(n)*A272624(A001844(n))`
-/

namespace A190318.P13925717586103582811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A272624 (A001844 n).toNat

end

end A190318.P13925717586103582811

/-!
# A190321: Number of nonzero digits when writing n in base where place values are squares, cf. A007961.

The programs for A190321, the canonical program `A190321.P11912397114291218012` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190321 has offset 0).

The definition of A190321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190321.P11912397114291218012

`a(n%A048760(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190321

/-- `a(n%A048760(n))+1` -/
def P11912397114291218012.Spec : Prop :=
  ∀ n, (P11912397114291218012.a n : ℤ) = A190321 n

theorem P11912397114291218012.correct : P11912397114291218012.Spec := by
  intro n
  simp only [A190321]

end A190321

/-! ## A190321.P13209215000459536736

`A292266(a(n%A048760(n)))` with `a(0)=0`
-/

namespace A190321.P13209215000459536736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A292266 (a (Int.tmod (n : ℤ) (A048760 n)).toNat).toNat

end

end A190321.P13209215000459536736

namespace A190321

/-- `A292266(a(n%A048760(n)))` -/
def P13209215000459536736.Spec : Prop :=
  ∀ n, P13209215000459536736.a n = A190321 n

end A190321

/-! ## A190321.P16650926616693658254

`A000120(∑[A023971(A001248(n+1))])`
-/

namespace A190321.P16650926616693658254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A001248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190321.P16650926616693658254

namespace A190321

/-- `A000120(∑[A023971(A001248(n+1))])` -/
def P16650926616693658254.Spec : Prop :=
  ∀ n, P16650926616693658254.a n = A190321 n

end A190321

/-!
# A190322: a(1) = 1, a(2) = 9, a(3) = 17; for n>3, a(n) = a(n-3) + 2.

The programs for A190322, the canonical program `A190322.P7184646243679616406` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190322 has offset 1).

The definition of A190322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+2` (program `A190322.P7184646243679616406`, by `A190322.P7184646243679616406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190322.P7184646243679616406

`a(n-3)+2` with `a(0)=1, a(1)=9, a(2)=17, a(3)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190322

/-- `a(n-3)+2` -/
def P7184646243679616406.Spec : Prop :=
  ∀ n, (P7184646243679616406.a n : ℤ) = A190322 (n + 1)

theorem P7184646243679616406.correct : P7184646243679616406.Spec := by
  intro n
  simp only [A190322, Nat.add_sub_cancel]

end A190322

/-! ## A190322.P16682794072364221397

`∑[2-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=8, a(2)=8`
-/

namespace A190322.P16682794072364221397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 8] fun n f1 =>
  2 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190322.P16682794072364221397

namespace A190322

/-- `∑[2-a(n-1)-a(n-2)]` -/
def P16682794072364221397.Spec : Prop :=
  ∀ n, P16682794072364221397.a n = A190322 (n + 1)

end A190322

/-! ## A190322.P6761128203015819967

`A017077(n)-22*A002264(n)`
-/

namespace A190322.P6761128203015819967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n - 22 * A002264 n

end

end A190322.P6761128203015819967

namespace A190322

/-- `A017077(n)-22*A002264(n)` -/
def P6761128203015819967.Spec : Prop :=
  ∀ n, P6761128203015819967.a n = A190322 (n + 1)

end A190322

/-! ## A190322.P5384325025176248095

`A130823(11*n%3+n+1)`
-/

namespace A190322.P5384325025176248095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (11 * (n % 3) + (n + 1))

end

end A190322.P5384325025176248095

namespace A190322

/-- `A130823(11*n%3+n+1)` -/
def P5384325025176248095.Spec : Prop :=
  ∀ n, P5384325025176248095.a n = A190322 (n + 1)

end A190322

/-! ## A190322.P18202670701447404368

`A084967(2*n+1)%A017413(A004523(2*n))`
-/

namespace A190322.P18202670701447404368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084967 (2 * n + 1)) (A017413 (A004523 (2 * n)).toNat)

end

end A190322.P18202670701447404368

namespace A190322

/-- `A084967(2*n+1)%A017413(A004523(2*n))` -/
def P18202670701447404368.Spec : Prop :=
  ∀ n, P18202670701447404368.a n = A190322 (n + 1)

end A190322

/-!
# A190323: n + [n*s/r] + [n*t/r]; r=1, s=sinh(Pi/2), t=cosh(Pi/2).

The programs for A190323, the canonical program `A190323.P4562195585815837460` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190323 has offset 1).

The definition of A190323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190323.P4562195585815837460

`n+1+floor((n+1)*sinh(π/2))+floor((n+1)*cosh(π/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190323

/-- `n+1+floor((n+1)*sinh(π/2))+floor((n+1)*cosh(π/2))` -/
def P4562195585815837460.Spec : Prop :=
  ∀ n, P4562195585815837460.a n = A190323 (n + 1)

theorem P4562195585815837460.correct : P4562195585815837460.Spec := by
  intro n
  simp only [A190323, Nat.add_sub_cancel]

end A190323

/-! ## A190323.P17410403041942783051

`A000005(A016116(n+1))+A001956(n+1)+n`
-/

namespace A190323.P17410403041942783051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016116 (n + 1)).toNat + (A001956 (n + 1) + (n : ℤ))

end

end A190323.P17410403041942783051

namespace A190323

/-- `A000005(A016116(n+1))+A001956(n+1)+n` -/
def P17410403041942783051.Spec : Prop :=
  ∀ n, P17410403041942783051.a n = A190323 (n + 1)

end A190323

/-! ## A190323.P9999055326070370111

`A054899(53*A187829(n+1))`
-/

namespace A190323.P9999055326070370111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (53 * A187829 (n + 1)).toNat

end

end A190323.P9999055326070370111

namespace A190323

/-- `A054899(53*A187829(n+1))` -/
def P9999055326070370111.Spec : Prop :=
  ∀ n, P9999055326070370111.a n = A190323 (n + 1)

end A190323

/-! ## A190323.P1615872705643237066

`A054899(lcm(53, A187829(n+1)))`
-/

namespace A190323.P1615872705643237066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (Int.lcm 53 (A187829 (n + 1)))

end

end A190323.P1615872705643237066

namespace A190323

/-- `A054899(lcm(53, A187829(n+1)))` -/
def P1615872705643237066.Spec : Prop :=
  ∀ n, P1615872705643237066.a n = A190323 (n + 1)

end A190323

/-! ## A190323.P17063793865316017461

`A190337(n+1)-A327205(A097064(n))`
-/

namespace A190323.P17063793865316017461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (n + 1) - A327205 (A097064 n).toNat

end

end A190323.P17063793865316017461

namespace A190323

/-- `A190337(n+1)-A327205(A097064(n))` -/
def P17063793865316017461.Spec : Prop :=
  ∀ n, P17063793865316017461.a n = A190323 (n + 1)

end A190323

/-!
# A190324: n + [n*r/s] + [n*t/s]; r=1, s=sinh(Pi/2), t=cosh(Pi/2).

The programs for A190324, the canonical program `A190324.P220678455183517542` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190324 has offset 1).

The definition of A190324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190324.P220678455183517542

`n+1+floor((n+1)/sinh(π/2))+floor((n+1)/tanh(π/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190324

/-- `n+1+floor((n+1)/sinh(π/2))+floor((n+1)/tanh(π/2))` -/
def P220678455183517542.Spec : Prop :=
  ∀ n, P220678455183517542.a n = A190324 (n + 1)

theorem P220678455183517542.correct : P220678455183517542.Spec := by
  intro n
  simp only [A190324, Nat.add_sub_cancel]

end A190324

/-! ## A190324.P14449672859035902277

`A155902(n+1)+comp[12*n]`
-/

namespace A190324.P14449672859035902277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A190324.P14449672859035902277

namespace A190324

/-- `A155902(n+1)+comp[12*n]` -/
def P14449672859035902277.Spec : Prop :=
  ∀ n, P14449672859035902277.a n = A190324 (n + 1)

end A190324

/-! ## A190324.P14649840175872339707

`A168186(n+1)+A155902(n+1)`
-/

namespace A190324.P14649840175872339707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1) + A155902 (n + 1)

end

end A190324.P14649840175872339707

namespace A190324

/-- `A168186(n+1)+A155902(n+1)` -/
def P14649840175872339707.Spec : Prop :=
  ∀ n, P14649840175872339707.a n = A190324 (n + 1)

end A190324

/-! ## A190324.P11407083991058710906

`A303590(n+1)+A206244(A135382(n+1))`
-/

namespace A190324.P11407083991058710906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1) + A206244 (A135382 (n + 1)).toNat

end

end A190324.P11407083991058710906

namespace A190324

/-- `A303590(n+1)+A206244(A135382(n+1))` -/
def P11407083991058710906.Spec : Prop :=
  ∀ n, P11407083991058710906.a n = A190324 (n + 1)

end A190324

/-! ## A190324.P9939931673958649885

`∑[A056924(A262265(2*(n+2)))+1]`
-/

namespace A190324.P9939931673958649885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A262265 (2 * (n + 2))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190324.P9939931673958649885

namespace A190324

/-- `∑[A056924(A262265(2*(n+2)))+1]` -/
def P9939931673958649885.Spec : Prop :=
  ∀ n, P9939931673958649885.a n = A190324 (n + 1)

end A190324

/-!
# A190325: n + [n*r/t] + [n*s/t]; r=1, s=sinh(Pi/2), t=cosh(Pi/2).

The programs for A190325, the canonical program `A190325.P10636843688453358551` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190325 has offset 1).

The definition of A190325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190325.P10636843688453358551

`n+1+floor((n+1)/cosh(π/2))+floor((n+1)*tanh(π/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190325

/-- `n+1+floor((n+1)/cosh(π/2))+floor((n+1)*tanh(π/2))` -/
def P10636843688453358551.Spec : Prop :=
  ∀ n, P10636843688453358551.a n = A190325 (n + 1)

theorem P10636843688453358551.correct : P10636843688453358551.Spec := by
  intro n
  simp only [A190325, Nat.add_sub_cancel]

end A190325

/-! ## A190325.P5355752273573556331

`or(A010054(A189918(n+1)), A189937(n+1))`
-/

namespace A190325.P5355752273573556331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A189918 (n + 1)).toNat) (A189937 (n + 1))

end

end A190325.P5355752273573556331

namespace A190325

/-- `or(A010054(A189918(n+1)), A189937(n+1))` -/
def P5355752273573556331.Spec : Prop :=
  ∀ n, P5355752273573556331.a n = A190325 (n + 1)

end A190325

/-! ## A190325.P925996298908728475

`A156251(A016813(n)-char[A002057(n)])+n`
-/

namespace A190325.P925996298908728475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A016813 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat + (n : ℤ)

end

end A190325.P925996298908728475

namespace A190325

/-- `A156251(A016813(n)-char[A002057(n)])+n` -/
def P925996298908728475.Spec : Prop :=
  ∀ n, P925996298908728475.a n = A190325 (n + 1)

end A190325

/-! ## A190325.P1802557187099271063

`A189937(n+1)+A185284(lcm(2, n))`
-/

namespace A190325.P1802557187099271063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189937 (n + 1) + A185284 (Nat.lcm 2 n)

end

end A190325.P1802557187099271063

namespace A190325

/-- `A189937(n+1)+A185284(lcm(2, n))` -/
def P1802557187099271063.Spec : Prop :=
  ∀ n, P1802557187099271063.a n = A190325 (n + 1)

end A190325

/-!
# A190326: n + [n*s/r] + [n*t/r]; r=1/2, s=sinh(Pi/2), t=cosh(Pi/2).

The programs for A190326, the canonical program `A190326.P8500105689089143444` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190326 has offset 1).

The definition of A190326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190326.P8500105689089143444

`n+1+floor(2*(n+1)*sinh(π/2))+floor(2*(n+1)*cosh(π/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190326

/-- `n+1+floor(2*(n+1)*sinh(π/2))+floor(2*(n+1)*cosh(π/2))` -/
def P8500105689089143444.Spec : Prop :=
  ∀ n, P8500105689089143444.a n = A190326 (n + 1)

theorem P8500105689089143444.correct : P8500105689089143444.Spec := by
  intro n
  simp only [A190326, Nat.add_sub_cancel]

end A190326

/-! ## A190326.P4931348371122645613

`A190323(2*(n+1))-(n+1)`
-/

namespace A190326.P4931348371122645613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190323 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A190326.P4931348371122645613

namespace A190326

/-- `A190323(2*(n+1))-(n+1)` -/
def P4931348371122645613.Spec : Prop :=
  ∀ n, P4931348371122645613.a n = A190326 (n + 1)

end A190326

/-! ## A190326.P15478742903242317905

`A190323(Δ[n²]+1)-n-1`
-/

namespace A190326.P15478742903242317905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190323 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - (n : ℤ) - 1

end

end A190326.P15478742903242317905

namespace A190326

/-- `A190323(Δ[n²]+1)-n-1` -/
def P15478742903242317905.Spec : Prop :=
  ∀ n, P15478742903242317905.a n = A190326 (n + 1)

end A190326

/-! ## A190326.P9200692280276350638

`A001489(2*n+1)+A190323(2*(n+1))+n`
-/

namespace A190326.P9200692280276350638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n + 1) + (A190323 (2 * (n + 1)) + (n : ℤ))

end

end A190326.P9200692280276350638

namespace A190326

/-- `A001489(2*n+1)+A190323(2*(n+1))+n` -/
def P9200692280276350638.Spec : Prop :=
  ∀ n, P9200692280276350638.a n = A190326 (n + 1)

end A190326

/-! ## A190326.P4796475012300018593

`A233583(A190323(2*(n+1))-n)`
-/

namespace A190326.P4796475012300018593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A190323 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A190326.P4796475012300018593

namespace A190326

/-- `A233583(A190323(2*(n+1))-n)` -/
def P4796475012300018593.Spec : Prop :=
  ∀ n, P4796475012300018593.a n = A190326 (n + 1)

end A190326

/-! ## A190326.P8135595483446852882

`A191904(A001844(n+1))+A190323(2*(n+1))`
-/

namespace A190326.P8135595483446852882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (A001844 (n + 1)).toNat + A190323 (2 * (n + 1))

end

end A190326.P8135595483446852882

namespace A190326

/-- `A191904(A001844(n+1))+A190323(2*(n+1))` -/
def P8135595483446852882.Spec : Prop :=
  ∀ n, P8135595483446852882.a n = A190326 (n + 1)

end A190326

/-!
# A190327: a(n) = n + [n*r/s] + [n*t/s]; r=1/2, s=sinh(Pi/2), t=cosh(Pi/2).

The programs for A190327, the canonical program `A190327.P4671400593698770962` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190327 has offset 1).

The definition of A190327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190327.P4671400593698770962

`n+1+floor((n+1)/(2*sinh(π/2)))+floor((n+1)/tanh(π/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190327

/-- `n+1+floor((n+1)/(2*sinh(π/2)))+floor((n+1)/tanh(π/2))` -/
def P4671400593698770962.Spec : Prop :=
  ∀ n, P4671400593698770962.a n = A190327 (n + 1)

theorem P4671400593698770962.correct : P4671400593698770962.Spec := by
  intro n
  simp only [A190327, Nat.add_sub_cancel]

end A190327

/-! ## A190327.P15763693443042689134

`A248106(n+1)-A199918(A251746(n))`
-/

namespace A190327.P15763693443042689134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248106 (n + 1) - A199918 (A251746 n).toNat

end

end A190327.P15763693443042689134

namespace A190327

/-- `A248106(n+1)-A199918(A251746(n))` -/
def P15763693443042689134.Spec : Prop :=
  ∀ n, P15763693443042689134.a n = A190327 (n + 1)

end A190327

/-! ## A190327.P1047745950407360659

`∑[p?[A127656(A127685(2*(n+2)))]]`
-/

namespace A190327.P1047745950407360659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127656 (A127685 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190327.P1047745950407360659

namespace A190327

/-- `∑[p?[A127656(A127685(2*(n+2)))]]` -/
def P1047745950407360659.Spec : Prop :=
  ∀ n, P1047745950407360659.a n = A190327 (n + 1)

end A190327

/-! ## A190327.P6858739792254035947

`A052382(n+1)+∑[A063059(A146772(n))]`
-/

namespace A190327.P6858739792254035947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063059 (A146772 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190327.P6858739792254035947

namespace A190327

/-- `A052382(n+1)+∑[A063059(A146772(n))]` -/
def P6858739792254035947.Spec : Prop :=
  ∀ n, P6858739792254035947.a n = A190327 (n + 1)

end A190327

/-! ## A190327.P17983378515946244552

`A356734(n+1)+A328167(A000040(n+1))`
-/

namespace A190327.P17983378515946244552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356734 (n + 1) + A328167 (A000040 (n + 1)).toNat

end

end A190327.P17983378515946244552

namespace A190327

/-- `A356734(n+1)+A328167(A000040(n+1))` -/
def P17983378515946244552.Spec : Prop :=
  ∀ n, P17983378515946244552.a n = A190327 (n + 1)

end A190327

/-!
# A190328: a(n) = n + [n*r/t] + [n*s/t]; r=1/2, s=sinh(Pi/2), t=cosh(Pi/2).

The programs for A190328, the canonical program `A190328.P874239086917462616` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190328 has offset 1).

The definition of A190328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190328.P874239086917462616

`n+1+floor((n+1)/(2*cosh(π/2)))+floor((n+1)*tanh(π/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190328

/-- `n+1+floor((n+1)/(2*cosh(π/2)))+floor((n+1)*tanh(π/2))` -/
def P874239086917462616.Spec : Prop :=
  ∀ n, P874239086917462616.a n = A190328 (n + 1)

theorem P874239086917462616.correct : P874239086917462616.Spec := by
  intro n
  simp only [A190328, Nat.add_sub_cancel]

end A190328

/-! ## A190328.P11754275294601882874

`A047253(n+1)+∑[A168185(A195142(n))]`
-/

namespace A190328.P11754275294601882874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A195142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190328.P11754275294601882874

namespace A190328

/-- `A047253(n+1)+∑[A168185(A195142(n))]` -/
def P11754275294601882874.Spec : Prop :=
  ∀ n, P11754275294601882874.a n = A190328 (n + 1)

end A190328

/-! ## A190328.P2981875426467447306

`∑[A168185(n)]+comp[6*n]%A230995(n+2)`
-/

namespace A190328.P2981875426467447306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) (A230995 (n + 2))

end

end A190328.P2981875426467447306

namespace A190328

/-- `∑[A168185(n)]+comp[6*n]%A230995(n+2)` -/
def P2981875426467447306.Spec : Prop :=
  ∀ n, P2981875426467447306.a n = A190328 (n + 1)

end A190328

/-! ## A190328.P2759221003373167736

`∑[A168185(n)]+A001222(3^floor(n/5))+1+n`
-/

namespace A190328.P2759221003373167736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 5⌋ : ℤ))).toNat + 1 + (n : ℤ))

end

end A190328.P2759221003373167736

namespace A190328

/-- `∑[A168185(n)]+A001222(3^floor(n/5))+1+n` -/
def P2759221003373167736.Spec : Prop :=
  ∀ n, P2759221003373167736.a n = A190328 (n + 1)

end A190328

/-! ## A190328.P472590292741167301

`A043096(2*n+3)-A093914(A207539(n))`
-/

namespace A190328.P472590292741167301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (2 * n + 3) - A093914 (A207539 n).toNat

end

end A190328.P472590292741167301

namespace A190328

/-- `A043096(2*n+3)-A093914(A207539(n))` -/
def P472590292741167301.Spec : Prop :=
  ∀ n, P472590292741167301.a n = A190328 (n + 1)

end A190328

/-!
# A190329: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(2), t=1/s.

The programs for A190329, the canonical program `A190329.P16318533487142728310` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190329 has offset 1).

The definition of A190329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190329.P16318533487142728310

`n+1+floor((n+1)*sqrt(2))+floor((n+1)/sqrt(2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190329

/-- `n+1+floor((n+1)*sqrt(2))+floor((n+1)/sqrt(2))` -/
def P16318533487142728310.Spec : Prop :=
  ∀ n, P16318533487142728310.a n = A190329 (n + 1)

theorem P16318533487142728310.correct : P16318533487142728310.Spec := by
  intro n
  simp only [A190329, Nat.add_sub_cancel]

end A190329

/-! ## A190329.P9937040958972047982

`∑[Δ[A091087(n)]+1]`
-/

namespace A190329.P9937040958972047982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190329.P9937040958972047982

namespace A190329

/-- `∑[Δ[A091087(n)]+1]` -/
def P9937040958972047982.Spec : Prop :=
  ∀ n, P9937040958972047982.a n = A190329 (n + 1)

end A190329

/-! ## A190329.P6764362301751250500

`∑[A089585(Δ[A091087(n)])-2]`
-/

namespace A190329.P6764362301751250500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089585 (f2 (n + 1) - f2 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190329.P6764362301751250500

namespace A190329

/-- `∑[A089585(Δ[A091087(n)])-2]` -/
def P6764362301751250500.Spec : Prop :=
  ∀ n, P6764362301751250500.a n = A190329 (n + 1)

end A190329

/-! ## A190329.P1049378879079318180

`∑[A091242(Δ[A091087(n)])-2]`
-/

namespace A190329.P1049378879079318180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (f2 (n + 1) - f2 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190329.P1049378879079318180

namespace A190329

/-- `∑[A091242(Δ[A091087(n)])-2]` -/
def P1049378879079318180.Spec : Prop :=
  ∀ n, P1049378879079318180.a n = A190329 (n + 1)

end A190329

/-! ## A190329.P4100395828138013610

`∑[A112780(Δ[A091087(n)])-2]`
-/

namespace A190329.P4100395828138013610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112780 (f2 (n + 1) - f2 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190329.P4100395828138013610

namespace A190329

/-- `∑[A112780(Δ[A091087(n)])-2]` -/
def P4100395828138013610.Spec : Prop :=
  ∀ n, P4100395828138013610.a n = A190329 (n + 1)

end A190329

/-! ## A190329.P17754061784781177177

`∑[A280382(Δ[A091087(n)])-2]`
-/

namespace A190329.P17754061784781177177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (f2 (n + 1) - f2 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190329.P17754061784781177177

namespace A190329

/-- `∑[A280382(Δ[A091087(n)])-2]` -/
def P17754061784781177177.Spec : Prop :=
  ∀ n, P17754061784781177177.a n = A190329 (n + 1)

end A190329

/-!
# A190330: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(2), t=1/s.

The programs for A190330, the canonical program `A190330.P12437439681136464411` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190330 has offset 1).

The definition of A190330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190330.P12437439681136464411

`n+1+floor((n+1)/sqrt(2))+floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190330

/-- `n+1+floor((n+1)/sqrt(2))+floor((n+1)/2)` -/
def P12437439681136464411.Spec : Prop :=
  ∀ n, P12437439681136464411.a n = A190330 (n + 1)

theorem P12437439681136464411.correct : P12437439681136464411.Spec := by
  intro n
  simp only [A190330, Nat.add_sub_cancel]

end A190330

/-! ## A190330.P13399196452592527420

`ceil(∑[Δ[A049472(n)]+1]+n/2)`
-/

namespace A190330.P13399196452592527420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (n : ℚ) / 2⌉

end

end A190330.P13399196452592527420

namespace A190330

/-- `ceil(∑[Δ[A049472(n)]+1]+n/2)` -/
def P13399196452592527420.Spec : Prop :=
  ∀ n, P13399196452592527420.a n = A190330 (n + 1)

end A190330

/-! ## A190330.P16839451035784914284

`∑[A188295(n+1)+A000035(n)+1]`
-/

namespace A190330.P16839451035784914284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) + (A000035 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190330.P16839451035784914284

namespace A190330

/-- `∑[A188295(n+1)+A000035(n)+1]` -/
def P16839451035784914284.Spec : Prop :=
  ∀ n, P16839451035784914284.a n = A190330 (n + 1)

end A190330

/-! ## A190330.P7862235723900355501

`A286924(A003152(n+1))`
-/

namespace A190330.P7862235723900355501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (A003152 (n + 1)).toNat

end

end A190330.P7862235723900355501

namespace A190330

/-- `A286924(A003152(n+1))` -/
def P7862235723900355501.Spec : Prop :=
  ∀ n, P7862235723900355501.a n = A190330 (n + 1)

end A190330

/-! ## A190330.P4497675952257271502

`A286924(A049474(n+1)+n)`
-/

namespace A190330.P4497675952257271502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (A049474 (n + 1) + (n : ℤ)).toNat

end

end A190330.P4497675952257271502

namespace A190330

/-- `A286924(A049474(n+1)+n)` -/
def P4497675952257271502.Spec : Prop :=
  ∀ n, P4497675952257271502.a n = A190330 (n + 1)

end A190330

/-! ## A190330.P12395824982315993366

`A286924(A049472(n+1)+n+1)`
-/

namespace A190330.P12395824982315993366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (A049472 (n + 1) + (n + 1 : ℤ)).toNat

end

end A190330.P12395824982315993366

namespace A190330

/-- `A286924(A049472(n+1)+n+1)` -/
def P12395824982315993366.Spec : Prop :=
  ∀ n, P12395824982315993366.a n = A190330 (n + 1)

end A190330

/-! ## A190330.P5432202454160295699

`A286924(A190329(n+1)-A001951(n+1))`
-/

namespace A190330.P5432202454160295699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (A190329 (n + 1) - A001951 (n + 1)).toNat

end

end A190330.P5432202454160295699

namespace A190330

/-- `A286924(A190329(n+1)-A001951(n+1))` -/
def P5432202454160295699.Spec : Prop :=
  ∀ n, P5432202454160295699.a n = A190330 (n + 1)

end A190330

/-!
# A190331: a(n) = 8*a(n-1) + 2*a(n-2), with a(0)=0, a(1)=1.

The programs for A190331, the canonical program `A190331.P11781615265508736982` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190331 has offset 0).

The definition of A190331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+2*a(n-2)` (program `A190331.P11781615265508736982`, by `A190331.P11781615265508736982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190331.P11781615265508736982

`8*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190331

/-- `8*a(n-1)+2*a(n-2)` -/
def P11781615265508736982.Spec : Prop :=
  ∀ n, (P11781615265508736982.a n : ℤ) = A190331 n

theorem P11781615265508736982.correct : P11781615265508736982.Spec := by
  intro n
  simp only [A190331]

end A190331

/-! ## A190331.P3758381703283882888

`ogf(x/(1-8x-2x^2))`
-/

namespace A190331.P3758381703283882888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, -2] n

end

end A190331.P3758381703283882888

namespace A190331

/-- `ogf(x/(1-8x-2x^2))` -/
def P3758381703283882888.Spec : Prop :=
  ∀ n, P3758381703283882888.a n = A190331 n

end A190331

/-! ## A190331.P14075031222463004131

`2*(4-(4*(1-a(n-1))-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A190331.P14075031222463004131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (4 - (4 * (1 - a (n - 1)) - a (n - 2)))

end

end A190331.P14075031222463004131

namespace A190331

/-- `2*(4-(4*(1-a(n-1))-a(n-2)))` -/
def P14075031222463004131.Spec : Prop :=
  ∀ n, P14075031222463004131.a n = A190331 n

end A190331

/-! ## A190331.P5692475832087550901

`1/12*sqrt(2)*((4+3*sqrt(2))^n-(4-3*sqrt(2))^n)`
-/

namespace A190331.P5692475832087550901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 12 : ℝ) * Real.sqrt (2 : ℝ) * ((4 + 3 * Real.sqrt (2 : ℝ)) ^ n - (4 - 3 * Real.sqrt (2 : ℝ)) ^ n)

end

end A190331.P5692475832087550901

namespace A190331

/-- `1/12*sqrt(2)*((4+3*sqrt(2))^n-(4-3*sqrt(2))^n)` -/
def P5692475832087550901.Spec : Prop :=
  ∀ n, P5692475832087550901.a n = (A190331 n : ℝ)

end A190331

/-! ## A190331.P14024761043311404367

`∑[A228405(A062708(n))]`
-/

namespace A190331.P14024761043311404367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A062708 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190331.P14024761043311404367

namespace A190331

/-- `∑[A228405(A062708(n))]` -/
def P14024761043311404367.Spec : Prop :=
  ∀ n, P14024761043311404367.a n = A190331 n

end A190331

/-!
# A190332: n + [n*s/r] + [n*t/r]; r=1, s=sqrt(3), t=1/s.

The programs for A190332, the canonical program `A190332.P9559431353090363592` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190332 has offset 1).

The definition of A190332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190332.P9559431353090363592

`n+1+floor((n+1)*sqrt(3))+floor((n+1)/sqrt(3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190332

/-- `n+1+floor((n+1)*sqrt(3))+floor((n+1)/sqrt(3))` -/
def P9559431353090363592.Spec : Prop :=
  ∀ n, P9559431353090363592.a n = A190332 (n + 1)

theorem P9559431353090363592.correct : P9559431353090363592.Spec := by
  intro n
  simp only [A190332, Nat.add_sub_cancel]

end A190332

/-! ## A190332.P4153479308691757398

`abs(floor((sqrt(3)+2)*(n+1))-A195072(n+1))`
-/

namespace A190332.P4153479308691757398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋ - A195072 (n + 1)|

end

end A190332.P4153479308691757398

namespace A190332

/-- `abs(floor((sqrt(3)+2)*(n+1))-A195072(n+1))` -/
def P4153479308691757398.Spec : Prop :=
  ∀ n, P4153479308691757398.a n = A190332 (n + 1)

end A190332

/-! ## A190332.P7813546941119951193

`abs(A195072(n+1)-A003512(n+1))`
-/

namespace A190332.P7813546941119951193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195072 (n + 1) - A003512 (n + 1)|

end

end A190332.P7813546941119951193

namespace A190332

/-- `abs(A195072(n+1)-A003512(n+1))` -/
def P7813546941119951193.Spec : Prop :=
  ∀ n, P7813546941119951193.a n = A190332 (n + 1)

end A190332

/-! ## A190332.P10296978044079124283

`abs(A206903(3*(n+1))-2*(n+1))`
-/

namespace A190332.P10296978044079124283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A206903 (3 * (n + 1)) - (2 * (n + 1) : ℤ)|

end

end A190332.P10296978044079124283

namespace A190332

/-- `abs(A206903(3*(n+1))-2*(n+1))` -/
def P10296978044079124283.Spec : Prop :=
  ∀ n, P10296978044079124283.a n = A190332 (n + 1)

end A190332

/-! ## A190332.P50509841421361141

`A028310(A186539(n+1)+floor((n+1)*sqrt(3)))`
-/

namespace A190332.P50509841421361141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A186539 (n + 1) + ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋).toNat

end

end A190332.P50509841421361141

namespace A190332

/-- `A028310(A186539(n+1)+floor((n+1)*sqrt(3)))` -/
def P50509841421361141.Spec : Prop :=
  ∀ n, P50509841421361141.a n = A190332 (n + 1)

end A190332

/-!
# A190333: n + [n*r/s] + [n*t/s]; r=1, s=sqrt(3), t=1/s.

The programs for A190333, the canonical program `A190333.P17105326078520865624` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190333 has offset 1).

The definition of A190333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190333.P17105326078520865624

`n+1+floor((n+1)/sqrt(3))+floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190333

/-- `n+1+floor((n+1)/sqrt(3))+floor((n+1)/3)` -/
def P17105326078520865624.Spec : Prop :=
  ∀ n, P17105326078520865624.a n = A190333 (n + 1)

theorem P17105326078520865624.correct : P17105326078520865624.Spec := by
  intro n
  simp only [A190333, Nat.add_sub_cancel]

end A190333

/-! ## A190333.P3495130384663856268

`floor(A097337(n+1)+A008574(n+1)/3)`
-/

namespace A190333.P3495130384663856268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097337 (n + 1) : ℚ) + (A008574 (n + 1) : ℚ) / 3⌋

end

end A190333.P3495130384663856268

namespace A190333

/-- `floor(A097337(n+1)+A008574(n+1)/3)` -/
def P3495130384663856268.Spec : Prop :=
  ∀ n, P3495130384663856268.a n = A190333 (n + 1)

end A190333

/-!
# A190334: a(n) = n + floor(n*r/t) + floor(n*s/t) where r=1, s=sqrt(3), t=1/s.

The programs for A190334, the canonical program `A190334.P2350078874624788239` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190334 has offset 1).

The definition of A190334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190334.P8397832539814324703

`floor((n+1)*(4+sqrt(3)))`
-/

namespace A190334.P8397832539814324703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (4 + Real.sqrt (3 : ℝ))⌋

end

end A190334.P8397832539814324703

namespace A190334

/-- `floor((n+1)*(4+sqrt(3)))` -/
def P8397832539814324703.Spec : Prop :=
  ∀ n, P8397832539814324703.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P2350078874624788239

`4*(n+1)+A022838(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190334

/-- `4*(n+1)+A022838(n+1)` -/
def P2350078874624788239.Spec : Prop :=
  ∀ n, P2350078874624788239.a n = A190334 (n + 1)

theorem P2350078874624788239.correct : P2350078874624788239.Spec := by
  intro n
  simp only [A190334, Nat.add_sub_cancel]

end A190334

/-! ## A190334.P1204729579758057419

`a(n-1)+A022838(n+1)-A022838(n)+4` with `a(0)=5`
-/

namespace A190334.P1204729579758057419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + A022838 (n + 1) - A022838 n + 4

end

end A190334.P1204729579758057419

namespace A190334

/-- `a(n-1)+A022838(n+1)-A022838(n)+4` -/
def P1204729579758057419.Spec : Prop :=
  ∀ n, P1204729579758057419.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P18318147740493223773

`∑[A080757(n)+4]`
-/

namespace A190334.P18318147740493223773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190334.P18318147740493223773

namespace A190334

/-- `∑[A080757(n)+4]` -/
def P18318147740493223773.Spec : Prop :=
  ∀ n, P18318147740493223773.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P2542942610685134828

`∑[A276865(n+1)+2]`
-/

namespace A190334.P2542942610685134828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190334.P2542942610685134828

namespace A190334

/-- `∑[A276865(n+1)+2]` -/
def P2542942610685134828.Spec : Prop :=
  ∀ n, P2542942610685134828.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P12451271553303235750

`∑[A007538(n+1)+3]`
-/

namespace A190334.P12451271553303235750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190334.P12451271553303235750

namespace A190334

/-- `∑[A007538(n+1)+3]` -/
def P12451271553303235750.Spec : Prop :=
  ∀ n, P12451271553303235750.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P17293072178284536648

`∑[A188068(n+1)+5]`
-/

namespace A190334.P17293072178284536648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190334.P17293072178284536648

namespace A190334

/-- `∑[A188068(n+1)+5]` -/
def P17293072178284536648.Spec : Prop :=
  ∀ n, P17293072178284536648.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P13384121023064821590

`A182778(n+1)+1+n`
-/

namespace A190334.P13384121023064821590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1) + 1 + (n : ℤ)

end

end A190334.P13384121023064821590

namespace A190334

/-- `A182778(n+1)+1+n` -/
def P13384121023064821590.Spec : Prop :=
  ∀ n, P13384121023064821590.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P13114524819849211645

`A003512(n+1)+2*(n+1)`
-/

namespace A190334.P13114524819849211645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1) + (2 * (n + 1) : ℤ)

end

end A190334.P13114524819849211645

namespace A190334

/-- `A003512(n+1)+2*(n+1)` -/
def P13114524819849211645.Spec : Prop :=
  ∀ n, P13114524819849211645.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P8940124158232327115

`A054088(n+1)+3*(n+1)`
-/

namespace A190334.P8940124158232327115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1) + (3 * (n + 1) : ℤ)

end

end A190334.P8940124158232327115

namespace A190334

/-- `A054088(n+1)+3*(n+1)` -/
def P8940124158232327115.Spec : Prop :=
  ∀ n, P8940124158232327115.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P3988735697570352455

`A180123(n+1)+2*n+3`
-/

namespace A190334.P3988735697570352455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) + (2 * n + 3 : ℤ)

end

end A190334.P3988735697570352455

namespace A190334

/-- `A180123(n+1)+2*n+3` -/
def P3988735697570352455.Spec : Prop :=
  ∀ n, P3988735697570352455.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P3583063288158939975

`A198081(n+1)+A004767(n)`
-/

namespace A190334.P3583063288158939975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1) + A004767 n

end

end A190334.P3583063288158939975

namespace A190334

/-- `A198081(n+1)+A004767(n)` -/
def P3583063288158939975.Spec : Prop :=
  ∀ n, P3583063288158939975.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P708413398985119493

`A017053(n)-A182777(n+1)`
-/

namespace A190334.P708413398985119493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A182777 (n + 1)

end

end A190334.P708413398985119493

namespace A190334

/-- `A017053(n)-A182777(n+1)` -/
def P708413398985119493.Spec : Prop :=
  ∀ n, P708413398985119493.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P883039661594225167

`A180122(n+1)+A016789(n)+2`
-/

namespace A190334.P883039661594225167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + (A016789 n + 2)

end

end A190334.P883039661594225167

namespace A190334

/-- `A180122(n+1)+A016789(n)+2` -/
def P883039661594225167.Spec : Prop :=
  ∀ n, P883039661594225167.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P2689540875652559463

`A004767(n)+A054088(n+1)-n`
-/

namespace A190334.P2689540875652559463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + (A054088 (n + 1) - (n : ℤ))

end

end A190334.P2689540875652559463

namespace A190334

/-- `A004767(n)+A054088(n+1)-n` -/
def P2689540875652559463.Spec : Prop :=
  ∀ n, P2689540875652559463.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P3624785822707361430

`A022838(n+1)+A016885(n)+1-n`
-/

namespace A190334.P3624785822707361430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + (A016885 n + 1) - (n : ℤ)

end

end A190334.P3624785822707361430

namespace A190334

/-- `A022838(n+1)+A016885(n)+1-n` -/
def P3624785822707361430.Spec : Prop :=
  ∀ n, P3624785822707361430.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P3590326442307386885

`A022838(n+1)+A016777(n)+n+3`
-/

namespace A190334.P3590326442307386885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A016777 n + (n + 3 : ℤ)

end

end A190334.P3590326442307386885

namespace A190334

/-- `A022838(n+1)+A016777(n)+n+3` -/
def P3590326442307386885.Spec : Prop :=
  ∀ n, P3590326442307386885.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P14877453388489763776

`A005843(n+1)+A022838(n+1)+A005843(n+1)`
-/

namespace A190334.P14877453388489763776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A022838 (n + 1) + A005843 (n + 1))

end

end A190334.P14877453388489763776

namespace A190334

/-- `A005843(n+1)+A022838(n+1)+A005843(n+1)` -/
def P14877453388489763776.Spec : Prop :=
  ∀ n, P14877453388489763776.a n = A190334 (n + 1)

end A190334

/-! ## A190334.P14875509235495455975

`A080590(n+2)+2*n`
-/

namespace A190334.P14875509235495455975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 2) + (2 * n : ℤ)

end

end A190334.P14875509235495455975

namespace A190334

/-- `A080590(n+2)+2*n` -/
def P14875509235495455975.Spec : Prop :=
  ∀ n, P14875509235495455975.a n = A190334 (n + 1)

end A190334

/-!
# A190335: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=sqrt(2), t=1/s.

The programs for A190335, the canonical program `A190335.P8871768036239732935` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190335 has offset 1).

The definition of A190335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190335.P8871768036239732935

`floor(A187971(n+1)/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190335

/-- `floor(A187971(n+1)/2)` -/
def P8871768036239732935.Spec : Prop :=
  ∀ n, P8871768036239732935.a n = A190335 (n + 1)

theorem P8871768036239732935.correct : P8871768036239732935.Spec := by
  intro n
  simp only [A190335, Nat.add_sub_cancel]

end A190335

/-! ## A190335.P1205353305622170313

`comp[A001951(ceil(2*(n+1)/3))+n]+1`
-/

namespace A190335.P1205353305622170313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 ⌈(2 * (n + 1) : ℚ) / 3⌉.toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190335.P1205353305622170313

namespace A190335

/-- `comp[A001951(ceil(2*(n+1)/3))+n]+1` -/
def P1205353305622170313.Spec : Prop :=
  ∀ n, (P1205353305622170313.a n : ℤ) = A190335 (n + 1)

end A190335

/-! ## A190335.P14076513289392693707

`ceil((∑[(A188295(n+1)+1)²+1]-1)/2)`
-/

namespace A190335.P14076513289392693707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188295 (n + 1) + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2⌉

end

end A190335.P14076513289392693707

namespace A190335

/-- `ceil((∑[(A188295(n+1)+1)²+1]-1)/2)` -/
def P14076513289392693707.Spec : Prop :=
  ∀ n, P14076513289392693707.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P3225327670071797434

`A003152(n+1)+A194990(n+1)-1`
-/

namespace A190335.P3225327670071797434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + (A194990 (n + 1) - 1)

end

end A190335.P3225327670071797434

namespace A190335

/-- `A003152(n+1)+A194990(n+1)-1` -/
def P3225327670071797434.Spec : Prop :=
  ∀ n, P3225327670071797434.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P11097447954480214419

`A032766(floor(A001951(n+1)/2))+n+1`
-/

namespace A190335.P11097447954480214419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ⌊(A001951 (n + 1) : ℚ) / 2⌋.toNat + (n + 1 : ℤ)

end

end A190335.P11097447954480214419

namespace A190335

/-- `A032766(floor(A001951(n+1)/2))+n+1` -/
def P11097447954480214419.Spec : Prop :=
  ∀ n, P11097447954480214419.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P882489571923259501

`n+1+A049472(n+1)+A004526(A049472(n+1))`
-/

namespace A190335.P882489571923259501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A049472 (n + 1) + A004526 (A049472 (n + 1)).toNat)

end

end A190335.P882489571923259501

namespace A190335

/-- `n+1+A049472(n+1)+A004526(A049472(n+1))` -/
def P882489571923259501.Spec : Prop :=
  ∀ n, P882489571923259501.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P115803086075928976

`A172474(n+1)+A003152(n+1)`
-/

namespace A190335.P115803086075928976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (n + 1) + A003152 (n + 1)

end

end A190335.P115803086075928976

namespace A190335

/-- `A172474(n+1)+A003152(n+1)` -/
def P115803086075928976.Spec : Prop :=
  ∀ n, P115803086075928976.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P6411475951689477285

`A187968(A003152(n+1))`
-/

namespace A190335.P6411475951689477285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (A003152 (n + 1)).toNat

end

end A190335.P6411475951689477285

namespace A190335

/-- `A187968(A003152(n+1))` -/
def P6411475951689477285.Spec : Prop :=
  ∀ n, P6411475951689477285.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P9151566175900933833

`A187968(A049472(n+1)+n+1)`
-/

namespace A190335.P9151566175900933833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (A049472 (n + 1) + (n + 1 : ℤ)).toNat

end

end A190335.P9151566175900933833

namespace A190335

/-- `A187968(A049472(n+1)+n+1)` -/
def P9151566175900933833.Spec : Prop :=
  ∀ n, P9151566175900933833.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P3264631418020496021

`A187968(A182769(n+1)-(n+1))`
-/

namespace A190335.P3264631418020496021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (A182769 (n + 1) - (n + 1 : ℤ)).toNat

end

end A190335.P3264631418020496021

namespace A190335

/-- `A187968(A182769(n+1)-(n+1))` -/
def P3264631418020496021.Spec : Prop :=
  ∀ n, P3264631418020496021.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P1994278335085253867

`A188040(A003152(n+1)+1)-2`
-/

namespace A190335.P1994278335085253867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (A003152 (n + 1) + 1).toNat - 2

end

end A190335.P1994278335085253867

namespace A190335

/-- `A188040(A003152(n+1)+1)-2` -/
def P1994278335085253867.Spec : Prop :=
  ∀ n, P1994278335085253867.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P10818938503806667005

`A049472(A188375(A049472(n+1)+n+1))`
-/

namespace A190335.P10818938503806667005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A188375 (A049472 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A190335.P10818938503806667005

namespace A190335

/-- `A049472(A188375(A049472(n+1)+n+1))` -/
def P10818938503806667005.Spec : Prop :=
  ∀ n, P10818938503806667005.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P14960631508782422293

`A004526(A187971(n+1))`
-/

namespace A190335.P14960631508782422293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187971 (n + 1)).toNat

end

end A190335.P14960631508782422293

namespace A190335

/-- `A004526(A187971(n+1))` -/
def P14960631508782422293.Spec : Prop :=
  ∀ n, P14960631508782422293.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P18402755478206776738

`lt[Δ[A097509(2*n+1)]², A188038(2*(n+1))]`
-/

namespace A190335.P18402755478206776738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A190335.P18402755478206776738

namespace A190335

/-- `lt[Δ[A097509(2*n+1)]², A188038(2*(n+1))]` -/
def P18402755478206776738.Spec : Prop :=
  ∀ n, (P18402755478206776738.a n : ℤ) = A190335 (n + 1)

end A190335

/-! ## A190335.P9699967874588075435

`eq[A187967(2*n+1)*A187967(2*(n+1)), A188038(2*(n+1))]`
-/

namespace A190335.P9699967874588075435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (2 * n + 1) * A187967 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190335.P9699967874588075435

namespace A190335

/-- `eq[A187967(2*n+1)*A187967(2*(n+1)), A188038(2*(n+1))]` -/
def P9699967874588075435.Spec : Prop :=
  ∀ n, (P9699967874588075435.a n : ℤ) = A190335 (n + 1)

end A190335

/-! ## A190335.P8022977975794916378

`A172474(A188396(n+1))`
-/

namespace A190335.P8022977975794916378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A188396 (n + 1)).toNat

end

end A190335.P8022977975794916378

namespace A190335

/-- `A172474(A188396(n+1))` -/
def P8022977975794916378.Spec : Prop :=
  ∀ n, P8022977975794916378.a n = A190335 (n + 1)

end A190335

/-! ## A190335.P5885756838595919950

`A059169(A359351(n+1))`
-/

namespace A190335.P5885756838595919950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A359351 (n + 1)).toNat

end

end A190335.P5885756838595919950

namespace A190335

/-- `A059169(A359351(n+1))` -/
def P5885756838595919950.Spec : Prop :=
  ∀ n, P5885756838595919950.a n = A190335 (n + 1)

end A190335

/-!
# A190336: a(n) = n + [n*r/s] + [n*t/s]; r=2, s=sqrt(2), t=1/s.

The programs for A190336, the canonical program `A190336.P11872428746183197603` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190336 has offset 1).

The definition of A190336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190336.P3278335940372141399

`comp[floor(n*sqrt(2))-1]-floor(n/2)`
-/

namespace A190336.P3278335940372141399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A190336.P3278335940372141399

namespace A190336

/-- `comp[floor(n*sqrt(2))-1]-floor(n/2)` -/
def P3278335940372141399.Spec : Prop :=
  ∀ n, P3278335940372141399.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P11872428746183197603

`floor(A098021(n+1)/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190336

/-- `floor(A098021(n+1)/2)` -/
def P11872428746183197603.Spec : Prop :=
  ∀ n, P11872428746183197603.a n = A190336 (n + 1)

theorem P11872428746183197603.correct : P11872428746183197603.Spec := by
  intro n
  simp only [A190336, Nat.add_sub_cancel]

end A190336

/-! ## A190336.P11097753031127054662

`ceil(A140868(n+1)/2)`
-/

namespace A190336.P11097753031127054662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140868 (n + 1) : ℚ) / 2⌉

end

end A190336.P11097753031127054662

namespace A190336

/-- `ceil(A140868(n+1)/2)` -/
def P11097753031127054662.Spec : Prop :=
  ∀ n, P11097753031127054662.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P14931541979109197007

`ceil(A003151(n+1)+n/2)`
-/

namespace A190336.P14931541979109197007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003151 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A190336.P14931541979109197007

namespace A190336

/-- `ceil(A003151(n+1)+n/2)` -/
def P14931541979109197007.Spec : Prop :=
  ∀ n, P14931541979109197007.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P10964966866821240291

`ceil((A022804(n+1)+n)/2)`
-/

namespace A190336.P10964966866821240291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022804 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A190336.P10964966866821240291

namespace A190336

/-- `ceil((A022804(n+1)+n)/2)` -/
def P10964966866821240291.Spec : Prop :=
  ∀ n, P10964966866821240291.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P8056148306769012752

`∑[Δ[A001951(n)]+n%2+1]`
-/

namespace A190336.P8056148306769012752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + ((n % 2 : ℕ) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190336.P8056148306769012752

namespace A190336

/-- `∑[Δ[A001951(n)]+n%2+1]` -/
def P8056148306769012752.Spec : Prop :=
  ∀ n, P8056148306769012752.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P12130392212346295796

`A049473(A189458(n+1))`
-/

namespace A190336.P12130392212346295796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A189458 (n + 1)).toNat

end

end A190336.P12130392212346295796

namespace A190336

/-- `A049473(A189458(n+1))` -/
def P12130392212346295796.Spec : Prop :=
  ∀ n, P12130392212346295796.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P10562106079554811848

`A049473(A330173(n+1)-(n+1))`
-/

namespace A190336.P10562106079554811848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A330173 (n + 1) - (n + 1 : ℤ)).toNat

end

end A190336.P10562106079554811848

namespace A190336

/-- `A049473(A330173(n+1)-(n+1))` -/
def P10562106079554811848.Spec : Prop :=
  ∀ n, P10562106079554811848.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P5274695940763025389

`A049473(A003152(n+1)+A003151(n+1))`
-/

namespace A190336.P5274695940763025389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A003152 (n + 1) + A003151 (n + 1)).toNat

end

end A190336.P5274695940763025389

namespace A190336

/-- `A049473(A003152(n+1)+A003151(n+1))` -/
def P5274695940763025389.Spec : Prop :=
  ∀ n, P5274695940763025389.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P14233387593342389689

`A065033(A140868(n+1))`
-/

namespace A190336.P14233387593342389689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A140868 (n + 1)).toNat

end

end A190336.P14233387593342389689

namespace A190336

/-- `A065033(A140868(n+1))` -/
def P14233387593342389689.Spec : Prop :=
  ∀ n, P14233387593342389689.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P976854688695258155

`A004526(A098021(n+1))`
-/

namespace A190336.P976854688695258155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098021 (n + 1)).toNat

end

end A190336.P976854688695258155

namespace A190336

/-- `A004526(A098021(n+1))` -/
def P976854688695258155.Spec : Prop :=
  ∀ n, P976854688695258155.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P17163130649287429565

`A140106(A188039(n+2))`
-/

namespace A190336.P17163130649287429565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A188039 (n + 2)).toNat

end

end A190336.P17163130649287429565

namespace A190336

/-- `A140106(A188039(n+2))` -/
def P17163130649287429565.Spec : Prop :=
  ∀ n, P17163130649287429565.a n = A190336 (n + 1)

end A190336

/-! ## A190336.P8721567321576968175

`A004526(A187973(2*(n+1)))`
-/

namespace A190336.P8721567321576968175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187973 (2 * (n + 1))).toNat

end

end A190336.P8721567321576968175

namespace A190336

/-- `A004526(A187973(2*(n+1)))` -/
def P8721567321576968175.Spec : Prop :=
  ∀ n, P8721567321576968175.a n = A190336 (n + 1)

end A190336

/-!
# A190337: a(n) = n + [n*r/t] + [n*s/t]; r=2, s=sqrt(2), t=1/s.

The programs for A190337, the canonical program `A190337.P11309189997549184098` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190337 has offset 1).

The definition of A190337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190337.P11309189997549184098

`3*(n+1)+floor((n+1)*sqrt(8))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190337

/-- `3*(n+1)+floor((n+1)*sqrt(8))` -/
def P11309189997549184098.Spec : Prop :=
  ∀ n, P11309189997549184098.a n = A190337 (n + 1)

theorem P11309189997549184098.correct : P11309189997549184098.Spec := by
  intro n
  simp only [A190337, Nat.add_sub_cancel]

end A190337

/-! ## A190337.P12514535129790692006

`∑[A018245(n+1)+1]`
-/

namespace A190337.P12514535129790692006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190337.P12514535129790692006

namespace A190337

/-- `∑[A018245(n+1)+1]` -/
def P12514535129790692006.Spec : Prop :=
  ∀ n, P12514535129790692006.a n = A190337 (n + 1)

end A190337

/-! ## A190337.P15137582773920589282

`∑[A276858(n+1)+3]`
-/

namespace A190337.P15137582773920589282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276858 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190337.P15137582773920589282

namespace A190337

/-- `∑[A276858(n+1)+3]` -/
def P15137582773920589282.Spec : Prop :=
  ∀ n, P15137582773920589282.a n = A190337 (n + 1)

end A190337

/-! ## A190337.P1463260721222652326

`A190336(2*(n+1))`
-/

namespace A190337.P1463260721222652326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190336 (2 * (n + 1))

end

end A190337.P1463260721222652326

namespace A190337

/-- `A190336(2*(n+1))` -/
def P1463260721222652326.Spec : Prop :=
  ∀ n, P1463260721222652326.a n = A190337 (n + 1)

end A190337

/-! ## A190337.P6885798662207791008

`A098021(2*(n+1))/2`
-/

namespace A190337.P6885798662207791008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098021 (2 * (n + 1)) : ℚ) / 2

end

end A190337.P6885798662207791008

namespace A190337

/-- `A098021(2*(n+1))/2` -/
def P6885798662207791008.Spec : Prop :=
  ∀ n, P6885798662207791008.a n = (A190337 (n + 1) : ℚ)

end A190337

/-!
# A190339: The denominators of the subdiagonal in the difference table of the Bernoulli numbers.

The programs for A190339, there is no canonical definition to state claims against.
-/

/-! ## A190339.P16214405276067967498

`A141044(n)*A181131(n)`
-/

namespace A190339.P16214405276067967498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A181131 n

end

end A190339.P16214405276067967498

/-! ## A190339.P6346468108423770798

`A181131(n)+A169585(n)`
-/

namespace A190339.P6346468108423770798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181131 n + A169585 n

end

end A190339.P6346468108423770798

/-! ## A190339.P12597790161462612920

`A060308(n+1)*A238691(n)`
-/

namespace A190339.P12597790161462612920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1) * A238691 n

end

end A190339.P12597790161462612920

/-! ## A190339.P13325701061567128367

`A007917(2*(n+1))*A238691(n)`
-/

namespace A190339.P13325701061567128367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (2 * (n + 1)) * A238691 n

end

end A190339.P13325701061567128367

/-! ## A190339.P665706745096246189

`A181131(n)*A290318(A164555(n+1)*A164555(n))`
-/

namespace A190339.P665706745096246189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181131 n * A290318 (A164555 (n + 1) * A164555 n).toNat

end

end A190339.P665706745096246189

/-! ## A190339.P11243860667612525230

`A085738(2*(n+1)²)`
-/

namespace A190339.P11243860667612525230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (2 * (n + 1) ^ 2)

end

end A190339.P11243860667612525230

/-!
# A190340: Number of (n+1)X(n+1) symmetric binary matrices without the pattern 1 1 antidiagonally.

The programs for A190340, there is no canonical definition to state claims against.
-/

/-! ## A190340.P12100438731584123353

`2*∏[A070550(n+2)]`
-/

namespace A190340.P12100438731584123353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190340.P12100438731584123353

/-! ## A190340.P12523601843493717998

`2*∏[Δ[A006498(n+4)]]`
-/

namespace A190340.P12523601843493717998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190340.P12523601843493717998

/-! ## A190340.P7954467055460238832

`record[a(n-1)*A070550(n)]` with `a(0)=4, a(1)=2`
-/

namespace A190340.P7954467055460238832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  f1 (n - 1) * A070550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190340.P7954467055460238832

/-! ## A190340.P14906545817597407058

`∏[Δ[A006498(A009005(n+1))]]`
-/

namespace A190340.P14906545817597407058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A009005 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A190340.P14906545817597407058

/-! ## A190340.P4520809829186900642

`∏[Δ[A207858(A134869(n+1))]]`
-/

namespace A190340.P4520809829186900642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A134869 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A190340.P4520809829186900642

/-!
# A190342: Number of (n+1)X(n+1) symmetric binary matrices without the pattern 1 1 vertically, antidiagonally or horizontally.

The programs for A190342, there is no canonical definition to state claims against.
-/

/-! ## A190342.P12387555518678565794

`A168273(A161370(n)-A112576(n))`
-/

namespace A190342.P12387555518678565794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (A161370 n - A112576 n).toNat

end

end A190342.P12387555518678565794

/-!
# A190343: a(n) = floor(n^((n-1)/2)).

The programs for A190343, the canonical program `A190343.P11727038850840355755` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190343 has offset 1).

The definition of A190343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(n/2))` (program `A190343.P11727038850840355755`, by `A190343.P11727038850840355755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190343.P11727038850840355755

`floor((n+1)^(n/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190343

/-- `floor((n+1)^(n/2))` -/
def P11727038850840355755.Spec : Prop :=
  ∀ n, P11727038850840355755.a n = A190343 (n + 1)

theorem P11727038850840355755.correct : P11727038850840355755.Spec := by
  intro n
  simp only [A190343, Nat.add_sub_cancel]

end A190343

/-! ## A190343.P9644508028176908758

`ceil(sqrt(A001333(n)+(n+1)^n))-1`
-/

namespace A190343.P9644508028176908758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001333 n + ((n + 1) ^ n : ℤ) : ℝ)⌉ - 1

end

end A190343.P9644508028176908758

namespace A190343

/-- `ceil(sqrt(A001333(n)+(n+1)^n))-1` -/
def P9644508028176908758.Spec : Prop :=
  ∀ n, P9644508028176908758.a n = A190343 (n + 1)

end A190343

/-! ## A190343.P10340247453302900201

`A308778(n²)+floor(sqrt((n+1)^n))+1`
-/

namespace A190343.P10340247453302900201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + (Nat.sqrt ((n + 1) ^ n) + 1 : ℤ)

end

end A190343.P10340247453302900201

namespace A190343

/-- `A308778(n²)+floor(sqrt((n+1)^n))+1` -/
def P10340247453302900201.Spec : Prop :=
  ∀ n, P10340247453302900201.a n = A190343 (n + 1)

end A190343

/-! ## A190343.P14639898609035182543

`A255616(∑[4*n])`
-/

namespace A190343.P14639898609035182543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190343.P14639898609035182543

namespace A190343

/-- `A255616(∑[4*n])` -/
def P14639898609035182543.Spec : Prop :=
  ∀ n, P14639898609035182543.a n = A190343 (n + 1)

end A190343

/-! ## A190343.P15817653892152581049

`floor(sqrt((n+1)^n))%A332148(n)`
-/

namespace A190343.P15817653892152581049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.sqrt ((n + 1) ^ n) : ℤ) (A332148 n)

end

end A190343.P15817653892152581049

namespace A190343

/-- `floor(sqrt((n+1)^n))%A332148(n)` -/
def P15817653892152581049.Spec : Prop :=
  ∀ n, P15817653892152581049.a n = A190343 (n + 1)

end A190343

/-! ## A190343.P4027209793781811888

`or(A209229(n), A255616(A046092(n)))`
-/

namespace A190343.P4027209793781811888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 n) (A255616 (A046092 n).toNat)

end

end A190343.P4027209793781811888

namespace A190343

/-- `or(A209229(n), A255616(A046092(n)))` -/
def P4027209793781811888.Spec : Prop :=
  ∀ n, P4027209793781811888.a n = A190343 (n + 1)

end A190343

/-! ## A190343.P10999629460463887950

`A255616(A046092(n))+A209229(3*n)`
-/

namespace A190343.P10999629460463887950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (A046092 n).toNat + A209229 (3 * n)

end

end A190343.P10999629460463887950

namespace A190343

/-- `A255616(A046092(n))+A209229(3*n)` -/
def P10999629460463887950.Spec : Prop :=
  ∀ n, P10999629460463887950.a n = A190343 (n + 1)

end A190343

/-! ## A190343.P4994659364715466146

`A008836((n+1)²)*A255616(A046092(n))`
-/

namespace A190343.P4994659364715466146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 ((n + 1) ^ 2) * A255616 (A046092 n).toNat

end

end A190343.P4994659364715466146

namespace A190343

/-- `A008836((n+1)²)*A255616(A046092(n))` -/
def P4994659364715466146.Spec : Prop :=
  ∀ n, P4994659364715466146.a n = A190343 (n + 1)

end A190343

/-!
# A190344: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(5/2), t=sqrt(2/5).

The programs for A190344, the canonical program `A190344.P4692682026488623167` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190344 has offset 1).

The definition of A190344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190344.P4692682026488623167

`n+1+floor((n+1)*sqrt(5/2))+floor((n+1)*sqrt(2/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190344

/-- `n+1+floor((n+1)*sqrt(5/2))+floor((n+1)*sqrt(2/5))` -/
def P4692682026488623167.Spec : Prop :=
  ∀ n, P4692682026488623167.a n = A190344 (n + 1)

theorem P4692682026488623167.correct : P4692682026488623167.Spec := by
  intro n
  simp only [A190344, Nat.add_sub_cancel]

end A190344

/-!
# A190345: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(5/2), t=sqrt(2/5).

The programs for A190345, the canonical program `A190345.P7320473309210938472` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190345 has offset 1).

The definition of A190345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190345.P7320473309210938472

`n+1+floor((n+1)*sqrt(2/5))+floor(2*(n+1)/5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190345

/-- `n+1+floor((n+1)*sqrt(2/5))+floor(2*(n+1)/5)` -/
def P7320473309210938472.Spec : Prop :=
  ∀ n, P7320473309210938472.a n = A190345 (n + 1)

theorem P7320473309210938472.correct : P7320473309210938472.Spec := by
  intro n
  simp only [A190345, Nat.add_sub_cancel]

end A190345

/-!
# A190346: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(5/2), t=sqrt(2/5).

The programs for A190346, the canonical program `A190346.P152864003112684860` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190346 has offset 1).

The definition of A190346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190346.P152864003112684860

`3*(n+1)+floor((n+1)*sqrt(5/2))+floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190346

/-- `3*(n+1)+floor((n+1)*sqrt(5/2))+floor((n+1)/2)` -/
def P152864003112684860.Spec : Prop :=
  ∀ n, P152864003112684860.a n = A190346 (n + 1)

theorem P152864003112684860.correct : P152864003112684860.Spec := by
  intro n
  simp only [A190346, Nat.add_sub_cancel]

end A190346

/-! ## A190346.P4428251036194230559

`A110654(A187395(n+1)+A007310(n+1))`
-/

namespace A190346.P4428251036194230559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A187395 (n + 1) + A007310 (n + 1)).toNat

end

end A190346.P4428251036194230559

namespace A190346

/-- `A110654(A187395(n+1)+A007310(n+1))` -/
def P4428251036194230559.Spec : Prop :=
  ∀ n, P4428251036194230559.a n = A190346 (n + 1)

end A190346

/-!
# A190347: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(5/3), t=sqrt(3/5).

The programs for A190347, the canonical program `A190347.P13416208585164925367` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190347 has offset 1).

The definition of A190347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190347.P13416208585164925367

`n+1+floor((n+1)*sqrt(5/3))+floor((n+1)*sqrt(3/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190347

/-- `n+1+floor((n+1)*sqrt(5/3))+floor((n+1)*sqrt(3/5))` -/
def P13416208585164925367.Spec : Prop :=
  ∀ n, P13416208585164925367.a n = A190347 (n + 1)

theorem P13416208585164925367.correct : P13416208585164925367.Spec := by
  intro n
  simp only [A190347, Nat.add_sub_cancel]

end A190347

/-!
# A190348: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(5/3), t=sqrt(3/5).

The programs for A190348, the canonical program `A190348.P10931428306615310369` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190348 has offset 1).

The definition of A190348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190348.P10931428306615310369

`n+1+floor((n+1)*sqrt(3/5))+floor(3*(n+1)/5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190348

/-- `n+1+floor((n+1)*sqrt(3/5))+floor(3*(n+1)/5)` -/
def P10931428306615310369.Spec : Prop :=
  ∀ n, P10931428306615310369.a n = A190348 (n + 1)

theorem P10931428306615310369.correct : P10931428306615310369.Spec := by
  intro n
  simp only [A190348, Nat.add_sub_cancel]

end A190348

/-!
# A190349: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(5/3), t=sqrt(3/5).

The programs for A190349, there is no canonical definition to state claims against.
-/

/-! ## A190349.P13951060793132346726

`4*(n+1)-A276502(A047089(3*n+4))`
-/

namespace A190349.P13951060793132346726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A276502 (A047089 (3 * n + 4)).toNat

end

end A190349.P13951060793132346726

/-! ## A190349.P5246947748409872747

`or(A016825(n), A276502(A047089(3*n+4)))`
-/

namespace A190349.P5246947748409872747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016825 n) (A276502 (A047089 (3 * n + 4)).toNat)

end

end A190349.P5246947748409872747

/-! ## A190349.P3318559083686097482

`A266978(A147456(n+1))+A016825(n)`
-/

namespace A190349.P3318559083686097482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266978 (A147456 (n + 1)).toNat + A016825 n

end

end A190349.P3318559083686097482

/-! ## A190349.P14737210915337594809

`record[xor(3, n)]-A341999(A001045(n))`
-/

namespace A190349.P14737210915337594809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A341999 (A001045 n).toNat

end

end A190349.P14737210915337594809

/-! ## A190349.P2397704425884837907

`4*(n+1)-A131534(A296725(2*(n+2)))`
-/

namespace A190349.P2397704425884837907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A131534 (A296725 (2 * (n + 2))).toNat

end

end A190349.P2397704425884837907

/-!
# A190352: The continued fraction expansion of tanh(Pi) requires the computation of the pairs (p_n, q_n); sequence gives values of q_n.

The programs for A190352, there is no canonical definition to state claims against.
-/

/-! ## A190352.P8391880038828470733

`A060402(n)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A190352.P8391880038828470733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060402 n * a (n - 1) + a (n - 2)

end

end A190352.P8391880038828470733

/-!
# A190353: Goldbach conjecture: number of decompositions of n into an unordered sum of two odd primes (if n even) or three odd primes (if n odd).

The programs for A190353, there is no canonical definition to state claims against.
-/

/-! ## A190353.P2587133775356614289

`A351014(C(A004524(n), A001222(2*(n+2))))`
-/

namespace A190353.P2587133775356614289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Nat.choose (A004524 n).toNat (A001222 (2 * (n + 2))).toNat)

end

end A190353.P2587133775356614289

/-! ## A190353.P11365683452977206143

`A037813(A165011(n+1)+A094769(n+1))`
-/

namespace A190353.P11365683452977206143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A165011 (n + 1) + A094769 (n + 1)).toNat

end

end A190353.P11365683452977206143

/-! ## A190353.P15249369003140613237

`A031286(A282765(n+1)+A097283(n+1))`
-/

namespace A190353.P15249369003140613237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A282765 (n + 1) + A097283 (n + 1)).toNat

end

end A190353.P15249369003140613237

/-! ## A190353.P16790437413177901721

`A224782(A000045(n)*A048766(3*(n+1)))`
-/

namespace A190353.P16790437413177901721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A000045 n * A048766 (3 * (n + 1))).toNat

end

end A190353.P16790437413177901721

/-!
# A190355: Numbers n such that d(n-1)=d(n+1)=12 where d(k)=A000005(k) (number of divisors of k).

The programs for A190355, the canonical program `A190355.P15183790579650426373` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190355 has offset 1).

The definition of A190355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190355.P15183790579650426373

`∩[A030630(n+1)+1, A030630(n+1)-1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190355

/-- `∩[A030630(n+1)+1, A030630(n+1)-1]` -/
def P15183790579650426373.Spec : Prop :=
  ∀ n, (P15183790579650426373.a n : ℤ) = A190355 (n + 1)

theorem P15183790579650426373.correct : P15183790579650426373.Spec := by
  intro n
  simp only [A190355, Nat.add_sub_cancel]

end A190355

/-! ## A190355.P11184199109798104495

`∩[A030630(n+1), A062832(n+1)]+1`
-/

namespace A190355.P11184199109798104495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A190355.P11184199109798104495

namespace A190355

/-- `∩[A030630(n+1), A062832(n+1)]+1` -/
def P11184199109798104495.Spec : Prop :=
  ∀ n, (P11184199109798104495.a n : ℤ) = A190355 (n + 1)

end A190355

/-! ## A190355.P12850684381289565781

`∩[A030630(n+1)+1, A067888(n+1)]`
-/

namespace A190355.P12850684381289565781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190355.P12850684381289565781

namespace A190355

/-- `∩[A030630(n+1)+1, A067888(n+1)]` -/
def P12850684381289565781.Spec : Prop :=
  ∀ n, (P12850684381289565781.a n : ℤ) = A190355 (n + 1)

end A190355

/-! ## A190355.P487790061924292032

`A011760(∩[A030630(n+1), A062832(n+1)])`
-/

namespace A190355.P487790061924292032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190355.P487790061924292032

namespace A190355

/-- `A011760(∩[A030630(n+1), A062832(n+1)])` -/
def P487790061924292032.Spec : Prop :=
  ∀ n, P487790061924292032.a n = A190355 (n + 1)

end A190355

/-! ## A190355.P13089393065456733312

`∩[A011760(A030630(n+1)), A067888(n+1)]`
-/

namespace A190355.P13089393065456733312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A030630 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190355.P13089393065456733312

namespace A190355

/-- `∩[A011760(A030630(n+1)), A067888(n+1)]` -/
def P13089393065456733312.Spec : Prop :=
  ∀ n, (P13089393065456733312.a n : ℤ) = A190355 (n + 1)

end A190355

/-! ## A190355.P1152872104046862793

`A020725(∩[A030630(n+1), A062832(n+1)])`
-/

namespace A190355.P1152872104046862793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190355.P1152872104046862793

namespace A190355

/-- `A020725(∩[A030630(n+1), A062832(n+1)])` -/
def P1152872104046862793.Spec : Prop :=
  ∀ n, P1152872104046862793.a n = A190355 (n + 1)

end A190355

/-!
# A190356: Least positive x in the Diophantine equation x^3 + y^3 = n*z^3 (with x >= y and y != 0).

The programs for A190356, there is no canonical definition to state claims against.
-/

/-! ## A190356.P5301095116721148607

`A254324(char[2]+1+n)`
-/

namespace A190356.P5301095116721148607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254324 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A190356.P5301095116721148607

/-! ## A190356.P10995914439229819365

`floor(A254324(n+1)/A124765(n+4))`
-/

namespace A190356.P10995914439229819365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254324 (n + 1) : ℚ) / (A124765 (n + 4) : ℚ)⌋

end

end A190356.P10995914439229819365

/-!
# A190358: Least number having exactly two odd prime factors that differ by 2^n.

The programs for A190358, there is no canonical definition to state claims against.
-/

/-! ## A190358.P7218280813053416362

`A056206(n+1)*A056208(n+1)`
-/

namespace A190358.P7218280813053416362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 (n + 1) * A056208 (n + 1)

end

end A190358.P7218280813053416362

/-! ## A190358.P1573100517599459718

`lcm(A056206(and(1, n)!+n), A056208(n+1))`
-/

namespace A190358.P1573100517599459718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056206 (Nat.factorial (Nat.land 1 n) + n)) (A056208 (n + 1))

end

end A190358.P1573100517599459718

/-! ## A190358.P16332818581446013928

`lcm(A056206(n+1), A056208(A028310(n+1)))`
-/

namespace A190358.P16332818581446013928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056206 (n + 1)) (A056208 (A028310 (n + 1)).toNat)

end

end A190358.P16332818581446013928

/-! ## A190358.P16887555472007702089

`(A056206(n+1)+A000079(n+1))*A056206(n+1)`
-/

namespace A190358.P16887555472007702089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056206 (n + 1) + A000079 (n + 1)) * A056206 (n + 1)

end

end A190358.P16887555472007702089

/-! ## A190358.P15412506064197027035

`(A056208(n+1)-A000079(n+1))*A056208(n+1)`
-/

namespace A190358.P15412506064197027035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056208 (n + 1) - A000079 (n + 1)) * A056208 (n + 1)

end

end A190358.P15412506064197027035

/-!
# A190359: Largest prime factor of the least number having exactly two odd prime factors that differ by 2^n.

The programs for A190359, there is no canonical definition to state claims against.
-/

/-! ## A190359.P1663931101699260221

`record[A056208(A046693(n))]`
-/

namespace A190359.P1663931101699260221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 (A046693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190359.P1663931101699260221

/-! ## A190359.P1905369533717498182

`record[A056208(A103298(2*n+1))]`
-/

namespace A190359.P1905369533717498182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 (A103298 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190359.P1905369533717498182

/-! ## A190359.P12862198764172247169

`A056208(n+1)%A058324(n+1)`
-/

namespace A190359.P12862198764172247169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056208 (n + 1)) (A058324 (n + 1))

end

end A190359.P12862198764172247169

/-! ## A190359.P9729252405174468755

`A001511(A052551(n))*A056208(n+1)`
-/

namespace A190359.P9729252405174468755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A052551 n).toNat * A056208 (n + 1)

end

end A190359.P9729252405174468755

/-! ## A190359.P12699307102280734414

`A056208(n+1)*A350070(A078850(n+1))`
-/

namespace A190359.P12699307102280734414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 (n + 1) * A350070 (A078850 (n + 1)).toNat

end

end A190359.P12699307102280734414

/-!
# A190360: Number of one-sided n-step prudent walks, avoiding 4 or more consecutive east steps.

The programs for A190360, the canonical program `A190360.P18169383877398294369` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190360 has offset 0).

The definition of A190360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190360.P18169383877398294369

`Δ[ogf(1/(1-2x-x^2+x^5))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190360

/-- `Δ[ogf(1/(1-2x-x^2+x^5))]` -/
def P18169383877398294369.Spec : Prop :=
  ∀ n, P18169383877398294369.a n = A190360 n

theorem P18169383877398294369.correct : P18169383877398294369.Spec := by
  intro n
  simp only [A190360]

end A190360

/-! ## A190360.P1944271335812735420

`A341026(A068038(n))+A204631(2*n+1)`
-/

namespace A190360.P1944271335812735420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 ((A068038 n).toNat + 165) + A204631 (2 * n + 1)

end

end A190360.P1944271335812735420

namespace A190360

/-- `A341026(A068038(n))+A204631(2*n+1)` -/
def P1944271335812735420.Spec : Prop :=
  ∀ n, P1944271335812735420.a n = A190360 n

end A190360

/-! ## A190360.P9201549784541785390

`A204631(2*n+1)-A121373(A210645(n+1))`
-/

namespace A190360.P9201549784541785390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204631 (2 * n + 1) - A121373 (A210645 (n + 1)).toNat

end

end A190360.P9201549784541785390

namespace A190360

/-- `A204631(2*n+1)-A121373(A210645(n+1))` -/
def P9201549784541785390.Spec : Prop :=
  ∀ n, P9201549784541785390.a n = A190360 n

end A190360

/-! ## A190360.P6868493661116473842

`or(A168182(A005717(n+1)), A204631(2*n+1))`
-/

namespace A190360.P6868493661116473842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168182 (A005717 (n + 1)).toNat) (A204631 (2 * n + 1))

end

end A190360.P6868493661116473842

namespace A190360

/-- `or(A168182(A005717(n+1)), A204631(2*n+1))` -/
def P6868493661116473842.Spec : Prop :=
  ∀ n, P6868493661116473842.a n = A190360 n

end A190360

/-! ## A190360.P18301684193377198746

`or(A056170(A302429(n+1)), A204631(2*n+1))`
-/

namespace A190360.P18301684193377198746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056170 (A302429 (n + 1)).toNat) (A204631 (2 * n + 1))

end

end A190360.P18301684193377198746

namespace A190360

/-- `or(A056170(A302429(n+1)), A204631(2*n+1))` -/
def P18301684193377198746.Spec : Prop :=
  ∀ n, P18301684193377198746.a n = A190360 n

end A190360

/-!
# A190361: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(5/4), t=sqrt(4/5).

The programs for A190361, the canonical program `A190361.P1207026007910842129` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190361 has offset 1).

The definition of A190361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190361.P1207026007910842129

`n+1+floor((n+1)*sqrt(5/4))+floor((n+1)*sqrt(4/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190361

/-- `n+1+floor((n+1)*sqrt(5/4))+floor((n+1)*sqrt(4/5))` -/
def P1207026007910842129.Spec : Prop :=
  ∀ n, P1207026007910842129.a n = A190361 (n + 1)

theorem P1207026007910842129.correct : P1207026007910842129.Spec := by
  intro n
  simp only [A190361, Nat.add_sub_cancel]

end A190361

/-! ## A190361.P3077614200448199857

`A118168(A118164(n+1)+A003231(n+1))`
-/

namespace A190361.P3077614200448199857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A118164 (n + 1) + A003231 (n + 1)).toNat

end

end A190361.P3077614200448199857

namespace A190361

/-- `A118168(A118164(n+1)+A003231(n+1))` -/
def P3077614200448199857.Spec : Prop :=
  ∀ n, P3077614200448199857.a n = A190361 (n + 1)

end A190361

/-! ## A190361.P10285624791120189637

`or(3*n+2, A288640(A172342(n)))`
-/

namespace A190361.P10285624791120189637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * n + 2 : ℤ) (A288640 (A172342 n).toNat)

end

end A190361.P10285624791120189637

namespace A190361

/-- `or(3*n+2, A288640(A172342(n)))` -/
def P10285624791120189637.Spec : Prop :=
  ∀ n, P10285624791120189637.a n = A190361 (n + 1)

end A190361

/-! ## A190361.P2326946275250451496

`or(A016789(n), A037134(A022319(n)))`
-/

namespace A190361.P2326946275250451496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016789 n) (A037134 (A022319 n).toNat)

end

end A190361.P2326946275250451496

namespace A190361

/-- `or(A016789(n), A037134(A022319(n)))` -/
def P2326946275250451496.Spec : Prop :=
  ∀ n, P2326946275250451496.a n = A190361 (n + 1)

end A190361

/-! ## A190361.P12501967993758279636

`or(A007949(A059174(n)), A016789(n))`
-/

namespace A190361.P12501967993758279636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (A059174 n).toNat) (A016789 n)

end

end A190361.P12501967993758279636

namespace A190361

/-- `or(A007949(A059174(n)), A016789(n))` -/
def P12501967993758279636.Spec : Prop :=
  ∀ n, P12501967993758279636.a n = A190361 (n + 1)

end A190361

/-!
# A190362: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(5/4), t=sqrt(4/5).

The programs for A190362, the canonical program `A190362.P11229206351175294601` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190362 has offset 1).

The definition of A190362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190362.P11229206351175294601

`n+1+floor((n+1)*sqrt(4/5))+floor(4*(n+1)/5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190362

/-- `n+1+floor((n+1)*sqrt(4/5))+floor(4*(n+1)/5)` -/
def P11229206351175294601.Spec : Prop :=
  ∀ n, P11229206351175294601.a n = A190362 (n + 1)

theorem P11229206351175294601.correct : P11229206351175294601.Spec := by
  intro n
  simp only [A190362, Nat.add_sub_cancel]

end A190362

/-! ## A190362.P572294915446901485

`A004526(A189932(n+1)-A173276(n))`
-/

namespace A190362.P572294915446901485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189932 (n + 1) - A173276 n).toNat

end

end A190362.P572294915446901485

namespace A190362

/-- `A004526(A189932(n+1)-A173276(n))` -/
def P572294915446901485.Spec : Prop :=
  ∀ n, P572294915446901485.a n = A190362 (n + 1)

end A190362

/-! ## A190362.P14387687637899023518

`A249738(A189932(n+1)-2*A002266(n))`
-/

namespace A190362.P14387687637899023518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A189932 (n + 1) - 2 * A002266 n).toNat

end

end A190362.P14387687637899023518

namespace A190362

/-- `A249738(A189932(n+1)-2*A002266(n))` -/
def P14387687637899023518.Spec : Prop :=
  ∀ n, P14387687637899023518.a n = A190362 (n + 1)

end A190362

/-! ## A190362.P307933534845458572

`A004526(A189932(n+1)+A001478(A173276(n)))`
-/

namespace A190362.P307933534845458572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189932 (n + 1) + A001478 (A173276 n).toNat).toNat

end

end A190362.P307933534845458572

namespace A190362

/-- `A004526(A189932(n+1)+A001478(A173276(n)))` -/
def P307933534845458572.Spec : Prop :=
  ∀ n, P307933534845458572.a n = A190362 (n + 1)

end A190362

/-! ## A190362.P4787835351031088909

`A249738(A189932(n+1)-A002266(n)-A002266(n))`
-/

namespace A190362.P4787835351031088909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A189932 (n + 1) - A002266 n - A002266 n).toNat

end

end A190362.P4787835351031088909

namespace A190362

/-- `A249738(A189932(n+1)-A002266(n)-A002266(n))` -/
def P4787835351031088909.Spec : Prop :=
  ∀ n, P4787835351031088909.a n = A190362 (n + 1)

end A190362

/-!
# A190363: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(5/4), t=sqrt(4/5).

The programs for A190363, the canonical program `A190363.P16220289770353484833` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190363 has offset 1).

The definition of A190363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190363.P16220289770353484833

`2*(n+1)+floor((n+1)*sqrt(5/4))+floor((n+1)/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190363

/-- `2*(n+1)+floor((n+1)*sqrt(5/4))+floor((n+1)/4)` -/
def P16220289770353484833.Spec : Prop :=
  ∀ n, P16220289770353484833.a n = A190363 (n + 1)

theorem P16220289770353484833.correct : P16220289770353484833.Spec := by
  intro n
  simp only [A190363, Nat.add_sub_cancel]

end A190363

/-!
# A190364: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r]; r=sqrt(2), s=1/r, t=sqrt(3), u=1/t.

The programs for A190364, the canonical program `A190364.P4343509133119542264` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190364 has offset 1).

The definition of A190364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190364.P4343509133119542264

`n+1+floor((n+1)/2)+floor((n+1)*sqrt(3/2))+floor((n+1)*sqrt(1/6))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190364

/-- `n+1+floor((n+1)/2)+floor((n+1)*sqrt(3/2))+floor((n+1)*sqrt(1/6))` -/
def P4343509133119542264.Spec : Prop :=
  ∀ n, P4343509133119542264.a n = A190364 (n + 1)

theorem P4343509133119542264.correct : P4343509133119542264.Spec := by
  intro n
  simp only [A190364, Nat.add_sub_cancel]

end A190364

/-!
# A190365: n + [n*r/s] + [n*t/s] + [n*u/s]; r=sqrt(2), s=1/r, t=sqrt(3), u=1/t.

The programs for A190365, the canonical program `A190365.P1293140563527328089` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190365 has offset 1).

The definition of A190365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190365.P1293140563527328089

`3*(n+1)+floor((n+1)*sqrt(6))+floor((n+1)*sqrt(2/3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190365

/-- `3*(n+1)+floor((n+1)*sqrt(6))+floor((n+1)*sqrt(2/3))` -/
def P1293140563527328089.Spec : Prop :=
  ∀ n, P1293140563527328089.a n = A190365 (n + 1)

theorem P1293140563527328089.correct : P1293140563527328089.Spec := by
  intro n
  simp only [A190365, Nat.add_sub_cancel]

end A190365

/-! ## A190365.P12572754602841772128

`A190364(2*(n+1))`
-/

namespace A190365.P12572754602841772128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190364 (2 * (n + 1))

end

end A190365.P12572754602841772128

namespace A190365

/-- `A190364(2*(n+1))` -/
def P12572754602841772128.Spec : Prop :=
  ∀ n, P12572754602841772128.a n = A190365 (n + 1)

end A190365

/-! ## A190365.P17427786027729849754

`record[A190364(A059841(n)+or(1, n))]`
-/

namespace A190365.P17427786027729849754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190364 (A059841 n + (Nat.lor 1 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190365.P17427786027729849754

namespace A190365

/-- `record[A190364(A059841(n)+or(1, n))]` -/
def P17427786027729849754.Spec : Prop :=
  ∀ n, P17427786027729849754.a n = A190365 (n + 1)

end A190365

/-! ## A190365.P3568699179947481031

`A190364(Δ[n²+n])%A190367(n+1)`
-/

namespace A190365.P3568699179947481031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190364 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A190367 (n + 1))

end

end A190365.P3568699179947481031

namespace A190365

/-- `A190364(Δ[n²+n])%A190367(n+1)` -/
def P3568699179947481031.Spec : Prop :=
  ∀ n, P3568699179947481031.a n = A190365 (n + 1)

end A190365

/-! ## A190365.P6560149629556468453

`record[A190364(A099375(n)+1)]`
-/

namespace A190365.P6560149629556468453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190364 (A099375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190365.P6560149629556468453

namespace A190365

/-- `record[A190364(A099375(n)+1)]` -/
def P6560149629556468453.Spec : Prop :=
  ∀ n, P6560149629556468453.a n = A190365 (n + 1)

end A190365

/-!
# A190366: n + [n*r/t] + [n*s/t] + [n*u/t]; r=sqrt(2), s=1/r, t=sqrt(3), u=1/t.

The programs for A190366, the canonical program `A190366.P15452674473683444732` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190366 has offset 1).

The definition of A190366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190366.P15452674473683444732

`n+1+floor((n+1)/3)+floor((n+1)*sqrt(2/3))+floor((n+1)*sqrt(1/6))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190366

/-- `n+1+floor((n+1)/3)+floor((n+1)*sqrt(2/3))+floor((n+1)*sqrt(1/6))` -/
def P15452674473683444732.Spec : Prop :=
  ∀ n, P15452674473683444732.a n = A190366 (n + 1)

theorem P15452674473683444732.correct : P15452674473683444732.Spec := by
  intro n
  simp only [A190366, Nat.add_sub_cancel]

end A190366

/-!
# A190367: n + [n*r/u] + [n*s/u] + [n*t/u]; r=sqrt(2), s=1/r, t=sqrt(3), u=1/t.

The programs for A190367, the canonical program `A190367.P2522234095669684444` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190367 has offset 1).

The definition of A190367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190367.P2522234095669684444

`4*(n+1)+floor((n+1)*sqrt(3/2))+floor((n+1)*sqrt(6))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190367

/-- `4*(n+1)+floor((n+1)*sqrt(3/2))+floor((n+1)*sqrt(6))` -/
def P2522234095669684444.Spec : Prop :=
  ∀ n, P2522234095669684444.a n = A190367 (n + 1)

theorem P2522234095669684444.correct : P2522234095669684444.Spec := by
  intro n
  simp only [A190367, Nat.add_sub_cancel]

end A190367

/-! ## A190367.P16631607639969754334

`A190366(3*(n+1))`
-/

namespace A190367.P16631607639969754334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190366 (3 * (n + 1))

end

end A190367.P16631607639969754334

namespace A190367

/-- `A190366(3*(n+1))` -/
def P16631607639969754334.Spec : Prop :=
  ∀ n, P16631607639969754334.a n = A190367 (n + 1)

end A190367

/-!
# A190368: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r]; r=sin(Pi/5), s=cos(Pi/5), t=sin(2*Pi/5), u=cos(2*Pi/5).

The programs for A190368, there is no canonical definition to state claims against.
-/

/-! ## A190368.P11659319520643934050

`A003057(A089633(n)+A273366(n)+1)`
-/

namespace A190368.P11659319520643934050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A089633 n + (A273366 n + 1)).toNat

end

end A190368.P11659319520643934050

/-! ## A190368.P2334253678335031321

`A340999(A035363(n))+A189665(3*n+2)`
-/

namespace A190368.P2334253678335031321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A035363 n).toNat + 204) + A189665 (3 * n + 2)

end

end A190368.P2334253678335031321

/-! ## A190368.P7025906491782010666

`A248186(A248187(2*(n+2))%A248204(n+1))`
-/

namespace A190368.P7025906491782010666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (Int.tmod (A248187 (2 * (n + 2))) (A248204 (n + 1))).toNat

end

end A190368.P7025906491782010666

/-! ## A190368.P542897145360239308

`A262618(A270809(n))+A001651(3*n+2)`
-/

namespace A190368.P542897145360239308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262618 (A270809 n).toNat + A001651 (3 * n + 2)

end

end A190368.P542897145360239308

/-!
# A190369: a(n) = n + [n*r/s] + [n*t/s] + [n*u/s]; r=sin(Pi/5), s=cos(Pi/5), t=sin(2*Pi/5), u=cos(2*Pi/5).

The programs for A190369, there is no canonical definition to state claims against.
-/

/-! ## A190369.P16128492279397724981

`A228082(∑[p?[A144021(n+1)]])`
-/

namespace A190369.P16128492279397724981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144021 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190369.P16128492279397724981

/-! ## A190369.P7374973093068748043

`A055640(A067332(n))+A016777(n)`
-/

namespace A190369.P7374973093068748043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A067332 n).toNat + A016777 n

end

end A190369.P7374973093068748043

/-! ## A190369.P18368423093412625902

`A099267(2*(n+1))-A138253(A033444(n+3))`
-/

namespace A190369.P18368423093412625902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (2 * (n + 1)) - A138253 (A033444 (n + 3)).toNat

end

end A190369.P18368423093412625902

/-! ## A190369.P1847371872664807798

`A172272(2*(n+1))-A010052(A001006(n))`
-/

namespace A190369.P1847371872664807798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172272 (2 * (n + 1)) - A010052 (A001006 n).toNat

end

end A190369.P1847371872664807798

/-! ## A190369.P14694022455917229479

`A325360(3*(n+1))-A010054(A068156(n))`
-/

namespace A190369.P14694022455917229479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325360 (3 * (n + 1)) - A010054 (A068156 n).toNat

end

end A190369.P14694022455917229479

/-!
# A190370: a(n) = n + [n*r/t] + [n*s/t] + [n*u/t]; r=sin(Pi/5), s=cos(Pi/5), t=sin(2*Pi/5), u=cos(2*Pi/5).

The programs for A190370, the canonical program `A190370.P15002338648435170765` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190370 has offset 1).

The definition of A190370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190370.P15002338648435170765

`n+1+floor((n+1)/(2*cos(π/5)))+floor((n+1)/(2*sin(π/5)))+floor((n+1)/tan(2*π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190370

/-- `n+1+floor((n+1)/(2*cos(π/5)))+floor((n+1)/(2*sin(π/5)))+floor((n+1)/tan(2*π/5))` -/
def P15002338648435170765.Spec : Prop :=
  ∀ n, P15002338648435170765.a n = A190370 (n + 1)

theorem P15002338648435170765.correct : P15002338648435170765.Spec := by
  intro n
  simp only [A190370, Nat.add_sub_cancel]

end A190370

/-!
# A190371: a(n) = n + [n*r/u] + [n*s/u] + [n*t/u]; r=sin(Pi/5), s=cos(Pi/5), t=sin(2*Pi/5), u=cos(2*Pi/5).

The programs for A190371, there is no canonical definition to state claims against.
-/

/-! ## A190371.P10708268191274747950

`A189529(record[6*A114731(n+1)])`
-/

namespace A190371.P10708268191274747950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A114731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189529 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190371.P10708268191274747950

/-! ## A190371.P6874346939604575706

`A155902(6*(n+1))-A124778(n)`
-/

namespace A190371.P6874346939604575706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (6 * (n + 1)) - A124778 n

end

end A190371.P6874346939604575706

/-! ## A190371.P17517084866092384519

`9*n+7-A001221(A110128(n))`
-/

namespace A190371.P17517084866092384519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 7 : ℤ) - A001221 (A110128 n).toNat

end

end A190371.P17517084866092384519

/-! ## A190371.P13632020477468552392

`record[A182760(5*(n+1))-A061603(n)]`
-/

namespace A190371.P13632020477468552392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182760 (5 * (n + 1)) - A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190371.P13632020477468552392

/-! ## A190371.P1027504331614818442

`A017257(n)-A043537(A007865(2*(n+1)))`
-/

namespace A190371.P1027504331614818442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - A043537 (A007865 (2 * (n + 1))).toNat

end

end A190371.P1027504331614818442

/-!
# A190372: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r]; r=sin(Pi/5), s=1/r, t=sin(2*Pi/5), u=1/t.

The programs for A190372, the canonical program `A190372.P2412013710428799699` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190372 has offset 1).

The definition of A190372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190372.P2412013710428799699

`A189461(2*(n+1))+A005206(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190372

/-- `A189461(2*(n+1))+A005206(n)` -/
def P2412013710428799699.Spec : Prop :=
  ∀ n, P2412013710428799699.a n = A190372 (n + 1)

theorem P2412013710428799699.correct : P2412013710428799699.Spec := by
  intro n
  simp only [A190372, Nat.add_sub_cancel]

end A190372

/-! ## A190372.P12788156463445815228

`A003059(A277984(n+1)-A277945(n+3))`
-/

namespace A190372.P12788156463445815228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A277984 (n + 1) - A277945 (n + 3)).toNat

end

end A190372.P12788156463445815228

namespace A190372

/-- `A003059(A277984(n+1)-A277945(n+3))` -/
def P12788156463445815228.Spec : Prop :=
  ∀ n, P12788156463445815228.a n = A190372 (n + 1)

end A190372

/-! ## A190372.P439321988105863928

`A245908(A068979(n+1))+A017017(n)`
-/

namespace A190372.P439321988105863928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245908 (A068979 (n + 1)).toNat + A017017 n

end

end A190372.P439321988105863928

namespace A190372

/-- `A245908(A068979(n+1))+A017017(n)` -/
def P439321988105863928.Spec : Prop :=
  ∀ n, P439321988105863928.a n = A190372 (n + 1)

end A190372

/-! ## A190372.P2676205806994188071

`A188069(2*(n+1))+A188011(A000108(n))`
-/

namespace A190372.P2676205806994188071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (2 * (n + 1)) + A188011 (A000108 n).toNat

end

end A190372.P2676205806994188071

namespace A190372

/-- `A188069(2*(n+1))+A188011(A000108(n))` -/
def P2676205806994188071.Spec : Prop :=
  ∀ n, P2676205806994188071.a n = A190372 (n + 1)

end A190372

/-! ## A190372.P6001400169594064881

`A047304(A029905(3*n+4))-(n+5)`
-/

namespace A190372.P6001400169594064881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (A029905 (3 * n + 4)).toNat - (n + 5 : ℤ)

end

end A190372.P6001400169594064881

namespace A190372

/-- `A047304(A029905(3*n+4))-(n+5)` -/
def P6001400169594064881.Spec : Prop :=
  ∀ n, P6001400169594064881.a n = A190372 (n + 1)

end A190372

/-!
# A190373: a(n) = n + floor(n*r/s) + floor(n*t/s) + floor(n*u/s), where r = sin(Pi/5), s = 1/r, t = sin(2*Pi/5), u = 1/t.

The programs for A190373, there is no canonical definition to state claims against.
-/

/-! ## A190373.P5965446562159050078

`A172266(3*n+2)+A092248(A157396(n+1))`
-/

namespace A190373.P5965446562159050078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 (3 * n + 2) + A092248 (A157396 (n + 1)).toNat

end

end A190373.P5965446562159050078

/-! ## A190373.P4900727970868376056

`ceil((n+1)*ϕ²)-A001221(A167788(n+1))`
-/

namespace A190373.P4900727970868376056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.goldenRatio ^ 2⌉ - A001221 (A167788 (n + 1)).toNat

end

end A190373.P4900727970868376056

/-! ## A190373.P10317387380709478737

`A285258(A283960(n+1))+A004937(n)`
-/

namespace A190373.P10317387380709478737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285258 (A283960 (n + 1)).toNat + A004937 n

end

end A190373.P10317387380709478737

/-! ## A190373.P12452778661350362806

`A341591(A322282(n))+A285976(n+1)`
-/

namespace A190373.P12452778661350362806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (A322282 n).toNat + A285976 (n + 1)

end

end A190373.P12452778661350362806

/-! ## A190373.P9790314990639088093

`A028250(n+1)-A124778(A028288(n))`
-/

namespace A190373.P9790314990639088093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028250 (n + 1) - A124778 (A028288 n).toNat

end

end A190373.P9790314990639088093

/-!
# A190374: a(n) = n + [n*r/t] + [n*s/t] + [n*u/t]; r=sin(Pi/5), s=1/r, t=sin(2*Pi/5), u=1/t.

The programs for A190374, the canonical program `A190374.P6844127706392513157` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190374 has offset 1).

The definition of A190374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190374.P6844127706392513157

`A184746(2*(n+1))+A022342(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190374

/-- `A184746(2*(n+1))+A022342(n+1)` -/
def P6844127706392513157.Spec : Prop :=
  ∀ n, P6844127706392513157.a n = A190374 (n + 1)

theorem P6844127706392513157.correct : P6844127706392513157.Spec := by
  intro n
  simp only [A190374, Nat.add_sub_cancel]

end A190374

/-! ## A190374.P6803304122948342135

`A111684(A313683(n))+A103517(n)`
-/

namespace A190374.P6803304122948342135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111684 (A313683 n).toNat + A103517 n

end

end A190374.P6803304122948342135

namespace A190374

/-- `A111684(A313683(n))+A103517(n)` -/
def P6803304122948342135.Spec : Prop :=
  ∀ n, P6803304122948342135.a n = A190374 (n + 1)

end A190374

/-! ## A190374.P14603707252582186495

`A191251(A187829(n+1))+A001950(n+1)`
-/

namespace A190374.P14603707252582186495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191251 (A187829 (n + 1)).toNat + A001950 (n + 1)

end

end A190374.P14603707252582186495

namespace A190374

/-- `A191251(A187829(n+1))+A001950(n+1)` -/
def P14603707252582186495.Spec : Prop :=
  ∀ n, P14603707252582186495.a n = A190374 (n + 1)

end A190374

/-! ## A190374.P8056722985957943149

`A070939(A065494(n))+A054770(n+1)`
-/

namespace A190374.P8056722985957943149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A065494 n).toNat + A054770 (n + 1)

end

end A190374.P8056722985957943149

namespace A190374

/-- `A070939(A065494(n))+A054770(n+1)` -/
def P8056722985957943149.Spec : Prop :=
  ∀ n, P8056722985957943149.a n = A190374 (n + 1)

end A190374

/-! ## A190374.P805204657883220841

`A287726(n+1)+A136522(A287741(n))`
-/

namespace A190374.P805204657883220841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1) + A136522 (A287741 n).toNat

end

end A190374.P805204657883220841

namespace A190374

/-- `A287726(n+1)+A136522(A287741(n))` -/
def P805204657883220841.Spec : Prop :=
  ∀ n, P805204657883220841.a n = A190374 (n + 1)

end A190374

/-!
# A190375: a(n) = n + [n*r/u] + [n*s/u] + [n*t/u]; r=sin(Pi/5), s=1/r, t=sin(2*Pi/5), u=1/t.

The programs for A190375, there is no canonical definition to state claims against.
-/

/-! ## A190375.P7676559132731278161

`A333381(A339162(n))+A016825(n)`
-/

namespace A190375.P7676559132731278161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A339162 n).toNat + A016825 n

end

end A190375.P7676559132731278161

/-! ## A190375.P15894915385830955620

`A016813(n)+A001221(A020748(n))`
-/

namespace A190375.P15894915385830955620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001221 (A020748 n).toNat

end

end A190375.P15894915385830955620

/-! ## A190375.P13595699212620658979

`A016861(n)+A001221(A020748(n))-n`
-/

namespace A190375.P13595699212620658979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + (A001221 (A020748 n).toNat - (n : ℤ))

end

end A190375.P13595699212620658979

/-! ## A190375.P8111476611533347661

`A047524(n+1)+A001878(A075201(n+1))`
-/

namespace A190375.P8111476611533347661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1) + A001878 (A075201 (n + 1)).toNat

end

end A190375.P8111476611533347661

/-! ## A190375.P3838175167138726878

`A035336(n+1)-A363807(A336660(n+1))`
-/

namespace A190375.P3838175167138726878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - A363807 (A336660 (n + 1)).toNat

end

end A190375.P3838175167138726878

/-!
# A190376: a(n) = sum (in ordinary arithmetic) of A067399(k), for k from 2^n to 2^(n+1)-1.

The programs for A190376, there is no canonical definition to state claims against.
-/

/-! ## A190376.P1770028924981310429

`∑[A026819(sqrt(A268165(n+1)))]`
-/

namespace A190376.P1770028924981310429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (SequenceMachineLib.roundAway (Real.sqrt (A268165 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190376.P1770028924981310429

/-! ## A190376.P1002635259230481202

`A098156(n+1)-A039953(A213091(n))`
-/

namespace A190376.P1002635259230481202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 (n + 1) - A039953 (A213091 n).toNat

end

end A190376.P1002635259230481202

/-!
# A190377: Numbers with prime factorization p^2*q^2*r^2*s^2 where p, q, r, and s are distinct primes.

The programs for A190377, the canonical program `A190377.P148042484633320409` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190377 has offset 1).

The definition of A190377 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046386, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190377.P148042484633320409

`A046386(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190377

/-- `A046386(n+1)²` -/
def P148042484633320409.Spec : Prop :=
  ∀ n, P148042484633320409.a n = A190377 (n + 1)

theorem P148042484633320409.correct : P148042484633320409.Spec := by
  intro n
  simp only [A190377, Nat.add_sub_cancel]

end A190377

/-! ## A190377.P15813489289588570150

`record[A046386(A158416(n))²]`
-/

namespace A190377.P15813489289588570150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (A158416 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190377.P15813489289588570150

namespace A190377

/-- `record[A046386(A158416(n))²]` -/
def P15813489289588570150.Spec : Prop :=
  ∀ n, P15813489289588570150.a n = A190377 (n + 1)

end A190377

/-! ## A190377.P13074400203059723361

`record[A007947(A033993(n+1))²]`
-/

namespace A190377.P13074400203059723361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033993 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190377.P13074400203059723361

namespace A190377

/-- `record[A007947(A033993(n+1))²]` -/
def P13074400203059723361.Spec : Prop :=
  ∀ n, P13074400203059723361.a n = A190377 (n + 1)

end A190377

/-! ## A190377.P6942951588095593548

`∩[A030634(n+1), A033993(n+1)]²`
-/

namespace A190377.P6942951588095593548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P6942951588095593548

namespace A190377

/-- `∩[A030634(n+1), A033993(n+1)]²` -/
def P6942951588095593548.Spec : Prop :=
  ∀ n, (P6942951588095593548.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P1491996769715136120

`record[A046386(A286626(n))²]`
-/

namespace A190377.P1491996769715136120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (A286626 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190377.P1491996769715136120

namespace A190377

/-- `record[A046386(A286626(n))²]` -/
def P1491996769715136120.Spec : Prop :=
  ∀ n, P1491996769715136120.a n = A190377 (n + 1)

end A190377

/-! ## A190377.P8516337468376570599

`A014613(A253919(n+1))²`
-/

namespace A190377.P8516337468376570599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A253919 (n + 1)).toNat ^ 2

end

end A190377.P8516337468376570599

namespace A190377

/-- `A014613(A253919(n+1))²` -/
def P8516337468376570599.Spec : Prop :=
  ∀ n, P8516337468376570599.a n = A190377 (n + 1)

end A190377

/-! ## A190377.P7760964136810938536

`∩[A014613(n+1), A030634(n+1)]²`
-/

namespace A190377.P7760964136810938536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P7760964136810938536

namespace A190377

/-- `∩[A014613(n+1), A030634(n+1)]²` -/
def P7760964136810938536.Spec : Prop :=
  ∀ n, (P7760964136810938536.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P13992685275143249438

`∩[A014613(n+1), A033993(n+1)]²`
-/

namespace A190377.P13992685275143249438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P13992685275143249438

namespace A190377

/-- `∩[A014613(n+1), A033993(n+1)]²` -/
def P13992685275143249438.Spec : Prop :=
  ∀ n, (P13992685275143249438.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P7132171145247361606

`∩[A030634(n+1), A323350(n+1)]²`
-/

namespace A190377.P7132171145247361606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P7132171145247361606

namespace A190377

/-- `∩[A030634(n+1), A323350(n+1)]²` -/
def P7132171145247361606.Spec : Prop :=
  ∀ n, (P7132171145247361606.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P7464662841892303532

`∩[A014613(n+1), A111399(n+1)]²`
-/

namespace A190377.P7464662841892303532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P7464662841892303532

namespace A190377

/-- `∩[A014613(n+1), A111399(n+1)]²` -/
def P7464662841892303532.Spec : Prop :=
  ∀ n, (P7464662841892303532.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P14580134651949143385

`∩[A014613(n+1), A350352(n+1)]²`
-/

namespace A190377.P14580134651949143385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P14580134651949143385

namespace A190377

/-- `∩[A014613(n+1), A350352(n+1)]²` -/
def P14580134651949143385.Spec : Prop :=
  ∀ n, (P14580134651949143385.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P315257620621420285

`∩[A026477(n+1), A350352(n+1)]²`
-/

namespace A190377.P315257620621420285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P315257620621420285

namespace A190377

/-- `∩[A026477(n+1), A350352(n+1)]²` -/
def P315257620621420285.Spec : Prop :=
  ∀ n, (P315257620621420285.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P4895709612226037362

`∩[A014613(n+1), A030229(n+1)]²`
-/

namespace A190377.P4895709612226037362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P4895709612226037362

namespace A190377

/-- `∩[A014613(n+1), A030229(n+1)]²` -/
def P4895709612226037362.Spec : Prop :=
  ∀ n, (P4895709612226037362.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P7133958919992777181

`∩[A030229(n+1), A030634(n+1)]²`
-/

namespace A190377.P7133958919992777181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P7133958919992777181

namespace A190377

/-- `∩[A030229(n+1), A030634(n+1)]²` -/
def P7133958919992777181.Spec : Prop :=
  ∀ n, (P7133958919992777181.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P7672146049285226789

`∩[A030229(n+1), A033993(n+1)]²`
-/

namespace A190377.P7672146049285226789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P7672146049285226789

namespace A190377

/-- `∩[A030229(n+1), A033993(n+1)]²` -/
def P7672146049285226789.Spec : Prop :=
  ∀ n, (P7672146049285226789.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P3937417583285299218

`∩[A014613(n+1), A211337(n+1)]²`
-/

namespace A190377.P3937417583285299218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P3937417583285299218

namespace A190377

/-- `∩[A014613(n+1), A211337(n+1)]²` -/
def P3937417583285299218.Spec : Prop :=
  ∀ n, (P3937417583285299218.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P16249518218693086634

`∩[A030229(n+1), A033987(n+1)]²`
-/

namespace A190377.P16249518218693086634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P16249518218693086634

namespace A190377

/-- `∩[A030229(n+1), A033987(n+1)]²` -/
def P16249518218693086634.Spec : Prop :=
  ∀ n, (P16249518218693086634.a n : ℤ) = A190377 (n + 1)

end A190377

/-! ## A190377.P16961838312033439509

`∩[A000469(n+1), A014613(n+1)]²`
-/

namespace A190377.P16961838312033439509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190377.P16961838312033439509

namespace A190377

/-- `∩[A000469(n+1), A014613(n+1)]²` -/
def P16961838312033439509.Spec : Prop :=
  ∀ n, (P16961838312033439509.a n : ℤ) = A190377 (n + 1)

end A190377

/-!
# A190378: Numbers with prime factorization p*q*r*s*t*u^3 (where p, q, r, s, t, u are distinct primes).

The programs for A190378, there is no canonical definition to state claims against.
-/

/-! ## A190378.P440419080574585665

`A272597(A038101(n+1))`
-/

namespace A190378.P440419080574585665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272597 (A038101 (n + 1)).toNat

end

end A190378.P440419080574585665

/-! ## A190378.P12281211122922798130

`A272597(A073956(n+1))`
-/

namespace A190378.P12281211122922798130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272597 (A073956 (n + 1)).toNat

end

end A190378.P12281211122922798130

/-! ## A190378.P15117352402327128077

`A020639(5^n+1)²*A067885(n+1)`
-/

namespace A190378.P15117352402327128077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 ^ n + 1) ^ 2 * A067885 (n + 1)

end

end A190378.P15117352402327128077

/-!
# A190379: Numbers with prime factorization pqr^2s^2t^2.

The programs for A190379, there is no canonical definition to state claims against.
-/

/-! ## A190379.P4045727818566866940

`∏{e}[A241977(n+4), A046386(#)]`
-/

namespace A190379.P4045727818566866940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241977 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A046386 (Nat.factorization (f1 n).natAbs p)

end

end A190379.P4045727818566866940

/-!
# A190383: Numbers with prime factorization pqrst^5.

The programs for A190383, there is no canonical definition to state claims against.
-/

/-! ## A190383.P1022322160475652779

`A040056(A002412(n+1))*A046387(n+1)`
-/

namespace A190383.P1022322160475652779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A002412 (n + 1)).toNat * A046387 (n + 1)

end

end A190383.P1022322160475652779

/-! ## A190383.P15093442202458580933

`A040056(A035298(n+1))*A046387(n+1)`
-/

namespace A190383.P15093442202458580933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A035298 (n + 1)).toNat * A046387 (n + 1)

end

end A190383.P15093442202458580933

/-! ## A190383.P5371417577121241336

`A046387(n+1)*A048785(A363821(n+1))`
-/

namespace A190383.P5371417577121241336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1) * A048785 (A363821 (n + 1)).toNat

end

end A190383.P5371417577121241336

/-! ## A190383.P10776454261495723659

`A034444(A085986(n+1))²*A046387(n+1)`
-/

namespace A190383.P10776454261495723659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A085986 (n + 1)).toNat ^ 2 * A046387 (n + 1)

end

end A190383.P10776454261495723659

/-! ## A190383.P5274110958573981686

`A040056(A245454(n+1))*A046387(n+1)`
-/

namespace A190383.P5274110958573981686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A245454 (n + 1)).toNat * A046387 (n + 1)

end

end A190383.P5274110958573981686

/-!
# A190384: Numbers with prime factorization pqrs^2t^4.

The programs for A190384, there is no canonical definition to state claims against.
-/

/-! ## A190384.P7272627440157009269

`A043562(A224724(n+1))*A189989(n+1)`
-/

namespace A190384.P7272627440157009269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A224724 (n + 1)).toNat * A189989 (n + 1)

end

end A190384.P7272627440157009269

/-! ## A190384.P922234834546410978

`A007814(A179693(3*n+2))*A189989(n+1)`
-/

namespace A190384.P922234834546410978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A179693 (3 * n + 2)).toNat * A189989 (n + 1)

end

end A190384.P922234834546410978

/-! ## A190384.P15042300582344171176

`lcm(A035191(A046387(3*n+1)), A189989(n+1))`
-/

namespace A190384.P15042300582344171176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035191 (A046387 (3 * n + 1)).toNat) (A189989 (n + 1))

end

end A190384.P15042300582344171176

/-!
# A190385: Numbers with prime factorization pqrs^3t^3.

The programs for A190385, there is no canonical definition to state claims against.
-/

/-! ## A190385.P12274927403344621459

`A044102(A043562(n)*A046387(n+1))`
-/

namespace A190385.P12274927403344621459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A043562 n * A046387 (n + 1)).toNat

end

end A190385.P12274927403344621459

/-! ## A190385.P1476452433067856416

`A044102(A046387(n+1)^A043562(n))`
-/

namespace A190385.P1476452433067856416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (SequenceMachineLib.roundAway ((A046387 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A190385.P1476452433067856416

/-! ## A190385.P11508643382046073130

`A044102(C(A046387(n+1), A043562(n)))`
-/

namespace A190385.P11508643382046073130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (Nat.choose (A046387 (n + 1)).toNat (A043562 n).toNat)

end

end A190385.P11508643382046073130

/-! ## A190385.P3564853955460771441

`A044102(lcm(A043562(n)², A046387(n+1)))`
-/

namespace A190385.P3564853955460771441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (Int.lcm (A043562 n ^ 2) (A046387 (n + 1)))

end

end A190385.P3564853955460771441

/-! ## A190385.P14658578229240204321

`A046387(n+1)*A255425(A228166(3*n+2))`
-/

namespace A190385.P14658578229240204321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1) * A255425 (A228166 (3 * n + 2)).toNat

end

end A190385.P14658578229240204321

/-!
# A190388: Numbers with prime factorization pqrstu^4.

The programs for A190388, there is no canonical definition to state claims against.
-/

/-! ## A190388.P12415232055207673859

`A040056(A022811(n))*A046391(n+1)`
-/

namespace A190388.P12415232055207673859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A022811 n).toNat * A046391 (n + 1)

end

end A190388.P12415232055207673859

/-! ## A190388.P16642064536830027262

`A040012(A022811(n))*A067885(n+1)`
-/

namespace A190388.P16642064536830027262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 (A022811 n).toNat * A067885 (n + 1)

end

end A190388.P16642064536830027262

/-! ## A190388.P2305892263980090697

`A034444(A046402(n+1))*A046391(n+1)`
-/

namespace A190388.P2305892263980090697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A046402 (n + 1)).toNat * A046391 (n + 1)

end

end A190388.P2305892263980090697

/-! ## A190388.P17387930840223148042

`A040012(A255660(n+1))*A067885(n+1)`
-/

namespace A190388.P17387930840223148042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 (A255660 (n + 1)).toNat * A067885 (n + 1)

end

end A190388.P17387930840223148042

/-! ## A190388.P3714437568792498896

`A000005(A360183(n+1))*A067885(n+1)`
-/

namespace A190388.P3714437568792498896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A360183 (n + 1)).toNat * A067885 (n + 1)

end

end A190388.P3714437568792498896

/-!
# A190389: Number of permutations of 0..(n-1) with equal numbers of bit changes for every bit in the binary representation of the permutation.

The programs for A190389, there is no canonical definition to state claims against.
-/

/-! ## A190389.P7060435898733296231

`A244233(A149426(n+1))`
-/

namespace A190389.P7060435898733296231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 (A149426 (n + 1)).toNat

end

end A190389.P7060435898733296231

/-! ## A190389.P6509070082170112390

`A244233(∑[∑[A150280(n)]])`
-/

namespace A190389.P6509070082170112390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150280 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190389.P6509070082170112390

/-! ## A190389.P13854980613168292246

`A029594(A000698(n)-A240328(n))`
-/

namespace A190389.P13854980613168292246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029594 (A000698 n - A240328 n).toNat

end

end A190389.P13854980613168292246

/-!
# A190390: Numbers with prime factorization pqrst^2u^3.

The programs for A190390, there is no canonical definition to state claims against.
-/

/-! ## A190390.P8222022927624357639

`6*A052410(A189985(n+1))`
-/

namespace A190390.P8222022927624357639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A052410 (A189985 (n + 1)).toNat

end

end A190390.P8222022927624357639

/-!
# A190391: Numbers with prime factorization pqrs^2t^2u^2.

The programs for A190391, there is no canonical definition to state claims against.
-/

/-! ## A190391.P3904203664132910087

`A357700(n+3)/A001222(A357741(n+1))`
-/

namespace A190391.P3904203664132910087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357700 (n + 3) : ℚ) / (A001222 (A357741 (n + 1)).toNat : ℚ)

end

end A190391.P3904203664132910087

/-!
# A190393: Number of ways to place n nonattacking nightriders on an n X n toroidal board.

The programs for A190393, there is no canonical definition to state claims against.
-/

/-! ## A190393.P969194495770612689

`record[A064830(n!)]`
-/

namespace A190393.P969194495770612689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064830 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190393.P969194495770612689

/-! ## A190393.P15088559432852287765

`record[A064830(∏[n+1])]`
-/

namespace A190393.P15088559432852287765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064830 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190393.P15088559432852287765

/-!
# A190394: Maximum number of nonattacking nightriders on an n X n board.

The programs for A190394, there is no canonical definition to state claims against.
-/

/-! ## A190394.P15469826873706990175

`eq[A089309(n), A332488(A042963(n+1))]`
-/

namespace A190394.P15469826873706990175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332488 (A042963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190394.P15469826873706990175

/-! ## A190394.P14320601998022698075

`∑[abs(A163659(A000975(n+1)))]`
-/

namespace A190394.P14320601998022698075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163659 (A000975 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190394.P14320601998022698075

/-! ## A190394.P1079766478284701813

`record[and(A080580(n+1), A256094(n))]`
-/

namespace A190394.P1079766478284701813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080580 (n + 1)) (A256094 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190394.P1079766478284701813

/-!
# A190395: Number of ways to place 3 nonattacking grasshoppers on a chessboard of size n x n.

The programs for A190395, the canonical program `A190395.P7754833601164162450` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190395 has offset 1).

The definition of A190395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190395.P7754833601164162450

`1/6*n*((n+1)^5+(n+1)^4-2*(n+1)^3-22*(n+1)²+76*(n+1)-72)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190395

/-- `1/6*n*((n+1)^5+(n+1)^4-2*(n+1)^3-22*(n+1)²+76*(n+1)-72)` -/
def P7754833601164162450.Spec : Prop :=
  ∀ n, P7754833601164162450.a n = (A190395 (n + 1) : ℚ)

end A190395

/-!
# A190396: Number of ways to place 4 nonattacking grasshoppers on a chessboard of size n x n.

The programs for A190396, there is no canonical definition to state claims against.
-/

/-! ## A190396.P6605910167839301527

`xor(A024164(A342677(n+1)), A175383(n+1))`
-/

namespace A190396.P6605910167839301527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024164 (A342677 (n + 1)).toNat) (A175383 (n + 1))

end

end A190396.P6605910167839301527

/-!
# A190398: Number of ways to place 3 nonattacking grasshoppers on a toroidal chessboard of size n x n.

The programs for A190398, there is no canonical definition to state claims against.
-/

/-! ## A190398.P11823146776035283142

`A023194(n+1)*A332205(A051577(n))`
-/

namespace A190398.P11823146776035283142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) * A332205 (A051577 n).toNat

end

end A190398.P11823146776035283142

