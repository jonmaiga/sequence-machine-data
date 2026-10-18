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
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A221900: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221900, there is no canonical definition to state claims against.
-/

/-! ## A221900.P17882192478542394856

`A221898(∑[n+2]+4)`
-/

namespace A221900.P17882192478542394856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221900.P17882192478542394856

/-! ## A221900.P7950862029541495199

`and(-1, A221898(A167614(n+1)))`
-/

namespace A221900.P7950862029541495199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221898 (A167614 (n + 1)).toNat)

end

end A221900.P7950862029541495199

/-! ## A221900.P3890532123762584394

`A221898(A167614(n+1))+A014083(n)`
-/

namespace A221900.P3890532123762584394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (A167614 (n + 1)).toNat + A014083 n

end

end A221900.P3890532123762584394

/-! ## A221900.P4097645318697391852

`A221898(A167614(n+1))+A025438(n)`
-/

namespace A221900.P4097645318697391852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (A167614 (n + 1)).toNat + A025438 n

end

end A221900.P4097645318697391852

/-!
# A221901: Number of 4 X n arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221901, there is no canonical definition to state claims against.
-/

/-! ## A221901.P11702341366037206085

`A221898(A141214(n)+7)`
-/

namespace A221901.P11702341366037206085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (A141214 n + 7).toNat

end

end A221901.P11702341366037206085

/-! ## A221901.P6988769040416721914

`A221898(A052905(n)+9)`
-/

namespace A221901.P6988769040416721914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (A052905 n + 9).toNat

end

end A221901.P6988769040416721914

/-! ## A221901.P11563909125537025797

`A221898(A055999(n)+10)`
-/

namespace A221901.P11563909125537025797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (A055999 n + 10).toNat

end

end A221901.P11563909125537025797

/-!
# A221902: Primes of the form 2*n^2 + 10*n + 3.

The programs for A221902, there is no canonical definition to state claims against.
-/

/-! ## A221902.P293413534663100586

`∩[A142110(n+1), A152813(n)]`
-/

namespace A221902.P293413534663100586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221902.P293413534663100586

/-! ## A221902.P959631342734483481

`p?[36*C(n, 2)-5]`
-/

namespace A221902.P959631342734483481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (36 * Nat.choose n 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221902.P959631342734483481

/-! ## A221902.P7183713243341278890

`p?[18*(n²+n)-5]`
-/

namespace A221902.P7183713243341278890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * (n ^ 2 + n) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221902.P7183713243341278890

/-! ## A221902.P12562484479140092069

`or(1, p?[A152813(n+1)])`
-/

namespace A221902.P12562484479140092069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A221902.P12562484479140092069

/-! ## A221902.P6146443253155843069

`∑{p}[p?[A152813(3*n+2)], #]`
-/

namespace A221902.P6146443253155843069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A221902.P6146443253155843069

/-! ## A221902.P5829675467804113627

`record[p?[A152813(A324347(n))]]`
-/

namespace A221902.P5829675467804113627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221902.P5829675467804113627

/-! ## A221902.P9985643591004046705

`record[p?[A152813(A324533(n))]]`
-/

namespace A221902.P9985643591004046705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (A324533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221902.P9985643591004046705

/-! ## A221902.P9276347749209365906

`record[p?[A152813(A328399(n))]]`
-/

namespace A221902.P9276347749209365906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221902.P9276347749209365906

/-! ## A221902.P331750799158292806

`record[p?[A152813(A026233(n+1))]]`
-/

namespace A221902.P331750799158292806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (A026233 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221902.P331750799158292806

/-! ## A221902.P2816279263519044071

`p?[A152813(n+1)]%A017211(n)`
-/

namespace A221902.P2816279263519044071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017211 n)

end

end A221902.P2816279263519044071

/-!
# A221903: Primes of the form 2*n^2 + 42*n + 19.

The programs for A221903, there is no canonical definition to state claims against.
-/

/-! ## A221903.P9409440316084152107

`p?[6*((n+1)*A008486(n+8)+3)+1]`
-/

namespace A221903.P9409440316084152107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n + 1 : ℤ) * A008486 (n + 8) + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221903.P9409440316084152107

/-! ## A221903.P8221973009365209198

`p?[A195321(n)+A157952(n+1)]`
-/

namespace A221903.P8221973009365209198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n + A157952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221903.P8221973009365209198

/-! ## A221903.P9819629983082712395

`p?[A304205(n+3)+A084849(n)]`
-/

namespace A221903.P9819629983082712395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 3) + A084849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221903.P9819629983082712395

/-! ## A221903.P359740858835210222

`p?[A142241(2*(n+2))+A001844(n)]`
-/

namespace A221903.P359740858835210222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 (2 * (n + 2)) + A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221903.P359740858835210222

/-! ## A221903.P13350801340126821128

`p?[A017473(2*n+3)+A000982(n)]`
-/

namespace A221903.P13350801340126821128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (2 * n + 3) + A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221903.P13350801340126821128

/-! ## A221903.P151442560768788122

`p?[A169600(n+2)+A000217(n+6)]`
-/

namespace A221903.P151442560768788122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (n + 2) + A000217 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221903.P151442560768788122

/-! ## A221903.P1685019745086676599

`p?[A159754(2*n+5)+A005893(n)]`
-/

namespace A221903.P1685019745086676599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (2 * n + 5) + A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221903.P1685019745086676599

/-!
# A221904: a(n) = 9^n + 10^n.

The programs for A221904, the canonical program `A221904.P15507213717070487276` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221904 has offset 0).

The definition of A221904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+10^n` (program `A221904.P15507213717070487276`, by `A221904.P15507213717070487276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221904.P15507213717070487276

`9^n+10^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221904

/-- `9^n+10^n` -/
def P15507213717070487276.Spec : Prop :=
  ∀ n, (P15507213717070487276.a n : ℤ) = A221904 n

theorem P15507213717070487276.correct : P15507213717070487276.Spec := by
  intro n
  simp only [A221904]

end A221904

/-! ## A221904.P13407668939385905112

`abs(A001555(n)-A001557(n))`
-/

namespace A221904.P13407668939385905112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001555 n - A001557 n|

end

end A221904.P13407668939385905112

namespace A221904

/-- `abs(A001555(n)-A001557(n))` -/
def P13407668939385905112.Spec : Prop :=
  ∀ n, P13407668939385905112.a n = A221904 n

end A221904

/-! ## A221904.P216180519530866705

`Δ[A002452(n)+A002275(n)]`
-/

namespace A221904.P216180519530866705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221904.P216180519530866705

namespace A221904

/-- `Δ[A002452(n)+A002275(n)]` -/
def P216180519530866705.Spec : Prop :=
  ∀ n, P216180519530866705.a n = A221904 n

end A221904

/-! ## A221904.P7557685698573571002

`Δ[A047854(n)+A002275(n)]`
-/

namespace A221904.P7557685698573571002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 n + A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221904.P7557685698573571002

namespace A221904

/-- `Δ[A047854(n)+A002275(n)]` -/
def P7557685698573571002.Spec : Prop :=
  ∀ n, P7557685698573571002.a n = A221904 n

end A221904

/-! ## A221904.P13385899510549629739

`Δ[A047855(n)+A002452(n)]`
-/

namespace A221904.P13385899510549629739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221904.P13385899510549629739

namespace A221904

/-- `Δ[A047855(n)+A002452(n)]` -/
def P13385899510549629739.Spec : Prop :=
  ∀ n, P13385899510549629739.a n = A221904 n

end A221904

/-! ## A221904.P10772549461892019350

`Δ[A047855(n)+A047854(n)]`
-/

namespace A221904.P10772549461892019350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A047854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221904.P10772549461892019350

namespace A221904

/-- `Δ[A047855(n)+A047854(n)]` -/
def P10772549461892019350.Spec : Prop :=
  ∀ n, P10772549461892019350.a n = A221904 n

end A221904

/-! ## A221904.P2911061501282012588

`Δ[A098406(n)+A002452(n)]`
-/

namespace A221904.P2911061501282012588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221904.P2911061501282012588

namespace A221904

/-- `Δ[A098406(n)+A002452(n)]` -/
def P2911061501282012588.Spec : Prop :=
  ∀ n, P2911061501282012588.a n = A221904 n

end A221904

/-! ## A221904.P9211984888105944733

`abs(A001019(n)+Δ[A002275(n)])`
-/

namespace A221904.P9211984888105944733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n + (f1 (n + 1) - f1 n)|

end

end A221904.P9211984888105944733

namespace A221904

/-- `abs(A001019(n)+Δ[A002275(n)])` -/
def P9211984888105944733.Spec : Prop :=
  ∀ n, P9211984888105944733.a n = A221904 n

end A221904

/-! ## A221904.P16353648603507500385

`Δ[A099583(2*n)+A002275(n)]`
-/

namespace A221904.P16353648603507500385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099583 (2 * n) + A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221904.P16353648603507500385

namespace A221904

/-- `Δ[A099583(2*n)+A002275(n)]` -/
def P16353648603507500385.Spec : Prop :=
  ∀ n, P16353648603507500385.a n = A221904 n

end A221904

/-! ## A221904.P3928919950279910629

`-or(A001555(n)-A001557(n), A190311(n))`
-/

namespace A221904.P3928919950279910629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A001555 n - A001557 n) (A190311 n)

end

end A221904.P3928919950279910629

namespace A221904

/-- `-or(A001555(n)-A001557(n), A190311(n))` -/
def P3928919950279910629.Spec : Prop :=
  ∀ n, P3928919950279910629.a n = A221904 n

end A221904

/-! ## A221904.P3244416303230869209

`-or(A001555(n)-A001557(n), A230403(n+1))`
-/

namespace A221904.P3244416303230869209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A001555 n - A001557 n) (A230403 (n + 1))

end

end A221904.P3244416303230869209

namespace A221904

/-- `-or(A001555(n)-A001557(n), A230403(n+1))` -/
def P3244416303230869209.Spec : Prop :=
  ∀ n, P3244416303230869209.a n = A221904 n

end A221904

/-!
# A221905: a(n) = 3^n + 3*n.

The programs for A221905, the canonical program `A221905.P3969717268633884912` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221905 has offset 0).

The definition of A221905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+3*n` (program `A221905.P3969717268633884912`, by `A221905.P3969717268633884912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221905.P3969717268633884912

`3^n+3*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221905

/-- `3^n+3*n` -/
def P3969717268633884912.Spec : Prop :=
  ∀ n, (P3969717268633884912.a n : ℤ) = A221905 n

theorem P3969717268633884912.correct : P3969717268633884912.Spec := by
  intro n
  simp only [A221905]

end A221905

/-! ## A221905.P14400594383551904588

`∑[ogf((1+x-8x^2)/(1-4x+3x^2))]`
-/

namespace A221905.P14400594383551904588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -8] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221905.P14400594383551904588

namespace A221905

/-- `∑[ogf((1+x-8x^2)/(1-4x+3x^2))]` -/
def P14400594383551904588.Spec : Prop :=
  ∀ n, P14400594383551904588.a n = A221905 n

end A221905

/-! ## A221905.P7322315365159743990

`ogf((1+x-8x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A221905.P7322315365159743990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -8] [1, -5, 7, -3] n

end

end A221905.P7322315365159743990

namespace A221905

/-- `ogf((1+x-8x^2)/(1-5x+7x^2-3x^3))` -/
def P7322315365159743990.Spec : Prop :=
  ∀ n, P7322315365159743990.a n = A221905 n

end A221905

/-! ## A221905.P5376051829787212135

`∑[3*(a(n-1)-2)]` with `a(0)=1, a(1)=5`
-/

namespace A221905.P5376051829787212135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 * (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221905.P5376051829787212135

namespace A221905

/-- `∑[3*(a(n-1)-2)]` -/
def P5376051829787212135.Spec : Prop :=
  ∀ n, P5376051829787212135.a n = A221905 n

end A221905

/-! ## A221905.P2582518979015662964

`3*(a(n-1)-2*n+3)` with `a(0)=1`
-/

namespace A221905.P2582518979015662964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) - (2 * n : ℤ) + 3)

end

end A221905.P2582518979015662964

namespace A221905

/-- `3*(a(n-1)-2*n+3)` -/
def P2582518979015662964.Spec : Prop :=
  ∀ n, P2582518979015662964.a n = A221905 n

theorem P2582518979015662964.correct : P2582518979015662964.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221905, Nat.add_sub_cancel, A221905.P2582518979015662964.a, A221905.P3969717268633884912.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221905, Nat.add_sub_cancel, A221905.P2582518979015662964.a, A221905.P3969717268633884912.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A221905

/-! ## A221905.P17822985310571688294

`3*(3-(2*n-a(n-1)))` with `a(0)=1`
-/

namespace A221905.P17822985310571688294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (3 - ((2 * n : ℤ) - a (n - 1)))

end

end A221905.P17822985310571688294

namespace A221905

/-- `3*(3-(2*n-a(n-1)))` -/
def P17822985310571688294.Spec : Prop :=
  ∀ n, P17822985310571688294.a n = A221905 n

theorem P17822985310571688294.correct : P17822985310571688294.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221905, Nat.add_sub_cancel, A221905.P17822985310571688294.a, A221905.P3969717268633884912.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221905, Nat.add_sub_cancel, A221905.P17822985310571688294.a, A221905.P3969717268633884912.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A221905

/-! ## A221905.P11159324571033427612

`∑[A384853(n+1)]`
-/

namespace A221905.P11159324571033427612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221905.P11159324571033427612

namespace A221905

/-- `∑[A384853(n+1)]` -/
def P11159324571033427612.Spec : Prop :=
  ∀ n, P11159324571033427612.a n = A221905 n

end A221905

/-! ## A221905.P17260204097730239544

`∑[Δ[A155734(n)]+3]`
-/

namespace A221905.P17260204097730239544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221905.P17260204097730239544

namespace A221905

/-- `∑[Δ[A155734(n)]+3]` -/
def P17260204097730239544.Spec : Prop :=
  ∀ n, P17260204097730239544.a n = A221905 n

end A221905

/-! ## A221905.P10256965954576189169

`Δ[A028493(n)+(n+2)²]`
-/

namespace A221905.P10256965954576189169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028493 n + ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221905.P10256965954576189169

namespace A221905

/-- `Δ[A028493(n)+(n+2)²]` -/
def P10256965954576189169.Spec : Prop :=
  ∀ n, P10256965954576189169.a n = A221905 n

end A221905

/-! ## A221905.P10606524271255916000

`abs(A000244(n)+4*n-n)`
-/

namespace A221905.P10606524271255916000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n + (4 * n : ℤ) - (n : ℤ)|

end

end A221905.P10606524271255916000

namespace A221905

/-- `abs(A000244(n)+4*n-n)` -/
def P10606524271255916000.Spec : Prop :=
  ∀ n, P10606524271255916000.a n = A221905 n

end A221905

/-! ## A221905.P10008446545491242014

`abs(A024024(n)+5*n-n)`
-/

namespace A221905.P10008446545491242014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024024 n + (5 * n : ℤ) - (n : ℤ)|

end

end A221905.P10008446545491242014

namespace A221905

/-- `abs(A024024(n)+5*n-n)` -/
def P10008446545491242014.Spec : Prop :=
  ∀ n, P10008446545491242014.a n = A221905 n

end A221905

/-! ## A221905.P16450432747734486276

`abs(n-(A024023(n)+1)-4*n)`
-/

namespace A221905.P16450432747734486276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A024023 n + 1) - (4 * n : ℤ)|

end

end A221905.P16450432747734486276

namespace A221905

/-- `abs(n-(A024023(n)+1)-4*n)` -/
def P16450432747734486276.Spec : Prop :=
  ∀ n, P16450432747734486276.a n = A221905 n

end A221905

/-! ## A221905.P12969747468334037755

`(A225367(2*(n+1))+6*n)/2`
-/

namespace A221905.P12969747468334037755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225367 (2 * (n + 1)) + (6 * n : ℤ) : ℚ) / 2

end

end A221905.P12969747468334037755

namespace A221905

/-- `(A225367(2*(n+1))+6*n)/2` -/
def P12969747468334037755.Spec : Prop :=
  ∀ n, P12969747468334037755.a n = (A221905 n : ℚ)

end A221905

/-! ## A221905.P14607105449037488773

`A290720(n)%A074605(n)`
-/

namespace A221905.P14607105449037488773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290720 n) (A074605 n)

end

end A221905.P14607105449037488773

namespace A221905

/-- `A290720(n)%A074605(n)` -/
def P14607105449037488773.Spec : Prop :=
  ∀ n, P14607105449037488773.a n = A221905 n

end A221905

/-! ## A221905.P7913800869527031993

`ceil(sqrt(A001019(n))+3*n)`
-/

namespace A221905.P7913800869527031993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001019 n : ℝ) + (3 * n : ℝ)⌉

end

end A221905.P7913800869527031993

namespace A221905

/-- `ceil(sqrt(A001019(n))+3*n)` -/
def P7913800869527031993.Spec : Prop :=
  ∀ n, P7913800869527031993.a n = A221905 n

end A221905

/-!
# A221906: a(n) = 4^n + 4*n.

The programs for A221906, the canonical program `A221906.P6685185451126554713` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221906 has offset 0).

The definition of A221906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+4*n` (program `A221906.P6685185451126554713`, by `A221906.P6685185451126554713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221906.P6685185451126554713

`4^n+4*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221906

/-- `4^n+4*n` -/
def P6685185451126554713.Spec : Prop :=
  ∀ n, (P6685185451126554713.a n : ℤ) = A221906 n

theorem P6685185451126554713.correct : P6685185451126554713.Spec := by
  intro n
  simp only [A221906]

end A221906

/-! ## A221906.P9920493108584609270

`record[(-2)^n+n+n]`
-/

namespace A221906.P9920493108584609270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221906.P9920493108584609270

namespace A221906

/-- `record[(-2)^n+n+n]` -/
def P9920493108584609270.Spec : Prop :=
  ∀ n, P9920493108584609270.a n = A221906 n

end A221906

/-! ## A221906.P12086645117503298783

`∑[4*(a(n-1)-3)]` with `a(0)=1, a(1)=7`
-/

namespace A221906.P12086645117503298783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  4 * (f1 (n - 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221906.P12086645117503298783

namespace A221906

/-- `∑[4*(a(n-1)-3)]` -/
def P12086645117503298783.Spec : Prop :=
  ∀ n, P12086645117503298783.a n = A221906 n

end A221906

/-! ## A221906.P699660100072523407

`4*(a(n-1)-3*n+4)` with `a(0)=1`
-/

namespace A221906.P699660100072523407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) - (3 * n : ℤ) + 4)

end

end A221906.P699660100072523407

namespace A221906

/-- `4*(a(n-1)-3*n+4)` -/
def P699660100072523407.Spec : Prop :=
  ∀ n, P699660100072523407.a n = A221906 n

theorem P699660100072523407.correct : P699660100072523407.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221906, Nat.add_sub_cancel, A221906.P699660100072523407.a, A221906.P6685185451126554713.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221906, Nat.add_sub_cancel, A221906.P699660100072523407.a, A221906.P6685185451126554713.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A221906

/-! ## A221906.P4660159971795496938

`4*(4-(3*n-a(n-1)))` with `a(0)=1`
-/

namespace A221906.P4660159971795496938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (4 - ((3 * n : ℤ) - a (n - 1)))

end

end A221906.P4660159971795496938

namespace A221906

/-- `4*(4-(3*n-a(n-1)))` -/
def P4660159971795496938.Spec : Prop :=
  ∀ n, P4660159971795496938.a n = A221906 n

theorem P4660159971795496938.correct : P4660159971795496938.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221906, Nat.add_sub_cancel, A221906.P4660159971795496938.a, A221906.P6685185451126554713.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221906, Nat.add_sub_cancel, A221906.P4660159971795496938.a, A221906.P6685185451126554713.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A221906

/-! ## A221906.P1288585068708681613

`A100314(2*n)`
-/

namespace A221906.P1288585068708681613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100314 (2 * n)

end

end A221906.P1288585068708681613

namespace A221906

/-- `A100314(2*n)` -/
def P1288585068708681613.Spec : Prop :=
  ∀ n, P1288585068708681613.a n = A221906 n

end A221906

/-! ## A221906.P4171000000623933397

`abs(1-A176691(2*n))`
-/

namespace A221906.P4171000000623933397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A176691 (2 * n)|

end

end A221906.P4171000000623933397

namespace A221906

/-- `abs(1-A176691(2*n))` -/
def P4171000000623933397.Spec : Prop :=
  ∀ n, P4171000000623933397.a n = A221906 n

end A221906

/-! ## A221906.P14418396725844035611

`abs(A000079(n)²+5*n-n)`
-/

namespace A221906.P14418396725844035611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n ^ 2 + (5 * n : ℤ) - (n : ℤ)|

end

end A221906.P14418396725844035611

namespace A221906

/-- `abs(A000079(n)²+5*n-n)` -/
def P14418396725844035611.Spec : Prop :=
  ∀ n, P14418396725844035611.a n = A221906 n

end A221906

/-! ## A221906.P3322823466606880283

`abs(A024036(n)+5*n+1-n)`
-/

namespace A221906.P3322823466606880283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024036 n + (5 * n + 1 : ℤ) - (n : ℤ)|

end

end A221906.P3322823466606880283

namespace A221906

/-- `abs(A024036(n)+5*n+1-n)` -/
def P3322823466606880283.Spec : Prop :=
  ∀ n, P3322823466606880283.a n = A221906 n

end A221906

/-! ## A221906.P14935714375005765300

`Δ[A357282(2*n)]`
-/

namespace A221906.P14935714375005765300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357282 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221906.P14935714375005765300

namespace A221906

/-- `Δ[A357282(2*n)]` -/
def P14935714375005765300.Spec : Prop :=
  ∀ n, P14935714375005765300.a n = A221906 n

end A221906

/-! ## A221906.P3191337260017112690

`abs(Δ[A002450(n)]+4*n)`
-/

namespace A221906.P3191337260017112690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (4 * n : ℤ)|

end

end A221906.P3191337260017112690

namespace A221906

/-- `abs(Δ[A002450(n)]+4*n)` -/
def P3191337260017112690.Spec : Prop :=
  ∀ n, P3191337260017112690.a n = A221906 n

end A221906

/-! ## A221906.P7091030225172869101

`(A004171(n)+7*n+n)/2`
-/

namespace A221906.P7091030225172869101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n + (7 * n : ℤ) + (n : ℤ) : ℚ) / 2

