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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A202800: Number of nX6 binary arrays with every one adjacent to another one horizontally or vertically.

The programs for A202800, there is no canonical definition to state claims against.
-/

/-! ## A202800.P7503194807523588547

`A202802(A374007(n+1))`
-/

namespace A202800.P7503194807523588547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A374007 (n + 1)).toNat

end

end A202800.P7503194807523588547

/-! ## A202800.P2711504181751145026

`A202802(A167614(n+4)+3)`
-/

namespace A202800.P2711504181751145026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A167614 (n + 4) + 3).toNat

end

end A202800.P2711504181751145026

/-! ## A202800.P11725915967125492849

`A202802(A052905(n+3))`
-/

namespace A202800.P11725915967125492849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A052905 (n + 3)).toNat

end

end A202800.P11725915967125492849

/-! ## A202800.P4658095977969572607

`A202802(eq[3, A219347(n)])`
-/

namespace A202800.P4658095977969572607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202800.P4658095977969572607

/-! ## A202800.P10786062774433447419

`A202802(eq[5, A193592(n)])`
-/

namespace A202800.P10786062774433447419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202800.P10786062774433447419

/-!
# A202801: Number of nX7 binary arrays with every one adjacent to another one horizontally or vertically.

The programs for A202801, there is no canonical definition to state claims against.
-/

/-! ## A202801.P15941382308762974306

`A202802(A374008(n+1))`
-/

namespace A202801.P15941382308762974306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A374008 (n + 1)).toNat

end

end A202801.P15941382308762974306

/-! ## A202801.P12585425646797263991

`A202802(eq[11, A066657(n)])`
-/

namespace A202801.P12585425646797263991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202801.P12585425646797263991

/-! ## A202801.P12011283329417393970

`A202802(eq[8, A131818(n+1)])`
-/

namespace A202801.P12011283329417393970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202801.P12011283329417393970

/-! ## A202801.P15708214599476611499

`A202802(A055999(n+4))`
-/

namespace A202801.P15708214599476611499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (A055999 (n + 4)).toNat

end

end A202801.P15708214599476611499

/-! ## A202801.P17229075244105841557

`A202802(eq[4, A219347(n)])`
-/

namespace A202801.P17229075244105841557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202801.P17229075244105841557

/-!
# A202802: T(n,k) = Number of n X k binary arrays with every one adjacent to another one horizontally or vertically.

The programs for A202802, there is no canonical definition to state claims against.
-/

/-! ## A202802.P7079151998467015662

`or(A181646(A089759(n)), A295416(n+1))`
-/

namespace A202802.P7079151998467015662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181646 (A089759 n).toNat) (A295416 (n + 1))

end

end A202802.P7079151998467015662

/-! ## A202802.P6171860945459967298

`or(A114611(A236915(2*(n+4))), A295416(n+1))`
-/

namespace A202802.P6171860945459967298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114611 (A236915 (2 * (n + 4))).toNat) (A295416 (n + 1))

end

end A202802.P6171860945459967298

/-! ## A202802.P6429682120903424792

`or(A184955(n+4), A295416(n+1))`
-/

namespace A202802.P6429682120903424792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184955 (n + 4)) (A295416 (n + 1))

end

end A202802.P6429682120903424792

/-! ## A202802.P12886049739706982075

`A295416(3^C(a(n-1), 68)+n)` with `a(0)=1`
-/

namespace A202802.P12886049739706982075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295416 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)

end

end A202802.P12886049739706982075

/-! ## A202802.P9898004819590374897

`A257737(A295416(n+1))`
-/

namespace A202802.P9898004819590374897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257737 (A295416 (n + 1)).toNat

end

end A202802.P9898004819590374897

/-!
# A202803: a(n) = n*(5*n+1).

The programs for A202803, the canonical program `A202803.P8642129568802212468` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202803 has offset 0).

The definition of A202803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n+1)` (program `A202803.P8642129568802212468`, by `A202803.P8642129568802212468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202803.P13939910207055309046

`5*n²+n`
-/

namespace A202803.P13939910207055309046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + n

end

end A202803.P13939910207055309046

namespace A202803

/-- `5*n²+n` -/
def P13939910207055309046.Spec : Prop :=
  ∀ n, (P13939910207055309046.a n : ℤ) = A202803 n

