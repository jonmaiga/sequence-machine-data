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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A104802: Primes p such that the string p0123456789 is prime, or primes in A104801.

The programs for A104802, there is no canonical definition to state claims against.
-/

/-! ## A104802.P14373972178650931518

`p?[A104801(n+1)]`
-/

namespace A104802.P14373972178650931518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104802.P14373972178650931518

/-! ## A104802.P16953435610496834673

`p?[record[A104801(A324347(n))]]`
-/

namespace A104802.P16953435610496834673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104802.P16953435610496834673

/-! ## A104802.P8424623164551492907

`∩[A045320(n+1), A104801(n+1)]`
-/

namespace A104802.P8424623164551492907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P8424623164551492907

/-! ## A104802.P13497518198296828272

`∩[A045334(n+1), A104801(n+1)]`
-/

namespace A104802.P13497518198296828272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P13497518198296828272

/-! ## A104802.P15482312691739120315

`∩[A104801(n+1), A261123(n+1)]`
-/

namespace A104802.P15482312691739120315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P15482312691739120315

/-! ## A104802.P2808090049192133382

`∩[A000040(n+1), A104801(n+1)]`
-/

namespace A104802.P2808090049192133382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P2808090049192133382

/-! ## A104802.P9207767385005977728

`∩[A004139(n+1), A104801(n+1)]`
-/

namespace A104802.P9207767385005977728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P9207767385005977728

/-! ## A104802.P8042413893487013303

`∩[A006005(n+1), A104801(n+1)]`
-/

namespace A104802.P8042413893487013303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P8042413893487013303

/-! ## A104802.P895067179814811161

`∩[A008578(n+1), A104801(n+1)]`
-/

namespace A104802.P895067179814811161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P895067179814811161

/-! ## A104802.P3698812475937124471

`∩[A045319(n+1), A104801(n+1)]`
-/

namespace A104802.P3698812475937124471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P3698812475937124471

/-! ## A104802.P7577492645453130543

`∩[A045344(n+1), A104801(n+1)]`
-/

namespace A104802.P7577492645453130543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P7577492645453130543

/-! ## A104802.P17183526151379540573

`∩[A065091(n+1), A104801(n+1)]`
-/

namespace A104802.P17183526151379540573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P17183526151379540573

/-! ## A104802.P2972208035413218856

`∩[A065396(n+1), A104801(n+1)]`
-/

namespace A104802.P2972208035413218856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P2972208035413218856

/-! ## A104802.P12130253674545787007

`∩[A071621(n+1), A104801(n+1)]`
-/

namespace A104802.P12130253674545787007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P12130253674545787007

/-! ## A104802.P11634356981823138393

`∩[A083249(n+1), A104801(n+1)]`
-/

namespace A104802.P11634356981823138393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P11634356981823138393

/-! ## A104802.P16319817594550796061

`∩[A104801(n+1), A108719(n+1)]`
-/

namespace A104802.P16319817594550796061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P16319817594550796061

/-! ## A104802.P13477423667989212983

`∩[A104801(n+1), A116974(n+1)]`
-/

namespace A104802.P13477423667989212983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P13477423667989212983

/-! ## A104802.P13678682413838389274

`∩[A104801(n+1), A138837(n+1)]`
-/

namespace A104802.P13678682413838389274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P13678682413838389274

/-! ## A104802.P5097324657566329035

`∩[A104801(n+1), A140461(n+1)]`
-/

namespace A104802.P5097324657566329035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P5097324657566329035

/-! ## A104802.P8938864003882177098

`∩[A104801(n+1), A140475(n+1)]`
-/

namespace A104802.P8938864003882177098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104802.P8938864003882177098

/-!
# A104803: a(n) = floor(sqrt(a(n-1)^2 + a(n-2)^2)), a(1)=1, a(2)=3.

The programs for A104803, the canonical program `A104803.P1617163421035207857` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104803 has offset 1).

The definition of A104803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(a(n-1)²+a(n-2)²))` (program `A104803.P1617163421035207857`, by `A104803.P1617163421035207857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104803.P1617163421035207857

`floor(sqrt(a(n-1)²+a(n-2)²))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104803

/-- `floor(sqrt(a(n-1)²+a(n-2)²))` -/
def P1617163421035207857.Spec : Prop :=
  ∀ n, (P1617163421035207857.a n : ℤ) = A104803 (n + 1)

theorem P1617163421035207857.correct : P1617163421035207857.Spec := by
  intro n
  simp only [A104803, Nat.add_sub_cancel]

end A104803

/-! ## A104803.P61909388647709058

`ceil(sqrt(a(n-1)²+a(n-2)²))-1` with `a(0)=1, a(1)=3, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A104803.P61909388647709058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 4, 5] fun n a =>
  ⌈Real.sqrt (a (n - 1) ^ 2 + a (n - 2) ^ 2 : ℝ)⌉ - 1

end

end A104803.P61909388647709058

namespace A104803

/-- `ceil(sqrt(a(n-1)²+a(n-2)²))-1` -/
def P61909388647709058.Spec : Prop :=
  ∀ n, P61909388647709058.a n = A104803 (n + 1)

end A104803

/-! ## A104803.P16698644827427770263

`A063827(n)-A008683(A069486(2*n+1))`
-/

namespace A104803.P16698644827427770263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063827 n - A008683 (A069486 (2 * n + 1)).toNat

end

end A104803.P16698644827427770263

namespace A104803

/-- `A063827(n)-A008683(A069486(2*n+1))` -/
def P16698644827427770263.Spec : Prop :=
  ∀ n, P16698644827427770263.a n = A104803 (n + 1)

end A104803

/-! ## A104803.P10414610385161137946

`A267533(A001107(2*n+3))+A063827(n)`
-/

namespace A104803.P10414610385161137946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (A001107 (2 * n + 3)).toNat + A063827 n

end

end A104803.P10414610385161137946

namespace A104803

/-- `A267533(A001107(2*n+3))+A063827(n)` -/
def P10414610385161137946.Spec : Prop :=
  ∀ n, P10414610385161137946.a n = A104803 (n + 1)

end A104803

/-! ## A104803.P2342322873769842024

`A063827(n)-A319988(A331240(2*n+3)+1)+1`
-/

namespace A104803.P2342322873769842024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063827 n - A319988 (A331240 (2 * n + 3) + 1).toNat + 1

end

end A104803.P2342322873769842024

namespace A104803

/-- `A063827(n)-A319988(A331240(2*n+3)+1)+1` -/
def P2342322873769842024.Spec : Prop :=
  ∀ n, P2342322873769842024.a n = A104803 (n + 1)

end A104803

/-!
# A104804: "Rounded hypotenuses": a(n) = round(sqrt(a(n-1)^2 + a(n-2)^2)), a(1)=1, a(2)=3.

The programs for A104804, the canonical program `A104804.P14851541512240771021` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104804 has offset 1).

The definition of A104804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(sqrt(a(n-1)²+a(n-2)²))` (program `A104804.P14851541512240771021`, by `A104804.P14851541512240771021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104804.P14851541512240771021

`round(sqrt(a(n-1)²+a(n-2)²))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104804

/-- `round(sqrt(a(n-1)²+a(n-2)²))` -/
def P14851541512240771021.Spec : Prop :=
  ∀ n, P14851541512240771021.a n = A104804 (n + 1)

theorem P14851541512240771021.correct : P14851541512240771021.Spec := by
  intro n
  simp only [A104804, Nat.add_sub_cancel]

end A104804

/-! ## A104804.P950507283879449791

`A000196(A022097(n)+A003667(n+1))`
-/

namespace A104804.P950507283879449791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A022097 n + A003667 (n + 1)).toNat

end

end A104804.P950507283879449791

namespace A104804

/-- `A000196(A022097(n)+A003667(n+1))` -/
def P950507283879449791.Spec : Prop :=
  ∀ n, P950507283879449791.a n = A104804 (n + 1)

end A104804

/-! ## A104804.P14041329621577699150

`A000196(A250043(n+1)+A022097(n))`
-/

namespace A104804.P14041329621577699150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A250043 (n + 1) + A022097 n).toNat

end

end A104804.P14041329621577699150

namespace A104804

/-- `A000196(A250043(n+1)+A022097(n))` -/
def P14041329621577699150.Spec : Prop :=
  ∀ n, P14041329621577699150.a n = A104804 (n + 1)

end A104804

/-! ## A104804.P14096854858818801727

`A307707(A022369(n))`
-/

namespace A104804.P14096854858818801727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A022369 n).toNat

end

end A104804.P14096854858818801727

namespace A104804

/-- `A307707(A022369(n))` -/
def P14096854858818801727.Spec : Prop :=
  ∀ n, P14096854858818801727.a n = A104804 (n + 1)

end A104804

/-! ## A104804.P7847205571853380607

`A316846(A130759(n))`
-/

namespace A104804.P7847205571853380607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A130759 n).toNat

end

end A104804.P7847205571853380607

namespace A104804

/-- `A316846(A130759(n))` -/
def P7847205571853380607.Spec : Prop :=
  ∀ n, P7847205571853380607.a n = A104804 (n + 1)

end A104804

/-!
# A104805: "Ceiling of hypotenuses": a(n) = ceiling(sqrt(a(n-1)^2 + a(n-2)^2)), a(1)=1, a(2)=3.

The programs for A104805, the canonical program `A104805.P14362517312592039161` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104805 has offset 1).

The definition of A104805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(a(n-1)²+a(n-2)²))` (program `A104805.P14362517312592039161`, by `A104805.P14362517312592039161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104805.P14362517312592039161

`ceil(sqrt(a(n-1)²+a(n-2)²))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104805

/-- `ceil(sqrt(a(n-1)²+a(n-2)²))` -/
def P14362517312592039161.Spec : Prop :=
  ∀ n, P14362517312592039161.a n = A104805 (n + 1)

theorem P14362517312592039161.correct : P14362517312592039161.Spec := by
  intro n
  simp only [A104805, Nat.add_sub_cancel]

end A104805

/-! ## A104805.P8037454895217926386

`A000267(2*A215006(n))`
-/

namespace A104805.P8037454895217926386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (2 * A215006 n).toNat

end

end A104805.P8037454895217926386

namespace A104805

/-- `A000267(2*A215006(n))` -/
def P8037454895217926386.Spec : Prop :=
  ∀ n, P8037454895217926386.a n = A104805 (n + 1)

end A104805

/-! ## A104805.P8506634065112931974

`A276581(Δ[A253197(n+2)])`
-/

namespace A104805.P8506634065112931974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253197 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (f1 (n + 1) - f1 n).toNat

end

end A104805.P8506634065112931974

namespace A104805

/-- `A276581(Δ[A253197(n+2)])` -/
def P8506634065112931974.Spec : Prop :=
  ∀ n, P8506634065112931974.a n = A104805 (n + 1)

end A104805

/-! ## A104805.P12136898627602811047

`A000267(A005843(A215006(n)))`
-/

namespace A104805.P12136898627602811047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A005843 (A215006 n).toNat).toNat

end

end A104805.P12136898627602811047

namespace A104805

/-- `A000267(A005843(A215006(n)))` -/
def P12136898627602811047.Spec : Prop :=
  ∀ n, P12136898627602811047.a n = A104805 (n + 1)

end A104805

/-! ## A104805.P13889810878201128771

`A000267(A104161(n)+A053735(n))`
-/

namespace A104805.P13889810878201128771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A104161 n + A053735 n).toNat

end

end A104805.P13889810878201128771

namespace A104805

/-- `A000267(A104161(n)+A053735(n))` -/
def P13889810878201128771.Spec : Prop :=
  ∀ n, P13889810878201128771.a n = A104805 (n + 1)

end A104805

/-!
# A104806: "Round of hypotenuse", see comments.

The programs for A104806, the canonical program `A104806.P7328187474629430436` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104806 has offset 1).

The definition of A104806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104806.P7328187474629430436

