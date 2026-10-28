import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A219100: Unmatched value maps: number of n X 2 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..2 n X 2 array.

The programs for A219100, the canonical program `A219100.P667223849052014046` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219100 has offset 1).

The definition of A219100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219100.P6083557663556016753

`ogf((2+3x+2x^2-2x^3+x^4)/(1-4x+2x^2-5x^3+3x^4-x^5))`
-/

namespace A219100.P6083557663556016753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2, -2, 1] [1, -4, 2, -5, 3, -1] n

end

end A219100.P6083557663556016753

namespace A219100

/-- `ogf((2+3x+2x^2-2x^3+x^4)/(1-4x+2x^2-5x^3+3x^4-x^5))` -/
def P6083557663556016753.Spec : Prop :=
  ∀ n, P6083557663556016753.a n = A219100 (n + 1)

end A219100

/-! ## A219100.P667223849052014046

`4*a(n-1)-2*a(n-2)+5*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=2, a(1)=11, a(2)=42, a(3)=154, a(4)=582`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219100

/-- `4*a(n-1)-2*a(n-2)+5*a(n-3)-3*a(n-4)+a(n-5)` -/
def P667223849052014046.Spec : Prop :=
  ∀ n, P667223849052014046.a n = A219100 (n + 1)

theorem P667223849052014046.correct : P667223849052014046.Spec := by
  intro n
  simp only [A219100, Nat.add_sub_cancel]

end A219100

/-! ## A219100.P6399773384063289972

`Δ[Δ[A210021(2*n+3)]]-A210021(2*(n+3))`
-/

namespace A219100.P6399773384063289972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210021 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A210021 (2 * (n + 3))

end

end A219100.P6399773384063289972

namespace A219100

/-- `Δ[Δ[A210021(2*n+3)]]-A210021(2*(n+3))` -/
def P6399773384063289972.Spec : Prop :=
  ∀ n, P6399773384063289972.a n = A219100 (n + 1)

end A219100

/-! ## A219100.P4915042980872313767

`A219985(∑[n+1]+2)`
-/

namespace A219100.P4915042980872313767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219100.P4915042980872313767

namespace A219100

/-- `A219985(∑[n+1]+2)` -/
def P4915042980872313767.Spec : Prop :=
  ∀ n, P4915042980872313767.a n = A219100 (n + 1)

end A219100

/-! ## A219100.P3703025805352212212

`record[A010054(n)*A219985(n+2)]`
-/

namespace A219100.P3703025805352212212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A219985 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219100.P3703025805352212212

namespace A219100

/-- `record[A010054(n)*A219985(n+2)]` -/
def P3703025805352212212.Spec : Prop :=
  ∀ n, P3703025805352212212.a n = A219100 (n + 1)

end A219100

/-!
# A219101: Unmatched value maps: number of nX3 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX3 array.

The programs for A219101, there is no canonical definition to state claims against.
-/

/-! ## A219101.P15075122748336040950

`A219106(∑[n+2]+4)`
-/

namespace A219101.P15075122748336040950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219101.P15075122748336040950

/-! ## A219101.P1793105173154601229

`and(-1, A219106(A167614(n+1)))`
-/

namespace A219101.P1793105173154601229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219106 (A167614 (n + 1)).toNat)

end

end A219101.P1793105173154601229

/-! ## A219101.P9234635454386451633

`record[A219106(n+4)/A219078(n+1)]`
-/

namespace A219101.P9234635454386451633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219106 (n + 4) : ℚ) / (A219078 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219101.P9234635454386451633

/-! ## A219101.P1976542521979486451

`A219106(A167614(n+1))+A025439(n)`
-/

namespace A219101.P1976542521979486451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A167614 (n + 1)).toNat + A025439 n

end

end A219101.P1976542521979486451

/-! ## A219101.P10010741745835449721

`A219106(A167614(n+1))+A025466(n)`
-/

namespace A219101.P10010741745835449721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A167614 (n + 1)).toNat + A025466 n

end

end A219101.P10010741745835449721

/-!
# A219102: Unmatched value maps: number of nX4 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX4 array.

The programs for A219102, there is no canonical definition to state claims against.
-/

/-! ## A219102.P15363372011388104953

`A219106(A145018(n+4))`
-/

namespace A219102.P15363372011388104953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A145018 (n + 4)).toNat

end

end A219102.P15363372011388104953

/-! ## A219102.P12008300349457860061

`A219106(A141214(n)+7)`
-/

namespace A219102.P12008300349457860061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A141214 n + 7).toNat

end

end A219102.P12008300349457860061

/-! ## A219102.P12526565267740703442

`A219106(A052905(n)+9)`
-/

namespace A219102.P12526565267740703442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A052905 n + 9).toNat

end

end A219102.P12526565267740703442

/-! ## A219102.P7153604817548778804

`A219106(A055999(n)+10)`
-/

namespace A219102.P7153604817548778804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A055999 n + 10).toNat

end

end A219102.P7153604817548778804

/-! ## A219102.P12013519464928278837

`A219106(eq[5, A066657(n)])`
-/

namespace A219102.P12013519464928278837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219102.P12013519464928278837

/-!
# A219103: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX5 array.

The programs for A219103, there is no canonical definition to state claims against.
-/

/-! ## A219103.P10659550723917179375

`A219106(Δ[A264443(n)])`
-/

namespace A219103.P10659550723917179375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (f1 (n + 1) - f1 n).toNat

end

end A219103.P10659550723917179375

/-! ## A219103.P7454563813281354730

`A219106(A374005(n+1))`
-/

namespace A219103.P7454563813281354730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A374005 (n + 1)).toNat

end

end A219103.P7454563813281354730

/-! ## A219103.P17845146347060222554

`A219106(A046691(n+3))`
-/

namespace A219103.P17845146347060222554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A046691 (n + 3)).toNat

end

end A219103.P17845146347060222554

/-!
# A219104: Unmatched value maps: number of nX6 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..2 nX6 array.

The programs for A219104, there is no canonical definition to state claims against.
-/

/-! ## A219104.P9700935470047305968

`A219106(A374007(n+1))`
-/

namespace A219104.P9700935470047305968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A374007 (n + 1)).toNat

end

end A219104.P9700935470047305968

/-!
# A219105: Unmatched value maps: number of n X 7 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..2 n X 7 array.

The programs for A219105, there is no canonical definition to state claims against.
-/

/-! ## A219105.P7491866304418100791

`A219106(A374008(n+1))`
-/

namespace A219105.P7491866304418100791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (A374008 (n + 1)).toNat

end

end A219105.P7491866304418100791

/-!
# A219106: T(n,k)=Unmatched value maps: number of nXk binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..2 nXk array.

The programs for A219106, there is no canonical definition to state claims against.
-/

/-! ## A219106.P13250241906767149275

`A219985(n+1)-A243001(A325425(3*n+4))`
-/

namespace A219106.P13250241906767149275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (n + 1) - A243001 ((A325425 (3 * n + 4)).toNat + 1583)

end

end A219106.P13250241906767149275

/-! ## A219106.P4090101769213990322

`A219985(∏{e}[or(3, n), (n+1)/#])`
-/

namespace A219106.P4090101769213990322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (Nat.factorization (f1 n) p : ℚ))).toNat

end

end A219106.P4090101769213990322

/-! ## A219106.P17399657912681370286

`A219985(A043317(n+1))`
-/

namespace A219106.P17399657912681370286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A043317 (n + 1)).toNat

end

end A219106.P17399657912681370286

/-! ## A219106.P5112728231036921560

`A219985(A044914(n+1))`
-/

namespace A219106.P5112728231036921560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A044914 (n + 1)).toNat

end

end A219106.P5112728231036921560

/-! ## A219106.P16755286106336687122

`A219985(A055648(n+1))`
-/

namespace A219106.P16755286106336687122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A055648 (n + 1)).toNat

end

end A219106.P16755286106336687122

/-!
# A219107: Number of compositions (ordered partitions) of n into distinct prime parts.

The programs for A219107, there is no canonical definition to state claims against.
-/

/-! ## A219107.P5754891778226429543

`A339433(n)+A339432(n)`
-/

namespace A219107.P5754891778226429543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339433 n + A339432 n

end

end A219107.P5754891778226429543

/-! ## A219107.P1846713871158854026

`A348325(n)+char[A047814(n)]`
-/

namespace A219107.P1846713871158854026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219107.P1846713871158854026

/-! ## A219107.P5648266140919582825

`A348325(n)+char[A331044(n)]`
-/

namespace A219107.P5648266140919582825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219107.P5648266140919582825

/-! ## A219107.P8217822327169507696

`A348325(n)+char[A331097(n)]`
-/

namespace A219107.P8217822327169507696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219107.P8217822327169507696

/-! ## A219107.P8382525294126597763

`A348325(n)+char[A007610(n+1)]`
-/

namespace A219107.P8382525294126597763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219107.P8382525294126597763

/-! ## A219107.P17566402571310781927

`A348325(n)+char[A023049(n+1)]`
-/

namespace A219107.P17566402571310781927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023049 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219107.P17566402571310781927

/-! ## A219107.P4273039991324384895

`A348325(n)+char[A033920(n+1)]`
-/

namespace A219107.P4273039991324384895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219107.P4273039991324384895

/-! ## A219107.P7267540682004587846

`A348325(n)+char[A061397(n+1)]`
-/

namespace A219107.P7267540682004587846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219107.P7267540682004587846

/-! ## A219107.P18372035815172276918

`A348325(n)+char[A120007(n+1)]`
-/

namespace A219107.P18372035815172276918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219107.P18372035815172276918

/-! ## A219107.P4243410550612456197

`A348325(n)+char[comp[A018252(n+1)]]`
-/

namespace A219107.P4243410550612456197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219107.P4243410550612456197

/-!
# A219108: a(n) = k is the smallest number such that k^3 + 1 has exactly n distinct prime factors.

The programs for A219108, there is no canonical definition to state claims against.
-/

/-! ## A219108.P9399079451952579138

`∑[A088900(A290518(n))]-1`
-/

namespace A219108.P9399079451952579138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (A290518 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A219108.P9399079451952579138

/-! ## A219108.P12637536181006927560

`A092180(∑[A098576(n)])-2`
-/

namespace A219108.P12637536181006927560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A219108.P12637536181006927560

/-! ## A219108.P9660961783467041890

`∑[∑[A061358(A170900(n+3))]]`
-/

namespace A219108.P9660961783467041890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A170900 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219108.P9660961783467041890

/-!
# A219109: The smallest k such that prime(k) == -1 (mod n).

The programs for A219109, there is no canonical definition to state claims against.
-/

/-! ## A219109.P5418015500199559360

`A000720(A038700(n+1))`
-/

namespace A219109.P5418015500199559360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038700 (n + 1)).toNat

end

end A219109.P5418015500199559360

/-! ## A219109.P2174675563020827345

`A061395(A038700(Δ[n²]-n))`
-/

namespace A219109.P2174675563020827345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A038700 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A219109.P2174675563020827345

/-! ## A219109.P1085467112217126273

`A061395(2*A038700(n+1))`
-/

namespace A219109.P1085467112217126273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A038700 (n + 1)).toNat

end

end A219109.P1085467112217126273

/-! ## A219109.P4577819369647136223

`A066328(and(A038700(n+1), 1-4/2))`
-/

namespace A219109.P4577819369647136223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.land (A038700 (n + 1)) (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2))).toNat

end

end A219109.P4577819369647136223

/-! ## A219109.P1821690434061442824

`A066328(A038700(n+1))%A035337(n)`
-/

namespace A219109.P1821690434061442824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066328 (A038700 (n + 1)).toNat) (A035337 n)

end

end A219109.P1821690434061442824

/-! ## A219109.P15711670215181951735

`A066328(A038700(n+1)%A005383(n+1))`
-/

namespace A219109.P15711670215181951735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.tmod (A038700 (n + 1)) (A005383 (n + 1))).toNat

end

end A219109.P15711670215181951735

/-! ## A219109.P1196674060269133464

`A066328(A038700(n+1)+A000035(2*(n+2)))`
-/

namespace A219109.P1196674060269133464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A038700 (n + 1) + A000035 (2 * (n + 2))).toNat

end

end A219109.P1196674060269133464

/-! ## A219109.P8993227972517662432

`A065770(A038700(n+1))%A000040(n+1)`
-/

namespace A219109.P8993227972517662432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065770 (A038700 (n + 1)).toNat) (A000040 (n + 1))

end

end A219109.P8993227972517662432

/-! ## A219109.P4870208317085376522

`A391765(A038700(n+1)-1)`
-/

namespace A219109.P4870208317085376522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A038700 (n + 1) - 1).toNat

end

end A219109.P4870208317085376522

/-! ## A219109.P2546231401792164795

`A067004(A038700(2*(n+1)-(n+1)))`
-/

namespace A219109.P2546231401792164795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A038700 (2 * (n + 1) - (n + 1))).toNat

end

end A219109.P2546231401792164795

/-! ## A219109.P18421366383881435951

`A056239(A038700(n+1))%A008593(n+1)`
-/

namespace A219109.P18421366383881435951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A038700 (n + 1)).toNat) (A008593 (n + 1))

end

end A219109.P18421366383881435951

/-! ## A219109.P17283478252049288378

`A056239(2*A038700(n+1))-1`
-/

namespace A219109.P17283478252049288378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A038700 (n + 1)).toNat - 1

end

end A219109.P17283478252049288378

/-! ## A219109.P211264379240634782

`A393606(∑[n+1])`
-/

namespace A219109.P211264379240634782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393606 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219109.P211264379240634782

/-!
# A219110: Numbers for which at least one sum of two adjacent digits is not prime.

The programs for A219110, there is no canonical definition to state claims against.
-/

/-! ## A219110.P1884131278741981559

`comp[A182175(n+1)]`
-/

namespace A219110.P1884131278741981559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219110.P1884131278741981559

/-! ## A219110.P15312570351821990441

`comp[A252495(n+1)]`
-/

namespace A219110.P15312570351821990441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219110.P15312570351821990441

/-! ## A219110.P9671132166584022023

`comp[floor(A182178(n+1)/10)]`
-/

namespace A219110.P9671132166584022023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182178 (n + 1) : ℚ) / 10⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219110.P9671132166584022023

/-! ## A219110.P3025569790744212841

`comp[record[A182175(A324347(n))]]`
-/

namespace A219110.P3025569790744212841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182175 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219110.P3025569790744212841

/-! ## A219110.P13524681016839460193

`A000188(comp[A252996(n+1)]²)`
-/

namespace A219110.P13524681016839460193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252996 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A219110.P13524681016839460193

/-! ## A219110.P14326552912714738922

`A104211(n+6)%A198298(n+1)`
-/

namespace A219110.P14326552912714738922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104211 (n + 6)) (A198298 (n + 1))

end

end A219110.P14326552912714738922

/-! ## A219110.P9930264909278693472

`comp[A252996(n+1)]%A198298(n+1)`
-/

namespace A219110.P9930264909278693472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252996 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A198298 (n + 1))

end

end A219110.P9930264909278693472

/-! ## A219110.P12350326207886302676

`comp[A118759(A252996(n+1))]`
-/

namespace A219110.P12350326207886302676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A252996 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219110.P12350326207886302676

/-! ## A219110.P4507570085823209440

`comp[A000194(A252996(n+1)²)]`
-/

namespace A219110.P4507570085823209440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A252996 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219110.P4507570085823209440

/-! ## A219110.P729986286794518392

`comp[A182177(n+1)]`
-/

namespace A219110.P729986286794518392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219110.P729986286794518392

/-!
# A219111: Numbers that eventually reach 1 under "x -> sum of 4th power of digits of x".

The programs for A219111, there is no canonical definition to state claims against.
-/

/-! ## A219111.P11819728678972475513

`A135653(n+1)+A006983(A006992(n+1))`
-/

namespace A219111.P11819728678972475513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135653 (n + 1) + A006983 (A006992 (n + 1)).toNat

end

end A219111.P11819728678972475513

/-!
# A219113: Sequence of integers which are simultaneously a sum of consecutive squares and a difference of consecutive cubes.

The programs for A219113, the canonical program `A219113.P1178314472511092302` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219113 has offset 1).

The definition of A219113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219113.P4737072958269222861

`ogf((1-38x+x^2)/(1-99x+99x^2-x^3))`
-/

namespace A219113.P4737072958269222861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -38, 1] [1, -99, 99, -1] n

end

end A219113.P4737072958269222861

namespace A219113

/-- `ogf((1-38x+x^2)/(1-99x+99x^2-x^3))` -/
def P4737072958269222861.Spec : Prop :=
  ∀ n, P4737072958269222861.a n = A219113 (n + 1)

end A219113

/-! ## A219113.P1178314472511092302

`98*a(n-1)-a(n-2)-36` with `a(0)=1, a(1)=61`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219113

/-- `98*a(n-1)-a(n-2)-36` -/
def P1178314472511092302.Spec : Prop :=
  ∀ n, P1178314472511092302.a n = A219113 (n + 1)

theorem P1178314472511092302.correct : P1178314472511092302.Spec := by
  intro n
  simp only [A219113, Nat.add_sub_cancel]

end A219113

/-! ## A219113.P4357041184950163107

`3*A105038(n)*(A105038(n)+1)+1`
-/

namespace A219113.P4357041184950163107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A105038 n * (A105038 n + 1) + 1

end

end A219113.P4357041184950163107

namespace A219113

/-- `3*A105038(n)*(A105038(n)+1)+1` -/
def P4357041184950163107.Spec : Prop :=
  ∀ n, P4357041184950163107.a n = A219113 (n + 1)