theorem P13939910207055309046.correct : P13939910207055309046.Spec := by
  intro n
  simp only [A202803, Nat.add_sub_cancel, A202803.P13939910207055309046.a, A202803.P8642129568802212468.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A202803

/-! ## A202803.P8642129568802212468

`n*(5*n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202803

/-- `n*(5*n+1)` -/
def P8642129568802212468.Spec : Prop :=
  ∀ n, (P8642129568802212468.a n : ℤ) = A202803 n

theorem P8642129568802212468.correct : P8642129568802212468.Spec := by
  intro n
  simp only [A202803]

end A202803

/-! ## A202803.P12017347770282712394

`A131242(10*n+5)`
-/

namespace A202803.P12017347770282712394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (10 * n + 5)

end

end A202803.P12017347770282712394

namespace A202803

/-- `A131242(10*n+5)` -/
def P12017347770282712394.Spec : Prop :=
  ∀ n, P12017347770282712394.a n = A202803 n

end A202803

/-! ## A202803.P12644912426094979040

`∑[a(n-1)+10]` with `a(0)=0, a(1)=6`
-/

namespace A202803.P12644912426094979040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202803.P12644912426094979040

namespace A202803

/-- `∑[a(n-1)+10]` -/
def P12644912426094979040.Spec : Prop :=
  ∀ n, (P12644912426094979040.a n : ℤ) = A202803 n

end A202803

/-! ## A202803.P14089594138627002788

`∑[ogf((6x+4x^2)/(1-2x+x^2))]`
-/

namespace A202803.P14089594138627002788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202803.P14089594138627002788

namespace A202803

/-- `∑[ogf((6x+4x^2)/(1-2x+x^2))]` -/
def P14089594138627002788.Spec : Prop :=
  ∀ n, P14089594138627002788.a n = A202803 n

end A202803

/-! ## A202803.P1631667003300684140

`ogf((6x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A202803.P1631667003300684140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4] [1, -3, 3, -1] n

end

end A202803.P1631667003300684140

namespace A202803

/-- `ogf((6x+4x^2)/(1-3x+3x^2-x^3))` -/
def P1631667003300684140.Spec : Prop :=
  ∀ n, P1631667003300684140.a n = A202803 n

end A202803

/-! ## A202803.P15076168692766930306

`floor((2*n)²-∑[a(n-1)-2])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A202803.P15076168692766930306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202803.P15076168692766930306

namespace A202803

/-- `floor((2*n)²-∑[a(n-1)-2])` -/
def P15076168692766930306.Spec : Prop :=
  ∀ n, P15076168692766930306.a n = A202803 n

end A202803

/-! ## A202803.P3215954509725352500

`record[(11*floor(n/10)-n)*ceil(xor(1, n)/2)]`
-/

namespace A202803.P3215954509725352500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) * ⌈(Nat.xor 1 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202803.P3215954509725352500

namespace A202803

/-- `record[(11*floor(n/10)-n)*ceil(xor(1, n)/2)]` -/
def P3215954509725352500.Spec : Prop :=
  ∀ n, P3215954509725352500.a n = A202803 n

end A202803

/-! ## A202803.P4980065853534678691

`A080861(n)%A080860(n)`
-/

namespace A202803.P4980065853534678691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080861 n) (A080860 n)

end

end A202803.P4980065853534678691

namespace A202803

/-- `A080861(n)%A080860(n)` -/
def P4980065853534678691.Spec : Prop :=
  ∀ n, P4980065853534678691.a n = A202803 n

end A202803

/-! ## A202803.P1691790102244142901

`A144459(n)%A033571(n)`
-/

namespace A202803.P1691790102244142901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144459 n) (A033571 n)

end

end A202803.P1691790102244142901

namespace A202803

/-- `A144459(n)%A033571(n)` -/
def P1691790102244142901.Spec : Prop :=
  ∀ n, P1691790102244142901.a n = A202803 n

end A202803

/-! ## A202803.P14940058850288206011

`A033573(n)%A161587(n)`
-/

namespace A202803.P14940058850288206011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033573 n) (A161587 n)

end

end A202803.P14940058850288206011

namespace A202803

/-- `A033573(n)%A161587(n)` -/
def P14940058850288206011.Spec : Prop :=
  ∀ n, P14940058850288206011.a n = A202803 n

end A202803

/-! ## A202803.P3604187922885688253

`A274974(n)%A098931(n)`
-/

namespace A202803.P3604187922885688253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274974 n) (A098931 n)

end

end A202803.P3604187922885688253

namespace A202803

/-- `A274974(n)%A098931(n)` -/
def P3604187922885688253.Spec : Prop :=
  ∀ n, P3604187922885688253.a n = A202803 n

end A202803

/-! ## A202803.P15560029964241421328

`A191745(n)%A381390(n)`
-/

namespace A202803.P15560029964241421328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191745 n) (A381390 n)

end

end A202803.P15560029964241421328

namespace A202803

/-- `A191745(n)%A381390(n)` -/
def P15560029964241421328.Spec : Prop :=
  ∀ n, P15560029964241421328.a n = A202803 n

end A202803

/-! ## A202803.P8740745916396295937

`lcm(A016861(n), A038608(n))`
-/

namespace A202803.P8740745916396295937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016861 n) (A038608 n)

end

end A202803.P8740745916396295937

namespace A202803

/-- `lcm(A016861(n), A038608(n))` -/
def P8740745916396295937.Spec : Prop :=
  ∀ n, (P8740745916396295937.a n : ℤ) = A202803 n

end A202803

/-! ## A202803.P13335100935836413417

`A014641(n)%A069127(n+1)`
-/

namespace A202803.P13335100935836413417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014641 n) (A069127 (n + 1))

end

end A202803.P13335100935836413417

namespace A202803

/-- `A014641(n)%A069127(n+1)` -/
def P13335100935836413417.Spec : Prop :=
  ∀ n, P13335100935836413417.a n = A202803 n

end A202803

/-! ## A202803.P6695124756306502408

`A080860(n)%A079273(n+1)`
-/

namespace A202803.P6695124756306502408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080860 n) (A079273 (n + 1))

end

end A202803.P6695124756306502408

namespace A202803

/-- `A080860(n)%A079273(n+1)` -/
def P6695124756306502408.Spec : Prop :=
  ∀ n, P6695124756306502408.a n = A202803 n

end A202803

/-! ## A202803.P11821170474755140400

`A157870(n)%A069125(n+1)`
-/

namespace A202803.P11821170474755140400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157870 n) (A069125 (n + 1))

end

end A202803.P11821170474755140400

namespace A202803

/-- `A157870(n)%A069125(n+1)` -/
def P11821170474755140400.Spec : Prop :=
  ∀ n, P11821170474755140400.a n = A202803 n

end A202803

/-! ## A202803.P11353968761982030110

`A244806(n+1)%A005892(n)`
-/

namespace A202803.P11353968761982030110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244806 (n + 1)) (A005892 n)

end

end A202803.P11353968761982030110

namespace A202803

/-- `A244806(n+1)%A005892(n)` -/
def P11353968761982030110.Spec : Prop :=
  ∀ n, P11353968761982030110.a n = A202803 n

end A202803

/-! ## A202803.P12747152176071252205

`A289134(n+1)%A016814(n)`
-/

namespace A202803.P12747152176071252205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289134 (n + 1)) (A016814 n)

end

end A202803.P12747152176071252205

namespace A202803

/-- `A289134(n+1)%A016814(n)` -/
def P12747152176071252205.Spec : Prop :=
  ∀ n, P12747152176071252205.a n = A202803 n

end A202803

/-! ## A202803.P15731375009856409499

`A244804(n+1)%A247541(n)`
-/

namespace A202803.P15731375009856409499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244804 (n + 1)) (A247541 n)

end

end A202803.P15731375009856409499

namespace A202803

/-- `A244804(n+1)%A247541(n)` -/
def P15731375009856409499.Spec : Prop :=
  ∀ n, P15731375009856409499.a n = A202803 n

end A202803

/-!
# A202804: a(n) = n*(6*n+4).

The programs for A202804, the canonical program `A202804.P11278304754932210698` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202804 has offset 0).

The definition of A202804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n+4)` (program `A202804.P11278304754932210698`, by `A202804.P11278304754932210698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202804.P11278304754932210698

`n*(6*n+4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202804

/-- `n*(6*n+4)` -/
def P11278304754932210698.Spec : Prop :=
  ∀ n, (P11278304754932210698.a n : ℤ) = A202804 n

theorem P11278304754932210698.correct : P11278304754932210698.Spec := by
  intro n
  simp only [A202804]

end A202804

/-! ## A202804.P1588493301927889786

`A080859(n)-1`
-/

namespace A202804.P1588493301927889786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n - 1

end

end A202804.P1588493301927889786

namespace A202804

/-- `A080859(n)-1` -/
def P1588493301927889786.Spec : Prop :=
  ∀ n, P1588493301927889786.a n = A202804 n

theorem P1588493301927889786.correct : P1588493301927889786.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P1588493301927889786.a, A202804.P11278304754932210698.a, A080859, A080859.P14823795919072812333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A202804

/-! ## A202804.P13736763084017092433

`A003154(n+1)-A005408(n)`
-/

namespace A202804.P13736763084017092433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - A005408 n

end

end A202804.P13736763084017092433

namespace A202804

/-- `A003154(n+1)-A005408(n)` -/
def P13736763084017092433.Spec : Prop :=
  ∀ n, P13736763084017092433.a n = A202804 n

theorem P13736763084017092433.correct : P13736763084017092433.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P13736763084017092433.a, A202804.P11278304754932210698.a, A003154, A003154.P12292724974289202885.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202804

/-! ## A202804.P3491113606553941598

`∑[a(n-1)+12]` with `a(0)=0, a(1)=10`
-/

namespace A202804.P3491113606553941598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202804.P3491113606553941598

namespace A202804

/-- `∑[a(n-1)+12]` -/
def P3491113606553941598.Spec : Prop :=
  ∀ n, (P3491113606553941598.a n : ℤ) = A202804 n

end A202804

/-! ## A202804.P17332550173809339464

`∑[ogf((10x+2x^2)/(1-2x+x^2))]`
-/

namespace A202804.P17332550173809339464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202804.P17332550173809339464

namespace A202804

/-- `∑[ogf((10x+2x^2)/(1-2x+x^2))]` -/
def P17332550173809339464.Spec : Prop :=
  ∀ n, P17332550173809339464.a n = A202804 n

end A202804

/-! ## A202804.P12231309100352412800

`ogf((10x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A202804.P12231309100352412800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 2] [1, -3, 3, -1] n

end

end A202804.P12231309100352412800

namespace A202804

/-- `ogf((10x+2x^2)/(1-3x+3x^2-x^3))` -/
def P12231309100352412800.Spec : Prop :=
  ∀ n, P12231309100352412800.a n = A202804 n

end A202804

/-! ## A202804.P16937864817901068368

`2-∑[a(n-1)-12]` with `a(0)=2`
-/

namespace A202804.P16937864817901068368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202804.P16937864817901068368

namespace A202804

/-- `2-∑[a(n-1)-12]` -/
def P16937864817901068368.Spec : Prop :=
  ∀ n, P16937864817901068368.a n = A202804 n

end A202804

/-! ## A202804.P5364361821058781938

`Δ[n*(C(2*n, 2)-1)]`
-/

namespace A202804.P5364361821058781938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (2 * n) 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202804.P5364361821058781938

namespace A202804

/-- `Δ[n*(C(2*n, 2)-1)]` -/
def P5364361821058781938.Spec : Prop :=
  ∀ n, P5364361821058781938.a n = A202804 n

theorem P5364361821058781938.correct : P5364361821058781938.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P5364361821058781938.f1, A202804.P5364361821058781938.a, A202804.P11278304754932210698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202804

/-! ## A202804.P2384967744809634977

`12*n-(2-a(n-1))` with `a(0)=0`
-/

namespace A202804.P2384967744809634977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (12 * n : ℤ) - (2 - a (n - 1))

end

end A202804.P2384967744809634977

namespace A202804

/-- `12*n-(2-a(n-1))` -/
def P2384967744809634977.Spec : Prop :=
  ∀ n, P2384967744809634977.a n = A202804 n

theorem P2384967744809634977.correct : P2384967744809634977.Spec := by
  intro n
  induction n with
  | zero => simp [A202804, A202804.P2384967744809634977.a, A202804.P11278304754932210698.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A202804, Nat.add_sub_cancel, A202804.P2384967744809634977.a, A202804.P11278304754932210698.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A202804

/-! ## A202804.P9673526673705281733

`Δ[lcm(1-2*n, n²)]-1`
-/

namespace A202804.P9673526673705281733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (2 * n : ℤ)) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A202804.P9673526673705281733

namespace A202804

/-- `Δ[lcm(1-2*n, n²)]-1` -/
def P9673526673705281733.Spec : Prop :=
  ∀ n, P9673526673705281733.a n = A202804 n

end A202804

/-! ## A202804.P17450754856150739191

`Δ[(n-1)*n*or(1, 2*n)]`
-/

namespace A202804.P17450754856150739191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n * Nat.lor 1 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202804.P17450754856150739191

namespace A202804

/-- `Δ[(n-1)*n*or(1, 2*n)]` -/
def P17450754856150739191.Spec : Prop :=
  ∀ n, P17450754856150739191.a n = A202804 n

end A202804

/-! ## A202804.P4999254927227455874

`Δ[(n-1)*n*xor(1, 2*n)]`
-/

namespace A202804.P4999254927227455874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n * Nat.xor 1 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A202804.P4999254927227455874

namespace A202804

/-- `Δ[(n-1)*n*xor(1, 2*n)]` -/
def P4999254927227455874.Spec : Prop :=
  ∀ n, P4999254927227455874.a n = A202804 n

end A202804

/-! ## A202804.P17684782725981731712

`C(4*n, 2)-(n-3)*2*n`
-/

namespace A202804.P17684782725981731712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 2 : ℤ) - ((n : ℤ) - 3) * (2 * n : ℤ)

end

end A202804.P17684782725981731712

namespace A202804

/-- `C(4*n, 2)-(n-3)*2*n` -/
def P17684782725981731712.Spec : Prop :=
  ∀ n, P17684782725981731712.a n = A202804 n

theorem P17684782725981731712.correct : P17684782725981731712.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P17684782725981731712.a, A202804.P11278304754932210698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202804

/-! ## A202804.P8502776586077116236

`lcm(n, (4*n-(n-2))*2*n)`
-/

namespace A202804.P8502776586077116236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((4 * n : ℤ) - ((n : ℤ) - 2)) * (2 * n : ℤ))

end

end A202804.P8502776586077116236

namespace A202804

/-- `lcm(n, (4*n-(n-2))*2*n)` -/
def P8502776586077116236.Spec : Prop :=
  ∀ n, (P8502776586077116236.a n : ℤ) = A202804 n

end A202804

/-! ## A202804.P6182238885305189592

`A195319(n)+n`
-/

namespace A202804.P6182238885305189592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + (n : ℤ)

end

end A202804.P6182238885305189592

namespace A202804

/-- `A195319(n)+n` -/
def P6182238885305189592.Spec : Prop :=
  ∀ n, P6182238885305189592.a n = A202804 n

theorem P6182238885305189592.correct : P6182238885305189592.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P6182238885305189592.a, A202804.P11278304754932210698.a, A195319, A195319.P14159989131175070761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A202804

/-! ## A202804.P9767191054154982115

`A211014(n)-n`
-/

namespace A202804.P9767191054154982115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n - (n : ℤ)

end

end A202804.P9767191054154982115

namespace A202804

/-- `A211014(n)-n` -/
def P9767191054154982115.Spec : Prop :=
  ∀ n, P9767191054154982115.a n = A202804 n

theorem P9767191054154982115.correct : P9767191054154982115.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P9767191054154982115.a, A202804.P11278304754932210698.a, A211014, A211014.P12672984575473909047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A202804

/-! ## A202804.P15727981642652689148

`floor(A014641(n)/2)`
-/

namespace A202804.P15727981642652689148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014641 n : ℚ) / 2⌋

end

end A202804.P15727981642652689148

namespace A202804

/-- `floor(A014641(n)/2)` -/
def P15727981642652689148.Spec : Prop :=
  ∀ n, P15727981642652689148.a n = A202804 n

end A202804

/-! ## A202804.P8767561402708027168

`A135705(n)+n²`
-/

namespace A202804.P8767561402708027168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n + (n ^ 2 : ℤ)

end

end A202804.P8767561402708027168

namespace A202804

/-- `A135705(n)+n²` -/
def P8767561402708027168.Spec : Prop :=
  ∀ n, P8767561402708027168.a n = A202804 n

theorem P8767561402708027168.correct : P8767561402708027168.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P8767561402708027168.a, A202804.P11278304754932210698.a, A135705, A135705.P9136998948891428335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A202804

/-! ## A202804.P15995711974113198899

`2*A270710(n)+2`
-/

namespace A202804.P15995711974113198899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270710 n + 2

end

end A202804.P15995711974113198899

namespace A202804

/-- `2*A270710(n)+2` -/
def P15995711974113198899.Spec : Prop :=
  ∀ n, P15995711974113198899.a n = A202804 n

theorem P15995711974113198899.correct : P15995711974113198899.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P15995711974113198899.a, A202804.P11278304754932210698.a, A270710, A270710.P7193795266762276404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A202804

/-! ## A202804.P16651491703912172649

`(A081275(n)-1)/3`
-/

namespace A202804.P16651491703912172649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081275 n - 1 : ℚ) / 3

end

end A202804.P16651491703912172649

namespace A202804

/-- `(A081275(n)-1)/3` -/
def P16651491703912172649.Spec : Prop :=
  ∀ n, P16651491703912172649.a n = (A202804 n : ℚ)

theorem P16651491703912172649.correct : P16651491703912172649.Spec := by
  intro n
  simp only [A202804, Nat.add_sub_cancel, A202804.P16651491703912172649.a, A202804.P11278304754932210698.a, A081275, A081275.P11714172675934927490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A202804

/-!
# A202805: a(n) is the largest k in an n_nacci(k) sequence (Fibonacci(k) for n=2, tribonacci(k) for n=3, etc.) such that n_nacci(k) >= 2^(k-n-1).

The programs for A202805, there is no canonical definition to state claims against.
-/

/-! ## A202805.P15621955762091626948

`A277828(n+3)+gcd(n, ∏{d}[n, #])`
-/

namespace A202805.P15621955762091626948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277828 (n + 3) + (Nat.gcd n (∏ d ∈ Nat.divisors (f1 n), d) : ℤ)

end

end A202805.P15621955762091626948

/-! ## A202805.P16863384655932028530

`A277828(n+3)+A028310(n)`
-/

namespace A202805.P16863384655932028530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277828 (n + 3) + A028310 n

end

end A202805.P16863384655932028530

/-! ## A202805.P18179851764773626904

`A277828(n+3)+A065033(2*n)`
-/

namespace A202805.P18179851764773626904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277828 (n + 3) + A065033 (2 * n)

end

end A202805.P18179851764773626904

/-! ## A202805.P5511236211333829701

`A277828(n+3)+A123108(2*n)`
-/

namespace A202805.P5511236211333829701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277828 (n + 3) + A123108 (2 * n)

end

end A202805.P5511236211333829701

/-! ## A202805.P12346160802133525517

`A277828(n+3)+A007318(A000124(n))`
-/

namespace A202805.P12346160802133525517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277828 (n + 3) + A007318 (A000124 n).toNat

end

end A202805.P12346160802133525517

/-!
# A202806: Number of n X n nonnegative integer arrays with each row and column increasing from zero by 0, 1 or 2.

The programs for A202806, there is no canonical definition to state claims against.
-/

/-! ## A202806.P2842459204755489717

`A202812(∑[4*n]+1)`
-/

namespace A202806.P2842459204755489717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202806.P2842459204755489717

/-! ## A202806.P3294236938260099459

`record[gcd(A114327(n), A202812(n+1))]`
-/

namespace A202806.P3294236938260099459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A202812 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202806.P3294236938260099459

/-! ## A202806.P12006928266052834313

`record[A202812(n+1)*A203994(n+1)]`
-/

namespace A202806.P12006928266052834313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202806.P12006928266052834313

/-! ## A202806.P16559588883160468318

`A202812(A001844(n))*A224697(n)`
-/

namespace A202806.P16559588883160468318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A001844 n).toNat * A224697 n

end

end A202806.P16559588883160468318

/-! ## A202806.P11019912648274161951

`gcd(A000038(n), A202812(A001844(n)))`
-/

namespace A202806.P11019912648274161951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202812 (A001844 n).toNat)

end

end A202806.P11019912648274161951

/-!
# A202807: Number of n X 3 nonnegative integer arrays with each row and column increasing from zero by 0, 1 or 2.

The programs for A202807, the canonical program `A202807.P102181140856324346` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202807 has offset 1).

The definition of A202807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202807.P102181140856324346

`∑[A033455(n+1)+1-(n+1)²]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202807

/-- `∑[A033455(n+1)+1-(n+1)²]` -/
def P102181140856324346.Spec : Prop :=
  ∀ n, P102181140856324346.a n = A202807 (n + 1)

theorem P102181140856324346.correct : P102181140856324346.Spec := by
  intro n
  simp only [A202807, Nat.add_sub_cancel]

end A202807

/-! ## A202807.P6567563791919705559

`A101338(n)+∑[∑[A033488(n)]]`
-/

namespace A202807.P6567563791919705559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202807.P6567563791919705559

namespace A202807

/-- `A101338(n)+∑[∑[A033488(n)]]` -/
def P6567563791919705559.Spec : Prop :=
  ∀ n, P6567563791919705559.a n = A202807 (n + 1)

end A202807

/-! ## A202807.P2129478067480391724

`∑[A033455(n+1)+1]-A000330(n+1)`
-/

namespace A202807.P2129478067480391724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000330 (n + 1)

end

end A202807.P2129478067480391724

namespace A202807

/-- `∑[A033455(n+1)+1]-A000330(n+1)` -/
def P2129478067480391724.Spec : Prop :=
  ∀ n, P2129478067480391724.a n = A202807 (n + 1)

end A202807

/-! ## A202807.P13207877676185584360

`∑[Δ[A259181(n)]-A005563(n)]`
-/

namespace A202807.P13207877676185584360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202807.P13207877676185584360

namespace A202807

/-- `∑[Δ[A259181(n)]-A005563(n)]` -/
def P13207877676185584360.Spec : Prop :=
  ∀ n, P13207877676185584360.a n = A202807 (n + 1)

end A202807

/-! ## A202807.P10111188477381717891

`A259181(n+1)-∑[A005563(n)]`
-/

namespace A202807.P10111188477381717891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202807.P10111188477381717891

namespace A202807

/-- `A259181(n+1)-∑[A005563(n)]` -/
def P10111188477381717891.Spec : Prop :=
  ∀ n, P10111188477381717891.a n = A202807 (n + 1)

end A202807

/-! ## A202807.P8859920830451835497

`A259181(n+1)+1-A047732(n)`
-/

namespace A202807.P8859920830451835497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 (n + 1) + (1 - A047732 n)

end

end A202807.P8859920830451835497

namespace A202807

/-- `A259181(n+1)+1-A047732(n)` -/
def P8859920830451835497.Spec : Prop :=
  ∀ n, P8859920830451835497.a n = A202807 (n + 1)

end A202807

/-! ## A202807.P16621486680523416278

`∑[A258837(n+1)+A033455(n+1)]`
-/

namespace A202807.P16621486680523416278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 (n + 1) + A033455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202807.P16621486680523416278

namespace A202807

/-- `∑[A258837(n+1)+A033455(n+1)]` -/
def P16621486680523416278.Spec : Prop :=
  ∀ n, P16621486680523416278.a n = A202807 (n + 1)

end A202807

/-! ## A202807.P2176760526095536580

`A259181(n+1)+n+1-A000330(n+1)`
-/

namespace A202807.P2176760526095536580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 (n + 1) + ((n + 1 : ℤ) - A000330 (n + 1))

end

end A202807.P2176760526095536580

namespace A202807

/-- `A259181(n+1)+n+1-A000330(n+1)` -/
def P2176760526095536580.Spec : Prop :=
  ∀ n, P2176760526095536580.a n = A202807 (n + 1)

end A202807

/-!
# A202808: Number of n X 4 nonnegative integer arrays with each row and column increasing from zero by 0, 1 or 2.

The programs for A202808, there is no canonical definition to state claims against.
-/

/-! ## A202808.P2737951489176334955

`A202812(A374004(n+1))`
-/

namespace A202808.P2737951489176334955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A374004 (n + 1)).toNat

end

end A202808.P2737951489176334955

/-! ## A202808.P5635888924775218537

`A202812(A141214(n)+7)`
-/

namespace A202808.P5635888924775218537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A141214 n + 7).toNat

end

end A202808.P5635888924775218537

/-! ## A202808.P7278992924331231351

`A202812(A055999(n)+10)`
-/

namespace A202808.P7278992924331231351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A055999 n + 10).toNat

end

end A202808.P7278992924331231351

/-! ## A202808.P10510397267648195534

`A202812(A167614(n+2)+1)`
-/

namespace A202808.P10510397267648195534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A167614 (n + 2) + 1).toNat

end

end A202808.P10510397267648195534

/-! ## A202808.P6585547898797301446

`A202812(A166136(n+2)-2)`
-/

namespace A202808.P6585547898797301446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A166136 (n + 2) - 2).toNat

end

end A202808.P6585547898797301446

/-!
# A202809: Number of nX5 nonnegative integer arrays with each row and column increasing from zero by 0, 1 or 2.

The programs for A202809, there is no canonical definition to state claims against.
-/

/-! ## A202809.P12722082939762897650

`A202812(A374005(n+1))`
-/

namespace A202809.P12722082939762897650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A374005 (n + 1)).toNat

end

end A202809.P12722082939762897650

/-! ## A202809.P14609039950900595727

`A202812(A167499(n+3))`
-/

namespace A202809.P14609039950900595727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A167499 (n + 3)).toNat

end

end A202809.P14609039950900595727

/-! ## A202809.P16457897450773155900

`A202812(eq[6, A135223(n+1)])`
-/

namespace A202809.P16457897450773155900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202809.P16457897450773155900

/-! ## A202809.P10395488994257376440

`A202812(A046691(n+3))`
-/

namespace A202809.P10395488994257376440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A046691 (n + 3)).toNat

end

end A202809.P10395488994257376440

/-! ## A202809.P2337536002670056299

`A202812(eq[4, A193592(n)])`
-/

namespace A202809.P2337536002670056299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202809.P2337536002670056299

/-!
# A202810: Number of nX6 nonnegative integer arrays with each row and column increasing from zero by 0, 1 or 2.

The programs for A202810, there is no canonical definition to state claims against.
-/

/-! ## A202810.P7690542780466131406

`A202812(A374007(n+1))`
-/

namespace A202810.P7690542780466131406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A374007 (n + 1)).toNat

end

end A202810.P7690542780466131406

/-! ## A202810.P4595144870525378720

`A202812(A166136(n+4))`
-/

namespace A202810.P4595144870525378720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A166136 (n + 4)).toNat

end

end A202810.P4595144870525378720

/-! ## A202810.P1696862580818280755

`A202812(A056115(n)+21)`
-/

namespace A202810.P1696862580818280755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A056115 n + 21).toNat

end

end A202810.P1696862580818280755

/-! ## A202810.P5066041311729082852

`A202812(eq[7, A131818(n+1)])`
-/

namespace A202810.P5066041311729082852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202810.P5066041311729082852

/-! ## A202810.P135001187054142750

`A202812(A052905(n+3))`
-/

namespace A202810.P135001187054142750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A052905 (n + 3)).toNat

end

end A202810.P135001187054142750

/-!
# A202811: Number of nX7 nonnegative integer arrays with each row and column increasing from zero by 0, 1 or 2.

The programs for A202811, there is no canonical definition to state claims against.
-/

/-! ## A202811.P9627911524133397778

`A202812(A374008(n+1))`
-/

namespace A202811.P9627911524133397778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A374008 (n + 1)).toNat

end

end A202811.P9627911524133397778

/-! ## A202811.P1628318096576999749

`A202812(A167487(n+5))`
-/

namespace A202811.P1628318096576999749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A167487 (n + 5)).toNat

end

end A202811.P1628318096576999749

/-! ## A202811.P4667713992220564944

`A202812(A161680(n+7)+7)`
-/

namespace A202811.P4667713992220564944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A161680 (n + 7) + 7).toNat

end

end A202811.P4667713992220564944

/-! ## A202811.P2981157418816411839

`A202812(eq[8, A131818(n+1)])`
-/

namespace A202811.P2981157418816411839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202811.P2981157418816411839

/-! ## A202811.P1979505229734829425

`A202812(A055999(n+4))`
-/

namespace A202811.P1979505229734829425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202812 (A055999 (n + 4)).toNat

end

end A202811.P1979505229734829425

/-!
# A202812: T(n,k) = Number of n X k nonnegative integer arrays with each row and column increasing from zero by 0, 1 or 2.

The programs for A202812, there is no canonical definition to state claims against.
-/

/-! ## A202812.P15428784142438161258

`A048263(A171229(n))`
-/

namespace A202812.P15428784142438161258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048263 (A171229 n).toNat

end

end A202812.P15428784142438161258

/-! ## A202812.P18380151914194524829

`A018744(A382448(n))`
-/

namespace A202812.P18380151914194524829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018744 (A382448 n).toNat

end

end A202812.P18380151914194524829

/-! ## A202812.P5169346668892182687

`A240199(A184173(n))`
-/

namespace A202812.P5169346668892182687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240199 (A184173 n).toNat

end

end A202812.P5169346668892182687

/-! ## A202812.P4354046398433686931

`A084563(A001263(n+1))-A001263(n+1)`
-/

namespace A202812.P4354046398433686931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084563 (A001263 (n + 1)).toNat - A001263 (n + 1)

end

end A202812.P4354046398433686931

/-! ## A202812.P6786710171583317272

`A184944(A184944(n))+A001263(n+1)`
-/

namespace A202812.P6786710171583317272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 (A184944 n).toNat + A001263 (n + 1)

end

end A202812.P6786710171583317272

/-!
# A202814: Moments of the quadratic coefficient of the characteristic polynomial of a random matrix in U(1) X U(1) (embedded in USp(4)).

The programs for A202814, there is no canonical definition to state claims against.
-/

/-! ## A202814.P2620748270105048238

`A008620(A082685(n)+A061256(n))`
-/

namespace A202814.P2620748270105048238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A082685 n + A061256 n).toNat

end

end A202814.P2620748270105048238

/-! ## A202814.P16218154787905382706

`A055889(A001844(n)^A237979(n+1))`
-/

namespace A202814.P16218154787905382706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055889 (SequenceMachineLib.roundAway ((A001844 n : ℚ) ^ (A237979 (n + 1) : ℤ))).toNat

end

end A202814.P16218154787905382706

/-!
# A202815: The right-hand half-triangle of A185356 (or A202690).

The programs for A202815, there is no canonical definition to state claims against.
-/

/-! ## A202815.P12790614928840031945

`A185356(eq[1, floor(2*sqrt(n))%2])`
-/

namespace A202815.P12790614928840031945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202815.P12790614928840031945

/-! ## A202815.P12647243610310798421

`A202690(C(comp[∑[n]]-n, 2)+n+1)`
-/

namespace A202815.P12647243610310798421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202690 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n + 1)

end

end A202815.P12647243610310798421

/-! ## A202815.P14789591489538668889

`A202690(A004202(n+1))`
-/

namespace A202815.P14789591489538668889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202690 (A004202 (n + 1)).toNat

end

end A202815.P14789591489538668889

/-! ## A202815.P3118637559530113852

`A185356(A063657(n+1))`
-/

namespace A202815.P3118637559530113852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (A063657 (n + 1)).toNat

end

end A202815.P3118637559530113852

/-! ## A202815.P3396204037251328520

`A185356(eq[1, A023969(n)])`
-/

namespace A202815.P3396204037251328520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202815.P3396204037251328520

/-!
# A202816: The left-hand half-triangle of A185356 (or A202690).

The programs for A202816, there is no canonical definition to state claims against.
-/

/-! ## A202816.P477823862849138357

`A202690(A171175(2*(n+1)))`
-/

namespace A202816.P477823862849138357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202690 (A171175 (2 * (n + 1))).toNat

end

end A202816.P477823862849138357

/-! ## A202816.P1209139725918445321

`A185356(A099375(n)+A061885(n))`
-/

namespace A202816.P1209139725918445321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (A099375 n + A061885 n).toNat

end

end A202816.P1209139725918445321

/-! ## A202816.P5331195652382309518

`A202690(A057944(n)+A038722(n+1))`
-/

namespace A202816.P5331195652382309518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202690 (A057944 n + A038722 (n + 1)).toNat

end

end A202816.P5331195652382309518

/-! ## A202816.P434694009740495354

`A185356(A093995(n+1)+A025581(n))`
-/

namespace A202816.P434694009740495354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (A093995 (n + 1) + A025581 n).toNat

end

end A202816.P434694009740495354

/-! ## A202816.P7991766711145618479

`A202690(A114327(n)+A004201(n+1))`
-/

namespace A202816.P7991766711145618479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202690 (A114327 n + A004201 (n + 1)).toNat

end

end A202816.P7991766711145618479

/-!
# A202817: The right-hand half-triangle of A202691.

The programs for A202817, there is no canonical definition to state claims against.
-/

/-! ## A202817.P10505329409188420032

`A256665(∑[2*n]%comp[∑[n]])`
-/

namespace A202817.P10505329409188420032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256665 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A202817.P10505329409188420032

/-! ## A202817.P259224604610481997

`A256665(∑[char[∑[n]]]²-n-1)`
-/

namespace A202817.P259224604610481997
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256665 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A202817.P259224604610481997

/-! ## A202817.P17341272171960223040

`A202691(C(comp[∑[n]]-n, 2)+1+n)`
-/

namespace A202817.P17341272171960223040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202691 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n)

end

end A202817.P17341272171960223040

/-! ## A202817.P18175198447694250593

`A202691(A004202(n+1))`
-/

namespace A202817.P18175198447694250593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202691 (A004202 (n + 1)).toNat

end

end A202817.P18175198447694250593

/-! ## A202817.P4905578965995625132

`A202691(A064801(n+1)+1)`
-/

namespace A202817.P4905578965995625132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202691 (A064801 (n + 1) + 1).toNat

end

end A202817.P4905578965995625132

/-!
# A202818: The left-hand half-triangle of A202691.

The programs for A202818, there is no canonical definition to state claims against.
-/

/-! ## A202818.P2878958879828239851

`abs(A256679(n))`
-/

namespace A202818.P2878958879828239851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256679 n|

end

end A202818.P2878958879828239851

/-! ## A202818.P4536432988977939366

`A056926(A256679(n)²)`
-/

namespace A202818.P4536432988977939366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A256679 n ^ 2).toNat

end

end A202818.P4536432988977939366

/-! ## A202818.P12687619115962108216

`gcd(A000038(n), A256679(n))`
-/

namespace A202818.P12687619115962108216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A256679 n)

end

end A202818.P12687619115962108216

/-! ## A202818.P4473051190454931927

`lcm(A008327(n), A256679(n))`
-/

namespace A202818.P4473051190454931927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008327 n) (A256679 n)

end

end A202818.P4473051190454931927

/-! ## A202818.P15621588539733981066

`∑{d}[A256679(n), A000010(#)]`
-/

namespace A202818.P15621588539733981066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A202818.P15621588539733981066

/-!
# A202819: The right-hand half-triangle of A202704.

The programs for A202819, there is no canonical definition to state claims against.
-/

/-! ## A202819.P3847965794238833591

`A202704(C(comp[∑[n]]-n, 2)+1+n)`
-/

namespace A202819.P3847965794238833591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n)

end

end A202819.P3847965794238833591

/-! ## A202819.P11726779978874031940

`A202704(A004202(n+1))`
-/

namespace A202819.P11726779978874031940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (A004202 (n + 1)).toNat

end

end A202819.P11726779978874031940

/-! ## A202819.P1908341492129296654

`A202704(A064801(n+1)+1)`
-/

namespace A202819.P1908341492129296654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (A064801 (n + 1) + 1).toNat

end

end A202819.P1908341492129296654

/-! ## A202819.P16661093471457611447

`A202704(A171175(2*n+1))`
-/

namespace A202819.P16661093471457611447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (A171175 (2 * n + 1)).toNat

end

end A202819.P16661093471457611447

/-! ## A202819.P1713351833115868681

`A202704(A025581(n)+2*(n+1))`
-/

namespace A202819.P1713351833115868681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (A025581 n + (2 * (n + 1) : ℤ)).toNat

end

end A202819.P1713351833115868681

/-!
# A202820: The left-hand half-triangle of A202704.

The programs for A202820, there is no canonical definition to state claims against.
-/

/-! ## A202820.P6846998838646399139

`A202704(A171175(2*(n+1)))`
-/

namespace A202820.P6846998838646399139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (A171175 (2 * (n + 1))).toNat

end

end A202820.P6846998838646399139

/-! ## A202820.P12080641856500559465

`A202816(n+1)-abs(A256679(n))`
-/

namespace A202820.P12080641856500559465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202816 (n + 1) - |A256679 n|

end

end A202820.P12080641856500559465

/-! ## A202820.P4504362944174420162

`A202816(n+1)-A202818(n+1)`
-/

namespace A202820.P4504362944174420162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202816 (n + 1) - A202818 (n + 1)

end

end A202820.P4504362944174420162

/-! ## A202820.P10476932492575946281

`A202704(A057944(n)+A038722(n+1))`
-/

namespace A202820.P10476932492575946281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202704 (A057944 n + A038722 (n + 1)).toNat

end

end A202820.P10476932492575946281

/-! ## A202820.P5730421670774205252

`A202816(n+1)-∑{d}[A256679(n), A000010(#)]`
-/

namespace A202820.P5730421670774205252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202816 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A202820.P5730421670774205252

/-!
# A202821: Position of 6^n among 3-smooth numbers A003586.

The programs for A202821, there is no canonical definition to state claims against.
-/

/-! ## A202821.P13967179263564625552

`A247714(∑[4*n])`
-/

namespace A202821.P13967179263564625552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202821.P13967179263564625552

/-! ## A202821.P7873671831025206513

`root(A247714(2*(n²+n)), 2)²`
-/

namespace A202821.P7873671831025206513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A247714 (2 * (n ^ 2 + n)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A202821.P7873671831025206513

/-! ## A202821.P11538758754865190349

`A000027(A247714(2*(n²+n)))`
-/

namespace A202821.P11538758754865190349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A247714 (2 * (n ^ 2 + n))).toNat

end

end A202821.P11538758754865190349

/-! ## A202821.P8180195672626359938

`gcd(A000038(n), A247714(2*(n²+n)))`
-/

namespace A202821.P8180195672626359938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A247714 (2 * (n ^ 2 + n)))

end

end A202821.P8180195672626359938

/-! ## A202821.P15339913939468498532

`lcm(A033999(n), A247714(2*(n²+n)))`
-/

namespace A202821.P15339913939468498532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A247714 (2 * (n ^ 2 + n)))

end

end A202821.P15339913939468498532

/-! ## A202821.P17417411289603967693

`A247714(2*(n²+n))%A000041(n+7)`
-/

namespace A202821.P17417411289603967693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247714 (2 * (n ^ 2 + n))) (A000041 (n + 7))

end

end A202821.P17417411289603967693

/-! ## A202821.P13315975195537520964

`A007318(C(2, n))*A247714(2*(n²+n))`
-/

namespace A202821.P13315975195537520964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A247714 (2 * (n ^ 2 + n))

end

end A202821.P13315975195537520964

/-! ## A202821.P7852304855061745381

`A247714(2*(n²+n))+A008683(4*(n+1))`
-/

namespace A202821.P7852304855061745381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (2 * (n ^ 2 + n)) + A008683 (4 * (n + 1))

end

end A202821.P7852304855061745381

/-! ## A202821.P2589064412763148171

`A000108(C(2, n+2))*A247714(2*(n²+n))`
-/

namespace A202821.P2589064412763148171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A247714 (2 * (n ^ 2 + n))

end

end A202821.P2589064412763148171

/-!
# A202822: Numbers of the form 3*(x^2 + xy + y^2 + x + y) + 1 where x and y are integers.

The programs for A202822, the canonical program `A202822.P8406521791768772267` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202822 has offset 1).

