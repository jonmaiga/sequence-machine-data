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
import Seq.B000.C021
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A089200: Primes p such that p-1 is divisible by a cube.

The programs for A089200, the canonical program `A089200.P17182532322328293413` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089200 has offset 1).

The definition of A089200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089200.P17182532322328293413

`p?[A046099(n+1)+1]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A089200

/-- `p?[A046099(n+1)+1]` -/
def P17182532322328293413.Spec : Prop :=
  ∀ n, P17182532322328293413.a n = A089200 (n + 1)

theorem P17182532322328293413.correct : P17182532322328293413.Spec := by
  intro n
  simp only [A089200, Nat.add_sub_cancel]

end A089200

/-! ## A089200.P15252931882813093296

`record[A006530(A046099(n+2)+1)]`
-/

namespace A089200.P15252931882813093296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046099 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089200.P15252931882813093296

namespace A089200

/-- `record[A006530(A046099(n+2)+1)]` -/
def P15252931882813093296.Spec : Prop :=
  ∀ n, P15252931882813093296.a n = A089200 (n + 1)

end A089200

/-! ## A089200.P9947396307242813418

`∩[A000040(n+1), A046099(n+1)+1]`
-/

namespace A089200.P9947396307242813418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089200.P9947396307242813418

namespace A089200

/-- `∩[A000040(n+1), A046099(n+1)+1]` -/
def P9947396307242813418.Spec : Prop :=
  ∀ n, (P9947396307242813418.a n : ℤ) = A089200 (n + 1)

end A089200

/-! ## A089200.P359545308458420741

`p?[lt[A212793(n+1), 1]+2]`
-/

namespace A089200.P359545308458420741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089200.P359545308458420741

namespace A089200

/-- `p?[lt[A212793(n+1), 1]+2]` -/
def P359545308458420741.Spec : Prop :=
  ∀ n, (P359545308458420741.a n : ℤ) = A089200 (n + 1)

end A089200

/-! ## A089200.P10224457805047128107

`p?[lt[2, A051903(n+1)]+2]`
-/

namespace A089200.P10224457805047128107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089200.P10224457805047128107

namespace A089200

/-- `p?[lt[2, A051903(n+1)]+2]` -/
def P10224457805047128107.Spec : Prop :=
  ∀ n, (P10224457805047128107.a n : ℤ) = A089200 (n + 1)

end A089200

/-! ## A089200.P13292236034959666518

`p?[A087049(A015049(n+1))+A013929(n+1)]`
-/

namespace A089200.P13292236034959666518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A015049 (n + 1)).toNat + A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089200.P13292236034959666518

namespace A089200

/-- `p?[A087049(A015049(n+1))+A013929(n+1)]` -/
def P13292236034959666518.Spec : Prop :=
  ∀ n, P13292236034959666518.a n = A089200 (n + 1)

end A089200

/-! ## A089200.P15279060480272289888

`p?[gcd(2*n+3, A327276(n+1))]`
-/

namespace A089200.P15279060480272289888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 3 : ℤ) (A327276 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089200.P15279060480272289888

namespace A089200

/-- `p?[gcd(2*n+3, A327276(n+1))]` -/
def P15279060480272289888.Spec : Prop :=
  ∀ n, (P15279060480272289888.a n : ℤ) = A089200 (n + 1)

end A089200

/-! ## A089200.P9923364292919165805

`p?[1-(n+1)*A231122(n+1)]`
-/

namespace A089200.P9923364292919165805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℤ) * A231122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089200.P9923364292919165805

namespace A089200

/-- `p?[1-(n+1)*A231122(n+1)]` -/
def P9923364292919165805.Spec : Prop :=
  ∀ n, P9923364292919165805.a n = A089200 (n + 1)

end A089200

/-! ## A089200.P14739096462297435458

`p?[xor(n+1, 1-A007427(n+1)²)]`
-/

namespace A089200.P14739096462297435458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (1 - A007427 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089200.P14739096462297435458

namespace A089200

/-- `p?[xor(n+1, 1-A007427(n+1)²)]` -/
def P14739096462297435458.Spec : Prop :=
  ∀ n, P14739096462297435458.a n = A089200 (n + 1)

end A089200

/-! ## A089200.P12497804012989917269

`p?[or(1, lt[0, A056626(n+1)/4]+1)]`
-/

namespace A089200.P12497804012989917269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056626 (n + 1) : ℚ) / 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089200.P12497804012989917269

namespace A089200

/-- `p?[or(1, lt[0, A056626(n+1)/4]+1)]` -/
def P12497804012989917269.Spec : Prop :=
  ∀ n, (P12497804012989917269.a n : ℤ) = A089200 (n + 1)

end A089200

/-! ## A089200.P12096814324267336617

`p?[A004442(A046099(n+1))]`
-/

namespace A089200.P12096814324267336617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A046099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089200.P12096814324267336617

namespace A089200

/-- `p?[A004442(A046099(n+1))]` -/
def P12096814324267336617.Spec : Prop :=
  ∀ n, P12096814324267336617.a n = A089200 (n + 1)

end A089200

/-! ## A089200.P8175684968311311464

`p?[A000027((n+1)%(A072911(n+1)+n)+1)]`
-/

namespace A089200.P8175684968311311464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (n + 1 : ℤ) (A072911 (n + 1) + (n : ℤ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089200.P8175684968311311464

namespace A089200

/-- `p?[A000027((n+1)%(A072911(n+1)+n)+1)]` -/
def P8175684968311311464.Spec : Prop :=
  ∀ n, P8175684968311311464.a n = A089200 (n + 1)

end A089200

/-!
# A089205: a(n) = n^n * (n-1).

The programs for A089205, the canonical program `A089205.P9679639820217271548` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089205 has offset 1).

The definition of A089205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)*n` (program `A089205.P9679639820217271548`, by `A089205.P9679639820217271548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089205.P9679639820217271548

`(n+1)^(n+1)*n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A089205

/-- `(n+1)^(n+1)*n` -/
def P9679639820217271548.Spec : Prop :=
  ∀ n, (P9679639820217271548.a n : ℤ) = A089205 (n + 1)

theorem P9679639820217271548.correct : P9679639820217271548.Spec := by
  intro n
  simp only [A089205, Nat.add_sub_cancel]

end A089205

/-! ## A089205.P10931782667882885577

`lcm(n, (n+1)^(n+1))`
-/

namespace A089205.P10931782667882885577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ (n + 1))

end

end A089205.P10931782667882885577

namespace A089205

/-- `lcm(n, (n+1)^(n+1))` -/
def P10931782667882885577.Spec : Prop :=
  ∀ n, (P10931782667882885577.a n : ℤ) = A089205 (n + 1)

end A089205

/-! ## A089205.P4272853372124408965

`∏{digits}[10^(n+1), n+1-#]`
-/

namespace A089205.P4272853372124408965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n + 1 : ℤ) - (x : ℤ)).prod

end

end A089205.P4272853372124408965

namespace A089205

/-- `∏{digits}[10^(n+1), n+1-#]` -/
def P4272853372124408965.Spec : Prop :=
  ∀ n, P4272853372124408965.a n = A089205 (n + 1)

end A089205

/-! ## A089205.P10583358812825057739

`record[(n-1)^n]-(n+1)^(n+1)`
-/

namespace A089205.P10583358812825057739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n + 1) ^ (n + 1) : ℤ)

end

end A089205.P10583358812825057739

namespace A089205

/-- `record[(n-1)^n]-(n+1)^(n+1)` -/
def P10583358812825057739.Spec : Prop :=
  ∀ n, P10583358812825057739.a n = A089205 (n + 1)

end A089205

/-! ## A089205.P1744503171429119299

`abs(n*A086783(n+1))`
-/

namespace A089205.P1744503171429119299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A086783 (n + 1)|

end

end A089205.P1744503171429119299

namespace A089205

/-- `abs(n*A086783(n+1))` -/
def P1744503171429119299.Spec : Prop :=
  ∀ n, P1744503171429119299.a n = A089205 (n + 1)

end A089205

/-! ## A089205.P13742241751483464173

`A219706(n+1)+A001864(n+1)`
-/

namespace A089205.P13742241751483464173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219706 (n + 1) + A001864 (n + 1)

end

end A089205.P13742241751483464173

namespace A089205

/-- `A219706(n+1)+A001864(n+1)` -/
def P13742241751483464173.Spec : Prop :=
  ∀ n, P13742241751483464173.a n = A089205 (n + 1)

end A089205

/-! ## A089205.P18184313415993708625

`A007778(n+1)-A000312(n+1)`
-/

namespace A089205.P18184313415993708625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (n + 1) - A000312 (n + 1)

end

end A089205.P18184313415993708625

namespace A089205

/-- `A007778(n+1)-A000312(n+1)` -/
def P18184313415993708625.Spec : Prop :=
  ∀ n, P18184313415993708625.a n = A089205 (n + 1)

end A089205

/-! ## A089205.P2797647896378054302

`A014293(n+1)-A006091(n+1)`
-/

namespace A089205.P2797647896378054302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014293 (n + 1) - A006091 (n + 1)

end

end A089205.P2797647896378054302

namespace A089205

/-- `A014293(n+1)-A006091(n+1)` -/
def P2797647896378054302.Spec : Prop :=
  ∀ n, P2797647896378054302.a n = A089205 (n + 1)

end A089205

/-! ## A089205.P18059956246315003570

`A110567(n+1)-A014566(n+1)`
-/

namespace A089205.P18059956246315003570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110567 (n + 1) - A014566 (n + 1)

end

end A089205.P18059956246315003570

namespace A089205

/-- `A110567(n+1)-A014566(n+1)` -/
def P18059956246315003570.Spec : Prop :=
  ∀ n, P18059956246315003570.a n = A089205 (n + 1)

end A089205

/-! ## A089205.P12697879354354264341

`A322406(n+1)-A066068(n+1)`
-/

namespace A089205.P12697879354354264341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322406 (n + 1) - A066068 (n + 1)

end

end A089205.P12697879354354264341

namespace A089205

/-- `A322406(n+1)-A066068(n+1)` -/
def P12697879354354264341.Spec : Prop :=
  ∀ n, P12697879354354264341.a n = A089205 (n + 1)

end A089205

/-!
# A089206: Denominators of array in A089204.

The programs for A089206, there is no canonical definition to state claims against.
-/

/-! ## A089206.P11731372625985564825

`A019554((comp[∑[n]]-n)^A037126(n+1))`
-/

namespace A089206.P11731372625985564825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) ^ (A037126 (n + 1) : ℤ))).toNat

end

end A089206.P11731372625985564825

/-! ## A089206.P16364011776515487700

`A140271(A003057(n+2)^A059268(n))`
-/

namespace A089206.P16364011776515487700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (SequenceMachineLib.roundAway ((A003057 (n + 2) : ℚ) ^ (A059268 n : ℤ))).toNat

end

end A089206.P16364011776515487700

/-! ## A089206.P12335387557519529443

`A275823(A003057(n+2)^A059268(n))`
-/

namespace A089206.P12335387557519529443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275823 (SequenceMachineLib.roundAway ((A003057 (n + 2) : ℚ) ^ (A059268 n : ℤ))).toNat

end

end A089206.P12335387557519529443

/-! ## A089206.P2434110631565631263

`A033677(A003057(n+2)^A037126(n+1))`
-/

namespace A089206.P2434110631565631263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.roundAway ((A003057 (n + 2) : ℚ) ^ (A037126 (n + 1) : ℤ))).toNat

end

end A089206.P2434110631565631263

/-!
# A089207: a(n) = 4*n^3 + 2*n^2.

The programs for A089207, the canonical program `A089207.P17316122751903932538` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089207 has offset 1).

The definition of A089207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)^3+2*(n+1)²` (program `A089207.P17316122751903932538`, by `A089207.P17316122751903932538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089207.P17316122751903932538

`4*(n+1)^3+2*(n+1)²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A089207

/-- `4*(n+1)^3+2*(n+1)²` -/
def P17316122751903932538.Spec : Prop :=
  ∀ n, (P17316122751903932538.a n : ℤ) = A089207 (n + 1)

theorem P17316122751903932538.correct : P17316122751903932538.Spec := by
  intro n
  simp only [A089207, Nat.add_sub_cancel]

end A089207

/-! ## A089207.P18169362896126024519

`2*(n+1)*A014105(n+1)`
-/

namespace A089207.P18169362896126024519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A014105 (n + 1))

end

end A089207.P18169362896126024519

namespace A089207

/-- `2*(n+1)*A014105(n+1)` -/
def P18169362896126024519.Spec : Prop :=
  ∀ n, P18169362896126024519.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P4583031109111186760

`2*A099721(n+1)`
-/

namespace A089207.P4583031109111186760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099721 (n + 1)

end

end A089207.P4583031109111186760

namespace A089207

/-- `2*A099721(n+1)` -/
def P4583031109111186760.Spec : Prop :=
  ∀ n, P4583031109111186760.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P8244418598415203954

`∑[∑[or(6, 24*n)]-2*n]`
-/

namespace A089207.P8244418598415203954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 (24 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P8244418598415203954

namespace A089207

/-- `∑[∑[or(6, 24*n)]-2*n]` -/
def P8244418598415203954.Spec : Prop :=
  ∀ n, P8244418598415203954.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P4707572549132985210

`∑[∑[xor(6, 24*n)]-2*n]`
-/

namespace A089207.P4707572549132985210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (24 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P4707572549132985210

namespace A089207

/-- `∑[∑[xor(6, 24*n)]-2*n]` -/
def P4707572549132985210.Spec : Prop :=
  ∀ n, P4707572549132985210.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P5850891801690133647

`lcm(2*n+3, ∑[4*n+2])`
-/

namespace A089207.P5850891801690133647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089207.P5850891801690133647

namespace A089207

/-- `lcm(2*n+3, ∑[4*n+2])` -/
def P5850891801690133647.Spec : Prop :=
  ∀ n, (P5850891801690133647.a n : ℤ) = A089207 (n + 1)

end A089207

/-! ## A089207.P7753280583452012965

`record[lcm(n+3, floor((n+2)²/2))]`
-/

namespace A089207.P7753280583452012965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) ⌊((n + 2) ^ 2 : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089207.P7753280583452012965

namespace A089207

/-- `record[lcm(n+3, floor((n+2)²/2))]` -/
def P7753280583452012965.Spec : Prop :=
  ∀ n, (P7753280583452012965.a n : ℤ) = A089207 (n + 1)

end A089207

/-! ## A089207.P13255995625015798256

`∑[2*Δ[n*C(2*n+1, 2)]]`
-/

namespace A089207.P13255995625015798256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P13255995625015798256

namespace A089207

/-- `∑[2*Δ[n*C(2*n+1, 2)]]` -/
def P13255995625015798256.Spec : Prop :=
  ∀ n, P13255995625015798256.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P7905288840781449234

`floor((n+1)*∑[a(n-1)+8])` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A089207.P7905288840781449234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089207.P7905288840781449234

namespace A089207

/-- `floor((n+1)*∑[a(n-1)+8])` -/
def P7905288840781449234.Spec : Prop :=
  ∀ n, (P7905288840781449234.a n : ℤ) = A089207 (n + 1)

end A089207

/-! ## A089207.P1269963706352804432

`C(∑[4*(2*n+1)], 2)/(2*n+1)`
-/

namespace A089207.P1269963706352804432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A089207.P1269963706352804432

namespace A089207

/-- `C(∑[4*(2*n+1)], 2)/(2*n+1)` -/
def P1269963706352804432.Spec : Prop :=
  ∀ n, P1269963706352804432.a n = (A089207 (n + 1) : ℚ)

end A089207

/-! ## A089207.P12658751493002171200

`Δ[a(n-1)+2*n*C(2*n+1, 2)]` with `a(0)=0`
-/

namespace A089207.P12658751493002171200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2 * n * Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A089207.P12658751493002171200

namespace A089207

/-- `Δ[a(n-1)+2*n*C(2*n+1, 2)]` -/
def P12658751493002171200.Spec : Prop :=
  ∀ n, P12658751493002171200.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P3210105557906647859

`Δ[a(n-1)+(2*n+1)*n*2*n]` with `a(0)=0`
-/

namespace A089207.P3210105557906647859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (2 * n + 1) * (n * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A089207.P3210105557906647859

namespace A089207

/-- `Δ[a(n-1)+(2*n+1)*n*2*n]` -/
def P3210105557906647859.Spec : Prop :=
  ∀ n, P3210105557906647859.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P17935813692433759209

`∑[2*A126587(n+1)]`
-/

namespace A089207.P17935813692433759209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P17935813692433759209

namespace A089207

/-- `∑[2*A126587(n+1)]` -/
def P17935813692433759209.Spec : Prop :=
  ∀ n, P17935813692433759209.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P5162014409908704005

`∑[2*(A239325(n)+2)]`
-/

namespace A089207.P5162014409908704005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A239325 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P5162014409908704005

namespace A089207

/-- `∑[2*(A239325(n)+2)]` -/
def P5162014409908704005.Spec : Prop :=
  ∀ n, P5162014409908704005.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P9089269769667470046

`∑[∑[A063140(n+1)]+1]`
-/

namespace A089207.P9089269769667470046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P9089269769667470046

namespace A089207

/-- `∑[∑[A063140(n+1)]+1]` -/
def P9089269769667470046.Spec : Prop :=
  ∀ n, P9089269769667470046.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P1214089833661124819

`∑[∑[2*A063098(n+1)]]`
-/

namespace A089207.P1214089833661124819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063098 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P1214089833661124819

namespace A089207

/-- `∑[∑[2*A063098(n+1)]]` -/
def P1214089833661124819.Spec : Prop :=
  ∀ n, P1214089833661124819.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P10323942874726468730

`∑[A154105(n)-(2*n+1)]`
-/

namespace A089207.P10323942874726468730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154105 n - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P10323942874726468730

namespace A089207

/-- `∑[A154105(n)-(2*n+1)]` -/
def P10323942874726468730.Spec : Prop :=
  ∀ n, P10323942874726468730.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P11007398051973622162

`∑[Δ[n²]*A016969(n)+1]`
-/

namespace A089207.P11007398051973622162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A016969 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P11007398051973622162

namespace A089207

/-- `∑[Δ[n²]*A016969(n)+1]` -/
def P11007398051973622162.Spec : Prop :=
  ∀ n, P11007398051973622162.a n = A089207 (n + 1)

end A089207

/-! ## A089207.P9542315962906892656

`∑[4*(n+1)*A016777(n)+2]`
-/

namespace A089207.P9542315962906892656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A016777 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089207.P9542315962906892656

namespace A089207

/-- `∑[4*(n+1)*A016777(n)+2]` -/
def P9542315962906892656.Spec : Prop :=
  ∀ n, P9542315962906892656.a n = A089207 (n + 1)

end A089207

/-!
# A089209: Table, read by rows, related to Catalan triangle A033184.

The programs for A089209, there is no canonical definition to state claims against.
-/

/-! ## A089209.P13729649700020761485

`A080237(A130918(n+1))`
-/

namespace A089209.P13729649700020761485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A130918 (n + 1)).toNat

end

end A089209.P13729649700020761485

/-! ## A089209.P15720588745230978779

`A007001(A072795(n+1)-A082854(2*n+1))`
-/

namespace A089209.P15720588745230978779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A072795 (n + 1) - A082854 (2 * n + 1)).toNat

end

end A089209.P15720588745230978779

/-! ## A089209.P14470783433005104266

`A007001(A072795(n+1)-(A082854(n+1)+n))`
-/

namespace A089209.P14470783433005104266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A072795 (n + 1) - (A082854 (n + 1) + (n : ℤ))).toNat

end

end A089209.P14470783433005104266

/-! ## A089209.P14177032079439628680

`A193095(A028303(n))+A026141(n+2)`
-/

namespace A089209.P14177032079439628680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A028303 n).toNat + A026141 (n + 2)

end

end A089209.P14177032079439628680

/-! ## A089209.P11705112021970021680

`A193095(A028304(n))+A026141(n+2)`
-/

namespace A089209.P11705112021970021680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A028304 n).toNat + A026141 (n + 2)

end

end A089209.P11705112021970021680

/-!
# A089211: a(n) = 10*n^n+(n-1).

The programs for A089211, the canonical program `A089211.P8813144151774168867` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089211 has offset 1).

The definition of A089211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+1)^(n+1)+n` (program `A089211.P8813144151774168867`, by `A089211.P8813144151774168867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089211.P8813144151774168867

`10*(n+1)^(n+1)+n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A089211

/-- `10*(n+1)^(n+1)+n` -/
def P8813144151774168867.Spec : Prop :=
  ∀ n, (P8813144151774168867.a n : ℤ) = A089211 (n + 1)

theorem P8813144151774168867.correct : P8813144151774168867.Spec := by
  intro n
  simp only [A089211, Nat.add_sub_cancel]

end A089211

/-! ## A089211.P5852706925458999751

`∑[10*A007781(n)-A057428(n)]`
-/

namespace A089211.P5852706925458999751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007781 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089211.P5852706925458999751

namespace A089211

/-- `∑[10*A007781(n)-A057428(n)]` -/
def P5852706925458999751.Spec : Prop :=
  ∀ n, P5852706925458999751.a n = A089211 (n + 1)

end A089211

/-!
# A089213: Primes p such that either 3^p-2 or 3^p+2 is prime or both are.

The programs for A089213, there is no canonical definition to state claims against.
-/

/-! ## A089213.P12581771762039584192

`p?[∪[A014224(n+1), A051783(n+1)]]`
-/

namespace A089213.P12581771762039584192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014224 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051783 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089213.P12581771762039584192

/-! ## A089213.P12901164116435956576

`∪[A086163(A086167(3*n+1)), A086218(n+1)]`
-/

namespace A089213.P12901164116435956576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086163 (A086167 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089213.P12901164116435956576

/-!
# A089214: Let u(1)=0, u(2)=1; for k>2, u(k)= A010060(k)*u(k-1) + u(k-2) (mod 2); then a(n)=4n-b(n) where sequence (b(k)) gives values such that u(b(k))=0.

The programs for A089214, the canonical program `A089214.P6546716981714590711` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089214 has offset 1).

The definition of A089214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089214.P1291828983023678214

`∑[log2(gcd(64, n))]%2+3^(n%2)`
-/

namespace A089214.P1291828983023678214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 64 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) 2 + (3 ^ (n % 2) : ℤ)

end

end A089214.P1291828983023678214

namespace A089214

/-- `∑[log2(gcd(64, n))]%2+3^(n%2)` -/
def P1291828983023678214.Spec : Prop :=
  ∀ n, P1291828983023678214.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P528128742680876736

`-xor(-(or(1, n)+n), comp[xor(n, 2*n+1)])`
-/

namespace A089214.P528128742680876736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(Nat.lor 1 n + n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A089214.P528128742680876736

namespace A089214

/-- `-xor(-(or(1, n)+n), comp[xor(n, 2*n+1)])` -/
def P528128742680876736.Spec : Prop :=
  ∀ n, P528128742680876736.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P6546716981714590711

`∑[∑{e}[and(n, -n), #]]%2+2*and(1, n)+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A089214

/-- `∑[∑{e}[and(n, -n), #]]%2+2*and(1, n)+1` -/
def P6546716981714590711.Spec : Prop :=
  ∀ n, (P6546716981714590711.a n : ℤ) = A089214 (n + 1)

theorem P6546716981714590711.correct : P6546716981714590711.Spec := by
  intro n
  simp only [A089214, Nat.add_sub_cancel]

end A089214

/-! ## A089214.P15837993729837257533

`Δ[or(1, n)]+(comp[xor(n, 2*n)]+1+n)%2+1`
-/

namespace A089214.P15837993729837257533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 + n) % 2 + 1 : ℕ) : ℤ)

end

end A089214.P15837993729837257533

namespace A089214

/-- `Δ[or(1, n)]+(comp[xor(n, 2*n)]+1+n)%2+1` -/
def P15837993729837257533.Spec : Prop :=
  ∀ n, P15837993729837257533.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P14378875000525168236

`dr(A074938(n))%7`
-/

namespace A089214.P14378875000525168236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A074938 n) % 7

end

end A089214.P14378875000525168236

namespace A089214

/-- `dr(A074938(n))%7` -/
def P14378875000525168236.Spec : Prop :=
  ∀ n, (P14378875000525168236.a n : ℤ) = A089214 (n + 1)

end A089214

/-! ## A089214.P1870943563444415681

`or(1, A340494(n))%5`
-/

namespace A089214.P1870943563444415681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A340494 n)) 5

end

end A089214.P1870943563444415681

namespace A089214

/-- `or(1, A340494(n))%5` -/
def P1870943563444415681.Spec : Prop :=
  ∀ n, P1870943563444415681.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P9158613234527187261

`xor(1, A186776(n+1)%6)`
-/

namespace A089214.P9158613234527187261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (A186776 (n + 1)) 6)

end

end A089214.P9158613234527187261

namespace A089214

/-- `xor(1, A186776(n+1)%6)` -/
def P9158613234527187261.Spec : Prop :=
  ∀ n, P9158613234527187261.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P1489206809228186818

`(A191106(n+1)%12)%5`
-/

namespace A089214.P1489206809228186818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A191106 (n + 1)) 12) 5

end

end A089214.P1489206809228186818

namespace A089214

/-- `(A191106(n+1)%12)%5` -/
def P1489206809228186818.Spec : Prop :=
  ∀ n, P1489206809228186818.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P12502421920653987885

`(A328462(n+1)%12)%5`
-/

namespace A089214.P12502421920653987885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A328462 (n + 1)) 12) 5

end

end A089214.P12502421920653987885

namespace A089214

/-- `(A328462(n+1)%12)%5` -/
def P12502421920653987885.Spec : Prop :=
  ∀ n, P12502421920653987885.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P16603845583179534004

`(A286727(n+1)+n)%5`
-/

namespace A089214.P16603845583179534004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286727 (n + 1) + (n : ℤ)) 5

end

end A089214.P16603845583179534004

namespace A089214

/-- `(A286727(n+1)+n)%5` -/
def P16603845583179534004.Spec : Prop :=
  ∀ n, P16603845583179534004.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P9970045564497810491

`A000032(comp[xor(n, 2*n)])%5`
-/

namespace A089214.P9970045564497810491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 5

end

end A089214.P9970045564497810491

namespace A089214

/-- `A000032(comp[xor(n, 2*n)])%5` -/
def P9970045564497810491.Spec : Prop :=
  ∀ n, P9970045564497810491.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P15187301642866715045

`A000032(and(3, comp[xor(n, 2*(n+1))]-27))`
-/

namespace A089214.P15187301642866715045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 27)).toNat

end

end A089214.P15187301642866715045

namespace A089214

/-- `A000032(and(3, comp[xor(n, 2*(n+1))]-27))` -/
def P15187301642866715045.Spec : Prop :=
  ∀ n, P15187301642866715045.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P10577965077296332809

`A000032(a(and(n, n-1))-(-1)^n)` with `a(0)=1`
-/

namespace A089214.P10577965077296332809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - (-1) ^ n).toNat

end

end A089214.P10577965077296332809

namespace A089214

/-- `A000032(a(and(n, n-1))-(-1)^n)` -/
def P10577965077296332809.Spec : Prop :=
  ∀ n, P10577965077296332809.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P1394219742885948217

`A000032(char[xor(n, 2*n)]+2*n)%5`
-/

namespace A089214.P1394219742885948217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)) 5

end

end A089214.P1394219742885948217

namespace A089214

/-- `A000032(char[xor(n, 2*n)]+2*n)%5` -/
def P1394219742885948217.Spec : Prop :=
  ∀ n, P1394219742885948217.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P13909924468215381666

`A000032(and(2-(-1)^n, comp[xor(n, 2*n)]))`
-/

namespace A089214.P13909924468215381666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land (2 - (-1) ^ n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A089214.P13909924468215381666

namespace A089214

/-- `A000032(and(2-(-1)^n, comp[xor(n, 2*n)]))` -/
def P13909924468215381666.Spec : Prop :=
  ∀ n, P13909924468215381666.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P9025831568909152113

`A000032(and(3, n-char[xor(n, record[xor(1, n)])]+1+n))`
-/

namespace A089214.P9025831568909152113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 3 ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1 + (n : ℤ))).toNat

end

end A089214.P9025831568909152113

namespace A089214

/-- `A000032(and(3, n-char[xor(n, record[xor(1, n)])]+1+n))` -/
def P9025831568909152113.Spec : Prop :=
  ∀ n, P9025831568909152113.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P5665668274656019730

`A070352(A006068(n))`
-/

namespace A089214.P5665668274656019730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A006068 n).toNat

end

end A089214.P5665668274656019730

namespace A089214

/-- `A070352(A006068(n))` -/
def P5665668274656019730.Spec : Prop :=
  ∀ n, P5665668274656019730.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P6464162392820933363

