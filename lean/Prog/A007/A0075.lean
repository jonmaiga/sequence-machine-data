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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A007500: Primes whose reversal in base 10 is also prime (called "palindromic primes" by David Wells, although that name usually refers to A002385). Also called reversible primes.

The programs for A007500, there is no canonical definition to state claims against.
-/

/-! ## A007500.P2471901553461300771

`A095180(A388056(n+1))`
-/

namespace A007500.P2471901553461300771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095180 (A388056 (n + 1)).toNat

end

end A007500.P2471901553461300771

/-! ## A007500.P12121191220162064708

`∪[A002385(n+1), A006567(n+1)]`
-/

namespace A007500.P12121191220162064708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P12121191220162064708

/-! ## A007500.P3140350090206261327

`p?[A085869(n+1)]`
-/

namespace A007500.P3140350090206261327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007500.P3140350090206261327

/-! ## A007500.P15124108692372741758

`∩[A000040(n+1), A085869(n+1)]`
-/

namespace A007500.P15124108692372741758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P15124108692372741758

/-! ## A007500.P14056380290557811723

`p?[A095179(n+1)]`
-/

namespace A007500.P14056380290557811723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007500.P14056380290557811723

/-! ## A007500.P4667533084154747204

`record[A006530(A085869(n+2))]`
-/

namespace A007500.P4667533084154747204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085869 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007500.P4667533084154747204

/-! ## A007500.P10364077713014258434

`filter[A095179(n+1), A010051(#)]`
-/

namespace A007500.P10364077713014258434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A007500.P10364077713014258434

/-! ## A007500.P13677975119116243268

`∩[A000040(n+1), A095179(n+1)]`
-/

namespace A007500.P13677975119116243268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P13677975119116243268

/-! ## A007500.P6087321977529990845

`∩[A008578(n+1), A095179(n+1)]`
-/

namespace A007500.P6087321977529990845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P6087321977529990845

/-! ## A007500.P14122688796511407903

`∩[A033946(n+1), A095179(n+1)]`
-/

namespace A007500.P14122688796511407903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P14122688796511407903

/-! ## A007500.P16004108432690559578

`∩[A046022(n+1), A095179(n+1)]`
-/

namespace A007500.P16004108432690559578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P16004108432690559578

/-! ## A007500.P8607205292210674094

`∩[A051948(n+1), A095179(n+1)]`
-/

namespace A007500.P8607205292210674094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P8607205292210674094

/-! ## A007500.P12631616731494474004

`∩[A053813(n+1), A095179(n+1)]`
-/

namespace A007500.P12631616731494474004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P12631616731494474004

/-! ## A007500.P4697197155724659968

`∩[A062972(n+1), A095179(n+1)]`
-/

namespace A007500.P4697197155724659968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P4697197155724659968

/-! ## A007500.P9391270569921381609

`∩[A066050(n+1), A095179(n+1)]`
-/

namespace A007500.P9391270569921381609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P9391270569921381609

/-! ## A007500.P3770450213484199902

`∩[A067126(n+1), A095179(n+1)]`
-/

namespace A007500.P3770450213484199902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P3770450213484199902

/-! ## A007500.P5538946701988161159

`∩[A116974(n+1), A095179(n+1)]`
-/

namespace A007500.P5538946701988161159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P5538946701988161159

/-! ## A007500.P11802619880758055468

`p?[A000040(n+1)*A001222(A004087(n+1))]`
-/

namespace A007500.P11802619880758055468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007500.P11802619880758055468

/-! ## A007500.P8940893972354875972

`∩[A161597(n+1), A095179(n+1)]`
-/

namespace A007500.P8940893972354875972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007500.P8940893972354875972

/-!
# A007501: a(0) = 2; for n >= 0, a(n+1) = a(n)*(a(n)+1)/2.

The programs for A007501, the canonical program `A007501.P14834799772468796310` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007501 has offset 0).

The definition of A007501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007501.P16977992665847638052

`a(n-1)*(1+a(n-1))/2` with `a(0)=2`
-/

namespace A007501.P16977992665847638052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * (1 + a (n - 1)) / 2

end

end A007501.P16977992665847638052

namespace A007501

/-- `a(n-1)*(1+a(n-1))/2` -/
def P16977992665847638052.Spec : Prop :=
  ∀ n, P16977992665847638052.a n = (A007501 n : ℚ)

end A007501

/-! ## A007501.P14834799772468796310

`A006893(n+1)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007501

/-- `A006893(n+1)+1` -/
def P14834799772468796310.Spec : Prop :=
  ∀ n, P14834799772468796310.a n = A007501 n

theorem P14834799772468796310.correct : P14834799772468796310.Spec := by
  intro n
  simp only [A007501]

end A007501

/-! ## A007501.P6388365364530762779

`A145272(n)+a(n-1)` with `a(0)=2`
-/

namespace A007501.P6388365364530762779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A145272 n + a (n - 1)

end

end A007501.P6388365364530762779

namespace A007501

/-- `A145272(n)+a(n-1)` -/
def P6388365364530762779.Spec : Prop :=
  ∀ n, P6388365364530762779.a n = A007501 n

end A007501

/-! ## A007501.P13008116289700293141

`C(a(n-1)+1, 2)` with `a(0)=2`
-/

namespace A007501.P13008116289700293141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (a (n - 1) + 1) 2

end

end A007501.P13008116289700293141

namespace A007501

/-- `C(a(n-1)+1, 2)` -/
def P13008116289700293141.Spec : Prop :=
  ∀ n, (P13008116289700293141.a n : ℤ) = A007501 n

end A007501

/-! ## A007501.P1611262339612081427

`C(1-floor(-a(n-1)), 2)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A007501.P1611262339612081427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (1 - (-(a (n - 1) : ℤ))).toNat 2

end

end A007501.P1611262339612081427

namespace A007501

/-- `C(1-floor(-a(n-1)), 2)` -/
def P1611262339612081427.Spec : Prop :=
  ∀ n, (P1611262339612081427.a n : ℤ) = A007501 n

end A007501

/-!
# A007502: Les Marvin sequence: a(n) = F(n) + (n-1)*F(n-1), F() = Fibonacci numbers.

The programs for A007502, the canonical program `A007502.P10849111920373228728` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007502 has offset 1).

The definition of A007502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)+n*A000045(n)` (program `A007502.P10849111920373228728`, by `A007502.P10849111920373228728.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007502.P10849111920373228728

`A000045(n+1)+n*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007502

/-- `A000045(n+1)+n*A000045(n)` -/
def P10849111920373228728.Spec : Prop :=
  ∀ n, P10849111920373228728.a n = A007502 (n + 1)

theorem P10849111920373228728.correct : P10849111920373228728.Spec := by
  intro n
  simp only [A007502, Nat.add_sub_cancel]

end A007502

/-! ## A007502.P4288765862239000825

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A007502.P4288765862239000825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 9] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A007502.P4288765862239000825

namespace A007502

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P4288765862239000825.Spec : Prop :=
  ∀ n, P4288765862239000825.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P15264036136577111

`ogf((1-x^2+x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A007502.P15264036136577111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1] [1, -2, -1, 2, 1] n

end

end A007502.P15264036136577111

namespace A007502

/-- `ogf((1-x^2+x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P15264036136577111.Spec : Prop :=
  ∀ n, P15264036136577111.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P11903812049211842215

`Δ[A000032(n)]+a(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A007502.P11903812049211842215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (n + 1) - f1 n + (a (n - 2) + a (n - 1))

end

end A007502.P11903812049211842215

namespace A007502

/-- `Δ[A000032(n)]+a(n-2)+a(n-1)` -/
def P11903812049211842215.Spec : Prop :=
  ∀ n, P11903812049211842215.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P16821575690617704694

`a(n-1)+A000032(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A007502.P16821575690617704694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A000032 (n - 1) + a (n - 2))

end

end A007502.P16821575690617704694

namespace A007502

/-- `a(n-1)+A000032(n-1)+a(n-2)` -/
def P16821575690617704694.Spec : Prop :=
  ∀ n, P16821575690617704694.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P12118282108976060307

`A055244(n)+A010049(n)`
-/

namespace A007502.P12118282108976060307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n + A010049 n

end

end A007502.P12118282108976060307

namespace A007502

/-- `A055244(n)+A010049(n)` -/
def P12118282108976060307.Spec : Prop :=
  ∀ n, P12118282108976060307.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P6529149668995731861

`A190062(n)+A001595(n)`
-/

namespace A007502.P6529149668995731861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 n + A001595 n

end

end A007502.P6529149668995731861

namespace A007502

/-- `A190062(n)+A001595(n)` -/
def P6529149668995731861.Spec : Prop :=
  ∀ n, P6529149668995731861.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P5493203802893407193

`A212804(n)+A099920(n)`
-/

namespace A007502.P5493203802893407193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A099920 n

end

end A007502.P5493203802893407193

namespace A007502

/-- `A212804(n)+A099920(n)` -/
def P5493203802893407193.Spec : Prop :=
  ∀ n, P5493203802893407193.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P6939424590662418019

`A324129(n)+A074331(n)`
-/

namespace A007502.P6939424590662418019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324129 n + A074331 n

end

end A007502.P6939424590662418019

namespace A007502

/-- `A324129(n)+A074331(n)` -/
def P6939424590662418019.Spec : Prop :=
  ∀ n, P6939424590662418019.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P8125329168845229659

`A208354(n)+∑[A010049(n)]`
-/

namespace A007502.P8125329168845229659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007502.P8125329168845229659

namespace A007502

/-- `A208354(n)+∑[A010049(n)]` -/
def P8125329168845229659.Spec : Prop :=
  ∀ n, P8125329168845229659.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P2107701418037873411

`A045925(n)+∑[A212804(n)]`
-/

namespace A007502.P2107701418037873411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007502.P2107701418037873411

namespace A007502

/-- `A045925(n)+∑[A212804(n)]` -/
def P2107701418037873411.Spec : Prop :=
  ∀ n, P2107701418037873411.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P1153892885597598694

`A055244(n)+Δ[A001629(n)]`
-/

namespace A007502.P1153892885597598694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n + (f1 (n + 1) - f1 n)

end

end A007502.P1153892885597598694

namespace A007502

/-- `A055244(n)+Δ[A001629(n)]` -/
def P1153892885597598694.Spec : Prop :=
  ∀ n, P1153892885597598694.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P6986412044334883122

`A045925(n)+A000045(n+1)`
-/

namespace A007502.P6986412044334883122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + A000045 (n + 1)

end

end A007502.P6986412044334883122

namespace A007502

/-- `A045925(n)+A000045(n+1)` -/
def P6986412044334883122.Spec : Prop :=
  ∀ n, P6986412044334883122.a n = A007502 (n + 1)

theorem P6986412044334883122.correct : P6986412044334883122.Spec := by
  intro n
  simp only [A007502, Nat.add_sub_cancel, A007502.P6986412044334883122.a, A007502.P10849111920373228728.a, A000045, A000045.P11838749114346432762.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007502

/-! ## A007502.P8575825482113054505

`A120940(n)+A066983(n+1)`
-/

namespace A007502.P8575825482113054505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120940 n + A066983 (n + 1)

end

end A007502.P8575825482113054505

namespace A007502

/-- `A120940(n)+A066983(n+1)` -/
def P8575825482113054505.Spec : Prop :=
  ∀ n, P8575825482113054505.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P17564277855130322181

`A208354(n)+A001629(n+1)`
-/

namespace A007502.P17564277855130322181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + A001629 (n + 1)

end

end A007502.P17564277855130322181

namespace A007502

/-- `A208354(n)+A001629(n+1)` -/
def P17564277855130322181.Spec : Prop :=
  ∀ n, P17564277855130322181.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P13391429637513424393

`A264147(n+1)+A000032(n)`
-/

namespace A007502.P13391429637513424393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 1) + A000032 n

end

end A007502.P13391429637513424393

namespace A007502

/-- `A264147(n+1)+A000032(n)` -/
def P13391429637513424393.Spec : Prop :=
  ∀ n, P13391429637513424393.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P4678756855479372971

`A094588(n+1)-A000045(n)`
-/

namespace A007502.P4678756855479372971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) - A000045 n

end

end A007502.P4678756855479372971

namespace A007502

/-- `A094588(n+1)-A000045(n)` -/
def P4678756855479372971.Spec : Prop :=
  ∀ n, P4678756855479372971.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P16748721875815045275

`A152163(n)+A006490(n+2)`
-/

namespace A007502.P16748721875815045275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A006490 (n + 2)

end

end A007502.P16748721875815045275

namespace A007502

/-- `A152163(n)+A006490(n+2)` -/
def P16748721875815045275.Spec : Prop :=
  ∀ n, P16748721875815045275.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P11916888959744989098

`A212804(n+2)+A045925(n)`
-/

namespace A007502.P11916888959744989098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A045925 n

end

end A007502.P11916888959744989098

namespace A007502

/-- `A212804(n+2)+A045925(n)` -/
def P11916888959744989098.Spec : Prop :=
  ∀ n, P11916888959744989098.a n = A007502 (n + 1)

end A007502

/-! ## A007502.P2510647657537132593

`A122491(n)+A000071(n+3)`
-/

namespace A007502.P2510647657537132593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 n + A000071 (n + 3)

end

end A007502.P2510647657537132593

namespace A007502

/-- `A122491(n)+A000071(n+3)` -/
def P2510647657537132593.Spec : Prop :=
  ∀ n, P2510647657537132593.a n = A007502 (n + 1)

end A007502

/-!
# A007503: Number of subgroups of dihedral group: sigma(n) + d(n).

The programs for A007503, the canonical program `A007503.P13484425310514315912` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007503 has offset 1).

The definition of A007503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007503.P13484425310514315912

`A000005(n+1)+A000203(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007503

/-- `A000005(n+1)+A000203(n+1)` -/
def P13484425310514315912.Spec : Prop :=
  ∀ n, P13484425310514315912.a n = A007503 (n + 1)

theorem P13484425310514315912.correct : P13484425310514315912.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel]

end A007503

/-! ## A007503.P16114003381835571984

`A348219(n+1)+A386438(n+1)`
-/

namespace A007503.P16114003381835571984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348219 (n + 1) + A386438 (n + 1)

end

end A007503.P16114003381835571984

namespace A007503

/-- `A348219(n+1)+A386438(n+1)` -/
def P16114003381835571984.Spec : Prop :=
  ∀ n, P16114003381835571984.a n = A007503 (n + 1)

theorem P16114003381835571984.correct : P16114003381835571984.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P16114003381835571984.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A348219, A348219.P15428353027639764716.a, A386438, A386438.P6678444631215707728.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007503

/-! ## A007503.P7817826120145987748

`∑{d}[n+1, 1+#]`
-/

namespace A007503.P7817826120145987748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 + d)

end

end A007503.P7817826120145987748

namespace A007503

/-- `∑{d}[n+1, 1+#]` -/
def P7817826120145987748.Spec : Prop :=
  ∀ n, (P7817826120145987748.a n : ℤ) = A007503 (n + 1)

end A007503

/-! ## A007503.P10528652339719465888

`Δ[A257644(n)]`
-/

namespace A007503.P10528652339719465888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007503.P10528652339719465888

namespace A007503

/-- `Δ[A257644(n)]` -/
def P10528652339719465888.Spec : Prop :=
  ∀ n, P10528652339719465888.a n = A007503 (n + 1)

end A007503

/-! ## A007503.P8844884775921348587

`A163163(n+1)+1+n`
-/

namespace A007503.P8844884775921348587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) + 1 + (n : ℤ)

end

end A007503.P8844884775921348587

namespace A007503

/-- `A163163(n+1)+1+n` -/
def P8844884775921348587.Spec : Prop :=
  ∀ n, P8844884775921348587.a n = A007503 (n + 1)

theorem P8844884775921348587.correct : P8844884775921348587.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P8844884775921348587.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A163163, A163163.P5673829929796067677.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007503

/-! ## A007503.P12530795018216109182

`2/(n+1)*A309731(n+1)`
-/

namespace A007503.P12530795018216109182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A309731 (n + 1) : ℚ)

end

end A007503.P12530795018216109182

namespace A007503

/-- `2/(n+1)*A309731(n+1)` -/
def P12530795018216109182.Spec : Prop :=
  ∀ n, P12530795018216109182.a n = (A007503 (n + 1) : ℚ)

end A007503

/-! ## A007503.P13225467149527518005

`Δ[A160664(n)+A006218(n)]`
-/

namespace A007503.P13225467149527518005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007503.P13225467149527518005

namespace A007503

/-- `Δ[A160664(n)+A006218(n)]` -/
def P13225467149527518005.Spec : Prop :=
  ∀ n, P13225467149527518005.a n = A007503 (n + 1)

end A007503

/-! ## A007503.P15221500287714553318

`A257644(n+1)-A257644(n)`
-/

namespace A007503.P15221500287714553318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 (n + 1) - A257644 n

end

end A007503.P15221500287714553318

namespace A007503

/-- `A257644(n+1)-A257644(n)` -/
def P15221500287714553318.Spec : Prop :=
  ∀ n, P15221500287714553318.a n = A007503 (n + 1)

end A007503

/-! ## A007503.P10784083029767119772

`A000203(n+1)+Δ[A006218(n)]`
-/

namespace A007503.P10784083029767119772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007503.P10784083029767119772

namespace A007503

/-- `A000203(n+1)+Δ[A006218(n)]` -/
def P10784083029767119772.Spec : Prop :=
  ∀ n, P10784083029767119772.a n = A007503 (n + 1)

end A007503

/-! ## A007503.P10207789511617416648

`A000203(n+1)+Δ[A054519(n)]`
-/

namespace A007503.P10207789511617416648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007503.P10207789511617416648

namespace A007503

/-- `A000203(n+1)+Δ[A054519(n)]` -/
def P10207789511617416648.Spec : Prop :=
  ∀ n, P10207789511617416648.a n = A007503 (n + 1)

end A007503

/-! ## A007503.P6992424946608735270

`A000005(n+1)+Δ[A160664(n)]`
-/

namespace A007503.P6992424946608735270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007503.P6992424946608735270

namespace A007503

/-- `A000005(n+1)+Δ[A160664(n)]` -/
def P6992424946608735270.Spec : Prop :=
  ∀ n, P6992424946608735270.a n = A007503 (n + 1)

end A007503

/-! ## A007503.P4937276235313713238

`A062249(n+1)+A001065(n+1)`
-/

namespace A007503.P4937276235313713238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) + A001065 (n + 1)

end

end A007503.P4937276235313713238

namespace A007503

/-- `A062249(n+1)+A001065(n+1)` -/
def P4937276235313713238.Spec : Prop :=
  ∀ n, P4937276235313713238.a n = A007503 (n + 1)

theorem P4937276235313713238.correct : P4937276235313713238.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P4937276235313713238.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A062249, A062249.P5473932307129171226.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007503

/-! ## A007503.P2707934987969294124

`A061468(n+1)+A051612(n+1)`
-/

namespace A007503.P2707934987969294124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) + A051612 (n + 1)

end

end A007503.P2707934987969294124

namespace A007503

/-- `A061468(n+1)+A051612(n+1)` -/
def P2707934987969294124.Spec : Prop :=
  ∀ n, P2707934987969294124.a n = A007503 (n + 1)

theorem P2707934987969294124.correct : P2707934987969294124.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P2707934987969294124.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A061468, A061468.P5735709615131522244.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007503

/-! ## A007503.P6419488314672381530

`A065608(n+1)+A062011(n+1)`
-/

namespace A007503.P6419488314672381530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + A062011 (n + 1)

end

end A007503.P6419488314672381530

namespace A007503

/-- `A065608(n+1)+A062011(n+1)` -/
def P6419488314672381530.Spec : Prop :=
  ∀ n, P6419488314672381530.a n = A007503 (n + 1)

theorem P6419488314672381530.correct : P6419488314672381530.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P6419488314672381530.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062011, A062011.P17525320077853469406.a, A065608, A065608.P12445239359989980431.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007503

/-! ## A007503.P13160675943845905002

`A079247(n+1)+A069734(n+1)`
-/

namespace A007503.P13160675943845905002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) + A069734 (n + 1)

end

end A007503.P13160675943845905002

namespace A007503

/-- `A079247(n+1)+A069734(n+1)` -/
def P13160675943845905002.Spec : Prop :=
  ∀ n, P13160675943845905002.a n = A007503 (n + 1)

end A007503

/-! ## A007503.P10691526722449004066

`A140482(n+1)+A033880(n+1)`
-/

namespace A007503.P10691526722449004066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140482 (n + 1) + A033880 (n + 1)

end

end A007503.P10691526722449004066

namespace A007503

/-- `A140482(n+1)+A033880(n+1)` -/
def P10691526722449004066.Spec : Prop :=
  ∀ n, P10691526722449004066.a n = A007503 (n + 1)

theorem P10691526722449004066.correct : P10691526722449004066.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P10691526722449004066.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A140482, A140482.P11303161972345714232.a, A001065, A001065.P4097147489331274860.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007503

/-! ## A007503.P13065904612467910671

`A152991(n+1)+A082514(n+1)`
-/

namespace A007503.P13065904612467910671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152991 (n + 1) + A082514 (n + 1)

end

end A007503.P13065904612467910671

namespace A007503

/-- `A152991(n+1)+A082514(n+1)` -/
def P13065904612467910671.Spec : Prop :=
  ∀ n, P13065904612467910671.a n = A007503 (n + 1)

theorem P13065904612467910671.correct : P13065904612467910671.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P13065904612467910671.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A082514, A082514.P13229630575248176506.a, A152991, A152991.P96755729766492902.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007503

/-! ## A007503.P1623584631868752782

`A380449(n+1)+A001221(n+1)`
-/

namespace A007503.P1623584631868752782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380449 (n + 1) + A001221 (n + 1)

end

end A007503.P1623584631868752782

namespace A007503

/-- `A380449(n+1)+A001221(n+1)` -/
def P1623584631868752782.Spec : Prop :=
  ∀ n, P1623584631868752782.a n = A007503 (n + 1)

theorem P1623584631868752782.correct : P1623584631868752782.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P1623584631868752782.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A380449, A380449.P8792025045371275510.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007503

/-! ## A007503.P14847736056352986968

`A349211(n+1)+A348915(n+1)`
-/

namespace A007503.P14847736056352986968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349211 (n + 1) + A348915 (n + 1)

end

end A007503.P14847736056352986968

namespace A007503

/-- `A349211(n+1)+A348915(n+1)` -/
def P14847736056352986968.Spec : Prop :=
  ∀ n, P14847736056352986968.a n = A007503 (n + 1)

end A007503

/-! ## A007503.P119970498818049571

`A394651(n+1)+A394085(n+1)`
-/

namespace A007503.P119970498818049571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394651 (n + 1) + A394085 (n + 1)

end

end A007503.P119970498818049571

namespace A007503

/-- `A394651(n+1)+A394085(n+1)` -/
def P119970498818049571.Spec : Prop :=
  ∀ n, P119970498818049571.a n = A007503 (n + 1)

theorem P119970498818049571.correct : P119970498818049571.Spec := by
  intro n
  simp only [A007503, Nat.add_sub_cancel, A007503.P119970498818049571.a, A007503.P13484425310514315912.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A394085, A394085.P10152136709517601280.a, A394651, A394651.P12518876512393771500.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A056169, A056169.P17430176249366647977.a, A063956, A063956.P13509344762830228615.f2, A063956.P13509344762830228615.f4, A063956.P13509344762830228615.f3, A063956.P13509344762830228615.f1, A063956.P13509344762830228615.a, A001221, A001221.P10258181745752134128.a, A055231, A055231.P8962300905713718501.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A059841, A059841.P7264174615531153985.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007503

/-!
# A007504: Sum of the first n primes.

The programs for A007504, the canonical program `A007504.P14310834286015847203` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007504 has offset 0).

The definition of A007504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007504.P14310834286015847203

`A014284(n+1)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007504

/-- `A014284(n+1)-1` -/
def P14310834286015847203.Spec : Prop :=
  ∀ n, P14310834286015847203.a n = A007504 n

theorem P14310834286015847203.correct : P14310834286015847203.Spec := by
  intro n
  simp only [A007504]

end A007504

/-! ## A007504.P16529107901788736493

`∑[A182986(n+1)]`
-/

namespace A007504.P16529107901788736493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007504.P16529107901788736493

namespace A007504

/-- `∑[A182986(n+1)]` -/
def P16529107901788736493.Spec : Prop :=
  ∀ n, P16529107901788736493.a n = A007504 n

end A007504

/-! ## A007504.P14609132221005997454

`∑[∑{d}[n, A007444(#)]]`
-/

namespace A007504.P14609132221005997454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007444 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007504.P14609132221005997454

namespace A007504

/-- `∑[∑{d}[n, A007444(#)]]` -/
def P14609132221005997454.Spec : Prop :=
  ∀ n, P14609132221005997454.a n = A007504 n

end A007504

/-! ## A007504.P10741629009948194979

`A036439(n+1)-2`
-/

namespace A007504.P10741629009948194979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - 2

end

end A007504.P10741629009948194979

namespace A007504

/-- `A036439(n+1)-2` -/
def P10741629009948194979.Spec : Prop :=
  ∀ n, P10741629009948194979.a n = A007504 n

end A007504

/-! ## A007504.P5475654598772356158

`A227547(n+1)-3`
-/

namespace A007504.P5475654598772356158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 1) - 3

end

end A007504.P5475654598772356158

namespace A007504

/-- `A227547(n+1)-3` -/
def P5475654598772356158.Spec : Prop :=
  ∀ n, P5475654598772356158.a n = A007504 n

end A007504

/-! ## A007504.P15001896320202016881

`∑[A008578(n+1)]-1`
-/

namespace A007504.P15001896320202016881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007504.P15001896320202016881

namespace A007504

/-- `∑[A008578(n+1)]-1` -/
def P15001896320202016881.Spec : Prop :=
  ∀ n, P15001896320202016881.a n = A007504 n

end A007504

/-! ## A007504.P10227059078162883633

`∑[A299763(n+1)-1]`
-/

namespace A007504.P10227059078162883633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007504.P10227059078162883633

namespace A007504

/-- `∑[A299763(n+1)-1]` -/
def P10227059078162883633.Spec : Prop :=
  ∀ n, P10227059078162883633.a n = A007504 n

end A007504

/-! ## A007504.P16511398202508291255

`∑[A028815(n)-1]-1`
-/

namespace A007504.P16511398202508291255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007504.P16511398202508291255

namespace A007504

/-- `∑[A028815(n)-1]-1` -/
def P16511398202508291255.Spec : Prop :=
  ∀ n, P16511398202508291255.a n = A007504 n

end A007504

/-! ## A007504.P16408079166867087249

`A110895(n+1)-(n+1)`
-/

namespace A007504.P16408079166867087249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 1) - (n + 1 : ℤ)

end

end A007504.P16408079166867087249

namespace A007504

/-- `A110895(n+1)-(n+1)` -/
def P16408079166867087249.Spec : Prop :=
  ∀ n, P16408079166867087249.a n = A007504 n

end A007504

/-! ## A007504.P6645039631599239035

`a(n-1)+A000040(n)` with `a(0)=0`
-/

namespace A007504.P6645039631599239035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000040 n

end

end A007504.P6645039631599239035

namespace A007504

/-- `a(n-1)+A000040(n)` -/
def P6645039631599239035.Spec : Prop :=
  ∀ n, P6645039631599239035.a n = A007504 n

end A007504

/-! ## A007504.P16971047072973574212

`∑[A001747(n+1)/2]-1`
-/

namespace A007504.P16971047072973574212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007504.P16971047072973574212

namespace A007504

/-- `∑[A001747(n+1)/2]-1` -/
def P16971047072973574212.Spec : Prop :=
  ∀ n, P16971047072973574212.a n = (A007504 n : ℚ)

end A007504

/-! ## A007504.P11841059532402255911

`∑[A000040(gcd(n, n*a(n-1)))]` with `a(0)=0`
-/

namespace A007504.P11841059532402255911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000040 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007504.P11841059532402255911

namespace A007504

/-- `∑[A000040(gcd(n, n*a(n-1)))]` -/
def P11841059532402255911.Spec : Prop :=
  ∀ n, P11841059532402255911.a n = A007504 n

end A007504

/-! ## A007504.P6185312567291850662

`∑[A000040(n-and(2, a(n-1)²))]` with `a(0)=0`
-/

namespace A007504.P6185312567291850662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000040 ((n : ℤ) - Int.land 2 (f1 (n - 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007504.P6185312567291850662

namespace A007504

/-- `∑[A000040(n-and(2, a(n-1)²))]` -/
def P6185312567291850662.Spec : Prop :=
  ∀ n, P6185312567291850662.a n = A007504 n

end A007504

/-! ## A007504.P11112896760124542324

`A262392(n)-A010693(n)`
-/

namespace A007504.P11112896760124542324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 n - A010693 n

end

end A007504.P11112896760124542324

namespace A007504

/-- `A262392(n)-A010693(n)` -/
def P11112896760124542324.Spec : Prop :=
  ∀ n, P11112896760124542324.a n = A007504 n

theorem P11112896760124542324.correct : P11112896760124542324.Spec := by
  intro n
  simp only [A007504, Nat.add_sub_cancel, A007504.P11112896760124542324.a, A007504.P14310834286015847203.a, A010693, A010693.P9719559114122647880.a, A014284, A014284.P18183547548072881472.a, A262392, A262392.P17406529640943534344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007504

/-! ## A007504.P12468807120375354521

`∪[A109722(n), A109723(n)]`
-/

namespace A007504.P12468807120375354521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007504.P12468807120375354521

namespace A007504

/-- `∪[A109722(n), A109723(n)]` -/
def P12468807120375354521.Spec : Prop :=
  ∀ n, (P12468807120375354521.a n : ℤ) = A007504 n

end A007504

/-! ## A007504.P3540583807550634273

`∑[A000040(A028310(n))]-2`
-/

namespace A007504.P3540583807550634273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A007504.P3540583807550634273

namespace A007504

/-- `∑[A000040(A028310(n))]-2` -/
def P3540583807550634273.Spec : Prop :=
  ∀ n, P3540583807550634273.a n = A007504 n

end A007504

/-! ## A007504.P497548300573302940

`A355726(n+1)+A355726(n)`
-/

namespace A007504.P497548300573302940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 (n + 1) + A355726 n

end

end A007504.P497548300573302940

namespace A007504

/-- `A355726(n+1)+A355726(n)` -/
def P497548300573302940.Spec : Prop :=
  ∀ n, P497548300573302940.a n = A007504 n

end A007504

/-! ## A007504.P11806557042698010347

`A166448(n+1)+A001223(n+1)`
-/

namespace A007504.P11806557042698010347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 1) + A001223 (n + 1)

end

end A007504.P11806557042698010347

namespace A007504

/-- `A166448(n+1)+A001223(n+1)` -/
def P11806557042698010347.Spec : Prop :=
  ∀ n, P11806557042698010347.a n = A007504 n

end A007504

/-! ## A007504.P9694035597760997076

`A108754(n+1)+A073497(n+1)`
-/

namespace A007504.P9694035597760997076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1) + A073497 (n + 1)

end

end A007504.P9694035597760997076

namespace A007504

/-- `A108754(n+1)+A073497(n+1)` -/
def P9694035597760997076.Spec : Prop :=
  ∀ n, P9694035597760997076.a n = A007504 n

end A007504

/-! ## A007504.P1039011304331876495

`A239731(n+1)+A168152(n+1)`
-/

namespace A007504.P1039011304331876495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239731 (n + 1) + A168152 (n + 1)

end

end A007504.P1039011304331876495

namespace A007504

/-- `A239731(n+1)+A168152(n+1)` -/
def P1039011304331876495.Spec : Prop :=
  ∀ n, P1039011304331876495.a n = A007504 n

end A007504

/-!
# A007505: Primes of form 3*2^k - 1.

The programs for A007505, there is no canonical definition to state claims against.
-/

/-! ## A007505.P9014990579555975290

`3*2^A002235(n+1)-1`
-/

namespace A007505.P9014990579555975290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A002235 (n + 1) : ℤ) - 1

end

end A007505.P9014990579555975290

/-! ## A007505.P3483590437378732843

`A055010(A091997(n+1))`
-/

namespace A007505.P3483590437378732843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (A091997 (n + 1)).toNat

end

end A007505.P3483590437378732843

/-! ## A007505.P4216834863923282730

`A153893(A002235(n+1))`
-/

namespace A007505.P4216834863923282730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (A002235 (n + 1)).toNat

end

end A007505.P4216834863923282730

/-! ## A007505.P15139489388544657206

`A055010(A002235(n+1)+1)`
-/

namespace A007505.P15139489388544657206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (A002235 (n + 1) + 1).toNat

end

end A007505.P15139489388544657206

/-! ## A007505.P8902006564017186441

`A083329(A002235(n+1)+1)`
-/

namespace A007505.P8902006564017186441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (A002235 (n + 1) + 1).toNat

end

end A007505.P8902006564017186441

/-!
# A007506: Primes p with property that p divides the sum of all primes <= p.

The programs for A007506, there is no canonical definition to state claims against.
-/

/-! ## A007506.P12081667942884136991

`A028582(n+1)/A028581(n+1)`
-/

namespace A007506.P12081667942884136991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028582 (n + 1) : ℚ) / (A028581 (n + 1) : ℚ)

end

end A007506.P12081667942884136991

/-!
# A007508: Number of twin prime pairs below 10^n.

The programs for A007508, there is no canonical definition to state claims against.
-/

/-! ## A007508.P9208281297565291974

`∑[A070076(n+1)]`
-/

namespace A007508.P9208281297565291974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007508.P9208281297565291974

/-! ## A007508.P7884392032408852933

`(A167874(n+1)+1)/2`
-/

namespace A007508.P7884392032408852933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167874 (n + 1) + 1 : ℚ) / 2

end

end A007508.P7884392032408852933

/-! ## A007508.P8864525068065089632

`∑[record[A070076(A028920(n))]]`
-/

namespace A007508.P8864525068065089632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070076 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007508.P8864525068065089632

/-! ## A007508.P8818718166018430880

`∑[record[A070076(A033930(n))]]`
-/

namespace A007508.P8818718166018430880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070076 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007508.P8818718166018430880

/-! ## A007508.P4294881004230224113

`∑[record[A070076(A051340(n))]]`
-/

namespace A007508.P4294881004230224113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070076 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007508.P4294881004230224113

/-!
# A007509: Numerator of Sum_{k=0..n} (-1)^k/(2*k+1).

The programs for A007509, there is no canonical definition to state claims against.
-/

/-! ## A007509.P10695125802600995753

`A215746(n)/4`
-/

namespace A007509.P10695125802600995753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215746 n : ℚ) / 4

end

end A007509.P10695125802600995753

/-! ## A007509.P10782948649254680897

`(2^A008683(A002148(n)))²*A215746(n)`
-/

namespace A007509.P10782948649254680897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ)) ^ 2 * (A215746 n : ℚ)

end

end A007509.P10782948649254680897

/-! ## A007509.P16004894345275383317

`gcd(record[A167584(n+1)], A215746(n))`
-/

namespace A007509.P16004894345275383317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A215746 n)

end

end A007509.P16004894345275383317

/-! ## A007509.P9665134428025813274

`gcd(A167584(A000124(n)), A215746(n))`
-/

namespace A007509.P9665134428025813274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167584 (A000124 n).toNat) (A215746 n)

end

end A007509.P9665134428025813274

/-! ## A007509.P3606051613078585175

`A024199(n+1)/gcd(A024199(2*n+1), A024199(n+1))`
-/

namespace A007509.P3606051613078585175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024199 (n + 1) : ℚ) / (Int.gcd (A024199 (2 * n + 1)) (A024199 (n + 1)) : ℚ)

end

end A007509.P3606051613078585175

/-!
# A007510: Single (or isolated or non-twin) primes: Primes p such that neither p-2 nor p+2 is prime.

The programs for A007510, the canonical program `A007510.P9655898748526012835` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007510 has offset 1).

The definition of A007510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8565 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007510.P12699692636498883418

`A000040(A176656(n+1))`
-/

namespace A007510.P12699692636498883418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176656 (n + 1)).toNat

end

end A007510.P12699692636498883418

namespace A007510

/-- `A000040(A176656(n+1))` -/
def P12699692636498883418.Spec : Prop :=
  ∀ n, P12699692636498883418.a n = A007510 (n + 1)

end A007510

/-! ## A007510.P11835247838478299995

`A167277(n+1)+1`
-/

namespace A007510.P11835247838478299995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1) + 1

end

end A007510.P11835247838478299995

namespace A007510

/-- `A167277(n+1)+1` -/
def P11835247838478299995.Spec : Prop :=
  ∀ n, P11835247838478299995.a n = A007510 (n + 1)