The definition of A202822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202822.P5283694758582079037

`filter[A243175(n+2), A187074(#)]`
-/

namespace A202822.P5283694758582079037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A202822.P5283694758582079037

namespace A202822

/-- `filter[A243175(n+2), A187074(#)]` -/
def P5283694758582079037.Spec : Prop :=
  ∀ n, P5283694758582079037.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P16649431135339082729

`filter[A243175(n+2), A373155(#)]`
-/

namespace A202822.P16649431135339082729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A202822.P16649431135339082729

namespace A202822

/-- `filter[A243175(n+2), A373155(#)]` -/
def P16649431135339082729.Spec : Prop :=
  ∀ n, P16649431135339082729.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P8406521791768772267

`filter[A003136(n+2), A187074(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A202822

/-- `filter[A003136(n+2), A187074(#)]` -/
def P8406521791768772267.Spec : Prop :=
  ∀ n, P8406521791768772267.a n = A202822 (n + 1)

theorem P8406521791768772267.correct : P8406521791768772267.Spec := by
  intro n
  simp only [A202822, Nat.add_sub_cancel]

end A202822

/-! ## A202822.P5062775649343337948

`filter[A003136(n+2), A373155(#)]`
-/

namespace A202822.P5062775649343337948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A202822.P5062775649343337948

namespace A202822

/-- `filter[A003136(n+2), A373155(#)]` -/
def P5062775649343337948.Spec : Prop :=
  ∀ n, P5062775649343337948.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P5488541860378175653

`A003136(eq[1, gcd(3, A003136(n+1))]+1)`
-/

namespace A202822.P5488541860378175653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A003136 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A202822.P5488541860378175653

namespace A202822

/-- `A003136(eq[1, gcd(3, A003136(n+1))]+1)` -/
def P5488541860378175653.Spec : Prop :=
  ∀ n, P5488541860378175653.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P5054747010780325343

`filter[A084089(n+1), A353816(#)]`
-/

namespace A202822.P5054747010780325343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A202822.P5054747010780325343

namespace A202822

/-- `filter[A084089(n+1), A353816(#)]` -/
def P5054747010780325343.Spec : Prop :=
  ∀ n, P5054747010780325343.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P10682540668912034299

`∩[A003136(n+1), A084089(n+1)]`
-/

namespace A202822.P10682540668912034299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202822.P10682540668912034299

namespace A202822

/-- `∩[A003136(n+1), A084089(n+1)]` -/
def P10682540668912034299.Spec : Prop :=
  ∀ n, (P10682540668912034299.a n : ℤ) = A202822 (n + 1)

end A202822

/-! ## A202822.P4545824119552944046

`filter[A035246(n+1), A373155(#)]`
-/

namespace A202822.P4545824119552944046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A202822.P4545824119552944046

namespace A202822

/-- `filter[A035246(n+1), A373155(#)]` -/
def P4545824119552944046.Spec : Prop :=
  ∀ n, P4545824119552944046.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P16659137968179843900

`∩[A035246(n+1), A084089(n+1)]`
-/

namespace A202822.P16659137968179843900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202822.P16659137968179843900

namespace A202822

/-- `∩[A035246(n+1), A084089(n+1)]` -/
def P16659137968179843900.Spec : Prop :=
  ∀ n, (P16659137968179843900.a n : ℤ) = A202822 (n + 1)

end A202822

/-! ## A202822.P4815567701364532342

`A016777(A267137(n+1))`
-/

namespace A202822.P4815567701364532342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A267137 (n + 1)).toNat

end

end A202822.P4815567701364532342

namespace A202822

/-- `A016777(A267137(n+1))` -/
def P4815567701364532342.Spec : Prop :=
  ∀ n, P4815567701364532342.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P2721412247339935628

`A016777(lt[0, A005882(n)])`
-/

namespace A202822.P2721412247339935628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A202822.P2721412247339935628

namespace A202822

/-- `A016777(lt[0, A005882(n)])` -/
def P2721412247339935628.Spec : Prop :=
  ∀ n, P2721412247339935628.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P5457397666787425737

`∩[A003136(n+1), A016777(n)]`
-/

namespace A202822.P5457397666787425737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202822.P5457397666787425737

namespace A202822

/-- `∩[A003136(n+1), A016777(n)]` -/
def P5457397666787425737.Spec : Prop :=
  ∀ n, (P5457397666787425737.a n : ℤ) = A202822 (n + 1)

end A202822

/-! ## A202822.P9654685970912030669

`∩[A035246(n+1), A016777(n)]`
-/

namespace A202822.P9654685970912030669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202822.P9654685970912030669

namespace A202822

/-- `∩[A035246(n+1), A016777(n)]` -/
def P9654685970912030669.Spec : Prop :=
  ∀ n, (P9654685970912030669.a n : ℤ) = A202822 (n + 1)

end A202822

/-! ## A202822.P3268645693774735342

`∩[A243175(n+1), A016777(n)]`
-/

namespace A202822.P3268645693774735342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202822.P3268645693774735342

namespace A202822

/-- `∩[A243175(n+1), A016777(n)]` -/
def P3268645693774735342.Spec : Prop :=
  ∀ n, (P3268645693774735342.a n : ℤ) = A202822 (n + 1)

end A202822

/-! ## A202822.P12850017669175379600

`filter[A016777(n), A353816(#)]`
-/

namespace A202822.P12850017669175379600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A202822.P12850017669175379600

namespace A202822

/-- `filter[A016777(n), A353816(#)]` -/
def P12850017669175379600.Spec : Prop :=
  ∀ n, P12850017669175379600.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P18320893681051081152

`filter[A033627(n+1), A353816(#)]`
-/

namespace A202822.P18320893681051081152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A202822.P18320893681051081152

namespace A202822

/-- `filter[A033627(n+1), A353816(#)]` -/
def P18320893681051081152.Spec : Prop :=
  ∀ n, P18320893681051081152.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P722965556902100259

`∩[A003136(n+1), A033627(n+1)]`
-/

namespace A202822.P722965556902100259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202822.P722965556902100259

namespace A202822

/-- `∩[A003136(n+1), A033627(n+1)]` -/
def P722965556902100259.Spec : Prop :=
  ∀ n, (P722965556902100259.a n : ℤ) = A202822 (n + 1)

end A202822

/-! ## A202822.P16308033446945827891

`filter[A260488(n+1), A353816(#)]`
-/

namespace A202822.P16308033446945827891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A202822.P16308033446945827891

namespace A202822

/-- `filter[A260488(n+1), A353816(#)]` -/
def P16308033446945827891.Spec : Prop :=
  ∀ n, P16308033446945827891.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P8480318289956738866

`filter[A084087(n+1), A353816(#)]`
-/

namespace A202822.P8480318289956738866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A202822.P8480318289956738866

namespace A202822

/-- `filter[A084087(n+1), A353816(#)]` -/
def P8480318289956738866.Spec : Prop :=
  ∀ n, P8480318289956738866.a n = A202822 (n + 1)

end A202822

/-! ## A202822.P13549174324719866844

`∩[A003136(n+1), A084087(n+1)]`
-/

namespace A202822.P13549174324719866844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202822.P13549174324719866844

namespace A202822

/-- `∩[A003136(n+1), A084087(n+1)]` -/
def P13549174324719866844.Spec : Prop :=
  ∀ n, (P13549174324719866844.a n : ℤ) = A202822 (n + 1)

end A202822

/-!
# A202823: Numbers n such that A004001(n) = A005185(n), where A004001 = Hofstadter-Conway $10000 sequence and A005185 = Hofstadter Q-sequence.

The programs for A202823, there is no canonical definition to state claims against.
-/

/-! ## A202823.P2354539704090663165

`eq[0, A284019(n+1)]+1`
-/

namespace A202823.P2354539704090663165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A202823.P2354539704090663165

/-! ## A202823.P1587984144055125917

`record[(n+1)/A286569(n+1)]`
-/

namespace A202823.P1587984144055125917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A286569 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202823.P1587984144055125917

/-! ## A202823.P16731611462005646986

`record[gcd(n+1, A284606(n+1))]`
-/

namespace A202823.P16731611462005646986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A284606 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202823.P16731611462005646986

/-! ## A202823.P2589597770601642240

`record[gcd(A000027(n+1), A284019(n+1))]`
-/

namespace A202823.P2589597770601642240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A284019 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202823.P2589597770601642240

/-! ## A202823.P16811776297847698529

`eq[A004001(n+1), A005185(n+1)]+1`
-/

namespace A202823.P16811776297847698529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A202823.P16811776297847698529

/-!
# A202824: Expansion of e.g.f.: exp( (1+x)^4 - 1 ).

The programs for A202824, there is no canonical definition to state claims against.
-/

/-! ## A202824.P7499585138567786174

`record[A294042(A052905(n))]`
-/

namespace A202824.P7499585138567786174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202824.P7499585138567786174

/-! ## A202824.P5655532005663209770

`A294042(A052905(n+2))`
-/

namespace A202824.P5655532005663209770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A052905 (n + 2)).toNat

end

end A202824.P5655532005663209770

/-! ## A202824.P2717682624171836447

`A294042(eq[4, A025581(n)])`
-/

namespace A202824.P2717682624171836447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202824.P2717682624171836447

/-! ## A202824.P1410264935640142229

`A294042(Δ[A055831(n+4)])`
-/

namespace A202824.P1410264935640142229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (f1 (n + 1) - f1 n).toNat

end

end A202824.P1410264935640142229

/-! ## A202824.P15116436313111676600

`record[A294042(A055999(n)+1)]`
-/

namespace A202824.P15116436313111676600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202824.P15116436313111676600

/-! ## A202824.P6393740080223277436

`A294042(A055999(n+2)+1)`
-/

namespace A202824.P6393740080223277436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A055999 (n + 2) + 1).toNat

end

end A202824.P6393740080223277436

/-! ## A202824.P13697312087087598278

`A294042(A000217(n+5)-5)`
-/

namespace A202824.P13697312087087598278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A000217 (n + 5) - 5).toNat

end

end A202824.P13697312087087598278

/-! ## A202824.P8348832061783841840

`record[A294042(abs(A046691(n))-1)]`
-/

namespace A202824.P8348832061783841840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202824.P8348832061783841840

/-! ## A202824.P2384946290723530069

`record[A294042(A046691(n+1)-1)]`
-/

namespace A202824.P2384946290723530069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202824.P2384946290723530069

/-!
# A202825: Expansion of e.g.f.: exp( (1+x)^5 - 1 ).

The programs for A202825, there is no canonical definition to state claims against.
-/

/-! ## A202825.P13281709026237774489

`record[A294042(∑[n+4])]`
-/

namespace A202825.P13281709026237774489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202825.P13281709026237774489

/-! ## A202825.P9528394290751553401

`A294042(A055999(n+3))`
-/

namespace A202825.P9528394290751553401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A055999 (n + 3)).toNat

end

end A202825.P9528394290751553401

/-! ## A202825.P93246460203865626

`A294042(eq[5, A025581(n)])`
-/

namespace A202825.P93246460203865626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202825.P93246460203865626

/-! ## A202825.P4118406885789250708

`A294042(eq[6, A193739(n)])`
-/

namespace A202825.P4118406885789250708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202825.P4118406885789250708

/-! ## A202825.P10246346265432480947

`A294042(eq[32, A130321(n)])`
-/

namespace A202825.P10246346265432480947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202825.P10246346265432480947

/-! ## A202825.P3821156587639254702

`A294042(eq[6, A004736(n+1)])`
-/

namespace A202825.P3821156587639254702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202825.P3821156587639254702

/-! ## A202825.P17753265604340658492

`A294042(Δ[A055831(n+5)]-1)`
-/

namespace A202825.P17753265604340658492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (f1 (n + 1) - f1 n - 1).toNat

end

end A202825.P17753265604340658492

/-! ## A202825.P5486431269413920318

`A294042(Δ[A056000(n)+A055831(n+4)])`
-/

namespace A202825.P5486431269413920318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (f1 (n + 1) - f1 n).toNat

end

end A202825.P5486431269413920318

/-!
# A202826: E.g.f.: exp( 1/(1-x)^3 - 1 ).

The programs for A202826, there is no canonical definition to state claims against.
-/

/-! ## A202826.P10273742373698291785

`A294046(∑[n+3]+n+3)`
-/

namespace A202826.P10273742373698291785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A202826.P10273742373698291785

/-! ## A202826.P17851803214236723210

`record[A294046(abs(A046691(n)))]`
-/

namespace A202826.P17851803214236723210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202826.P17851803214236723210

/-! ## A202826.P9460428210844147347

`record[A294046(A027379(n)-1)]`
-/