`A000194(A022099(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A104806

/-- `A000194(A022099(n))` -/
def P7328187474629430436.Spec : Prop :=
  ∀ n, P7328187474629430436.a n = A104806 (n + 1)

theorem P7328187474629430436.correct : P7328187474629430436.Spec := by
  intro n
  simp only [A104806, Nat.add_sub_cancel]

end A104806

/-! ## A104806.P3876392897711450190

`round(sqrt(A022099(n)))`
-/

namespace A104806.P3876392897711450190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A022099 n : ℝ))

end

end A104806.P3876392897711450190

namespace A104806

/-- `round(sqrt(A022099(n)))` -/
def P3876392897711450190.Spec : Prop :=
  ∀ n, P3876392897711450190.a n = A104806 (n + 1)

end A104806

/-! ## A104806.P8166474943884603307

`round(sqrt(Δ[A172172(n)]))`
-/

namespace A104806.P8166474943884603307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))

end

end A104806.P8166474943884603307

namespace A104806

/-- `round(sqrt(Δ[A172172(n)]))` -/
def P8166474943884603307.Spec : Prop :=
  ∀ n, P8166474943884603307.a n = A104806 (n + 1)

end A104806

/-! ## A104806.P5892889934741919186

`A193832(A000032(n+1))`
-/

namespace A104806.P5892889934741919186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A000032 (n + 1)).toNat

end

end A104806.P5892889934741919186

namespace A104806

/-- `A193832(A000032(n+1))` -/
def P5892889934741919186.Spec : Prop :=
  ∀ n, P5892889934741919186.a n = A104806 (n + 1)

end A104806

/-! ## A104806.P5735677128621333139

`A193832(A000204(n+1))`
-/

namespace A104806.P5735677128621333139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A000204 (n + 1)).toNat

end

end A104806.P5735677128621333139

namespace A104806

/-- `A193832(A000204(n+1))` -/
def P5735677128621333139.Spec : Prop :=
  ∀ n, P5735677128621333139.a n = A104806 (n + 1)

end A104806

/-!
# A104807: Length of sections with distinct digits in the decimal expansion of Pi.

The programs for A104807, there is no canonical definition to state claims against.
-/

/-! ## A104807.P4365595345737617250

`floor(A334754(n+1)+acot(n))`
-/

namespace A104807.P4365595345737617250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334754 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A104807.P4365595345737617250

/-! ## A104807.P3548346311059839360

`A334754(n+1)+A000007(n)`
-/

namespace A104807.P3548346311059839360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A000007 n

end

end A104807.P3548346311059839360

/-! ## A104807.P9261585386560297620

`A334754(n+1)+A028310(n)-n`
-/

namespace A104807.P9261585386560297620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + (A028310 n - (n : ℤ))

end

end A104807.P9261585386560297620

/-! ## A104807.P3093627612541284772

`A334754(n+1)+A000035(Δ[A000040(n+1)])`
-/

namespace A104807.P3093627612541284772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A000035 (f1 (n + 1) - f1 n).toNat

end

end A104807.P3093627612541284772

/-! ## A104807.P10716264366762338448

`A334754(n+1)+A154282(A005117(n+1))`
-/

namespace A104807.P10716264366762338448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A154282 (A005117 (n + 1)).toNat

end

end A104807.P10716264366762338448

/-! ## A104807.P2672056023239093803

`A334754(n+1)+A154282(A005097(n+1))`
-/

namespace A104807.P2672056023239093803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A154282 (A005097 (n + 1)).toNat

end

end A104807.P2672056023239093803

/-! ## A104807.P12686335741479803179

`A334754(n+1)+A154282(A250120(n))`
-/

namespace A104807.P12686335741479803179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A154282 (A250120 n).toNat

end

end A104807.P12686335741479803179

/-! ## A104807.P10660105566735404779

`A334754(n+1)+A000035(A000040(n+1)+1)`
-/

namespace A104807.P10660105566735404779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A000035 (A000040 (n + 1) + 1).toNat

end

end A104807.P10660105566735404779

/-! ## A104807.P989879708355667974

`A334754(n+1)+A010815(A002476(n+1))`
-/

namespace A104807.P989879708355667974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A010815 (A002476 (n + 1)).toNat

end

end A104807.P989879708355667974

/-! ## A104807.P17141121026876583756

`A334754(n+1)+A010815(A002144(n+1))`
-/

namespace A104807.P17141121026876583756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A010815 (A002144 (n + 1)).toNat

end

end A104807.P17141121026876583756

/-! ## A104807.P10670218754381484555

`A334754(n+1)+A010815(A001132(n+1))`
-/

namespace A104807.P10670218754381484555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A010815 (A001132 (n + 1)).toNat

end

end A104807.P10670218754381484555

/-! ## A104807.P3887579874576682736

`A334754(n+1)+A008683((n+1)²)`
-/

namespace A104807.P3887579874576682736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A104807.P3887579874576682736

/-! ## A104807.P4883425636595006039

`A334754(n+1)+A154282(n²+1)`
-/

namespace A104807.P4883425636595006039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A154282 (n ^ 2 + 1)

end

end A104807.P4883425636595006039

/-!
# A104810: Positions of 8 in partition of decimal expansion of Pi A104807.

The programs for A104810, there is no canonical definition to state claims against.
-/

/-! ## A104810.P6963297219610362359

`eq[8, A104807(A028310(n))]`
-/

namespace A104810.P6963297219610362359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104810.P6963297219610362359

/-! ## A104810.P8002835249380834078

`A020725(eq[8, A104807(n+1)])`
-/

namespace A104810.P8002835249380834078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104810.P8002835249380834078

/-! ## A104810.P7696642515670359867

`A153152(eq[8, A104807(n+1)])`
-/

namespace A104810.P7696642515670359867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104810.P7696642515670359867

/-! ## A104810.P5993243077605094210

`A020725(eq[8, A334754(n+1)])`
-/

namespace A104810.P5993243077605094210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104810.P5993243077605094210

/-! ## A104810.P16648411680869466512

`A153152(eq[8, A334754(n+1)])`
-/

namespace A104810.P16648411680869466512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104810.P16648411680869466512

/-!
# A104811: Positions of 7 in partition of decimal expansion of Pi A104807.

The programs for A104811, there is no canonical definition to state claims against.
-/

/-! ## A104811.P800764197618012764

`eq[7, A334754(n+1)]+1`
-/

namespace A104811.P800764197618012764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104811.P800764197618012764

/-! ## A104811.P12368858101458282793

`eq[7, A104807(A028310(n))]`
-/

namespace A104811.P12368858101458282793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104811.P12368858101458282793

/-! ## A104811.P14710015090440883582

`A020725(eq[7, A104807(n+1)])`
-/

namespace A104811.P14710015090440883582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104811.P14710015090440883582

/-! ## A104811.P17261959540109548047

`eq[7, A104807(A000007(n)+n)]`
-/

namespace A104811.P17261959540109548047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104811.P17261959540109548047

/-! ## A104811.P11958743100890308773

`eq[7, A104807(A000038(n)+n)]`
-/

namespace A104811.P11958743100890308773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104811.P11958743100890308773

/-! ## A104811.P10707165941469218807

`eq[7, A104807(xor(n, A000038(n)))]`
-/

namespace A104811.P10707165941469218807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104811.P10707165941469218807

/-! ## A104811.P13926412422794493834

`eq[7, A104807(A065033(2*n))]`
-/

namespace A104811.P13926412422794493834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104811.P13926412422794493834

/-!
# A104812: Positions of 6 in partition of decimal expansion of Pi A104807.

The programs for A104812, there is no canonical definition to state claims against.
-/

/-! ## A104812.P6227117545337725038

`eq[6, A334754(A028310(n))]`
-/

namespace A104812.P6227117545337725038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104812.P6227117545337725038

/-! ## A104812.P7915019636029123895

`A020725(eq[6, A104807(n+1)])`
-/

namespace A104812.P7915019636029123895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104812.P7915019636029123895

/-! ## A104812.P2006795665141078955

`eq[6, A104807(A000007(n)+n)]`
-/

namespace A104812.P2006795665141078955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104812.P2006795665141078955

/-! ## A104812.P16196279326457928848

`eq[6, A104807(A000038(n)+n)]`
-/

namespace A104812.P16196279326457928848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104812.P16196279326457928848

/-! ## A104812.P8145748127999217112

`eq[6, A104807(xor(n, A000038(n)))]`
-/

namespace A104812.P8145748127999217112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104812.P8145748127999217112

/-! ## A104812.P8536479278282128944

`eq[6, A104807(A065033(2*n))]`
-/

namespace A104812.P8536479278282128944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104812.P8536479278282128944

/-!
# A104813: Positions of 5 in partition of decimal expansion of Pi A104807.

The programs for A104813, there is no canonical definition to state claims against.
-/

/-! ## A104813.P6636441684237106954

`eq[5, A104807(n+1)]+1`
-/

namespace A104813.P6636441684237106954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104813.P6636441684237106954

/-! ## A104813.P5566882517361324169

`eq[5, A334754(n+1)]+1`
-/

namespace A104813.P5566882517361324169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104813.P5566882517361324169

/-! ## A104813.P203237536172057847

`eq[5, A104807(A028310(n))]`
-/

namespace A104813.P203237536172057847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104813.P203237536172057847

/-! ## A104813.P14565396777050267056

`A020725(eq[5, A104807(n+1)])`
-/

namespace A104813.P14565396777050267056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104813.P14565396777050267056

/-! ## A104813.P882367124082405291

`eq[5, A104807(A000007(n)+n)]`
-/

namespace A104813.P882367124082405291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104813.P882367124082405291

/-! ## A104813.P16554787409282670396

`eq[5, A104807(A065033(2*n))]`
-/

namespace A104813.P16554787409282670396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104813.P16554787409282670396

/-!
# A104814: Positions of 4 in partition of decimal expansion of Pi A104807.

The programs for A104814, there is no canonical definition to state claims against.
-/

/-! ## A104814.P3676685648484370292

`eq[4, A104807(n+1)]+1`
-/

namespace A104814.P3676685648484370292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104814.P3676685648484370292

/-! ## A104814.P385464553416244994

`eq[4, A334754(n+2)]+2`
-/

namespace A104814.P385464553416244994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A104814.P385464553416244994

/-! ## A104814.P14137094892340106452

`eq[4, A104807(A028310(n))]`
-/

namespace A104814.P14137094892340106452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104814.P14137094892340106452

/-! ## A104814.P12139893525539839961

`A020725(eq[4, A104807(1+n)])`
-/

namespace A104814.P12139893525539839961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104814.P12139893525539839961

/-! ## A104814.P6772327615483279509

`eq[4, A104807(A000007(n)+n)]`
-/

namespace A104814.P6772327615483279509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104814.P6772327615483279509

/-! ## A104814.P7431869466463244321

`eq[4, A104807(A000038(n)+n)]`
-/

namespace A104814.P7431869466463244321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104814.P7431869466463244321

/-! ## A104814.P7374348826162054837

`eq[4, A104807(xor(n, A000038(n)))]`
-/

namespace A104814.P7374348826162054837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104814.P7374348826162054837

/-! ## A104814.P883639464120888652

`eq[4, A104807(A065033(2*n))]`
-/

namespace A104814.P883639464120888652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104814.P883639464120888652

/-! ## A104814.P1159470857263824028

`eq[4, A104807(A123108(2*n))]`
-/

namespace A104814.P1159470857263824028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104814.P1159470857263824028

/-! ## A104814.P12418314278428708684

`eq[4, A334754(A233583(n+1))]`
-/

namespace A104814.P12418314278428708684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104814.P12418314278428708684

/-!
# A104815: Positions of 3 in partition of decimal expansion of Pi A104807.

The programs for A104815, there is no canonical definition to state claims against.
-/

/-! ## A104815.P17385895392754309803

`eq[3, A104807(n+1)]+1`
-/

namespace A104815.P17385895392754309803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104815.P17385895392754309803

/-! ## A104815.P7617143654425708587

`eq[3, A334754(n+1)+C(2, n+2)]+1`
-/

namespace A104815.P7617143654425708587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104815.P7617143654425708587

/-! ## A104815.P6361762549704313709

`eq[3, A104807(A000038(n)+n)]`
-/

namespace A104815.P6361762549704313709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104815.P6361762549704313709

/-! ## A104815.P13234733588365722200

`eq[3, A104807(xor(n, A000038(n)))]`
-/

namespace A104815.P13234733588365722200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104815.P13234733588365722200

/-! ## A104815.P8739183560290495054

`eq[3, A334754(n+1)+A000007(n)]+1`
-/

namespace A104815.P8739183560290495054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104815.P8739183560290495054

/-! ## A104815.P9545999821935633590

`eq[3, A334754(n+1)+A154282(A005117(n+1))]+1`
-/

namespace A104815.P9545999821935633590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A154282 (A005117 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104815.P9545999821935633590

/-! ## A104815.P664128217906970829

`eq[3, A334754(n+1)+A154282(A005097(n+1))]+1`
-/

namespace A104815.P664128217906970829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1) + A154282 (A005097 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104815.P664128217906970829

/-!
# A104816: Positions of 2 in partition of decimal expansion of Pi A104807.

The programs for A104816, there is no canonical definition to state claims against.
-/

/-! ## A104816.P10334982393903110715

`eq[2, A104807(n+1)]+1`
-/

namespace A104816.P10334982393903110715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104816.P10334982393903110715

/-! ## A104816.P17146204601082148548

`eq[2, A334754(n+2)]+2`
-/

namespace A104816.P17146204601082148548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A104816.P17146204601082148548

/-! ## A104816.P2987192257716021243

`eq[2, A104807(A028310(n))]`
-/

namespace A104816.P2987192257716021243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104816.P2987192257716021243

/-! ## A104816.P12775869814646124027

`A020725(eq[2, A104807(n+1)])`
-/

namespace A104816.P12775869814646124027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104816.P12775869814646124027

/-! ## A104816.P853835793266095286

`eq[2, A104807(A000007(n)+n)]`
-/

namespace A104816.P853835793266095286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104816.P853835793266095286

/-! ## A104816.P18393915701280432553

`eq[2, A104807(A000038(n)+n)]`
-/

namespace A104816.P18393915701280432553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104816.P18393915701280432553

/-! ## A104816.P15649517556540057102

`eq[2, A104807(xor(n, A000038(n)))]`
-/

namespace A104816.P15649517556540057102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104816.P15649517556540057102

/-! ## A104816.P15266574339290837992

`eq[2, A104807(A065033(2*n))]`
-/

namespace A104816.P15266574339290837992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104816.P15266574339290837992

/-! ## A104816.P7193007727922075597

`eq[2, A104807(A123108(2*n))]`
-/

namespace A104816.P7193007727922075597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104816.P7193007727922075597

/-! ## A104816.P10002749708373047801

`eq[2, A104807(A233583(n+1))]`
-/

namespace A104816.P10002749708373047801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104816.P10002749708373047801

/-!
# A104817: Positions of 1 in partition of decimal expansion of Pi A104807.

The programs for A104817, there is no canonical definition to state claims against.
-/

/-! ## A104817.P674738666183877252

`eq[1, A104807(n+1)]+1`
-/

namespace A104817.P674738666183877252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104817.P674738666183877252

/-! ## A104817.P13405680381393310859

`eq[1, A334754(n+1)]+1`
-/

namespace A104817.P13405680381393310859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104817.P13405680381393310859

/-! ## A104817.P16499775773903194605

`eq[1, A104807(A028310(n))]`
-/

namespace A104817.P16499775773903194605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104817.P16499775773903194605

/-! ## A104817.P13574415877044314153

`A020725(eq[1, A104807(n+1)])`
-/

namespace A104817.P13574415877044314153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104817.P13574415877044314153

/-! ## A104817.P9529550788605254988

`A153152(eq[1, A104807(n+1)])`
-/

namespace A104817.P9529550788605254988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104817.P9529550788605254988

/-! ## A104817.P7962347019719961503

`A020725(eq[1, A334754(n+1)])`
-/

namespace A104817.P7962347019719961503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104817.P7962347019719961503

/-! ## A104817.P4486500356933999892

`A153152(eq[1, A334754(n+1)])`
-/

namespace A104817.P4486500356933999892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104817.P4486500356933999892

/-! ## A104817.P12489544195556506198

`eq[1, A104807(A000007(n)+n)]`
-/

namespace A104817.P12489544195556506198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104817.P12489544195556506198

/-! ## A104817.P17474311102951548368

`eq[1, A104807(A000038(n)+n)]`
-/

namespace A104817.P17474311102951548368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104817.P17474311102951548368

/-! ## A104817.P3231706336091293111

`eq[1, A334754(A000007(n)+n)]`
-/

namespace A104817.P3231706336091293111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334754 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104817.P3231706336091293111

/-! ## A104817.P1406483999764826442

`eq[1, A104807(xor(n, A000038(n)))]`
-/

namespace A104817.P1406483999764826442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104817.P1406483999764826442

/-! ## A104817.P4044203158321497617

`eq[1, A104807(A065033(2*n))]`
-/

namespace A104817.P4044203158321497617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104817.P4044203158321497617

/-! ## A104817.P16425003773449509029

`eq[1, A104807(A123108(2*n))]`
-/

namespace A104817.P16425003773449509029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104817.P16425003773449509029

/-!
# A104822: 2-digit prime numbers from decimal expansion of Pi.

The programs for A104822, there is no canonical definition to state claims against.
-/

/-! ## A104822.P7718119764056826947

`p?[A000796(n+1)+10*A000796(n)]`
-/

namespace A104822.P7718119764056826947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + 10 * A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104822.P7718119764056826947

/-! ## A104822.P15824287112989923381

`p?[or(A085121(n), A107114(n+1))]`
-/

namespace A104822.P15824287112989923381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085121 n) (A107114 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104822.P15824287112989923381

/-! ## A104822.P16398482091036089926

`p?[A107114(n+1)]`
-/

namespace A104822.P16398482091036089926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104822.P16398482091036089926

/-! ## A104822.P17717696098874728332

`filter[A107114(n+1), A010051(#)]`
-/

namespace A104822.P17717696098874728332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A104822.P17717696098874728332

/-! ## A104822.P7067185814765456376

`filter[A107114(n+1), A080339(#)]`
-/

namespace A104822.P7067185814765456376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A104822.P7067185814765456376

/-!
# A104823: Primes from merging of three successive digits in decimal expansion of Pi.

The programs for A104823, there is no canonical definition to state claims against.
-/

/-! ## A104823.P17809487850337500948

`p?[A107116(n+1)]`
-/

namespace A104823.P17809487850337500948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104823.P17809487850337500948

/-! ## A104823.P9908528133377213863

`A000027(p?[A107116(comp[n²])])`
-/

namespace A104823.P9908528133377213863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104823.P9908528133377213863

/-! ## A104823.P4452246366249030123

`filter[A107116(n+1), A010051(#)]`
-/

namespace A104823.P4452246366249030123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A104823.P4452246366249030123

/-! ## A104823.P1466701584486083155

`filter[A107116(n+1), A051953(#)]`
-/

namespace A104823.P1466701584486083155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051953 (f1 j).toNat = 1) n)

end

end A104823.P1466701584486083155

/-! ## A104823.P7472340680826787694

`filter[A107116(n+1), A080339(#)]`
-/

namespace A104823.P7472340680826787694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A104823.P7472340680826787694

/-!
# A104841: The first n-digit prime occurring in the decimal expansion of Pi, A000796.

The programs for A104841, there is no canonical definition to state claims against.
-/

/-! ## A104841.P13017876252083278350

`A198019(A288902(n+1)+A121373(n+4))`
-/

namespace A104841.P13017876252083278350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198019 (A288902 (n + 1) + A121373 (n + 4)).toNat

end

end A104841.P13017876252083278350

/-!
# A104842: Position of the first sequence of n subsequent digits of Pi which form a prime.

The programs for A104842, there is no canonical definition to state claims against.
-/

/-! ## A104842.P11428534072289880090

`A118759(A198344(n+1))`
-/

namespace A104842.P11428534072289880090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A198344 (n + 1)).toNat

end

end A104842.P11428534072289880090

/-! ## A104842.P11256048756145338967

`A198344(∑[∑[A151722(n)]])`
-/

namespace A104842.P11256048756145338967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104842.P11256048756145338967

/-! ## A104842.P5763665567277918844

`A000188(A198344(n+1)²)`
-/

namespace A104842.P5763665567277918844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A198344 (n + 1) ^ 2).toNat

end

end A104842.P5763665567277918844

/-! ## A104842.P15248566797638990359

`A000194(A198344(n+1)²)`
-/

namespace A104842.P15248566797638990359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A198344 (n + 1) ^ 2).toNat

end

end A104842.P15248566797638990359

/-! ## A104842.P17539388517080663381

`A000196(A198344(n+1)²)`
-/

namespace A104842.P17539388517080663381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A198344 (n + 1) ^ 2).toNat

end

end A104842.P17539388517080663381

/-!
# A104852: Prime numbers q such that q^2 = 2*prime(n) + n for some n.

The programs for A104852, there is no canonical definition to state claims against.
-/

/-! ## A104852.P1651424818863072993

`p?[A104788(n+1)]`
-/

namespace A104852.P1651424818863072993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104852.P1651424818863072993

/-! ## A104852.P14903009302356933579

`p?[record[A104788(A028920(n))]]`
-/

namespace A104852.P14903009302356933579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104788 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104852.P14903009302356933579

/-! ## A104852.P3669717128308283467

`p?[record[A104788(A052938(n))]]`
-/

namespace A104852.P3669717128308283467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104788 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104852.P3669717128308283467

/-! ## A104852.P2057868164607415357

`p?[record[A104788(A126759(n))]]`
-/

namespace A104852.P2057868164607415357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104788 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104852.P2057868164607415357

/-! ## A104852.P2312909710473141640

`p?[record[A104788(A154958(n))]]`
-/

namespace A104852.P2312909710473141640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104788 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104852.P2312909710473141640

/-!
# A104853: Binary array below read by downward antidiagonals.

The programs for A104853, there is no canonical definition to state claims against.
-/

/-! ## A104853.P18425222793865312057

`A085978(A130234(n)+A100353(n+1))`
-/

namespace A104853.P18425222793865312057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085978 (A130234 n + A100353 (n + 1)).toNat

end

end A104853.P18425222793865312057

/-! ## A104853.P1242050334700257671

`A101637(floor(sqrt(A108680(n))))`
-/

namespace A104853.P1242050334700257671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (Int.sqrt (A108680 n)).toNat

end

end A104853.P1242050334700257671

/-! ## A104853.P5800637906440239172

`A086017(2*A008277(n+3))`
-/

namespace A104853.P5800637906440239172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (2 * A008277 (n + 3)).toNat

end

end A104853.P5800637906440239172

/-! ## A104853.P16850035053366596588

`A008615(A348075(n+1))%2`
-/

namespace A104853.P16850035053366596588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008615 (A348075 (n + 1)).toNat) 2

end

end A104853.P16850035053366596588

/-! ## A104853.P5334748145065674185

`A115356(A355489(n+4)+A331580(2*(n+2)))`
-/

namespace A104853.P5334748145065674185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (A355489 (n + 4) + A331580 (2 * (n + 2))).toNat

end

end A104853.P5334748145065674185

/-!
# A104854: Number of n-digit numbers using digits 0 to n-1 each exactly once and containing no 3-digit sequence in increasing or decreasing order.

The programs for A104854, there is no canonical definition to state claims against.
-/

/-! ## A104854.P12233423543842164930

`2*A000111(n+1)-A000111(n)`
-/

namespace A104854.P12233423543842164930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000111 (n + 1) - A000111 n

end

end A104854.P12233423543842164930

/-! ## A104854.P7767403264357969867

`Δ[A173253(n)+A000111(n)]`
-/

namespace A104854.P7767403264357969867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173253 n + A000111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104854.P7767403264357969867

/-! ## A104854.P2913437588658151563

`A000111(n)+Δ[A260786(n)]`
-/

namespace A104854.P2913437588658151563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (f1 (n + 1) - f1 n)

end

end A104854.P2913437588658151563

/-! ## A104854.P1037684414815762467

`A006212(n)-A000708(n+1)`
-/

namespace A104854.P1037684414815762467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006212 n - A000708 (n + 1)

end

end A104854.P1037684414815762467

/-! ## A104854.P4080596254523361691

`A000708(n)+A000111(n+1)+A000111(n)`
-/

namespace A104854.P4080596254523361691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000708 n + A000111 (n + 1) + A000111 n

end

end A104854.P4080596254523361691

/-! ## A104854.P12382051189427128834

`A001250(n+1)+A000007(n)-A000111(n)`
-/

namespace A104854.P12382051189427128834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 1) + A000007 n - A000111 n

end

end A104854.P12382051189427128834

/-! ## A104854.P1230710158992469844

`Δ[A000831(n)]/A000079(n)`
-/

namespace A104854.P1230710158992469844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A104854.P1230710158992469844

/-!
# A104855: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of three-dimensional lattice walks consisting of n unit steps, each in one of the six coordinate directions, starting at the origin, never going below the horizontal plane and having k vertical steps.

The programs for A104855, the canonical program `A104855.P16565651273477376719` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104855 has offset 0).

The definition of A104855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104855.P16565651273477376719

`C(row(n), col(n))*C(col(n), ceil(col(n)/2))*4^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104855

/-- `C(row(n), col(n))*C(col(n), ceil(col(n)/2))*4^(row(n)-col(n))` -/
def P16565651273477376719.Spec : Prop :=
  ∀ n, P16565651273477376719.a n = (A104855 n : ℚ)

end A104855

/-! ## A104855.P8852509210995338561

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A051289(n)`
-/

namespace A104855.P8852509210995338561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A051289 n : ℚ)

end

end A104855.P8852509210995338561