end A219113

/-! ## A219113.P4692877561604135341

`(6+(5-2*sqrt(6))^(2*(n+1)-1)+(5+2*sqrt(6))^(2*(n+1)-1))/16`
-/

namespace A219113.P4692877561604135341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 + (5 - 2 * Real.sqrt (6 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) + (5 + 2 * Real.sqrt (6 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ)) / 16

end

end A219113.P4692877561604135341

namespace A219113

/-- `(6+(5-2*sqrt(6))^(2*(n+1)-1)+(5+2*sqrt(6))^(2*(n+1)-1))/16` -/
def P4692877561604135341.Spec : Prop :=
  ∀ n, P4692877561604135341.a n = (A219113 (n + 1) : ℝ)

end A219113

/-! ## A219113.P14281544681511288701

`2*A352182(n)+1`
-/

namespace A219113.P14281544681511288701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352182 n + 1

end

end A219113.P14281544681511288701

namespace A219113

/-- `2*A352182(n)+1` -/
def P14281544681511288701.Spec : Prop :=
  ∀ n, P14281544681511288701.a n = A219113 (n + 1)

end A219113

/-! ## A219113.P9951741437865651718

`4*A200994(n)+1`
-/

namespace A219113.P9951741437865651718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A200994 n + 1

end

end A219113.P9951741437865651718

namespace A219113

/-- `4*A200994(n)+1` -/
def P9951741437865651718.Spec : Prop :=
  ∀ n, P9951741437865651718.a n = A219113 (n + 1)

end A219113

/-! ## A219113.P13989536843200774508

`6*A200993(n)+1`
-/

namespace A219113.P13989536843200774508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A200993 n + 1

end

end A219113.P13989536843200774508

namespace A219113

/-- `6*A200993(n)+1` -/
def P13989536843200774508.Spec : Prop :=
  ∀ n, P13989536843200774508.a n = A219113 (n + 1)

end A219113

/-! ## A219113.P422833145206403844

`ceil(A054320(n)²/2)`
-/

namespace A219113.P422833145206403844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054320 n ^ 2 : ℚ) / 2⌉

end

end A219113.P422833145206403844

namespace A219113

/-- `ceil(A054320(n)²/2)` -/
def P422833145206403844.Spec : Prop :=
  ∀ n, P422833145206403844.a n = A219113 (n + 1)

end A219113

/-! ## A219113.P16630457819101134689

`ceil(A006061(n+1)/2)`
-/

namespace A219113.P16630457819101134689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006061 (n + 1) : ℚ) / 2⌉

end

end A219113.P16630457819101134689

namespace A219113

/-- `ceil(A006061(n+1)/2)` -/
def P16630457819101134689.Spec : Prop :=
  ∀ n, P16630457819101134689.a n = A219113 (n + 1)

end A219113

/-! ## A219113.P13196501647586142612

`ceil(A146313(n+1)/4)`
-/

namespace A219113.P13196501647586142612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A146313 (n + 1) : ℚ) / 4⌉

end

end A219113.P13196501647586142612

namespace A219113

/-- `ceil(A146313(n+1)/4)` -/
def P13196501647586142612.Spec : Prop :=
  ∀ n, P13196501647586142612.a n = A219113 (n + 1)

end A219113

/-!
# A219115: Numbers whose squares have at least one 1 and one 2 in ternary representation.

The programs for A219115, the canonical program `A219115.P3938868494519214556` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219115 has offset 1).

The definition of A219115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219115.P9517862846807658722

`lt[A117966(n²), n²]`
-/

namespace A219115.P9517862846807658722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219115.P9517862846807658722

namespace A219115

/-- `lt[A117966(n²), n²]` -/
def P9517862846807658722.Spec : Prop :=
  ∀ n, (P9517862846807658722.a n : ℤ) = A219115 (n + 1)

end A219115

/-! ## A219115.P3938868494519214556

`lt[A039966(round(and(-2, n²)/3)), 1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A219115

/-- `lt[A039966(round(and(-2, n²)/3)), 1]` -/
def P3938868494519214556.Spec : Prop :=
  ∀ n, (P3938868494519214556.a n : ℤ) = A219115 (n + 1)

theorem P3938868494519214556.correct : P3938868494519214556.Spec := by
  intro n
  simp only [A219115, Nat.add_sub_cancel]

end A219115

/-! ## A219115.P11162337957061922700

`lt[0, A227428(n²)]`
-/

namespace A219115.P11162337957061922700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219115.P11162337957061922700

namespace A219115

/-- `lt[0, A227428(n²)]` -/
def P11162337957061922700.Spec : Prop :=
  ∀ n, (P11162337957061922700.a n : ℤ) = A219115 (n + 1)

end A219115

/-! ## A219115.P11956695113809725564

`eq[0, A039966(n²)]`
-/

namespace A219115.P11956695113809725564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219115.P11956695113809725564

namespace A219115

/-- `eq[0, A039966(n²)]` -/
def P11956695113809725564.Spec : Prop :=
  ∀ n, (P11956695113809725564.a n : ℤ) = A219115 (n + 1)

end A219115

/-! ## A219115.P11652467473681319084

`eq[0, A039969(n²)]`
-/

namespace A219115.P11652467473681319084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219115.P11652467473681319084

namespace A219115

/-- `eq[0, A039969(n²)]` -/
def P11652467473681319084.Spec : Prop :=
  ∀ n, (P11652467473681319084.a n : ℤ) = A219115 (n + 1)

end A219115

/-! ## A219115.P9258913665648788811

`lt[0, A060373(n²)]`
-/

namespace A219115.P9258913665648788811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219115.P9258913665648788811

namespace A219115

/-- `lt[0, A060373(n²)]` -/
def P9258913665648788811.Spec : Prop :=
  ∀ n, (P9258913665648788811.a n : ℤ) = A219115 (n + 1)

end A219115

/-! ## A219115.P651202833798717458

`lt[1, A117592(n²)]`
-/

namespace A219115.P651202833798717458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219115.P651202833798717458

namespace A219115

/-- `lt[1, A117592(n²)]` -/
def P651202833798717458.Spec : Prop :=
  ∀ n, (P651202833798717458.a n : ℤ) = A219115 (n + 1)

end A219115

/-! ## A219115.P10702737887385338476

`lt[1, A190592(n²)]`
-/

namespace A219115.P10702737887385338476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219115.P10702737887385338476

namespace A219115

/-- `lt[1, A190592(n²)]` -/
def P10702737887385338476.Spec : Prop :=
  ∀ n, (P10702737887385338476.a n : ℤ) = A219115 (n + 1)

end A219115

/-! ## A219115.P2946848043484849969

`eq[0, A006996(n²)]`
-/

namespace A219115.P2946848043484849969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219115.P2946848043484849969

namespace A219115

/-- `eq[0, A006996(n²)]` -/
def P2946848043484849969.Spec : Prop :=
  ∀ n, (P2946848043484849969.a n : ℤ) = A219115 (n + 1)

end A219115

/-! ## A219115.P940464094900089010

`eq[0, A092037(n²)]`
-/

namespace A219115.P940464094900089010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092037 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219115.P940464094900089010

namespace A219115

/-- `eq[0, A092037(n²)]` -/
def P940464094900089010.Spec : Prop :=
  ∀ n, (P940464094900089010.a n : ℤ) = A219115 (n + 1)

end A219115

/-!
# A219116: Number of semicomplete digraphs on n nodes with an "Emperor".

The programs for A219116, the canonical program `A219116.P13595212386076288604` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219116 has offset 0).

The definition of A219116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219116.P13595212386076288604

`n*3^((n²-3*n+2)/2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219116

/-- `n*3^((n²-3*n+2)/2)` -/
def P13595212386076288604.Spec : Prop :=
  ∀ n, P13595212386076288604.a n = (A219116 n : ℝ)

end A219116

/-! ## A219116.P9863143187264496102

`n*3^C(abs(n-1), 2)`
-/

namespace A219116.P9863143187264496102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ Nat.choose |(n : ℤ) - 1|.toNat 2

end

end A219116.P9863143187264496102

namespace A219116

/-- `n*3^C(abs(n-1), 2)` -/
def P9863143187264496102.Spec : Prop :=
  ∀ n, (P9863143187264496102.a n : ℤ) = A219116 n

end A219116

/-! ## A219116.P3418550260048015724

`abs(n*A078530(2*n+1))`
-/

namespace A219116.P3418550260048015724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A078530 (2 * n + 1)|

end

end A219116.P3418550260048015724

namespace A219116

/-- `abs(n*A078530(2*n+1))` -/
def P3418550260048015724.Spec : Prop :=
  ∀ n, P3418550260048015724.a n = A219116 n

end A219116

/-! ## A219116.P13849527348361610381

`n*A047656(n)/A133494(n)`
-/

namespace A219116.P13849527348361610381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A047656 n : ℚ) / (A133494 n : ℚ)

end

end A219116.P13849527348361610381

namespace A219116

/-- `n*A047656(n)/A133494(n)` -/
def P13849527348361610381.Spec : Prop :=
  ∀ n, P13849527348361610381.a n = (A219116 n : ℚ)

end A219116

/-!
# A219117: Numbers n such that n^1+n+1, n^2+n+1, n^3+n+1 and n^4+n+1 are all prime.

The programs for A219117, there is no canonical definition to state claims against.
-/

/-! ## A219117.P9777241432122742983

`filter[A057683(n+1), A101264(#)]`
-/

namespace A219117.P9777241432122742983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A219117.P9777241432122742983

/-! ## A219117.P1404288685236656173

`∩[A005097(n+1), A057683(n+1)]`
-/

namespace A219117.P1404288685236656173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219117.P1404288685236656173

/-! ## A219117.P525329987708621505

`∩[A057683(n+1), A102781(n+1)]`
-/

namespace A219117.P525329987708621505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219117.P525329987708621505

/-! ## A219117.P8064788931493522429

`∩[A057683(n+1), A139791(n+1)]`
-/

namespace A219117.P8064788931493522429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219117.P8064788931493522429

/-!
# A219118: E.g.f.: Sum_{n>=0} log(1 + x*exp(2*n*x))^n / n!.

The programs for A219118, there is no canonical definition to state claims against.
-/

/-! ## A219118.P11620721897355832368

`A000010(A282190(n)+A090192(n))`
-/

namespace A219118.P11620721897355832368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A282190 n + A090192 n).toNat

end

end A219118.P11620721897355832368

/-! ## A219118.P5486347463916369800

`A203444(lcm(A000248(n), A317111(n)))`
-/

namespace A219118.P5486347463916369800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203444 (Int.lcm (A000248 n) (A317111 n))

end

end A219118.P5486347463916369800

/-!
# A219119: Expansion of e.g.f.: Sum_{n>=0} log(1 + x/(1-x)^n)^n / n!.

The programs for A219119, there is no canonical definition to state claims against.
-/

/-! ## A219119.P5977267091579820636

`A028310(abs((-n)^((2*n)%(n+2)))*comp[or(n, n+3)])`
-/

namespace A219119.P5977267091579820636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (|(-(n : ℤ)) ^ (2 * n % (n + 2))| * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A219119.P5977267091579820636

/-! ## A219119.P14088824133168093880

`A028310(A206855(n))`
-/

namespace A219119.P14088824133168093880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A206855 n).toNat

end

end A219119.P14088824133168093880

/-!
# A219121: Central terms in rows of triangle A219120.

The programs for A219121, there is no canonical definition to state claims against.
-/

/-! ## A219121.P11713453589612531936

`A219120(∑[2*n]+1)`
-/

namespace A219121.P11713453589612531936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219120 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219121.P11713453589612531936

/-! ## A219121.P17627622411173581010

`and(1-4/2, A219120(n*(n+1)+1))`
-/

namespace A219121.P17627622411173581010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A219120 (n * (n + 1) + 1))

end

end A219121.P17627622411173581010

/-! ## A219121.P2252980310574841203

`A219120(A002061(n+1))%A097801(n)`
-/

namespace A219121.P2252980310574841203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219120 (A002061 (n + 1)).toNat) (A097801 n)

end

end A219121.P2252980310574841203

/-!
# A219122: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 n X n array.

The programs for A219122, there is no canonical definition to state claims against.
-/

/-! ## A219122.P4570725012376651838

`A219128(∑[4*n]+1)`
-/

namespace A219122.P4570725012376651838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219122.P4570725012376651838

/-! ## A219122.P8617294847603451547

`or(1, A219128(A001844(n)))`
-/

namespace A219122.P8617294847603451547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219128 (A001844 n).toNat)

end

end A219122.P8617294847603451547

/-! ## A219122.P18248639302098685975

`record[A219128(A330613(n+1))]`
-/

namespace A219122.P18248639302098685975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219122.P18248639302098685975

/-!
# A219123: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A219123, there is no canonical definition to state claims against.
-/

/-! ## A219123.P15230130068758350043

`A219128(∑[n+3]+1)`
-/

namespace A219123.P15230130068758350043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219123.P15230130068758350043

/-! ## A219123.P8229045297707308162

`record[A219128(A198464(n+1))]`
-/

namespace A219123.P8229045297707308162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219123.P8229045297707308162

/-! ## A219123.P5530895734826617218

`A219128(A347633(3*n+4))%A142976(n+5)`
-/

namespace A219123.P5530895734826617218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219128 (A347633 (3 * n + 4)).toNat) (A142976 (n + 5))

end

end A219123.P5530895734826617218

/-!
# A219124: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A219124, there is no canonical definition to state claims against.
-/

/-! ## A219124.P14081194646657750919

`A219128(∑[n+4]+3)`
-/

namespace A219124.P14081194646657750919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219124.P14081194646657750919

/-! ## A219124.P18399576382602291172

`or(1, A219128(A141214(n+1)))`
-/

namespace A219124.P18399576382602291172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219128 (A141214 (n + 1)).toNat)

end

end A219124.P18399576382602291172

/-! ## A219124.P1065166038278632658

`A219128(A141214(n+1))%A217454(n+1)`
-/

namespace A219124.P1065166038278632658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219128 (A141214 (n + 1)).toNat) (A217454 (n + 1))

end

end A219124.P1065166038278632658

/-! ## A219124.P16128563799182838960

`A219128(A141214(n+1))+A102683(2*(n+2))`
-/

namespace A219124.P16128563799182838960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A141214 (n + 1)).toNat + A102683 (2 * (n + 2))

end

end A219124.P16128563799182838960

/-!
# A219125: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A219125, there is no canonical definition to state claims against.
-/

/-! ## A219125.P13386544277362751699

`A219128(Δ[A264443(n)])`
-/

namespace A219125.P13386544277362751699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (f1 (n + 1) - f1 n).toNat

end

end A219125.P13386544277362751699

/-! ## A219125.P4161502905989509152

`A219128(A046691(n+3))`
-/

namespace A219125.P4161502905989509152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A046691 (n + 3)).toNat

end

end A219125.P4161502905989509152

/-! ## A219125.P4171119517683539386

`A219128(A056115(n)+11)`
-/

namespace A219125.P4171119517683539386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A056115 n + 11).toNat

end

end A219125.P4171119517683539386

/-! ## A219125.P15627316707212502103

`A219128(eq[2, A092921(n)])`
-/

namespace A219125.P15627316707212502103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219125.P15627316707212502103

/-! ## A219125.P9828874328638009812

`A219128(eq[3, A152157(n)])`
-/

namespace A219125.P9828874328638009812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219125.P9828874328638009812

/-!
# A219126: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 nX6 array.

The programs for A219126, there is no canonical definition to state claims against.
-/

/-! ## A219126.P11506451892035505518

`A219128(A052905(n+3))`
-/

namespace A219126.P11506451892035505518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A052905 (n + 3)).toNat

end

end A219126.P11506451892035505518

/-! ## A219126.P7912836844349114882

`A219128(A056119(n)+16)`
-/

namespace A219126.P7912836844349114882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A056119 n + 16).toNat

end

end A219126.P7912836844349114882

/-! ## A219126.P5201767581141470524

`A219128(eq[3, A219347(n)])`
-/

namespace A219126.P5201767581141470524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219126.P5201767581141470524

/-! ## A219126.P10529885445028271234

`A219128(eq[5, A193592(n)])`
-/

namespace A219126.P10529885445028271234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219126.P10529885445028271234

/-! ## A219126.P2310660435302252346

`A219128(A055999(n+3)+1)`
-/

namespace A219126.P2310660435302252346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A055999 (n + 3) + 1).toNat

end

end A219126.P2310660435302252346

/-!
# A219127: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 nX7 array.

The programs for A219127, there is no canonical definition to state claims against.
-/

/-! ## A219127.P16833623810801463803

`A219128(A056121(n)+22)`
-/

namespace A219127.P16833623810801463803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A056121 n + 22).toNat

end

end A219127.P16833623810801463803

/-! ## A219127.P11118490757213994673

`A219128(eq[4, A219347(n)])`
-/

namespace A219127.P11118490757213994673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219127.P11118490757213994673

/-! ## A219127.P14355578802974091319

`A219128(eq[6, A193592(n)])`
-/

namespace A219127.P14355578802974091319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219127.P14355578802974091319

/-! ## A219127.P1248689616975871238

`A219128(A052905(n+4)-1)`
-/

namespace A219127.P1248689616975871238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A052905 (n + 4) - 1).toNat

end

end A219127.P1248689616975871238

/-!
# A219129: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 2 X n array.

The programs for A219129, the canonical program `A219129.P3971336808341742744` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219129 has offset 1).

The definition of A219129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219129.P3971336808341742744