namespace A202826.P9460428210844147347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202826.P9460428210844147347

/-! ## A202826.P5106907596988608681

`or(1, A294046(A046691(n+2)))`
-/

namespace A202826.P5106907596988608681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294046 (A046691 (n + 2)).toNat)

end

end A202826.P5106907596988608681

/-! ## A202826.P4142865592777152611

`record[A294046(A046691(n)%A320696(n))]`
-/

namespace A202826.P4142865592777152611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (Int.tmod (A046691 n) (A320696 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202826.P4142865592777152611

/-! ## A202826.P10207446691567842219

`A294046(A046691(n+2))/A141044(n+2)`
-/

namespace A202826.P10207446691567842219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294046 (A046691 (n + 2)).toNat : ℚ) / (A141044 (n + 2) : ℚ)

end

end A202826.P10207446691567842219

/-!
# A202827: Expansion of e.g.f.: exp(4*x/(1-x)) / sqrt(1-x^2).

The programs for A202827, the canonical program `A202827.P12679412167005264867` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202827 has offset 0).

The definition of A202827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202827.P12679412167005264867

`A005425(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202827

/-- `A005425(n)²` -/
def P12679412167005264867.Spec : Prop :=
  ∀ n, P12679412167005264867.a n = A202827 n

theorem P12679412167005264867.correct : P12679412167005264867.Spec := by
  intro n
  simp only [A202827]

end A202827

/-! ## A202827.P17507258053762783586

`∏[(n-1)/a(n-1)+2]²` with `a(0)=1`
-/

namespace A202827.P17507258053762783586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A202827.P17507258053762783586

namespace A202827

/-- `∏[(n-1)/a(n-1)+2]²` -/
def P17507258053762783586.Spec : Prop :=
  ∀ n, P17507258053762783586.a n = (A202827 n : ℚ)

end A202827

/-! ## A202827.P2269806586035519188

`∏[(n-1)/a(n-1)+2]*∏[(n-1)/a(n-1)+2]` with `a(0)=1`
-/

namespace A202827.P2269806586035519188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ((n : ℤ) - 1 : ℚ) / f2 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A202827.P2269806586035519188

namespace A202827

/-- `∏[(n-1)/a(n-1)+2]*∏[(n-1)/a(n-1)+2]` -/
def P2269806586035519188.Spec : Prop :=
  ∀ n, P2269806586035519188.a n = (A202827 n : ℚ)

end A202827

/-! ## A202827.P10793442402080286437

`∑[A238803(n)]²`
-/

namespace A202827.P10793442402080286437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A202827.P10793442402080286437

namespace A202827

/-- `∑[A238803(n)]²` -/
def P10793442402080286437.Spec : Prop :=
  ∀ n, P10793442402080286437.a n = A202827 n

end A202827

/-! ## A202827.P9063030436750410925

`(A027412(n+1)/2)²`
-/

namespace A202827.P9063030436750410925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027412 (n + 1) : ℚ) / 2) ^ 2

end

end A202827.P9063030436750410925

namespace A202827

/-- `(A027412(n+1)/2)²` -/
def P9063030436750410925.Spec : Prop :=
  ∀ n, P9063030436750410925.a n = (A202827 n : ℚ)

end A202827

/-! ## A202827.P12361830591744631166

`(Δ[A238803(n+1)]/(n+2))²`
-/

namespace A202827.P12361830591744631166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n : ℚ) / (n + 2 : ℚ)) ^ 2

end

end A202827.P12361830591744631166

namespace A202827

/-- `(Δ[A238803(n+1)]/(n+2))²` -/
def P12361830591744631166.Spec : Prop :=
  ∀ n, P12361830591744631166.a n = (A202827 n : ℚ)

end A202827

/-! ## A202827.P15519236821504665185

`(A294119(n)/A000079(n))²`
-/

namespace A202827.P15519236821504665185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A294119 n : ℚ) / (A000079 n : ℚ)) ^ 2

end

end A202827.P15519236821504665185

namespace A202827

/-- `(A294119(n)/A000079(n))²` -/
def P15519236821504665185.Spec : Prop :=
  ∀ n, P15519236821504665185.a n = (A202827 n : ℚ)

end A202827

/-! ## A202827.P15742261361822758150

`∑[A238803(n)]*A005425(n)`
-/

namespace A202827.P15742261361822758150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005425 n

end

end A202827.P15742261361822758150

namespace A202827

/-- `∑[A238803(n)]*A005425(n)` -/
def P15742261361822758150.Spec : Prop :=
  ∀ n, P15742261361822758150.a n = A202827 n

end A202827

/-! ## A202827.P12575551018509333126

`(A294119(n)/Δ[A000225(n)])²`
-/

namespace A202827.P12575551018509333126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A294119 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)) ^ 2

end

end A202827.P12575551018509333126

namespace A202827

/-- `(A294119(n)/Δ[A000225(n)])²` -/
def P12575551018509333126.Spec : Prop :=
  ∀ n, P12575551018509333126.a n = (A202827 n : ℚ)

end A202827

/-! ## A202827.P6729382234717967410

`A005425(n)^A020639(A001316(n))`
-/

namespace A202827.P6729382234717967410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005425 n : ℚ) ^ (A020639 (A001316 n).toNat : ℤ)

end

end A202827.P6729382234717967410

namespace A202827

/-- `A005425(n)^A020639(A001316(n))` -/
def P6729382234717967410.Spec : Prop :=
  ∀ n, P6729382234717967410.a n = (A202827 n : ℚ)

end A202827

/-!
# A202828: Expansion of e.g.f.: exp(4*x/(1-2*x)) / sqrt(1-4*x^2).

The programs for A202828, the canonical program `A202828.P9482979765000296979` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202828 has offset 0).

The definition of A202828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202828.P9482979765000296979

`A000898(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202828

/-- `A000898(n)²` -/
def P9482979765000296979.Spec : Prop :=
  ∀ n, P9482979765000296979.a n = A202828 n

theorem P9482979765000296979.correct : P9482979765000296979.Spec := by
  intro n
  simp only [A202828]

end A202828

/-! ## A202828.P9350225165085209952

`2^n*A277378(n)`
-/

namespace A202828.P9350225165085209952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A277378 n

end

end A202828.P9350225165085209952

namespace A202828

/-- `2^n*A277378(n)` -/
def P9350225165085209952.Spec : Prop :=
  ∀ n, P9350225165085209952.a n = A202828 n

end A202828

/-! ## A202828.P18395889513015057958

`A123071(2*n)`
-/

namespace A202828.P18395889513015057958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123071 (2 * n)

end

end A202828.P18395889513015057958

namespace A202828

/-- `A123071(2*n)` -/
def P18395889513015057958.Spec : Prop :=
  ∀ n, P18395889513015057958.a n = A202828 n

end A202828

/-! ## A202828.P8018225585388531420

`A135401(2*n)²`
-/

namespace A202828.P8018225585388531420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (2 * n) ^ 2

end

end A202828.P8018225585388531420

namespace A202828

/-- `A135401(2*n)²` -/
def P8018225585388531420.Spec : Prop :=
  ∀ n, P8018225585388531420.a n = A202828 n

end A202828

/-! ## A202828.P852688036603360382

`A294042(∑[n+3])²`
-/

namespace A202828.P852688036603360382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A202828.P852688036603360382

namespace A202828

/-- `A294042(∑[n+3])²` -/
def P852688036603360382.Spec : Prop :=
  ∀ n, P852688036603360382.a n = A202828 n

end A202828

/-! ## A202828.P7469167196491153769

`record[A135401(A028242(n))²]`
-/

namespace A202828.P7469167196491153769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (A028242 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202828.P7469167196491153769

namespace A202828

/-- `record[A135401(A028242(n))²]` -/
def P7469167196491153769.Spec : Prop :=
  ∀ n, P7469167196491153769.a n = A202828 n

end A202828

/-! ## A202828.P8619087696690497569

`record[A135401(A141310(n))²]`
-/

namespace A202828.P8619087696690497569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (A141310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202828.P8619087696690497569

namespace A202828

/-- `record[A135401(A141310(n))²]` -/
def P8619087696690497569.Spec : Prop :=
  ∀ n, P8619087696690497569.a n = A202828 n

end A202828

/-! ## A202828.P4052968729228807295

`(A060546(n)*A242818(n))²`
-/

namespace A202828.P4052968729228807295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060546 n * A242818 n) ^ 2

end

end A202828.P4052968729228807295

namespace A202828

/-- `(A060546(n)*A242818(n))²` -/
def P4052968729228807295.Spec : Prop :=
  ∀ n, P4052968729228807295.a n = A202828 n

end A202828

/-! ## A202828.P12086879808808836915

`lcm(A000902(n), A060546(n))²`
-/

namespace A202828.P12086879808808836915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000902 n) (A060546 n) ^ 2

end

end A202828.P12086879808808836915

namespace A202828

/-- `lcm(A000902(n), A060546(n))²` -/
def P12086879808808836915.Spec : Prop :=
  ∀ n, (P12086879808808836915.a n : ℤ) = A202828 n

end A202828

/-! ## A202828.P9178096160213563066

`A000898(n)*A135401(2*n)`
-/

namespace A202828.P9178096160213563066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000898 n * A135401 (2 * n)

end

end A202828.P9178096160213563066

namespace A202828

/-- `A000898(n)*A135401(2*n)` -/
def P9178096160213563066.Spec : Prop :=
  ∀ n, P9178096160213563066.a n = A202828 n

end A202828

/-!
# A202829: Expansion of e.g.f.: exp(4*x/(1-3*x)) / sqrt(1-9*x^2).

The programs for A202829, the canonical program `A202829.P12629825750650194539` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202829 has offset 0).

The definition of A202829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202829.P12629825750650194539

`A202830(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202829

/-- `A202830(n)²` -/
def P12629825750650194539.Spec : Prop :=
  ∀ n, P12629825750650194539.a n = A202829 n

theorem P12629825750650194539.correct : P12629825750650194539.Spec := by
  intro n
  simp only [A202829]

end A202829

/-! ## A202829.P2083356637913883496

`A202830(n)^A020639(A000123(n))`
-/

namespace A202829.P2083356637913883496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202830 n : ℚ) ^ (A020639 (A000123 n).toNat : ℤ)

end

end A202829.P2083356637913883496

namespace A202829

/-- `A202830(n)^A020639(A000123(n))` -/
def P2083356637913883496.Spec : Prop :=
  ∀ n, P2083356637913883496.a n = (A202829 n : ℚ)

end A202829

/-! ## A202829.P2952834963723230616

`A202830(n)^A020639(A001316(n))`
-/

namespace A202829.P2952834963723230616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202830 n : ℚ) ^ (A020639 (A001316 n).toNat : ℤ)

end

end A202829.P2952834963723230616

namespace A202829

/-- `A202830(n)^A020639(A001316(n))` -/
def P2952834963723230616.Spec : Prop :=
  ∀ n, P2952834963723230616.a n = (A202829 n : ℚ)

end A202829

/-! ## A202829.P12718071471258508529

`A202830(n)^A020639(A004277(n))`
-/

namespace A202829.P12718071471258508529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202830 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A202829.P12718071471258508529

namespace A202829

/-- `A202830(n)^A020639(A004277(n))` -/
def P12718071471258508529.Spec : Prop :=
  ∀ n, P12718071471258508529.a n = (A202829 n : ℚ)

end A202829

/-! ## A202829.P747945913059298174

`A202830(n)^A020639(A005901(n))`
-/

namespace A202829.P747945913059298174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202830 n : ℚ) ^ (A020639 (A005901 n).toNat : ℤ)

end

end A202829.P747945913059298174

namespace A202829

/-- `A202830(n)^A020639(A005901(n))` -/
def P747945913059298174.Spec : Prop :=
  ∀ n, P747945913059298174.a n = (A202829 n : ℚ)

end A202829

/-! ## A202829.P13563879792041432514

`A202830(n)^A020639(A008458(n))`
-/

namespace A202829.P13563879792041432514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202830 n : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A202829.P13563879792041432514

namespace A202829

/-- `A202830(n)^A020639(A008458(n))` -/
def P13563879792041432514.Spec : Prop :=
  ∀ n, P13563879792041432514.a n = (A202829 n : ℚ)

end A202829

/-! ## A202829.P13851517921099974321

`A202830(n)^A020639(A016825(n))`
-/

namespace A202829.P13851517921099974321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202830 n : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A202829.P13851517921099974321

namespace A202829

/-- `A202830(n)^A020639(A016825(n))` -/
def P13851517921099974321.Spec : Prop :=
  ∀ n, P13851517921099974321.a n = (A202829 n : ℚ)

end A202829

/-! ## A202829.P1380139767914128644

`A202830(n)^A000005(A008578(n+1))`
-/

namespace A202829.P1380139767914128644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202830 n : ℚ) ^ (A000005 (A008578 (n + 1)).toNat : ℤ)

end

end A202829.P1380139767914128644

namespace A202829

/-- `A202830(n)^A000005(A008578(n+1))` -/
def P1380139767914128644.Spec : Prop :=
  ∀ n, P1380139767914128644.a n = (A202829 n : ℚ)

end A202829

/-! ## A202829.P4279003217225005977

`A202830(n)^A001222(A100484(n+1))`
-/

namespace A202829.P4279003217225005977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202830 n : ℚ) ^ (A001222 (A100484 (n + 1)).toNat : ℤ)

end

end A202829.P4279003217225005977

namespace A202829

/-- `A202830(n)^A001222(A100484(n+1))` -/
def P4279003217225005977.Spec : Prop :=
  ∀ n, P4279003217225005977.a n = (A202829 n : ℚ)

end A202829

/-!
# A202830: Expansion of e.g.f. exp(2*x + 3*x^2/2).

The programs for A202830, the canonical program `A202830.P10552220048264970361` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202830 has offset 0).

The definition of A202830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202830.P10552220048264970361

`2*a(n-1)+3*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202830

/-- `2*a(n-1)+3*(n-1)*a(n-2)` -/
def P10552220048264970361.Spec : Prop :=
  ∀ n, P10552220048264970361.a n = A202830 n

theorem P10552220048264970361.correct : P10552220048264970361.Spec := by
  intro n
  simp only [A202830]

end A202830

/-! ## A202830.P14426027699672475570

`sqrt(A202829(n))`
-/

namespace A202830.P14426027699672475570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202829 n : ℝ)

end

end A202830.P14426027699672475570

namespace A202830

/-- `sqrt(A202829(n))` -/
def P14426027699672475570.Spec : Prop :=
  ∀ n, P14426027699672475570.a n = (A202830 n : ℝ)

end A202830

/-! ## A202830.P5577898011102933824

`root(A202829(n), 2)*and(1, A107392(n))`
-/

namespace A202830.P5577898011102933824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202829 n : ℝ) ^ (1 / (2 : ℝ)) * (Int.land 1 (A107392 n) : ℝ)

end

end A202830.P5577898011102933824

namespace A202830

/-- `root(A202829(n), 2)*and(1, A107392(n))` -/
def P5577898011102933824.Spec : Prop :=
  ∀ n, P5577898011102933824.a n = (A202830 n : ℝ)

end A202830

/-! ## A202830.P10300764334631480064

`root(A202829(n), 2)%A000041((n+2)²)`
-/

namespace A202830.P10300764334631480064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A202829 n : ℝ) ^ (1 / (2 : ℝ)))) (A000041 ((n + 2) ^ 2))

end

end A202830.P10300764334631480064

namespace A202830

/-- `root(A202829(n), 2)%A000041((n+2)²)` -/
def P10300764334631480064.Spec : Prop :=
  ∀ n, P10300764334631480064.a n = A202830 n

end A202830

/-! ## A202830.P3627638950903848230

`root(A202829(n), 2)^A000041(C(2, n+2))`
-/

namespace A202830.P3627638950903848230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A202829 n : ℝ) ^ (1 / (2 : ℝ))) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A202830.P3627638950903848230

namespace A202830

/-- `root(A202829(n), 2)^A000041(C(2, n+2))` -/
def P3627638950903848230.Spec : Prop :=
  ∀ n, P3627638950903848230.a n = (A202830 n : ℝ)

end A202830

/-! ## A202830.P2645033481431006567

`root(A202829(n), A001316(A001316(n)))`
-/

namespace A202830.P2645033481431006567
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202829 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A202830.P2645033481431006567

namespace A202830

/-- `root(A202829(n), A001316(A001316(n)))` -/
def P2645033481431006567.Spec : Prop :=
  ∀ n, P2645033481431006567.a n = (A202830 n : ℝ)

end A202830

/-!
# A202831: Expansion of e.g.f.: exp(4*x/(1-5*x)) / sqrt(1-25*x^2).

The programs for A202831, the canonical program `A202831.P1022623184322391386` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202831 has offset 0).

The definition of A202831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202831.P1022623184322391386

`A202832(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202831

/-- `A202832(n)²` -/
def P1022623184322391386.Spec : Prop :=
  ∀ n, P1022623184322391386.a n = A202831 n

theorem P1022623184322391386.correct : P1022623184322391386.Spec := by
  intro n
  simp only [A202831]

end A202831

/-! ## A202831.P228842356208022296

`A202832(n)^A020639(A000123(n))`
-/

namespace A202831.P228842356208022296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202832 n : ℚ) ^ (A020639 (A000123 n).toNat : ℤ)

end

end A202831.P228842356208022296

namespace A202831

/-- `A202832(n)^A020639(A000123(n))` -/
def P228842356208022296.Spec : Prop :=
  ∀ n, P228842356208022296.a n = (A202831 n : ℚ)

end A202831

/-! ## A202831.P12945704470613292822

`A202832(n)^A020639(A001316(n))`
-/

namespace A202831.P12945704470613292822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202832 n : ℚ) ^ (A020639 (A001316 n).toNat : ℤ)

end

end A202831.P12945704470613292822

namespace A202831

/-- `A202832(n)^A020639(A001316(n))` -/
def P12945704470613292822.Spec : Prop :=
  ∀ n, P12945704470613292822.a n = (A202831 n : ℚ)

end A202831

/-! ## A202831.P13378719279875214638

`A202832(n)^A020639(A004277(n))`
-/

namespace A202831.P13378719279875214638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202832 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A202831.P13378719279875214638

namespace A202831

/-- `A202832(n)^A020639(A004277(n))` -/
def P13378719279875214638.Spec : Prop :=
  ∀ n, P13378719279875214638.a n = (A202831 n : ℚ)

end A202831

/-! ## A202831.P17261466814027639881

`A202832(n)^A020639(A005901(n))`
-/

namespace A202831.P17261466814027639881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202832 n : ℚ) ^ (A020639 (A005901 n).toNat : ℤ)

end

end A202831.P17261466814027639881

namespace A202831

/-- `A202832(n)^A020639(A005901(n))` -/
def P17261466814027639881.Spec : Prop :=
  ∀ n, P17261466814027639881.a n = (A202831 n : ℚ)

end A202831

/-!
# A202832: E.g.f: exp(2*x + 5*x^2/2).

The programs for A202832, the canonical program `A202832.P17950482466467297939` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202832 has offset 0).

The definition of A202832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202832.P17950482466467297939

`2*a(n-1)+5*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202832