namespace A104855

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A051289(n)` -/
def P8852509210995338561.Spec : Prop :=
  ∀ n, P8852509210995338561.a n = (A104855 n : ℚ)

end A104855

/-! ## A104855.P10954070690316603936

`A051289(n)*A130321(n)`
-/

namespace A104855.P10954070690316603936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051289 n * A130321 n

end

end A104855.P10954070690316603936

namespace A104855

/-- `A051289(n)*A130321(n)` -/
def P10954070690316603936.Spec : Prop :=
  ∀ n, P10954070690316603936.a n = A104855 n

end A104855

/-! ## A104855.P14193797498722843180

`round(A130330(n)/2)*A051289(n)`
-/

namespace A104855.P14193797498722843180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130330 n : ℚ) / 2) * A051289 n

end

end A104855.P14193797498722843180

namespace A104855

/-- `round(A130330(n)/2)*A051289(n)` -/
def P14193797498722843180.Spec : Prop :=
  ∀ n, P14193797498722843180.a n = A104855 n

end A104855

/-! ## A104855.P6120134935694145429

`A001405(A002262(n))*A038231(n)`
-/

namespace A104855.P6120134935694145429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A002262 n).toNat * A038231 n

end

end A104855.P6120134935694145429

namespace A104855

/-- `A001405(A002262(n))*A038231(n)` -/
def P6120134935694145429.Spec : Prop :=
  ∀ n, P6120134935694145429.a n = A104855 n

end A104855

/-!
# A104856: Triangle read by rows: T(n,k) = binomial(n,k)*binomial(k,floor(k/2))*binomial(n-k,floor((n-k)/2)) (0<=k<=n).

The programs for A104856, the canonical program `A104856.P12483638466935627248` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104856 has offset 0).

The definition of A104856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*C(col(n), floor(col(n)/2))*C(row(n)-col(n), floor((row(n)-col(n))/2))` (program `A104856.P12483638466935627248`, by `A104856.P12483638466935627248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104856.P12483638466935627248

`C(row(n), col(n))*C(col(n), floor(col(n)/2))*C(row(n)-col(n), floor((row(n)-col(n))/2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104856

/-- `C(row(n), col(n))*C(col(n), floor(col(n)/2))*C(row(n)-col(n), floor((row(n)-col(n))/2))` -/
def P12483638466935627248.Spec : Prop :=
  ∀ n, (P12483638466935627248.a n : ℤ) = A104856 n

theorem P12483638466935627248.correct : P12483638466935627248.Spec := by
  intro n
  simp only [A104856]

end A104856

/-! ## A104856.P13898621348682706424

`A001405(col(n))*A107230(n)`
-/

namespace A104856.P13898621348682706424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (SequenceMachineLib.triCol n) * A107230 n

end

end A104856.P13898621348682706424

namespace A104856

/-- `A001405(col(n))*A107230(n)` -/
def P13898621348682706424.Spec : Prop :=
  ∀ n, P13898621348682706424.a n = A104856 n

theorem P13898621348682706424.correct : P13898621348682706424.Spec := by
  intro n
  simp only [A104856, Nat.add_sub_cancel, A104856.P13898621348682706424.a, A104856.P12483638466935627248.a, A001405, A001405.P5205018418992951678.a, A107230, A107230.P12967853617686474406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104856

/-! ## A104856.P4897903268106146796

`A107230(n)*A107230(∑{#}[col(n), #])`
-/

namespace A104856.P4897903268106146796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n * A107230 (∑ k ∈ Finset.range (f1 n + 1), k)

end

end A104856.P4897903268106146796

namespace A104856

/-- `A107230(n)*A107230(∑{#}[col(n), #])` -/
def P4897903268106146796.Spec : Prop :=
  ∀ n, P4897903268106146796.a n = A104856 n

end A104856

/-! ## A104856.P15144503525379312885

`A001405(A002262(n))*A107230(n)`
-/

namespace A104856.P15144503525379312885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A002262 n).toNat * A107230 n

end

end A104856.P15144503525379312885

namespace A104856

/-- `A001405(A002262(n))*A107230(n)` -/
def P15144503525379312885.Spec : Prop :=
  ∀ n, P15144503525379312885.a n = A104856 n

end A104856

/-! ## A104856.P1473663328237580741

`A061554(A112367(n))*A107230(n)`
-/

namespace A104856.P1473663328237580741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A112367 n).toNat * A107230 n

end

end A104856.P1473663328237580741

namespace A104856

/-- `A061554(A112367(n))*A107230(n)` -/
def P1473663328237580741.Spec : Prop :=
  ∀ n, P1473663328237580741.a n = A104856 n

end A104856

/-! ## A104856.P223443967906178329

`A001405(A003056(n))*A088855(n+1)`
-/

namespace A104856.P223443967906178329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A003056 n).toNat * A088855 (n + 1)

end

end A104856.P223443967906178329

namespace A104856

/-- `A001405(A003056(n))*A088855(n+1)` -/
def P223443967906178329.Spec : Prop :=
  ∀ n, P223443967906178329.a n = A104856 n

end A104856

/-! ## A104856.P8965308521198729078

`A001405(A025668(n+1))*A107230(n)`
-/

namespace A104856.P8965308521198729078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A025668 (n + 1)).toNat * A107230 n

end

end A104856.P8965308521198729078

namespace A104856

/-- `A001405(A025668(n+1))*A107230(n)` -/
def P8965308521198729078.Spec : Prop :=
  ∀ n, P8965308521198729078.a n = A104856 n

end A104856

/-! ## A104856.P7580250861270888691

`A001405(A025675(n+1))*A107230(n)`
-/

namespace A104856.P7580250861270888691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A025675 (n + 1)).toNat * A107230 n

end

end A104856.P7580250861270888691

namespace A104856

/-- `A001405(A025675(n+1))*A107230(n)` -/
def P7580250861270888691.Spec : Prop :=
  ∀ n, P7580250861270888691.a n = A104856 n

end A104856

/-! ## A104856.P4907303525226892982

`A001405(A144328(n+1))*A107230(n)`
-/

namespace A104856.P4907303525226892982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A144328 (n + 1)).toNat * A107230 n

end

end A104856.P4907303525226892982

namespace A104856

/-- `A001405(A144328(n+1))*A107230(n)` -/
def P4907303525226892982.Spec : Prop :=
  ∀ n, P4907303525226892982.a n = A104856 n

end A104856

/-! ## A104856.P13848401821589709056

`A107230(n)*A210736(A002260(n+1))`
-/

namespace A104856.P13848401821589709056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n * A210736 (A002260 (n + 1)).toNat

end

end A104856.P13848401821589709056

namespace A104856

/-- `A107230(n)*A210736(A002260(n+1))` -/
def P13848401821589709056.Spec : Prop :=
  ∀ n, P13848401821589709056.a n = A104856 n

end A104856

/-!
# A104857: Positive integers that cannot be represented as the sum of distinct Lucas 3-step numbers (A001644).

The programs for A104857, there is no canonical definition to state claims against.
-/

/-! ## A104857.P11184354350329829784

`comp[A319198(n)+n]+1`
-/

namespace A104857.P11184354350329829784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A104857.P11184354350329829784

/-! ## A104857.P15885802583419129991

`comp[5*n+1-A278040(n)]`
-/

namespace A104857.P15885802583419129991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) - A278040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104857.P15885802583419129991

/-! ## A104857.P18319574709535632315

`comp[6*n+3-A140103(n+1)]`
-/

namespace A104857.P18319574709535632315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - A140103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104857.P18319574709535632315

/-! ## A104857.P14653944381087419533

`comp[A016873(n)-A003145(n+1)]`
-/

namespace A104857.P14653944381087419533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A003145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104857.P14653944381087419533

/-! ## A104857.P13775303662068233337

`eq[char[A319198(n)+1+n], A000007(n)]`
-/

namespace A104857.P13775303662068233337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A104857.P13775303662068233337

/-! ## A104857.P2823730483732969281

`comp[6*n+3-(A278041(n)-A278039(n))]`
-/