`ogf((9-3x+3x^2-5x^3-6x^4-10x^6-4x^7)/(1-2x-6x^2+6x^3-7x^4+10x^5-6x^6+6x^7+4x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219129

/-- `ogf((9-3x+3x^2-5x^3-6x^4-10x^6-4x^7)/(1-2x-6x^2+6x^3-7x^4+10x^5-6x^6+6x^7+4x^8))` -/
def P3971336808341742744.Spec : Prop :=
  ∀ n, P3971336808341742744.a n = A219129 (n + 1)

theorem P3971336808341742744.correct : P3971336808341742744.Spec := by
  intro n
  simp only [A219129, Nat.add_sub_cancel]

end A219129

/-! ## A219129.P6014215741663338505

`A219128(∑[n+1]+2)`
-/

namespace A219129.P6014215741663338505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219129.P6014215741663338505

namespace A219129

/-- `A219128(∑[n+1]+2)` -/
def P6014215741663338505.Spec : Prop :=
  ∀ n, P6014215741663338505.a n = A219129 (n + 1)

end A219129

/-! ## A219129.P7311773000225653002

`record[root(A219128(n+3), A219142(n+1))]`
-/

namespace A219129.P7311773000225653002
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A219128 (n + 3) : ℝ) ^ (1 / (A219142 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219129.P7311773000225653002

namespace A219129

/-- `record[root(A219128(n+3), A219142(n+1))]` -/
def P7311773000225653002.Spec : Prop :=
  ∀ n, P7311773000225653002.a n = (A219129 (n + 1) : ℝ)

end A219129

/-! ## A219129.P6426744632395560227

`record[A219128(n+3)/A227343(n)]`
-/

namespace A219129.P6426744632395560227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219128 (n + 3) : ℚ) / (A227343 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219129.P6426744632395560227

namespace A219129

/-- `record[A219128(n+3)/A227343(n)]` -/
def P6426744632395560227.Spec : Prop :=
  ∀ n, P6426744632395560227.a n = (A219129 (n + 1) : ℚ)

end A219129

/-! ## A219129.P7440775748014543347

`record[A219128(n+3)/A098539(n)]`
-/

namespace A219129.P7440775748014543347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219128 (n + 3) : ℚ) / (A098539 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219129.P7440775748014543347

namespace A219129

/-- `record[A219128(n+3)/A098539(n)]` -/
def P7440775748014543347.Spec : Prop :=
  ∀ n, P7440775748014543347.a n = (A219129 (n + 1) : ℚ)

end A219129

/-!
# A219130: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A219130, there is no canonical definition to state claims against.
-/

/-! ## A219130.P8855775821892096255

`A219128(∑[n+2]+4)`
-/

namespace A219130.P8855775821892096255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219130.P8855775821892096255

/-! ## A219130.P10700556588033638081

`or(1, A219128(A167614(n+1)))`
-/

namespace A219130.P10700556588033638081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219128 (A167614 (n + 1)).toNat)

end

end A219130.P10700556588033638081

/-! ## A219130.P16420170873206749405

`A219128(A167614(n+1))+A011731(n)`
-/

namespace A219130.P16420170873206749405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A167614 (n + 1)).toNat + A011731 n

end

end A219130.P16420170873206749405

/-! ## A219130.P11593032943694584084

`A219128(A167614(n+1))+A011738(n)`
-/

namespace A219130.P11593032943694584084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A167614 (n + 1)).toNat + A011738 n

end

end A219130.P11593032943694584084

/-! ## A219130.P3380792590220772413

`A219128(A167614(n+1))+A025439(n)`
-/

namespace A219130.P3380792590220772413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A167614 (n + 1)).toNat + A025439 n

end

end A219130.P3380792590220772413

/-!
# A219131: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 4Xn array.

The programs for A219131, there is no canonical definition to state claims against.
-/

/-! ## A219131.P10134640622634082798

`A219128(∑[n+3]+7)`
-/

namespace A219131.P10134640622634082798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219131.P10134640622634082798

/-!
# A219132: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 5Xn array.

The programs for A219132, there is no canonical definition to state claims against.
-/

/-! ## A219132.P934593871176017721

`A219128(A167499(n+3))`
-/

namespace A219132.P934593871176017721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A167499 (n + 3)).toNat

end

end A219132.P934593871176017721

/-! ## A219132.P9048992338801318704

`A219128(A155212(n)+13)`
-/

namespace A219132.P9048992338801318704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A155212 n + 13).toNat

end

end A219132.P9048992338801318704

/-! ## A219132.P3560820947215656656

`A219128(A056000(n)+15)`
-/

namespace A219132.P3560820947215656656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A056000 n + 15).toNat

end

end A219132.P3560820947215656656

/-! ## A219132.P12625558804826535004

`A219128(eq[7, A066657(n)])`
-/

namespace A219132.P12625558804826535004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219132.P12625558804826535004

/-! ## A219132.P15538823679781879753

`A219128(A167614(n+3)+2)`
-/

namespace A219132.P15538823679781879753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A167614 (n + 3) + 2).toNat

end

end A219132.P15538823679781879753

/-!
# A219133: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 6Xn array.

The programs for A219133, there is no canonical definition to state claims against.
-/

/-! ## A219133.P8718136466405524827

`A219128(A056115(n)+21)`
-/

namespace A219133.P8718136466405524827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A056115 n + 21).toNat

end

end A219133.P8718136466405524827

/-! ## A219133.P1213173768886670722

`A219128(A134869(n+5)+5)`
-/

namespace A219133.P1213173768886670722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A134869 (n + 5) + 5).toNat

end

end A219133.P1213173768886670722

/-! ## A219133.P8999339034268417459

`A219128(A000217(n+5)+6)`
-/

namespace A219133.P8999339034268417459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A000217 (n + 5) + 6).toNat

end

end A219133.P8999339034268417459

/-! ## A219133.P18019788678671889001

`A219128(A056000(n+1)+16)`
-/

namespace A219133.P18019788678671889001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A056000 (n + 1) + 16).toNat

end

end A219133.P18019788678671889001

/-! ## A219133.P2917331698176187072

`A219128(eq[7, A131818(n+1)])`
-/

namespace A219133.P2917331698176187072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219133.P2917331698176187072

/-!
# A219134: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..2 7Xn array.

The programs for A219134, there is no canonical definition to state claims against.
-/

/-! ## A219134.P11185329300703025295

`A219128(A056119(n)+28)`
-/

namespace A219134.P11185329300703025295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A056119 n + 28).toNat

end

end A219134.P11185329300703025295

/-! ## A219134.P15591565991487709321

`A219128(eq[11, A066657(n)])`
-/

namespace A219134.P15591565991487709321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219134.P15591565991487709321

/-! ## A219134.P7438746755728359385

`record[A219128(lt[8, A066657(n)])]`
-/

namespace A219134.P7438746755728359385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219134.P7438746755728359385

/-! ## A219134.P11816454634046576744

`A219128(A167614(n+5)+4)`
-/

namespace A219134.P11816454634046576744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219128 (A167614 (n + 5) + 4).toNat

end

end A219134.P11816454634046576744

/-!
# A219135: Unchanging value maps: number of n X n binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 n X n array.

The programs for A219135, there is no canonical definition to state claims against.
-/

/-! ## A219135.P10551784288738752337

`A219142(∑[4*n]+1)`
-/

namespace A219135.P10551784288738752337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219135.P10551784288738752337

/-! ## A219135.P2509000634177506876

`record[A219142(Δ[A235355(n)])]`
-/

namespace A219135.P2509000634177506876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219135.P2509000634177506876

/-! ## A219135.P8838738844981733286

`record[A219142(A092530(n)+1)]`
-/

namespace A219135.P8838738844981733286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A092530 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219135.P8838738844981733286

/-! ## A219135.P9114540448253346462

`record[A219142(A330613(n+1))]`
-/

namespace A219135.P9114540448253346462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219135.P9114540448253346462

/-!
# A219136: Unchanging value maps: number of n X 2 binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 n X 2 array.

The programs for A219136, the canonical program `A219136.P1678318880158434112` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219136 has offset 1).

The definition of A219136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219136.P1678318880158434112

`ogf((2+2x+4x^2+3x^3-4x^4-4x^5)/(1-2x-x^2-3x^3-4x^4+2x^5+4x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219136

/-- `ogf((2+2x+4x^2+3x^3-4x^4-4x^5)/(1-2x-x^2-3x^3-4x^4+2x^5+4x^6))` -/
def P1678318880158434112.Spec : Prop :=
  ∀ n, P1678318880158434112.a n = A219136 (n + 1)

theorem P1678318880158434112.correct : P1678318880158434112.Spec := by
  intro n
  simp only [A219136, Nat.add_sub_cancel]

end A219136

/-! ## A219136.P14470371408387122459

`A219310(∑[n+1]+2)`
-/

namespace A219136.P14470371408387122459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219136.P14470371408387122459

namespace A219136

/-- `A219310(∑[n+1]+2)` -/
def P14470371408387122459.Spec : Prop :=
  ∀ n, P14470371408387122459.a n = A219136 (n + 1)

end A219136

/-! ## A219136.P6403316047726332380

`record[A219310(A175631(n+1)+3)]`
-/

namespace A219136.P6403316047726332380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A175631 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219136.P6403316047726332380

namespace A219136

/-- `record[A219310(A175631(n+1)+3)]` -/
def P6403316047726332380.Spec : Prop :=
  ∀ n, P6403316047726332380.a n = A219136 (n + 1)

end A219136

/-! ## A219136.P281379666117741525

`A219310(A000217(n+1)+2)+char[20]`
-/

namespace A219136.P281379666117741525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (A000217 (n + 1) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219136.P281379666117741525

namespace A219136

/-- `A219310(A000217(n+1)+2)+char[20]` -/
def P281379666117741525.Spec : Prop :=
  ∀ n, P281379666117741525.a n = A219136 (n + 1)

end A219136

/-! ## A219136.P7662824867263578071

`record[A219310(n+3)/A219142(n+1)]`
-/

namespace A219136.P7662824867263578071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219310 (n + 3) : ℚ) / (A219142 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219136.P7662824867263578071

namespace A219136

/-- `record[A219310(n+3)/A219142(n+1)]` -/
def P7662824867263578071.Spec : Prop :=
  ∀ n, P7662824867263578071.a n = (A219136 (n + 1) : ℚ)

end A219136

/-!
# A219137: Unchanging value maps: number of n X 3 binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 n X 3 array.

The programs for A219137, the canonical program `A219137.P11211114563592641031` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219137 has offset 1).

The definition of A219137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219137.P11211114563592641031

`ogf((4+2x+2x^2-3x^3-20x^4-12x^5+6x^6+4x^7)/(1-4x-x^2-x^3+12x^5+10x^6-2x^7-4x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219137

/-- `ogf((4+2x+2x^2-3x^3-20x^4-12x^5+6x^6+4x^7)/(1-4x-x^2-x^3+12x^5+10x^6-2x^7-4x^8))` -/
def P11211114563592641031.Spec : Prop :=
  ∀ n, P11211114563592641031.a n = A219137 (n + 1)

theorem P11211114563592641031.correct : P11211114563592641031.Spec := by
  intro n
  simp only [A219137, Nat.add_sub_cancel]

end A219137

/-! ## A219137.P18068805286820225156

`A219142(∑[n+3]+1)`
-/

namespace A219137.P18068805286820225156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219137.P18068805286820225156

namespace A219137

/-- `A219142(∑[n+3]+1)` -/
def P18068805286820225156.Spec : Prop :=
  ∀ n, P18068805286820225156.a n = A219137 (n + 1)

end A219137

/-! ## A219137.P13185748714314109201

`record[A219142(A198464(n+1))]`
-/

namespace A219137.P13185748714314109201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219137.P13185748714314109201

namespace A219137

/-- `record[A219142(A198464(n+1))]` -/
def P13185748714314109201.Spec : Prop :=
  ∀ n, P13185748714314109201.a n = A219137 (n + 1)

end A219137

/-!
# A219138: Unchanging value maps: number of nX4 binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX4 array.

The programs for A219138, there is no canonical definition to state claims against.
-/

/-! ## A219138.P8239385937548377490

`A219142(∑[n+4]+3)`
-/

namespace A219138.P8239385937548377490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219138.P8239385937548377490

/-! ## A219138.P2799103804992591418

`A234323(n+1)+A219142(A055998(n+2))`
-/

namespace A219138.P2799103804992591418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1) + A219142 (A055998 (n + 2)).toNat

end

end A219138.P2799103804992591418

/-! ## A219138.P5047264136086156558

`A038712(2*n+1)*A219142(A155212(n)+5)`
-/

namespace A219138.P5047264136086156558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 1) * A219142 (A155212 n + 5).toNat

end

end A219138.P5047264136086156558

/-!
# A219139: Unchanging value maps: number of nX5 binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX5 array.

The programs for A219139, there is no canonical definition to state claims against.
-/

/-! ## A219139.P9424425087821225422

`A219142(Δ[A264443(n)])`
-/

namespace A219139.P9424425087821225422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (f1 (n + 1) - f1 n).toNat

end

end A219139.P9424425087821225422

/-! ## A219139.P1289626716304218184

`A219142(A046691(n+3))`
-/

namespace A219139.P1289626716304218184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A046691 (n + 3)).toNat

end

end A219139.P1289626716304218184

/-! ## A219139.P13957591758806298511

`A219142(A056115(n)+11)`
-/

namespace A219139.P13957591758806298511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A056115 n + 11).toNat

end

end A219139.P13957591758806298511

/-! ## A219139.P11311650488601311284

`A219142(eq[2, A092921(n)])`
-/

namespace A219139.P11311650488601311284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219139.P11311650488601311284

/-! ## A219139.P8089780340579965032

`A219142(eq[3, A152157(n)])`
-/

namespace A219139.P8089780340579965032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219139.P8089780340579965032

/-!
# A219140: Unchanging value maps: number of nX6 binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX6 array.

The programs for A219140, there is no canonical definition to state claims against.
-/

/-! ## A219140.P3204068255015416883

`A219142(A052905(n+3))`
-/

namespace A219140.P3204068255015416883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A052905 (n + 3)).toNat

end

end A219140.P3204068255015416883

/-! ## A219140.P16900176356291389050

`A219142(A302537(n)+15)`
-/

namespace A219140.P16900176356291389050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A302537 n + 15).toNat

end

end A219140.P16900176356291389050

/-! ## A219140.P9318202371457996070

`A219142(A056119(n)+16)`
-/

namespace A219140.P9318202371457996070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A056119 n + 16).toNat

end

end A219140.P9318202371457996070

/-! ## A219140.P4636631954492036594

`A219142(eq[3, A219347(n)])`
-/

namespace A219140.P4636631954492036594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219140.P4636631954492036594

/-! ## A219140.P10892087357999054922

`A219142(eq[5, A193592(n)])`
-/

namespace A219140.P10892087357999054922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219140.P10892087357999054922

/-!
# A219141: Unchanging value maps: number of nX7 binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX7 array.

The programs for A219141, there is no canonical definition to state claims against.
-/

/-! ## A219141.P11813487808107280896

`A219142(A055999(n+4))`
-/

namespace A219141.P11813487808107280896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A055999 (n + 4)).toNat

end

end A219141.P11813487808107280896

/-! ## A219141.P4254512462809000810

`A219142(A056121(n)+22)`
-/

namespace A219141.P4254512462809000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A056121 n + 22).toNat

end

end A219141.P4254512462809000810

/-! ## A219141.P9135916524865500508

`A219142(eq[4, A219347(n)])`
-/

namespace A219141.P9135916524865500508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219141.P9135916524865500508

/-! ## A219141.P18419154318162392666

`A219142(eq[6, A193592(n)])`
-/

namespace A219141.P18419154318162392666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219141.P18419154318162392666

/-! ## A219141.P16746649393619184792

`A219142(A052905(n+4)-1)`
-/

namespace A219141.P16746649393619184792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A052905 (n + 4) - 1).toNat

end

end A219141.P16746649393619184792

/-!
# A219142: T(n,k)=Unchanging value maps: number of nXk binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 nXk array.

The programs for A219142, there is no canonical definition to state claims against.
-/

/-! ## A219142.P12658864118541320159

`A219441(n+1)+A061858(A322605(n+1))`
-/

namespace A219142.P12658864118541320159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (n + 1) + A061858 (A322605 (n + 1)).toNat

end

end A219142.P12658864118541320159

/-! ## A219142.P738126365190998415

`A219441(n+1)+A008611(A034372(A034372(n+1)))`
-/

namespace A219142.P738126365190998415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (n + 1) + A008611 (A034372 (A034372 (n + 1)).toNat).toNat

end

end A219142.P738126365190998415

/-! ## A219142.P16767690224705583873

`A219441(n+1)+A061858(A066119(n+1))`
-/

namespace A219142.P16767690224705583873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (n + 1) + A061858 (A066119 (n + 1)).toNat

end

end A219142.P16767690224705583873

/-! ## A219142.P164570103888114671

`A033619(A219441(n+1)+A028262(A036601(n)))`
-/

namespace A219142.P164570103888114671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A219441 (n + 1) + A028262 (A036601 n).toNat).toNat

end

end A219142.P164570103888114671

/-! ## A219142.P3938590487252567852

`A240868(A014382(n))+A219441(n+1)`
-/

namespace A219142.P3938590487252567852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240868 (A014382 n).toNat + A219441 (n + 1)

end

end A219142.P3938590487252567852

/-!
# A219143: Unchanging value maps: number of 2 X n binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 2 X n array.

The programs for A219143, the canonical program `A219143.P16960471211272582356` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219143 has offset 1).

The definition of A219143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219143.P814677450261417054

`ogf((1+4x+5x^2-2x^3+4x^4)/(1-2x-x^2+x^3-2x^4))`
-/

namespace A219143.P814677450261417054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5, -2, 4] [1, -2, -1, 1, -2] n

end

end A219143.P814677450261417054

namespace A219143

/-- `ogf((1+4x+5x^2-2x^3+4x^4)/(1-2x-x^2+x^3-2x^4))` -/
def P814677450261417054.Spec : Prop :=
  ∀ n, P814677450261417054.a n = A219143 (n + 1)

end A219143

/-! ## A219143.P16960471211272582356

`2*a(n-1)+a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=39, a(4)=96`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219143

/-- `2*a(n-1)+a(n-2)-a(n-3)+2*a(n-4)` -/
def P16960471211272582356.Spec : Prop :=
  ∀ n, P16960471211272582356.a n = A219143 (n + 1)

theorem P16960471211272582356.correct : P16960471211272582356.Spec := by
  intro n
  simp only [A219143, Nat.add_sub_cancel]

end A219143

/-! ## A219143.P15191048947616740476

`A219441(∑[n+1]+2)`
-/

namespace A219143.P15191048947616740476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219143.P15191048947616740476

namespace A219143

/-- `A219441(∑[n+1]+2)` -/
def P15191048947616740476.Spec : Prop :=
  ∀ n, P15191048947616740476.a n = A219143 (n + 1)

end A219143

/-! ## A219143.P2327521985879734732

`record[A219441(A175631(n+1)+3)]`
-/

namespace A219143.P2327521985879734732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A175631 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219143.P2327521985879734732

namespace A219143

/-- `record[A219441(A175631(n+1)+3)]` -/
def P2327521985879734732.Spec : Prop :=
  ∀ n, P2327521985879734732.a n = A219143 (n + 1)

end A219143

/-! ## A219143.P10115650315835540367

`record[A219441(n+3)/A126331(n)]`
-/

namespace A219143.P10115650315835540367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219441 (n + 3) : ℚ) / (A126331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219143.P10115650315835540367

namespace A219143

/-- `record[A219441(n+3)/A126331(n)]` -/
def P10115650315835540367.Spec : Prop :=
  ∀ n, P10115650315835540367.a n = (A219143 (n + 1) : ℚ)

end A219143

/-!
# A219144: Unchanging value maps: number of 3Xn binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 3Xn array.

The programs for A219144, there is no canonical definition to state claims against.
-/

/-! ## A219144.P8486839180233536059

`A219441(∑[n+2]+4)`
-/

namespace A219144.P8486839180233536059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219144.P8486839180233536059

/-! ## A219144.P15284694132152735443

`and(-1, A219441(A167614(n+1)))`
-/

namespace A219144.P15284694132152735443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219441 (A167614 (n + 1)).toNat)

end

end A219144.P15284694132152735443

/-! ## A219144.P3297643728017394778

`record[gcd(A219441(n+1), A303913(n))]`
-/

namespace A219144.P3297643728017394778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219441 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219144.P3297643728017394778

/-! ## A219144.P17660040665500255351

`A219441(A034856(n+1)+5)+char[15]`
-/

namespace A219144.P17660040665500255351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219144.P17660040665500255351

/-! ## A219144.P9879300270744624414

`A219441(A000096(n+1)+4)+char[27]`
-/

namespace A219144.P9879300270744624414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219144.P9879300270744624414

/-!
# A219145: Unchanging value maps: number of 4Xn binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 4Xn array.

The programs for A219145, there is no canonical definition to state claims against.
-/

/-! ## A219145.P2739450784018949348

`A219142(∑[n+3]+7)`
-/

namespace A219145.P2739450784018949348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219145.P2739450784018949348

/-!
# A219146: Unchanging value maps: number of 5Xn binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 5Xn array.

The programs for A219146, there is no canonical definition to state claims against.
-/

/-! ## A219146.P7697031590224055682

`A219142(A167499(n+3))`
-/

namespace A219146.P7697031590224055682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A167499 (n + 3)).toNat

end

end A219146.P7697031590224055682

/-! ## A219146.P12374190813466144648

`A219142(A077169(n+5))`
-/

namespace A219146.P12374190813466144648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A077169 (n + 5)).toNat

end

end A219146.P12374190813466144648

/-! ## A219146.P10700227101786197100

`A219142(A155212(n)+13)`
-/

namespace A219146.P10700227101786197100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A155212 n + 13).toNat

end

end A219146.P10700227101786197100

/-! ## A219146.P5272049352346274838

`A219142(A056000(n)+15)`
-/

namespace A219146.P5272049352346274838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A056000 n + 15).toNat

end

end A219146.P5272049352346274838

/-! ## A219146.P17845605711640154864

`A219142(eq[7, A066657(n)])`
-/

namespace A219146.P17845605711640154864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219146.P17845605711640154864

/-!
# A219147: Unchanging value maps: number of 6Xn binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 6Xn array.

The programs for A219147, there is no canonical definition to state claims against.
-/

/-! ## A219147.P12012848340440909808

`A219142(A056115(n)+21)`
-/

namespace A219147.P12012848340440909808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A056115 n + 21).toNat

end

end A219147.P12012848340440909808

/-! ## A219147.P5766539864354349968

`A219142(A167499(n+4)+1)`
-/

namespace A219147.P5766539864354349968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A167499 (n + 4) + 1).toNat

end

end A219147.P5766539864354349968

/-! ## A219147.P15238435563310478376

`A219142(A167614(n+4)+3)`
-/

namespace A219147.P15238435563310478376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A167614 (n + 4) + 3).toNat

end

end A219147.P15238435563310478376

/-! ## A219147.P7801302866122368809

`A219142(A000124(n+5)+5)`
-/

namespace A219147.P7801302866122368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A000124 (n + 5) + 5).toNat

end

end A219147.P7801302866122368809

/-! ## A219147.P12774720033272149596

`A219142(A000096(n+4)+7)`
-/

namespace A219147.P12774720033272149596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A000096 (n + 4) + 7).toNat

end

end A219147.P12774720033272149596

/-!
# A219148: Unchanging value maps: number of 7 X n binary arrays indicating the locations of corresponding elements unequal to no horizontal, diagonal or antidiagonal neighbor in a random 0..2 7 X n array.

The programs for A219148, there is no canonical definition to state claims against.
-/

/-! ## A219148.P18151143005093810606

`A219142(A167487(n+5))`
-/

namespace A219148.P18151143005093810606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A167487 (n + 5)).toNat

end

end A219148.P18151143005093810606

/-! ## A219148.P5692766617027069837

`A219142(A056119(n)+28)`
-/

namespace A219148.P5692766617027069837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A056119 n + 28).toNat

end

end A219148.P5692766617027069837

/-! ## A219148.P8547959093684582265

`A219142(eq[11, A066657(n)])`
-/

namespace A219148.P8547959093684582265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219148.P8547959093684582265

/-! ## A219148.P2436707344851127709

`A219142(A166136(n+5)+1)`
-/

namespace A219148.P2436707344851127709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A166136 (n + 5) + 1).toNat

end

end A219148.P2436707344851127709

/-! ## A219148.P6975951354070888790

`A219142(A167499(n+5)+2)`
-/

namespace A219148.P6975951354070888790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (A167499 (n + 5) + 2).toNat

end

end A219148.P6975951354070888790

/-!
# A219149: Unchanging value maps: number of n X n binary arrays indicating the locations of corresponding elements unequal to no horizontal, antidiagonal or vertical neighbor in a random 0..1 n X n array.

The programs for A219149, there is no canonical definition to state claims against.
-/

/-! ## A219149.P14588702422071746258

`A219156(∑[4*n]+1)`
-/

namespace A219149.P14588702422071746258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219149.P14588702422071746258

/-! ## A219149.P2560968324078216616

`record[gcd(A112467(n), A219156(n+1))]`
-/

namespace A219149.P2560968324078216616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A219156 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219149.P2560968324078216616

/-! ## A219149.P2568187161528257285

`A219156(A001844(n))+A059995(n)`
-/

namespace A219149.P2568187161528257285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A001844 n).toNat + A059995 n

end

end A219149.P2568187161528257285

/-! ## A219149.P15166675429083746329

`A219156(A001844(n))*A333733(n)`
-/

namespace A219149.P15166675429083746329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A001844 n).toNat * A333733 n

end

end A219149.P15166675429083746329

/-! ## A219149.P14858250524681407115

`gcd(A000038(n), A219156(A001844(n)))`
-/

namespace A219149.P14858250524681407115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A219156 (A001844 n).toNat)

end

end A219149.P14858250524681407115

/-!
# A219150: Unchanging value maps: number of n X 2 binary arrays indicating the locations of corresponding elements unequal to no horizontal, antidiagonal or vertical neighbor in a random 0..1 n X 2 array.

The programs for A219150, the canonical program `A219150.P3862960892200568171` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219150 has offset 1).

The definition of A219150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219150.P12966242504835223903

`ogf((2+3x^2-x^3)/(1-2x+x^2-4x^3-x^5))`
-/

namespace A219150.P12966242504835223903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 3, -1] [1, -2, 1, -4, 0, -1] n

end

end A219150.P12966242504835223903

namespace A219150

/-- `ogf((2+3x^2-x^3)/(1-2x+x^2-4x^3-x^5))` -/
def P12966242504835223903.Spec : Prop :=
  ∀ n, P12966242504835223903.a n = A219150 (n + 1)

end A219150

/-! ## A219150.P3862960892200568171

`2*a(n-1)-a(n-2)+4*a(n-3)+a(n-5)` with `a(0)=2, a(1)=4, a(2)=9, a(3)=21, a(4)=49`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219150

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+a(n-5)` -/
def P3862960892200568171.Spec : Prop :=
  ∀ n, P3862960892200568171.a n = A219150 (n + 1)

theorem P3862960892200568171.correct : P3862960892200568171.Spec := by
  intro n
  simp only [A219150, Nat.add_sub_cancel]

end A219150

/-! ## A219150.P18143862804359054786

`A005686(4*n+2)+A005686(4*n+3)`
-/

namespace A219150.P18143862804359054786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (4 * n + 2) + A005686 (4 * n + 3)

end

end A219150.P18143862804359054786

namespace A219150

/-- `A005686(4*n+2)+A005686(4*n+3)` -/
def P18143862804359054786.Spec : Prop :=
  ∀ n, P18143862804359054786.a n = A219150 (n + 1)

end A219150

/-! ## A219150.P10518627124395324409

`A219156(∑[n+1]+2)`
-/

namespace A219150.P10518627124395324409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219150.P10518627124395324409

namespace A219150

/-- `A219156(∑[n+1]+2)` -/
def P10518627124395324409.Spec : Prop :=
  ∀ n, P10518627124395324409.a n = A219150 (n + 1)

end A219150

/-! ## A219150.P7734083261472040779

`record[A219156(A133263(abs(1-n)))]`
-/

namespace A219150.P7734083261472040779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219150.P7734083261472040779

namespace A219150

/-- `record[A219156(A133263(abs(1-n)))]` -/
def P7734083261472040779.Spec : Prop :=
  ∀ n, P7734083261472040779.a n = A219150 (n + 1)

end A219150

/-!
# A219151: Unchanging value maps: number of n X 3 binary arrays indicating the locations of corresponding elements unequal to no horizontal, antidiagonal or vertical neighbor in a random 0..1 n X 3 array.

The programs for A219151, the canonical program `A219151.P1094379193726970920` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219151 has offset 1).

The definition of A219151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219151.P1094379193726970920

`ogf((4-7x+20x^2-26x^3+18x^4-16x^5+3x^6+2x^7-3x^8)/(1-4x+6x^2-14x^3+2x^4-x^5-11x^6+9x^7-6x^8+3x^9+4x^10))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219151

/-- `ogf((4-7x+20x^2-26x^3+18x^4-16x^5+3x^6+2x^7-3x^8)/(1-4x+6x^2-14x^3+2x^4-x^5-11x^6+9x^7-6x^8+3x^9+4x^10))` -/
def P1094379193726970920.Spec : Prop :=
  ∀ n, P1094379193726970920.a n = A219151 (n + 1)

theorem P1094379193726970920.correct : P1094379193726970920.Spec := by
  intro n
  simp only [A219151, Nat.add_sub_cancel]

end A219151

/-! ## A219151.P8882239196438130100

`A219156(∑[n+2]+4)`
-/

namespace A219151.P8882239196438130100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219151.P8882239196438130100

namespace A219151

/-- `A219156(∑[n+2]+4)` -/
def P8882239196438130100.Spec : Prop :=
  ∀ n, P8882239196438130100.a n = A219151 (n + 1)

end A219151

/-! ## A219151.P4887982424292877957

`lcm((-1)^n, A219156(A167614(n+1)))`
-/

namespace A219151.P4887982424292877957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A219156 (A167614 (n + 1)).toNat)

end

end A219151.P4887982424292877957

namespace A219151

/-- `lcm((-1)^n, A219156(A167614(n+1)))` -/
def P4887982424292877957.Spec : Prop :=
  ∀ n, (P4887982424292877957.a n : ℤ) = A219151 (n + 1)

end A219151

/-! ## A219151.P14917507499606424820

`A219156(A167614(n+1))%A219129(n+1)`
-/

namespace A219151.P14917507499606424820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219156 (A167614 (n + 1)).toNat) (A219129 (n + 1))

end

end A219151.P14917507499606424820

namespace A219151

/-- `A219156(A167614(n+1))%A219129(n+1)` -/
def P14917507499606424820.Spec : Prop :=
  ∀ n, P14917507499606424820.a n = A219151 (n + 1)

end A219151

/-! ## A219151.P17922002134679672518

`A324300(4*n+1)+A219156(A167614(n+1))`
-/

namespace A219151.P17922002134679672518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324300 (4 * n + 1) + A219156 (A167614 (n + 1)).toNat

end

end A219151.P17922002134679672518

namespace A219151

/-- `A324300(4*n+1)+A219156(A167614(n+1))` -/
def P17922002134679672518.Spec : Prop :=
  ∀ n, P17922002134679672518.a n = A219151 (n + 1)

end A219151

/-!
# A219152: Unchanging value maps: number of nX4 binary arrays indicating the locations of corresponding elements unequal to no horizontal, antidiagonal or vertical neighbor in a random 0..1 nX4 array.

The programs for A219152, there is no canonical definition to state claims against.
-/

/-! ## A219152.P17733426615652040822

`A219156(A374004(n+1))`
-/

namespace A219152.P17733426615652040822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A374004 (n + 1)).toNat

end

end A219152.P17733426615652040822

/-! ## A219152.P5156999027227682169

`A219156(A145018(n+4))`
-/

namespace A219152.P5156999027227682169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A145018 (n + 4)).toNat

end

end A219152.P5156999027227682169

/-! ## A219152.P3954425469093381643

`A219156(A052905(n)+9)`
-/

namespace A219152.P3954425469093381643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A052905 n + 9).toNat

end

end A219152.P3954425469093381643

/-! ## A219152.P2137979221057979532

`A219156(A055999(n)+10)`
-/

namespace A219152.P2137979221057979532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A055999 n + 10).toNat

end

end A219152.P2137979221057979532

/-! ## A219152.P5208925456481115462

`A219156(A167614(n+2)+1)`
-/

namespace A219152.P5208925456481115462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A167614 (n + 2) + 1).toNat

end

end A219152.P5208925456481115462

/-!
# A219153: Unchanging value maps: number of nX5 binary arrays indicating the locations of corresponding elements unequal to no horizontal, antidiagonal or vertical neighbor in a random 0..1 nX5 array.

The programs for A219153, there is no canonical definition to state claims against.
-/

/-! ## A219153.P18149720613336668961

`A219156(A374005(n+1))`
-/

namespace A219153.P18149720613336668961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A374005 (n + 1)).toNat

end

end A219153.P18149720613336668961

/-! ## A219153.P2824778998493275212

`A219156(A167499(n+3))`
-/

namespace A219153.P2824778998493275212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A167499 (n + 3)).toNat

end

end A219153.P2824778998493275212

/-! ## A219153.P4324191680028479860

`A219156(A155212(n)+13)`
-/

namespace A219153.P4324191680028479860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A155212 n + 13).toNat

end

end A219153.P4324191680028479860

/-! ## A219153.P17057187729506483005

`A219156(A133263(n+4)+3)`
-/

namespace A219153.P17057187729506483005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A133263 (n + 4) + 3).toNat

end

end A219153.P17057187729506483005

/-! ## A219153.P11562496789482842881

`A219156(Δ[A006416(n+2)]+8)`
-/

namespace A219153.P11562496789482842881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (f1 (n + 1) - f1 n + 8).toNat

end

end A219153.P11562496789482842881

/-!
# A219154: Unchanging value maps: number of n X 6 binary arrays indicating the locations of corresponding elements unequal to no horizontal, antidiagonal or vertical neighbor in a random 0..1 n X 6 array.

The programs for A219154, there is no canonical definition to state claims against.
-/

/-! ## A219154.P59935593690515514

`A219156(A374007(n+1))`
-/

namespace A219154.P59935593690515514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A374007 (n + 1)).toNat

end

end A219154.P59935593690515514

/-! ## A219154.P2272750149812038470

`A219156(A056115(n)+21)`
-/

namespace A219154.P2272750149812038470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A056115 n + 21).toNat

end

end A219154.P2272750149812038470

/-! ## A219154.P12444128332373252825

`A219156(eq[7, A131818(n+1)])`
-/

namespace A219154.P12444128332373252825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219154.P12444128332373252825

/-! ## A219154.P14337773647038815857

`A219156(A052905(n+3))`
-/

namespace A219154.P14337773647038815857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A052905 (n + 3)).toNat

end

end A219154.P14337773647038815857

/-! ## A219154.P9293771172731556357

`A219156(eq[3, A219347(n)])`
-/

namespace A219154.P9293771172731556357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219154.P9293771172731556357

/-!
# A219155: Unchanging value maps: number of nX7 binary arrays indicating the locations of corresponding elements unequal to no horizontal, antidiagonal or vertical neighbor in a random 0..1 nX7 array.

The programs for A219155, there is no canonical definition to state claims against.
-/

/-! ## A219155.P7990445826523085377

`A219156(A374008(n+1))`
-/

namespace A219155.P7990445826523085377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A374008 (n + 1)).toNat

end

end A219155.P7990445826523085377

/-! ## A219155.P7441992295038363884

`A219156(A056119(n)+28)`
-/

namespace A219155.P7441992295038363884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (A056119 n + 28).toNat

end

end A219155.P7441992295038363884

/-! ## A219155.P5158883592635582494

`A219156(eq[11, A066657(n)])`
-/

namespace A219155.P5158883592635582494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219155.P5158883592635582494

/-! ## A219155.P16270114534355738994

`A219156(eq[8, A131818(n+1)])`
-/

namespace A219155.P16270114534355738994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219155.P16270114534355738994

/-! ## A219155.P11636681568303810731

`A219156(eq[4, A219347(n)])`
-/

namespace A219155.P11636681568303810731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219155.P11636681568303810731

/-!
# A219157: Number of prime pairs {p,q} with p>q and p-2,q+2 also prime such that p+(1+mod(-n,6))q=n if n is not congruent to 2 mod 6, and p-q=n and q<n/2 if n=2 (mod 6).

The programs for A219157, there is no canonical definition to state claims against.
-/

/-! ## A219157.P2014009774113722784

`A103156(A046523(n+5))%A133880(n)`
-/

namespace A219157.P2014009774113722784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103156 (A046523 (n + 5)).toNat) (A133880 n)

end

end A219157.P2014009774113722784

/-! ## A219157.P17355934380836337057

`A173725(A271466(2*(n+1)))%A133880(n)`
-/

namespace A219157.P17355934380836337057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173725 ((A271466 (2 * (n + 1))).toNat + 15)) (A133880 n)

end

end A219157.P17355934380836337057

/-!
# A219158: Minimum number of integer-sided squares needed to tile an m X n rectangle.

The programs for A219158, there is no canonical definition to state claims against.
-/

/-! ## A219158.P18318522529733978337

`A113881(A245300(n)+1)`
-/

namespace A219158.P18318522529733978337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A245300 n + 1).toNat

end

end A219158.P18318522529733978337

/-! ## A219158.P90307019125592240

`A338573(A245300(n)+1)`
-/

namespace A219158.P90307019125592240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338573 (A245300 n + 1).toNat

end

end A219158.P90307019125592240

/-! ## A219158.P7289868580146788854

`A049834(n+1)-A249832(A244154(n)²)`
-/

namespace A219158.P7289868580146788854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) - A249832 (A244154 n ^ 2).toNat

end

end A219158.P7289868580146788854

/-! ## A219158.P16738434107568280911

`A049834(n+1)-A249832(A054630(n+1))`
-/

namespace A219158.P16738434107568280911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) - A249832 (A054630 (n + 1)).toNat

end

end A219158.P16738434107568280911

/-! ## A219158.P4394069803155813949

`A049834(n+1)%A014886(n+1)`
-/

namespace A219158.P4394069803155813949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049834 (n + 1)) (A014886 (n + 1))

end

end A219158.P4394069803155813949

/-!
# A219160: 

The programs for A219160, there is no canonical definition to state claims against.
-/

/-! ## A219160.P2735407511525352392

`floor((a(n-1)²-2)^(3/2))` with `a(0)=4`
-/

namespace A219160.P2735407511525352392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A219160.P2735407511525352392

/-!
# A219161: 

The programs for A219161, there is no canonical definition to state claims against.
-/

/-! ## A219161.P15128432465463042312

`floor((a(n-1)²-2)^(3/2))` with `a(0)=5`
-/

namespace A219161.P15128432465463042312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A219161.P15128432465463042312

/-!
# A219166: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X n array.

The programs for A219166, there is no canonical definition to state claims against.
-/

/-! ## A219166.P2857009157081465927

`A219173(∑[4*n]+1)`
-/

namespace A219166.P2857009157081465927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219166.P2857009157081465927

/-! ## A219166.P7948869123372547858

`record[A219173(Δ[A235355(n)])]`
-/

namespace A219166.P7948869123372547858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219166.P7948869123372547858

/-! ## A219166.P3376951160081998616

`record[A219173(A330613(n+1))]`
-/

namespace A219166.P3376951160081998616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219166.P3376951160081998616

/-!
# A219167: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X 2 array.

The programs for A219167, the canonical program `A219167.P8930779501832685088` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219167 has offset 1).

The definition of A219167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219167.P5765739425300491310

`ogf((3-8x+18x^2-22x^3+13x^4-x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A219167.P5765739425300491310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 18, -22, 13, -1] [1, -5, 10, -10, 5, -1] n

end

end A219167.P5765739425300491310

namespace A219167

/-- `ogf((3-8x+18x^2-22x^3+13x^4-x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5765739425300491310.Spec : Prop :=
  ∀ n, P5765739425300491310.a n = A219167 (n + 1)

end A219167

/-! ## A219167.P8930779501832685088

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=7, a(2)=23, a(3)=53, a(4)=103, a(5)=182`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219167

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8930779501832685088.Spec : Prop :=
  ∀ n, P8930779501832685088.a n = A219167 (n + 1)

theorem P8930779501832685088.correct : P8930779501832685088.Spec := by
  intro n
  simp only [A219167, Nat.add_sub_cancel]

end A219167

/-! ## A219167.P1427647451281012798

`A038722(A276819(n))+A000124(A152947(n+1))`
-/

namespace A219167.P1427647451281012798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A276819 n).toNat + A000124 (A152947 (n + 1)).toNat

end

end A219167.P1427647451281012798

namespace A219167

/-- `A038722(A276819(n))+A000124(A152947(n+1))` -/
def P1427647451281012798.Spec : Prop :=
  ∀ n, P1427647451281012798.a n = A219167 (n + 1)

end A219167

/-! ## A219167.P16233338385140861965

`A038722(A276819(n))+A000124(A000124(n)-n)`
-/

namespace A219167.P16233338385140861965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A276819 n).toNat + A000124 (A000124 n - (n : ℤ)).toNat