/-- `2*a(n-1)+5*(n-1)*a(n-2)` -/
def P17950482466467297939.Spec : Prop :=
  ∀ n, P17950482466467297939.a n = A202832 n

theorem P17950482466467297939.correct : P17950482466467297939.Spec := by
  intro n
  simp only [A202832]

end A202832

/-! ## A202832.P4917556266600482430

`∏[5*(n-1)/a(n-1)+2]` with `a(0)=1, a(1)=2`
-/

namespace A202832.P4917556266600482430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 * (((n : ℤ) - 1 : ℚ) / f1 (n - 1)) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202832.P4917556266600482430

namespace A202832

/-- `∏[5*(n-1)/a(n-1)+2]` -/
def P4917556266600482430.Spec : Prop :=
  ∀ n, P4917556266600482430.a n = (A202832 n : ℚ)

end A202832

/-! ## A202832.P5198470748853808542

`sqrt(A202831(n))`
-/

namespace A202832.P5198470748853808542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202831 n : ℝ)

end

end A202832.P5198470748853808542

namespace A202832

/-- `sqrt(A202831(n))` -/
def P5198470748853808542.Spec : Prop :=
  ∀ n, P5198470748853808542.a n = (A202832 n : ℝ)

end A202832

/-! ## A202832.P11759456949686252169

`root(A202831(n), A014710(C(2, n+2)))`
-/

namespace A202832.P11759456949686252169
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202831 n : ℝ) ^ (1 / (A014710 (Nat.choose 2 (n + 2)) : ℝ))

end

end A202832.P11759456949686252169

namespace A202832

/-- `root(A202831(n), A014710(C(2, n+2)))` -/
def P11759456949686252169.Spec : Prop :=
  ∀ n, P11759456949686252169.a n = (A202832 n : ℝ)

end A202832

/-!
# A202833: Expansion of e.g.f.: exp(9*x/(1-x)) / sqrt(1-x^2).

The programs for A202833, the canonical program `A202833.P8485159581819150188` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202833 has offset 0).

The definition of A202833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202833.P8485159581819150188

`A202834(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202833

/-- `A202834(n)²` -/
def P8485159581819150188.Spec : Prop :=
  ∀ n, P8485159581819150188.a n = A202833 n

theorem P8485159581819150188.correct : P8485159581819150188.Spec := by
  intro n
  simp only [A202833]

end A202833

/-! ## A202833.P3491461201085314740

`∏[(n-1)/a(n-1)+3]²` with `a(0)=1`
-/

namespace A202833.P3491461201085314740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A202833.P3491461201085314740

namespace A202833

/-- `∏[(n-1)/a(n-1)+3]²` -/
def P3491461201085314740.Spec : Prop :=
  ∀ n, P3491461201085314740.a n = (A202833 n : ℚ)

end A202833

/-! ## A202833.P6924433129484245636

`A202834(n)^A000034(A005408(n))`
-/

namespace A202833.P6924433129484245636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202834 n : ℚ) ^ (A000034 (A005408 n).toNat : ℤ)

end

end A202833.P6924433129484245636

namespace A202833

/-- `A202834(n)^A000034(A005408(n))` -/
def P6924433129484245636.Spec : Prop :=
  ∀ n, P6924433129484245636.a n = (A202833 n : ℚ)

end A202833

/-! ## A202833.P4258262742303586918

`A202834(n)^A000034(A016921(n))`
-/

namespace A202833.P4258262742303586918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202834 n : ℚ) ^ (A000034 (A016921 n).toNat : ℤ)

end

end A202833.P4258262742303586918

namespace A202833

/-- `A202834(n)^A000034(A016921(n))` -/
def P4258262742303586918.Spec : Prop :=
  ∀ n, P4258262742303586918.a n = (A202833 n : ℚ)

end A202833

/-! ## A202833.P2677531238571584302

`A202834(n)^A020639(A008574(n))`
-/

namespace A202833.P2677531238571584302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202834 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A202833.P2677531238571584302

namespace A202833

/-- `A202834(n)^A020639(A008574(n))` -/
def P2677531238571584302.Spec : Prop :=
  ∀ n, P2677531238571584302.a n = (A202833 n : ℚ)

end A202833

/-! ## A202833.P248729730113838577

`A202834(n)^A020639(A060626(n))`
-/

namespace A202833.P248729730113838577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202834 n : ℚ) ^ (A020639 (A060626 n).toNat : ℤ)

end

end A202833.P248729730113838577

namespace A202833

/-- `A202834(n)^A020639(A060626(n))` -/
def P248729730113838577.Spec : Prop :=
  ∀ n, P248729730113838577.a n = (A202833 n : ℚ)

end A202833

/-! ## A202833.P13290909912065401797

`A202834(n)^A020639(A103517(n))`
-/

namespace A202833.P13290909912065401797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202834 n : ℚ) ^ (A020639 (A103517 n).toNat : ℤ)

end

end A202833.P13290909912065401797

namespace A202833

/-- `A202834(n)^A020639(A103517(n))` -/
def P13290909912065401797.Spec : Prop :=
  ∀ n, P13290909912065401797.a n = (A202833 n : ℚ)

end A202833

/-! ## A202833.P12339421328062499222

`A202834(n)^A014963(A137688(n))`
-/

namespace A202833.P12339421328062499222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202834 n : ℚ) ^ (A014963 (A137688 n).toNat : ℤ)

end

end A202833.P12339421328062499222

namespace A202833

/-- `A202834(n)^A014963(A137688(n))` -/
def P12339421328062499222.Spec : Prop :=
  ∀ n, P12339421328062499222.a n = (A202833 n : ℚ)

end A202833

/-! ## A202833.P12466706676077876664

`A202834(n)^A000005(A155766(n))`
-/

namespace A202833.P12466706676077876664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202834 n : ℚ) ^ (A000005 (A155766 n).toNat : ℤ)

end

end A202833.P12466706676077876664

namespace A202833

/-- `A202834(n)^A000005(A155766(n))` -/
def P12466706676077876664.Spec : Prop :=
  ∀ n, P12466706676077876664.a n = (A202833 n : ℚ)

end A202833

/-!
# A202834: E.g.f.: exp(3*x + x^2/2).

The programs for A202834, the canonical program `A202834.P1106173587577263497` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202834 has offset 0).

The definition of A202834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202834.P1106173587577263497

`3*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202834

/-- `3*a(n-1)+(n-1)*a(n-2)` -/
def P1106173587577263497.Spec : Prop :=
  ∀ n, P1106173587577263497.a n = A202834 n

theorem P1106173587577263497.correct : P1106173587577263497.Spec := by
  intro n
  simp only [A202834]

end A202834

/-! ## A202834.P9615282815950237092

`∏[(n-1)/a(n-1)+3]` with `a(0)=1`
-/

namespace A202834.P9615282815950237092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202834.P9615282815950237092

namespace A202834

/-- `∏[(n-1)/a(n-1)+3]` -/
def P9615282815950237092.Spec : Prop :=
  ∀ n, P9615282815950237092.a n = (A202834 n : ℚ)

end A202834

/-! ## A202834.P14971126620172423027

`∏[3-(1-n)/a(n-1)]` with `a(0)=1`
-/

namespace A202834.P14971126620172423027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - (1 - (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202834.P14971126620172423027

namespace A202834

/-- `∏[3-(1-n)/a(n-1)]` -/
def P14971126620172423027.Spec : Prop :=
  ∀ n, P14971126620172423027.a n = (A202834 n : ℚ)

end A202834

/-! ## A202834.P3853796810635951385

`3*a(n-1)-(a(n-2)-n*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A202834.P3853796810635951385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A202834.P3853796810635951385

namespace A202834

/-- `3*a(n-1)-(a(n-2)-n*a(n-2))` -/
def P3853796810635951385.Spec : Prop :=
  ∀ n, P3853796810635951385.a n = A202834 n

end A202834

/-! ## A202834.P17723603683422057384

`sqrt(A202833(n))`
-/

namespace A202834.P17723603683422057384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202833 n : ℝ)

end

end A202834.P17723603683422057384

namespace A202834

/-- `sqrt(A202833(n))` -/
def P17723603683422057384.Spec : Prop :=
  ∀ n, P17723603683422057384.a n = (A202834 n : ℝ)

end A202834

/-! ## A202834.P3439140491873654265

`root(A202833(n), ratio[A011782(n)])`
-/

namespace A202834.P3439140491873654265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202833 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A202834.P3439140491873654265

namespace A202834

/-- `root(A202833(n), ratio[A011782(n)])` -/
def P3439140491873654265.Spec : Prop :=
  ∀ n, P3439140491873654265.a n = (A202834 n : ℝ)

end A202834

/-! ## A202834.P4969613914134945925

`root(A202833(n), A040001(2*n))`
-/

namespace A202834.P4969613914134945925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202833 n : ℝ) ^ (1 / (A040001 (2 * n) : ℝ))

end

end A202834.P4969613914134945925

namespace A202834

/-- `root(A202833(n), A040001(2*n))` -/
def P4969613914134945925.Spec : Prop :=
  ∀ n, P4969613914134945925.a n = (A202834 n : ℝ)

end A202834

/-! ## A202834.P8841071830043729270

`root(A202833(n), A001316(A001316(n)))`
-/

namespace A202834.P8841071830043729270
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202833 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A202834.P8841071830043729270

namespace A202834

/-- `root(A202833(n), A001316(A001316(n)))` -/
def P8841071830043729270.Spec : Prop :=
  ∀ n, P8841071830043729270.a n = (A202834 n : ℝ)

end A202834

/-!
# A202835: Expansion of e.g.f.: exp(9*x/(1-2*x)) / sqrt(1-4*x^2).

The programs for A202835, the canonical program `A202835.P8532111327738719648` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202835 has offset 0).

The definition of A202835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202835.P8532111327738719648

`A083886(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202835

/-- `A083886(n)²` -/
def P8532111327738719648.Spec : Prop :=
  ∀ n, P8532111327738719648.a n = A202835 n

theorem P8532111327738719648.correct : P8532111327738719648.Spec := by
  intro n
  simp only [A202835]

end A202835

/-! ## A202835.P13326354339675931503

`A083886(n)^ratio[A000079(n)]`
-/

namespace A202835.P13326354339675931503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083886 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A202835.P13326354339675931503

namespace A202835

/-- `A083886(n)^ratio[A000079(n)]` -/
def P13326354339675931503.Spec : Prop :=
  ∀ n, P13326354339675931503.a n = (A202835 n : ℝ)

end A202835

/-! ## A202835.P1584353557395297145

`A083886(n)^(2%A202827(n))`
-/

namespace A202835.P1584353557395297145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083886 n : ℚ) ^ (Int.tmod 2 (A202827 n) : ℤ)

end

end A202835.P1584353557395297145

namespace A202835

/-- `A083886(n)^(2%A202827(n))` -/
def P1584353557395297145.Spec : Prop :=
  ∀ n, P1584353557395297145.a n = (A202835 n : ℚ)

end A202835

/-! ## A202835.P17490419608134492455

`A083886(n)^A020639(2*(n+1))`
-/

namespace A202835.P17490419608134492455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083886 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A202835.P17490419608134492455

namespace A202835

/-- `A083886(n)^A020639(2*(n+1))` -/
def P17490419608134492455.Spec : Prop :=
  ∀ n, P17490419608134492455.a n = (A202835 n : ℚ)

end A202835

/-! ## A202835.P2462210981196327691

`A083886(n)^A141310(A004273(n))`
-/

namespace A202835.P2462210981196327691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083886 n : ℚ) ^ (A141310 (A004273 n).toNat : ℤ)

end

end A202835.P2462210981196327691

namespace A202835

/-- `A083886(n)^A141310(A004273(n))` -/
def P2462210981196327691.Spec : Prop :=
  ∀ n, P2462210981196327691.a n = (A202835 n : ℚ)

end A202835

/-! ## A202835.P8471950794511145774

`A083886(n)^A141310(A005408(n))`
-/

namespace A202835.P8471950794511145774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083886 n : ℚ) ^ (A141310 (A005408 n).toNat : ℤ)

end

end A202835.P8471950794511145774

namespace A202835

/-- `A083886(n)^A141310(A005408(n))` -/
def P8471950794511145774.Spec : Prop :=
  ∀ n, P8471950794511145774.a n = (A202835 n : ℚ)

end A202835

/-! ## A202835.P4953721231722794628

`A083886(n)^A000005(A003627(n+1))`
-/

namespace A202835.P4953721231722794628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083886 n : ℚ) ^ (A000005 (A003627 (n + 1)).toNat : ℤ)

end

end A202835.P4953721231722794628

namespace A202835

/-- `A083886(n)^A000005(A003627(n+1))` -/
def P4953721231722794628.Spec : Prop :=
  ∀ n, P4953721231722794628.a n = (A202835 n : ℚ)

end A202835

/-! ## A202835.P10189606930124972804

`A083886(n)^A001222(A039832(n+1))`
-/

namespace A202835.P10189606930124972804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083886 n : ℚ) ^ (A001222 (A039832 (n + 1)).toNat : ℤ)

end

end A202835.P10189606930124972804

namespace A202835

/-- `A083886(n)^A001222(A039832(n+1))` -/
def P10189606930124972804.Spec : Prop :=
  ∀ n, P10189606930124972804.a n = (A202835 n : ℚ)

end A202835

/-!
# A202836: Expansion of e.g.f.: exp(9*x/(1-4*x)) / sqrt(1-16*x^2).

The programs for A202836, the canonical program `A202836.P5610617411441892324` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202836 has offset 0).

The definition of A202836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202836.P5610617411441892324

`A202837(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202836

/-- `A202837(n)²` -/
def P5610617411441892324.Spec : Prop :=
  ∀ n, P5610617411441892324.a n = A202836 n

theorem P5610617411441892324.correct : P5610617411441892324.Spec := by
  intro n
  simp only [A202836]

end A202836

/-! ## A202836.P14209069644882979031

`A202837(n)^ratio[A000079(n)]`
-/

namespace A202836.P14209069644882979031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A202836.P14209069644882979031

namespace A202836

/-- `A202837(n)^ratio[A000079(n)]` -/
def P14209069644882979031.Spec : Prop :=
  ∀ n, P14209069644882979031.a n = (A202836 n : ℝ)

end A202836

/-! ## A202836.P2640818419134093468

`A202837(n)^(2%A083886(n))`
-/

namespace A202836.P2640818419134093468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℚ) ^ (Int.tmod 2 (A083886 n) : ℤ)

end

end A202836.P2640818419134093468

namespace A202836

/-- `A202837(n)^(2%A083886(n))` -/
def P2640818419134093468.Spec : Prop :=
  ∀ n, P2640818419134093468.a n = (A202836 n : ℚ)

end A202836

/-! ## A202836.P2362301760622547720

`A202837(n)^A020639(A000123(n))`
-/

namespace A202836.P2362301760622547720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℚ) ^ (A020639 (A000123 n).toNat : ℤ)

end

end A202836.P2362301760622547720

namespace A202836

/-- `A202837(n)^A020639(A000123(n))` -/
def P2362301760622547720.Spec : Prop :=
  ∀ n, P2362301760622547720.a n = (A202836 n : ℚ)

end A202836

/-! ## A202836.P11394749586766299029

`A202837(n)^A020639(A001316(n))`
-/

namespace A202836.P11394749586766299029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℚ) ^ (A020639 (A001316 n).toNat : ℤ)

end

end A202836.P11394749586766299029

namespace A202836

/-- `A202837(n)^A020639(A001316(n))` -/
def P11394749586766299029.Spec : Prop :=
  ∀ n, P11394749586766299029.a n = (A202836 n : ℚ)

end A202836

/-! ## A202836.P11338244381520324289

`A202837(n)^A020639(A004277(n))`
-/

namespace A202836.P11338244381520324289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A202836.P11338244381520324289

namespace A202836

/-- `A202837(n)^A020639(A004277(n))` -/
def P11338244381520324289.Spec : Prop :=
  ∀ n, P11338244381520324289.a n = (A202836 n : ℚ)

end A202836

/-! ## A202836.P1303776256806978566

`A202837(n)^A020639(A005901(n))`
-/

namespace A202836.P1303776256806978566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℚ) ^ (A020639 (A005901 n).toNat : ℤ)

end

end A202836.P1303776256806978566

namespace A202836

/-- `A202837(n)^A020639(A005901(n))` -/
def P1303776256806978566.Spec : Prop :=
  ∀ n, P1303776256806978566.a n = (A202836 n : ℚ)

end A202836

/-! ## A202836.P8532812056255638643

`A202837(n)^A020639(A008458(n))`
-/

namespace A202836.P8532812056255638643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A202836.P8532812056255638643

namespace A202836

/-- `A202837(n)^A020639(A008458(n))` -/
def P8532812056255638643.Spec : Prop :=
  ∀ n, P8532812056255638643.a n = (A202836 n : ℚ)

end A202836

/-! ## A202836.P1451202977437781468

`A202837(n)^A020639(A008574(n))`
-/

namespace A202836.P1451202977437781468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A202836.P1451202977437781468

namespace A202836

/-- `A202837(n)^A020639(A008574(n))` -/
def P1451202977437781468.Spec : Prop :=
  ∀ n, P1451202977437781468.a n = (A202836 n : ℚ)

end A202836

/-! ## A202836.P2487075014710765483

`A202837(n)^A000005(A003627(n+1))`
-/

namespace A202836.P2487075014710765483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202837 n : ℚ) ^ (A000005 (A003627 (n + 1)).toNat : ℤ)

end

end A202836.P2487075014710765483

namespace A202836

/-- `A202837(n)^A000005(A003627(n+1))` -/
def P2487075014710765483.Spec : Prop :=
  ∀ n, P2487075014710765483.a n = (A202836 n : ℚ)

end A202836

/-!
# A202837: E.g.f.: exp(3*x + 2*x^2).

The programs for A202837, the canonical program `A202837.P16577200561476544344` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202837 has offset 0).

The definition of A202837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202837.P16577200561476544344

`3*a(n-1)+4*(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202837

/-- `3*a(n-1)+4*(n-1)*a(n-2)` -/
def P16577200561476544344.Spec : Prop :=
  ∀ n, P16577200561476544344.a n = A202837 n

theorem P16577200561476544344.correct : P16577200561476544344.Spec := by
  intro n
  simp only [A202837]

end A202837

/-! ## A202837.P8298591451987349896

`sqrt(A202836(n))`
-/

namespace A202837.P8298591451987349896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202836 n : ℝ)

end

end A202837.P8298591451987349896

namespace A202837

/-- `sqrt(A202836(n))` -/
def P8298591451987349896.Spec : Prop :=
  ∀ n, P8298591451987349896.a n = (A202837 n : ℝ)

end A202837

/-! ## A202837.P3129676016956138704

`root(A202836(n), ratio[A000079(n)])`
-/

namespace A202837.P3129676016956138704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202836 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A202837.P3129676016956138704

namespace A202837

/-- `root(A202836(n), ratio[A000079(n)])` -/
def P3129676016956138704.Spec : Prop :=
  ∀ n, P3129676016956138704.a n = (A202837 n : ℝ)

end A202837