end

end A221906.P7091030225172869101

namespace A221906

/-- `(A004171(n)+7*n+n)/2` -/
def P7091030225172869101.Spec : Prop :=
  ∀ n, P7091030225172869101.a n = (A221906 n : ℚ)

end A221906

/-! ## A221906.P8613456808786834217

`(8*n+A000079(2*n+1))/2`
-/

namespace A221906.P8613456808786834217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * n : ℤ) + A000079 (2 * n + 1) : ℚ) / 2

end

end A221906.P8613456808786834217

namespace A221906

/-- `(8*n+A000079(2*n+1))/2` -/
def P8613456808786834217.Spec : Prop :=
  ∀ n, P8613456808786834217.a n = (A221906 n : ℚ)

end A221906

/-! ## A221906.P4822126506627875700

`(A086653(2*n+1)+2*n-3)/2`
-/

namespace A221906.P4822126506627875700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086653 (2 * n + 1) + ((2 * n : ℤ) - 3) : ℚ) / 2

end

end A221906.P4822126506627875700

namespace A221906

/-- `(A086653(2*n+1)+2*n-3)/2` -/
def P4822126506627875700.Spec : Prop :=
  ∀ n, P4822126506627875700.a n = (A221906 n : ℚ)

end A221906

/-! ## A221906.P3472994886525697702

`(A016813(2*n)+A000225(2*n+1))/2`
-/

namespace A221906.P3472994886525697702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016813 (2 * n) + A000225 (2 * n + 1) : ℚ) / 2

end

end A221906.P3472994886525697702

namespace A221906

/-- `(A016813(2*n)+A000225(2*n+1))/2` -/
def P3472994886525697702.Spec : Prop :=
  ∀ n, P3472994886525697702.a n = (A221906 n : ℚ)

end A221906

/-!
# A221907: a(n) = 5^n + 5*n.

The programs for A221907, the canonical program `A221907.P10682136879725288040` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221907 has offset 0).

The definition of A221907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+5*n` (program `A221907.P10682136879725288040`, by `A221907.P10682136879725288040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221907.P10682136879725288040

`5^n+5*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221907

/-- `5^n+5*n` -/
def P10682136879725288040.Spec : Prop :=
  ∀ n, (P10682136879725288040.a n : ℤ) = A221907 n

theorem P10682136879725288040.correct : P10682136879725288040.Spec := by
  intro n
  simp only [A221907]

end A221907

/-! ## A221907.P16925128213259749265

`∑[5*(a(n-1)-4)]` with `a(0)=1, a(1)=9`
-/

namespace A221907.P16925128213259749265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  5 * (f1 (n - 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221907.P16925128213259749265

namespace A221907

/-- `∑[5*(a(n-1)-4)]` -/
def P16925128213259749265.Spec : Prop :=
  ∀ n, P16925128213259749265.a n = A221907 n

end A221907

/-! ## A221907.P17068954999909523978

`5*(a(n-1)-4*n+5)` with `a(0)=1`
-/

namespace A221907.P17068954999909523978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * (a (n - 1) - (4 * n : ℤ) + 5)

end

end A221907.P17068954999909523978

namespace A221907

/-- `5*(a(n-1)-4*n+5)` -/
def P17068954999909523978.Spec : Prop :=
  ∀ n, P17068954999909523978.a n = A221907 n

theorem P17068954999909523978.correct : P17068954999909523978.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221907, Nat.add_sub_cancel, A221907.P17068954999909523978.a, A221907.P10682136879725288040.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221907, Nat.add_sub_cancel, A221907.P17068954999909523978.a, A221907.P10682136879725288040.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A221907

/-! ## A221907.P6563381843234224090

`5*(5-(4*n-a(n-1)))` with `a(0)=1`
-/

namespace A221907.P6563381843234224090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * (5 - ((4 * n : ℤ) - a (n - 1)))

end

end A221907.P6563381843234224090

namespace A221907

/-- `5*(5-(4*n-a(n-1)))` -/
def P6563381843234224090.Spec : Prop :=
  ∀ n, P6563381843234224090.a n = A221907 n

theorem P6563381843234224090.correct : P6563381843234224090.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221907, Nat.add_sub_cancel, A221907.P6563381843234224090.a, A221907.P10682136879725288040.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221907, Nat.add_sub_cancel, A221907.P6563381843234224090.a, A221907.P10682136879725288040.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A221907

/-! ## A221907.P6421723128227245640

`abs(n^5-A220511(n))`
-/

namespace A221907.P6421723128227245640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 5 : ℤ) - A220511 n|

end

end A221907.P6421723128227245640

namespace A221907

/-- `abs(n^5-A220511(n))` -/
def P6421723128227245640.Spec : Prop :=
  ∀ n, P6421723128227245640.a n = A221907 n

end A221907

/-! ## A221907.P11620964794389869310

`abs(A104745(n)+5*n-n)`
-/

namespace A221907.P11620964794389869310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104745 n + (5 * n : ℤ) - (n : ℤ)|

end

end A221907.P11620964794389869310

namespace A221907

/-- `abs(A104745(n)+5*n-n)` -/
def P11620964794389869310.Spec : Prop :=
  ∀ n, P11620964794389869310.a n = A221907 n

end A221907

/-! ## A221907.P1214918011366316170

`abs(6*n-(1-A034474(n))-n)`
-/

namespace A221907.P1214918011366316170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n : ℤ) - (1 - A034474 n) - (n : ℤ)|

end

end A221907.P1214918011366316170

namespace A221907

/-- `abs(6*n-(1-A034474(n))-n)` -/
def P1214918011366316170.Spec : Prop :=
  ∀ n, P1214918011366316170.a n = A221907 n

end A221907

/-! ## A221907.P766992810236318784

`abs(Δ[A003463(n)]+5*n)`
-/

namespace A221907.P766992810236318784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (5 * n : ℤ)|

end

end A221907.P766992810236318784

namespace A221907

/-- `abs(Δ[A003463(n)]+5*n)` -/
def P766992810236318784.Spec : Prop :=
  ∀ n, P766992810236318784.a n = A221907 n

end A221907

/-!
# A221908: a(n) = 6^n + 6*n.

The programs for A221908, the canonical program `A221908.P6493891443446120969` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221908 has offset 0).

The definition of A221908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+6*n` (program `A221908.P6493891443446120969`, by `A221908.P6493891443446120969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221908.P6493891443446120969

`6^n+6*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221908

/-- `6^n+6*n` -/
def P6493891443446120969.Spec : Prop :=
  ∀ n, (P6493891443446120969.a n : ℤ) = A221908 n

theorem P6493891443446120969.correct : P6493891443446120969.Spec := by
  intro n
  simp only [A221908]

end A221908

/-! ## A221908.P1832322676650438201

`gcd(A008588(n)+A000400(n), A000038(n))`
-/

namespace A221908.P1832322676650438201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008588 n + A000400 n) (A000038 n)

end

end A221908.P1832322676650438201

namespace A221908

/-- `gcd(A008588(n)+A000400(n), A000038(n))` -/
def P1832322676650438201.Spec : Prop :=
  ∀ n, (P1832322676650438201.a n : ℤ) = A221908 n

end A221908

/-! ## A221908.P17650737685595698849

`abs((A008588(n)+A000400(n))*A033999(n))`
-/

namespace A221908.P17650737685595698849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A008588 n + A000400 n) * A033999 n|

end

end A221908.P17650737685595698849

namespace A221908

/-- `abs((A008588(n)+A000400(n))*A033999(n))` -/
def P17650737685595698849.Spec : Prop :=
  ∀ n, P17650737685595698849.a n = A221908 n

end A221908

/-! ## A221908.P11875115135868617238

`(A008588(n)+A000400(n))*A057427(n+1)`
-/

namespace A221908.P11875115135868617238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008588 n + A000400 n) * A057427 (n + 1)

end

end A221908.P11875115135868617238

namespace A221908

/-- `(A008588(n)+A000400(n))*A057427(n+1)` -/
def P11875115135868617238.Spec : Prop :=
  ∀ n, P11875115135868617238.a n = A221908 n

end A221908

/-! ## A221908.P15690863411944436535

`(A008588(n)+A000400(n))%A241616(n+1)`
-/

namespace A221908.P15690863411944436535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008588 n + A000400 n) (A241616 (n + 1))

end

end A221908.P15690863411944436535

namespace A221908

/-- `(A008588(n)+A000400(n))%A241616(n+1)` -/
def P15690863411944436535.Spec : Prop :=
  ∀ n, P15690863411944436535.a n = A221908 n

end A221908

/-! ## A221908.P11463275050527574790

`or(A008588(n)+A000400(n), A000038(n+1))`
-/

namespace A221908.P11463275050527574790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008588 n + A000400 n) (A000038 (n + 1))

end

end A221908.P11463275050527574790

namespace A221908

/-- `or(A008588(n)+A000400(n), A000038(n+1))` -/
def P11463275050527574790.Spec : Prop :=
  ∀ n, P11463275050527574790.a n = A221908 n

end A221908

/-! ## A221908.P7561849187615099946

`(A008588(n)+A000400(n))%A013730(n)`
-/

namespace A221908.P7561849187615099946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008588 n + A000400 n) (A013730 n)

end

end A221908.P7561849187615099946

namespace A221908

/-- `(A008588(n)+A000400(n))%A013730(n)` -/
def P7561849187615099946.Spec : Prop :=
  ∀ n, P7561849187615099946.a n = A221908 n

end A221908

/-!
# A221909: a(n) = 7^n + 7*n.

The programs for A221909, the canonical program `A221909.P4452540716785545212` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221909 has offset 0).

The definition of A221909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+7*n` (program `A221909.P4452540716785545212`, by `A221909.P4452540716785545212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221909.P4452540716785545212

`7^n+7*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221909

/-- `7^n+7*n` -/
def P4452540716785545212.Spec : Prop :=
  ∀ n, (P4452540716785545212.a n : ℤ) = A221909 n

theorem P4452540716785545212.correct : P4452540716785545212.Spec := by
  intro n
  simp only [A221909]

end A221909

/-! ## A221909.P2737390772589239974

`abs(A000420(n)-(n-8*n))`
-/

namespace A221909.P2737390772589239974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - ((n : ℤ) - (8 * n : ℤ))|

end

end A221909.P2737390772589239974

namespace A221909

/-- `abs(A000420(n)-(n-8*n))` -/
def P2737390772589239974.Spec : Prop :=
  ∀ n, P2737390772589239974.a n = A221909 n

end A221909

/-! ## A221909.P12648454219353951084

`abs(A001015(n)-A220528(n))`
-/

namespace A221909.P12648454219353951084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001015 n - A220528 n|

end

end A221909.P12648454219353951084

namespace A221909

/-- `abs(A001015(n)-A220528(n))` -/
def P12648454219353951084.Spec : Prop :=
  ∀ n, P12648454219353951084.a n = A221909 n

end A221909

/-! ## A221909.P12185055534499724051

`abs(A121199(n)-A221907(n))`
-/

namespace A221909.P12185055534499724051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121199 n - A221907 n|

end

end A221909.P12185055534499724051

namespace A221909

/-- `abs(A121199(n)-A221907(n))` -/
def P12185055534499724051.Spec : Prop :=
  ∀ n, P12185055534499724051.a n = A221909 n

end A221909

/-! ## A221909.P14616747650160598057

`abs(1-(A000420(n)+Δ[A000567(n)]+n))`
-/

namespace A221909.P14616747650160598057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000420 n + (f1 (n + 1) - f1 n) + (n : ℤ))|

end

end A221909.P14616747650160598057

namespace A221909

/-- `abs(1-(A000420(n)+Δ[A000567(n)]+n))` -/
def P14616747650160598057.Spec : Prop :=
  ∀ n, P14616747650160598057.a n = A221909 n

end A221909

/-! ## A221909.P4612537277738924021

`(A008589(n)+A000420(n))%A176972(n)`
-/

namespace A221909.P4612537277738924021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008589 n + A000420 n) (A176972 n)

end

end A221909.P4612537277738924021

namespace A221909

/-- `(A008589(n)+A000420(n))%A176972(n)` -/
def P4612537277738924021.Spec : Prop :=
  ∀ n, P4612537277738924021.a n = A221909 n

end A221909

/-! ## A221909.P15370309183202757734

`abs(A208704(n+1)-A193577(n)-A008589(n))`
-/

namespace A221909.P15370309183202757734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208704 (n + 1) - A193577 n - A008589 n|

end

end A221909.P15370309183202757734

namespace A221909

/-- `abs(A208704(n+1)-A193577(n)-A008589(n))` -/
def P15370309183202757734.Spec : Prop :=
  ∀ n, P15370309183202757734.a n = A221909 n

end A221909

/-!
# A221910: a(n) = 8^n + 8*n.

The programs for A221910, the canonical program `A221910.P1893857123499079554` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221910 has offset 0).

The definition of A221910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+8*n` (program `A221910.P1893857123499079554`, by `A221910.P1893857123499079554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221910.P1893857123499079554

`8^n+8*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221910

/-- `8^n+8*n` -/
def P1893857123499079554.Spec : Prop :=
  ∀ n, (P1893857123499079554.a n : ℤ) = A221910 n

theorem P1893857123499079554.correct : P1893857123499079554.Spec := by
  intro n
  simp only [A221910]

end A221910

/-! ## A221910.P12086368280426947589

`8*(a(n-1)+8-7*n)` with `a(0)=1`
-/

namespace A221910.P12086368280426947589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * (a (n - 1) + 8 - (7 * n : ℤ))

end

end A221910.P12086368280426947589

namespace A221910

/-- `8*(a(n-1)+8-7*n)` -/
def P12086368280426947589.Spec : Prop :=
  ∀ n, P12086368280426947589.a n = A221910 n

theorem P12086368280426947589.correct : P12086368280426947589.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A221910, Nat.add_sub_cancel, A221910.P12086368280426947589.a, A221910.P1893857123499079554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A221910, Nat.add_sub_cancel, A221910.P12086368280426947589.a, A221910.P1893857123499079554.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A221910

/-! ## A221910.P16713152722269611873

`floor(A013730(n)/2+8*n)`
-/

namespace A221910.P16713152722269611873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A013730 n : ℚ) / 2 + (8 * n : ℚ)⌋

end

end A221910.P16713152722269611873

namespace A221910

/-- `floor(A013730(n)/2+8*n)` -/
def P16713152722269611873.Spec : Prop :=
  ∀ n, P16713152722269611873.a n = A221910 n

end A221910

/-! ## A221910.P15040025424700229556

`Δ[A023001(n)+(1-2*n)²]`
-/

namespace A221910.P15040025424700229556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + (1 - (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221910.P15040025424700229556

namespace A221910

/-- `Δ[A023001(n)+(1-2*n)²]` -/
def P15040025424700229556.Spec : Prop :=
  ∀ n, P15040025424700229556.a n = A221910 n

end A221910

/-! ## A221910.P16154786337809103534

`record[4*n-(A094014(n+1)+A094014(n))]`
-/

namespace A221910.P16154786337809103534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (A094014 (n + 1) + A094014 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221910.P16154786337809103534

namespace A221910

/-- `record[4*n-(A094014(n+1)+A094014(n))]` -/
def P16154786337809103534.Spec : Prop :=
  ∀ n, P16154786337809103534.a n = A221910 n

end A221910

/-!
# A221911: a(n) = 9^n + 9*n.

The programs for A221911, the canonical program `A221911.P2664092485673479231` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221911 has offset 0).

The definition of A221911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+9*n` (program `A221911.P2664092485673479231`, by `A221911.P2664092485673479231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221911.P2664092485673479231

`9^n+9*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221911

/-- `9^n+9*n` -/
def P2664092485673479231.Spec : Prop :=
  ∀ n, (P2664092485673479231.a n : ℤ) = A221911 n

theorem P2664092485673479231.correct : P2664092485673479231.Spec := by
  intro n
  simp only [A221911]

end A221911

/-! ## A221911.P9788074419802419300

`abs(A001019(n)+10*n-n)`
-/

namespace A221911.P9788074419802419300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n + (10 * n : ℤ) - (n : ℤ)|

end

end A221911.P9788074419802419300

namespace A221911

/-- `abs(A001019(n)+10*n-n)` -/
def P9788074419802419300.Spec : Prop :=
  ∀ n, P9788074419802419300.a n = A221911 n

end A221911

/-! ## A221911.P3593021083124370103

`gcd(A226202(n)+8*n, floor(acot(n)))`
-/

namespace A221911.P3593021083124370103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226202 n + (8 * n : ℤ)) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A221911.P3593021083124370103

namespace A221911

/-- `gcd(A226202(n)+8*n, floor(acot(n)))` -/
def P3593021083124370103.Spec : Prop :=
  ∀ n, (P3593021083124370103.a n : ℤ) = A221911 n

end A221911

/-! ## A221911.P14748866444093998494

`abs(9^n+A017281(n)-(n+1))`
-/

namespace A221911.P14748866444093998494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) + (A017281 n - (n + 1 : ℤ))|

end

end A221911.P14748866444093998494

namespace A221911

/-- `abs(9^n+A017281(n)-(n+1))` -/
def P14748866444093998494.Spec : Prop :=
  ∀ n, P14748866444093998494.a n = A221911 n

end A221911

/-! ## A221911.P15403992101947782079

`-(A198399(n)-A199559(n)+1)`
-/

namespace A221911.P15403992101947782079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A198399 n - A199559 n + 1)

end

end A221911.P15403992101947782079

namespace A221911

/-- `-(A198399(n)-A199559(n)+1)` -/
def P15403992101947782079.Spec : Prop :=
  ∀ n, P15403992101947782079.a n = A221911 n

end A221911

/-! ## A221911.P17787616995263315122

`lcm(A226202(n)+8*n, A033999(n))`
-/

namespace A221911.P17787616995263315122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A226202 n + (8 * n : ℤ)) (A033999 n)

end

end A221911.P17787616995263315122

namespace A221911

/-- `lcm(A226202(n)+8*n, A033999(n))` -/
def P17787616995263315122.Spec : Prop :=
  ∀ n, (P17787616995263315122.a n : ℤ) = A221911 n

end A221911

/-! ## A221911.P13792607874746335833

`or(A226202(n)+8*n, A000007(n))`
-/

namespace A221911.P13792607874746335833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A226202 n + (8 * n : ℤ)) (A000007 n)

end

end A221911.P13792607874746335833

namespace A221911

/-- `or(A226202(n)+8*n, A000007(n))` -/
def P13792607874746335833.Spec : Prop :=
  ∀ n, P13792607874746335833.a n = A221911 n

end A221911

/-! ## A221911.P16989985969934694947

`xor(A226202(n)+8*n, A000007(n+1))`
-/

namespace A221911.P16989985969934694947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A226202 n + (8 * n : ℤ)) (A000007 (n + 1))

end

end A221911.P16989985969934694947

namespace A221911

/-- `xor(A226202(n)+8*n, A000007(n+1))` -/
def P16989985969934694947.Spec : Prop :=
  ∀ n, P16989985969934694947.a n = A221911 n

end A221911

/-! ## A221911.P15954001701275206005

`record[A001651(A047235(n+1))-A081630(n)]`
-/

namespace A221911.P15954001701275206005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A047235 (n + 1)).toNat - A081630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221911.P15954001701275206005

namespace A221911

/-- `record[A001651(A047235(n+1))-A081630(n)]` -/
def P15954001701275206005.Spec : Prop :=
  ∀ n, P15954001701275206005.a n = A221911 n

end A221911

/-!
# A221912: Partial sums of floor(n/12).

The programs for A221912, the canonical program `A221912.P17367794735263846476` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221912 has offset 0).

The definition of A221912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221912.P17367794735263846476

`∑[floor(n/12)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221912

/-- `∑[floor(n/12)]` -/
def P17367794735263846476.Spec : Prop :=
  ∀ n, P17367794735263846476.a n = A221912 n

theorem P17367794735263846476.correct : P17367794735263846476.Spec := by
  intro n
  simp only [A221912]

end A221912

/-! ## A221912.P9771272356463068211

`∑[n-n%12]/12`
-/

namespace A221912.P9771272356463068211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 12 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 12

end

end A221912.P9771272356463068211

namespace A221912

/-- `∑[n-n%12]/12` -/
def P9771272356463068211.Spec : Prop :=
  ∀ n, P9771272356463068211.a n = (A221912 n : ℚ)

end A221912

/-! ## A221912.P11443003119487254994

`floor(a(n-1)+n/12)` with `a(0)=0`
-/

namespace A221912.P11443003119487254994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 12⌋

end

end A221912.P11443003119487254994

namespace A221912

/-- `floor(a(n-1)+n/12)` -/
def P11443003119487254994.Spec : Prop :=
  ∀ n, P11443003119487254994.a n = A221912 n

end A221912

/-! ## A221912.P15515904154152664591

`∑[∑[char[lcm(12, n)]]]-(n+1)`
-/

namespace A221912.P15515904154152664591
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 12 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A221912.P15515904154152664591

namespace A221912

/-- `∑[∑[char[lcm(12, n)]]]-(n+1)` -/
def P15515904154152664591.Spec : Prop :=
  ∀ n, P15515904154152664591.a n = A221912 n

end A221912

/-! ## A221912.P3719228567425200804

`∑[ceil(or(1, n)/12)]-(n+1)`
-/

namespace A221912.P3719228567425200804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A221912.P3719228567425200804

namespace A221912

/-- `∑[ceil(or(1, n)/12)]-(n+1)` -/
def P3719228567425200804.Spec : Prop :=
  ∀ n, P3719228567425200804.a n = A221912 n

end A221912

/-! ## A221912.P15999622978807290028

`floor(n/3-(n/4-a(n-1)))` with `a(0)=0`
-/

namespace A221912.P15999622978807290028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 3 - ((n : ℚ) / 4 - (a (n - 1) : ℚ))⌋

end

end A221912.P15999622978807290028

namespace A221912

/-- `floor(n/3-(n/4-a(n-1)))` -/
def P15999622978807290028.Spec : Prop :=
  ∀ n, P15999622978807290028.a n = A221912 n

end A221912

/-! ## A221912.P8376509972223793510

`A008730(n)-(n+1)`
-/

namespace A221912.P8376509972223793510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008730 n - (n + 1 : ℤ)

end

end A221912.P8376509972223793510

namespace A221912

/-- `A008730(n)-(n+1)` -/
def P8376509972223793510.Spec : Prop :=
  ∀ n, P8376509972223793510.a n = A221912 n

end A221912

/-! ## A221912.P8014529269529460817

`A342696(n)+a(n-1)` with `a(0)=0`
-/

namespace A221912.P8014529269529460817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342696 n + a (n - 1)

end

end A221912.P8014529269529460817

namespace A221912

/-- `A342696(n)+a(n-1)` -/
def P8014529269529460817.Spec : Prop :=
  ∀ n, P8014529269529460817.a n = A221912 n

end A221912

/-! ## A221912.P18233037039445836422

`abs(∑[ceil((A002265(n)+1)/3)]-1)-n`
-/

namespace A221912.P18233037039445836422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002265 n + 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| - (n : ℤ)

end

end A221912.P18233037039445836422

namespace A221912

/-- `abs(∑[ceil((A002265(n)+1)/3)]-1)-n` -/
def P18233037039445836422.Spec : Prop :=
  ∀ n, P18233037039445836422.a n = A221912 n

end A221912

/-! ## A221912.P2958297168545773742

`A002265(A002264(n))+a(n-1)` with `a(0)=0`
-/

namespace A221912.P2958297168545773742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002265 (A002264 n).toNat + a (n - 1)

end

end A221912.P2958297168545773742

namespace A221912

/-- `A002265(A002264(n))+a(n-1)` -/
def P2958297168545773742.Spec : Prop :=
  ∀ n, P2958297168545773742.a n = A221912 n

end A221912

/-! ## A221912.P12221167775624577217

`∑[n]-A033444(n+1)`
-/

namespace A221912.P12221167775624577217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033444 (n + 1)

end

end A221912.P12221167775624577217

namespace A221912

/-- `∑[n]-A033444(n+1)` -/
def P12221167775624577217.Spec : Prop :=
  ∀ n, P12221167775624577217.a n = A221912 n

end A221912

/-! ## A221912.P17139990219017721420

`A002620(n+1)+A002620(n)-A033444(n+1)`
-/

namespace A221912.P17139990219017721420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A002620 n - A033444 (n + 1))

end

end A221912.P17139990219017721420

namespace A221912

/-- `A002620(n+1)+A002620(n)-A033444(n+1)` -/
def P17139990219017721420.Spec : Prop :=
  ∀ n, P17139990219017721420.a n = A221912 n

end A221912

/-!
# A221913: Array of coefficients of numerator polynomials (divided by x) of the n-th approximation of the continued fraction x/(1+x/(2+x/(3+...

The programs for A221913, there is no canonical definition to state claims against.
-/

/-! ## A221913.P11234293900889822089

`A330609(comp[floor((n/2)²)])`
-/

namespace A221913.P11234293900889822089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A221913.P11234293900889822089

/-! ## A221913.P6494492381494159172

`abs(A066667(A091018(n)))`
-/

namespace A221913.P6494492381494159172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 (A091018 n).toNat|

end

end A221913.P6494492381494159172

/-! ## A221913.P713465052775243532

`A105278(A056536(n+1))`
-/

namespace A221913.P713465052775243532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A056536 (n + 1)).toNat

end

end A221913.P713465052775243532

/-! ## A221913.P11443281156656627733

`A105278(A091018(n)+1)`
-/

namespace A221913.P11443281156656627733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A091018 n + 1).toNat