end

end A219167.P16233338385140861965

namespace A219167

/-- `A038722(A276819(n))+A000124(A000124(n)-n)` -/
def P16233338385140861965.Spec : Prop :=
  ∀ n, P16233338385140861965.a n = A219167 (n + 1)

end A219167

/-! ## A219167.P14087067811274556975

`A254667(A006137(n))+A000217(A152947(n+1))`
-/

namespace A219167.P14087067811274556975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A006137 n).toNat + A000217 (A152947 (n + 1)).toNat

end

end A219167.P14087067811274556975

namespace A219167

/-- `A254667(A006137(n))+A000217(A152947(n+1))` -/
def P14087067811274556975.Spec : Prop :=
  ∀ n, P14087067811274556975.a n = A219167 (n + 1)

end A219167

/-!
# A219168: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX3 array.

The programs for A219168, there is no canonical definition to state claims against.
-/

/-! ## A219168.P8449390595996198764

`A219173(∑[n+2]+4)`
-/

namespace A219168.P8449390595996198764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219168.P8449390595996198764

/-! ## A219168.P16100675794577977098

`record[A219173(A008795(n)+3)]`
-/

namespace A219168.P16100675794577977098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219168.P16100675794577977098

/-! ## A219168.P4421548269997906904

`A219173(A167614(n+1))+A025439(n)`
-/