`A110550(A064707(n))`
-/

namespace A089214.P6464162392820933363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110550 (A064707 n).toNat

end

end A089214.P6464162392820933363

namespace A089214

/-- `A110550(A064707(n))` -/
def P6464162392820933363.Spec : Prop :=
  ∀ n, P6464162392820933363.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P11129862201547781285

`A335423(A071044(n))`
-/

namespace A089214.P11129862201547781285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (A071044 n).toNat

end

end A089214.P11129862201547781285

namespace A089214

/-- `A335423(A071044(n))` -/
def P11129862201547781285.Spec : Prop :=
  ∀ n, P11129862201547781285.a n = A089214 (n + 1)

end A089214

/-! ## A089214.P14557264290656949571

`A279612(A269695(n))`
-/

namespace A089214.P14557264290656949571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279612 (A269695 n).toNat

end

end A089214.P14557264290656949571

namespace A089214

/-- `A279612(A269695(n))` -/
def P14557264290656949571.Spec : Prop :=
  ∀ n, P14557264290656949571.a n = A089214 (n + 1)

end A089214

/-!
# A089215: Thue-Morse sequence on the integers.

The programs for A089215, the canonical program `A089215.P9624417689871271006` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089215 has offset 1).

The definition of A089215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089215.P9624417689871271006

`A209281(n+1)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A089215

/-- `A209281(n+1)+1` -/
def P9624417689871271006.Spec : Prop :=
  ∀ n, P9624417689871271006.a n = A089215 (n + 1)

theorem P9624417689871271006.correct : P9624417689871271006.Spec := by
  intro n
  simp only [A089215, Nat.add_sub_cancel]

end A089215

/-! ## A089215.P2703953324233798314

`a(floor(n/2))+1-char[xor(n, 2*n)]` with `a(0)=1`
-/

namespace A089215.P2703953324233798314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A089215.P2703953324233798314

namespace A089215

/-- `a(floor(n/2))+1-char[xor(n, 2*n)]` -/
def P2703953324233798314.Spec : Prop :=
  ∀ n, P2703953324233798314.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P5282800857205223348

`floor((1/a(n-1)+1)*a(floor(n/2)))` with `a(0)=1`
-/

namespace A089215.P5282800857205223348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 / (a (n - 1) : ℚ) + 1) * (a ⌊(n : ℚ) / 2⌋.toNat : ℚ)⌋

end

end A089215.P5282800857205223348

namespace A089215

/-- `floor((1/a(n-1)+1)*a(floor(n/2)))` -/
def P5282800857205223348.Spec : Prop :=
  ∀ n, P5282800857205223348.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P2774733194264927323

`a(floor(n/2))+comp[xor(n, 2*n+1)]%2` with `a(0)=1`
-/

namespace A089215.P2774733194264927323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A089215.P2774733194264927323

namespace A089215

/-- `a(floor(n/2))+comp[xor(n, 2*n+1)]%2` -/
def P2774733194264927323.Spec : Prop :=
  ∀ n, (P2774733194264927323.a n : ℤ) = A089215 (n + 1)

end A089215

/-! ## A089215.P11326943575779713276

`char[xor(n+1, 2*n+1)+1]+a(floor(n/2))` with `a(0)=1`
-/

namespace A089215.P11326943575779713276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A089215.P11326943575779713276

namespace A089215

/-- `char[xor(n+1, 2*n+1)+1]+a(floor(n/2))` -/
def P11326943575779713276.Spec : Prop :=
  ∀ n, (P11326943575779713276.a n : ℤ) = A089215 (n + 1)

end A089215

/-! ## A089215.P4172471573221983686

`a(A277813(n)-1)+1` with `a(0)=1`
-/

namespace A089215.P4172471573221983686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A277813 n - 1).toNat + 1

end

end A089215.P4172471573221983686

namespace A089215

/-- `a(A277813(n)-1)+1` -/
def P4172471573221983686.Spec : Prop :=
  ∀ n, (P4172471573221983686.a n : ℤ) = A089215 (n + 1)

end A089215

/-! ## A089215.P2527821013662247035

`A010060(n)+a(floor(n/2))` with `a(0)=1`
-/

namespace A089215.P2527821013662247035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010060 n + a ⌊(n : ℚ) / 2⌋.toNat

end

end A089215.P2527821013662247035

namespace A089215

/-- `A010060(n)+a(floor(n/2))` -/
def P2527821013662247035.Spec : Prop :=
  ∀ n, P2527821013662247035.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P5181933463051428087

`A076826(n)+a(floor(n/4))` with `a(0)=1`
-/

namespace A089215.P5181933463051428087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076826 n + a ⌊(n : ℚ) / 4⌋.toNat

end

end A089215.P5181933463051428087

namespace A089215

/-- `A076826(n)+a(floor(n/4))` -/
def P5181933463051428087.Spec : Prop :=
  ∀ n, P5181933463051428087.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P12479830560123371883

`a(floor(n/2))+A001285(n)-1` with `a(0)=1`
-/

namespace A089215.P12479830560123371883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (A001285 n - 1)

end

end A089215.P12479830560123371883

namespace A089215

/-- `a(floor(n/2))+A001285(n)-1` -/
def P12479830560123371883.Spec : Prop :=
  ∀ n, P12479830560123371883.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P279762489365344365

`a(floor(n/2))+1-A010059(n)` with `a(0)=1`
-/

namespace A089215.P279762489365344365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - A010059 n)

end

end A089215.P279762489365344365

namespace A089215

/-- `a(floor(n/2))+1-A010059(n)` -/
def P279762489365344365.Spec : Prop :=
  ∀ n, P279762489365344365.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P11626824061181671660

`a(floor(n/2))+A000120(n)%2` with `a(0)=1`
-/

namespace A089215.P11626824061181671660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Int.tmod (A000120 n) 2

end

end A089215.P11626824061181671660

namespace A089215

/-- `a(floor(n/2))+A000120(n)%2` -/
def P11626824061181671660.Spec : Prop :=
  ∀ n, P11626824061181671660.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P10598252568340695311

`a(floor(n/2))+and(1, A004718(n))` with `a(0)=1`
-/

namespace A089215.P10598252568340695311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Int.land 1 (A004718 n)

end

end A089215.P10598252568340695311

namespace A089215

/-- `a(floor(n/2))+and(1, A004718(n))` -/
def P10598252568340695311.Spec : Prop :=
  ∀ n, P10598252568340695311.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P3416539417074514129

`A088748(A064707(n))`
-/

namespace A089215.P3416539417074514129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A064707 n).toNat

end

end A089215.P3416539417074514129

namespace A089215

/-- `A088748(A064707(n))` -/
def P3416539417074514129.Spec : Prop :=
  ∀ n, P3416539417074514129.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P8244730681219898656

`A005496(A209281(n+1))`
-/

namespace A089215.P8244730681219898656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A209281 (n + 1)).toNat

end

end A089215.P8244730681219898656

namespace A089215

/-- `A005496(A209281(n+1))` -/
def P8244730681219898656.Spec : Prop :=
  ∀ n, P8244730681219898656.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P3671031772798584477

`A290251(A233279(n))+1`
-/

namespace A089215.P3671031772798584477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A233279 n).toNat + 1

end

end A089215.P3671031772798584477

namespace A089215

/-- `A290251(A233279(n))+1` -/
def P3671031772798584477.Spec : Prop :=
  ∀ n, P3671031772798584477.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P14902939620474187892

`A070941(n)-A346633(n)`
-/

namespace A089215.P14902939620474187892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A346633 n

end

end A089215.P14902939620474187892

namespace A089215

/-- `A070941(n)-A346633(n)` -/
def P14902939620474187892.Spec : Prop :=
  ∀ n, P14902939620474187892.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P12270118983379298476

`A124754(n)+A346633(n)+1`
-/

namespace A089215.P12270118983379298476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n + (A346633 n + 1)

end

end A089215.P12270118983379298476

namespace A089215

/-- `A124754(n)+A346633(n)+1` -/
def P12270118983379298476.Spec : Prop :=
  ∀ n, P12270118983379298476.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P4137024182559069767

`A029837(n+1)+1-A346633(n)`
-/

namespace A089215.P4137024182559069767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (1 - A346633 n)

end

end A089215.P4137024182559069767

namespace A089215

/-- `A029837(n+1)+1-A346633(n)` -/
def P4137024182559069767.Spec : Prop :=
  ∀ n, P4137024182559069767.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P11032049257492081187

`A268716(n)-A005187(A006068(n))+1`
-/

namespace A089215.P11032049257492081187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268716 n - A005187 (A006068 n).toNat + 1

end

end A089215.P11032049257492081187

namespace A089215

/-- `A268716(n)-A005187(A006068(n))+1` -/
def P11032049257492081187.Spec : Prop :=
  ∀ n, P11032049257492081187.a n = A089215 (n + 1)

end A089215

/-! ## A089215.P12990446354802163471

`A000120(A006068(n))+1`
-/

namespace A089215.P12990446354802163471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006068 n).toNat + 1

end

end A089215.P12990446354802163471

namespace A089215

/-- `A000120(A006068(n))+1` -/
def P12990446354802163471.Spec : Prop :=
  ∀ n, P12990446354802163471.a n = A089215 (n + 1)

end A089215

/-!
# A089217: n-2 is a prime of the form 4*k+3.

The programs for A089217, the canonical program `A089217.P8919220155031244683` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089217 has offset 1).

The definition of A089217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089217.P8919220155031244683

`A087915(n+1)+A089193(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A089217

/-- `A087915(n+1)+A089193(n+1)` -/
def P8919220155031244683.Spec : Prop :=
  ∀ n, P8919220155031244683.a n = A089217 (n + 1)

theorem P8919220155031244683.correct : P8919220155031244683.Spec := by
  intro n
  simp only [A089217, Nat.add_sub_cancel]

end A089217

/-! ## A089217.P7606413396828409445

`p?[4*n-1]+2`
-/

namespace A089217.P7606413396828409445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A089217.P7606413396828409445

namespace A089217

/-- `p?[4*n-1]+2` -/
def P7606413396828409445.Spec : Prop :=
  ∀ n, P7606413396828409445.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P17024266590957810587

`or(1, p?[4*n+3]+1)`
-/

namespace A089217.P17024266590957810587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A089217.P17024266590957810587

namespace A089217

/-- `or(1, p?[4*n+3]+1)` -/
def P17024266590957810587.Spec : Prop :=
  ∀ n, (P17024266590957810587.a n : ℤ) = A089217 (n + 1)

end A089217

/-! ## A089217.P3510726795882401761

`xor(1, p?[4*n+3]+1)`
-/

namespace A089217.P3510726795882401761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A089217.P3510726795882401761

namespace A089217

/-- `xor(1, p?[4*n+3]+1)` -/
def P3510726795882401761.Spec : Prop :=
  ∀ n, (P3510726795882401761.a n : ℤ) = A089217 (n + 1)

end A089217

/-! ## A089217.P9412337466133837112

`∑{d}[p?[4*n+3], #]+1`
-/

namespace A089217.P9412337466133837112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + 1

end

end A089217.P9412337466133837112

namespace A089217

/-- `∑{d}[p?[4*n+3], #]+1` -/
def P9412337466133837112.Spec : Prop :=
  ∀ n, (P9412337466133837112.a n : ℤ) = A089217 (n + 1)

end A089217

/-! ## A089217.P15161716793007607223

`∏{d}[p?[4*n+3], #]+2`
-/

namespace A089217.P15161716793007607223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d + 2

end

end A089217.P15161716793007607223

namespace A089217

/-- `∏{d}[p?[4*n+3], #]+2` -/
def P15161716793007607223.Spec : Prop :=
  ∀ n, (P15161716793007607223.a n : ℤ) = A089217 (n + 1)

end A089217

/-! ## A089217.P10085439279975713698

`∑{p}[p?[4*n+3], #]+2`
-/

namespace A089217.P10085439279975713698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + 2

end

end A089217.P10085439279975713698

namespace A089217

/-- `∑{p}[p?[4*n+3], #]+2` -/
def P10085439279975713698.Spec : Prop :=
  ∀ n, (P10085439279975713698.a n : ℤ) = A089217 (n + 1)

end A089217

/-! ## A089217.P2047424363507364782

`∏{p}[p?[4*n+3], #]+2`
-/

namespace A089217.P2047424363507364782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + 2

end

end A089217.P2047424363507364782

namespace A089217

/-- `∏{p}[p?[4*n+3], #]+2` -/
def P2047424363507364782.Spec : Prop :=
  ∀ n, (P2047424363507364782.a n : ℤ) = A089217 (n + 1)

end A089217

/-! ## A089217.P3433689692036131440

`2*(p?[4*n+3]/2+1)`
-/

namespace A089217.P3433689692036131440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2 + 1)

end

end A089217.P3433689692036131440

namespace A089217

/-- `2*(p?[4*n+3]/2+1)` -/
def P3433689692036131440.Spec : Prop :=
  ∀ n, P3433689692036131440.a n = (A089217 (n + 1) : ℚ)

end A089217

/-! ## A089217.P15923371850279638984

`A090658(n+1)+1`
-/

namespace A089217.P15923371850279638984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090658 (n + 1) + 1

end

end A089217.P15923371850279638984

namespace A089217

/-- `A090658(n+1)+1` -/
def P15923371850279638984.Spec : Prop :=
  ∀ n, P15923371850279638984.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P9706854064791552055

`A002145(n+1)+2`
-/

namespace A089217.P9706854064791552055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + 2

end

end A089217.P9706854064791552055

namespace A089217

/-- `A002145(n+1)+2` -/
def P9706854064791552055.Spec : Prop :=
  ∀ n, P9706854064791552055.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P15774806645085811481

`A339900(Δ[n²])+2`
-/

namespace A089217.P15774806645085811481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A089217.P15774806645085811481

namespace A089217

/-- `A339900(Δ[n²])+2` -/
def P15774806645085811481.Spec : Prop :=
  ∀ n, P15774806645085811481.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P8558901007089958519

`sqrt(A087691(n+1))+2`
-/

namespace A089217.P8558901007089958519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087691 (n + 1) : ℝ) + 2

end

end A089217.P8558901007089958519

namespace A089217

/-- `sqrt(A087691(n+1))+2` -/
def P8558901007089958519.Spec : Prop :=
  ∀ n, P8558901007089958519.a n = (A089217 (n + 1) : ℝ)

end A089217

/-! ## A089217.P16044788272279468227

`2*A090670(n+1)-1`
-/

namespace A089217.P16044788272279468227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090670 (n + 1) - 1

end

end A089217.P16044788272279468227

namespace A089217

/-- `2*A090670(n+1)-1` -/
def P16044788272279468227.Spec : Prop :=
  ∀ n, P16044788272279468227.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P1616814435280932772

`4*A005099(n+1)+1`
-/

namespace A089217.P1616814435280932772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005099 (n + 1) + 1

end

end A089217.P1616814435280932772

namespace A089217

/-- `4*A005099(n+1)+1` -/
def P1616814435280932772.Spec : Prop :=
  ∀ n, P1616814435280932772.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P12503811278049602217

`2*A104635(n+1)+3`
-/

namespace A089217.P12503811278049602217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104635 (n + 1) + 3

end

end A089217.P12503811278049602217

namespace A089217

/-- `2*A104635(n+1)+3` -/
def P12503811278049602217.Spec : Prop :=
  ∀ n, P12503811278049602217.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P1978951236289745737

`2*A089257(n+1)-3`
-/

namespace A089217.P1978951236289745737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089257 (n + 1) - 3

end

end A089217.P1978951236289745737

namespace A089217

/-- `2*A089257(n+1)-3` -/
def P1978951236289745737.Spec : Prop :=
  ∀ n, P1978951236289745737.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P14955722723229415915

`2*A087915(n+1)+5`
-/

namespace A089217.P14955722723229415915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087915 (n + 1) + 5

end

end A089217.P14955722723229415915

namespace A089217

/-- `2*A087915(n+1)+5` -/
def P14955722723229415915.Spec : Prop :=
  ∀ n, P14955722723229415915.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P5732426783663526816

`2*A089193(n+1)-5`
-/

namespace A089217.P5732426783663526816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089193 (n + 1) - 5

end

end A089217.P5732426783663526816

namespace A089217

/-- `2*A089193(n+1)-5` -/
def P5732426783663526816.Spec : Prop :=
  ∀ n, P5732426783663526816.a n = A089217 (n + 1)

end A089217

/-! ## A089217.P8372709494259111856

`4*A156287(n+1)-3`
-/

namespace A089217.P8372709494259111856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A156287 (n + 1) - 3

end

end A089217.P8372709494259111856

namespace A089217

/-- `4*A156287(n+1)-3` -/
def P8372709494259111856.Spec : Prop :=
  ∀ n, P8372709494259111856.a n = A089217 (n + 1)

end A089217

/-!
# A089219: Numbers of the form (p0^x)(p1^(x+1))(p2^(x+2))...(pk^(x+k)), where x and k are positive integers and p0,p1,...,pk are primes with p0

The programs for A089219, there is no canonical definition to state claims against.
-/

/-! ## A089219.P14506534582975221724

`∩[A097319(n+1), A376249(n+1)]`
-/

namespace A089219.P14506534582975221724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089219.P14506534582975221724

/-! ## A089219.P16090671612809471449

`∩[A097319(n+1), A376251(n+1)]`
-/

namespace A089219.P16090671612809471449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089219.P16090671612809471449

/-! ## A089219.P8238738250167062543

`eq[6, A249026(A077462(n))]`
-/

namespace A089219.P8238738250167062543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089219.P8238738250167062543

/-! ## A089219.P17945861940728350601

`A097319(record[A097154(n+1)])`
-/

namespace A089219.P17945861940728350601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089219.P17945861940728350601

/-!
# A089221: a(n) = floor(sqrt(((prime(n) + primepi(n))/2)^2 + prime(n)*primepi(n))).

The programs for A089221, there is no canonical definition to state claims against.
-/

/-! ## A089221.P2547082068933258404

`A111660(A004683(n+1))+A000720(n+1)`
-/

namespace A089221.P2547082068933258404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A004683 (n + 1)).toNat + A000720 (n + 1)

end

end A089221.P2547082068933258404

/-! ## A089221.P4158404846570090351

`A111660(A004683(n+1))+∑[A283991(n+1)]`
-/

namespace A089221.P4158404846570090351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A004683 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089221.P4158404846570090351

/-! ## A089221.P5553769047699449478

`lt[A351552(A349387(n+1)), A000203(n+1)]`
-/

namespace A089221.P5553769047699449478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351552 (A349387 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089221.P5553769047699449478

/-! ## A089221.P8003820378172280592

`lt[A351552(A349387(n+1)), A039653(n+1)+1]`
-/

namespace A089221.P8003820378172280592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351552 (A349387 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089221.P8003820378172280592

/-!
# A089222: Number of ways of seating n people around a table for the second time without anyone sitting next to the same person as they did the first time.

The programs for A089222, there is no canonical definition to state claims against.
-/

/-! ## A089222.P5660247944459155789

`floor(2/acot(n))*A326411(∑[n])`
-/

namespace A089222.P5660247944459155789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A326411 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089222.P5660247944459155789

/-! ## A089222.P15737219487694199183

`A004277(n)*A326411(A000217(n))`
-/

namespace A089222.P15737219487694199183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A326411 (A000217 n).toNat

end

end A089222.P15737219487694199183

/-! ## A089222.P4326842591380708719

`A326390(∑[n])`
-/

namespace A089222.P4326842591380708719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089222.P4326842591380708719

/-! ## A089222.P3525051414134884559

`and(-1, A326390(C(n+1, 2)))`
-/

namespace A089222.P3525051414134884559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A326390 (Nat.choose (n + 1) 2))

end

end A089222.P3525051414134884559

/-! ## A089222.P13242679533221210777

`and(-1, A326390(n²-C(n, 2)))`
-/

namespace A089222.P13242679533221210777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A326390 (n ^ 2 - Nat.choose n 2))

end

end A089222.P13242679533221210777

/-!
# A089223: a(n) = floor(Product_{i=1..n} log(prime(i+1))/log(i+1)).

The programs for A089223, there is no canonical definition to state claims against.
-/

/-! ## A089223.P11827802114414108988

`∑[A144409(A034856(n+1))]+floor(n/5)`
-/

namespace A089223.P11827802114414108988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144409 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 5⌋

end

end A089223.P11827802114414108988

/-! ## A089223.P9694907937378957912

`A153178(n)+A000196(A018007(n))`
-/

namespace A089223.P9694907937378957912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153178 n + A000196 (A018007 n).toNat

end

end A089223.P9694907937378957912

/-! ## A089223.P4333182595029805358

`A000196(A161713(n)+A026701(n))`
-/

namespace A089223.P4333182595029805358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A161713 n + A026701 n).toNat

end

end A089223.P4333182595029805358

/-! ## A089223.P16795267907729162567

`A079643(A131352(n))+A002266(n)`
-/

namespace A089223.P16795267907729162567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A131352 n).toNat + A002266 n

end

end A089223.P16795267907729162567

/-! ## A089223.P9341516404239751012

`A000194(∑[A083579(n)+A032234(n)])`
-/

namespace A089223.P9341516404239751012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083579 n + A032234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089223.P9341516404239751012

/-!
# A089224: In binary representation: number of zeros of number of zeros of n.

The programs for A089224, the canonical program `A089224.P1820326694042210811` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089224 has offset 0).

The definition of A089224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089224.P1820326694042210811