end

end A221913.P11443281156656627733

/-! ## A221913.P3360466647266042067

`A105278(A091018(comp[n²]))`
-/

namespace A221913.P3360466647266042067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A091018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A221913.P3360466647266042067

/-!
# A221914: Array of products of the list entries of the nonempty combinations of n, ordered in a standard way.

The programs for A221914, there is no canonical definition to state claims against.
-/

/-! ## A221914.P11020734243123302961

`∏{digits}[A082185(n+1), #]`
-/

namespace A221914.P11020734243123302961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A221914.P11020734243123302961

/-! ## A221914.P12677730654793189156

`abs(A187844(A082185(Δ[n²]-n)))`
-/

namespace A221914.P12677730654793189156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 (A082185 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat|

end

end A221914.P12677730654793189156

/-! ## A221914.P9839480643999903347

`gcd(A000038(n), A187844(A082185(n+1)))`
-/

namespace A221914.P9839480643999903347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A187844 (A082185 (n + 1)).toNat)

end

end A221914.P9839480643999903347

/-! ## A221914.P3291428256915973512

`lcm(A033999(n), A187844(A082185(n+1)))`
-/

namespace A221914.P3291428256915973512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A187844 (A082185 (n + 1)).toNat)

end

end A221914.P3291428256915973512

/-! ## A221914.P7009529255524380049

`∑{d}[A187844(A082185(n+1)), A000010(#)]`
-/

namespace A221914.P7009529255524380049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (A082185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A221914.P7009529255524380049

/-! ## A221914.P14887805966677403424

`A000038(n+1)+abs(A187844(A082185(n+1)))`
-/

namespace A221914.P14887805966677403424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + |A187844 (A082185 (n + 1)).toNat|

end

end A221914.P14887805966677403424

/-! ## A221914.P14944889780762119624

`abs(A187844(A082185(n+1))%(A273408(n)+1))`
-/

namespace A221914.P14944889780762119624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A187844 (A082185 (n + 1)).toNat) (A273408 n + 1)|

end

end A221914.P14944889780762119624

/-! ## A221914.P548130256597472867

`A007954(A082185(n+1))`
-/

namespace A221914.P548130256597472867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A082185 (n + 1)).toNat

end

end A221914.P548130256597472867

/-! ## A221914.P15166850435883764064

`A051801(A082185(n+1))+A000045(C(n, 64))`
-/

namespace A221914.P15166850435883764064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A082185 (n + 1)).toNat + A000045 (Nat.choose n 64)

end

end A221914.P15166850435883764064

/-! ## A221914.P3927612801124413918

`A000005((-1)^(2*n))*A051801(A082185(n+1))`
-/

namespace A221914.P3927612801124413918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((-1) ^ (2 * n)).toNat * A051801 (A082185 (n + 1)).toNat

end

end A221914.P3927612801124413918

/-!
# A221915: Array for a certain labeled Morse code, recorded in standard order.

The programs for A221915, there is no canonical definition to state claims against.
-/

/-! ## A221915.P2483257447146870263

`A249619(n)/A112543(A347811(n+1))`
-/

namespace A221915.P2483257447146870263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249619 n : ℚ) / (A112543 (A347811 (n + 1)).toNat : ℚ)

end

end A221915.P2483257447146870263

/-! ## A221915.P9502354881650011845

`gcd(A067645(A209436(n)), A249619(n))`
-/

namespace A221915.P9502354881650011845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067645 (A209436 n).toNat) (A249619 n)

end

end A221915.P9502354881650011845

/-! ## A221915.P15243621226586511814

`and(A249619(n), A321804(A002378(n)))`
-/

namespace A221915.P15243621226586511814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249619 n) (A321804 (A002378 n).toNat)

end

end A221915.P15243621226586511814

/-! ## A221915.P9852747343925551436

`A249619(n)%A016742(A271969(n+1))`
-/

namespace A221915.P9852747343925551436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249619 n) (A016742 (A271969 (n + 1)).toNat)

end

end A221915.P9852747343925551436

/-! ## A221915.P10203135160522686055

`A124773(A277335(n+1))`
-/

namespace A221915.P10203135160522686055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (A277335 (n + 1)).toNat

end

end A221915.P10203135160522686055

/-!
# A221916: Array of products of the list entries of the combinations of n, taken in reverse standard order.

The programs for A221916, there is no canonical definition to state claims against.
-/

/-! ## A221916.P5659282838339988274

`A124773(A209862(n+1))`
-/

namespace A221916.P5659282838339988274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (A209862 (n + 1)).toNat

end

end A221916.P5659282838339988274

/-!
# A221917: Difference between area/L^2 and perimeter/L, with some length unit L, of a rectangle n X m, n >= m >= 0.

The programs for A221917, there is no canonical definition to state claims against.
-/

/-! ## A221917.P886154139711205124

`A159798(n+1)+1-∑[2*char[∑[n]]]`
-/

namespace A221917.P886154139711205124
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159798 (n + 1) + 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A221917.P886154139711205124

/-! ## A221917.P9187153228493045150

`A075362(n+1)-A131432(n)`
-/

namespace A221917.P9187153228493045150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A131432 n

end

end A221917.P9187153228493045150

/-! ## A221917.P9285184165702447318

`A159798(n+1)-A131507(n)`
-/

namespace A221917.P9285184165702447318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159798 (n + 1) - A131507 n

end

end A221917.P9285184165702447318

/-! ## A221917.P1283711820374284554

`A079904(n)-2*A051162(n)`
-/

namespace A221917.P1283711820374284554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n - 2 * A051162 n

end

end A221917.P1283711820374284554

/-! ## A221917.P8174206005992930798

`A076110(n+1)-A131421(n+1)`
-/

namespace A221917.P8174206005992930798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - A131421 (n + 1)

end

end A221917.P8174206005992930798

/-! ## A221917.P13517557794141160591

`A079904(n)+1-A131421(n+1)`
-/

namespace A221917.P13517557794141160591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (1 - A131421 (n + 1))

end

end A221917.P13517557794141160591

/-! ## A221917.P18402940933352872193

`A162609(n+1)-A134483(n+1)`
-/

namespace A221917.P18402940933352872193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) - A134483 (n + 1)

end

end A221917.P18402940933352872193

/-! ## A221917.P2389039827930351110

`A132111(n)+2-A070216(n+1)`
-/

namespace A221917.P2389039827930351110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n + (2 - A070216 (n + 1))

end

end A221917.P2389039827930351110

/-! ## A221917.P18098475585947907438

`A100345(n)-(A003056(n)+2*n)`
-/

namespace A221917.P18098475585947907438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - (A003056 n + (2 * n : ℤ))

end

end A221917.P18098475585947907438

/-! ## A221917.P8306994090824834681

`2*A076110(n+1)-A154614(n+1)`
-/

namespace A221917.P8306994090824834681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076110 (n + 1) - A154614 (n + 1)

end

end A221917.P8306994090824834681

/-!
# A221918: Triangle of denominators of sum of two unit fractions: 1/n + 1/m, n >= m >= 1.

The programs for A221918, there is no canonical definition to state claims against.
-/

/-! ## A221918.P13835510606849638726

`lcm(2, A227041(n+1))/2`
-/

namespace A221918.P13835510606849638726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A227041 (n + 1)) : ℚ) / 2

end

end A221918.P13835510606849638726

/-! ## A221918.P4811509886721535787

`A026741(A227041(n+1))`
-/

namespace A221918.P4811509886721535787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A227041 (n + 1)).toNat

end

end A221918.P4811509886721535787

/-! ## A221918.P16209593632206804163

`A257522(A245300(n)+1)`
-/

namespace A221918.P16209593632206804163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A245300 n + 1).toNat

end

end A221918.P16209593632206804163

/-! ## A221918.P552266858035011568

`A030065(2*A227041(n+1))`
-/

namespace A221918.P552266858035011568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * A227041 (n + 1)).toNat

end

end A221918.P552266858035011568

/-! ## A221918.P4090110069483332907

`A060819(2*A227041(n+1))`
-/

namespace A221918.P4090110069483332907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A227041 (n + 1)).toNat

end

end A221918.P4090110069483332907

/-! ## A221918.P16844538345650370369

`A060819(A227041(n+1)+A227041(n+1))`
-/

namespace A221918.P16844538345650370369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A227041 (n + 1) + A227041 (n + 1)).toNat

end

end A221918.P16844538345650370369

/-! ## A221918.P12102139335272972084

`A060789(3*A227041(n+1))`
-/

namespace A221918.P12102139335272972084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (3 * A227041 (n + 1)).toNat

end

end A221918.P12102139335272972084

/-! ## A221918.P10641057769743712709

`A106609(4*A227041(n+1))`
-/

namespace A221918.P10641057769743712709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * A227041 (n + 1)).toNat

end

end A221918.P10641057769743712709

/-! ## A221918.P14098290582351048803

`A051724(6*A227041(n+1))`
-/

namespace A221918.P14098290582351048803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A227041 (n + 1)).toNat

end

end A221918.P14098290582351048803

/-! ## A221918.P13643750534848403403

`A318574(A087112(n+1))`
-/

namespace A221918.P13643750534848403403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A087112 (n + 1)).toNat

end

end A221918.P13643750534848403403

/-! ## A221918.P6043028234980018494

`A106617(8*A227041(n+1))`
-/

namespace A221918.P6043028234980018494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (8 * A227041 (n + 1)).toNat

end

end A221918.P6043028234980018494

/-!
# A221919: Triangle of numerators of sum of two unit fractions: 1/n + 1/m, n >= m >= 1.

The programs for A221919, the canonical program `A221919.P5976960747588476298` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221919 has offset 1).

The definition of A221919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221919.P5976960747588476298

`A108872(n+1)/gcd(A108872(n+1), A144204(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A221919

/-- `A108872(n+1)/gcd(A108872(n+1), A144204(n+1))` -/
def P5976960747588476298.Spec : Prop :=
  ∀ n, P5976960747588476298.a n = (A221919 (n + 1) : ℚ)

end A221919

/-! ## A221919.P2403248274855783405

`lcm(A093995(n+1), A108872(n+1))/A093995(n+1)`
-/

namespace A221919.P2403248274855783405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A093995 (n + 1)) (A108872 (n + 1)) : ℚ) / (A093995 (n + 1) : ℚ)

end

end A221919.P2403248274855783405

namespace A221919

/-- `lcm(A093995(n+1), A108872(n+1))/A093995(n+1)` -/
def P2403248274855783405.Spec : Prop :=
  ∀ n, P2403248274855783405.a n = (A221919 (n + 1) : ℚ)

end A221919

/-! ## A221919.P10019834729338514868

`A357372(A245300(n)+1)`
-/

namespace A221919.P10019834729338514868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357372 (A245300 n + 1).toNat

end

end A221919.P10019834729338514868

namespace A221919

/-- `A357372(A245300(n)+1)` -/
def P10019834729338514868.Spec : Prop :=
  ∀ n, P10019834729338514868.a n = A221919 (n + 1)

end A221919

/-! ## A221919.P12226332625667090844

`A318573(A087112(n+1))`
-/

namespace A221919.P12226332625667090844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A087112 (n + 1)).toNat

end

end A221919.P12226332625667090844

namespace A221919

/-- `A318573(A087112(n+1))` -/
def P12226332625667090844.Spec : Prop :=
  ∀ n, P12226332625667090844.a n = A221919 (n + 1)

end A221919

/-! ## A221919.P5363473872478893132

`A000034(A227041(n+1))*A227042(n+1)`
-/

namespace A221919.P5363473872478893132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A227041 (n + 1)).toNat * A227042 (n + 1)

end

end A221919.P5363473872478893132

namespace A221919

/-- `A000034(A227041(n+1))*A227042(n+1)` -/
def P5363473872478893132.Spec : Prop :=
  ∀ n, P5363473872478893132.a n = A221919 (n + 1)

end A221919

/-!
# A221920: a(n) = 3*n/gcd(3*n, n+3), n >= 3.

The programs for A221920, the canonical program `A221920.P6347983824426646496` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221920 has offset 3).

The definition of A221920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221920.P6347983824426646496

`3*(n+3)/gcd(9, n+6)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221920

/-- `3*(n+3)/gcd(9, n+6)` -/
def P6347983824426646496.Spec : Prop :=
  ∀ n, P6347983824426646496.a n = (A221920 (n + 3) : ℚ)

end A221920

/-! ## A221920.P1449678483200909761

`A106610(A005408(n+1))+A106610(n+6)`
-/

namespace A221920.P1449678483200909761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A005408 (n + 1)).toNat + A106610 (n + 6)

end

end A221920.P1449678483200909761

namespace A221920

/-- `A106610(A005408(n+1))+A106610(n+6)` -/
def P1449678483200909761.Spec : Prop :=
  ∀ n, P1449678483200909761.a n = A221920 (n + 3)

end A221920

/-! ## A221920.P6893240224403296213

`A106610(A004273(n+2))+A106610(n+6)`
-/

namespace A221920.P6893240224403296213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A004273 (n + 2)).toNat + A106610 (n + 6)

end

end A221920.P6893240224403296213

namespace A221920

/-- `A106610(A004273(n+2))+A106610(n+6)` -/
def P6893240224403296213.Spec : Prop :=
  ∀ n, P6893240224403296213.a n = A221920 (n + 3)

end A221920

/-! ## A221920.P11782440468749636175

`A144437(A145064(2*n+1))*A145064(n+1)`
-/

namespace A221920.P11782440468749636175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144437 (A145064 (2 * n + 1)).toNat * A145064 (n + 1)

end

end A221920.P11782440468749636175

namespace A221920

/-- `A144437(A145064(2*n+1))*A145064(n+1)` -/
def P11782440468749636175.Spec : Prop :=
  ∀ n, P11782440468749636175.a n = A221920 (n + 3)

end A221920

/-! ## A221920.P12872731463084965824

`A106610(A008574(n+6))-A106610(n+15)`
-/

namespace A221920.P12872731463084965824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A008574 (n + 6)).toNat - A106610 (n + 15)

end

end A221920.P12872731463084965824

namespace A221920

/-- `A106610(A008574(n+6))-A106610(n+15)` -/
def P12872731463084965824.Spec : Prop :=
  ∀ n, P12872731463084965824.a n = A221920 (n + 3)

end A221920

/-! ## A221920.P24675645887223609

`A221918(A167614(n+1))`
-/

namespace A221920.P24675645887223609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221918 (A167614 (n + 1)).toNat

end

end A221920.P24675645887223609

namespace A221920

/-- `A221918(A167614(n+1))` -/
def P24675645887223609.Spec : Prop :=
  ∀ n, P24675645887223609.a n = A221920 (n + 3)

end A221920

/-! ## A221920.P658674043330321764

`A026741(A227041(∑[n+2]+4))`
-/

namespace A221920.P658674043330321764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A227041 (∑ j ∈ Finset.range (n + 1), f1 j + 4)).toNat

end

end A221920.P658674043330321764

namespace A221920

/-- `A026741(A227041(∑[n+2]+4))` -/
def P658674043330321764.Spec : Prop :=
  ∀ n, P658674043330321764.a n = A221920 (n + 3)

end A221920

/-! ## A221920.P17934242396724975229

`A227041(∑[n+2]+4)/A000034(n)`
-/

namespace A221920.P17934242396724975229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227041 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / (A000034 n : ℚ)

end

end A221920.P17934242396724975229

namespace A221920

/-- `A227041(∑[n+2]+4)/A000034(n)` -/
def P17934242396724975229.Spec : Prop :=
  ∀ n, P17934242396724975229.a n = (A221920 (n + 3) : ℚ)

end A221920

/-! ## A221920.P9911762426320248329

`A257522(A034856(n+4))`
-/

namespace A221920.P9911762426320248329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A034856 (n + 4)).toNat

end

end A221920.P9911762426320248329

namespace A221920

/-- `A257522(A034856(n+4))` -/
def P9911762426320248329.Spec : Prop :=
  ∀ n, P9911762426320248329.a n = A221920 (n + 3)

end A221920

/-! ## A221920.P4640309413095753510

`A257522(Δ[A008778(n+2)])`
-/

namespace A221920.P4640309413095753510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (f1 (n + 1) - f1 n).toNat

end

end A221920.P4640309413095753510

namespace A221920

/-- `A257522(Δ[A008778(n+2)])` -/
def P4640309413095753510.Spec : Prop :=
  ∀ n, P4640309413095753510.a n = A221920 (n + 3)

end A221920

/-! ## A221920.P7462649650807228891

`A257522(Δ[A027965(n+4)])`
-/

namespace A221920.P7462649650807228891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (f1 (n + 1) - f1 n).toNat

end

end A221920.P7462649650807228891

namespace A221920

/-- `A257522(Δ[A027965(n+4)])` -/
def P7462649650807228891.Spec : Prop :=
  ∀ n, P7462649650807228891.a n = A221920 (n + 3)

end A221920

/-!
# A221921: a(n) = 4*n/gcd(4*n,n+4), n >= 4.

The programs for A221921, the canonical program `A221921.P9968467204700665789` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221921 has offset 4).

The definition of A221921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221921.P9968467204700665789