theorem P11835247838478299995.correct : P11835247838478299995.Spec := by
  intro n
  simp only [A007510, Nat.add_sub_cancel, A007510.P11835247838478299995.a, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A167277, A167277.P12308341413257393222.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P15078252821583414300.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007510

/-! ## A007510.P5199260713971291271

`A167397(n+1)+1+n`
-/

namespace A007510.P5199260713971291271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167397 (n + 1) + 1 + (n : ℤ)

end

end A007510.P5199260713971291271

namespace A007510

/-- `A167397(n+1)+1+n` -/
def P5199260713971291271.Spec : Prop :=
  ∀ n, P5199260713971291271.a n = A007510 (n + 1)

theorem P5199260713971291271.correct : P5199260713971291271.Spec := by
  intro n
  simp only [A007510, Nat.add_sub_cancel, A007510.P5199260713971291271.a, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A167397, A167397.P6695962093421447498.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P15078252821583414300.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007510

/-! ## A007510.P13208621945963613781

`A068015(n)+a(n-1)` with `a(0)=2`
-/

namespace A007510.P13208621945963613781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A068015 n + a (n - 1)

end

end A007510.P13208621945963613781

namespace A007510

/-- `A068015(n)+a(n-1)` -/
def P13208621945963613781.Spec : Prop :=
  ∀ n, P13208621945963613781.a n = A007510 (n + 1)

end A007510

/-! ## A007510.P13059158358681112632

`A163654(n)-a(n-1)` with `a(0)=2`
-/

namespace A007510.P13059158358681112632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A163654 n - a (n - 1)

end

end A007510.P13059158358681112632

namespace A007510

/-- `A163654(n)-a(n-1)` -/
def P13059158358681112632.Spec : Prop :=
  ∀ n, P13059158358681112632.a n = A007510 (n + 1)

end A007510

/-! ## A007510.P11916972700409076549

`A134797(gcd(n, lcm(n, a(n-1))))` with `a(0)=2`
-/

namespace A007510.P11916972700409076549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A134797 (Nat.gcd n (Int.lcm (n : ℤ) (a (n - 1))))

end

end A007510.P11916972700409076549

namespace A007510

/-- `A134797(gcd(n, lcm(n, a(n-1))))` -/
def P11916972700409076549.Spec : Prop :=
  ∀ n, P11916972700409076549.a n = A007510 (n + 1)

end A007510

/-! ## A007510.P18044426307423778392

`A164534(n+1)-A158388(n)`
-/

namespace A007510.P18044426307423778392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164534 (n + 1) - A158388 n

end

end A007510.P18044426307423778392

namespace A007510

/-- `A164534(n+1)-A158388(n)` -/
def P18044426307423778392.Spec : Prop :=
  ∀ n, P18044426307423778392.a n = A007510 (n + 1)

end A007510

/-! ## A007510.P15462218390101852905

`A164534(n+1)+A153881(n+1)`
-/

namespace A007510.P15462218390101852905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164534 (n + 1) + A153881 (n + 1)

end

end A007510.P15462218390101852905

namespace A007510

/-- `A164534(n+1)+A153881(n+1)` -/
def P15462218390101852905.Spec : Prop :=
  ∀ n, P15462218390101852905.a n = A007510 (n + 1)

end A007510

/-! ## A007510.P11491875307968272560

`A161165(n+1)-A001097(n+1)`
-/

namespace A007510.P11491875307968272560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161165 (n + 1) - A001097 (n + 1)

end

end A007510.P11491875307968272560

namespace A007510

/-- `A161165(n+1)-A001097(n+1)` -/
def P11491875307968272560.Spec : Prop :=
  ∀ n, P11491875307968272560.a n = A007510 (n + 1)

theorem P11491875307968272560.correct : P11491875307968272560.Spec := by
  intro n
  simp only [A007510, Nat.add_sub_cancel, A007510.P11491875307968272560.a, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A001097, A001097.P321733695451409135.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A161165, A161165.P7740314374936360020.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A280968, A280968.P4817024604496871762.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A163656, A163656.P15274253072224242917.a, A353463, A353463.P14904150347216604516.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P15078252821583414300.a, A049688, A049688.P4025135909260073091.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007510

/-! ## A007510.P17815844978149370454

`A164274(n+1)-A014574(n+1)`
-/

namespace A007510.P17815844978149370454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - A014574 (n + 1)

end

end A007510.P17815844978149370454

namespace A007510

/-- `A164274(n+1)-A014574(n+1)` -/
def P17815844978149370454.Spec : Prop :=
  ∀ n, P17815844978149370454.a n = A007510 (n + 1)

theorem P17815844978149370454.correct : P17815844978149370454.Spec := by
  intro n
  simp only [A007510, Nat.add_sub_cancel, A007510.P17815844978149370454.a, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A014574, A014574.P4587706211531852143.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A164274, A164274.P11426709217476400918.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A063919, A063919.P11181265949704613022.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A166597, A166597.P14552351031517696526.a, A353463, A353463.P14904150347216604516.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P15078252821583414300.a, A034460, A034460.P1958235575820581513.a, A049688, A049688.P4025135909260073091.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007510

/-! ## A007510.P16188685555968730747

`A134797(n+1)-A068015(n+1)`
-/

namespace A007510.P16188685555968730747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) - A068015 (n + 1)

end

end A007510.P16188685555968730747

namespace A007510

/-- `A134797(n+1)-A068015(n+1)` -/
def P16188685555968730747.Spec : Prop :=
  ∀ n, P16188685555968730747.a n = A007510 (n + 1)

theorem P16188685555968730747.correct : P16188685555968730747.Spec := by
  intro n
  simp only [A007510, Nat.add_sub_cancel, A007510.P16188685555968730747.a, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A068015, A068015.P16167893793263978770.a, A134797, A134797.P10926386183801791278.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P15078252821583414300.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007510

/-! ## A007510.P11460728161179415687

`A163654(n+1)-A134797(n+1)`
-/

namespace A007510.P11460728161179415687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163654 (n + 1) - A134797 (n + 1)

end

end A007510.P11460728161179415687

namespace A007510

/-- `A163654(n+1)-A134797(n+1)` -/
def P11460728161179415687.Spec : Prop :=
  ∀ n, P11460728161179415687.a n = A007510 (n + 1)

theorem P11460728161179415687.correct : P11460728161179415687.Spec := by
  intro n
  simp only [A007510, Nat.add_sub_cancel, A007510.P11460728161179415687.a, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A134797, A134797.P10926386183801791278.a, A163654, A163654.P17404434252909917711.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P15078252821583414300.a, A049688, A049688.P4025135909260073091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007510

/-! ## A007510.P7337897314097586067

`A164274(n+1)+1-A006512(n+1)`
-/

namespace A007510.P7337897314097586067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) + (1 - A006512 (n + 1))

end

end A007510.P7337897314097586067

namespace A007510

/-- `A164274(n+1)+1-A006512(n+1)` -/
def P7337897314097586067.Spec : Prop :=
  ∀ n, P7337897314097586067.a n = A007510 (n + 1)

end A007510

/-! ## A007510.P17450715483402561502

`A164274(n+1)-A054735(n+1)/2`
-/

namespace A007510.P17450715483402561502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164274 (n + 1) : ℚ) - (A054735 (n + 1) : ℚ) / 2

end

end A007510.P17450715483402561502

namespace A007510

/-- `A164274(n+1)-A054735(n+1)/2` -/
def P17450715483402561502.Spec : Prop :=
  ∀ n, P17450715483402561502.a n = (A007510 (n + 1) : ℚ)

theorem P17450715483402561502.correct : P17450715483402561502.Spec := by
  intro n
  simp only [A007510, Nat.add_sub_cancel, A007510.P17450715483402561502.a, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A025584, A025584.P1747553391340850671.a, A054735, A054735.P17392456198016609014.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A164274, A164274.P11426709217476400918.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A014574, A014574.P4587706211531852143.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, A000010, A000010.P4673923239450215316.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P15078252821583414300.a, A049688, A049688.P4025135909260073091.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007510

/-! ## A007510.P9655898748526012835

`∩[A025584(n+1), A067774(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A007510

/-- `∩[A025584(n+1), A067774(n+1)]` -/
def P9655898748526012835.Spec : Prop :=
  ∀ n, (P9655898748526012835.a n : ℤ) = A007510 (n + 1)

theorem P9655898748526012835.correct : P9655898748526012835.Spec := by
  intro n
  simp only [A007510, Nat.add_sub_cancel]

end A007510

/-! ## A007510.P15960151066796034160

`p?[A167706(n+1)]`
-/

namespace A007510.P15960151066796034160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007510.P15960151066796034160

namespace A007510

/-- `p?[A167706(n+1)]` -/
def P15960151066796034160.Spec : Prop :=
  ∀ n, P15960151066796034160.a n = A007510 (n + 1)

end A007510

/-! ## A007510.P260552068156003290

`∩[A015919(n+1), A167706(n+1)]`
-/

namespace A007510.P260552068156003290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007510.P260552068156003290

namespace A007510

/-- `∩[A015919(n+1), A167706(n+1)]` -/
def P260552068156003290.Spec : Prop :=
  ∀ n, (P260552068156003290.a n : ℤ) = A007510 (n + 1)

end A007510

/-! ## A007510.P7697908173212578010

`∩[A045319(n+1), A167706(n+1)]`
-/

namespace A007510.P7697908173212578010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007510.P7697908173212578010

namespace A007510

/-- `∩[A045319(n+1), A167706(n+1)]` -/
def P7697908173212578010.Spec : Prop :=
  ∀ n, (P7697908173212578010.a n : ℤ) = A007510 (n + 1)

end A007510

/-! ## A007510.P13132910785250706812

`∩[A000040(n+1), A167706(n+1)]`
-/

namespace A007510.P13132910785250706812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007510.P13132910785250706812

namespace A007510

/-- `∩[A000040(n+1), A167706(n+1)]` -/
def P13132910785250706812.Spec : Prop :=
  ∀ n, (P13132910785250706812.a n : ℤ) = A007510 (n + 1)

end A007510

/-! ## A007510.P12226436768414923010

`A151800(A167277(n+1))`
-/

namespace A007510.P12226436768414923010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A167277 (n + 1)).toNat

end

end A007510.P12226436768414923010

namespace A007510

/-- `A151800(A167277(n+1))` -/
def P12226436768414923010.Spec : Prop :=
  ∀ n, P12226436768414923010.a n = A007510 (n + 1)

end A007510

/-!
# A007511: a(n) is the smallest number greater than a(n-1) that is expressible as the sum of two squares in more ways than a(n-1).

The programs for A007511, there is no canonical definition to state claims against.
-/

/-! ## A007511.P12853686582055597294

`A016032(A060306(n+2))`
-/

namespace A007511.P12853686582055597294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016032 (A060306 (n + 2)).toNat

end

end A007511.P12853686582055597294

/-! ## A007511.P6427940473170184305

`A016032(record[A336543(n+2)])`
-/

namespace A007511.P6427940473170184305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336543 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016032 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007511.P6427940473170184305

/-! ## A007511.P15609321914728187195

`record[A048610(n+1)-char[5]]`
-/

namespace A007511.P15609321914728187195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048610 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007511.P15609321914728187195

/-! ## A007511.P16030990756732082109

`record[A048610(∑[n]%(n+1)+1)]`
-/

namespace A007511.P16030990756732082109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048610 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007511.P16030990756732082109

/-! ## A007511.P16477538138969419207

`record[A048610(A067032(n))]`
-/

namespace A007511.P16477538138969419207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048610 (A067032 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007511.P16477538138969419207

/-!
# A007514: Pi = Sum_{n >= 0} a(n)/n!.

The programs for A007514, there is no canonical definition to state claims against.
-/

/-! ## A007514.P2554292261403887937

`A075874(char[1-n²]+n)`
-/

namespace A007514.P2554292261403887937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075874 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A007514.P2554292261403887937

/-! ## A007514.P2157189537821111122

`A075874(n)-a((n+1)%n)` with `a(0)=3`
-/

namespace A007514.P2157189537821111122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A075874 n - a ((n + 1) % n)

end

end A007514.P2157189537821111122

/-! ## A007514.P5019552114764752107

`(1-char[1])*A075874(A028310(n))`
-/

namespace A007514.P5019552114764752107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A075874 (A028310 n).toNat

end

end A007514.P5019552114764752107

/-! ## A007514.P4096812842511682078

`A075874(A028310(n))%(A000038(n)+n)²`
-/

namespace A007514.P4096812842511682078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075874 (A028310 n).toNat) ((A000038 n + (n : ℤ)) ^ 2)

end

end A007514.P4096812842511682078

/-! ## A007514.P10764796913340433833

`A075874(A028310(n))%Δ[A006370(n)]`
-/

namespace A007514.P10764796913340433833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075874 (A028310 n).toNat) (f1 (n + 1) - f1 n)

end

end A007514.P10764796913340433833

/-! ## A007514.P1583024280678940023

`A075874(A000007(n)+n)%A000040(A006370(n+1)+n)`
-/

namespace A007514.P1583024280678940023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075874 (A000007 n + (n : ℤ)).toNat) (A000040 (A006370 (n + 1) + (n : ℤ)).toNat)

end

end A007514.P1583024280678940023

/-! ## A007514.P14702613204912098145

`A075874(A028310(n))%A001254(n)`
-/

namespace A007514.P14702613204912098145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075874 (A028310 n).toNat) (A001254 n)

end

end A007514.P14702613204912098145

/-!
# A007516: (2^2^...^2) (n times) + 1.

The programs for A007516, there is no canonical definition to state claims against.
-/

/-! ## A007516.P494638865038598202

`record[2^a(n-2)]+1` with `a(0)=0, a(1)=2`
-/

namespace A007516.P494638865038598202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A007516.P494638865038598202

/-!
# A007517: a(n) = phi(n) * (sigma(n) - n).

The programs for A007517, the canonical program `A007517.P15231311022357601297` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007517 has offset 1).

The definition of A007517 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007517.P418508232218383814

`A000010(n+1)*A001065(n+1)`
-/

namespace A007517.P418508232218383814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001065 (n + 1)

end

end A007517.P418508232218383814

namespace A007517

/-- `A000010(n+1)*A001065(n+1)` -/
def P418508232218383814.Spec : Prop :=
  ∀ n, P418508232218383814.a n = A007517 (n + 1)

end A007517

/-! ## A007517.P15231311022357601297

`A000010(n+1)*(A000203(n+1)-(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007517

/-- `A000010(n+1)*(A000203(n+1)-(n+1))` -/
def P15231311022357601297.Spec : Prop :=
  ∀ n, P15231311022357601297.a n = A007517 (n + 1)

theorem P15231311022357601297.correct : P15231311022357601297.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel]

end A007517

/-! ## A007517.P12187849220081906279

`(∑{d}[n+1, #]-(n+1))*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A007517.P12187849220081906279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A007517.P12187849220081906279

namespace A007517

/-- `(∑{d}[n+1, #]-(n+1))*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P12187849220081906279.Spec : Prop :=
  ∀ n, P12187849220081906279.a n = (A007517 (n + 1) : ℚ)

end A007517

/-! ## A007517.P3222290069598520147

`Δ[A002088(n)]*A001065(n+1)`
-/

namespace A007517.P3222290069598520147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001065 (n + 1)

end

end A007517.P3222290069598520147

namespace A007517

/-- `Δ[A002088(n)]*A001065(n+1)` -/
def P3222290069598520147.Spec : Prop :=
  ∀ n, P3222290069598520147.a n = A007517 (n + 1)

end A007517

/-! ## A007517.P18319420874637827754

`Δ[A005728(n)]*A001065(n+1)`
-/

namespace A007517.P18319420874637827754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001065 (n + 1)

end

end A007517.P18319420874637827754

namespace A007517

/-- `Δ[A005728(n)]*A001065(n+1)` -/
def P18319420874637827754.Spec : Prop :=
  ∀ n, P18319420874637827754.a n = A007517 (n + 1)

end A007517

/-! ## A007517.P15866759114162688112

`A062354(n+1)-A002618(n+1)`
-/

namespace A007517.P15866759114162688112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) - A002618 (n + 1)

end

end A007517.P15866759114162688112

namespace A007517

/-- `A062354(n+1)-A002618(n+1)` -/
def P15866759114162688112.Spec : Prop :=
  ∀ n, P15866759114162688112.a n = A007517 (n + 1)

theorem P15866759114162688112.correct : P15866759114162688112.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P15866759114162688112.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002618, A002618.P8397693677428532773.a, A062354, A062354.P12090896162141185075.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P9796381716470141941

`A053650(n+1)-A069249(n+1)`
-/

namespace A007517.P9796381716470141941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) - A069249 (n + 1)

end

end A007517.P9796381716470141941

namespace A007517

/-- `A053650(n+1)-A069249(n+1)` -/
def P9796381716470141941.Spec : Prop :=
  ∀ n, P9796381716470141941.a n = A007517 (n + 1)

theorem P9796381716470141941.correct : P9796381716470141941.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P9796381716470141941.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053650, A053650.P6469571087341810863.a, A069249, A069249.P7873536691773802356.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P612443076630095702

`(A109606(n+1)+1)*A001065(n+1)`
-/

namespace A007517.P612443076630095702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A001065 (n + 1)

end

end A007517.P612443076630095702

namespace A007517

/-- `(A109606(n+1)+1)*A001065(n+1)` -/
def P612443076630095702.Spec : Prop :=
  ∀ n, P612443076630095702.a n = A007517 (n + 1)

theorem P612443076630095702.correct : P612443076630095702.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P612443076630095702.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P1389288496292588822

`(A039649(n+1)-1)*A001065(n+1)`
-/

namespace A007517.P1389288496292588822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A001065 (n + 1)

end

end A007517.P1389288496292588822

namespace A007517

/-- `(A039649(n+1)-1)*A001065(n+1)` -/
def P1389288496292588822.Spec : Prop :=
  ∀ n, P1389288496292588822.a n = A007517 (n + 1)

theorem P1389288496292588822.correct : P1389288496292588822.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P1389288496292588822.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P5985508101776727046

`(A237588(n+1)+n)*A000010(n+1)`
-/

namespace A007517.P5985508101776727046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237588 (n + 1) + (n : ℤ)) * A000010 (n + 1)

end

end A007517.P5985508101776727046

namespace A007517

/-- `(A237588(n+1)+n)*A000010(n+1)` -/
def P5985508101776727046.Spec : Prop :=
  ∀ n, P5985508101776727046.a n = A007517 (n + 1)

theorem P5985508101776727046.correct : P5985508101776727046.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P5985508101776727046.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A237588, A237588.P10590847318200798620.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P1369076059491184835

`(n-A016035(n+1))*A001065(n+1)`
-/

namespace A007517.P1369076059491184835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A016035 (n + 1)) * A001065 (n + 1)

end

end A007517.P1369076059491184835

namespace A007517

/-- `(n-A016035(n+1))*A001065(n+1)` -/
def P1369076059491184835.Spec : Prop :=
  ∀ n, P1369076059491184835.a n = A007517 (n + 1)

end A007517

/-! ## A007517.P8080244696281335544

`(n-A219428(n+1))*A001065(n+1)`
-/

namespace A007517.P8080244696281335544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1)) * A001065 (n + 1)

end

end A007517.P8080244696281335544

namespace A007517

/-- `(n-A219428(n+1))*A001065(n+1)` -/
def P8080244696281335544.Spec : Prop :=
  ∀ n, P8080244696281335544.a n = A007517 (n + 1)

theorem P8080244696281335544.correct : P8080244696281335544.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P8080244696281335544.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P8437034446528834497

`(n-A235796(n+1))*A000010(n+1)`
-/

namespace A007517.P8437034446528834497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A235796 (n + 1)) * A000010 (n + 1)

end

end A007517.P8437034446528834497

namespace A007517

/-- `(n-A235796(n+1))*A000010(n+1)` -/
def P8437034446528834497.Spec : Prop :=
  ∀ n, P8437034446528834497.a n = A007517 (n + 1)

theorem P8437034446528834497.correct : P8437034446528834497.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P8437034446528834497.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A235796, A235796.P5769590272751401819.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P3660929120785843549

`A000010(n+1)*∑[A340793(n+1)-1]`
-/

namespace A007517.P3660929120785843549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007517.P3660929120785843549

namespace A007517

/-- `A000010(n+1)*∑[A340793(n+1)-1]` -/
def P3660929120785843549.Spec : Prop :=
  ∀ n, P3660929120785843549.a n = A007517 (n + 1)

end A007517

/-! ## A007517.P16747062019620643100

`(∑[n]-A024816(n+1))*A000010(n+1)`
-/

namespace A007517.P16747062019620643100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A024816 (n + 1)) * A000010 (n + 1)

end

end A007517.P16747062019620643100

namespace A007517

/-- `(∑[n]-A024816(n+1))*A000010(n+1)` -/
def P16747062019620643100.Spec : Prop :=
  ∀ n, P16747062019620643100.a n = A007517 (n + 1)

end A007517

/-! ## A007517.P254629655311630287

`(n+1-A033879(n+1))*A000010(n+1)`
-/

namespace A007517.P254629655311630287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A033879 (n + 1)) * A000010 (n + 1)

end

end A007517.P254629655311630287

namespace A007517

/-- `(n+1-A033879(n+1))*A000010(n+1)` -/
def P254629655311630287.Spec : Prop :=
  ∀ n, P254629655311630287.a n = A007517 (n + 1)

theorem P254629655311630287.correct : P254629655311630287.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P254629655311630287.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A003557, A003557.P6364735403900941810.a, A033880, A033880.P6005875780263802708.a, A173557, A173557.P15666735857375843373.a, A001065, A001065.P4097147489331274860.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P16043396144782446045

`(n+1-A051953(n+1))*A001065(n+1)`
-/

namespace A007517.P16043396144782446045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A051953 (n + 1)) * A001065 (n + 1)

end

end A007517.P16043396144782446045

namespace A007517

/-- `(n+1-A051953(n+1))*A001065(n+1)` -/
def P16043396144782446045.Spec : Prop :=
  ∀ n, P16043396144782446045.a n = A007517 (n + 1)

theorem P16043396144782446045.correct : P16043396144782446045.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P16043396144782446045.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P9327837800320164363

`(A000203(n+1)-(n+1))*(A039649(n+1)-1)`
-/

namespace A007517.P9327837800320164363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - (n + 1 : ℤ)) * (A039649 (n + 1) - 1)

end

end A007517.P9327837800320164363

namespace A007517

/-- `(A000203(n+1)-(n+1))*(A039649(n+1)-1)` -/
def P9327837800320164363.Spec : Prop :=
  ∀ n, P9327837800320164363.a n = A007517 (n + 1)

theorem P9327837800320164363.correct : P9327837800320164363.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P9327837800320164363.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P3166826638163593710

`A345892(n+1)-(A069249(n+1)+A000010(n+1))`
-/

namespace A007517.P3166826638163593710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345892 (n + 1) - (A069249 (n + 1) + A000010 (n + 1))

end

end A007517.P3166826638163593710

namespace A007517

/-- `A345892(n+1)-(A069249(n+1)+A000010(n+1))` -/
def P3166826638163593710.Spec : Prop :=
  ∀ n, P3166826638163593710.a n = A007517 (n + 1)

theorem P3166826638163593710.correct : P3166826638163593710.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P3166826638163593710.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A069249, A069249.P7873536691773802356.a, A345892, A345892.P16235346904455731503.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-! ## A007517.P18220877386239443980

`(A062790(n+1)+A007431(n+1))*A001065(n+1)`
-/

namespace A007517.P18220877386239443980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062790 (n + 1) + A007431 (n + 1)) * A001065 (n + 1)

end

end A007517.P18220877386239443980

namespace A007517

/-- `(A062790(n+1)+A007431(n+1))*A001065(n+1)` -/
def P18220877386239443980.Spec : Prop :=
  ∀ n, P18220877386239443980.a n = A007517 (n + 1)

theorem P18220877386239443980.correct : P18220877386239443980.Spec := by
  intro n
  simp only [A007517, Nat.add_sub_cancel, A007517.P18220877386239443980.a, A007517.P15231311022357601297.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A062790, A062790.P5415624989759604668.a, A003557, A003557.P6364735403900941810.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007517

/-!
# A007518: a(n) = floor(n*(n+2)*(2*n-1)/8).

The programs for A007518, the canonical program `A007518.P9415130451087838578` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007518 has offset 1).

The definition of A007518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(n+3)*(2*(n+1)-1)/8)` (program `A007518.P9415130451087838578`, by `A007518.P9415130451087838578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007518.P9415130451087838578

`floor((n+1)*(n+3)*(2*(n+1)-1)/8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007518

/-- `floor((n+1)*(n+3)*(2*(n+1)-1)/8)` -/
def P9415130451087838578.Spec : Prop :=
  ∀ n, P9415130451087838578.a n = A007518 (n + 1)

theorem P9415130451087838578.correct : P9415130451087838578.Spec := by
  intro n
  simp only [A007518, Nat.add_sub_cancel]

end A007518

/-! ## A007518.P15953285997924428760

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=21, a(4)=39`
-/

namespace A007518.P15953285997924428760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 9, 21, 39] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A007518.P15953285997924428760

namespace A007518

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P15953285997924428760.Spec : Prop :=
  ∀ n, P15953285997924428760.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P6081726620246006960

`3*∑[∑[∑[n%2]]]`
-/

namespace A007518.P6081726620246006960
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007518.P6081726620246006960

namespace A007518

/-- `3*∑[∑[∑[n%2]]]` -/
def P6081726620246006960.Spec : Prop :=
  ∀ n, (P6081726620246006960.a n : ℤ) = A007518 (n + 1)

end A007518

/-! ## A007518.P2072991468585868322

`3*∑[∑[∑[and(1, n)]]]`
-/

namespace A007518.P2072991468585868322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007518.P2072991468585868322

namespace A007518

/-- `3*∑[∑[∑[and(1, n)]]]` -/
def P2072991468585868322.Spec : Prop :=
  ∀ n, (P2072991468585868322.a n : ℤ) = A007518 (n + 1)

end A007518

/-! ## A007518.P3959053424813751228

`∑[∑[a(n-2)+3]]` with `a(0)=0, a(1)=3`
-/

namespace A007518.P3959053424813751228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007518.P3959053424813751228

namespace A007518

/-- `∑[∑[a(n-2)+3]]` -/
def P3959053424813751228.Spec : Prop :=
  ∀ n, (P3959053424813751228.a n : ℤ) = A007518 (n + 1)

end A007518

/-! ## A007518.P14040721708102956578

`3*∑[∪[∑[2*n], n²]]`
-/

namespace A007518.P14040721708102956578
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007518.P14040721708102956578

namespace A007518

/-- `3*∑[∪[∑[2*n], n²]]` -/
def P14040721708102956578.Spec : Prop :=
  ∀ n, (P14040721708102956578.a n : ℤ) = A007518 (n + 1)

end A007518

/-! ## A007518.P6297107507917022836

`∑[∑[∑[∑[ogf(3x/(1+x))]]]]`
-/

namespace A007518.P6297107507917022836
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007518.P6297107507917022836

namespace A007518

/-- `∑[∑[∑[∑[ogf(3x/(1+x))]]]]` -/
def P6297107507917022836.Spec : Prop :=
  ∀ n, P6297107507917022836.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P3836233492146889281

`ogf(3x/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A007518.P3836233492146889281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -3, 2, 2, -3, 1] n

end

end A007518.P3836233492146889281

namespace A007518

/-- `ogf(3x/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P3836233492146889281.Spec : Prop :=
  ∀ n, P3836233492146889281.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P2369241910855494315

`3*∑[∑[n-a(n-1)]]` with `a(0)=0`
-/

namespace A007518.P2369241910855494315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007518.P2369241910855494315

namespace A007518

/-- `3*∑[∑[n-a(n-1)]]` -/
def P2369241910855494315.Spec : Prop :=
  ∀ n, P2369241910855494315.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P14489791582384863173

`abs(∑[∑[∑[3-a(n-1)]]])` with `a(0)=0`
-/

namespace A007518.P14489791582384863173
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  3 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A007518.P14489791582384863173

namespace A007518

/-- `abs(∑[∑[∑[3-a(n-1)]]])` -/
def P14489791582384863173.Spec : Prop :=
  ∀ n, P14489791582384863173.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P5326764410198023736

`∑[∑[3*Δ[or(1, n²)]]]/4`
-/

namespace A007518.P5326764410198023736
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A007518.P5326764410198023736

namespace A007518

/-- `∑[∑[3*Δ[or(1, n²)]]]/4` -/
def P5326764410198023736.Spec : Prop :=
  ∀ n, P5326764410198023736.a n = (A007518 (n + 1) : ℚ)

end A007518

/-! ## A007518.P6531187032374769358

`round(∑[∑[∑[3-a(n-1)]]])` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A007518.P6531187032374769358
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  3 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007518.P6531187032374769358

namespace A007518

/-- `round(∑[∑[∑[3-a(n-1)]]])` -/
def P6531187032374769358.Spec : Prop :=
  ∀ n, P6531187032374769358.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P3759563808513913911

`∑[∑[∑[6-a(n-1)]]]/2` with `a(0)=0`
-/

namespace A007518.P3759563808513913911
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  6 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A007518.P3759563808513913911

namespace A007518

/-- `∑[∑[∑[6-a(n-1)]]]/2` -/
def P3759563808513913911.Spec : Prop :=
  ∀ n, P3759563808513913911.a n = (A007518 (n + 1) : ℚ)

end A007518

/-! ## A007518.P8740511452003522826

`3*∑[floor(cosh(log((n+1)²))/2)]`
-/

namespace A007518.P8740511452003522826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ)) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007518.P8740511452003522826

namespace A007518

/-- `3*∑[floor(cosh(log((n+1)²))/2)]` -/
def P8740511452003522826.Spec : Prop :=
  ∀ n, P8740511452003522826.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P15546758406820484407

`3*C(n+2, 3)-a(n-1)` with `a(0)=0`
-/

namespace A007518.P15546758406820484407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 * Nat.choose (n + 2) 3 : ℤ) - a (n - 1)

end

end A007518.P15546758406820484407

namespace A007518

/-- `3*C(n+2, 3)-a(n-1)` -/
def P15546758406820484407.Spec : Prop :=
  ∀ n, P15546758406820484407.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P11389509747628787939

`C((n+1)², 2)/(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A007518.P11389509747628787939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / (n + 1 : ℚ) - a (n - 1)

end

end A007518.P11389509747628787939

namespace A007518

/-- `C((n+1)², 2)/(n+1)-a(n-1)` -/
def P11389509747628787939.Spec : Prop :=
  ∀ n, P11389509747628787939.a n = (A007518 (n + 1) : ℚ)

end A007518

/-! ## A007518.P5862041157532657281

`((n+1)^3-(n+1))/2-a(n-1)` with `a(0)=0`
-/

namespace A007518.P5862041157532657281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (((n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℚ) / 2 - a (n - 1)

end

end A007518.P5862041157532657281

namespace A007518

/-- `((n+1)^3-(n+1))/2-a(n-1)` -/
def P5862041157532657281.Spec : Prop :=
  ∀ n, P5862041157532657281.a n = (A007518 (n + 1) : ℚ)

end A007518

/-! ## A007518.P7583394483537484073

`∑[A397990(n)+n]`
-/

namespace A007518.P7583394483537484073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007518.P7583394483537484073

namespace A007518

/-- `∑[A397990(n)+n]` -/
def P7583394483537484073.Spec : Prop :=
  ∀ n, P7583394483537484073.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P8286407118176224964

`3*A173196(n+1)`
-/

namespace A007518.P8286407118176224964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173196 (n + 1)

end

end A007518.P8286407118176224964

namespace A007518

/-- `3*A173196(n+1)` -/
def P8286407118176224964.Spec : Prop :=
  ∀ n, P8286407118176224964.a n = A007518 (n + 1)

end A007518

/-! ## A007518.P10765361828155008489

`∑[A194073(n+1)-1]`
-/

namespace A007518.P10765361828155008489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007518.P10765361828155008489

namespace A007518

/-- `∑[A194073(n+1)-1]` -/
def P10765361828155008489.Spec : Prop :=
  ∀ n, P10765361828155008489.a n = A007518 (n + 1)

end A007518

/-!
# A007519: Primes of form 8n+1, that is, primes congruent to 1 mod 8.

The programs for A007519, the canonical program `A007519.P11660314281699166777` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007519 has offset 1).

The definition of A007519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007519.P11660314281699166777

`p?[8*n+1]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007519

/-- `p?[8*n+1]` -/
def P11660314281699166777.Spec : Prop :=
  ∀ n, (P11660314281699166777.a n : ℤ) = A007519 (n + 1)

theorem P11660314281699166777.correct : P11660314281699166777.Spec := by
  intro n
  simp only [A007519, Nat.add_sub_cancel]

end A007519

/-! ## A007519.P16932871940211852336

`or(1, p?[a(n-1)+8])` with `a(0)=1`
-/

namespace A007519.P16932871940211852336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007519.P16932871940211852336

namespace A007519

/-- `or(1, p?[a(n-1)+8])` -/
def P16932871940211852336.Spec : Prop :=
  ∀ n, (P16932871940211852336.a n : ℤ) = A007519 (n + 1)

end A007519

/-! ## A007519.P4480288314987058103

`A186295(n+1)+2`
-/

namespace A007519.P4480288314987058103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186295 (n + 1) + 2

end

end A007519.P4480288314987058103

namespace A007519

/-- `A186295(n+1)+2` -/
def P4480288314987058103.Spec : Prop :=
  ∀ n, P4480288314987058103.a n = A007519 (n + 1)

theorem P4480288314987058103.correct : P4480288314987058103.Spec := by
  intro n
  simp only [A007519, Nat.add_sub_cancel, A007519.P4480288314987058103.a, A007519.P11660314281699166777.f1, A007519.P11660314281699166777.a, A186295, A186295.P16210222267034878699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007519

/-! ## A007519.P8023211895081049609

`2*4*A005123(n+1)+1`
-/

namespace A007519.P8023211895081049609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A005123 (n + 1)) + 1

end

end A007519.P8023211895081049609

namespace A007519

/-- `2*4*A005123(n+1)+1` -/
def P8023211895081049609.Spec : Prop :=
  ∀ n, P8023211895081049609.a n = A007519 (n + 1)

end A007519

/-! ## A007519.P6074244281987992041

`A186294(n+1)+A186293(n+1)`
-/

namespace A007519.P6074244281987992041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186294 (n + 1) + A186293 (n + 1)

end

end A007519.P6074244281987992041

namespace A007519

/-- `A186294(n+1)+A186293(n+1)` -/
def P6074244281987992041.Spec : Prop :=
  ∀ n, P6074244281987992041.a n = A007519 (n + 1)

end A007519

/-! ## A007519.P1583662153091408191

`A022761(n+1)-A007522(n+1)`
-/

namespace A007519.P1583662153091408191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022761 (n + 1) - A007522 (n + 1)

end

end A007519.P1583662153091408191

namespace A007519

/-- `A022761(n+1)-A007522(n+1)` -/
def P1583662153091408191.Spec : Prop :=
  ∀ n, P1583662153091408191.a n = A007519 (n + 1)

theorem P1583662153091408191.correct : P1583662153091408191.Spec := by
  intro n
  simp only [A007519, Nat.add_sub_cancel, A007519.P1583662153091408191.a, A007519.P11660314281699166777.f1, A007519.P11660314281699166777.a, A007522, A007522.P292576302828348404.f1, A007522.P292576302828348404.a, A022761, A022761.P14430388532223490867.f1, A022761.P14430388532223490867.f2, A022761.P14430388532223490867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007519

/-! ## A007519.P15505598434227680017

`A045390(n+2)`
-/

namespace A007519.P15505598434227680017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 2)

end

end A007519.P15505598434227680017

namespace A007519

/-- `A045390(n+2)` -/
def P15505598434227680017.Spec : Prop :=
  ∀ n, P15505598434227680017.a n = A007519 (n + 1)

end A007519

/-! ## A007519.P4567874295715517261

`A209544(n+2)`
-/

namespace A007519.P4567874295715517261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 2)

end

end A007519.P4567874295715517261

namespace A007519

/-- `A209544(n+2)` -/
def P4567874295715517261.Spec : Prop :=
  ∀ n, P4567874295715517261.a n = A007519 (n + 1)

end A007519

/-! ## A007519.P7868063801898333829

`A022761(n+1)-A045382(n+2)`
-/

namespace A007519.P7868063801898333829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022761 (n + 1) - A045382 (n + 2)

end

end A007519.P7868063801898333829

namespace A007519

/-- `A022761(n+1)-A045382(n+2)` -/
def P7868063801898333829.Spec : Prop :=
  ∀ n, P7868063801898333829.a n = A007519 (n + 1)

end A007519

/-! ## A007519.P13499521831520241043

`∩[A001132(n+1), A230779(n+1)]`
-/

namespace A007519.P13499521831520241043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007519.P13499521831520241043

namespace A007519

/-- `∩[A001132(n+1), A230779(n+1)]` -/
def P13499521831520241043.Spec : Prop :=
  ∀ n, (P13499521831520241043.a n : ℤ) = A007519 (n + 1)

end A007519

/-! ## A007519.P2411021403394195037

`∩[A004625(n+1), A230779(n+1)]`
-/

namespace A007519.P2411021403394195037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007519.P2411021403394195037

namespace A007519

/-- `∩[A004625(n+1), A230779(n+1)]` -/
def P2411021403394195037.Spec : Prop :=
  ∀ n, (P2411021403394195037.a n : ℤ) = A007519 (n + 1)

end A007519

/-! ## A007519.P8588695327601927280

`∩[A033200(n+1), A230779(n+1)]`
-/

namespace A007519.P8588695327601927280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007519.P8588695327601927280

namespace A007519

/-- `∩[A033200(n+1), A230779(n+1)]` -/
def P8588695327601927280.Spec : Prop :=
  ∀ n, (P8588695327601927280.a n : ℤ) = A007519 (n + 1)

end A007519

/-! ## A007519.P1469261638656582809

`∩[A033203(n+1), A230779(n+1)]`
-/

namespace A007519.P1469261638656582809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007519.P1469261638656582809

namespace A007519

/-- `∩[A033203(n+1), A230779(n+1)]` -/
def P1469261638656582809.Spec : Prop :=
  ∀ n, (P1469261638656582809.a n : ℤ) = A007519 (n + 1)

end A007519

/-! ## A007519.P4072434860218423036

`∩[A038873(n+1), A230779(n+1)]`
-/

namespace A007519.P4072434860218423036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007519.P4072434860218423036

namespace A007519

/-- `∩[A038873(n+1), A230779(n+1)]` -/
def P4072434860218423036.Spec : Prop :=
  ∀ n, (P4072434860218423036.a n : ℤ) = A007519 (n + 1)

end A007519

/-! ## A007519.P12763529630152811611

`∩[A055673(n+1), A230779(n+1)]`
-/

namespace A007519.P12763529630152811611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007519.P12763529630152811611

namespace A007519

/-- `∩[A055673(n+1), A230779(n+1)]` -/
def P12763529630152811611.Spec : Prop :=
  ∀ n, (P12763529630152811611.a n : ℤ) = A007519 (n + 1)

end A007519

/-! ## A007519.P18243821399148800902

`∩[A332227(n+1), A380525(n+1)]`
-/

namespace A007519.P18243821399148800902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007519.P18243821399148800902

namespace A007519

/-- `∩[A332227(n+1), A380525(n+1)]` -/
def P18243821399148800902.Spec : Prop :=
  ∀ n, (P18243821399148800902.a n : ℤ) = A007519 (n + 1)

end A007519

/-! ## A007519.P5311139401217866680

`∩[A001132(n+1), A347877(n+1)]`
-/

namespace A007519.P5311139401217866680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007519.P5311139401217866680

namespace A007519

/-- `∩[A001132(n+1), A347877(n+1)]` -/
def P5311139401217866680.Spec : Prop :=
  ∀ n, (P5311139401217866680.a n : ℤ) = A007519 (n + 1)

end A007519

/-!
# A007520: Primes == 3 (mod 8).

The programs for A007520, the canonical program `A007520.P9970468352635506010` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007520 has offset 1).

The definition of A007520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007520.P9970468352635506010