`A023416(A023416(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089224

/-- `A023416(A023416(n))` -/
def P1820326694042210811.Spec : Prop :=
  ∀ n, P1820326694042210811.a n = A089224 n

theorem P1820326694042210811.correct : P1820326694042210811.Spec := by
  intro n
  simp only [A089224]

end A089224

/-! ## A089224.P7930011580136344477

`val(A176893(val(A176893(n), 2)), 2)`
-/

namespace A089224.P7930011580136344477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176893 (SequenceMachineLib.valuation (A176893 n).toNat 2)).toNat 2

end

end A089224.P7930011580136344477

namespace A089224

/-- `val(A176893(val(A176893(n), 2)), 2)` -/
def P7930011580136344477.Spec : Prop :=
  ∀ n, (P7930011580136344477.a n : ℤ) = A089224 n

end A089224

/-! ## A089224.P2831113086905410384

`A080791(A080791(n)+A069517(n+1))`
-/

namespace A089224.P2831113086905410384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A080791 n + A069517 (n + 1)).toNat

end

end A089224.P2831113086905410384

namespace A089224

/-- `A080791(A080791(n)+A069517(n+1))` -/
def P2831113086905410384.Spec : Prop :=
  ∀ n, P2831113086905410384.a n = A089224 n

end A089224

/-! ## A089224.P3583689253025813301

`A080791(A080791(n))+and(n, A036987(n))`
-/

namespace A089224.P3583689253025813301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A080791 n).toNat + Int.land (n : ℤ) (A036987 n)

end

end A089224.P3583689253025813301

namespace A089224

/-- `A080791(A080791(n))+and(n, A036987(n))` -/
def P3583689253025813301.Spec : Prop :=
  ∀ n, P3583689253025813301.a n = A089224 n

end A089224

/-! ## A089224.P14745971111057328571

`A000120(A035327(A000120(A035327(n))))`
-/

namespace A089224.P14745971111057328571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 (A000120 (A035327 n).toNat).toNat).toNat

end

end A089224.P14745971111057328571

namespace A089224

/-- `A000120(A035327(A000120(A035327(n))))` -/
def P14745971111057328571.Spec : Prop :=
  ∀ n, P14745971111057328571.a n = A089224 n

end A089224

/-! ## A089224.P17357671907962678889

`A008687(A008687(n+1))-A036987(A048298(n+1))`
-/

namespace A089224.P17357671907962678889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A008687 (n + 1)).toNat - A036987 (A048298 (n + 1)).toNat

end

end A089224.P17357671907962678889

namespace A089224

/-- `A008687(A008687(n+1))-A036987(A048298(n+1))` -/
def P17357671907962678889.Spec : Prop :=
  ∀ n, P17357671907962678889.a n = A089224 n

end A089224

/-! ## A089224.P3202741891145197256

`A000120(A036044(A000120(A036044(n))))`
-/

namespace A089224.P3202741891145197256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A036044 (A000120 (A036044 n).toNat).toNat).toNat

end

end A089224.P3202741891145197256

namespace A089224

/-- `A000120(A036044(A000120(A036044(n))))` -/
def P3202741891145197256.Spec : Prop :=
  ∀ n, P3202741891145197256.a n = A089224 n

end A089224

/-! ## A089224.P12276933643686360594

`A080791(A080791(A052548(A080791(2*n))))`
-/

namespace A089224.P12276933643686360594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A080791 (A052548 (A080791 (2 * n)).toNat).toNat).toNat

end

end A089224.P12276933643686360594

namespace A089224

/-- `A080791(A080791(A052548(A080791(2*n))))` -/
def P12276933643686360594.Spec : Prop :=
  ∀ n, P12276933643686360594.a n = A089224 n

end A089224

/-! ## A089224.P16224577893032851163

`A037861(A124108(A037861(A124108(n))))`
-/

namespace A089224.P16224577893032851163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A124108 (A037861 (A124108 n).toNat).toNat).toNat

end

end A089224.P16224577893032851163

namespace A089224

/-- `A037861(A124108(A037861(A124108(n))))` -/
def P16224577893032851163.Spec : Prop :=
  ∀ n, P16224577893032851163.a n = A089224 n

end A089224

/-! ## A089224.P9126125021637583600

`A080791(A080791(A263991(n+1)+2*n))`
-/

namespace A089224.P9126125021637583600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A080791 (A263991 (n + 1) + (2 * n : ℤ)).toNat).toNat

end

end A089224.P9126125021637583600

namespace A089224

/-- `A080791(A080791(A263991(n+1)+2*n))` -/
def P9126125021637583600.Spec : Prop :=
  ∀ n, P9126125021637583600.a n = A089224 n

end A089224

/-!
# A089226: Smallest composite number with exactly n 1's in binary representation.

The programs for A089226, there is no canonical definition to state claims against.
-/

/-! ## A089226.P17261516351545767699

`ceil(acot(n))²*A140330(n+1)`
-/

namespace A089226.P17261516351545767699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 2 * A140330 (n + 1)

end

end A089226.P17261516351545767699

/-! ## A089226.P1429393758246991026

`A054977(n)²*A140330(n+1)`
-/

namespace A089226.P1429393758246991026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n ^ 2 * A140330 (n + 1)

end

end A089226.P1429393758246991026

/-! ## A089226.P696889008355829763

`A140330(n+1)+3*A000007(n)`
-/

namespace A089226.P696889008355829763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140330 (n + 1) + 3 * A000007 n

end

end A089226.P696889008355829763

/-! ## A089226.P3535554004178176900

`gcd(4, A004273(n))*A140330(n+1)`
-/

namespace A089226.P3535554004178176900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A004273 n) : ℤ) * A140330 (n + 1)

end

end A089226.P3535554004178176900

/-! ## A089226.P16808698867006016496

`or(a(A228087(n)), A140330(n+1))` with `a(0)=4`
-/

namespace A089226.P16808698867006016496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor (a (A228087 n).toNat) (A140330 (n + 1))

end

end A089226.P16808698867006016496

/-!
# A089227: Numbers k such that 1 + k*ds(k) is prime, where ds(k) is the sum of digits of k.

The programs for A089227, the canonical program `A089227.P4238158558686104572` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089227 has offset 1).

The definition of A089227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089227.P9482121909898690600

`eq[1, A001222(n*A007953(n)+1)]`
-/

namespace A089227.P9482121909898690600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) * A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089227.P9482121909898690600

namespace A089227

/-- `eq[1, A001222(n*A007953(n)+1)]` -/
def P9482121909898690600.Spec : Prop :=
  ∀ n, (P9482121909898690600.a n : ℤ) = A089227 (n + 1)

end A089227

/-! ## A089227.P4238158558686104572

`eq[1, A010051(n*A007953(n)+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089227

/-- `eq[1, A010051(n*A007953(n)+1)]` -/
def P4238158558686104572.Spec : Prop :=
  ∀ n, (P4238158558686104572.a n : ℤ) = A089227 (n + 1)

theorem P4238158558686104572.correct : P4238158558686104572.Spec := by
  intro n
  simp only [A089227, Nat.add_sub_cancel]

end A089227

/-! ## A089227.P9830438461552144554

`eq[2, A000005(n*A007953(n)+1)]`
-/

namespace A089227.P9830438461552144554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) * A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089227.P9830438461552144554

namespace A089227

/-- `eq[2, A000005(n*A007953(n)+1)]` -/
def P9830438461552144554.Spec : Prop :=
  ∀ n, (P9830438461552144554.a n : ℤ) = A089227 (n + 1)

end A089227

/-! ## A089227.P6813496540457892237

`record[(n+1)*A010051((n+1)*A007953(n+1)+1)]`
-/

namespace A089227.P6813496540457892237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 ((n + 1 : ℤ) * A007953 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089227.P6813496540457892237

namespace A089227

/-- `record[(n+1)*A010051((n+1)*A007953(n+1)+1)]` -/
def P6813496540457892237.Spec : Prop :=
  ∀ n, P6813496540457892237.a n = A089227 (n + 1)

end A089227

/-! ## A089227.P6866855821088482890

`record[(n+1)/A001222((n+1)*A007953(n+1)+1)]`
-/

namespace A089227.P6866855821088482890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 ((n + 1 : ℤ) * A007953 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089227.P6866855821088482890

namespace A089227

/-- `record[(n+1)/A001222((n+1)*A007953(n+1)+1)]` -/
def P6866855821088482890.Spec : Prop :=
  ∀ n, P6866855821088482890.a n = (A089227 (n + 1) : ℚ)

end A089227

/-! ## A089227.P4838958408556578911

`lt[A072480(A057147(n)+1), 1]`
-/

namespace A089227.P4838958408556578911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A057147 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089227.P4838958408556578911

namespace A089227

/-- `lt[A072480(A057147(n)+1), 1]` -/
def P4838958408556578911.Spec : Prop :=
  ∀ n, (P4838958408556578911.a n : ℤ) = A089227 (n + 1)

end A089227

/-! ## A089227.P5411438920037329072

`eq[1, A007920(n*A007953(n))]`
-/

namespace A089227.P5411438920037329072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 ((n : ℤ) * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089227.P5411438920037329072

namespace A089227

/-- `eq[1, A007920(n*A007953(n))]` -/
def P5411438920037329072.Spec : Prop :=
  ∀ n, (P5411438920037329072.a n : ℤ) = A089227 (n + 1)

end A089227

/-! ## A089227.P16316909159063450440

`eq[1, A013632(n*A007953(n))]`
-/

namespace A089227.P16316909159063450440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 ((n : ℤ) * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089227.P16316909159063450440

namespace A089227

/-- `eq[1, A013632(n*A007953(n))]` -/
def P16316909159063450440.Spec : Prop :=
  ∀ n, (P16316909159063450440.a n : ℤ) = A089227 (n + 1)

end A089227

/-! ## A089227.P15544231420753183458

`eq[A109606(A057147(n)+1)+1, A057147(n)]`
-/

namespace A089227.P15544231420753183458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A057147 n + 1).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089227.P15544231420753183458

namespace A089227

/-- `eq[A109606(A057147(n)+1)+1, A057147(n)]` -/
def P15544231420753183458.Spec : Prop :=
  ∀ n, (P15544231420753183458.a n : ℤ) = A089227 (n + 1)

end A089227

/-! ## A089227.P13504817824401034288

`eq[2, A190014(A057147(n)+2)]`
-/

namespace A089227.P13504817824401034288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (A057147 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089227.P13504817824401034288

namespace A089227

/-- `eq[2, A190014(A057147(n)+2)]` -/
def P13504817824401034288.Spec : Prop :=
  ∀ n, (P13504817824401034288.a n : ℤ) = A089227 (n + 1)

end A089227

/-!
# A089228: Numbers m such that 1 + Sum_{k=1..m} prime(k) is prime.

The programs for A089228, there is no canonical definition to state claims against.
-/

/-! ## A089228.P1968269580815130124

`eq[1, ∑{e}[A007504(n)+1, #]]`
-/

namespace A089228.P1968269580815130124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089228.P1968269580815130124

/-! ## A089228.P5125821462115546407

`eq[2, ∑{e}[∑[A112773(n+1)], #]]`
-/

namespace A089228.P5125821462115546407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089228.P5125821462115546407

/-! ## A089228.P7772605722921468441

`eq[1, A088123(n+1)]+1`
-/

namespace A089228.P7772605722921468441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089228.P7772605722921468441

/-! ## A089228.P17844509427504360963

`record[A000027(n+1)/A088123(n+1)]`
-/

namespace A089228.P17844509427504360963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A088123 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089228.P17844509427504360963

/-! ## A089228.P13793134100512993087

`lt[A088123(n+1), A089128(3*n+2)]+1`
-/

namespace A089228.P13793134100512993087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089228.P13793134100512993087

/-!
# A089229: Neither primes nor square numbers.

The programs for A089229, the canonical program `A089229.P6090230356470162113` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089229 has offset 1).

The definition of A089229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089229.P2936046570500647269

`comp[A089237(n+1)]`
-/

namespace A089229.P2936046570500647269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A089229.P2936046570500647269

namespace A089229

/-- `comp[A089237(n+1)]` -/
def P2936046570500647269.Spec : Prop :=
  ∀ n, (P2936046570500647269.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P6090230356470162113

`comp[∪[A000040(n+1), n²]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089229

/-- `comp[∪[A000040(n+1), n²]]` -/
def P6090230356470162113.Spec : Prop :=
  ∀ n, (P6090230356470162113.a n : ℤ) = A089229 (n + 1)

theorem P6090230356470162113.correct : P6090230356470162113.Spec := by
  intro n
  simp only [A089229, Nat.add_sub_cancel]

end A089229

/-! ## A089229.P8349712689078508339

`comp[∪[A008578(n+1), n²]]`
-/

namespace A089229.P8349712689078508339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A089229.P8349712689078508339

namespace A089229

/-- `comp[∪[A008578(n+1), n²]]` -/
def P8349712689078508339.Spec : Prop :=
  ∀ n, (P8349712689078508339.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P3310666423617402166

`comp[∪[A158611(n+1), n²]]`
-/

namespace A089229.P3310666423617402166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A089229.P3310666423617402166

namespace A089229

/-- `comp[∪[A158611(n+1), n²]]` -/
def P3310666423617402166.Spec : Prop :=
  ∀ n, (P3310666423617402166.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P2059646258111769171

`comp[∪[A182986(n+1), n²]]`
-/

namespace A089229.P2059646258111769171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A089229.P2059646258111769171

namespace A089229

/-- `comp[∪[A182986(n+1), n²]]` -/
def P2059646258111769171.Spec : Prop :=
  ∀ n, (P2059646258111769171.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P14593807751880222026

`∪[A007624(n+1), A030513(n+1)]`
-/

namespace A089229.P14593807751880222026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089229.P14593807751880222026

namespace A089229

/-- `∪[A007624(n+1), A030513(n+1)]` -/
def P14593807751880222026.Spec : Prop :=
  ∀ n, (P14593807751880222026.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P13040561801756919010

`∪[A007624(n+1), A065985(n+1)]`
-/

namespace A089229.P13040561801756919010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089229.P13040561801756919010

namespace A089229

/-- `∪[A007624(n+1), A065985(n+1)]` -/
def P13040561801756919010.Spec : Prop :=
  ∀ n, (P13040561801756919010.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P17000618963763940673

`∪[A051144(n+1), A069116(n+1)]`
-/

namespace A089229.P17000618963763940673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089229.P17000618963763940673

namespace A089229

/-- `∪[A051144(n+1), A069116(n+1)]` -/
def P17000618963763940673.Spec : Prop :=
  ∀ n, (P17000618963763940673.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P16897892053675087344

`∪[A051144(n+1), A080363(n+1)]`
-/

namespace A089229.P16897892053675087344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089229.P16897892053675087344

namespace A089229

/-- `∪[A051144(n+1), A080363(n+1)]` -/
def P16897892053675087344.Spec : Prop :=
  ∀ n, (P16897892053675087344.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P10501650685233433401

`filter[A139118(n+1), A049240(#)]`
-/

namespace A089229.P10501650685233433401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P10501650685233433401

namespace A089229

/-- `filter[A139118(n+1), A049240(#)]` -/
def P10501650685233433401.Spec : Prop :=
  ∀ n, P10501650685233433401.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P5172871660466418457

`filter[A268388(n+1), A049240(#)]`
-/

namespace A089229.P5172871660466418457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P5172871660466418457

namespace A089229

/-- `filter[A268388(n+1), A049240(#)]` -/
def P5172871660466418457.Spec : Prop :=
  ∀ n, P5172871660466418457.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P7674514045642405617

`filter[A080257(n+1), A049240(#)]`
-/

namespace A089229.P7674514045642405617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P7674514045642405617

namespace A089229

/-- `filter[A080257(n+1), A049240(#)]` -/
def P7674514045642405617.Spec : Prop :=
  ∀ n, P7674514045642405617.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P2876788487621805468

`filter[A002808(n+2), A049240(#)]`
-/

namespace A089229.P2876788487621805468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P2876788487621805468

namespace A089229

/-- `filter[A002808(n+2), A049240(#)]` -/
def P2876788487621805468.Spec : Prop :=
  ∀ n, P2876788487621805468.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P14677263228247606454

`filter[A018252(n+3), A049240(#)]`
-/

namespace A089229.P14677263228247606454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P14677263228247606454

namespace A089229

/-- `filter[A018252(n+3), A049240(#)]` -/
def P14677263228247606454.Spec : Prop :=
  ∀ n, P14677263228247606454.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P5413734368670158387

`filter[A056653(n+1), A049240(#)]`
-/

namespace A089229.P5413734368670158387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P5413734368670158387

namespace A089229

/-- `filter[A056653(n+1), A049240(#)]` -/
def P5413734368670158387.Spec : Prop :=
  ∀ n, P5413734368670158387.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P9926387261745551289

`filter[A141468(n+3), A049240(#)]`
-/

namespace A089229.P9926387261745551289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P9926387261745551289

namespace A089229

/-- `filter[A141468(n+3), A049240(#)]` -/
def P9926387261745551289.Spec : Prop :=
  ∀ n, P9926387261745551289.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P6314436053396977408

`filter[A222307(2*n+1), A049240(#)]`
-/

namespace A089229.P6314436053396977408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P6314436053396977408

namespace A089229

/-- `filter[A222307(2*n+1), A049240(#)]` -/
def P6314436053396977408.Spec : Prop :=
  ∀ n, P6314436053396977408.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P17442187590878568217

`filter[A065090(n+3), A049240(#)]`
-/

namespace A089229.P17442187590878568217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A089229.P17442187590878568217

namespace A089229

/-- `filter[A065090(n+3), A049240(#)]` -/
def P17442187590878568217.Spec : Prop :=
  ∀ n, P17442187590878568217.a n = A089229 (n + 1)

end A089229

/-! ## A089229.P2403866414118083303

`∩[A002808(n+1), comp[n²]]`
-/

namespace A089229.P2403866414118083303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A089229.P2403866414118083303

namespace A089229

/-- `∩[A002808(n+1), comp[n²]]` -/
def P2403866414118083303.Spec : Prop :=
  ∀ n, (P2403866414118083303.a n : ℤ) = A089229 (n + 1)

end A089229

/-! ## A089229.P14694273243161191900

`∩[A018252(n+1), comp[n²]]`
-/

namespace A089229.P14694273243161191900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A089229.P14694273243161191900

namespace A089229

/-- `∩[A018252(n+1), comp[n²]]` -/
def P14694273243161191900.Spec : Prop :=
  ∀ n, (P14694273243161191900.a n : ℤ) = A089229 (n + 1)

end A089229

/-!
# A089230: a(n) =[Floor[Sum[Log[Prime[n+1]]/Log[n+1],{i,1,n}]].

The programs for A089230, there is no canonical definition to state claims against.
-/

/-! ## A089230.P17819723357731277070

`A002265(A007401(2*n+3)+A003152(2*n+1))`
-/

namespace A089230.P17819723357731277070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A007401 (2 * n + 3) + A003152 (2 * n + 1)).toNat

end

end A089230.P17819723357731277070

/-! ## A089230.P9802103578567655268

`A003056(A007491(n+1)+A204454(n+1)-(n+1)%A290263(n+1))`
-/

namespace A089230.P9802103578567655268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A007491 (n + 1) + (A204454 (n + 1) - Int.tmod (n + 1 : ℤ) (A290263 (n + 1)))).toNat

end

end A089230.P9802103578567655268

/-! ## A089230.P11932643601394284871

`A004526(A309077(n+1)+A184809(n+1))`
-/

namespace A089230.P11932643601394284871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A309077 (n + 1) + A184809 (n + 1)).toNat

end

end A089230.P11932643601394284871

/-! ## A089230.P41878849884778524

`A002024(∑[A182115(2*n+1)])`
-/

namespace A089230.P41878849884778524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182115 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089230.P41878849884778524

/-! ## A089230.P3972193051854875178

`A123578(∑[A182115(2*n+1)])`
-/

namespace A089230.P3972193051854875178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182115 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089230.P3972193051854875178

/-!
# A089231: Triangular array A066667 or A008297 unsigned and transposed.

The programs for A089231, the canonical program `A089231.P18314841228183022687` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089231 has offset 1).

The definition of A089231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089231.P18314841228183022687

`A008279(n)*A074909(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A089231

/-- `A008279(n)*A074909(n)` -/
def P18314841228183022687.Spec : Prop :=
  ∀ n, P18314841228183022687.a n = A089231 (n + 1)

theorem P18314841228183022687.correct : P18314841228183022687.Spec := by
  intro n
  simp only [A089231, Nat.add_sub_cancel]

end A089231

/-! ## A089231.P8724048011045274420

`A132813(n)*A233543(n)`
-/

namespace A089231.P8724048011045274420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 n * A233543 n

end

end A089231.P8724048011045274420

namespace A089231

/-- `A132813(n)*A233543(n)` -/
def P8724048011045274420.Spec : Prop :=
  ∀ n, P8724048011045274420.a n = A089231 (n + 1)

end A089231

/-! ## A089231.P5902531648369574153

`A007318(n)*A181511(n+1)`
-/

namespace A089231.P5902531648369574153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A181511 (n + 1)

end

end A089231.P5902531648369574153

namespace A089231

/-- `A007318(n)*A181511(n+1)` -/
def P5902531648369574153.Spec : Prop :=
  ∀ n, P5902531648369574153.a n = A089231 (n + 1)

end A089231

/-! ## A089231.P17794730076568954320

`A001263(n+1)*A166350(n+1)`
-/

namespace A089231.P17794730076568954320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A166350 (n + 1)

end

end A089231.P17794730076568954320

namespace A089231

/-- `A001263(n+1)*A166350(n+1)` -/
def P17794730076568954320.Spec : Prop :=
  ∀ n, P17794730076568954320.a n = A089231 (n + 1)

end A089231

/-! ## A089231.P8995529427343949578

`A001263(n+1)/A007318(n)*A121757(n)`
-/

namespace A089231.P8995529427343949578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A121757 n : ℚ)

end

end A089231.P8995529427343949578

namespace A089231

/-- `A001263(n+1)/A007318(n)*A121757(n)` -/
def P8995529427343949578.Spec : Prop :=
  ∀ n, P8995529427343949578.a n = (A089231 (n + 1) : ℚ)

end A089231

/-! ## A089231.P6711081917013844888

`A105278(A038722(n+1))`
-/

namespace A089231.P6711081917013844888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A038722 (n + 1)).toNat

end

end A089231.P6711081917013844888

namespace A089231

/-- `A105278(A038722(n+1))` -/
def P6711081917013844888.Spec : Prop :=
  ∀ n, P6711081917013844888.a n = A089231 (n + 1)

end A089231

/-! ## A089231.P9993678498988811699

`A271703(A099375(n)+1+n)`
-/

namespace A089231.P9993678498988811699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A099375 n + 1 + (n : ℤ)).toNat

end

end A089231.P9993678498988811699

namespace A089231

/-- `A271703(A099375(n)+1+n)` -/
def P9993678498988811699.Spec : Prop :=
  ∀ n, P9993678498988811699.a n = A089231 (n + 1)

end A089231

/-! ## A089231.P10113560311878171801

`A105278(A002024(n+1)²-n)`
-/

namespace A089231.P10113560311878171801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A089231.P10113560311878171801

namespace A089231

/-- `A105278(A002024(n+1)²-n)` -/
def P10113560311878171801.Spec : Prop :=
  ∀ n, P10113560311878171801.a n = A089231 (n + 1)

end A089231

/-! ## A089231.P8113949258597686465

`A271703(2*A004736(n+1)+n)`
-/

namespace A089231.P8113949258597686465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A089231.P8113949258597686465

namespace A089231

/-- `A271703(2*A004736(n+1)+n)` -/
def P8113949258597686465.Spec : Prop :=
  ∀ n, P8113949258597686465.a n = A089231 (n + 1)

end A089231

/-! ## A089231.P10645520166933687232

`A271703(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A089231.P10645520166933687232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A089231.P10645520166933687232

namespace A089231

/-- `A271703(A004736(n+1)+A004736(n+1)+n)` -/
def P10645520166933687232.Spec : Prop :=
  ∀ n, P10645520166933687232.a n = A089231 (n + 1)

end A089231

/-! ## A089231.P7404769830591611889

`A007318(n)/A009766(n)*A113025(n)`
-/

namespace A089231.P7404769830591611889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A009766 n : ℚ) * (A113025 n : ℚ)

end

end A089231.P7404769830591611889

namespace A089231

/-- `A007318(n)/A009766(n)*A113025(n)` -/
def P7404769830591611889.Spec : Prop :=
  ∀ n, P7404769830591611889.a n = (A089231 (n + 1) : ℚ)

end A089231

/-! ## A089231.P11149869009789424037

`A007318(n)*A124774(A099627(n))`
-/

namespace A089231.P11149869009789424037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A124774 (A099627 n).toNat

end

end A089231.P11149869009789424037

namespace A089231

/-- `A007318(n)*A124774(A099627(n))` -/
def P11149869009789424037.Spec : Prop :=
  ∀ n, P11149869009789424037.a n = A089231 (n + 1)

end A089231

/-!
# A089233: Number of coprime pairs of divisors > 1 of n.

The programs for A089233, the canonical program `A089233.P13957741673571392928` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089233 has offset 1).

The definition of A089233 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A018892, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089233.P13957741673571392928

`A018892(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A089233

/-- `A018892(n+1)-A000005(n+1)` -/
def P13957741673571392928.Spec : Prop :=
  ∀ n, P13957741673571392928.a n = A089233 (n + 1)

theorem P13957741673571392928.correct : P13957741673571392928.Spec := by
  intro n
  simp only [A089233, Nat.add_sub_cancel]

end A089233

/-! ## A089233.P15542673544697000820

`A063647(n+1)-A000005(n+1)+1`
-/

namespace A089233.P15542673544697000820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) - A000005 (n + 1) + 1

end

end A089233.P15542673544697000820

namespace A089233

/-- `A063647(n+1)-A000005(n+1)+1` -/
def P15542673544697000820.Spec : Prop :=
  ∀ n, P15542673544697000820.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P15782311859972397996

`A055205(n+1)-A063647(n+1)`
-/

namespace A089233.P15782311859972397996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055205 (n + 1) - A063647 (n + 1)

end

end A089233.P15782311859972397996

namespace A089233

/-- `A055205(n+1)-A063647(n+1)` -/
def P15782311859972397996.Spec : Prop :=
  ∀ n, P15782311859972397996.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P16938764969992330831

`A066446(n+1)-A333976(n+1)`
-/

namespace A089233.P16938764969992330831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A333976 (n + 1)

end

end A089233.P16938764969992330831

namespace A089233

/-- `A066446(n+1)-A333976(n+1)` -/
def P16938764969992330831.Spec : Prop :=
  ∀ n, P16938764969992330831.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P538495345881813330

`A394997(n+1)-A065814(n+1)`
-/

namespace A089233.P538495345881813330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394997 (n + 1) - A065814 (n + 1)

end

end A089233.P538495345881813330

namespace A089233

/-- `A394997(n+1)-A065814(n+1)` -/
def P538495345881813330.Spec : Prop :=
  ∀ n, P538495345881813330.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P12230649362858686588

`A356574(n+1)%A018892(n+1)`
-/

namespace A089233.P12230649362858686588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356574 (n + 1)) (A018892 (n + 1))

end

end A089233.P12230649362858686588

namespace A089233

/-- `A356574(n+1)%A018892(n+1)` -/
def P12230649362858686588.Spec : Prop :=
  ∀ n, P12230649362858686588.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P3975129763641766291

`∑{d}[n+1, A000010(A034444(#))-1]`
-/

namespace A089233.P3975129763641766291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (A034444 d).toNat - 1)

end

end A089233.P3975129763641766291

namespace A089233

/-- `∑{d}[n+1, A000010(A034444(#))-1]` -/
def P3975129763641766291.Spec : Prop :=
  ∀ n, P3975129763641766291.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P1052058278720013901

`ceil((A055205(n+1)-A000005(n+1))/2)`
-/

namespace A089233.P1052058278720013901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055205 (n + 1) - A000005 (n + 1) : ℚ) / 2⌉

end

end A089233.P1052058278720013901

namespace A089233

/-- `ceil((A055205(n+1)-A000005(n+1))/2)` -/
def P1052058278720013901.Spec : Prop :=
  ∀ n, P1052058278720013901.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P15519311806050189742

`∑{d}[n+1, A008966(#)*A262202((n+1)/#)]`
-/

namespace A089233.P15519311806050189742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A262202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A089233.P15519311806050189742

namespace A089233

/-- `∑{d}[n+1, A008966(#)*A262202((n+1)/#)]` -/
def P15519311806050189742.Spec : Prop :=
  ∀ n, P15519311806050189742.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P16006806100546720068

`∑{d}[n+1, A034444(#)*A353669((n+1)/#)]`
-/

namespace A089233.P16006806100546720068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A353669 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A089233.P16006806100546720068

namespace A089233

/-- `∑{d}[n+1, A034444(#)*A353669((n+1)/#)]` -/
def P16006806100546720068.Spec : Prop :=
  ∀ n, P16006806100546720068.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P6445583167757317352

`A006218(n)-(A006218(n+1)-A018892(n+1))`
-/

namespace A089233.P6445583167757317352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (A006218 (n + 1) - A018892 (n + 1))

end

end A089233.P6445583167757317352

namespace A089233

/-- `A006218(n)-(A006218(n+1)-A018892(n+1))` -/
def P6445583167757317352.Spec : Prop :=
  ∀ n, P6445583167757317352.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P4297050872136050935

`A018892(n+1)+A066446(n+1)-A184389(n+1)`
-/

namespace A089233.P4297050872136050935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) + (A066446 (n + 1) - A184389 (n + 1))

end

end A089233.P4297050872136050935

namespace A089233

/-- `A018892(n+1)+A066446(n+1)-A184389(n+1)` -/
def P4297050872136050935.Spec : Prop :=
  ∀ n, P4297050872136050935.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P6492055727614157368

`A184389(n+1)-(A333976(n+1)+A000005(n+1))`
-/

namespace A089233.P6492055727614157368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - (A333976 (n + 1) + A000005 (n + 1))

end

end A089233.P6492055727614157368

namespace A089233

/-- `A184389(n+1)-(A333976(n+1)+A000005(n+1))` -/
def P6492055727614157368.Spec : Prop :=
  ∀ n, P6492055727614157368.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P9315690005892408463

`round(A000005((n+1)²)/2)-Δ[A006218(n)]`
-/

namespace A089233.P9315690005892408463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 ((n + 1) ^ 2) : ℚ) / 2) - (f1 (n + 1) - f1 n)

end

end A089233.P9315690005892408463

namespace A089233

/-- `round(A000005((n+1)²)/2)-Δ[A006218(n)]` -/
def P9315690005892408463.Spec : Prop :=
  ∀ n, P9315690005892408463.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P13919520135716404535

`A262202(A140651(n+1))`
-/

namespace A089233.P13919520135716404535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (A140651 (n + 1)).toNat

end

end A089233.P13919520135716404535

namespace A089233

/-- `A262202(A140651(n+1))` -/
def P13919520135716404535.Spec : Prop :=
  ∀ n, P13919520135716404535.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P3591895833021818394

`A262202(A170826(n+1))`
-/

namespace A089233.P3591895833021818394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (A170826 (n + 1)).toNat

end

end A089233.P3591895833021818394

namespace A089233

/-- `A262202(A170826(n+1))` -/
def P3591895833021818394.Spec : Prop :=
  ∀ n, P3591895833021818394.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P3321220565891082586

`A262202(A103390(n+2))`
-/

namespace A089233.P3321220565891082586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (A103390 (n + 2)).toNat

end

end A089233.P3321220565891082586

namespace A089233

/-- `A262202(A103390(n+2))` -/
def P3321220565891082586.Spec : Prop :=
  ∀ n, P3321220565891082586.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P782194201356534286

`A262202((n+1)²)`
-/

namespace A089233.P782194201356534286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 ((n + 1) ^ 2)

end

end A089233.P782194201356534286

namespace A089233

/-- `A262202((n+1)²)` -/
def P782194201356534286.Spec : Prop :=
  ∀ n, P782194201356534286.a n = A089233 (n + 1)

end A089233

/-! ## A089233.P4820182381673810927

`A038548((n+1)²)-A000005(n+1)`
-/

namespace A089233.P4820182381673810927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 ((n + 1) ^ 2) - A000005 (n + 1)

end

end A089233.P4820182381673810927

namespace A089233

/-- `A038548((n+1)²)-A000005(n+1)` -/
def P4820182381673810927.Spec : Prop :=
  ∀ n, P4820182381673810927.a n = A089233 (n + 1)

end A089233

/-!
# A089234: Primes p such that p, p+60, p+120 are consecutive primes.

The programs for A089234, there is no canonical definition to state claims against.
-/

/-! ## A089234.P5270802163325121740

`A178136(n+1)-60`
-/

namespace A089234.P5270802163325121740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178136 (n + 1) - 60

end

end A089234.P5270802163325121740

/-!
# A089237: List of primes and squares.

The programs for A089237, the canonical program `A089237.P17268930472736484206` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089237 has offset 1).

The definition of A089237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089237.P17814520800549140304

`∪[n², Δ[A007504(n)]]`
-/

namespace A089237.P17814520800549140304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089237.P17814520800549140304

namespace A089237