`4*(n+4)/gcd(16, n+8)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221921

/-- `4*(n+4)/gcd(16, n+8)` -/
def P9968467204700665789.Spec : Prop :=
  ∀ n, P9968467204700665789.a n = (A221921 (n + 4) : ℚ)

end A221921

/-! ## A221921.P17806043554145633544

`A060819(n+4)*A176895(A051724(n)+2)`
-/

namespace A221921.P17806043554145633544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 4) * A176895 (A051724 n + 2).toNat

end

end A221921.P17806043554145633544

namespace A221921

/-- `A060819(n+4)*A176895(A051724(n)+2)` -/
def P17806043554145633544.Spec : Prop :=
  ∀ n, P17806043554145633544.a n = A221921 (n + 4)

end A221921

/-! ## A221921.P9241312219704497105

`lcm(A008574(n+4), A016789(n+2))/A016789(n+2)`
-/

namespace A221921.P9241312219704497105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008574 (n + 4)) (A016789 (n + 2)) : ℚ) / (A016789 (n + 2) : ℚ)

end

end A221921.P9241312219704497105

namespace A221921

/-- `lcm(A008574(n+4), A016789(n+2))/A016789(n+2)` -/
def P9241312219704497105.Spec : Prop :=
  ∀ n, P9241312219704497105.a n = (A221921 (n + 4) : ℚ)

end A221921

/-! ## A221921.P14093493457513073902

`A060819(n+4)*A176895(A060819(n+8))`
-/

namespace A221921.P14093493457513073902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 4) * A176895 (A060819 (n + 8)).toNat

end

end A221921.P14093493457513073902

namespace A221921

/-- `A060819(n+4)*A176895(A060819(n+8))` -/
def P14093493457513073902.Spec : Prop :=
  ∀ n, P14093493457513073902.a n = A221921 (n + 4)

end A221921

/-! ## A221921.P14960790928980972273

`A178182(3*(n+4))/3`
-/

namespace A221921.P14960790928980972273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178182 (3 * (n + 4)) : ℚ) / 3

end

end A221921.P14960790928980972273

namespace A221921

/-- `A178182(3*(n+4))/3` -/
def P14960790928980972273.Spec : Prop :=
  ∀ n, P14960790928980972273.a n = (A221921 (n + 4) : ℚ)

end A221921

/-! ## A221921.P14238999024164599712

`gcd(A008574(2*(n+4)), A178182(3*(n+4)))`
-/

namespace A221921.P14238999024164599712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 (2 * (n + 4))) (A178182 (3 * (n + 4)))

end

end A221921.P14238999024164599712

namespace A221921

/-- `gcd(A008574(2*(n+4)), A178182(3*(n+4)))` -/
def P14238999024164599712.Spec : Prop :=
  ∀ n, (P14238999024164599712.a n : ℤ) = A221921 (n + 4)

end A221921

/-! ## A221921.P138495757291754788

`A225975(A022998(A178182(n+4)))`
-/

namespace A221921.P138495757291754788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A022998 (A178182 (n + 4)).toNat).toNat

end

end A221921.P138495757291754788

namespace A221921

/-- `A225975(A022998(A178182(n+4)))` -/
def P138495757291754788.Spec : Prop :=
  ∀ n, P138495757291754788.a n = A221921 (n + 4)

end A221921

/-! ## A221921.P9684352004975673039

`A146307(3*A178182(n+4))`
-/

namespace A221921.P9684352004975673039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (3 * A178182 (n + 4)).toNat

end

end A221921.P9684352004975673039

namespace A221921

/-- `A146307(3*A178182(n+4))` -/
def P9684352004975673039.Spec : Prop :=
  ∀ n, P9684352004975673039.a n = A221921 (n + 4)

end A221921

/-! ## A221921.P12112598021734470313

`A257522(A167499(n+5)-1)`
-/

namespace A221921.P12112598021734470313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A167499 (n + 5) - 1).toNat

end

end A221921.P12112598021734470313

namespace A221921

/-- `A257522(A167499(n+5)-1)` -/
def P12112598021734470313.Spec : Prop :=
  ∀ n, P12112598021734470313.a n = A221921 (n + 4)

end A221921

/-! ## A221921.P1031928072812215459

`A257522(A055999(n+4)+3)`
-/

namespace A221921.P1031928072812215459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A055999 (n + 4) + 3).toNat

end

end A221921.P1031928072812215459

namespace A221921

/-- `A257522(A055999(n+4)+3)` -/
def P1031928072812215459.Spec : Prop :=
  ∀ n, P1031928072812215459.a n = A221921 (n + 4)

end A221921

/-! ## A221921.P15839697916673034154

`A257522(A000096(n+6)-2)`
-/

namespace A221921.P15839697916673034154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A000096 (n + 6) - 2).toNat

end

end A221921.P15839697916673034154

namespace A221921

/-- `A257522(A000096(n+6)-2)` -/
def P15839697916673034154.Spec : Prop :=
  ∀ n, P15839697916673034154.a n = A221921 (n + 4)

end A221921

/-!
# A221922: Number of nX2 arrays of occupancy after each element stays put or moves to some king-move neighbor, without move-in move-out straight through or left turns.

The programs for A221922, there is no canonical definition to state claims against.
-/

/-! ## A221922.P5891928068223602354

`A221925(∑[n+1]+2)`
-/

namespace A221922.P5891928068223602354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221925 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221922.P5891928068223602354

/-! ## A221922.P2652841037315384202

`record[A221925(A135223(n+1)+2)]`
-/

namespace A221922.P2652841037315384202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221925 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221922.P2652841037315384202

/-! ## A221922.P2805109970851220359

`record[A221925(lt[A221886(n+1), n²])]`
-/

namespace A221922.P2805109970851220359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221925 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221922.P2805109970851220359

/-!
# A221923: Number of nX3 arrays of occupancy after each element stays put or moves to some king-move neighbor, without move-in move-out straight through or left turns.

The programs for A221923, there is no canonical definition to state claims against.
-/

/-! ## A221923.P8381957566173464002

`A221925(∑[n+2]+4)`
-/

namespace A221923.P8381957566173464002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221925 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221923.P8381957566173464002

/-! ## A221923.P4170446524666285785

`and(-1, A221925(A167614(n+1)))`
-/

namespace A221923.P4170446524666285785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221925 (A167614 (n + 1)).toNat)

end

end A221923.P4170446524666285785

/-! ## A221923.P898594486523657423

`A221925(A167614(n+1))+A025439(n)`
-/

namespace A221923.P898594486523657423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221925 (A167614 (n + 1)).toNat + A025439 n

end

end A221923.P898594486523657423

/-!
# A221924: Number of nX4 arrays of occupancy after each element stays put or moves to some king-move neighbor, without move-in move-out straight through or left turns.

The programs for A221924, there is no canonical definition to state claims against.
-/

/-! ## A221924.P5003463825530942957

`A221925(A020752(n+1))`
-/

namespace A221924.P5003463825530942957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221925 (A020752 (n + 1)).toNat

end

end A221924.P5003463825530942957

/-! ## A221924.P17270606087428236423

`A221925(A141214(n)+7)`
-/

namespace A221924.P17270606087428236423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221925 (A141214 n + 7).toNat

end

end A221924.P17270606087428236423

/-!
# A221925: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some king-move neighbor, without move-in move-out straight through or left turns.

The programs for A221925, there is no canonical definition to state claims against.
-/

/-! ## A221925.P6780108207118207968

`or(A171888(A171869(n+1)), A221886(n+1))`
-/

namespace A221925.P6780108207118207968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171888 (A171869 (n + 1)).toNat) (A221886 (n + 1))

end

end A221925.P6780108207118207968

/-!
# A221926: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221926, there is no canonical definition to state claims against.
-/

/-! ## A221926.P6094126164510500227

`A221929(∑[n+3]+1)`
-/

namespace A221926.P6094126164510500227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221926.P6094126164510500227

/-! ## A221926.P7961725504625329515

`A221929(A347633(3*n+4))-A221912(n)`
-/

namespace A221926.P7961725504625329515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (A347633 (3 * n + 4)).toNat - A221912 n

end

end A221926.P7961725504625329515

/-! ## A221926.P16152292310050612750

`A221929(A347633(3*n+4))%A221927(n+1)`
-/

namespace A221926.P16152292310050612750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221929 (A347633 (3 * n + 4)).toNat) (A221927 (n + 1))

end

end A221926.P16152292310050612750

/-!
# A221927: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221927, there is no canonical definition to state claims against.
-/

/-! ## A221927.P3990120636541026413

`A221929(Δ[n²]+∑[n+2]+4)`
-/

namespace A221927.P3990120636541026413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A221927.P3990120636541026413

/-! ## A221927.P9196342938305996532

`A221929(A141214(n+1))+char[7]`
-/

namespace A221927.P9196342938305996532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221927.P9196342938305996532

/-!
# A221928: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221928, there is no canonical definition to state claims against.
-/

/-! ## A221928.P17025513202465875934

`A221929(Δ[A264443(n)])`
-/

namespace A221928.P17025513202465875934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (f1 (n + 1) - f1 n).toNat

end

end A221928.P17025513202465875934

/-!
# A221930: Number of 2Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221930, there is no canonical definition to state claims against.
-/

/-! ## A221930.P68093523681302351

`A221929(∑[n+1]+2)`
-/

namespace A221930.P68093523681302351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221930.P68093523681302351

/-! ## A221930.P436189804627596255

`record[ratio[A221929(A080036(n))]]`
-/

namespace A221930.P436189804627596255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221930.P436189804627596255

/-! ## A221930.P9666671806614627860

`record[A221929(gcd(n, A303913(n)))]`
-/

namespace A221930.P9666671806614627860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221930.P9666671806614627860

/-! ## A221930.P514842497402297497

`record[A221929(A133263(∑{digits}[n, #]))]`
-/

namespace A221930.P514842497402297497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221930.P514842497402297497

/-! ## A221930.P6784371160662023274

`record[A221929(A133263(∏{digits}[n, #]))]`
-/

namespace A221930.P6784371160662023274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221930.P6784371160662023274

/-!
# A221931: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221931, there is no canonical definition to state claims against.
-/

/-! ## A221931.P13312743766717894399

`A221929(∑[n+2]+4)`
-/

namespace A221931.P13312743766717894399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221931.P13312743766717894399

/-! ## A221931.P11550618366957723580

`and(-1, A221929(A167614(n+1)))`
-/

namespace A221931.P11550618366957723580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221929 (A167614 (n + 1)).toNat)

end

end A221931.P11550618366957723580

/-! ## A221931.P2024999974114328442

`record[gcd(A221929(n+1), A303913(n))]`
-/

namespace A221931.P2024999974114328442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221929 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221931.P2024999974114328442

/-! ## A221931.P15140947413465999593

`A221929(A167614(n+1))+A025465(n)`
-/

namespace A221931.P15140947413465999593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (A167614 (n + 1)).toNat + A025465 n

end

end A221931.P15140947413465999593

/-!
# A221932: Number of 4Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221932, there is no canonical definition to state claims against.
-/

/-! ## A221932.P4904127529379279574

`A221929(∑[n+3]+7)`
-/

namespace A221932.P4904127529379279574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221932.P4904127529379279574

/-!
# A221933: Number of n X 3 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221933, there is no canonical definition to state claims against.
-/

/-! ## A221933.P8537439636488947292

`A221937(∑[n+3]+1)`
-/

namespace A221933.P8537439636488947292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221933.P8537439636488947292

/-! ## A221933.P3566003210956484297

`A221937(A347633(3*n+4))-A221912(n)`
-/

namespace A221933.P3566003210956484297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A347633 (3 * n + 4)).toNat - A221912 n

end

end A221933.P3566003210956484297

/-! ## A221933.P6677984098486450817

`A221937(A347633(3*n+4))%A221927(n+1)`
-/

namespace A221933.P6677984098486450817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221937 (A347633 (3 * n + 4)).toNat) (A221927 (n + 1))

end

end A221933.P6677984098486450817

/-!
# A221934: Number of n X 4 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221934, there is no canonical definition to state claims against.
-/

/-! ## A221934.P15462724340948452551

`A221937(∑[n+4]+3)`
-/

namespace A221934.P15462724340948452551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221934.P15462724340948452551

/-! ## A221934.P14871806372587412514

`C(A221937(A027379(n+2)), A293669(n))`
-/

namespace A221934.P14871806372587412514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A221937 (A027379 (n + 2)).toNat).toNat (A293669 n).toNat

end

end A221934.P14871806372587412514

/-!
# A221935: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221935, there is no canonical definition to state claims against.
-/

/-! ## A221935.P16798007850249703307

`A221937(∑[n+5]+6)`
-/

namespace A221935.P16798007850249703307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221935.P16798007850249703307

/-! ## A221935.P6531143482904431256

`A221937(Δ[A264443(n)])*A257463(n)`
-/

namespace A221935.P6531143482904431256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (f1 (n + 1) - f1 n).toNat * A257463 n

end

end A221935.P6531143482904431256

/-! ## A221935.P12558182287554829385

`A221937(Δ[A264443(n)])*A257493(n)`
-/

namespace A221935.P12558182287554829385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (f1 (n + 1) - f1 n).toNat * A257493 n

end

end A221935.P12558182287554829385

/-!
# A221936: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221936, there is no canonical definition to state claims against.
-/

/-! ## A221936.P2530965464692452826

`A221937(A052905(n+3))`
-/

namespace A221936.P2530965464692452826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A052905 (n + 3)).toNat

end

end A221936.P2530965464692452826

/-! ## A221936.P15993937938753446551

`A221937(eq[3, A219347(n)])`
-/

namespace A221936.P15993937938753446551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221936.P15993937938753446551

/-!
# A221938: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221938, there is no canonical definition to state claims against.
-/

/-! ## A221938.P1924775980102641669

`A221937(∑[n+1]+2)`
-/

namespace A221938.P1924775980102641669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221938.P1924775980102641669

/-! ## A221938.P7593470431315603616

`record[gcd(A118345(n), A221937(n+3))]`
-/

namespace A221938.P7593470431315603616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118345 n) (A221937 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221938.P7593470431315603616

/-! ## A221938.P15893357297741518632

`record[A221937(n+3)/A221937(n+1)²]`
-/

namespace A221938.P15893357297741518632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221937 (n + 3) : ℚ) / (A221937 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221938.P15893357297741518632

/-! ## A221938.P4104142036146007791

`record[gcd(A221937(n+1), A266861(n+1))]`
-/

namespace A221938.P4104142036146007791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221937 (n + 1)) (A266861 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221938.P4104142036146007791

/-!
# A221939: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221939, there is no canonical definition to state claims against.
-/

/-! ## A221939.P9585301030208543002

`A221937(∑[n+2]+4)`
-/

namespace A221939.P9585301030208543002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221939.P9585301030208543002

/-! ## A221939.P7365289934502116382

`and(-1, A221937(A167614(n+1)))`
-/

namespace A221939.P7365289934502116382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221937 (A167614 (n + 1)).toNat)

end

end A221939.P7365289934502116382

/-! ## A221939.P4332911779445173679

`A221937(A167614(n+1))+A185284(n)`
-/

namespace A221939.P4332911779445173679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A167614 (n + 1)).toNat + A185284 n

end

end A221939.P4332911779445173679

/-! ## A221939.P6803860555634392772

`A221937(A167614(n+1))+A221912(n)`
-/

namespace A221939.P6803860555634392772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A167614 (n + 1)).toNat + A221912 n

end

end A221939.P6803860555634392772

/-! ## A221939.P7519981859894778829

`A326541(n)+A221937(A167614(n+1))`
-/

namespace A221939.P7519981859894778829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A221937 (A167614 (n + 1)).toNat

end

end A221939.P7519981859894778829

/-!
# A221940: Number of 4Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221940, there is no canonical definition to state claims against.
-/

/-! ## A221940.P1344179658081135973

`A221937(C(n+5, 2)-n)`
-/

namespace A221940.P1344179658081135973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (Nat.choose (n + 5) 2 - n)

end

end A221940.P1344179658081135973

/-! ## A221940.P15140138390487574639

`A221937(A141214(n)+7)`
-/

namespace A221940.P15140138390487574639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A141214 n + 7).toNat

end

end A221940.P15140138390487574639

/-! ## A221940.P8504778080248566555

`A221937(A052905(n)+9)`
-/

namespace A221940.P8504778080248566555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A052905 n + 9).toNat

end

end A221940.P8504778080248566555

/-! ## A221940.P11481512584224879110

`A221937(A055999(n)+10)`
-/

namespace A221940.P11481512584224879110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A055999 n + 10).toNat

end

end A221940.P11481512584224879110

/-! ## A221940.P8639423204452091180

`A221937(eq[5, A066657(n)])`
-/

namespace A221940.P8639423204452091180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221940.P8639423204452091180

/-!
# A221941: Number of 5Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221941, there is no canonical definition to state claims against.
-/

/-! ## A221941.P6830571668198731777

`A221937(A167499(n+3))`
-/

namespace A221941.P6830571668198731777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A167499 (n + 3)).toNat

end

end A221941.P6830571668198731777

/-! ## A221941.P5674372388839651137

`A221937(A155212(n)+13)`
-/

namespace A221941.P5674372388839651137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A155212 n + 13).toNat

end

end A221941.P5674372388839651137

/-! ## A221941.P6691974749847956992

`A221937(A056000(n)+15)`
-/

namespace A221941.P6691974749847956992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (A056000 n + 15).toNat

end

end A221941.P6691974749847956992

/-! ## A221941.P5895718170405005096

`A221937(eq[7, A066657(n)])`
-/

namespace A221941.P5895718170405005096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221941.P5895718170405005096

/-!
# A221942: a(n) = floor(sqrt(5*2^n)).

The programs for A221942, the canonical program `A221942.P1193016154368823900` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221942 has offset 0).

The definition of A221942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(5*2^n))` (program `A221942.P1193016154368823900`, by `A221942.P1193016154368823900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221942.P1193016154368823900

`floor(sqrt(5*2^n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221942

/-- `floor(sqrt(5*2^n))` -/
def P1193016154368823900.Spec : Prop :=
  ∀ n, (P1193016154368823900.a n : ℤ) = A221942 n

theorem P1193016154368823900.correct : P1193016154368823900.Spec := by
  intro n
  simp only [A221942]

end A221942

/-! ## A221942.P15004764172401666595

`ceil(sqrt(lcm(5, 2^n)))-1`
-/

namespace A221942.P15004764172401666595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lcm 5 (2 ^ n) : ℝ)⌉ - 1

end

end A221942.P15004764172401666595

namespace A221942

/-- `ceil(sqrt(lcm(5, 2^n)))-1` -/
def P15004764172401666595.Spec : Prop :=
  ∀ n, P15004764172401666595.a n = A221942 n

end A221942

/-! ## A221942.P4639287664973386206

`ceil(sqrt(A020714(n)))-1`
-/

namespace A221942.P4639287664973386206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A020714 n : ℝ)⌉ - 1

end

end A221942.P4639287664973386206

namespace A221942

/-- `ceil(sqrt(A020714(n)))-1` -/
def P4639287664973386206.Spec : Prop :=
  ∀ n, P4639287664973386206.a n = A221942 n

end A221942

/-! ## A221942.P10832335289134371559

`record[floor(sqrt(A162396(n+1)))]`
-/

namespace A221942.P10832335289134371559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A162396 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221942.P10832335289134371559

namespace A221942

/-- `record[floor(sqrt(A162396(n+1)))]` -/
def P10832335289134371559.Spec : Prop :=
  ∀ n, P10832335289134371559.a n = A221942 n

end A221942

/-! ## A221942.P9170425061309857461

`record[floor(sqrt(A163888(n+1)))]`
-/

namespace A221942.P9170425061309857461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163888 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221942.P9170425061309857461

namespace A221942

/-- `record[floor(sqrt(A163888(n+1)))]` -/
def P9170425061309857461.Spec : Prop :=
  ∀ n, P9170425061309857461.a n = A221942 n

end A221942

/-! ## A221942.P15703627163815543101

`ceil(sqrt(5*A000079(n)))-1`
-/

namespace A221942.P15703627163815543101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (5 * A000079 n : ℝ)⌉ - 1

end

end A221942.P15703627163815543101

namespace A221942

/-- `ceil(sqrt(5*A000079(n)))-1` -/
def P15703627163815543101.Spec : Prop :=
  ∀ n, P15703627163815543101.a n = A221942 n

end A221942

/-!
# A221943: Floor(sqrt(7*2^n)).

The programs for A221943, the canonical program `A221943.P7854178711455407509` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221943 has offset 0).

The definition of A221943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(7*2^n))` (program `A221943.P7854178711455407509`, by `A221943.P7854178711455407509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221943.P7854178711455407509

`floor(sqrt(7*2^n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221943

/-- `floor(sqrt(7*2^n))` -/
def P7854178711455407509.Spec : Prop :=
  ∀ n, (P7854178711455407509.a n : ℤ) = A221943 n

theorem P7854178711455407509.correct : P7854178711455407509.Spec := by
  intro n
  simp only [A221943]

end A221943

/-! ## A221943.P10688229911723775105

`root(floor(sqrt(A321483(n))), 2)²`
-/

namespace A221943.P10688229911723775105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Int.sqrt (A321483 n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A221943.P10688229911723775105

namespace A221943

/-- `root(floor(sqrt(A321483(n))), 2)²` -/
def P10688229911723775105.Spec : Prop :=
  ∀ n, P10688229911723775105.a n = (A221943 n : ℝ)

end A221943

/-! ## A221943.P4661484180251342227

`A000007(n+1)+floor(sqrt(A321483(n)))`
-/

namespace A221943.P4661484180251342227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A321483 n)

end

end A221943.P4661484180251342227

namespace A221943

/-- `A000007(n+1)+floor(sqrt(A321483(n)))` -/
def P4661484180251342227.Spec : Prop :=
  ∀ n, P4661484180251342227.a n = A221943 n

end A221943

/-! ## A221943.P11085132237569533202

`A000038(n+1)+floor(sqrt(A321483(n)))`
-/

namespace A221943.P11085132237569533202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + Int.sqrt (A321483 n)

end

end A221943.P11085132237569533202

namespace A221943

/-- `A000038(n+1)+floor(sqrt(A321483(n)))` -/
def P11085132237569533202.Spec : Prop :=
  ∀ n, P11085132237569533202.a n = A221943 n

end A221943

/-! ## A221943.P4046257655532010836

`floor(sqrt(A005009(n)))*A141044(n+2)`
-/

namespace A221943.P4046257655532010836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005009 n) * A141044 (n + 2)

end

end A221943.P4046257655532010836

namespace A221943

/-- `floor(sqrt(A005009(n)))*A141044(n+2)` -/
def P4046257655532010836.Spec : Prop :=
  ∀ n, P4046257655532010836.a n = A221943 n

end A221943

/-! ## A221943.P17441605376260803642

`floor(sqrt(A005009(n)))/A141044(n+3)`
-/

namespace A221943.P17441605376260803642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A005009 n) : ℚ) / (A141044 (n + 3) : ℚ)