`p?[8*n+3]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007520

/-- `p?[8*n+3]` -/
def P9970468352635506010.Spec : Prop :=
  ∀ n, (P9970468352635506010.a n : ℤ) = A007520 (n + 1)

theorem P9970468352635506010.correct : P9970468352635506010.Spec := by
  intro n
  simp only [A007520, Nat.add_sub_cancel]

end A007520

/-! ## A007520.P14248167023052250141

`or(2, p?[8*n-5]-2)`
-/

namespace A007520.P14248167023052250141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2)

end

end A007520.P14248167023052250141

namespace A007520

/-- `or(2, p?[8*n-5]-2)` -/
def P14248167023052250141.Spec : Prop :=
  ∀ n, P14248167023052250141.a n = A007520 (n + 1)

end A007520

/-! ## A007520.P8095040035395442398

`xor(2, p?[8*n-5]-2)`
-/

namespace A007520.P8095040035395442398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2)

end

end A007520.P8095040035395442398

namespace A007520

/-- `xor(2, p?[8*n-5]-2)` -/
def P8095040035395442398.Spec : Prop :=
  ∀ n, P8095040035395442398.a n = A007520 (n + 1)

end A007520

/-! ## A007520.P1529481798339303074

`or(1, p?[a(n-1)+8])` with `a(0)=3`
-/

namespace A007520.P1529481798339303074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007520.P1529481798339303074

namespace A007520

/-- `or(1, p?[a(n-1)+8])` -/
def P1529481798339303074.Spec : Prop :=
  ∀ n, (P1529481798339303074.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P9791343789241252400

`A186298(n+1)+2`
-/

namespace A007520.P9791343789241252400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186298 (n + 1) + 2

end

end A007520.P9791343789241252400

namespace A007520

/-- `A186298(n+1)+2` -/
def P9791343789241252400.Spec : Prop :=
  ∀ n, P9791343789241252400.a n = A007520 (n + 1)

theorem P9791343789241252400.correct : P9791343789241252400.Spec := by
  intro n
  simp only [A007520, Nat.add_sub_cancel, A007520.P9791343789241252400.a, A007520.P9970468352635506010.f1, A007520.P9970468352635506010.a, A186298, A186298.P971007839183561830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007520

/-! ## A007520.P3041808117875765026

`A186297(n+1)+A186296(n+1)`
-/

namespace A007520.P3041808117875765026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186297 (n + 1) + A186296 (n + 1)

end

end A007520.P3041808117875765026

namespace A007520

/-- `A186297(n+1)+A186296(n+1)` -/
def P3041808117875765026.Spec : Prop :=
  ∀ n, P3041808117875765026.a n = A007520 (n + 1)

end A007520

/-! ## A007520.P10511741988962848067

`A022763(n+1)-A007521(n+1)`
-/

namespace A007520.P10511741988962848067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022763 (n + 1) - A007521 (n + 1)

end

end A007520.P10511741988962848067

namespace A007520

/-- `A022763(n+1)-A007521(n+1)` -/
def P10511741988962848067.Spec : Prop :=
  ∀ n, P10511741988962848067.a n = A007520 (n + 1)

theorem P10511741988962848067.correct : P10511741988962848067.Spec := by
  intro n
  simp only [A007520, Nat.add_sub_cancel, A007520.P10511741988962848067.a, A007520.P9970468352635506010.f1, A007520.P9970468352635506010.a, A007521, A007521.P14403399304509421067.f1, A007521.P14403399304509421067.a, A022763, A022763.P11171846536189561779.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007520

/-! ## A007520.P6562697649205243461

`A045339(n+2)`
-/

namespace A007520.P6562697649205243461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 2)

end

end A007520.P6562697649205243461

namespace A007520

/-- `A045339(n+2)` -/
def P6562697649205243461.Spec : Prop :=
  ∀ n, P6562697649205243461.a n = A007520 (n + 1)

end A007520

/-! ## A007520.P4991655850591758957

`A022763(n+1)-A045366(n+2)`
-/

namespace A007520.P4991655850591758957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022763 (n + 1) - A045366 (n + 2)

end

end A007520.P4991655850591758957

namespace A007520

/-- `A022763(n+1)-A045366(n+2)` -/
def P4991655850591758957.Spec : Prop :=
  ∀ n, P4991655850591758957.a n = A007520 (n + 1)

end A007520

/-! ## A007520.P1717676885701888560

`or(1, p?[A004626(n+1)])`
-/

namespace A007520.P1717676885701888560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A007520.P1717676885701888560

namespace A007520

/-- `or(1, p?[A004626(n+1)])` -/
def P1717676885701888560.Spec : Prop :=
  ∀ n, P1717676885701888560.a n = A007520 (n + 1)

end A007520

/-! ## A007520.P13822438116612280815

`p?[A004626(n+1)]%A004622(n+2)`
-/

namespace A007520.P13822438116612280815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004622 (n + 2))

end

end A007520.P13822438116612280815

namespace A007520

/-- `p?[A004626(n+1)]%A004622(n+2)` -/
def P13822438116612280815.Spec : Prop :=
  ∀ n, P13822438116612280815.a n = A007520 (n + 1)

end A007520

/-! ## A007520.P18147106573819261862

`∩[A192717(n+1), A380525(n+1)]`
-/

namespace A007520.P18147106573819261862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007520.P18147106573819261862

namespace A007520

/-- `∩[A192717(n+1), A380525(n+1)]` -/
def P18147106573819261862.Spec : Prop :=
  ∀ n, (P18147106573819261862.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P15402041636868381594

`∩[A040116(n+1), A004626(n+1)]`
-/

namespace A007520.P15402041636868381594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007520.P15402041636868381594

namespace A007520

/-- `∩[A040116(n+1), A004626(n+1)]` -/
def P15402041636868381594.Spec : Prop :=
  ∀ n, (P15402041636868381594.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P235257323083621561

`∩[A192717(n+1), A339907(n+1)]`
-/

namespace A007520.P235257323083621561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007520.P235257323083621561

namespace A007520

/-- `∩[A192717(n+1), A339907(n+1)]` -/
def P235257323083621561.Spec : Prop :=
  ∀ n, (P235257323083621561.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P16908438536831221670

`∩[A332446(n+1), A339907(n+1)]`
-/

namespace A007520.P16908438536831221670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007520.P16908438536831221670

namespace A007520

/-- `∩[A332446(n+1), A339907(n+1)]` -/
def P16908438536831221670.Spec : Prop :=
  ∀ n, (P16908438536831221670.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P3655641224999049523

`∩[A000040(n+1), A004626(n+1)]`
-/

namespace A007520.P3655641224999049523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007520.P3655641224999049523

namespace A007520

/-- `∩[A000040(n+1), A004626(n+1)]` -/
def P3655641224999049523.Spec : Prop :=
  ∀ n, (P3655641224999049523.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P3506200855401051964

`∩[A004626(n+1), A093515(n+1)]`
-/

namespace A007520.P3506200855401051964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007520.P3506200855401051964

namespace A007520

/-- `∩[A004626(n+1), A093515(n+1)]` -/
def P3506200855401051964.Spec : Prop :=
  ∀ n, (P3506200855401051964.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P15547902021481354324

`∩[A000040(n+1), A192717(n+1)]`
-/

namespace A007520.P15547902021481354324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007520.P15547902021481354324

namespace A007520

/-- `∩[A000040(n+1), A192717(n+1)]` -/
def P15547902021481354324.Spec : Prop :=
  ∀ n, (P15547902021481354324.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P8811648685128148040

`∩[A000040(n+1), A332446(n+1)]`
-/

namespace A007520.P8811648685128148040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007520.P8811648685128148040

namespace A007520

/-- `∩[A000040(n+1), A332446(n+1)]` -/
def P8811648685128148040.Spec : Prop :=
  ∀ n, (P8811648685128148040.a n : ℤ) = A007520 (n + 1)

end A007520

/-! ## A007520.P14600927904208247608

`filter[A332446(n+1), A324290(#)]`
-/

namespace A007520.P14600927904208247608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A007520.P14600927904208247608

namespace A007520

/-- `filter[A332446(n+1), A324290(#)]` -/
def P14600927904208247608.Spec : Prop :=
  ∀ n, P14600927904208247608.a n = A007520 (n + 1)

end A007520

/-!
# A007521: Primes of the form 8k + 5.

The programs for A007521, the canonical program `A007521.P14403399304509421067` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007521 has offset 1).

The definition of A007521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007521.P14403399304509421067

`p?[8*n-3]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007521

/-- `p?[8*n-3]` -/
def P14403399304509421067.Spec : Prop :=
  ∀ n, P14403399304509421067.a n = A007521 (n + 1)

theorem P14403399304509421067.correct : P14403399304509421067.Spec := by
  intro n
  simp only [A007521, Nat.add_sub_cancel]

end A007521

/-! ## A007521.P9943889290346901008

`2*floor(p?[8*n+5]/2)+1`
-/

namespace A007521.P9943889290346901008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ + 1

end

end A007521.P9943889290346901008

namespace A007521

/-- `2*floor(p?[8*n+5]/2)+1` -/
def P9943889290346901008.Spec : Prop :=
  ∀ n, P9943889290346901008.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P1324636561486114748

`A186301(n+1)+2`
-/

namespace A007521.P1324636561486114748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1) + 2

end

end A007521.P1324636561486114748

namespace A007521

/-- `A186301(n+1)+2` -/
def P1324636561486114748.Spec : Prop :=
  ∀ n, P1324636561486114748.a n = A007521 (n + 1)

theorem P1324636561486114748.correct : P1324636561486114748.Spec := by
  intro n
  simp only [A007521, Nat.add_sub_cancel, A007521.P1324636561486114748.a, A007521.P14403399304509421067.f1, A007521.P14403399304509421067.a, A186301, A186301.P7683703900443366685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007521

/-! ## A007521.P11739145391553952576

`2*A186299(n+1)+1`
-/

namespace A007521.P11739145391553952576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186299 (n + 1) + 1

end

end A007521.P11739145391553952576

namespace A007521

/-- `2*A186299(n+1)+1` -/
def P11739145391553952576.Spec : Prop :=
  ∀ n, P11739145391553952576.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P13534453274430087048

`2*A186300(n+1)-1`
-/

namespace A007521.P13534453274430087048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186300 (n + 1) - 1

end

end A007521.P13534453274430087048

namespace A007521

/-- `2*A186300(n+1)-1` -/
def P13534453274430087048.Spec : Prop :=
  ∀ n, P13534453274430087048.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P12290813983952733340

`4*(2*A005125(n+1)-1)+1`
-/

namespace A007521.P12290813983952733340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * A005125 (n + 1) - 1) + 1

end

end A007521.P12290813983952733340

namespace A007521

/-- `4*(2*A005125(n+1)-1)+1` -/
def P12290813983952733340.Spec : Prop :=
  ∀ n, P12290813983952733340.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P1061047723358023609

`A186300(n+1)+A186299(n+1)`
-/

namespace A007521.P1061047723358023609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186300 (n + 1) + A186299 (n + 1)

end

end A007521.P1061047723358023609

namespace A007521

/-- `A186300(n+1)+A186299(n+1)` -/
def P1061047723358023609.Spec : Prop :=
  ∀ n, P1061047723358023609.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P829196938174270795

`A022763(n+1)-A007520(n+1)`
-/

namespace A007521.P829196938174270795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022763 (n + 1) - A007520 (n + 1)

end

end A007521.P829196938174270795

namespace A007521

/-- `A022763(n+1)-A007520(n+1)` -/
def P829196938174270795.Spec : Prop :=
  ∀ n, P829196938174270795.a n = A007521 (n + 1)

theorem P829196938174270795.correct : P829196938174270795.Spec := by
  intro n
  simp only [A007521, Nat.add_sub_cancel, A007521.P829196938174270795.a, A007521.P14403399304509421067.f1, A007521.P14403399304509421067.a, A007520, A007520.P9970468352635506010.f1, A007520.P9970468352635506010.a, A022763, A022763.P11171846536189561779.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007521

/-! ## A007521.P9989381645422352540

`A230076(n+1)+A230076(n+1)+A186300(n+1)`
-/

namespace A007521.P9989381645422352540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1) + (A230076 (n + 1) + A186300 (n + 1))

end

end A007521.P9989381645422352540

namespace A007521

/-- `A230076(n+1)+A230076(n+1)+A186300(n+1)` -/
def P9989381645422352540.Spec : Prop :=
  ∀ n, P9989381645422352540.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P3111424896421929487

`A045366(n+2)`
-/

namespace A007521.P3111424896421929487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2)

end

end A007521.P3111424896421929487

namespace A007521

/-- `A045366(n+2)` -/
def P3111424896421929487.Spec : Prop :=
  ∀ n, P3111424896421929487.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P16046529516375106052

`A022763(n+1)-A045339(n+2)`
-/

namespace A007521.P16046529516375106052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022763 (n + 1) - A045339 (n + 2)

end

end A007521.P16046529516375106052

namespace A007521

/-- `A022763(n+1)-A045339(n+2)` -/
def P16046529516375106052.Spec : Prop :=
  ∀ n, P16046529516375106052.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P12123509332223402243

`∩[A002144(n+1), A004627(n+1)]`
-/

namespace A007521.P12123509332223402243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007521.P12123509332223402243

namespace A007521

/-- `∩[A002144(n+1), A004627(n+1)]` -/
def P12123509332223402243.Spec : Prop :=
  ∀ n, (P12123509332223402243.a n : ℤ) = A007521 (n + 1)

end A007521

/-! ## A007521.P6681886854244116515

`∩[A002313(n+1), A004627(n+1)]`
-/

namespace A007521.P6681886854244116515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007521.P6681886854244116515

namespace A007521

/-- `∩[A002313(n+1), A004627(n+1)]` -/
def P6681886854244116515.Spec : Prop :=
  ∀ n, (P6681886854244116515.a n : ℤ) = A007521 (n + 1)

end A007521

/-! ## A007521.P8004841287961289441

`∩[A002144(n+1), A003628(n+1)]`
-/

namespace A007521.P8004841287961289441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007521.P8004841287961289441

namespace A007521

/-- `∩[A002144(n+1), A003628(n+1)]` -/
def P8004841287961289441.Spec : Prop :=
  ∀ n, (P8004841287961289441.a n : ℤ) = A007521 (n + 1)

end A007521

/-! ## A007521.P4564152381366592479

`∩[A002313(n+1), A003628(n+1)]`
-/

namespace A007521.P4564152381366592479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007521.P4564152381366592479

namespace A007521

/-- `∩[A002313(n+1), A003628(n+1)]` -/
def P4564152381366592479.Spec : Prop :=
  ∀ n, (P4564152381366592479.a n : ℤ) = A007521 (n + 1)

end A007521

/-! ## A007521.P15381755989898113879

`∩[A003628(n+1), A004627(n+1)]`
-/

namespace A007521.P15381755989898113879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007521.P15381755989898113879

namespace A007521

/-- `∩[A003628(n+1), A004627(n+1)]` -/
def P15381755989898113879.Spec : Prop :=
  ∀ n, (P15381755989898113879.a n : ℤ) = A007521 (n + 1)

end A007521

/-! ## A007521.P2435738947563128590

`∩[A045355(n+1), A002144(n+1)]`
-/

namespace A007521.P2435738947563128590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007521.P2435738947563128590

namespace A007521

/-- `∩[A045355(n+1), A002144(n+1)]` -/
def P2435738947563128590.Spec : Prop :=
  ∀ n, (P2435738947563128590.a n : ℤ) = A007521 (n + 1)

end A007521

/-! ## A007521.P17210482142332585068

`A339900(4*n+2)`
-/

namespace A007521.P17210482142332585068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 (4 * n + 2)

end

end A007521.P17210482142332585068

namespace A007521

/-- `A339900(4*n+2)` -/
def P17210482142332585068.Spec : Prop :=
  ∀ n, P17210482142332585068.a n = A007521 (n + 1)

end A007521

/-! ## A007521.P8491072555684408395

`∩[A002144(n+1), A003629(n+1)]`
-/

namespace A007521.P8491072555684408395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007521.P8491072555684408395

namespace A007521

/-- `∩[A002144(n+1), A003629(n+1)]` -/
def P8491072555684408395.Spec : Prop :=
  ∀ n, (P8491072555684408395.a n : ℤ) = A007521 (n + 1)

end A007521

/-! ## A007521.P341241194124090370

`∩[A002313(n+1), A003629(n+1)]`
-/

namespace A007521.P341241194124090370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007521.P341241194124090370

namespace A007521

/-- `∩[A002313(n+1), A003629(n+1)]` -/
def P341241194124090370.Spec : Prop :=
  ∀ n, (P341241194124090370.a n : ℤ) = A007521 (n + 1)

end A007521

/-!
# A007522: Primes of the form 8*k+7, that is, primes congruent to -1 mod 8.

The programs for A007522, the canonical program `A007522.P292576302828348404` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007522 has offset 1).

The definition of A007522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007522.P18265166377908072389

`7+8*A139487(n+1)`
-/

namespace A007522.P18265166377908072389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + 8 * A139487 (n + 1)

end

end A007522.P18265166377908072389

namespace A007522

/-- `7+8*A139487(n+1)` -/
def P18265166377908072389.Spec : Prop :=
  ∀ n, P18265166377908072389.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P292576302828348404

`p?[8*n-1]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007522

/-- `p?[8*n-1]` -/
def P292576302828348404.Spec : Prop :=
  ∀ n, P292576302828348404.a n = A007522 (n + 1)

theorem P292576302828348404.correct : P292576302828348404.Spec := by
  intro n
  simp only [A007522, Nat.add_sub_cancel]

end A007522

/-! ## A007522.P16829606547879646627

`or(1, p?[8*n+7])`
-/

namespace A007522.P16829606547879646627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007522.P16829606547879646627

namespace A007522

/-- `or(1, p?[8*n+7])` -/
def P16829606547879646627.Spec : Prop :=
  ∀ n, (P16829606547879646627.a n : ℤ) = A007522 (n + 1)

end A007522

/-! ## A007522.P3292135722462338782

`A186304(n+1)+2`
-/

namespace A007522.P3292135722462338782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186304 (n + 1) + 2

end

end A007522.P3292135722462338782

namespace A007522

/-- `A186304(n+1)+2` -/
def P3292135722462338782.Spec : Prop :=
  ∀ n, P3292135722462338782.a n = A007522 (n + 1)

theorem P3292135722462338782.correct : P3292135722462338782.Spec := by
  intro n
  simp only [A007522, Nat.add_sub_cancel, A007522.P3292135722462338782.a, A007522.P292576302828348404.f1, A007522.P292576302828348404.a, A186304, A186304.P15915226160515621966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007522

/-! ## A007522.P12389085424402278137

`A178389(n+1)/3`
-/

namespace A007522.P12389085424402278137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178389 (n + 1) : ℚ) / 3

end

end A007522.P12389085424402278137

namespace A007522

/-- `A178389(n+1)/3` -/
def P12389085424402278137.Spec : Prop :=
  ∀ n, P12389085424402278137.a n = (A007522 (n + 1) : ℚ)

theorem P12389085424402278137.correct : P12389085424402278137.Spec := by
  intro n
  simp only [A007522, Nat.add_sub_cancel, A007522.P12389085424402278137.a, A007522.P292576302828348404.f1, A007522.P292576302828348404.a, A178389, A178389.P4315006235003171408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007522

/-! ## A007522.P16460666950465847097

`2*A186302(n+1)+1`
-/

namespace A007522.P16460666950465847097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186302 (n + 1) + 1

end

end A007522.P16460666950465847097

namespace A007522

/-- `2*A186302(n+1)+1` -/
def P16460666950465847097.Spec : Prop :=
  ∀ n, P16460666950465847097.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P10746142635237167172

`2*A186303(n+1)-1`
-/

namespace A007522.P10746142635237167172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186303 (n + 1) - 1

end

end A007522.P10746142635237167172

namespace A007522

/-- `2*A186303(n+1)-1` -/
def P10746142635237167172.Spec : Prop :=
  ∀ n, P10746142635237167172.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P10310127218373115436

`2*4*A005122(n+1)-1`
-/

namespace A007522.P10310127218373115436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A005122 (n + 1)) - 1

end

end A007522.P10310127218373115436

namespace A007522

/-- `2*4*A005122(n+1)-1` -/
def P10310127218373115436.Spec : Prop :=
  ∀ n, P10310127218373115436.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P6311865548250990585

`A186303(n+1)+A186302(n+1)`
-/

namespace A007522.P6311865548250990585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186303 (n + 1) + A186302 (n + 1)

end

end A007522.P6311865548250990585

namespace A007522

/-- `A186303(n+1)+A186302(n+1)` -/
def P6311865548250990585.Spec : Prop :=
  ∀ n, P6311865548250990585.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P4119381601955137131

`A022761(n+1)-A007519(n+1)`
-/

namespace A007522.P4119381601955137131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022761 (n + 1) - A007519 (n + 1)

end

end A007522.P4119381601955137131

namespace A007522

/-- `A022761(n+1)-A007519(n+1)` -/
def P4119381601955137131.Spec : Prop :=
  ∀ n, P4119381601955137131.a n = A007522 (n + 1)

theorem P4119381601955137131.correct : P4119381601955137131.Spec := by
  intro n
  simp only [A007522, Nat.add_sub_cancel, A007522.P4119381601955137131.a, A007522.P292576302828348404.f1, A007522.P292576302828348404.a, A007519, A007519.P11660314281699166777.f1, A007519.P11660314281699166777.a, A022761, A022761.P14430388532223490867.f1, A022761.P14430388532223490867.f2, A022761.P14430388532223490867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007522

/-! ## A007522.P17061870954904533597

`A045382(n+2)`
-/

namespace A007522.P17061870954904533597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2)

end

end A007522.P17061870954904533597

namespace A007522

/-- `A045382(n+2)` -/
def P17061870954904533597.Spec : Prop :=
  ∀ n, P17061870954904533597.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P9180292798344222217

`A094712(A133043(n+1))`
-/

namespace A007522.P9180292798344222217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (A133043 (n + 1)).toNat

end

end A007522.P9180292798344222217

namespace A007522

/-- `A094712(A133043(n+1))` -/
def P9180292798344222217.Spec : Prop :=
  ∀ n, P9180292798344222217.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P12461285111085891629

`A065908(n+1)+A065907(n+1)`
-/

namespace A007522.P12461285111085891629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065908 (n + 1) + A065907 (n + 1)

end

end A007522.P12461285111085891629

namespace A007522

/-- `A065908(n+1)+A065907(n+1)` -/
def P12461285111085891629.Spec : Prop :=
  ∀ n, P12461285111085891629.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P16660464281703969948

`p?[A004628(n+1)]%A004622(n+2)`
-/

namespace A007522.P16660464281703969948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004622 (n + 2))

end

end A007522.P16660464281703969948

namespace A007522

/-- `p?[A004628(n+1)]%A004622(n+2)` -/
def P16660464281703969948.Spec : Prop :=
  ∀ n, P16660464281703969948.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P12046078426829406573

`∩[A130073(n+2), A261246(n+2)]`
-/

namespace A007522.P12046078426829406573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261246 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007522.P12046078426829406573

namespace A007522

/-- `∩[A130073(n+2), A261246(n+2)]` -/
def P12046078426829406573.Spec : Prop :=
  ∀ n, (P12046078426829406573.a n : ℤ) = A007522 (n + 1)

end A007522

/-! ## A007522.P6396329273355581586

`record[A006530(8*n+7)]`
-/

namespace A007522.P6396329273355581586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007522.P6396329273355581586

namespace A007522

/-- `record[A006530(8*n+7)]` -/
def P6396329273355581586.Spec : Prop :=
  ∀ n, P6396329273355581586.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P9597553924058745674

`record[A020639(8*n+7)]`
-/

namespace A007522.P9597553924058745674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007522.P9597553924058745674

namespace A007522

/-- `record[A020639(8*n+7)]` -/
def P9597553924058745674.Spec : Prop :=
  ∀ n, P9597553924058745674.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P1978601649334121066

`filter[A004628(n+1), A010051(#)]`
-/

namespace A007522.P1978601649334121066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A007522.P1978601649334121066

namespace A007522

/-- `filter[A004628(n+1), A010051(#)]` -/
def P1978601649334121066.Spec : Prop :=
  ∀ n, P1978601649334121066.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P4361299202593801174

`filter[A014663(n+1), A359152(#)]`
-/

namespace A007522.P4361299202593801174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A007522.P4361299202593801174

namespace A007522

/-- `filter[A014663(n+1), A359152(#)]` -/
def P4361299202593801174.Spec : Prop :=
  ∀ n, P4361299202593801174.a n = A007522 (n + 1)

end A007522

/-! ## A007522.P4158781978632863423

`filter[A004628(n+1), A379969(#)]`
-/

namespace A007522.P4158781978632863423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A007522.P4158781978632863423

namespace A007522

/-- `filter[A004628(n+1), A379969(#)]` -/
def P4158781978632863423.Spec : Prop :=
  ∀ n, P4158781978632863423.a n = A007522 (n + 1)

end A007522

/-!
# A007523: Primes in A092845 (decimal expansion of Pi written backwards).

The programs for A007523, there is no canonical definition to state claims against.
-/

/-! ## A007523.P10666445892705040987

`A092845(A282183(n+1)-1)`
-/

namespace A007523.P10666445892705040987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092845 (A282183 (n + 1) - 1).toNat

end

end A007523.P10666445892705040987

/-! ## A007523.P11469029012175570847

`A092845(3*n)%A011557(A282183(n+1))`
-/

namespace A007523.P11469029012175570847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092845 (3 * n)) (A011557 (A282183 (n + 1)).toNat)

end

end A007523.P11469029012175570847

/-! ## A007523.P6350540165061110207

`A092845(lt[A001203(2*n+3), A001204(n)])`
-/

namespace A007523.P6350540165061110207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092845 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007523.P6350540165061110207

/-!
# A007524: Decimal expansion of log_10(2).

The programs for A007524, there is no canonical definition to state claims against.
-/

/-! ## A007524.P1844798456532434317

`A155522(n+1)`
-/

namespace A007524.P1844798456532434317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155522 (n + 1 + 1)

end

end A007524.P1844798456532434317

/-! ## A007524.P2472401546439184796

`9-A153268(n)`
-/

namespace A007524.P2472401546439184796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153268 n

end

end A007524.P2472401546439184796

/-! ## A007524.P7291846516737283136

`A155522(n)-Δ[-A155522(n)]`
-/

namespace A007524.P7291846516737283136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A155522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155522 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007524.P7291846516737283136

/-!
# A007526: a(n) = n*(a(n-1) + 1), a(0) = 0.

The programs for A007526, the canonical program `A007526.P5708673910196540201` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007526 has offset 0).

The definition of A007526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+1)` (program `A007526.P5708673910196540201`, by `A007526.P5708673910196540201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007526.P7716584723429028348

`n*(1+a(n-1))` with `a(0)=0`
-/

namespace A007526.P7716584723429028348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (1 + a (n - 1))

end

end A007526.P7716584723429028348

namespace A007526

/-- `n*(1+a(n-1))` -/
def P7716584723429028348.Spec : Prop :=
  ∀ n, (P7716584723429028348.a n : ℤ) = A007526 n

theorem P7716584723429028348.correct : P7716584723429028348.Spec := by
  intro n
  simp only [A007526, Nat.add_sub_cancel, A007526.P7716584723429028348.a, A007526.P5708673910196540201.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007526

/-! ## A007526.P5708673910196540201

`n*(a(n-1)+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007526

/-- `n*(a(n-1)+1)` -/
def P5708673910196540201.Spec : Prop :=
  ∀ n, (P5708673910196540201.a n : ℤ) = A007526 n

theorem P5708673910196540201.correct : P5708673910196540201.Spec := by
  intro n
  simp only [A007526]

end A007526

/-! ## A007526.P14273033607382623457

`A000522(n)-1`
-/

namespace A007526.P14273033607382623457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - 1

end

end A007526.P14273033607382623457

namespace A007526

/-- `A000522(n)-1` -/
def P14273033607382623457.Spec : Prop :=
  ∀ n, P14273033607382623457.a n = A007526 n

end A007526

/-! ## A007526.P15444336931882494795

`n!*∑[n/n!]`
-/

namespace A007526.P15444336931882494795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007526.P15444336931882494795

namespace A007526

/-- `n!*∑[n/n!]` -/
def P15444336931882494795.Spec : Prop :=
  ∀ n, P15444336931882494795.a n = (A007526 n : ℚ)

end A007526

/-! ## A007526.P7707492898527826484

`lcm(n, a(n-1))+n` with `a(0)=0`
-/

namespace A007526.P7707492898527826484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm n (a (n - 1)) + n

end

end A007526.P7707492898527826484

namespace A007526

/-- `lcm(n, a(n-1))+n` -/
def P7707492898527826484.Spec : Prop :=
  ∀ n, (P7707492898527826484.a n : ℤ) = A007526 n

end A007526

/-! ## A007526.P9239406776239577347

`n*(1-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A007526.P9239406776239577347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (1 - (-a (n - 1)))

end

end A007526.P9239406776239577347

namespace A007526

/-- `n*(1-floor(-a(n-1)))` -/
def P9239406776239577347.Spec : Prop :=
  ∀ n, P9239406776239577347.a n = A007526 n

end A007526

/-! ## A007526.P3157944209772713736

`n*(1-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A007526.P3157944209772713736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (1 - (-a (n - 1)))

end

end A007526.P3157944209772713736

namespace A007526

/-- `n*(1-ceil(-a(n-1)))` -/
def P3157944209772713736.Spec : Prop :=
  ∀ n, P3157944209772713736.a n = A007526 n

end A007526

/-! ## A007526.P1755604190218258829

`n*(1-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A007526.P1755604190218258829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (1 - (-a (n - 1)))

end

end A007526.P1755604190218258829

namespace A007526

/-- `n*(1-round(-a(n-1)))` -/
def P1755604190218258829.Spec : Prop :=
  ∀ n, P1755604190218258829.a n = A007526 n

end A007526

/-! ## A007526.P15180747701719544906

`-(n*xor(-1, a(n-1)))` with `a(0)=0`
-/

namespace A007526.P15180747701719544906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -((n : ℤ) * Int.xor (-1) (a (n - 1)))

end

end A007526.P15180747701719544906

namespace A007526

/-- `-(n*xor(-1, a(n-1)))` -/
def P15180747701719544906.Spec : Prop :=
  ∀ n, P15180747701719544906.a n = A007526 n

end A007526

/-! ## A007526.P515267602109282883

`(a(n-1)+1)/n^(-1)` with `a(0)=0`
-/

namespace A007526.P515267602109282883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A007526.P515267602109282883

namespace A007526

/-- `(a(n-1)+1)/n^(-1)` -/
def P515267602109282883.Spec : Prop :=
  ∀ n, P515267602109282883.a n = (A007526 n : ℚ)

end A007526

/-!
# A007527: Numbers that are not the sum of 4 hexagonal numbers.

The programs for A007527, there is no canonical definition to state claims against.
-/

/-! ## A007527.P11586992879674923037

`lt[4, A338479(n+1)]+1`
-/

namespace A007527.P11586992879674923037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007527.P11586992879674923037

/-! ## A007527.P17571700073626720132

`lt[4, A338479(A028310(n))]`
-/

namespace A007527.P17571700073626720132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007527.P17571700073626720132

/-! ## A007527.P947782873454317867

`A020725(lt[4, A338479(n+1)])`
-/

namespace A007527.P947782873454317867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A007527.P947782873454317867

/-! ## A007527.P1435114988101949880

`A114637(lt[4, A338479(n+1)])`
-/

namespace A007527.P1435114988101949880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A007527.P1435114988101949880

/-! ## A007527.P4478718895509260124

`lt[4, A338479(A233583(n+1))]`
-/

namespace A007527.P4478718895509260124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007527.P4478718895509260124

/-!
# A007528: Primes of the form 6k-1.

The programs for A007528, the canonical program `A007528.P3292322913023880558` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007528 has offset 1).

The definition of A007528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007528.P3292322913023880558

`p?[3*n+5]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007528

/-- `p?[3*n+5]` -/
def P3292322913023880558.Spec : Prop :=
  ∀ n, (P3292322913023880558.a n : ℤ) = A007528 (n + 1)

theorem P3292322913023880558.correct : P3292322913023880558.Spec := by
  intro n
  simp only [A007528, Nat.add_sub_cancel]

end A007528

/-! ## A007528.P3555617704017200051

`or(1, p?[a(n-1)+3])` with `a(0)=5`
-/

namespace A007528.P3555617704017200051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007528.P3555617704017200051

namespace A007528

/-- `or(1, p?[a(n-1)+3])` -/
def P3555617704017200051.Spec : Prop :=
  ∀ n, (P3555617704017200051.a n : ℤ) = A007528 (n + 1)

end A007528

/-! ## A007528.P1168436922286600079

`A358548(n+1)+A003627(n+1)`
-/

namespace A007528.P1168436922286600079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358548 (n + 1) + A003627 (n + 1)

end

end A007528.P1168436922286600079

namespace A007528

/-- `A358548(n+1)+A003627(n+1)` -/
def P1168436922286600079.Spec : Prop :=
  ∀ n, P1168436922286600079.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P17360389600384259010

`A022759(n+1)-A002476(n+1)`
-/

namespace A007528.P17360389600384259010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022759 (n + 1) - A002476 (n + 1)

end

end A007528.P17360389600384259010

namespace A007528

/-- `A022759(n+1)-A002476(n+1)` -/
def P17360389600384259010.Spec : Prop :=
  ∀ n, P17360389600384259010.a n = A007528 (n + 1)

theorem P17360389600384259010.correct : P17360389600384259010.Spec := by
  intro n
  simp only [A007528, Nat.add_sub_cancel, A007528.P17360389600384259010.a, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A002476, A002476.P3741233015524542667.a, A022759, A022759.P8203283099031169534.a, A024899, A024899.P11184081980913290394.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007528

/-! ## A007528.P10105633660306585728

`A048629(n+1)/A002476(n+1)`
-/

namespace A007528.P10105633660306585728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048629 (n + 1) : ℚ) / (A002476 (n + 1) : ℚ)

end

end A007528.P10105633660306585728

namespace A007528

/-- `A048629(n+1)/A002476(n+1)` -/
def P10105633660306585728.Spec : Prop :=
  ∀ n, P10105633660306585728.a n = (A007528 (n + 1) : ℚ)

end A007528

/-! ## A007528.P767664826148681289

`A003627(n+2)`
-/

namespace A007528.P767664826148681289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

end

end A007528.P767664826148681289

namespace A007528

/-- `A003627(n+2)` -/
def P767664826148681289.Spec : Prop :=
  ∀ n, P767664826148681289.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P8806895011469895595

`A045410(n+2)`
-/

namespace A007528.P8806895011469895595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

end

end A007528.P8806895011469895595

namespace A007528

/-- `A045410(n+2)` -/
def P8806895011469895595.Spec : Prop :=
  ∀ n, P8806895011469895595.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P3443807365297769168

`Δ[A172188(n+1)]`
-/

namespace A007528.P3443807365297769168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007528.P3443807365297769168

namespace A007528

/-- `Δ[A172188(n+1)]` -/
def P3443807365297769168.Spec : Prop :=
  ∀ n, P3443807365297769168.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P5687914769520531743

`A112774(n+2)/2`
-/

namespace A007528.P5687914769520531743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112774 (n + 2) : ℚ) / 2

end

end A007528.P5687914769520531743

namespace A007528

/-- `A112774(n+2)/2` -/
def P5687914769520531743.Spec : Prop :=
  ∀ n, P5687914769520531743.a n = (A007528 (n + 1) : ℚ)

end A007528

/-! ## A007528.P16167267078401664584

`ceil(sqrt(A301812(n+2)))`
-/

namespace A007528.P16167267078401664584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A301812 (n + 2) : ℝ)⌉

end

end A007528.P16167267078401664584

namespace A007528

/-- `ceil(sqrt(A301812(n+2)))` -/
def P16167267078401664584.Spec : Prop :=
  ∀ n, P16167267078401664584.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P14501244820364631607

`A056955(A065475(n+1))`
-/

namespace A007528.P14501244820364631607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (A065475 (n + 1)).toNat

end

end A007528.P14501244820364631607

namespace A007528

/-- `A056955(A065475(n+1))` -/
def P14501244820364631607.Spec : Prop :=
  ∀ n, P14501244820364631607.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P16808154099916191742

`A056955(A181440(n+2))`
-/

namespace A007528.P16808154099916191742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (A181440 (n + 2)).toNat

end

end A007528.P16808154099916191742

namespace A007528

/-- `A056955(A181440(n+2))` -/
def P16808154099916191742.Spec : Prop :=
  ∀ n, P16808154099916191742.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P12025524092912412637

`A056955(A184985(n+2))`
-/

namespace A007528.P12025524092912412637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (A184985 (n + 2)).toNat

end

end A007528.P12025524092912412637

namespace A007528

/-- `A056955(A184985(n+2))` -/
def P12025524092912412637.Spec : Prop :=
  ∀ n, P12025524092912412637.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P18398013751848423926

`A022759(n+1)-A007645(n+2)`
-/

namespace A007528.P18398013751848423926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022759 (n + 1) - A007645 (n + 2)

end

end A007528.P18398013751848423926

namespace A007528

/-- `A022759(n+1)-A007645(n+2)` -/
def P18398013751848423926.Spec : Prop :=
  ∀ n, P18398013751848423926.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P16068215769610273995

`A002476(n+1)-A171715(n+2)`
-/

namespace A007528.P16068215769610273995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - A171715 (n + 2)

end

end A007528.P16068215769610273995

namespace A007528

/-- `A002476(n+1)-A171715(n+2)` -/
def P16068215769610273995.Spec : Prop :=
  ∀ n, P16068215769610273995.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P16788331616749876044

`A172188(n+2)-A172188(n+1)`
-/

namespace A007528.P16788331616749876044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172188 (n + 2) - A172188 (n + 1)

end

end A007528.P16788331616749876044

namespace A007528

/-- `A172188(n+2)-A172188(n+1)` -/
def P16788331616749876044.Spec : Prop :=
  ∀ n, P16788331616749876044.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P7552262754896399214

`A045375(n+2)-A171715(n+2)`
-/

namespace A007528.P7552262754896399214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2) - A171715 (n + 2)

end

end A007528.P7552262754896399214

namespace A007528

/-- `A045375(n+2)-A171715(n+2)` -/
def P7552262754896399214.Spec : Prop :=
  ∀ n, P7552262754896399214.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P5509595181291582430

`A024893(n+2)+A228121(n+2)+A024893(n+2)`
-/

namespace A007528.P5509595181291582430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 2) + (A228121 (n + 2) + A024893 (n + 2))

end

end A007528.P5509595181291582430

namespace A007528

/-- `A024893(n+2)+A228121(n+2)+A024893(n+2)` -/
def P5509595181291582430.Spec : Prop :=
  ∀ n, P5509595181291582430.a n = A007528 (n + 1)

end A007528

/-! ## A007528.P9218219146686600560

`A045309(n+3)`
-/

namespace A007528.P9218219146686600560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 3)

end

end A007528.P9218219146686600560

namespace A007528

/-- `A045309(n+3)` -/
def P9218219146686600560.Spec : Prop :=
  ∀ n, P9218219146686600560.a n = A007528 (n + 1)

end A007528

/-!
# A007529: Prime triples: p; p+2 or p+4; p+6 all prime.

The programs for A007529, there is no canonical definition to state claims against.
-/

/-! ## A007529.P6232046994616701346

`A098415(n+1)-6`
-/

namespace A007529.P6232046994616701346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1) - 6

end

end A007529.P6232046994616701346

/-! ## A007529.P5842684185479543339

`2*A098416(n+1)-3`
-/

namespace A007529.P5842684185479543339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098416 (n + 1) - 3

end

end A007529.P5842684185479543339

/-! ## A007529.P12823419968617722184

`∪[A022004(n+1), A022005(n+1)]`
-/

namespace A007529.P12823419968617722184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P12823419968617722184

/-! ## A007529.P6484724250672981216

`p?[A087695(n+1)-(A104037(n+1)+2)]`
-/

namespace A007529.P6484724250672981216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) - (A104037 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007529.P6484724250672981216

/-! ## A007529.P9002858192788753452

`∩[A015914(n+1), A061771(n+1)]`
-/

namespace A007529.P9002858192788753452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P9002858192788753452

/-! ## A007529.P17171348086077574811

`∩[A023201(n+1), A061771(n+1)]`
-/

namespace A007529.P17171348086077574811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P17171348086077574811

/-! ## A007529.P10751960026674455534

`∩[A061771(n+1), A262084(n+1)]`
-/

namespace A007529.P10751960026674455534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P10751960026674455534

/-! ## A007529.P14675360063393208426

`p?[A175442(n+1)-6]`
-/

namespace A007529.P14675360063393208426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175442 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007529.P14675360063393208426

/-! ## A007529.P15747371543588128129

`∩[A015914(n+1), A253969(n+1)]`
-/

namespace A007529.P15747371543588128129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P15747371543588128129

/-! ## A007529.P2080423269797636828

`∩[A023201(n+1), A253969(n+1)]`
-/

namespace A007529.P2080423269797636828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P2080423269797636828

/-! ## A007529.P13431076021897340505

`∩[A253969(n+1), A262084(n+1)]`
-/

namespace A007529.P13431076021897340505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P13431076021897340505

/-! ## A007529.P6106237877798495987

`A000040(A361267(n+1))`
-/

namespace A007529.P6106237877798495987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A361267 (n + 1)).toNat

end

end A007529.P6106237877798495987

/-! ## A007529.P9023332498790098984

`A000040(eq[3, A162345(n+1)])`
-/

namespace A007529.P9023332498790098984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007529.P9023332498790098984

/-! ## A007529.P1493476416766408541

`A000040(eq[4, A046930(n+1)])`
-/

namespace A007529.P1493476416766408541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007529.P1493476416766408541

/-! ## A007529.P5547288099945014490

`A000040(eq[4, A159461(n+1)])`
-/

namespace A007529.P5547288099945014490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007529.P5547288099945014490

/-! ## A007529.P2315377599677286779

`A000040(eq[6, A031131(n+1)]+1)`
-/

namespace A007529.P2315377599677286779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A007529.P2315377599677286779

/-! ## A007529.P10793139619932739595

`∩[A061771(n+1), A086304(n+1)]`
-/

namespace A007529.P10793139619932739595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P10793139619932739595

/-! ## A007529.P6132742446174592492

`∩[A061771(n+1), A118538(n+1)]`
-/

namespace A007529.P6132742446174592492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P6132742446174592492

/-! ## A007529.P295799960850205057

`∩[A086304(n+1), A253969(n+1)]`
-/

namespace A007529.P295799960850205057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P295799960850205057

/-! ## A007529.P3629804814248208147

`∩[A118538(n+1), A253969(n+1)]`
-/

namespace A007529.P3629804814248208147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007529.P3629804814248208147

/-!
# A007530: Prime quadruples: numbers k such that k, k+2, k+6, k+8 are all prime.

The programs for A007530, there is no canonical definition to state claims against.
-/

/-! ## A007530.P4122550420061219537

`A125855(n+1)+1`
-/

namespace A007530.P4122550420061219537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1) + 1

end

end A007530.P4122550420061219537

/-! ## A007530.P2860544683316313376

`A136720(n+1)-2`
-/

namespace A007530.P2860544683316313376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (n + 1) - 2

end

end A007530.P2860544683316313376

/-! ## A007530.P5413415818663799847

`A173037(n+1)-4`
-/

namespace A007530.P5413415818663799847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) - 4

end

end A007530.P5413415818663799847

/-! ## A007530.P1841739751215203972

`A136721(n+1)-6`
-/

namespace A007530.P1841739751215203972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1) - 6

end

end A007530.P1841739751215203972

/-! ## A007530.P3796033064930416563

`A090258(n+1)-8`
-/

namespace A007530.P3796033064930416563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1) - 8

end

end A007530.P3796033064930416563

/-! ## A007530.P11676585981595055203

`A064974(n+1)-9`
-/

namespace A007530.P11676585981595055203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064974 (n + 1) - 9

end

end A007530.P11676585981595055203

/-! ## A007530.P18238020130715298332

`2*A222960(n+1)+3`
-/

namespace A007530.P18238020130715298332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222960 (n + 1) + 3

end

end A007530.P18238020130715298332

/-! ## A007530.P17875322840236817213

`3*A173092(n+1)-4`
-/

namespace A007530.P17875322840236817213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173092 (n + 1) - 4

end

end A007530.P17875322840236817213

/-! ## A007530.P10494867019816395538

`A222960(n+1)+floor(A173037(n+1)/2)`
-/

namespace A007530.P10494867019816395538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222960 (n + 1) + ⌊(A173037 (n + 1) : ℚ) / 2⌋

end

end A007530.P10494867019816395538

/-! ## A007530.P4130050103723240866

`A136162(4*n+1)`
-/

namespace A007530.P4130050103723240866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (4 * n + 1)

end

end A007530.P4130050103723240866

/-! ## A007530.P756424308962448874

`∩[A046138(n+1), A053778(n+1)]`
-/

namespace A007530.P756424308962448874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P756424308962448874

/-! ## A007530.P14921759580296862707

`∩[A046138(n+1), A089628(n+3)]`
-/

namespace A007530.P14921759580296862707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P14921759580296862707

/-! ## A007530.P14335120992324842900

`∩[A022004(n+1), A046138(n+1)]`
-/

namespace A007530.P14335120992324842900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P14335120992324842900

/-! ## A007530.P14060252753115015761

`∩[A022004(n+1), A053778(n+1)]`
-/

namespace A007530.P14060252753115015761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P14060252753115015761

/-! ## A007530.P2957792173238571907

`∩[A022004(n+1), A089628(n+3)]`
-/

namespace A007530.P2957792173238571907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P2957792173238571907

/-! ## A007530.P17898313840498125999

`∩[A022004(n+1), A046134(n+1)]`
-/

namespace A007530.P17898313840498125999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P17898313840498125999

/-! ## A007530.P490529638672418310

`∩[A046134(n+1), A046138(n+1)]`
-/

namespace A007530.P490529638672418310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P490529638672418310

/-! ## A007530.P8283188427754979764

`∩[A046134(n+1), A053778(n+1)]`
-/

namespace A007530.P8283188427754979764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P8283188427754979764

/-! ## A007530.P6874963883606798092

`∩[A022005(n+1), A073648(n+1)]-2`
-/

namespace A007530.P6874963883606798092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A007530.P6874963883606798092

/-! ## A007530.P8699172507463397779

`∩[A001359(n+1), A046138(n+1)]`
-/

namespace A007530.P8699172507463397779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007530.P8699172507463397779

/-!
# A007531: a(n) = n*(n-1)*(n-2) (or n!/(n-3)!).

The programs for A007531, the canonical program `A007531.P15538264737483534371` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007531 has offset 0).

The definition of A007531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-2)` (program `A007531.P15538264737483534371`, by `A007531.P15538264737483534371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007531.P18206771556847561540

`6*C(n, 3)`
-/

namespace A007531.P18206771556847561540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose n 3

end

end A007531.P18206771556847561540

namespace A007531

/-- `6*C(n, 3)` -/
def P18206771556847561540.Spec : Prop :=
  ∀ n, (P18206771556847561540.a n : ℤ) = A007531 n

theorem P18206771556847561540.correct : P18206771556847561540.Spec := by
  intro n
  simp only [A007531, Nat.add_sub_cancel, A007531.P18206771556847561540.a, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007531

/-! ## A007531.P15538264737483534371

`n*(n-1)*(n-2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007531

/-- `n*(n-1)*(n-2)` -/
def P15538264737483534371.Spec : Prop :=
  ∀ n, P15538264737483534371.a n = A007531 n

theorem P15538264737483534371.correct : P15538264737483534371.Spec := by
  intro n
  simp only [A007531]

end A007531

/-! ## A007531.P16130780603882167412

`abs(xor(1, n-(n-1)^3))`
-/

namespace A007531.P16130780603882167412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - ((n : ℤ) - 1) ^ 3)|

end

end A007531.P16130780603882167412

namespace A007531

/-- `abs(xor(1, n-(n-1)^3))` -/
def P16130780603882167412.Spec : Prop :=
  ∀ n, P16130780603882167412.a n = A007531 n

end A007531

/-! ## A007531.P4925458103915021175

`-xor(1, n-(n-1)^3)`
-/

namespace A007531.P4925458103915021175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 ((n : ℤ) - ((n : ℤ) - 1) ^ 3)

end

end A007531.P4925458103915021175

namespace A007531

/-- `-xor(1, n-(n-1)^3)` -/
def P4925458103915021175.Spec : Prop :=
  ∀ n, P4925458103915021175.a n = A007531 n

end A007531

/-! ## A007531.P13583452565697849901

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A007531.P13583452565697849901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007531.P13583452565697849901

namespace A007531

/-- `∑[∑[a(n-1)+6]]` -/
def P13583452565697849901.Spec : Prop :=
  ∀ n, (P13583452565697849901.a n : ℤ) = A007531 n

end A007531

/-! ## A007531.P5356789073752512293

`xor(1, (n-1)^3-(n-2))`
-/

namespace A007531.P5356789073752512293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) ^ 3 - ((n : ℤ) - 2))

end

end A007531.P5356789073752512293

namespace A007531

/-- `xor(1, (n-1)^3-(n-2))` -/
def P5356789073752512293.Spec : Prop :=
  ∀ n, P5356789073752512293.a n = A007531 n

end A007531

/-! ## A007531.P12811544029560909209

`Δ[(C(n, 2)-n)²]+n-1`
-/

namespace A007531.P12811544029560909209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n : ℤ) - 1)