/-- `∪[n², Δ[A007504(n)]]` -/
def P17814520800549140304.Spec : Prop :=
  ∀ n, (P17814520800549140304.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P8575406891755196475

`∪[n², record[A259153(n)]]`
-/

namespace A089237.P8575406891755196475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A089237.P8575406891755196475

namespace A089237

/-- `∪[n², record[A259153(n)]]` -/
def P8575406891755196475.Spec : Prop :=
  ∀ n, (P8575406891755196475.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P17268930472736484206

`∪[A000040(n+1), n²]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089237

/-- `∪[A000040(n+1), n²]` -/
def P17268930472736484206.Spec : Prop :=
  ∀ n, (P17268930472736484206.a n : ℤ) = A089237 (n + 1)

theorem P17268930472736484206.correct : P17268930472736484206.Spec := by
  intro n
  simp only [A089237, Nat.add_sub_cancel]

end A089237

/-! ## A089237.P16637848771476382912

`∪[A000430(n+1), n²]`
-/

namespace A089237.P16637848771476382912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P16637848771476382912

namespace A089237

/-- `∪[A000430(n+1), n²]` -/
def P16637848771476382912.Spec : Prop :=
  ∀ n, (P16637848771476382912.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P4829336627326464015

`∪[A008578(n+1), n²]`
-/

namespace A089237.P4829336627326464015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P4829336627326464015

namespace A089237

/-- `∪[A008578(n+1), n²]` -/
def P4829336627326464015.Spec : Prop :=
  ∀ n, (P4829336627326464015.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P8643343419857597625

`∪[A009087(n+1), n²]`
-/

namespace A089237.P8643343419857597625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P8643343419857597625

namespace A089237

/-- `∪[A009087(n+1), n²]` -/
def P8643343419857597625.Spec : Prop :=
  ∀ n, (P8643343419857597625.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P11327602403067775094

`∪[A033946(n+1), n²]`
-/

namespace A089237.P11327602403067775094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P11327602403067775094

namespace A089237

/-- `∪[A033946(n+1), n²]` -/
def P11327602403067775094.Spec : Prop :=
  ∀ n, (P11327602403067775094.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P7974647537642983463

`∪[A046022(n+1), n²]`
-/

namespace A089237.P7974647537642983463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P7974647537642983463

namespace A089237

/-- `∪[A046022(n+1), n²]` -/
def P7974647537642983463.Spec : Prop :=
  ∀ n, (P7974647537642983463.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P4662974906160356930

`∪[A050376(n+1), n²]`
-/

namespace A089237.P4662974906160356930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P4662974906160356930

namespace A089237

/-- `∪[A050376(n+1), n²]` -/
def P4662974906160356930.Spec : Prop :=
  ∀ n, (P4662974906160356930.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P14564270722148830062

`∪[A067126(n+1), n²]`
-/

namespace A089237.P14564270722148830062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P14564270722148830062

namespace A089237

/-- `∪[A067126(n+1), n²]` -/
def P14564270722148830062.Spec : Prop :=
  ∀ n, (P14564270722148830062.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P17060681076112724351

`∪[A084400(n+1), n²]`
-/

namespace A089237.P17060681076112724351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P17060681076112724351

namespace A089237

/-- `∪[A084400(n+1), n²]` -/
def P17060681076112724351.Spec : Prop :=
  ∀ n, (P17060681076112724351.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P7290022057284398183

`∪[A166684(n+1), n²]`
-/

namespace A089237.P7290022057284398183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P7290022057284398183

namespace A089237

/-- `∪[A166684(n+1), n²]` -/
def P7290022057284398183.Spec : Prop :=
  ∀ n, (P7290022057284398183.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P13547009838042255704

`∪[∑[A054541(n+1)], n²]`
-/

namespace A089237.P13547009838042255704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A089237.P13547009838042255704

namespace A089237

/-- `∪[∑[A054541(n+1)], n²]` -/
def P13547009838042255704.Spec : Prop :=
  ∀ n, (P13547009838042255704.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P982228997632737119

`∪[A006093(n+1)+1, n²]`
-/

namespace A089237.P982228997632737119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P982228997632737119

namespace A089237

/-- `∪[A006093(n+1)+1, n²]` -/
def P982228997632737119.Spec : Prop :=
  ∀ n, (P982228997632737119.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P8070458197382198340

`filter[A222030(n), A118102(#)]`
-/

namespace A089237.P8070458197382198340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A089237.P8070458197382198340

namespace A089237

/-- `filter[A222030(n), A118102(#)]` -/
def P8070458197382198340.Spec : Prop :=
  ∀ n, P8070458197382198340.a n = A089237 (n + 1)

end A089237

/-! ## A089237.P8877730766657176999

`lt[∏{d}[n, -#], n+2]`
-/

namespace A089237.P8877730766657176999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (-(d : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A089237.P8877730766657176999

namespace A089237

/-- `lt[∏{d}[n, -#], n+2]` -/
def P8877730766657176999.Spec : Prop :=
  ∀ n, (P8877730766657176999.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P15717319562028158087

`lt[∏{d}[n, -#]-2, n]`
-/

namespace A089237.P15717319562028158087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (-(d : ℤ)) - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A089237.P15717319562028158087

namespace A089237

/-- `lt[∏{d}[n, -#]-2, n]` -/
def P15717319562028158087.Spec : Prop :=
  ∀ n, (P15717319562028158087.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P3086371480501398141

`lt[A007814(2*n+1), A213593(A032741(n))]`
-/

namespace A089237.P3086371480501398141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213593 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089237.P3086371480501398141

namespace A089237

/-- `lt[A007814(2*n+1), A213593(A032741(n))]` -/
def P3086371480501398141.Spec : Prop :=
  ∀ n, (P3086371480501398141.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P14128139914890014156

`eq[A115118(n)*A381233(n), A381233(n)]`
-/

namespace A089237.P14128139914890014156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 n * A381233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089237.P14128139914890014156

namespace A089237

/-- `eq[A115118(n)*A381233(n), A381233(n)]` -/
def P14128139914890014156.Spec : Prop :=
  ∀ n, (P14128139914890014156.a n : ℤ) = A089237 (n + 1)

end A089237

/-! ## A089237.P10000787402847104718

`eq[A054251(n)*A316649(n), A316649(n)]`
-/

namespace A089237.P10000787402847104718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 n * A316649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089237.P10000787402847104718

namespace A089237

/-- `eq[A054251(n)*A316649(n), A316649(n)]` -/
def P10000787402847104718.Spec : Prop :=
  ∀ n, (P10000787402847104718.a n : ℤ) = A089237 (n + 1)

end A089237

/-!
# A089238: Numbers k such that 3*k^2/2 - 1 is a prime.

The programs for A089238, there is no canonical definition to state claims against.
-/

/-! ## A089238.P7081318899136596271

`2*A143826(n+1)`
-/

namespace A089238.P7081318899136596271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143826 (n + 1)

end

end A089238.P7081318899136596271

/-! ## A089238.P983813167071716824

`2*(lt[A209494(n+1), 4]+1)`
-/

namespace A089238.P983813167071716824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209494 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A089238.P983813167071716824

/-! ## A089238.P6343914096721376377

`ceil(sqrt(2*A090686(n+1)/3))`
-/

namespace A089238.P6343914096721376377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * ((A090686 (n + 1) : ℚ) / 3) : ℝ)⌉

end

end A089238.P6343914096721376377

/-! ## A089238.P694901174261694443

`A004277(A143826(n+1))`
-/

namespace A089238.P694901174261694443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A143826 (n + 1)).toNat

end

end A089238.P694901174261694443

/-! ## A089238.P7976997516798287623

`A004275(A143826(n+1)+1)`
-/

namespace A089238.P7976997516798287623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A143826 (n + 1) + 1).toNat

end

end A089238.P7976997516798287623

/-! ## A089238.P5416967065723344557

`A004277(ceil(sqrt(A090686(n+1)/6)))`
-/

namespace A089238.P5416967065723344557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌈Real.sqrt ((A090686 (n + 1) : ℚ) / 6 : ℝ)⌉.toNat

end

end A089238.P5416967065723344557

/-! ## A089238.P12547054623102275724

`2*floor(A014963(12*n+6)+sqrt(A090686(n+1)/6))`
-/

namespace A089238.P12547054623102275724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A014963 (12 * n + 6) : ℝ) + Real.sqrt ((A090686 (n + 1) : ℚ) / 6 : ℝ)⌋

end

end A089238.P12547054623102275724

/-!
# A089239: Triangle read by rows: T(n,k) (n >= 0, 0 <= k <= n) giving number of solutions to the n-box stacking problem in which exactly k boxes are used in the stack.

The programs for A089239, there is no canonical definition to state claims against.
-/

/-! ## A089239.P3691947836280915336

`A007318(n)-A010872(A341743(3*(n+1)))`
-/

namespace A089239.P3691947836280915336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A010872 (A341743 (3 * (n + 1))).toNat

end

end A089239.P3691947836280915336

/-! ## A089239.P5554243432724128451

`A007318(n)-A102683(A165656(n))`
-/

namespace A089239.P5554243432724128451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A102683 (A165656 n).toNat

end

end A089239.P5554243432724128451

/-! ## A089239.P17609750694785361243

`A007318(n)-A102683(A185063(n))`
-/

namespace A089239.P17609750694785361243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A102683 (A185063 n).toNat

end

end A089239.P17609750694785361243

/-! ## A089239.P3012599530177039360

`A034932(n)-A102683(A165656(n))`
-/

namespace A089239.P3012599530177039360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 n - A102683 (A165656 n).toNat

end

end A089239.P3012599530177039360

/-! ## A089239.P793135094993881869

`A034932(n)-A102683(A185063(n))`
-/

namespace A089239.P793135094993881869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 n - A102683 (A185063 n).toNat

end

end A089239.P793135094993881869

/-!
# A089240: Column k=4 of triangle in A089239.

The programs for A089240, there is no canonical definition to state claims against.
-/

/-! ## A089240.P15152599419831549993

`A002024(A218495(2*(n+1)))-A172278(n)`
-/

namespace A089240.P15152599419831549993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A218495 (2 * (n + 1))).toNat - A172278 n

end

end A089240.P15152599419831549993

/-! ## A089240.P14407670441570249542

`A047998(eq[0, A122204(n+3)])`
-/

namespace A089240.P14407670441570249542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089240.P14407670441570249542

/-! ## A089240.P669408941742660657

`A047998(lt[A122204(n+3), 1])`
-/

namespace A089240.P669408941742660657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A089240.P669408941742660657

/-! ## A089240.P11975098199648189592

`A326676(ceil(A129180(n)/A089387(n)))`
-/

namespace A089240.P11975098199648189592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326676 ⌈(A129180 n : ℚ) / (A089387 n : ℚ)⌉.toNat

end

end A089240.P11975098199648189592

/-! ## A089240.P209694439550337547

`A047998(eq[A122287(n+3), A122840(n+1)])`
-/

namespace A089240.P209694439550337547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089240.P209694439550337547

/-!
# A089241: Even numbers k such that k/2 - 1 is prime.

The programs for A089241, the canonical program `A089241.P4698073971912800570` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089241 has offset 1).

The definition of A089241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089241.P2745329256045268559

`A072055(n+1)+1`
-/

namespace A089241.P2745329256045268559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + 1

end

end A089241.P2745329256045268559

namespace A089241

/-- `A072055(n+1)+1` -/
def P2745329256045268559.Spec : Prop :=
  ∀ n, P2745329256045268559.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P14029573011024012144

`A100484(n+1)+2`
-/

namespace A089241.P14029573011024012144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + 2

end

end A089241.P14029573011024012144

namespace A089241

/-- `A100484(n+1)+2` -/
def P14029573011024012144.Spec : Prop :=
  ∀ n, P14029573011024012144.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P2087383563774022189

`A129069(n+1)-1`
-/

namespace A089241.P2087383563774022189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) - 1

end

end A089241.P2087383563774022189

namespace A089241

/-- `A129069(n+1)-1` -/
def P2087383563774022189.Spec : Prop :=
  ∀ n, P2087383563774022189.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P4698073971912800570

`2*A008864(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A089241

/-- `2*A008864(n+1)` -/
def P4698073971912800570.Spec : Prop :=
  ∀ n, P4698073971912800570.a n = A089241 (n + 1)

theorem P4698073971912800570.correct : P4698073971912800570.Spec := by
  intro n
  simp only [A089241, Nat.add_sub_cancel]

end A089241

/-! ## A089241.P11057000813055164214

`2*A028815(n+1)`
-/

namespace A089241.P11057000813055164214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028815 (n + 1)

end

end A089241.P11057000813055164214

namespace A089241

/-- `2*A028815(n+1)` -/
def P11057000813055164214.Spec : Prop :=
  ∀ n, P11057000813055164214.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P14937475169867203446

`A037168(n+1)+4`
-/

namespace A089241.P14937475169867203446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + 4

end

end A089241.P14937475169867203446

namespace A089241

/-- `A037168(n+1)+4` -/
def P14937475169867203446.Spec : Prop :=
  ∀ n, P14937475169867203446.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P6042815328329161809

`A131426(n+1)+5`
-/

namespace A089241.P6042815328329161809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) + 5

end

end A089241.P6042815328329161809

namespace A089241

/-- `A131426(n+1)+5` -/
def P6042815328329161809.Spec : Prop :=
  ∀ n, P6042815328329161809.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P15572192586308665675

`A140777(n+1)+6`
-/

namespace A089241.P15572192586308665675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) + 6

end

end A089241.P15572192586308665675

namespace A089241

/-- `A140777(n+1)+6` -/
def P15572192586308665675.Spec : Prop :=
  ∀ n, P15572192586308665675.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P3652006329502783769

`A240068(n+1)/4`
-/

namespace A089241.P3652006329502783769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240068 (n + 1) : ℚ) / 4

end

end A089241.P3652006329502783769

namespace A089241

/-- `A240068(n+1)/4` -/
def P3652006329502783769.Spec : Prop :=
  ∀ n, P3652006329502783769.a n = (A089241 (n + 1) : ℚ)

end A089241

/-! ## A089241.P3429746653312043894

`sqrt(A069262(n+1))+2`
-/

namespace A089241.P3429746653312043894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ) + 2

end

end A089241.P3429746653312043894

namespace A089241

/-- `sqrt(A069262(n+1))+2` -/
def P3429746653312043894.Spec : Prop :=
  ∀ n, P3429746653312043894.a n = (A089241 (n + 1) : ℝ)

end A089241

/-! ## A089241.P16917056738008172318

`2*sqrt(A110833(n+1))`
-/

namespace A089241.P16917056738008172318
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A110833 (n + 1) : ℝ)

end

end A089241.P16917056738008172318

namespace A089241

/-- `2*sqrt(A110833(n+1))` -/
def P16917056738008172318.Spec : Prop :=
  ∀ n, P16917056738008172318.a n = (A089241 (n + 1) : ℝ)

end A089241

/-! ## A089241.P16533907189213323056

`∑[2*A125266(n+1)]`
-/

namespace A089241.P16533907189213323056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089241.P16533907189213323056

namespace A089241

/-- `∑[2*A125266(n+1)]` -/
def P16533907189213323056.Spec : Prop :=
  ∀ n, P16533907189213323056.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P15964802841853606260

`2*(A000040(n+1)+1)`
-/

namespace A089241.P15964802841853606260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) + 1)

end

end A089241.P15964802841853606260

namespace A089241

/-- `2*(A000040(n+1)+1)` -/
def P15964802841853606260.Spec : Prop :=
  ∀ n, P15964802841853606260.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P15313200901618832447

`2*(A006093(n+1)+2)`
-/

namespace A089241.P15313200901618832447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006093 (n + 1) + 2)

end

end A089241.P15313200901618832447

namespace A089241

/-- `2*(A006093(n+1)+2)` -/
def P15313200901618832447.Spec : Prop :=
  ∀ n, P15313200901618832447.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P16023055625755647344

`2*(A052147(n+1)-1)`
-/

namespace A089241.P16023055625755647344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052147 (n + 1) - 1)

end

end A089241.P16023055625755647344

namespace A089241

/-- `2*(A052147(n+1)-1)` -/
def P16023055625755647344.Spec : Prop :=
  ∀ n, P16023055625755647344.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P13533413367163436657

`A134591(n+1)+n+3`
-/

namespace A089241.P13533413367163436657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + (n + 3 : ℤ)

end

end A089241.P13533413367163436657

namespace A089241

/-- `A134591(n+1)+n+3` -/
def P13533413367163436657.Spec : Prop :=
  ∀ n, P13533413367163436657.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P18080139095237562853

`2*∑{d}[A000040(2*n-(n-1)), #]`
-/

namespace A089241.P18080139095237562853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A089241.P18080139095237562853

namespace A089241

/-- `2*∑{d}[A000040(2*n-(n-1)), #]` -/
def P18080139095237562853.Spec : Prop :=
  ∀ n, (P18080139095237562853.a n : ℤ) = A089241 (n + 1)

end A089241

/-! ## A089241.P16559534810379137465

`A166496(n+1)+A057427(n)`
-/

namespace A089241.P16559534810379137465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1) + A057427 n

end

end A089241.P16559534810379137465

namespace A089241

/-- `A166496(n+1)+A057427(n)` -/
def P16559534810379137465.Spec : Prop :=
  ∀ n, P16559534810379137465.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P15155003076150161069

`A166496(n+1)-A057428(n)`
-/

namespace A089241.P15155003076150161069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1) - A057428 n

end

end A089241.P15155003076150161069

namespace A089241

/-- `A166496(n+1)-A057428(n)` -/
def P15155003076150161069.Spec : Prop :=
  ∀ n, P15155003076150161069.a n = A089241 (n + 1)

end A089241

/-! ## A089241.P7241707544090456546

`A130291(n+1)*A255176(n)`
-/

namespace A089241.P7241707544090456546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) * A255176 n

end

end A089241.P7241707544090456546

namespace A089241

/-- `A130291(n+1)*A255176(n)` -/
def P7241707544090456546.Spec : Prop :=
  ∀ n, P7241707544090456546.a n = A089241 (n + 1)

end A089241

/-!
# A089242: Sequence is S(infinity), where S(1) = 1, S(m+1) = concatenation S(m), a(m)+1, S(m) and a(m) is the m-th term of S(m). a(m) is also the m-th term of the sequence.

The programs for A089242, the canonical program `A089242.P11579408002915852966` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089242 has offset 1).

The definition of A089242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089242.P11579408002915852966

`A001222(A061393(A061393(n+1)-2)+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A089242

/-- `A001222(A061393(A061393(n+1)-2)+2)` -/
def P11579408002915852966.Spec : Prop :=
  ∀ n, P11579408002915852966.a n = A089242 (n + 1)

theorem P11579408002915852966.correct : P11579408002915852966.Spec := by
  intro n
  simp only [A089242, Nat.add_sub_cancel]

end A089242

/-! ## A089242.P15552701630007598882

`A001222(A061393(xor(2, A061393(n+1)))+2)`
-/

namespace A089242.P15552701630007598882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061393 (Int.xor 2 (A061393 (n + 1))).toNat + 2).toNat

end

end A089242.P15552701630007598882

namespace A089242

/-- `A001222(A061393(xor(2, A061393(n+1)))+2)` -/
def P15552701630007598882.Spec : Prop :=
  ∀ n, P15552701630007598882.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P3846396131953585656

`A184166(Δ[A005187(n)]²)+1`
-/

namespace A089242.P3846396131953585656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 ((f1 (n + 1) - f1 n) ^ 2).toNat + 1

end

end A089242.P3846396131953585656

namespace A089242

/-- `A184166(Δ[A005187(n)]²)+1` -/
def P3846396131953585656.Spec : Prop :=
  ∀ n, P3846396131953585656.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P11824151017075699341

`A136480(A007814(n+1)*A017113(n))`
-/

namespace A089242.P11824151017075699341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A007814 (n + 1) * A017113 n).toNat

end

end A089242.P11824151017075699341

namespace A089242

/-- `A136480(A007814(n+1)*A017113(n))` -/
def P11824151017075699341.Spec : Prop :=
  ∀ n, P11824151017075699341.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P13179165798930907517

`A001222(∑{d}[A020639(A028233(n+1)²+1), #²])`
-/

namespace A089242.P13179165798930907517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028233 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2)

end

end A089242.P13179165798930907517

namespace A089242

/-- `A001222(∑{d}[A020639(A028233(n+1)²+1), #²])` -/
def P13179165798930907517.Spec : Prop :=
  ∀ n, P13179165798930907517.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P1471597373446628923

`A000005(A000005(A061393(A007814(n+1)²²)))`
-/

namespace A089242.P1471597373446628923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A061393 ((A007814 (n + 1) ^ 2) ^ 2).toNat).toNat).toNat

end

end A089242.P1471597373446628923

namespace A089242

/-- `A000005(A000005(A061393(A007814(n+1)²²)))` -/
def P1471597373446628923.Spec : Prop :=
  ∀ n, P1471597373446628923.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P3816901768476508625

`A001511(A001511(A212591(n+2)))`
-/

namespace A089242.P3816901768476508625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (A212591 (n + 2)).toNat).toNat

end

end A089242.P3816901768476508625

namespace A089242

/-- `A001511(A001511(A212591(n+2)))` -/
def P3816901768476508625.Spec : Prop :=
  ∀ n, P3816901768476508625.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P8114185977080627289

`A001511(A320111((n+1)²))`
-/

namespace A089242.P8114185977080627289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A320111 ((n + 1) ^ 2)).toNat

end

end A089242.P8114185977080627289

namespace A089242

/-- `A001511(A320111((n+1)²))` -/
def P8114185977080627289.Spec : Prop :=
  ∀ n, P8114185977080627289.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P3932594200221366538

`A001511(A001511(∑[or(1, n)]))`
-/

namespace A089242.P3932594200221366538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A089242.P3932594200221366538

namespace A089242

/-- `A001511(A001511(∑[or(1, n)]))` -/
def P3932594200221366538.Spec : Prop :=
  ∀ n, P3932594200221366538.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P9968038099028066617

`A326813(A320111((n+1)²)²)`
-/

namespace A089242.P9968038099028066617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326813 (A320111 ((n + 1) ^ 2) ^ 2).toNat

end

end A089242.P9968038099028066617

namespace A089242

/-- `A326813(A320111((n+1)²)²)` -/
def P9968038099028066617.Spec : Prop :=
  ∀ n, P9968038099028066617.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P16486666720169926676

`A328570(A135481(n²)*A135481(n))`
-/

namespace A089242.P16486666720169926676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A135481 (n ^ 2) * A135481 n).toNat

end

end A089242.P16486666720169926676

namespace A089242

/-- `A328570(A135481(n²)*A135481(n))` -/
def P16486666720169926676.Spec : Prop :=
  ∀ n, P16486666720169926676.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P7118511642503347616

`A095999(A065915(n+1))`
-/

namespace A089242.P7118511642503347616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095999 (A065915 (n + 1)).toNat

end

end A089242.P7118511642503347616

namespace A089242

/-- `A095999(A065915(n+1))` -/
def P7118511642503347616.Spec : Prop :=
  ∀ n, P7118511642503347616.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P4279060985608260626

`A286600(A268389(A156552(A366263(n+1))))`
-/

namespace A089242.P4279060985608260626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286600 (A268389 (A156552 (A366263 (n + 1)).toNat).toNat).toNat

end

end A089242.P4279060985608260626

namespace A089242

/-- `A286600(A268389(A156552(A366263(n+1))))` -/
def P4279060985608260626.Spec : Prop :=
  ∀ n, P4279060985608260626.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P12331696320199782480

`A386261(A129202(n))`
-/

namespace A089242.P12331696320199782480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386261 (A129202 n).toNat

end

end A089242.P12331696320199782480

namespace A089242

/-- `A386261(A129202(n))` -/
def P12331696320199782480.Spec : Prop :=
  ∀ n, P12331696320199782480.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P11990898714110660985

`A001511(A053390((n+1)²))`
-/

namespace A089242.P11990898714110660985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A053390 ((n + 1) ^ 2)).toNat

end

end A089242.P11990898714110660985

namespace A089242

/-- `A001511(A053390((n+1)²))` -/
def P11990898714110660985.Spec : Prop :=
  ∀ n, P11990898714110660985.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P1563301820615708204

`A001511(A136480((n+1)²))`
-/

namespace A089242.P1563301820615708204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A136480 ((n + 1) ^ 2)).toNat

end

end A089242.P1563301820615708204

namespace A089242

/-- `A001511(A136480((n+1)²))` -/
def P1563301820615708204.Spec : Prop :=
  ∀ n, P1563301820615708204.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P7706718930649822441

`A001511(A378888((n+1)²))`
-/

namespace A089242.P7706718930649822441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A378888 ((n + 1) ^ 2)).toNat

end

end A089242.P7706718930649822441

namespace A089242

/-- `A001511(A378888((n+1)²))` -/
def P7706718930649822441.Spec : Prop :=
  ∀ n, P7706718930649822441.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P17972148610428731712

`A001511(A385507((n+1)²))`
-/

namespace A089242.P17972148610428731712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A385507 ((n + 1) ^ 2)).toNat

end

end A089242.P17972148610428731712

namespace A089242

/-- `A001511(A385507((n+1)²))` -/
def P17972148610428731712.Spec : Prop :=
  ∀ n, P17972148610428731712.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P10020905254828214203

`A001511(A050603(n*(n+2)))`
-/

namespace A089242.P10020905254828214203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050603 (n * (n + 2))).toNat

end

end A089242.P10020905254828214203

namespace A089242

/-- `A001511(A050603(n*(n+2)))` -/
def P10020905254828214203.Spec : Prop :=
  ∀ n, P10020905254828214203.a n = A089242 (n + 1)

end A089242

/-! ## A089242.P14796135430799706290

`A001511(A050604(n*(n+2)))`
-/

namespace A089242.P14796135430799706290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050604 (n * (n + 2))).toNat

end

end A089242.P14796135430799706290

namespace A089242

/-- `A001511(A050604(n*(n+2)))` -/
def P14796135430799706290.Spec : Prop :=
  ∀ n, P14796135430799706290.a n = A089242 (n + 1)

end A089242

/-!
# A089243: Number of partitions into strokes of the star graph with n edges on the plane, up to rotations and reflections around the center node.

The programs for A089243, there is no canonical definition to state claims against.
-/

/-! ## A089243.P5476411164828243192

`A056172(A175421(n+4)+A010352(2*n+1))`
-/

namespace A089243.P5476411164828243192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A175421 (n + 4) + A010352 (2 * n + 1)).toNat

end

end A089243.P5476411164828243192

/-!
# A089244: Integer part of square root of the reciprocal of a prime number multiplied by 10 to the power of the integer part of the square root of the number.

The programs for A089244, there is no canonical definition to state claims against.
-/

/-! ## A089244.P9090907635844866512

`A089245(A181325(n))`
-/

namespace A089244.P9090907635844866512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089245 (A181325 n).toNat

end

end A089244.P9090907635844866512

/-! ## A089244.P15828762116128099939

`A089245(A390240(n))`
-/

namespace A089244.P15828762116128099939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089245 (A390240 n).toNat

end

end A089244.P15828762116128099939

/-! ## A089244.P6553375492291358293

`A089245(A000040(n+1))`
-/

namespace A089244.P6553375492291358293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089245 (A000040 (n + 1)).toNat

end

end A089244.P6553375492291358293

/-! ## A089244.P11730830626551098718

`A089245(A030291(n+1))`
-/

namespace A089244.P11730830626551098718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089245 (A030291 (n + 1)).toNat

end

end A089244.P11730830626551098718

/-! ## A089244.P12390254738599274899

`A089245(A030475(n+1))`
-/

namespace A089244.P12390254738599274899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089245 (A030475 (n + 1)).toNat

end

end A089244.P12390254738599274899

/-!
# A089246: Triangular array read by rows: a(n, k) is the number of ordered m-tuples of positive integers (x_1, ..., x_m) such that max x_i = n+1-m and there are k ones (0 <= k <= n).

The programs for A089246, there is no canonical definition to state claims against.
-/

/-! ## A089246.P14109213788053312234

`A102404(n)+A055641(A002621(2*(n+2)))`
-/

namespace A089246.P14109213788053312234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102404 n + A055641 (A002621 (2 * (n + 2))).toNat

end

end A089246.P14109213788053312234

/-! ## A089246.P2679640605297003079

`or(A102404(n), A178798(A249576(n)))`
-/

namespace A089246.P2679640605297003079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102404 n) (A178798 (A249576 n).toNat)

end

end A089246.P2679640605297003079

/-! ## A089246.P2846483222671427577

`A102404(A094507(A102404(n+2)))+A102404(n)`
-/

namespace A089246.P2846483222671427577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102404 (A094507 (A102404 (n + 2)).toNat).toNat + A102404 n

end

end A089246.P2846483222671427577

/-! ## A089246.P3824842743543731654

`A102404(n)+A025466(A001629(n))`
-/

namespace A089246.P3824842743543731654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102404 n + A025466 (A001629 n).toNat

end

end A089246.P3824842743543731654

/-! ## A089246.P11130174787844653953

`A102404(n)+A010059(A060455(n))`
-/

namespace A089246.P11130174787844653953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102404 n + A010059 (A060455 n).toNat

end

end A089246.P11130174787844653953

/-!
# A089247: a(n) = smallest number obtainable by permuting the exponents in the prime factorization of n.

The programs for A089247, there is no canonical definition to state claims against.
-/

/-! ## A089247.P1616374395177754286

`A069799(A085079(n+1))`
-/

namespace A089247.P1616374395177754286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A085079 (n + 1)).toNat

end

end A089247.P1616374395177754286

/-! ## A089247.P3251531311069082464

`n+1-A033716(A064125(n+1))`
-/

namespace A089247.P3251531311069082464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033716 (A064125 (n + 1)).toNat

end

end A089247.P3251531311069082464

/-! ## A089247.P13527466979294150195

`n+2-A109010(A374433(2*n+1))`
-/

namespace A089247.P13527466979294150195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A109010 (A374433 (2 * n + 1)).toNat

end

end A089247.P13527466979294150195

/-! ## A089247.P15688110236618188219

`n+2-A109010(A374443(2*n+1))`
-/

namespace A089247.P15688110236618188219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A109010 (A374443 (2 * n + 1)).toNat

end

end A089247.P15688110236618188219

/-! ## A089247.P14271895094484328692

`n+2-A369317(A000069(n+1))`
-/

namespace A089247.P14271895094484328692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A369317 (A000069 (n + 1)).toNat

end

end A089247.P14271895094484328692

/-!
# A089248: a(n) is the sum of the odd degrees of the irreducible representations of the symmetric group S_n.

The programs for A089248, there is no canonical definition to state claims against.
-/

/-! ## A089248.P2033462099635664173

`∏{p}[A000085(n+1), A085237(#)]`
-/

namespace A089248.P2033462099635664173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A085237 p

end

end A089248.P2033462099635664173

/-! ## A089248.P16696282727983188737

`A115715(A014820(n))+A025227(n)`
-/

namespace A089248.P16696282727983188737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115715 (A014820 n).toNat + A025227 n

end

end A089248.P16696282727983188737

/-! ## A089248.P9918237551308090198

`A282849(A296044(n))+A025227(n)`
-/

namespace A089248.P9918237551308090198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (A296044 n).toNat + A025227 n

end

end A089248.P9918237551308090198