end

end A221943.P17441605376260803642

namespace A221943

/-- `floor(sqrt(A005009(n)))/A141044(n+3)` -/
def P17441605376260803642.Spec : Prop :=
  ∀ n, P17441605376260803642.a n = (A221943 n : ℚ)

end A221943

/-! ## A221943.P6188556529649427583

`floor(sqrt(A005009(n)))%(A075427(n+1)+2)`
-/

namespace A221943.P6188556529649427583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A005009 n)) (A075427 (n + 1) + 2)

end

end A221943.P6188556529649427583

namespace A221943

/-- `floor(sqrt(A005009(n)))%(A075427(n+1)+2)` -/
def P6188556529649427583.Spec : Prop :=
  ∀ n, P6188556529649427583.a n = A221943 n

end A221943

/-!
# A221944: Floor(sqrt(2*3^n)).

The programs for A221944, the canonical program `A221944.P16410650134321154078` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221944 has offset 0).

The definition of A221944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*3^n))` (program `A221944.P16410650134321154078`, by `A221944.P16410650134321154078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221944.P16410650134321154078

`floor(sqrt(2*3^n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221944

/-- `floor(sqrt(2*3^n))` -/
def P16410650134321154078.Spec : Prop :=
  ∀ n, (P16410650134321154078.a n : ℤ) = A221944 n

theorem P16410650134321154078.correct : P16410650134321154078.Spec := by
  intro n
  simp only [A221944]

end A221944

/-! ## A221944.P10594898510718708430

`ceil(sqrt(2*or(1, 3^n)))-1`
-/

namespace A221944.P10594898510718708430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * Nat.lor 1 (3 ^ n) : ℝ)⌉ - 1

end

end A221944.P10594898510718708430

namespace A221944

/-- `ceil(sqrt(2*or(1, 3^n)))-1` -/
def P10594898510718708430.Spec : Prop :=
  ∀ n, P10594898510718708430.a n = A221944 n

end A221944

/-! ## A221944.P5842967224994814511

`lcm((-1)^n, floor(sqrt(Δ[3^n])))`
-/

namespace A221944.P5842967224994814511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (Int.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A221944.P5842967224994814511

namespace A221944

/-- `lcm((-1)^n, floor(sqrt(Δ[3^n])))` -/
def P5842967224994814511.Spec : Prop :=
  ∀ n, (P5842967224994814511.a n : ℤ) = A221944 n

end A221944

/-! ## A221944.P4947378442582295757

`floor(sqrt(Δ[3^n]))%Δ[3^n]`
-/

namespace A221944.P4947378442582295757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A221944.P4947378442582295757

namespace A221944

/-- `floor(sqrt(Δ[3^n]))%Δ[3^n]` -/
def P4947378442582295757.Spec : Prop :=
  ∀ n, P4947378442582295757.a n = A221944 n

end A221944

/-! ## A221944.P16712845505179052639

`ceil(sqrt(and(2*3^n, -2)))-1`
-/

namespace A221944.P16712845505179052639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.land (2 * 3 ^ n : ℤ) (-2) : ℝ)⌉ - 1

end

end A221944.P16712845505179052639

namespace A221944

/-- `ceil(sqrt(and(2*3^n, -2)))-1` -/
def P16712845505179052639.Spec : Prop :=
  ∀ n, P16712845505179052639.a n = A221944 n

end A221944

/-! ## A221944.P8309381794060868674

`ceil(sqrt(2*3^(n%(n+1))))-1`
-/

namespace A221944.P8309381794060868674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * 3 ^ (n % (n + 1)) : ℝ)⌉ - 1

end

end A221944.P8309381794060868674

namespace A221944

/-- `ceil(sqrt(2*3^(n%(n+1))))-1` -/
def P8309381794060868674.Spec : Prop :=
  ∀ n, P8309381794060868674.a n = A221944 n

end A221944

/-! ## A221944.P16540366637917320851

`floor(sqrt(Δ[3^n]+1))-and(2, n²)`
-/

namespace A221944.P16540366637917320851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) - (Nat.land 2 (n ^ 2) : ℤ)

end

end A221944.P16540366637917320851

namespace A221944

/-- `floor(sqrt(Δ[3^n]+1))-and(2, n²)` -/
def P16540366637917320851.Spec : Prop :=
  ∀ n, P16540366637917320851.a n = A221944 n

end A221944

/-! ## A221944.P6253705679018970272

`round(sqrt((3-ceil(sin(n)²))*3^n)-1/2)`
-/

namespace A221944.P6253705679018970272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((3 - ⌈Real.sin (n : ℝ) ^ 2⌉) * (3 ^ n : ℤ) : ℝ) - ((1 : ℚ) / 2 : ℝ))

end

end A221944.P6253705679018970272

namespace A221944

/-- `round(sqrt((3-ceil(sin(n)²))*3^n)-1/2)` -/
def P6253705679018970272.Spec : Prop :=
  ∀ n, P6253705679018970272.a n = A221944 n

end A221944

/-! ## A221944.P7988616151902618629

`record[floor(sqrt(A166450(n+1)))]`
-/

namespace A221944.P7988616151902618629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A166450 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221944.P7988616151902618629

namespace A221944

/-- `record[floor(sqrt(A166450(n+1)))]` -/
def P7988616151902618629.Spec : Prop :=
  ∀ n, P7988616151902618629.a n = A221944 n

end A221944

/-! ## A221944.P17112933088301408263

`ceil(sqrt(A099856(n)+1))-1`
-/

namespace A221944.P17112933088301408263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A099856 n + 1 : ℝ)⌉ - 1

end

end A221944.P17112933088301408263

namespace A221944

/-- `ceil(sqrt(A099856(n)+1))-1` -/
def P17112933088301408263.Spec : Prop :=
  ∀ n, P17112933088301408263.a n = A221944 n

end A221944

/-! ## A221944.P1512428649091904008

`ceil(sqrt(A038754(2*n+1)))-1`
-/

namespace A221944.P1512428649091904008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A038754 (2 * n + 1) : ℝ)⌉ - 1

end

end A221944.P1512428649091904008

namespace A221944

/-- `ceil(sqrt(A038754(2*n+1)))-1` -/
def P1512428649091904008.Spec : Prop :=
  ∀ n, P1512428649091904008.a n = A221944 n

end A221944

/-! ## A221944.P13614841521308099254

`ceil(sqrt((A247004(2*n+1)+1)*3^n))-1`
-/

namespace A221944.P13614841521308099254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A247004 (2 * n + 1) + 1) * (3 ^ n : ℤ) : ℝ)⌉ - 1

end

end A221944.P13614841521308099254

namespace A221944

/-- `ceil(sqrt((A247004(2*n+1)+1)*3^n))-1` -/
def P13614841521308099254.Spec : Prop :=
  ∀ n, P13614841521308099254.a n = A221944 n

end A221944

/-! ## A221944.P13892966631345545148

`record[floor(sqrt(A182830(n+1)))]`
-/

namespace A221944.P13892966631345545148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A182830 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221944.P13892966631345545148

namespace A221944

/-- `record[floor(sqrt(A182830(n+1)))]` -/
def P13892966631345545148.Spec : Prop :=
  ∀ n, P13892966631345545148.a n = A221944 n

end A221944

/-! ## A221944.P12419449683642463701

`record[floor(sqrt(A114283(n)))]`
-/

namespace A221944.P12419449683642463701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A114283 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221944.P12419449683642463701

namespace A221944

/-- `record[floor(sqrt(A114283(n)))]` -/
def P12419449683642463701.Spec : Prop :=
  ∀ n, P12419449683642463701.a n = A221944 n

end A221944

/-!
# A221945: a(n) = floor(sqrt(2*5^n)).

The programs for A221945, the canonical program `A221945.P10962266922730906019` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221945 has offset 0).

The definition of A221945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*5^n))` (program `A221945.P10962266922730906019`, by `A221945.P10962266922730906019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221945.P10962266922730906019

`floor(sqrt(2*5^n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221945

/-- `floor(sqrt(2*5^n))` -/
def P10962266922730906019.Spec : Prop :=
  ∀ n, (P10962266922730906019.a n : ℤ) = A221945 n

theorem P10962266922730906019.correct : P10962266922730906019.Spec := by
  intro n
  simp only [A221945]

end A221945

/-! ## A221945.P4506194159999331400

`ceil(sqrt(A020729(n)))-1`
-/

namespace A221945.P4506194159999331400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A020729 n : ℝ)⌉ - 1

end

end A221945.P4506194159999331400

namespace A221945

/-- `ceil(sqrt(A020729(n)))-1` -/
def P4506194159999331400.Spec : Prop :=
  ∀ n, P4506194159999331400.a n = A221945 n

end A221945

/-! ## A221945.P4927687432396409450

`record[floor(sqrt(2*A097756(n+1)))]`
-/

namespace A221945.P4927687432396409450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A097756 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221945.P4927687432396409450

namespace A221945

/-- `record[floor(sqrt(2*A097756(n+1)))]` -/
def P4927687432396409450.Spec : Prop :=
  ∀ n, P4927687432396409450.a n = A221945 n

end A221945

/-! ## A221945.P1505457891371533551

`floor(sqrt(A020729(n)))%A000051(n)²`
-/

namespace A221945.P1505457891371533551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A020729 n)) (A000051 n ^ 2)

end

end A221945.P1505457891371533551

namespace A221945

/-- `floor(sqrt(A020729(n)))%A000051(n)²` -/
def P1505457891371533551.Spec : Prop :=
  ∀ n, P1505457891371533551.a n = A221945 n

end A221945

/-! ## A221945.P1023401180679631198

`A000007(n+1)+floor(sqrt(A020729(n)))`
-/

namespace A221945.P1023401180679631198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A020729 n)

end

end A221945.P1023401180679631198

namespace A221945

/-- `A000007(n+1)+floor(sqrt(A020729(n)))` -/
def P1023401180679631198.Spec : Prop :=
  ∀ n, P1023401180679631198.a n = A221945 n

end A221945

/-! ## A221945.P4882342668806298380

`A000007(n)+floor(sqrt(A095687(n+1)))`
-/

namespace A221945.P4882342668806298380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.sqrt (A095687 (n + 1))

end

end A221945.P4882342668806298380

namespace A221945

/-- `A000007(n)+floor(sqrt(A095687(n+1)))` -/
def P4882342668806298380.Spec : Prop :=
  ∀ n, P4882342668806298380.a n = A221945 n

end A221945

/-! ## A221945.P3962111353358976729

`A000035(52*n)+floor(sqrt(A020729(n)))`
-/

namespace A221945.P3962111353358976729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (52 * n) + Int.sqrt (A020729 n)

end

end A221945.P3962111353358976729

namespace A221945

/-- `A000035(52*n)+floor(sqrt(A020729(n)))` -/
def P3962111353358976729.Spec : Prop :=
  ∀ n, P3962111353358976729.a n = A221945 n

end A221945

/-! ## A221945.P15488071897846296311

`floor(sqrt(A020729(n)))/A014963(12*(n+1))`
-/

namespace A221945.P15488071897846296311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A020729 n) : ℚ) / (A014963 (12 * (n + 1)) : ℚ)

end

end A221945.P15488071897846296311

namespace A221945

/-- `floor(sqrt(A020729(n)))/A014963(12*(n+1))` -/
def P15488071897846296311.Spec : Prop :=
  ∀ n, P15488071897846296311.a n = (A221945 n : ℚ)

end A221945

/-! ## A221945.P8225582651530607806

`record[floor(sqrt(2*A227076(n)))]`
-/

namespace A221945.P8225582651530607806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A227076 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221945.P8225582651530607806

namespace A221945

/-- `record[floor(sqrt(2*A227076(n)))]` -/
def P8225582651530607806.Spec : Prop :=
  ∀ n, P8225582651530607806.a n = A221945 n

end A221945

/-!
# A221946: a(n) = floor(sqrt(2*7^n)).

The programs for A221946, the canonical program `A221946.P4813181972378743763` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221946 has offset 0).

The definition of A221946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*7^n))` (program `A221946.P4813181972378743763`, by `A221946.P4813181972378743763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221946.P4813181972378743763

`floor(sqrt(2*7^n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221946

/-- `floor(sqrt(2*7^n))` -/
def P4813181972378743763.Spec : Prop :=
  ∀ n, (P4813181972378743763.a n : ℤ) = A221946 n

theorem P4813181972378743763.correct : P4813181972378743763.Spec := by
  intro n
  simp only [A221946]

end A221946

/-! ## A221946.P5421855128542756280

`ceil(sqrt(2)*sqrt(7^n)-gcd(n, n+1))`
-/

namespace A221946.P5421855128542756280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * Real.sqrt (7 ^ n : ℝ) - (Nat.gcd n (n + 1) : ℝ)⌉

end

end A221946.P5421855128542756280

namespace A221946

/-- `ceil(sqrt(2)*sqrt(7^n)-gcd(n, n+1))` -/
def P5421855128542756280.Spec : Prop :=
  ∀ n, P5421855128542756280.a n = A221946 n

end A221946

/-! ## A221946.P7119465131550346054

`ceil(sqrt(A199416(n)))-1`
-/

namespace A221946.P7119465131550346054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A199416 n : ℝ)⌉ - 1

end

end A221946.P7119465131550346054

namespace A221946

/-- `ceil(sqrt(A199416(n)))-1` -/
def P7119465131550346054.Spec : Prop :=
  ∀ n, P7119465131550346054.a n = A221946 n

end A221946

/-! ## A221946.P4489653509348043885

`ceil(sqrt(2*A000420(n)))-1`
-/

namespace A221946.P4489653509348043885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A000420 n : ℝ)⌉ - 1

end

end A221946.P4489653509348043885

namespace A221946

/-- `ceil(sqrt(2*A000420(n)))-1` -/
def P4489653509348043885.Spec : Prop :=
  ∀ n, P4489653509348043885.a n = A221946 n

end A221946

/-! ## A221946.P13781851193731823449

`A033999(n)²*floor(sqrt(A109808(n+1)))`
-/

namespace A221946.P13781851193731823449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * Int.sqrt (A109808 (n + 1))

end

end A221946.P13781851193731823449

namespace A221946

/-- `A033999(n)²*floor(sqrt(A109808(n+1)))` -/
def P13781851193731823449.Spec : Prop :=
  ∀ n, P13781851193731823449.a n = A221946 n

end A221946

/-! ## A221946.P17700295029145769813

`A000035(2*(n+1))+floor(sqrt(A109808(n+1)))`
-/

namespace A221946.P17700295029145769813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) + Int.sqrt (A109808 (n + 1))

end

end A221946.P17700295029145769813

namespace A221946

/-- `A000035(2*(n+1))+floor(sqrt(A109808(n+1)))` -/
def P17700295029145769813.Spec : Prop :=
  ∀ n, P17700295029145769813.a n = A221946 n

end A221946

/-! ## A221946.P14617810273308208411

`floor(sqrt(A109808(n+1)))*A000034(2*(n+1))`
-/

namespace A221946.P14617810273308208411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A109808 (n + 1)) * A000034 (2 * (n + 1))

end

end A221946.P14617810273308208411

namespace A221946

/-- `floor(sqrt(A109808(n+1)))*A000034(2*(n+1))` -/
def P14617810273308208411.Spec : Prop :=
  ∀ n, P14617810273308208411.a n = A221946 n

end A221946

/-! ## A221946.P1985294659118282782

`(2*A059841(n)-1)²*floor(sqrt(A109808(n+1)))`
-/

namespace A221946.P1985294659118282782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A059841 n - 1) ^ 2 * Int.sqrt (A109808 (n + 1))

end

end A221946.P1985294659118282782

namespace A221946

/-- `(2*A059841(n)-1)²*floor(sqrt(A109808(n+1)))` -/
def P1985294659118282782.Spec : Prop :=
  ∀ n, P1985294659118282782.a n = A221946 n

end A221946

/-!
# A221948: Expansion of (x-5*x^2+11*x^3-12*x^4+7*x^5-2*x^6+x^7) / (1-6*x+15*x^2-20*x^3+15*x^4-6*x^5+x^6).

The programs for A221948, the canonical program `A221948.P13587968366603810424` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221948 has offset 0).

The definition of A221948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-5x^2+11x^3-12x^4+7x^5-2x^6+x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A221948.P13587968366603810424`, by `A221948.P13587968366603810424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221948.P13587968366603810424

`ogf((x-5x^2+11x^3-12x^4+7x^5-2x^6+x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221948

/-- `ogf((x-5x^2+11x^3-12x^4+7x^5-2x^6+x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13587968366603810424.Spec : Prop :=
  ∀ n, P13587968366603810424.a n = A221948 n

theorem P13587968366603810424.correct : P13587968366603810424.Spec := by
  intro n
  simp only [A221948]

end A221948

/-! ## A221948.P16531155145963023501

`A057703(A289207(n))+A050407(n)`
-/

namespace A221948.P16531155145963023501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 (A289207 n).toNat + A050407 n

end

end A221948.P16531155145963023501

namespace A221948

/-- `A057703(A289207(n))+A050407(n)` -/
def P16531155145963023501.Spec : Prop :=
  ∀ n, P16531155145963023501.a n = A221948 n

end A221948

/-! ## A221948.P515980068056489632

`A023193(A296268(n))-A253909(n)`
-/

namespace A221948.P515980068056489632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A296268 n).toNat - A253909 n

end

end A221948.P515980068056489632

namespace A221948

/-- `A023193(A296268(n))-A253909(n)` -/
def P515980068056489632.Spec : Prop :=
  ∀ n, P515980068056489632.a n = A221948 n

end A221948

/-! ## A221948.P7115525766553594357

`A002024(3^n+5*n)-(2*n+1)`
-/

namespace A221948.P7115525766553594357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (3 ^ n + 5 * n) - (2 * n + 1 : ℤ)

end

end A221948.P7115525766553594357

namespace A221948

/-- `A002024(3^n+5*n)-(2*n+1)` -/
def P7115525766553594357.Spec : Prop :=
  ∀ n, P7115525766553594357.a n = A221948 n

end A221948

/-! ## A221948.P5351803419269346085

`A202304(A308114(n))-A004001(n+1)`
-/

namespace A221948.P5351803419269346085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A308114 n).toNat - A004001 (n + 1)

end

end A221948.P5351803419269346085

namespace A221948

/-- `A202304(A308114(n))-A004001(n+1)` -/
def P5351803419269346085.Spec : Prop :=
  ∀ n, P5351803419269346085.a n = A221948 n

end A221948

/-!
# A221949: Expansion of (-x+2*x^2-x^3-x^4-2*x^5)/(-1+3*x-2*x^2-x^4+x^5).

The programs for A221949, the canonical program `A221949.P1150558448606389358` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221949 has offset 0).

The definition of A221949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3+x^4+2x^5)/(1-3x+2x^2+x^4-x^5))` (program `A221949.P1150558448606389358`, by `A221949.P1150558448606389358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221949.P1150558448606389358

`ogf((x-2x^2+x^3+x^4+2x^5)/(1-3x+2x^2+x^4-x^5))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221949

/-- `ogf((x-2x^2+x^3+x^4+2x^5)/(1-3x+2x^2+x^4-x^5))` -/
def P1150558448606389358.Spec : Prop :=
  ∀ n, P1150558448606389358.a n = A221949 n

theorem P1150558448606389358.correct : P1150558448606389358.Spec := by
  intro n
  simp only [A221949]

end A221949

/-! ## A221949.P1173051274178585841

`a(n-2)+A089068(n)-2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A221949.P1173051274178585841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + (A089068 n - 2)

end

end A221949.P1173051274178585841

namespace A221949

/-- `a(n-2)+A089068(n)-2` -/
def P1173051274178585841.Spec : Prop :=
  ∀ n, P1173051274178585841.a n = A221949 n

end A221949

/-! ## A221949.P535980806650894140

`∑[A134824(n)+∑[A000073(n)]]`
-/

namespace A221949.P535980806650894140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221949.P535980806650894140

namespace A221949

/-- `∑[A134824(n)+∑[A000073(n)]]` -/
def P535980806650894140.Spec : Prop :=
  ∀ n, P535980806650894140.a n = A221949 n

end A221949

/-! ## A221949.P12804967809257822029

`A007800(A028310(n))-abs(1-n)`
-/

namespace A221949.P12804967809257822029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (A028310 n).toNat - |1 - (n : ℤ)|

end

end A221949.P12804967809257822029

namespace A221949

/-- `A007800(A028310(n))-abs(1-n)` -/
def P12804967809257822029.Spec : Prop :=
  ∀ n, P12804967809257822029.a n = A221949 n

end A221949

/-! ## A221949.P3404537696527490871

`A325473(n+2)-A233583(Δ[n²])`
-/

namespace A221949.P3404537696527490871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (n + 2) - A233583 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A221949.P3404537696527490871

namespace A221949

/-- `A325473(n+2)-A233583(Δ[n²])` -/
def P3404537696527490871.Spec : Prop :=
  ∀ n, P3404537696527490871.a n = A221949 n

end A221949

/-! ## A221949.P8104244763042274210

`A007800(A065033(2*n))-abs(1-n)`
-/

namespace A221949.P8104244763042274210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (A065033 (2 * n)).toNat - |1 - (n : ℤ)|

end

end A221949.P8104244763042274210

namespace A221949

/-- `A007800(A065033(2*n))-abs(1-n)` -/
def P8104244763042274210.Spec : Prop :=
  ∀ n, P8104244763042274210.a n = A221949 n

end A221949

/-! ## A221949.P13284875816672520713

`A325473(A065475(n+1))-A004277(n)`
-/

namespace A221949.P13284875816672520713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (A065475 (n + 1)).toNat - A004277 n

end

end A221949.P13284875816672520713

namespace A221949

/-- `A325473(A065475(n+1))-A004277(n)` -/
def P13284875816672520713.Spec : Prop :=
  ∀ n, P13284875816672520713.a n = A221949 n

end A221949

/-! ## A221949.P17546710043383981312

`A325473(A114637(n+1))-A004277(n)`
-/

namespace A221949.P17546710043383981312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (A114637 (n + 1)).toNat - A004277 n

end

end A221949.P17546710043383981312

namespace A221949

/-- `A325473(A114637(n+1))-A004277(n)` -/
def P17546710043383981312.Spec : Prop :=
  ∀ n, P17546710043383981312.a n = A221949 n

end A221949

/-!
# A221950: Expansion of g.f. 1/(1 - x - x^2 - 2*x^3 - 3*x^4 - 2*x^5 - x^6).

The programs for A221950, the canonical program `A221950.P16990012610685345470` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221950 has offset 0).

The definition of A221950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-2x^3-3x^4-2x^5-x^6))` (program `A221950.P16990012610685345470`, by `A221950.P16990012610685345470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221950.P16990012610685345470

`ogf(1/(1-x-x^2-2x^3-3x^4-2x^5-x^6))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221950

/-- `ogf(1/(1-x-x^2-2x^3-3x^4-2x^5-x^6))` -/
def P16990012610685345470.Spec : Prop :=
  ∀ n, P16990012610685345470.a n = A221950 n

theorem P16990012610685345470.correct : P16990012610685345470.Spec := by
  intro n
  simp only [A221950]

end A221950

/-! ## A221950.P14435340568753833735

`A006054(A032555(n+1))+C(4, n)!%2`
-/

namespace A221950.P14435340568753833735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (A032555 (n + 1)).toNat + ((Nat.factorial (Nat.choose 4 n) % 2 : ℕ) : ℤ)

end

end A221950.P14435340568753833735

namespace A221950

/-- `A006054(A032555(n+1))+C(4, n)!%2` -/
def P14435340568753833735.Spec : Prop :=
  ∀ n, P14435340568753833735.a n = A221950 n

end A221950

/-! ## A221950.P5324156635842004530

`A249728(A176956(n)-A202149(n+2))`
-/

namespace A221950.P5324156635842004530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A176956 n - A202149 (n + 2)).toNat

end

end A221950.P5324156635842004530

namespace A221950

/-- `A249728(A176956(n)-A202149(n+2))` -/
def P5324156635842004530.Spec : Prop :=
  ∀ n, P5324156635842004530.a n = A221950 n

end A221950

/-! ## A221950.P3449594640239686172

`A187069(2*(n+1))+A023532(A347003(n))`
-/

namespace A221950.P3449594640239686172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * (n + 1)) + A023532 (A347003 n).toNat

end

end A221950.P3449594640239686172

namespace A221950

/-- `A187069(2*(n+1))+A023532(A347003(n))` -/
def P3449594640239686172.Spec : Prop :=
  ∀ n, P3449594640239686172.a n = A221950 n

end A221950

/-!
# A221951: Number of subgroups of C_4 X C_n.

The programs for A221951, the canonical program `A221951.P860439574050995485` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221951 has offset 1).

The definition of A221951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221951.P860439574050995485

`∑{d}[n+1, or(1, gcd(4, #)+2)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221951

/-- `∑{d}[n+1, or(1, gcd(4, #)+2)]` -/
def P860439574050995485.Spec : Prop :=
  ∀ n, (P860439574050995485.a n : ℤ) = A221951 (n + 1)

theorem P860439574050995485.correct : P860439574050995485.Spec := by
  intro n
  simp only [A221951, Nat.add_sub_cancel]

end A221951

/-! ## A221951.P15297330120048918112

`∑{d}[n+1, A073653(gcd(#, n+5))]`
-/

namespace A221951.P15297330120048918112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073653 (Nat.gcd d (n + 5))

end

end A221951.P15297330120048918112

namespace A221951

/-- `∑{d}[n+1, A073653(gcd(#, n+5))]` -/
def P15297330120048918112.Spec : Prop :=
  ∀ n, P15297330120048918112.a n = A221951 (n + 1)

end A221951

/-! ## A221951.P5088543947075695375

`4*A239614(n+1)-A112329(n+1)`
-/

namespace A221951.P5088543947075695375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A239614 (n + 1) - A112329 (n + 1)

end

end A221951.P5088543947075695375

namespace A221951

/-- `4*A239614(n+1)-A112329(n+1)` -/
def P5088543947075695375.Spec : Prop :=
  ∀ n, P5088543947075695375.a n = A221951 (n + 1)

end A221951

/-! ## A221951.P951096739290680397

`∑{d}[n+1, A244609(2*#+#)]`
-/

namespace A221951.P951096739290680397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244609 (2 * d + d)

end

end A221951.P951096739290680397

namespace A221951

/-- `∑{d}[n+1, A244609(2*#+#)]` -/
def P951096739290680397.Spec : Prop :=
  ∀ n, P951096739290680397.a n = A221951 (n + 1)

end A221951

/-! ## A221951.P9427978411650736205

`A216624(∑[n+4]+3)`
-/

namespace A221951.P9427978411650736205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221951.P9427978411650736205

namespace A221951

/-- `A216624(∑[n+4]+3)` -/
def P9427978411650736205.Spec : Prop :=
  ∀ n, P9427978411650736205.a n = A221951 (n + 1)

end A221951

/-!
# A221952: Number of subgroups of C_5 X C_n.

The programs for A221952, there is no canonical definition to state claims against.
-/

/-! ## A221952.P1694209036406810663

`∑{d}[n+1, gcd(5, #)+1]`
-/

namespace A221952.P1694209036406810663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.gcd 5 d + 1)

end

end A221952.P1694209036406810663

/-! ## A221952.P6688487178803459031

`A216624(∑[n+5]+6)`
-/

namespace A221952.P6688487178803459031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221952.P6688487178803459031

/-! ## A221952.P15679228281543178447

`∑{d}[n+1, A109009(#)+1]`
-/

namespace A221952.P15679228281543178447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A109009 d + 1)

end

end A221952.P15679228281543178447

/-! ## A221952.P2075277522878050321

`lcm(2, A216624(A046691(n+3)))`
-/

namespace A221952.P2075277522878050321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A216624 (A046691 (n + 3)).toNat)

end

end A221952.P2075277522878050321

/-! ## A221952.P2265724084774528917

`A216624(A000124(n+4)+4)%55`
-/

namespace A221952.P2265724084774528917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216624 (A000124 (n + 4) + 4).toNat) 55