end

end A007531.P12811544029560909209

namespace A007531

/-- `Δ[(C(n, 2)-n)²]+n-1` -/
def P12811544029560909209.Spec : Prop :=
  ∀ n, P12811544029560909209.a n = A007531 n

theorem P12811544029560909209.correct : P12811544029560909209.Spec := by
  intro n
  simp only [A007531, Nat.add_sub_cancel, A007531.P12811544029560909209.f1, A007531.P12811544029560909209.a, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007531

/-! ## A007531.P11237421475313983330

`lcm(n, (1-n)²)+n-n²`
-/

namespace A007531.P11237421475313983330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2) : ℤ) + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A007531.P11237421475313983330

namespace A007531

/-- `lcm(n, (1-n)²)+n-n²` -/
def P11237421475313983330.Spec : Prop :=
  ∀ n, P11237421475313983330.a n = A007531 n

end A007531

/-! ## A007531.P1178198062782778085

`and((n-1)^3-(n-1), -2)`
-/

namespace A007531.P1178198062782778085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n : ℤ) - 1) ^ 3 - ((n : ℤ) - 1)) (-2)

end

end A007531.P1178198062782778085

namespace A007531

/-- `and((n-1)^3-(n-1), -2)` -/
def P1178198062782778085.Spec : Prop :=
  ∀ n, P1178198062782778085.a n = A007531 n

end A007531

/-! ## A007531.P13640008151399878055

`Δ[C((2-n)², 2)-a(n-1)]` with `a(0)=0`
-/

namespace A007531.P13640008151399878055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.choose ((2 - (n : ℤ)) ^ 2).toNat 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007531.P13640008151399878055

namespace A007531

/-- `Δ[C((2-n)², 2)-a(n-1)]` -/
def P13640008151399878055.Spec : Prop :=
  ∀ n, P13640008151399878055.a n = A007531 n

end A007531

/-! ## A007531.P3662883839812502857

`Δ[(n-1-C(n, 2))²]-(n-1)`
-/

namespace A007531.P3662883839812502857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (Nat.choose n 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - 1)

end

end A007531.P3662883839812502857

namespace A007531

/-- `Δ[(n-1-C(n, 2))²]-(n-1)` -/
def P3662883839812502857.Spec : Prop :=
  ∀ n, P3662883839812502857.a n = A007531 n

theorem P3662883839812502857.correct : P3662883839812502857.Spec := by
  intro n
  simp only [A007531, Nat.add_sub_cancel, A007531.P3662883839812502857.f1, A007531.P3662883839812502857.a, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007531

/-! ## A007531.P4957260963547108740

`or(n-1, abs(1-n))^3-(n-1)`
-/

namespace A007531.P4957260963547108740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) |1 - (n : ℤ)| ^ 3 - ((n : ℤ) - 1)

end

end A007531.P4957260963547108740

namespace A007531

/-- `or(n-1, abs(1-n))^3-(n-1)` -/
def P4957260963547108740.Spec : Prop :=
  ∀ n, P4957260963547108740.a n = A007531 n

end A007531

/-! ## A007531.P5319988485699102086

`a(n-1)-∑[a(n-1)-6]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A007531.P5319988485699102086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007531.P5319988485699102086

namespace A007531

/-- `a(n-1)-∑[a(n-1)-6]` -/
def P5319988485699102086.Spec : Prop :=
  ∀ n, P5319988485699102086.a n = A007531 n

end A007531

/-! ## A007531.P15984988510154834460

`(n-1)^gcd(3, a(n-1))-(n-1)` with `a(0)=0`
-/

namespace A007531.P15984988510154834460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1) ^ Int.gcd 3 (a (n - 1)) - ((n : ℤ) - 1)

end

end A007531.P15984988510154834460

namespace A007531

/-- `(n-1)^gcd(3, a(n-1))-(n-1)` -/
def P15984988510154834460.Spec : Prop :=
  ∀ n, P15984988510154834460.a n = A007531 n

end A007531

/-! ## A007531.P13487352413998782687

`A280058(n)/2`
-/

namespace A007531.P13487352413998782687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280058 n : ℚ) / 2

end

end A007531.P13487352413998782687

namespace A007531

/-- `A280058(n)/2` -/
def P13487352413998782687.Spec : Prop :=
  ∀ n, P13487352413998782687.a n = (A007531 n : ℚ)

theorem P13487352413998782687.correct : P13487352413998782687.Spec := by
  intro n
  simp only [A007531, Nat.add_sub_cancel, A007531.P13487352413998782687.a, A007531.P15538264737483534371.a, A280058, A280058.P16968223727792884466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007531

/-! ## A007531.P11714210100449366585

`A242659(n)-2*n`
-/

namespace A007531.P11714210100449366585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242659 n - (2 * n : ℤ)

end

end A007531.P11714210100449366585

namespace A007531

/-- `A242659(n)-2*n` -/
def P11714210100449366585.Spec : Prop :=
  ∀ n, P11714210100449366585.a n = A007531 n

theorem P11714210100449366585.correct : P11714210100449366585.Spec := by
  intro n
  simp only [A007531, Nat.add_sub_cancel, A007531.P11714210100449366585.a, A007531.P15538264737483534371.a, A242659, A242659.P11891183138377020416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007531

/-! ## A007531.P10783215267177171042

`n^3-A000567(n)`
-/

namespace A007531.P10783215267177171042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A000567 n

end

end A007531.P10783215267177171042

namespace A007531

/-- `n^3-A000567(n)` -/
def P10783215267177171042.Spec : Prop :=
  ∀ n, P10783215267177171042.a n = A007531 n

theorem P10783215267177171042.correct : P10783215267177171042.Spec := by
  intro n
  simp only [A007531, Nat.add_sub_cancel, A007531.P10783215267177171042.a, A007531.P15538264737483534371.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007531

/-! ## A007531.P1712825503056526760

`A212133(n)-n^3`
-/

namespace A007531.P1712825503056526760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n - (n ^ 3 : ℤ)

end

end A007531.P1712825503056526760

namespace A007531

/-- `A212133(n)-n^3` -/
def P1712825503056526760.Spec : Prop :=
  ∀ n, P1712825503056526760.a n = A007531 n

theorem P1712825503056526760.correct : P1712825503056526760.Spec := by
  intro n
  simp only [A007531, Nat.add_sub_cancel, A007531.P1712825503056526760.a, A007531.P15538264737483534371.a, A212133, A212133.P14369258408973180320.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007531

/-! ## A007531.P6150725233402450783

`A034324(n+1)-(n+1)`
-/

namespace A007531.P6150725233402450783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034324 (n + 1) - (n + 1 : ℤ)

end

end A007531.P6150725233402450783

namespace A007531

/-- `A034324(n+1)-(n+1)` -/
def P6150725233402450783.Spec : Prop :=
  ∀ n, P6150725233402450783.a n = A007531 n

theorem P6150725233402450783.correct : P6150725233402450783.Spec := by
  intro n
  simp only [A007531, Nat.add_sub_cancel, A007531.P6150725233402450783.a, A007531.P15538264737483534371.a, A034324, A034324.P6934166812929750048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007531

/-!
# A007532: Handsome numbers: sum of positive powers of its digits; a(n) = Sum_{i=1..k} d[i]^e[i] where d[1..k] are the decimal digits of a(n), e[i] > 0.

The programs for A007532, there is no canonical definition to state claims against.
-/

/-! ## A007532.P4238817824437520546

`record[A061862(A163352(n)+2)]`
-/

namespace A007532.P4238817824437520546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (A163352 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007532.P4238817824437520546

/-! ## A007532.P5835625677313172162

`A061862(n+2)%record[A297570(n)]`
-/

namespace A007532.P5835625677313172162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061862 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A007532.P5835625677313172162

/-! ## A007532.P11227391140393251957

`A134703(n+2)%record[A297570(n)]`
-/

namespace A007532.P11227391140393251957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134703 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A007532.P11227391140393251957

/-! ## A007532.P11908917211439825126

`A061862(n+2)^A061858(3*n+2)!`
-/

namespace A007532.P11908917211439825126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 2) ^ Nat.factorial (A061858 (3 * n + 2)).toNat

end

end A007532.P11908917211439825126

/-! ## A007532.P17927320488594715271

`A061862(n+2)^A008277(A027907(n))`
-/

namespace A007532.P17927320488594715271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061862 (n + 2) : ℚ) ^ (A008277 (A027907 n).toNat : ℤ)

end

end A007532.P17927320488594715271

/-!
# A007533: a(n) = (5*n + 1)^2 + 4*n + 1.

The programs for A007533, the canonical program `A007533.P18197123027460240439` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007533 has offset 0).

The definition of A007533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)²+4*n+1` (program `A007533.P18197123027460240439`, by `A007533.P18197123027460240439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007533.P17149179870083211612

`25*n²+14*n+2`
-/

namespace A007533.P17149179870083211612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n ^ 2 + 14 * n + 2

end

end A007533.P17149179870083211612

namespace A007533

/-- `25*n²+14*n+2` -/
def P17149179870083211612.Spec : Prop :=
  ∀ n, (P17149179870083211612.a n : ℤ) = A007533 n

theorem P17149179870083211612.correct : P17149179870083211612.Spec := by
  intro n
  simp only [A007533, Nat.add_sub_cancel, A007533.P17149179870083211612.a, A007533.P18197123027460240439.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007533

/-! ## A007533.P18197123027460240439

`(5*n+1)²+4*n+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007533

/-- `(5*n+1)²+4*n+1` -/
def P18197123027460240439.Spec : Prop :=
  ∀ n, (P18197123027460240439.a n : ℤ) = A007533 n

theorem P18197123027460240439.correct : P18197123027460240439.Spec := by
  intro n
  simp only [A007533]

end A007533

/-! ## A007533.P2932819800946753427

`A154355(n+1)`
-/

namespace A007533.P2932819800946753427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (n + 1)

end

end A007533.P2932819800946753427

namespace A007533

/-- `A154355(n+1)` -/
def P2932819800946753427.Spec : Prop :=
  ∀ n, P2932819800946753427.a n = A007533 n

theorem P2932819800946753427.correct : P2932819800946753427.Spec := by
  intro n
  simp only [A007533, Nat.add_sub_cancel, A007533.P2932819800946753427.a, A007533.P18197123027460240439.a, A154355, A154355.P16520686240140108538.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007533

/-! ## A007533.P16438573400491739673

`∑[a(n-1)+50]` with `a(0)=2, a(1)=39`
-/

namespace A007533.P16438573400491739673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 39] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007533.P16438573400491739673

namespace A007533

/-- `∑[a(n-1)+50]` -/
def P16438573400491739673.Spec : Prop :=
  ∀ n, (P16438573400491739673.a n : ℤ) = A007533 n

end A007533

/-! ## A007533.P8702144164441842366

`floor((sqrt(a(n-1))+5)²)` with `a(0)=2`
-/

namespace A007533.P8702144164441842366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(Real.sqrt (a (n - 1) : ℝ) + 5) ^ 2⌋

end

end A007533.P8702144164441842366

namespace A007533

/-- `floor((sqrt(a(n-1))+5)²)` -/
def P8702144164441842366.Spec : Prop :=
  ∀ n, P8702144164441842366.a n = A007533 n

end A007533

/-! ## A007533.P7148530202530434093

`round((sqrt(a(n-1))+5)²)` with `a(0)=2`
-/

namespace A007533.P7148530202530434093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (a (n - 1) : ℝ) + 5) ^ 2)

end

end A007533.P7148530202530434093

namespace A007533

/-- `round((sqrt(a(n-1))+5)²)` -/
def P7148530202530434093.Spec : Prop :=
  ∀ n, P7148530202530434093.a n = A007533 n

end A007533

/-! ## A007533.P14701104944640085859

`floor((a(n-1)^(1/2)+5)²)` with `a(0)=2`
-/

namespace A007533.P14701104944640085859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ) + 5) ^ 2⌋

end

end A007533.P14701104944640085859

namespace A007533

/-- `floor((a(n-1)^(1/2)+5)²)` -/
def P14701104944640085859.Spec : Prop :=
  ∀ n, P14701104944640085859.a n = A007533 n

end A007533

/-! ## A007533.P11291760920553478046

`(A017006(n)+n²)/2`
-/

namespace A007533.P11291760920553478046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017006 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A007533.P11291760920553478046

namespace A007533

/-- `(A017006(n)+n²)/2` -/
def P11291760920553478046.Spec : Prop :=
  ∀ n, P11291760920553478046.a n = (A007533 n : ℚ)

theorem P11291760920553478046.correct : P11291760920553478046.Spec := by
  intro n
  simp only [A007533, Nat.add_sub_cancel, A007533.P11291760920553478046.a, A007533.P18197123027460240439.a, A017006, A017006.P12235891629108797892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007533

/-! ## A007533.P5602830053487047067

`(n²+A017005(n)²)/2`
-/

namespace A007533.P5602830053487047067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + A017005 n ^ 2 : ℚ) / 2

end

end A007533.P5602830053487047067

namespace A007533

/-- `(n²+A017005(n)²)/2` -/
def P5602830053487047067.Spec : Prop :=
  ∀ n, P5602830053487047067.a n = (A007533 n : ℚ)

theorem P5602830053487047067.correct : P5602830053487047067.Spec := by
  intro n
  simp only [A007533, Nat.add_sub_cancel, A007533.P5602830053487047067.a, A007533.P18197123027460240439.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007533

/-! ## A007533.P4751029573998954070

`A034110(A016861(n))`
-/

namespace A007533.P4751029573998954070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034110 (A016861 n).toNat

end

end A007533.P4751029573998954070

namespace A007533

/-- `A034110(A016861(n))` -/
def P4751029573998954070.Spec : Prop :=
  ∀ n, P4751029573998954070.a n = A007533 n

end A007533

/-!
# A007534: Positive even numbers that are not the sum of a pair of twin primes.

The programs for A007534, there is no canonical definition to state claims against.
-/

/-! ## A007534.P2690378514348573214

`A051345(n+3)-3`
-/

namespace A007534.P2690378514348573214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 3) - 3

end

end A007534.P2690378514348573214

/-! ## A007534.P14932112012001222260

`∑[abs(Δ[A051345(n+2)])]`
-/

namespace A007534.P14932112012001222260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007534.P14932112012001222260

/-! ## A007534.P991497465151918331

`∑[A000027(Δ[A051345(n+2)])]`
-/

namespace A007534.P991497465151918331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007534.P991497465151918331

/-! ## A007534.P5122322261192667413

`∑[Δ[A051345(n+2)]+A008683(4*(n+1))]`
-/

namespace A007534.P5122322261192667413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007534.P5122322261192667413

/-! ## A007534.P13979408848241011858

`∑[A014963(10*(n+1))*Δ[A051345(n+2)]]`
-/

namespace A007534.P13979408848241011858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007534.P13979408848241011858

/-!
# A007535: Smallest pseudoprime ( > n ) to base n: smallest composite number m > n such that n^(m-1)-1 is divisible by m.

The programs for A007535, there is no canonical definition to state claims against.
-/

/-! ## A007535.P9462652317121234305

`A090086(n+1)+A089991(A090091(n))`
-/

namespace A007535.P9462652317121234305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090086 (n + 1) + A089991 (A090091 n).toNat

end

end A007535.P9462652317121234305

/-!
# A007536: Numbers that are not the sum of 3 hexagonal numbers (probably finite).

The programs for A007536, there is no canonical definition to state claims against.
-/

/-! ## A007536.P6530090818622930145

`lt[3, A338479(n+1)]+1`
-/

namespace A007536.P6530090818622930145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007536.P6530090818622930145

/-! ## A007536.P9761206135201538296

`lt[3, A338479(A028310(n))]`
-/

namespace A007536.P9761206135201538296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007536.P9761206135201538296

/-! ## A007536.P11884871628157739756

`A020725(lt[3, A338479(n+1)])`
-/

namespace A007536.P11884871628157739756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A007536.P11884871628157739756

/-! ## A007536.P4663010170541243658

`A114637(lt[3, A338479(n+1)])`
-/

namespace A007536.P4663010170541243658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A007536.P4663010170541243658

/-! ## A007536.P12957720483985106635

`lt[3, A338479(A233583(n+1))]`
-/

namespace A007536.P12957720483985106635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007536.P12957720483985106635

/-!
# A007537: Number of proper covers of an n-set.

The programs for A007537, there is no canonical definition to state claims against.
-/

/-! ## A007537.P3195591118200651709

`A003465(n+1)-2^(2^(n+1)-2)`
-/

namespace A007537.P3195591118200651709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003465 (n + 1) : ℚ) - (2 : ℚ) ^ ((2 ^ (n + 1) : ℤ) - 2 : ℤ)

end

end A007537.P3195591118200651709

/-! ## A007537.P12381549411830553961

`∑[Δ[A318129(n)]/2]`
-/

namespace A007537.P12381549411830553961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318129 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007537.P12381549411830553961

/-! ## A007537.P3649933746775825595

`floor(A318129(n+1)/2)`
-/

namespace A007537.P3649933746775825595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A318129 (n + 1) : ℚ) / 2⌋

end

end A007537.P3649933746775825595

/-! ## A007537.P9751073625949977707

`record[A054244(n+1)-2^n]`
-/

namespace A007537.P9751073625949977707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054244 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007537.P9751073625949977707

/-!
# A007538: A self-generating sequence: there are a(n) 3's between successive 2's.

The programs for A007538, the canonical program `A007538.P444732654204593279` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007538 has offset 1).

The definition of A007538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007538.P444732654204593279

`floor((n+1)*(1+sqrt(3)))-floor(n*(1+sqrt(3)))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007538

/-- `floor((n+1)*(1+sqrt(3)))-floor(n*(1+sqrt(3)))` -/
def P444732654204593279.Spec : Prop :=
  ∀ n, P444732654204593279.a n = A007538 (n + 1)

theorem P444732654204593279.correct : P444732654204593279.Spec := by
  intro n
  simp only [A007538, Nat.add_sub_cancel]

end A007538

/-! ## A007538.P14683770070550130548

`or(2, log2(Δ[floor(n*sqrt(3))]))`
-/

namespace A007538.P14683770070550130548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ)))

end

end A007538.P14683770070550130548

namespace A007538

/-- `or(2, log2(Δ[floor(n*sqrt(3))]))` -/
def P14683770070550130548.Spec : Prop :=
  ∀ n, P14683770070550130548.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P15571962893206382982

`xor(2, log2(Δ[floor(n*sqrt(3))]))`
-/

namespace A007538.P15571962893206382982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ)))

end

end A007538.P15571962893206382982

namespace A007538

/-- `xor(2, log2(Δ[floor(n*sqrt(3))]))` -/
def P15571962893206382982.Spec : Prop :=
  ∀ n, P15571962893206382982.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P13853980996640108170

`A000040(2-Δ[A195120(n)])`
-/

namespace A007538.P13853980996640108170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A007538.P13853980996640108170

namespace A007538

/-- `A000040(2-Δ[A195120(n)])` -/
def P13853980996640108170.Spec : Prop :=
  ∀ n, P13853980996640108170.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P3691311058267140417

`A001538(n)%A276865(n+1)`
-/

namespace A007538.P3691311058267140417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A276865 (n + 1))

end

end A007538.P3691311058267140417

namespace A007538

/-- `A001538(n)%A276865(n+1)` -/
def P3691311058267140417.Spec : Prop :=
  ∀ n, P3691311058267140417.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P6526128063974324891

`A017653(n)%A276865(n+1)`
-/

namespace A007538.P6526128063974324891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A276865 (n + 1))

end

end A007538.P6526128063974324891

namespace A007538

/-- `A017653(n)%A276865(n+1)` -/
def P6526128063974324891.Spec : Prop :=
  ∀ n, P6526128063974324891.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P15695096321858258197

`A017655(n)%A276865(n+1)`
-/

namespace A007538.P15695096321858258197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A276865 (n + 1))

end

end A007538.P15695096321858258197

namespace A007538

/-- `A017655(n)%A276865(n+1)` -/
def P15695096321858258197.Spec : Prop :=
  ∀ n, P15695096321858258197.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P16298033105548535614

`A017657(n)%A276865(n+1)`
-/

namespace A007538.P16298033105548535614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A276865 (n + 1))

end

end A007538.P16298033105548535614

namespace A007538

/-- `A017657(n)%A276865(n+1)` -/
def P16298033105548535614.Spec : Prop :=
  ∀ n, P16298033105548535614.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P7587587158840798157

`A073609(n)%A276865(n+1)`
-/

namespace A007538.P7587587158840798157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073609 n) (A276865 (n + 1))

end

end A007538.P7587587158840798157

namespace A007538

/-- `A073609(n)%A276865(n+1)` -/
def P7587587158840798157.Spec : Prop :=
  ∀ n, P7587587158840798157.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P1338310851549734088

`A152951(n)%A276865(n+1)`
-/

namespace A007538.P1338310851549734088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152951 n) (A276865 (n + 1))

end

end A007538.P1338310851549734088

namespace A007538

/-- `A152951(n)%A276865(n+1)` -/
def P1338310851549734088.Spec : Prop :=
  ∀ n, P1338310851549734088.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P11602681753823355147

`A348845(n)%A276865(n+1)`
-/

namespace A007538.P11602681753823355147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348845 n) (A276865 (n + 1))

end

end A007538.P11602681753823355147

namespace A007538

/-- `A348845(n)%A276865(n+1)` -/
def P11602681753823355147.Spec : Prop :=
  ∀ n, P11602681753823355147.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P5719858720511083451

`A350055(n)%A276865(n+1)`
-/

namespace A007538.P5719858720511083451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350055 n) (A276865 (n + 1))

end

end A007538.P5719858720511083451

namespace A007538

/-- `A350055(n)%A276865(n+1)` -/
def P5719858720511083451.Spec : Prop :=
  ∀ n, P5719858720511083451.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P17052002991089312524

`A005385(n+1)%A276865(n+1)`
-/

namespace A007538.P17052002991089312524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (n + 1)) (A276865 (n + 1))

end

end A007538.P17052002991089312524

namespace A007538

/-- `A005385(n+1)%A276865(n+1)` -/
def P17052002991089312524.Spec : Prop :=
  ∀ n, P17052002991089312524.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P15788595654734309478

`A044494(n+1)%A276865(n+1)`
-/

namespace A007538.P15788595654734309478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044494 (n + 1)) (A276865 (n + 1))

end

end A007538.P15788595654734309478

namespace A007538

/-- `A044494(n+1)%A276865(n+1)` -/
def P15788595654734309478.Spec : Prop :=
  ∀ n, P15788595654734309478.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P16910364095329481699

`A044506(n+1)%A276865(n+1)`
-/

namespace A007538.P16910364095329481699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044506 (n + 1)) (A276865 (n + 1))

end

end A007538.P16910364095329481699

namespace A007538

/-- `A044506(n+1)%A276865(n+1)` -/
def P16910364095329481699.Spec : Prop :=
  ∀ n, P16910364095329481699.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P18072577158170892604

`A044518(n+1)%A276865(n+1)`
-/

namespace A007538.P18072577158170892604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044518 (n + 1)) (A276865 (n + 1))

end

end A007538.P18072577158170892604

namespace A007538

/-- `A044518(n+1)%A276865(n+1)` -/
def P18072577158170892604.Spec : Prop :=
  ∀ n, P18072577158170892604.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P4201245197510569433

`A049001(n+1)%A276865(n+1)`
-/

namespace A007538.P4201245197510569433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049001 (n + 1)) (A276865 (n + 1))

end

end A007538.P4201245197510569433

namespace A007538

/-- `A049001(n+1)%A276865(n+1)` -/
def P4201245197510569433.Spec : Prop :=
  ∀ n, P4201245197510569433.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P16321496069091984311

`A049002(n+1)%A276865(n+1)`
-/

namespace A007538.P16321496069091984311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049002 (n + 1)) (A276865 (n + 1))

end

end A007538.P16321496069091984311

namespace A007538

/-- `A049002(n+1)%A276865(n+1)` -/
def P16321496069091984311.Spec : Prop :=
  ∀ n, P16321496069091984311.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P15553756103491255004

`A056899(n+1)%A276865(n+1)`
-/

namespace A007538.P15553756103491255004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056899 (n + 1)) (A276865 (n + 1))

end

end A007538.P15553756103491255004

namespace A007538

/-- `A056899(n+1)%A276865(n+1)` -/
def P15553756103491255004.Spec : Prop :=
  ∀ n, P15553756103491255004.a n = A007538 (n + 1)

end A007538

/-! ## A007538.P6315082536638417145

`A057838(n+1)%A276865(n+1)`
-/

namespace A007538.P6315082536638417145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057838 (n + 1)) (A276865 (n + 1))

end

end A007538.P6315082536638417145

namespace A007538

/-- `A057838(n+1)%A276865(n+1)` -/
def P6315082536638417145.Spec : Prop :=
  ∀ n, P6315082536638417145.a n = A007538 (n + 1)

end A007538

/-!
# A007539: a(n) = first n-fold perfect (or n-multiperfect) number.

The programs for A007539, there is no canonical definition to state claims against.
-/

/-! ## A007539.P5438972190915055385

`A317681(2*(n+1))`
-/

namespace A007539.P5438972190915055385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317681 (2 * (n + 1))

end

end A007539.P5438972190915055385

/-! ## A007539.P18439124201914658362

`record[A317681(n+2)/(-1)^n]`
-/

namespace A007539.P18439124201914658362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317681 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007539.P18439124201914658362

/-!
# A007541: Incrementally largest terms in the continued fraction for Pi-2 (cf. A001203).

The programs for A007541, there is no canonical definition to state claims against.
-/

/-! ## A007541.P11624951446837745371

`gcd(floor(acot(n)), A033089(n+1))`
-/

namespace A007541.P11624951446837745371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A033089 (n + 1))

end

end A007541.P11624951446837745371

/-! ## A007541.P774023105833700883

`A033089(n+1)-A000038(n)`
-/

namespace A007541.P774023105833700883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033089 (n + 1) - A000038 n

end

end A007541.P774023105833700883

/-! ## A007541.P1445600321409364972

`A033089(n+1)%A063481(n)`
-/

namespace A007541.P1445600321409364972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033089 (n + 1)) (A063481 n)

end

end A007541.P1445600321409364972

/-! ## A007541.P7058632876129332472

`A033089(n+1)^A057428(n)²`
-/

namespace A007541.P7058632876129332472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033089 (n + 1) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A007541.P7058632876129332472

/-! ## A007541.P1661663314866795960

`A033089(n+1)^A062157(n)²`
-/

namespace A007541.P1661663314866795960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033089 (n + 1) : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A007541.P1661663314866795960

/-!
# A007542: Successive integers produced by Conway's PRIMEGAME.

The programs for A007542, there is no canonical definition to state claims against.
-/

/-! ## A007542.P5956229133514173463

`A185242(n+12)`
-/

namespace A007542.P5956229133514173463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185242 (n + 12)

end

end A007542.P5956229133514173463

/-! ## A007542.P16753022484654205556

`A203907(a(n-1))` with `a(0)=2`
-/

namespace A007542.P16753022484654205556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A203907 (a (n - 1)).toNat

end

end A007542.P16753022484654205556

/-!
# A007543: Frequency of n-th largest distance in N times N grid, N > n.

The programs for A007543, there is no canonical definition to state claims against.
-/

/-! ## A007543.P16060509269609008956

`2*A350634(n+1)*A275437(n)`
-/

namespace A007543.P16060509269609008956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350634 (n + 1) * A275437 n

end

end A007543.P16060509269609008956

/-! ## A007543.P14267715989849951854

`A004277(A350634(n+1))*A275437(n)`
-/

namespace A007543.P14267715989849951854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A350634 (n + 1)).toNat * A275437 n

end

end A007543.P14267715989849951854

/-! ## A007543.P7537802416284648898

`A005843(A275437(n)*A350634(n+1))`
-/

namespace A007543.P7537802416284648898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A275437 n * A350634 (n + 1)).toNat

end

end A007543.P7537802416284648898

/-! ## A007543.P13548981173331624532

`2*A130762(n+1)`
-/

namespace A007543.P13548981173331624532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130762 (n + 1)

end

end A007543.P13548981173331624532

/-! ## A007543.P11517421517498216622

`A004277(A130762(n+1))`
-/

namespace A007543.P11517421517498216622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A130762 (n + 1)).toNat

end

end A007543.P11517421517498216622

/-! ## A007543.P5426661959639587777

`A004275(A130762(n+1)+1)`
-/

namespace A007543.P5426661959639587777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A130762 (n + 1) + 1).toNat

end

end A007543.P5426661959639587777

/-! ## A007543.P10539262161459621326

`A130762(n+1)/abs(A065357(n)/2)`
-/

namespace A007543.P10539262161459621326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130762 (n + 1) : ℚ) / |(A065357 n : ℚ) / 2|

end

end A007543.P10539262161459621326

/-! ## A007543.P5737647690999084241

`A005843(lcm((-1)^n, A130762(n+1)))`
-/

namespace A007543.P5737647690999084241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm ((-1) ^ n) (A130762 (n + 1)))

end

end A007543.P5737647690999084241

/-! ## A007543.P1144305581812242762

`A130762(n+1)/2^A008683(A002148(n))`
-/

namespace A007543.P1144305581812242762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130762 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ)

end

end A007543.P1144305581812242762

/-! ## A007543.P6341440211457494881

`A130762(n+1)+A130762(n+1)%A000040(n+2)`
-/

namespace A007543.P6341440211457494881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130762 (n + 1) + Int.tmod (A130762 (n + 1)) (A000040 (n + 2))

end

end A007543.P6341440211457494881

/-!
# A007544: Frequency of n-th largest distance in N times N times N grid, N > n.

The programs for A007544, there is no canonical definition to state claims against.
-/

/-! ## A007544.P8891056152212187862

`A349387(2^∑{e}[n+1, #]*A000108(n+4))`
-/

namespace A007544.P8891056152212187862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 ((2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) * A000108 (n + 4)).toNat

end

end A007544.P8891056152212187862

/-! ## A007544.P3540676677545163256

`A136695(A071734(n+2))*A298016(n)`
-/

namespace A007544.P3540676677545163256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136695 (A071734 (n + 2)).toNat * A298016 n

end

end A007544.P3540676677545163256

/-!
# A007545: Number of chess games with n plies (another version).

The programs for A007545, there is no canonical definition to state claims against.
-/

/-! ## A007545.P9305767003287604470

`A089956(A000704(n))+A006494(n)`
-/

namespace A007545.P9305767003287604470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089956 (A000704 n).toNat + A006494 n

end

end A007545.P9305767003287604470

/-!
# A007547: Number of steps to compute n-th prime in PRIMEGAME (slow version).

The programs for A007547, there is no canonical definition to state claims against.
-/

/-! ## A007547.P5372542550989917127

`A157685(A245888(n+1))+A007546(n+1)`
-/

namespace A007547.P5372542550989917127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A245888 (n + 1)).toNat + A007546 (n + 1)

end

end A007547.P5372542550989917127

/-!
# A007548: Shifts 3 places left under exponentiation.

The programs for A007548, there is no canonical definition to state claims against.
-/

/-! ## A007548.P16300720479897039692

`A246694(floor(sqrt(A322441(n))))`
-/

namespace A007548.P16300720479897039692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 (Int.sqrt (A322441 n)).toNat

end

end A007548.P16300720479897039692

/-! ## A007548.P16870890356807345916

`ceil(A338861(2*n+3)/A254870(n+2))`
-/

namespace A007548.P16870890356807345916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338861 (2 * n + 3) : ℚ) / (A254870 (n + 2) : ℚ)⌉