namespace A104857.P2823730483732969281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - (A278041 n - A278039 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104857.P2823730483732969281

/-! ## A104857.P4897613314601609484

`comp[6*n+3-(A140101(n+1)+A140100(n+1))]`
-/

namespace A104857.P4897613314601609484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - (A140101 (n + 1) + A140100 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104857.P4897613314601609484

/-! ## A104857.P10636305203285491172

`comp[A144396(3*n+1)-(A278039(A003144(n+1))+n+1)]`
-/

namespace A104857.P10636305203285491172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (3 * n + 1) - (A278039 (A003144 (n + 1)).toNat + (n + 1 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104857.P10636305203285491172

/-! ## A104857.P5458522833819551903

`comp[A144396(3*n+1)-(A003146(n+1)-(A278039(n)+1))]`
-/

namespace A104857.P5458522833819551903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (3 * n + 1) - (A003146 (n + 1) - (A278039 n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104857.P5458522833819551903

/-! ## A104857.P9282134597938491590

`comp[A144396(3*n+1)-(A319967(n+1)+1-A278039(n))]`
-/

namespace A104857.P9282134597938491590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (3 * n + 1) - (A319967 (n + 1) + (1 - A278039 n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104857.P9282134597938491590

/-!
# A104858: Partial sums of the little Schroeder numbers (A001003).

The programs for A104858, the canonical program `A104858.P16916997968901490082` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104858 has offset 0).

The definition of A104858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104858.P3494061438782204733

`∑[A001003(n)]`
-/

namespace A104858.P3494061438782204733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P3494061438782204733

namespace A104858

/-- `∑[A001003(n)]` -/
def P3494061438782204733.Spec : Prop :=
  ∀ n, P3494061438782204733.a n = A104858 n

end A104858

/-! ## A104858.P16916997968901490082

`∑[abs(A080243(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104858

/-- `∑[abs(A080243(n))]` -/
def P16916997968901490082.Spec : Prop :=
  ∀ n, P16916997968901490082.a n = A104858 n

theorem P16916997968901490082.correct : P16916997968901490082.Spec := by
  intro n
  simp only [A104858]

end A104858

/-! ## A104858.P9619143748050908207

`∑[A104219(∑[n])]`
-/

namespace A104858.P9619143748050908207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P9619143748050908207

namespace A104858

/-- `∑[A104219(∑[n])]` -/
def P9619143748050908207.Spec : Prop :=
  ∀ n, P9619143748050908207.a n = A104858 n

end A104858

/-! ## A104858.P9362061272661442236

`∑[A172094(∑[n])]`
-/

namespace A104858.P9362061272661442236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172094 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P9362061272661442236

namespace A104858

/-- `∑[A172094(∑[n])]` -/
def P9362061272661442236.Spec : Prop :=
  ∀ n, P9362061272661442236.a n = A104858 n

end A104858

/-! ## A104858.P12055919795626716198

`∑[A186826(∑[n])]`
-/

namespace A104858.P12055919795626716198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186826 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P12055919795626716198

namespace A104858

/-- `∑[A186826(∑[n])]` -/
def P12055919795626716198.Spec : Prop :=
  ∀ n, P12055919795626716198.a n = A104858 n

end A104858

/-! ## A104858.P3017900893204032033

`∑[A110440(C(n, 2))]`
-/

namespace A104858.P3017900893204032033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P3017900893204032033

namespace A104858

/-- `∑[A110440(C(n, 2))]` -/
def P3017900893204032033.Spec : Prop :=
  ∀ n, P3017900893204032033.a n = A104858 n

end A104858

/-! ## A104858.P6787190307070706039

`∑[A011117(∑[n]+n)]`
-/

namespace A104858.P6787190307070706039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P6787190307070706039

namespace A104858

/-- `∑[A011117(∑[n]+n)]` -/
def P6787190307070706039.Spec : Prop :=
  ∀ n, P6787190307070706039.a n = A104858 n

end A104858

/-! ## A104858.P10876836739369304216

`∑[A110440(∑[n]-n)]`
-/

namespace A104858.P10876836739369304216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P10876836739369304216

namespace A104858

/-- `∑[A110440(∑[n]-n)]` -/
def P10876836739369304216.Spec : Prop :=
  ∀ n, P10876836739369304216.a n = A104858 n

end A104858

/-! ## A104858.P1205084500213490030

`∑[ceil(∑[A006319(n)/2])]`
-/

namespace A104858.P1205084500213490030
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006319 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P1205084500213490030

namespace A104858

/-- `∑[ceil(∑[A006319(n)/2])]` -/
def P1205084500213490030.Spec : Prop :=
  ∀ n, P1205084500213490030.a n = A104858 n

end A104858

/-! ## A104858.P6343418363257762304

`∑[A238112(n)+A155069(n)]`
-/

namespace A104858.P6343418363257762304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238112 n + A155069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P6343418363257762304

namespace A104858

/-- `∑[A238112(n)+A155069(n)]` -/
def P6343418363257762304.Spec : Prop :=
  ∀ n, P6343418363257762304.a n = A104858 n

end A104858

/-! ## A104858.P8675164641408785435

`A176006(n)+∑[A238112(n)]`
-/

namespace A104858.P8675164641408785435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P8675164641408785435

namespace A104858

/-- `A176006(n)+∑[A238112(n)]` -/
def P8675164641408785435.Spec : Prop :=
  ∀ n, P8675164641408785435.a n = A104858 n

end A104858

/-! ## A104858.P17715991274150615107

`∑[A006319(n)-A238112(n)]`
-/

namespace A104858.P17715991274150615107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n - A238112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P17715991274150615107

namespace A104858

/-- `∑[A006319(n)-A238112(n)]` -/
def P17715991274150615107.Spec : Prop :=
  ∀ n, P17715991274150615107.a n = A104858 n

end A104858

/-! ## A104858.P6676477273093257644

`∑[gcd(A000038(n), A080243(n))]`
-/

namespace A104858.P6676477273093257644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080243 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P6676477273093257644

namespace A104858

/-- `∑[gcd(A000038(n), A080243(n))]` -/
def P6676477273093257644.Spec : Prop :=
  ∀ n, (P6676477273093257644.a n : ℤ) = A104858 n

end A104858

/-! ## A104858.P531245053942690413

`ceil(A086616(n)/2)`
-/

namespace A104858.P531245053942690413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086616 n : ℚ) / 2⌉

end

end A104858.P531245053942690413

namespace A104858

/-- `ceil(A086616(n)/2)` -/
def P531245053942690413.Spec : Prop :=
  ∀ n, P531245053942690413.a n = A104858 n

end A104858

/-! ## A104858.P13626111489712070516

`A176006(n+1)/2`
-/

namespace A104858.P13626111489712070516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176006 (n + 1) : ℚ) / 2

end

end A104858.P13626111489712070516

namespace A104858

/-- `A176006(n+1)/2` -/
def P13626111489712070516.Spec : Prop :=
  ∀ n, P13626111489712070516.a n = (A104858 n : ℚ)

end A104858

/-! ## A104858.P7742592938691762031

`∑[ceil(A006318(n)/2)]`
-/

namespace A104858.P7742592938691762031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006318 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P7742592938691762031

namespace A104858

/-- `∑[ceil(A006318(n)/2)]` -/
def P7742592938691762031.Spec : Prop :=
  ∀ n, P7742592938691762031.a n = A104858 n

end A104858

/-! ## A104858.P160168849468177872

`record[(A336859(n)+1)/2]`
-/

namespace A104858.P160168849468177872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336859 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104858.P160168849468177872

namespace A104858

/-- `record[(A336859(n)+1)/2]` -/
def P160168849468177872.Spec : Prop :=
  ∀ n, P160168849468177872.a n = (A104858 n : ℚ)

end A104858

/-! ## A104858.P17292659753145118802

`∑[A238111(n)-A238113(n)]`
-/

namespace A104858.P17292659753145118802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238111 n - A238113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P17292659753145118802

namespace A104858

/-- `∑[A238111(n)-A238113(n)]` -/
def P17292659753145118802.Spec : Prop :=
  ∀ n, P17292659753145118802.a n = A104858 n

end A104858

/-! ## A104858.P2050515280032048605

`∑[gcd(A006318(n), A238113(n))]`
-/

namespace A104858.P2050515280032048605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006318 n) (A238113 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P2050515280032048605

namespace A104858

/-- `∑[gcd(A006318(n), A238113(n))]` -/
def P2050515280032048605.Spec : Prop :=
  ∀ n, (P2050515280032048605.a n : ℤ) = A104858 n

end A104858

/-! ## A104858.P675923496068113025

`∑[A155069(n+1)/A280560(2*n)]`
-/

namespace A104858.P675923496068113025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155069 (n + 1) : ℚ) / (A280560 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104858.P675923496068113025

namespace A104858

/-- `∑[A155069(n+1)/A280560(2*n)]` -/
def P675923496068113025.Spec : Prop :=
  ∀ n, P675923496068113025.a n = (A104858 n : ℚ)

end A104858

/-!
# A104859: Partial sums of A001764.

The programs for A104859, the canonical program `A104859.P6965904932722830606` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104859 has offset 0).

The definition of A104859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104859.P6965904932722830606

`∑[A001764(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A104859

/-- `∑[A001764(n)]` -/
def P6965904932722830606.Spec : Prop :=
  ∀ n, P6965904932722830606.a n = A104859 n

theorem P6965904932722830606.correct : P6965904932722830606.Spec := by
  intro n
  simp only [A104859]

end A104859

/-! ## A104859.P751571005735088319

`∑[A073147(∑[n])]`
-/

namespace A104859.P751571005735088319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P751571005735088319

namespace A104859

/-- `∑[A073147(∑[n])]` -/
def P751571005735088319.Spec : Prop :=
  ∀ n, P751571005735088319.a n = A104859 n

end A104859

/-! ## A104859.P7658836373747544784

`∑[A110616(∑[n])]`
-/

namespace A104859.P7658836373747544784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P7658836373747544784

namespace A104859

/-- `∑[A110616(∑[n])]` -/
def P7658836373747544784.Spec : Prop :=
  ∀ n, P7658836373747544784.a n = A104859 n

end A104859

/-! ## A104859.P8084358063727933025

`∑[A047749(2*n)]`
-/

namespace A104859.P8084358063727933025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P8084358063727933025

namespace A104859

/-- `∑[A047749(2*n)]` -/
def P8084358063727933025.Spec : Prop :=
  ∀ n, P8084358063727933025.a n = A104859 n

end A104859

/-! ## A104859.P4778369998698757213

`∑[A127898(C(n, 2))]`
-/

namespace A104859.P4778369998698757213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P4778369998698757213

namespace A104859

/-- `∑[A127898(C(n, 2))]` -/
def P4778369998698757213.Spec : Prop :=
  ∀ n, P4778369998698757213.a n = A104859 n

end A104859

/-! ## A104859.P14209220045914595329

`∑[abs(A179848(n))]+1`
-/

namespace A104859.P14209220045914595329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A179848 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104859.P14209220045914595329

namespace A104859

/-- `∑[abs(A179848(n))]+1` -/
def P14209220045914595329.Spec : Prop :=
  ∀ n, P14209220045914595329.a n = A104859 n

end A104859

/-! ## A104859.P11278635647358628813

`∑[A127898(∑[n]-n)]`
-/

namespace A104859.P11278635647358628813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P11278635647358628813

namespace A104859

/-- `∑[A127898(∑[n]-n)]` -/
def P11278635647358628813.Spec : Prop :=
  ∀ n, P11278635647358628813.a n = A104859 n

end A104859

/-! ## A104859.P15488946004326937070

`∑[∑{d}[n+1, A251662(#)]]`
-/

namespace A104859.P15488946004326937070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A251662 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P15488946004326937070

namespace A104859

/-- `∑[∑{d}[n+1, A251662(#)]]` -/
def P15488946004326937070.Spec : Prop :=
  ∀ n, P15488946004326937070.a n = A104859 n

end A104859

/-! ## A104859.P18255137880508303368

`∑[A047761(abs(1-2*n))]`
-/

namespace A104859.P18255137880508303368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P18255137880508303368

namespace A104859

/-- `∑[A047761(abs(1-2*n))]` -/
def P18255137880508303368.Spec : Prop :=
  ∀ n, P18255137880508303368.a n = A104859 n

end A104859

/-! ## A104859.P3417866699621817475

`∑[(n+1)/2*A000139(n)]`
-/

namespace A104859.P3417866699621817475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000139 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P3417866699621817475

namespace A104859

/-- `∑[(n+1)/2*A000139(n)]` -/
def P3417866699621817475.Spec : Prop :=
  ∀ n, P3417866699621817475.a n = (A104859 n : ℚ)

end A104859

/-! ## A104859.P15838148382497667605

`∑[a(n-1)+A336945(n)+a(n-1)]` with `a(0)=1`
-/

namespace A104859.P15838148382497667605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A336945 n + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P15838148382497667605

namespace A104859

/-- `∑[a(n-1)+A336945(n)+a(n-1)]` -/
def P15838148382497667605.Spec : Prop :=
  ∀ n, P15838148382497667605.a n = A104859 n

end A104859

/-! ## A104859.P18309425514266580674

`∑[A047764(A017545(n))]`
-/

namespace A104859.P18309425514266580674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A017545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P18309425514266580674

namespace A104859

/-- `∑[A047764(A017545(n))]` -/
def P18309425514266580674.Spec : Prop :=
  ∀ n, P18309425514266580674.a n = A104859 n

end A104859

/-! ## A104859.P10563003743777862654

`∑[A069269(A061579(∑[n]))]`
-/

namespace A104859.P10563003743777862654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 (A061579 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P10563003743777862654

namespace A104859

/-- `∑[A069269(A061579(∑[n]))]` -/
def P10563003743777862654.Spec : Prop :=
  ∀ n, P10563003743777862654.a n = A104859 n

end A104859

/-! ## A104859.P595948679678853985

`∑[abs(A109956(∑[n]))]`
-/

namespace A104859.P595948679678853985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109956 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P595948679678853985

namespace A104859

/-- `∑[abs(A109956(∑[n]))]` -/
def P595948679678853985.Spec : Prop :=
  ∀ n, P595948679678853985.a n = A104859 n

end A104859

/-! ## A104859.P329768757004362726

`(∑[A046646(n+1)]+1)/2`
-/

namespace A104859.P329768757004362726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046646 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A104859.P329768757004362726

namespace A104859

/-- `(∑[A046646(n+1)]+1)/2` -/
def P329768757004362726.Spec : Prop :=
  ∀ n, P329768757004362726.a n = (A104859 n : ℚ)

end A104859

/-! ## A104859.P18323725994928991894

`a(n-1)-A134565(2*n)` with `a(0)=1`
-/

namespace A104859.P18323725994928991894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A134565 (2 * n)

end

end A104859.P18323725994928991894

namespace A104859

/-- `a(n-1)-A134565(2*n)` -/
def P18323725994928991894.Spec : Prop :=
  ∀ n, P18323725994928991894.a n = A104859 n

end A104859

/-! ## A104859.P17096162241983792245

`∑[A007226(n)-A006013(n)]`
-/

namespace A104859.P17096162241983792245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A006013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P17096162241983792245

namespace A104859

/-- `∑[A007226(n)-A006013(n)]` -/
def P17096162241983792245.Spec : Prop :=
  ∀ n, P17096162241983792245.a n = A104859 n

end A104859

/-! ## A104859.P5193206350732505265

`∑[A047749(A004277(n))%A060170(n+1)]`
-/

namespace A104859.P5193206350732505265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047749 (A004277 n).toNat) (A060170 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P5193206350732505265

namespace A104859

/-- `∑[A047749(A004277(n))%A060170(n+1)]` -/
def P5193206350732505265.Spec : Prop :=
  ∀ n, P5193206350732505265.a n = A104859 n

end A104859

/-! ## A104859.P10596354480537995732

`∑[A174687(n)/(n+1)]`
-/

namespace A104859.P10596354480537995732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174687 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P10596354480537995732

namespace A104859

/-- `∑[A174687(n)/(n+1)]` -/
def P10596354480537995732.Spec : Prop :=
  ∀ n, P10596354480537995732.a n = (A104859 n : ℚ)

end A104859

/-! ## A104859.P1104685494403221264

`∑[A052183(n)/(n+2)]`
-/

namespace A104859.P1104685494403221264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052183 n : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P1104685494403221264

namespace A104859

/-- `∑[A052183(n)/(n+2)]` -/
def P1104685494403221264.Spec : Prop :=
  ∀ n, P1104685494403221264.a n = (A104859 n : ℚ)

end A104859

/-! ## A104859.P18208199926975910717

`∑[C(3*n, n)/(2*n+1)]`
-/

namespace A104859.P18208199926975910717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P18208199926975910717

namespace A104859

/-- `∑[C(3*n, n)/(2*n+1)]` -/
def P18208199926975910717.Spec : Prop :=
  ∀ n, P18208199926975910717.a n = (A104859 n : ℚ)

end A104859

/-!
# A104860: Prime next to (n + n-th prime).

The programs for A104860, the canonical program `A104860.P17528912676967032139` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104860 has offset 1).

The definition of A104860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104860.P2404985220402803275

`A104897(n+1)+A014688(n+1)`
-/

namespace A104860.P2404985220402803275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104897 (n + 1) + A014688 (n + 1)

end

end A104860.P2404985220402803275

namespace A104860

/-- `A104897(n+1)+A014688(n+1)` -/
def P2404985220402803275.Spec : Prop :=
  ∀ n, P2404985220402803275.a n = A104860 (n + 1)

theorem P2404985220402803275.correct : P2404985220402803275.Spec := by
  intro n
  simp only [A104860, Nat.add_sub_cancel, A104860.P2404985220402803275.a, A104860.P17528912676967032139.f1, A104860.P17528912676967032139.a, A014688, A014688.P4990984272387159238.a, A104897, A104897.P16686351449696100309.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A090178, A090178.P3922482968985292774.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A008864, A008864.P9177617808325052279.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104860

/-! ## A104860.P11422219740790241619

`A000040(A084294(n+1)+n+1)`
-/

namespace A104860.P11422219740790241619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084294 (n + 1) + (n + 1 : ℤ)).toNat

end

end A104860.P11422219740790241619

namespace A104860

/-- `A000040(A084294(n+1)+n+1)` -/
def P11422219740790241619.Spec : Prop :=
  ∀ n, P11422219740790241619.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P11641296221455300603

`A000040(A332086(n+1)+n+2)`
-/

namespace A104860.P11641296221455300603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A332086 (n + 1) + (n + 2 : ℤ)).toNat

end

end A104860.P11641296221455300603

namespace A104860

/-- `A000040(A332086(n+1)+n+2)` -/
def P11641296221455300603.Spec : Prop :=
  ∀ n, P11641296221455300603.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P17528912676967032139

`A151800(p?[abs(xor(n, -2))]+1+n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104860

/-- `A151800(p?[abs(xor(n, -2))]+1+n)` -/
def P17528912676967032139.Spec : Prop :=
  ∀ n, P17528912676967032139.a n = A104860 (n + 1)

theorem P17528912676967032139.correct : P17528912676967032139.Spec := by
  intro n
  simp only [A104860, Nat.add_sub_cancel]

end A104860

/-! ## A104860.P14728036936532953972

`A151800(p?[xor(1, n)+1]+n+1)`
-/

namespace A104860.P14728036936532953972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (n + 1))

end

end A104860.P14728036936532953972

namespace A104860

/-- `A151800(p?[xor(1, n)+1]+n+1)` -/
def P14728036936532953972.Spec : Prop :=
  ∀ n, P14728036936532953972.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P11392321447194386316

`A151800(p?[n-(-1)^n]+n+1)`
-/

namespace A104860.P11392321447194386316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ) + 1).toNat

end

end A104860.P11392321447194386316

namespace A104860

/-- `A151800(p?[n-(-1)^n]+n+1)` -/
def P11392321447194386316.Spec : Prop :=
  ∀ n, P11392321447194386316.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P7140037142293257454

`A151800(A014688(n+1))`
-/

namespace A104860.P7140037142293257454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014688 (n + 1)).toNat

end

end A104860.P7140037142293257454

namespace A104860

/-- `A151800(A014688(n+1))` -/
def P7140037142293257454.Spec : Prop :=
  ∀ n, P7140037142293257454.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P17593538019893675903

`A151800(A095116(n+1)+1)`
-/

namespace A104860.P17593538019893675903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A095116 (n + 1) + 1).toNat

end

end A104860.P17593538019893675903

namespace A104860

/-- `A151800(A095116(n+1)+1)` -/
def P17593538019893675903.Spec : Prop :=
  ∀ n, P17593538019893675903.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P697950318431218741

`A151800(A008864(n+1)+n)`
-/

namespace A104860.P697950318431218741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008864 (n + 1) + (n : ℤ)).toNat

end

end A104860.P697950318431218741

namespace A104860

/-- `A151800(A008864(n+1)+n)` -/
def P697950318431218741.Spec : Prop :=
  ∀ n, P697950318431218741.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P2121911598293468163

`A151800(A000040(n+1)+n+1)`
-/

namespace A104860.P2121911598293468163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) + (n + 1 : ℤ)).toNat

end

end A104860.P2121911598293468163

namespace A104860

/-- `A151800(A000040(n+1)+n+1)` -/
def P2121911598293468163.Spec : Prop :=
  ∀ n, P2121911598293468163.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P6637289210720145699

`A151800(A006093(n+1)+n+2)`
-/

namespace A104860.P6637289210720145699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006093 (n + 1) + (n + 2 : ℤ)).toNat

end

end A104860.P6637289210720145699

namespace A104860

/-- `A151800(A006093(n+1)+n+2)` -/
def P6637289210720145699.Spec : Prop :=
  ∀ n, P6637289210720145699.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P11621548254586933823

`A151800(A008578(n+2)+n+1)`
-/

namespace A104860.P11621548254586933823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008578 (n + 2) + (n + 1 : ℤ)).toNat

end

end A104860.P11621548254586933823

namespace A104860

/-- `A151800(A008578(n+2)+n+1)` -/
def P11621548254586933823.Spec : Prop :=
  ∀ n, P11621548254586933823.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P15001278693713415499

`A151800(A014692(n+1)+2*n+1)`
-/

namespace A104860.P15001278693713415499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014692 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A104860.P15001278693713415499

namespace A104860

/-- `A151800(A014692(n+1)+2*n+1)` -/
def P15001278693713415499.Spec : Prop :=
  ∀ n, P15001278693713415499.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P14359001399940140035

`A151800(A000203(A000040(n+1))+n)`
-/

namespace A104860.P14359001399940140035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000203 (A000040 (n + 1)).toNat + (n : ℤ)).toNat

end

end A104860.P14359001399940140035

namespace A104860

/-- `A151800(A000203(A000040(n+1))+n)` -/
def P14359001399940140035.Spec : Prop :=
  ∀ n, P14359001399940140035.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P14355502605730459943

`A065091(A000720(A000040(n+1)+n+1))`
-/

namespace A104860.P14355502605730459943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000720 (A000040 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A104860.P14355502605730459943

namespace A104860

/-- `A065091(A000720(A000040(n+1)+n+1))` -/
def P14355502605730459943.Spec : Prop :=
  ∀ n, P14355502605730459943.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P4593674544225257507

`A151800(A151800(A065514(n+1))+n+1)`
-/

namespace A104860.P4593674544225257507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A065514 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A104860.P4593674544225257507

namespace A104860

/-- `A151800(A151800(A065514(n+1))+n+1)` -/
def P4593674544225257507.Spec : Prop :=
  ∀ n, P4593674544225257507.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P2845766843028291862

`A151800(A067747(2*n+1)+n+1)`
-/

namespace A104860.P2845766843028291862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A067747 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A104860.P2845766843028291862

namespace A104860

/-- `A151800(A067747(2*n+1)+n+1)` -/
def P2845766843028291862.Spec : Prop :=
  ∀ n, P2845766843028291862.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P18145455610173436783

`A151800(A113646(A000040(n+1))+n)`
-/

namespace A104860.P18145455610173436783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A113646 (A000040 (n + 1)).toNat + (n : ℤ)).toNat

end

end A104860.P18145455610173436783

namespace A104860

/-- `A151800(A113646(A000040(n+1))+n)` -/
def P18145455610173436783.Spec : Prop :=
  ∀ n, P18145455610173436783.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P2643881079519362535

`A003961(A071329(n+1))`
-/

namespace A104860.P2643881079519362535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A071329 (n + 1)).toNat

end

end A104860.P2643881079519362535

namespace A104860

/-- `A003961(A071329(n+1))` -/
def P2643881079519362535.Spec : Prop :=
  ∀ n, P2643881079519362535.a n = A104860 (n + 1)

end A104860

/-! ## A104860.P6391047182565025881

`A007918(A071329(n+1)+1)`
-/

namespace A104860.P6391047182565025881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A071329 (n + 1) + 1).toNat

end

end A104860.P6391047182565025881

namespace A104860

/-- `A007918(A071329(n+1)+1)` -/
def P6391047182565025881.Spec : Prop :=
  ∀ n, P6391047182565025881.a n = A104860 (n + 1)

end A104860

/-!
# A104861: Number of compositions (ordered partitions) of the n-th prime into n positive integers.

The programs for A104861, the canonical program `A104861.P2511086375982114607` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104861 has offset 1).

The definition of A104861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104861.P2511086375982114607

`C(A000040(n+1)-1, n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A104861

/-- `C(A000040(n+1)-1, n)` -/
def P2511086375982114607.Spec : Prop :=
  ∀ n, (P2511086375982114607.a n : ℤ) = A104861 (n + 1)

theorem P2511086375982114607.correct : P2511086375982114607.Spec := by
  intro n
  simp only [A104861, Nat.add_sub_cancel]

end A104861

/-! ## A104861.P447784067768873047

`(n+1)*A075872(n+1)`
-/

namespace A104861.P447784067768873047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075872 (n + 1)

end

end A104861.P447784067768873047

namespace A104861

/-- `(n+1)*A075872(n+1)` -/
def P447784067768873047.Spec : Prop :=
  ∀ n, P447784067768873047.a n = A104861 (n + 1)

end A104861

/-! ## A104861.P8994555668976650131

`A037031(A006093(n+1))`
-/

namespace A104861.P8994555668976650131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (A006093 (n + 1)).toNat

end

end A104861.P8994555668976650131

namespace A104861

/-- `A037031(A006093(n+1))` -/
def P8994555668976650131.Spec : Prop :=
  ∀ n, P8994555668976650131.a n = A104861 (n + 1)

end A104861

/-! ## A104861.P13836765579743444861

`A037031(record[A000010(n+1)])`
-/

namespace A104861.P13836765579743444861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104861.P13836765579743444861

namespace A104861

/-- `A037031(record[A000010(n+1)])` -/
def P13836765579743444861.Spec : Prop :=
  ∀ n, P13836765579743444861.a n = A104861 (n + 1)

end A104861

/-! ## A104861.P6424735807374803297

`A037031(record[A074919(n+1)])`
-/

namespace A104861.P6424735807374803297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104861.P6424735807374803297

namespace A104861

/-- `A037031(record[A074919(n+1)])` -/
def P6424735807374803297.Spec : Prop :=
  ∀ n, P6424735807374803297.a n = A104861 (n + 1)

end A104861

/-! ## A104861.P11015277839830050647

`A037031(A000040(n+1)-1)`
-/

namespace A104861.P11015277839830050647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (A000040 (n + 1) - 1).toNat

end

end A104861.P11015277839830050647

namespace A104861

/-- `A037031(A000040(n+1)-1)` -/
def P11015277839830050647.Spec : Prop :=
  ∀ n, P11015277839830050647.a n = A104861 (n + 1)

end A104861

/-! ## A104861.P16370439706817812690

`A037031(A008578(n+2)-1)`
-/

namespace A104861.P16370439706817812690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (A008578 (n + 2) - 1).toNat

end

end A104861.P16370439706817812690

namespace A104861

/-- `A037031(A008578(n+2)-1)` -/
def P16370439706817812690.Spec : Prop :=
  ∀ n, P16370439706817812690.a n = A104861 (n + 1)

end A104861

/-! ## A104861.P7487633474010697408

`A037031(eq[1, A003415(n+1)])`
-/

namespace A104861.P7487633474010697408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104861.P7487633474010697408

namespace A104861

/-- `A037031(eq[1, A003415(n+1)])` -/
def P7487633474010697408.Spec : Prop :=
  ∀ n, P7487633474010697408.a n = A104861 (n + 1)

end A104861

/-! ## A104861.P7124762911249919546

`record[A037031(A006530(n+1)-1)]`
-/

namespace A104861.P7124762911249919546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (A006530 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104861.P7124762911249919546

namespace A104861

/-- `record[A037031(A006530(n+1)-1)]` -/
def P7124762911249919546.Spec : Prop :=
  ∀ n, P7124762911249919546.a n = A104861 (n + 1)

end A104861

/-! ## A104861.P15563445537826725522

`record[A037031(A014963(n+1)-1)]`
-/

namespace A104861.P15563445537826725522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (A014963 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104861.P15563445537826725522

namespace A104861

/-- `record[A037031(A014963(n+1)-1)]` -/
def P15563445537826725522.Spec : Prop :=
  ∀ n, P15563445537826725522.a n = A104861 (n + 1)

end A104861

/-!
# A104862: First differences of A014292.

The programs for A104862, the canonical program `A104862.P14432381981300056990` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104862 has offset 0).

The definition of A104862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104862.P14002288969440284081

`ogf((x-x^2)/(1-2x+x^2+x^4))`
-/

namespace A104862.P14002288969440284081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, 1, 0, 1] n

end

end A104862.P14002288969440284081

namespace A104862

/-- `ogf((x-x^2)/(1-2x+x^2+x^4))` -/
def P14002288969440284081.Spec : Prop :=
  ∀ n, P14002288969440284081.a n = A104862 n

end A104862

/-! ## A104862.P14432381981300056990

`2*a(n-1)-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104862

/-- `2*a(n-1)-(a(n-2)+a(n-4))` -/
def P14432381981300056990.Spec : Prop :=
  ∀ n, P14432381981300056990.a n = A104862 n

theorem P14432381981300056990.correct : P14432381981300056990.Spec := by
  intro n
  simp only [A104862]

end A104862

/-! ## A104862.P2729591879757424497

`2*a(n-1)-a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A104862.P2729591879757424497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) - a (n - 4)

end

end A104862.P2729591879757424497

namespace A104862

/-- `2*a(n-1)-a(n-2)-a(n-4)` -/
def P2729591879757424497.Spec : Prop :=
  ∀ n, P2729591879757424497.a n = A104862 n

theorem P2729591879757424497.correct : P2729591879757424497.Spec := by
  intro n
  simp only [A104862, Nat.add_sub_cancel, A104862.P2729591879757424497.a, A104862.P14432381981300056990.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A104862

/-! ## A104862.P6190496463078178592

`a(n-1)+a(n-1)-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A104862.P6190496463078178592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 1) - (a (n - 2) + a (n - 4)))

end

end A104862.P6190496463078178592

namespace A104862

/-- `a(n-1)+a(n-1)-(a(n-2)+a(n-4))` -/
def P6190496463078178592.Spec : Prop :=
  ∀ n, P6190496463078178592.a n = A104862 n

theorem P6190496463078178592.correct : P6190496463078178592.Spec := by
  intro n
  simp only [A104862, Nat.add_sub_cancel, A104862.P6190496463078178592.a, A104862.P14432381981300056990.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A104862

/-! ## A104862.P2773626022470929946

`Δ[A014292(n)]`
-/

namespace A104862.P2773626022470929946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104862.P2773626022470929946

namespace A104862

/-- `Δ[A014292(n)]` -/
def P2773626022470929946.Spec : Prop :=
  ∀ n, P2773626022470929946.a n = A104862 n

end A104862

/-! ## A104862.P8469068669111915993

`A014292(n+1)-A014292(n)`
-/

namespace A104862.P8469068669111915993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014292 (n + 1) - A014292 n

end

end A104862.P8469068669111915993

namespace A104862

/-- `A014292(n+1)-A014292(n)` -/
def P8469068669111915993.Spec : Prop :=
  ∀ n, P8469068669111915993.a n = A104862 n

end A104862

/-!
# A104863: a(n) = floor(sqrt(a(n-1)^2 + a(n-2)^2)), a(1)=10, a(2)=30.

The programs for A104863, the canonical program `A104863.P9501639845086121093` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104863 has offset 1).

The definition of A104863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(a(n-1)²+a(n-2)²))` (program `A104863.P9501639845086121093`, by `A104863.P9501639845086121093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104863.P9501639845086121093

`floor(sqrt(a(n-1)²+a(n-2)²))` with `a(0)=10, a(1)=30`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104863

/-- `floor(sqrt(a(n-1)²+a(n-2)²))` -/
def P9501639845086121093.Spec : Prop :=
  ∀ n, (P9501639845086121093.a n : ℤ) = A104863 (n + 1)

theorem P9501639845086121093.correct : P9501639845086121093.Spec := by
  intro n
  simp only [A104863, Nat.add_sub_cancel]

end A104863

/-! ## A104863.P3942406387619499181

`(A104910(n+1)-A104909(n+1))/10+10*A104803(n+1)`
-/

namespace A104863.P3942406387619499181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104910 (n + 1) - A104909 (n + 1) : ℚ) / 10 + (10 * A104803 (n + 1) : ℚ)

end

end A104863.P3942406387619499181

namespace A104863

/-- `(A104910(n+1)-A104909(n+1))/10+10*A104803(n+1)` -/
def P3942406387619499181.Spec : Prop :=
  ∀ n, P3942406387619499181.a n = (A104863 (n + 1) : ℚ)

theorem P3942406387619499181.correct : P3942406387619499181.Spec := by
  intro n
  simp only [A104863, Nat.add_sub_cancel, A104863.P3942406387619499181.a, A104863.P9501639845086121093.a, A104803, A104803.P1617163421035207857.a, A104909, A104909.P10359222536385174752.a, A104910, A104910.P12981987413792342465.a, A104908, A104908.P7531716399826030557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104863

/-! ## A104863.P15027460470419882330

`(A104908(n+1)-A104909(n+1))/10`
-/

namespace A104863.P15027460470419882330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104908 (n + 1) - A104909 (n + 1) : ℚ) / 10

end

end A104863.P15027460470419882330

namespace A104863

/-- `(A104908(n+1)-A104909(n+1))/10` -/
def P15027460470419882330.Spec : Prop :=
  ∀ n, P15027460470419882330.a n = (A104863 (n + 1) : ℚ)

theorem P15027460470419882330.correct : P15027460470419882330.Spec := by
  intro n
  simp only [A104863, Nat.add_sub_cancel, A104863.P15027460470419882330.a, A104863.P9501639845086121093.a, A104908, A104908.P7531716399826030557.a, A104909, A104909.P10359222536385174752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104863

/-! ## A104863.P14329695594655178140

`A008592(A104803(n+1))+(A104910(n+1)-A104909(n+1))/10`
-/

namespace A104863.P14329695594655178140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (A104803 (n + 1)).toNat : ℚ) + (A104910 (n + 1) - A104909 (n + 1) : ℚ) / 10

end

end A104863.P14329695594655178140

namespace A104863

/-- `A008592(A104803(n+1))+(A104910(n+1)-A104909(n+1))/10` -/
def P14329695594655178140.Spec : Prop :=
  ∀ n, P14329695594655178140.a n = (A104863 (n + 1) : ℚ)

end A104863

/-! ## A104863.P7362232785374900896

`A104864(n)+10*A104803(n+1)`
-/

namespace A104863.P7362232785374900896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104864 n + 10 * A104803 (n + 1)

end

end A104863.P7362232785374900896

namespace A104863

/-- `A104864(n)+10*A104803(n+1)` -/
def P7362232785374900896.Spec : Prop :=
  ∀ n, P7362232785374900896.a n = A104863 (n + 1)

theorem P7362232785374900896.correct : P7362232785374900896.Spec := by
  intro n
  simp only [A104863, Nat.add_sub_cancel, A104863.P7362232785374900896.a, A104863.P9501639845086121093.a, A104803, A104803.P1617163421035207857.a, A104864, A104864.P15771101001242915047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104863

/-!
# A104864: "Floor of hypotenuse": a(n)=A104863(n)-10*A104803(n).

The programs for A104864, the canonical program `A104864.P15771101001242915047` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104864 has offset 0).

The definition of A104864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A104863(n+1)-10*A104803(n+1)` (program `A104864.P15771101001242915047`, by `A104864.P15771101001242915047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104864.P15771101001242915047

`A104863(n+1)-10*A104803(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A104864

/-- `A104863(n+1)-10*A104803(n+1)` -/
def P15771101001242915047.Spec : Prop :=
  ∀ n, P15771101001242915047.a n = A104864 n

theorem P15771101001242915047.correct : P15771101001242915047.Spec := by
  intro n
  simp only [A104864]

end A104864

/-! ## A104864.P9582278775581267754

`(A104910(n+1)-A104909(n+1))/10`
-/

namespace A104864.P9582278775581267754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104910 (n + 1) - A104909 (n + 1) : ℚ) / 10

end

end A104864.P9582278775581267754

namespace A104864

/-- `(A104910(n+1)-A104909(n+1))/10` -/
def P9582278775581267754.Spec : Prop :=
  ∀ n, P9582278775581267754.a n = (A104864 n : ℚ)

theorem P9582278775581267754.correct : P9582278775581267754.Spec := by
  intro n
  simp only [A104864, Nat.add_sub_cancel, A104864.P9582278775581267754.a, A104864.P15771101001242915047.a, A104803, A104803.P1617163421035207857.a, A104863, A104863.P9501639845086121093.a, A104909, A104909.P10359222536385174752.a, A104910, A104910.P12981987413792342465.a, A104908, A104908.P7531716399826030557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104864

/-! ## A104864.P7992345772307631559

`A104863(n+1)-A008592(A104803(n+1))`
-/

namespace A104864.P7992345772307631559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104863 (n + 1) - A008592 (A104803 (n + 1)).toNat

end

end A104864.P7992345772307631559

namespace A104864

/-- `A104863(n+1)-A008592(A104803(n+1))` -/
def P7992345772307631559.Spec : Prop :=
  ∀ n, P7992345772307631559.a n = A104864 n

end A104864

/-! ## A104864.P9533961176097885852

`(A104910(n+1)-A104908(n+1)%A104863(n+1))/10`
-/

namespace A104864.P9533961176097885852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104910 (n + 1) - Int.tmod (A104908 (n + 1)) (A104863 (n + 1)) : ℚ) / 10

end

end A104864.P9533961176097885852

namespace A104864

/-- `(A104910(n+1)-A104908(n+1)%A104863(n+1))/10` -/
def P9533961176097885852.Spec : Prop :=
  ∀ n, P9533961176097885852.a n = (A104864 n : ℚ)

end A104864

/-! ## A104864.P13262603386311772704

`(A104908(n+1)-A104909(n+1))/10-10*A104803(n+1)`
-/

namespace A104864.P13262603386311772704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104908 (n + 1) - A104909 (n + 1) : ℚ) / 10 - (10 * A104803 (n + 1) : ℚ)

end

end A104864.P13262603386311772704

namespace A104864

/-- `(A104908(n+1)-A104909(n+1))/10-10*A104803(n+1)` -/
def P13262603386311772704.Spec : Prop :=
  ∀ n, P13262603386311772704.a n = (A104864 n : ℚ)

theorem P13262603386311772704.correct : P13262603386311772704.Spec := by
  intro n
  simp only [A104864, Nat.add_sub_cancel, A104864.P13262603386311772704.a, A104864.P15771101001242915047.a, A104803, A104803.P1617163421035207857.a, A104863, A104863.P9501639845086121093.a, A104908, A104908.P7531716399826030557.a, A104909, A104909.P10359222536385174752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104864

/-!
# A104866: Initial and final digits in the partition of decimal expansion of Pi.

The programs for A104866, there is no canonical definition to state claims against.
-/

/-! ## A104866.P3280182404847191963

`A000796(∑[A104865(n+1)]-1)`
-/

namespace A104866.P3280182404847191963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat + 1)

end

end A104866.P3280182404847191963

/-! ## A104866.P3445585508951843334

`A123152(∑[A104865(n+1)])-1`
-/

namespace A104866.P3445585508951843334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A104866.P3445585508951843334

/-!
# A104868: Rounded value of the running average of A104865.

The programs for A104868, there is no canonical definition to state claims against.
-/

/-! ## A104868.P17830040300104433459

`round(∑[A104865(n+1)]/(n+1))`
-/

namespace A104868.P17830040300104433459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A104868.P17830040300104433459

/-!
# A104871: Positions of records A104867 in A104865.

The programs for A104871, there is no canonical definition to state claims against.
-/

/-! ## A104871.P3202083844325458904

`2^∑{e}[1+n, #]*A373673(A263780(n))`
-/

namespace A104871.P3202083844325458904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) * A373673 (A263780 n).toNat

end

end A104871.P3202083844325458904

/-!
# A104872: Diagonal sums of A004248.

The programs for A104872, the canonical program `A104872.P17419359313343843010` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104872 has offset 0).

The definition of A104872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104872.P17419359313343843010

`∑{#}[floor(n/2), #^(n-2*#)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104872

/-- `∑{#}[floor(n/2), #^(n-2*#)]` -/
def P17419359313343843010.Spec : Prop :=
  ∀ n, P17419359313343843010.a n = (A104872 n : ℚ)

end A104872

/-! ## A104872.P1707156610576153215

`floor(A103481(n)-n/2)`
-/

namespace A104872.P1707156610576153215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103481 n : ℚ) - (n : ℚ) / 2⌋

end

end A104872.P1707156610576153215

namespace A104872

/-- `floor(A103481(n)-n/2)` -/
def P1707156610576153215.Spec : Prop :=
  ∀ n, P1707156610576153215.a n = A104872 n

end A104872

/-! ## A104872.P12856438777416852548

`A103481(n)-A110654(n)`
-/

namespace A104872.P12856438777416852548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103481 n - A110654 n

end

end A104872.P12856438777416852548

namespace A104872

/-- `A103481(n)-A110654(n)` -/
def P12856438777416852548.Spec : Prop :=
  ∀ n, P12856438777416852548.a n = A104872 n

end A104872

/-! ## A104872.P9587606466008383358

`A103481(n)-abs(A001057(n))`
-/

namespace A104872.P9587606466008383358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103481 n - |A001057 n|

end

end A104872.P9587606466008383358

namespace A104872

/-- `A103481(n)-abs(A001057(n))` -/
def P9587606466008383358.Spec : Prop :=
  ∀ n, P9587606466008383358.a n = A104872 n

end A104872

/-! ## A104872.P16660473508446671566

`A103481(n)-log2(A060546(n))`
-/

namespace A104872.P16660473508446671566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A103481 n : ℝ) - Real.logb 2 (A060546 n : ℝ)

end

end A104872.P16660473508446671566

namespace A104872

/-- `A103481(n)-log2(A060546(n))` -/
def P16660473508446671566.Spec : Prop :=
  ∀ n, P16660473508446671566.a n = (A104872 n : ℝ)

end A104872

/-! ## A104872.P12736401431081505026

`A103481(n)-∑[A000035(n)]`
-/

namespace A104872.P12736401431081505026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103481 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104872.P12736401431081505026

namespace A104872

/-- `A103481(n)-∑[A000035(n)]` -/
def P12736401431081505026.Spec : Prop :=
  ∀ n, P12736401431081505026.a n = A104872 n

end A104872

/-!
# A104878: A sum-of-powers number triangle.

The programs for A104878, the canonical program `A104878.P11142851487420327259` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104878 has offset 0).

The definition of A104878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104878.P11142851487420327259

`1+col(n)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104878

/-- `1+col(n)*T(n-1,k)` -/
def P11142851487420327259.Spec : Prop :=
  ∀ n, (P11142851487420327259.a n : ℤ) = A104878 n

theorem P11142851487420327259.correct : P11142851487420327259.Spec := by
  intro n
  simp only [A104878]

end A104878

/-! ## A104878.P15969039414522849680

`lcm(col(n), T(n-1,k))+1` with `a(0)=1, a(1)=1`
-/

namespace A104878.P15969039414522849680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm (SequenceMachineLib.triCol n) (SequenceMachineLib.triUp a n) + 1

end

end A104878.P15969039414522849680

namespace A104878

/-- `lcm(col(n), T(n-1,k))+1` -/
def P15969039414522849680.Spec : Prop :=
  ∀ n, (P15969039414522849680.a n : ℤ) = A104878 n

end A104878

/-! ## A104878.P15738205465696761534

`1-(T(n-1,k)-2*T(n-1,k))*col(n)` with `a(0)=1`
-/

namespace A104878.P15738205465696761534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A104878.P15738205465696761534

namespace A104878

/-- `1-(T(n-1,k)-2*T(n-1,k))*col(n)` -/
def P15738205465696761534.Spec : Prop :=
  ∀ n, P15738205465696761534.a n = A104878 n

end A104878

/-! ## A104878.P12974456606314633465

`T(n-1,k)+col(n)^(row(n)-col(n))` with `a(0)=1`
-/

namespace A104878.P12974456606314633465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A104878.P12974456606314633465

namespace A104878

/-- `T(n-1,k)+col(n)^(row(n)-col(n))` -/
def P12974456606314633465.Spec : Prop :=
  ∀ n, P12974456606314633465.a n = (A104878 n : ℚ)

end A104878

/-! ## A104878.P4921620920596662059

`col(n)*T(T(row(n)-1, 1), col(n))+1` with `a(0)=1`
-/

namespace A104878.P4921620920596662059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triCol n * SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) 1 : ℕ) : ℤ) (SequenceMachineLib.triCol n : ℤ) + 1

end

end A104878.P4921620920596662059

namespace A104878

/-- `col(n)*T(T(row(n)-1, 1), col(n))+1` -/
def P4921620920596662059.Spec : Prop :=
  ∀ n, (P4921620920596662059.a n : ℤ) = A104878 n

end A104878

/-! ## A104878.P8912961920661445610

`1+A228275(n)`
-/

namespace A104878.P8912961920661445610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A228275 n

end

end A104878.P8912961920661445610

namespace A104878

/-- `1+A228275(n)` -/
def P8912961920661445610.Spec : Prop :=
  ∀ n, P8912961920661445610.a n = A104878 n

theorem P8912961920661445610.correct : P8912961920661445610.Spec := by
  intro n
  simp only [A104878, Nat.add_sub_cancel, A104878.P8912961920661445610.a, A104878.P11142851487420327259.a, A228275, A228275.P892745485716094877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104878

/-! ## A104878.P16685559876169369884

`abs(xor(A097807(n), A228275(n)))`
-/

namespace A104878.P16685559876169369884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A097807 n) (A228275 n)|

end

end A104878.P16685559876169369884

namespace A104878

/-- `abs(xor(A097807(n), A228275(n)))` -/
def P16685559876169369884.Spec : Prop :=
  ∀ n, P16685559876169369884.a n = A104878 n

end A104878

/-! ## A104878.P7762480554786584542

`A228275(n)-(-1)^A273316(n)`
-/

namespace A104878.P7762480554786584542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228275 n : ℚ) - (-1 : ℚ) ^ (A273316 n : ℤ)

end

end A104878.P7762480554786584542

namespace A104878

/-- `A228275(n)-(-1)^A273316(n)` -/
def P7762480554786584542.Spec : Prop :=
  ∀ n, P7762480554786584542.a n = (A104878 n : ℚ)

end A104878

/-! ## A104878.P8046057857817202071

`A228275(n)-A008683(A007918(n))`
-/

namespace A104878.P8046057857817202071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 n - A008683 (A007918 n).toNat

end

end A104878.P8046057857817202071

namespace A104878

/-- `A228275(n)-A008683(A007918(n))` -/
def P8046057857817202071.Spec : Prop :=
  ∀ n, P8046057857817202071.a n = A104878 n

end A104878

/-! ## A104878.P2653679591941577775

`A228275(n)-A008683(A151800(n))`
-/

namespace A104878.P2653679591941577775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 n - A008683 (A151800 n).toNat

end

end A104878.P2653679591941577775

namespace A104878

/-- `A228275(n)-A008683(A151800(n))` -/
def P2653679591941577775.Spec : Prop :=
  ∀ n, P2653679591941577775.a n = A104878 n

end A104878

/-! ## A104878.P9830723387837777935

`A055129(A056943(n)+1)`
-/

namespace A104878.P9830723387837777935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (A056943 n + 1).toNat

end

end A104878.P9830723387837777935

namespace A104878

/-- `A055129(A056943(n)+1)` -/
def P9830723387837777935.Spec : Prop :=
  ∀ n, P9830723387837777935.a n = A104878 n

end A104878

/-! ## A104878.P14574613450240111250

`A055129(∑[char[∑[n]]]²-n-∑[char[∑[n+1]]])`
-/

namespace A104878.P14574613450240111250
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A104878.P14574613450240111250

namespace A104878

/-- `A055129(∑[char[∑[n]]]²-n-∑[char[∑[n+1]]])` -/
def P14574613450240111250.Spec : Prop :=
  ∀ n, P14574613450240111250.a n = A104878 n

end A104878

/-! ## A104878.P15450605352824821227

`A228275(n)-A008683(A134204(n))`
-/

namespace A104878.P15450605352824821227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 n - A008683 (A134204 n).toNat

end

end A104878.P15450605352824821227

namespace A104878

/-- `A228275(n)-A008683(A134204(n))` -/
def P15450605352824821227.Spec : Prop :=
  ∀ n, P15450605352824821227.a n = A104878 n

end A104878

/-! ## A104878.P12838930000086860869

`A104881(∑[2*n]%comp[∑[n]])`
-/

namespace A104878.P12838930000086860869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104881 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A104878.P12838930000086860869

namespace A104878

/-- `A104881(∑[2*n]%comp[∑[n]])` -/
def P12838930000086860869.Spec : Prop :=
  ∀ n, P12838930000086860869.a n = A104878 n

end A104878

/-! ## A104878.P8661190832202069210

`A104881(∑[char[∑[n]]]²-(n+1))`
-/

namespace A104878.P8661190832202069210
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104881 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A104878.P8661190832202069210

namespace A104878

/-- `A104881(∑[char[∑[n]]]²-(n+1))` -/
def P8661190832202069210.Spec : Prop :=
  ∀ n, P8661190832202069210.a n = A104878 n

end A104878

/-!
# A104879: Row sums of a sum-of-powers triangle.

The programs for A104879, there is no canonical definition to state claims against.
-/

/-! ## A104879.P12242075180956067541

`1+A103439(n)`
-/

namespace A104879.P12242075180956067541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A103439 n

end

end A104879.P12242075180956067541

/-! ## A104879.P6936113928659293543

`∑[A101494(∑[n])]`
-/

namespace A104879.P6936113928659293543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104879.P6936113928659293543

/-! ## A104879.P13633700713189895554

`∑[A103480(n)-n]`
-/

namespace A104879.P13633700713189895554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103480 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104879.P13633700713189895554

/-! ## A104879.P14488794570317160731

`A026898(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A104879.P14488794570317160731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026898 (n - 1) + a (n - 1)

end

end A104879.P14488794570317160731

/-! ## A104879.P13820352816801829792

`∑[A026898(A028310(n)-1)]`
-/

namespace A104879.P13820352816801829792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104879.P13820352816801829792

/-! ## A104879.P11032455219580640053

`∑[A026898(A004273(n)-n)]`
-/

namespace A104879.P11032455219580640053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104879.P11032455219580640053

/-! ## A104879.P15597118686398431105

`∑[A026898(n-char[A007318(n)])]`
-/

namespace A104879.P15597118686398431105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n - (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104879.P15597118686398431105

/-! ## A104879.P630906492773634792

`∑[A026898(n-char[A074909(n)])]`
-/

namespace A104879.P630906492773634792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n - (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104879.P630906492773634792

/-! ## A104879.P16562662557457345236

`∑[A026898(A004526(A004273(n)))]`
-/

namespace A104879.P16562662557457345236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104879.P16562662557457345236

/-! ## A104879.P6049515928048563112

`∑[A026898(n)]-A003101(n)`
-/

namespace A104879.P6049515928048563112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003101 n

end

end A104879.P6049515928048563112

/-!
# A104880: Diagonal sums of a sum-of-powers triangle.

The programs for A104880, there is no canonical definition to state claims against.
-/

/-! ## A104880.P7537028066502470189

`∑[A104872(n)]`
-/

namespace A104880.P7537028066502470189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104880.P7537028066502470189

/-! ## A104880.P2850123235421781573

`∑[floor(A103481(n)-n/2)]`
-/

namespace A104880.P2850123235421781573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103481 n : ℚ) - (n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104880.P2850123235421781573

/-! ## A104880.P13405289919902752859

`∑[A103481(n)-A110654(n)]`
-/

namespace A104880.P13405289919902752859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103481 n - A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104880.P13405289919902752859

/-! ## A104880.P13966774732994756269

`A104872(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A104880.P13966774732994756269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104872 n + a (A023443 n).toNat

end

end A104880.P13966774732994756269

/-! ## A104880.P7686853716433048452

`∑[A103481(n)-abs(A001057(n))]`
-/

namespace A104880.P7686853716433048452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103481 n - |A001057 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104880.P7686853716433048452

/-!
# A104881: Triangle T(n,k) = Sum_{j=0..k} (n-k)^(k-j), read by rows.

The programs for A104881, the canonical program `A104881.P4226123150950224695` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104881 has offset 0).

The definition of A104881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104881.P4226123150950224695

`1+(row(n)-col(n))*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104881

/-- `1+(row(n)-col(n))*T(n-1,k-1)` -/
def P4226123150950224695.Spec : Prop :=
  ∀ n, P4226123150950224695.a n = A104881 n

theorem P4226123150950224695.correct : P4226123150950224695.Spec := by
  intro n
  simp only [A104881]

end A104881

/-! ## A104881.P2216448690233327539

`1-(col(n)-row(n))*T(n-1,k-1)` with `a(0)=1`
-/

namespace A104881.P2216448690233327539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUpLeft a n

end

end A104881.P2216448690233327539

namespace A104881

/-- `1-(col(n)-row(n))*T(n-1,k-1)` -/
def P2216448690233327539.Spec : Prop :=
  ∀ n, P2216448690233327539.a n = A104881 n

end A104881

/-! ## A104881.P586438229849666690

`T(n-1,k-1)+(row(n)-col(n))^col(n)` with `a(0)=1`
-/

namespace A104881.P586438229849666690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ SequenceMachineLib.triCol n

end

end A104881.P586438229849666690

namespace A104881

/-- `T(n-1,k-1)+(row(n)-col(n))^col(n)` -/
def P586438229849666690.Spec : Prop :=
  ∀ n, P586438229849666690.a n = A104881 n

end A104881

/-! ## A104881.P15646858839369037179

`A003992(n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A104881.P15646858839369037179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003992 n + SequenceMachineLib.triUpLeft a n

end

end A104881.P15646858839369037179

namespace A104881

/-- `A003992(n)+T(n-1,k-1)` -/
def P15646858839369037179.Spec : Prop :=
  ∀ n, P15646858839369037179.a n = A104881 n

end A104881

/-! ## A104881.P9835268355532547227

`(A238339(n)+1)/2`
-/

namespace A104881.P9835268355532547227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238339 n + 1 : ℚ) / 2

end

end A104881.P9835268355532547227

namespace A104881

/-- `(A238339(n)+1)/2` -/
def P9835268355532547227.Spec : Prop :=
  ∀ n, P9835268355532547227.a n = (A104881 n : ℚ)

end A104881

/-! ## A104881.P15558843274617664087

`A055129(∑[char[n-char[∑[n]]]])`
-/

namespace A104881.P15558843274617664087
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104881.P15558843274617664087

namespace A104881

/-- `A055129(∑[char[n-char[∑[n]]]])` -/
def P15558843274617664087.Spec : Prop :=
  ∀ n, P15558843274617664087.a n = A104881 n

end A104881

/-! ## A104881.P18314862409573120436

`A104878(A061579(n))`
-/

namespace A104881.P18314862409573120436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104878 (A061579 n).toNat

end

end A104881.P18314862409573120436

namespace A104881

/-- `A104878(A061579(n))` -/
def P18314862409573120436.Spec : Prop :=
  ∀ n, P18314862409573120436.a n = A104881 n

end A104881

/-! ## A104881.P7476764604923460222

`A104878(A038722(n+2))`
-/

namespace A104881.P7476764604923460222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104878 (A038722 (n + 2)).toNat

end

end A104881.P7476764604923460222

namespace A104881

/-- `A104878(A038722(n+2))` -/
def P7476764604923460222.Spec : Prop :=
  ∀ n, P7476764604923460222.a n = A104881 n

end A104881

/-! ## A104881.P17725696404158399137

`A067066(n+1)/A004736(n+1)`
-/

namespace A104881.P17725696404158399137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067066 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A104881.P17725696404158399137

namespace A104881

/-- `A067066(n+1)/A004736(n+1)` -/
def P17725696404158399137.Spec : Prop :=
  ∀ n, P17725696404158399137.a n = (A104881 n : ℚ)

end A104881

/-! ## A104881.P18224432976970248247

`A228275((n²+n)%A080036(n))+1`
-/

namespace A104881.P18224432976970248247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n)).toNat + 1

end

end A104881.P18224432976970248247

namespace A104881

/-- `A228275((n²+n)%A080036(n))+1` -/
def P18224432976970248247.Spec : Prop :=
  ∀ n, P18224432976970248247.a n = A104881 n

end A104881

/-! ## A104881.P9266163780013681091

`gcd(C(n, n²), A055129(A122797(n+1)))`
-/

namespace A104881.P9266163780013681091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A055129 (A122797 (n + 1)).toNat)

end

end A104881.P9266163780013681091

namespace A104881

/-- `gcd(C(n, n²), A055129(A122797(n+1)))` -/
def P9266163780013681091.Spec : Prop :=
  ∀ n, (P9266163780013681091.a n : ℤ) = A104881 n

end A104881

/-! ## A104881.P10980175304364643284

`A230980(C(n, n²))+A055129(A122797(n+1))`
-/

namespace A104881.P10980175304364643284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.choose n (n ^ 2)) + A055129 (A122797 (n + 1)).toNat

end

end A104881.P10980175304364643284

namespace A104881

/-- `A230980(C(n, n²))+A055129(A122797(n+1))` -/
def P10980175304364643284.Spec : Prop :=
  ∀ n, P10980175304364643284.a n = A104881 n

end A104881

/-! ## A104881.P4994031906879597887

`A055129(A122797(n+1))^A004277(C(n, n²))`
-/

namespace A104881.P4994031906879597887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055129 (A122797 (n + 1)).toNat : ℚ) ^ (A004277 (Nat.choose n (n ^ 2)) : ℤ)

end

end A104881.P4994031906879597887

namespace A104881

/-- `A055129(A122797(n+1))^A004277(C(n, n²))` -/
def P4994031906879597887.Spec : Prop :=
  ∀ n, P4994031906879597887.a n = (A104881 n : ℚ)

end A104881

/-! ## A104881.P6159729457466691749

`A055129(A122797(n+1))^A008574(C(n, n²))`
-/

namespace A104881.P6159729457466691749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055129 (A122797 (n + 1)).toNat : ℚ) ^ (A008574 (Nat.choose n (n ^ 2)) : ℤ)

end

end A104881.P6159729457466691749

namespace A104881

/-- `A055129(A122797(n+1))^A008574(C(n, n²))` -/
def P6159729457466691749.Spec : Prop :=
  ∀ n, P6159729457466691749.a n = (A104881 n : ℚ)

end A104881

/-! ## A104881.P6043398848729160640

`A055129(A122797(n+1))^A014963(A006093(n+1))`
-/

namespace A104881.P6043398848729160640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055129 (A122797 (n + 1)).toNat : ℚ) ^ (A014963 (A006093 (n + 1)).toNat : ℤ)

end

end A104881.P6043398848729160640

namespace A104881

/-- `A055129(A122797(n+1))^A014963(A006093(n+1))` -/
def P6043398848729160640.Spec : Prop :=
  ∀ n, P6043398848729160640.a n = (A104881 n : ℚ)

end A104881

/-! ## A104881.P12620932993208893324

`2*A055129(A122797(n+1))/A016008(A000040(n+2))`
-/

namespace A104881.P12620932993208893324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A055129 (A122797 (n + 1)).toNat : ℚ) / (A016008 (A000040 (n + 2)).toNat : ℚ)

end

end A104881.P12620932993208893324

namespace A104881

/-- `2*A055129(A122797(n+1))/A016008(A000040(n+2))` -/
def P12620932993208893324.Spec : Prop :=
  ∀ n, P12620932993208893324.a n = (A104881 n : ℚ)

end A104881

/-!
# A104882: Diagonal sums of number triangle A104881.

The programs for A104882, the canonical program `A104882.P17230433609934218686` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104882 has offset 0).

The definition of A104882 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104882.P17230433609934218686

`∑{#}[floor(n/2), A104881(C(n-#+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A104882

/-- `∑{#}[floor(n/2), A104881(C(n-#+1, 2)+#)]` -/
def P17230433609934218686.Spec : Prop :=
  ∀ n, P17230433609934218686.a n = A104882 n

theorem P17230433609934218686.correct : P17230433609934218686.Spec := by
  intro n
  simp only [A104882]

end A104882

/-! ## A104882.P8057840569024084312

`A352944(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A104882.P8057840569024084312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A352944 n + a (n - 2)

end

end A104882.P8057840569024084312

namespace A104882

/-- `A352944(n)+a(n-2)` -/
def P8057840569024084312.Spec : Prop :=
  ∀ n, P8057840569024084312.a n = A104882 n

end A104882

/-! ## A104882.P14748417189870310333

`floor(root(Δ[A305277(n+1)], 6))`
-/

namespace A104882.P14748417189870310333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A104882.P14748417189870310333

namespace A104882

/-- `floor(root(Δ[A305277(n+1)], 6))` -/
def P14748417189870310333.Spec : Prop :=
  ∀ n, P14748417189870310333.a n = A104882 n

end A104882

/-! ## A104882.P3648812039191649655

`A344881(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A104882.P3648812039191649655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A344881 (a (n - 1)).toNat + a (n - 2)

end

end A104882.P3648812039191649655

namespace A104882

/-- `A344881(a(n-1))+a(n-2)` -/
def P3648812039191649655.Spec : Prop :=
  ∀ n, P3648812039191649655.a n = A104882 n

end A104882

/-! ## A104882.P3899507680499038251

`A003059(A148447(n))`
-/

namespace A104882.P3899507680499038251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A148447 n).toNat

end

end A104882.P3899507680499038251

namespace A104882

/-- `A003059(A148447(n))` -/
def P3899507680499038251.Spec : Prop :=
  ∀ n, P3899507680499038251.a n = A104882 n

end A104882

/-!
# A104884: Records in A104883.

The programs for A104884, there is no canonical definition to state claims against.
-/

/-! ## A104884.P1914421069976028959

`record[A082468(n+1)]`
-/

namespace A104884.P1914421069976028959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104884.P1914421069976028959

/-!
# A104885: Primes whose logarithms are known to possess binary BBP formulas.

The programs for A104885, there is no canonical definition to state claims against.
-/

/-! ## A104885.P13798500344997950126

`record[A166333(A112587(n+1))]`
-/

namespace A104885.P13798500344997950126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A112587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104885.P13798500344997950126

/-! ## A104885.P10396701331171662621

`∩[A109997(n+1), A247151(n+1)]`
-/

namespace A104885.P10396701331171662621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104885.P10396701331171662621

/-! ## A104885.P6185734288663068736

`∩[A174144(n+1), A321993(n+1)]`
-/

namespace A104885.P6185734288663068736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104885.P6185734288663068736

/-! ## A104885.P7026952186569959194

`∩[A174144(n+1), A369464(n+1)]`
-/

namespace A104885.P7026952186569959194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104885.P7026952186569959194

/-! ## A104885.P4400303264728284536

`∩[A000040(n+1), A112587(n+1)+1]`
-/

namespace A104885.P4400303264728284536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104885.P4400303264728284536

/-!
# A104886: Sequence A048138, the number of times that a positive integer occurs as the sum of proper divisors, if Goldbach partitions (two odd primes, which account for most of the values) are ignored.

The programs for A104886, there is no canonical definition to state claims against.
-/

/-! ## A104886.P10463573801215277990

`A048138(n+2)-A117929(A133265(n))`
-/

namespace A104886.P10463573801215277990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2) - A117929 (A133265 n).toNat

end

end A104886.P10463573801215277990

/-! ## A104886.P8364848349566745722

`A036581(A323236(n+5)+A321162(2*n+3))`
-/

namespace A104886.P8364848349566745722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (A323236 (n + 5) + A321162 (2 * n + 3)).toNat

end

end A104886.P8364848349566745722

/-! ## A104886.P17554479074859307156

`val(A006370(A256598(4*n+1)), 4)`
-/

namespace A104886.P17554479074859307156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006370 (A256598 (4 * n + 1)).toNat).toNat 4

end

end A104886.P17554479074859307156

/-! ## A104886.P8621535441764530662

`A118759(A274150(n)-A283265(n+1))%3`
-/

namespace A104886.P8621535441764530662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 (A274150 n - A283265 (n + 1)).toNat) 3

end

end A104886.P8621535441764530662

/-! ## A104886.P4689223933766397302

`A056226(A000397(n+5))`
-/

namespace A104886.P4689223933766397302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056226 (A000397 (n + 5)).toNat

end

end A104886.P4689223933766397302

/-!
# A104887: Triangle T(n,k) = (n-k+1)-th prime, read by rows.

The programs for A104887, the canonical program `A104887.P16520352266867439420` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104887 has offset 1).

The definition of A104887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104887.P15224845335600690627

`A000040(row(n)+1-col(n))`
-/

namespace A104887.P15224845335600690627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A104887.P15224845335600690627

namespace A104887

/-- `A000040(row(n)+1-col(n))` -/
def P15224845335600690627.Spec : Prop :=
  ∀ n, P15224845335600690627.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P16520352266867439420

`A000040(A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104887

/-- `A000040(A004736(n+1))` -/
def P16520352266867439420.Spec : Prop :=
  ∀ n, P16520352266867439420.a n = A104887 (n + 1)

theorem P16520352266867439420.correct : P16520352266867439420.Spec := by
  intro n
  simp only [A104887, Nat.add_sub_cancel]

end A104887

/-! ## A104887.P9372166993186608632

`A151800(T(n-1,k))` with `a(0)=2`
-/

namespace A104887.P9372166993186608632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (SequenceMachineLib.triUp a n).toNat

end

end A104887.P9372166993186608632

namespace A104887

/-- `A151800(T(n-1,k))` -/
def P9372166993186608632.Spec : Prop :=
  ∀ n, P9372166993186608632.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P8237091262401538519

`A007918(T(n-1,k)+1)` with `a(0)=2`
-/

namespace A104887.P8237091262401538519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (SequenceMachineLib.triUp a n + 1).toNat

end

end A104887.P8237091262401538519

namespace A104887

/-- `A007918(T(n-1,k)+1)` -/
def P8237091262401538519.Spec : Prop :=
  ∀ n, P8237091262401538519.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P8020624836740312

`A000040(1-col(n)+row(n))`
-/

namespace A104887.P8020624836740312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ)).toNat

end

end A104887.P8020624836740312

namespace A104887

/-- `A000040(1-col(n)+row(n))` -/
def P8020624836740312.Spec : Prop :=
  ∀ n, P8020624836740312.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P5023428391182173442

`A008578(row(n)-col(n)+2)`
-/

namespace A104887.P5023428391182173442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat

end

end A104887.P5023428391182173442

namespace A104887

/-- `A008578(row(n)-col(n)+2)` -/
def P5023428391182173442.Spec : Prop :=
  ∀ n, P5023428391182173442.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P14828669571130970006

`A000040(C(row(n)+2, 2)-n)`
-/

namespace A104887.P14828669571130970006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 - n)

end

end A104887.P14828669571130970006

namespace A104887

/-- `A000040(C(row(n)+2, 2)-n)` -/
def P14828669571130970006.Spec : Prop :=
  ∀ n, P14828669571130970006.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P11876656161738596642

`A000040(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104887.P11876656161738596642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104887.P11876656161738596642

namespace A104887

/-- `A000040(C(comp[∑[n]]-n, 2)-n)` -/
def P11876656161738596642.Spec : Prop :=
  ∀ n, P11876656161738596642.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P10821761432276128170

`A006093(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A104887.P10821761432276128170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A104887.P10821761432276128170

namespace A104887

/-- `A006093(C(comp[∑[n]]-n, 2)-n)+1` -/
def P10821761432276128170.Spec : Prop :=
  ∀ n, P10821761432276128170.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P17804678736884670150

`A008578(C(comp[∑[n]]-n, 2)-n+1)`
-/

namespace A104887.P17804678736884670150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A104887.P17804678736884670150

namespace A104887

/-- `A008578(C(comp[∑[n]]-n, 2)-n+1)` -/
def P17804678736884670150.Spec : Prop :=
  ∀ n, P17804678736884670150.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P11850952687529917819

`A008578(C(comp[∑[n]]-n, 2)-(n-1))`
-/

namespace A104887.P11850952687529917819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - ((n : ℤ) - 1)).toNat

end

end A104887.P11850952687529917819

namespace A104887

/-- `A008578(C(comp[∑[n]]-n, 2)-(n-1))` -/
def P11850952687529917819.Spec : Prop :=
  ∀ n, P11850952687529917819.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P11162873440775572251

`A008864(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A104887.P11162873440775572251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A104887.P11162873440775572251

namespace A104887

/-- `A008864(C(comp[∑[n]]-n, 2)-n)-1` -/
def P11162873440775572251.Spec : Prop :=
  ∀ n, P11162873440775572251.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P11059689638350728565

`A040976(C(comp[∑[n]]-n, 2)-n)+2`
-/

namespace A104887.P11059689638350728565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 2

end

end A104887.P11059689638350728565

namespace A104887

/-- `A040976(C(comp[∑[n]]-n, 2)-n)+2` -/
def P11059689638350728565.Spec : Prop :=
  ∀ n, P11059689638350728565.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P3207977098023506384

`A100484(C(comp[∑[n]]-n, 2)-n)/2`
-/

namespace A104887.P3207977098023506384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) / 2

end

end A104887.P3207977098023506384

namespace A104887

/-- `A100484(C(comp[∑[n]]-n, 2)-n)/2` -/
def P3207977098023506384.Spec : Prop :=
  ∀ n, P3207977098023506384.a n = (A104887 (n + 1) : ℚ)

end A104887

/-! ## A104887.P10457240034774979149

`A175224(C(comp[∑[n]]-n, 2)-n)-8`
-/

namespace A104887.P10457240034774979149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 8

end

end A104887.P10457240034774979149

namespace A104887

/-- `A175224(C(comp[∑[n]]-n, 2)-n)-8` -/
def P10457240034774979149.Spec : Prop :=
  ∀ n, P10457240034774979149.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P342087937678504942

`A067747(A099375(n))`
-/

namespace A104887.P342087937678504942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A099375 n).toNat

end

end A104887.P342087937678504942

namespace A104887

/-- `A067747(A099375(n))` -/
def P342087937678504942.Spec : Prop :=
  ∀ n, P342087937678504942.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P8748497310179058636

`A109763(A104571(n))`
-/

namespace A104887.P8748497310179058636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A104571 n).toNat

end

end A104887.P8748497310179058636

namespace A104887

/-- `A109763(A104571(n))` -/
def P8748497310179058636.Spec : Prop :=
  ∀ n, P8748497310179058636.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P6248279141555505510

`A000040(A025581(n)+1)`
-/

namespace A104887.P6248279141555505510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025581 n + 1).toNat

end

end A104887.P6248279141555505510

namespace A104887

/-- `A000040(A025581(n)+1)` -/
def P6248279141555505510.Spec : Prop :=
  ∀ n, P6248279141555505510.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P4550876911227521734

`A073846(A099375(n)+1)`
-/

namespace A104887.P4550876911227521734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A099375 n + 1).toNat

end

end A104887.P4550876911227521734

namespace A104887

/-- `A073846(A099375(n)+1)` -/
def P4550876911227521734.Spec : Prop :=
  ∀ n, P4550876911227521734.a n = A104887 (n + 1)

end A104887

/-! ## A104887.P1389695091718227376

`A008578(A025581(n)+2)`
-/

namespace A104887.P1389695091718227376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A025581 n + 2).toNat

end

end A104887.P1389695091718227376

namespace A104887

/-- `A008578(A025581(n)+2)` -/
def P1389695091718227376.Spec : Prop :=
  ∀ n, P1389695091718227376.a n = A104887 (n + 1)

end A104887

/-!
# A104888: Class number of binary quadratic forms with radicand A005117(n).

The programs for A104888, there is no canonical definition to state claims against.
-/

/-! ## A104888.P12004921972717806149

`2*A106030(n+1)-A317990(n+2)`
-/

namespace A104888.P12004921972717806149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106030 (n + 1) - A317990 (n + 2)

end

end A104888.P12004921972717806149

/-! ## A104888.P11199485008067158954

`gcd(2, A035015(n+2))*A003649(n+2)`
-/

namespace A104888.P11199485008067158954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A035015 (n + 2)) : ℤ) * A003649 (n + 2)