end

end A221952.P2265724084774528917

/-! ## A221952.P3154375285165113935

`A216624(Δ[A023545(n+1)])%(n+12)`
-/

namespace A221952.P3154375285165113935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216624 (f1 (n + 1) - f1 n).toNat) (n + 12 : ℤ)

end

end A221952.P3154375285165113935

/-! ## A221952.P17023825660245775444

`∑{d}[A216624(A046691(n+3)), A000010(#)]`
-/

namespace A221952.P17023825660245775444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (A046691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A221952.P17023825660245775444

/-! ## A221952.P14747747387508231730

`A216624(A046691(n+3))%A000041(n+6)`
-/

namespace A221952.P14747747387508231730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216624 (A046691 (n + 3)).toNat) (A000041 (n + 6))

end

end A221952.P14747747387508231730

/-! ## A221952.P16249478802761817464

`A007318(and(2, n-2))*A216624(A000124(n+4)+4)`
-/

namespace A221952.P16249478802761817464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A216624 (A000124 (n + 4) + 4).toNat

end

end A221952.P16249478802761817464

/-! ## A221952.P2231891299501062197

`A000041(gcd(n, n+1))*A216624(A000124(n+4)+4)`
-/

namespace A221952.P2231891299501062197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A216624 (A000124 (n + 4) + 4).toNat

end

end A221952.P2231891299501062197

/-!
# A221953: a(n) = 5^(n-1) * n! * Catalan(n-1).

The programs for A221953, the canonical program `A221953.P6989884417478687381` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221953 has offset 1).

The definition of A221953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221953.P6989884417478687381

`10*(2*(n+1)-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221953

/-- `10*(2*(n+1)-3)*a(n-1)` -/
def P6989884417478687381.Spec : Prop :=
  ∀ n, P6989884417478687381.a n = A221953 (n + 1)

theorem P6989884417478687381.correct : P6989884417478687381.Spec := by
  intro n
  simp only [A221953, Nat.add_sub_cancel]

end A221953

/-! ## A221953.P4150964788360587523

`∏[a(n-1)+20]` with `a(0)=1, a(1)=10`
-/

namespace A221953.P4150964788360587523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A221953.P4150964788360587523

namespace A221953

/-- `∏[a(n-1)+20]` -/
def P4150964788360587523.Spec : Prop :=
  ∀ n, (P4150964788360587523.a n : ℤ) = A221953 (n + 1)

end A221953

/-! ## A221953.P11125434726640191971

`10^n*∏[abs(1-2*n)]`
-/

namespace A221953.P11125434726640191971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A221953.P11125434726640191971

namespace A221953

/-- `10^n*∏[abs(1-2*n)]` -/
def P11125434726640191971.Spec : Prop :=
  ∀ n, P11125434726640191971.a n = A221953 (n + 1)

end A221953

/-! ## A221953.P10884406724323779161

`record[(n-2)*10*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A221953.P10884406724323779161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n : ℤ) - 2) * (10 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221953.P10884406724323779161

namespace A221953

/-- `record[(n-2)*10*a(n-2)]` -/
def P10884406724323779161.Spec : Prop :=
  ∀ n, P10884406724323779161.a n = A221953 (n + 1)

end A221953

/-! ## A221953.P10431647899114199199

`floor(10*(2*n-1)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A221953.P10431647899114199199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * (((2 * n : ℤ) - 1) * a (n - 1))

end

end A221953.P10431647899114199199

namespace A221953

/-- `floor(10*(2*n-1)*a(n-1))` -/
def P10431647899114199199.Spec : Prop :=
  ∀ n, P10431647899114199199.a n = A221953 (n + 1)

theorem P10431647899114199199.correct : P10431647899114199199.Spec := by
  intro n
  simp only [A221953, Nat.add_sub_cancel, A221953.P10431647899114199199.a, A221953.P6989884417478687381.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A221953

/-!
# A221954: a(n) = 3^(n-1) * n! * Catalan(n-1).

The programs for A221954, the canonical program `A221954.P5832059044322642165` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221954 has offset 1).

The definition of A221954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221954.P5832059044322642165

`6*(2*(n+1)-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221954

/-- `6*(2*(n+1)-3)*a(n-1)` -/
def P5832059044322642165.Spec : Prop :=
  ∀ n, P5832059044322642165.a n = A221954 (n + 1)

theorem P5832059044322642165.correct : P5832059044322642165.Spec := by
  intro n
  simp only [A221954, Nat.add_sub_cancel]

end A221954

/-! ## A221954.P14011223474315111518

`(12*n-6)*a(n-1)` with `a(0)=1`
-/

namespace A221954.P14011223474315111518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((12 * n : ℤ) - 6) * a (n - 1)

end

end A221954.P14011223474315111518

namespace A221954

/-- `(12*n-6)*a(n-1)` -/
def P14011223474315111518.Spec : Prop :=
  ∀ n, P14011223474315111518.a n = A221954 (n + 1)

theorem P14011223474315111518.correct : P14011223474315111518.Spec := by
  intro n
  simp only [A221954, Nat.add_sub_cancel, A221954.P14011223474315111518.a, A221954.P5832059044322642165.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A221954

/-! ## A221954.P11213626071213761283

`6^n*∏[abs(1-2*n)]`
-/

namespace A221954.P11213626071213761283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A221954.P11213626071213761283

namespace A221954

/-- `6^n*∏[abs(1-2*n)]` -/
def P11213626071213761283.Spec : Prop :=
  ∀ n, P11213626071213761283.a n = A221954 (n + 1)

end A221954

/-! ## A221954.P12625131267941837111

`∏[record[A298026(n)]]`
-/

namespace A221954.P12625131267941837111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A221954.P12625131267941837111

namespace A221954

/-- `∏[record[A298026(n)]]` -/
def P12625131267941837111.Spec : Prop :=
  ∀ n, P12625131267941837111.a n = A221954 (n + 1)

end A221954

/-! ## A221954.P1804952076570467309

`∏[record[A064680(xor(1, 3*n)+1)]]`
-/

namespace A221954.P1804952076570467309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Nat.xor 1 (3 * n) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A221954.P1804952076570467309

namespace A221954

/-- `∏[record[A064680(xor(1, 3*n)+1)]]` -/
def P1804952076570467309.Spec : Prop :=
  ∀ n, P1804952076570467309.a n = A221954 (n + 1)

end A221954

/-!
# A221955: a(n) = 6^(n-1) * n! * Catalan(n-1).

The programs for A221955, the canonical program `A221955.P14968203227621181821` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221955 has offset 1).

The definition of A221955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221955.P14968203227621181821

`12*(2*(n+1)-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221955

/-- `12*(2*(n+1)-3)*a(n-1)` -/
def P14968203227621181821.Spec : Prop :=
  ∀ n, P14968203227621181821.a n = A221955 (n + 1)

theorem P14968203227621181821.correct : P14968203227621181821.Spec := by
  intro n
  simp only [A221955, Nat.add_sub_cancel]

end A221955

/-! ## A221955.P14733902959244911026

`6*a(n-1)*record[lcm(2, n)]` with `a(0)=1`
-/

namespace A221955.P14733902959244911026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221955.P14733902959244911026

namespace A221955

/-- `6*a(n-1)*record[lcm(2, n)]` -/
def P14733902959244911026.Spec : Prop :=
  ∀ n, (P14733902959244911026.a n : ℤ) = A221955 (n + 1)

end A221955

/-! ## A221955.P6312919261686505310

`6^n*C(2*n, n)*n!`
-/

namespace A221955.P6312919261686505310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (2 * n) n * Nat.factorial n

end

end A221955.P6312919261686505310

namespace A221955

/-- `6^n*C(2*n, n)*n!` -/
def P6312919261686505310.Spec : Prop :=
  ∀ n, (P6312919261686505310.a n : ℤ) = A221955 (n + 1)

end A221955

/-! ## A221955.P14458443986126051156

`6^n*∏[floor(abs(4*n-ϕ))]`
-/

namespace A221955.P14458443986126051156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A221955.P14458443986126051156

namespace A221955

/-- `6^n*∏[floor(abs(4*n-ϕ))]` -/
def P14458443986126051156.Spec : Prop :=
  ∀ n, P14458443986126051156.a n = A221955 (n + 1)

end A221955

/-! ## A221955.P12505574480812348745

`∏[record[A298036(n)]]`
-/

namespace A221955.P12505574480812348745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A221955.P12505574480812348745

namespace A221955

/-- `∏[record[A298036(n)]]` -/
def P12505574480812348745.Spec : Prop :=
  ∀ n, P12505574480812348745.a n = A221955 (n + 1)

end A221955

/-!
# A221956: Number of values in the Collatz (3x+1) trajectory starting at n that are also present in the trajectory for some k < n.

The programs for A221956, there is no canonical definition to state claims against.
-/

/-! ## A221956.P17266836172471526519

`A008908(n+1)-A222118(n+1)`
-/

namespace A221956.P17266836172471526519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A222118 (n + 1)

end

end A221956.P17266836172471526519

/-! ## A221956.P14104775760607503629

`A006577(n+1)+1-A222118(n+1)`
-/

namespace A221956.P14104775760607503629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A222118 (n + 1))

end

end A221956.P14104775760607503629

/-! ## A221956.P16436821313795136061

`A058261(n)/(n+1)+1-A222118(n+1)`
-/

namespace A221956.P16436821313795136061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ) + 1 - (A222118 (n + 1) : ℚ)

end

end A221956.P16436821313795136061

/-! ## A221956.P17286450715968981919

`A139399(n+1)+A158799(n)-A222118(n+1)`
-/

namespace A221956.P17286450715968981919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A158799 n - A222118 (n + 1))

end

end A221956.P17286450715968981919

/-! ## A221956.P1267585594731300076

`A076228(n+1)+A213204(n+1)-A222118(n+1)`
-/

namespace A221956.P1267585594731300076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A213204 (n + 1) - A222118 (n + 1))

end

end A221956.P1267585594731300076

/-! ## A221956.P10519794303517871470

`A078350(n+1)+A267830(n+1)-A222118(n+1)`
-/

namespace A221956.P10519794303517871470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1) + (A267830 (n + 1) - A222118 (n + 1))

end

end A221956.P10519794303517871470

/-!
# A221957: Number of n X n rook placements avoiding the pattern 012.

The programs for A221957, there is no canonical definition to state claims against.
-/

/-! ## A221957.P3110521873796620585

`C(2*n-1, n)+n*a(n-1)` with `a(0)=1`
-/

namespace A221957.P3110521873796620585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((2 * n : ℤ) - 1).toNat n + n * a (n - 1)

end

end A221957.P3110521873796620585

/-! ## A221957.P2668806105667355089

`A088218(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A221957.P2668806105667355089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088218 n + (n : ℤ) * a (n - 1)

end

end A221957.P2668806105667355089

/-! ## A221957.P17683283077513676046

`record[A138364(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A221957.P17683283077513676046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * a (n - 1)

end

end A221957.P17683283077513676046

/-! ## A221957.P348316345743684656

`A007318(2*n²)+n*a(n-1)` with `a(0)=1`
-/

namespace A221957.P348316345743684656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (2 * n ^ 2) + (n : ℤ) * a (n - 1)

end

end A221957.P348316345743684656

/-! ## A221957.P8261844660097806604

`n*a(n-1)+A005317(n)-A011782(n)` with `a(0)=1`
-/

namespace A221957.P8261844660097806604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A005317 n - A011782 n)

end

end A221957.P8261844660097806604

/-! ## A221957.P14226896807770944143

`n*a(n-1)+A004273(n)*A120588(n)` with `a(0)=1`
-/

namespace A221957.P14226896807770944143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + A004273 n * A120588 n

end

end A221957.P14226896807770944143

/-!
# A221958: Number of n X n rook placements avoiding the pattern 102.

The programs for A221958, there is no canonical definition to state claims against.
-/

/-! ## A221958.P13339358571021548954

`A289494(∑[A225309(n+1)])`
-/

namespace A221958.P13339358571021548954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221958.P13339358571021548954

/-! ## A221958.P724606311482570810

`or(abs(1-n), A034888(A052183(n)))`
-/

namespace A221958.P724606311482570810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - (n : ℤ)| (A034888 (A052183 n).toNat)

end

end A221958.P724606311482570810

/-!
# A221961: Number of n X n symmetric lonesum ternary matrices.

The programs for A221961, there is no canonical definition to state claims against.
-/

/-! ## A221961.P6593690955696415118

`∑[A261366(Δ[A087547(n)])]`
-/

namespace A221961.P6593690955696415118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221961.P6593690955696415118

/-!
# A221962: Number of -3..3 arrays of length n with the sum ahead of each element differing from the sum following that element by 3 or less.

The programs for A221962, the canonical program `A221962.P6706740822257816908` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221962 has offset 1).

The definition of A221962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221962.P6706740822257816908

`3*a(n-1)+8*a(n-2)-4*a(n-3)-8*a(n-4)` with `a(0)=7, a(1)=49, a(2)=175, a(3)=833`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221962

/-- `3*a(n-1)+8*a(n-2)-4*a(n-3)-8*a(n-4)` -/
def P6706740822257816908.Spec : Prop :=
  ∀ n, P6706740822257816908.a n = A221962 (n + 1)

theorem P6706740822257816908.correct : P6706740822257816908.Spec := by
  intro n
  simp only [A221962, Nat.add_sub_cancel]

end A221962

/-! ## A221962.P1483276052169229386

`A221967(∑[n+3]+1)`
-/

namespace A221962.P1483276052169229386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221962.P1483276052169229386

namespace A221962

/-- `A221967(∑[n+3]+1)` -/
def P1483276052169229386.Spec : Prop :=
  ∀ n, P1483276052169229386.a n = A221962 (n + 1)

end A221962

/-! ## A221962.P15984460962218219220

`lcm(7, A221967(Δ[A008778(n)]))`
-/

namespace A221962.P15984460962218219220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A221967 (f1 (n + 1) - f1 n).toNat)

end

end A221962.P15984460962218219220

namespace A221962

/-- `lcm(7, A221967(Δ[A008778(n)]))` -/
def P15984460962218219220.Spec : Prop :=
  ∀ n, (P15984460962218219220.a n : ℤ) = A221962 (n + 1)

end A221962

/-! ## A221962.P8290059144738323569

`A001511(10*n+1)*A221967(Δ[A008778(n)])`
-/

namespace A221962.P8290059144738323569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (10 * n + 1) * A221967 (f1 (n + 1) - f1 n).toNat

end

end A221962.P8290059144738323569

namespace A221962

/-- `A001511(10*n+1)*A221967(Δ[A008778(n)])` -/
def P8290059144738323569.Spec : Prop :=
  ∀ n, P8290059144738323569.a n = A221962 (n + 1)

end A221962

/-! ## A221962.P7855438811574640262

`A221967(Δ[A008778(n)])+A008683(60*(n+1))`
-/

namespace A221962.P7855438811574640262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (f1 (n + 1) - f1 n).toNat + A008683 (60 * (n + 1))

end

end A221962.P7855438811574640262

namespace A221962

/-- `A221967(Δ[A008778(n)])+A008683(60*(n+1))` -/
def P7855438811574640262.Spec : Prop :=
  ∀ n, P7855438811574640262.a n = A221962 (n + 1)

end A221962

/-!
# A221963: Number of -4..4 arrays of length n with the sum ahead of each element differing from the sum following that element by 4 or less.

The programs for A221963, there is no canonical definition to state claims against.
-/

/-! ## A221963.P5042264851988582576

`A221967(A141214(n+1))`
-/

namespace A221963.P5042264851988582576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A141214 (n + 1)).toNat

end

end A221963.P5042264851988582576

/-! ## A221963.P18428413793824834107

`A221967(A027379(n+2))`
-/

namespace A221963.P18428413793824834107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A027379 (n + 2)).toNat

end

end A221963.P18428413793824834107

/-! ## A221963.P3911943814827549079

`A221967(A055998(n+2))`
-/

namespace A221963.P3911943814827549079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A055998 (n + 2)).toNat

end

end A221963.P3911943814827549079

/-! ## A221963.P17420962449313014485

`A221967(A155212(n)+5)`
-/

namespace A221963.P17420962449313014485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A155212 n + 5).toNat

end

end A221963.P17420962449313014485

/-! ## A221963.P4998260242862724770

`A221967(A056000(n)+7)`
-/

namespace A221963.P4998260242862724770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A056000 n + 7).toNat

end

end A221963.P4998260242862724770

/-!
# A221964: Number of -5..5 arrays of length n with the sum ahead of each element differing from the sum following that element by 5 or less.

The programs for A221964, there is no canonical definition to state claims against.
-/

/-! ## A221964.P8680760877403587324

`A221967(A000217(n+5)-4)`
-/

namespace A221964.P8680760877403587324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000217 (n + 5) - 4).toNat

end

end A221964.P8680760877403587324

/-! ## A221964.P6077295660753659206

`A221967(A000124(n+5)-5)`
-/

namespace A221964.P6077295660753659206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000124 (n + 5) - 5).toNat

end

end A221964.P6077295660753659206

/-! ## A221964.P16297136764872851663

`A221967(A052905(n)+2*(n+5))`
-/

namespace A221964.P16297136764872851663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A052905 n + (2 * (n + 5) : ℤ)).toNat

end

end A221964.P16297136764872851663

/-! ## A221964.P5883594560460980200

`A221967(Δ[A268581(n)+A000292(n)])`
-/

namespace A221964.P5883594560460980200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n + A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (f1 (n + 1) - f1 n).toNat

end

end A221964.P5883594560460980200

/-! ## A221964.P3805527769444857190

`A221967(A016825(n)+A167487(n)+1)`
-/

namespace A221964.P3805527769444857190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A016825 n + (A167487 n + 1)).toNat

end

end A221964.P3805527769444857190

/-!
# A221965: Number of -6..6 arrays of length n with the sum ahead of each element differing from the sum following that element by 6 or less.

The programs for A221965, there is no canonical definition to state claims against.
-/

/-! ## A221965.P14289250615992903803

`A221967(∑[n+6]+10)`
-/

namespace A221965.P14289250615992903803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A221965.P14289250615992903803

/-! ## A221965.P2303990595070866940

`or(1, A221967(A000124(n+6)-6))`
-/

namespace A221965.P2303990595070866940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A221967 (A000124 (n + 6) - 6).toNat)

end

end A221965.P2303990595070866940

/-! ## A221965.P13531402997310496078

`abs(A020985(n)*A221967(A000124(n+6)-6))`
-/

namespace A221965.P13531402997310496078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A221967 (A000124 (n + 6) - 6).toNat|

end

end A221965.P13531402997310496078

/-! ## A221965.P4386251977876538736

`char[A000360(n)]*A221967(A000124(n+6)-6)`
-/

namespace A221965.P4386251977876538736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A221967 (A000124 (n + 6) - 6).toNat

end

end A221965.P4386251977876538736

/-! ## A221965.P7458438511409080190

`A221967(A000124(n+6)-6)+A000007(n+1)`
-/

namespace A221965.P7458438511409080190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000124 (n + 6) - 6).toNat + A000007 (n + 1)

end

end A221965.P7458438511409080190

/-!
# A221966: Number of -7..7 arrays of length n with the sum ahead of each element differing from the sum following that element by 7 or less.

The programs for A221966, there is no canonical definition to state claims against.
-/

/-! ## A221966.P15930845130017783709

`A221967(A155212(n+3)+2)`
-/

namespace A221966.P15930845130017783709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A155212 (n + 3) + 2).toNat

end

end A221966.P15930845130017783709

/-! ## A221966.P12171336319220165316

`A221967(A000124(n+7)-7)`
-/

namespace A221966.P12171336319220165316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000124 (n + 7) - 7).toNat

end

end A221966.P12171336319220165316

/-! ## A221966.P7160671146271414942

`A221967(A000217(n+6)+n+1)`
-/

namespace A221966.P7160671146271414942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A221966.P7160671146271414942

/-! ## A221966.P13434231047737216788

`A221967(A055999(n+3)+n+7)`
-/

namespace A221966.P13434231047737216788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A055999 (n + 3) + (n + 7 : ℤ)).toNat

end

end A221966.P13434231047737216788

/-! ## A221966.P11313479111773388072

`A221967(n+2-A080956(n+7))`
-/

namespace A221966.P11313479111773388072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 ((n + 2 : ℤ) - A080956 (n + 7)).toNat

end

end A221966.P11313479111773388072

/-!
# A221968: Number of -n..n arrays of length 5 with the sum ahead of each element differing from the sum following that element by n or less.

The programs for A221968, the canonical program `A221968.P12096907961443077317` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221968 has offset 1).

The definition of A221968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221968.P12096907961443077317

`(2*n+3)*A107731(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A221968

/-- `(2*n+3)*A107731(n+1)` -/
def P12096907961443077317.Spec : Prop :=
  ∀ n, P12096907961443077317.a n = A221968 (n + 1)

theorem P12096907961443077317.correct : P12096907961443077317.Spec := by
  intro n
  simp only [A221968, Nat.add_sub_cancel]

end A221968

/-! ## A221968.P12642140993147557226

`A221967(A155212(n)+13)`
-/

namespace A221968.P12642140993147557226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A155212 n + 13).toNat

end

end A221968.P12642140993147557226

namespace A221968

/-- `A221967(A155212(n)+13)` -/
def P12642140993147557226.Spec : Prop :=
  ∀ n, P12642140993147557226.a n = A221968 (n + 1)

end A221968

/-! ## A221968.P13077650846116554600

`A221967(A056000(n)+15)`
-/

namespace A221968.P13077650846116554600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A056000 n + 15).toNat

end

end A221968.P13077650846116554600

namespace A221968

/-- `A221967(A056000(n)+15)` -/
def P13077650846116554600.Spec : Prop :=
  ∀ n, P13077650846116554600.a n = A221968 (n + 1)

end A221968

/-! ## A221968.P2990495428016810708

`A221967(A000217(n+4)+5)`
-/

namespace A221968.P2990495428016810708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000217 (n + 4) + 5).toNat

end

end A221968.P2990495428016810708

namespace A221968

/-- `A221967(A000217(n+4)+5)` -/
def P2990495428016810708.Spec : Prop :=
  ∀ n, P2990495428016810708.a n = A221968 (n + 1)

end A221968

/-!
# A221969: Number of -n..n arrays of length 6 with the sum ahead of each element differing from the sum following that element by n or less.

The programs for A221969, there is no canonical definition to state claims against.
-/

/-! ## A221969.P9503325204961622958

`A221967(A000124(n+5)+5)`
-/

namespace A221969.P9503325204961622958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000124 (n + 5) + 5).toNat