end

end A007548.P16870890356807345916

/-! ## A007548.P287270727069103048

`A002635(or(A149118(n), A307068(n)))`
-/

namespace A007548.P287270727069103048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.lor (A149118 n) (A307068 n)).toNat

end

end A007548.P287270727069103048

/-! ## A007548.P9640492107633925937

`A008617(A091487(n+2)+A024430(n))`
-/

namespace A007548.P9640492107633925937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A091487 (n + 2) + A024430 n).toNat

end

end A007548.P9640492107633925937

/-! ## A007548.P1711424888526699915

`A157271(A336021(n+2)+A006966(n))`
-/

namespace A007548.P1711424888526699915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A336021 (n + 2) + A006966 n).toNat

end

end A007548.P1711424888526699915

/-!
# A007549: Number of increasing rooted connected graphs where every block is a complete graph.

The programs for A007549, there is no canonical definition to state claims against.
-/

/-! ## A007549.P11727508470691809059

`abs(record[Δ[A264436(n)]])`
-/

namespace A007549.P11727508470691809059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A007549.P11727508470691809059

/-! ## A007549.P7115093432193743558

`A264436(∑[n+1]+1)`
-/

namespace A007549.P7115093432193743558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264436 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007549.P7115093432193743558

/-! ## A007549.P32476390897618779

`A000038(n)+record[Δ[A264436(n)]]`
-/

namespace A007549.P32476390897618779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007549.P32476390897618779

/-! ## A007549.P10707448864387379174

`record[Δ[A264436(n)]]^A014963(4*n+2)`
-/

namespace A007549.P10707448864387379174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A007549.P10707448864387379174

/-! ## A007549.P3551555169241042281

`record[Δ[A264436(n)]]^(A000040(n+1)%2)`
-/

namespace A007549.P3551555169241042281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A007549.P3551555169241042281

/-!
# A007550: Natural numbers exponentiated twice.

The programs for A007550, there is no canonical definition to state claims against.
-/

/-! ## A007550.P2237435316022984539

`A209631(∑[n+4]+3)`
-/

namespace A007550.P2237435316022984539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209631 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A007550.P2237435316022984539

/-!
# A007552: Exponentiation of Fibonacci numbers.

The programs for A007552, there is no canonical definition to state claims against.
-/

/-! ## A007552.P17457846275783559127

`A302492(A151050(n))`
-/

namespace A007552.P17457846275783559127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A151050 n).toNat

end

end A007552.P17457846275783559127

/-!
# A007553: Logarithmic transform of Fibonacci numbers.

The programs for A007553, there is no canonical definition to state claims against.
-/

/-! ## A007553.P5859394749961927716

`lcm(2, A289068(n))/2`
-/

namespace A007553.P5859394749961927716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A289068 n) : ℚ) / 2

end

end A007553.P5859394749961927716

/-! ## A007553.P3899988217025893166

`abs(A289068(n)/gcd(2, A000079(n)))`
-/

namespace A007553.P3899988217025893166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A289068 n : ℚ) / (Int.gcd 2 (A000079 n) : ℚ)|

end

end A007553.P3899988217025893166

/-! ## A007553.P3452588937699158334

`abs(A289068(n)/(A133263(n)-∑[n]))`
-/

namespace A007553.P3452588937699158334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A289068 n : ℚ) / (A133263 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ)|

end

end A007553.P3452588937699158334

/-! ## A007553.P17298903542830355601

`abs(A289068(n)/A020639(A001223(n+1)))`
-/

namespace A007553.P17298903542830355601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A289068 n : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ)|

end

end A007553.P17298903542830355601

/-!
# A007554: Unique attractor for (RIGHT then MOBIUS) transform.

The programs for A007554, there is no canonical definition to state claims against.
-/

/-! ## A007554.P12928520164080537055

`A318583(2*(n+1))-A346034(2*(n+1))`
-/

namespace A007554.P12928520164080537055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318583 (2 * (n + 1)) - A346034 (2 * (n + 1))

end

end A007554.P12928520164080537055

/-!
# A007555: Number of standard paths of length n in composition poset.

The programs for A007555, there is no canonical definition to state claims against.
-/

/-! ## A007555.P5214618450937587428

`A110655(A290331(n+1))+1`
-/

namespace A007555.P5214618450937587428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A290331 (n + 1)).toNat + 1

end

end A007555.P5214618450937587428

/-! ## A007555.P9523023789767738919

`A071075(n)+A025457(A000260(n))`
-/

namespace A007555.P9523023789767738919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071075 n + A025457 (A000260 n).toNat

end

end A007555.P9523023789767738919

/-! ## A007555.P9421590057519142355

`A185274(A104882(n))+A071075(n)`
-/

namespace A007555.P9421590057519142355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 (A104882 n).toNat + A071075 n

end

end A007555.P9421590057519142355

/-!
# A007556: Number of 8-ary trees with n vertices.

The programs for A007556, the canonical program `A007556.P15726887272111964128` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007556 has offset 0).

The definition of A007556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007556.P15726887272111964128

`C(8*n, n)/(7*n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007556

/-- `C(8*n, n)/(7*n+1)` -/
def P15726887272111964128.Spec : Prop :=
  ∀ n, P15726887272111964128.a n = (A007556 n : ℚ)

end A007556

/-! ## A007556.P9564185442620591382

`A386396(7*n)`
-/

namespace A007556.P9564185442620591382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386396 (7 * n)

end

end A007556.P9564185442620591382

namespace A007556

/-- `A386396(7*n)` -/
def P9564185442620591382.Spec : Prop :=
  ∀ n, P9564185442620591382.a n = A007556 n

end A007556

/-! ## A007556.P10030684087950145293

`A004382(n)/n*a(floor(acot(n)))` with `a(0)=1`
-/

namespace A007556.P10030684087950145293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 n : ℚ) / (n : ℚ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A007556.P10030684087950145293

namespace A007556

/-- `A004382(n)/n*a(floor(acot(n)))` -/
def P10030684087950145293.Spec : Prop :=
  ∀ n, P10030684087950145293.a n = (A007556 n : ℚ)

end A007556

/-! ## A007556.P16060323985645469811

`A004382(n)/n*a(A000038(n))` with `a(0)=1`
-/

namespace A007556.P16060323985645469811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 n : ℚ) / (n : ℚ) * a (A000038 n).toNat

end

end A007556.P16060323985645469811

namespace A007556

/-- `A004382(n)/n*a(A000038(n))` -/
def P16060323985645469811.Spec : Prop :=
  ∀ n, P16060323985645469811.a n = (A007556 n : ℚ)

end A007556

/-! ## A007556.P3913683893090071975

`A004382(A028310(n*a(and(2, n²))))/n` with `a(0)=1`
-/

namespace A007556.P3913683893090071975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 (A028310 (SequenceMachineLib.roundAway ((n : ℚ) * a (Nat.land 2 (n ^ 2)))).toNat).toNat : ℚ) / (n : ℚ)

end

end A007556.P3913683893090071975

namespace A007556

/-- `A004382(A028310(n*a(and(2, n²))))/n` -/
def P3913683893090071975.Spec : Prop :=
  ∀ n, P3913683893090071975.a n = (A007556 n : ℚ)

end A007556

/-! ## A007556.P8862943693472672628

`A004382(n)/n*a(A124572(∑[n])-1)` with `a(0)=1`
-/

namespace A007556.P8862943693472672628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 n : ℚ) / (n : ℚ) * a (A124572 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A007556.P8862943693472672628

namespace A007556

/-- `A004382(n)/n*a(A124572(∑[n])-1)` -/
def P8862943693472672628.Spec : Prop :=
  ∀ n, P8862943693472672628.a n = (A007556 n : ℚ)

end A007556

/-! ## A007556.P8199735427993640549

`A004382(n)/n*a(A244174(n)%2-1)` with `a(0)=1`
-/

namespace A007556.P8199735427993640549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 n : ℚ) / (n : ℚ) * a (Int.tmod (A244174 n) 2 - 1).toNat

end

end A007556.P8199735427993640549

namespace A007556

/-- `A004382(n)/n*a(A244174(n)%2-1)` -/
def P8199735427993640549.Spec : Prop :=
  ∀ n, P8199735427993640549.a n = (A007556 n : ℚ)

end A007556

/-! ## A007556.P5990060017838244881

`A004382(n)/n*a(A335025(n+1)%2-1)` with `a(0)=1`
-/

namespace A007556.P5990060017838244881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 n : ℚ) / (n : ℚ) * a (Int.tmod (A335025 (n + 1)) 2 - 1).toNat

end

end A007556.P5990060017838244881

namespace A007556

/-- `A004382(n)/n*a(A335025(n+1)%2-1)` -/
def P5990060017838244881.Spec : Prop :=
  ∀ n, P5990060017838244881.a n = (A007556 n : ℚ)

end A007556

/-! ## A007556.P424316667767316329

`A004382(A028310(n))/A028310(n)`
-/

namespace A007556.P424316667767316329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004382 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A007556.P424316667767316329

namespace A007556

/-- `A004382(A028310(n))/A028310(n)` -/
def P424316667767316329.Spec : Prop :=
  ∀ n, P424316667767316329.a n = (A007556 n : ℚ)

end A007556

/-! ## A007556.P6543425908834671411

`A004382(n)/n*a(A048766(A048766(n))-1)` with `a(0)=1`
-/

namespace A007556.P6543425908834671411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 n : ℚ) / (n : ℚ) * a (A048766 (A048766 n).toNat - 1).toNat

end

end A007556.P6543425908834671411

namespace A007556

/-- `A004382(n)/n*a(A048766(A048766(n))-1)` -/
def P6543425908834671411.Spec : Prop :=
  ∀ n, P6543425908834671411.a n = (A007556 n : ℚ)

end A007556

/-!
# A007557: Shifts left when inverse Moebius transform applied twice.

The programs for A007557, there is no canonical definition to state claims against.
-/

/-! ## A007557.P10358930458179413246

`A326786(A098915(n+1))+A049618(n)`
-/

namespace A007557.P10358930458179413246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (A098915 (n + 1)).toNat + A049618 n

end

end A007557.P10358930458179413246

/-!
# A007558: Shifts 2 places left when e.g.f. is squared.

The programs for A007558, there is no canonical definition to state claims against.
-/

/-! ## A007558.P16754421856847123244

`A110656(A148398(n)+n²)`
-/

namespace A007558.P16754421856847123244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A148398 n + (n ^ 2 : ℤ)).toNat

end

end A007558.P16754421856847123244

/-! ## A007558.P12616874024672571068

`A090970(or(A018190(n+1), A135293(n)))`
-/

namespace A007558.P12616874024672571068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090970 (Int.lor (A018190 (n + 1)) (A135293 n)).toNat

end

end A007558.P12616874024672571068

/-!
# A007559: Triple factorial numbers (3*n-2)!!! with leading 1 added.

The programs for A007559, there is no canonical definition to state claims against.
-/

/-! ## A007559.P2455071786993888263

`∏[floor(abs(3*n-ϕ))]`
-/

namespace A007559.P2455071786993888263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007559.P2455071786993888263

/-! ## A007559.P2216907513998260424

`abs(∏[2-floor(3/acot(n))])`
-/

namespace A007559.P2216907513998260424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A007559.P2216907513998260424

/-! ## A007559.P11540375709436472090

`floor(∏[a(n-1)+3])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A007559.P11540375709436472090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007559.P11540375709436472090

/-! ## A007559.P5810529652029137830

`ceil(∏[a(n-1)+3])` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A007559.P5810529652029137830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007559.P5810529652029137830

/-! ## A007559.P5753831579629203831

`round(∏[a(n-1)+3])` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A007559.P5753831579629203831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007559.P5753831579629203831

/-! ## A007559.P1076552277855064508

`(3*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A007559.P1076552277855064508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 * n : ℤ) - 2) * a (n - 1)

end

end A007559.P1076552277855064508

/-! ## A007559.P9925750758950359174

`A136214(∑[n])`
-/

namespace A007559.P9925750758950359174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136214 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007559.P9925750758950359174

/-! ## A007559.P4520019663731289773

`A136215(∑[n])`
-/

namespace A007559.P4520019663731289773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136215 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007559.P4520019663731289773

/-! ## A007559.P11288192548716732946

`A286718(∑[n])`
-/

namespace A007559.P11288192548716732946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007559.P11288192548716732946

/-! ## A007559.P16955367748130030760

`A290598(C(n, 2))`
-/

namespace A007559.P16955367748130030760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290598 (Nat.choose n 2)

end

end A007559.P16955367748130030760

/-!
# A007560: Number of planted identity trees where non-root, non-leaf nodes an even distance from root are of degree 2.

The programs for A007560, there is no canonical definition to state claims against.
-/

/-! ## A007560.P15368935543250378897

`A316074(∑[n]+2)`
-/

namespace A007560.P15368935543250378897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A007560.P15368935543250378897

/-! ## A007560.P13801282327143528395

`A316074(A133263(n))^floor(atan(n))`
-/

namespace A007560.P13801282327143528395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316074 (A133263 n).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A007560.P13801282327143528395

/-! ## A007560.P3104293297932858819

`A316074(A133263(n))%A020737(n)`
-/

namespace A007560.P3104293297932858819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316074 (A133263 n).toNat) (A020737 n)

end

end A007560.P3104293297932858819

/-! ## A007560.P10039209711206107010

`gcd(A000038(n), A316074(A133263(n)))`
-/

namespace A007560.P10039209711206107010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A316074 (A133263 n).toNat)

end

end A007560.P10039209711206107010

/-! ## A007560.P17538869089279067816

`A316074(A133263(n))+A000038(n+1)`
-/

namespace A007560.P17538869089279067816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (A133263 n).toNat + A000038 (n + 1)

end

end A007560.P17538869089279067816

/-! ## A007560.P11731342183177114984

`A000034(2*n)*A316074(A133263(n))`
-/

namespace A007560.P11731342183177114984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A316074 (A133263 n).toNat

end

end A007560.P11731342183177114984

/-! ## A007560.P1854073988112206585

`A016945(n)%2*A316074(A133263(n))`
-/

namespace A007560.P1854073988112206585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016945 n) 2 * A316074 (A133263 n).toNat

end

end A007560.P1854073988112206585

/-! ## A007560.P2246238068910816006

`A027422(∑[n])*A316074(A133263(n))`
-/

namespace A007560.P2246238068910816006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (∑ j ∈ Finset.range (n + 1), f1 j) * A316074 (A133263 n).toNat

end

end A007560.P2246238068910816006

/-! ## A007560.P6543133088562424524

`A316074(A133263(n))+A114855(A114840(n+1))`
-/

namespace A007560.P6543133088562424524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (A133263 n).toNat + A114855 (A114840 (n + 1)).toNat

end

end A007560.P6543133088562424524

/-!
# A007561: Number of asymmetric rooted connected graphs where every block is a complete graph.

The programs for A007561, there is no canonical definition to state claims against.
-/

/-! ## A007561.P6907657086558184496

`A316101(∑[n+3])`
-/

namespace A007561.P6907657086558184496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007561.P6907657086558184496

/-! ## A007561.P4189959423886993733

`A057427(n)*A316101(A055998(n+1))`
-/

namespace A007561.P4189959423886993733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A316101 (A055998 (n + 1)).toNat

end

end A007561.P4189959423886993733

/-! ## A007561.P11637437675850839786

`A316101(A055998(n+1))%A042288(n)`
-/

namespace A007561.P11637437675850839786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316101 (A055998 (n + 1)).toNat) (A042288 n)

end

end A007561.P11637437675850839786

/-! ## A007561.P5353930417211971269

`A033999(n)²*A316101(A055998(n+1))`
-/

namespace A007561.P5353930417211971269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A316101 (A055998 (n + 1)).toNat

end

end A007561.P5353930417211971269

/-! ## A007561.P11294801687098704833

`A316101(A027379(n+1))+A000007(n+1)`
-/

namespace A007561.P11294801687098704833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A007561.P11294801687098704833

/-! ## A007561.P7366066619433331940

`A316101(A055998(n+1))+A007814(Δ[n²])`
-/

namespace A007561.P7366066619433331940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A055998 (n + 1)).toNat + A007814 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007561.P7366066619433331940

/-! ## A007561.P6525886942094351452

`A205007(Δ[n²])*A316101(A055998(n+1))`
-/

namespace A007561.P6525886942094351452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A316101 (A055998 (n + 1)).toNat

end

end A007561.P6525886942094351452

/-! ## A007561.P18157352579237604952

`A000035(2*n+1)*A316101(A027379(n+1))`
-/

namespace A007561.P18157352579237604952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A316101 (A027379 (n + 1)).toNat

end

end A007561.P18157352579237604952

/-! ## A007561.P6783815627150190748

`A316101(A000217(2*n))+A316101(A027379(n+1))`
-/

namespace A007561.P6783815627150190748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (2 * n)).toNat + A316101 (A027379 (n + 1)).toNat

end

end A007561.P6783815627150190748

/-!
# A007562: Number of planted trees where non-root, non-leaf nodes an even distance from root are of degree 2.

The programs for A007562, there is no canonical definition to state claims against.
-/

/-! ## A007562.P11151717539883107133

`A144018(∑[n]+2)`
-/

namespace A007562.P11151717539883107133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A007562.P11151717539883107133

/-! ## A007562.P10556172420100931806

`A144018(Δ[A180415(n+1)])+and(2, n²)`
-/

namespace A007562.P10556172420100931806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (f1 (n + 1) - f1 n).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A007562.P10556172420100931806

/-! ## A007562.P14812030749626005444

`and(A144018(A238531(n+1)), A260196(n))`
-/

namespace A007562.P14812030749626005444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144018 (A238531 (n + 1)).toNat) (A260196 n)

end

end A007562.P14812030749626005444

/-! ## A007562.P6941877128802088702

`A057427(n+1)*A144018(Δ[A180415(n+1)])`
-/

namespace A007562.P6941877128802088702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A144018 (f1 (n + 1) - f1 n).toNat

end

end A007562.P6941877128802088702

/-! ## A007562.P12931260283275561417

`A144018(A238531(n+1))*A318489(2*(n+1))`
-/

namespace A007562.P12931260283275561417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (A238531 (n + 1)).toNat * A318489 (2 * (n + 1))

end

end A007562.P12931260283275561417

/-! ## A007562.P17673710193866189152

`lcm(A144018(A238531(n+1)), A209615(2*n+1))`
-/

namespace A007562.P17673710193866189152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144018 (A238531 (n + 1)).toNat) (A209615 (2 * n + 1))

end

end A007562.P17673710193866189152

/-!
# A007563: Number of rooted connected graphs where every block is a complete graph.

The programs for A007563, there is no canonical definition to state claims against.
-/

/-! ## A007563.P12289580206069588677

`A144042(A347553(n+3))-A000007(n)`
-/

namespace A007563.P12289580206069588677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A347553 (n + 3)).toNat - A000007 n

end

end A007563.P12289580206069588677

/-! ## A007563.P4332570205789219350

`A144042(A326657(n)+A267182(n))%(n-10^n)`
-/

namespace A007563.P4332570205789219350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (A326657 n + A267182 n).toNat) ((n : ℤ) - (10 ^ n : ℤ))

end

end A007563.P4332570205789219350

/-! ## A007563.P3563018162597718541

`A057427(n)*A144042(A326657(n)+A267182(n))`
-/

namespace A007563.P3563018162597718541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A326657 n + A267182 n).toNat

end

end A007563.P3563018162597718541

/-! ## A007563.P6999368420775355831

`A008617(∑[A148776(n+1)])`
-/

namespace A007563.P6999368420775355831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007563.P6999368420775355831

/-!
# A007564: Shifts left when INVERT transform applied thrice.

The programs for A007564, the canonical program `A007564.P14076281663923295692` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007564 has offset 0).

The definition of A007564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007564.P14076281663923295692

`(4*(2*n-1)*a(n-1)-4*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007564

/-- `(4*(2*n-1)*a(n-1)-4*(n-2)*a(n-2))/(n+1)` -/
def P14076281663923295692.Spec : Prop :=
  ∀ n, P14076281663923295692.a n = (A007564 n : ℚ)

end A007564

/-! ## A007564.P7968619277220584168

`ceil(A025231(n+1)/3)`
-/

namespace A007564.P7968619277220584168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025231 (n + 1) : ℚ) / 3⌉

end

end A007564.P7968619277220584168

namespace A007564

/-- `ceil(A025231(n+1)/3)` -/
def P7968619277220584168.Spec : Prop :=
  ∀ n, P7968619277220584168.a n = A007564 n

end A007564

/-! ## A007564.P1761185601726435527

`ceil(A047891(n+1)/3)`
-/

namespace A007564.P1761185601726435527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047891 (n + 1) : ℚ) / 3⌉

end

end A007564.P1761185601726435527

namespace A007564

/-- `ceil(A047891(n+1)/3)` -/
def P1761185601726435527.Spec : Prop :=
  ∀ n, P1761185601726435527.a n = A007564 n

end A007564

/-! ## A007564.P1101533215584796822

`A265435(∑[n+1]+1)`
-/

namespace A007564.P1101533215584796822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007564.P1101533215584796822

namespace A007564

/-- `A265435(∑[n+1]+1)` -/
def P1101533215584796822.Spec : Prop :=
  ∀ n, P1101533215584796822.a n = A007564 n

end A007564

/-! ## A007564.P5801740950478266703

`A047891(n+1)/A122553(n)`
-/

namespace A007564.P5801740950478266703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047891 (n + 1) : ℚ) / (A122553 n : ℚ)

end

end A007564.P5801740950478266703

namespace A007564

/-- `A047891(n+1)/A122553(n)` -/
def P5801740950478266703.Spec : Prop :=
  ∀ n, P5801740950478266703.a n = (A007564 n : ℚ)

end A007564

/-! ## A007564.P15426752000538946208

`A047891(n+1)/3%A003418(n+2)`
-/

namespace A007564.P15426752000538946208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047891 (n + 1) : ℚ) / (Int.tmod 3 (A003418 (n + 2)) : ℚ)

end

end A007564.P15426752000538946208

namespace A007564

/-- `A047891(n+1)/3%A003418(n+2)` -/
def P15426752000538946208.Spec : Prop :=
  ∀ n, P15426752000538946208.a n = (A007564 n : ℚ)

end A007564

/-! ## A007564.P1607468284235033177

`A025231(n+1)/(A019425(A005843(n))+2)`
-/

namespace A007564.P1607468284235033177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025231 (n + 1) : ℚ) / (A019425 (A005843 n).toNat + 2 : ℚ)

end

end A007564.P1607468284235033177

namespace A007564

/-- `A025231(n+1)/(A019425(A005843(n))+2)` -/
def P1607468284235033177.Spec : Prop :=
  ∀ n, P1607468284235033177.a n = (A007564 n : ℚ)

end A007564

/-! ## A007564.P15292879250236496031

`A025231(n+1)/(A019425(A008586(n))+2)`
-/

namespace A007564.P15292879250236496031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025231 (n + 1) : ℚ) / (A019425 (A008586 n).toNat + 2 : ℚ)

end

end A007564.P15292879250236496031

namespace A007564

/-- `A025231(n+1)/(A019425(A008586(n))+2)` -/
def P15292879250236496031.Spec : Prop :=
  ∀ n, P15292879250236496031.a n = (A007564 n : ℚ)

end A007564

/-! ## A007564.P3836022264780290788

`A025231(n+1)/(A019425(A019425(n))+2)`
-/

namespace A007564.P3836022264780290788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025231 (n + 1) : ℚ) / (A019425 (A019425 n).toNat + 2 : ℚ)

end

end A007564.P3836022264780290788

namespace A007564

/-- `A025231(n+1)/(A019425(A019425(n))+2)` -/
def P3836022264780290788.Spec : Prop :=
  ∀ n, P3836022264780290788.a n = (A007564 n : ℚ)

end A007564

/-! ## A007564.P267599934087612835

`A008550(A167614(n+2))`
-/

namespace A007564.P267599934087612835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A167614 (n + 2)).toNat

end

end A007564.P267599934087612835

namespace A007564

/-- `A008550(A167614(n+2))` -/
def P267599934087612835.Spec : Prop :=
  ∀ n, P267599934087612835.a n = A007564 n

end A007564

/-!
# A007565: Number of Go games with n moves.

The programs for A007565, there is no canonical definition to state claims against.
-/

/-! ## A007565.P3660652521876810997

`a(n-1)+A048289(n)` with `a(0)=1`
-/

namespace A007565.P3660652521876810997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A048289 n

end

end A007565.P3660652521876810997

/-!
# A007566: a(n+1) = (2n+3)*a(n) - 2n*a(n-1) + 8n, a(0) = 1, a(1) = 3.

The programs for A007566, the canonical program `A007566.P7723351958151328926` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007566 has offset 0).

The definition of A007566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007566.P7723351958151328926

`2*n*a(n-1)+(2*n-1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007566

/-- `2*n*a(n-1)+(2*n-1)²` -/
def P7723351958151328926.Spec : Prop :=
  ∀ n, P7723351958151328926.a n = A007566 n

theorem P7723351958151328926.correct : P7723351958151328926.Spec := by
  intro n
  simp only [A007566]

end A007566

/-! ## A007566.P4412948840990990479

`2*floor(e^(1/2)*n!*2^n)-(2*n+1)`
-/

namespace A007566.P4412948840990990479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋ - (2 * n + 1 : ℤ)

end

end A007566.P4412948840990990479

namespace A007566

/-- `2*floor(e^(1/2)*n!*2^n)-(2*n+1)` -/
def P4412948840990990479.Spec : Prop :=
  ∀ n, P4412948840990990479.a n = A007566 n

end A007566

/-! ## A007566.P9569849121168163119

`(2*n+1)*a(n-1)-(2*n-2)*a(n-2)+8*(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A007566.P9569849121168163119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) - ((2 * n : ℤ) - 2) * a (n - 2) + 8 * ((n : ℤ) - 1)

end

end A007566.P9569849121168163119

namespace A007566

/-- `(2*n+1)*a(n-1)-(2*n-2)*a(n-2)+8*(n-1)` -/
def P9569849121168163119.Spec : Prop :=
  ∀ n, P9569849121168163119.a n = A007566 n

end A007566

/-! ## A007566.P3955708153123139779

`2*A010844(n)-(2*n+1)`
-/

namespace A007566.P3955708153123139779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010844 n - (2 * n + 1 : ℤ)

end

end A007566.P3955708153123139779

namespace A007566

/-- `2*A010844(n)-(2*n+1)` -/
def P3955708153123139779.Spec : Prop :=
  ∀ n, P3955708153123139779.a n = A007566 n

end A007566

/-! ## A007566.P10605404683674822439

`A093302(n)+1`
-/

namespace A007566.P10605404683674822439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093302 n + 1

end

end A007566.P10605404683674822439

namespace A007566

/-- `A093302(n)+1` -/
def P10605404683674822439.Spec : Prop :=
  ∀ n, P10605404683674822439.a n = A007566 n

end A007566

/-! ## A007566.P12676344686747626947

`A077138(2*n)+1`
-/

namespace A007566.P12676344686747626947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077138 (2 * n) + 1

end

end A007566.P12676344686747626947

namespace A007566

/-- `A077138(2*n)+1` -/
def P12676344686747626947.Spec : Prop :=
  ∀ n, P12676344686747626947.a n = A007566 n

end A007566

/-! ## A007566.P12674619336835307873

`∑[abs(2-Δ[A099760(n)])]`
-/

namespace A007566.P12674619336835307873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007566.P12674619336835307873

namespace A007566

/-- `∑[abs(2-Δ[A099760(n)])]` -/
def P12674619336835307873.Spec : Prop :=
  ∀ n, P12674619336835307873.a n = A007566 n

end A007566

/-! ## A007566.P9550299461411046044

`A085644(n+1)-2*n`
-/

namespace A007566.P9550299461411046044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085644 (n + 1) - (2 * n : ℤ)

end

end A007566.P9550299461411046044

namespace A007566

/-- `A085644(n+1)-2*n` -/
def P9550299461411046044.Spec : Prop :=
  ∀ n, P9550299461411046044.a n = A007566 n

end A007566

/-! ## A007566.P6619373224790760413

`A099760(n+1)-Δ[n²]`
-/

namespace A007566.P6619373224790760413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A007566.P6619373224790760413

namespace A007566

/-- `A099760(n+1)-Δ[n²]` -/
def P6619373224790760413.Spec : Prop :=
  ∀ n, P6619373224790760413.a n = A007566 n

end A007566

/-! ## A007566.P5958753754685373610

`record[A077138(A014681(n))+1]`
-/

namespace A007566.P5958753754685373610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077138 (A014681 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007566.P5958753754685373610

namespace A007566

/-- `record[A077138(A014681(n))+1]` -/
def P5958753754685373610.Spec : Prop :=
  ∀ n, P5958753754685373610.a n = A007566 n

end A007566

/-!
# A007567: Knopfmacher expansion of 1/2: a(n+1) = a(n-1)(a(n)+1)-1.

The programs for A007567, there is no canonical definition to state claims against.
-/

/-! ## A007567.P7062532726985918879

`A173094(n+1)-A035316(A003057(n+6))`
-/

namespace A007567.P7062532726985918879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173094 (n + 1) - A035316 (A003057 (n + 6)).toNat

end

end A007567.P7062532726985918879

/-! ## A007567.P17891692322209233411

`A173094(n+1)-A174965(A034691(n))`
-/

namespace A007567.P17891692322209233411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173094 (n + 1) - A174965 (A034691 n).toNat

end

end A007567.P17891692322209233411

/-!
# A007568: Knopfmacher expansion of 2/3: a(n+1) = a(n-1)(a(n)+1)-1.

The programs for A007568, there is no canonical definition to state claims against.
-/

/-! ## A007568.P4044765970586030836

`(a(n-1)+1)*a(n-2)-1` with `a(0)=4, a(1)=3, a(2)=3`
-/

namespace A007568.P4044765970586030836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 3] fun n a =>
  (a (n - 1) + 1) * a (n - 2) - 1

end

end A007568.P4044765970586030836

/-! ## A007568.P2409654528217923899

`a(n-1)*a(n-2)-(1-a(n-2))` with `a(0)=4, a(1)=3, a(2)=3`
-/

namespace A007568.P2409654528217923899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 3] fun n a =>
  a (n - 1) * a (n - 2) - (1 - a (n - 2))

end

end A007568.P2409654528217923899

/-! ## A007568.P8805971098578663681

`A042964(A173098(n+1))+A000038(n)`
-/

namespace A007568.P8805971098578663681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (A173098 (n + 1)).toNat + A000038 n

end

end A007568.P8805971098578663681

/-!
# A007569: Number of nodes in regular n-gon with all diagonals drawn.

The programs for A007569, there is no canonical definition to state claims against.
-/

/-! ## A007569.P1879866425699853153

`A006561(n+1)+n+1`
-/

namespace A007569.P1879866425699853153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) + (n + 1 : ℤ)

end

end A007569.P1879866425699853153

/-! ## A007569.P7992133369943725635

`A135565(n+1)+1-A007678(n+1)`
-/

namespace A007569.P7992133369943725635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135565 (n + 1) + (1 - A007678 (n + 1))

end

end A007569.P7992133369943725635

/-! ## A007569.P16139796147642071993

`A135565(n+1)-A006533(n+1)+n+2`
-/

namespace A007569.P16139796147642071993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135565 (n + 1) - A006533 (n + 1) + (n + 2 : ℤ)

end

end A007569.P16139796147642071993

/-! ## A007569.P14512264578532095627

`n+1+A290465(n+1)+A290447(n+1)`
-/

namespace A007569.P14512264578532095627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A290465 (n + 1) + A290447 (n + 1))

end

end A007569.P14512264578532095627

/-! ## A007569.P10758882948385238948

`n+1+A290465(n+1)+C(n+1, 4)-A290461(n+1)`
-/

namespace A007569.P10758882948385238948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A290465 (n + 1) + ((Nat.choose (n + 1) 4 : ℤ) - A290461 (n + 1)))

end

end A007569.P10758882948385238948

/-! ## A007569.P9582578962747321654

`n+1+A000332(n+1)+A290465(n+1)-A290461(n+1)`
-/

namespace A007569.P9582578962747321654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A000332 (n + 1) + (A290465 (n + 1) - A290461 (n + 1)))

end

end A007569.P9582578962747321654

/-!
# A007570: a(n) = F(F(n)), where F is a Fibonacci number.

The programs for A007570, the canonical program `A007570.P1833938303993982019` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007570 has offset 0).

The definition of A007570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000045(n))` (program `A007570.P1833938303993982019`, by `A007570.P1833938303993982019.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007570.P1833938303993982019

`A000045(A000045(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007570

/-- `A000045(A000045(n))` -/
def P1833938303993982019.Spec : Prop :=
  ∀ n, P1833938303993982019.a n = A007570 n

theorem P1833938303993982019.correct : P1833938303993982019.Spec := by
  intro n
  simp only [A007570]

end A007570

/-! ## A007570.P14153220262611372318

`A113597(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A007570.P14153220262611372318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A113597 (n - 1) + a (n - 1)

end

end A007570.P14153220262611372318

namespace A007570

/-- `A113597(n-1)+a(n-1)` -/
def P14153220262611372318.Spec : Prop :=
  ∀ n, P14153220262611372318.a n = A007570 n

end A007570

/-! ## A007570.P6412497208929823109

`A103609(8*round(ϕ^n/sqrt(5))/4)`
-/

namespace A007570.P6412497208929823109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (SequenceMachineLib.roundAway ((8 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℚ) / 4)).toNat

end

end A007570.P6412497208929823109

namespace A007570

/-- `A103609(8*round(ϕ^n/sqrt(5))/4)` -/
def P6412497208929823109.Spec : Prop :=
  ∀ n, P6412497208929823109.a n = A007570 n

end A007570

/-! ## A007570.P10837095155623335049

`A212804(n-∑[a(n-1)-(1-a(n-2))])` with `a(0)=-1, a(1)=0, a(2)=1`
-/

namespace A007570.P10837095155623335049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007570.P10837095155623335049

namespace A007570

/-- `A212804(n-∑[a(n-1)-(1-a(n-2))])` -/
def P10837095155623335049.Spec : Prop :=
  ∀ n, P10837095155623335049.a n = A007570 n

end A007570

/-! ## A007570.P14885921222273638845

`A097637(A022350(n))`
-/

namespace A007570.P14885921222273638845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 (A022350 n).toNat

end

end A007570.P14885921222273638845

namespace A007570

/-- `A097637(A022350(n))` -/
def P14885921222273638845.Spec : Prop :=
  ∀ n, P14885921222273638845.a n = A007570 n

end A007570

/-!
# A007571: a(n) = largest prime factor of n^n + 1.

The programs for A007571, there is no canonical definition to state claims against.
-/

/-! ## A007571.P1868555382606913541

`A240554(2*(n+1)²)`
-/

namespace A007571.P1868555382606913541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (2 * (n + 1) ^ 2)

end

end A007571.P1868555382606913541

/-! ## A007571.P2987111248028969989

`((-1)^n)²*A240554(∑[A016825(n)])`
-/

namespace A007571.P2987111248028969989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A240554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007571.P2987111248028969989

/-! ## A007571.P3296328133997174715

`A240554(∑[A016825(n)])+A000007(n+1)`
-/

namespace A007571.P3296328133997174715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000007 (n + 1)

end

end A007571.P3296328133997174715

/-! ## A007571.P4356138138373673428

`2*n+A240554(∑[A016825(n)])-A005843(n)`
-/

namespace A007571.P4356138138373673428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A240554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A005843 n)

end

end A007571.P4356138138373673428

/-! ## A007571.P9488601518205863642

`A240554(∑[A016825(n)])+A057428(n)+n²%(n+1)`
-/

namespace A007571.P9488601518205863642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (A057428 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ))

end

end A007571.P9488601518205863642

/-!
# A007572: Generalization of the golden ratio (expansion of (5-13x)/((1+x)*(1-4x))).

The programs for A007572, the canonical program `A007572.P3580923392271336069` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007572 has offset 0).

The definition of A007572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007572.P3580923392271336069