namespace A219168.P4421548269997906904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A167614 (n + 1)).toNat + A025439 n

end

end A219168.P4421548269997906904

/-! ## A219168.P13410724043462627114

`A219173(A167614(n+1))+A025442(n)`
-/

namespace A219168.P13410724043462627114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A167614 (n + 1)).toNat + A025442 n

end

end A219168.P13410724043462627114

/-! ## A219168.P3251123884143179800

`A219173(A167614(n+1))+A025469(n)`
-/

namespace A219168.P3251123884143179800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A167614 (n + 1)).toNat + A025469 n

end

end A219168.P3251123884143179800

/-!
# A219169: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX4 array.

The programs for A219169, there is no canonical definition to state claims against.
-/

/-! ## A219169.P6112519455090979281

`A219173(A374004(n+1))`
-/

namespace A219169.P6112519455090979281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A374004 (n + 1)).toNat

end

end A219169.P6112519455090979281

/-! ## A219169.P9212715897287755558

`A219173(A141214(n)+7)`
-/

namespace A219169.P9212715897287755558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A141214 n + 7).toNat

end

end A219169.P9212715897287755558

/-! ## A219169.P14789181853434423196

`A219173(A052905(n)+9)`
-/

namespace A219169.P14789181853434423196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A052905 n + 9).toNat

end

end A219169.P14789181853434423196

/-! ## A219169.P12502360910299997945

`A219173(A055999(n)+10)`
-/

namespace A219169.P12502360910299997945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A055999 n + 10).toNat

end

end A219169.P12502360910299997945

/-! ## A219169.P834621317630006313

`A219173(eq[5, A066657(n)])`
-/

namespace A219169.P834621317630006313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219169.P834621317630006313

/-!
# A219170: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX5 array.

The programs for A219170, there is no canonical definition to state claims against.
-/

/-! ## A219170.P1502030673187325906

`A219173(A374005(n+1))`
-/

namespace A219170.P1502030673187325906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A374005 (n + 1)).toNat

end

end A219170.P1502030673187325906

/-! ## A219170.P851186357224052010

`A219173(A167499(n+3))`
-/

namespace A219170.P851186357224052010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A167499 (n + 3)).toNat

end

end A219170.P851186357224052010

/-! ## A219170.P14034259587113318640

`A219173(A155212(n)+13)`
-/

namespace A219170.P14034259587113318640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A155212 n + 13).toNat

end

end A219170.P14034259587113318640

/-! ## A219170.P9105578320128258305

`A219173(A056000(n)+15)`
-/

namespace A219170.P9105578320128258305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A056000 n + 15).toNat

end

end A219170.P9105578320128258305

/-! ## A219170.P13669396035779506442

`A219173(eq[7, A066657(n)])`
-/

namespace A219170.P13669396035779506442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219170.P13669396035779506442

/-!
# A219171: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX6 array.

The programs for A219171, there is no canonical definition to state claims against.
-/

/-! ## A219171.P13595536782349078881

`A219173(A374007(n+1))`
-/

namespace A219171.P13595536782349078881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A374007 (n + 1)).toNat

end

end A219171.P13595536782349078881

/-! ## A219171.P16520183137146370393

`A219173(A056115(n)+21)`
-/

namespace A219171.P16520183137146370393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A056115 n + 21).toNat

end

end A219171.P16520183137146370393

/-! ## A219171.P18318196256689906277

`A219173(A167499(n+4)+1)`
-/

namespace A219171.P18318196256689906277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A167499 (n + 4) + 1).toNat

end

end A219171.P18318196256689906277

/-! ## A219171.P18153449755393368904

`A219173(A167614(n+4)+3)`
-/

namespace A219171.P18153449755393368904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A167614 (n + 4) + 3).toNat

end

end A219171.P18153449755393368904

/-! ## A219171.P5574859306870729551

`A219173(A000217(n+5)+6)`
-/

namespace A219171.P5574859306870729551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A000217 (n + 5) + 6).toNat

end

end A219171.P5574859306870729551

/-!
# A219172: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX7 array.

The programs for A219172, there is no canonical definition to state claims against.
-/

/-! ## A219172.P10323465855079364933

`A219173(A374008(n+1))`
-/

namespace A219172.P10323465855079364933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A374008 (n + 1)).toNat

end

end A219172.P10323465855079364933

/-! ## A219172.P8310396003167005114

`A219173(A055999(n+4))`
-/

namespace A219172.P8310396003167005114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A055999 (n + 4)).toNat

end

end A219172.P8310396003167005114

/-! ## A219172.P727702253075739415

`A219173(A056121(n)+22)`
-/

namespace A219172.P727702253075739415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A056121 n + 22).toNat

end

end A219172.P727702253075739415

/-! ## A219172.P17420060371358188821

`A219173(A056119(n)+28)`
-/

namespace A219172.P17420060371358188821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219173 (A056119 n + 28).toNat

end

end A219172.P17420060371358188821

/-!
# A219174: Numbers that have no other prime factors than 2 and/or Mersenne primes.

The programs for A219174, the canonical program `A219174.P8041433782300055859` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219174 has offset 1).

The definition of A219174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219174.P15797330356651833776

`filter[A235028(n+2), A364252(#)]`
-/

namespace A219174.P15797330356651833776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P15797330356651833776

namespace A219174

/-- `filter[A235028(n+2), A364252(#)]` -/
def P15797330356651833776.Spec : Prop :=
  ∀ n, P15797330356651833776.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P6038798257332609490

`record[gcd(n+1, A336921(n+1))]`
-/

namespace A219174.P6038798257332609490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A336921 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219174.P6038798257332609490

namespace A219174

/-- `record[gcd(n+1, A336921(n+1))]` -/
def P6038798257332609490.Spec : Prop :=
  ∀ n, (P6038798257332609490.a n : ℤ) = A219174 (n + 1)

end A219174

/-! ## A219174.P10799725800415222251

`filter[A004144(n+1), A364252(#)]`
-/

namespace A219174.P10799725800415222251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P10799725800415222251

namespace A219174

/-- `filter[A004144(n+1), A364252(#)]` -/
def P10799725800415222251.Spec : Prop :=
  ∀ n, P10799725800415222251.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P8041433782300055859

`eq[1, A364252(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A219174

/-- `eq[1, A364252(n+1)]+1` -/
def P8041433782300055859.Spec : Prop :=
  ∀ n, (P8041433782300055859.a n : ℤ) = A219174 (n + 1)

theorem P8041433782300055859.correct : P8041433782300055859.Spec := by
  intro n
  simp only [A219174, Nat.add_sub_cancel]

end A219174

/-! ## A219174.P2049544777533897198

`lt[A336921(n+1), 1]+1`
-/

namespace A219174.P2049544777533897198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A219174.P2049544777533897198

namespace A219174

/-- `lt[A336921(n+1), 1]+1` -/
def P2049544777533897198.Spec : Prop :=
  ∀ n, (P2049544777533897198.a n : ℤ) = A219174 (n + 1)

end A219174

/-! ## A219174.P13490571586434355807

`filter[A070932(n+2), A364252(#)]`
-/

namespace A219174.P13490571586434355807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P13490571586434355807

namespace A219174

/-- `filter[A070932(n+2), A364252(#)]` -/
def P13490571586434355807.Spec : Prop :=
  ∀ n, P13490571586434355807.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P10834199932941248820

`filter[A035246(n+1), A364252(#)]`
-/

namespace A219174.P10834199932941248820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P10834199932941248820

namespace A219174

/-- `filter[A035246(n+1), A364252(#)]` -/
def P10834199932941248820.Spec : Prop :=
  ∀ n, P10834199932941248820.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P2651408207775562874

`filter[A268377(n+1), A364252(#)]`
-/

namespace A219174.P2651408207775562874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P2651408207775562874

namespace A219174

/-- `filter[A268377(n+1), A364252(#)]` -/
def P2651408207775562874.Spec : Prop :=
  ∀ n, P2651408207775562874.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P13014661455857240512

`filter[A225837(n+1), A364252(#)]`
-/

namespace A219174.P13014661455857240512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P13014661455857240512

namespace A219174

/-- `filter[A225837(n+1), A364252(#)]` -/
def P13014661455857240512.Spec : Prop :=
  ∀ n, P13014661455857240512.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P7016641817548683864

`filter[A209921(n+1), A364252(#)]`
-/

namespace A219174.P7016641817548683864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P7016641817548683864

namespace A219174

/-- `filter[A209921(n+1), A364252(#)]` -/
def P7016641817548683864.Spec : Prop :=
  ∀ n, P7016641817548683864.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P6526743656953261530

`eq[1, A336467(n+1)]+1`
-/

namespace A219174.P6526743656953261530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219174.P6526743656953261530

namespace A219174

/-- `eq[1, A336467(n+1)]+1` -/
def P6526743656953261530.Spec : Prop :=
  ∀ n, (P6526743656953261530.a n : ℤ) = A219174 (n + 1)

end A219174

/-! ## A219174.P1376439952544297924

`filter[A236207(n+1), A364252(#)]`
-/

namespace A219174.P1376439952544297924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P1376439952544297924

namespace A219174

/-- `filter[A236207(n+1), A364252(#)]` -/
def P1376439952544297924.Spec : Prop :=
  ∀ n, P1376439952544297924.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P13941899068972317472

`filter[A004439(n+1), A364252(#)]`
-/

namespace A219174.P13941899068972317472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P13941899068972317472

namespace A219174

/-- `filter[A004439(n+1), A364252(#)]` -/
def P13941899068972317472.Spec : Prop :=
  ∀ n, P13941899068972317472.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P10861673947745071644

`filter[A047201(n+1), A364252(#)]`
-/

namespace A219174.P10861673947745071644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P10861673947745071644

namespace A219174

/-- `filter[A047201(n+1), A364252(#)]` -/
def P10861673947745071644.Spec : Prop :=
  ∀ n, P10861673947745071644.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P4584276685702047760

`filter[A008320(n+1), A364252(#)]`
-/

namespace A219174.P4584276685702047760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P4584276685702047760

namespace A219174

/-- `filter[A008320(n+1), A364252(#)]` -/
def P4584276685702047760.Spec : Prop :=
  ∀ n, P4584276685702047760.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P7386941965061094181

`filter[A382744(n+1), A364252(#)]`
-/

namespace A219174.P7386941965061094181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P7386941965061094181

namespace A219174

/-- `filter[A382744(n+1), A364252(#)]` -/
def P7386941965061094181.Spec : Prop :=
  ∀ n, P7386941965061094181.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P1992495252242607303

`filter[A047226(n+2), A364252(#)]`
-/

namespace A219174.P1992495252242607303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P1992495252242607303

namespace A219174

/-- `filter[A047226(n+2), A364252(#)]` -/
def P1992495252242607303.Spec : Prop :=
  ∀ n, P1992495252242607303.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P10221472354764761257

`filter[A067251(n+1), A364252(#)]`
-/

namespace A219174.P10221472354764761257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P10221472354764761257

namespace A219174

/-- `filter[A067251(n+1), A364252(#)]` -/
def P10221472354764761257.Spec : Prop :=
  ∀ n, P10221472354764761257.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P5696725836490702362

`filter[A137409(n+1), A364252(#)]`
-/

namespace A219174.P5696725836490702362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P5696725836490702362

namespace A219174

/-- `filter[A137409(n+1), A364252(#)]` -/
def P5696725836490702362.Spec : Prop :=
  ∀ n, P5696725836490702362.a n = A219174 (n + 1)

end A219174

/-! ## A219174.P16276611055524697495

`filter[A160542(n+1), A364252(#)]`
-/

namespace A219174.P16276611055524697495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A219174.P16276611055524697495

namespace A219174

/-- `filter[A160542(n+1), A364252(#)]` -/
def P16276611055524697495.Spec : Prop :=
  ∀ n, P16276611055524697495.a n = A219174 (n + 1)

end A219174

/-!
# A219175: a(n) = n mod lambda(n) where lambda is the Carmichael function (A002322).

The programs for A219175, there is no canonical definition to state claims against.
-/

/-! ## A219175.P11018150091651102296

`(n+1)%A002322(n+1)`
-/

namespace A219175.P11018150091651102296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A002322 (n + 1))

end

end A219175.P11018150091651102296

/-! ## A219175.P3582733492071959862

`A000027(n+1)%(A263027(n+1)-1)`
-/

namespace A219175.P3582733492071959862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A263027 (n + 1) - 1)