/-!
# A089249: Triangular array read by rows illustrating the connection between A000522 and A008292.

The programs for A089249, there is no canonical definition to state claims against.
-/

/-! ## A089249.P2790416237133295126

`A005187(A000203(A059268(n)))*A104712(n+2)`
-/

namespace A089249.P2790416237133295126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A000203 (A059268 n).toNat).toNat * A104712 (n + 2)

end

end A089249.P2790416237133295126

/-!
# A089250: Add 2 (mod 10) to each decimal digit of Pi.

The programs for A089250, the canonical program `A089250.P7432070379802121157` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089250 has offset 1).

The definition of A089250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089250.P3571019975380134730

`(A000796(n)+2)%10`
-/

namespace A089250.P3571019975380134730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1) + 2) 10

end

end A089250.P3571019975380134730

namespace A089250

/-- `(A000796(n)+2)%10` -/
def P3571019975380134730.Spec : Prop :=
  ∀ n, P3571019975380134730.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P7866323301084726528

`(11-A030644(n))%10`
-/

namespace A089250.P7866323301084726528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 - A030644 (n + 1)) 10

end

end A089250.P7866323301084726528

namespace A089250

/-- `(11-A030644(n))%10` -/
def P7866323301084726528.Spec : Prop :=
  ∀ n, P7866323301084726528.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P8167678176286687964

`(Δ[A059582(n)]+2)%10`
-/

namespace A089250.P8167678176286687964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 2) 10

end

end A089250.P8167678176286687964

namespace A089250

/-- `(Δ[A059582(n)]+2)%10` -/
def P8167678176286687964.Spec : Prop :=
  ∀ n, P8167678176286687964.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P49417847974932522

`(A059833(n+1)+1)%10`
-/

namespace A089250.P49417847974932522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059833 (n + 1) + 1) 10

end

end A089250.P49417847974932522

namespace A089250

/-- `(A059833(n+1)+1)%10` -/
def P49417847974932522.Spec : Prop :=
  ∀ n, P49417847974932522.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P4346209648964160750

`(A123152(n+1)+1)%10`
-/

namespace A089250.P4346209648964160750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123152 (n + 1) + 1) 10

end

end A089250.P4346209648964160750

namespace A089250

/-- `(A123152(n+1)+1)%10` -/
def P4346209648964160750.Spec : Prop :=
  ∀ n, P4346209648964160750.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P16050918184735650611

`(A065253(n+1)+2)%10`
-/

namespace A089250.P16050918184735650611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1) + 2) 10

end

end A089250.P16050918184735650611

namespace A089250

/-- `(A065253(n+1)+2)%10` -/
def P16050918184735650611.Spec : Prop :=
  ∀ n, P16050918184735650611.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P10160034408889853201

`(A001355(2*n+1)+2)%10`
-/

namespace A089250.P10160034408889853201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (2 * n + 1) + 2) 10

end

end A089250.P10160034408889853201

namespace A089250

/-- `(A001355(2*n+1)+2)%10` -/
def P10160034408889853201.Spec : Prop :=
  ∀ n, P10160034408889853201.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P5104100894136235502

`A004426(Δ[A059582(n)]+2)`
-/

namespace A089250.P5104100894136235502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (n + 1) - f1 n + 2).toNat

end

end A089250.P5104100894136235502

namespace A089250

/-- `A004426(Δ[A059582(n)]+2)` -/
def P5104100894136235502.Spec : Prop :=
  ∀ n, P5104100894136235502.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P10523182084164522402

`A007954(Δ[A059582(n)]+2)`
-/

namespace A089250.P10523182084164522402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (n + 1) - f1 n + 2).toNat

end

end A089250.P10523182084164522402

namespace A089250

/-- `A007954(Δ[A059582(n)]+2)` -/
def P10523182084164522402.Spec : Prop :=
  ∀ n, P10523182084164522402.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P5749917815038615584

`A010879(Δ[A059582(n)]+2)`
-/

namespace A089250.P5749917815038615584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (f1 (n + 1) - f1 n + 2).toNat

end

end A089250.P5749917815038615584

namespace A089250

/-- `A010879(Δ[A059582(n)]+2)` -/
def P5749917815038615584.Spec : Prop :=
  ∀ n, P5749917815038615584.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P13298336385973008994

`A054054(Δ[A059582(n)]+2)`
-/

namespace A089250.P13298336385973008994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f1 (n + 1) - f1 n + 2).toNat

end

end A089250.P13298336385973008994

namespace A089250

/-- `A054054(Δ[A059582(n)]+2)` -/
def P13298336385973008994.Spec : Prop :=
  ∀ n, P13298336385973008994.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P10132881590239462987

`A010879(A065253(n+1)+2)`
-/

namespace A089250.P10132881590239462987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1) + 2).toNat

end

end A089250.P10132881590239462987

namespace A089250

/-- `A010879(A065253(n+1)+2)` -/
def P10132881590239462987.Spec : Prop :=
  ∀ n, P10132881590239462987.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P4351332161318279218

`A010889(A065253(n+1)+2)-1`
-/

namespace A089250.P4351332161318279218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A065253 (n + 1) + 2).toNat - 1

end

end A089250.P4351332161318279218

namespace A089250

/-- `A010889(A065253(n+1)+2)-1` -/
def P4351332161318279218.Spec : Prop :=
  ∀ n, P4351332161318279218.a n = A089250 (n + 1)

end A089250

/-! ## A089250.P7432070379802121157

`A010879(A097902(∑[n+2]-1)+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089250

/-- `A010879(A097902(∑[n+2]-1)+2)` -/
def P7432070379802121157.Spec : Prop :=
  ∀ n, P7432070379802121157.a n = A089250 (n + 1)

theorem P7432070379802121157.correct : P7432070379802121157.Spec := by
  intro n
  simp only [A089250, Nat.add_sub_cancel]

end A089250

/-! ## A089250.P16974705316410231694

`A048379(A048379(Δ[A059582(n)]))`
-/

namespace A089250.P16974705316410231694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A048379 (f1 (n + 1) - f1 n).toNat).toNat

end

end A089250.P16974705316410231694

namespace A089250

/-- `A048379(A048379(Δ[A059582(n)]))` -/
def P16974705316410231694.Spec : Prop :=
  ∀ n, P16974705316410231694.a n = A089250 (n + 1)

end A089250

/-!
# A089251: Number of elements e in all partitions of n such that e divides n.

The programs for A089251, there is no canonical definition to state claims against.
-/

/-! ## A089251.P2983326353697455570

`Δ[A284870(n)]-A209313(n+1)`
-/

namespace A089251.P2983326353697455570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A209313 (n + 1)

end

end A089251.P2983326353697455570

/-! ## A089251.P1237878940394913005

`A006128(n+1)-A209313(n+1)`
-/

namespace A089251.P1237878940394913005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A209313 (n + 1)

end

end A089251.P1237878940394913005

/-! ## A089251.P6874530495441063135

`∑[A138137(n+1)]-A209313(n+1)`
-/

namespace A089251.P6874530495441063135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A209313 (n + 1)

end

end A089251.P6874530495441063135

/-! ## A089251.P6265589617645572487

`A144115(n+1)+A144116(n+1)-A209313(n+1)`
-/

namespace A089251.P6265589617645572487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (n + 1) + (A144116 (n + 1) - A209313 (n + 1))

end

end A089251.P6265589617645572487

/-! ## A089251.P6862686563993935258

`record[A181187(n+1)]-A209313(n+1)`
-/

namespace A089251.P6862686563993935258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A209313 (n + 1)

end

end A089251.P6862686563993935258

/-! ## A089251.P12142342745290411135

`A181187(A000124(n))-A209313(n+1)`
-/

namespace A089251.P12142342745290411135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (A000124 n).toNat - A209313 (n + 1)

end

end A089251.P12142342745290411135

/-!
# A089252: a(n) = ((2*n-1)!!/sqrt(3))*(integral_{x=0..sqrt(3/4)} 1/(1-x^2)^(n+1/2) dx).

The programs for A089252, the canonical program `A089252.P6506231424234606079` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089252 has offset 1).

The definition of A089252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089252.P6506231424234606079

`2^n*n!*A006134(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A089252

/-- `2^n*n!*A006134(n)` -/
def P6506231424234606079.Spec : Prop :=
  ∀ n, P6506231424234606079.a n = A089252 (n + 1)

theorem P6506231424234606079.correct : P6506231424234606079.Spec := by
  intro n
  simp only [A089252, Nat.add_sub_cancel]

end A089252

/-! ## A089252.P11194647162648013610

`A144828(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A089252.P11194647162648013610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144828 n + 2 * ((n : ℤ) * a (n - 1))

end

end A089252.P11194647162648013610

namespace A089252

/-- `A144828(n)+2*n*a(n-1)` -/
def P11194647162648013610.Spec : Prop :=
  ∀ n, P11194647162648013610.a n = A089252 (n + 1)

end A089252

/-! ## A089252.P7327412941613021051

`2*n*a(n-1)+n!*C(2*n, n)*A000079(n)` with `a(0)=1`
-/

namespace A089252.P7327412941613021051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) + (Nat.factorial n * Nat.choose (2 * n) n : ℤ) * A000079 n

end

end A089252.P7327412941613021051

namespace A089252

/-- `2*n*a(n-1)+n!*C(2*n, n)*A000079(n)` -/
def P7327412941613021051.Spec : Prop :=
  ∀ n, P7327412941613021051.a n = A089252 (n + 1)

end A089252

/-! ## A089252.P3062490247165276873

`∑[A000984(n)]*A000165(n)`
-/

namespace A089252.P3062490247165276873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000165 n

end

end A089252.P3062490247165276873

namespace A089252

/-- `∑[A000984(n)]*A000165(n)` -/
def P3062490247165276873.Spec : Prop :=
  ∀ n, P3062490247165276873.a n = A089252 (n + 1)

end A089252

/-! ## A089252.P2225333753422180486

`∏[A004277(n)]*A006134(n)`
-/

namespace A089252.P2225333753422180486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A006134 n

end

end A089252.P2225333753422180486

namespace A089252

/-- `∏[A004277(n)]*A006134(n)` -/
def P2225333753422180486.Spec : Prop :=
  ∀ n, P2225333753422180486.a n = A089252 (n + 1)

end A089252

/-!
# A089253: Numbers n such that 2n - 5 is a prime.

The programs for A089253, the canonical program `A089253.P9623062397135395528` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089253 has offset 1).

The definition of A089253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089253.P9623062397135395528

`A067076(n+1)+4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089253

/-- `A067076(n+1)+4` -/
def P9623062397135395528.Spec : Prop :=
  ∀ n, P9623062397135395528.a n = A089253 (n + 1)

theorem P9623062397135395528.correct : P9623062397135395528.Spec := by
  intro n
  simp only [A089253, Nat.add_sub_cancel]

end A089253

/-! ## A089253.P6904448636387969640

`(p?[2*n+1]+5)/2`
-/

namespace A089253.P6904448636387969640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 5 : ℚ) / 2

end

end A089253.P6904448636387969640

namespace A089253

/-- `(p?[2*n+1]+5)/2` -/
def P6904448636387969640.Spec : Prop :=
  ∀ n, P6904448636387969640.a n = (A089253 (n + 1) : ℚ)

end A089253

/-! ## A089253.P9576276968667564738

`A098090(n+1)+1`
-/

namespace A089253.P9576276968667564738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 1

end

end A089253.P9576276968667564738

namespace A089253

/-- `A098090(n+1)+1` -/
def P9576276968667564738.Spec : Prop :=
  ∀ n, P9576276968667564738.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P4353499858202168007

`A006254(n+1)+2`
-/

namespace A089253.P4353499858202168007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 2

end

end A089253.P4353499858202168007

namespace A089253

/-- `A006254(n+1)+2` -/
def P4353499858202168007.Spec : Prop :=
  ∀ n, P4353499858202168007.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P8159182416461788706

`A089192(n+1)-1`
-/

namespace A089253.P8159182416461788706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 1

end

end A089253.P8159182416461788706

namespace A089253

/-- `A089192(n+1)-1` -/
def P8159182416461788706.Spec : Prop :=
  ∀ n, P8159182416461788706.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P14741051494645816675

`A005097(n+1)+3`
-/

namespace A089253.P14741051494645816675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 3

end

end A089253.P14741051494645816675

namespace A089253

/-- `A005097(n+1)+3` -/
def P14741051494645816675.Spec : Prop :=
  ∀ n, P14741051494645816675.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P5676315375702023612

`A097069(n+1)-2`
-/

namespace A089253.P5676315375702023612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - 2

end

end A089253.P5676315375702023612

namespace A089253

/-- `A097069(n+1)-2` -/
def P5676315375702023612.Spec : Prop :=
  ∀ n, P5676315375702023612.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P6062217489600652791

`A097338(n+1)-3`
-/

namespace A089253.P6062217489600652791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) - 3

end

end A089253.P6062217489600652791

namespace A089253

/-- `A097338(n+1)-3` -/
def P6062217489600652791.Spec : Prop :=
  ∀ n, P6062217489600652791.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P13853454045953403709

`A097363(n+1)-4`
-/

namespace A089253.P13853454045953403709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 4

end

end A089253.P13853454045953403709

namespace A089253

/-- `A097363(n+1)-4` -/
def P13853454045953403709.Spec : Prop :=
  ∀ n, P13853454045953403709.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P3232182025084246870

`A097480(n+1)-5`
-/

namespace A089253.P3232182025084246870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 5

end

end A089253.P3232182025084246870

namespace A089253

/-- `A097480(n+1)-5` -/
def P3232182025084246870.Spec : Prop :=
  ∀ n, P3232182025084246870.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P4085146105043370228

`A098605(n+1)-6`
-/

namespace A089253.P4085146105043370228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) - 6

end

end A089253.P4085146105043370228

namespace A089253

/-- `A098605(n+1)-6` -/
def P4085146105043370228.Spec : Prop :=
  ∀ n, P4085146105043370228.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P211802111595824566

`A097932(n+1)-7`
-/

namespace A089253.P211802111595824566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 7

end

end A089253.P211802111595824566

namespace A089253

/-- `A097932(n+1)-7` -/
def P211802111595824566.Spec : Prop :=
  ∀ n, P211802111595824566.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P9814575248966810015

`A298252(n+1)/2+1`
-/

namespace A089253.P9814575248966810015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298252 (n + 1) : ℚ) / 2 + 1

end

end A089253.P9814575248966810015

namespace A089253

/-- `A298252(n+1)/2+1` -/
def P9814575248966810015.Spec : Prop :=
  ∀ n, P9814575248966810015.a n = (A089253 (n + 1) : ℚ)

end A089253

/-! ## A089253.P11304286723822533133

`(A048974(n+1)+3)/2`
-/

namespace A089253.P11304286723822533133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048974 (n + 1) + 3 : ℚ) / 2

end

end A089253.P11304286723822533133

namespace A089253

/-- `(A048974(n+1)+3)/2` -/
def P11304286723822533133.Spec : Prop :=
  ∀ n, P11304286723822533133.a n = (A089253 (n + 1) : ℚ)

end A089253

/-! ## A089253.P7034437152125635457

`A055670(n+2)/2+2`
-/

namespace A089253.P7034437152125635457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055670 (n + 2) : ℚ) / 2 + 2

end

end A089253.P7034437152125635457

namespace A089253

/-- `A055670(n+2)/2+2` -/
def P7034437152125635457.Spec : Prop :=
  ∀ n, P7034437152125635457.a n = (A089253 (n + 1) : ℚ)

end A089253

/-! ## A089253.P6650670694529894848

`(A065091(n+1)+5)/2`
-/

namespace A089253.P6650670694529894848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) + 5 : ℚ) / 2

end

end A089253.P6650670694529894848

namespace A089253

/-- `(A065091(n+1)+5)/2` -/
def P6650670694529894848.Spec : Prop :=
  ∀ n, P6650670694529894848.a n = (A089253 (n + 1) : ℚ)

end A089253

/-! ## A089253.P8848260990253945558

`A177018(n+1)+1+n`
-/

namespace A089253.P8848260990253945558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + 1 + (n : ℤ)

end

end A089253.P8848260990253945558

namespace A089253

/-- `A177018(n+1)+1+n` -/
def P8848260990253945558.Spec : Prop :=
  ∀ n, P8848260990253945558.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P18068219157875309239

`A163057(n+1)+2-n`
-/

namespace A089253.P18068219157875309239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + (2 - (n : ℤ))

end

end A089253.P18068219157875309239

namespace A089253

/-- `A163057(n+1)+2-n` -/
def P18068219157875309239.Spec : Prop :=
  ∀ n, P18068219157875309239.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P6912531523584920092

`ceil(sqrt(A024701(n+1)))+2`
-/

namespace A089253.P6912531523584920092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A024701 (n + 1) : ℝ)⌉ + 2

end

end A089253.P6912531523584920092

namespace A089253

/-- `ceil(sqrt(A024701(n+1)))+2` -/
def P6912531523584920092.Spec : Prop :=
  ∀ n, P6912531523584920092.a n = A089253 (n + 1)

end A089253

/-! ## A089253.P14704039465062398668

`A020705(n)+A008507(n+1)`
-/

namespace A089253.P14704039465062398668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n + A008507 (n + 1)

end

end A089253.P14704039465062398668

namespace A089253

/-- `A020705(n)+A008507(n+1)` -/
def P14704039465062398668.Spec : Prop :=
  ∀ n, P14704039465062398668.a n = A089253 (n + 1)

end A089253

/-!
# A089255: Odd numbers n such that 2*n-5 is a prime.

The programs for A089255, the canonical program `A089255.P14820272531114426486` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089255 has offset 1).

The definition of A089255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089255.P14820272531114426486

`(p?[4*n+1]+5)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A089255

/-- `(p?[4*n+1]+5)/2` -/
def P14820272531114426486.Spec : Prop :=
  ∀ n, P14820272531114426486.a n = (A089255 (n + 1) : ℚ)

end A089255

/-! ## A089255.P1517377917360913812

`A119681(n+1)+2`
-/

namespace A089255.P1517377917360913812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1) + 2

end

end A089255.P1517377917360913812

namespace A089255

/-- `A119681(n+1)+2` -/
def P1517377917360913812.Spec : Prop :=
  ∀ n, P1517377917360913812.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P7936942826708031498

`2*A005098(n+1)+3`
-/

namespace A089255.P7936942826708031498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1) + 3

end

end A089255.P7936942826708031498

namespace A089255

/-- `2*A005098(n+1)+3` -/
def P7936942826708031498.Spec : Prop :=
  ∀ n, P7936942826708031498.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P17713379781157283214

`A152680(n+1)/2+3`
-/

namespace A089255.P17713379781157283214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) : ℚ) / 2 + 3

end

end A089255.P17713379781157283214

namespace A089255

/-- `A152680(n+1)/2+3` -/
def P17713379781157283214.Spec : Prop :=
  ∀ n, P17713379781157283214.a n = (A089255 (n + 1) : ℚ)

end A089255

/-! ## A089255.P5378683322799610614

`2*A111215(n+1)+5`
-/

namespace A089255.P5378683322799610614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111215 (n + 1) + 5

end

end A089255.P5378683322799610614

namespace A089255

/-- `2*A111215(n+1)+5` -/
def P5378683322799610614.Spec : Prop :=
  ∀ n, P5378683322799610614.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P10391510713335928828

`(A002144(n+1)+5)/2`
-/

namespace A089255.P10391510713335928828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) + 5 : ℚ) / 2

end

end A089255.P10391510713335928828

namespace A089255

/-- `(A002144(n+1)+5)/2` -/
def P10391510713335928828.Spec : Prop :=
  ∀ n, P10391510713335928828.a n = (A089255 (n + 1) : ℚ)

end A089255

/-! ## A089255.P4548632446034840035

`floor(p?[xor(2, a(n-2))+2]/2)+3` with `a(0)=4, a(1)=1, a(2)=-2`
-/

namespace A089255.P4548632446034840035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, -2] fun n f1 =>
  Int.xor 2 (f1 (n - 2)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋ + 3

end

end A089255.P4548632446034840035

namespace A089255

/-- `floor(p?[xor(2, a(n-2))+2]/2)+3` -/
def P4548632446034840035.Spec : Prop :=
  ∀ n, P4548632446034840035.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P16908194237206401867

`record[A057024(n+1)+2]`
-/

namespace A089255.P16908194237206401867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057024 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089255.P16908194237206401867

namespace A089255

/-- `record[A057024(n+1)+2]` -/
def P16908194237206401867.Spec : Prop :=
  ∀ n, P16908194237206401867.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P12937364153675717483

`A124678(A080147(n+1))`
-/

namespace A089255.P12937364153675717483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (A080147 (n + 1)).toNat

end

end A089255.P12937364153675717483

namespace A089255

/-- `A124678(A080147(n+1))` -/
def P12937364153675717483.Spec : Prop :=
  ∀ n, P12937364153675717483.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P12154558071277453345

`A089253(A138970(n+1))`
-/

namespace A089255.P12154558071277453345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (A138970 (n + 1)).toNat

end

end A089255.P12154558071277453345

namespace A089255

/-- `A089253(A138970(n+1))` -/
def P12154558071277453345.Spec : Prop :=
  ∀ n, P12154558071277453345.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P875591023438416431

`∩[A047270(n+1), A089253(n+1)]`
-/

namespace A089255.P875591023438416431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089255.P875591023438416431

namespace A089255

/-- `∩[A047270(n+1), A089253(n+1)]` -/
def P875591023438416431.Spec : Prop :=
  ∀ n, (P875591023438416431.a n : ℤ) = A089255 (n + 1)

end A089255

/-! ## A089255.P11788406093080419638

`∩[2*n+1, A124678(n+2)]`
-/

namespace A089255.P11788406093080419638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089255.P11788406093080419638

namespace A089255

/-- `∩[2*n+1, A124678(n+2)]` -/
def P11788406093080419638.Spec : Prop :=
  ∀ n, (P11788406093080419638.a n : ℤ) = A089255 (n + 1)

end A089255

/-! ## A089255.P14183699508594608394

`A020735(A005098(n+1))`
-/

namespace A089255.P14183699508594608394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (A005098 (n + 1)).toNat

end

end A089255.P14183699508594608394

namespace A089255

/-- `A020735(A005098(n+1))` -/
def P14183699508594608394.Spec : Prop :=
  ∀ n, P14183699508594608394.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P1040264011648743874

`A007479(A119681(n+1))`
-/

namespace A089255.P1040264011648743874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007479 (A119681 (n + 1)).toNat

end

end A089255.P1040264011648743874

namespace A089255

/-- `A007479(A119681(n+1))` -/
def P1040264011648743874.Spec : Prop :=
  ∀ n, P1040264011648743874.a n = A089255 (n + 1)

end A089255

/-! ## A089255.P15234981002489139645

`∩[A089253(n+1), A004273(n)]`
-/

namespace A089255.P15234981002489139645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089255.P15234981002489139645

namespace A089255

/-- `∩[A089253(n+1), A004273(n)]` -/
def P15234981002489139645.Spec : Prop :=
  ∀ n, (P15234981002489139645.a n : ℤ) = A089255 (n + 1)

end A089255

/-! ## A089255.P11904291655997631015

`∩[A089253(n+1), A060747(n)]`
-/

namespace A089255.P11904291655997631015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089255.P11904291655997631015

namespace A089255

/-- `∩[A089253(n+1), A060747(n)]` -/
def P11904291655997631015.Spec : Prop :=
  ∀ n, (P11904291655997631015.a n : ℤ) = A089255 (n + 1)

end A089255

/-! ## A089255.P9731134239276217223

`∩[A089253(n+1), A062545(n)]`
-/

namespace A089255.P9731134239276217223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089255.P9731134239276217223

namespace A089255

/-- `∩[A089253(n+1), A062545(n)]` -/
def P9731134239276217223.Spec : Prop :=
  ∀ n, (P9731134239276217223.a n : ℤ) = A089255 (n + 1)

end A089255

/-! ## A089255.P5532527795872285370

`∩[A124678(n+1), A062545(n)]`
-/

namespace A089255.P5532527795872285370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089255.P5532527795872285370

namespace A089255

/-- `∩[A124678(n+1), A062545(n)]` -/
def P5532527795872285370.Spec : Prop :=
  ∀ n, (P5532527795872285370.a n : ℤ) = A089255 (n + 1)

end A089255

/-! ## A089255.P6457622487232343379

`∩[A089253(n+1), A130773(n)]`
-/

namespace A089255.P6457622487232343379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089255.P6457622487232343379

namespace A089255

/-- `∩[A089253(n+1), A130773(n)]` -/
def P6457622487232343379.Spec : Prop :=
  ∀ n, (P6457622487232343379.a n : ℤ) = A089255 (n + 1)

end A089255

/-!
# A089257: Even numbers n such that 2n-5 is a prime of the form 4k+3.

The programs for A089257, the canonical program `A089257.P243562782731200786` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089257 has offset 1).

The definition of A089257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089257.P7602546421263044753

`(p?[4*n-1]+5)/2`
-/

namespace A089257.P7602546421263044753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5 : ℚ) / 2

end

end A089257.P7602546421263044753

namespace A089257

/-- `(p?[4*n-1]+5)/2` -/
def P7602546421263044753.Spec : Prop :=
  ∀ n, P7602546421263044753.a n = (A089257 (n + 1) : ℚ)

end A089257

/-! ## A089257.P10956995065981394671

`A090670(n+1)+1`
-/

namespace A089257.P10956995065981394671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1) + 1

end

end A089257.P10956995065981394671

namespace A089257

/-- `A090670(n+1)+1` -/
def P10956995065981394671.Spec : Prop :=
  ∀ n, P10956995065981394671.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P243562782731200786

`A089193(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A089257

/-- `A089193(n+1)-1` -/
def P243562782731200786.Spec : Prop :=
  ∀ n, P243562782731200786.a n = A089257 (n + 1)

theorem P243562782731200786.correct : P243562782731200786.Spec := by
  intro n
  simp only [A089257, Nat.add_sub_cancel]

end A089257

/-! ## A089257.P17328781018268012901

`A104635(n+1)+3`
-/

namespace A089257.P17328781018268012901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + 3

end

end A089257.P17328781018268012901

namespace A089257

/-- `A104635(n+1)+3` -/
def P17328781018268012901.Spec : Prop :=
  ∀ n, P17328781018268012901.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P11194443507396661727

`A087915(n+1)+4`
-/

namespace A089257.P11194443507396661727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + 4

end

end A089257.P11194443507396661727

namespace A089257

/-- `A087915(n+1)+4` -/
def P11194443507396661727.Spec : Prop :=
  ∀ n, P11194443507396661727.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P16383258258965119029

`2*A156287(n+1)`
-/

namespace A089257.P16383258258965119029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156287 (n + 1)

end

end A089257.P16383258258965119029

namespace A089257

/-- `2*A156287(n+1)` -/
def P16383258258965119029.Spec : Prop :=
  ∀ n, P16383258258965119029.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P16443641295152356522

`2*(A005099(n+1)+1)`
-/

namespace A089257.P16443641295152356522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005099 (n + 1) + 1)

end

end A089257.P16443641295152356522

namespace A089257

/-- `2*(A005099(n+1)+1)` -/
def P16443641295152356522.Spec : Prop :=
  ∀ n, P16443641295152356522.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P3160058830364754741

`2*(A095278(n+1)+2)`
-/

namespace A089257.P3160058830364754741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095278 (n + 1) + 2)

end

end A089257.P3160058830364754741

namespace A089257

/-- `2*(A095278(n+1)+2)` -/
def P3160058830364754741.Spec : Prop :=
  ∀ n, P3160058830364754741.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P3493894110435532026

`2*(A089986(n+1)+3)`
-/

namespace A089257.P3493894110435532026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089986 (n + 1) + 3)

end

end A089257.P3493894110435532026

namespace A089257

/-- `2*(A089986(n+1)+3)` -/
def P3493894110435532026.Spec : Prop :=
  ∀ n, P3493894110435532026.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P13970171355118094897

`A090658(n+1)/2+2`
-/

namespace A089257.P13970171355118094897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 2 + 2

end

end A089257.P13970171355118094897

namespace A089257

/-- `A090658(n+1)/2+2` -/
def P13970171355118094897.Spec : Prop :=
  ∀ n, P13970171355118094897.a n = (A089257 (n + 1) : ℚ)

end A089257

/-! ## A089257.P8094333125980584699

`(A089217(n+1)+3)/2`
-/

namespace A089257.P8094333125980584699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089217 (n + 1) + 3 : ℚ) / 2

end

end A089257.P8094333125980584699

namespace A089257

/-- `(A089217(n+1)+3)/2` -/
def P8094333125980584699.Spec : Prop :=
  ∀ n, P8094333125980584699.a n = (A089257 (n + 1) : ℚ)