`3*a(n-1)+4*a(n-2)` with `a(0)=5, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007572

/-- `3*a(n-1)+4*a(n-2)` -/
def P3580923392271336069.Spec : Prop :=
  ∀ n, (P3580923392271336069.a n : ℤ) = A007572 n

theorem P3580923392271336069.correct : P3580923392271336069.Spec := by
  intro n
  simp only [A007572]

end A007572

/-! ## A007572.P4058134661265533721

`(7*4^n+18*(-1)^n)/5`
-/

namespace A007572.P4058134661265533721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 4 ^ n : ℤ) + 18 * (-1) ^ n : ℚ) / 5

end

end A007572.P4058134661265533721

namespace A007572

/-- `(7*4^n+18*(-1)^n)/5` -/
def P4058134661265533721.Spec : Prop :=
  ∀ n, P4058134661265533721.a n = (A007572 n : ℚ)

theorem P4058134661265533721.correct : P4058134661265533721.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A007572, Nat.add_sub_cancel, A007572.P4058134661265533721.a, A007572.P3580923392271336069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A007572, Nat.add_sub_cancel, A007572.P4058134661265533721.a, A007572.P3580923392271336069.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007572

/-! ## A007572.P5326887549258884899

`ogf((-5+13x)/(-1+3x+4x^2))`
-/

namespace A007572.P5326887549258884899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -13] [1, -3, -4] n

end

end A007572.P5326887549258884899

namespace A007572

/-- `ogf((-5+13x)/(-1+3x+4x^2))` -/
def P5326887549258884899.Spec : Prop :=
  ∀ n, P5326887549258884899.a n = A007572 n

end A007572

/-! ## A007572.P10489942749634146171

`a(n-2)+lcm(3, a(n-1)+a(n-2))` with `a(0)=5, a(1)=2`
-/

namespace A007572.P10489942749634146171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 1) + a (n - 2))

end

end A007572.P10489942749634146171

namespace A007572

/-- `a(n-2)+lcm(3, a(n-1)+a(n-2))` -/
def P10489942749634146171.Spec : Prop :=
  ∀ n, (P10489942749634146171.a n : ℤ) = A007572 n

end A007572

/-! ## A007572.P2595972596143925940

`4*a(n-1)-(a(n-1)-4*a(n-2))` with `a(0)=5, a(1)=2`
-/

namespace A007572.P2595972596143925940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 4 * a (n - 2))

end

end A007572.P2595972596143925940

namespace A007572

/-- `4*a(n-1)-(a(n-1)-4*a(n-2))` -/
def P2595972596143925940.Spec : Prop :=
  ∀ n, P2595972596143925940.a n = A007572 n

end A007572

/-! ## A007572.P10423215442280402257

`A002042(n-1)-a(n-1)` with `a(0)=5`
-/

namespace A007572.P10423215442280402257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A002042 (n - 1) - a (n - 1)

end

end A007572.P10423215442280402257

namespace A007572

/-- `A002042(n-1)-a(n-1)` -/
def P10423215442280402257.Spec : Prop :=
  ∀ n, P10423215442280402257.a n = A007572 n

end A007572

/-! ## A007572.P515620173187638233

`6*A102900(n)-A000302(n)`
-/

namespace A007572.P515620173187638233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A102900 n - A000302 n

end

end A007572.P515620173187638233

namespace A007572

/-- `6*A102900(n)-A000302(n)` -/
def P515620173187638233.Spec : Prop :=
  ∀ n, P515620173187638233.a n = A007572 n

end A007572

/-! ## A007572.P4767856966294561828

`A015521(n)+xor(4, A108981(n))`
-/

namespace A007572.P4767856966294561828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n + Int.xor 4 (A108981 n)

end

end A007572.P4767856966294561828

namespace A007572

/-- `A015521(n)+xor(4, A108981(n))` -/
def P4767856966294561828.Spec : Prop :=
  ∀ n, P4767856966294561828.a n = A007572 n

end A007572

/-! ## A007572.P13303082710441853649

`Δ[A135541(2*n)]-A135541(2*n+1)`
-/

namespace A007572.P13303082710441853649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135541 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135541 (2 * n + 1)

end

end A007572.P13303082710441853649

namespace A007572

/-- `Δ[A135541(2*n)]-A135541(2*n+1)` -/
def P13303082710441853649.Spec : Prop :=
  ∀ n, P13303082710441853649.a n = A007572 n

end A007572

/-! ## A007572.P17643865924832911889

`A118405(2*n+1)+Δ[Δ[A118405(2*n)]]`
-/

namespace A007572.P17643865924832911889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118405 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118405 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A007572.P17643865924832911889

namespace A007572

/-- `A118405(2*n+1)+Δ[Δ[A118405(2*n)]]` -/
def P17643865924832911889.Spec : Prop :=
  ∀ n, P17643865924832911889.a n = A007572 n

end A007572

/-!
# A007574: Patterns in a dual ring.

The programs for A007574, the canonical program `A007574.P1354935611169580180` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007574 has offset 1).

The definition of A007574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007574.P1354935611169580180

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=31, a(5)=60`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007574

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P1354935611169580180.Spec : Prop :=
  ∀ n, P1354935611169580180.a n = A007574 (n + 1)

theorem P1354935611169580180.correct : P1354935611169580180.Spec := by
  intro n
  simp only [A007574, Nat.add_sub_cancel]

end A007574

/-! ## A007574.P6517577967652649594

`A061705(n+1)-(n+1)`
-/

namespace A007574.P6517577967652649594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061705 (n + 1) - (n + 1 : ℤ)

end

end A007574.P6517577967652649594

namespace A007574

/-- `A061705(n+1)-(n+1)` -/
def P6517577967652649594.Spec : Prop :=
  ∀ n, P6517577967652649594.a n = A007574 (n + 1)

end A007574

/-! ## A007574.P6418208121316555793

`n-2+A000032(n)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A007574.P6418208121316555793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) - 2 + (A000032 n + (a (n - 2) + a (n - 1)))

end

end A007574.P6418208121316555793

namespace A007574

/-- `n-2+A000032(n)+a(n-2)+a(n-1)` -/
def P6418208121316555793.Spec : Prop :=
  ∀ n, P6418208121316555793.a n = A007574 (n + 1)

end A007574

/-! ## A007574.P5209421111911984205

`A131269(n)+A023607(n)`
-/

namespace A007574.P5209421111911984205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 n + A023607 n

end

end A007574.P5209421111911984205

namespace A007574

/-- `A131269(n)+A023607(n)` -/
def P5209421111911984205.Spec : Prop :=
  ∀ n, P5209421111911984205.a n = A007574 (n + 1)

end A007574

/-! ## A007574.P14171163071163573873

`A029907(n+2)+A029907(n)-(n+1)`
-/

namespace A007574.P14171163071163573873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 2) + (A029907 n - (n + 1 : ℤ))

end

end A007574.P14171163071163573873

namespace A007574

/-- `A029907(n+2)+A029907(n)-(n+1)` -/
def P14171163071163573873.Spec : Prop :=
  ∀ n, P14171163071163573873.a n = A007574 (n + 1)

end A007574

/-! ## A007574.P3795783398999189242

`A000032(n+1)+(n+1)*(A000045(n+1)-1)`
-/

namespace A007574.P3795783398999189242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (n + 1 : ℤ) * (A000045 (n + 1) - 1)

end

end A007574.P3795783398999189242

namespace A007574

/-- `A000032(n+1)+(n+1)*(A000045(n+1)-1)` -/
def P3795783398999189242.Spec : Prop :=
  ∀ n, P3795783398999189242.a n = A007574 (n + 1)

end A007574

/-! ## A007574.P12263219717041788837

`A045925(n+1)+A065220(n)+A000071(n+2)`
-/

namespace A007574.P12263219717041788837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + (A065220 n + A000071 (n + 2))

end

end A007574.P12263219717041788837

namespace A007574

/-- `A045925(n+1)+A065220(n)+A000071(n+2)` -/
def P12263219717041788837.Spec : Prop :=
  ∀ n, P12263219717041788837.a n = A007574 (n + 1)

end A007574

/-! ## A007574.P260381682217413953

`A029907(n)+Δ[A023610(n)]-(n+1)`
-/

namespace A007574.P260381682217413953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (f1 (n + 1) - f1 n - (n + 1 : ℤ))

end

end A007574.P260381682217413953

namespace A007574

/-- `A029907(n)+Δ[A023610(n)]-(n+1)` -/
def P260381682217413953.Spec : Prop :=
  ∀ n, P260381682217413953.a n = A007574 (n + 1)

end A007574

/-! ## A007574.P8305804379999730150

`Δ[A136376(n+1)]-(n+1)`
-/

namespace A007574.P8305804379999730150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A007574.P8305804379999730150

namespace A007574

/-- `Δ[A136376(n+1)]-(n+1)` -/
def P8305804379999730150.Spec : Prop :=
  ∀ n, P8305804379999730150.a n = A007574 (n + 1)

end A007574

/-! ## A007574.P5915585872821052387

`Δ[n*A000045(n+2)]+A000045(n)-(n+1)`
-/

namespace A007574.P5915585872821052387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 n - (n + 1 : ℤ)

end

end A007574.P5915585872821052387

namespace A007574

/-- `Δ[n*A000045(n+2)]+A000045(n)-(n+1)` -/
def P5915585872821052387.Spec : Prop :=
  ∀ n, P5915585872821052387.a n = A007574 (n + 1)

end A007574

/-!
# A007575: Number of stable towers of 2 X 2 LEGO blocks.

The programs for A007575, there is no canonical definition to state claims against.
-/

/-! ## A007575.P15284384193515813776

`A159477(A019308(n))`
-/

namespace A007575.P15284384193515813776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A019308 n).toNat

end

end A007575.P15284384193515813776

/-! ## A007575.P9570714725687449064

`A208643(A216434(n))`
-/

namespace A007575.P9570714725687449064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208643 (A216434 n).toNat

end

end A007575.P9570714725687449064

/-! ## A007575.P1885766553531453122

`A208643(A102407(n+1))`
-/

namespace A007575.P1885766553531453122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208643 (A102407 (n + 1)).toNat

end

end A007575.P1885766553531453122

/-!
# A007576: Number of solutions to k_1 + 2*k_2 + ... + n*k_n = 0, where k_i are from {-1,0,1}, i=1..n.

The programs for A007576, there is no canonical definition to state claims against.
-/

/-! ## A007576.P632289522990387557

`A225310(A000096(A028310(n)))`
-/

namespace A007576.P632289522990387557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000096 (A028310 n).toNat).toNat

end

end A007576.P632289522990387557

/-! ## A007576.P2394391744674261483

`A225310(A000096(A233583(n+1)))`
-/

namespace A007576.P2394391744674261483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000096 (A233583 (n + 1)).toNat).toNat

end

end A007576.P2394391744674261483

/-! ## A007576.P6621892508228209757

`A225310(A000096(A000038(n)+n))`
-/

namespace A007576.P6621892508228209757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000096 (A000038 n + (n : ℤ)).toNat).toNat

end

end A007576.P6621892508228209757

/-! ## A007576.P6752463875652213023

`A225310(or(A000038(n), A000096(n)))`
-/

namespace A007576.P6752463875652213023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (Int.lor (A000038 n) (A000096 n)).toNat

end

end A007576.P6752463875652213023

/-! ## A007576.P6420404495236192541

`A225310(A233583(∑[n+1]))`
-/

namespace A007576.P6420404495236192541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A233583 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007576.P6420404495236192541

/-!
# A007577: Number of chess games with n plies (another version).

The programs for A007577, there is no canonical definition to state claims against.
-/

/-! ## A007577.P11522394282081734594

`A006494(n)-A051910(A258110(n))`
-/

namespace A007577.P11522394282081734594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006494 n - A051910 (A258110 n).toNat

end

end A007577.P11522394282081734594

/-! ## A007577.P6596888559116672208

`A048987(n)-A006926(A351017(n))`
-/

namespace A007577.P6596888559116672208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048987 n - A006926 (A351017 n).toNat

end

end A007577.P6596888559116672208

/-!
# A007578: Number of Young tableaux of height <= 7.

The programs for A007578, there is no canonical definition to state claims against.
-/

/-! ## A007578.P8603093161878697392

`A182172(A155212(n+4))`
-/

namespace A007578.P8603093161878697392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A155212 (n + 4)).toNat

end

end A007578.P8603093161878697392

/-! ## A007578.P16239011883925619304

`A182172(A056126(n)+28)`
-/

namespace A007578.P16239011883925619304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A056126 n + 28).toNat

end

end A007578.P16239011883925619304

/-! ## A007578.P571586570899768090

`A182172(eq[7, A025581(n)])`
-/

namespace A007578.P571586570899768090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007578.P571586570899768090

/-! ## A007578.P15638873271482279809

`A182172(A000096(n+7)-7)`
-/

namespace A007578.P15638873271482279809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A000096 (n + 7) - 7).toNat

end

end A007578.P15638873271482279809

/-! ## A007578.P6419192650640362142

`A182172(A000217(n+8)-8)`
-/

namespace A007578.P6419192650640362142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A000217 (n + 8) - 8).toNat

end

end A007578.P6419192650640362142

/-! ## A007578.P2555521804588685309

`A182172(eq[8, A004736(n+1)])`
-/

namespace A007578.P2555521804588685309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007578.P2555521804588685309

/-!
# A007579: Number of Young tableaux of height <= 6.

The programs for A007579, there is no canonical definition to state claims against.
-/

/-! ## A007579.P14795622832997797181

`A182172(A052905(n+4)-2)`
-/

namespace A007579.P14795622832997797181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A052905 (n + 4) - 2).toNat

end

end A007579.P14795622832997797181

/-! ## A007579.P16801971709368488709

`A182172(A046691(n+5)-3)`
-/

namespace A007579.P16801971709368488709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A046691 (n + 5) - 3).toNat

end

end A007579.P16801971709368488709

/-! ## A007579.P6899999938688739167

`A182172(A000217(n+7)-7)`
-/

namespace A007579.P6899999938688739167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A000217 (n + 7) - 7).toNat

end

end A007579.P6899999938688739167

/-! ## A007579.P5851895923834031840

`A182172(eq[7, A004736(n+1)])`
-/

namespace A007579.P5851895923834031840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007579.P5851895923834031840

/-! ## A007579.P15995730576903665277

`A182172(Δ[A026054(n+4)]-1)`
-/

namespace A007579.P15995730576903665277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (f1 (n + 1) - f1 n - 1).toNat

end

end A007579.P15995730576903665277

/-! ## A007579.P11594501031343777610

`A182172(n+5+A052905(n+3))`
-/

namespace A007579.P11594501031343777610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 ((n + 5 : ℤ) + A052905 (n + 3)).toNat

end

end A007579.P11594501031343777610

/-! ## A007579.P9086468323046977102

`A182172(A250469(2*(n+3))+A167499(n))`
-/

namespace A007579.P9086468323046977102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A250469 (2 * (n + 3)) + A167499 n).toNat

end

end A007579.P9086468323046977102

/-!
# A007580: Number of Young tableaux of height <= 8.

The programs for A007580, there is no canonical definition to state claims against.
-/

/-! ## A007580.P3059736427218400846

`A182172(A051936(n+9))`
-/

namespace A007580.P3059736427218400846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A051936 (n + 9)).toNat

end

end A007580.P3059736427218400846

/-! ## A007580.P17247904190528822917

`A182172(A055998(n+7)-6)`
-/

namespace A007580.P17247904190528822917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A055998 (n + 7) - 6).toNat

end

end A007580.P17247904190528822917

/-! ## A007580.P5914983818204378852

`A182172(A000217(n+9)-9)`
-/

namespace A007580.P5914983818204378852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A000217 (n + 9) - 9).toNat

end

end A007580.P5914983818204378852

/-! ## A007580.P8874879969949707942

`A182172(n+5+A052905(n+5))`
-/

namespace A007580.P8874879969949707942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 ((n + 5 : ℤ) + A052905 (n + 5)).toNat

end

end A007580.P8874879969949707942

/-! ## A007580.P11898993566094067998

`A182172(A020715(n)²-A055998(n))`
-/

namespace A007580.P11898993566094067998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A020715 n ^ 2 - A055998 n).toNat

end

end A007580.P11898993566094067998

/-!
# A007581: a(n) = (2^n+1)*(2^n+2)/6.

The programs for A007581, the canonical program `A007581.P15232168184730947590` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007581 has offset 0).

The definition of A007581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+1)*(2^n+2)/6` (program `A007581.P846175752815856871`, by `A007581.P846175752815856871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007581.P846175752815856871

`(2^n+1)*(2^n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007581.P846175752815856871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n + 1) * (2 ^ n + 2) : ℚ) / 6

end

end A007581.P846175752815856871

namespace A007581

/-- `(2^n+1)*(2^n+2)/6` -/
def P846175752815856871.Spec : Prop :=
  ∀ n, P846175752815856871.a n = (A007581 n : ℚ)

theorem P846175752815856871.correct : P846175752815856871.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A007581, Nat.add_sub_cancel, A007581.P846175752815856871.a, A007581.P15232168184730947590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A007581, Nat.add_sub_cancel, A007581.P846175752815856871.a, A007581.P15232168184730947590.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007581

/-! ## A007581.P15232168184730947590

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007581

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P15232168184730947590.Spec : Prop :=
  ∀ n, P15232168184730947590.a n = A007581 n

theorem P15232168184730947590.correct : P15232168184730947590.Spec := by
  intro n
  simp only [A007581]

end A007581

/-! ## A007581.P5718591357506279476

`∑[ogf((1-5x+5x^2)/(1-6x+8x^2))]`
-/

namespace A007581.P5718591357506279476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 5] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007581.P5718591357506279476

namespace A007581

/-- `∑[ogf((1-5x+5x^2)/(1-6x+8x^2))]` -/
def P5718591357506279476.Spec : Prop :=
  ∀ n, P5718591357506279476.a n = A007581 n

end A007581

/-! ## A007581.P2064560795316178312

`4*a(n-1)-2^(n-1)-1` with `a(0)=1`
-/

namespace A007581.P2064560795316178312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1

end

end A007581.P2064560795316178312

namespace A007581

/-- `4*a(n-1)-2^(n-1)-1` -/
def P2064560795316178312.Spec : Prop :=
  ∀ n, P2064560795316178312.a n = (A007581 n : ℚ)

end A007581

/-! ## A007581.P4214178626601216429

`or(2^n, ∑[floor(((2^n-1)/2)²)/2])`
-/

namespace A007581.P4214178626601216429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(((2 ^ n : ℤ) - 1 : ℚ) / 2) ^ 2⌋ : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A007581.P4214178626601216429

namespace A007581

/-- `or(2^n, ∑[floor(((2^n-1)/2)²)/2])` -/
def P4214178626601216429.Spec : Prop :=
  ∀ n, P4214178626601216429.a n = A007581 n

end A007581

/-! ## A007581.P6635464949191140983

`xor((2^n-1)*(2^n-2)/6, 2^n)`
-/

namespace A007581.P6635464949191140983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((2 ^ n : ℤ) - 1 : ℚ) * (((2 ^ n : ℤ) - 2 : ℚ) / 6))) (2 ^ n : ℤ)

end

end A007581.P6635464949191140983

namespace A007581

/-- `xor((2^n-1)*(2^n-2)/6, 2^n)` -/
def P6635464949191140983.Spec : Prop :=
  ∀ n, P6635464949191140983.a n = A007581 n

end A007581

/-! ## A007581.P4792057411226509129

`2*(3*a(n-1)-4*a(n-2))+1` with `a(0)=1, a(1)=2`
-/

namespace A007581.P4792057411226509129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (3 * a (n - 1) - 4 * a (n - 2)) + 1

end

end A007581.P4792057411226509129

namespace A007581

/-- `2*(3*a(n-1)-4*a(n-2))+1` -/
def P4792057411226509129.Spec : Prop :=
  ∀ n, P4792057411226509129.a n = A007581 n

end A007581

/-! ## A007581.P13957785522989506687

`A076024(n)+1`
-/

namespace A007581.P13957785522989506687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n + 1

end

end A007581.P13957785522989506687

namespace A007581

/-- `A076024(n)+1` -/
def P13957785522989506687.Spec : Prop :=
  ∀ n, P13957785522989506687.a n = A007581 n

end A007581

/-! ## A007581.P18184823134071426002

`A124303(n+1)`
-/

namespace A007581.P18184823134071426002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (n + 1)

end

end A007581.P18184823134071426002

namespace A007581

/-- `A124303(n+1)` -/
def P18184823134071426002.Spec : Prop :=
  ∀ n, P18184823134071426002.a n = A007581 n

end A007581

/-! ## A007581.P7925926622128249737

`A056505(Δ[n²])`
-/

namespace A007581.P7925926622128249737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007581.P7925926622128249737

namespace A007581

/-- `A056505(Δ[n²])` -/
def P7925926622128249737.Spec : Prop :=
  ∀ n, P7925926622128249737.a n = A007581 n

end A007581

/-! ## A007581.P1018642383035256233

`A006095(n)+2^n`
-/

namespace A007581.P1018642383035256233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + (2 ^ n : ℤ)

end

end A007581.P1018642383035256233

namespace A007581

/-- `A006095(n)+2^n` -/
def P1018642383035256233.Spec : Prop :=
  ∀ n, P1018642383035256233.a n = A007581 n

end A007581

/-! ## A007581.P3929721443228401511

`∑{d}[n+1, A056275(#)]`
-/

namespace A007581.P3929721443228401511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056275 d

end

end A007581.P3929721443228401511

namespace A007581

/-- `∑{d}[n+1, A056275(#)]` -/
def P3929721443228401511.Spec : Prop :=
  ∀ n, P3929721443228401511.a n = A007581 n

end A007581

/-! ## A007581.P8305028905914112999

`Δ[abs(1-∑[A124303(n)])]`
-/

namespace A007581.P8305028905914112999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007581.P8305028905914112999

namespace A007581

/-- `Δ[abs(1-∑[A124303(n)])]` -/
def P8305028905914112999.Spec : Prop :=
  ∀ n, P8305028905914112999.a n = A007581 n

end A007581

/-! ## A007581.P6403313981376947831

`∑{d}[2*n+1, A056478(#)]`
-/

namespace A007581.P6403313981376947831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056478 d

end

end A007581.P6403313981376947831

namespace A007581

/-- `∑{d}[2*n+1, A056478(#)]` -/
def P6403313981376947831.Spec : Prop :=
  ∀ n, P6403313981376947831.a n = A007581 n

end A007581

/-! ## A007581.P9500225357896119813

`∑{d}[2*n+1, A056515(#)]`
-/

namespace A007581.P9500225357896119813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056515 d

end

end A007581.P9500225357896119813

namespace A007581

/-- `∑{d}[2*n+1, A056515(#)]` -/
def P9500225357896119813.Spec : Prop :=
  ∀ n, P9500225357896119813.a n = A007581 n

end A007581

/-! ## A007581.P17795996001710540430

`A007582(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A007581.P17795996001710540430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007582 (n - 1) + a (n - 1)

end

end A007581.P17795996001710540430

namespace A007581

/-- `A007582(n-1)+a(n-1)` -/
def P17795996001710540430.Spec : Prop :=
  ∀ n, P17795996001710540430.a n = A007581 n

end A007581

/-! ## A007581.P269485177952619305

`A222939(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A007581.P269485177952619305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222939 (n + 2) - a (n - 1)

end

end A007581.P269485177952619305

namespace A007581

/-- `A222939(n+2)-a(n-1)` -/
def P269485177952619305.Spec : Prop :=
  ∀ n, P269485177952619305.a n = A007581 n

end A007581

/-! ## A007581.P7607774980406926706

`record[A124303(A008611(n))]`
-/

namespace A007581.P7607774980406926706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007581.P7607774980406926706

namespace A007581

/-- `record[A124303(A008611(n))]` -/
def P7607774980406926706.Spec : Prop :=
  ∀ n, P7607774980406926706.a n = A007581 n

end A007581

/-! ## A007581.P6624428053238558069

`A077957(2*n)+A006095(n)`
-/

namespace A007581.P6624428053238558069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) + A006095 n

end

end A007581.P6624428053238558069

namespace A007581

/-- `A077957(2*n)+A006095(n)` -/
def P6624428053238558069.Spec : Prop :=
  ∀ n, P6624428053238558069.a n = A007581 n

end A007581

/-! ## A007581.P6000709766443621615

`A320934(n+1)+A056323(n+1)`
-/

namespace A007581.P6000709766443621615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320934 (n + 1) + A056323 (n + 1)

end

end A007581.P6000709766443621615

namespace A007581

/-- `A320934(n+1)+A056323(n+1)` -/
def P6000709766443621615.Spec : Prop :=
  ∀ n, P6000709766443621615.a n = A007581 n

end A007581

/-!
# A007582: a(n) = 2^(n-1)*(1+2^n).

The programs for A007582, the canonical program `A007582.P14418958717774849752` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007582 has offset 0).

The definition of A007582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-1)*(1+2^n)` (program `A007582.P1025302683331789233`, by `A007582.P1025302683331789233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007582.P1025302683331789233

`2^(n-1)*(1+2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007582.P1025302683331789233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (1 + 2 ^ n : ℚ)

end

end A007582.P1025302683331789233

namespace A007582

/-- `2^(n-1)*(1+2^n)` -/
def P1025302683331789233.Spec : Prop :=
  ∀ n, P1025302683331789233.a n = (A007582 n : ℚ)

theorem P1025302683331789233.correct : P1025302683331789233.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A007582, Nat.add_sub_cancel, A007582.P1025302683331789233.a, A007582.P14418958717774849752.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A007582, Nat.add_sub_cancel, A007582.P1025302683331789233.a, A007582.P14418958717774849752.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A007582

/-! ## A007582.P14418958717774849752

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007582

/-- `6*a(n-1)-8*a(n-2)` -/
def P14418958717774849752.Spec : Prop :=
  ∀ n, P14418958717774849752.a n = A007582 n

theorem P14418958717774849752.correct : P14418958717774849752.Spec := by
  intro n
  simp only [A007582]

end A007582

/-! ## A007582.P8064775090267353427

`A000079(n)+A006516(n)`
-/

namespace A007582.P8064775090267353427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A006516 n

end

end A007582.P8064775090267353427

namespace A007582

/-- `A000079(n)+A006516(n)` -/
def P8064775090267353427.Spec : Prop :=
  ∀ n, P8064775090267353427.a n = A007582 n

end A007582

/-! ## A007582.P8921171808897651962

`C(1+2^n, 2)`
-/

namespace A007582.P8921171808897651962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 + 2 ^ n) 2

end

end A007582.P8921171808897651962

namespace A007582

/-- `C(1+2^n, 2)` -/
def P8921171808897651962.Spec : Prop :=
  ∀ n, (P8921171808897651962.a n : ℤ) = A007582 n

end A007582

/-! ## A007582.P7027474527282334175

`A028403(n+1)/4`
-/

namespace A007582.P7027474527282334175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028403 (n + 1) : ℚ) / 4

end

end A007582.P7027474527282334175

namespace A007582

/-- `A028403(n+1)/4` -/
def P7027474527282334175.Spec : Prop :=
  ∀ n, P7027474527282334175.a n = (A007582 n : ℚ)

theorem P7027474527282334175.correct : P7027474527282334175.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A007582, Nat.add_sub_cancel, A007582.P7027474527282334175.a, A007582.P14418958717774849752.a, A028403, A028403.P12072581597189381239.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A007582, Nat.add_sub_cancel, A007582.P7027474527282334175.a, A007582.P14418958717774849752.a, A028403, A028403.P12072581597189381239.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A007582

/-! ## A007582.P10735665134725498469

`ogf((1-3x)/(1-6x+8x^2))`
-/

namespace A007582.P10735665134725498469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, 8] n

end

end A007582.P10735665134725498469

namespace A007582

/-- `ogf((1-3x)/(1-6x+8x^2))` -/
def P10735665134725498469.Spec : Prop :=
  ∀ n, P10735665134725498469.a n = A007582 n

end A007582

/-! ## A007582.P2984879610272929225

`lcm(or(1, 2^n), ceil(2^(n-1)))`
-/

namespace A007582.P2984879610272929225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lor 1 (2 ^ n) : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A007582.P2984879610272929225

namespace A007582

/-- `lcm(or(1, 2^n), ceil(2^(n-1)))` -/
def P2984879610272929225.Spec : Prop :=
  ∀ n, (P2984879610272929225.a n : ℤ) = A007582 n

end A007582

/-! ## A007582.P7692961112063901740

`4*a(n-1)-2^(n-1)` with `a(0)=1`
-/

namespace A007582.P7692961112063901740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A007582.P7692961112063901740

namespace A007582

/-- `4*a(n-1)-2^(n-1)` -/
def P7692961112063901740.Spec : Prop :=
  ∀ n, P7692961112063901740.a n = (A007582 n : ℚ)

end A007582

/-! ## A007582.P8088560454695265737

`or(ceil(2^(n-1)), ceil(4^n/2))`
-/

namespace A007582.P8088560454695265737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ⌈(4 ^ n : ℚ) / 2⌉

end

end A007582.P8088560454695265737

namespace A007582

/-- `or(ceil(2^(n-1)), ceil(4^n/2))` -/
def P8088560454695265737.Spec : Prop :=
  ∀ n, P8088560454695265737.a n = A007582 n

end A007582

/-! ## A007582.P11675813265584627064

`xor(ceil(4^n/2), Δ[ceil(2^(n-1))])`
-/

namespace A007582.P11675813265584627064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(4 ^ n : ℚ) / 2⌉ (f1 (n + 1) - f1 n)

end

end A007582.P11675813265584627064

namespace A007582

/-- `xor(ceil(4^n/2), Δ[ceil(2^(n-1))])` -/
def P11675813265584627064.Spec : Prop :=
  ∀ n, P11675813265584627064.a n = A007582 n

end A007582

/-! ## A007582.P4763217642254103916

`a(n-1)+a(n-1)+4^(n-1)` with `a(0)=1`
-/

namespace A007582.P4763217642254103916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A007582.P4763217642254103916

namespace A007582

/-- `a(n-1)+a(n-1)+4^(n-1)` -/
def P4763217642254103916.Spec : Prop :=
  ∀ n, P4763217642254103916.a n = (A007582 n : ℚ)

end A007582

/-! ## A007582.P15483497858377504957

`Δ[A007581(n)]`
-/

namespace A007582.P15483497858377504957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007582.P15483497858377504957

namespace A007582

/-- `Δ[A007581(n)]` -/
def P15483497858377504957.Spec : Prop :=
  ∀ n, P15483497858377504957.a n = A007582 n

end A007582

/-! ## A007582.P5310626907615736763

`Δ[A076024(n)]`
-/

namespace A007582.P5310626907615736763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007582.P5310626907615736763

namespace A007582

/-- `Δ[A076024(n)]` -/
def P5310626907615736763.Spec : Prop :=
  ∀ n, P5310626907615736763.a n = A007582 n

end A007582

/-! ## A007582.P5068222766094037318

`A281481(n)-1`
-/

namespace A007582.P5068222766094037318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n - 1

end

end A007582.P5068222766094037318

namespace A007582

/-- `A281481(n)-1` -/
def P5068222766094037318.Spec : Prop :=
  ∀ n, P5068222766094037318.a n = A007582 n

end A007582

/-! ## A007582.P12833834893243296686

`A161168(n)/2`
-/

namespace A007582.P12833834893243296686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161168 n : ℚ) / 2

end

end A007582.P12833834893243296686

namespace A007582

/-- `A161168(n)/2` -/
def P12833834893243296686.Spec : Prop :=
  ∀ n, P12833834893243296686.a n = (A007582 n : ℚ)

theorem P12833834893243296686.correct : P12833834893243296686.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A007582, Nat.add_sub_cancel, A007582.P12833834893243296686.a, A007582.P14418958717774849752.a, A161168, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A007582, Nat.add_sub_cancel, A007582.P12833834893243296686.a, A007582.P14418958717774849752.a, A161168, A161168.P10156154460995207162.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A007582

/-! ## A007582.P14315530556009415654

`A005418(Δ[n²])`
-/

namespace A007582.P14315530556009415654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007582.P14315530556009415654

namespace A007582

/-- `A005418(Δ[n²])` -/
def P14315530556009415654.Spec : Prop :=
  ∀ n, P14315530556009415654.a n = A007582 n

end A007582

/-! ## A007582.P14944789005335891602

`A113980(Δ[n²])`
-/

namespace A007582.P14944789005335891602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113980 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007582.P14944789005335891602

namespace A007582

/-- `A113980(Δ[n²])` -/
def P14944789005335891602.Spec : Prop :=
  ∀ n, P14944789005335891602.a n = A007582 n

end A007582

/-! ## A007582.P12469628572870342292

`A137173(Δ[n²])`
-/

namespace A007582.P12469628572870342292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007582.P12469628572870342292

namespace A007582

/-- `A137173(Δ[n²])` -/
def P12469628572870342292.Spec : Prop :=
  ∀ n, P12469628572870342292.a n = A007582 n

end A007582

/-! ## A007582.P1614650791886192727

`floor(A001576(n)/2)`
-/

namespace A007582.P1614650791886192727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001576 n : ℚ) / 2⌋

end

end A007582.P1614650791886192727

namespace A007582

/-- `floor(A001576(n)/2)` -/
def P1614650791886192727.Spec : Prop :=
  ∀ n, P1614650791886192727.a n = A007582 n

end A007582

/-!
# A007583: a(n) = (2^(2*n + 1) + 1)/3.

The programs for A007583, the canonical program `A007583.P12280822276545964020` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007583 has offset 0).

The definition of A007583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2*n+1)+1)/3` (program `A007583.P15538584942331901894`, by `A007583.P15538584942331901894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007583.P12280822276545964020

`4*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007583

/-- `4*a(n-1)-1` -/
def P12280822276545964020.Spec : Prop :=
  ∀ n, P12280822276545964020.a n = A007583 n

theorem P12280822276545964020.correct : P12280822276545964020.Spec := by
  intro n
  simp only [A007583]

end A007583

/-! ## A007583.P13886417096194953800

`A020988(n)+1`
-/

namespace A007583.P13886417096194953800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + 1

end

end A007583.P13886417096194953800

namespace A007583

/-- `A020988(n)+1` -/
def P13886417096194953800.Spec : Prop :=
  ∀ n, P13886417096194953800.a n = A007583 n

end A007583

/-! ## A007583.P8063203405346240712

`A039301(n+1)-1`
-/

namespace A007583.P8063203405346240712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 (n + 1) - 1

end

end A007583.P8063203405346240712

namespace A007583

/-- `A039301(n+1)-1` -/
def P8063203405346240712.Spec : Prop :=
  ∀ n, P8063203405346240712.a n = A007583 n

end A007583

/-! ## A007583.P10110472375983378596

`A001045(2*n+1)`
-/

namespace A007583.P10110472375983378596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n + 1)

end

end A007583.P10110472375983378596

namespace A007583

/-- `A001045(2*n+1)` -/
def P10110472375983378596.Spec : Prop :=
  ∀ n, P10110472375983378596.a n = A007583 n

end A007583

/-! ## A007583.P1419374364908700461

`2*A002450(n)+1`
-/

namespace A007583.P1419374364908700461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002450 n + 1

end

end A007583.P1419374364908700461

namespace A007583

/-- `2*A002450(n)+1` -/
def P1419374364908700461.Spec : Prop :=
  ∀ n, P1419374364908700461.a n = A007583 n

end A007583

/-! ## A007583.P17420914582902264647

`A193652(2*n+1)`
-/

namespace A007583.P17420914582902264647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193652 (2 * n + 1)

end

end A007583.P17420914582902264647

namespace A007583

/-- `A193652(2*n+1)` -/
def P17420914582902264647.Spec : Prop :=
  ∀ n, P17420914582902264647.a n = A007583 n

end A007583

/-! ## A007583.P14712368847539439884

`4^n-A001045(2*n)`
-/

namespace A007583.P14712368847539439884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A001045 (2 * n)

end

end A007583.P14712368847539439884

namespace A007583

/-- `4^n-A001045(2*n)` -/
def P14712368847539439884.Spec : Prop :=
  ∀ n, P14712368847539439884.a n = A007583 n

end A007583

/-! ## A007583.P15538584942331901894

`(2^(2*n+1)+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007583.P15538584942331901894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n + 1) + 1 : ℚ) / 3

end

end A007583.P15538584942331901894

namespace A007583

/-- `(2^(2*n+1)+1)/3` -/
def P15538584942331901894.Spec : Prop :=
  ∀ n, P15538584942331901894.a n = (A007583 n : ℚ)

theorem P15538584942331901894.correct : P15538584942331901894.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A007583, Nat.add_sub_cancel, A007583.P15538584942331901894.a, A007583.P12280822276545964020.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A007583, Nat.add_sub_cancel, A007583.P15538584942331901894.a, A007583.P12280822276545964020.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007583

/-! ## A007583.P17930405259906654303

`2^(2*(n+1))-A072197(n)`
-/

namespace A007583.P17930405259906654303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1)) : ℤ) - A072197 n

end

end A007583.P17930405259906654303

namespace A007583

/-- `2^(2*(n+1))-A072197(n)` -/
def P17930405259906654303.Spec : Prop :=
  ∀ n, P17930405259906654303.a n = A007583 n

end A007583

/-! ## A007583.P4314042027891784275

`record[∑[(-2)^n]]`
-/

namespace A007583.P4314042027891784275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007583.P4314042027891784275

namespace A007583

/-- `record[∑[(-2)^n]]` -/
def P4314042027891784275.Spec : Prop :=
  ∀ n, P4314042027891784275.a n = A007583 n

end A007583

/-! ## A007583.P14368710276004557085

`ogf((1-2x)/(1-5x+4x^2))`
-/

namespace A007583.P14368710276004557085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 4] n

end

end A007583.P14368710276004557085

namespace A007583

/-- `ogf((1-2x)/(1-5x+4x^2))` -/
def P14368710276004557085.Spec : Prop :=
  ∀ n, P14368710276004557085.a n = A007583 n

end A007583

/-! ## A007583.P16468209929929916786

`∑[record[2^gcd(n, ∑[n])]]`
-/

namespace A007583.P16468209929929916786
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007583.P16468209929929916786

namespace A007583

/-- `∑[record[2^gcd(n, ∑[n])]]` -/
def P16468209929929916786.Spec : Prop :=
  ∀ n, (P16468209929929916786.a n : ℤ) = A007583 n

end A007583

/-! ## A007583.P14438954185308728200

`lcm(4, a(n-1))-1` with `a(0)=1`
-/

namespace A007583.P14438954185308728200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - 1

end

end A007583.P14438954185308728200

namespace A007583

/-- `lcm(4, a(n-1))-1` -/
def P14438954185308728200.Spec : Prop :=
  ∀ n, P14438954185308728200.a n = A007583 n

end A007583

/-! ## A007583.P11179127872928130307

`a(n-1)+4^n/2` with `a(0)=1`
-/

namespace A007583.P11179127872928130307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (4 ^ n : ℚ) / 2

end

end A007583.P11179127872928130307

namespace A007583

/-- `a(n-1)+4^n/2` -/
def P11179127872928130307.Spec : Prop :=
  ∀ n, P11179127872928130307.a n = (A007583 n : ℚ)

end A007583

/-! ## A007583.P11556767403308747863

`or(4^n/2, a(n-1))` with `a(0)=1`
-/

namespace A007583.P11556767403308747863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 2)) (a (n - 1))

end

end A007583.P11556767403308747863

namespace A007583

/-- `or(4^n/2, a(n-1))` -/
def P11556767403308747863.Spec : Prop :=
  ∀ n, P11556767403308747863.a n = A007583 n

end A007583

/-! ## A007583.P10150934614973195753

`xor(4^n/2, a(n-1))` with `a(0)=1`
-/

namespace A007583.P10150934614973195753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 2)) (a (n - 1))

end

end A007583.P10150934614973195753

namespace A007583

/-- `xor(4^n/2, a(n-1))` -/
def P10150934614973195753.Spec : Prop :=
  ∀ n, P10150934614973195753.a n = A007583 n

end A007583

/-! ## A007583.P7414994141438476233

`a(n-1)/(1/2)²-1` with `a(0)=1`
-/

namespace A007583.P7414994141438476233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 1

end

end A007583.P7414994141438476233

namespace A007583

/-- `a(n-1)/(1/2)²-1` -/
def P7414994141438476233.Spec : Prop :=
  ∀ n, P7414994141438476233.a n = (A007583 n : ℚ)

end A007583

/-! ## A007583.P1479873403709773793

`∑[a(n-1)/(1-3/4)]` with `a(0)=1, a(1)=2`
-/

namespace A007583.P1479873403709773793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) / (1 - (3 : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007583.P1479873403709773793

namespace A007583

/-- `∑[a(n-1)/(1-3/4)]` -/
def P1479873403709773793.Spec : Prop :=
  ∀ n, P1479873403709773793.a n = (A007583 n : ℚ)

end A007583

/-! ## A007583.P12449459426579692517

`floor(a(n-1)/(1-3/4))-1` with `a(0)=1`
-/

namespace A007583.P12449459426579692517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (3 : ℚ) / 4)⌋ - 1

end

end A007583.P12449459426579692517

namespace A007583

/-- `floor(a(n-1)/(1-3/4))-1` -/
def P12449459426579692517.Spec : Prop :=
  ∀ n, P12449459426579692517.a n = A007583 n

end A007583

/-!
# A007584: 9-gonal (or enneagonal) pyramidal numbers: a(n) = n*(n+1)*(7*n-4)/6.

The programs for A007584, the canonical program `A007584.P4702603288148869977` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007584 has offset 0).

The definition of A007584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(7*n-4)/6` (program `A007584.P7566891867267238012`, by `A007584.P7566891867267238012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007584.P17493271812242393956

`(7*n-4)*C(n+1, 2)/3`
-/

namespace A007584.P17493271812242393956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((7 * n : ℤ) - 4) * (Nat.choose (n + 1) 2 : ℤ) : ℚ) / 3

end

end A007584.P17493271812242393956

namespace A007584

/-- `(7*n-4)*C(n+1, 2)/3` -/
def P17493271812242393956.Spec : Prop :=
  ∀ n, P17493271812242393956.a n = (A007584 n : ℚ)

end A007584

/-! ## A007584.P11304746602146461620

`C(n+2, 3)+6*C(n+1, 3)`
-/

namespace A007584.P11304746602146461620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + 6 * Nat.choose (n + 1) 3

end

end A007584.P11304746602146461620

namespace A007584

/-- `C(n+2, 3)+6*C(n+1, 3)` -/
def P11304746602146461620.Spec : Prop :=
  ∀ n, (P11304746602146461620.a n : ℤ) = A007584 n

end A007584

/-! ## A007584.P7566891867267238012

`n*(n+1)*(7*n-4)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007584.P7566891867267238012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((7 * n : ℤ) - 4) : ℚ) / 6