end

end A219175.P3582733492071959862

/-! ## A219175.P6040653109234045284

`A028310(n+1)%(1-A263027(n+1))`
-/

namespace A219175.P6040653109234045284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 1)) (1 - A263027 (n + 1))

end

end A219175.P6040653109234045284

/-! ## A219175.P16615062477214678905

`A048671(n+1)%(1-A263027(n+1))`
-/

namespace A219175.P16615062477214678905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048671 (n + 1)) (1 - A263027 (n + 1))

end

end A219175.P16615062477214678905

/-! ## A219175.P4747525022792364606

`A051953(n+1)%(A263027(n+1)-1)`
-/

namespace A219175.P4747525022792364606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051953 (n + 1)) (A263027 (n + 1) - 1)

end

end A219175.P4747525022792364606

/-! ## A219175.P1365814339018379271

`A068494(n+1)%A004442(A263027(n+1))`
-/

namespace A219175.P1365814339018379271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068494 (n + 1)) (A004442 (A263027 (n + 1)).toNat)

end

end A219175.P1365814339018379271

/-! ## A219175.P13380285743306533789

`A121048(n+1)%A023443(A263027(n+1))`
-/

namespace A219175.P13380285743306533789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121048 (n + 1)) (A023443 (A263027 (n + 1)).toNat)

end

end A219175.P13380285743306533789

/-! ## A219175.P1234903589208873586

`(A219428(n+1)+1)%(A134198(n+1)-A051903(n+1))`
-/

namespace A219175.P1234903589208873586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219428 (n + 1) + 1) (A134198 (n + 1) - A051903 (n + 1))

end

end A219175.P1234903589208873586

/-! ## A219175.P9561662938574720844

`A023443(n+2)%(1-A263027(n+1))`
-/

namespace A219175.P9561662938574720844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (n + 2)) (1 - A263027 (n + 1))

end

end A219175.P9561662938574720844

/-! ## A219175.P17887272899185693499

`A026242(A000201(n+1))%(1-A263027(n+1))`
-/

namespace A219175.P17887272899185693499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026242 (A000201 (n + 1)).toNat) (1 - A263027 (n + 1))

end

end A219175.P17887272899185693499

/-! ## A219175.P17362421151229773644

`A008619(2*n)%A023443(A263027(n+1))`
-/

namespace A219175.P17362421151229773644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (A023443 (A263027 (n + 1)).toNat)

end

end A219175.P17362421151229773644

/-! ## A219175.P131650285427308586

`A026242(A001950(n+1))%(1-A263027(n+1))`
-/

namespace A219175.P131650285427308586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026242 (A001950 (n + 1)).toNat) (1 - A263027 (n + 1))

end

end A219175.P131650285427308586

/-! ## A219175.P17699015822549371545

`A233583(n+2)%(1-A263027(n+1))`
-/

namespace A219175.P17699015822549371545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 2)) (1 - A263027 (n + 1))

end

end A219175.P17699015822549371545

/-! ## A219175.P8211022750857934568

`A048158(A002322(n+1)+A000217(n))`
-/

namespace A219175.P8211022750857934568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A002322 (n + 1) + A000217 n).toNat

end

end A219175.P8211022750857934568

/-! ## A219175.P10108660928537437500

`A334312(A000124(n))%(A263027(n+1)-1)`
-/

namespace A219175.P10108660928537437500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334312 (A000124 n).toNat) (A263027 (n + 1) - 1)

end

end A219175.P10108660928537437500

/-!
# A219176: Smallest k > 1 such that k + n divides k^2 + n.

The programs for A219176, there is no canonical definition to state claims against.
-/

/-! ## A219176.P11837634363592483078

`A301941(n+3)+1`
-/

namespace A219176.P11837634363592483078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301941 (n + 3) + 1

end

end A219176.P11837634363592483078

/-! ## A219176.P15007550449883986897

`A020725(A301941(n+3))`
-/

namespace A219176.P15007550449883986897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A301941 (n + 3)).toNat

end

end A219176.P15007550449883986897

/-! ## A219176.P10532527333812036080

`A319813(n+3)+A020639(A319798(3*n+5))`
-/

namespace A219176.P10532527333812036080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319813 (n + 3) + A020639 (A319798 (3 * n + 5)).toNat

end

end A219176.P10532527333812036080

/-!
# A219178: a(n) = first unlucky number removed at the n-th stage of Lucky sieve.

The programs for A219178, there is no canonical definition to state claims against.
-/

/-! ## A219178.P3782697293513567432