/-! ## A202837.P9472240560568249018

`root(A202836(n), A004277(n))^n`
-/

namespace A202837.P9472240560568249018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A202836 n : ℝ) ^ (1 / (A004277 n : ℝ))) ^ n

end

end A202837.P9472240560568249018

namespace A202837

/-- `root(A202836(n), A004277(n))^n` -/
def P9472240560568249018.Spec : Prop :=
  ∀ n, P9472240560568249018.a n = (A202837 n : ℝ)

end A202837

/-! ## A202837.P5879618859895604737

`root(A202836(n), A001316(A001316(n)))`
-/

namespace A202837.P5879618859895604737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202836 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A202837.P5879618859895604737

namespace A202837

/-- `root(A202836(n), A001316(A001316(n)))` -/
def P5879618859895604737.Spec : Prop :=
  ∀ n, P5879618859895604737.a n = (A202837 n : ℝ)

end A202837

/-!
# A202839: Number of stacks of length 1 in all 2ndary structures of size n.

The programs for A202839, there is no canonical definition to state claims against.
-/

/-! ## A202839.P4916107915062562309

`A171854(n)-A171854(floor(n-atan(n)))`
-/

namespace A202839.P4916107915062562309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171854 n - A171854 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A202839.P4916107915062562309

/-! ## A202839.P15901169231628645657

`A171854(n)-A171854(A289207(n))`
-/

namespace A202839.P15901169231628645657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171854 n - A171854 (A289207 n).toNat

end

end A202839.P15901169231628645657

/-! ## A202839.P263798620659749700

`A202843(2*(n+1))%A203247(n+1)`
-/

namespace A202839.P263798620659749700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202843 (2 * (n + 1))) (A203247 (n + 1))

end

end A202839.P263798620659749700

/-! ## A202839.P9355628967563011306

`A254011(A302018(n)+A122367(n))`
-/

namespace A202839.P9355628967563011306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A302018 n + A122367 n).toNat

end

end A202839.P9355628967563011306

/-! ## A202839.P8264313238802638555

`A202843(2*(n+1))%A065033(A002527(n))`
-/

namespace A202839.P8264313238802638555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202843 (2 * (n + 1))) (A065033 (A002527 n).toNat)

end

end A202839.P8264313238802638555

/-!
# A202840: Number of secondary structures of size n having no stacks of length 1.

The programs for A202840, there is no canonical definition to state claims against.
-/

/-! ## A202840.P15317225485092962397

`A202838(A173276(∑[n]))`
-/

namespace A202840.P15317225485092962397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202838 (A173276 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A202840.P15317225485092962397

/-! ## A202840.P16836775581452713130

`ceil(A219714(∑[n+2])/A063922(3*(n+1)))`
-/

namespace A202840.P16836775581452713130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A219714 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A063922 (3 * (n + 1)) : ℚ)⌉

end

end A202840.P16836775581452713130

/-! ## A202840.P960400520751596245

`A247151(A023427(n))+A212365(n)`
-/

namespace A202840.P960400520751596245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (A023427 n).toNat + A212365 n

end

end A202840.P960400520751596245

/-! ## A202840.P3404092946605469749

`A247151(A216116(abs(1-n)))+A212365(n)`
-/

namespace A202840.P3404092946605469749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (A216116 |1 - (n : ℤ)|.toNat).toNat + A212365 n

end

end A202840.P3404092946605469749

/-! ## A202840.P2067673096012285077

`A247151(A212363(∑[n+5]+5))+A212365(n)`
-/

namespace A202840.P2067673096012285077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (A212363 (∑ j ∈ Finset.range (n + 1), f1 j + 5)).toNat + A212365 n

end

end A202840.P2067673096012285077

/-!
# A202841: Triangle read by rows: T(n,k) is the number of secondary structures of size n having k stacks of length 2 (n>=0, k>=0).

The programs for A202841, there is no canonical definition to state claims against.
-/

/-! ## A202841.P1653543088696993477

`A202848(n)+A025469(A101622(n))`
-/

namespace A202841.P1653543088696993477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 n + A025469 (A101622 n).toNat

end

end A202841.P1653543088696993477

/-! ## A202841.P884680677036937812

`A202848(n)+A196096(A115205(n))`
-/

namespace A202841.P884680677036937812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 n + A196096 (A115205 n).toNat

end

end A202841.P884680677036937812

/-! ## A202841.P4139812655298535328

`A202848(n)+A185284(A171966(n))`
-/

namespace A202841.P4139812655298535328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 n + A185284 (A171966 n).toNat

end

end A202841.P4139812655298535328

/-! ## A202841.P7093861487481322962

`A202848(A055648(n))`
-/

namespace A202841.P7093861487481322962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 (A055648 n).toNat

end

end A202841.P7093861487481322962

/-! ## A202841.P3062120972777622828

`A072088(A202848(n))`
-/

namespace A202841.P3062120972777622828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A202848 n).toNat

end

end A202841.P3062120972777622828

/-!
# A202842: Number of secondary structures of size n having no stacks of length 2.

The programs for A202842, there is no canonical definition to state claims against.
-/

/-! ## A202842.P5966173609827543623

`A202841(lt[A166287(n), A202841(n)²])`
-/

namespace A202842.P5966173609827543623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202842.P5966173609827543623

/-! ## A202842.P4371650502457063920

`A202841(lt[A190161(n), A202841(n)²])`
-/

namespace A202842.P4371650502457063920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202842.P4371650502457063920

/-! ## A202842.P4109898681259541074

`A202841(lt[A202839(n), A202841(n)²])`
-/

namespace A202842.P4109898681259541074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202842.P4109898681259541074

/-! ## A202842.P5749600509882329692

`A202841(lt[A295688(n)/3, A202841(n)])`
-/

namespace A202842.P5749600509882329692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295688 n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A202842.P5749600509882329692

/-! ## A202842.P11279061627630083968

`A202841(lt[A347276(n+3), A087237(3*(n+1))])`
-/

namespace A202842.P11279061627630083968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347276 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087237 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202842.P11279061627630083968

/-!
# A202843: Triangle read by rows: T(n,k) is the number of secondary structures of size n having k stacks of length 3.

The programs for A202843, there is no canonical definition to state claims against.
-/

/-! ## A202843.P3806193710043926917

`A378818(A276532(n))+A098083(n)`
-/

namespace A202843.P3806193710043926917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378818 (A276532 n).toNat + A098083 n

end

end A202843.P3806193710043926917

/-! ## A202843.P8286801566868952962

`A341027(A325918(n))+A097107(n)`
-/

namespace A202843.P8286801566868952962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A325918 n).toNat + 220) + A097107 n

end

end A202843.P8286801566868952962

/-! ## A202843.P13241987895253923194

`A341027(A325918(n))+A098083(n)`
-/

namespace A202843.P13241987895253923194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A325918 n).toNat + 220) + A098083 n

end

end A202843.P13241987895253923194

/-! ## A202843.P114841029200758422

`or(A000086(A048469(n)), A097107(n))`
-/

namespace A202843.P114841029200758422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000086 (A048469 n).toNat) (A097107 n)

end

end A202843.P114841029200758422

/-! ## A202843.P646996866468512680

`or(A075199(n+1), A098083(A002998(n)))`
-/

namespace A202843.P646996866468512680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075199 (n + 1)) (A098083 (A002998 n).toNat)

end

end A202843.P646996866468512680

/-!
# A202844: Number of secondary structures of size n having no stacks of length 3.

The programs for A202844, there is no canonical definition to state claims against.
-/

/-! ## A202844.P11473207604839698356

`A202843(lt[A202839(n), A202843(n)²])`
-/

namespace A202844.P11473207604839698356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202843 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202844.P11473207604839698356

/-! ## A202844.P18239282067138091530

`A202843(record[A011867(A308590(n))])`
-/