end

end A007584.P7566891867267238012

namespace A007584

/-- `n*(n+1)*(7*n-4)/6` -/
def P7566891867267238012.Spec : Prop :=
  ∀ n, P7566891867267238012.a n = (A007584 n : ℚ)

theorem P7566891867267238012.correct : P7566891867267238012.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A007584, Nat.add_sub_cancel, A007584.P7566891867267238012.a, A007584.P4702603288148869977.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A007584, Nat.add_sub_cancel, A007584.P7566891867267238012.a, A007584.P4702603288148869977.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007584

/-! ## A007584.P4702603288148869977

`3*a(n-1)-3*a(n-2)+a(n-3)+7` with `a(0)=0, a(1)=1, a(2)=10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007584

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+7` -/
def P4702603288148869977.Spec : Prop :=
  ∀ n, P4702603288148869977.a n = A007584 n

theorem P4702603288148869977.correct : P4702603288148869977.Spec := by
  intro n
  simp only [A007584]

end A007584

/-! ## A007584.P2503003544493879924

`∑[7*C(n, 2)+n]`
-/

namespace A007584.P2503003544493879924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P2503003544493879924

namespace A007584

/-- `∑[7*C(n, 2)+n]` -/
def P2503003544493879924.Spec : Prop :=
  ∀ n, (P2503003544493879924.a n : ℤ) = A007584 n

end A007584

/-! ## A007584.P14759645456964007071

`∑[∑[ogf((x+6x^2)/(1-2x+x^2))]]`
-/

namespace A007584.P14759645456964007071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P14759645456964007071

namespace A007584

/-- `∑[∑[ogf((x+6x^2)/(1-2x+x^2))]]` -/
def P14759645456964007071.Spec : Prop :=
  ∀ n, P14759645456964007071.a n = A007584 n

end A007584

/-! ## A007584.P18011907551029787294

`ogf((x+6x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A007584.P18011907551029787294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6] [1, -4, 6, -4, 1] n

end

end A007584.P18011907551029787294

namespace A007584

/-- `ogf((x+6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P18011907551029787294.Spec : Prop :=
  ∀ n, P18011907551029787294.a n = A007584 n

end A007584

/-! ## A007584.P1924448359014865811

`C(2*n+1, 3)-C(n, 3)`
-/

namespace A007584.P1924448359014865811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 : ℤ) - (Nat.choose n 3 : ℤ)

end

end A007584.P1924448359014865811

namespace A007584

/-- `C(2*n+1, 3)-C(n, 3)` -/
def P1924448359014865811.Spec : Prop :=
  ∀ n, P1924448359014865811.a n = A007584 n

end A007584

/-! ## A007584.P1184904948494978036

`C(n+2, 3)+n^3-n`
-/

namespace A007584.P1184904948494978036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 + n ^ 3 : ℤ) - (n : ℤ)

end

end A007584.P1184904948494978036

namespace A007584

/-- `C(n+2, 3)+n^3-n` -/
def P1184904948494978036.Spec : Prop :=
  ∀ n, P1184904948494978036.a n = A007584 n

end A007584

/-! ## A007584.P10822893106828462227

`∑[a(n-1)+n]+n^3` with `a(0)=0, a(1)=0`
-/

namespace A007584.P10822893106828462227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 3

end

end A007584.P10822893106828462227

namespace A007584

/-- `∑[a(n-1)+n]+n^3` -/
def P10822893106828462227.Spec : Prop :=
  ∀ n, (P10822893106828462227.a n : ℤ) = A007584 n

end A007584

/-! ## A007584.P7029710268202841188

`n^3-∑[a(n-1)-n]` with `a(0)=0, a(1)=0`
-/

namespace A007584.P7029710268202841188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P7029710268202841188

namespace A007584

/-- `n^3-∑[a(n-1)-n]` -/
def P7029710268202841188.Spec : Prop :=
  ∀ n, P7029710268202841188.a n = A007584 n

end A007584

/-! ## A007584.P3259014372982599993

`∑[∑[n]]+(n+1)*lcm(n, n-1)`
-/

namespace A007584.P3259014372982599993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * Int.lcm (n : ℤ) ((n : ℤ) - 1)

end

end A007584.P3259014372982599993

namespace A007584

/-- `∑[∑[n]]+(n+1)*lcm(n, n-1)` -/
def P3259014372982599993.Spec : Prop :=
  ∀ n, (P3259014372982599993.a n : ℤ) = A007584 n

end A007584

/-! ## A007584.P17652709992281720197

`∑[∑[a(n-1)+7]]-(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A007584.P17652709992281720197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A007584.P17652709992281720197

namespace A007584

/-- `∑[∑[a(n-1)+7]]-(n+1)` -/
def P17652709992281720197.Spec : Prop :=
  ∀ n, P17652709992281720197.a n = A007584 n

end A007584

/-! ## A007584.P7165705294388195703

`∑[A001106(n)]`
-/

namespace A007584.P7165705294388195703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P7165705294388195703

namespace A007584

/-- `∑[A001106(n)]` -/
def P7165705294388195703.Spec : Prop :=
  ∀ n, P7165705294388195703.a n = A007584 n

end A007584

/-! ## A007584.P11403983476518917709

`∑[A389608(n)-1]`
-/

namespace A007584.P11403983476518917709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P11403983476518917709

namespace A007584

/-- `∑[A389608(n)-1]` -/
def P11403983476518917709.Spec : Prop :=
  ∀ n, P11403983476518917709.a n = A007584 n

end A007584

/-! ## A007584.P7093746776218993892

`∑[A139268(n)/2]`
-/

namespace A007584.P7093746776218993892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139268 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P7093746776218993892

namespace A007584

/-- `∑[A139268(n)/2]` -/
def P7093746776218993892.Spec : Prop :=
  ∀ n, P7093746776218993892.a n = (A007584 n : ℚ)

end A007584

/-! ## A007584.P7764995458102314523

`∑[A152759(n)/3]`
-/

namespace A007584.P7764995458102314523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152759 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P7764995458102314523

namespace A007584

/-- `∑[A152759(n)/3]` -/
def P7764995458102314523.Spec : Prop :=
  ∀ n, P7764995458102314523.a n = (A007584 n : ℚ)

end A007584

/-! ## A007584.P11675653126880287883

`∑[A152760(n)/4]`
-/

namespace A007584.P11675653126880287883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152760 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P11675653126880287883

namespace A007584

/-- `∑[A152760(n)/4]` -/
def P11675653126880287883.Spec : Prop :=
  ∀ n, P11675653126880287883.a n = (A007584 n : ℚ)

end A007584

/-! ## A007584.P11424948520115492285

`∑[A218471(n)-n]`
-/

namespace A007584.P11424948520115492285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007584.P11424948520115492285

namespace A007584

/-- `∑[A218471(n)-n]` -/
def P11424948520115492285.Spec : Prop :=
  ∀ n, P11424948520115492285.a n = A007584 n

end A007584

/-! ## A007584.P7245135181260018258

`A185788(n+1)-n`
-/

namespace A007584.P7245135181260018258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185788 (n + 1) - (n : ℤ)

end

end A007584.P7245135181260018258

namespace A007584

/-- `A185788(n+1)-n` -/
def P7245135181260018258.Spec : Prop :=
  ∀ n, P7245135181260018258.a n = A007584 n

end A007584

/-!
# A007585: 10-gonal (or decagonal) pyramidal numbers: a(n) = n*(n + 1)*(8*n - 5)/6.

The programs for A007585, the canonical program `A007585.P2735823859502521581` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007585 has offset 0).

The definition of A007585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(8*n-5)/6` (program `A007585.P3168451677321719123`, by `A007585.P3168451677321719123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007585.P11484315572355731487

`(8*n-5)*C(n+1, 2)/3`
-/

namespace A007585.P11484315572355731487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((8 * n : ℤ) - 5) * (Nat.choose (n + 1) 2 : ℤ) : ℚ) / 3

end

end A007585.P11484315572355731487

namespace A007585

/-- `(8*n-5)*C(n+1, 2)/3` -/
def P11484315572355731487.Spec : Prop :=
  ∀ n, P11484315572355731487.a n = (A007585 n : ℚ)

end A007585

/-! ## A007585.P17290386323499968677

`C(n+2, 3)+7*C(n+1, 3)`
-/

namespace A007585.P17290386323499968677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + 7 * Nat.choose (n + 1) 3

end

end A007585.P17290386323499968677

namespace A007585

/-- `C(n+2, 3)+7*C(n+1, 3)` -/
def P17290386323499968677.Spec : Prop :=
  ∀ n, (P17290386323499968677.a n : ℤ) = A007585 n

end A007585

/-! ## A007585.P3168451677321719123

`n*(n+1)*(8*n-5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007585.P3168451677321719123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((8 * n : ℤ) - 5) : ℚ) / 6

end

end A007585.P3168451677321719123

namespace A007585

/-- `n*(n+1)*(8*n-5)/6` -/
def P3168451677321719123.Spec : Prop :=
  ∀ n, P3168451677321719123.a n = (A007585 n : ℚ)

theorem P3168451677321719123.correct : P3168451677321719123.Spec := by
  intro n
  induction n with
  | zero => simp [A007585, A007585.P3168451677321719123.a, A007585.P2735823859502521581.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A007585, Nat.add_sub_cancel, A007585.P3168451677321719123.a, A007585.P2735823859502521581.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A007585

/-! ## A007585.P2735823859502521581

`a(n-1)+n*(4*n-3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007585

/-- `a(n-1)+n*(4*n-3)` -/
def P2735823859502521581.Spec : Prop :=
  ∀ n, P2735823859502521581.a n = A007585 n

theorem P2735823859502521581.correct : P2735823859502521581.Spec := by
  intro n
  simp only [A007585]

end A007585

/-! ## A007585.P11060064081220069229

`C(n, 2)+C(Δ[n²], 3)`
-/

namespace A007585.P11060064081220069229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3

end

end A007585.P11060064081220069229

namespace A007585

/-- `C(n, 2)+C(Δ[n²], 3)` -/
def P11060064081220069229.Spec : Prop :=
  ∀ n, (P11060064081220069229.a n : ℤ) = A007585 n

end A007585

/-! ## A007585.P16910485107799786781

`∑[8*C(n, 2)]+∑[n]`
-/

namespace A007585.P16910485107799786781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A007585.P16910485107799786781

namespace A007585

/-- `∑[8*C(n, 2)]+∑[n]` -/
def P16910485107799786781.Spec : Prop :=
  ∀ n, (P16910485107799786781.a n : ℤ) = A007585 n

end A007585

/-! ## A007585.P18370912139447723725

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=1`
-/

namespace A007585.P18370912139447723725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007585.P18370912139447723725

namespace A007585

/-- `∑[∑[a(n-1)+8]]` -/
def P18370912139447723725.Spec : Prop :=
  ∀ n, (P18370912139447723725.a n : ℤ) = A007585 n

end A007585

/-! ## A007585.P18214066313487622885

`∑[7-∑[a(n-1)-8]]` with `a(0)=7`
-/

namespace A007585.P18214066313487622885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007585.P18214066313487622885

namespace A007585

/-- `∑[7-∑[a(n-1)-8]]` -/
def P18214066313487622885.Spec : Prop :=
  ∀ n, P18214066313487622885.a n = A007585 n

end A007585

/-! ## A007585.P16496627521081853108

`floor(a(n-1)-n*(3-4*n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A007585.P16496627521081853108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℤ) * (3 - (4 * n : ℤ))

end

end A007585.P16496627521081853108

namespace A007585

/-- `floor(a(n-1)-n*(3-4*n))` -/
def P16496627521081853108.Spec : Prop :=
  ∀ n, P16496627521081853108.a n = A007585 n

theorem P16496627521081853108.correct : P16496627521081853108.Spec := by
  intro n
  simp only [A007585, Nat.add_sub_cancel, A007585.P16496627521081853108.a, A007585.P2735823859502521581.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007585

/-! ## A007585.P1326667451363710592

`(2*n)²-(2*n-(a(n-1)-n))` with `a(0)=0`
-/

namespace A007585.P1326667451363710592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2 : ℤ) - ((2 * n : ℤ) - (a (n - 1) - (n : ℤ)))

end

end A007585.P1326667451363710592

namespace A007585

/-- `(2*n)²-(2*n-(a(n-1)-n))` -/
def P1326667451363710592.Spec : Prop :=
  ∀ n, P1326667451363710592.a n = A007585 n

end A007585

/-! ## A007585.P4664501819687324934

`∑[A001107(n)]`
-/

namespace A007585.P4664501819687324934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007585.P4664501819687324934

namespace A007585

/-- `∑[A001107(n)]` -/
def P4664501819687324934.Spec : Prop :=
  ∀ n, P4664501819687324934.a n = A007585 n

end A007585

/-! ## A007585.P1245143296931077704

`∑[A054552(n)-1]`
-/

namespace A007585.P1245143296931077704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007585.P1245143296931077704

namespace A007585

/-- `∑[A054552(n)-1]` -/
def P1245143296931077704.Spec : Prop :=
  ∀ n, P1245143296931077704.a n = A007585 n

end A007585

/-! ## A007585.P2723632013266734031

`∑[A139271(n)/2]`
-/

namespace A007585.P2723632013266734031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139271 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007585.P2723632013266734031

namespace A007585

/-- `∑[A139271(n)/2]` -/
def P2723632013266734031.Spec : Prop :=
  ∀ n, P2723632013266734031.a n = (A007585 n : ℚ)

end A007585

/-! ## A007585.P7342379884902460195

`∑[A152767(n)/3]`
-/

namespace A007585.P7342379884902460195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152767 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007585.P7342379884902460195

namespace A007585

/-- `∑[A152767(n)/3]` -/
def P7342379884902460195.Spec : Prop :=
  ∀ n, P7342379884902460195.a n = (A007585 n : ℚ)

end A007585

/-! ## A007585.P1992460809755157003

`∑[A002939(n)-n]`
-/

namespace A007585.P1992460809755157003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007585.P1992460809755157003

namespace A007585

/-- `∑[A002939(n)-n]` -/
def P1992460809755157003.Spec : Prop :=
  ∀ n, P1992460809755157003.a n = A007585 n

end A007585

/-! ## A007585.P14026380982423443039

`A268684(n)-∑[n]`
-/

namespace A007585.P14026380982423443039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A007585.P14026380982423443039

namespace A007585

/-- `A268684(n)-∑[n]` -/
def P14026380982423443039.Spec : Prop :=
  ∀ n, P14026380982423443039.a n = A007585 n

end A007585

/-! ## A007585.P16644374003201614315

`A051925(n)+n^3`
-/

namespace A007585.P16644374003201614315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n + (n ^ 3 : ℤ)

end

end A007585.P16644374003201614315

namespace A007585

/-- `A051925(n)+n^3` -/
def P16644374003201614315.Spec : Prop :=
  ∀ n, P16644374003201614315.a n = A007585 n

end A007585

/-! ## A007585.P815931474628994744

`A000447(n)+C(n, 2)`
-/

namespace A007585.P815931474628994744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + (Nat.choose n 2 : ℤ)

end

end A007585.P815931474628994744

namespace A007585

/-- `A000447(n)+C(n, 2)` -/
def P815931474628994744.Spec : Prop :=
  ∀ n, P815931474628994744.a n = A007585 n

end A007585

/-! ## A007585.P18149701449030895452

`∑[A135706(n)-n²]`
-/

namespace A007585.P18149701449030895452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007585.P18149701449030895452

namespace A007585

/-- `∑[A135706(n)-n²]` -/
def P18149701449030895452.Spec : Prop :=
  ∀ n, P18149701449030895452.a n = A007585 n

end A007585

/-! ## A007585.P9756087954608177611

`A132124(n)-(n²+n)`
-/

namespace A007585.P9756087954608177611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n - (n ^ 2 + n : ℤ)

end

end A007585.P9756087954608177611

namespace A007585

/-- `A132124(n)-(n²+n)` -/
def P9756087954608177611.Spec : Prop :=
  ∀ n, P9756087954608177611.a n = A007585 n

end A007585

/-!
# A007586: 11-gonal (or hendecagonal) pyramidal numbers: a(n) = n*(n+1)*(3*n-2)/2.

The programs for A007586, the canonical program `A007586.P12384902928216137703` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007586 has offset 0).

The definition of A007586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(3*n-2)/2` (program `A007586.P13846817365448932907`, by `A007586.P13846817365448932907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007586.P13846817365448932907

`n*(n+1)*(3*n-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007586.P13846817365448932907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((3 * n : ℤ) - 2) : ℚ) / 2

end

end A007586.P13846817365448932907

namespace A007586

/-- `n*(n+1)*(3*n-2)/2` -/
def P13846817365448932907.Spec : Prop :=
  ∀ n, P13846817365448932907.a n = (A007586 n : ℚ)

theorem P13846817365448932907.correct : P13846817365448932907.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A007586, Nat.add_sub_cancel, A007586.P13846817365448932907.a, A007586.P12384902928216137703.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A007586, Nat.add_sub_cancel, A007586.P13846817365448932907.a, A007586.P12384902928216137703.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007586

/-! ## A007586.P12384902928216137703

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=42`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007586

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12384902928216137703.Spec : Prop :=
  ∀ n, P12384902928216137703.a n = A007586 n

theorem P12384902928216137703.correct : P12384902928216137703.Spec := by
  intro n
  simp only [A007586]

end A007586

/-! ## A007586.P7567272129239917143

`∑[9*C(n, 2)+n]`
-/

namespace A007586.P7567272129239917143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P7567272129239917143

namespace A007586

/-- `∑[9*C(n, 2)+n]` -/
def P7567272129239917143.Spec : Prop :=
  ∀ n, (P7567272129239917143.a n : ℤ) = A007586 n

end A007586

/-! ## A007586.P3751081098247608467

`∑[∑[a(n-1)+9]]` with `a(0)=0, a(1)=1`
-/

namespace A007586.P3751081098247608467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P3751081098247608467

namespace A007586

/-- `∑[∑[a(n-1)+9]]` -/
def P3751081098247608467.Spec : Prop :=
  ∀ n, (P3751081098247608467.a n : ℤ) = A007586 n

end A007586

/-! ## A007586.P7573838501629594602

`∑[∑[ogf((x+8x^2)/(1-2x+x^2))]]`
-/

namespace A007586.P7573838501629594602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P7573838501629594602

namespace A007586

/-- `∑[∑[ogf((x+8x^2)/(1-2x+x^2))]]` -/
def P7573838501629594602.Spec : Prop :=
  ∀ n, P7573838501629594602.a n = A007586 n

end A007586

/-! ## A007586.P14449264640818596707

`∑[8-∑[a(n-1)-9]]` with `a(0)=8`
-/

namespace A007586.P14449264640818596707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P14449264640818596707

namespace A007586

/-- `∑[8-∑[a(n-1)-9]]` -/
def P14449264640818596707.Spec : Prop :=
  ∀ n, P14449264640818596707.a n = A007586 n

end A007586

/-! ## A007586.P7418584107105675306

`(3*n+4)*C(n, 2)+n`
-/

namespace A007586.P7418584107105675306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 4) * Nat.choose n 2 + n

end

end A007586.P7418584107105675306

namespace A007586

/-- `(3*n+4)*C(n, 2)+n` -/
def P7418584107105675306.Spec : Prop :=
  ∀ n, (P7418584107105675306.a n : ℤ) = A007586 n

end A007586

/-! ## A007586.P1646793935696981490

`∑[A051682(n)]`
-/

namespace A007586.P1646793935696981490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P1646793935696981490

namespace A007586

/-- `∑[A051682(n)]` -/
def P1646793935696981490.Spec : Prop :=
  ∀ n, P1646793935696981490.a n = A007586 n

end A007586

/-! ## A007586.P6298301058707101257

`∑[A117625(n)-1]`
-/

namespace A007586.P6298301058707101257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P6298301058707101257

namespace A007586

/-- `∑[A117625(n)-1]` -/
def P6298301058707101257.Spec : Prop :=
  ∀ n, P6298301058707101257.a n = A007586 n

end A007586

/-! ## A007586.P435397564670144293

`∑[A152995(n)/2]`
-/

namespace A007586.P435397564670144293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152995 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P435397564670144293

namespace A007586

/-- `∑[A152995(n)/2]` -/
def P435397564670144293.Spec : Prop :=
  ∀ n, P435397564670144293.a n = (A007586 n : ℚ)

end A007586

/-! ## A007586.P4174578048453783989

`∑[A153783(n)/3]`
-/

namespace A007586.P4174578048453783989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153783 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P4174578048453783989

namespace A007586

/-- `∑[A153783(n)/3]` -/
def P4174578048453783989.Spec : Prop :=
  ∀ n, P4174578048453783989.a n = (A007586 n : ℚ)

end A007586

/-! ## A007586.P7298299495283309375

`∑[A062708(n)-n]`
-/

namespace A007586.P7298299495283309375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P7298299495283309375

namespace A007586

/-- `∑[A062708(n)-n]` -/
def P7298299495283309375.Spec : Prop :=
  ∀ n, P7298299495283309375.a n = A007586 n

end A007586

/-! ## A007586.P15590970592023970327

`n*(A005449(n)-1)`
-/

namespace A007586.P15590970592023970327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005449 n - 1)

end

end A007586.P15590970592023970327

namespace A007586

/-- `n*(A005449(n)-1)` -/
def P15590970592023970327.Spec : Prop :=
  ∀ n, P15590970592023970327.a n = A007586 n

end A007586

/-! ## A007586.P12390230572055784258

`A083127(n)/2+n`
-/

namespace A007586.P12390230572055784258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083127 n : ℚ) / 2 + (n : ℚ)

end

end A007586.P12390230572055784258

namespace A007586

/-- `A083127(n)/2+n` -/
def P12390230572055784258.Spec : Prop :=
  ∀ n, P12390230572055784258.a n = (A007586 n : ℚ)

theorem P12390230572055784258.correct : P12390230572055784258.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A007586, Nat.add_sub_cancel, A007586.P12390230572055784258.a, A007586.P12384902928216137703.a, A083127, A083127.P13350646007919024394.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A007586, Nat.add_sub_cancel, A007586.P12390230572055784258.a, A007586.P12384902928216137703.a, A083127, A083127.P13350646007919024394.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A007586

/-! ## A007586.P4063763499128434971

`n*(A104249(n)-2)`
-/

namespace A007586.P4063763499128434971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A104249 n - 2)

end

end A007586.P4063763499128434971

namespace A007586

/-- `n*(A104249(n)-2)` -/
def P4063763499128434971.Spec : Prop :=
  ∀ n, P4063763499128434971.a n = A007586 n

end A007586

/-! ## A007586.P17074145852924729206

`A294315(n)/2-n`
-/

namespace A007586.P17074145852924729206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294315 n : ℚ) / 2 - (n : ℚ)

end

end A007586.P17074145852924729206

namespace A007586

/-- `A294315(n)/2-n` -/
def P17074145852924729206.Spec : Prop :=
  ∀ n, P17074145852924729206.a n = (A007586 n : ℚ)

theorem P17074145852924729206.correct : P17074145852924729206.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A007586, Nat.add_sub_cancel, A007586.P17074145852924729206.a, A007586.P12384902928216137703.a, A294315, A294315.P3866111110080714343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A007586, Nat.add_sub_cancel, A007586.P17074145852924729206.a, A007586.P12384902928216137703.a, A294315, A294315.P3866111110080714343.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A007586

/-! ## A007586.P13441240929250992253

`abs(∑[n]*A112335(n))`
-/

namespace A007586.P13441240929250992253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A112335 n|

end

end A007586.P13441240929250992253

namespace A007586

/-- `abs(∑[n]*A112335(n))` -/
def P13441240929250992253.Spec : Prop :=
  ∀ n, P13441240929250992253.a n = A007586 n

end A007586

/-! ## A007586.P9848718554860416008

`∑[A180223(n)-n²]`
-/

namespace A007586.P9848718554860416008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P9848718554860416008

namespace A007586

/-- `∑[A180223(n)-n²]` -/
def P9848718554860416008.Spec : Prop :=
  ∀ n, P9848718554860416008.a n = A007586 n

end A007586

/-! ## A007586.P13070188572099287279

`∑[A135706(n)-∑[n]]`
-/

namespace A007586.P13070188572099287279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P13070188572099287279

namespace A007586

/-- `∑[A135706(n)-∑[n]]` -/
def P13070188572099287279.Spec : Prop :=
  ∀ n, P13070188572099287279.a n = A007586 n

end A007586

/-! ## A007586.P1347419493449984492

`∑[A140064(n)-(n+1)]`
-/

namespace A007586.P1347419493449984492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007586.P1347419493449984492

namespace A007586

/-- `∑[A140064(n)-(n+1)]` -/
def P1347419493449984492.Spec : Prop :=
  ∀ n, P1347419493449984492.a n = A007586 n

end A007586

/-!
# A007587: 12-gonal (or dodecagonal) pyramidal numbers: a(n) = n*(n+1)*(10*n-7)/6.

The programs for A007587, the canonical program `A007587.P15660605891021761356` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007587 has offset 0).

The definition of A007587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(10*n-7)/6` (program `A007587.P11614431624068428319`, by `A007587.P11614431624068428319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007587.P4181675695979670200

`(10*n-7)*C(n+1, 2)/3`
-/

namespace A007587.P4181675695979670200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((10 * n : ℤ) - 7) * (Nat.choose (n + 1) 2 : ℤ) : ℚ) / 3

end

end A007587.P4181675695979670200

namespace A007587

/-- `(10*n-7)*C(n+1, 2)/3` -/
def P4181675695979670200.Spec : Prop :=
  ∀ n, P4181675695979670200.a n = (A007587 n : ℚ)

end A007587

/-! ## A007587.P11614431624068428319

`n*(n+1)*(10*n-7)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007587.P11614431624068428319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((10 * n : ℤ) - 7) : ℚ) / 6

end

end A007587.P11614431624068428319

namespace A007587

/-- `n*(n+1)*(10*n-7)/6` -/
def P11614431624068428319.Spec : Prop :=
  ∀ n, P11614431624068428319.a n = (A007587 n : ℚ)

theorem P11614431624068428319.correct : P11614431624068428319.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A007587, Nat.add_sub_cancel, A007587.P11614431624068428319.a, A007587.P15660605891021761356.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A007587, Nat.add_sub_cancel, A007587.P11614431624068428319.a, A007587.P15660605891021761356.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007587

/-! ## A007587.P15660605891021761356

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=46`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007587

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15660605891021761356.Spec : Prop :=
  ∀ n, P15660605891021761356.a n = A007587 n

theorem P15660605891021761356.correct : P15660605891021761356.Spec := by
  intro n
  simp only [A007587]

end A007587

/-! ## A007587.P14462043738918933806

`∑[10*C(n, 2)]+∑[n]`
-/

namespace A007587.P14462043738918933806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A007587.P14462043738918933806

namespace A007587

/-- `∑[10*C(n, 2)]+∑[n]` -/
def P14462043738918933806.Spec : Prop :=
  ∀ n, (P14462043738918933806.a n : ℤ) = A007587 n

end A007587

/-! ## A007587.P14058602632975779093

`a(n-1)+n*(5*n-4)` with `a(0)=0`
-/

namespace A007587.P14058602632975779093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((5 * n : ℤ) - 4)

end

end A007587.P14058602632975779093

namespace A007587

/-- `a(n-1)+n*(5*n-4)` -/
def P14058602632975779093.Spec : Prop :=
  ∀ n, P14058602632975779093.a n = A007587 n

end A007587

/-! ## A007587.P10818460723606531056

`∑[A051624(n)]`
-/

namespace A007587.P10818460723606531056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007587.P10818460723606531056

namespace A007587

/-- `∑[A051624(n)]` -/
def P10818460723606531056.Spec : Prop :=
  ∀ n, P10818460723606531056.a n = A007587 n

end A007587

/-! ## A007587.P5895653290339442776

`∑[A190816(n)-1]`
-/

namespace A007587.P5895653290339442776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007587.P5895653290339442776

namespace A007587

/-- `∑[A190816(n)-1]` -/
def P5895653290339442776.Spec : Prop :=
  ∀ n, P5895653290339442776.a n = A007587 n

end A007587

/-! ## A007587.P16274390594544056356

`∑[A152965(n)/2]`
-/

namespace A007587.P16274390594544056356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152965 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007587.P16274390594544056356

namespace A007587

/-- `∑[A152965(n)/2]` -/
def P16274390594544056356.Spec : Prop :=
  ∀ n, P16274390594544056356.a n = (A007587 n : ℚ)

end A007587

/-! ## A007587.P7765321036295713944

`∑[A153448(n)/3]`
-/

namespace A007587.P7765321036295713944
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153448 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007587.P7765321036295713944

namespace A007587

/-- `∑[A153448(n)/3]` -/
def P7765321036295713944.Spec : Prop :=
  ∀ n, P7765321036295713944.a n = (A007587 n : ℚ)

end A007587

/-! ## A007587.P5208245897733669641

`∑[A135706(n)-n]`
-/

namespace A007587.P5208245897733669641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007587.P5208245897733669641

namespace A007587

/-- `∑[A135706(n)-n]` -/
def P5208245897733669641.Spec : Prop :=
  ∀ n, P5208245897733669641.a n = A007587 n

end A007587

/-! ## A007587.P11993510273887263501

`A004466(n)+C(n, 2)`
-/

namespace A007587.P11993510273887263501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n + (Nat.choose n 2 : ℤ)

end

end A007587.P11993510273887263501

namespace A007587

/-- `A004466(n)+C(n, 2)` -/
def P11993510273887263501.Spec : Prop :=
  ∀ n, P11993510273887263501.a n = A007587 n

end A007587

/-! ## A007587.P249966641429993176

`∑[A139267(n)-n²]`
-/

namespace A007587.P249966641429993176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007587.P249966641429993176

namespace A007587

/-- `∑[A139267(n)-n²]` -/
def P249966641429993176.Spec : Prop :=
  ∀ n, P249966641429993176.a n = A007587 n

end A007587

/-! ## A007587.P1761399814146149230

`2*A002413(n)-∑[n]`
-/

namespace A007587.P1761399814146149230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002413 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A007587.P1761399814146149230

namespace A007587

/-- `2*A002413(n)-∑[n]` -/
def P1761399814146149230.Spec : Prop :=
  ∀ n, P1761399814146149230.a n = A007587 n

end A007587

/-! ## A007587.P8342728566873529329

`A035005(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A007587.P8342728566873529329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A035005 n - a (n - 1) + (n : ℤ)

end

end A007587.P8342728566873529329

namespace A007587

/-- `A035005(n)-a(n-1)+n` -/
def P8342728566873529329.Spec : Prop :=
  ∀ n, P8342728566873529329.a n = A007587 n

end A007587

/-! ## A007587.P9367904963106957011

`∑[A145995(n+1)]-(n+1)²`
-/

namespace A007587.P9367904963106957011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A007587.P9367904963106957011

namespace A007587

/-- `∑[A145995(n+1)]-(n+1)²` -/
def P9367904963106957011.Spec : Prop :=
  ∀ n, P9367904963106957011.a n = A007587 n

end A007587

/-! ## A007587.P13708688558015365435

`A005581(n)+A004188(n)`
-/

namespace A007587.P13708688558015365435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n + A004188 n

end

end A007587.P13708688558015365435

namespace A007587

/-- `A005581(n)+A004188(n)` -/
def P13708688558015365435.Spec : Prop :=
  ∀ n, P13708688558015365435.a n = A007587 n

end A007587

/-! ## A007587.P2867134848185784540

`A051925(n)+A000447(n)`
-/

namespace A007587.P2867134848185784540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n + A000447 n

end

end A007587.P2867134848185784540

namespace A007587

/-- `A051925(n)+A000447(n)` -/
def P2867134848185784540.Spec : Prop :=
  ∀ n, P2867134848185784540.a n = A007587 n

end A007587

/-! ## A007587.P1564810143766140476

`A135503(n)+A007584(n)`
-/

namespace A007587.P1564810143766140476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A007584 n

end

end A007587.P1564810143766140476

namespace A007587

/-- `A135503(n)+A007584(n)` -/
def P1564810143766140476.Spec : Prop :=
  ∀ n, P1564810143766140476.a n = A007587 n

end A007587

/-! ## A007587.P1455724360552884263

`A161680(n)+A004466(n)`
-/

namespace A007587.P1455724360552884263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A004466 n

end

end A007587.P1455724360552884263

namespace A007587

/-- `A161680(n)+A004466(n)` -/
def P1455724360552884263.Spec : Prop :=
  ∀ n, P1455724360552884263.a n = A007587 n

end A007587

/-! ## A007587.P6797254625841606996

`A341768(n)+A101165(n)`
-/

namespace A007587.P6797254625841606996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341768 n + A101165 n

end

end A007587.P6797254625841606996

namespace A007587

/-- `A341768(n)+A101165(n)` -/
def P6797254625841606996.Spec : Prop :=
  ∀ n, P6797254625841606996.a n = A007587 n

end A007587

/-!
# A007588: Stella octangula numbers: a(n) = n*(2*n^2 - 1).

The programs for A007588, the canonical program `A007588.P13302891266756921093` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007588 has offset 0).

The definition of A007588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²-1)` (program `A007588.P13302891266756921093`, by `A007588.P13302891266756921093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007588.P13302891266756921093

`n*(2*n²-1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007588

/-- `n*(2*n²-1)` -/
def P13302891266756921093.Spec : Prop :=
  ∀ n, P13302891266756921093.a n = A007588 n

theorem P13302891266756921093.correct : P13302891266756921093.Spec := by
  intro n
  simp only [A007588]

end A007588

/-! ## A007588.P1920172703717806554

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=51`
-/

namespace A007588.P1920172703717806554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 14, 51] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A007588.P1920172703717806554

namespace A007588

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1920172703717806554.Spec : Prop :=
  ∀ n, P1920172703717806554.a n = A007588 n

theorem P1920172703717806554.correct : P1920172703717806554.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A007588, Nat.add_sub_cancel, A007588.P1920172703717806554.a, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A007588, Nat.add_sub_cancel, A007588.P1920172703717806554.a, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007588

/-! ## A007588.P13845925670079124290

`A004188(n)+A135503(n)`
-/

namespace A007588.P13845925670079124290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n + A135503 n

end

end A007588.P13845925670079124290

namespace A007588

/-- `A004188(n)+A135503(n)` -/
def P13845925670079124290.Spec : Prop :=
  ∀ n, P13845925670079124290.a n = A007588 n

end A007588

/-! ## A007588.P9684066113714179008

`A061317(n)-A005843(n)`
-/

namespace A007588.P9684066113714179008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 n - A005843 n

end

end A007588.P9684066113714179008

namespace A007588

/-- `A061317(n)-A005843(n)` -/
def P9684066113714179008.Spec : Prop :=
  ∀ n, P9684066113714179008.a n = A007588 n

theorem P9684066113714179008.correct : P9684066113714179008.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P9684066113714179008.a, A007588.P13302891266756921093.a, A005843, A005843.P3167286115683555970.a, A061317, A061317.P8488168899613189018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P13086189894574432103

`Δ[C(n²-n, 2)]`
-/

namespace A007588.P13086189894574432103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A007588.P13086189894574432103

namespace A007588

/-- `Δ[C(n²-n, 2)]` -/
def P13086189894574432103.Spec : Prop :=
  ∀ n, P13086189894574432103.a n = A007588 n

end A007588

/-! ## A007588.P6610403435101826797

`-Δ[-C(n*(n-1), 2)]`
-/

namespace A007588.P6610403435101826797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose ((n : ℤ) * ((n : ℤ) - 1)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A007588.P6610403435101826797

namespace A007588

/-- `-Δ[-C(n*(n-1), 2)]` -/
def P6610403435101826797.Spec : Prop :=
  ∀ n, P6610403435101826797.a n = A007588 n

end A007588

/-! ## A007588.P5706732157974980389

`Δ[(1-n)^4-a(n-1)]` with `a(0)=0`
-/

namespace A007588.P5706732157974980389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - (n : ℤ)) ^ 4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007588.P5706732157974980389

namespace A007588

/-- `Δ[(1-n)^4-a(n-1)]` -/
def P5706732157974980389.Spec : Prop :=
  ∀ n, P5706732157974980389.a n = A007588 n

end A007588

/-! ## A007588.P4037255506365825888

`Δ[floor((1-n)²²-a(n-1))]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A007588.P4037255506365825888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007588.P4037255506365825888

namespace A007588

/-- `Δ[floor((1-n)²²-a(n-1))]` -/
def P4037255506365825888.Spec : Prop :=
  ∀ n, P4037255506365825888.a n = A007588 n

end A007588

/-! ## A007588.P18226663557502392737

`Δ[(1-n)²²+2-a(n-1)]` with `a(0)=1`
-/

namespace A007588.P18226663557502392737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 + (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007588.P18226663557502392737

namespace A007588

/-- `Δ[(1-n)²²+2-a(n-1)]` -/
def P18226663557502392737.Spec : Prop :=
  ∀ n, P18226663557502392737.a n = A007588 n

end A007588

/-! ## A007588.P10108686754289177426

`Δ[(1-n)²²-(a(n-1)-2)]` with `a(0)=1`
-/

namespace A007588.P10108686754289177426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 - (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007588.P10108686754289177426

namespace A007588

/-- `Δ[(1-n)²²-(a(n-1)-2)]` -/
def P10108686754289177426.Spec : Prop :=
  ∀ n, P10108686754289177426.a n = A007588 n

end A007588

/-! ## A007588.P10160884617905594595

`sqrt(A277792(n))`
-/

namespace A007588.P10160884617905594595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277792 n : ℝ)

end

end A007588.P10160884617905594595

namespace A007588

/-- `sqrt(A277792(n))` -/
def P10160884617905594595.Spec : Prop :=
  ∀ n, P10160884617905594595.a n = (A007588 n : ℝ)

end A007588

/-! ## A007588.P7637249994927777971

`A144138(n)/4`
-/

namespace A007588.P7637249994927777971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144138 n : ℚ) / 4

end

end A007588.P7637249994927777971

namespace A007588

/-- `A144138(n)/4` -/
def P7637249994927777971.Spec : Prop :=
  ∀ n, P7637249994927777971.a n = (A007588 n : ℚ)

theorem P7637249994927777971.correct : P7637249994927777971.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P7637249994927777971.a, A007588.P13302891266756921093.a, A144138, A144138.P7220908367457548337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P8808278276506812036

`A033431(n)-n`
-/

namespace A007588.P8808278276506812036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - (n : ℤ)

end

end A007588.P8808278276506812036

namespace A007588

/-- `A033431(n)-n` -/
def P8808278276506812036.Spec : Prop :=
  ∀ n, P8808278276506812036.a n = A007588 n

theorem P8808278276506812036.correct : P8808278276506812036.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P8808278276506812036.a, A007588.P13302891266756921093.a, A033431, A033431.P14261726496554658204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P10829733550025335537

`A033562(n)-(n+1)`
-/

namespace A007588.P10829733550025335537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n - (n + 1 : ℤ)

end

end A007588.P10829733550025335537

namespace A007588

/-- `A033562(n)-(n+1)` -/
def P10829733550025335537.Spec : Prop :=
  ∀ n, P10829733550025335537.a n = A007588 n

theorem P10829733550025335537.correct : P10829733550025335537.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P10829733550025335537.a, A007588.P13302891266756921093.a, A033562, A033562.P8318221385347379331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P1868980451535422840

`2*A000578(n)-n`
-/

namespace A007588.P1868980451535422840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000578 n - (n : ℤ)

end

end A007588.P1868980451535422840

namespace A007588

/-- `2*A000578(n)-n` -/
def P1868980451535422840.Spec : Prop :=
  ∀ n, P1868980451535422840.a n = A007588 n

theorem P1868980451535422840.correct : P1868980451535422840.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P1868980451535422840.a, A007588.P13302891266756921093.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P10773590813494199273

`(A144129(n)+n)/2`
-/

namespace A007588.P10773590813494199273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144129 n + (n : ℤ) : ℚ) / 2

end

end A007588.P10773590813494199273

namespace A007588

/-- `(A144129(n)+n)/2` -/
def P10773590813494199273.Spec : Prop :=
  ∀ n, P10773590813494199273.a n = (A007588 n : ℚ)

theorem P10773590813494199273.correct : P10773590813494199273.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P10773590813494199273.a, A007588.P13302891266756921093.a, A144129, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P6597338617349105852

`A272871(n)/2+n`
-/

namespace A007588.P6597338617349105852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272871 n : ℚ) / 2 + (n : ℚ)

end

end A007588.P6597338617349105852

namespace A007588

/-- `A272871(n)/2+n` -/
def P6597338617349105852.Spec : Prop :=
  ∀ n, P6597338617349105852.a n = (A007588 n : ℚ)

theorem P6597338617349105852.correct : P6597338617349105852.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P6597338617349105852.a, A007588.P13302891266756921093.a, A272871, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P16756029088939751470

`A033430(n)/2-n`
-/

namespace A007588.P16756029088939751470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033430 n : ℚ) / 2 - (n : ℚ)

end

end A007588.P16756029088939751470

namespace A007588

/-- `A033430(n)/2-n` -/
def P16756029088939751470.Spec : Prop :=
  ∀ n, P16756029088939751470.a n = (A007588 n : ℚ)

theorem P16756029088939751470.correct : P16756029088939751470.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P16756029088939751470.a, A007588.P13302891266756921093.a, A033430, A033430.P5214425656551841819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P4349738662770498222

`A049450(n)+A015238(n)`
-/

namespace A007588.P4349738662770498222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + A015238 n

end

end A007588.P4349738662770498222

namespace A007588

/-- `A049450(n)+A015238(n)` -/
def P4349738662770498222.Spec : Prop :=
  ∀ n, P4349738662770498222.a n = A007588 n

theorem P4349738662770498222.correct : P4349738662770498222.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P4349738662770498222.a, A007588.P13302891266756921093.a, A015238, A015238.P18123639342462093912.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-! ## A007588.P1068520349390497380

`A085490(n)+A045991(n)`
-/

namespace A007588.P1068520349390497380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 n + A045991 n

end

end A007588.P1068520349390497380

namespace A007588

/-- `A085490(n)+A045991(n)` -/
def P1068520349390497380.Spec : Prop :=
  ∀ n, P1068520349390497380.a n = A007588 n

theorem P1068520349390497380.correct : P1068520349390497380.Spec := by
  intro n
  simp only [A007588, Nat.add_sub_cancel, A007588.P1068520349390497380.a, A007588.P13302891266756921093.a, A045991, A045991.P16915764248010155243.a, A085490, A085490.P10919642999791457831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007588

/-!
# A007589: Dodecahedral surface numbers: a(0)=0, a(1)=1, a(2)=20, thereafter 2*((3*n-7)^2 + 21).

The programs for A007589, the canonical program `A007589.P1550727732646614464` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007589 has offset 0).

The definition of A007589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007589.P1550727732646614464

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=20, a(3)=50, a(4)=92, a(5)=170`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007589

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1550727732646614464.Spec : Prop :=
  ∀ n, P1550727732646614464.a n = A007589 n

theorem P1550727732646614464.correct : P1550727732646614464.Spec := by
  intro n
  simp only [A007589]

end A007589

/-! ## A007589.P3012370777567969679

`A000407(a(n-1))` with `a(0)=0, a(1)=1, a(2)=20, a(3)=50, a(4)=92, a(5)=170`
-/

namespace A007589.P3012370777567969679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 20, 50, 92, 170] fun n a =>
  A000407 (a (n - 1)).toNat