end A089257

/-! ## A089257.P9379681740675426626

`(A002145(n+1)+5)/2`
-/

namespace A089257.P9379681740675426626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + 5 : ℚ) / 2

end

end A089257.P9379681740675426626

namespace A089257

/-- `(A002145(n+1)+5)/2` -/
def P9379681740675426626.Spec : Prop :=
  ∀ n, P9379681740675426626.a n = (A089257 (n + 1) : ℚ)

end A089257

/-! ## A089257.P11367388866991674088

`A281664(n+2)/2+3`
-/

namespace A089257.P11367388866991674088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281664 (n + 2) : ℚ) / 2 + 3

end

end A089257.P11367388866991674088

namespace A089257

/-- `A281664(n+2)/2+3` -/
def P11367388866991674088.Spec : Prop :=
  ∀ n, P11367388866991674088.a n = (A089257 (n + 1) : ℚ)

end A089257

/-! ## A089257.P4089535953570231675

`A089253(A138971(n+1))`
-/

namespace A089257.P4089535953570231675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (A138971 (n + 1)).toNat

end

end A089257.P4089535953570231675

namespace A089257

/-- `A089253(A138971(n+1))` -/
def P4089535953570231675.Spec : Prop :=
  ∀ n, P4089535953570231675.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P11758722499335816946

`record[A057023(n+1)+3]`
-/

namespace A089257.P11758722499335816946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057023 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089257.P11758722499335816946

namespace A089257

/-- `record[A057023(n+1)+3]` -/
def P11758722499335816946.Spec : Prop :=
  ∀ n, P11758722499335816946.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P12928763665792894368

`A124678(A080148(n+1))`
-/

namespace A089257.P12928763665792894368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (A080148 (n + 1)).toNat

end

end A089257.P12928763665792894368

namespace A089257

/-- `A124678(A080148(n+1))` -/
def P12928763665792894368.Spec : Prop :=
  ∀ n, P12928763665792894368.a n = A089257 (n + 1)

end A089257

/-! ## A089257.P12000776965155609060

`(record[A006530(or(3, n))]+5)/2`
-/

namespace A089257.P12000776965155609060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 3 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5 : ℚ) / 2

end

end A089257.P12000776965155609060

namespace A089257

/-- `(record[A006530(or(3, n))]+5)/2` -/
def P12000776965155609060.Spec : Prop :=
  ∀ n, P12000776965155609060.a n = (A089257 (n + 1) : ℚ)

end A089257

/-! ## A089257.P10784461363093785991

`record[A000010(or(3, n))/2-1]+4`
-/

namespace A089257.P10784461363093785991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.lor 3 n) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4

end

end A089257.P10784461363093785991

namespace A089257

/-- `record[A000010(or(3, n))/2-1]+4` -/
def P10784461363093785991.Spec : Prop :=
  ∀ n, P10784461363093785991.a n = (A089257 (n + 1) : ℚ)

end A089257

/-! ## A089257.P7412947134941642612

`2*(eq[2, A000005(4*n+3)]+2)`
-/

namespace A089257.P7412947134941642612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A089257.P7412947134941642612

namespace A089257

/-- `2*(eq[2, A000005(4*n+3)]+2)` -/
def P7412947134941642612.Spec : Prop :=
  ∀ n, (P7412947134941642612.a n : ℤ) = A089257 (n + 1)

end A089257

/-! ## A089257.P6751577955650064041

`lt[2*n, A000010(or(3, 2*n))]+4`
-/

namespace A089257.P6751577955650064041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 3 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 4

end

end A089257.P6751577955650064041

namespace A089257

/-- `lt[2*n, A000010(or(3, 2*n))]+4` -/
def P6751577955650064041.Spec : Prop :=
  ∀ n, (P6751577955650064041.a n : ℤ) = A089257 (n + 1)

end A089257

/-!
# A089258: Transposed version of A080955: T(n,k) = A080955(k,n), n>=0, k>=-1.

The programs for A089258, there is no canonical definition to state claims against.
-/

/-! ## A089258.P14911235430020201679

`A060475(n)-A145461(A326323(n))`
-/

namespace A089258.P14911235430020201679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n - A145461 (A326323 n).toNat

end

end A089258.P14911235430020201679

/-! ## A089258.P12695619604780538402

`gcd(A008616(A018314(n+1)), A033806(n))`
-/

namespace A089258.P12695619604780538402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008616 (A018314 (n + 1)).toNat) (A033806 n)

end

end A089258.P12695619604780538402

/-! ## A089258.P14558772238745745473

`A008616((1-A010054(n))*A018314(n+1))`
-/

namespace A089258.P14558772238745745473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((1 - A010054 n) * A018314 (n + 1)).toNat

end

end A089258.P14558772238745745473

/-! ## A089258.P1143028431882667243

`A008616((1-A033806(n))*A018314(n+1))`
-/

namespace A089258.P1143028431882667243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((1 - A033806 n) * A018314 (n + 1)).toNat

end

end A089258.P1143028431882667243

/-! ## A089258.P1318901731706128735

`A316863(A072299(3*n+2))+A308497(n+1)`
-/

namespace A089258.P1318901731706128735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A072299 (3 * n + 2)).toNat + A308497 (n + 1)

end

end A089258.P1318901731706128735

/-!
# A089259: Expansion of Product_{m>=1} 1/(1-x^m)^A000009(m).

The programs for A089259, there is no canonical definition to state claims against.
-/

/-! ## A089259.P7284281478680476886

`A069623(∑[∑{e}[n, #]]+ceil(3^(n-1)))`
-/

namespace A089259.P7284281478680476886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A089259.P7284281478680476886

/-! ## A089259.P12951478765142483501

`A003056(A124571(comp[2*n]))`
-/

namespace A089259.P12951478765142483501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A124571 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A089259.P12951478765142483501

/-! ## A089259.P6814304032910862249

`A002024(xor(1, A224289(n+2)))`
-/

namespace A089259.P6814304032910862249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.xor 1 (A224289 (n + 2))).toNat

end

end A089259.P6814304032910862249

/-! ## A089259.P8290700235085400112

`A069623(A003415(n)+3^abs(1-n))`
-/