end

end A104888.P11199485008067158954

/-! ## A104888.P2372374223800861230

`A317990(n+2)^A141703(A341880(n)+1)!`
-/

namespace A104888.P2372374223800861230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317990 (n + 2) ^ Nat.factorial (A141703 (A341880 (n + 16) + 1).toNat).toNat

end

end A104888.P2372374223800861230

/-! ## A104888.P10390570834529442036

`(A025466(A122111(n+1))+1)*A317990(n+2)`
-/

namespace A104888.P10390570834529442036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025466 (A122111 (n + 1)).toNat + 1) * A317990 (n + 2)

end

end A104888.P10390570834529442036

/-!
# A104889: Number of distinct prime divisors of 44...447 (with n 4s).

The programs for A104889, there is no canonical definition to state claims against.
-/

/-! ## A104889.P4569687167451784506

`A086342(eq[5, A143969(n)])`
-/

namespace A104889.P4569687167451784506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104889.P4569687167451784506

/-! ## A104889.P12617432962564805677

`A099910(lcm(9, A083434(n+1)))`
-/

namespace A104889.P12617432962564805677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (Int.lcm 9 (A083434 (n + 1)))

end

end A104889.P12617432962564805677

/-! ## A104889.P10835899528909323790

`A086342(A321466(A061579(n))²)`
-/