end

end A221969.P9503325204961622958

/-! ## A221969.P17766235675123118414

`A221967(A000217(n+5)+6)`
-/

namespace A221969.P17766235675123118414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000217 (n + 5) + 6).toNat

end

end A221969.P17766235675123118414

/-! ## A221969.P11888510311686022176

`A221967(A034856(n+4)+8)`
-/

namespace A221969.P11888510311686022176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A034856 (n + 4) + 8).toNat

end

end A221969.P11888510311686022176

/-! ## A221969.P10386382589635720241

`A221967(A167487(n)+A016825(n)+11)`
-/

namespace A221969.P10386382589635720241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A167487 n + A016825 n + 11).toNat

end

end A221969.P10386382589635720241

/-! ## A221969.P721421921032930197

`A221967(Δ[A103145(n)]+5-A005843(n))`
-/

namespace A221969.P721421921032930197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (f1 (n + 1) - f1 n + 5 - A005843 n).toNat

end

end A221969.P721421921032930197

/-!
# A221970: Number of -n..n arrays of length 7 with the sum ahead of each element differing from the sum following that element by n or less.

The programs for A221970, there is no canonical definition to state claims against.
-/

/-! ## A221970.P17525820643570687611

`A221967(A167499(n+5)+2)`
-/

namespace A221970.P17525820643570687611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A167499 (n + 5) + 2).toNat

end

end A221970.P17525820643570687611

/-! ## A221970.P11927423126192322442

`A221967(A000217(n+6)+7)`
-/

namespace A221970.P11927423126192322442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000217 (n + 6) + 7).toNat

end

end A221970.P11927423126192322442

/-! ## A221970.P6850471911495526259

`A221967(A055999(n+3)+13)`
-/

namespace A221970.P6850471911495526259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A055999 (n + 3) + 13).toNat

end

end A221970.P6850471911495526259

/-! ## A221970.P2086000261912447951

`A221967(A000124(n+7)-(n+1))`
-/

namespace A221970.P2086000261912447951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A221970.P2086000261912447951

/-! ## A221970.P18291953104562170773

`A221967(A155212(n+4)-2*n)`
-/

namespace A221970.P18291953104562170773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221967 (A155212 (n + 4) - (2 * n : ℤ)).toNat

end

end A221970.P18291953104562170773

/-!
# A221971: G.f.: A(x,y) = Sum_{n>=0} n! * x^n*y^n * Product_{k=1..n} (1 + k*x) / (1 + k*x*y + k^2*x^2*y).

The programs for A221971, there is no canonical definition to state claims against.
-/

/-! ## A221971.P12828127170868659258

`A328003(A107131(n)²)`
-/

namespace A221971.P12828127170868659258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A107131 n ^ 2).toNat

end

end A221971.P12828127170868659258

/-! ## A221971.P15031931169885041577

`A135551(4^A107131(n))`
-/

namespace A221971.P15031931169885041577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A107131 n : ℤ))).toNat

end

end A221971.P15031931169885041577

/-! ## A221971.P2432151158825413644

`∑{d}[A107131(n), A006530(#!)]`
-/

namespace A221971.P2432151158825413644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 (Nat.factorial d)

end

end A221971.P2432151158825413644

/-! ## A221971.P6117004944408332675

`A351726(A165995(n+1))`
-/

namespace A221971.P6117004944408332675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351726 (A165995 (n + 1)).toNat

end

end A221971.P6117004944408332675

/-! ## A221971.P9666151013196704168

`A389344(A101023(n+2))`
-/

namespace A221971.P9666151013196704168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389344 (A101023 (n + 2)).toNat

end

end A221971.P9666151013196704168

/-!
# A221972: G.f.: Sum_{n>=0} n! * x^n * Product_{k=1..n} (2*k-1) / (1 + k*(2*k-1)*x).

The programs for A221972, there is no canonical definition to state claims against.
-/

/-! ## A221972.P16705622211863647920

`ceil(A098279(n)/2)`
-/

namespace A221972.P16705622211863647920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098279 n : ℚ) / 2⌉

end

end A221972.P16705622211863647920

/-! ## A221972.P7977279874738763017

`A098279(n)/A020639(A006093(n+1))`
-/

namespace A221972.P7977279874738763017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098279 n : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A221972.P7977279874738763017

/-! ## A221972.P14199741552503183862

`A098279(n)/A000005(A073881(n+1))`
-/

namespace A221972.P14199741552503183862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098279 n : ℚ) / (A000005 (A073881 (n + 1)).toNat : ℚ)

end

end A221972.P14199741552503183862

/-! ## A221972.P2412774818342246700

`A098279(n)/A014963(A029930(n))`
-/

namespace A221972.P2412774818342246700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098279 n : ℚ) / (A014963 (A029930 n).toNat : ℚ)

end

end A221972.P2412774818342246700

/-!
# A221973: G.f.: Sum_{n>=0} n! * x^n * Product_{k=1..n} (3 + k*x)/(1 + 3*k*x + k^2*x^2).

The programs for A221973, there is no canonical definition to state claims against.
-/

/-! ## A221973.P16992095245646471492

`∑[A247915(n*a(n-1)+1)]+1` with `a(0)=0`
-/