`A269369(a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A219178.P3782697293513567432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A269369 (a (n - 1)).toNat

end

end A219178.P3782697293513567432

/-! ## A219178.P11826432233793142116

`A257256(n+1)+A000959(n+1)`
-/

namespace A219178.P11826432233793142116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257256 (n + 1) + A000959 (n + 1)

end

end A219178.P11826432233793142116

/-! ## A219178.P1307703436513619163

`A254100(n+1)-A256487(n+1)`
-/

namespace A219178.P1307703436513619163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - A256487 (n + 1)

end

end A219178.P1307703436513619163

/-! ## A219178.P12943697490456499591

`A254100(n+1)-2*A256488(n+1)`
-/

namespace A219178.P12943697490456499591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - 2 * A256488 (n + 1)

end

end A219178.P12943697490456499591

/-! ## A219178.P16598916928122584667

`A000040(n+1)+A257256(n+1)+A032600(n+1)`
-/

namespace A219178.P16598916928122584667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A257256 (n + 1) + A032600 (n + 1))

end

end A219178.P16598916928122584667

/-! ## A219178.P3929226572065465946

`A256482(n+1)+A003309(n+2)-A256487(n+1)`
-/

namespace A219178.P3929226572065465946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 1) + (A003309 (n + 2) - A256487 (n + 1))

end

end A219178.P3929226572065465946

/-! ## A219178.P7705767414219444951

`eq[1, A260437(n+1)]+1`
-/

namespace A219178.P7705767414219444951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219178.P7705767414219444951

/-! ## A219178.P15133304814434196923

`eq[2, A260429(n+1)]+1`
-/

namespace A219178.P15133304814434196923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219178.P15133304814434196923

/-! ## A219178.P2192617042361037632

`A141310(eq[2, A260429(n+1)])`
-/

namespace A219178.P2192617042361037632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219178.P2192617042361037632

/-! ## A219178.P2139686236965967148

`A255543(∑[n+1])`
-/

namespace A219178.P2139686236965967148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219178.P2139686236965967148

/-! ## A219178.P5273567149992438384

`A255544(∑[n]+1)`
-/

namespace A219178.P5273567149992438384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219178.P5273567149992438384

/-! ## A219178.P13184488787041565542

`A255545(∑[n+2])`
-/

namespace A219178.P13184488787041565542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219178.P13184488787041565542

/-! ## A219178.P15121546746710607355

`A255547(∑[n+1]+2)`
-/

namespace A219178.P15121546746710607355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255547 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219178.P15121546746710607355

/-!
# A219180: Number T(n,k) of partitions of n into k distinct prime parts; triangle T(n,k), n>=0, read by rows.

The programs for A219180, there is no canonical definition to state claims against.
-/

/-! ## A219180.P17791275029593246292

`and(A097479(n)!, A218622(A265059(n))!)`
-/

namespace A219180.P17791275029593246292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.factorial (A097479 n).toNat) (Nat.factorial (A218622 (A265059 n).toNat).toNat)

end

end A219180.P17791275029593246292

/-! ## A219180.P6166248444482638999

`A068431(A242043(n+1))`
-/

namespace A219180.P6166248444482638999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068431 (A242043 (n + 1)).toNat

end

end A219180.P6166248444482638999

/-! ## A219180.P160657208656223256

`A030308(A000040(2*n+5)*A296864(n+3))`
-/

namespace A219180.P160657208656223256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A000040 (2 * n + 5) * A296864 (n + 3)).toNat

end

end A219180.P160657208656223256

/-! ## A219180.P7550802408446801930

`A144101(A144119(n+1)+A006093(n+1))`
-/

namespace A219180.P7550802408446801930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144101 (A144119 (n + 1) + A006093 (n + 1)).toNat

end

end A219180.P7550802408446801930

/-! ## A219180.P8681305626526185002

`A010060(A327654(n+1)+A022559(2*n))`
-/

namespace A219180.P8681305626526185002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A327654 (n + 1) + A022559 (2 * n)).toNat

end

end A219180.P8681305626526185002

/-!
# A219181: Number of partitions of n into the maximal possible number of distinct prime parts or 0 if there are no such partitions.

The programs for A219181, there is no canonical definition to state claims against.
-/

/-! ## A219181.P13590610621002345526

`Δ[A227177(A347543(n+7))]`
-/

namespace A219181.P13590610621002345526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A347543 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219181.P13590610621002345526

/-! ## A219181.P806777826002376403

`A001221(A000586(n)+A219204(n)!)`
-/

namespace A219181.P806777826002376403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000586 n + (Nat.factorial (A219204 (n + 129)).toNat : ℤ)).toNat

end

end A219181.P806777826002376403

/-! ## A219181.P4692697472243880659

`A047988(A204892(n+1)+A000792(n))`
-/

namespace A219181.P4692697472243880659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (A204892 (n + 1) + A000792 n).toNat

end

end A219181.P4692697472243880659

/-! ## A219181.P17667541639550671410

`∑{p}[(A000586(n)+A219204(n)!)², A001065(#)]`
-/

namespace A219181.P17667541639550671410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000586 n + (Nat.factorial (A219204 (n + 129)).toNat : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001065 p

end

end A219181.P17667541639550671410

/-! ## A219181.P1948634833541842936

`∑{p}[(A000586(n)+A219204(n)!)², A056622(#)]`
-/

namespace A219181.P1948634833541842936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000586 n + (Nat.factorial (A219204 (n + 129)).toNat : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056622 p

end

end A219181.P1948634833541842936

/-!
# A219182: Maximal number of partitions of n into any number k of distinct prime parts or 0 if there are no such partitions.

The programs for A219182, there is no canonical definition to state claims against.
-/

/-! ## A219182.P2685632318433641109

`A246359(A219107(n)%A122599(n+1))`
-/

namespace A219182.P2685632318433641109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (Int.tmod (A219107 n) (A122599 (n + 1))).toNat

end

end A219182.P2685632318433641109

/-! ## A219182.P6868216609265186119

`A246359(A219107(n)+A097479(n))`
-/

namespace A219182.P6868216609265186119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A219107 n + A097479 n).toNat

end

end A219182.P6868216609265186119

/-! ## A219182.P4591805469462027186

`A246359(or(A097479(n), A219107(n)))`
-/

namespace A219182.P4591805469462027186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (Int.lor (A097479 n) (A219107 n)).toNat

end

end A219182.P4591805469462027186

/-! ## A219182.P1027276025260262165

`Δ[A227177(∑[A184644(n)])]`
-/

namespace A219182.P1027276025260262165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184644 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219182.P1027276025260262165

/-! ## A219182.P8448127738747211369

`Δ[A227177(∑[A184645(n)])]`
-/

namespace A219182.P8448127738747211369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184645 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219182.P8448127738747211369

/-!
# A219184: O.g.f. satisfies: A(x) = Sum_{n>=0} n^(2*n) * x^n * A(x)^n / n! * exp(-n^2*x*A(x)).

The programs for A219184, there is no canonical definition to state claims against.
-/

/-! ## A219184.P429845386613316103

`A313199(n*a(n-1))-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A219184.P429845386613316103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A313199 ((n : ℤ) * a (n - 1)).toNat - a (n - 1)

end

end A219184.P429845386613316103

/-!
# A219185: Number of prime pairs {p,q} (p>q) with 3(p-q)-1 and 3(p-q)+1 both prime such that p+(1+(n mod 2))q=n.

The programs for A219185, there is no canonical definition to state claims against.
-/

/-! ## A219185.P3665130595842947996

`A196563(or(A056595(n+1), A240649(3*n+4)))`
-/

namespace A219185.P3665130595842947996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (Int.lor (A056595 (n + 1)) (A240649 (3 * n + 4))).toNat

end

end A219185.P3665130595842947996

/-!
# A219186: Positive integers n such that 1+(k-2)*U_m(k,1)^2 does not divide n-k for any 3<=k<n and m>=1, where U(k,1) is a Lucas sequence.

The programs for A219186, there is no canonical definition to state claims against.
-/

/-! ## A219186.P1575782882827509299

`eq[A000038(n), A318508(A160914(n+1))]`
-/

namespace A219186.P1575782882827509299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318508 (A160914 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219186.P1575782882827509299

/-! ## A219186.P15346664634866016090

`A180101(A266901(n))+1`
-/

namespace A219186.P15346664634866016090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A266901 n).toNat + 1

end

end A219186.P15346664634866016090

/-! ## A219186.P9942080985435212623

`∑[A345933(A329739(∑{d}[n, #%#²]))]`
-/

namespace A219186.P9942080985435212623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (A329739 (∑ d ∈ Nat.divisors (f2 n), d % d ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219186.P9942080985435212623

/-! ## A219186.P773056675018145603

`A210882(record[A250472(n+1)^A309386(n)])`
-/

namespace A219186.P773056675018145603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250472 (n + 1) : ℚ) ^ (A309386 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A219186.P773056675018145603

/-! ## A219186.P1103430667271677587

`lt[A046800(n)^A001222(A001747(n+1)²), n+2]+1`
-/

namespace A219186.P1103430667271677587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046800 n : ℚ) ^ (A001222 (A001747 (n + 1) ^ 2).toNat : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A219186.P1103430667271677587

/-!
# A219187: Sum of distinct prime divisors of Lucas(n).

The programs for A219187, the canonical program `A219187.P5831013217263437135` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219187 has offset 0).

The definition of A219187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219187.P5831013217263437135

`A008472(A000032(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A219187

/-- `A008472(A000032(n))` -/
def P5831013217263437135.Spec : Prop :=
  ∀ n, P5831013217263437135.a n = A219187 n

theorem P5831013217263437135.correct : P5831013217263437135.Spec := by
  intro n
  simp only [A219187]

end A219187

/-! ## A219187.P1687876514393022736

`∑{p}[floor((-ϕ)^n)+1, #]`
-/

namespace A219187.P1687876514393022736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-Real.goldenRatio) ^ n⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A219187.P1687876514393022736

namespace A219187

/-- `∑{p}[floor((-ϕ)^n)+1, #]` -/
def P1687876514393022736.Spec : Prop :=
  ∀ n, (P1687876514393022736.a n : ℤ) = A219187 n

end A219187

/-! ## A219187.P17022712580165266294

`A243835(n)+∑{p}[A000032(n), #]`
-/

namespace A219187.P17022712580165266294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243835 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A219187.P17022712580165266294

namespace A219187

/-- `A243835(n)+∑{p}[A000032(n), #]` -/
def P17022712580165266294.Spec : Prop :=
  ∀ n, P17022712580165266294.a n = A219187 n

end A219187

/-! ## A219187.P15267120256285631855

`∑{p}[A000032(n), #]%A034820(n)`
-/

namespace A219187.P15267120256285631855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A034820 n)

end

end A219187.P15267120256285631855

namespace A219187

/-- `∑{p}[A000032(n), #]%A034820(n)` -/
def P15267120256285631855.Spec : Prop :=
  ∀ n, P15267120256285631855.a n = A219187 n

end A219187

/-! ## A219187.P10115640299958099797

`A285007(n+1)+∑{p}[A000032(n), #]`
-/

namespace A219187.P10115640299958099797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A219187.P10115640299958099797

namespace A219187

/-- `A285007(n+1)+∑{p}[A000032(n), #]` -/
def P10115640299958099797.Spec : Prop :=
  ∀ n, P10115640299958099797.a n = A219187 n

end A219187

/-!
# A219188: Sum of prime divisors (with repetition) of Lucas(n).

The programs for A219188, the canonical program `A219188.P878986242386710256` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219188 has offset 1).

The definition of A219188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219188.P878986242386710256

`A001414(A000032(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A219188

/-- `A001414(A000032(n+1))` -/
def P878986242386710256.Spec : Prop :=
  ∀ n, P878986242386710256.a n = A219188 (n + 1)

theorem P878986242386710256.correct : P878986242386710256.Spec := by
  intro n
  simp only [A219188, Nat.add_sub_cancel]

end A219188

/-! ## A219188.P4602720206977810333

`A001414(A000204(n+1))`
-/

namespace A219188.P4602720206977810333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000204 (n + 1)).toNat

end

end A219188.P4602720206977810333

namespace A219188

/-- `A001414(A000204(n+1))` -/
def P4602720206977810333.Spec : Prop :=
  ∀ n, P4602720206977810333.a n = A219188 (n + 1)

end A219188

/-! ## A219188.P11598816646950989249

`A070827(n+1)-A000007(n)`
-/

namespace A219188.P11598816646950989249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070827 (n + 1) - A000007 n

end

end A219188.P11598816646950989249

namespace A219188

/-- `A070827(n+1)-A000007(n)` -/
def P11598816646950989249.Spec : Prop :=
  ∀ n, P11598816646950989249.a n = A219188 (n + 1)

end A219188

/-! ## A219188.P12481536300986972722

`lcm(A070827(n+1), A165471(n))`
-/

namespace A219188.P12481536300986972722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070827 (n + 1)) (A165471 n)

end

end A219188.P12481536300986972722

namespace A219188

/-- `lcm(A070827(n+1), A165471(n))` -/
def P12481536300986972722.Spec : Prop :=
  ∀ n, (P12481536300986972722.a n : ℤ) = A219188 (n + 1)

end A219188

/-! ## A219188.P16235945462275160455

`A070827(n+1)-A010051(2*(n+1))`
-/

namespace A219188.P16235945462275160455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070827 (n + 1) - A010051 (2 * (n + 1))

end

end A219188.P16235945462275160455

namespace A219188

/-- `A070827(n+1)-A010051(2*(n+1))` -/
def P16235945462275160455.Spec : Prop :=
  ∀ n, P16235945462275160455.a n = A219188 (n + 1)

end A219188

/-! ## A219188.P2957219676266442949

`A070827(n+1)*A165471(2*n)*A165471(2*n)`
-/

namespace A219188.P2957219676266442949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070827 (n + 1) * A165471 (2 * n) * A165471 (2 * n)

end

end A219188.P2957219676266442949

namespace A219188

/-- `A070827(n+1)*A165471(2*n)*A165471(2*n)` -/
def P2957219676266442949.Spec : Prop :=
  ∀ n, P2957219676266442949.a n = A219188 (n + 1)

end A219188

/-! ## A219188.P6236762688572190935

`A070827(n+1)%A133641(n+1)`
-/

namespace A219188.P6236762688572190935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070827 (n + 1)) (A133641 (n + 1))

end

end A219188.P6236762688572190935

namespace A219188

/-- `A070827(n+1)%A133641(n+1)` -/
def P6236762688572190935.Spec : Prop :=
  ∀ n, P6236762688572190935.a n = A219188 (n + 1)

end A219188

/-! ## A219188.P5958809558933109197

`and(1, A008965(n+2))*A070827(n+1)`
-/

namespace A219188.P5958809558933109197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008965 (n + 2)) * A070827 (n + 1)

end

end A219188.P5958809558933109197

namespace A219188

/-- `and(1, A008965(n+2))*A070827(n+1)` -/
def P5958809558933109197.Spec : Prop :=
  ∀ n, P5958809558933109197.a n = A219188 (n + 1)

end A219188

/-! ## A219188.P15164508810442439640

`A070827(n+1)*A165471(n²)`
-/

namespace A219188.P15164508810442439640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070827 (n + 1) * A165471 (n ^ 2)

end

end A219188.P15164508810442439640

namespace A219188

/-- `A070827(n+1)*A165471(n²)` -/
def P15164508810442439640.Spec : Prop :=
  ∀ n, P15164508810442439640.a n = A219188 (n + 1)

end A219188

/-! ## A219188.P441512378012930427

`A064725(2*(n+1))-A064725(n+1)`
-/

namespace A219188.P441512378012930427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064725 (2 * (n + 1)) - A064725 (n + 1)

end

end A219188.P441512378012930427

namespace A219188

/-- `A064725(2*(n+1))-A064725(n+1)` -/
def P441512378012930427.Spec : Prop :=
  ∀ n, P441512378012930427.a n = A219188 (n + 1)

end A219188

/-! ## A219188.P1600932290291459716

`A070827(n+1)%A070857(n)`
-/

namespace A219188.P1600932290291459716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070827 (n + 1)) (A070857 n)

end

end A219188.P1600932290291459716

namespace A219188

/-- `A070827(n+1)%A070857(n)` -/
def P1600932290291459716.Spec : Prop :=
  ∀ n, P1600932290291459716.a n = A219188 (n + 1)

end A219188

/-!
# A219189: Parity of pi(5^n).

The programs for A219189, there is no canonical definition to state claims against.
-/

/-! ## A219189.P5022545106634729699

`A055730(n)%2`
-/

namespace A219189.P5022545106634729699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055730 n) 2

end

end A219189.P5022545106634729699

/-! ## A219189.P18406689079153175899

`and(A015526(n), A055730(n))`
-/

namespace A219189.P18406689079153175899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015526 n) (A055730 n)

end

end A219189.P18406689079153175899

/-! ## A219189.P11884452037172218156

`and(A015600(n), A055730(n))`
-/

namespace A219189.P11884452037172218156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015600 n) (A055730 n)

end

end A219189.P11884452037172218156

/-! ## A219189.P14775758304851654720

`and(A015748(n), A055730(n))`
-/

namespace A219189.P14775758304851654720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015748 n) (A055730 n)

end

end A219189.P14775758304851654720

/-! ## A219189.P3113748075479921446

`and(A015772(n), A055730(n))`
-/

namespace A219189.P3113748075479921446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015772 n) (A055730 n)

end

end A219189.P3113748075479921446

/-!
# A219190: Numbers of the form k*(5*k+1), where k = 0,-1,1,-2,2,-3,3,...

The programs for A219190, the canonical program `A219190.P13474629478793536524` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219190 has offset 1).

The definition of A219190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219190.P3590632335449107182

`ogf((4x+2x^2+4x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A219190.P3590632335449107182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2, 4] [1, -1, -2, 2, 1, -1] n

end

end A219190.P3590632335449107182

namespace A219190

/-- `ogf((4x+2x^2+4x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P3590632335449107182.Spec : Prop :=
  ∀ n, P3590632335449107182.a n = A219190 (n + 1)

end A219190

/-! ## A219190.P1082369837848276090

`(10*(n+1)*n+3*(-1)^(n+1)*(2*(n+1)-1)+3)/8`
-/

namespace A219190.P1082369837848276090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) * n : ℤ) + 3 * (-1) ^ (n + 1) * ((2 * (n + 1) : ℤ) - 1) + 3 : ℚ) / 8

end

end A219190.P1082369837848276090

namespace A219190

/-- `(10*(n+1)*n+3*(-1)^(n+1)*(2*(n+1)-1)+3)/8` -/
def P1082369837848276090.Spec : Prop :=
  ∀ n, P1082369837848276090.a n = (A219190 (n + 1) : ℚ)

theorem P1082369837848276090.correct : P1082369837848276090.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A219190, Nat.add_sub_cancel, A219190.P1082369837848276090.a, A219190.P13474629478793536524.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A219190, Nat.add_sub_cancel, A219190.P1082369837848276090.a, A219190.P13474629478793536524.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A219190

/-! ## A219190.P13474629478793536524

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=6, a(3)=18, a(4)=22`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219190

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13474629478793536524.Spec : Prop :=
  ∀ n, P13474629478793536524.a n = A219190 (n + 1)

theorem P13474629478793536524.correct : P13474629478793536524.Spec := by
  intro n
  simp only [A219190, Nat.add_sub_cancel]

end A219190

/-! ## A219190.P2594530973668209337

`2*A057569(n+1)`
-/

namespace A219190.P2594530973668209337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057569 (n + 1)

end

end A219190.P2594530973668209337

namespace A219190

/-- `2*A057569(n+1)` -/
def P2594530973668209337.Spec : Prop :=
  ∀ n, P2594530973668209337.a n = A219190 (n + 1)

end A219190

/-! ## A219190.P11607710810180665415

`∑[n*4^(n%2)]`
-/

namespace A219190.P11607710810180665415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P11607710810180665415

namespace A219190

/-- `∑[n*4^(n%2)]` -/
def P11607710810180665415.Spec : Prop :=
  ∀ n, (P11607710810180665415.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P2315921131986832453

`∑[n*4^and(1, n)]`
-/

namespace A219190.P2315921131986832453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P2315921131986832453

namespace A219190

/-- `∑[n*4^and(1, n)]` -/
def P2315921131986832453.Spec : Prop :=
  ∀ n, (P2315921131986832453.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P3430131457067293618

`∑[lcm(n, 4/gcd(2, n))]`
-/

namespace A219190.P3430131457067293618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (4 / (Nat.gcd 2 n : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P3430131457067293618

namespace A219190

/-- `∑[lcm(n, 4/gcd(2, n))]` -/
def P3430131457067293618.Spec : Prop :=
  ∀ n, (P3430131457067293618.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P2438013290997829912

`∑[n*C(4, and(1, n))]`
-/

namespace A219190.P2438013290997829912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 4 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P2438013290997829912

namespace A219190

/-- `∑[n*C(4, and(1, n))]` -/
def P2438013290997829912.Spec : Prop :=
  ∀ n, (P2438013290997829912.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P7560028642165456991

`∑[n*gcd(4, (1-n)²)]`
-/

namespace A219190.P7560028642165456991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 4 ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P7560028642165456991

namespace A219190

/-- `∑[n*gcd(4, (1-n)²)]` -/
def P7560028642165456991.Spec : Prop :=
  ∀ n, (P7560028642165456991.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P14118765301603376959

`∑[n*(and(1, n)+1)²]`
-/

namespace A219190.P14118765301603376959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P14118765301603376959

namespace A219190

/-- `∑[n*(and(1, n)+1)²]` -/
def P14118765301603376959.Spec : Prop :=
  ∀ n, (P14118765301603376959.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P2633554656526532248

`∑[lcm(2, 3*n)-2*n]`
-/

namespace A219190.P2633554656526532248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P2633554656526532248

namespace A219190

/-- `∑[lcm(2, 3*n)-2*n]` -/
def P2633554656526532248.Spec : Prop :=
  ∀ n, P2633554656526532248.a n = A219190 (n + 1)

end A219190

/-! ## A219190.P5132082444195142229

`∑[n*or(n+1, -2)²]`
-/

namespace A219190.P5132082444195142229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor (n + 1 : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P5132082444195142229

namespace A219190

/-- `∑[n*or(n+1, -2)²]` -/
def P5132082444195142229.Spec : Prop :=
  ∀ n, P5132082444195142229.a n = A219190 (n + 1)

end A219190

/-! ## A219190.P11206848280315026144

`∑[n*(2*and(1, n))!²]`
-/

namespace A219190.P11206848280315026144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 * Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P11206848280315026144

namespace A219190

/-- `∑[n*(2*and(1, n))!²]` -/
def P11206848280315026144.Spec : Prop :=
  ∀ n, (P11206848280315026144.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P9223902599830453109

`∑[n*(2-and(1, n-1))²]`
-/

namespace A219190.P9223902599830453109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - Int.land 1 ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P9223902599830453109

namespace A219190

/-- `∑[n*(2-and(1, n-1))²]` -/
def P9223902599830453109.Spec : Prop :=
  ∀ n, P9223902599830453109.a n = A219190 (n + 1)

end A219190

/-! ## A219190.P15310400278486486229

`∑[lcm(4, n*(n+2))/(n+2)]`
-/

namespace A219190.P15310400278486486229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n * (n + 2)) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P15310400278486486229

namespace A219190

/-- `∑[lcm(4, n*(n+2))/(n+2)]` -/
def P15310400278486486229.Spec : Prop :=
  ∀ n, P15310400278486486229.a n = (A219190 (n + 1) : ℚ)

end A219190

/-! ## A219190.P1234793743416731884

`∑[n*Δ[n-a(n-1)]²]` with `a(0)=1`
-/

namespace A219190.P1234793743416731884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P1234793743416731884

namespace A219190

/-- `∑[n*Δ[n-a(n-1)]²]` -/
def P1234793743416731884.Spec : Prop :=
  ∀ n, P1234793743416731884.a n = A219190 (n + 1)

end A219190

/-! ## A219190.P7666765668526132016

`2*∑[gcd(2*n, (n+1)*∑[n])]`
-/

namespace A219190.P7666765668526132016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) ((n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219190.P7666765668526132016

namespace A219190

/-- `2*∑[gcd(2*n, (n+1)*∑[n])]` -/
def P7666765668526132016.Spec : Prop :=
  ∀ n, (P7666765668526132016.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P14607218010732181665

`∑[gcd(4*n, (n-1)*∑[2*n])]`
-/

namespace A219190.P14607218010732181665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P14607218010732181665

namespace A219190

/-- `∑[gcd(4*n, (n-1)*∑[2*n])]` -/
def P14607218010732181665.Spec : Prop :=
  ∀ n, (P14607218010732181665.a n : ℤ) = A219190 (n + 1)

end A219190

/-! ## A219190.P13291539969300722577

`∑[2*A064680(n)]`
-/

namespace A219190.P13291539969300722577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219190.P13291539969300722577

namespace A219190

/-- `∑[2*A064680(n)]` -/
def P13291539969300722577.Spec : Prop :=
  ∀ n, P13291539969300722577.a n = A219190 (n + 1)

end A219190

/-! ## A219190.P15994636806485519273

`A132354(n)-∑[n]`
-/

namespace A219190.P15994636806485519273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132354 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A219190.P15994636806485519273

namespace A219190

/-- `A132354(n)-∑[n]` -/
def P15994636806485519273.Spec : Prop :=
  ∀ n, P15994636806485519273.a n = A219190 (n + 1)

end A219190

/-!
# A219191: Numbers of the form k*(7*k+1), where k = 0,-1,1,-2,2,-3,3,...

The programs for A219191, the canonical program `A219191.P9095047944895296053` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219191 has offset 1).

The definition of A219191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219191.P17539125641226977309

`ogf((6x+2x^2+6x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A219191.P17539125641226977309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 2, 6] [1, -1, -2, 2, 1, -1] n

end

end A219191.P17539125641226977309

namespace A219191

/-- `ogf((6x+2x^2+6x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P17539125641226977309.Spec : Prop :=
  ∀ n, P17539125641226977309.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P10518479847639698274

`(14*(n+1)*n+5*(-1)^(n+1)*(2*(n+1)-1)+5)/8`
-/

namespace A219191.P10518479847639698274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (n + 1) * n : ℤ) + 5 * (-1) ^ (n + 1) * ((2 * (n + 1) : ℤ) - 1) + 5 : ℚ) / 8

end

end A219191.P10518479847639698274

namespace A219191

/-- `(14*(n+1)*n+5*(-1)^(n+1)*(2*(n+1)-1)+5)/8` -/
def P10518479847639698274.Spec : Prop :=
  ∀ n, P10518479847639698274.a n = (A219191 (n + 1) : ℚ)

end A219191

/-! ## A219191.P9095047944895296053

`2*A057570(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A219191

/-- `2*A057570(n+1)` -/
def P9095047944895296053.Spec : Prop :=
  ∀ n, P9095047944895296053.a n = A219191 (n + 1)

theorem P9095047944895296053.correct : P9095047944895296053.Spec := by
  intro n
  simp only [A219191, Nat.add_sub_cancel]

end A219191

/-! ## A219191.P5924888341708286087

`1/7*A047335(n+1)*A047274(n+2)`
-/

namespace A219191.P5924888341708286087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 7 * (A047335 (n + 1) : ℚ) * (A047274 (n + 2) : ℚ)

end

end A219191.P5924888341708286087

namespace A219191

/-- `1/7*A047335(n+1)*A047274(n+2)` -/
def P5924888341708286087.Spec : Prop :=
  ∀ n, P5924888341708286087.a n = (A219191 (n + 1) : ℚ)

end A219191

/-! ## A219191.P12006357702423449102

`∑[n*6^(n%2)]`
-/

namespace A219191.P12006357702423449102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 6 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P12006357702423449102

namespace A219191

/-- `∑[n*6^(n%2)]` -/
def P12006357702423449102.Spec : Prop :=
  ∀ n, (P12006357702423449102.a n : ℤ) = A219191 (n + 1)

end A219191

/-! ## A219191.P9773084855482934153

`∑[n*gcd(6, (n+1)%2)]`
-/

namespace A219191.P9773084855482934153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 6 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P9773084855482934153

namespace A219191

/-- `∑[n*gcd(6, (n+1)%2)]` -/
def P9773084855482934153.Spec : Prop :=
  ∀ n, (P9773084855482934153.a n : ℤ) = A219191 (n + 1)

end A219191

/-! ## A219191.P17699666170669885295

`∑[lcm(2, 2*lcm(2, n)-n)]`
-/

namespace A219191.P17699666170669885295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 * Nat.lcm 2 n : ℤ) - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P17699666170669885295

namespace A219191

/-- `∑[lcm(2, 2*lcm(2, n)-n)]` -/
def P17699666170669885295.Spec : Prop :=
  ∀ n, (P17699666170669885295.a n : ℤ) = A219191 (n + 1)

end A219191

/-! ## A219191.P18033838674547507564

`∑[5*n*and(1, n)+n]`
-/

namespace A219191.P18033838674547507564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n * Nat.land 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P18033838674547507564

namespace A219191

/-- `∑[5*n*and(1, n)+n]` -/
def P18033838674547507564.Spec : Prop :=
  ∀ n, (P18033838674547507564.a n : ℤ) = A219191 (n + 1)

end A219191

/-! ## A219191.P8836224025524454210

`∑[n*((2*n+1)%4)!]`
-/

namespace A219191.P8836224025524454210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial ((2 * n + 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P8836224025524454210

namespace A219191

/-- `∑[n*((2*n+1)%4)!]` -/
def P8836224025524454210.Spec : Prop :=
  ∀ n, (P8836224025524454210.a n : ℤ) = A219191 (n + 1)

end A219191

/-! ## A219191.P1447821239652538132

`∑[n*(5*gcd(2, n+1)-4)]`
-/

namespace A219191.P1447821239652538132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((5 * Nat.gcd 2 (n + 1) : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P1447821239652538132

namespace A219191

/-- `∑[n*(5*gcd(2, n+1)-4)]` -/
def P1447821239652538132.Spec : Prop :=
  ∀ n, P1447821239652538132.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P16008981997414295112

`∑[lcm(2, A347365(n))]`
-/

namespace A219191.P16008981997414295112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A347365 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P16008981997414295112

namespace A219191

/-- `∑[lcm(2, A347365(n))]` -/
def P16008981997414295112.Spec : Prop :=
  ∀ n, (P16008981997414295112.a n : ℤ) = A219191 (n + 1)

end A219191

/-! ## A219191.P12217522734241088972

`∑[n*A010687(n)]`
-/

namespace A219191.P12217522734241088972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P12217522734241088972

namespace A219191

/-- `∑[n*A010687(n)]` -/
def P12217522734241088972.Spec : Prop :=
  ∀ n, P12217522734241088972.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P13765070446134772288

`A132355(n+1)-∑[n]`
-/

namespace A219191.P13765070446134772288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A219191.P13765070446134772288

namespace A219191

/-- `A132355(n+1)-∑[n]` -/
def P13765070446134772288.Spec : Prop :=
  ∀ n, P13765070446134772288.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P10230824047477439192

`∑[n*(A010676(n)+1)]`
-/

namespace A219191.P10230824047477439192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010676 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P10230824047477439192

namespace A219191

/-- `∑[n*(A010676(n)+1)]` -/
def P10230824047477439192.Spec : Prop :=
  ∀ n, P10230824047477439192.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P17500761181659393485

`∑[n*A040011(n+1)]`
-/

namespace A219191.P17500761181659393485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P17500761181659393485

namespace A219191

/-- `∑[n*A040011(n+1)]` -/
def P17500761181659393485.Spec : Prop :=
  ∀ n, P17500761181659393485.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P11131805919607303479

`∑[n*(A010697(n)-1)]`
-/

namespace A219191.P11131805919607303479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010697 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P11131805919607303479

namespace A219191

/-- `∑[n*(A010697(n)-1)]` -/
def P11131805919607303479.Spec : Prop :=
  ∀ n, P11131805919607303479.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P4371012255873179070

`∑[n*(A010706(n)-2)]`
-/

namespace A219191.P4371012255873179070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010706 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P4371012255873179070

namespace A219191

/-- `∑[n*(A010706(n)-2)]` -/
def P4371012255873179070.Spec : Prop :=
  ∀ n, P4371012255873179070.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P7068158801460098687

`∑[n*abs(2-A010689(n))]`
-/

namespace A219191.P7068158801460098687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |2 - A010689 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219191.P7068158801460098687

namespace A219191

/-- `∑[n*abs(2-A010689(n))]` -/
def P7068158801460098687.Spec : Prop :=
  ∀ n, P7068158801460098687.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P3253914004514723937

`round(n/2)*A047336(n+1)`
-/

namespace A219191.P3253914004514723937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) * A047336 (n + 1)

end

end A219191.P3253914004514723937

namespace A219191

/-- `round(n/2)*A047336(n+1)` -/
def P3253914004514723937.Spec : Prop :=
  ∀ n, P3253914004514723937.a n = A219191 (n + 1)

end A219191

/-! ## A219191.P4935500151739348527

`A132354(n)+A001057(n)`
-/

namespace A219191.P4935500151739348527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132354 n + A001057 n

end

end A219191.P4935500151739348527

namespace A219191

/-- `A132354(n)+A001057(n)` -/
def P4935500151739348527.Spec : Prop :=
  ∀ n, P4935500151739348527.a n = A219191 (n + 1)

end A219191

/-!
# A219192: Area A of the bicentric quadrilaterals such that A, the sides, the radius of the circumcircle and the radius of the incircle are integers.

The programs for A219192, there is no canonical definition to state claims against.
-/

/-! ## A219192.P10315608943531391649

`A008589(4*84*(n+1)²)`
-/

namespace A219192.P10315608943531391649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (4 * (84 * (n + 1) ^ 2))

end

end A219192.P10315608943531391649

/-!
# A219194: a(n) = max(A218075(n+1), A218075(n)) / min(A218075(n+1), A218075(n)).

The programs for A219194, the canonical program `A219194.P13841470351551942710` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219194 has offset 1).

The definition of A219194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219194.P10737670019979982451

`2^abs(A036263(n+1))`
-/

namespace A219194.P10737670019979982451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|A036263 (n + 1)| : ℤ)

end

end A219194.P10737670019979982451

namespace A219194

/-- `2^abs(A036263(n+1))` -/
def P10737670019979982451.Spec : Prop :=
  ∀ n, P10737670019979982451.a n = (A219194 (n + 1) : ℚ)

end A219194

/-! ## A219194.P10171586429146619339

`2^abs(Δ[A001223(n+1)])`
-/

namespace A219194.P10171586429146619339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|f1 (n + 1) - f1 n| : ℤ)

end

end A219194.P10171586429146619339

namespace A219194

/-- `2^abs(Δ[A001223(n+1)])` -/
def P10171586429146619339.Spec : Prop :=
  ∀ n, P10171586429146619339.a n = (A219194 (n + 1) : ℚ)

end A219194

/-! ## A219194.P13841470351551942710

`A000079(abs(A036263(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A219194

/-- `A000079(abs(A036263(n+1)))` -/
def P13841470351551942710.Spec : Prop :=
  ∀ n, P13841470351551942710.a n = A219194 (n + 1)

theorem P13841470351551942710.correct : P13841470351551942710.Spec := by
  intro n
  simp only [A219194, Nat.add_sub_cancel]

end A219194

/-! ## A219194.P14810817993372637428

`A000079(abs(Δ[A001223(n+1)]))`
-/

namespace A219194.P14810817993372637428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |f1 (n + 1) - f1 n|.toNat

end

end A219194.P14810817993372637428

namespace A219194

/-- `A000079(abs(Δ[A001223(n+1)]))` -/
def P14810817993372637428.Spec : Prop :=
  ∀ n, P14810817993372637428.a n = A219194 (n + 1)

theorem P14810817993372637428.correct : P14810817993372637428.Spec := by
  intro n
  simp only [A219194, Nat.add_sub_cancel, A219194.P14810817993372637428.f1, A219194.P14810817993372637428.a, A219194.P13841470351551942710.a, A000079, A000079.P10855139691139572931.a, A001223, A001223.P5034056745985311719.a, A036263, A036263.P14888342997651084870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219194

/-! ## A219194.P9289251083094635369

`A011782(abs(Δ[A001223(n+1)])+1)`
-/

namespace A219194.P9289251083094635369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (|f1 (n + 1) - f1 n| + 1).toNat

end

end A219194.P9289251083094635369

namespace A219194

/-- `A011782(abs(Δ[A001223(n+1)])+1)` -/
def P9289251083094635369.Spec : Prop :=
  ∀ n, P9289251083094635369.a n = A219194 (n + 1)

end A219194

/-! ## A219194.P7780496905547123161

`A042950(abs(Δ[A001223(n+1)])+1)/3`
-/

namespace A219194.P7780496905547123161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042950 (|f1 (n + 1) - f1 n| + 1).toNat : ℚ) / 3

end

end A219194.P7780496905547123161

namespace A219194

/-- `A042950(abs(Δ[A001223(n+1)])+1)/3` -/
def P7780496905547123161.Spec : Prop :=
  ∀ n, P7780496905547123161.a n = (A219194 (n + 1) : ℚ)

end A219194

/-! ## A219194.P8206055713232324820

`A000079(abs(Δ[A046933(n+1)]))`
-/

namespace A219194.P8206055713232324820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |f1 (n + 1) - f1 n|.toNat

end

end A219194.P8206055713232324820

namespace A219194

/-- `A000079(abs(Δ[A046933(n+1)]))` -/
def P8206055713232324820.Spec : Prop :=
  ∀ n, P8206055713232324820.a n = A219194 (n + 1)

theorem P8206055713232324820.correct : P8206055713232324820.Spec := by
  intro n
  simp only [A219194, Nat.add_sub_cancel, A219194.P8206055713232324820.f1, A219194.P8206055713232324820.a, A219194.P13841470351551942710.a, A000079, A000079.P10855139691139572931.a, A036263, A036263.P14888342997651084870.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219194

/-! ## A219194.P1949899029223144169

`2^A036261(∑[n+2])`
-/

namespace A219194.P1949899029223144169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A036261 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A219194.P1949899029223144169

namespace A219194

/-- `2^A036261(∑[n+2])` -/
def P1949899029223144169.Spec : Prop :=
  ∀ n, P1949899029223144169.a n = (A219194 (n + 1) : ℚ)

end A219194

/-! ## A219194.P3670353136397814362

`A000079(A036261(∑[n+2]))`
-/

namespace A219194.P3670353136397814362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A036261 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A219194.P3670353136397814362

namespace A219194

/-- `A000079(A036261(∑[n+2]))` -/
def P3670353136397814362.Spec : Prop :=
  ∀ n, P3670353136397814362.a n = A219194 (n + 1)

end A219194

/-! ## A219194.P15287981174202063915

`2^A036262(∑[n+3])`
-/

namespace A219194.P15287981174202063915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A036262 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A219194.P15287981174202063915

namespace A219194

/-- `2^A036262(∑[n+3])` -/
def P15287981174202063915.Spec : Prop :=
  ∀ n, P15287981174202063915.a n = (A219194 (n + 1) : ℚ)

end A219194

/-!
# A219195: Least i > 1 such that the sum of the digits in the base-j representation of i is invariant over all j in the first n squarefree numbers.

The programs for A219195, there is no canonical definition to state claims against.
-/

/-! ## A219195.P18284830051367832688

`A174047(n+1)+A135278(A081184(n))`
-/

namespace A219195.P18284830051367832688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1) + A135278 (A081184 n).toNat

end

end A219195.P18284830051367832688

/-!
# A219196: A subsequence of the denominators of the Bernoulli numbers: a(n) = A027642(A131577(n)).

The programs for A219196, the canonical program `A219196.P3293474457564128278` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219196 has offset 0).

The definition of A219196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219196.P3293474457564128278

`A027642(A131577(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A219196

/-- `A027642(A131577(n))` -/
def P3293474457564128278.Spec : Prop :=
  ∀ n, P3293474457564128278.a n = A219196 n

theorem P3293474457564128278.correct : P3293474457564128278.Spec := by
  intro n
  simp only [A219196]

end A219196

/-! ## A219196.P8312094911090034966

`lcm(a(n-1), A001317(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A219196.P8312094911090034966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A001317 (n - 1))

end

end A219196.P8312094911090034966

namespace A219196

/-- `lcm(a(n-1), A001317(n-1))` -/
def P8312094911090034966.Spec : Prop :=
  ∀ n, (P8312094911090034966.a n : ℤ) = A219196 n

end A219196

/-! ## A219196.P1342638605172746401

`A027383(A003817(comp[2*(n+1)]))`
-/

namespace A219196.P1342638605172746401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (A003817 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A219196.P1342638605172746401

namespace A219196

/-- `A027383(A003817(comp[2*(n+1)]))` -/
def P1342638605172746401.Spec : Prop :=
  ∀ n, P1342638605172746401.a n = A219196 n

end A219196

/-! ## A219196.P10796648031665029495

`A283909(A053644(comp[2*(n+1)]))`
-/

namespace A219196.P10796648031665029495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283909 (A053644 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A219196.P10796648031665029495

namespace A219196

/-- `A283909(A053644(comp[2*(n+1)]))` -/
def P10796648031665029495.Spec : Prop :=
  ∀ n, P10796648031665029495.a n = A219196 n

end A219196

/-!
# A219197: Self-convolution equals A199033.

The programs for A219197, the canonical program `A219197.P190021292487164151` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219197 has offset 0).

The definition of A219197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219197.P190021292487164151

`∑{#}[n, A002426(#)*C(3*n-#+1, n-#)*(2*#+1)/(3*n-#+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A219197

/-- `∑{#}[n, A002426(#)*C(3*n-#+1, n-#)*(2*#+1)/(3*n-#+1)]` -/
def P190021292487164151.Spec : Prop :=
  ∀ n, P190021292487164151.a n = (A219197 n : ℚ)

end A219197

/-! ## A219197.P12362756208182409253

`A098294(A003065(3*n))`
-/

namespace A219197.P12362756208182409253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (A003065 (3 * n)).toNat

end

end A219197.P12362756208182409253

namespace A219197

/-- `A098294(A003065(3*n))` -/
def P12362756208182409253.Spec : Prop :=
  ∀ n, P12362756208182409253.a n = A219197 n

end A219197

/-!
# A219198: Number of partitions of n into 4 distinct primes.

The programs for A219198, there is no canonical definition to state claims against.
-/

/-! ## A219198.P15581994113282355955

`lcm(A025814(n), A255315(A014837(n+3)))`
-/

namespace A219198.P15581994113282355955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025814 n) (A255315 (A014837 (n + 3)).toNat)

end

end A219198.P15581994113282355955

/-! ## A219198.P17448837166968021206

`and(A025814(n), A256541(A011782(n)))`
-/

namespace A219198.P17448837166968021206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025814 n) (A256541 (A011782 n).toNat)

end

end A219198.P17448837166968021206

/-! ## A219198.P17725579804093769035

`C(A025814(n), A001511(A049905(n+1)))`
-/

namespace A219198.P17725579804093769035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025814 n).toNat (A001511 (A049905 (n + 1)).toNat).toNat

end

end A219198.P17725579804093769035

/-! ## A219198.P3519315918271510735

`A341976(n)-A055641(A296588(2*n+3))`
-/

namespace A219198.P3519315918271510735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341976 (n + 18) - A055641 (A296588 (2 * n + 3)).toNat

end

end A219198.P3519315918271510735

/-! ## A219198.P16246560952516821531

`A341976(n)-A361463(A216640(n+1))`
-/

namespace A219198.P16246560952516821531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341976 (n + 18) - A361463 (A216640 (n + 1)).toNat

end

end A219198.P16246560952516821531

/-!
# A219199: Number of partitions of n into 5 distinct primes.

The programs for A219199, there is no canonical definition to state claims against.
-/

/-! ## A219199.P6343465180920666562

`A029225(n)%A038231(A104449(n))`
-/

namespace A219199.P6343465180920666562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029225 n) (A038231 (A104449 n).toNat)

end

end A219199.P6343465180920666562

/-! ## A219199.P987400624629019215

`A029225(n)-A316866(A032571(n+1)²)`
-/

namespace A219199.P987400624629019215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 n - A316866 (A032571 (n + 1) ^ 2).toNat

end

end A219199.P987400624629019215

/-! ## A219199.P16696321112325253796

`A072627(4^A341977(n))`
-/

namespace A219199.P16696321112325253796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A341977 (n + 29) : ℤ))).toNat

end

end A219199.P16696321112325253796

/-! ## A219199.P12902239300402488374

`A001221(C(23, A341977(n)))`
-/

namespace A219199.P12902239300402488374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose 23 (A341977 (n + 29)).toNat)

end

end A219199.P12902239300402488374

/-! ## A219199.P7749762622237567518

`A001222(C(23, A341977(n)))`
-/

namespace A219199.P7749762622237567518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 23 (A341977 (n + 29)).toNat)

end

end A219199.P7749762622237567518