namespace A104889.P10835899528909323790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A321466 (A061579 n).toNat ^ 2).toNat

end

end A104889.P10835899528909323790

/-! ## A104889.P2293803849716467615

`A353932(A277572(n+1)+A056877(n+1))`
-/

namespace A104889.P2293803849716467615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353932 (A277572 (n + 1) + A056877 (n + 1)).toNat

end

end A104889.P2293803849716467615

/-! ## A104889.P9070128279840294710

`A016533(A321335(n))`
-/

namespace A104889.P9070128279840294710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016533 (A321335 n).toNat

end

end A104889.P9070128279840294710

/-!
# A104890: Number of distinct prime divisors of 66...661 (with n 6s).

The programs for A104890, there is no canonical definition to state claims against.
-/

/-! ## A104890.P17397546927684261070

`A001221(A214023(n+2)+A157210(3*(n+1)))`
-/

namespace A104890.P17397546927684261070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A214023 (n + 2) + A157210 (3 * (n + 1))).toNat

end

end A104890.P17397546927684261070

/-! ## A104890.P6986547137585814019

`A057217(A250470(n+1)+A173068(A048883(n)))`
-/

namespace A104890.P6986547137585814019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057217 (A250470 (n + 1) + A173068 (A048883 n).toNat).toNat