namespace A089259.P8290700235085400112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (SequenceMachineLib.roundAway ((A003415 n : ℚ) + (3 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat

end

end A089259.P8290700235085400112

/-! ## A089259.P4849949469008405479

`A069623(A007091(n)+ceil(3^(n-1)))`
-/

namespace A089259.P4849949469008405479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A007091 n + ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A089259.P4849949469008405479

/-!
# A089260: Decimal expansion of -x, the largest negative real root of the equation Fibonacci(x) = 0.

The programs for A089260, there is no canonical definition to state claims against.
-/

/-! ## A089260.P17635245866646126580

`9-A353920(n)`
-/

namespace A089260.P17635245866646126580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A353920 n

end

end A089260.P17635245866646126580

/-!
# A089262: a(n) = 2^floor(log_2(n)) - 2^floor(log_2(n*2/3)).

The programs for A089262, there is no canonical definition to state claims against.
-/

/-! ## A089262.P14913858554446576982

`2*a(floor(n/2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A089262.P14913858554446576982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A089262.P14913858554446576982

/-! ## A089262.P17059809166500574393

`a(floor(n/2))/cot(atan(2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A089262.P17059809166500574393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / Real.cot (Real.arctan (2 : ℝ))

end

end A089262.P17059809166500574393

/-! ## A089262.P5506452009110379418

`a(floor(n/2))/sqrt(1/4)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A089262.P5506452009110379418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A089262.P5506452009110379418

/-! ## A089262.P9355086414803076519

`round(2*a(n-round(n/2)))` with `a(0)=0, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A089262.P9355086414803076519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * a ((n : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

end

end A089262.P9355086414803076519

/-! ## A089262.P2015616646301145435

`floor(2*a(∑[a(n-2)²]))` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A089262.P2015616646301145435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089262.P2015616646301145435

/-! ## A089262.P8479684078017211418

`floor(2*a(∑[floor(a(n-2))]))` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A089262.P8479684078017211418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089262.P8479684078017211418

/-! ## A089262.P4952887161570320176

`ceil(2*a(ceil(abs((1-n)/2))))` with `a(0)=0, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A089262.P4952887161570320176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * a ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat

end

end A089262.P4952887161570320176

/-! ## A089262.P6025935735100371568

`abs(a(floor(n/2))/(1-1/2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A089262.P6025935735100371568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  |a ⌊(n : ℚ) / 2⌋.toNat / (1 - (1 : ℚ) / 2)|

end

end A089262.P6025935735100371568

/-! ## A089262.P6915211809474979879

`floor(a(floor(n/2))/(1-1/2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A089262.P6915211809474979879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ⌊(a ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (1 - (1 : ℚ) / 2)⌋

end

end A089262.P6915211809474979879

/-! ## A089262.P13629734584196347282

`and(-(n+1), round(2^(ceil(log2(n+1))-2)))`
-/

namespace A089262.P13629734584196347282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ - 2 : ℤ)))

end

end A089262.P13629734584196347282

/-!
# A089263: First differences of A080791.

The programs for A089263, the canonical program `A089263.P3914223404551786681` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089263 has offset 0).

The definition of A089263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089263.P3914223404551786681

`a(floor(n/2))-a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A089263

/-- `a(floor(n/2))-a(n-1)` -/
def P3914223404551786681.Spec : Prop :=
  ∀ n, P3914223404551786681.a n = A089263 n

theorem P3914223404551786681.correct : P3914223404551786681.Spec := by
  intro n
  simp only [A089263]

end A089263

/-! ## A089263.P8255278494623978861

`floor(a(∑[a(n-2)²])-a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A089263.P8255278494623978861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A089263.P8255278494623978861

namespace A089263

/-- `floor(a(∑[a(n-2)²])-a(n-1))` -/
def P8255278494623978861.Spec : Prop :=
  ∀ n, P8255278494623978861.a n = A089263 n

end A089263

/-! ## A089263.P6011004567776188095

`floor(a(∑[floor(a(n-2))])-a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A089263.P6011004567776188095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A089263.P6011004567776188095

namespace A089263

/-- `floor(a(∑[floor(a(n-2))])-a(n-1))` -/
def P6011004567776188095.Spec : Prop :=
  ∀ n, P6011004567776188095.a n = A089263 n

end A089263

/-! ## A089263.P18132379874177632958

`Δ[A080791(abs(1-n))]`
-/

namespace A089263.P18132379874177632958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089263.P18132379874177632958

namespace A089263

/-- `Δ[A080791(abs(1-n))]` -/
def P18132379874177632958.Spec : Prop :=
  ∀ n, P18132379874177632958.a n = A089263 n

end A089263

/-! ## A089263.P88555596575644548

`floor(ratio[A294442(n)])-1`
-/

namespace A089263.P88555596575644548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ - 1

end

end A089263.P88555596575644548

namespace A089263

/-- `floor(ratio[A294442(n)])-1` -/
def P88555596575644548.Spec : Prop :=
  ∀ n, P88555596575644548.a n = A089263 n

end A089263

/-! ## A089263.P7863123018008288449

`A135523(A028310(n))-1`
-/

namespace A089263.P7863123018008288449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A028310 n).toNat - 1

end

end A089263.P7863123018008288449

namespace A089263

/-- `A135523(A028310(n))-1` -/
def P7863123018008288449.Spec : Prop :=
  ∀ n, P7863123018008288449.a n = A089263 n

end A089263

/-! ## A089263.P8022659471781498844

`A209229(n)-A088705(n)`
-/

namespace A089263.P8022659471781498844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A088705 n

end

end A089263.P8022659471781498844

namespace A089263

/-- `A209229(n)-A088705(n)` -/
def P8022659471781498844.Spec : Prop :=
  ∀ n, P8022659471781498844.a n = A089263 n

end A089263

/-! ## A089263.P12559382475407037195

`A290251(n)-A008687(n)`
-/

namespace A089263.P12559382475407037195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n - A008687 n

end

end A089263.P12559382475407037195

namespace A089263

/-- `A290251(n)-A008687(n)` -/
def P12559382475407037195.Spec : Prop :=
  ∀ n, P12559382475407037195.a n = A089263 n

end A089263

/-! ## A089263.P18375677903737668215

`A088705(n)-A269735(n)`
-/

namespace A089263.P18375677903737668215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n - A269735 n

end

end A089263.P18375677903737668215

namespace A089263

/-- `A088705(n)-A269735(n)` -/
def P18375677903737668215.Spec : Prop :=
  ∀ n, P18375677903737668215.a n = A089263 n

end A089263

/-! ## A089263.P16614050827015899032

`Δ[A008687(n)]%A008729(n)`
-/

namespace A089263.P16614050827015899032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A008729 n)

end

end A089263.P16614050827015899032

namespace A089263

/-- `Δ[A008687(n)]%A008729(n)` -/
def P16614050827015899032.Spec : Prop :=
  ∀ n, P16614050827015899032.a n = A089263 n

end A089263

/-! ## A089263.P3314702162757908283

`A135560(A000007(n)+n)-2`
-/

namespace A089263.P3314702162757908283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A000007 n + (n : ℤ)).toNat - 2

end

end A089263.P3314702162757908283

namespace A089263

/-- `A135560(A000007(n)+n)-2` -/
def P3314702162757908283.Spec : Prop :=
  ∀ n, P3314702162757908283.a n = A089263 n

end A089263

/-! ## A089263.P5852807599474178059

`A135560(A004277(n)-n)-2`
-/

namespace A089263.P5852807599474178059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A004277 n - (n : ℤ)).toNat - 2

end

end A089263.P5852807599474178059

namespace A089263

/-- `A135560(A004277(n)-n)-2` -/
def P5852807599474178059.Spec : Prop :=
  ∀ n, P5852807599474178059.a n = A089263 n

end A089263

/-! ## A089263.P3549943668495379547

`A135560(or(n, A036987(n)))-2`
-/

namespace A089263.P3549943668495379547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (Int.lor (n : ℤ) (A036987 n)).toNat - 2

end

end A089263.P3549943668495379547

namespace A089263

/-- `A135560(or(n, A036987(n)))-2` -/
def P3549943668495379547.Spec : Prop :=
  ∀ n, P3549943668495379547.a n = A089263 n

end A089263

/-! ## A089263.P2205481085649105322

`A080791(n)-A080791(abs(1-n))`
-/

namespace A089263.P2205481085649105322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n - A080791 |1 - (n : ℤ)|.toNat

end

end A089263.P2205481085649105322

namespace A089263

/-- `A080791(n)-A080791(abs(1-n))` -/
def P2205481085649105322.Spec : Prop :=
  ∀ n, P2205481085649105322.a n = A089263 n

end A089263

/-! ## A089263.P15292644900482173067

`A135560(or(n, A135416(n+1)))-2`
-/

namespace A089263.P15292644900482173067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (Int.lor (n : ℤ) (A135416 (n + 1))).toNat - 2

end

end A089263.P15292644900482173067

namespace A089263

/-- `A135560(or(n, A135416(n+1)))-2` -/
def P15292644900482173067.Spec : Prop :=
  ∀ n, P15292644900482173067.a n = A089263 n

end A089263

/-! ## A089263.P16082050400476292975

`A290251(n)-A290251(A004273(n))`
-/

namespace A089263.P16082050400476292975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n - A290251 (A004273 n).toNat

end

end A089263.P16082050400476292975

namespace A089263

/-- `A290251(n)-A290251(A004273(n))` -/
def P16082050400476292975.Spec : Prop :=
  ∀ n, P16082050400476292975.a n = A089263 n

end A089263

/-! ## A089263.P83355591096488961

`A290251(n)-A290251(A129343(n))`
-/

namespace A089263.P83355591096488961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n - A290251 (A129343 n).toNat

end

end A089263.P83355591096488961

namespace A089263

/-- `A290251(n)-A290251(A129343(n))` -/
def P83355591096488961.Spec : Prop :=
  ∀ n, P83355591096488961.a n = A089263 n

end A089263

/-! ## A089263.P8699370300519465362

`A290251(n)-A290251(A004760(n+1))`
-/

namespace A089263.P8699370300519465362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n - A290251 (A004760 (n + 1)).toNat

end

end A089263.P8699370300519465362

namespace A089263

/-- `A290251(n)-A290251(A004760(n+1))` -/
def P8699370300519465362.Spec : Prop :=
  ∀ n, P8699370300519465362.a n = A089263 n

end A089263

/-! ## A089263.P13784317782831147927

`Δ[val(A329887(n), 3)]`
-/

namespace A089263.P13784317782831147927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329887 n).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A089263.P13784317782831147927

namespace A089263

/-- `Δ[val(A329887(n), 3)]` -/
def P13784317782831147927.Spec : Prop :=
  ∀ n, P13784317782831147927.a n = A089263 n

end A089263

/-! ## A089263.P2074277764544354584

`A023416(A267584(n))-A008687(n)`
-/

namespace A089263.P2074277764544354584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A267584 n).toNat - A008687 n

end

end A089263.P2074277764544354584

namespace A089263

/-- `A023416(A267584(n))-A008687(n)` -/
def P2074277764544354584.Spec : Prop :=
  ∀ n, P2074277764544354584.a n = A089263 n

end A089263

/-!
# A089264: Number of permutations of length n containing exactly once 132 and 213, likewise for pattern pair (231,312).

The programs for A089264, there is no canonical definition to state claims against.
-/

/-! ## A089264.P4659625331385044385

`A038567(A072863(2*n))+1`
-/

namespace A089264.P4659625331385044385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A072863 (2 * n)).toNat + 1

end

end A089264.P4659625331385044385

/-! ## A089264.P7591997774808180705

`A247485(or(xor(1, n), A052913(n)))`
-/

namespace A089264.P7591997774808180705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247485 (Int.lor (Nat.xor 1 n : ℤ) (A052913 n)).toNat

end

end A089264.P7591997774808180705

/-! ## A089264.P3726177109344861797

`A247485(A052913(n)+floor(n/(xor(n, n+1)+1)))`
-/

namespace A089264.P3726177109344861797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247485 (A052913 n + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A089264.P3726177109344861797

/-!
# A089265: a(1) = 0; thereafter a(2*n) = a(n) + 1, a(2*n+1) = 2*n.

The programs for A089265, the canonical program `A089265.P11891266049107648867` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089265 has offset 1).

The definition of A089265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089265.P14818968324839538556

`val(n+1, 2)+(n+1)/2^val(n+1, 2)-1`
-/

namespace A089265.P14818968324839538556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1

end

end A089265.P14818968324839538556

namespace A089265

/-- `val(n+1, 2)+(n+1)/2^val(n+1, 2)-1` -/
def P14818968324839538556.Spec : Prop :=
  ∀ n, P14818968324839538556.a n = (A089265 (n + 1) : ℚ)

end A089265

/-! ## A089265.P11891266049107648867

`A007814(n+1)+2*A025480(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A089265

/-- `A007814(n+1)+2*A025480(n)` -/
def P11891266049107648867.Spec : Prop :=
  ∀ n, P11891266049107648867.a n = A089265 (n + 1)

theorem P11891266049107648867.correct : P11891266049107648867.Spec := by
  intro n
  simp only [A089265, Nat.add_sub_cancel]

end A089265

/-! ## A089265.P6221049092484507016

`A007814(n+1)+A000265(n+1)-1`
-/

namespace A089265.P6221049092484507016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A000265 (n + 1) - 1

end

end A089265.P6221049092484507016

namespace A089265

/-- `A007814(n+1)+A000265(n+1)-1` -/
def P6221049092484507016.Spec : Prop :=
  ∀ n, P6221049092484507016.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P10055157942107313660

`floor(n/2^val(n+1, 2))+val(n+1, 2)`
-/

namespace A089265.P10055157942107313660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A089265.P10055157942107313660

namespace A089265

/-- `floor(n/2^val(n+1, 2))+val(n+1, 2)` -/
def P10055157942107313660.Spec : Prop :=
  ∀ n, P10055157942107313660.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P14307745807508865882

`floor(n/and(n+1, -(n+1)))+val(n+1, 2)`
-/

namespace A089265.P14307745807508865882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A089265.P14307745807508865882

namespace A089265

/-- `floor(n/and(n+1, -(n+1)))+val(n+1, 2)` -/
def P14307745807508865882.Spec : Prop :=
  ∀ n, P14307745807508865882.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P18390451912130010902

`floor(n/and(n+1, -(n+1)))+log2(and(n+1, -(n+1)))`
-/

namespace A089265.P18390451912130010902
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℝ) + Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

end

end A089265.P18390451912130010902

namespace A089265

/-- `floor(n/and(n+1, -(n+1)))+log2(and(n+1, -(n+1)))` -/
def P18390451912130010902.Spec : Prop :=
  ∀ n, P18390451912130010902.a n = (A089265 (n + 1) : ℝ)

end A089265

/-! ## A089265.P10930688156076130607

`floor(-n/or(n+1, -(n+1)))+log2(-or(n+1, -(n+1)))`
-/

namespace A089265.P10930688156076130607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊-((n : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))⌋ : ℝ) + Real.logb 2 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

end

end A089265.P10930688156076130607

namespace A089265

/-- `floor(-n/or(n+1, -(n+1)))+log2(-or(n+1, -(n+1)))` -/
def P10930688156076130607.Spec : Prop :=
  ∀ n, P10930688156076130607.a n = (A089265 (n + 1) : ℝ)

end A089265

/-! ## A089265.P13112056796556988404

`log2(-or(n+1, -(n+1)))+and(n, n+1)/and(n+1, -(n+1))`
-/

namespace A089265.P13112056796556988404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + ((Nat.land n (n + 1) : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) : ℝ)

end

end A089265.P13112056796556988404

namespace A089265

/-- `log2(-or(n+1, -(n+1)))+and(n, n+1)/and(n+1, -(n+1))` -/
def P13112056796556988404.Spec : Prop :=
  ∀ n, P13112056796556988404.a n = (A089265 (n + 1) : ℝ)

end A089265

/-! ## A089265.P13147382114173297502

`A119674(n+1)-1`
-/

namespace A089265.P13147382114173297502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119674 (n + 1) - 1

end

end A089265.P13147382114173297502

namespace A089265

/-- `A119674(n+1)-1` -/
def P13147382114173297502.Spec : Prop :=
  ∀ n, P13147382114173297502.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P11177412946812267910

`2*n-A274593(n)`
-/

namespace A089265.P11177412946812267910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A274593 n

end

end A089265.P11177412946812267910

namespace A089265

/-- `2*n-A274593(n)` -/
def P11177412946812267910.Spec : Prop :=
  ∀ n, P11177412946812267910.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P2848056547979252117

`A153733(n)+floor(log2(xor(n, n+1)))`
-/

namespace A089265.P2848056547979252117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + (Nat.log 2 (Nat.xor n (n + 1)) : ℤ)

end

end A089265.P2848056547979252117

namespace A089265

/-- `A153733(n)+floor(log2(xor(n, n+1)))` -/
def P2848056547979252117.Spec : Prop :=
  ∀ n, P2848056547979252117.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P15474651657149737077

`A000523(and(n+1, -(n+1)))+floor(n/and(n+1, -(n+1)))`
-/

namespace A089265.P15474651657149737077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat + ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

end

end A089265.P15474651657149737077

namespace A089265

/-- `A000523(and(n+1, -(n+1)))+floor(n/and(n+1, -(n+1)))` -/
def P15474651657149737077.Spec : Prop :=
  ∀ n, P15474651657149737077.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P5063671091499740803

`A001222(and(n+1, -(n+1)))+floor(n/and(n+1, -(n+1)))`
-/

namespace A089265.P5063671091499740803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat + ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

end

end A089265.P5063671091499740803

namespace A089265

/-- `A001222(and(n+1, -(n+1)))+floor(n/and(n+1, -(n+1)))` -/
def P5063671091499740803.Spec : Prop :=
  ∀ n, P5063671091499740803.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P14108134762851302795

`A023443(A119674(n+1))`
-/

namespace A089265.P14108134762851302795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A119674 (n + 1)).toNat

end

end A089265.P14108134762851302795

namespace A089265

/-- `A023443(A119674(n+1))` -/
def P14108134762851302795.Spec : Prop :=
  ∀ n, P14108134762851302795.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P18195966769528488383

`A153733(n)+A007814(n+1)`
-/

namespace A089265.P18195966769528488383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + A007814 (n + 1)

end

end A089265.P18195966769528488383

namespace A089265

/-- `A153733(n)+A007814(n+1)` -/
def P18195966769528488383.Spec : Prop :=
  ∀ n, P18195966769528488383.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P4723720957278677788

`A274716(n+1)+A000120(n)`
-/

namespace A089265.P4723720957278677788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274716 (n + 1) + A000120 n

end

end A089265.P4723720957278677788

namespace A089265

/-- `A274716(n+1)+A000120(n)` -/
def P4723720957278677788.Spec : Prop :=
  ∀ n, P4723720957278677788.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P4696443410040902233

`A271519(n+1)+A025480(n)`
-/

namespace A089265.P4696443410040902233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (n + 1) + A025480 n

end

end A089265.P4696443410040902233

namespace A089265

/-- `A271519(n+1)+A025480(n)` -/
def P4696443410040902233.Spec : Prop :=
  ∀ n, P4696443410040902233.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P1013514211868669253

`A005408(n)-(A274593(n)+1)`
-/

namespace A089265.P1013514211868669253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A274593 n + 1)

end

end A089265.P1013514211868669253

namespace A089265

/-- `A005408(n)-(A274593(n)+1)` -/
def P1013514211868669253.Spec : Prop :=
  ∀ n, P1013514211868669253.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P1291643551129963876

`A025480(n)+A330393(n)-1`
-/

namespace A089265.P1291643551129963876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + (A330393 n - 1)

end

end A089265.P1291643551129963876

namespace A089265

/-- `A025480(n)+A330393(n)-1` -/
def P1291643551129963876.Spec : Prop :=
  ∀ n, P1291643551129963876.a n = A089265 (n + 1)

end A089265

/-! ## A089265.P16434794399126365651

`A153733(n)+log2(A006519(n+1))`
-/

namespace A089265.P16434794399126365651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153733 n : ℝ) + Real.logb 2 (A006519 (n + 1) : ℝ)

end

end A089265.P16434794399126365651

namespace A089265

/-- `A153733(n)+log2(A006519(n+1))` -/
def P16434794399126365651.Spec : Prop :=
  ∀ n, P16434794399126365651.a n = (A089265 (n + 1) : ℝ)

end A089265

/-!
# A089266: Rational knots of determinant 2n+1, counting chiral pairs twice.

The programs for A089266, the canonical program `A089266.P11282581863693647808` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089266 has offset 1).

The definition of A089266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089266.P15791796212576142407

`A180783(2*n+3)`
-/

namespace A089266.P15791796212576142407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (2 * n + 3)

end

end A089266.P15791796212576142407

namespace A089266

/-- `A180783(2*n+3)` -/
def P15791796212576142407.Spec : Prop :=
  ∀ n, P15791796212576142407.a n = A089266 (n + 1)

end A089266

/-! ## A089266.P2056619564063265441

`A000027(A180783(Δ[(n+1)²]))`
-/

namespace A089266.P2056619564063265441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A180783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A089266.P2056619564063265441

namespace A089266

/-- `A000027(A180783(Δ[(n+1)²]))` -/
def P2056619564063265441.Spec : Prop :=
  ∀ n, P2056619564063265441.a n = A089266 (n + 1)

end A089266

/-! ## A089266.P6097406740760790972

`A180783(Δ[(n+1)²])%A017329(n)`
-/

namespace A089266.P6097406740760790972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A017329 n)

end

end A089266.P6097406740760790972

namespace A089266

/-- `A180783(Δ[(n+1)²])%A017329(n)` -/
def P6097406740760790972.Spec : Prop :=
  ∀ n, P6097406740760790972.a n = A089266 (n + 1)

end A089266

/-! ## A089266.P11282581863693647808

`A023022(2*n+3)+A007875(2*n+3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A089266

/-- `A023022(2*n+3)+A007875(2*n+3)` -/
def P11282581863693647808.Spec : Prop :=
  ∀ n, P11282581863693647808.a n = A089266 (n + 1)

theorem P11282581863693647808.correct : P11282581863693647808.Spec := by
  intro n
  simp only [A089266, Nat.add_sub_cancel]

end A089266

/-! ## A089266.P14877757540744287853

`A180783(Δ[(n+1)²])+C(2, A000203(n+2))`
-/

namespace A089266.P14877757540744287853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A089266.P14877757540744287853

namespace A089266

/-- `A180783(Δ[(n+1)²])+C(2, A000203(n+2))` -/
def P14877757540744287853.Spec : Prop :=
  ∀ n, P14877757540744287853.a n = A089266 (n + 1)

end A089266

/-! ## A089266.P300287143250885254

`A180783(Δ[(n+1)²])+(n+1)%A020639(n+1)`
-/

namespace A089266.P300287143250885254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + Int.tmod (n + 1 : ℤ) (A020639 (n + 1))

end

end A089266.P300287143250885254

namespace A089266

/-- `A180783(Δ[(n+1)²])+(n+1)%A020639(n+1)` -/
def P300287143250885254.Spec : Prop :=
  ∀ n, P300287143250885254.a n = A089266 (n + 1)

end A089266

/-! ## A089266.P7782768207016202234

`gcd(A000038(n), A180783(A008574(n+1)+2))`
-/

namespace A089266.P7782768207016202234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A180783 (A008574 (n + 1) + 2).toNat)

end

end A089266.P7782768207016202234

namespace A089266

/-- `gcd(A000038(n), A180783(A008574(n+1)+2))` -/
def P7782768207016202234.Spec : Prop :=
  ∀ n, (P7782768207016202234.a n : ℤ) = A089266 (n + 1)

end A089266

/-! ## A089266.P4959905569215342824

`∑{d}[A180783(A008574(n+1)+2), A000010(#)]`
-/

namespace A089266.P4959905569215342824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (A008574 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A089266.P4959905569215342824

namespace A089266

/-- `∑{d}[A180783(A008574(n+1)+2), A000010(#)]` -/
def P4959905569215342824.Spec : Prop :=
  ∀ n, P4959905569215342824.a n = A089266 (n + 1)

end A089266

/-! ## A089266.P1154380549576761504

`A180783(A008574(n+1)+2)%A000040(n+1)²`
-/

namespace A089266.P1154380549576761504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180783 (A008574 (n + 1) + 2).toNat) (A000040 (n + 1) ^ 2)

end

end A089266.P1154380549576761504

namespace A089266

/-- `A180783(A008574(n+1)+2)%A000040(n+1)²` -/
def P1154380549576761504.Spec : Prop :=
  ∀ n, P1154380549576761504.a n = A089266 (n + 1)

end A089266

/-! ## A089266.P1598881202613390454

`A180783(A008574(n+1)+2)^A000010(ceil(2/(n+1)))`
-/

namespace A089266.P1598881202613390454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180783 (A008574 (n + 1) + 2).toNat : ℚ) ^ (A000010 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A089266.P1598881202613390454

namespace A089266

/-- `A180783(A008574(n+1)+2)^A000010(ceil(2/(n+1)))` -/
def P1598881202613390454.Spec : Prop :=
  ∀ n, P1598881202613390454.a n = (A089266 (n + 1) : ℚ)

end A089266

/-! ## A089266.P8325469932098971493

`A185278(8*n+12)`
-/

namespace A089266.P8325469932098971493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185278 (8 * n + 12)

end

end A089266.P8325469932098971493

namespace A089266

/-- `A185278(8*n+12)` -/
def P8325469932098971493.Spec : Prop :=
  ∀ n, P8325469932098971493.a n = A089266 (n + 1)

end A089266

/-!
# A089268: Odd semiprimes m such that m-2 is composite.

The programs for A089268, the canonical program `A089268.P8199999955887723334` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089268 has offset 1).

The definition of A089268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089268.P1166036322982050817

`filter[A025583(n+1), A064911(#)]`
-/

namespace A089268.P1166036322982050817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A089268.P1166036322982050817

namespace A089268

/-- `filter[A025583(n+1), A064911(#)]` -/
def P1166036322982050817.Spec : Prop :=
  ∀ n, P1166036322982050817.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P8806249463632420202

`filter[A025583(n+1), A101040(#)]`
-/

namespace A089268.P8806249463632420202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A089268.P8806249463632420202

namespace A089268

/-- `filter[A025583(n+1), A101040(#)]` -/
def P8806249463632420202.Spec : Prop :=
  ∀ n, P8806249463632420202.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P745290753243700656

`filter[A025583(n+1), A353480(#)]`
-/

namespace A089268.P745290753243700656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A089268.P745290753243700656

namespace A089268

/-- `filter[A025583(n+1), A353480(#)]` -/
def P745290753243700656.Spec : Prop :=
  ∀ n, P745290753243700656.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P5917295295832334215

`filter[A025583(n+1), A359828(#)]`
-/

namespace A089268.P5917295295832334215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A089268.P5917295295832334215

namespace A089268

/-- `filter[A025583(n+1), A359828(#)]` -/
def P5917295295832334215.Spec : Prop :=
  ∀ n, P5917295295832334215.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P8199999955887723334

`∩[A001358(n+1), A025583(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A089268

/-- `∩[A001358(n+1), A025583(n+1)]` -/
def P8199999955887723334.Spec : Prop :=
  ∀ n, (P8199999955887723334.a n : ℤ) = A089268 (n + 1)

theorem P8199999955887723334.correct : P8199999955887723334.Spec := by
  intro n
  simp only [A089268, Nat.add_sub_cancel]

end A089268

/-! ## A089268.P202000532102691469

`∩[A025583(n+1), A046315(n+1)]`
-/

namespace A089268.P202000532102691469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089268.P202000532102691469

namespace A089268

/-- `∩[A025583(n+1), A046315(n+1)]` -/
def P202000532102691469.Spec : Prop :=
  ∀ n, (P202000532102691469.a n : ℤ) = A089268 (n + 1)

end A089268

/-! ## A089268.P16454427217118004586

`∩[A025583(n+1), A077135(n+1)]`
-/

namespace A089268.P16454427217118004586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089268.P16454427217118004586

namespace A089268

/-- `∩[A025583(n+1), A077135(n+1)]` -/
def P16454427217118004586.Spec : Prop :=
  ∀ n, (P16454427217118004586.a n : ℤ) = A089268 (n + 1)

end A089268

/-! ## A089268.P5039835685698448580

`∩[A025583(n+1), A077136(n+1)]`
-/

namespace A089268.P5039835685698448580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089268.P5039835685698448580

namespace A089268

/-- `∩[A025583(n+1), A077136(n+1)]` -/
def P5039835685698448580.Spec : Prop :=
  ∀ n, (P5039835685698448580.a n : ℤ) = A089268 (n + 1)

end A089268

/-! ## A089268.P739017843094424659

`∩[A025583(n+1), A176540(n+1)]`
-/

namespace A089268.P739017843094424659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089268.P739017843094424659

namespace A089268

/-- `∩[A025583(n+1), A176540(n+1)]` -/
def P739017843094424659.Spec : Prop :=
  ∀ n, (P739017843094424659.a n : ℤ) = A089268 (n + 1)

end A089268

/-! ## A089268.P9421126988636615679

`filter[A109934(n+1), A353480(#)]`
-/

namespace A089268.P9421126988636615679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A089268.P9421126988636615679

namespace A089268

/-- `filter[A109934(n+1), A353480(#)]` -/
def P9421126988636615679.Spec : Prop :=
  ∀ n, P9421126988636615679.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P15985424323103031867

`filter[A164376(n+2), A064911(#)]`
-/

namespace A089268.P15985424323103031867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A089268.P15985424323103031867

namespace A089268

/-- `filter[A164376(n+2), A064911(#)]` -/
def P15985424323103031867.Spec : Prop :=
  ∀ n, P15985424323103031867.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P12618904005772727055

`filter[A164376(n+2), A101040(#)]`
-/

namespace A089268.P12618904005772727055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A089268.P12618904005772727055

namespace A089268

/-- `filter[A164376(n+2), A101040(#)]` -/
def P12618904005772727055.Spec : Prop :=
  ∀ n, P12618904005772727055.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P5413419501589293995

`filter[A109934(n+2), A359828(#)]`
-/

namespace A089268.P5413419501589293995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A089268.P5413419501589293995

namespace A089268

/-- `filter[A109934(n+2), A359828(#)]` -/
def P5413419501589293995.Spec : Prop :=
  ∀ n, P5413419501589293995.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P18272344956889314777

`filter[A164376(n+2), A353480(#)]`
-/

namespace A089268.P18272344956889314777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A089268.P18272344956889314777

namespace A089268

/-- `filter[A164376(n+2), A353480(#)]` -/
def P18272344956889314777.Spec : Prop :=
  ∀ n, P18272344956889314777.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P5890600885553285141

`filter[A109934(n+3), A064911(#)]`
-/

namespace A089268.P5890600885553285141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A089268.P5890600885553285141

namespace A089268

/-- `filter[A109934(n+3), A064911(#)]` -/
def P5890600885553285141.Spec : Prop :=
  ∀ n, P5890600885553285141.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P17167555980616353135

`filter[A109934(n+3), A101040(#)]`
-/

namespace A089268.P17167555980616353135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A089268.P17167555980616353135

namespace A089268

/-- `filter[A109934(n+3), A101040(#)]` -/
def P17167555980616353135.Spec : Prop :=
  ∀ n, P17167555980616353135.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P14514441967031197604

`filter[A164376(n+3), A359828(#)]`
-/

namespace A089268.P14514441967031197604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A089268.P14514441967031197604

namespace A089268

/-- `filter[A164376(n+3), A359828(#)]` -/
def P14514441967031197604.Spec : Prop :=
  ∀ n, P14514441967031197604.a n = A089268 (n + 1)

end A089268

/-! ## A089268.P7099263079357898138

`∩[A046315(n+1), A109934(n+1)]`
-/

namespace A089268.P7099263079357898138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089268.P7099263079357898138

namespace A089268

/-- `∩[A046315(n+1), A109934(n+1)]` -/
def P7099263079357898138.Spec : Prop :=
  ∀ n, (P7099263079357898138.a n : ℤ) = A089268 (n + 1)

end A089268

/-! ## A089268.P12446027262795813338

`∩[A001358(n+1), A164376(n+1)]`
-/

namespace A089268.P12446027262795813338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089268.P12446027262795813338

namespace A089268

/-- `∩[A001358(n+1), A164376(n+1)]` -/
def P12446027262795813338.Spec : Prop :=
  ∀ n, (P12446027262795813338.a n : ℤ) = A089268 (n + 1)

end A089268

/-! ## A089268.P11262384997927777757

`∩[A046315(n+1), A164376(n+1)]`
-/

namespace A089268.P11262384997927777757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089268.P11262384997927777757

namespace A089268

/-- `∩[A046315(n+1), A164376(n+1)]` -/
def P11262384997927777757.Spec : Prop :=
  ∀ n, (P11262384997927777757.a n : ℤ) = A089268 (n + 1)

end A089268

/-!
# A089269: Squarefree numbers congruent to 1 or 2 mod 4.

The programs for A089269, the canonical program `A089269.P15934336637969450658` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089269 has offset 1).

The definition of A089269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089269.P16005621755545706255

`A191483(n+1)/4`
-/

namespace A089269.P16005621755545706255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191483 (n + 1) : ℚ) / 4

end

end A089269.P16005621755545706255

namespace A089269

/-- `A191483(n+1)/4` -/
def P16005621755545706255.Spec : Prop :=
  ∀ n, P16005621755545706255.a n = (A089269 (n + 1) : ℚ)

end A089269

/-! ## A089269.P17916206497870558689

`record[A007913(or(1, n)+n)]`
-/

namespace A089269.P17916206497870558689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 1 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089269.P17916206497870558689

namespace A089269

/-- `record[A007913(or(1, n)+n)]` -/
def P17916206497870558689.Spec : Prop :=
  ∀ n, P17916206497870558689.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P2732553107861116754

`record[A007947(or(1, n)+n)]`
-/

namespace A089269.P2732553107861116754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.lor 1 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089269.P2732553107861116754

namespace A089269

/-- `record[A007947(or(1, n)+n)]` -/
def P2732553107861116754.Spec : Prop :=
  ∀ n, P2732553107861116754.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P16877447702253975581

`∩[or(1, n)+n, A005117(n+1)]`
-/

namespace A089269.P16877447702253975581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089269.P16877447702253975581

namespace A089269

/-- `∩[or(1, n)+n, A005117(n+1)]` -/
def P16877447702253975581.Spec : Prop :=
  ∀ n, (P16877447702253975581.a n : ℤ) = A089269 (n + 1)

end A089269

/-! ## A089269.P16687297757378348114

`record[A007947((n+1)%2+2*n)]`
-/

namespace A089269.P16687297757378348114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1) % 2 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089269.P16687297757378348114

namespace A089269

/-- `record[A007947((n+1)%2+2*n)]` -/
def P16687297757378348114.Spec : Prop :=
  ∀ n, P16687297757378348114.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P5050771265712052173

`record[(1-and(2, n))*A007913(n+1)]`
-/

namespace A089269.P5050771265712052173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089269.P5050771265712052173

namespace A089269

/-- `record[(1-and(2, n))*A007913(n+1)]` -/
def P5050771265712052173.Spec : Prop :=
  ∀ n, P5050771265712052173.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P15934336637969450658

`eq[1-and(2, n), A005361(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089269

/-- `eq[1-and(2, n), A005361(n+1)]+1` -/
def P15934336637969450658.Spec : Prop :=
  ∀ n, (P15934336637969450658.a n : ℤ) = A089269 (n + 1)

theorem P15934336637969450658.correct : P15934336637969450658.Spec := by
  intro n
  simp only [A089269, Nat.add_sub_cancel]

end A089269

/-! ## A089269.P8479773539654028247

`eq[n, A007947(C((n+3)%4, 2)+n)]`
-/

namespace A089269.P8479773539654028247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.choose ((n + 3) % 4) 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089269.P8479773539654028247

namespace A089269

/-- `eq[n, A007947(C((n+3)%4, 2)+n)]` -/
def P8479773539654028247.Spec : Prop :=
  ∀ n, (P8479773539654028247.a n : ℤ) = A089269 (n + 1)

end A089269

/-! ## A089269.P16163725171848110321

`eq[n, A007947(C(3, and(3, n+1)²)+n)]`
-/

namespace A089269.P16163725171848110321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.choose 3 (Nat.land 3 (n + 1) ^ 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089269.P16163725171848110321

namespace A089269

/-- `eq[n, A007947(C(3, and(3, n+1)²)+n)]` -/
def P16163725171848110321.Spec : Prop :=
  ∀ n, (P16163725171848110321.a n : ℤ) = A089269 (n + 1)

end A089269

/-! ## A089269.P5203396978275548341

`eq[n, A007947(A000010(2^and(3, n-1))+n-1)]`
-/

namespace A089269.P5203396978275548341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.land 3 ((n : ℤ) - 1) : ℤ))).toNat + ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089269.P5203396978275548341

namespace A089269

/-- `eq[n, A007947(A000010(2^and(3, n-1))+n-1)]` -/
def P5203396978275548341.Spec : Prop :=
  ∀ n, (P5203396978275548341.a n : ℤ) = A089269 (n + 1)

end A089269

/-! ## A089269.P13155164186275934860

`record[A007947(abs(char[2*n+1]-2*n)+1)]`
-/

namespace A089269.P13155164186275934860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (|((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (2 * n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089269.P13155164186275934860

namespace A089269

/-- `record[A007947(abs(char[2*n+1]-2*n)+1)]` -/
def P13155164186275934860.Spec : Prop :=
  ∀ n, P13155164186275934860.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P10171562699407189142

`filter[A042963(n+1), A008966(#)]`
-/

namespace A089269.P10171562699407189142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A089269.P10171562699407189142

namespace A089269

/-- `filter[A042963(n+1), A008966(#)]` -/
def P10171562699407189142.Spec : Prop :=
  ∀ n, P10171562699407189142.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P15423242633631011040

`filter[A042963(n+1), A323154(#)]`
-/

namespace A089269.P15423242633631011040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A089269.P15423242633631011040

namespace A089269

/-- `filter[A042963(n+1), A323154(#)]` -/
def P15423242633631011040.Spec : Prop :=
  ∀ n, P15423242633631011040.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P18404720149398593833

`filter[A042963(n+1), A353559(#)]`
-/

namespace A089269.P18404720149398593833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A089269.P18404720149398593833

namespace A089269

/-- `filter[A042963(n+1), A353559(#)]` -/
def P18404720149398593833.Spec : Prop :=
  ∀ n, P18404720149398593833.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P814999578620130653

`filter[A042963(n+1), A353627(#)]`
-/

namespace A089269.P814999578620130653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A089269.P814999578620130653

namespace A089269

/-- `filter[A042963(n+1), A353627(#)]` -/
def P814999578620130653.Spec : Prop :=
  ∀ n, P814999578620130653.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P1969152933837783136

`filter[A042963(n+1), A359834(#)]`
-/

namespace A089269.P1969152933837783136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A089269.P1969152933837783136

namespace A089269

/-- `filter[A042963(n+1), A359834(#)]` -/
def P1969152933837783136.Spec : Prop :=
  ∀ n, P1969152933837783136.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P16699096306410832468

`∩[A034044(n+1), A042963(n+1)]`
-/

namespace A089269.P16699096306410832468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089269.P16699096306410832468

namespace A089269

/-- `∩[A034044(n+1), A042963(n+1)]` -/
def P16699096306410832468.Spec : Prop :=
  ∀ n, (P16699096306410832468.a n : ℤ) = A089269 (n + 1)

end A089269

/-! ## A089269.P17037968032072164541

`filter[A383252(n+1), A008966(#)]`
-/

namespace A089269.P17037968032072164541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A089269.P17037968032072164541

namespace A089269

/-- `filter[A383252(n+1), A008966(#)]` -/
def P17037968032072164541.Spec : Prop :=
  ∀ n, P17037968032072164541.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P13933383641742897981

`filter[A383252(n+1), A359834(#)]`
-/

namespace A089269.P13933383641742897981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A089269.P13933383641742897981

namespace A089269

/-- `filter[A383252(n+1), A359834(#)]` -/
def P13933383641742897981.Spec : Prop :=
  ∀ n, P13933383641742897981.a n = A089269 (n + 1)

end A089269

/-! ## A089269.P16827604777845022518

`record[abs(A033197(n+1))]/4`
-/

namespace A089269.P16827604777845022518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033197 (n + 1)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4

end

end A089269.P16827604777845022518

namespace A089269

/-- `record[abs(A033197(n+1))]/4` -/
def P16827604777845022518.Spec : Prop :=
  ∀ n, P16827604777845022518.a n = (A089269 (n + 1) : ℚ)

end A089269

/-!
# A089270: Positive numbers represented by the integer binary quadratic form x^2 + x*y - y^2 with x and y relatively prime.

The programs for A089270, the canonical program `A089270.P4568996701270986282` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089270 has offset 1).

The definition of A089270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089270.P563099278603668960

`∩[2*n+1, A057762(n+1)]`
-/

namespace A089270.P563099278603668960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089270.P563099278603668960

namespace A089270

/-- `∩[2*n+1, A057762(n+1)]` -/
def P563099278603668960.Spec : Prop :=
  ∀ n, (P563099278603668960.a n : ℤ) = A089270 (n + 1)

end A089270

/-! ## A089270.P4568996701270986282

`eq[1, gcd(n+1, A087781(n+1))]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A089270

/-- `eq[1, gcd(n+1, A087781(n+1))]+1` -/
def P4568996701270986282.Spec : Prop :=
  ∀ n, (P4568996701270986282.a n : ℤ) = A089270 (n + 1)

theorem P4568996701270986282.correct : P4568996701270986282.Spec := by
  intro n
  simp only [A089270, Nat.add_sub_cancel]

end A089270

/-! ## A089270.P1154032600458634470

`record[A000265(A057762(n+1))]`
-/

namespace A089270.P1154032600458634470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A057762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089270.P1154032600458634470

namespace A089270

/-- `record[A000265(A057762(n+1))]` -/
def P1154032600458634470.Spec : Prop :=
  ∀ n, P1154032600458634470.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P15556762787701066032

`filter[A057762(n+1), A000035(#)]`
-/

namespace A089270.P15556762787701066032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A089270.P15556762787701066032

namespace A089270

/-- `filter[A057762(n+1), A000035(#)]` -/
def P15556762787701066032.Spec : Prop :=
  ∀ n, P15556762787701066032.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P3362648244229864320

`filter[A057762(n+1), A093719(#)]`
-/

namespace A089270.P3362648244229864320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A089270.P3362648244229864320

namespace A089270

/-- `filter[A057762(n+1), A093719(#)]` -/
def P3362648244229864320.Spec : Prop :=
  ∀ n, P3362648244229864320.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P601560449148123469

`filter[A057762(n+1), A260390(#)]`
-/

namespace A089270.P601560449148123469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A089270.P601560449148123469

namespace A089270

/-- `filter[A057762(n+1), A260390(#)]` -/
def P601560449148123469.Spec : Prop :=
  ∀ n, P601560449148123469.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P13114331832041975975

`filter[A057762(n+1), A320106(#)]`
-/

namespace A089270.P13114331832041975975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A089270.P13114331832041975975

namespace A089270

/-- `filter[A057762(n+1), A320106(#)]` -/
def P13114331832041975975.Spec : Prop :=
  ∀ n, P13114331832041975975.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P18337152626733983485

`filter[A057762(n+1), A354354(#)]`
-/

namespace A089270.P18337152626733983485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A089270.P18337152626733983485

namespace A089270

/-- `filter[A057762(n+1), A354354(#)]` -/
def P18337152626733983485.Spec : Prop :=
  ∀ n, P18337152626733983485.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P10676831276303889898

`filter[A057762(n+1), A372573(#)]`
-/

namespace A089270.P10676831276303889898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A089270.P10676831276303889898

namespace A089270

/-- `filter[A057762(n+1), A372573(#)]` -/
def P10676831276303889898.Spec : Prop :=
  ∀ n, P10676831276303889898.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P12211518260403584826

`filter[A057762(n+1), A373156(#)]`
-/

namespace A089270.P12211518260403584826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A089270.P12211518260403584826

namespace A089270

/-- `filter[A057762(n+1), A373156(#)]` -/
def P12211518260403584826.Spec : Prop :=
  ∀ n, P12211518260403584826.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P7952940882003259643

`filter[A057762(n+1), A373157(#)]`
-/

namespace A089270.P7952940882003259643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A089270.P7952940882003259643

namespace A089270

/-- `filter[A057762(n+1), A373157(#)]` -/
def P7952940882003259643.Spec : Prop :=
  ∀ n, P7952940882003259643.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P11520636119855524391

`filter[A057762(n+1), A373991(#)]`
-/

namespace A089270.P11520636119855524391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A089270.P11520636119855524391

namespace A089270

/-- `filter[A057762(n+1), A373991(#)]` -/
def P11520636119855524391.Spec : Prop :=
  ∀ n, P11520636119855524391.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P7693069076427908132

`filter[A057762(n+1), A374041(#)]`
-/

namespace A089270.P7693069076427908132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A089270.P7693069076427908132

namespace A089270

/-- `filter[A057762(n+1), A374041(#)]` -/
def P7693069076427908132.Spec : Prop :=
  ∀ n, P7693069076427908132.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P17702391348865092596

`filter[A057762(n+1), A374043(#)]`
-/

namespace A089270.P17702391348865092596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A089270.P17702391348865092596

namespace A089270

/-- `filter[A057762(n+1), A374043(#)]` -/
def P17702391348865092596.Spec : Prop :=
  ∀ n, P17702391348865092596.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P17282551969787836019

`filter[A057762(n+1), A374134(#)]`
-/

namespace A089270.P17282551969787836019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A089270.P17282551969787836019

namespace A089270

/-- `filter[A057762(n+1), A374134(#)]` -/
def P17282551969787836019.Spec : Prop :=
  ∀ n, P17282551969787836019.a n = A089270 (n + 1)

end A089270

/-! ## A089270.P7321716358576062988

`∩[A057762(n+1), A004273(n)]`
-/

namespace A089270.P7321716358576062988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089270.P7321716358576062988

namespace A089270

/-- `∩[A057762(n+1), A004273(n)]` -/
def P7321716358576062988.Spec : Prop :=
  ∀ n, (P7321716358576062988.a n : ℤ) = A089270 (n + 1)

end A089270

/-! ## A089270.P605567573260441726

`∩[A057762(n+1), A060747(n)]`
-/

namespace A089270.P605567573260441726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089270.P605567573260441726

namespace A089270

/-- `∩[A057762(n+1), A060747(n)]` -/
def P605567573260441726.Spec : Prop :=
  ∀ n, (P605567573260441726.a n : ℤ) = A089270 (n + 1)

end A089270

/-! ## A089270.P10765762917507756005

`∩[A057762(n+1), A063213(n+1)]`
-/

namespace A089270.P10765762917507756005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089270.P10765762917507756005

namespace A089270

/-- `∩[A057762(n+1), A063213(n+1)]` -/
def P10765762917507756005.Spec : Prop :=
  ∀ n, (P10765762917507756005.a n : ℤ) = A089270 (n + 1)

end A089270

/-! ## A089270.P10700133244387888584

`∩[A057762(n+1), A064615(n+1)]`
-/

namespace A089270.P10700133244387888584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089270.P10700133244387888584

namespace A089270

/-- `∩[A057762(n+1), A064615(n+1)]` -/
def P10700133244387888584.Spec : Prop :=
  ∀ n, (P10700133244387888584.a n : ℤ) = A089270 (n + 1)

end A089270

/-! ## A089270.P14338788044525632303

`∩[A057762(n+1), A084820(n+1)]`
-/

namespace A089270.P14338788044525632303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089270.P14338788044525632303

namespace A089270

/-- `∩[A057762(n+1), A084820(n+1)]` -/
def P14338788044525632303.Spec : Prop :=
  ∀ n, (P14338788044525632303.a n : ℤ) = A089270 (n + 1)

end A089270

/-!
# A089271: Third column (k=4) of array A078739(n,k) ((2,2)-generalized Stirling2).

The programs for A089271, the canonical program `A089271.P6276790007411850700` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089271 has offset 0).

The definition of A089271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089271.P6276790007411850700

`6*12^n-6*6^n+2^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A089271

/-- `6*12^n-6*6^n+2^n` -/
def P6276790007411850700.Spec : Prop :=
  ∀ n, P6276790007411850700.a n = A089271 n

theorem P6276790007411850700.correct : P6276790007411850700.Spec := by
  intro n
  simp only [A089271]

end A089271

/-! ## A089271.P2914805245261784435

`2^n*A212850(n+1)`
-/

namespace A089271.P2914805245261784435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A212850 (n + 1)

end

end A089271.P2914805245261784435

namespace A089271

/-- `2^n*A212850(n+1)` -/
def P2914805245261784435.Spec : Prop :=
  ∀ n, P2914805245261784435.a n = A089271 n

end A089271

/-! ## A089271.P12637000510387349854

`lcm(6*(6^n-3^n)+1, A000079(n))`
-/

namespace A089271.P12637000510387349854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (6 * ((6 ^ n : ℤ) - (3 ^ n : ℤ)) + 1) (A000079 n)

end

end A089271.P12637000510387349854

namespace A089271

/-- `lcm(6*(6^n-3^n)+1, A000079(n))` -/
def P12637000510387349854.Spec : Prop :=
  ∀ n, (P12637000510387349854.a n : ℤ) = A089271 n

end A089271

/-! ## A089271.P1535835948092897641

`lcm(A000079(n), A212850(n+1))`
-/

namespace A089271.P1535835948092897641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A212850 (n + 1))

end

end A089271.P1535835948092897641

namespace A089271

/-- `lcm(A000079(n), A212850(n+1))` -/
def P1535835948092897641.Spec : Prop :=
  ∀ n, (P1535835948092897641.a n : ℤ) = A089271 n

end A089271

/-! ## A089271.P13909479912573538307

`abs(Δ[A000225(n)]*A212850(n+1))`
-/

namespace A089271.P13909479912573538307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A212850 (n + 1)|

end

end A089271.P13909479912573538307

namespace A089271

/-- `abs(Δ[A000225(n)]*A212850(n+1))` -/
def P13909479912573538307.Spec : Prop :=
  ∀ n, P13909479912573538307.a n = A089271 n

end A089271

/-!
# A089273: Fifth column (k=6) of array A078739(n,k) ((2,2)-generalized Stirling2).

The programs for A089273, there is no canonical definition to state claims against.
-/

/-! ## A089273.P10167735829281306116

`A078739((n+2)²+5)`
-/

namespace A089273.P10167735829281306116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078739 ((n + 2) ^ 2 + 5)

end

end A089273.P10167735829281306116

/-!
# A089274: Fifth column of the Legendre-Stirling triangle A071951.

The programs for A089274, there is no canonical definition to state claims against.
-/

/-! ## A089274.P13561029374424740085

`2^n*A226941(n+1)`
-/

namespace A089274.P13561029374424740085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A226941 (n + 1)

end

end A089274.P13561029374424740085

/-! ## A089274.P2518864207549237683

`A071951(A155212(n)+13)`
-/

namespace A089274.P2518864207549237683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A155212 n + 13).toNat

end

end A089274.P2518864207549237683

/-! ## A089274.P1764287991841572304

`A071951(A056000(n)+15)`
-/

namespace A089274.P1764287991841572304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A056000 n + 15).toNat

end

end A089274.P1764287991841572304

/-! ## A089274.P9719211630705760259

`A071951(A000217(n+4)+5)`
-/

namespace A089274.P9719211630705760259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A000217 (n + 4) + 5).toNat

end

end A089274.P9719211630705760259

/-! ## A089274.P2281107475661569832

`A071951(eq[6, A131818(n+1)])`
-/

namespace A089274.P2281107475661569832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089274.P2281107475661569832

/-! ## A089274.P3513447530424570469

`A071951(A000124(n+5)-(n+1))`
-/

namespace A089274.P3513447530424570469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A089274.P3513447530424570469

/-!
# A089275: Coefficient triangle of polynomials used for numerator of g.f.s for column sequences of array A078739.

The programs for A089275, there is no canonical definition to state claims against.
-/

/-! ## A089275.P11453385732481896719

`A113961(C(∑[∑[2^n]], (8^n)%(n+1)))`
-/

namespace A089275.P11453385732481896719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113961 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (8 ^ n % (n + 1)))

end

end A089275.P11453385732481896719

/-!
# A089276: Coefficient triangle of polynomials used for numerator of g.f.s for column sequences of array A078739.

The programs for A089276, there is no canonical definition to state claims against.
-/

/-! ## A089276.P3310312400712206210

`A131886((n^(n%2)+1)^floor(n/2^val(n+1, 2)))`
-/

namespace A089276.P3310312400712206210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131886 (SequenceMachineLib.roundAway ((n ^ (n % 2) + 1 : ℚ) ^ (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℤ))).toNat

end

end A089276.P3310312400712206210

/-! ## A089276.P7043114486540756295

`A131886(A335919(n)²)`
-/

namespace A089276.P7043114486540756295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131886 (A335919 n ^ 2).toNat

end

end A089276.P7043114486540756295

/-!
# A089277: Sixth column of the triangle A071951 (Legendre-Stirling).

The programs for A089277, there is no canonical definition to state claims against.
-/

/-! ## A089277.P11667596764402558269

`A071951(A167499(n+4)+1)`
-/

namespace A089277.P11667596764402558269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A167499 (n + 4) + 1).toNat

end

end A089277.P11667596764402558269

/-! ## A089277.P9298950976797671356

`A071951(A000096(n+4)+7)`
-/

namespace A089277.P9298950976797671356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A000096 (n + 4) + 7).toNat

end

end A089277.P9298950976797671356

/-! ## A089277.P2602223353889537577

`A071951(A000217(n+5)+6)`
-/

namespace A089277.P2602223353889537577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A000217 (n + 5) + 6).toNat

end

end A089277.P2602223353889537577

/-! ## A089277.P12156913796275245392

`A191935(eq[3, A219347(n)])`
-/

namespace A089277.P12156913796275245392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089277.P12156913796275245392

/-! ## A089277.P7331415622249780887

`A191935(eq[6, A200370(n+1)])`
-/

namespace A089277.P7331415622249780887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089277.P7331415622249780887

/-!
# A089279: a(n) = 2 + sum(k=1 to n) [(-1)^k A001511(k)].

The programs for A089279, there is no canonical definition to state claims against.
-/

/-! ## A089279.P12311982225563616318

`∑[val(n+1, 2)]+n%2+1`
-/

namespace A089279.P12311982225563616318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n % 2 + 1)

end

end A089279.P12311982225563616318

/-! ## A089279.P4832312993107632719

`∑[val(n+1, 2)]+gcd(2, n+1)`
-/

namespace A089279.P4832312993107632719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 2 (n + 1)

end

end A089279.P4832312993107632719

/-! ## A089279.P13461811473232636975

`and(1, n)+∑[val(n+1, 2)]+1`
-/

namespace A089279.P13461811473232636975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A089279.P13461811473232636975

/-! ## A089279.P8318237323027121809

`∑[val(n+1, 2)]+Δ[or(1, n)]!`
-/

namespace A089279.P8318237323027121809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A089279.P8318237323027121809

/-! ## A089279.P8669539967105862884

`∑[val(n+1, 2)-(-1)^n]+2`
-/

namespace A089279.P8669539967105862884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A089279.P8669539967105862884

/-! ## A089279.P6002041279546365021

`a(n-2)+val(∑[2*n], 2)` with `a(0)=1, a(1)=3`
-/

namespace A089279.P6002041279546365021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A089279.P6002041279546365021

/-! ## A089279.P118762472883949360

`∑[val(n+1, 2)]-or(n+1, -2)`
-/

namespace A089279.P118762472883949360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.lor (n + 1 : ℤ) (-2)

end

end A089279.P118762472883949360

/-! ## A089279.P4359993098039081426

`∑[val(n+1, 2)]-char[2*n]+2`
-/

namespace A089279.P4359993098039081426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 2

end

end A089279.P4359993098039081426

/-! ## A089279.P209426833221969332

`∑[val(n+1, 2)+1]+1-or(1, n)`
-/

namespace A089279.P209426833221969332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (Nat.lor 1 n : ℤ)

end

end A089279.P209426833221969332

/-! ## A089279.P6066703517602644670

`A113474(n+1)+and(1, n)`
-/

namespace A089279.P6066703517602644670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113474 (n + 1) + (Nat.land 1 n : ℤ)

end

end A089279.P6066703517602644670

/-!
# A089280: Tower of Hanoi game: a(n) is the number of pegs occupied by already-moved disks after move #n.

The programs for A089280, there is no canonical definition to state claims against.
-/

/-! ## A089280.P9603940948092047658

`A043530(A055661(n+1))`
-/

namespace A089280.P9603940948092047658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (A055661 (n + 1)).toNat

end

end A089280.P9603940948092047658

/-! ## A089280.P13503199821000678066

`A043530(A128202(n+2))`
-/

namespace A089280.P13503199821000678066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (A128202 (n + 2)).toNat

end

end A089280.P13503199821000678066

/-! ## A089280.P7817632740686986782

`A346618(A000578(n))+A069010(2*n+3)`
-/

namespace A089280.P7817632740686986782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346618 (A000578 n).toNat + A069010 (2 * n + 3)

end

end A089280.P7817632740686986782

/-! ## A089280.P12475390720014849519

`∑[A054527(A134458(A000593(n+1)))]`
-/

namespace A089280.P12475390720014849519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (A134458 (A000593 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089280.P12475390720014849519

/-! ## A089280.P10893925650509161021

`A297770(n+1)+A125117(A141036(n))`
-/

namespace A089280.P10893925650509161021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (n + 1) + A125117 (A141036 n).toNat

end

end A089280.P10893925650509161021

/-!
# A089281: Smallest prime factor of floor(Pi*10^n).

The programs for A089281, there is no canonical definition to state claims against.
-/

/-! ## A089281.P17142051527258985377

`gcd(A089289(n), A371224(n+1))`
-/

namespace A089281.P17142051527258985377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089289 n) (A371224 (n + 1))

end

end A089281.P17142051527258985377

/-! ## A089281.P7861838094317285709

`gcd(A002378(A371224(n+1)), A011545(n))`
-/

namespace A089281.P7861838094317285709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 (A371224 (n + 1)).toNat) (A011545 n)

end

end A089281.P7861838094317285709

/-!
# A089282: Number of distinct prime factors of floor(Pi*10^n), Pi=3.14...

The programs for A089282, there is no canonical definition to state claims against.
-/

/-! ## A089282.P14936891368171248151

`A001222(A230101(n)+A208900(n+2))`
-/

namespace A089282.P14936891368171248151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A230101 n + A208900 (n + 2)).toNat

end

end A089282.P14936891368171248151

/-! ## A089282.P5433305162397262220

`A383238(A325056(n)+A002383(n+2))`
-/

namespace A089282.P5433305162397262220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383238 (A325056 n + A002383 (n + 2)).toNat

end

end A089282.P5433305162397262220

/-! ## A089282.P14447175761615050822

`A380195(A179053(n+1))`
-/

namespace A089282.P14447175761615050822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380195 (A179053 (n + 1)).toNat

end

end A089282.P14447175761615050822

/-! ## A089282.P10333693141451525783

`char[8]+A001221(A063262(n))`
-/

namespace A089282.P10333693141451525783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A001221 (A063262 n).toNat

end

end A089282.P10333693141451525783

/-! ## A089282.P13434930554827315209

`or(A001221(A063262(n)), A017857(n))`
-/

namespace A089282.P13434930554827315209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A063262 n).toNat) (A017857 n)

end

end A089282.P13434930554827315209

/-!
# A089283: Total number of prime factors of floor(Pi*10^n), Pi=3.14...

The programs for A089283, there is no canonical definition to state claims against.
-/

/-! ## A089283.P12827684356304721747

`A001222(A333194(n+1)+A187066(3*n+4))`
-/

namespace A089283.P12827684356304721747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A333194 (n + 1) + A187066 (3 * n + 4)).toNat

end

end A089283.P12827684356304721747

/-! ## A089283.P13019205182596456229

`A327660(n+1)%or(6, A028242(n))`
-/

namespace A089283.P13019205182596456229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327660 (n + 1)) (Int.lor 6 (A028242 n))

end

end A089283.P13019205182596456229

/-! ## A089283.P6565469615241433452

`A007895(A274906(n+1)^A257493(n))`
-/

namespace A089283.P6565469615241433452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A274906 (n + 1) : ℚ) ^ (A257493 n : ℤ))).toNat

end

end A089283.P6565469615241433452

/-! ## A089283.P12845168701763797917

`A124767(A045623(n)+A103977(n+1)²)`
-/

namespace A089283.P12845168701763797917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A045623 n + A103977 (n + 1) ^ 2).toNat

end

end A089283.P12845168701763797917

/-!
# A089284: Number of divisors of floor(Pi*10^n), Pi=3.14...

The programs for A089284, there is no canonical definition to state claims against.
-/

/-! ## A089284.P9440827921200577082

`A193432(ceil(sqrt(A255047(3*n+1))))`
-/

namespace A089284.P9440827921200577082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 ⌈Real.sqrt (A255047 (3 * n + 1) : ℝ)⌉.toNat

end

end A089284.P9440827921200577082

/-! ## A089284.P8437572707569381267

`A000005(A145932(n+1)+∑[∑[n+2]-1]+1)`
-/

namespace A089284.P8437572707569381267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A145932 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A089284.P8437572707569381267

/-! ## A089284.P11056212372986012271

`∏{e}[A226623(ceil(2^(n-1)))-A001221(n+1)+2, #+1]`
-/

namespace A089284.P11056212372986012271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226623 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - A001221 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A089284.P11056212372986012271

/-! ## A089284.P12548446623452261870

`A000005(A150962(n)+A080929(n))`
-/

namespace A089284.P12548446623452261870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A150962 n + A080929 n).toNat

end

end A089284.P12548446623452261870

/-! ## A089284.P16458037682753237183

`A000005(A265837(n)+A051890(n))`
-/

namespace A089284.P16458037682753237183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A265837 n + A051890 n).toNat

end

end A089284.P16458037682753237183

/-!
# A089285: Sum of divisors of floor(Pi*10^n), Pi=3.14...

The programs for A089285, the canonical program `A089285.P13406940123731403236` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089285 has offset 0).

The definition of A089285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089285.P13406940123731403236

`A000203(A011545(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089285

/-- `A000203(A011545(n))` -/
def P13406940123731403236.Spec : Prop :=
  ∀ n, P13406940123731403236.a n = A089285 n

theorem P13406940123731403236.correct : P13406940123731403236.Spec := by
  intro n
  simp only [A089285]

end A089285

/-! ## A089285.P5598111715352401485

`∑{d}[floor(π*10^n), #]`
-/

namespace A089285.P5598111715352401485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (10 ^ n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A089285.P5598111715352401485

namespace A089285

/-- `∑{d}[floor(π*10^n), #]` -/
def P5598111715352401485.Spec : Prop :=
  ∀ n, (P5598111715352401485.a n : ℤ) = A089285 n

end A089285

/-!
# A089286: Sum of distinct prime factors of floor(Pi*10^n), Pi=3.14....

The programs for A089286, the canonical program `A089286.P16205142239837257181` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089286 has offset 0).

The definition of A089286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089286.P16205142239837257181

`A008472(A011545(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089286

/-- `A008472(A011545(n))` -/
def P16205142239837257181.Spec : Prop :=
  ∀ n, P16205142239837257181.a n = A089286 n

theorem P16205142239837257181.correct : P16205142239837257181.Spec := by
  intro n
  simp only [A089286]

end A089286

/-! ## A089286.P1878855763761140657

`∑{p}[A089289(n), #]`
-/

namespace A089286.P1878855763761140657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089286.P1878855763761140657

namespace A089286

/-- `∑{p}[A089289(n), #]` -/
def P1878855763761140657.Spec : Prop :=
  ∀ n, (P1878855763761140657.a n : ℤ) = A089286 n

end A089286

/-!
# A089287: Sum of all prime factors of floor(Pi*10^n), Pi=3.14....

The programs for A089287, there is no canonical definition to state claims against.
-/

/-! ## A089287.P10479770068675202802

`or(∑{p}[floor(π*10^n), #], A010684(n))`
-/

namespace A089287.P10479770068675202802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (10 ^ n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A010684 n)

end

end A089287.P10479770068675202802

/-! ## A089287.P6403947938916458186

`or(A062157(n)+2, ∑{p}[floor(π*10^n), #])`
-/

namespace A089287.P6403947938916458186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (10 ^ n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062157 n + 2) ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A089287.P6403947938916458186

/-!
# A089288: Euler's totient of floor(Pi*10^n), Pi=3.14....

The programs for A089288, the canonical program `A089288.P14608164159203676811` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089288 has offset 0).

The definition of A089288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089288.P14608164159203676811

`A000010(A011545(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A089288

/-- `A000010(A011545(n))` -/
def P14608164159203676811.Spec : Prop :=
  ∀ n, P14608164159203676811.a n = A089288 n

theorem P14608164159203676811.correct : P14608164159203676811.Spec := by
  intro n
  simp only [A089288]

end A089288

/-!
# A089289: Squarefree kernel of floor(Pi*10^n), Pi = 3.14....

The programs for A089289, the canonical program `A089289.P13264088176311797022` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089289 has offset 0).

The definition of A089289 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089289.P13264088176311797022

`A007947(A011545(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089289

/-- `A007947(A011545(n))` -/
def P13264088176311797022.Spec : Prop :=
  ∀ n, P13264088176311797022.a n = A089289 n

theorem P13264088176311797022.correct : P13264088176311797022.Spec := by
  intro n
  simp only [A089289]

end A089289

/-! ## A089289.P5339733963681962520

`A011545(n)/A132845(A132845(n))`
-/

namespace A089289.P5339733963681962520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011545 n : ℚ) / (A132845 (A132845 n).toNat : ℚ)

end

end A089289.P5339733963681962520

namespace A089289

/-- `A011545(n)/A132845(A132845(n))` -/
def P5339733963681962520.Spec : Prop :=
  ∀ n, P5339733963681962520.a n = (A089289 n : ℚ)

end A089289

/-!
# A089290: Digital root of floor(Pi*10^n), Pi=3.14....

The programs for A089290, there is no canonical definition to state claims against.
-/

/-! ## A089290.P14745841233703386515

`dr(A046974(n))`
-/

namespace A089290.P14745841233703386515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046974 n)

end

end A089290.P14745841233703386515

/-! ## A089290.P4104781680801611418

`dr(∑[A000796(n)])`
-/

namespace A089290.P4104781680801611418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P4104781680801611418

/-! ## A089290.P9976532353203233154

`dr(Δ[A396107(n)])`
-/

namespace A089290.P9976532353203233154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A089290.P9976532353203233154

/-! ## A089290.P14163453976045136732

`dr(∑[8*A030644(n)])`
-/

namespace A089290.P14163453976045136732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P14163453976045136732

/-! ## A089290.P15467966402351709245

`dr(∑[1-A123152(n+1)])`
-/

namespace A089290.P15467966402351709245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P15467966402351709245

/-! ## A089290.P16683276291795407968

`dr(∑[A065253(n+1)%10])`
-/

namespace A089290.P16683276291795407968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P16683276291795407968

/-! ## A089290.P10616738252220167295

`dr(∑[A187747(n)+A001113(n)])`
-/

namespace A089290.P10616738252220167295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P10616738252220167295

/-! ## A089290.P14821057710068325120

`dr(∑[A001113(n)-A073212(n)])`
-/

namespace A089290.P14821057710068325120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) - A073212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P14821057710068325120

/-! ## A089290.P5307533014729439743

`dr(∑[A054249(n+1)+A033999(n)])`
-/

namespace A089290.P5307533014729439743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P5307533014729439743

/-! ## A089290.P9177095007361169630

`dr(∑[A062157(n+1)+A054249(n+1)])`
-/

namespace A089290.P9177095007361169630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) + A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P9177095007361169630