end

end A007589.P3012370777567969679

namespace A007589

/-- `A000407(a(n-1))` -/
def P3012370777567969679.Spec : Prop :=
  ∀ n, P3012370777567969679.a n = A007589 n

end A007589

/-!
# A007590: a(n) = floor(n^2/2).

The programs for A007590, the canonical program `A007590.P9530274664467440414` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007590 has offset 0).

The definition of A007590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/2)` (program `A007590.P9530274664467440414`, by `A007590.P9530274664467440414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007590.P9530274664467440414

`floor(n²/2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007590

/-- `floor(n²/2)` -/
def P9530274664467440414.Spec : Prop :=
  ∀ n, P9530274664467440414.a n = A007590 n

theorem P9530274664467440414.correct : P9530274664467440414.Spec := by
  intro n
  simp only [A007590]

end A007590

/-! ## A007590.P9953143362355540257

`C(n, 2)+floor(n/2)`
-/

namespace A007590.P9953143362355540257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) + ⌊(n : ℚ) / 2⌋

end

end A007590.P9953143362355540257

namespace A007590

/-- `C(n, 2)+floor(n/2)` -/
def P9953143362355540257.Spec : Prop :=
  ∀ n, P9953143362355540257.a n = A007590 n

end A007590

/-! ## A007590.P12670485400904638565

`a(n-1)+a(n-2)-a(n-3)+2` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A007590.P12670485400904638565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + 2

end

end A007590.P12670485400904638565

namespace A007590

/-- `a(n-1)+a(n-2)-a(n-3)+2` -/
def P12670485400904638565.Spec : Prop :=
  ∀ n, P12670485400904638565.a n = A007590 n

end A007590

/-! ## A007590.P17672352743667108125

`2*A002620(n)`
-/

namespace A007590.P17672352743667108125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002620 n

end

end A007590.P17672352743667108125

namespace A007590

/-- `2*A002620(n)` -/
def P17672352743667108125.Spec : Prop :=
  ∀ n, P17672352743667108125.a n = A007590 n

end A007590

/-! ## A007590.P13692089855647752313

`A099392(n+1)-1`
-/

namespace A007590.P13692089855647752313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1) - 1

end

end A007590.P13692089855647752313

namespace A007590

/-- `A099392(n+1)-1` -/
def P13692089855647752313.Spec : Prop :=
  ∀ n, P13692089855647752313.a n = A007590 n

end A007590

/-! ## A007590.P17653505003301705473

`∑[and(n, -2)]`
-/

namespace A007590.P17653505003301705473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007590.P17653505003301705473

namespace A007590

/-- `∑[and(n, -2)]` -/
def P17653505003301705473.Spec : Prop :=
  ∀ n, P17653505003301705473.a n = A007590 n

end A007590

/-! ## A007590.P1243849261012462825

`∑[or(1, n)-1]`
-/

namespace A007590.P1243849261012462825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007590.P1243849261012462825

namespace A007590

/-- `∑[or(1, n)-1]` -/
def P1243849261012462825.Spec : Prop :=
  ∀ n, P1243849261012462825.a n = A007590 n

end A007590

/-! ## A007590.P8573462984566892458

`∑[xor(1, or(1, n))]`
-/

namespace A007590.P8573462984566892458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007590.P8573462984566892458

namespace A007590

/-- `∑[xor(1, or(1, n))]` -/
def P8573462984566892458.Spec : Prop :=
  ∀ n, (P8573462984566892458.a n : ℤ) = A007590 n

end A007590

/-! ## A007590.P14393402707267290902

`∑[n-n%2]`
-/

namespace A007590.P14393402707267290902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007590.P14393402707267290902

namespace A007590

/-- `∑[n-n%2]` -/
def P14393402707267290902.Spec : Prop :=
  ∀ n, P14393402707267290902.a n = A007590 n

end A007590

/-! ## A007590.P15088166901476583874

`and(-2, n²)/2`
-/

namespace A007590.P15088166901476583874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (n ^ 2 : ℤ) : ℚ) / 2

end

end A007590.P15088166901476583874

namespace A007590

/-- `and(-2, n²)/2` -/
def P15088166901476583874.Spec : Prop :=
  ∀ n, P15088166901476583874.a n = (A007590 n : ℚ)

end A007590

/-! ## A007590.P18285762320760868864

`∑[-n%2+n]`
-/

namespace A007590.P18285762320760868864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007590.P18285762320760868864

namespace A007590

/-- `∑[-n%2+n]` -/
def P18285762320760868864.Spec : Prop :=
  ∀ n, P18285762320760868864.a n = A007590 n

end A007590

/-! ## A007590.P5598433284083690458

`∑[xor(n, n²%2)]`
-/

namespace A007590.P5598433284083690458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007590.P5598433284083690458

namespace A007590

/-- `∑[xor(n, n²%2)]` -/
def P5598433284083690458.Spec : Prop :=
  ∀ n, (P5598433284083690458.a n : ℤ) = A007590 n

end A007590

/-! ## A007590.P14413784916073749626

`(or(1, n²)-1)/2`
-/

namespace A007590.P14413784916073749626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n ^ 2) : ℤ) - 1 : ℚ) / 2

end

end A007590.P14413784916073749626

namespace A007590

/-- `(or(1, n²)-1)/2` -/
def P14413784916073749626.Spec : Prop :=
  ∀ n, P14413784916073749626.a n = (A007590 n : ℚ)

end A007590

/-! ## A007590.P12873950998059731798

`xor(1, or(1, n²))/2`
-/

namespace A007590.P12873950998059731798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.lor 1 (n ^ 2)) : ℚ) / 2

end

end A007590.P12873950998059731798

namespace A007590

/-- `xor(1, or(1, n²))/2` -/
def P12873950998059731798.Spec : Prop :=
  ∀ n, P12873950998059731798.a n = (A007590 n : ℚ)

end A007590

/-! ## A007590.P9261619397785859602

`(n²-and(1, n))/2`
-/

namespace A007590.P9261619397785859602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (Nat.land 1 n : ℤ) : ℚ) / 2

end

end A007590.P9261619397785859602

namespace A007590

/-- `(n²-and(1, n))/2` -/
def P9261619397785859602.Spec : Prop :=
  ∀ n, P9261619397785859602.a n = (A007590 n : ℚ)

end A007590

/-! ## A007590.P9510835588747687901

`lcm(2, floor(n*n/2))`
-/

namespace A007590.P9510835588747687901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(n : ℚ) * ((n : ℚ) / 2)⌋

end

end A007590.P9510835588747687901

namespace A007590

/-- `lcm(2, floor(n*n/2))` -/
def P9510835588747687901.Spec : Prop :=
  ∀ n, (P9510835588747687901.a n : ℤ) = A007590 n

end A007590

/-! ## A007590.P13473780909296629809

`∑[gcd(2, n)-2+n]`
-/

namespace A007590.P13473780909296629809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007590.P13473780909296629809

namespace A007590

/-- `∑[gcd(2, n)-2+n]` -/
def P13473780909296629809.Spec : Prop :=
  ∀ n, P13473780909296629809.a n = A007590 n

end A007590

/-! ## A007590.P16651316381870196881

`xor(n², and(1, n))/2`
-/

namespace A007590.P16651316381870196881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n ^ 2) (Nat.land 1 n) : ℚ) / 2

end

end A007590.P16651316381870196881

namespace A007590

/-- `xor(n², and(1, n))/2` -/
def P16651316381870196881.Spec : Prop :=
  ∀ n, P16651316381870196881.a n = (A007590 n : ℚ)

end A007590

/-! ## A007590.P2788796676637235596

`round(sqrt(C(n², 2)/2))`
-/

namespace A007590.P2788796676637235596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.choose (n ^ 2) 2 : ℚ) / 2 : ℝ))

end

end A007590.P2788796676637235596

namespace A007590

/-- `round(sqrt(C(n², 2)/2))` -/
def P2788796676637235596.Spec : Prop :=
  ∀ n, P2788796676637235596.a n = A007590 n

end A007590

/-! ## A007590.P2769862574988227219

`round(cos(2)+n²/2)`
-/

namespace A007590.P2769862574988227219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ))

end

end A007590.P2769862574988227219

namespace A007590

/-- `round(cos(2)+n²/2)` -/
def P2769862574988227219.Spec : Prop :=
  ∀ n, P2769862574988227219.a n = A007590 n

end A007590

/-!
# A007591: Numbers k such that k^2 + 4 is prime.

The programs for A007591, there is no canonical definition to state claims against.
-/

/-! ## A007591.P2458540888351881938

`sqrt(A005473(n+1)-4)`
-/

namespace A007591.P2458540888351881938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005473 (n + 1) - 4 : ℝ)

end

end A007591.P2458540888351881938

/-! ## A007591.P992562924642793637

`A089747(n+2)-1`
-/

namespace A007591.P992562924642793637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089747 (n + 2) - 1

end

end A007591.P992562924642793637

/-! ## A007591.P4645019621978238348

`A000265(floor(sqrt(A005473(n+1))))`
-/

namespace A007591.P4645019621978238348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.sqrt (A005473 (n + 1))).toNat

end

end A007591.P4645019621978238348

/-! ## A007591.P8382370480840738472

`A093178(floor(sqrt(A005473(n+1))))`
-/

namespace A007591.P8382370480840738472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.sqrt (A005473 (n + 1))).toNat

end

end A007591.P8382370480840738472

/-! ## A007591.P3761976464799693990

`A014681(A089747(n+2))`
-/

namespace A007591.P3761976464799693990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A089747 (n + 2)).toNat

end

end A007591.P3761976464799693990

/-! ## A007591.P1695168823961549786

`A026741(floor(sqrt(A005473(n+1))))`
-/

namespace A007591.P1695168823961549786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.sqrt (A005473 (n + 1))).toNat

end

end A007591.P1695168823961549786

/-! ## A007591.P7303451273137276262

`A106609(floor(sqrt(A005473(n+1))))`
-/

namespace A007591.P7303451273137276262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (Int.sqrt (A005473 (n + 1))).toNat

end

end A007591.P7303451273137276262

/-! ## A007591.P12614224569350456032

`record[(2*n+1)/A130148(A069003(2*n+1))]`
-/

namespace A007591.P12614224569350456032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A130148 (A069003 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007591.P12614224569350456032

/-! ## A007591.P3163461308774287059

`sqrt(p?[n²+4]-4)`
-/

namespace A007591.P3163461308774287059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 4 : ℝ)

end

end A007591.P3163461308774287059

/-! ## A007591.P13131795118766748757

`sqrt(xor(4, p?[n²+4]))`
-/

namespace A007591.P13131795118766748757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 4 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)

end

end A007591.P13131795118766748757

/-! ## A007591.P4000013308137991774

`eq[1, ∑{e}[n²+4, #]]`
-/

namespace A007591.P4000013308137991774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007591.P4000013308137991774

/-! ## A007591.P1104440113320142772

`lt[∑{e}[n²+4, #], 2]`
-/

namespace A007591.P1104440113320142772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A007591.P1104440113320142772

/-!
# A007592: Hyperperfect numbers: k = m*(sigma(k) - k - 1) + 1 for some m > 1.

The programs for A007592, there is no canonical definition to state claims against.
-/

/-! ## A007592.P5851232169085876327

`∩[or(1, A034897(n+1)), A034897(n+1)]`
-/

namespace A007592.P5851232169085876327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A034897 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007592.P5851232169085876327

/-! ## A007592.P212142234782006963

`∩[A034897(n+1), A339963(n+1)]`
-/

namespace A007592.P212142234782006963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007592.P212142234782006963

/-! ## A007592.P6666050962623124258

`record[A000265(A034897(n+2))]`
-/

namespace A007592.P6666050962623124258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A034897 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007592.P6666050962623124258

/-! ## A007592.P13521460546073402665

`filter[A034897(n+1), A322980(#)]`
-/

namespace A007592.P13521460546073402665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A007592.P13521460546073402665

/-! ## A007592.P10223914886327942112

`filter[A034897(n+1), A355816(#)]`
-/

namespace A007592.P10223914886327942112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A007592.P10223914886327942112

/-!
# A007593: 2-hyperperfect numbers: n = 2*(sigma(n) - n - 1) + 1.

The programs for A007593, there is no canonical definition to state claims against.
-/

/-! ## A007593.P10538575466444222319

`floor((A014232(n+1)+1)²/3)`
-/

namespace A007593.P10538575466444222319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A014232 (n + 1) + 1) ^ 2 : ℚ) / 3⌋

end

end A007593.P10538575466444222319

/-!
# A007595: a(n) = C_n / 2 if n is even or ( C_n + C_((n-1)/2) ) / 2 if n is odd, where C = Catalan numbers (A000108).

The programs for A007595, the canonical program `A007595.P10207835623394486568` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007595 has offset 1).

The definition of A007595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007595.P14144484916826653137

`A046342(n)-A056711(n)`
-/

namespace A007595.P14144484916826653137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046342 n - A056711 n

end

end A007595.P14144484916826653137

namespace A007595

/-- `A046342(n)-A056711(n)` -/
def P14144484916826653137.Spec : Prop :=
  ∀ n, P14144484916826653137.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P13489008626043020254

`A071724(n)-A275206(n)`
-/

namespace A007595.P13489008626043020254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n - A275206 n

end

end A007595.P13489008626043020254

namespace A007595

/-- `A071724(n)-A275206(n)` -/
def P13489008626043020254.Spec : Prop :=
  ∀ n, P13489008626043020254.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P10820889967452400594

`A126120(n)+A000150(n+1)`
-/

namespace A007595.P10820889967452400594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + A000150 (n + 1)

end

end A007595.P10820889967452400594

namespace A007595

/-- `A126120(n)+A000150(n+1)` -/
def P10820889967452400594.Spec : Prop :=
  ∀ n, P10820889967452400594.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P2967361287587800115

`A007123(n+2)-A037952(n)`
-/

namespace A007595.P2967361287587800115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 2) - A037952 n

end

end A007595.P2967361287587800115

namespace A007595

/-- `A007123(n+2)-A037952(n)` -/
def P2967361287587800115.Spec : Prop :=
  ∀ n, P2967361287587800115.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P10207835623394486568

`A007123(n+2)-Δ[A001405(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007595

/-- `A007123(n+2)-Δ[A001405(n)]` -/
def P10207835623394486568.Spec : Prop :=
  ∀ n, P10207835623394486568.a n = A007595 (n + 1)

theorem P10207835623394486568.correct : P10207835623394486568.Spec := by
  intro n
  simp only [A007595, Nat.add_sub_cancel]

end A007595

/-! ## A007595.P17696598140075067860

`(A126120(n)+record[A097331(n)])/2`
-/

namespace A007595.P17696598140075067860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126120 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A007595.P17696598140075067860

namespace A007595

/-- `(A126120(n)+record[A097331(n)])/2` -/
def P17696598140075067860.Spec : Prop :=
  ∀ n, P17696598140075067860.a n = (A007595 (n + 1) : ℚ)

end A007595

/-! ## A007595.P9188714540932497324

`A000108(n+1)-A000150(n+1)`
-/

namespace A007595.P9188714540932497324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A000150 (n + 1)

end

end A007595.P9188714540932497324

namespace A007595

/-- `A000108(n+1)-A000150(n+1)` -/
def P9188714540932497324.Spec : Prop :=
  ∀ n, P9188714540932497324.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P119175028795107460

`A022553(n+1)-A005354(n+2)`
-/

namespace A007595.P119175028795107460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (n + 1) - A005354 (n + 2)

end

end A007595.P119175028795107460

namespace A007595

/-- `A022553(n+1)-A005354(n+2)` -/
def P119175028795107460.Spec : Prop :=
  ∀ n, P119175028795107460.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P2527139048938936678

`(A097331(n+1)+A000108(n+1))/2`
-/

namespace A007595.P2527139048938936678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097331 (n + 1) + A000108 (n + 1) : ℚ) / 2

end

end A007595.P2527139048938936678

namespace A007595

/-- `(A097331(n+1)+A000108(n+1))/2` -/
def P2527139048938936678.Spec : Prop :=
  ∀ n, P2527139048938936678.a n = (A007595 (n + 1) : ℚ)

end A007595

/-! ## A007595.P1859548043127382141

`A208355(2*(n+1))-A000150(n+1)`
-/

namespace A007595.P1859548043127382141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * (n + 1)) - A000150 (n + 1)

end

end A007595.P1859548043127382141

namespace A007595

/-- `A208355(2*(n+1))-A000150(n+1)` -/
def P1859548043127382141.Spec : Prop :=
  ∀ n, P1859548043127382141.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P91211739407784809

`(A000108(n+1)-A210628(n+1))/2`
-/

namespace A007595.P91211739407784809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) - A210628 (n + 1) : ℚ) / 2

end

end A007595.P91211739407784809

namespace A007595

/-- `(A000108(n+1)-A210628(n+1))/2` -/
def P91211739407784809.Spec : Prop :=
  ∀ n, P91211739407784809.a n = (A007595 (n + 1) : ℚ)

end A007595

/-! ## A007595.P6051486550447638776

`A000063(2*n+5)-A000150(n+1)`
-/

namespace A007595.P6051486550447638776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000063 (2 * n + 5) - A000150 (n + 1)

end

end A007595.P6051486550447638776

namespace A007595

/-- `A000063(2*n+5)-A000150(n+1)` -/
def P6051486550447638776.Spec : Prop :=
  ∀ n, P6051486550447638776.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P13740566553906250995

`(A208355(2*(n+1))+A097331(n+1))/2`
-/

namespace A007595.P13740566553906250995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208355 (2 * (n + 1)) + A097331 (n + 1) : ℚ) / 2

end

end A007595.P13740566553906250995

namespace A007595

/-- `(A208355(2*(n+1))+A097331(n+1))/2` -/
def P13740566553906250995.Spec : Prop :=
  ∀ n, P13740566553906250995.a n = (A007595 (n + 1) : ℚ)

end A007595

/-! ## A007595.P5012245455133993351

`A000108(n+1)+A001405(n)-A007123(n+2)`
-/

namespace A007595.P5012245455133993351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A001405 n - A007123 (n + 2))

end

end A007595.P5012245455133993351

namespace A007595

/-- `A000108(n+1)+A001405(n)-A007123(n+2)` -/
def P5012245455133993351.Spec : Prop :=
  ∀ n, P5012245455133993351.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P15098139885136086858

`A007123(n+2)+A001405(n)-A001405(n+1)`
-/

namespace A007595.P15098139885136086858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 2) + (A001405 n - A001405 (n + 1))

end

end A007595.P15098139885136086858

namespace A007595

/-- `A007123(n+2)+A001405(n)-A001405(n+1)` -/
def P15098139885136086858.Spec : Prop :=
  ∀ n, P15098139885136086858.a n = A007595 (n + 1)

theorem P15098139885136086858.correct : P15098139885136086858.Spec := by
  intro n
  simp only [A007595, Nat.add_sub_cancel, A007595.P15098139885136086858.a, A007595.P10207835623394486568.f1, A007595.P10207835623394486568.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007595

/-! ## A007595.P9887610573306933060

`A007123(n+2)+A201686(n)-A201686(n+1)`
-/

namespace A007595.P9887610573306933060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 2) + (A201686 n - A201686 (n + 1))

end

end A007595.P9887610573306933060

namespace A007595

/-- `A007123(n+2)+A201686(n)-A201686(n+1)` -/
def P9887610573306933060.Spec : Prop :=
  ∀ n, P9887610573306933060.a n = A007595 (n + 1)

theorem P9887610573306933060.correct : P9887610573306933060.Spec := by
  intro n
  simp only [A007595, Nat.add_sub_cancel, A007595.P9887610573306933060.a, A007595.P10207835623394486568.f1, A007595.P10207835623394486568.a, A001405, A001405.P5205018418992951678.a, A007123, A007123.P7395828226839827993.a, A201686, A201686.P5560453005708353295.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007595

/-! ## A007595.P9060233056926046684

`A071684(n+1)+A071688(n+1)-A000150(n+1)`
-/

namespace A007595.P9060233056926046684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071684 (n + 1) + (A071688 (n + 1) - A000150 (n + 1))

end

end A007595.P9060233056926046684

namespace A007595

/-- `A071684(n+1)+A071688(n+1)-A000150(n+1)` -/
def P9060233056926046684.Spec : Prop :=
  ∀ n, P9060233056926046684.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P4151845970887557604

`A005654(n+1)-A005656(n+2)`
-/

namespace A007595.P4151845970887557604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (n + 1) - A005656 (n + 2)

end

end A007595.P4151845970887557604

namespace A007595

/-- `A005654(n+1)-A005656(n+2)` -/
def P4151845970887557604.Spec : Prop :=
  ∀ n, P4151845970887557604.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P7817276374623764087

`A072506(A212342(n+1))`
-/

namespace A007595.P7817276374623764087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072506 (A212342 (n + 1)).toNat

end

end A007595.P7817276374623764087

namespace A007595

/-- `A072506(A212342(n+1))` -/
def P7817276374623764087.Spec : Prop :=
  ∀ n, P7817276374623764087.a n = A007595 (n + 1)

end A007595

/-! ## A007595.P15758948077853273483

`A072506(A347553(n+3))`
-/

namespace A007595.P15758948077853273483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072506 (A347553 (n + 3)).toNat

end

end A007595.P15758948077853273483

namespace A007595

/-- `A072506(A347553(n+3))` -/
def P15758948077853273483.Spec : Prop :=
  ∀ n, P15758948077853273483.a n = A007595 (n + 1)

end A007595

/-!
# A007597: Strobogrammatic primes.

The programs for A007597, there is no canonical definition to state claims against.
-/

/-! ## A007597.P1915004922377634829

`∩[A000787(n+1), A018847(n+1)]`
-/

namespace A007597.P1915004922377634829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P1915004922377634829

/-! ## A007597.P13388463561557419309

`∩[A018847(n+1), A051791(n+1)]`
-/

namespace A007597.P13388463561557419309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P13388463561557419309

/-! ## A007597.P12858313879279240116

`∩[A000787(n+1), A080788(n+1)]`
-/

namespace A007597.P12858313879279240116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P12858313879279240116

/-! ## A007597.P7672628831741787629

`∩[A018847(n+1), A080788(n+1)]`
-/

namespace A007597.P7672628831741787629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P7672628831741787629

/-! ## A007597.P14444532518600831988

`∩[A051791(n+1), A080788(n+1)]`
-/

namespace A007597.P14444532518600831988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P14444532518600831988

/-! ## A007597.P9926312155993047240

`∩[A018846(n+1), A080788(n+1)]`
-/

namespace A007597.P9926312155993047240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P9926312155993047240

/-! ## A007597.P5748536839848058765

`∩[A000787(n+1), A057770(n+1)]`
-/

namespace A007597.P5748536839848058765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P5748536839848058765

/-! ## A007597.P440084797200178045

`∩[A018846(n+1), A057770(n+1)]`
-/

namespace A007597.P440084797200178045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P440084797200178045

/-! ## A007597.P15942283382001528000

`∩[A018847(n+1), A057770(n+1)]`
-/

namespace A007597.P15942283382001528000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P15942283382001528000

/-! ## A007597.P13996768254197970535

`∩[A051791(n+1), A057770(n+1)]`
-/

namespace A007597.P13996768254197970535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007597.P13996768254197970535

/-!
# A007598: Squared Fibonacci numbers: a(n) = F(n)^2 where F = A000045.

The programs for A007598, the canonical program `A007598.P12226372241189459830` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007598 has offset 0).

The definition of A007598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²` (program `A007598.P12226372241189459830`, by `A007598.P12226372241189459830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007598.P9940810952435345628

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A007598.P9940810952435345628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A007598.P9940810952435345628

namespace A007598

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P9940810952435345628.Spec : Prop :=
  ∀ n, P9940810952435345628.a n = A007598 n

end A007598

/-! ## A007598.P12226372241189459830

`A000045(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007598

/-- `A000045(n)²` -/
def P12226372241189459830.Spec : Prop :=
  ∀ n, P12226372241189459830.a n = A007598 n

theorem P12226372241189459830.correct : P12226372241189459830.Spec := by
  intro n
  simp only [A007598]

end A007598

/-! ## A007598.P6257752665556249600

`A000045(2*n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A007598.P6257752665556249600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (2 * n - 2) + a (n - 2)

end

end A007598.P6257752665556249600

namespace A007598

/-- `A000045(2*n-2)+a(n-2)` -/
def P6257752665556249600.Spec : Prop :=
  ∀ n, P6257752665556249600.a n = A007598 n

end A007598

/-! ## A007598.P12483465707658089948

`(A005248(n)-2*(-1)^n)/5`
-/

namespace A007598.P12483465707658089948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n - 2 * (-1) ^ n : ℚ) / 5

end

end A007598.P12483465707658089948

namespace A007598

/-- `(A005248(n)-2*(-1)^n)/5` -/
def P12483465707658089948.Spec : Prop :=
  ∀ n, P12483465707658089948.a n = (A007598 n : ℚ)

end A007598

/-! ## A007598.P14280179979813778434

`(2*A000045(2*n+1)-A000045(2*n)-2*(-1)^n)/5`
-/

namespace A007598.P14280179979813778434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (2 * n + 1) - A000045 (2 * n) - 2 * (-1) ^ n : ℚ) / 5

end

end A007598.P14280179979813778434

namespace A007598

/-- `(2*A000045(2*n+1)-A000045(2*n)-2*(-1)^n)/5` -/
def P14280179979813778434.Spec : Prop :=
  ∀ n, P14280179979813778434.a n = (A007598 n : ℚ)

end A007598

/-! ## A007598.P7587532268135663314

`(A000045(n)*A000045(n+4)-3*A000045(n)*A000045(n+1))/2`
-/

namespace A007598.P7587532268135663314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * A000045 (n + 4) - 3 * A000045 n * A000045 (n + 1) : ℚ) / 2

end

end A007598.P7587532268135663314

namespace A007598

/-- `(A000045(n)*A000045(n+4)-3*A000045(n)*A000045(n+1))/2` -/
def P7587532268135663314.Spec : Prop :=
  ∀ n, P7587532268135663314.a n = (A007598 n : ℚ)

end A007598

/-! ## A007598.P18123230600040269362

`round(ϕ^n/sqrt(5))²`
-/

namespace A007598.P18123230600040269362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

end

end A007598.P18123230600040269362

namespace A007598

/-- `round(ϕ^n/sqrt(5))²` -/
def P18123230600040269362.Spec : Prop :=
  ∀ n, P18123230600040269362.a n = A007598 n

end A007598

/-! ## A007598.P1468373735435054940

`ogf((x-x^2)/(1-2x-2x^2+x^3))`
-/

namespace A007598.P1468373735435054940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, -2, 1] n

end

end A007598.P1468373735435054940

namespace A007598

/-- `ogf((x-x^2)/(1-2x-2x^2+x^3))` -/
def P1468373735435054940.Spec : Prop :=
  ∀ n, P1468373735435054940.a n = A007598 n

end A007598

/-! ## A007598.P14447816054095253605

`record[a(n-2)-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A007598.P14447816054095253605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A007598.P14447816054095253605

namespace A007598

/-- `record[a(n-2)-a(n-1)]-a(n-1)` -/
def P14447816054095253605.Spec : Prop :=
  ∀ n, P14447816054095253605.a n = A007598 n

end A007598

/-! ## A007598.P5589573260473172079

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A007598.P5589573260473172079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A007598.P5589573260473172079

namespace A007598

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P5589573260473172079.Spec : Prop :=
  ∀ n, P5589573260473172079.a n = A007598 n

end A007598

/-! ## A007598.P11785214951930570275

`3*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A007598.P11785214951930570275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * (-1) ^ n

end

end A007598.P11785214951930570275

namespace A007598

/-- `3*a(n-1)-a(n-2)-2*(-1)^n` -/
def P11785214951930570275.Spec : Prop :=
  ∀ n, P11785214951930570275.a n = A007598 n

end A007598

/-! ## A007598.P13248634793521964885

`A245306(n)-1`
-/

namespace A007598.P13248634793521964885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n - 1

end

end A007598.P13248634793521964885

namespace A007598

/-- `A245306(n)-1` -/
def P13248634793521964885.Spec : Prop :=
  ∀ n, P13248634793521964885.a n = A007598 n

theorem P13248634793521964885.correct : P13248634793521964885.Spec := by
  intro n
  simp only [A007598, Nat.add_sub_cancel, A007598.P13248634793521964885.a, A007598.P12226372241189459830.a, A000045, A000045.P11838749114346432762.a, A245306, A245306.P10470454293037442129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007598

/-! ## A007598.P14931400148299846583

`A175395(n)/2`
-/

namespace A007598.P14931400148299846583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175395 n : ℚ) / 2

end

end A007598.P14931400148299846583

namespace A007598

/-- `A175395(n)/2` -/
def P14931400148299846583.Spec : Prop :=
  ∀ n, P14931400148299846583.a n = (A007598 n : ℚ)

theorem P14931400148299846583.correct : P14931400148299846583.Spec := by
  intro n
  simp only [A007598, Nat.add_sub_cancel, A007598.P14931400148299846583.a, A007598.P12226372241189459830.a, A000045, A000045.P11838749114346432762.a, A175395, A175395.P1994188799197197583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007598

/-! ## A007598.P13907468502965481636

`Δ[A107387(n+1)]`
-/

namespace A007598.P13907468502965481636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007598.P13907468502965481636

namespace A007598

/-- `Δ[A107387(n+1)]` -/
def P13907468502965481636.Spec : Prop :=
  ∀ n, P13907468502965481636.a n = A007598 n

end A007598

/-! ## A007598.P4309995624215263361

`A295672(2*(n+2))`
-/

namespace A007598.P4309995624215263361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (2 * (n + 2))

end

end A007598.P4309995624215263361

namespace A007598

/-- `A295672(2*(n+2))` -/
def P4309995624215263361.Spec : Prop :=
  ∀ n, P4309995624215263361.a n = A007598 n

end A007598

/-! ## A007598.P5965861967162601655

`(A382845(n)+1)/2`
-/

namespace A007598.P5965861967162601655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382845 n + 1 : ℚ) / 2

end

end A007598.P5965861967162601655

namespace A007598

/-- `(A382845(n)+1)/2` -/
def P5965861967162601655.Spec : Prop :=
  ∀ n, P5965861967162601655.a n = (A007598 n : ℚ)

theorem P5965861967162601655.correct : P5965861967162601655.Spec := by
  intro n
  simp only [A007598, Nat.add_sub_cancel, A007598.P5965861967162601655.a, A007598.P12226372241189459830.a, A000045, A000045.P11838749114346432762.a, A382845, A382845.P16632734929146409984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007598

/-! ## A007598.P5210274412713199271

`Δ[A000045(n+1)]^2`
-/

namespace A007598.P5210274412713199271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A007598.P5210274412713199271

namespace A007598

/-- `Δ[A000045(n+1)]^2` -/
def P5210274412713199271.Spec : Prop :=
  ∀ n, P5210274412713199271.a n = A007598 n

end A007598

/-! ## A007598.P10067418937237435774

`A000045(n-char[2])^2`
-/

namespace A007598.P10067418937237435774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n - (if ∃ j, f1 j = n then 1 else 0)) ^ 2

end

end A007598.P10067418937237435774

namespace A007598

/-- `A000045(n-char[2])^2` -/
def P10067418937237435774.Spec : Prop :=
  ∀ n, P10067418937237435774.a n = A007598 n

end A007598

/-! ## A007598.P13223048426808033355

`A295680(2*n+1)/2`
-/

namespace A007598.P13223048426808033355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295680 (2 * n + 1) : ℚ) / 2

end

end A007598.P13223048426808033355

namespace A007598

/-- `A295680(2*n+1)/2` -/
def P13223048426808033355.Spec : Prop :=
  ∀ n, P13223048426808033355.a n = (A007598 n : ℚ)

end A007598

/-! ## A007598.P18168435507916624223

`round((A000032(n+1)/(ϕ+2))²)`
-/

namespace A007598.P18168435507916624223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000032 (n + 1) : ℝ) / (Real.goldenRatio + 2)) ^ 2)

end

end A007598.P18168435507916624223

namespace A007598

/-- `round((A000032(n+1)/(ϕ+2))²)` -/
def P18168435507916624223.Spec : Prop :=
  ∀ n, P18168435507916624223.a n = A007598 n

end A007598