namespace A202844.P18239282067138091530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (A308590 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A202844.P18239282067138091530

/-! ## A202844.P3530385991639434363

`A202843(lt[A278292(n+1), A007519(3*n+5)])`
-/

namespace A202844.P3530385991639434363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202844.P3530385991639434363

/-! ## A202844.P544882849874952466

`A202843(lt[2^floor(n/2), A342222(n+3)])`
-/

namespace A202844.P544882849874952466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342222 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A202844.P544882849874952466

/-! ## A202844.P4271614250572771653

`A202843(lt[A337561(n+1), A225232(n+3)])`
-/

namespace A202844.P4271614250572771653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225232 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202844.P4271614250572771653

/-!
# A202846: Number of stacks of odd length in all 2ndary structures of size n.

The programs for A202846, there is no canonical definition to state claims against.
-/

/-! ## A202846.P822980842593464681

`A171854(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A202846.P822980842593464681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A171854 n - a (n - 2)

end

end A202846.P822980842593464681

/-! ## A202846.P8262039505186520898

`A133430(A336351(2*(n+1)))`
-/

namespace A202846.P8262039505186520898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133430 (A336351 (2 * (n + 1))).toNat

end

end A202846.P8262039505186520898

/-! ## A202846.P12105005762490129696

`A008651(or(A167499(n), A347830(n)))`
-/

namespace A202846.P12105005762490129696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.lor (A167499 n) (A347830 n)).toNat

end

end A202846.P12105005762490129696

/-! ## A202846.P11374702741940852214

`A008651(or(A023439(n+2), A347830(n)))`
-/

namespace A202846.P11374702741940852214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.lor (A023439 (n + 2)) (A347830 n)).toNat

end

end A202846.P11374702741940852214

/-! ## A202846.P5051070061597389751

`A071841(A151434(n+1))`
-/

namespace A202846.P5051070061597389751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (A151434 (n + 1)).toNat

end

end A202846.P5051070061597389751

/-!
# A202847: Riordan array (f(x), x*f(x)) where f(x) is the g.f. of A126930.

The programs for A202847, there is no canonical definition to state claims against.
-/

/-! ## A202847.P4125427966971463854

`(and(2, comp[∑[n]]+n)-1)*A054336(n)`
-/

namespace A202847.P4125427966971463854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A054336 n

end

end A202847.P4125427966971463854

/-! ## A202847.P12006436965573270124

`A054336(n)*A097807(n)`
-/

namespace A202847.P12006436965573270124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 n * A097807 n

end

end A202847.P12006436965573270124

/-! ## A202847.P12681879082769941172

`A034947(A099375(n))*A054336(n)`
-/

namespace A202847.P12681879082769941172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A099375 n).toNat * A054336 n

end

end A202847.P12681879082769941172

/-! ## A202847.P2620116876003263477

`A054336(n)*A062157(A004736(n+1))`
-/

namespace A202847.P2620116876003263477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 n * A062157 (A004736 (n + 1)).toNat

end

end A202847.P2620116876003263477

/-! ## A202847.P5124574494176661059

`A054336(n)/A097807(A014132(n+1))`
-/

namespace A202847.P5124574494176661059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054336 n : ℚ) / (A097807 (A014132 (n + 1)).toNat : ℚ)

end

end A202847.P5124574494176661059

/-! ## A202847.P15448561404108230953

`A054336(n)/A104259(n)*A154930(n)`
-/

namespace A202847.P15448561404108230953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054336 n : ℚ) / (A104259 n : ℚ) * (A154930 n : ℚ)

end

end A202847.P15448561404108230953

/-! ## A202847.P1531520375607498540

`A033184(n+1)*A054336(n)/A171567(n)`
-/

namespace A202847.P1531520375607498540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033184 (n + 1) * A054336 n : ℚ) / (A171567 n : ℚ)

end

end A202847.P1531520375607498540

/-! ## A202847.P15098874367363327715

`A034947(A135764(n+1))*A054336(n)`
-/

namespace A202847.P15098874367363327715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A135764 (n + 1)).toNat * A054336 n

end

end A202847.P15098874367363327715

/-!
# A202848: Triangle read by rows: T(n,k) is the number of secondary structures of size n having k stacks of even length (n>=0, k>=0).

The programs for A202848, there is no canonical definition to state claims against.
-/

/-! ## A202848.P9944561704057157107

`A202841(n)-A025469(A101622(n))`
-/

namespace A202848.P9944561704057157107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 n - A025469 (A101622 n).toNat

end

end A202848.P9944561704057157107

/-! ## A202848.P16573243176888159197

`A202841(n)-A196096(A115205(n))`
-/

namespace A202848.P16573243176888159197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 n - A196096 (A115205 n).toNat

end

end A202848.P16573243176888159197

/-! ## A202848.P148053404874616378

`A202841(n)-A185284(A171966(n))`
-/

namespace A202848.P148053404874616378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 n - A185284 (A171966 n).toNat

end

end A202848.P148053404874616378

/-! ## A202848.P4768322214558583664

`A202841(n)-A107846(A294923(3*n+1))`
-/

namespace A202848.P4768322214558583664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202841 n - A107846 (A294923 (3 * n + 1)).toNat

end

end A202848.P4768322214558583664

/-!
# A202849: Number of secondary structures of size n having no stacks of even length.

The programs for A202849, there is no canonical definition to state claims against.
-/

/-! ## A202849.P8048843774068788706

`A202848(A008620(∑[A008620(2*n)]))`
-/

namespace A202849.P8048843774068788706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 (A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A202849.P8048843774068788706

/-! ## A202849.P10910721132812091269

`A202848(lt[A171854(n), A202848(n)²])`
-/

namespace A202849.P10910721132812091269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202849.P10910721132812091269

/-! ## A202849.P7678346860019510513

`A202848(lt[A202846(n), A202848(n)²])`
-/

namespace A202849.P7678346860019510513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202849.P7678346860019510513

/-! ## A202849.P14737338568295663467

`A202848(lt[A118807(n), A225232(n+3)])`
-/

namespace A202849.P14737338568295663467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118807 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225232 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202849.P14737338568295663467

/-! ## A202849.P11003210199888714395

`A202848(lt[A202845(2*n+1), A202857(2*n+5)])`
-/

namespace A202849.P11003210199888714395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202845 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202857 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202848 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A202849.P11003210199888714395

/-!
# A202850: Number of secondary structures of size n with no stacks of length >=2.

The programs for A202850, there is no canonical definition to state claims against.
-/

/-! ## A202850.P18059415735798682406

`A262689(or(1, A232687(n)))`
-/

namespace A202850.P18059415735798682406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor 1 (A232687 n)).toNat

end

end A202850.P18059415735798682406

/-! ## A202850.P4113403378484316620

`A003056(floor(sqrt(A168365(n+1))))`
-/

namespace A202850.P4113403378484316620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.sqrt (A168365 (n + 1))).toNat

end

end A202850.P4113403378484316620

/-! ## A202850.P7734753385171008122

`A003056(ceil(sqrt(A168365(n+1))))`
-/

namespace A202850.P7734753385171008122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A168365 (n + 1) : ℝ)⌉.toNat

end

end A202850.P7734753385171008122

/-! ## A202850.P569137877269468236

`A003056(round(sqrt(A168365(n+1))))`
-/

namespace A202850.P569137877269468236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway (Real.sqrt (A168365 (n + 1) : ℝ))).toNat

end

end A202850.P569137877269468236

/-! ## A202850.P11241918669780601872

`ceil(A212071(n)/A129872(n+1))`
-/

namespace A202850.P11241918669780601872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212071 n : ℚ) / (A129872 (n + 1) : ℚ)⌉

end

end A202850.P11241918669780601872

/-!
# A202851: Triangle read by rows: T(n,k) is the number of secondary structures of size n with no stacks of length >=2 and having k stacks of length 1 (n>=0, k>=0).

The programs for A202851, there is no canonical definition to state claims against.
-/

/-! ## A202851.P9237879027522796572

`gcd(A010892(A032437(2*n+1)), A202838(n))`
-/

namespace A202851.P9237879027522796572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010892 (A032437 (2 * n + 1)).toNat) (A202838 n)

end

end A202851.P9237879027522796572

/-! ## A202851.P11384393780705652058

`A202838(gcd(n, A005079(A202850(n))))`
-/

namespace A202851.P11384393780705652058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202838 (Int.gcd (n : ℤ) (A005079 (A202850 n).toNat))

end

end A202851.P11384393780705652058

/-! ## A202851.P1717999319243304689

`A202838(n)^A360675(A215788(3*(n+1)))`
-/

namespace A202851.P1717999319243304689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202838 n : ℚ) ^ (A360675 (A215788 (3 * (n + 1))).toNat : ℤ)

end

end A202851.P1717999319243304689

/-!
# A202853: Triangle read by rows: T(n,k) is the number of k-matchings of the rooted tree having Matula-Goebel number n (n>=1, k>=0).

The programs for A202853, there is no canonical definition to state claims against.
-/

/-! ## A202853.P12903509630941380255

`A115572(A314958(n+1)+1)`
-/

namespace A202853.P12903509630941380255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A314958 (n + 1) + 1).toNat

end

end A202853.P12903509630941380255

/-! ## A202853.P346244969011015773

`gcd(A037477(n), A118458(A006005(n+1)))`
-/

namespace A202853.P346244969011015773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037477 n) (A118458 (A006005 (n + 1)).toNat)

end

end A202853.P346244969011015773

/-! ## A202853.P13098586847203398935

`gcd(A099587(n), A118458(A000040(n+1)))`
-/

namespace A202853.P13098586847203398935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099587 n) (A118458 (A000040 (n + 1)).toNat)

end

end A202853.P13098586847203398935

/-! ## A202853.P18428182992724124930

`gcd(A118458(A301378(n+1)), A257697(n))`
-/

namespace A202853.P18428182992724124930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118458 (A301378 (n + 1)).toNat) (A257697 n)

end

end A202853.P18428182992724124930

/-! ## A202853.P6874844009586131674

`A115576(A349152(2*n+5)+A115576(n+1))`
-/

namespace A202853.P6874844009586131674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (A349152 (2 * n + 5) + A115576 (n + 1)).toNat

end

end A202853.P6874844009586131674

/-!
# A202854: The Matula-Göbel numbers of rooted trees T for which the sequence formed by the number of k-matchings of T (k=0,1,2,...) is palindromic.

The programs for A202854, there is no canonical definition to state claims against.
-/

/-! ## A202854.P16986038566702665589

`eq[A212625(n+1), A212632(n+1)]+1`
-/

namespace A202854.P16986038566702665589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A202854.P16986038566702665589

/-! ## A202854.P5123264121889291227

`eq[A212626(n+1), A212628(n+1)]+1`
-/

namespace A202854.P5123264121889291227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A202854.P5123264121889291227

/-! ## A202854.P4015760961086750692

`eq[A212632(n+1), A347966(n+1)]+1`
-/

namespace A202854.P4015760961086750692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A202854.P4015760961086750692

/-!
# A202855: Numbers k such that phi(k) - 1 divides k, where phi is Euler's totient function.

The programs for A202855, there is no canonical definition to state claims against.
-/

/-! ## A202855.P3498465076162740519

`A055523(a(n-1)+4)-3` with `a(0)=3, a(1)=4, a(2)=6, a(3)=12`
-/

namespace A202855.P3498465076162740519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6, 12] fun n a =>
  A055523 (a (n - 1) + 4).toNat - 3

end

end A202855.P3498465076162740519

/-! ## A202855.P10919997032032429363

`A065875(A136299(n))`
-/

namespace A202855.P10919997032032429363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065875 (A136299 n).toNat

end

end A202855.P10919997032032429363

/-! ## A202855.P5521283541768252869

`A065875(A303666(n))`
-/

namespace A202855.P5521283541768252869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065875 (A303666 n).toNat

end

end A202855.P5521283541768252869

/-!
# A202856: Moments of the quadratic coefficient of the characteristic polynomial of a random matrix in SU(2) X SU(2) (inside USp(4)).

The programs for A202856, there is no canonical definition to state claims against.
-/

/-! ## A202856.P11851503355866001618

`A118929(∑[A213217(n)])`
-/

namespace A202856.P11851503355866001618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202856.P11851503355866001618

/-! ## A202856.P11209247513732959891

`A118929(A002998(n)+1)`
-/

namespace A202856.P11209247513732959891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118929 (A002998 n + 1).toNat

end

end A202856.P11209247513732959891

/-! ## A202856.P17117147099757487177

`A118929(A043315(n+1))`
-/

namespace A202856.P17117147099757487177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118929 (A043315 (n + 1)).toNat

end

end A202856.P17117147099757487177

/-! ## A202856.P5175982800125412560

`A118929(A044912(n+1))`
-/

namespace A202856.P5175982800125412560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118929 (A044912 (n + 1)).toNat

end

end A202856.P5175982800125412560

/-!
# A202858: Number of n X n 0..2 arrays with row and column sums one greater than the previous row and column.

The programs for A202858, there is no canonical definition to state claims against.
-/

/-! ## A202858.P10528187570506839598

`A202864(∑[n+2])`
-/

namespace A202858.P10528187570506839598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202864 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202858.P10528187570506839598

/-! ## A202858.P9790526051348510221

`record[A202864(A204890(n+3))]`
-/

namespace A202858.P9790526051348510221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202864 (A204890 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202858.P9790526051348510221

/-! ## A202858.P18412099252294228636

`record[or(A116949(n), A202864(n+1))]`
-/

namespace A202858.P18412099252294228636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116949 n) (A202864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202858.P18412099252294228636

/-!
# A202859: Number of n X n 0..3 arrays with row and column sums one greater than the previous row and column.

The programs for A202859, there is no canonical definition to state claims against.
-/

/-! ## A202859.P18360653970079462554

`A202864(∑[n+3]+1)`
-/

namespace A202859.P18360653970079462554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202864 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202859.P18360653970079462554

/-!
# A202860: Number of n X n 0..4 arrays with row and column sums one greater than the previous row and column.

The programs for A202860, there is no canonical definition to state claims against.
-/

/-! ## A202860.P7554887356445624068

`A202864(∑[n+4]+3)`
-/

namespace A202860.P7554887356445624068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202864 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A202860.P7554887356445624068

/-!
# A202861: Number of n X n 0..5 arrays with row and column sums one greater than the previous row and column.

The programs for A202861, there is no canonical definition to state claims against.
-/

/-! ## A202861.P13957251724779736016

`A202864(Δ[A264443(n)])`
-/

namespace A202861.P13957251724779736016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202864 (f1 (n + 1) - f1 n).toNat

end

end A202861.P13957251724779736016

/-!
# A202864: T(n,k) = Number of n X n 0..k arrays with row and column sums one greater than the previous row and column.

The programs for A202864, there is no canonical definition to state claims against.
-/

/-! ## A202864.P17647247406713539844

`A178877(A194998(n+1))`
-/

namespace A202864.P17647247406713539844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178877 (A194998 (n + 1)).toNat

end

end A202864.P17647247406713539844

/-! ## A202864.P668357535704356900

`A257664(A337883(n+2)+A287378(n))`
-/

namespace A202864.P668357535704356900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257664 (A337883 (n + 2) + A287378 n).toNat

end

end A202864.P668357535704356900

/-! ## A202864.P9087555104514653924

`A018676(A194998(n+1)*A287378(n))`
-/

namespace A202864.P9087555104514653924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (A194998 (n + 1) * A287378 n).toNat

end

end A202864.P9087555104514653924

/-! ## A202864.P10104147610767933923

`A018676(A194998(n+1)+A061134(n+1))`
-/

namespace A202864.P10104147610767933923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (A194998 (n + 1) + A061134 (n + 1)).toNat

end

end A202864.P10104147610767933923

/-!
# A202865: Number of 3 X 3 0..n arrays with row and column sums one greater than the previous row and column.

The programs for A202865, the canonical program `A202865.P3958445544690292607` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202865 has offset 1).

The definition of A202865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202865.P3958445544690292607

`∑[∑[∑[∑[36*n]]+2]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202865

/-- `∑[∑[∑[∑[36*n]]+2]]` -/
def P3958445544690292607.Spec : Prop :=
  ∀ n, (P3958445544690292607.a n : ℤ) = A202865 (n + 1)

theorem P3958445544690292607.correct : P3958445544690292607.Spec := by
  intro n
  simp only [A202865, Nat.add_sub_cancel]

end A202865

/-! ## A202865.P17524033782798819020

`A185355(n+2)+∑[A172075(n+1)]`
-/

namespace A202865.P17524033782798819020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185355 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202865.P17524033782798819020

namespace A202865

/-- `A185355(n+2)+∑[A172075(n+1)]` -/
def P17524033782798819020.Spec : Prop :=
  ∀ n, P17524033782798819020.a n = A202865 (n + 1)

end A202865

/-! ## A202865.P2786341018487757227

`A202864(∑[n+2]+4)`
-/

namespace A202865.P2786341018487757227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202864 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202865.P2786341018487757227

namespace A202865

/-- `A202864(∑[n+2]+4)` -/
def P2786341018487757227.Spec : Prop :=
  ∀ n, P2786341018487757227.a n = A202865 (n + 1)

end A202865

/-!
# A202866: Number of 4 X 4 0..n arrays with row and column sums one greater than the previous row and column.

The programs for A202866, there is no canonical definition to state claims against.
-/

/-! ## A202866.P15135703797826997333

`A202864(∑[n+3]+7)`
-/

namespace A202866.P15135703797826997333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202864 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202866.P15135703797826997333

/-!
# A202867: Number of 5 X 5 0..n arrays with row and column sums one greater than the previous row and column.

The programs for A202867, there is no canonical definition to state claims against.
-/

/-! ## A202867.P4935102172474583435

`A202864(A155212(n)+13)`
-/

namespace A202867.P4935102172474583435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202864 (A155212 n + 13).toNat

end

end A202867.P4935102172474583435

/-!
# A202869: Symmetric matrix based on the lower Wythoff sequence, A000201, by antidiagonals.

The programs for A202869, there is no canonical definition to state claims against.
-/

/-! ## A202869.P9005466461906873354

`A340429(n+1)+A001222(A176643(n))`
-/

namespace A202869.P9005466461906873354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340429 (n + 1) + A001222 (A176643 n).toNat

end

end A202869.P9005466461906873354

/-! ## A202869.P7736470713420284953

`A340429(n+1)+A094495(A157221(n))`
-/

namespace A202869.P7736470713420284953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340429 (n + 1) + A094495 (A157221 n).toNat

end

end A202869.P7736470713420284953

/-!
# A202873: Symmetric matrix based on (1,3,7,15,31,...), by antidiagonals.

The programs for A202873, there is no canonical definition to state claims against.
-/

/-! ## A202873.P18355221454835330615

`A223317(n+1)-A114294(A223256(n))`
-/

namespace A202873.P18355221454835330615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (n + 1) - A114294 (A223256 n).toNat

end

end A202873.P18355221454835330615

/-! ## A202873.P9254429364619591263

`A157933(n)-A319080(A118185(n))`
-/

namespace A202873.P9254429364619591263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157933 n - A319080 (A118185 n).toNat

end

end A202873.P9254429364619591263

/-! ## A202873.P11870530349015998667

`A352513(A154335(n))+A143088(n)`
-/

namespace A202873.P11870530349015998667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A154335 n).toNat + A143088 n

end

end A202873.P11870530349015998667

/-! ## A202873.P3480640469558794918

`A223317(n+1)-A117898(A006131(n))`
-/

namespace A202873.P3480640469558794918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (n + 1) - A117898 (A006131 n).toNat

end

end A202873.P3480640469558794918

/-! ## A202873.P6810661976490278465

`A157933(n)-A003849(A235517(n+1))`
-/

namespace A202873.P6810661976490278465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157933 n - A003849 (A235517 (n + 1)).toNat

end

end A202873.P6810661976490278465

/-!
# A202874: Symmetric matrix based on (1,2,3,5,8,13,...), by antidiagonals.

The programs for A202874, there is no canonical definition to state claims against.
-/

/-! ## A202874.P8302983462834742498

`A202503(n+1)+A202453(n+2)-A202452(n+2)`
-/

namespace A202874.P8302983462834742498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202503 (n + 1) + (A202453 (n + 2) - A202452 (n + 2))

end

end A202874.P8302983462834742498

/-! ## A202874.P7707110273866157699

`A256663(A106408(n+1))`
-/

namespace A202874.P7707110273866157699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256663 (A106408 (n + 1)).toNat

end

end A202874.P7707110273866157699

/-! ## A202874.P4578320602558480534

`A202503(A127739(n+1)+A003983(n+1))`
-/

namespace A202874.P4578320602558480534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202503 (A127739 (n + 1) + A003983 (n + 1)).toNat

end

end A202874.P4578320602558480534

/-! ## A202874.P9216150110491352275

`A316939(n)+A165560(A342889(n))`
-/

namespace A202874.P9216150110491352275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316939 n + A165560 (A342889 n).toNat

end

end A202874.P9216150110491352275

/-! ## A202874.P561060275548223662

`A064288(A241114(n+1)+A069905(n))`
-/

namespace A202874.P561060275548223662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064288 (A241114 (n + 1) + A069905 n).toNat

end

end A202874.P561060275548223662

/-!
# A202875: Array: row n shows the coefficients of the characteristic polynomial of the n-th principal submatrix of the symmetric matrix A202874; by antidiagonals.

The programs for A202875, there is no canonical definition to state claims against.
-/

/-! ## A202875.P12543561466461253548

`A202673(n+1)-A051767(A134249(n+1))`
-/

namespace A202875.P12543561466461253548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202673 (n + 1) - A051767 (A134249 (n + 1)).toNat

end

end A202875.P12543561466461253548

/-!
# A202876: Symmetric matrix based on A000071, by antidiagonals.

The programs for A202876, there is no canonical definition to state claims against.
-/

/-! ## A202876.P4255679675432438227

`A379837(n)-A049076(A038234(n))`
-/

namespace A202876.P4255679675432438227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379837 n - A049076 (A038234 n).toNat

end

end A202876.P4255679675432438227

/-! ## A202876.P6050491442769910862

`A350254(A157933(n))-1`
-/

namespace A202876.P6050491442769910862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350254 (A157933 n).toNat - 1

end

end A202876.P6050491442769910862

/-! ## A202876.P881638087233623736

`A309077(A316938(n))-2`
-/

namespace A202876.P881638087233623736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309077 (A316938 n).toNat - 2

end

end A202876.P881638087233623736

/-! ## A202876.P16421292277352210670

`A379837(n)-∏{p}[A000225(n+4)+1, #-1]`
-/

namespace A202876.P16421292277352210670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379837 n - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A202876.P16421292277352210670

/-! ## A202876.P9673724746991364592

`A379837(n)-A033999(A038234(n+1))`
-/

namespace A202876.P9673724746991364592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379837 n - A033999 (A038234 (n + 1)).toNat

end

end A202876.P9673724746991364592

/-!
# A202878: Expansion of e.g.f.: exp(16*x/(1-x)) / sqrt(1-x^2).

The programs for A202878, the canonical program `A202878.P2254645665031397715` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202878 has offset 0).

The definition of A202878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202878.P2254645665031397715

`A202879(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202878

/-- `A202879(n)²` -/
def P2254645665031397715.Spec : Prop :=
  ∀ n, P2254645665031397715.a n = A202878 n

theorem P2254645665031397715.correct : P2254645665031397715.Spec := by
  intro n
  simp only [A202878]

end A202878

/-! ## A202878.P11374833640312081295

`∏[(n-1)/a(n-1)+4]²` with `a(0)=1`
-/

namespace A202878.P11374833640312081295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A202878.P11374833640312081295

namespace A202878

/-- `∏[(n-1)/a(n-1)+4]²` -/
def P11374833640312081295.Spec : Prop :=
  ∀ n, P11374833640312081295.a n = (A202878 n : ℚ)

end A202878

/-! ## A202878.P17590019182088008988

`A202879(n)^ratio[A000079(n)]`
-/

namespace A202878.P17590019182088008988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202879 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A202878.P17590019182088008988

namespace A202878

/-- `A202879(n)^ratio[A000079(n)]` -/
def P17590019182088008988.Spec : Prop :=
  ∀ n, P17590019182088008988.a n = (A202878 n : ℝ)

end A202878

/-! ## A202878.P4679520611625575503

`A202879(n)^(2%A083886(n))`
-/

namespace A202878.P4679520611625575503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202879 n : ℚ) ^ (Int.tmod 2 (A083886 n) : ℤ)

end

end A202878.P4679520611625575503

namespace A202878

/-- `A202879(n)^(2%A083886(n))` -/
def P4679520611625575503.Spec : Prop :=
  ∀ n, P4679520611625575503.a n = (A202878 n : ℚ)

end A202878

/-! ## A202878.P2561087896842554628

`A202879(n)^A020639(A000123(n))`
-/

namespace A202878.P2561087896842554628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202879 n : ℚ) ^ (A020639 (A000123 n).toNat : ℤ)

end

end A202878.P2561087896842554628

namespace A202878

/-- `A202879(n)^A020639(A000123(n))` -/
def P2561087896842554628.Spec : Prop :=
  ∀ n, P2561087896842554628.a n = (A202878 n : ℚ)

end A202878

/-! ## A202878.P6499036344346675648

`A202879(n)^A020639(A001316(n))`
-/

namespace A202878.P6499036344346675648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202879 n : ℚ) ^ (A020639 (A001316 n).toNat : ℤ)

end

end A202878.P6499036344346675648

namespace A202878

/-- `A202879(n)^A020639(A001316(n))` -/
def P6499036344346675648.Spec : Prop :=
  ∀ n, P6499036344346675648.a n = (A202878 n : ℚ)

end A202878

/-! ## A202878.P6812497842235347191

`A202879(n)^A020639(A005901(n))`
-/

namespace A202878.P6812497842235347191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202879 n : ℚ) ^ (A020639 (A005901 n).toNat : ℤ)

end

end A202878.P6812497842235347191

namespace A202878

/-- `A202879(n)^A020639(A005901(n))` -/
def P6812497842235347191.Spec : Prop :=
  ∀ n, P6812497842235347191.a n = (A202878 n : ℚ)

end A202878

/-! ## A202878.P16128317573016379852

`A202879(n)^A020639(A008458(n))`
-/

namespace A202878.P16128317573016379852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202879 n : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A202878.P16128317573016379852

namespace A202878

/-- `A202879(n)^A020639(A008458(n))` -/
def P16128317573016379852.Spec : Prop :=
  ∀ n, P16128317573016379852.a n = (A202878 n : ℚ)

end A202878

/-! ## A202878.P18034996969022916332

`A202879(n)^A020639(A008574(n))`
-/

namespace A202878.P18034996969022916332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202879 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A202878.P18034996969022916332

namespace A202878

/-- `A202879(n)^A020639(A008574(n))` -/
def P18034996969022916332.Spec : Prop :=
  ∀ n, P18034996969022916332.a n = (A202878 n : ℚ)

end A202878

/-!
# A202879: E.g.f.: exp(4*x + x^2/2).

The programs for A202879, the canonical program `A202879.P12286200823337711048` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202879 has offset 0).

The definition of A202879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202879.P12286200823337711048

`4*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202879

/-- `4*a(n-1)+(n-1)*a(n-2)` -/
def P12286200823337711048.Spec : Prop :=
  ∀ n, P12286200823337711048.a n = A202879 n

theorem P12286200823337711048.correct : P12286200823337711048.Spec := by
  intro n
  simp only [A202879]

end A202879

/-! ## A202879.P15385819033746161132

`∏[(n-1)/a(n-1)+4]` with `a(0)=1`
-/

namespace A202879.P15385819033746161132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202879.P15385819033746161132

namespace A202879

/-- `∏[(n-1)/a(n-1)+4]` -/
def P15385819033746161132.Spec : Prop :=
  ∀ n, P15385819033746161132.a n = (A202879 n : ℚ)

end A202879

/-! ## A202879.P3268846464419123698