/-! ## A089290.P13652381620821933728

`dr(∑[A054249(n+1)+2-A010684(n)])`
-/

namespace A089290.P13652381620821933728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + (2 - A010684 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P13652381620821933728

/-! ## A089290.P15801252946564057300

`dr(∑[A166931(n+1)%A123152(n+1)])`
-/

namespace A089290.P15801252946564057300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A123152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P15801252946564057300

/-! ## A089290.P7150030466113538296

`dr(∑[A110766(Δ[n²])])`
-/

namespace A089290.P7150030466113538296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P7150030466113538296

/-! ## A089290.P13051960842961005818

`dr(∑[A001355(2*n+1)])`
-/

namespace A089290.P13051960842961005818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P13051960842961005818

/-! ## A089290.P14378163663820033853

`dr(∑[A076790(2*n+1)])`
-/

namespace A089290.P14378163663820033853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089290.P14378163663820033853

/-! ## A089290.P2993071044495384631

`dr(1-A059582(n+1))`
-/

namespace A089290.P2993071044495384631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A059582 (n + 1))

end

end A089290.P2993071044495384631

/-! ## A089290.P8452370706618235080

`dr(Δ[n-∑[A059582(n)]])`
-/

namespace A089290.P8452370706618235080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A089290.P8452370706618235080

/-! ## A089290.P8219084303503865272

`A010888(∑[A000796(n)])`
-/

namespace A089290.P8219084303503865272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089290.P8219084303503865272

/-! ## A089290.P874048976390501340

`A010878(A046974(n)-1)+1`
-/

namespace A089290.P874048976390501340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A046974 n - 1).toNat + 1

end

end A089290.P874048976390501340

/-! ## A089290.P4940215681757791163

`dr(floor(π*10^n))`
-/

namespace A089290.P4940215681757791163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊Real.pi * (10 ^ n : ℝ)⌋

end

end A089290.P4940215681757791163

/-!
# A089291: Prime worms (as defined below).

The programs for A089291, there is no canonical definition to state claims against.
-/

/-! ## A089291.P17387568722672110170

`∩[A089360(n+1), A048398(A121816(n+4))]`
-/

namespace A089291.P17387568722672110170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048398 (A121816 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089291.P17387568722672110170

/-! ## A089291.P434106824773746727

`∩[A048398(n+1), A089360(n+1)]`
-/

namespace A089291.P434106824773746727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089291.P434106824773746727

/-!
# A089292: G.f.: Product_{m>=1} 1/(1-x^m)^A018819(m).

The programs for A089292, there is no canonical definition to state claims against.
-/

/-! ## A089292.P13860665598401062452

`A374249(floor(root(n!, 3)))+A006171(n)`
-/

namespace A089292.P13860665598401062452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 ⌊(Nat.factorial n : ℝ) ^ (1 / (3 : ℝ))⌋.toNat + A006171 n

end

end A089292.P13860665598401062452

/-! ## A089292.P15397204707647450523

`A000267(A004526(n)*A099626(n))`
-/

namespace A089292.P15397204707647450523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A004526 n * A099626 n).toNat

end

end A089292.P15397204707647450523

/-!
# A089293: Sum of digits in the mixed-base enumeration system n=...d(4)d(3)d(2)d(1), where the digits satisfy 0<=d(i)<=1 if i is odd, 0<=d(i)<=2 if i is even.

The programs for A089293, the canonical program `A089293.P16711136094360143840` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089293 has offset 0).

The definition of A089293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089293.P17840814935004695036

`dr(A109827(n))`
-/

namespace A089293.P17840814935004695036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A109827 n)

end

end A089293.P17840814935004695036

namespace A089293

/-- `dr(A109827(n))` -/
def P17840814935004695036.Spec : Prop :=
  ∀ n, (P17840814935004695036.a n : ℤ) = A089293 n

end A089293

/-! ## A089293.P7002077370198668523

`A109827(6*n)%9`
-/

namespace A089293.P7002077370198668523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109827 (6 * n)) 9

end

end A089293.P7002077370198668523

namespace A089293

/-- `A109827(6*n)%9` -/
def P7002077370198668523.Spec : Prop :=
  ∀ n, P7002077370198668523.a n = A089293 n

end A089293

/-! ## A089293.P2905709786537252561

`∑{digits}[A007092(n), ceil(#/2)]`
-/

namespace A089293.P2905709786537252561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌈(x : ℚ) / 2⌉).sum

end

end A089293.P2905709786537252561

namespace A089293

/-- `∑{digits}[A007092(n), ceil(#/2)]` -/
def P2905709786537252561.Spec : Prop :=
  ∀ n, P2905709786537252561.a n = A089293 n

end A089293

/-! ## A089293.P7368564153575542856

`∑{digits}[A109827(char[1]+n), #]`
-/

namespace A089293.P7368564153575542856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A089293.P7368564153575542856

namespace A089293

/-- `∑{digits}[A109827(char[1]+n), #]` -/
def P7368564153575542856.Spec : Prop :=
  ∀ n, (P7368564153575542856.a n : ℤ) = A089293 n

end A089293

/-! ## A089293.P13679002530155432629

`∑{digits}[A137386(n+1), floor(sqrt(#))]`
-/

namespace A089293.P13679002530155432629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.sqrt x).sum

end

end A089293.P13679002530155432629

namespace A089293

/-- `∑{digits}[A137386(n+1), floor(sqrt(#))]` -/
def P13679002530155432629.Spec : Prop :=
  ∀ n, (P13679002530155432629.a n : ℤ) = A089293 n

end A089293

/-! ## A089293.P16711136094360143840

`∑{digits}[A202267(n+1), round(sqrt(#))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089293

/-- `∑{digits}[A202267(n+1), round(sqrt(#))]` -/
def P16711136094360143840.Spec : Prop :=
  ∀ n, P16711136094360143840.a n = A089293 n

theorem P16711136094360143840.correct : P16711136094360143840.Spec := by
  intro n
  simp only [A089293]

end A089293

/-! ## A089293.P16591199698982194116

`A053735(A037472(3*n))`
-/

namespace A089293.P16591199698982194116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A037472 (3 * n)).toNat

end

end A089293.P16591199698982194116

namespace A089293

/-- `A053735(A037472(3*n))` -/
def P16591199698982194116.Spec : Prop :=
  ∀ n, P16591199698982194116.a n = A089293 n

end A089293

/-! ## A089293.P10972396469799828166

`A092196(5*A007092(n))`
-/

namespace A089293.P10972396469799828166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (5 * A007092 n).toNat

end

end A089293.P10972396469799828166

namespace A089293

/-- `A092196(5*A007092(n))` -/
def P10972396469799828166.Spec : Prop :=
  ∀ n, P10972396469799828166.a n = A089293 n

end A089293

/-! ## A089293.P18110844543977582705

`A004186(∑{digits}[A109827(n), #])`
-/

namespace A089293.P18110844543977582705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A089293.P18110844543977582705

namespace A089293

/-- `A004186(∑{digits}[A109827(n), #])` -/
def P18110844543977582705.Spec : Prop :=
  ∀ n, P18110844543977582705.a n = A089293 n

end A089293

/-! ## A089293.P11940661411501521984

`A054055(∑{digits}[A109827(n), #])`
-/

namespace A089293.P11940661411501521984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A089293.P11940661411501521984

namespace A089293

/-- `A054055(∑{digits}[A109827(n), #])` -/
def P11940661411501521984.Spec : Prop :=
  ∀ n, P11940661411501521984.a n = A089293 n

end A089293

/-! ## A089293.P17882296141598856789

`A001222(2^∑{digits}[A109827(n), #])`
-/

namespace A089293.P17882296141598856789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A089293.P17882296141598856789

namespace A089293

/-- `A001222(2^∑{digits}[A109827(n), #])` -/
def P17882296141598856789.Spec : Prop :=
  ∀ n, P17882296141598856789.a n = A089293 n

end A089293

/-! ## A089293.P377081768306667503

`∑{d}[∑{digits}[A109827(n), #], A000010(#)]`
-/

namespace A089293.P377081768306667503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A089293.P377081768306667503

namespace A089293

/-- `∑{d}[∑{digits}[A109827(n), #], A000010(#)]` -/
def P377081768306667503.Spec : Prop :=
  ∀ n, P377081768306667503.a n = A089293 n

end A089293

/-! ## A089293.P12573842088737912818

`∑{digits}[A109827(n), #]%∑[A000041(n)]`
-/

namespace A089293.P12573842088737912818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A089293.P12573842088737912818

namespace A089293

/-- `∑{digits}[A109827(n), #]%∑[A000041(n)]` -/
def P12573842088737912818.Spec : Prop :=
  ∀ n, P12573842088737912818.a n = A089293 n

end A089293

/-! ## A089293.P15607249307076817662

`A001222(A052330(A037471(n)))`
-/

namespace A089293.P15607249307076817662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052330 (A037471 n).toNat).toNat

end

end A089293.P15607249307076817662

namespace A089293

/-- `A001222(A052330(A037471(n)))` -/
def P15607249307076817662.Spec : Prop :=
  ∀ n, P15607249307076817662.a n = A089293 n

end A089293

/-! ## A089293.P10298428904502368184

`A000120(A037471(2*n)-A037471(n))`
-/

namespace A089293.P10298428904502368184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037471 (2 * n) - A037471 n).toNat

end

end A089293.P10298428904502368184

namespace A089293

/-- `A000120(A037471(2*n)-A037471(n))` -/
def P10298428904502368184.Spec : Prop :=
  ∀ n, P10298428904502368184.a n = A089293 n

end A089293

/-!
# A089294: Smallest prime p_k such that n can be written as a "plus-minus" sum n=sum_(i=1..k)e_i*(p_i)^2 with distinct primes p_i<=p_k, where e_i is 1 or -1.

The programs for A089294, there is no canonical definition to state claims against.
-/

/-! ## A089294.P13421255419471792953

`A088934(n%A088898(2*(n+1)))`
-/

namespace A089294.P13421255419471792953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088934 (Int.tmod (n : ℤ) (A088898 (2 * (n + 1)))).toNat

end

end A089294.P13421255419471792953

/-! ## A089294.P13130209719689111895

`A088934(C(A088931(n), n+2)+n)`
-/

namespace A089294.P13130209719689111895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088934 (Nat.choose (A088931 n).toNat (n + 2) + n)

end

end A089294.P13130209719689111895

/-! ## A089294.P425968778014760808

`A088934(C(A088980(n), n+2)+n)`
-/

namespace A089294.P425968778014760808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088934 (Nat.choose (A088980 n).toNat (n + 2) + n)

end

end A089294.P425968778014760808

/-!
# A089298: Smallest prime with digit product 10^n.

The programs for A089298, there is no canonical definition to state claims against.
-/

/-! ## A089298.P7731632353627321170

`A341634(A106600(n))`
-/

namespace A089298.P7731632353627321170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341634 (A106600 n).toNat

end

end A089298.P7731632353627321170

/-!
# A089299: Number of square plane partitions of n.

The programs for A089299, there is no canonical definition to state claims against.
-/

/-! ## A089299.P3931962058789293943

`A295342(n)+A043562(A001045(n))`
-/

namespace A089299.P3931962058789293943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295342 n + A043562 (A001045 n).toNat

end

end A089299.P3931962058789293943

/-! ## A089299.P9234358677142201411

`A295342(n)+A055642(A192232(n+1))`
-/

namespace A089299.P9234358677142201411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295342 n + A055642 (A192232 (n + 1)).toNat

end

end A089299.P9234358677142201411

/-! ## A089299.P13441651927048680655

`A227394(A323531(n)+1)`
-/

namespace A089299.P13441651927048680655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A323531 n + 1).toNat

end

end A089299.P13441651927048680655

/-! ## A089299.P10601936501321500335

`A204551(2^n)+A165652(n)`
-/

namespace A089299.P10601936501321500335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (2 ^ n) + A165652 n

end

end A089299.P10601936501321500335