namespace A221973.P16992095245646471492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A247915 ((n : ℤ) * f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221973.P16992095245646471492

/-! ## A221973.P1645539344549137492

`A181046(A148787(n+1))`
-/

namespace A221973.P1645539344549137492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181046 (A148787 (n + 1)).toNat

end

end A221973.P1645539344549137492

/-!
# A221974: Numbers n such that A161914(n) = 0.

The programs for A221974, there is no canonical definition to state claims against.
-/

/-! ## A221974.P13744272334641531755

`eq[0, A161914(A028310(n))]`
-/

namespace A221974.P13744272334641531755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221974.P13744272334641531755

/-! ## A221974.P13171002771946735172

`A011760(eq[0, A161914(n+1)])`
-/

namespace A221974.P13171002771946735172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221974.P13171002771946735172

/-! ## A221974.P2737155002854762492

`A020725(eq[0, A161914(n+1)])`
-/

namespace A221974.P2737155002854762492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221974.P2737155002854762492

/-! ## A221974.P6746922836400378474

`A065475(eq[0, A161914(n+1)])`
-/

namespace A221974.P6746922836400378474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221974.P6746922836400378474

/-! ## A221974.P831187053076850751

`eq[0, A161914(A066182(n+1))]`
-/

namespace A221974.P831187053076850751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221974.P831187053076850751

/-!
# A221975: Triangle read by rows of the numbers that are the sum of some consecutive Mersenne numbers A000225.

The programs for A221975, there is no canonical definition to state claims against.
-/

/-! ## A221975.P13596227094255690504

`A081118(n+1)-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A221975.P13596227094255690504
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A221975.P13596227094255690504

/-! ## A221975.P7875681749219853229

`A043569(n+1)-(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A221975.P7875681749219853229
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A221975.P7875681749219853229

/-! ## A221975.P1979615556130619576

`A043765(n+1)-(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A221975.P1979615556130619576
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043765 (n + 1) - (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A221975.P1979615556130619576

/-! ## A221975.P8961151009161300454

`2*A089633(n)+1-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A221975.P8961151009161300454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089633 n + 1 - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A221975.P8961151009161300454

/-! ## A221975.P11476504650500685296

`A089633(comp[∑[n-1]])-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A221975.P11476504650500685296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A221975.P11476504650500685296

/-! ## A221975.P12413553128276754862

`A204985(∑[char[∑[n]]]²-n)-(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A221975.P12413553128276754862
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204985 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ))

end

end A221975.P12413553128276754862

/-! ## A221975.P9889665570318883835

`A011371(2^(comp[∑[n]]-n)-2^(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A221975.P9889665570318883835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) - (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A221975.P9889665570318883835

/-! ## A221975.P12981077388018082253

`A011371(A043569(n+1))`
-/

namespace A221975.P12981077388018082253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A043569 (n + 1)).toNat

end

end A221975.P12981077388018082253

/-! ## A221975.P9240781032901141788

`A011371(A043765(n+1))`
-/

namespace A221975.P9240781032901141788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A043765 (n + 1)).toNat

end

end A221975.P9240781032901141788

/-! ## A221975.P12571049294434746305

`A005187(A089633(n)+1)`
-/

namespace A221975.P12571049294434746305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A089633 n + 1).toNat

end

end A221975.P12571049294434746305

/-!
# A221977: Number of primes of the form (x+1)^7 - x^7 less than 10^n.

The programs for A221977, there is no canonical definition to state claims against.
-/

/-! ## A221977.P8171360157574709640

`∑[A221978(n+1)]`
-/

namespace A221977.P8171360157574709640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221977.P8171360157574709640

/-!
# A221978: Number of primes of the form (x+1)^7 - x^7 having n digits.

The programs for A221978, there is no canonical definition to state claims against.
-/

/-! ## A221978.P2168017396910132472

`Δ[A221977(round(acot(n)+n))]`
-/

namespace A221978.P2168017396910132472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221977 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221978.P2168017396910132472

/-! ## A221978.P9911733232149052953

`Δ[A221977(n^floor(atan(n)))]`
-/

namespace A221978.P9911733232149052953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221977 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221978.P9911733232149052953

/-! ## A221978.P8376395274493644884

`Δ[A221977(abs(1-n)+1)]`
-/

namespace A221978.P8376395274493644884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221977 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221978.P8376395274493644884

/-! ## A221978.P16604299183635371520

`A221977(n+1)-A221977(A028310(n))`
-/

namespace A221978.P16604299183635371520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221977 (n + 1) - A221977 (A028310 n).toNat

end

end A221978.P16604299183635371520

/-!
# A221979: Partial sums of primes of the form (n+1)^7 - n^7.

The programs for A221979, there is no canonical definition to state claims against.
-/

/-! ## A221979.P16115054814161859063

`∑[A121618(n+1)]`
-/

namespace A221979.P16115054814161859063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221979.P16115054814161859063

/-! ## A221979.P12312481253025868485

`∑[A022523(A113826(n+1))]`
-/

namespace A221979.P12312481253025868485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 (A113826 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221979.P12312481253025868485

/-! ## A221979.P613408726292706155

`∑[A022523(A121619(n+1)-1)]`
-/

namespace A221979.P613408726292706155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 (A121619 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221979.P613408726292706155

/-! ## A221979.P5478835879639173139

`∑[record[A121618(A038568(n))]]`
-/

namespace A221979.P5478835879639173139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121618 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221979.P5478835879639173139

/-! ## A221979.P2839901379543151367

`∑[record[A121618(A143182(n))]]`
-/

namespace A221979.P2839901379543151367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121618 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221979.P2839901379543151367

/-! ## A221979.P14467797922390938929

`∑[record[A121618(A137734(n))]]`
-/

namespace A221979.P14467797922390938929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121618 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221979.P14467797922390938929

/-!
# A221980: Number of primes of the form (x+1)^7 - x^7 with x <= 10^n.

The programs for A221980, there is no canonical definition to state claims against.
-/

/-! ## A221980.P17267389745424885742

`A061579(n)+A008620(A014830(n+1))`
-/

namespace A221980.P17267389745424885742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + A008620 (A014830 (n + 1)).toNat

end

end A221980.P17267389745424885742

/-!
# A221981: Primes q = 4*p+1, where p == 2 (mod 5) is also prime.

The programs for A221981, there is no canonical definition to state claims against.
-/

/-! ## A221981.P6980208154265979671

`4*A221982(n+1)+1`
-/

namespace A221981.P6980208154265979671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A221982 (n + 1) + 1

end

end A221981.P6980208154265979671

/-! ## A221981.P4409330935692590288

`∩[A090866(n+1), A142791(n+1)]`
-/

namespace A221981.P4409330935692590288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P4409330935692590288

/-! ## A221981.P13271454797600353374

`∩[A090866(n+1), A139856(n+1)]`
-/

namespace A221981.P13271454797600353374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P13271454797600353374

/-! ## A221981.P15225183206042874819

`∩[A139856(n+1), A286658(n+1)]`
-/

namespace A221981.P15225183206042874819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P15225183206042874819

/-! ## A221981.P4246251915466185460

`∩[A139856(n+1), A352926(n+1)]`
-/

namespace A221981.P4246251915466185460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P4246251915466185460

/-! ## A221981.P1221565044101720775

`∩[A090866(n+1), A142194(n+1)]`
-/

namespace A221981.P1221565044101720775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P1221565044101720775

/-! ## A221981.P9147937226123510614

`∩[A142194(n+1), A286658(n+1)]`
-/

namespace A221981.P9147937226123510614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P9147937226123510614

/-! ## A221981.P9084993780400142413

`∩[A142194(n+1), A352926(n+1)]`
-/

namespace A221981.P9084993780400142413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P9084993780400142413

/-! ## A221981.P13928344503222410945

`∩[A090865(n+1), A139856(n+1)]`
-/

namespace A221981.P13928344503222410945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P13928344503222410945

/-! ## A221981.P1377300040488390629

`∩[A090865(n+1), A142194(n+1)]`
-/

namespace A221981.P1377300040488390629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P1377300040488390629

/-! ## A221981.P5752246126359749242

`∩[A090865(n+1), A142791(n+1)]`
-/

namespace A221981.P5752246126359749242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P5752246126359749242

/-! ## A221981.P1520403582316808943

`∩[A075519(n+1), A139856(n+1)]`
-/

namespace A221981.P1520403582316808943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P1520403582316808943

/-! ## A221981.P9209959559435712175

`∩[A075519(n+1), A142194(n+1)]`
-/

namespace A221981.P9209959559435712175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P9209959559435712175

/-! ## A221981.P184801649340016885

`∩[A075519(n+1), A142791(n+1)]`
-/

namespace A221981.P184801649340016885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P184801649340016885

/-! ## A221981.P9585525860299929751

`∩[A139856(n+1), A180642(n+1)]`
-/

namespace A221981.P9585525860299929751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P9585525860299929751

/-! ## A221981.P241223620838691663

`∩[A142194(n+1), A180642(n+1)]`
-/

namespace A221981.P241223620838691663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P241223620838691663

/-! ## A221981.P1311217498861549907

`∩[A142791(n+1), A180642(n+1)]`
-/

namespace A221981.P1311217498861549907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P1311217498861549907

/-! ## A221981.P12426743026427085210

`∩[A103203(n+1), A142194(n+1)]`
-/

namespace A221981.P12426743026427085210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P12426743026427085210

/-! ## A221981.P11146520104466285768

`∩[A058500(n+1), A139856(n+1)]`
-/

namespace A221981.P11146520104466285768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P11146520104466285768

/-! ## A221981.P959968133225124225

`∩[A058500(n+1), A142194(n+1)]`
-/

namespace A221981.P959968133225124225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221981.P959968133225124225

/-!
# A221982: Primes p == 2 (mod 5) for which 4*p+1 is also prime.

The programs for A221982, there is no canonical definition to state claims against.
-/

/-! ## A221982.P16847436878601237695

`(A221981(n+1)-1)/4`
-/

namespace A221982.P16847436878601237695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221981 (n + 1) - 1 : ℚ) / 4

end

end A221982.P16847436878601237695

/-! ## A221982.P7665644115786491940

`floor(A221981(n+1)/4)`
-/

namespace A221982.P7665644115786491940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A221981 (n + 1) : ℚ) / 4⌋

end

end A221982.P7665644115786491940

/-! ## A221982.P7287262888838258778

`∩[A023212(n+1), A132231(n+1)]`
-/

namespace A221982.P7287262888838258778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P7287262888838258778

/-! ## A221982.P16305723199422654286

`∩[A023212(n+1), A030432(n+1)]`
-/

namespace A221982.P16305723199422654286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P16305723199422654286

/-! ## A221982.P2974057723702208522

`∩[A023212(n+1), A045357(n+1)]`
-/

namespace A221982.P2974057723702208522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P2974057723702208522

/-! ## A221982.P3247353536736985163

`∩[A023212(n+1), A045380(n+1)]`
-/

namespace A221982.P3247353536736985163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P3247353536736985163

/-! ## A221982.P15380417419072956717

`∩[A023212(n+1), A132237(n+1)]`
-/

namespace A221982.P15380417419072956717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P15380417419072956717

/-! ## A221982.P3791752096680207751

`∩[A023212(n+1), A128471(n)]`
-/

namespace A221982.P3791752096680207751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P3791752096680207751

/-! ## A221982.P1455414633802043341

`∩[A023212(n+1), A090652(n+1)]`
-/

namespace A221982.P1455414633802043341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P1455414633802043341

/-! ## A221982.P9615013890265172048

`p?[round(A141883(n+1)/4)]`
-/

namespace A221982.P9615013890265172048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141883 (n + 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221982.P9615013890265172048

/-! ## A221982.P1307500976492070260

`∩[A023212(n+1), A045349(n+1)]`
-/

namespace A221982.P1307500976492070260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P1307500976492070260

/-! ## A221982.P7506131958547277387

`∩[A023212(n+1), A045372(n+1)]`
-/

namespace A221982.P7506131958547277387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P7506131958547277387

/-! ## A221982.P5390873975158946677

`∩[A004616(n+1), A023212(n+1)]`
-/

namespace A221982.P5390873975158946677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P5390873975158946677

/-! ## A221982.P5241368852982425387

`∩[A030432(n+1), A230076(n+1)]`
-/

namespace A221982.P5241368852982425387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P5241368852982425387

/-! ## A221982.P460118290373553132

`∩[A045349(n+1), A230076(n+1)]`
-/

namespace A221982.P460118290373553132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P460118290373553132

/-! ## A221982.P8485729516773697719

`∩[A045357(n+1), A230076(n+1)]`
-/

namespace A221982.P8485729516773697719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P8485729516773697719

/-! ## A221982.P17141129605544658619

`∩[A045372(n+1), A230076(n+1)]`
-/

namespace A221982.P17141129605544658619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P17141129605544658619

/-! ## A221982.P4404066594623035454

`∩[A045380(n+1), A230076(n+1)]`
-/

namespace A221982.P4404066594623035454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P4404066594623035454

/-! ## A221982.P7128422863669485710

`∩[A132231(n+1), A230076(n+1)]`
-/

namespace A221982.P7128422863669485710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P7128422863669485710

/-! ## A221982.P13461083906369378353

`∩[A132237(n+1), A230076(n+1)]`
-/

namespace A221982.P13461083906369378353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221982.P13461083906369378353

/-!
# A221983: Number of primes of the form (x+1)^11 - x^11 less than 10^n.

The programs for A221983, there is no canonical definition to state claims against.
-/

/-! ## A221983.P1388198290474306492

`∑[A221984(n+9)]`
-/

namespace A221983.P1388198290474306492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221984 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221983.P1388198290474306492

/-! ## A221983.P18320162326514612578

`A001222(∏[2^A221984(n+9)])`
-/

namespace A221983.P18320162326514612578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A221984 (n + 9) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A221983.P18320162326514612578

/-!
# A221984: Number of primes of the form (x+1)^11 - x^11 having n digits.

The programs for A221984, there is no canonical definition to state claims against.
-/

/-! ## A221984.P18175044992910422446

`xor(A239509(n), A260728(A008965(n+1)))`
-/

namespace A221984.P18175044992910422446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A239509 n) (A260728 (A008965 (n + 1)).toNat)

end

end A221984.P18175044992910422446

/-! ## A221984.P13966245494806841935

`A280750(A001333(n)%A000837(n))`
-/

namespace A221984.P13966245494806841935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (Int.tmod (A001333 n) (A000837 n)).toNat

end

end A221984.P13966245494806841935

/-! ## A221984.P16827718732329652964

`A360071(A062420(n+1)+A039599(n))`
-/

namespace A221984.P16827718732329652964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360071 (A062420 (n + 1) + A039599 n).toNat

end

end A221984.P16827718732329652964

/-! ## A221984.P10344812510721541364

`and(A001511(A075676(n)), A175698(n+1))`
-/

namespace A221984.P10344812510721541364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (A075676 n).toNat) (A175698 (n + 1))

end

end A221984.P10344812510721541364

/-!
# A221986: Number of primes of the form (x+1)^11 - x^11 with x <= 10^n.

The programs for A221986, there is no canonical definition to state claims against.
-/

/-! ## A221986.P14080773583409167889

`A004523(A355106(n)+A253145(n))`
-/

namespace A221986.P14080773583409167889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A355106 n + A253145 n).toNat

end

end A221986.P14080773583409167889

/-!
# A221987: G.f.: A(x,y) = Sum_{n>=0} n!*x^n*y^n * Product_{k=1..n} (1+y + 2*k*x*y) / (1 + (1+y)*k*x + 2*k^2*x^2*y).

The programs for A221987, there is no canonical definition to state claims against.
-/

/-! ## A221987.P2542736797635127337

`∑{d}[A155971(n), A296512(#)]`
-/

namespace A221987.P2542736797635127337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A296512 d

end

end A221987.P2542736797635127337

/-! ## A221987.P14743102291455482742

`∑{d}[A202549(n+1), A241559(#)]`
-/

namespace A221987.P14743102291455482742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A241559 d

end

end A221987.P14743102291455482742

/-! ## A221987.P3077624103672521958

`A168287(n)+A051765(A008288(n))`
-/

namespace A221987.P3077624103672521958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n + A051765 (A008288 n).toNat

end

end A221987.P3077624103672521958

/-! ## A221987.P535531855835973177

`A168287(n)+A033886(A059922(n))`
-/

namespace A221987.P535531855835973177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n + A033886 (A059922 n).toNat

end

end A221987.P535531855835973177

/-! ## A221987.P5890417960522330190

`A130696(A176420(n)+A046802(n))`
-/

namespace A221987.P5890417960522330190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A176420 n + A046802 n).toNat

end

end A221987.P5890417960522330190

/-!
# A221988: G.f.: Sum_{n>=0} n! * (2*x)^n * Product_{k=1..n} (1 + k*x)/(1 + 2*k*x + 2*k^2*x^2).

The programs for A221988, there is no canonical definition to state claims against.
-/

/-! ## A221988.P1489476151949688064

`A002264(∑[A030810(n+1)]+1)`
-/

namespace A221988.P1489476151949688064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A221988.P1489476151949688064

/-! ## A221988.P7735368674773167292

`∏[n+1]-A093391(A001042(n))`
-/

namespace A221988.P7735368674773167292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A093391 (A001042 n).toNat

end

end A221988.P7735368674773167292

/-!
# A221989: The number of squarefree permutations of 1,...,n.

The programs for A221989, there is no canonical definition to state claims against.
-/

/-! ## A221989.P2282558476392239845

`A002330(A074271(n+1))-A175087(2*(n+2))`
-/

namespace A221989.P2282558476392239845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A074271 (n + 1)).toNat - A175087 (2 * (n + 2))

end

end A221989.P2282558476392239845

/-! ## A221989.P17177973643069638934

`A236689(A026564(n))`
-/

namespace A221989.P17177973643069638934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236689 (A026564 n).toNat

end

end A221989.P17177973643069638934

/-!
# A221990: The number of right-crucial (with respect to squares) permutations of 1,...,n.

The programs for A221990, there is no canonical definition to state claims against.
-/

/-! ## A221990.P3566382352615632998

`lcm(20, A322841(n!))`
-/

namespace A221990.P3566382352615632998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 20 (A322841 (Nat.factorial n))

end

end A221990.P3566382352615632998

/-! ## A221990.P18149930997698419910

`10*n*A097017(n!)`
-/

namespace A221990.P18149930997698419910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) * A097017 (Nat.factorial n)

end

end A221990.P18149930997698419910

/-! ## A221990.P734835259967503904

`lcm(5*n, A375033(n!))`
-/

namespace A221990.P734835259967503904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (5 * n : ℤ) (A375033 (Nat.factorial n))

end

end A221990.P734835259967503904

/-! ## A221990.P12448537781134318480

`lcm(n, 20%A181819(n!))`
-/

namespace A221990.P12448537781134318480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod 20 (A181819 (Nat.factorial n)))

end

end A221990.P12448537781134318480

/-!
# A221991: a(n) is the number of terms in the expansion of (x-y)(x^2-y^2)*(x^3-y^3)*(x^5-y^5)*...*(x^p_i-y^p_i), where p_i is the i-th prime.

The programs for A221991, there is no canonical definition to state claims against.
-/

/-! ## A221991.P11419694911712777685

`∑[gcd(6*n, A254115(3^n+1))]`
-/

namespace A221991.P11419694911712777685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 * n : ℤ) (A254115 (3 ^ n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221991.P11419694911712777685

/-! ## A221991.P15477114482411980176

`∑[A033718(A326508(n+7)²)]`
-/

namespace A221991.P15477114482411980176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (A326508 (n + 7) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221991.P15477114482411980176

/-! ## A221991.P2566732587047805576

`record[Δ[A075551(A114036(n+3))]]`
-/

namespace A221991.P2566732587047805576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075551 (A114036 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221991.P2566732587047805576

/-! ## A221991.P10875931967842957414

`∑[4*A008479(A032351(n))-2]`
-/

namespace A221991.P10875931967842957414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008479 (A032351 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221991.P10875931967842957414

/-! ## A221991.P6122003525709916566

`∑[A372825(A051190(n+1)-1)+2]`
-/

namespace A221991.P6122003525709916566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372825 (A051190 (n + 1) - 1).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221991.P6122003525709916566

/-!
# A221992: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..1 array extended with zeros and convolved with 1,4,6,4,1.

The programs for A221992, the canonical program `A221992.P5288420132164142477` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221992 has offset 1).

The definition of A221992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221992.P5288420132164142477

`a(n-1)+2*a(n-3)-a(n-4)-a(n-6)+a(n-7)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6, a(4)=10, a(5)=15, a(6)=22`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A221992

/-- `a(n-1)+2*a(n-3)-a(n-4)-a(n-6)+a(n-7)` -/
def P5288420132164142477.Spec : Prop :=
  ∀ n, P5288420132164142477.a n = A221992 (n + 1)

theorem P5288420132164142477.correct : P5288420132164142477.Spec := by
  intro n
  simp only [A221992, Nat.add_sub_cancel]

end A221992

/-! ## A221992.P3584904352767187896

`A221999(∑[n+1])`
-/

namespace A221992.P3584904352767187896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221992.P3584904352767187896

namespace A221992

/-- `A221999(∑[n+1])` -/
def P3584904352767187896.Spec : Prop :=
  ∀ n, P3584904352767187896.a n = A221992 (n + 1)

end A221992

/-! ## A221992.P52647875242520960

`record[A221999(A001972(n))]`
-/

namespace A221992.P52647875242520960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221992.P52647875242520960

namespace A221992

/-- `record[A221999(A001972(n))]` -/
def P52647875242520960.Spec : Prop :=
  ∀ n, P52647875242520960.a n = A221992 (n + 1)

end A221992

/-! ## A221992.P17403934807555700953

`record[A221999(A038722(n+1))]`
-/

namespace A221992.P17403934807555700953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221992.P17403934807555700953

namespace A221992

/-- `record[A221999(A038722(n+1))]` -/
def P17403934807555700953.Spec : Prop :=
  ∀ n, P17403934807555700953.a n = A221992 (n + 1)

end A221992

/-! ## A221992.P4726306132627290908

`record[A221999(A049777(n+1))]`
-/

namespace A221992.P4726306132627290908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221992.P4726306132627290908

namespace A221992

/-- `record[A221999(A049777(n+1))]` -/
def P4726306132627290908.Spec : Prop :=
  ∀ n, P4726306132627290908.a n = A221992 (n + 1)

end A221992

/-!
# A221993: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..2 array extended with zeros and convolved with 1,4,6,4,1.

The programs for A221993, there is no canonical definition to state claims against.
-/

/-! ## A221993.P12388836359584742582

`A221999(∑[n+2])`
-/

namespace A221993.P12388836359584742582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221993.P12388836359584742582

/-! ## A221993.P14850482880007132234

`record[A221999(A001972(n+1)-1)]`
-/

namespace A221993.P14850482880007132234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A001972 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221993.P14850482880007132234

/-! ## A221993.P17445664756863360180

`record[A221999(A209268(n+2)-1)]`
-/

namespace A221993.P17445664756863360180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A209268 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221993.P17445664756863360180

/-! ## A221993.P1546687074363919660

`record[A221999(A209268(2*(n+1)))]`
-/

namespace A221993.P1546687074363919660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A209268 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221993.P1546687074363919660

/-! ## A221993.P3695061158571844196

`or(char[1], A221999(A000096(n+1)))`
-/

namespace A221993.P3695061158571844196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A221999 (A000096 (n + 1)).toNat)

end

end A221993.P3695061158571844196

/-!
# A221994: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with 1,4,6,4,1.

The programs for A221994, there is no canonical definition to state claims against.
-/

/-! ## A221994.P15479997061141687531

`A221999(∑[n+3]+1)`
-/

namespace A221994.P15479997061141687531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221994.P15479997061141687531

/-! ## A221994.P6005143337795366001

`record[A221999(sqrt(A303054(n+1)))]`
-/

namespace A221994.P6005143337795366001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221994.P6005143337795366001

/-! ## A221994.P16608115705073068891

`or(char[1], A221999(A034856(n+2)))`
-/

namespace A221994.P16608115705073068891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A221999 (A034856 (n + 2)).toNat)

end

end A221994.P16608115705073068891

/-! ## A221994.P5599804264413808439

`record[A221999(A209268(2*(n+1))-1)]`
-/

namespace A221994.P5599804264413808439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A209268 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221994.P5599804264413808439

/-! ## A221994.P4458834364045841567

`A221999(A034856(n+2))%A000045(n+8)`
-/

namespace A221994.P4458834364045841567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221999 (A034856 (n + 2)).toNat) (A000045 (n + 8))

end

end A221994.P4458834364045841567

/-!
# A221995: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with 1,4,6,4,1.

The programs for A221995, there is no canonical definition to state claims against.
-/

/-! ## A221995.P4584382829679960694

`A221999(∑[n+4]+3)`
-/

namespace A221995.P4584382829679960694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221995.P4584382829679960694

/-! ## A221995.P17161488520663682793

`record[A221999(A027379(n))]`
-/

namespace A221995.P17161488520663682793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221995.P17161488520663682793

/-! ## A221995.P4671318331537832404

`A131132(n+1)+A087802(A208466(n+1))`
-/

namespace A221995.P4671318331537832404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 (n + 1) + A087802 (A208466 (n + 1)).toNat

end

end A221995.P4671318331537832404

/-! ## A221995.P4947699484402446644

`A006466(3^n)+A003073(2*n)`
-/

namespace A221995.P4947699484402446644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (3 ^ n) + A003073 (2 * n)

end

end A221995.P4947699484402446644

/-! ## A221995.P9852093850569756920

`A368728(A222021(n+1))`
-/

namespace A221995.P9852093850569756920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A222021 (n + 1)).toNat

end

end A221995.P9852093850569756920

/-!
# A221996: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with 1,4,6,4,1.

The programs for A221996, there is no canonical definition to state claims against.
-/

/-! ## A221996.P14670796580540881386

`A221999(∑[n+5]+6)`
-/

namespace A221996.P14670796580540881386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221996.P14670796580540881386

/-! ## A221996.P1741485130302230460

`A133137(A221995(n+1))`
-/

namespace A221996.P1741485130302230460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A221995 (n + 1)).toNat

end

end A221996.P1741485130302230460

/-! ## A221996.P76042757198550047

`A222022(n+1)-A066247(n!)`
-/

namespace A221996.P76042757198550047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222022 (n + 1) - A066247 (Nat.factorial n)

end

end A221996.P76042757198550047

/-! ## A221996.P3869700325926991921

`A204810(n+1)+A087061(A000110(n))`
-/

namespace A221996.P3869700325926991921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204810 (n + 1) + A087061 (A000110 n).toNat

end

end A221996.P3869700325926991921

/-! ## A221996.P2943704562025508470

`A074317(n+1)+A000120(A374620(n))`
-/

namespace A221996.P2943704562025508470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074317 (n + 1) + A000120 (A374620 n).toNat

end

end A221996.P2943704562025508470

/-!
# A221997: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with 1,4,6,4,1.

The programs for A221997, there is no canonical definition to state claims against.
-/

/-! ## A221997.P1524849471080758167

`A221999(A052905(n+3))`
-/

namespace A221997.P1524849471080758167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A052905 (n + 3)).toNat

end

end A221997.P1524849471080758167

/-! ## A221997.P3115406848638949243

`A221999(A055999(n+3)+1)`
-/

namespace A221997.P3115406848638949243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A055999 (n + 3) + 1).toNat

end

end A221997.P3115406848638949243

/-! ## A221997.P10461985426322720444

`A221998(A061147(n+1))`
-/

namespace A221997.P10461985426322720444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221998 (A061147 (n + 1)).toNat

end

end A221997.P10461985426322720444

/-! ## A221997.P11939752217722684293

`A221998(A061497(n+1))`
-/

namespace A221997.P11939752217722684293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221998 (A061497 (n + 1)).toNat

end

end A221997.P11939752217722684293

/-! ## A221997.P5054787377269790453

`A221998(A062003(n+1))`
-/

namespace A221997.P5054787377269790453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221998 (A062003 (n + 1)).toNat

end

end A221997.P5054787377269790453

/-!
# A221998: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with 1,4,6,4,1.

The programs for A221998, there is no canonical definition to state claims against.
-/

/-! ## A221998.P15207480725796977175

`A221999(A055999(n+4))`
-/

namespace A221998.P15207480725796977175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221999 (A055999 (n + 4)).toNat

end

end A221998.P15207480725796977175

/-!
# A221999: T(n,k)=Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..k array extended with zeros and convolved with 1,4,6,4,1.

The programs for A221999, there is no canonical definition to state claims against.
-/

/-! ## A221999.P17012923493145597971

`A221992(A002260(n+1))%A001018(3*n+4)`
-/

namespace A221999.P17012923493145597971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221992 (A002260 (n + 1)).toNat) (A001018 (3 * n + 4))

end

end A221999.P17012923493145597971

/-! ## A221999.P7727471968965776481

`A000005(A258119(A059268(n)))`
-/

namespace A221999.P7727471968965776481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A258119 (A059268 n).toNat).toNat

end

end A221999.P7727471968965776481

/-! ## A221999.P4400160231137497734

`A003059(A005145(A059268(n)²))`
-/

namespace A221999.P4400160231137497734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A005145 (A059268 n ^ 2).toNat).toNat

end

end A221999.P4400160231137497734

/-! ## A221999.P4273748662233187629

`A104103(A002024(A059268(n)²))`
-/

namespace A221999.P4273748662233187629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A002024 (A059268 n ^ 2).toNat).toNat

end

end A221999.P4273748662233187629

/-! ## A221999.P14557763930765769240

`A255246(A180662(n)+2)`
-/

namespace A221999.P14557763930765769240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255246 (A180662 n + 2).toNat

end

end A221999.P14557763930765769240