end

end A104890.P6986547137585814019

/-! ## A104890.P11152272311675083645

`A001221(A062241(2*n+1)%A142134(A171173(3*(n+1))))`
-/

namespace A104890.P11152272311675083645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A062241 (2 * n + 1)) (A142134 (A171173 (3 * (n + 1))).toNat)).toNat

end

end A104890.P11152272311675083645

/-!
# A104891: a(0) = 0; a(n) = 5*a(n-1) + 5.

The programs for A104891, the canonical program `A104891.P2863939410417364905` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104891 has offset 0).

The definition of A104891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+5` (program `A104891.P2863939410417364905`, by `A104891.P2863939410417364905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104891.P15784158594249934837

`ogf(5x/(1-6x+5x^2))`
-/

namespace A104891.P15784158594249934837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -6, 5] n

end

end A104891.P15784158594249934837

namespace A104891

/-- `ogf(5x/(1-6x+5x^2))` -/
def P15784158594249934837.Spec : Prop :=
  ∀ n, P15784158594249934837.a n = A104891 n

end A104891

/-! ## A104891.P6106385812510795521

`5*(5^n-1)/4`
-/

namespace A104891.P6106385812510795521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * ((5 ^ n : ℤ) - 1) : ℚ) / 4

end

end A104891.P6106385812510795521

namespace A104891

/-- `5*(5^n-1)/4` -/
def P6106385812510795521.Spec : Prop :=
  ∀ n, P6106385812510795521.a n = (A104891 n : ℚ)

theorem P6106385812510795521.correct : P6106385812510795521.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A104891, Nat.add_sub_cancel, A104891.P6106385812510795521.a, A104891.P2863939410417364905.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A104891, Nat.add_sub_cancel, A104891.P6106385812510795521.a, A104891.P2863939410417364905.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A104891

/-! ## A104891.P2863939410417364905

`5*a(n-1)+5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104891

/-- `5*a(n-1)+5` -/
def P2863939410417364905.Spec : Prop :=
  ∀ n, (P2863939410417364905.a n : ℤ) = A104891 n

theorem P2863939410417364905.correct : P2863939410417364905.Spec := by
  intro n
  simp only [A104891]

end A104891

/-! ## A104891.P345993834565011061

`a(n-1)+5^n` with `a(0)=0`
-/

namespace A104891.P345993834565011061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 5 ^ n

end

end A104891.P345993834565011061

namespace A104891

/-- `a(n-1)+5^n` -/
def P345993834565011061.Spec : Prop :=
  ∀ n, (P345993834565011061.a n : ℤ) = A104891 n

end A104891

/-! ## A104891.P14916718007739487020

`lcm(5, floor(5^n/4))`
-/

namespace A104891.P14916718007739487020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 ⌊(5 ^ n : ℚ) / 4⌋

end

end A104891.P14916718007739487020

namespace A104891

/-- `lcm(5, floor(5^n/4))` -/
def P14916718007739487020.Spec : Prop :=
  ∀ n, (P14916718007739487020.a n : ℤ) = A104891 n

end A104891

/-! ## A104891.P15248200123055473509

`xor(-1, ∑[-5^n])`
-/

namespace A104891.P15248200123055473509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(5 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104891.P15248200123055473509

namespace A104891

/-- `xor(-1, ∑[-5^n])` -/
def P15248200123055473509.Spec : Prop :=
  ∀ n, P15248200123055473509.a n = A104891 n

end A104891

/-! ## A104891.P3576152348569120698

`∑[C(5^n, ceil(acot(n)))]`
-/

namespace A104891.P3576152348569120698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 ^ n) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104891.P3576152348569120698

namespace A104891

/-- `∑[C(5^n, ceil(acot(n)))]` -/
def P3576152348569120698.Spec : Prop :=
  ∀ n, (P3576152348569120698.a n : ℤ) = A104891 n

end A104891

/-! ## A104891.P16423374052289831364

`∑[xor(5^n, floor(acot(n)))]`
-/

namespace A104891.P16423374052289831364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104891.P16423374052289831364

namespace A104891

/-- `∑[xor(5^n, floor(acot(n)))]` -/
def P16423374052289831364.Spec : Prop :=
  ∀ n, P16423374052289831364.a n = A104891 n

end A104891

/-! ## A104891.P337480639746268840

`5*(a(n-1)+1)` with `a(0)=0`
-/

namespace A104891.P337480639746268840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  5 * (a (n - 1) + 1)

end

end A104891.P337480639746268840

namespace A104891

/-- `5*(a(n-1)+1)` -/
def P337480639746268840.Spec : Prop :=
  ∀ n, (P337480639746268840.a n : ℤ) = A104891 n

theorem P337480639746268840.correct : P337480639746268840.Spec := by
  intro n
  simp only [A104891, Nat.add_sub_cancel, A104891.P337480639746268840.a, A104891.P2863939410417364905.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A104891

/-! ## A104891.P7732160180976519066

`∑[5*a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A104891.P7732160180976519066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104891.P7732160180976519066

namespace A104891

/-- `∑[5*a(n-1)]` -/
def P7732160180976519066.Spec : Prop :=
  ∀ n, (P7732160180976519066.a n : ℤ) = A104891 n

end A104891

/-! ## A104891.P15424259437509663579

`∑[(5^n)%∑[5^n]]`
-/

namespace A104891.P15424259437509663579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104891.P15424259437509663579

namespace A104891

/-- `∑[(5^n)%∑[5^n]]` -/
def P15424259437509663579.Spec : Prop :=
  ∀ n, (P15424259437509663579.a n : ℤ) = A104891 n

end A104891

/-! ## A104891.P17605369198141325651

`5*(1-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A104891.P17605369198141325651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (1 - (-a (n - 1)))

end

end A104891.P17605369198141325651

namespace A104891

/-- `5*(1-floor(-a(n-1)))` -/
def P17605369198141325651.Spec : Prop :=
  ∀ n, P17605369198141325651.a n = A104891 n

end A104891

/-! ## A104891.P7032949639026636325

`5*(1-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A104891.P7032949639026636325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (1 - (-a (n - 1)))

end

end A104891.P7032949639026636325

namespace A104891

/-- `5*(1-ceil(-a(n-1)))` -/
def P7032949639026636325.Spec : Prop :=
  ∀ n, P7032949639026636325.a n = A104891 n

end A104891

/-! ## A104891.P10856198107682212726

`5*(1-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A104891.P10856198107682212726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (1 - (-a (n - 1)))

end

end A104891.P10856198107682212726

namespace A104891

/-- `5*(1-round(-a(n-1)))` -/
def P10856198107682212726.Spec : Prop :=
  ∀ n, P10856198107682212726.a n = A104891 n

end A104891

/-! ## A104891.P4806081896489579410

`-(5*xor(-1, a(n-1)))` with `a(0)=0`
-/

namespace A104891.P4806081896489579410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -(5 * Int.xor (-1) (a (n - 1)))

end

end A104891.P4806081896489579410

namespace A104891

/-- `-(5*xor(-1, a(n-1)))` -/
def P4806081896489579410.Spec : Prop :=
  ∀ n, P4806081896489579410.a n = A104891 n

end A104891

/-! ## A104891.P15120368779492960092

`∑[a(gcd(n, n+1))^n]` with `a(0)=0, a(1)=5`
-/

namespace A104891.P15120368779492960092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (Nat.gcd n (n + 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104891.P15120368779492960092

namespace A104891

/-- `∑[a(gcd(n, n+1))^n]` -/
def P15120368779492960092.Spec : Prop :=
  ∀ n, (P15120368779492960092.a n : ℤ) = A104891 n

end A104891

/-! ## A104891.P1887707601105673303

`∑[a(floor((n+1)/n))^n]` with `a(0)=0, a(1)=5`
-/

namespace A104891.P1887707601105673303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / (n : ℚ)⌋.toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104891.P1887707601105673303

namespace A104891

/-- `∑[a(floor((n+1)/n))^n]` -/
def P1887707601105673303.Spec : Prop :=
  ∀ n, (P1887707601105673303.a n : ℤ) = A104891 n

end A104891

/-! ## A104891.P15701801394544300825

`5*(4/2-(1-a(n-1)))` with `a(0)=0`
-/

namespace A104891.P15701801394544300825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  5 * ((4 : ℚ) / 2 - (1 - a (n - 1)))

end

end A104891.P15701801394544300825

namespace A104891

/-- `5*(4/2-(1-a(n-1)))` -/
def P15701801394544300825.Spec : Prop :=
  ∀ n, P15701801394544300825.a n = (A104891 n : ℚ)

end A104891

/-! ## A104891.P8215434950885734145

`-Δ[5*(a(n-1)-(n-1))]` with `a(0)=0`
-/

namespace A104891.P8215434950885734145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  5 * (f1 (n - 1) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A104891.P8215434950885734145

namespace A104891

/-- `-Δ[5*(a(n-1)-(n-1))]` -/
def P8215434950885734145.Spec : Prop :=
  ∀ n, P8215434950885734145.a n = A104891 n

end A104891

/-! ## A104891.P16545726113641875341

`floor(6*a(n-1)-(a(n-1)-5))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A104891.P16545726113641875341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  6 * a (n - 1) - (a (n - 1) - 5)

end

end A104891.P16545726113641875341

namespace A104891

/-- `floor(6*a(n-1)-(a(n-1)-5))` -/
def P16545726113641875341.Spec : Prop :=
  ∀ n, P16545726113641875341.a n = A104891 n

end A104891

/-!
# A104892: Smallest number whose shortest Lucas chain is of length n.

The programs for A104892, there is no canonical definition to state claims against.
-/

/-! ## A104892.P3213393894151091633

`A068549(A368655(n+1))`
-/

namespace A104892.P3213393894151091633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068549 ((A368655 (n + 1)).toNat + 10)

end

end A104892.P3213393894151091633

/-! ## A104892.P4470724583081432500

`A290838(A319642(n)+n)`
-/

namespace A104892.P4470724583081432500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290838 (A319642 n + (n : ℤ)).toNat

end

end A104892.P4470724583081432500

/-! ## A104892.P5536719556605745260

`A259430(A269303(n+1)+A269303(n+3))`
-/

namespace A104892.P5536719556605745260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259430 (A269303 (n + 1) + A269303 (n + 3)).toNat

end

end A104892.P5536719556605745260

/-! ## A104892.P13429630545509756472

`A230775(A048693(n))`
-/

namespace A104892.P13429630545509756472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A048693 n).toNat

end

end A104892.P13429630545509756472

/-! ## A104892.P17978452410774065389

`A143664(A177485(n))`
-/

namespace A104892.P17978452410774065389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143664 (A177485 n).toNat

end

end A104892.P17978452410774065389

/-!
# A104893: Binary array, related to A103122, read by downward antidiagonals.

The programs for A104893, there is no canonical definition to state claims against.
-/

/-! ## A104893.P10821492217562838092

`A000035(A208673(n+2))*A104894(n)`
-/

namespace A104893.P10821492217562838092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A208673 (n + 2)).toNat * A104894 n

end

end A104893.P10821492217562838092

/-! ## A104893.P14983150887429840696

`A104894(n)*A296077(A198013(n+1))`
-/

namespace A104893.P14983150887429840696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104894 n * A296077 (A198013 (n + 1)).toNat

end

end A104893.P14983150887429840696

/-! ## A104893.P8906782341794487077

`and(A104894(n), A329109(n+1))`
-/

namespace A104893.P8906782341794487077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104894 n) (A329109 (n + 1))

end

end A104893.P8906782341794487077

/-! ## A104893.P5419943397982245912

`and(A104894(n), A153401(n+4))`
-/

namespace A104893.P5419943397982245912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104894 n) (A153401 (n + 4))

end

end A104893.P5419943397982245912

/-! ## A104893.P15145355000959024679

`A000035(gcd(A328599(n+1), A331781(n+2)))`
-/

namespace A104893.P15145355000959024679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (A328599 (n + 1)) (A331781 (n + 2)))

end

end A104893.P15145355000959024679

/-!
# A104894: Binary array, related to the Thue-Morse sequence A010060, read by downward antidiagonals.

The programs for A104894, the canonical program `A104894.P7075308143591686238` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104894 has offset 0).

The definition of A104894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104894.P7075308143591686238

`A010060((row(n)-col(n))%(2^(col(n)+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104894

/-- `A010060((row(n)-col(n))%(2^(col(n)+1)))` -/
def P7075308143591686238.Spec : Prop :=
  ∀ n, P7075308143591686238.a n = A104894 n

theorem P7075308143591686238.correct : P7075308143591686238.Spec := by
  intro n
  simp only [A104894]

end A104894

/-! ## A104894.P7304113542008487358

`1-A010060(A388855(n+1))`
-/

namespace A104894.P7304113542008487358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A388855 (n + 1)).toNat

end

end A104894.P7304113542008487358

namespace A104894

/-- `1-A010060(A388855(n+1))` -/
def P7304113542008487358.Spec : Prop :=
  ∀ n, P7304113542008487358.a n = A104894 n

end A104894

/-! ## A104894.P1865441392178653899

`A010060(xor(1, A388855(n+1)))`
-/

namespace A104894.P1865441392178653899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor 1 (A388855 (n + 1))).toNat

end

end A104894.P1865441392178653899

namespace A104894

/-- `A010060(xor(1, A388855(n+1)))` -/
def P1865441392178653899.Spec : Prop :=
  ∀ n, P1865441392178653899.a n = A104894 n

end A104894

/-! ## A104894.P722392146871378624

`A010059(A388855(n+1))`
-/

namespace A104894.P722392146871378624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A388855 (n + 1)).toNat

end

end A104894.P722392146871378624

namespace A104894

/-- `A010059(A388855(n+1))` -/
def P722392146871378624.Spec : Prop :=
  ∀ n, P722392146871378624.a n = A104894 n

end A104894

/-! ## A104894.P17156366905199132705

`and(A000034(2*(n+2)), A001285(A388855(n+1)))`
-/

namespace A104894.P17156366905199132705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (2 * (n + 2))) (A001285 (A388855 (n + 1)).toNat)

end

end A104894.P17156366905199132705

namespace A104894

/-- `and(A000034(2*(n+2)), A001285(A388855(n+1)))` -/
def P17156366905199132705.Spec : Prop :=
  ∀ n, P17156366905199132705.a n = A104894 n

end A104894

/-!
# A104895: a(0)=0; thereafter a(2n) = -2*a(n), a(2n+1) = 2*a(n) - 1.

The programs for A104895, the canonical program `A104895.P16075429497420938870` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104895 has offset 0).

The definition of A104895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104895.P16075429497420938870

`-A065620(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104895

/-- `-A065620(n)` -/
def P16075429497420938870.Spec : Prop :=
  ∀ n, P16075429497420938870.a n = A104895 n

theorem P16075429497420938870.correct : P16075429497420938870.Spec := by
  intro n
  simp only [A104895]

end A104895

/-! ## A104895.P17962197725966802140

`xor(2*a(and(n, n-1)), -n)` with `a(0)=0`
-/

namespace A104895.P17962197725966802140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (-(n : ℤ))

end

end A104895.P17962197725966802140

namespace A104895

/-- `xor(2*a(and(n, n-1)), -n)` -/
def P17962197725966802140.Spec : Prop :=
  ∀ n, P17962197725966802140.a n = A104895 n

end A104895

/-! ## A104895.P16274162936897894259

`xor(2*a(floor(n/2))+1-n%2, (-1)^n)` with `a(0)=0`
-/

namespace A104895.P16274162936897894259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (2 * a ⌊(n : ℚ) / 2⌋.toNat + 1 - ((n % 2 : ℕ) : ℤ)) ((-1) ^ n)

end

end A104895.P16274162936897894259

namespace A104895

/-- `xor(2*a(floor(n/2))+1-n%2, (-1)^n)` -/
def P16274162936897894259.Spec : Prop :=
  ∀ n, P16274162936897894259.a n = A104895 n

end A104895

/-! ## A104895.P16609032584702470682

`A065620(xor(1, n))-1`
-/

namespace A104895.P16609032584702470682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (Nat.xor 1 n) - 1

end

end A104895.P16609032584702470682

namespace A104895

/-- `A065620(xor(1, n))-1` -/
def P16609032584702470682.Spec : Prop :=
  ∀ n, P16609032584702470682.a n = A104895 n

end A104895

/-! ## A104895.P4767534439817994807

`floor(A065620(2*n+1)/2)`
-/

namespace A104895.P4767534439817994807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065620 (2 * n + 1) : ℚ) / 2⌋

end

end A104895.P4767534439817994807

namespace A104895

/-- `floor(A065620(2*n+1)/2)` -/
def P4767534439817994807.Spec : Prop :=
  ∀ n, P4767534439817994807.a n = A104895 n

end A104895

/-! ## A104895.P12048893683978829349

`A246159(n)-A246160(n)`
-/

namespace A104895.P12048893683978829349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 n - A246160 n

end

end A104895.P12048893683978829349

namespace A104895

/-- `A246159(n)-A246160(n)` -/
def P12048893683978829349.Spec : Prop :=
  ∀ n, P12048893683978829349.a n = A104895 n