`4*a(n-1)-(a(n-2)-n*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A202879.P3268846464419123698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A202879.P3268846464419123698

namespace A202879

/-- `4*a(n-1)-(a(n-2)-n*a(n-2))` -/
def P3268846464419123698.Spec : Prop :=
  ∀ n, P3268846464419123698.a n = A202879 n

end A202879

/-! ## A202879.P17085539280151859940

`sqrt(A202878(n))`
-/

namespace A202879.P17085539280151859940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202878 n : ℝ)

end

end A202879.P17085539280151859940

namespace A202879

/-- `sqrt(A202878(n))` -/
def P17085539280151859940.Spec : Prop :=
  ∀ n, P17085539280151859940.a n = (A202879 n : ℝ)

end A202879

/-! ## A202879.P10953020656070618385

`root(A202878(n), A004277(n))^n`
-/

namespace A202879.P10953020656070618385
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A202878 n : ℝ) ^ (1 / (A004277 n : ℝ))) ^ n

end

end A202879.P10953020656070618385

namespace A202879

/-- `root(A202878(n), A004277(n))^n` -/
def P10953020656070618385.Spec : Prop :=
  ∀ n, P10953020656070618385.a n = (A202879 n : ℝ)

end A202879

/-! ## A202879.P9931488599081691194

`root(A202878(n), 2%A302465(n+1))`
-/

namespace A202879.P9931488599081691194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202878 n : ℝ) ^ (1 / (Int.tmod 2 (A302465 (n + 1)) : ℝ))

end

end A202879.P9931488599081691194

namespace A202879

/-- `root(A202878(n), 2%A302465(n+1))` -/
def P9931488599081691194.Spec : Prop :=
  ∀ n, P9931488599081691194.a n = (A202879 n : ℝ)

end A202879

/-! ## A202879.P10066774453065441599

`root(A202878(n), A001316(A001316(n)))`
-/

namespace A202879.P10066774453065441599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202878 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A202879.P10066774453065441599

namespace A202879

/-- `root(A202878(n), A001316(A001316(n)))` -/
def P10066774453065441599.Spec : Prop :=
  ∀ n, P10066774453065441599.a n = (A202879 n : ℝ)

end A202879

/-!
# A202881: Number of n X n 0..2 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202881, there is no canonical definition to state claims against.
-/

/-! ## A202881.P1313859495150390921

`A202889((n+1)²+n²)`
-/

namespace A202881.P1313859495150390921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 ((n + 1) ^ 2 + n ^ 2)

end

end A202881.P1313859495150390921

/-!
# A202882: Number of n X 1 0..2 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202882, the canonical program `A202882.P17849248709654072089` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202882 has offset 1).

The definition of A202882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202882.P17849248709654072089

`3*a(n-1)-3*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=22, a(4)=51`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202882

/-- `3*a(n-1)-3*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` -/
def P17849248709654072089.Spec : Prop :=
  ∀ n, P17849248709654072089.a n = A202882 (n + 1)

theorem P17849248709654072089.correct : P17849248709654072089.Spec := by
  intro n
  simp only [A202882, Nat.add_sub_cancel]

end A202882

/-! ## A202882.P17735020484785249586

`record[gcd(A217883(n+1), A319797(n))]`
-/

namespace A202882.P17735020484785249586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217883 (n + 1)) (A319797 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202882.P17735020484785249586

namespace A202882

/-- `record[gcd(A217883(n+1), A319797(n))]` -/
def P17735020484785249586.Spec : Prop :=
  ∀ n, (P17735020484785249586.a n : ℤ) = A202882 (n + 1)

end A202882

/-! ## A202882.P5001228700084976691

`record[and(A185331(n), A217883(n+1))]`
-/

namespace A202882.P5001228700084976691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185331 n) (A217883 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202882.P5001228700084976691

namespace A202882

/-- `record[and(A185331(n), A217883(n+1))]` -/
def P5001228700084976691.Spec : Prop :=
  ∀ n, P5001228700084976691.a n = A202882 (n + 1)

end A202882

/-! ## A202882.P9490186943510306878

`record[A217883(n+10)%A217954(n+11)]`
-/

namespace A202882.P9490186943510306878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217883 (n + 10)) (A217954 (n + 11))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202882.P9490186943510306878

namespace A202882

/-- `record[A217883(n+10)%A217954(n+11)]` -/
def P9490186943510306878.Spec : Prop :=
  ∀ n, P9490186943510306878.a n = A202882 (n + 1)

end A202882

/-! ## A202882.P6298119721877267293

`gcd(A112316(n), A217883(A347553(n+3)))`
-/

namespace A202882.P6298119721877267293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A217883 (A347553 (n + 3)).toNat)

end

end A202882.P6298119721877267293

namespace A202882

/-- `gcd(A112316(n), A217883(A347553(n+3)))` -/
def P6298119721877267293.Spec : Prop :=
  ∀ n, (P6298119721877267293.a n : ℤ) = A202882 (n + 1)

end A202882

/-!
# A202883: Number of n X 2 0..2 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202883, there is no canonical definition to state claims against.
-/

/-! ## A202883.P12540786992971922665

`A202889(∑[n+1]+2)`
-/

namespace A202883.P12540786992971922665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202883.P12540786992971922665

/-! ## A202883.P9821050779077553441

`record[gcd(A073200(n), A202889(n+3))]`
-/

namespace A202883.P9821050779077553441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 n) (A202889 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202883.P9821050779077553441

/-! ## A202883.P3524879582726840386

`record[root(A202889(n+3), A325007(n+1))]`
-/

namespace A202883.P3524879582726840386
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202889 (n + 3) : ℝ) ^ (1 / (A325007 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202883.P3524879582726840386

/-! ## A202883.P427420877105752841

`record[A202889(Δ[A003453(n+5)])]`
-/

namespace A202883.P427420877105752841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202883.P427420877105752841

/-! ## A202883.P2541242176475052050

`record[A202889(A000096(val(n+1, 2)+1))]`
-/

namespace A202883.P2541242176475052050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202883.P2541242176475052050

/-!
# A202884: Number of nX3 0..2 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202884, there is no canonical definition to state claims against.
-/

/-! ## A202884.P7427521431702575875

`A202889(∑[n+2]+4)`
-/

namespace A202884.P7427521431702575875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202884.P7427521431702575875

/-! ## A202884.P16874781768329214579

`or(1, A202889(A167614(n+1)))`
-/

namespace A202884.P16874781768329214579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202889 (A167614 (n + 1)).toNat)

end

end A202884.P16874781768329214579

/-! ## A202884.P15787466036928026976

`lcm(A033999(n), A202889(A167614(n+1)))`
-/

namespace A202884.P15787466036928026976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202889 (A167614 (n + 1)).toNat)

end

end A202884.P15787466036928026976

/-! ## A202884.P15713417984550348933

`A202889(A167614(n+1))+A112316(n+1)`
-/

namespace A202884.P15713417984550348933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A167614 (n + 1)).toNat + A112316 (n + 1)

end

end A202884.P15713417984550348933

/-! ## A202884.P7943014306930333500

`A070672(n+1)*A202889(A167614(n+1))`
-/

namespace A202884.P7943014306930333500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070672 (n + 1) * A202889 (A167614 (n + 1)).toNat

end

end A202884.P7943014306930333500

/-!
# A202885: Number of nX4 0..2 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202885, there is no canonical definition to state claims against.
-/

/-! ## A202885.P12470406866157887329

`A202889(A141214(n)+7)`
-/

namespace A202885.P12470406866157887329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A141214 n + 7).toNat

end

end A202885.P12470406866157887329

/-! ## A202885.P10694237633606900151

`A202889(A052905(n)+9)`
-/

namespace A202885.P10694237633606900151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A052905 n + 9).toNat

end

end A202885.P10694237633606900151

/-! ## A202885.P16008015880803738336

`A202889(A167614(n+2)+1)`
-/

namespace A202885.P16008015880803738336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A167614 (n + 2) + 1).toNat

end

end A202885.P16008015880803738336

/-! ## A202885.P8069022664125435845

`A202889(eq[4, A002260(n+1)]+1)`
-/

namespace A202885.P8069022664125435845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A202885.P8069022664125435845

/-! ## A202885.P11881120675856074109

`A202889(Δ[A023545(n+1)-n²])`
-/

namespace A202885.P11881120675856074109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (f1 (n + 1) - f1 n).toNat

end

end A202885.P11881120675856074109

/-!
# A202886: Number of nX5 0..2 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202886, there is no canonical definition to state claims against.
-/

/-! ## A202886.P2590309110470956825

`A202889(A167499(n+3))`
-/

namespace A202886.P2590309110470956825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A167499 (n + 3)).toNat

end

end A202886.P2590309110470956825

/-! ## A202886.P17710902156050809342

`A202889(eq[6, A131818(n+1)])`
-/

namespace A202886.P17710902156050809342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202886.P17710902156050809342

/-! ## A202886.P1205147106799416807

`A202889(A374005(n+1))`
-/

namespace A202886.P1205147106799416807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A374005 (n + 1)).toNat

end

end A202886.P1205147106799416807

/-! ## A202886.P15165484120403812525

`A202889(A046691(n+3))`
-/

namespace A202886.P15165484120403812525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A046691 (n + 3)).toNat

end

end A202886.P15165484120403812525

/-! ## A202886.P13417046180402525760

`A202889(Δ[A023545(n+1)])`
-/

namespace A202886.P13417046180402525760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (f1 (n + 1) - f1 n).toNat

end

end A202886.P13417046180402525760

/-!
# A202887: Number of nX6 0..2 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202887, there is no canonical definition to state claims against.
-/

/-! ## A202887.P5902278768742431209

`A202889(A374007(n+1))`
-/

namespace A202887.P5902278768742431209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A374007 (n + 1)).toNat

end

end A202887.P5902278768742431209

/-! ## A202887.P8478814637879147278

`A202889(A052905(n+3))`
-/

namespace A202887.P8478814637879147278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A052905 (n + 3)).toNat

end

end A202887.P8478814637879147278

/-! ## A202887.P1884769479484482808

`A202889(A046691(n+4)-1)`
-/

namespace A202887.P1884769479484482808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A046691 (n + 4) - 1).toNat

end

end A202887.P1884769479484482808

/-! ## A202887.P6932537195985963752

`A202889(eq[5, A025581(n)]+1)`
-/

namespace A202887.P6932537195985963752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A202887.P6932537195985963752

/-! ## A202887.P7911308643054936481

`A202889(Δ[A023545(n+2)]-1)`
-/

namespace A202887.P7911308643054936481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (f1 (n + 1) - f1 n - 1).toNat

end

end A202887.P7911308643054936481

/-!
# A202888: Number of nX7 0..2 arrays with every nonzero element less than or equal to some horizontal or vertical neighbor.

The programs for A202888, there is no canonical definition to state claims against.
-/

/-! ## A202888.P10477140491766094384

`A202889(eq[8, A131818(n+1)])`
-/

namespace A202888.P10477140491766094384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202888.P10477140491766094384

/-! ## A202888.P15284363740247693320

`A202889(A374008(n+1))`
-/

namespace A202888.P15284363740247693320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (A374008 (n + 1)).toNat

end

end A202888.P15284363740247693320

/-! ## A202888.P12936831361066854317

`A202889(eq[10, A185782(n+1)])`
-/

namespace A202888.P12936831361066854317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202888.P12936831361066854317

/-!
# A202890: Number of (n+2) X (n+2) binary arrays avoiding patterns 001 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202890, there is no canonical definition to state claims against.
-/

/-! ## A202890.P12856555348011097146

`A202898(∑[4*n]+1)`
-/

namespace A202890.P12856555348011097146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202890.P12856555348011097146

/-! ## A202890.P6654234389591175469

`record[gcd(A114327(n), A202898(n+1))]`
-/

namespace A202890.P6654234389591175469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A202898 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202890.P6654234389591175469

/-! ## A202890.P11235794859579640311

`A202898(A001844(n))+A180160(n)`
-/

namespace A202890.P11235794859579640311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A001844 n).toNat + A180160 n

end

end A202890.P11235794859579640311

/-! ## A202890.P16601583285892269058

`A196879(n)*A202898(A001844(n))`
-/

namespace A202890.P16601583285892269058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 n * A202898 (A001844 n).toNat

end

end A202890.P16601583285892269058

/-! ## A202890.P8182815268181054501

`or(A202898(A001844(n)), A316866(n))`
-/

namespace A202890.P8182815268181054501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A202898 (A001844 n).toNat) (A316866 n)

end

end A202890.P8182815268181054501

/-!
# A202891: Number of (n+2)X3 binary arrays avoiding patterns 001 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202891, there is no canonical definition to state claims against.
-/

/-! ## A202891.P4308762810039988419

`A202898(∑[n]+1)`
-/

namespace A202891.P4308762810039988419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202891.P4308762810039988419

/-! ## A202891.P6735895009623892153

`record[A202898(n+1)/A056940(n)]`
-/

namespace A202891.P6735895009623892153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202898 (n + 1) : ℚ) / (A056940 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202891.P6735895009623892153

/-! ## A202891.P4549752698956075423

`record[A202898(n+1)/A063007(n)]`
-/

namespace A202891.P4549752698956075423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202898 (n + 1) : ℚ) / (A063007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202891.P4549752698956075423

/-! ## A202891.P9552933097186430995

`record[gcd(A002262(n), A202898(n+1))]`
-/

namespace A202891.P9552933097186430995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202898 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202891.P9552933097186430995

/-! ## A202891.P11445711755949551441

`record[(2-A007318(n))*A202898(n+1)]`
-/

namespace A202891.P11445711755949551441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A007318 n) * A202898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202891.P11445711755949551441

/-!
# A202892: Number of (n+2) X 4 binary arrays avoiding patterns 001 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202892, there is no canonical definition to state claims against.
-/

/-! ## A202892.P590649169382518256

`A202898(∑[n+1]+2)`
-/

namespace A202892.P590649169382518256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202892.P590649169382518256

/-! ## A202892.P1867950369230274192

`record[gcd(A002262(n), A202898(n+2))]`
-/

namespace A202892.P1867950369230274192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202898 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202892.P1867950369230274192

/-! ## A202892.P16445992372950152829

`record[A202898(A133263(A028242(n)))]`
-/

namespace A202892.P16445992372950152829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202892.P16445992372950152829

/-! ## A202892.P3940195458236696433

`record[A202898(A133263(A123108(n)))]`
-/

namespace A202892.P3940195458236696433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A133263 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202892.P3940195458236696433

/-! ## A202892.P563620715271502798

`A202898(A133263(n+1))%A202888(n+1)`
-/

namespace A202892.P563620715271502798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202898 (A133263 (n + 1)).toNat) (A202888 (n + 1))

end

end A202892.P563620715271502798

/-!
# A202893: Number of (n+2)X5 binary arrays avoiding patterns 001 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202893, there is no canonical definition to state claims against.
-/

/-! ## A202893.P12277515453630964194

`A202898(∑[n+2]+4)`
-/

namespace A202893.P12277515453630964194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202893.P12277515453630964194

/-! ## A202893.P15449016775121839828

`A202898(A167614(n+1))+A025443(n)`
-/

namespace A202893.P15449016775121839828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A167614 (n + 1)).toNat + A025443 n

end

end A202893.P15449016775121839828

/-! ## A202893.P8883965338077208848

`A202898(A167614(n+1))+A025469(n)`
-/

namespace A202893.P8883965338077208848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A167614 (n + 1)).toNat + A025469 n

end

end A202893.P8883965338077208848

/-! ## A202893.P7812807947854552772

`lcm(A033999(n), A202898(A167614(n+1)))`
-/

namespace A202893.P7812807947854552772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202898 (A167614 (n + 1)).toNat)

end

end A202893.P7812807947854552772

/-! ## A202893.P6059457901277697796

`A202898(A167614(n+1))+A034539(n+1)`
-/

namespace A202893.P6059457901277697796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A167614 (n + 1)).toNat + A034539 (n + 1)

end

end A202893.P6059457901277697796

/-!
# A202894: Number of (n+2)X6 binary arrays avoiding patterns 001 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202894, there is no canonical definition to state claims against.
-/

/-! ## A202894.P296785628849529052

`A202898(A141214(n)+7)`
-/

namespace A202894.P296785628849529052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A141214 n + 7).toNat

end

end A202894.P296785628849529052

/-! ## A202894.P5905548115982679218

`A202898(A055999(n)+10)`
-/

namespace A202894.P5905548115982679218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A055999 n + 10).toNat

end

end A202894.P5905548115982679218

/-! ## A202894.P16803102939012823668

`A202898(A167614(n+2)+1)`
-/

namespace A202894.P16803102939012823668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A167614 (n + 2) + 1).toNat

end

end A202894.P16803102939012823668

/-! ## A202894.P13522967465753942958

`A202898(A112355(n+1)+4)`
-/

namespace A202894.P13522967465753942958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A112355 (n + 1) + 4).toNat

end

end A202894.P13522967465753942958

/-! ## A202894.P12278409240706654348

`A202898(A133263(n+3)+2)`
-/

namespace A202894.P12278409240706654348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A133263 (n + 3) + 2).toNat

end

end A202894.P12278409240706654348

/-!
# A202895: Number of (n+2)X7 binary arrays avoiding patterns 001 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202895, there is no canonical definition to state claims against.
-/

/-! ## A202895.P5447764129083996344

`A202898(A167499(n+3))`
-/

namespace A202895.P5447764129083996344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A167499 (n + 3)).toNat

end

end A202895.P5447764129083996344

/-! ## A202895.P14032726347149051771

`A202898(eq[6, A131818(n+1)])`
-/

namespace A202895.P14032726347149051771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202895.P14032726347149051771

/-! ## A202895.P1001466853302446351

`A202898(A374005(n+1))`
-/

namespace A202895.P1001466853302446351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A374005 (n + 1)).toNat

end

end A202895.P1001466853302446351

/-! ## A202895.P16690265173712562281

`A202898(A046691(n+3))`
-/

namespace A202895.P16690265173712562281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A046691 (n + 3)).toNat

end

end A202895.P16690265173712562281

/-! ## A202895.P4424133172908472596

`A202898(A056115(n)+11)`
-/

namespace A202895.P4424133172908472596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A056115 n + 11).toNat

end

end A202895.P4424133172908472596

/-!
# A202896: Number of (n+2)X8 binary arrays avoiding patterns 001 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202896, there is no canonical definition to state claims against.
-/

/-! ## A202896.P7615240236448044881

`A202898(eq[7, A131818(n+1)])`
-/

namespace A202896.P7615240236448044881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202896.P7615240236448044881

/-! ## A202896.P6078369083495828444

`A202898(A374007(n+1))`
-/

namespace A202896.P6078369083495828444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A374007 (n + 1)).toNat

end

end A202896.P6078369083495828444

/-! ## A202896.P16296142722943174322

`A202898(eq[3, A219347(n)])`
-/

namespace A202896.P16296142722943174322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202896.P16296142722943174322

/-! ## A202896.P13180942897867734334

`A202898(eq[5, A193592(n)])`
-/

namespace A202896.P13180942897867734334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202896.P13180942897867734334

/-! ## A202896.P8409109672764014915

`A202898(eq[6, A200370(n+1)])`
-/

namespace A202896.P8409109672764014915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202896.P8409109672764014915

/-!
# A202897: Number of (n+2)X9 binary arrays avoiding patterns 001 and 010 in rows, columns and nw-to-se diagonals.

The programs for A202897, there is no canonical definition to state claims against.
-/

/-! ## A202897.P34598564602588924

`A202898(A056119(n)+28)`
-/

namespace A202897.P34598564602588924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A056119 n + 28).toNat

end

end A202897.P34598564602588924

/-! ## A202897.P8334950905756095659

`A202898(eq[8, A131818(n+1)])`
-/

namespace A202897.P8334950905756095659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202897.P8334950905756095659

/-! ## A202897.P10017589635085983861

`A202898(A374008(n+1))`
-/

namespace A202897.P10017589635085983861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A374008 (n + 1)).toNat

end

end A202897.P10017589635085983861

/-! ## A202897.P746257414176877451

`A202898(A055999(n+4))`
-/

namespace A202897.P746257414176877451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (A055999 (n + 4)).toNat

end

end A202897.P746257414176877451

/-! ## A202897.P1344662388463362360

`A202898(eq[4, A219347(n)])`
-/

namespace A202897.P1344662388463362360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202897.P1344662388463362360

/-!
# A202899: Number of n X n 0..1 arrays with every one equal to some NW, E or S neighbor.

The programs for A202899, there is no canonical definition to state claims against.
-/

/-! ## A202899.P10644153987526046806

`A202906(∑[4*n]+1)`
-/

namespace A202899.P10644153987526046806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202906 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202899.P10644153987526046806

/-! ## A202899.P5129107399127839103

`record[gcd(A114327(n), A202906(n+1))]`
-/

namespace A202899.P5129107399127839103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A202906 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202899.P5129107399127839103

/-! ## A202899.P8672929841367367853

`gcd(A000038(n), A202906(A001844(n)))`
-/

namespace A202899.P8672929841367367853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202906 (A001844 n).toNat)

end

end A202899.P8672929841367367853

/-! ## A202899.P3807717000394974326

`or(A000007(n), A202906(A001844(n)))`
-/

namespace A202899.P3807717000394974326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A202906 (A001844 n).toNat)

end

end A202899.P3807717000394974326

/-! ## A202899.P1496802650768033024

`A001221(xor(n, n+1)+1)*A202906(A001844(n))`
-/

namespace A202899.P1496802650768033024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.xor n (n + 1) + 1) * A202906 (A001844 n).toNat

end

end A202899.P1496802650768033024