theorem P12048893683978829349.correct : P12048893683978829349.Spec := by
  intro n
  simp only [A104895, Nat.add_sub_cancel, A104895.P12048893683978829349.a, A104895.P16075429497420938870.a, A065620, A065620.P132964274324401119.a, A246159, A246159.P1140588628071788846.a, A246160, A246160.P12838974675095138970.a, A006068, A006068.P433290056721054414.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A245710, A245710.P15631509805562168488.a, A265263, A265263.P13560857298709796040.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P15313669370463354763.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A104895

/-! ## A104895.P7971029097051210997

`A057428(n)*A065620(n)`
-/

namespace A104895.P7971029097051210997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A065620 n

end

end A104895.P7971029097051210997

namespace A104895

/-- `A057428(n)*A065620(n)` -/
def P7971029097051210997.Spec : Prop :=
  ∀ n, P7971029097051210997.a n = A104895 n

end A104895

/-! ## A104895.P1882605751700505860

`A065620(n)*A153881(n+1)`
-/

namespace A104895.P1882605751700505860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n * A153881 (n + 1)

end

end A104895.P1882605751700505860

namespace A104895

/-- `A065620(n)*A153881(n+1)` -/
def P1882605751700505860.Spec : Prop :=
  ∀ n, P1882605751700505860.a n = A104895 n

end A104895

/-! ## A104895.P1877544858336101552

`A065620(n)-A065620(2*n)`
-/

namespace A104895.P1877544858336101552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n - A065620 (2 * n)

end

end A104895.P1877544858336101552

namespace A104895

/-- `A065620(n)-A065620(2*n)` -/
def P1877544858336101552.Spec : Prop :=
  ∀ n, P1877544858336101552.a n = A104895 n

end A104895

/-! ## A104895.P2478676787934397176

`Δ[A065620(n)]-A065620(n+1)`
-/

namespace A104895.P2478676787934397176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A065620 (n + 1)

end

end A104895.P2478676787934397176

namespace A104895

/-- `Δ[A065620(n)]-A065620(n+1)` -/
def P2478676787934397176.Spec : Prop :=
  ∀ n, P2478676787934397176.a n = A104895 n

theorem P2478676787934397176.correct : P2478676787934397176.Spec := by
  intro n
  simp only [A104895, Nat.add_sub_cancel, A104895.P2478676787934397176.f1, A104895.P2478676787934397176.a, A104895.P16075429497420938870.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A104895

/-! ## A104895.P13991815573619378722

`A065620(n)/A057428(n+1)`
-/

namespace A104895.P13991815573619378722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065620 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A104895.P13991815573619378722

namespace A104895

/-- `A065620(n)/A057428(n+1)` -/
def P13991815573619378722.Spec : Prop :=
  ∀ n, P13991815573619378722.a n = (A104895 n : ℚ)

end A104895

/-! ## A104895.P10484418793905674006

`n-2*A341691(n)`
-/

namespace A104895.P10484418793905674006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A341691 n

end

end A104895.P10484418793905674006

namespace A104895

/-- `n-2*A341691(n)` -/
def P10484418793905674006.Spec : Prop :=
  ∀ n, P10484418793905674006.a n = A104895 n

end A104895

/-! ## A104895.P6765583983064517370

`A130472(A006068(n))`
-/

namespace A104895.P6765583983064517370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A006068 n).toNat

end

end A104895.P6765583983064517370

namespace A104895

/-- `A130472(A006068(n))` -/
def P6765583983064517370.Spec : Prop :=
  ∀ n, P6765583983064517370.a n = A104895 n

end A104895

/-! ## A104895.P11360800136938224686

`A042948(n-A341691(n))-n`
-/

namespace A104895.P11360800136938224686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 ((n : ℤ) - A341691 n).toNat - (n : ℤ)

end

end A104895.P11360800136938224686

namespace A104895

/-- `A042948(n-A341691(n))-n` -/
def P11360800136938224686.Spec : Prop :=
  ∀ n, P11360800136938224686.a n = A104895 n

end A104895

/-! ## A104895.P7918883810953542090

`A010060(A048724(n))-A065620(n)`
-/

namespace A104895.P7918883810953542090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A048724 n).toNat - A065620 n

end

end A104895.P7918883810953542090

namespace A104895

/-- `A010060(A048724(n))-A065620(n)` -/
def P7918883810953542090.Spec : Prop :=
  ∀ n, P7918883810953542090.a n = A104895 n

end A104895

/-! ## A104895.P13575545370395707329

`A065620(xor(A065620(2*n), A065620(n)))`
-/

namespace A104895.P13575545370395707329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (Int.xor (A065620 (2 * n)) (A065620 n)).toNat

end

end A104895.P13575545370395707329

namespace A104895

/-- `A065620(xor(A065620(2*n), A065620(n)))` -/
def P13575545370395707329.Spec : Prop :=
  ∀ n, P13575545370395707329.a n = A104895 n

end A104895

/-! ## A104895.P8170746588495709795

`1-(A065620(n)+A010060(A000069(n+1)))`
-/

namespace A104895.P8170746588495709795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A065620 n + A010060 (A000069 (n + 1)).toNat)

end

end A104895.P8170746588495709795

namespace A104895

/-- `1-(A065620(n)+A010060(A000069(n+1)))` -/
def P8170746588495709795.Spec : Prop :=
  ∀ n, P8170746588495709795.a n = A104895 n

end A104895

/-! ## A104895.P13097426160217215278

`A065620(n)/(n-A065620(A065621(n+1)))`
-/

namespace A104895.P13097426160217215278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065620 n : ℚ) / ((n : ℤ) - A065620 (A065621 (n + 1)).toNat : ℚ)

end

end A104895.P13097426160217215278

namespace A104895

/-- `A065620(n)/(n-A065620(A065621(n+1)))` -/
def P13097426160217215278.Spec : Prop :=
  ∀ n, P13097426160217215278.a n = (A104895 n : ℚ)

end A104895

/-! ## A104895.P5355667718739417289

`A065620(n)/(n-A054429(A054429(n+1)))`
-/

namespace A104895.P5355667718739417289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065620 n : ℚ) / ((n : ℤ) - A054429 (A054429 (n + 1)).toNat : ℚ)

end

end A104895.P5355667718739417289

namespace A104895

/-- `A065620(n)/(n-A054429(A054429(n+1)))` -/
def P5355667718739417289.Spec : Prop :=
  ∀ n, P5355667718739417289.a n = (A104895 n : ℚ)

end A104895

/-! ## A104895.P14737459934799511622

`A323908(A083866(n))-A065620(n)`
-/

namespace A104895.P14737459934799511622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323908 (A083866 n).toNat - A065620 n

end

end A104895.P14737459934799511622

namespace A104895

/-- `A323908(A083866(n))-A065620(n)` -/
def P14737459934799511622.Spec : Prop :=
  ∀ n, P14737459934799511622.a n = A104895 n

end A104895

/-!
# A104896: a(0) = 0; a(n) = 7*a(n-1) + 7.

The programs for A104896, the canonical program `A104896.P4766500431864048289` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104896 has offset 0).

The definition of A104896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+7` (program `A104896.P4766500431864048289`, by `A104896.P4766500431864048289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104896.P9744855178541641577

`ogf(7x/(1-8x+7x^2))`
-/

namespace A104896.P9744855178541641577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -8, 7] n

end

end A104896.P9744855178541641577

namespace A104896

/-- `ogf(7x/(1-8x+7x^2))` -/
def P9744855178541641577.Spec : Prop :=
  ∀ n, P9744855178541641577.a n = A104896 n

end A104896

/-! ## A104896.P7876033092419787410

`7/6*(7^n-1)`
-/

namespace A104896.P7876033092419787410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 6 * ((7 ^ n : ℤ) - 1 : ℚ)

end

end A104896.P7876033092419787410

namespace A104896

/-- `7/6*(7^n-1)` -/
def P7876033092419787410.Spec : Prop :=
  ∀ n, P7876033092419787410.a n = (A104896 n : ℚ)

theorem P7876033092419787410.correct : P7876033092419787410.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A104896, Nat.add_sub_cancel, A104896.P7876033092419787410.a, A104896.P4766500431864048289.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A104896, Nat.add_sub_cancel, A104896.P7876033092419787410.a, A104896.P4766500431864048289.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A104896

/-! ## A104896.P4766500431864048289

`7*a(n-1)+7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A104896

/-- `7*a(n-1)+7` -/
def P4766500431864048289.Spec : Prop :=
  ∀ n, (P4766500431864048289.a n : ℤ) = A104896 n

theorem P4766500431864048289.correct : P4766500431864048289.Spec := by
  intro n
  simp only [A104896]

end A104896

/-! ## A104896.P1793728168717068548

`a(n-1)+7^n` with `a(0)=0`
-/

namespace A104896.P1793728168717068548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 7 ^ n

end

end A104896.P1793728168717068548

namespace A104896

/-- `a(n-1)+7^n` -/
def P1793728168717068548.Spec : Prop :=
  ∀ n, (P1793728168717068548.a n : ℤ) = A104896 n

end A104896

/-! ## A104896.P12594330888979352361

`lcm(7, floor(7^n/6))`
-/

namespace A104896.P12594330888979352361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 ⌊(7 ^ n : ℚ) / 6⌋

end

end A104896.P12594330888979352361

namespace A104896

/-- `lcm(7, floor(7^n/6))` -/
def P12594330888979352361.Spec : Prop :=
  ∀ n, (P12594330888979352361.a n : ℤ) = A104896 n

end A104896

/-! ## A104896.P17055071640595523083

`∑[xor(7^n, floor(acot(n)))]`
-/

namespace A104896.P17055071640595523083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (7 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104896.P17055071640595523083

namespace A104896

/-- `∑[xor(7^n, floor(acot(n)))]` -/
def P17055071640595523083.Spec : Prop :=
  ∀ n, P17055071640595523083.a n = A104896 n

end A104896

/-! ## A104896.P16513161184449123992

`∑[7*a(n-1)]` with `a(0)=0, a(1)=7`
-/

namespace A104896.P16513161184449123992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104896.P16513161184449123992

namespace A104896

/-- `∑[7*a(n-1)]` -/
def P16513161184449123992.Spec : Prop :=
  ∀ n, (P16513161184449123992.a n : ℤ) = A104896 n

end A104896

/-! ## A104896.P14264867269922722438

`7^n+a(n-1)` with `a(0)=0`
-/

namespace A104896.P14264867269922722438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  7 ^ n + a (n - 1)

end

end A104896.P14264867269922722438

namespace A104896

/-- `7^n+a(n-1)` -/
def P14264867269922722438.Spec : Prop :=
  ∀ n, (P14264867269922722438.a n : ℤ) = A104896 n

end A104896

/-! ## A104896.P5007435852895430871

`∑[(7^n)%∑[7^n]]`
-/

namespace A104896.P5007435852895430871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104896.P5007435852895430871

namespace A104896

/-- `∑[(7^n)%∑[7^n]]` -/
def P5007435852895430871.Spec : Prop :=
  ∀ n, (P5007435852895430871.a n : ℤ) = A104896 n

end A104896

/-! ## A104896.P15297544948338304998

`∑[a(gcd(n, n+1))^n]` with `a(0)=0, a(1)=7`
-/

namespace A104896.P15297544948338304998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (Nat.gcd n (n + 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104896.P15297544948338304998

namespace A104896

/-- `∑[a(gcd(n, n+1))^n]` -/
def P15297544948338304998.Spec : Prop :=
  ∀ n, (P15297544948338304998.a n : ℤ) = A104896 n

end A104896

/-! ## A104896.P7198441796494534626

`floor(8*a(n-1)-(a(n-1)-7))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A104896.P7198441796494534626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  8 * a (n - 1) - (a (n - 1) - 7)

end

end A104896.P7198441796494534626

namespace A104896

/-- `floor(8*a(n-1)-(a(n-1)-7))` -/
def P7198441796494534626.Spec : Prop :=
  ∀ n, P7198441796494534626.a n = A104896 n

end A104896

/-! ## A104896.P17259769565436634

`∑[A103458(n)-1]`
-/

namespace A104896.P17259769565436634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103458 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104896.P17259769565436634

namespace A104896

/-- `∑[A103458(n)-1]` -/
def P17259769565436634.Spec : Prop :=
  ∀ n, P17259769565436634.a n = A104896 n

end A104896

/-! ## A104896.P5094492282790047529

`A023000(n+1)-1`
-/

namespace A104896.P5094492282790047529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (n + 1) - 1

end

end A104896.P5094492282790047529

namespace A104896

/-- `A023000(n+1)-1` -/
def P5094492282790047529.Spec : Prop :=
  ∀ n, P5094492282790047529.a n = A104896 n

end A104896

/-! ## A104896.P5084347696901728344

`A047852(n+1)-2`
-/

namespace A104896.P5084347696901728344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 (n + 1) - 2

end

end A104896.P5084347696901728344

namespace A104896

/-- `A047852(n+1)-2` -/
def P5084347696901728344.Spec : Prop :=
  ∀ n, P5084347696901728344.a n = A104896 n

end A104896

/-! ## A104896.P6490283336619773338

`floor(A233326(n)/2)`
-/

namespace A104896.P6490283336619773338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233326 n : ℚ) / 2⌋

end

end A104896.P6490283336619773338

namespace A104896

/-- `floor(A233326(n)/2)` -/
def P6490283336619773338.Spec : Prop :=
  ∀ n, P6490283336619773338.a n = A104896 n

end A104896

/-! ## A104896.P2359375056135904526

`A168572(n+1)/7`
-/

namespace A104896.P2359375056135904526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168572 (n + 1) : ℚ) / 7

end

end A104896.P2359375056135904526

namespace A104896

/-- `A168572(n+1)/7` -/
def P2359375056135904526.Spec : Prop :=
  ∀ n, P2359375056135904526.a n = (A104896 n : ℚ)

end A104896

/-!
# A104897: Difference between (n+prime(n)) and next prime.

The programs for A104897, the canonical program `A104897.P16686351449696100309` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104897 has offset 1).

The definition of A104897 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104860, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104897.P16686351449696100309

`A104860(n+1)-A014688(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104897

/-- `A104860(n+1)-A014688(n+1)` -/
def P16686351449696100309.Spec : Prop :=
  ∀ n, P16686351449696100309.a n = A104897 (n + 1)

theorem P16686351449696100309.correct : P16686351449696100309.Spec := by
  intro n
  simp only [A104897, Nat.add_sub_cancel]

end A104897

/-! ## A104897.P9500702051192734548

`A013632(p?[ceil(2/acot(n))]+n+1)`
-/

namespace A104897.P9500702051192734548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)).toNat

end

end A104897.P9500702051192734548

namespace A104897

/-- `A013632(p?[ceil(2/acot(n))]+n+1)` -/
def P9500702051192734548.Spec : Prop :=
  ∀ n, P9500702051192734548.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P13083376939736313426

`A013632(p?[round(8*n/7)]+1+n)`
-/

namespace A104897.P13083376939736313426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)).toNat

end

end A104897.P13083376939736313426

namespace A104897

/-- `A013632(p?[round(8*n/7)]+1+n)` -/
def P13083376939736313426.Spec : Prop :=
  ∀ n, P13083376939736313426.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P14759426592703731033

`A007920(p?[xor(1, n)+1]+Δ[n²]-n+1)+1`
-/

namespace A104897.P14759426592703731033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)) + 1).toNat + 1

end

end A104897.P14759426592703731033

namespace A104897

/-- `A007920(p?[xor(1, n)+1]+Δ[n²]-n+1)+1` -/
def P14759426592703731033.Spec : Prop :=
  ∀ n, P14759426592703731033.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P11999434407595705301

`A013632(A014688(n+1))`
-/

namespace A104897.P11999434407595705301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A014688 (n + 1)).toNat

end

end A104897.P11999434407595705301

namespace A104897

/-- `A013632(A014688(n+1))` -/
def P11999434407595705301.Spec : Prop :=
  ∀ n, P11999434407595705301.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P375523800713098610

`A013632(A167136(n+2))`
-/

namespace A104897.P375523800713098610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A167136 (n + 2)).toNat

end

end A104897.P375523800713098610

namespace A104897

/-- `A013632(A167136(n+2))` -/
def P375523800713098610.Spec : Prop :=
  ∀ n, P375523800713098610.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P4519715917115523414

`A013632(∑[A230847(n+1)])`
-/

namespace A104897.P4519715917115523414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104897.P4519715917115523414

namespace A104897

/-- `A013632(∑[A230847(n+1)])` -/
def P4519715917115523414.Spec : Prop :=
  ∀ n, P4519715917115523414.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P7797741518586975110

`A013632(A008864(n+1)+n)`
-/

namespace A104897.P7797741518586975110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A008864 (n + 1) + (n : ℤ)).toNat

end

end A104897.P7797741518586975110

namespace A104897

/-- `A013632(A008864(n+1)+n)` -/
def P7797741518586975110.Spec : Prop :=
  ∀ n, P7797741518586975110.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P2128937809401204372

`A013632(A000040(n+1)+1+n)`
-/

namespace A104897.P2128937809401204372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000040 (n + 1) + 1 + (n : ℤ)).toNat

end

end A104897.P2128937809401204372

namespace A104897

/-- `A013632(A000040(n+1)+1+n)` -/
def P2128937809401204372.Spec : Prop :=
  ∀ n, P2128937809401204372.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P7694286425284148991

`A013632(A006093(n+1)+2+n)`
-/

namespace A104897.P7694286425284148991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A006093 (n + 1) + 2 + (n : ℤ)).toNat

end

end A104897.P7694286425284148991

namespace A104897

/-- `A013632(A006093(n+1)+2+n)` -/
def P7694286425284148991.Spec : Prop :=
  ∀ n, P7694286425284148991.a n = A104897 (n + 1)

end A104897

/-! ## A104897.P15784545482832869019

`A013632(record[A000010(n+1)]+2+n)`
-/

namespace A104897.P15784545482832869019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 + (n : ℤ)).toNat

end

end A104897.P15784545482832869019

namespace A104897

/-- `A013632(record[A000010(n+1)]+2+n)` -/
def P15784545482832869019.Spec : Prop :=
  ∀ n, P15784545482832869019.a n = A104897 (n + 1)

end A104897

/-!
# A104898: Numbers n such that phi(n)=phi(d_1)^phi(d_1)*phi(d_2)^phi(d_2)* ...*phi(d_k)^phi(d_k) where d_1 d_2 ... d_k is the decimal expansion of n.

The programs for A104898, there is no canonical definition to state claims against.
-/

/-! ## A104898.P2575258784953962457

`A254218(A348407(n+1))+A012393(n)`
-/

namespace A104898.P2575258784953962457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (A348407 (n + 1)).toNat + A012393 n

end

end A104898.P2575258784953962457

/-!
# A104899: Numbers n such that sum of the proper divisors of n is equal to sigma(phi(n)).

The programs for A104899, there is no canonical definition to state claims against.
-/

/-! ## A104899.P4236807909249108435

`A233569(A202274(n+2))`
-/

namespace A104899.P4236807909249108435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A202274 (n + 2)).toNat

end

end A104899.P4236807909249108435

/-! ## A104899.P9296717662158098785

`record[A162794(A326673(n+1))]`
-/

namespace A104899.P9296717662158098785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162794 (A326673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104899.P9296717662158098785

/-! ## A104899.P10348979864973059640

`2*A154439(A273109(n+1))`
-/

namespace A104899.P10348979864973059640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154439 (A273109 (n + 1)).toNat

end

end A104899.P10348979864973059640

/-! ## A104899.P12544729912955865185

`A349137(A270836(n+5)-3)`
-/

namespace A104899.P12544729912955865185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A270836 (n + 5) - 3).toNat

end

end A104899.P12544729912955865185

/-! ## A104899.P2675833435231891120

`eq[A202394(n), A341273(n)]`
-/

namespace A104899.P2675833435231891120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104899.P2675833435231891120

