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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A228100: Triangle in which n-th row lists all partitions of n, such that partitions of n into m parts appear in lexicographic order previous to the partitions of n into k parts if k < m. (Fenner-Loizou tree.)

The programs for A228100, there is no canonical definition to state claims against.
-/

/-! ## A228100.P4296316388296619608

`A193073(n+1)+A185709(A331461(n))`
-/

namespace A228100.P4296316388296619608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (n + 1) + A185709 (A331461 n).toNat

end

end A228100.P4296316388296619608

/-!
# A228101: a(n) is the least k such that (2n)^(2^k) + 1 is a prime; a(n) = -1 if a prime (2n)^(2^k) + 1 is unknown, or = -2 if impossible.

The programs for A228101, there is no canonical definition to state claims against.
-/

/-! ## A228101.P18243144739983609980

`A079706(n+1)-A043568(n)`
-/

namespace A228101.P18243144739983609980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079706 (n + 1) - A043568 n

end

end A228101.P18243144739983609980

/-! ## A228101.P6684019122587112902

`A079706(n+1)-A127836(n)`
-/

namespace A228101.P6684019122587112902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079706 (n + 1) - A127836 n

end

end A228101.P6684019122587112902

/-! ## A228101.P2211705411894640305

`A079706(n+1)-A152831(n)`
-/

namespace A228101.P2211705411894640305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079706 (n + 1) - A152831 n

end

end A228101.P2211705411894640305

/-! ## A228101.P4723292373741646250

`A079706(n+1)-A274196(n)`
-/

namespace A228101.P4723292373741646250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079706 (n + 1) - A274196 n

end

end A228101.P4723292373741646250

/-! ## A228101.P5281163690587720054

`A079706(n+1)-A043290(n+1)`
-/

namespace A228101.P5281163690587720054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079706 (n + 1) - A043290 (n + 1)

end

end A228101.P5281163690587720054

/-!
# A228102: Numbers n such that sum of all primes <=n is prime.

The programs for A228102, the canonical program `A228102.P7143956737170160369` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228102 has offset 1).

The definition of A228102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228102.P7143956737170160369

`eq[1, ∑{e}[A063960(2*n+1), #]]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228102

/-- `eq[1, ∑{e}[A063960(2*n+1), #]]` -/
def P7143956737170160369.Spec : Prop :=
  ∀ n, (P7143956737170160369.a n : ℤ) = A228102 (n + 1)

theorem P7143956737170160369.correct : P7143956737170160369.Spec := by
  intro n
  simp only [A228102, Nat.add_sub_cancel]

end A228102

/-! ## A228102.P7168409306749268204

`eq[1, A003415(A063960(2*n+1))]`
-/

namespace A228102.P7168409306749268204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A063960 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228102.P7168409306749268204

namespace A228102

/-- `eq[1, A003415(A063960(2*n+1))]` -/
def P7168409306749268204.Spec : Prop :=
  ∀ n, (P7168409306749268204.a n : ℤ) = A228102 (n + 1)

end A228102

/-! ## A228102.P16632689405688588323

`eq[1, A003415(A007504(A230980(n)))]`
-/

namespace A228102.P16632689405688588323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007504 (A230980 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228102.P16632689405688588323

namespace A228102

/-- `eq[1, A003415(A007504(A230980(n)))]` -/
def P16632689405688588323.Spec : Prop :=
  ∀ n, (P16632689405688588323.a n : ℤ) = A228102 (n + 1)

end A228102

/-! ## A228102.P1065411315190307333

`eq[1, A181651(A101300(n))]`
-/

namespace A228102.P1065411315190307333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181651 (A101300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228102.P1065411315190307333

namespace A228102

/-- `eq[1, A181651(A101300(n))]` -/
def P1065411315190307333.Spec : Prop :=
  ∀ n, (P1065411315190307333.a n : ℤ) = A228102 (n + 1)

end A228102

/-! ## A228102.P15356587594089127244

`eq[char[A228357(n+1)], A151810(n)]`
-/

namespace A228102.P15356587594089127244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228357 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228102.P15356587594089127244

namespace A228102

/-- `eq[char[A228357(n+1)], A151810(n)]` -/
def P15356587594089127244.Spec : Prop :=
  ∀ n, (P15356587594089127244.a n : ℤ) = A228102 (n + 1)

end A228102

/-!
# A228103: Numbers k whose base-10 digits can be split into two parts, q and r, with k = (q-r)^2.

The programs for A228103, there is no canonical definition to state claims against.
-/

/-! ## A228103.P16601545852355131665

`A228381(n+1)²`
-/

namespace A228103.P16601545852355131665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228381 (n + 1) ^ 2

end

end A228103.P16601545852355131665

/-! ## A228103.P13987168486374222164

`A228381(n+1)%A238237(n+1)*A228381(n+1)`
-/

namespace A228103.P13987168486374222164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228381 (n + 1)) (A238237 (n + 1)) * A228381 (n + 1)

end

end A228103.P13987168486374222164

/-! ## A228103.P12458965816005238532

`A228381(n+1)^(2%A118938(n+1))`
-/

namespace A228103.P12458965816005238532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228381 (n + 1) : ℚ) ^ (Int.tmod 2 (A118938 (n + 1)) : ℤ)

end

end A228103.P12458965816005238532

/-! ## A228103.P9371962166701492199

`A228381(n+1)^A000005(A109997(n+1))`
-/

namespace A228103.P9371962166701492199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228381 (n + 1) : ℚ) ^ (A000005 (A109997 (n + 1)).toNat : ℤ)

end

end A228103.P9371962166701492199

/-! ## A228103.P4052832934559450103

`A228381(n+1)^ratio[A000079(n)]`
-/

namespace A228103.P4052832934559450103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228381 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A228103.P4052832934559450103

/-!
# A228104: Numbers of form 2^(2i-1)*3^j, with i,j > 0.

The programs for A228104, there is no canonical definition to state claims against.
-/

/-! ## A228104.P15461441695097001361

`6*A025613(n+1)`
-/

namespace A228104.P15461441695097001361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A025613 (n + 1)

end

end A228104.P15461441695097001361

/-! ## A228104.P2381362026057596624

`3*(A191145(n+1)+1)`
-/

namespace A228104.P2381362026057596624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A191145 (n + 1) + 1)

end

end A228104.P2381362026057596624

/-! ## A228104.P3619265816588806257

`∩[A187778(n+1), A191145(n+1)+1]`
-/

namespace A228104.P3619265816588806257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191145 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228104.P3619265816588806257

/-! ## A228104.P12226374873471415601

`∩[A033845(n+1), A270140(n+1)]`
-/

namespace A228104.P12226374873471415601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228104.P12226374873471415601

/-! ## A228104.P1047998243759587169

`∩[A065119(n+1), A270140(n+1)]`
-/

namespace A228104.P1047998243759587169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228104.P1047998243759587169

/-! ## A228104.P17969483901668318165

`∩[A270140(n+1), A362948(n+1)]`
-/

namespace A228104.P17969483901668318165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228104.P17969483901668318165

/-! ## A228104.P24900160280618836

`∩[A000423(n+1), A011775(n+1)]`
-/

namespace A228104.P24900160280618836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228104.P24900160280618836

/-! ## A228104.P10017046972974855754

`∩[A011775(n+1), A033845(n+1)]`
-/

namespace A228104.P10017046972974855754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228104.P10017046972974855754

/-! ## A228104.P16637154412153607573

`∩[A011775(n+1), A065119(n+1)]`
-/

namespace A228104.P16637154412153607573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228104.P16637154412153607573

/-! ## A228104.P18112130311636085834

`∩[A011775(n+1), A362948(n+1)]`
-/

namespace A228104.P18112130311636085834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228104.P18112130311636085834

/-!
# A228105: a(n) = 432*n^6.

The programs for A228105, the canonical program `A228105.P6323706678733223273` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228105 has offset 0).

The definition of A228105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `432*n^6` (program `A228105.P6323706678733223273`, by `A228105.P6323706678733223273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228105.P6323706678733223273

`432*n^6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228105

/-- `432*n^6` -/
def P6323706678733223273.Spec : Prop :=
  ∀ n, (P6323706678733223273.a n : ℤ) = A228105 n

theorem P6323706678733223273.correct : P6323706678733223273.Spec := by
  intro n
  simp only [A228105]

end A228105

/-!
# A228106: Three-dimensional table read by rows: T(n,k,r) (1 <= k <= n, r >= 1) is the number of partitions in the r-th run of strictly increasing numbers of 2 X 2 squares in the list of partitions of an n X k rectangle into integer-sided squares, considering only the list of parts.

The programs for A228106, there is no canonical definition to state claims against.
-/

/-! ## A228106.P17417085381129977899

`A000688(xor(5, A110441(3*n+1)))`
-/

namespace A228106.P17417085381129977899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (Int.xor 5 (A110441 (3 * n + 1))).toNat

end

end A228106.P17417085381129977899

/-! ## A228106.P1012455837448407573

`A036036(A102660(2*(n+1))*A319951(n+3))`
-/

namespace A228106.P1012455837448407573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (A102660 (2 * (n + 1)) * A319951 (n + 3)).toNat

end

end A228106.P1012455837448407573

/-!
# A228107: Triangle read by rows: T(n,k) (1 <= k <= n) = number of runs of strictly increasing numbers of 2 X 2 squares in the list of partitions of an n X k rectangle into integer-sided squares, considering only the list of parts, where partition sorting order is ascending with larger squares taking higher precedence.

The programs for A228107, there is no canonical definition to state claims against.
-/

/-! ## A228107.P10594337224981295288

`A306440(A124320(n))`
-/

namespace A228107.P10594337224981295288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 (A124320 n).toNat

end

end A228107.P10594337224981295288

/-! ## A228107.P14613102073494874050

`A213251(A245405(n))`
-/

namespace A228107.P14613102073494874050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213251 (A245405 n).toNat

end

end A228107.P14613102073494874050

/-! ## A228107.P6001826483761552155

`A390764(A215080(n))`
-/

namespace A228107.P6001826483761552155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390764 (A215080 n).toNat

end

end A228107.P6001826483761552155

/-! ## A228107.P9452982967302137045

`A320065(A293785(n))`
-/

namespace A228107.P9452982967302137045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320065 (A293785 n).toNat

end

end A228107.P9452982967302137045

/-! ## A228107.P4361810251858525357

`A390767(A347034(n+1))`
-/

namespace A228107.P4361810251858525357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (A347034 (n + 1)).toNat

end

end A228107.P4361810251858525357

/-!
# A228108: Number of pairs (x, y) with 0 <= x, y <= n such that the distance between two points is a positive integer.

The programs for A228108, there is no canonical definition to state claims against.
-/

/-! ## A228108.P12387072398320002906

`∑[A120370((n+2)²+n-1)]`
-/

namespace A228108.P12387072398320002906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120370 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228108.P12387072398320002906

/-! ## A228108.P6458910402195262659

`∑[∑[∑[2*A190911(n^n+3)]-2]]`
-/

namespace A228108.P6458910402195262659
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190911 (n ^ n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228108.P6458910402195262659

/-!
# A228109: Height after n-th step of an infinite staircase which is the lower part of a structure whose upper part is the infinite Dyck path of A228110.

The programs for A228109, there is no canonical definition to state claims against.
-/

/-! ## A228109.P3268711013403675322

`(-(n%2))^A157397(2*n+1)`
-/

namespace A228109.P3268711013403675322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-((n % 2 : ℕ) : ℤ) : ℚ) ^ (A157397 (2 * n + 1) : ℤ)

end

end A228109.P3268711013403675322

/-! ## A228109.P14590762302339691366

`(gcd(2, n)-2)^A325768(3*n+2)`
-/

namespace A228109.P14590762302339691366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n : ℤ) - 2 : ℚ) ^ (A325768 (3 * n + 2) : ℤ)

end

end A228109.P14590762302339691366

/-! ## A228109.P8647921277522300741

`A008683(A107732(n+3)+3)`
-/

namespace A228109.P8647921277522300741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A107732 (n + 3) + 3).toNat

end

end A228109.P8647921277522300741

/-! ## A228109.P8656335217806395621

`A046978(17*A338422(n+1))`
-/

namespace A228109.P8656335217806395621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (17 * A338422 (n + 1)).toNat

end

end A228109.P8656335217806395621

/-! ## A228109.P10683734095011434170

`A056594(A307677(n+1)+n)`
-/

namespace A228109.P10683734095011434170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A307677 (n + 1) + (n : ℤ)).toNat

end

end A228109.P10683734095011434170

/-!
# A228110: Height after n-th step of the infinite Dyck path in which the k-th ascending line segment has A141285(k) steps and the k-th descending line segment has A194446(k) steps, n >= 0, k >= 1.

The programs for A228110, there is no canonical definition to state claims against.
-/

/-! ## A228110.P14871301104552167640

`A053615(lt[A069770(2*n+1), 53])`
-/

namespace A228110.P14871301104552167640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A228110.P14871301104552167640

/-!
# A228111: Integer nearest to (S(n)*F(4n)(S(n))), where F(4n)(x) are Fibonacci polynomials of multiple of 4 indices (4n) and S(n) = Sum_{i=0..3} (C(i)*(log(log(A*(B+n^2))))^i) (see coefficients A, B, C(i) in comments).

The programs for A228111, there is no canonical definition to state claims against.
-/

/-! ## A228111.P11196222683540437946

`Δ[A006880(n)]-A228112(n+1)`
-/

namespace A228111.P11196222683540437946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228112 (n + 1)

end

end A228111.P11196222683540437946

/-! ## A228111.P6050790095034913801

`A006879(n+1)-A228112(n+1)`
-/

namespace A228111.P6050790095034913801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228112 (n + 1)

end

end A228111.P6050790095034913801

/-! ## A228111.P17950257302932417659

`Δ[A090226(n+1)]-A228112(n+1)`
-/

namespace A228111.P17950257302932417659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228112 (n + 1)

end

end A228111.P17950257302932417659

/-! ## A228111.P18317231770828813476

`A006880(n+1)-(A228112(n+1)+A006880(n))`
-/

namespace A228111.P18317231770828813476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228112 (n + 1) + A006880 n)

end

end A228111.P18317231770828813476

/-! ## A228111.P16003220413703127284

`A228067(n+1)+A228068(n+1)-A228112(n+1)`
-/

namespace A228111.P16003220413703127284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228067 (n + 1) + (A228068 (n + 1) - A228112 (n + 1))

end

end A228111.P16003220413703127284

/-!
# A228112: Difference between the number of primes with n digits (A006879) and the 6-parametric approximation of that number in A228111.

The programs for A228112, there is no canonical definition to state claims against.
-/

/-! ## A228112.P12212608724227498606

`A006879(n+1)-A228111(n+1)`
-/

namespace A228112.P12212608724227498606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228111 (n + 1)

end

end A228112.P12212608724227498606

/-! ## A228112.P7358722464677064319

`Δ[A006880(n)]-A228111(n+1)`
-/

namespace A228112.P7358722464677064319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228111 (n + 1)

end

end A228112.P7358722464677064319

/-! ## A228112.P725366493270532063

`Δ[A090226(n+1)]-A228111(n+1)`
-/

namespace A228112.P725366493270532063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228111 (n + 1)

end

end A228112.P725366493270532063

/-! ## A228112.P4730861215127123208

`A006880(n+1)-(A228111(n+1)+A006880(n))`
-/

namespace A228112.P4730861215127123208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228111 (n + 1) + A006880 n)

end

end A228112.P4730861215127123208

/-! ## A228112.P9307613833593877628

`A228113(n+1)+A228114(n+1)-A228111(n+1)`
-/

namespace A228112.P9307613833593877628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228113 (n + 1) + (A228114 (n + 1) - A228111 (n + 1))

end

end A228112.P9307613833593877628

/-!
# A228113: First differences of A057793.

The programs for A228113, there is no canonical definition to state claims against.
-/

/-! ## A228113.P10589474361987181115

`Δ[A006880(n)]-A228114(n+1)`
-/

namespace A228113.P10589474361987181115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228114 (n + 1)

end

end A228113.P10589474361987181115

/-! ## A228113.P7560521611271221049

`A006879(n+1)-A228114(n+1)`
-/

namespace A228113.P7560521611271221049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228114 (n + 1)

end

end A228113.P7560521611271221049

/-! ## A228113.P9751225421983763705

`Δ[A090226(n+1)]-A228114(n+1)`
-/

namespace A228113.P9751225421983763705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228114 (n + 1)

end

end A228113.P9751225421983763705

/-! ## A228113.P4528539417698155753

`Δ[A122121(A005843(n))]-A228114(n+1)`
-/

namespace A228113.P4528539417698155753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228114 (n + 1)

end

end A228113.P4528539417698155753

/-! ## A228113.P3006419233063786744

`A006880(n+1)-(A228114(n+1)+A006880(n))`
-/

namespace A228113.P3006419233063786744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228114 (n + 1) + A006880 n)

end

end A228113.P3006419233063786744

/-!
# A228114: Difference between the number of primes with n digits (A006879) and the difference of consecutive integers nearest to Riemann(10^n) (see A228113).

The programs for A228114, there is no canonical definition to state claims against.
-/

/-! ## A228114.P13910449978350690114

`A006879(n+1)-A228113(n+1)`
-/

namespace A228114.P13910449978350690114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228113 (n + 1)

end

end A228114.P13910449978350690114

/-! ## A228114.P10144217869270647755

`Δ[A006880(n)]-A228113(n+1)`
-/

namespace A228114.P10144217869270647755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228113 (n + 1)

end

end A228114.P10144217869270647755

/-! ## A228114.P4336686402017007093

`Δ[A090226(n+1)]-A228113(n+1)`
-/

namespace A228114.P4336686402017007093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228113 (n + 1)

end

end A228114.P4336686402017007093

/-! ## A228114.P14030910348003126656

`Δ[A122121(A005843(n))]-A228113(n+1)`
-/

namespace A228114.P14030910348003126656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228113 (n + 1)

end

end A228114.P14030910348003126656

/-! ## A228114.P15765005101265934663

`A228065(n+1)+A228066(n+1)-A228113(n+1)`
-/

namespace A228114.P15765005101265934663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228065 (n + 1) + (A228066 (n + 1) - A228113 (n + 1))

end

end A228114.P15765005101265934663

/-!
# A228115: First differences of A227693.

The programs for A228115, there is no canonical definition to state claims against.
-/

/-! ## A228115.P5671858748321203096

`Δ[A006880(n)]-A228116(n+1)`
-/

namespace A228115.P5671858748321203096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228116 (n + 1)

end

end A228115.P5671858748321203096

/-! ## A228115.P13313975433265250988

`A006879(n+1)-A228116(n+1)`
-/

namespace A228115.P13313975433265250988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228116 (n + 1)

end

end A228115.P13313975433265250988

/-! ## A228115.P4014255001892374016

`A006880(n+1)-(A228116(n+1)+A006880(n))`
-/

namespace A228115.P4014255001892374016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228116 (n + 1) + A006880 n)

end

end A228115.P4014255001892374016

/-! ## A228115.P18121048058036624285

`A228067(n+1)+A228068(n+1)-A228116(n+1)`
-/

namespace A228115.P18121048058036624285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228067 (n + 1) + (A228068 (n + 1) - A228116 (n + 1))

end

end A228115.P18121048058036624285

/-! ## A228115.P17425830597692282231

`A228111(n+1)+A228112(n+1)-A228116(n+1)`
-/

namespace A228115.P17425830597692282231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228111 (n + 1) + (A228112 (n + 1) - A228116 (n + 1))

end

end A228115.P17425830597692282231

/-!
# A228116: a(n) = A006879(n) - A228115(n).

The programs for A228116, there is no canonical definition to state claims against.
-/

/-! ## A228116.P249413632836340248

`A006879(n+1)-A228115(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228116.P249413632836340248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A228115 (n + 1)

end

end A228116.P249413632836340248

/-! ## A228116.P12667653159639443649

`Δ[A006880(n)]-A228115(n+1)`
-/

namespace A228116.P12667653159639443649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228115 (n + 1)

end

end A228116.P12667653159639443649

/-! ## A228116.P13845368986455578063

`A006880(n+1)-(A228115(n+1)+A006880(n))`
-/

namespace A228116.P13845368986455578063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - (A228115 (n + 1) + A006880 n)

end

end A228116.P13845368986455578063

/-! ## A228116.P14222193860872277509

`A228111(n+1)+A228112(n+1)-A228115(n+1)`
-/

namespace A228116.P14222193860872277509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228111 (n + 1) + (A228112 (n + 1) - A228115 (n + 1))

end

end A228116.P14222193860872277509

/-! ## A228116.P16400697112526710037

`A228113(n+1)+A228114(n+1)-A228115(n+1)`
-/

namespace A228116.P16400697112526710037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228113 (n + 1) + (A228114 (n + 1) - A228115 (n + 1))

end

end A228116.P16400697112526710037

/-!
# A228117: Number of partitions of n that have hookset {1,2,...,k} for some k.

The programs for A228117, there is no canonical definition to state claims against.
-/

/-! ## A228117.P16049372067417042627

`A034968(A306844(n+1)+A228904(n))`
-/

namespace A228117.P16049372067417042627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A306844 (n + 1) + A228904 n).toNat

end

end A228117.P16049372067417042627

/-!
# A228118: Numbers consisting of only odd digits such that no permutation of its digits yields a semiprime.

The programs for A228118, there is no canonical definition to state claims against.
-/

/-! ## A228118.P10269537635240539874

`A007500(n+1)-A135767(A048736(n+3))`
-/

namespace A228118.P10269537635240539874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1) - A135767 (A048736 (n + 3)).toNat

end

end A228118.P10269537635240539874

/-! ## A228118.P6593310407354554502

`A078701(A007500(n+1)²)`
-/

namespace A228118.P6593310407354554502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A007500 (n + 1) ^ 2).toNat

end

end A228118.P6593310407354554502

/-! ## A228118.P14609048799037756832

`A109814(A003459(n+1)²)`
-/

namespace A228118.P14609048799037756832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (A003459 (n + 1) ^ 2).toNat

end

end A228118.P14609048799037756832

/-! ## A228118.P6002489932910280718

`A109814(A007500(n+1)²)`
-/

namespace A228118.P6002489932910280718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (A007500 (n + 1) ^ 2).toNat

end

end A228118.P6002489932910280718

/-! ## A228118.P15635715568260762536

`A078701(A068652(n+1)²)`
-/

namespace A228118.P15635715568260762536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A068652 (n + 1) ^ 2).toNat

end

end A228118.P15635715568260762536

/-!
# A228119: Numbers n such that n * (product of digits of n) + 1 is prime.

The programs for A228119, there is no canonical definition to state claims against.
-/

/-! ## A228119.P5794353913986367637

`eq[1, A001222(A098736(n)+1)]`
-/

namespace A228119.P5794353913986367637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098736 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228119.P5794353913986367637

/-! ## A228119.P8021689115235926652

`eq[1, A001222(n*A007954(n)+1)]`
-/

namespace A228119.P8021689115235926652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) * A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228119.P8021689115235926652

/-! ## A228119.P3679478224070525795

`eq[1, A010051(n*A007954(n)+1)]`
-/

namespace A228119.P3679478224070525795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n : ℤ) * A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228119.P3679478224070525795

/-! ## A228119.P14322518396191840155

`eq[2, A000005(n*A007954(n)+1)]`
-/

namespace A228119.P14322518396191840155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) * A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228119.P14322518396191840155

/-! ## A228119.P1758712370090135846

`eq[A000010(A098736(n)+1), A098736(n)]`
-/

namespace A228119.P1758712370090135846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A098736 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228119.P1758712370090135846

/-! ## A228119.P16549963627169002145

`eq[0, A072480(A098736(n)+1)]`
-/

namespace A228119.P16549963627169002145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A098736 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228119.P16549963627169002145

/-! ## A228119.P8989860118245115441

`eq[1, A095112(n*A007954(n)+1)]`
-/

namespace A228119.P8989860118245115441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 ((n : ℤ) * A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228119.P8989860118245115441

/-! ## A228119.P15105413490378677895

`eq[1, A340070(n*A007954(n)+1)]`
-/

namespace A228119.P15105413490378677895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 ((n : ℤ) * A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228119.P15105413490378677895

/-!
# A228120: a(n) = (1^2 + 1)*(2^2 + 1)*(3^2 + 1)*...*(((prime(n) - 1)/2)^2 + 1).

The programs for A228120, there is no canonical definition to state claims against.
-/

/-! ## A228120.P12192947438625947204

`A101686((p?[2*n+1]+3)/2-2)`
-/

namespace A228120.P12192947438625947204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101686 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 2 - 2)).toNat

end

end A228120.P12192947438625947204

/-! ## A228120.P13089303875559985220

`A101686(record[Δ[A078898(n)]])`
-/

namespace A228120.P13089303875559985220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101686 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228120.P13089303875559985220

/-! ## A228120.P5657862749143475443

`A101686(record[A069897(n+1)])`
-/

namespace A228120.P5657862749143475443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101686 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228120.P5657862749143475443

/-! ## A228120.P2386266475797612382

`A101686(A006254(n+1)-1)`
-/

namespace A228120.P2386266475797612382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101686 (A006254 (n + 1) - 1).toNat

end

end A228120.P2386266475797612382

/-! ## A228120.P18413713325529982647

`A101686(record[Δ[A060681(n+1)]])`
-/

namespace A228120.P18413713325529982647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101686 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228120.P18413713325529982647

/-!
# A228121: Numbers n such that 3n - 4 is prime.

The programs for A228121, the canonical program `A228121.P1458711502036451659` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228121 has offset 1).

The definition of A228121 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228121.P1458711502036451659

`A024893(n+1)+2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228121

/-- `A024893(n+1)+2` -/
def P1458711502036451659.Spec : Prop :=
  ∀ n, P1458711502036451659.a n = A228121 (n + 1)

theorem P1458711502036451659.correct : P1458711502036451659.Spec := by
  intro n
  simp only [A228121, Nat.add_sub_cancel]

end A228121

/-! ## A228121.P12532466016855102576

`(p?[3*n-1]+4)/3`
-/

namespace A228121.P12532466016855102576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4 : ℚ) / 3

end

end A228121.P12532466016855102576

namespace A228121

/-- `(p?[3*n-1]+4)/3` -/
def P12532466016855102576.Spec : Prop :=
  ∀ n, P12532466016855102576.a n = (A228121 (n + 1) : ℚ)

end A228121

/-! ## A228121.P15516472215169150548

`A087370(n+1)+1`
-/

namespace A228121.P15516472215169150548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) + 1

end

end A228121.P15516472215169150548

namespace A228121

/-- `A087370(n+1)+1` -/
def P15516472215169150548.Spec : Prop :=
  ∀ n, P15516472215169150548.a n = A228121 (n + 1)

end A228121

/-! ## A228121.P13746324371698782585

`A088879(n+1)+3`
-/

namespace A228121.P13746324371698782585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1) + 3

end

end A228121.P13746324371698782585

namespace A228121

/-- `A088879(n+1)+3` -/
def P13746324371698782585.Spec : Prop :=
  ∀ n, P13746324371698782585.a n = A228121 (n + 1)

end A228121

/-! ## A228121.P4764143569614978605

`(A034934(n+1)+3)/2`
-/

namespace A228121.P4764143569614978605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034934 (n + 1) + 3 : ℚ) / 2

end

end A228121.P4764143569614978605

namespace A228121

/-- `(A034934(n+1)+3)/2` -/
def P4764143569614978605.Spec : Prop :=
  ∀ n, P4764143569614978605.a n = (A228121 (n + 1) : ℚ)

end A228121

/-! ## A228121.P17059944406210972311

`(A003627(n+1)+4)/3`
-/

namespace A228121.P17059944406210972311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003627 (n + 1) + 4 : ℚ) / 3

end

end A228121.P17059944406210972311

namespace A228121

/-- `(A003627(n+1)+4)/3` -/
def P17059944406210972311.Spec : Prop :=
  ∀ n, P17059944406210972311.a n = (A228121 (n + 1) : ℚ)

end A228121

/-! ## A228121.P14434602430104944432

`A003627(n+1)+1-A034934(n+1)`
-/

namespace A228121.P14434602430104944432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (1 - A034934 (n + 1))

end

end A228121.P14434602430104944432

namespace A228121

/-- `A003627(n+1)+1-A034934(n+1)` -/
def P14434602430104944432.Spec : Prop :=
  ∀ n, P14434602430104944432.a n = A228121 (n + 1)

end A228121

/-! ## A228121.P5846267764272410657

`A144769(A091177(n+1))+2`
-/

namespace A228121.P5846267764272410657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A091177 (n + 1)).toNat + 2

end

end A228121.P5846267764272410657

namespace A228121

/-- `A144769(A091177(n+1))+2` -/
def P5846267764272410657.Spec : Prop :=
  ∀ n, P5846267764272410657.a n = A228121 (n + 1)

end A228121

/-! ## A228121.P11858686228893429977

`eq[1, A001222(3*n+2)]+2`
-/

namespace A228121.P11858686228893429977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A228121.P11858686228893429977

namespace A228121

/-- `eq[1, A001222(3*n+2)]+2` -/
def P11858686228893429977.Spec : Prop :=
  ∀ n, (P11858686228893429977.a n : ℤ) = A228121 (n + 1)

end A228121

/-! ## A228121.P16365749565385916198

`eq[2, A000005(3*n+2)]+2`
-/

namespace A228121.P16365749565385916198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A228121.P16365749565385916198

namespace A228121

/-- `eq[2, A000005(3*n+2)]+2` -/
def P16365749565385916198.Spec : Prop :=
  ∀ n, (P16365749565385916198.a n : ℤ) = A228121 (n + 1)

end A228121

/-! ## A228121.P15127781164159631726

`lt[n, A020639(3*n+2)]+2`
-/

namespace A228121.P15127781164159631726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A228121.P15127781164159631726

namespace A228121

/-- `lt[n, A020639(3*n+2)]+2` -/
def P15127781164159631726.Spec : Prop :=
  ∀ n, (P15127781164159631726.a n : ℤ) = A228121 (n + 1)

end A228121

/-! ## A228121.P8806133019367350724

`record[A006530(3*n+2)-2*n]`
-/

namespace A228121.P8806133019367350724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228121.P8806133019367350724

namespace A228121

/-- `record[A006530(3*n+2)-2*n]` -/
def P8806133019367350724.Spec : Prop :=
  ∀ n, P8806133019367350724.a n = A228121 (n + 1)

end A228121

/-! ## A228121.P15247253284768481201

`(record[A000010(2*n+n+2)-n]+3)/2`
-/

namespace A228121.P15247253284768481201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + (n + 2)) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3 : ℚ) / 2

end

end A228121.P15247253284768481201

namespace A228121

/-- `(record[A000010(2*n+n+2)-n]+3)/2` -/
def P15247253284768481201.Spec : Prop :=
  ∀ n, P15247253284768481201.a n = (A228121 (n + 1) : ℚ)

end A228121

/-! ## A228121.P7686728738271131569

`A103391(A034934(n+1)+1)`
-/

namespace A228121.P7686728738271131569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A034934 (n + 1) + 1).toNat

end

end A228121.P7686728738271131569

namespace A228121

/-- `A103391(A034934(n+1)+1)` -/
def P7686728738271131569.Spec : Prop :=
  ∀ n, P7686728738271131569.a n = A228121 (n + 1)

end A228121

/-! ## A228121.P13227955798288295035

`eq[1, A337135(3*n+2)]+2`
-/

namespace A228121.P13227955798288295035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A228121.P13227955798288295035

namespace A228121

/-- `eq[1, A337135(3*n+2)]+2` -/
def P13227955798288295035.Spec : Prop :=
  ∀ n, (P13227955798288295035.a n : ℤ) = A228121 (n + 1)

end A228121

/-! ## A228121.P9931622817296963340

`eq[1, ∑{e}[a(n-1)-3, #]]` with `a(0)=4`
-/

namespace A228121.P9931622817296963340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228121.P9931622817296963340

namespace A228121

/-- `eq[1, ∑{e}[a(n-1)-3, #]]` -/
def P9931622817296963340.Spec : Prop :=
  ∀ n, (P9931622817296963340.a n : ℤ) = A228121 (n + 1)

end A228121

/-! ## A228121.P12805650403071912749

`record[∑{p}[3*n+2, #-2*n]]`
-/

namespace A228121.P12805650403071912749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228121.P12805650403071912749

namespace A228121

/-- `record[∑{p}[3*n+2, #-2*n]]` -/
def P12805650403071912749.Spec : Prop :=
  ∀ n, P12805650403071912749.a n = A228121 (n + 1)

end A228121

/-! ## A228121.P3977269008388081817

`record[(n+2)/∑{e}[3*n+2, #]]`
-/

namespace A228121.P3977269008388081817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228121.P3977269008388081817

namespace A228121

/-- `record[(n+2)/∑{e}[3*n+2, #]]` -/
def P3977269008388081817.Spec : Prop :=
  ∀ n, P3977269008388081817.a n = (A228121 (n + 1) : ℚ)

end A228121

/-! ## A228121.P8932989433333688031

`eq[1, A231776(n+1)]+2`
-/

namespace A228121.P8932989433333688031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A228121.P8932989433333688031

namespace A228121

/-- `eq[1, A231776(n+1)]+2` -/
def P8932989433333688031.Spec : Prop :=
  ∀ n, (P8932989433333688031.a n : ℤ) = A228121 (n + 1)

end A228121

/-! ## A228121.P6511217473881355386

`eq[1, A363514(n+1)]+2`
-/

namespace A228121.P6511217473881355386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A228121.P6511217473881355386

namespace A228121

/-- `eq[1, A363514(n+1)]+2` -/
def P6511217473881355386.Spec : Prop :=
  ∀ n, (P6511217473881355386.a n : ℤ) = A228121 (n + 1)

end A228121

/-!
# A228123: Number of primes generated from Euler's polynomial x^2 + x + 41 from x = 1 to 10^n.

The programs for A228123, there is no canonical definition to state claims against.
-/

/-! ## A228123.P18378037632185150150

`A331876(n)-1`
-/

namespace A228123.P18378037632185150150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331876 n - 1

end

end A228123.P18378037632185150150

/-! ## A228123.P9614062400490772336

`A331890(A047996(n))+A331876(n)`
-/

namespace A228123.P9614062400490772336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331890 (A047996 n).toNat + A331876 n

end

end A228123.P9614062400490772336

/-! ## A228123.P15412186063374186175

`A331890(A290759(n))+A331876(n)`
-/

namespace A228123.P15412186063374186175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331890 (A290759 n).toNat + A331876 n

end

end A228123.P15412186063374186175

/-! ## A228123.P2140824248046350900

`abs(A331876(n)+A008683(A060566(n)))`
-/

namespace A228123.P2140824248046350900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331876 n + A008683 (A060566 n).toNat|

end

end A228123.P2140824248046350900

/-!
# A228124: Number of blocks in a Steiner Quadruple System of order A047235(n+1).

The programs for A228124, the canonical program `A228124.P17602552730383351617` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228124 has offset 1).

The definition of A228124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228124.P17602552730383351617

`(n+1)*(1+3*(n+1))*(1+3*(-1)^(n+1)+6*(n+1))/16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228124

/-- `(n+1)*(1+3*(n+1))*(1+3*(-1)^(n+1)+6*(n+1))/16` -/
def P17602552730383351617.Spec : Prop :=
  ∀ n, P17602552730383351617.a n = (A228124 (n + 1) : ℚ)

end A228124

/-! ## A228124.P10272328557314210021

`floor(floor(C(A007310(n+1)+3, 3)/2)/2)`
-/

namespace A228124.P10272328557314210021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(Nat.choose (A007310 (n + 1) + 3).toNat 3 : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A228124.P10272328557314210021

namespace A228124

/-- `floor(floor(C(A007310(n+1)+3, 3)/2)/2)` -/
def P10272328557314210021.Spec : Prop :=
  ∀ n, P10272328557314210021.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P10234144230389080853

`A001082(n+2)*A032766(n+1)-A001318(n)`
-/

namespace A228124.P10234144230389080853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 2) * A032766 (n + 1) - A001318 n

end

end A228124.P10234144230389080853

namespace A228124

/-- `A001082(n+2)*A032766(n+1)-A001318(n)` -/
def P10234144230389080853.Spec : Prop :=
  ∀ n, P10234144230389080853.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P14275178024974560153

`A000330(∑[n%2+1])`
-/

namespace A228124.P14275178024974560153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228124.P14275178024974560153

namespace A228124

/-- `A000330(∑[n%2+1])` -/
def P14275178024974560153.Spec : Prop :=
  ∀ n, P14275178024974560153.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P14395681032365170568

`A000330(∑[gcd(2, n+1)])`
-/

namespace A228124.P14395681032365170568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228124.P14395681032365170568

namespace A228124

/-- `A000330(∑[gcd(2, n+1)])` -/
def P14395681032365170568.Spec : Prop :=
  ∀ n, P14395681032365170568.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P9465970049975972538

`A000330(∑[and(1, n)+1])`
-/

namespace A228124.P9465970049975972538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228124.P9465970049975972538

namespace A228124

/-- `A000330(∑[and(1, n)+1])` -/
def P9465970049975972538.Spec : Prop :=
  ∀ n, P9465970049975972538.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P3724400469693746495

`A000330(ceil(3*n/2)+1)`
-/

namespace A228124.P3724400469693746495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (⌈3 * ((n : ℚ) / 2)⌉ + 1).toNat

end

end A228124.P3724400469693746495

namespace A228124

/-- `A000330(ceil(3*n/2)+1)` -/
def P3724400469693746495.Spec : Prop :=
  ∀ n, P3724400469693746495.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P10568197450841850216

`A164765(A007494(n)+1)`
-/

namespace A228124.P10568197450841850216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164765 (A007494 n + 1).toNat

end

end A228124.P10568197450841850216

namespace A228124

/-- `A164765(A007494(n)+1)` -/
def P10568197450841850216.Spec : Prop :=
  ∀ n, P10568197450841850216.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P16803891770040133548

`∩[A164765(n+1), A000330(n)]`
-/

namespace A228124.P16803891770040133548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228124.P16803891770040133548

namespace A228124

/-- `∩[A164765(n+1), A000330(n)]` -/
def P16803891770040133548.Spec : Prop :=
  ∀ n, (P16803891770040133548.a n : ℤ) = A228124 (n + 1)

end A228124

/-! ## A228124.P13277794370272898279

`A006918(A007310(n+1))`
-/

namespace A228124.P13277794370272898279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A007310 (n + 1)).toNat

end

end A228124.P13277794370272898279

namespace A228124

/-- `A006918(A007310(n+1))` -/
def P13277794370272898279.Spec : Prop :=
  ∀ n, P13277794370272898279.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P1555017277468894332

`A001843(A047235(n+2))`
-/

namespace A228124.P1555017277468894332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001843 (A047235 (n + 2)).toNat

end

end A228124.P1555017277468894332

namespace A228124

/-- `A001843(A047235(n+2))` -/
def P1555017277468894332.Spec : Prop :=
  ∀ n, P1555017277468894332.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P4019901328889642616

`A060422(A047241(n+2))`
-/

namespace A228124.P4019901328889642616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060422 (A047241 (n + 2)).toNat

end

end A228124.P4019901328889642616

namespace A228124

/-- `A060422(A047241(n+2))` -/
def P4019901328889642616.Spec : Prop :=
  ∀ n, P4019901328889642616.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P7438997479902140836

`A363269(A047238(n+2))`
-/

namespace A228124.P7438997479902140836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363269 (A047238 (n + 2)).toNat

end

end A228124.P7438997479902140836

namespace A228124

/-- `A363269(A047238(n+2))` -/
def P7438997479902140836.Spec : Prop :=
  ∀ n, P7438997479902140836.a n = A228124 (n + 1)

end A228124

/-! ## A228124.P922134407588530064

`∩[A164765(n+1), A006918(n)]`
-/

namespace A228124.P922134407588530064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228124.P922134407588530064

namespace A228124

/-- `∩[A164765(n+1), A006918(n)]` -/
def P922134407588530064.Spec : Prop :=
  ∀ n, (P922134407588530064.a n : ℤ) = A228124 (n + 1)

end A228124

/-! ## A228124.P8902536278791727562

`∩[A036831(n+4), A000330(n)]`
-/

namespace A228124.P8902536278791727562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036831 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228124.P8902536278791727562

namespace A228124

/-- `∩[A036831(n+4), A000330(n)]` -/
def P8902536278791727562.Spec : Prop :=
  ∀ n, (P8902536278791727562.a n : ℤ) = A228124 (n + 1)

end A228124

/-! ## A228124.P17581684185120631672

`∩[A036831(n+4), A006918(n)]`
-/

namespace A228124.P17581684185120631672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036831 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228124.P17581684185120631672

namespace A228124

/-- `∩[A036831(n+4), A006918(n)]` -/
def P17581684185120631672.Spec : Prop :=
  ∀ n, (P17581684185120631672.a n : ℤ) = A228124 (n + 1)

end A228124

/-! ## A228124.P9895902290796700658

`∩[A164765(n+1), A215147(n+1)]`
-/

namespace A228124.P9895902290796700658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228124.P9895902290796700658

namespace A228124

/-- `∩[A164765(n+1), A215147(n+1)]` -/
def P9895902290796700658.Spec : Prop :=
  ∀ n, (P9895902290796700658.a n : ℤ) = A228124 (n + 1)

end A228124

/-! ## A228124.P7076569368579976179

`∩[A164765(n+1), A036831(n+4)]`
-/

namespace A228124.P7076569368579976179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036831 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228124.P7076569368579976179

namespace A228124

/-- `∩[A164765(n+1), A036831(n+4)]` -/
def P7076569368579976179.Spec : Prop :=
  ∀ n, (P7076569368579976179.a n : ℤ) = A228124 (n + 1)

end A228124

/-! ## A228124.P18279821517758568488

`A032801(A047270(n+2))`
-/

namespace A228124.P18279821517758568488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032801 (A047270 (n + 2)).toNat

end

end A228124.P18279821517758568488

namespace A228124

/-- `A032801(A047270(n+2))` -/
def P18279821517758568488.Spec : Prop :=
  ∀ n, P18279821517758568488.a n = A228124 (n + 1)

end A228124

/-!
# A228125: Triangle read by rows: T(n,k) = number of semistandard Young tableaux with sum of entries equal to n and shape of tableau a partition of k.

The programs for A228125, there is no canonical definition to state claims against.
-/

/-! ## A228125.P6997681839815228930

`A117707(A318795(n+1)+A122083(n))`
-/

namespace A228125.P6997681839815228930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A318795 (n + 1) + A122083 n).toNat

end

end A228125.P6997681839815228930

/-! ## A228125.P1181222348673356068

`ceil(A124460(n)/A127568(n))`
-/

namespace A228125.P1181222348673356068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124460 n : ℚ) / (A127568 n : ℚ)⌉

end

end A228125.P1181222348673356068

/-! ## A228125.P2974603055868543890

`A007318(n)-A287272(A123125(n))`
-/

namespace A228125.P2974603055868543890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A287272 (A123125 n).toNat

end

end A228125.P2974603055868543890

/-! ## A228125.P4570435625705124110

`A034932(n)-A287272(A123125(n))`
-/

namespace A228125.P4570435625705124110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 n - A287272 (A123125 n).toNat

end

end A228125.P4570435625705124110

/-! ## A228125.P9861225139940363047

`A000120(A323837(n)+1)`
-/

namespace A228125.P9861225139940363047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A323837 n + 1).toNat

end

end A228125.P9861225139940363047

/-!
# A228126: Sum of prime divisors of n (with repetition) is one less than the sum of prime divisors (with repetition) of n+1.

The programs for A228126, there is no canonical definition to state claims against.
-/

/-! ## A228126.P11768256615423652629

`eq[A036288(n+1), A107463(2*n)]`
-/

namespace A228126.P11768256615423652629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228126.P11768256615423652629

/-! ## A228126.P14889942927508327437

`eq[A001414(n+1)+2, A036288(n+2)]+1`
-/

namespace A228126.P14889942927508327437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A228126.P14889942927508327437

/-! ## A228126.P2821542195360311264

`eq[A107463(2*n)+1, A001414(n+1)+2]`
-/

namespace A228126.P2821542195360311264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228126.P2821542195360311264

/-! ## A228126.P10498350811238357554

`eq[A001414(A004277(n)), A036288(n+1)]`
-/

namespace A228126.P10498350811238357554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228126.P10498350811238357554

/-! ## A228126.P941957570554266480

`eq[A001414(n+1), A036288(A028310(n))]`
-/

namespace A228126.P941957570554266480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228126.P941957570554266480

/-!
# A228128: T(n,m) = semistandard Young tableau families, headed by a father SSYT with shape a partition of k, containing daughter SSYT of shape equal to once-trimmed father's shape, so that union of families equals all SSYT with sum of entries n.

The programs for A228128, there is no canonical definition to state claims against.
-/

/-! ## A228128.P12969434538805976805

`A005206(A332670(n))%A019311(n+4)`
-/

namespace A228128.P12969434538805976805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (A332670 n).toNat) (A019311 (n + 4))

end

end A228128.P12969434538805976805

/-! ## A228128.P18054779332823300514

`A005206(A332670(n)%A228129(n+5))`
-/

namespace A228128.P18054779332823300514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A332670 n) (A228129 (n + 5))).toNat

end

end A228128.P18054779332823300514

/-! ## A228128.P17052458456984612301

`A005206(or(A144199(2*n+1), A332670(n)))`
-/

namespace A228128.P17052458456984612301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.lor (A144199 (2 * n + 1)) (A332670 n)).toNat

end

end A228128.P17052458456984612301

/-! ## A228128.P12767558702067787655

`A005206(A332670(n))^A014963(A111043(n+1))`
-/

namespace A228128.P12767558702067787655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A332670 n).toNat : ℚ) ^ (A014963 (A111043 (n + 1)).toNat : ℤ)

end

end A228128.P12767558702067787655

/-! ## A228128.P15972406657993846799

`∑{d}[A374995(A321615(n)), A080570(#)]`
-/

namespace A228128.P15972406657993846799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (A321615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A080570 d

end

end A228128.P15972406657993846799

/-!
# A228129: a(n) = number of semistandard Young tableau families, headed by a father SSYT, containing daughter SSYT of shape equal to once-trimmed father's shape, so that union of families equals all SSYT with sum of entries n.

The programs for A228129, there is no canonical definition to state claims against.
-/

/-! ## A228129.P16701980295665987852

`Δ[A003293(n)%(2^n)]`
-/

namespace A228129.P16701980295665987852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003293 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228129.P16701980295665987852

/-! ## A228129.P10889248853482947531

`A000007(n)+Δ[A003293(n)]`
-/

namespace A228129.P10889248853482947531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A228129.P10889248853482947531

/-! ## A228129.P16484604413464900445

`Δ[A057427(n)+A003293(n)]`
-/

namespace A228129.P16484604413464900445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A003293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228129.P16484604413464900445

/-! ## A228129.P5796626100965634546

`A112316(n)+Δ[A003293(n)]`
-/

namespace A228129.P5796626100965634546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + (f1 (n + 1) - f1 n)

end

end A228129.P5796626100965634546

/-!
# A228132: First differences of A014311.

The programs for A228132, the canonical program `A228132.P8737515044422985900` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228132 has offset 1).

The definition of A228132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228132.P8737515044422985900

`Δ[A014311(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A228132

/-- `Δ[A014311(n+1)]` -/
def P8737515044422985900.Spec : Prop :=
  ∀ n, P8737515044422985900.a n = A228132 (n + 1)

theorem P8737515044422985900.correct : P8737515044422985900.Spec := by
  intro n
  simp only [A228132, Nat.add_sub_cancel]

end A228132

/-! ## A228132.P14350142419088976463

`A014311(n+2)-A014311(n+1)`
-/

namespace A228132.P14350142419088976463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 2) - A014311 (n + 1)

end

end A228132.P14350142419088976463

namespace A228132

/-- `A014311(n+2)-A014311(n+1)` -/
def P14350142419088976463.Spec : Prop :=
  ∀ n, P14350142419088976463.a n = A228132 (n + 1)

theorem P14350142419088976463.correct : P14350142419088976463.Spec := by
  intro n
  simp only [A228132, Nat.add_sub_cancel, A228132.P14350142419088976463.a, A228132.P8737515044422985900.f1, A228132.P8737515044422985900.a, SequenceMachineLib.memo_apply]

end A228132

/-! ## A228132.P4599647071782138645

`A014311(A000027(n+2))%A014311(n+1)`
-/

namespace A228132.P4599647071782138645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014311 (A000027 (n + 2)).toNat) (A014311 (n + 1))

end

end A228132.P4599647071782138645

namespace A228132

/-- `A014311(A000027(n+2))%A014311(n+1)` -/
def P4599647071782138645.Spec : Prop :=
  ∀ n, P4599647071782138645.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P10433137084225948796

`Δ[record[A014311(A286558(n))]]`
-/

namespace A228132.P10433137084225948796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (A286558 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P10433137084225948796

namespace A228132

/-- `Δ[record[A014311(A286558(n))]]` -/
def P10433137084225948796.Spec : Prop :=
  ∀ n, P10433137084225948796.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P587927910796331512

`Δ[record[A014311(A286554(n))]]`
-/

namespace A228132.P587927910796331512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (A286554 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P587927910796331512

namespace A228132

/-- `Δ[record[A014311(A286554(n))]]` -/
def P587927910796331512.Spec : Prop :=
  ∀ n, P587927910796331512.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P29811396217508385

`Δ[A048679(A179243(n+1))]`
-/

namespace A228132.P29811396217508385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P29811396217508385

namespace A228132

/-- `Δ[A048679(A179243(n+1))]` -/
def P29811396217508385.Spec : Prop :=
  ∀ n, P29811396217508385.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P16757662012015560879

`Δ[eq[8, A001316(n)]]`
-/

namespace A228132.P16757662012015560879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228132.P16757662012015560879

namespace A228132

/-- `Δ[eq[8, A001316(n)]]` -/
def P16757662012015560879.Spec : Prop :=
  ∀ n, P16757662012015560879.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P13664883847935778458

`Δ[eq[3, 2*n-A005187(n)]]`
-/

namespace A228132.P13664883847935778458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228132.P13664883847935778458

namespace A228132

/-- `Δ[eq[3, 2*n-A005187(n)]]` -/
def P13664883847935778458.Spec : Prop :=
  ∀ n, P13664883847935778458.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P10258022985554169044

`Δ[A057168(a(n-1))]` with `a(0)=7`
-/

namespace A228132.P10258022985554169044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A057168 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P10258022985554169044

namespace A228132

/-- `Δ[A057168(a(n-1))]` -/
def P10258022985554169044.Spec : Prop :=
  ∀ n, P10258022985554169044.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P13663779888556271034

`A171942(A014311(n+1)+1)`
-/

namespace A228132.P13663779888556271034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A014311 (n + 1) + 1).toNat

end

end A228132.P13663779888556271034

namespace A228132

/-- `A171942(A014311(n+1)+1)` -/
def P13663779888556271034.Spec : Prop :=
  ∀ n, P13663779888556271034.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P11828736966643204690

`Δ[eq[3, A000120(n)]]`
-/

namespace A228132.P11828736966643204690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228132.P11828736966643204690

namespace A228132

/-- `Δ[eq[3, A000120(n)]]` -/
def P11828736966643204690.Spec : Prop :=
  ∀ n, P11828736966643204690.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P12559826290503730995

`Δ[eq[2, A243036(n+1)-2]]`
-/

namespace A228132.P12559826290503730995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243036 (n + 1) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228132.P12559826290503730995

namespace A228132

/-- `Δ[eq[2, A243036(n+1)-2]]` -/
def P12559826290503730995.Spec : Prop :=
  ∀ n, P12559826290503730995.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P13185625091615016893

`Δ[eq[3, A160385(n)+A160383(n)]]`
-/

namespace A228132.P13185625091615016893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + A160383 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228132.P13185625091615016893

namespace A228132

/-- `Δ[eq[3, A160385(n)+A160383(n)]]` -/
def P13185625091615016893.Spec : Prop :=
  ∀ n, P13185625091615016893.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P3155392183689394637

`Δ[A341910(A043570(n+1))]`
-/

namespace A228132.P3155392183689394637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341910 (A043570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P3155392183689394637

namespace A228132

/-- `Δ[A341910(A043570(n+1))]` -/
def P3155392183689394637.Spec : Prop :=
  ∀ n, P3155392183689394637.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P11958489885756719464

`Δ[eq[3, A005811(A341916(n))]]`
-/

namespace A228132.P11958489885756719464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228132.P11958489885756719464

namespace A228132

/-- `Δ[eq[3, A005811(A341916(n))]]` -/
def P11958489885756719464.Spec : Prop :=
  ∀ n, P11958489885756719464.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P10485401331232683475

`Δ[eq[3, A001222(A278222(n))]]`
-/

namespace A228132.P10485401331232683475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228132.P10485401331232683475

namespace A228132

/-- `Δ[eq[3, A001222(A278222(n))]]` -/
def P10485401331232683475.Spec : Prop :=
  ∀ n, P10485401331232683475.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P12714767587429563490

`Δ[A087808(A173589(n+1))]`
-/

namespace A228132.P12714767587429563490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A173589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P12714767587429563490

namespace A228132

/-- `Δ[A087808(A173589(n+1))]` -/
def P12714767587429563490.Spec : Prop :=
  ∀ n, P12714767587429563490.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P10068630443869374625

`Δ[A067576(A167614(n+1))]`
-/

namespace A228132.P10068630443869374625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067576 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P10068630443869374625

namespace A228132

/-- `Δ[A067576(A167614(n+1))]` -/
def P10068630443869374625.Spec : Prop :=
  ∀ n, P10068630443869374625.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P9205708811604390437

`Δ[A066884(A034856(n+2))]`
-/

namespace A228132.P9205708811604390437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A034856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P9205708811604390437

namespace A228132

/-- `Δ[A066884(A034856(n+2))]` -/
def P9205708811604390437.Spec : Prop :=
  ∀ n, P9205708811604390437.a n = A228132 (n + 1)

end A228132

/-! ## A228132.P3039415013610336607

`Δ[A325985(A226636(n+1))]`
-/

namespace A228132.P3039415013610336607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325985 (A226636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P3039415013610336607

namespace A228132

/-- `Δ[A325985(A226636(n+1))]` -/
def P3039415013610336607.Spec : Prop :=
  ∀ n, P3039415013610336607.a n = A228132 (n + 1)

end A228132

/-!
# A228136: Numbers that give records of A100678.

The programs for A228136, there is no canonical definition to state claims against.
-/

/-! ## A228136.P12124670218720963265

`A061358(A124805(n+1))`
-/

namespace A228136.P12124670218720963265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A124805 (n + 1)).toNat

end

end A228136.P12124670218720963265

/-!
# A228137: Numbers that are congruent to {1, 4} mod 12.

The programs for A228137, the canonical program `A228137.P6373566349085021603` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228137 has offset 1).

The definition of A228137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228137.P6373566349085021603

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228137

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P6373566349085021603.Spec : Prop :=
  ∀ n, P6373566349085021603.a n = A228137 (n + 1)

theorem P6373566349085021603.correct : P6373566349085021603.Spec := by
  intro n
  simp only [A228137, Nat.add_sub_cancel]

end A228137

/-! ## A228137.P7148412157922193916

`a(n-2)+12` with `a(0)=1, a(1)=4`
-/

namespace A228137.P7148412157922193916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 12

end

end A228137.P7148412157922193916

namespace A228137

/-- `a(n-2)+12` -/
def P7148412157922193916.Spec : Prop :=
  ∀ n, (P7148412157922193916.a n : ℤ) = A228137 (n + 1)

end A228137

/-! ## A228137.P17530721718674725635

`∑[3^gcd(2, n)]-8`
-/

namespace A228137.P17530721718674725635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 8

end

end A228137.P17530721718674725635

namespace A228137

/-- `∑[3^gcd(2, n)]-8` -/
def P17530721718674725635.Spec : Prop :=
  ∀ n, P17530721718674725635.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P9500211615161583177

`3*comp[or(2, n)]+1`
-/

namespace A228137.P9500211615161583177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A228137.P9500211615161583177

namespace A228137

/-- `3*comp[or(2, n)]+1` -/
def P9500211615161583177.Spec : Prop :=
  ∀ n, (P9500211615161583177.a n : ℤ) = A228137 (n + 1)

end A228137

/-! ## A228137.P16226173905967358172

`record[3*or(2, n)-5]`
-/

namespace A228137.P16226173905967358172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 2 n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228137.P16226173905967358172

namespace A228137

/-- `record[3*or(2, n)-5]` -/
def P16226173905967358172.Spec : Prop :=
  ∀ n, P16226173905967358172.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P15587136492481440970

`record[3*xor(2, n)-5]`
-/

namespace A228137.P15587136492481440970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 2 n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228137.P15587136492481440970

namespace A228137

/-- `record[3*xor(2, n)-5]` -/
def P15587136492481440970.Spec : Prop :=
  ∀ n, P15587136492481440970.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P13251746516177271067

`∑[∏{d}[n, 3-2%#]]`
-/

namespace A228137.P13251746516177271067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (3 - ((2 % d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228137.P13251746516177271067

namespace A228137

/-- `∑[∏{d}[n, 3-2%#]]` -/
def P13251746516177271067.Spec : Prop :=
  ∀ n, P13251746516177271067.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P15157701013587898033

`∑[∏{d}[n, C(3, C(2, #))]]`
-/

namespace A228137.P15157701013587898033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), Nat.choose 3 (Nat.choose 2 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228137.P15157701013587898033

namespace A228137

/-- `∑[∏{d}[n, C(3, C(2, #))]]` -/
def P15157701013587898033.Spec : Prop :=
  ∀ n, (P15157701013587898033.a n : ℤ) = A228137 (n + 1)

end A228137

/-! ## A228137.P8571115578185581192

`∑[12-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A228137.P8571115578185581192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228137.P8571115578185581192

namespace A228137

/-- `∑[12-a(n-1)]` -/
def P8571115578185581192.Spec : Prop :=
  ∀ n, P8571115578185581192.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P17014793821012489540

`3*(or(1, n)+n)-2`
-/

namespace A228137.P17014793821012489540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (Nat.lor 1 n + n) : ℤ) - 2

end

end A228137.P17014793821012489540

namespace A228137

/-- `3*(or(1, n)+n)-2` -/
def P17014793821012489540.Spec : Prop :=
  ∀ n, P17014793821012489540.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P6647583650274693604

`xor(6*n, and(1, n)+1)`
-/

namespace A228137.P6647583650274693604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (6 * n) (Nat.land 1 n + 1)

end

end A228137.P6647583650274693604

namespace A228137

/-- `xor(6*n, and(1, n)+1)` -/
def P6647583650274693604.Spec : Prop :=
  ∀ n, (P6647583650274693604.a n : ℤ) = A228137 (n + 1)

end A228137

/-! ## A228137.P15907537350239000727

`3*lt[n, or(2, n)]+1`
-/

namespace A228137.P15907537350239000727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A228137.P15907537350239000727

namespace A228137

/-- `3*lt[n, or(2, n)]+1` -/
def P15907537350239000727.Spec : Prop :=
  ∀ n, (P15907537350239000727.a n : ℤ) = A228137 (n + 1)

end A228137

/-! ## A228137.P17960353180160363688

`∑[∑[ogf((1+3x+8x^2)/(1+x))]]`
-/

namespace A228137.P17960353180160363688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 8] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228137.P17960353180160363688

namespace A228137

/-- `∑[∑[ogf((1+3x+8x^2)/(1+x))]]` -/
def P17960353180160363688.Spec : Prop :=
  ∀ n, P17960353180160363688.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P258467759327307582

`∑[3*a(∑[(-1)^n])]` with `a(0)=1`
-/

namespace A228137.P258467759327307582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228137.P258467759327307582

namespace A228137

/-- `∑[3*a(∑[(-1)^n])]` -/
def P258467759327307582.Spec : Prop :=
  ∀ n, (P258467759327307582.a n : ℤ) = A228137 (n + 1)

end A228137

/-! ## A228137.P18067903277029132726

`ogf((1+3x+8x^2)/(1-x-x^2+x^3))`
-/

namespace A228137.P18067903277029132726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 8] [1, -1, -1, 1] n

end

end A228137.P18067903277029132726

namespace A228137

/-- `ogf((1+3x+8x^2)/(1-x-x^2+x^3))` -/
def P18067903277029132726.Spec : Prop :=
  ∀ n, P18067903277029132726.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P10303691120172602845

`∑[3^((n-1)%2+1)]`
-/

namespace A228137.P10303691120172602845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228137.P10303691120172602845

namespace A228137

/-- `∑[3^((n-1)%2+1)]` -/
def P10303691120172602845.Spec : Prop :=
  ∀ n, P10303691120172602845.a n = (A228137 (n + 1) : ℚ)

end A228137

/-! ## A228137.P6751159488774779355

`∑[3^(1-(1-n)%2)]`
-/

namespace A228137.P6751159488774779355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (1 - Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228137.P6751159488774779355

namespace A228137

/-- `∑[3^(1-(1-n)%2)]` -/
def P6751159488774779355.Spec : Prop :=
  ∀ n, P6751159488774779355.a n = (A228137 (n + 1) : ℚ)

end A228137

/-! ## A228137.P18117744135384238005

`record[3*and(n, n+2)+1]`
-/

namespace A228137.P18117744135384238005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.land n (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228137.P18117744135384238005

namespace A228137

/-- `record[3*and(n, n+2)+1]` -/
def P18117744135384238005.Spec : Prop :=
  ∀ n, (P18117744135384238005.a n : ℤ) = A228137 (n + 1)

end A228137

/-! ## A228137.P6698394442346732981

`3*(2*n-n%2)+1`
-/

namespace A228137.P6698394442346732981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ)) + 1

end

end A228137.P6698394442346732981

namespace A228137

/-- `3*(2*n-n%2)+1` -/
def P6698394442346732981.Spec : Prop :=
  ∀ n, P6698394442346732981.a n = A228137 (n + 1)

end A228137

/-! ## A228137.P295850152688517531

`3*(2*n-and(1, n))+1`
-/

namespace A228137.P295850152688517531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 * n : ℤ) - (Nat.land 1 n : ℤ)) + 1

end

end A228137.P295850152688517531

namespace A228137

/-- `3*(2*n-and(1, n))+1` -/
def P295850152688517531.Spec : Prop :=
  ∀ n, P295850152688517531.a n = A228137 (n + 1)

end A228137

/-!
# A228138: Number of blocks in a Steiner system S(2, 4, A228137(n+1)).

The programs for A228138, the canonical program `A228138.P16199367071746169246` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228138 has offset 1).

The definition of A228138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228138.P16199367071746169246

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=4, a(1)=13, a(2)=20, a(3)=50, a(4)=63, a(5)=111`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228138

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P16199367071746169246.Spec : Prop :=
  ∀ n, P16199367071746169246.a n = A228138 (n + 1)

theorem P16199367071746169246.correct : P16199367071746169246.Spec := by
  intro n
  simp only [A228138, Nat.add_sub_cancel]

end A228138

/-! ## A228138.P1052032735043986313

`A184533(n+1)+A005449(A131055(n+1))`
-/

namespace A228138.P1052032735043986313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184533 (n + 1) + A005449 (A131055 (n + 1)).toNat

end

end A228138.P1052032735043986313

namespace A228138

/-- `A184533(n+1)+A005449(A131055(n+1))` -/
def P1052032735043986313.Spec : Prop :=
  ∀ n, P1052032735043986313.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P14253451797450718764

`A184533(n+1)+A005449(Δ[A333574(n+1)])`
-/

namespace A228138.P14253451797450718764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184533 (n + 1) + A005449 (f1 (n + 1) - f1 n).toNat

end

end A228138.P14253451797450718764

namespace A228138

/-- `A184533(n+1)+A005449(Δ[A333574(n+1)])` -/
def P14253451797450718764.Spec : Prop :=
  ∀ n, P14253451797450718764.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P13801479295335517851

`A005449(A131055(n+1))+n²+A265284(n)+1`
-/

namespace A228138.P13801479295335517851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A131055 (n + 1)).toNat + ((n ^ 2 : ℤ) + (A265284 n + 1))

end

end A228138.P13801479295335517851

namespace A228138

/-- `A005449(A131055(n+1))+n²+A265284(n)+1` -/
def P13801479295335517851.Spec : Prop :=
  ∀ n, P13801479295335517851.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P883506554617091371

`A005449(A131055(n+1))+A080476(n+1)+(n+1)²`
-/

namespace A228138.P883506554617091371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A131055 (n + 1)).toNat + (A080476 (n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A228138.P883506554617091371

namespace A228138

/-- `A005449(A131055(n+1))+A080476(n+1)+(n+1)²` -/
def P883506554617091371.Spec : Prop :=
  ∀ n, P883506554617091371.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P4036722633708514169

`A005449(A131055(n+1))+A265284(n)+A002522(n)`
-/

namespace A228138.P4036722633708514169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A131055 (n + 1)).toNat + (A265284 n + A002522 n)

end

end A228138.P4036722633708514169

namespace A228138

/-- `A005449(A131055(n+1))+A265284(n)+A002522(n)` -/
def P4036722633708514169.Spec : Prop :=
  ∀ n, P4036722633708514169.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P9364966621269927498

`A005449(A131055(n+1))+A266221(n)+A245524(n+1)`
-/

namespace A228138.P9364966621269927498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A131055 (n + 1)).toNat + (A266221 n + A245524 (n + 1))

end

end A228138.P9364966621269927498

namespace A228138

/-- `A005449(A131055(n+1))+A266221(n)+A245524(n+1)` -/
def P9364966621269927498.Spec : Prop :=
  ∀ n, P9364966621269927498.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P16810312148491272397

`∑[A008486(n)+A008486(A266220(n))]`
-/

namespace A228138.P16810312148491272397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A008486 (A266220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228138.P16810312148491272397

namespace A228138

/-- `∑[A008486(n)+A008486(A266220(n))]` -/
def P16810312148491272397.Spec : Prop :=
  ∀ n, P16810312148491272397.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P5557839005430907024

`A266221(A131055(n+1)+n)+A245524(n+1)`
-/

namespace A228138.P5557839005430907024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266221 (A131055 (n + 1) + (n : ℤ)).toNat + A245524 (n + 1)

end

end A228138.P5557839005430907024

namespace A228138

/-- `A266221(A131055(n+1)+n)+A245524(n+1)` -/
def P5557839005430907024.Spec : Prop :=
  ∀ n, P5557839005430907024.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P6567047660668477367

`record[A254667(n+1)+A014682(A000124(n+2))]`
-/

namespace A228138.P6567047660668477367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (n + 1) + A014682 (A000124 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228138.P6567047660668477367

namespace A228138

/-- `record[A254667(n+1)+A014682(A000124(n+2))]` -/
def P6567047660668477367.Spec : Prop :=
  ∀ n, P6567047660668477367.a n = A228138 (n + 1)

end A228138

/-! ## A228138.P12342903203056768437

`record[A319701(A268581(n)-A134869(n+1))]`
-/

namespace A228138.P12342903203056768437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (A268581 n - A134869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228138.P12342903203056768437

namespace A228138

/-- `record[A319701(A268581(n)-A134869(n+1))]` -/
def P12342903203056768437.Spec : Prop :=
  ∀ n, P12342903203056768437.a n = A228138 (n + 1)

end A228138

/-!
# A228139: Primes such that the product of their digits subtracted from the prime number is another prime.

The programs for A228139, the canonical program `A228139.P2229959096761443829` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228139 has offset 1).

The definition of A228139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228139.P2229959096761443829

`∩[A038618(n+1), A229221(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228139

/-- `∩[A038618(n+1), A229221(n+1)]` -/
def P2229959096761443829.Spec : Prop :=
  ∀ n, (P2229959096761443829.a n : ℤ) = A228139 (n + 1)

theorem P2229959096761443829.correct : P2229959096761443829.Spec := by
  intro n
  simp only [A228139, Nat.add_sub_cancel]

end A228139

/-! ## A228139.P1622632551936032979

`∩[p?[A125290(n+1)], A229221(n+1)]`
-/

namespace A228139.P1622632551936032979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A228139.P1622632551936032979

namespace A228139

/-- `∩[p?[A125290(n+1)], A229221(n+1)]` -/
def P1622632551936032979.Spec : Prop :=
  ∀ n, (P1622632551936032979.a n : ℤ) = A228139 (n + 1)

end A228139

/-! ## A228139.P1748649143989651370

`record[A004719(p?[A229221(n+1)])]`
-/

namespace A228139.P1748649143989651370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228139.P1748649143989651370

namespace A228139

/-- `record[A004719(p?[A229221(n+1)])]` -/
def P1748649143989651370.Spec : Prop :=
  ∀ n, P1748649143989651370.a n = A228139 (n + 1)

end A228139

/-! ## A228139.P797437075401628527

`record[A004719(A225319(n+1))]`
-/

namespace A228139.P797437075401628527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A225319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228139.P797437075401628527

namespace A228139

/-- `record[A004719(A225319(n+1))]` -/
def P797437075401628527.Spec : Prop :=
  ∀ n, P797437075401628527.a n = A228139 (n + 1)

end A228139

/-! ## A228139.P4628100357365338234

`filter[A225319(n+1), A168046(#)]`
-/

namespace A228139.P4628100357365338234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A228139.P4628100357365338234

namespace A228139

/-- `filter[A225319(n+1), A168046(#)]` -/
def P4628100357365338234.Spec : Prop :=
  ∀ n, P4628100357365338234.a n = A228139 (n + 1)

end A228139

/-!
# A228140: Numbers n such that n^2 - 2 is not squarefree.

The programs for A228140, there is no canonical definition to state claims against.
-/

/-! ## A228140.P4296025802988104498

`eq[0, A008683(abs(2-n²))]`
-/

namespace A228140.P4296025802988104498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |2 - (n ^ 2 : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228140.P4296025802988104498

/-! ## A228140.P11665491557197089429

`lt[A008966(abs(2-n²)), 1]`
-/

namespace A228140.P11665491557197089429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 |2 - (n ^ 2 : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228140.P11665491557197089429

/-! ## A228140.P18193021901615030247

`eq[0, A008683((n+2)²-2)]+2`
-/

namespace A228140.P18193021901615030247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 2) ^ 2 - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A228140.P18193021901615030247

/-! ## A228140.P12528214059519454748

`lt[A008683(abs(4-n²)+2)², 1]`
-/

namespace A228140.P12528214059519454748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (|4 - (n ^ 2 : ℤ)| + 2).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228140.P12528214059519454748

/-! ## A228140.P13669969804046860688

`lt[A008683(n*(n+3)+n+2)², 1]+2`
-/

namespace A228140.P13669969804046860688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n * (n + 3) + (n + 2)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A228140.P13669969804046860688

/-!
# A228141: Numbers that are congruent to {1, 5} mod 20.

The programs for A228141, the canonical program `A228141.P1067301133373405374` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228141 has offset 1).

The definition of A228141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228141.P1067301133373405374

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=21`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228141

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1067301133373405374.Spec : Prop :=
  ∀ n, P1067301133373405374.a n = A228141 (n + 1)

theorem P1067301133373405374.correct : P1067301133373405374.Spec := by
  intro n
  simp only [A228141, Nat.add_sub_cancel]

end A228141

/-! ## A228141.P4257194212867140469

`a(n-2)+20` with `a(0)=1, a(1)=5`
-/

namespace A228141.P4257194212867140469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 20

end

end A228141.P4257194212867140469

namespace A228141

/-- `a(n-2)+20` -/
def P4257194212867140469.Spec : Prop :=
  ∀ n, (P4257194212867140469.a n : ℤ) = A228141 (n + 1)

end A228141

/-! ## A228141.P17835439678386147564

`or(1, 5*comp[or(2, n)])`
-/

namespace A228141.P17835439678386147564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A228141.P17835439678386147564

namespace A228141

/-- `or(1, 5*comp[or(2, n)])` -/
def P17835439678386147564.Spec : Prop :=
  ∀ n, (P17835439678386147564.a n : ℤ) = A228141 (n + 1)

end A228141

/-! ## A228141.P1721142442588593296

`∑[20-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A228141.P1721142442588593296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  20 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P1721142442588593296

namespace A228141

/-- `∑[20-a(n-1)]` -/
def P1721142442588593296.Spec : Prop :=
  ∀ n, P1721142442588593296.a n = A228141 (n + 1)

end A228141

/-! ## A228141.P10333489698155780044

`∑[4*a(∑[(-1)^n])]` with `a(0)=1`
-/

namespace A228141.P10333489698155780044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P10333489698155780044

namespace A228141

/-- `∑[4*a(∑[(-1)^n])]` -/
def P10333489698155780044.Spec : Prop :=
  ∀ n, (P10333489698155780044.a n : ℤ) = A228141 (n + 1)

end A228141

/-! ## A228141.P547144977895442411

`∑[4^((n-1)%2+1)]`
-/

namespace A228141.P547144977895442411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P547144977895442411

namespace A228141

/-- `∑[4^((n-1)%2+1)]` -/
def P547144977895442411.Spec : Prop :=
  ∀ n, P547144977895442411.a n = (A228141 (n + 1) : ℚ)

end A228141

/-! ## A228141.P13901656267974308593

`∑[4^(1-(1-n)%2)]`
-/

namespace A228141.P13901656267974308593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (1 - Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P13901656267974308593

namespace A228141

/-- `∑[4^(1-(1-n)%2)]` -/
def P13901656267974308593.Spec : Prop :=
  ∀ n, P13901656267974308593.a n = (A228141 (n + 1) : ℚ)

end A228141

/-! ## A228141.P12120209388803216651

`∑[4^gcd(n, 2%(n+1))]`
-/

namespace A228141.P12120209388803216651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.gcd n (2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P12120209388803216651

namespace A228141

/-- `∑[4^gcd(n, 2%(n+1))]` -/
def P12120209388803216651.Spec : Prop :=
  ∀ n, (P12120209388803216651.a n : ℤ) = A228141 (n + 1)

end A228141

/-! ## A228141.P6007819285391105375

`∑[a(∑[(-1)^n])²]+3` with `a(0)=-2`
-/

namespace A228141.P6007819285391105375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A228141.P6007819285391105375

namespace A228141

/-- `∑[a(∑[(-1)^n])²]+3` -/
def P6007819285391105375.Spec : Prop :=
  ∀ n, P6007819285391105375.a n = A228141 (n + 1)

end A228141

/-! ## A228141.P9315239664845619350

`∑[gcd(2*n, 4%(n+3))²]`
-/

namespace A228141.P9315239664845619350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (4 % (n + 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P9315239664845619350

namespace A228141

/-- `∑[gcd(2*n, 4%(n+3))²]` -/
def P9315239664845619350.Spec : Prop :=
  ∀ n, (P9315239664845619350.a n : ℤ) = A228141 (n + 1)

end A228141

/-! ## A228141.P7095524369146172706

`∑[∑[ogf((6+4x+10x^2)/(1+x))]]-5`
-/

namespace A228141.P7095524369146172706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 4, 10] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A228141.P7095524369146172706

namespace A228141

/-- `∑[∑[ogf((6+4x+10x^2)/(1+x))]]-5` -/
def P7095524369146172706.Spec : Prop :=
  ∀ n, P7095524369146172706.a n = A228141 (n + 1)

end A228141

/-! ## A228141.P6846053721263208922

`4*∑[∑[ogf((x+4x^2)/(1+x))]]+1`
-/

namespace A228141.P6846053721263208922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A228141.P6846053721263208922

namespace A228141

/-- `4*∑[∑[ogf((x+4x^2)/(1+x))]]+1` -/
def P6846053721263208922.Spec : Prop :=
  ∀ n, P6846053721263208922.a n = A228141 (n + 1)

end A228141

/-! ## A228141.P10403355572908571919

`∑[4^A134451(n)]`
-/

namespace A228141.P10403355572908571919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A134451 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P10403355572908571919

namespace A228141

/-- `∑[4^A134451(n)]` -/
def P10403355572908571919.Spec : Prop :=
  ∀ n, P10403355572908571919.a n = (A228141 (n + 1) : ℚ)

end A228141

/-! ## A228141.P11573001544259790646

`∑[(2-A168428(n))²]`
-/

namespace A228141.P11573001544259790646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A168428 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P11573001544259790646

namespace A228141

/-- `∑[(2-A168428(n))²]` -/
def P11573001544259790646.Spec : Prop :=
  ∀ n, P11573001544259790646.a n = A228141 (n + 1)

end A228141

/-! ## A228141.P14580613625320873034

`∑[A040003(n)²]-3`
-/

namespace A228141.P14580613625320873034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A228141.P14580613625320873034

namespace A228141

/-- `∑[A040003(n)²]-3` -/
def P14580613625320873034.Spec : Prop :=
  ∀ n, P14580613625320873034.a n = A228141 (n + 1)

end A228141

/-! ## A228141.P3978023731894281075

`∑[dr(2-A040137(n))²]`
-/

namespace A228141.P3978023731894281075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - A040137 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228141.P3978023731894281075

namespace A228141

/-- `∑[dr(2-A040137(n))²]` -/
def P3978023731894281075.Spec : Prop :=
  ∀ n, (P3978023731894281075.a n : ℤ) = A228141 (n + 1)

end A228141

/-! ## A228141.P14577128466702017794

`4*A008851(n+1)+1`
-/

namespace A228141.P14577128466702017794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008851 (n + 1) + 1

end

end A228141.P14577128466702017794

namespace A228141

/-- `4*A008851(n+1)+1` -/
def P14577128466702017794.Spec : Prop :=
  ∀ n, P14577128466702017794.a n = A228141 (n + 1)

end A228141

/-! ## A228141.P36084131664619753

`4*A047216(n+1)-3`
-/

namespace A228141.P36084131664619753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047216 (n + 1) - 3

end

end A228141.P36084131664619753

namespace A228141

/-- `4*A047216(n+1)-3` -/
def P36084131664619753.Spec : Prop :=
  ∀ n, P36084131664619753.a n = A228141 (n + 1)

end A228141

/-! ## A228141.P10708440355157580730

`3*A047225(n+1)+n+1`
-/

namespace A228141.P10708440355157580730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047225 (n + 1) + (n + 1 : ℤ)

end

end A228141.P10708440355157580730

namespace A228141

/-- `3*A047225(n+1)+n+1` -/
def P10708440355157580730.Spec : Prop :=
  ∀ n, P10708440355157580730.a n = A228141 (n + 1)

end A228141

/-!
# A228142: Number of blocks in a Steiner system S(2, 5, A228141(n+1)).

The programs for A228142, the canonical program `A228142.P5946189835722604226` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228142 has offset 1).

The definition of A228142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228142.P5946189835722604226

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=21, a(2)=30, a(3)=82, a(4)=99`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228142

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5946189835722604226.Spec : Prop :=
  ∀ n, P5946189835722604226.a n = A228142 (n + 1)

theorem P5946189835722604226.correct : P5946189835722604226.Spec := by
  intro n
  simp only [A228142, Nat.add_sub_cancel]

end A228142

/-! ## A228142.P502500226162890221

`∑[(2*n+2*n+1)*gcd(2, n+1)²]`
-/

namespace A228142.P502500226162890221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (2 * n + 1)) * Nat.gcd 2 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228142.P502500226162890221

namespace A228142

/-- `∑[(2*n+2*n+1)*gcd(2, n+1)²]` -/
def P502500226162890221.Spec : Prop :=
  ∀ n, (P502500226162890221.a n : ℤ) = A228142 (n + 1)

end A228142

/-! ## A228142.P5518033792287301887

`∑[gcd(2, n+1)²*A016813(n)]`
-/

namespace A228142.P5518033792287301887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) ^ 2 : ℤ) * A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228142.P5518033792287301887

namespace A228142

/-- `∑[gcd(2, n+1)²*A016813(n)]` -/
def P5518033792287301887.Spec : Prop :=
  ∀ n, P5518033792287301887.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P4964340722200718349

`∑[A010685(n)*A016813(n)]`
-/

namespace A228142.P4964340722200718349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228142.P4964340722200718349

namespace A228142

/-- `∑[A010685(n)*A016813(n)]` -/
def P4964340722200718349.Spec : Prop :=
  ∀ n, P4964340722200718349.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P17960746258491562782

`(A047208(n+1)+1)²-A219190(n+1)`
-/

namespace A228142.P17960746258491562782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047208 (n + 1) + 1) ^ 2 - A219190 (n + 1)

end

end A228142.P17960746258491562782

namespace A228142

/-- `(A047208(n+1)+1)²-A219190(n+1)` -/
def P17960746258491562782.Spec : Prop :=
  ∀ n, P17960746258491562782.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P11707478527003129703

`A008851(n+2)+2*A132356(n)`
-/

namespace A228142.P11707478527003129703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 2) + 2 * A132356 n

end

end A228142.P11707478527003129703

namespace A228142

/-- `A008851(n+2)+2*A132356(n)` -/
def P11707478527003129703.Spec : Prop :=
  ∀ n, P11707478527003129703.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P16227498450906095780

`A008851(n+2)*A008851(n+2)-A219190(n+1)`
-/

namespace A228142.P16227498450906095780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 2) * A008851 (n + 2) - A219190 (n + 1)

end

end A228142.P16227498450906095780

namespace A228142

/-- `A008851(n+2)*A008851(n+2)-A219190(n+1)` -/
def P16227498450906095780.Spec : Prop :=
  ∀ n, P16227498450906095780.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P14938215390945269506

`A000326(A042948(n+1))-∑[A042948(n)]`
-/

namespace A228142.P14938215390945269506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A042948 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228142.P14938215390945269506

namespace A228142

/-- `A000326(A042948(n+1))-∑[A042948(n)]` -/
def P14938215390945269506.Spec : Prop :=
  ∀ n, P14938215390945269506.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P15265477309014341502

`A001318(A047522(n+1))-A011848(2*n+1)`
-/

namespace A228142.P15265477309014341502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A047522 (n + 1)).toNat - A011848 (2 * n + 1)

end

end A228142.P15265477309014341502

namespace A228142

/-- `A001318(A047522(n+1))-A011848(2*n+1)` -/
def P15265477309014341502.Spec : Prop :=
  ∀ n, P15265477309014341502.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P17377592245567845208

`A001057(A090771(n+1))²-A219190(n+1)`
-/

namespace A228142.P17377592245567845208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A090771 (n + 1)).toNat ^ 2 - A219190 (n + 1)

end

end A228142.P17377592245567845208

namespace A228142

/-- `A001057(A090771(n+1))²-A219190(n+1)` -/
def P17377592245567845208.Spec : Prop :=
  ∀ n, P17377592245567845208.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P12483402628622956664

`∑[A266491(A042963(A266491(2*n+1)))]`
-/

namespace A228142.P12483402628622956664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A042963 (A266491 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228142.P12483402628622956664

namespace A228142

/-- `∑[A266491(A042963(A266491(2*n+1)))]` -/
def P12483402628622956664.Spec : Prop :=
  ∀ n, P12483402628622956664.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P2649164436479177312

`∑[A266491(A266491(2*n+1)+A266491(2*n))]`
-/

namespace A228142.P2649164436479177312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A266491 (2 * n + 1) + A266491 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228142.P2649164436479177312

namespace A228142

/-- `∑[A266491(A266491(2*n+1)+A266491(2*n))]` -/
def P2649164436479177312.Spec : Prop :=
  ∀ n, P2649164436479177312.a n = A228142 (n + 1)

end A228142

/-! ## A228142.P2765944178870751436

`A011873(A228141(n+2))`
-/

namespace A228142.P2765944178870751436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011873 (A228141 (n + 2)).toNat

end

end A228142.P2765944178870751436

namespace A228142

/-- `A011873(A228141(n+2))` -/
def P2765944178870751436.Spec : Prop :=
  ∀ n, P2765944178870751436.a n = A228142 (n + 1)

end A228142

/-!
# A228144: Smallest k > n such that j*10^k + m*10^n - 1 is a prime number for at least a pair {j,m} with 0 < j < 10 and 0 < m < 10.

The programs for A228144, there is no canonical definition to state claims against.
-/

/-! ## A228144.P9009849629879155759

`A323022(A121980(n+1)+n+1)+1+n`
-/

namespace A228144.P9009849629879155759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A121980 (n + 1) + (n : ℤ) + 1).toNat + 1 + (n : ℤ)

end

end A228144.P9009849629879155759

/-! ## A228144.P16442850869296623896

`n+2+A025466(A255294(n))`
-/

namespace A228144.P16442850869296623896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A025466 (A255294 n).toNat

end

end A228144.P16442850869296623896

/-! ## A228144.P13086213016354735620

`A288120(A207190(n+1))+1+n`
-/

namespace A228144.P13086213016354735620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 (A207190 (n + 1)).toNat + 1 + (n : ℤ)

end

end A228144.P13086213016354735620

/-! ## A228144.P16305692041554012957

`A107846(A324104(n+1))+2+n`
-/

namespace A228144.P16305692041554012957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A324104 (n + 1)).toNat + 2 + (n : ℤ)

end

end A228144.P16305692041554012957

/-! ## A228144.P1857027682396385937

`p?[A144790(A090191(n+1)+1)]+n`
-/

namespace A228144.P1857027682396385937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (A090191 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)

end

end A228144.P1857027682396385937

/-! ## A228144.P4891164023032187796

`floor(A332929(n)/A332925(n+1))²+n+2`
-/

namespace A228144.P4891164023032187796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332929 n : ℚ) / (A332925 (n + 1) : ℚ)⌋ ^ 2 + (n : ℤ) + 2

end

end A228144.P4891164023032187796

/-! ## A228144.P17126770720972490139

`ceil(sqrt(A095684(2*n+3)+1))+n`
-/

namespace A228144.P17126770720972490139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A095684 (2 * n + 3) + 1 : ℝ)⌉ + (n : ℤ)

end

end A228144.P17126770720972490139

/-! ## A228144.P16900158662433064156

`gcd(A006466(n+1), A006466(A299287(n)))+n+1`
-/

namespace A228144.P16900158662433064156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006466 (n + 1)) (A006466 (A299287 n).toNat) + (n + 1)

end

end A228144.P16900158662433064156

/-! ## A228144.P7466067787280182313

`A185709(A254763(n+1))+2+n`
-/

namespace A228144.P7466067787280182313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185709 (A254763 (n + 1)).toNat + 2 + (n : ℤ)

end

end A228144.P7466067787280182313

/-! ## A228144.P16545649286384454529

`A295884(A334185(n+1))+2+n`
-/

namespace A228144.P16545649286384454529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A334185 (n + 1)).toNat + 2 + (n : ℤ)

end

end A228144.P16545649286384454529

/-!
# A228148: a(n) is the smallest n-digit prime which remains prime whenever a 1 is inserted, appended or prepended, or 0 if no such prime exists.

The programs for A228148, there is no canonical definition to state claims against.
-/

/-! ## A228148.P5819671812416217842

`A290838(A290813(n)+1)`
-/

namespace A228148.P5819671812416217842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290838 (A290813 n + 1).toNat

end

end A228148.P5819671812416217842

/-!
# A228149: a(n) is the smallest n-digit prime which remains prime whenever a 7 is inserted, appended or prepended, or 0 if no such prime exists.

The programs for A228149, there is no canonical definition to state claims against.
-/

/-! ## A228149.P10554033934082195549

`A215420(A193822(n)+A000225(n))`
-/

namespace A228149.P10554033934082195549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215420 (A193822 n + A000225 n).toNat

end

end A228149.P10554033934082195549

/-!
# A228150: a(n) is the smallest n-digit prime which remains prime whenever a 9 is inserted, appended or prepended, or 0 if no such prime exists.

The programs for A228150, there is no canonical definition to state claims against.
-/

/-! ## A228150.P14839790651567424163

`p?[A069833(A048495(n))]`
-/

namespace A228150.P14839790651567424163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069833 (A048495 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228150.P14839790651567424163

/-!
# A228151: Denominators of r(n) = r(n-1) + r(n-2) + B_(n-2), where B_n is the n-th Bernoulli number A027641(n)/A027642(n).

The programs for A228151, there is no canonical definition to state claims against.
-/

/-! ## A228151.P17392458245822868743

`∏{p}[n!, lcm(n, #)/n]`
-/

namespace A228151.P17392458245822868743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm n p : ℚ) / (n : ℚ)

end

end A228151.P17392458245822868743

/-! ## A228151.P4979669500874111171

`∏{p}[n!, #/gcd(n, #)]`
-/

namespace A228151.P4979669500874111171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (Nat.gcd n p : ℚ)

end

end A228151.P4979669500874111171

/-! ## A228151.P11682765581023562381

`∏{p}[n!, #]/∏{p}[n, #]`
-/

namespace A228151.P11682765581023562381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A228151.P11682765581023562381

/-! ## A228151.P18274500448807075520

`∏{p}[A000142(n), #]/∏{p}[n, #]`
-/

namespace A228151.P18274500448807075520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A228151.P18274500448807075520

/-! ## A228151.P15712014988975099117

`A066838(A246617(n)+n)`
-/

namespace A228151.P15712014988975099117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A246617 n + (n : ℤ)).toNat

end

end A228151.P15712014988975099117

/-!
# A228152: Triangle read by rows: T(n,k) = maximal external path length of AVL trees of height n with k (leaf-) nodes, n>=0, fibonacci(n+2)<=k<=2^n.

The programs for A228152, there is no canonical definition to state claims against.
-/

/-! ## A228152.P2153642844993835576

`A228153(lt[A005577(3*(n+1)), A000252(n+1)])`
-/

namespace A228152.P2153642844993835576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005577 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228152.P2153642844993835576

/-! ## A228152.P7167895214406506497

`A228153(A347457(A043320(n+1)))`
-/

namespace A228152.P7167895214406506497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228153 (A347457 (A043320 (n + 1)).toNat).toNat

end

end A228152.P7167895214406506497

/-! ## A228152.P9544801712193594345

`A228153(A187829(n+1)+A025442(n))`
-/

namespace A228152.P9544801712193594345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228153 (A187829 (n + 1) + A025442 n).toNat

end

end A228152.P9544801712193594345

/-! ## A228152.P10517004090392425710

`A228153(A296756(n+1)^A008835(n+1))`
-/

namespace A228152.P10517004090392425710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228153 (SequenceMachineLib.roundAway ((A296756 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A228152.P10517004090392425710

/-! ## A228152.P4389367048624575370

`A228153(C(A296756(n+1), A008835(n+1)))`
-/

namespace A228152.P4389367048624575370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228153 (Nat.choose (A296756 (n + 1)).toNat (A008835 (n + 1)).toNat)

end

end A228152.P4389367048624575370

/-!
# A228154: T(n,k) is the number of s in {1,...,n}^n having longest contiguous subsequence with the same value of length k; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A228154, there is no canonical definition to state claims against.
-/

/-! ## A228154.P177695817634486437

`A190295(A024646(n+1))`
-/

namespace A228154.P177695817634486437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190295 (A024646 (n + 1)).toNat

end

end A228154.P177695817634486437

/-! ## A228154.P9048700932416840565

`A190295(A024647(n+1))`
-/

namespace A228154.P9048700932416840565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190295 (A024647 (n + 1)).toNat

end

end A228154.P9048700932416840565

/-! ## A228154.P3164692881233412989

`A190295(A024648(n+1))`
-/

namespace A228154.P3164692881233412989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190295 (A024648 (n + 1)).toNat

end

end A228154.P3164692881233412989

/-!
# A228155: Maximal external path length of AVL trees with n (leaf-) nodes.

The programs for A228155, there is no canonical definition to state claims against.
-/

/-! ## A228155.P6062218657471373426

`∑[A000523(A332073(A314964(n)))]`
-/

namespace A228155.P6062218657471373426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A332073 (A314964 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228155.P6062218657471373426

/-! ## A228155.P12597476805889315479

`A256966(n+1)-A277818(A145115(n))`
-/

namespace A228155.P12597476805889315479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256966 (n + 1) - A277818 (A145115 n).toNat

end

end A228155.P12597476805889315479

/-! ## A228155.P3869942870084244428

`∑[A108852(n)-A007895(A187829(n+1))]`
-/

namespace A228155.P3869942870084244428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 n - A007895 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228155.P3869942870084244428

/-! ## A228155.P6586259074072571919

`A392517(n+1)-A000122(A074257(n+1))`
-/

namespace A228155.P6586259074072571919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392517 (n + 1) - A000122 (A074257 (n + 1)).toNat

end

end A228155.P6586259074072571919

/-! ## A228155.P3558368828983364003

`A256966(n+1)-A327483(A002949(2*n+1))`
-/

namespace A228155.P3558368828983364003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256966 (n + 1) - A327483 (A002949 (2 * n + 1)).toNat

end

end A228155.P3558368828983364003

/-!
# A228157: Numbers k which are anagrams of k+9.

The programs for A228157, the canonical program `A228157.P599935649191545123` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228157 has offset 1).

The definition of A228157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228157.P599935649191545123

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=12, a(1)=23, a(2)=34, a(3)=45, a(4)=56, a(5)=67, a(6)=78, a(7)=89, a(8)=101, a(9)=112`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228157

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P599935649191545123.Spec : Prop :=
  ∀ n, P599935649191545123.a n = A228157 (n + 1)

theorem P599935649191545123.correct : P599935649191545123.Spec := by
  intro n
  simp only [A228157, Nat.add_sub_cancel]

end A228157

/-! ## A228157.P5391347572507984595

`A067251(n+2)+A008592(n+1)`
-/

namespace A228157.P5391347572507984595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 2) + A008592 (n + 1)

end

end A228157.P5391347572507984595

namespace A228157

/-- `A067251(n+2)+A008592(n+1)` -/
def P5391347572507984595.Spec : Prop :=
  ∀ n, P5391347572507984595.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P10278012252331488355

`A168461(n+1)+A168461(n+2)+A067251(n+2)`
-/

namespace A228157.P10278012252331488355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168461 (n + 1) + (A168461 (n + 2) + A067251 (n + 2))

end

end A228157.P10278012252331488355

namespace A228157

/-- `A168461(n+1)+A168461(n+2)+A067251(n+2)` -/
def P10278012252331488355.Spec : Prop :=
  ∀ n, P10278012252331488355.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P14874641448520398190

`A370532(n+3)+A067251(n+2)`
-/

namespace A228157.P14874641448520398190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 3) + A067251 (n + 2)

end

end A228157.P14874641448520398190

namespace A228157

/-- `A370532(n+3)+A067251(n+2)` -/
def P14874641448520398190.Spec : Prop :=
  ∀ n, P14874641448520398190.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P16114701963471631234

`A168461(2*(n+1))+A067251(n+2)`
-/

namespace A228157.P16114701963471631234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168461 (2 * (n + 1)) + A067251 (n + 2)

end

end A228157.P16114701963471631234

namespace A228157

/-- `A168461(2*(n+1))+A067251(n+2)` -/
def P16114701963471631234.Spec : Prop :=
  ∀ n, P16114701963471631234.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P10321858978935146405

`A173237(2*(n+1))+A067251(n+2)`
-/

namespace A228157.P10321858978935146405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173237 (2 * (n + 1)) + A067251 (n + 2)

end

end A228157.P10321858978935146405

namespace A228157

/-- `A173237(2*(n+1))+A067251(n+2)` -/
def P10321858978935146405.Spec : Prop :=
  ∀ n, P10321858978935146405.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P6308463592411645763

`A067251(A017281(n+1))`
-/

namespace A228157.P6308463592411645763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A017281 (n + 1)).toNat

end

end A228157.P6308463592411645763

namespace A228157

/-- `A067251(A017281(n+1))` -/
def P6308463592411645763.Spec : Prop :=
  ∀ n, P6308463592411645763.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P1929447164818369203

`A241157(A017293(n+1))`
-/

namespace A228157.P1929447164818369203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241157 (A017293 (n + 1)).toNat

end

end A228157.P1929447164818369203

namespace A228157

/-- `A241157(A017293(n+1))` -/
def P1929447164818369203.Spec : Prop :=
  ∀ n, P1929447164818369203.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P14641290944367081033

`A067251(A008592(n+1)+1)`
-/

namespace A228157.P14641290944367081033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A008592 (n + 1) + 1).toNat

end

end A228157.P14641290944367081033

namespace A228157

/-- `A067251(A008592(n+1)+1)` -/
def P14641290944367081033.Spec : Prop :=
  ∀ n, P14641290944367081033.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P2681190145194524197

`A067251(A017293(n+1)-1)`
-/

namespace A228157.P2681190145194524197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A017293 (n + 1) - 1).toNat

end

end A228157.P2681190145194524197

namespace A228157

/-- `A067251(A017293(n+1)-1)` -/
def P2681190145194524197.Spec : Prop :=
  ∀ n, P2681190145194524197.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P10045345996352136910

`A342851(A008592(n+1)+2)`
-/

namespace A228157.P10045345996352136910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (A008592 (n + 1) + 2).toNat

end

end A228157.P10045345996352136910

namespace A228157

/-- `A342851(A008592(n+1)+2)` -/
def P10045345996352136910.Spec : Prop :=
  ∀ n, P10045345996352136910.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P11004134082506103117

`A067251(A017305(n+1)-2)`
-/

namespace A228157.P11004134082506103117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A017305 (n + 1) - 2).toNat

end

end A228157.P11004134082506103117

namespace A228157

/-- `A067251(A017305(n+1)-2)` -/
def P11004134082506103117.Spec : Prop :=
  ∀ n, P11004134082506103117.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P995509156046736347

`A067251(A168461(2*(n+1))+1)`
-/

namespace A228157.P995509156046736347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A168461 (2 * (n + 1)) + 1).toNat

end

end A228157.P995509156046736347

namespace A228157

/-- `A067251(A168461(2*(n+1))+1)` -/
def P995509156046736347.Spec : Prop :=
  ∀ n, P995509156046736347.a n = A228157 (n + 1)

end A228157

/-! ## A228157.P8735179182766175426

`A067251(A173237(2*(n+1))+1)`
-/

namespace A228157.P8735179182766175426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A173237 (2 * (n + 1)) + 1).toNat

end

end A228157.P8735179182766175426

namespace A228157

/-- `A067251(A173237(2*(n+1))+1)` -/
def P8735179182766175426.Spec : Prop :=
  ∀ n, P8735179182766175426.a n = A228157 (n + 1)

end A228157

/-!
# A228158: Numbers n such that the cardinality of (natural numbers <=n with a first digit of 1) = n/2.

The programs for A228158, the canonical program `A228158.P17878900358789664223` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228158 has offset 1).

The definition of A228158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228158.P17878900358789664223

`∑[10*a(n-2)]-a(n-1)` with `a(0)=2, a(1)=16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228158

/-- `∑[10*a(n-2)]-a(n-1)` -/
def P17878900358789664223.Spec : Prop :=
  ∀ n, P17878900358789664223.a n = A228158 (n + 1)

theorem P17878900358789664223.correct : P17878900358789664223.Spec := by
  intro n
  simp only [A228158, Nat.add_sub_cancel]

end A228158

/-! ## A228158.P280851969225886818

`A152966(A056020(n+1))`
-/

namespace A228158.P280851969225886818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152966 (A056020 (n + 1)).toNat

end

end A228158.P280851969225886818

namespace A228158

/-- `A152966(A056020(n+1))` -/
def P280851969225886818.Spec : Prop :=
  ∀ n, P280851969225886818.a n = A228158 (n + 1)

end A228158

/-! ## A228158.P6537333512336700223

`A040063(n+1)*A289404(n)`
-/

namespace A228158.P6537333512336700223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 (n + 1) * A289404 n

end

end A228158.P6537333512336700223

namespace A228158

/-- `A040063(n+1)*A289404(n)` -/
def P6537333512336700223.Spec : Prop :=
  ∀ n, P6537333512336700223.a n = A228158 (n + 1)

end A228158

/-! ## A228158.P13498556297594648663

`lcm(A040063(n+3), A289404(n))`
-/

namespace A228158.P13498556297594648663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040063 (n + 3)) (A289404 n)

end

end A228158.P13498556297594648663

namespace A228158

/-- `lcm(A040063(n+3), A289404(n))` -/
def P13498556297594648663.Spec : Prop :=
  ∀ n, (P13498556297594648663.a n : ℤ) = A228158 (n + 1)

end A228158

/-! ## A228158.P778468777511275841

`∪[4*A002278(n+1), A002276(n+1)]`
-/

namespace A228158.P778468777511275841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228158.P778468777511275841

namespace A228158

/-- `∪[4*A002278(n+1), A002276(n+1)]` -/
def P778468777511275841.Spec : Prop :=
  ∀ n, (P778468777511275841.a n : ℤ) = A228158 (n + 1)

end A228158

/-!
# A228159: Number of labeled rooted identity trees on n nodes (rooted trees that admit n! labelings).

The programs for A228159, there is no canonical definition to state claims against.
-/

/-! ## A228159.P4994921667044656355

`n!*A004111(n)`
-/

namespace A228159.P4994921667044656355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A004111 n

end

end A228159.P4994921667044656355

/-! ## A228159.P11187709315835772915

`n!*A255517(∑[n+2]-1)`
-/

namespace A228159.P11187709315835772915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A255517 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A228159.P11187709315835772915

/-! ## A228159.P17287097329100451886

`A000142(n)*A004111(n)`
-/

namespace A228159.P17287097329100451886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A004111 n

end

end A228159.P17287097329100451886

/-! ## A228159.P15208132959715322308

`A004111(n)*A047920(∑[n])`
-/

namespace A228159.P15208132959715322308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n * A047920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228159.P15208132959715322308

/-! ## A228159.P8044095117636622315

`Δ[A003422(n)]*A004111(n)`
-/

namespace A228159.P8044095117636622315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004111 n

end

end A228159.P8044095117636622315

/-! ## A228159.P4317331112617169900

`∏[A028310(n)]*A004111(n)`
-/

namespace A228159.P4317331112617169900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A004111 n

end

end A228159.P4317331112617169900

/-! ## A228159.P13215638176776556947

`A004111(n)*A081123(2*n)`
-/

namespace A228159.P13215638176776556947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n * A081123 (2 * n)

end

end A228159.P13215638176776556947

/-! ## A228159.P18018789605198195899

`A004111(n)*A245334(A000096(n))`
-/

namespace A228159.P18018789605198195899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n * A245334 (A000096 n).toNat

end

end A228159.P18018789605198195899

/-! ## A228159.P6902006214719160324

`A004111(n)*A178126(A161680(n))`
-/

namespace A228159.P6902006214719160324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n * A178126 (A161680 n).toNat

end

end A228159.P6902006214719160324

/-!
# A228160: Number of sets (forests) of labeled identity trees (trees enumerated by A228159) with n nodes.

The programs for A228160, there is no canonical definition to state claims against.
-/

/-! ## A228160.P11735680699847540394

`or(1, A082023(A007289(n)))`
-/

namespace A228160.P11735680699847540394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082023 (A007289 n).toNat)

end

end A228160.P11735680699847540394

/-! ## A228160.P6991265187782250248

`or(1, A004001(A228923(n)))`
-/

namespace A228160.P6991265187782250248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004001 (A228923 n).toNat)

end

end A228160.P6991265187782250248

/-!
# A228161: Number triangle associated to Chebyshev polynomials of the second kind.

The programs for A228161, there is no canonical definition to state claims against.
-/

/-! ## A228161.P14106818345329302653

`A323182(A061579(n))`
-/

namespace A228161.P14106818345329302653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A061579 n).toNat

end

end A228161.P14106818345329302653

/-! ## A228161.P15385105796199827296

`A323182(A114327(n)+n)`
-/

namespace A228161.P15385105796199827296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A114327 n + (n : ℤ)).toNat

end

end A228161.P15385105796199827296

/-! ## A228161.P7992492589579825634

`A323182(A038722(n+1)-1)`
-/

namespace A228161.P7992492589579825634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A038722 (n + 1) - 1).toNat

end

end A228161.P7992492589579825634

/-! ## A228161.P9201231998798652298

`A323182(A185869(n+1)-A016789(n))`
-/

namespace A228161.P9201231998798652298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A185869 (n + 1) - A016789 n).toNat

end

end A228161.P9201231998798652298

/-! ## A228161.P4283234358084185156

`A323182(A185869(n+1)%A016789(n))`
-/

namespace A228161.P4283234358084185156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (Int.tmod (A185869 (n + 1)) (A016789 n)).toNat

end

end A228161.P4283234358084185156

/-! ## A228161.P16189155939823381571

`A323182(A038722(n+2))`
-/

namespace A228161.P16189155939823381571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A038722 (n + 2)).toNat

end

end A228161.P16189155939823381571

/-! ## A228161.P2840284874938762000

`(A228637(n)+A228356(n))/2`
-/

namespace A228161.P2840284874938762000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228637 n + A228356 n : ℚ) / 2

end

end A228161.P2840284874938762000

/-!
# A228162: Number of bangbangs (!!) in shell substitution when starting with : '!!' and : "!!" '!!'.

The programs for A228162, there is no canonical definition to state claims against.
-/

/-! ## A228162.P6376047344199708926

`A364464(floor(2^(n-1)))+floor(n^(1/3))^3`
-/

namespace A228162.P6376047344199708926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364464 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3

end

end A228162.P6376047344199708926

/-! ## A228162.P9641426224903552007

`∑[A352829(A026621(n))]`
-/

namespace A228162.P9641426224903552007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (A026621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228162.P9641426224903552007

/-! ## A228162.P9049043018625494738

`A086161(∑[∏[A187741(n)]])`
-/

namespace A228162.P9049043018625494738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228162.P9049043018625494738

/-!
# A228164: Numbers n having at least two distinct symmetrical pairs of divisors (a, b) and (b', a') such that n = a*b = b'*a' with a' = reverse(a) and b' = reverse(b).

The programs for A228164, there is no canonical definition to state claims against.
-/

/-! ## A228164.P6285325178358872497

`A262873(A065033(n)+A032551(n+1))`
-/

namespace A228164.P6285325178358872497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262873 (A065033 n + A032551 (n + 1)).toNat

end

end A228164.P6285325178358872497

/-! ## A228164.P847175609542639974

`A262873(lt[A066016(2*n+1), A307834(n+2)])`
-/

namespace A228164.P847175609542639974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066016 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262873 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228164.P847175609542639974

/-! ## A228164.P17042199286778775245

`A262873(∑[A093101(n)!])`
-/

namespace A228164.P17042199286778775245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A093101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262873 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228164.P17042199286778775245

/-!
# A228169: Irregular triangle read by rows: T(n,k) is the number of binary pattern classes in the (10,n)-rectangular grid with k '1's and (10n-k) '0's: two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A228169, there is no canonical definition to state claims against.
-/

/-! ## A228169.P16445594337482751334

`A061391(A251573(n))`
-/

namespace A228169.P16445594337482751334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (A251573 n).toNat

end

end A228169.P16445594337482751334

/-! ## A228169.P8929137438275922981

`A061391(A006153(n)-A144595(n))`
-/

namespace A228169.P8929137438275922981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (A006153 n - A144595 n).toNat

end

end A228169.P8929137438275922981

/-!
# A228170: The least semiprime (A001358) such that between it and the next n semiprimes, but not the next n+1 semiprimes, there are no primes.

The programs for A228170, there is no canonical definition to state claims against.
-/

/-! ## A228170.P5788857418083705777

`A233583(A228171(n+2)+3)`
-/

namespace A228170.P5788857418083705777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A228171 (n + 2) + 3).toNat

end

end A228170.P5788857418083705777

/-!
# A228171: Least prime such that between it and the next prime there are exactly n semiprimes.

The programs for A228171, there is no canonical definition to state claims against.
-/

/-! ## A228171.P15212937843143806479

`A000040(A103669(n+1))`
-/

namespace A228171.P15212937843143806479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A103669 (n + 1)).toNat

end

end A228171.P15212937843143806479

/-! ## A228171.P16701452419133534649

`A008578(A103669(n+1)+1)`
-/

namespace A228171.P16701452419133534649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A103669 (n + 1) + 1).toNat

end

end A228171.P16701452419133534649

/-! ## A228171.P5099648489256470913

`A182986(A103669(n+1)+1)`
-/

namespace A228171.P5099648489256470913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A103669 (n + 1) + 1).toNat

end

end A228171.P5099648489256470913

/-! ## A228171.P15721758966527979849

`A158611(A103669(n+1)+2)`
-/

namespace A228171.P15721758966527979849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A103669 (n + 1) + 2).toNat

end

end A228171.P15721758966527979849

/-! ## A228171.P10451825944004535577

`A109763(2*A103669(n+1))`
-/

namespace A228171.P10451825944004535577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A103669 (n + 1)).toNat

end

end A228171.P10451825944004535577

/-!
# A228172: Number of integer pairs (x,y) such that 0<=y<=x, x>0, and x^2+y^2<=n^2.

The programs for A228172, the canonical program `A228172.P14776185888272787991` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228172 has offset 1).

The definition of A228172 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211340, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228172.P14776185888272787991

`A211340(n+1)+n+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A228172

/-- `A211340(n+1)+n+1` -/
def P14776185888272787991.Spec : Prop :=
  ∀ n, P14776185888272787991.a n = A228172 (n + 1)

theorem P14776185888272787991.correct : P14776185888272787991.Spec := by
  intro n
  simp only [A228172, Nat.add_sub_cancel]

end A228172

/-! ## A228172.P3271266505798112812

`∑[floor(A036694(n+1)/2)+1]`
-/

namespace A228172.P3271266505798112812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036694 (n + 1) : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P3271266505798112812

namespace A228172

/-- `∑[floor(A036694(n+1)/2)+1]` -/
def P3271266505798112812.Spec : Prop :=
  ∀ n, P3271266505798112812.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P1182268034458463612

`∑[A036703(n+1)]`
-/

namespace A228172.P1182268034458463612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P1182268034458463612

namespace A228172

/-- `∑[A036703(n+1)]` -/
def P1182268034458463612.Spec : Prop :=
  ∀ n, P1182268034458463612.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P14891802129775750557

`∑[abs(Δ[A036702(n)])]`
-/

namespace A228172.P14891802129775750557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P14891802129775750557

namespace A228172

/-- `∑[abs(Δ[A036702(n)])]` -/
def P14891802129775750557.Spec : Prop :=
  ∀ n, P14891802129775750557.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P9767014598051810147

`A036702(n+1)-1`
-/

namespace A228172.P9767014598051810147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 (n + 1) - 1

end

end A228172.P9767014598051810147

namespace A228172

/-- `A036702(n+1)-1` -/
def P9767014598051810147.Spec : Prop :=
  ∀ n, P9767014598051810147.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P9579641063476920336

`∑[ceil(A036696(n+1)/4)]`
-/

namespace A228172.P9579641063476920336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036696 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P9579641063476920336

namespace A228172

/-- `∑[ceil(A036696(n+1)/4)]` -/
def P9579641063476920336.Spec : Prop :=
  ∀ n, P9579641063476920336.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P9918074230755564350

`A049472(n+1)+A036700(n+1)`
-/

namespace A228172.P9918074230755564350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + A036700 (n + 1)

end

end A228172.P9918074230755564350

namespace A228172

/-- `A049472(n+1)+A036700(n+1)` -/
def P9918074230755564350.Spec : Prop :=
  ∀ n, P9918074230755564350.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P7494596586619216233

`A049472(n+1)+∑[A036701(n+1)]`
-/

namespace A228172.P7494596586619216233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P7494596586619216233

namespace A228172

/-- `A049472(n+1)+∑[A036701(n+1)]` -/
def P7494596586619216233.Spec : Prop :=
  ∀ n, P7494596586619216233.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P13139958078122532020

`∑[A036697(n+1)-A036701(n+1)]`
-/

namespace A228172.P13139958078122532020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 (n + 1) - A036701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P13139958078122532020

namespace A228172

/-- `∑[A036697(n+1)-A036701(n+1)]` -/
def P13139958078122532020.Spec : Prop :=
  ∀ n, P13139958078122532020.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P1373045326020146022

`∑[A036697(n+1)]-A036700(n+1)`
-/

namespace A228172.P1373045326020146022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036700 (n + 1)

end

end A228172.P1373045326020146022

namespace A228172

/-- `∑[A036697(n+1)]-A036700(n+1)` -/
def P1373045326020146022.Spec : Prop :=
  ∀ n, P1373045326020146022.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P10825393120392046065

`∑[A065033(Δ[A000603(n)])]`
-/

namespace A228172.P10825393120392046065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P10825393120392046065

namespace A228172

/-- `∑[A065033(Δ[A000603(n)])]` -/
def P10825393120392046065.Spec : Prop :=
  ∀ n, P10825393120392046065.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P16699445673255689524

`∑[A110654(Δ[A000603(n)])]`
-/

namespace A228172.P16699445673255689524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P16699445673255689524

namespace A228172

/-- `∑[A110654(Δ[A000603(n)])]` -/
def P16699445673255689524.Spec : Prop :=
  ∀ n, P16699445673255689524.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P17177893525988312120

`∑[A008619(A036694(n+1))]`
-/

namespace A228172.P17177893525988312120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P17177893525988312120

namespace A228172

/-- `∑[A008619(A036694(n+1))]` -/
def P17177893525988312120.Spec : Prop :=
  ∀ n, P17177893525988312120.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P9382080865563872604

`∑[A110654(A036697(n+1))]`
-/

namespace A228172.P9382080865563872604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P9382080865563872604

namespace A228172

/-- `∑[A110654(A036697(n+1))]` -/
def P9382080865563872604.Spec : Prop :=
  ∀ n, P9382080865563872604.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P15097796646271917318

`∑[A008621(Δ[A036695(n)])]`
-/

namespace A228172.P15097796646271917318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P15097796646271917318

namespace A228172

/-- `∑[A008621(Δ[A036695(n)])]` -/
def P15097796646271917318.Spec : Prop :=
  ∀ n, P15097796646271917318.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P8368892969860572632

`∑[A008621(A036696(n+1))]`
-/

namespace A228172.P8368892969860572632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P8368892969860572632

namespace A228172

/-- `∑[A008621(A036696(n+1))]` -/
def P8368892969860572632.Spec : Prop :=
  ∀ n, P8368892969860572632.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P3916166889117189755

`A394684(n+1)+A046080(n+1)`
-/

namespace A228172.P3916166889117189755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394684 (n + 1) + A046080 (n + 1)

end

end A228172.P3916166889117189755

namespace A228172

/-- `A394684(n+1)+A046080(n+1)` -/
def P3916166889117189755.Spec : Prop :=
  ∀ n, P3916166889117189755.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P700385386834551759

`eq[char[(8*n)²], A283304(n+1)]`
-/

namespace A228172.P700385386834551759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228172.P700385386834551759

namespace A228172

/-- `eq[char[(8*n)²], A283304(n+1)]` -/
def P700385386834551759.Spec : Prop :=
  ∀ n, (P700385386834551759.a n : ℤ) = A228172 (n + 1)

end A228172

/-! ## A228172.P10784406121687900595

`A023443(A036702(n+1))`
-/

namespace A228172.P10784406121687900595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036702 (n + 1)).toNat

end

end A228172.P10784406121687900595

namespace A228172

/-- `A023443(A036702(n+1))` -/
def P10784406121687900595.Spec : Prop :=
  ∀ n, P10784406121687900595.a n = A228172 (n + 1)

end A228172

/-! ## A228172.P3482074266283919328

`∑[abs(Δ[A073092(n²)])]`
-/

namespace A228172.P3482074266283919328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073092 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228172.P3482074266283919328

namespace A228172

/-- `∑[abs(Δ[A073092(n²)])]` -/
def P3482074266283919328.Spec : Prop :=
  ∀ n, P3482074266283919328.a n = A228172 (n + 1)

end A228172

/-!
# A228173: E.g.f. satisfies: A(x) = 1+x - exp(-A(x)^2).

The programs for A228173, there is no canonical definition to state claims against.
-/

/-! ## A228173.P1966043110463577505

`n!*A000006(A109792(n+1))`
-/

namespace A228173.P1966043110463577505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000006 (A109792 (n + 1)).toNat

end

end A228173.P1966043110463577505

/-! ## A228173.P3955610018684779800

`A004911(n+1)!*A238236(n)`
-/

namespace A228173.P3955610018684779800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004911 (n + 1)).toNat : ℤ) * A238236 n

end

end A228173.P3955610018684779800

/-!
# A228174: Numbers representable as x^x * y^y, with x > y > 1.

The programs for A228174, there is no canonical definition to state claims against.
-/

/-! ## A228174.P2667776744326616017

`A122405(A325868(n+1)+A001358(n+1))`
-/

namespace A228174.P2667776744326616017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122405 (A325868 (n + 1) + A001358 (n + 1)).toNat

end

end A228174.P2667776744326616017

/-!
# A228176: Floor(n*(sqrt(10)+sqrt(3))).

The programs for A228176, the canonical program `A228176.P757319003944590094` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228176 has offset 0).

The definition of A228176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(10)+sqrt(3)))` (program `A228176.P757319003944590094`, by `A228176.P757319003944590094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228176.P757319003944590094

`floor(n*(sqrt(10)+sqrt(3)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228176

/-- `floor(n*(sqrt(10)+sqrt(3)))` -/
def P757319003944590094.Spec : Prop :=
  ∀ n, P757319003944590094.a n = A228176 n

theorem P757319003944590094.correct : P757319003944590094.Spec := by
  intro n
  simp only [A228176]

end A228176

/-! ## A228176.P1245258098536691445

`A202304(A008527(n)-A001316(n))`
-/

namespace A228176.P1245258098536691445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A008527 n - A001316 n).toNat

end

end A228176.P1245258098536691445

namespace A228176

/-- `A202304(A008527(n)-A001316(n))` -/
def P1245258098536691445.Spec : Prop :=
  ∀ n, P1245258098536691445.a n = A228176 n

end A228176

/-! ## A228176.P7532895069690353343

`A186322(3*n+1)-A074206(A001248(n+1))`
-/

namespace A228176.P7532895069690353343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186322 (3 * n + 1) - A074206 (A001248 (n + 1)).toNat

end

end A228176.P7532895069690353343

namespace A228176

/-- `A186322(3*n+1)-A074206(A001248(n+1))` -/
def P7532895069690353343.Spec : Prop :=
  ∀ n, P7532895069690353343.a n = A228176 n

end A228176

/-! ## A228176.P16689669213072588442

`A186322(3*n+1)-A001222(A001248(2*(n+1)))`
-/

namespace A228176.P16689669213072588442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186322 (3 * n + 1) - A001222 (A001248 (2 * (n + 1))).toNat

end

end A228176.P16689669213072588442

namespace A228176

/-- `A186322(3*n+1)-A001222(A001248(2*(n+1)))` -/
def P16689669213072588442.Spec : Prop :=
  ∀ n, P16689669213072588442.a n = A228176 n

end A228176

/-! ## A228176.P14308219897998270046

`A186322(3*n+1)-A020639(A202686(n+1))`
-/

namespace A228176.P14308219897998270046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186322 (3 * n + 1) - A020639 (A202686 (n + 1)).toNat

end

end A228176.P14308219897998270046

namespace A228176

/-- `A186322(3*n+1)-A020639(A202686(n+1))` -/
def P14308219897998270046.Spec : Prop :=
  ∀ n, P14308219897998270046.a n = A228176 n

end A228176

/-!
# A228177: Floor(n*(sqrt(6)+sqrt(5))).

The programs for A228177, the canonical program `A228177.P15584196693862429658` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228177 has offset 0).

The definition of A228177 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(6)+sqrt(5)))` (program `A228177.P15584196693862429658`, by `A228177.P15584196693862429658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228177.P15584196693862429658

`floor(n*(sqrt(6)+sqrt(5)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228177

/-- `floor(n*(sqrt(6)+sqrt(5)))` -/
def P15584196693862429658.Spec : Prop :=
  ∀ n, P15584196693862429658.a n = A228177 n

theorem P15584196693862429658.correct : P15584196693862429658.Spec := by
  intro n
  simp only [A228177]

end A228177

/-! ## A228177.P5163465751402730966

`ceil(n*(sqrt(6)+sqrt(5))-n²%(n+1))`
-/

namespace A228177.P5163465751402730966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (6 : ℝ) + Real.sqrt (5 : ℝ)) - ((n ^ 2 % (n + 1) : ℕ) : ℝ)⌉

end

end A228177.P5163465751402730966

namespace A228177

/-- `ceil(n*(sqrt(6)+sqrt(5))-n²%(n+1))` -/
def P5163465751402730966.Spec : Prop :=
  ∀ n, P5163465751402730966.a n = A228177 n

end A228177

/-! ## A228177.P17324556645845513701

`A003056(A231559(3*n+4))+n-4`
-/

namespace A228177.P17324556645845513701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A231559 (3 * n + 4)).toNat + ((n : ℤ) - 4)

end

end A228177.P17324556645845513701

namespace A228177

/-- `A003056(A231559(3*n+4))+n-4` -/
def P17324556645845513701.Spec : Prop :=
  ∀ n, P17324556645845513701.a n = A228177 n

end A228177

/-! ## A228177.P16232891898693163175

`A074840(A022144(n))%A141214(n)`
-/

namespace A228177.P16232891898693163175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074840 (A022144 n).toNat) (A141214 n)

end

end A228177.P16232891898693163175

namespace A228177

/-- `A074840(A022144(n))%A141214(n)` -/
def P16232891898693163175.Spec : Prop :=
  ∀ n, P16232891898693163175.a n = A228177 n

end A228177

/-! ## A228177.P4285842641256543397

`A339186(A005449(3*n))+n`
-/

namespace A228177.P4285842641256543397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A005449 (3 * n)).toNat + (n : ℤ)

end

end A228177.P4285842641256543397

namespace A228177

/-- `A339186(A005449(3*n))+n` -/
def P4285842641256543397.Spec : Prop :=
  ∀ n, P4285842641256543397.a n = A228177 n

end A228177

/-!
# A228178: The number of boundary edges for all ordered trees with n edges.

The programs for A228178, the canonical program `A228178.P3911483444974939938` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228178 has offset 0).

The definition of A228178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228178.P3911483444974939938

`∑[A071722(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228178

/-- `∑[A071722(n)]` -/
def P3911483444974939938.Spec : Prop :=
  ∀ n, P3911483444974939938.a n = A228178 n

theorem P3911483444974939938.correct : P3911483444974939938.Spec := by
  intro n
  simp only [A228178]

end A228178

/-! ## A228178.P10011535679202330948

`∑[record[Δ[A005508(n)]]]`
-/

namespace A228178.P10011535679202330948
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228178.P10011535679202330948

namespace A228178

/-- `∑[record[Δ[A005508(n)]]]` -/
def P10011535679202330948.Spec : Prop :=
  ∀ n, P10011535679202330948.a n = A228178 n

end A228178

/-! ## A228178.P5506637371921198252

`∑[A070031(n)-Δ[(4-6/(n+1))*a(n-1)]]` with `a(0)=1`
-/

namespace A228178.P5506637371921198252
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070031 n : ℚ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228178.P5506637371921198252

namespace A228178

/-- `∑[A070031(n)-Δ[(4-6/(n+1))*a(n-1)]]` -/
def P5506637371921198252.Spec : Prop :=
  ∀ n, P5506637371921198252.a n = (A228178 n : ℚ)

end A228178

/-! ## A228178.P13612345789297387915

`∑[A099376(n)+A026012(n)]`
-/

namespace A228178.P13612345789297387915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228178.P13612345789297387915

namespace A228178

/-- `∑[A099376(n)+A026012(n)]` -/
def P13612345789297387915.Spec : Prop :=
  ∀ n, P13612345789297387915.a n = A228178 n

end A228178

/-! ## A228178.P12729856173710473174

`A002057(n)-∑[A000588(n)]`
-/

namespace A228178.P12729856173710473174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228178.P12729856173710473174

namespace A228178

/-- `A002057(n)-∑[A000588(n)]` -/
def P12729856173710473174.Spec : Prop :=
  ∀ n, P12729856173710473174.a n = A228178 n

end A228178

/-! ## A228178.P9187248139645254354

`∑[Δ[A099376(n)]-A000588(n)]`
-/

namespace A228178.P9187248139645254354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228178.P9187248139645254354

namespace A228178

/-- `∑[Δ[A099376(n)]-A000588(n)]` -/
def P9187248139645254354.Spec : Prop :=
  ∀ n, P9187248139645254354.a n = A228178 n

end A228178

/-! ## A228178.P13825229602598381250

`∑[A026016(n+1)-A000588(n)]`
-/

namespace A228178.P13825229602598381250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) - A000588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228178.P13825229602598381250

namespace A228178

/-- `∑[A026016(n+1)-A000588(n)]` -/
def P13825229602598381250.Spec : Prop :=
  ∀ n, P13825229602598381250.a n = A228178 n

end A228178

/-! ## A228178.P10838923703558726328

`A143955(n+1)+A001453(n+2)`
-/

namespace A228178.P10838923703558726328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 1) + A001453 (n + 2)

end

end A228178.P10838923703558726328

namespace A228178

/-- `A143955(n+1)+A001453(n+2)` -/
def P10838923703558726328.Spec : Prop :=
  ∀ n, P10838923703558726328.a n = A228178 n

end A228178

/-! ## A228178.P16214934156492431632

`A228180(n+2)-A000108(n+1)`
-/

namespace A228178.P16214934156492431632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228180 (n + 2) - A000108 (n + 1)

end

end A228178.P16214934156492431632

namespace A228178

/-- `A228180(n+2)-A000108(n+1)` -/
def P16214934156492431632.Spec : Prop :=
  ∀ n, P16214934156492431632.a n = A228178 n

end A228178

/-! ## A228178.P14422297741598312490

`∑[A005508(2*n+1)-A005508(2*n)]`
-/

namespace A228178.P14422297741598312490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (2 * n + 1) - A005508 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228178.P14422297741598312490

namespace A228178

/-- `∑[A005508(2*n+1)-A005508(2*n)]` -/
def P14422297741598312490.Spec : Prop :=
  ∀ n, P14422297741598312490.a n = A228178 n

end A228178

/-! ## A228178.P5764759226096846145

`A014138(n+1)+A112308(n)-A070857(n)`
-/

namespace A228178.P5764759226096846145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1) + (A112308 n - A070857 n)

end

end A228178.P5764759226096846145

namespace A228178

/-- `A014138(n+1)+A112308(n)-A070857(n)` -/
def P5764759226096846145.Spec : Prop :=
  ∀ n, P5764759226096846145.a n = A228178 n

end A228178

/-! ## A228178.P2230410137825204468

`A000245(n+1)+A000245(n+1)-A014137(n)`
-/

namespace A228178.P2230410137825204468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A000245 (n + 1) - A014137 n)

end

end A228178.P2230410137825204468

namespace A228178

/-- `A000245(n+1)+A000245(n+1)-A014137(n)` -/
def P2230410137825204468.Spec : Prop :=
  ∀ n, P2230410137825204468.a n = A228178 n

end A228178

/-! ## A228178.P14637503081793717446

`A228180(n+1)+A306423(n+4)-A071736(n+1)`
-/

namespace A228178.P14637503081793717446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228180 (n + 1) + (A306423 (n + 4) - A071736 (n + 1))

end

end A228178.P14637503081793717446

namespace A228178

/-- `A228180(n+1)+A306423(n+4)-A071736(n+1)` -/
def P14637503081793717446.Spec : Prop :=
  ∀ n, P14637503081793717446.a n = A228178 n

end A228178

/-!
# A228179: Irregular table where the n-th row consists of the square roots of 1 in Z_n.

The programs for A228179, the canonical program `A228179.P8496173092229865919` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228179 has offset 2).

The definition of A228179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228179.P18323305038684455721

`A020652(eq[A038566(n+1), A124224(n+1)])`
-/

namespace A228179.P18323305038684455721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228179.P18323305038684455721

namespace A228179

/-- `A020652(eq[A038566(n+1), A124224(n+1)])` -/
def P18323305038684455721.Spec : Prop :=
  ∀ n, P18323305038684455721.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P2985984835611444508

`A038566(eq[A038566(n+1), A124224(n+1)]+1)`
-/

namespace A228179.P2985984835611444508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A228179.P2985984835611444508

namespace A228179

/-- `A038566(eq[A038566(n+1), A124224(n+1)]+1)` -/
def P2985984835611444508.Spec : Prop :=
  ∀ n, P2985984835611444508.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P8496173092229865919

`A128227(eq[1, A048152(n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228179

/-- `A128227(eq[1, A048152(n+1)])` -/
def P8496173092229865919.Spec : Prop :=
  ∀ n, P8496173092229865919.a n = A228179 (n + 2)

theorem P8496173092229865919.correct : P8496173092229865919.Spec := by
  intro n
  simp only [A228179, Nat.add_sub_cancel]

end A228179

/-! ## A228179.P15289321228610539019

`A193738(eq[1, A048152(n+1)])`
-/

namespace A228179.P15289321228610539019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P15289321228610539019

namespace A228179

/-- `A193738(eq[1, A048152(n+1)])` -/
def P15289321228610539019.Spec : Prop :=
  ∀ n, P15289321228610539019.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P12433599671281731435

`A002262(eq[1, A048152(n+1)]+1)`
-/

namespace A228179.P12433599671281731435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A228179.P12433599671281731435

namespace A228179

/-- `A002262(eq[1, A048152(n+1)]+1)` -/
def P12433599671281731435.Spec : Prop :=
  ∀ n, P12433599671281731435.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P11202985341332183604

`A191532(eq[1, A048152(n+1)])+1`
-/

namespace A228179.P11202985341332183604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A228179.P11202985341332183604

namespace A228179

/-- `A191532(eq[1, A048152(n+1)])+1` -/
def P11202985341332183604.Spec : Prop :=
  ∀ n, P11202985341332183604.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P15486008995637087517

`A002260(eq[1, A191532(n)²%A002024(n+1)])`
-/

namespace A228179.P15486008995637087517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191532 n ^ 2) (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P15486008995637087517

namespace A228179

/-- `A002260(eq[1, A191532(n)²%A002024(n+1)])` -/
def P15486008995637087517.Spec : Prop :=
  ∀ n, P15486008995637087517.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P10838310223962608314

`A002260(eq[1, (A002260(n+1)-1)²%A002024(n+1)])`
-/

namespace A228179.P10838310223962608314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A002260 (n + 1) - 1) ^ 2) (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P10838310223962608314

namespace A228179

/-- `A002260(eq[1, (A002260(n+1)-1)²%A002024(n+1)])` -/
def P10838310223962608314.Spec : Prop :=
  ∀ n, P10838310223962608314.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P2730127892506174524

`A002262(eq[1, (A127739(n+1)-n)²%A002024(n+1)])`
-/

namespace A228179.P2730127892506174524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A127739 (n + 1) - (n : ℤ)) ^ 2) (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P2730127892506174524

namespace A228179

/-- `A002262(eq[1, (A127739(n+1)-n)²%A002024(n+1)])` -/
def P2730127892506174524.Spec : Prop :=
  ∀ n, P2730127892506174524.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P8759448273576693140

`A002260(eq[1, (A057554(2*(n+1))+1)²%A002024(n+1)])`
-/

namespace A228179.P8759448273576693140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A057554 (2 * (n + 1)) + 1) ^ 2) (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P8759448273576693140

namespace A228179

/-- `A002260(eq[1, (A057554(2*(n+1))+1)²%A002024(n+1)])` -/
def P8759448273576693140.Spec : Prop :=
  ∀ n, P8759448273576693140.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P17942593845354602691

`A002262(eq[1, A048152(A038722(n+1))])`
-/

namespace A228179.P17942593845354602691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P17942593845354602691

namespace A228179

/-- `A002262(eq[1, A048152(A038722(n+1))])` -/
def P17942593845354602691.Spec : Prop :=
  ∀ n, P17942593845354602691.a n = A228179 (n + 2)

end A228179

/-! ## A228179.P5347397632004736064

`A002260(eq[1, A057555(2*(n+1))²%A002024(n+1)])`
-/

namespace A228179.P5347397632004736064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057555 (2 * (n + 1)) ^ 2) (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P5347397632004736064

namespace A228179

/-- `A002260(eq[1, A057555(2*(n+1))²%A002024(n+1)])` -/
def P5347397632004736064.Spec : Prop :=
  ∀ n, P5347397632004736064.a n = A228179 (n + 2)

end A228179

/-!
# A228180: The number of single edges on the boundary of ordered trees with n edges.

The programs for A228180, the canonical program `A228180.P57070728468080363` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228180 has offset 0).

The definition of A228180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228180.P3586644928268355027

`or(1, A068875(n))-A155587(n)`
-/

namespace A228180.P3586644928268355027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A068875 n) - A155587 n

end

end A228180.P3586644928268355027

namespace A228180

/-- `or(1, A068875(n))-A155587(n)` -/
def P3586644928268355027.Spec : Prop :=
  ∀ n, P3586644928268355027.a n = A228180 n

end A228180

/-! ## A228180.P57070728468080363

`A131428(n)-abs(∑[A115140(n)])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228180

/-- `A131428(n)-abs(∑[A115140(n)])` -/
def P57070728468080363.Spec : Prop :=
  ∀ n, P57070728468080363.a n = A228180 n

theorem P57070728468080363.correct : P57070728468080363.Spec := by
  intro n
  simp only [A228180]

end A228180

/-! ## A228180.P10382149925992612008

`A191307(A005843(n))%A068875(n)`
-/

namespace A228180.P10382149925992612008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191307 (A005843 n).toNat) (A068875 n)

end

end A228180.P10382149925992612008

namespace A228180

/-- `A191307(A005843(n))%A068875(n)` -/
def P10382149925992612008.Spec : Prop :=
  ∀ n, P10382149925992612008.a n = A228180 n

end A228180

/-! ## A228180.P18295144825224010410

`A068875(n)-A091491(A000124(n))`
-/

namespace A228180.P18295144825224010410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - A091491 (A000124 n).toNat

end

end A228180.P18295144825224010410

namespace A228180

/-- `A068875(n)-A091491(A000124(n))` -/
def P18295144825224010410.Spec : Prop :=
  ∀ n, P18295144825224010410.a n = A228180 n

end A228180

/-! ## A228180.P5713387805203491887

`A068875(n)-A125177(∑[A028310(n)])`
-/

namespace A228180.P5713387805203491887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - A125177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228180.P5713387805203491887

namespace A228180

/-- `A068875(n)-A125177(∑[A028310(n)])` -/
def P5713387805203491887.Spec : Prop :=
  ∀ n, P5713387805203491887.a n = A228180 n

end A228180

/-!
# A228186: a(n) is the smallest natural number k such that (k+n+1)!*(k-n-2)! < 2*k!*(k-1)!.

The programs for A228186, the canonical program `A228186.P9176151723657075923` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228186 has offset 0).

The definition of A228186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228186.P9176151723657075923

`floor(A028552(n)/log(2))+4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228186

/-- `floor(A028552(n)/log(2))+4` -/
def P9176151723657075923.Spec : Prop :=
  ∀ n, P9176151723657075923.a n = A228186 n

theorem P9176151723657075923.correct : P9176151723657075923.Spec := by
  intro n
  simp only [A228186]

end A228186

/-! ## A228186.P7376373100207208046

`floor(A124625(A028387(n))/log(2))+4`
-/

namespace A228186.P7376373100207208046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124625 (A028387 n).toNat : ℝ) / Real.log (2 : ℝ)⌋ + 4

end

end A228186.P7376373100207208046

namespace A228186

/-- `floor(A124625(A028387(n))/log(2))+4` -/
def P7376373100207208046.Spec : Prop :=
  ∀ n, P7376373100207208046.a n = A228186 n

end A228186

/-! ## A228186.P6798222905193153266

`A104136(A006324(n+1)+1)`
-/

namespace A228186.P6798222905193153266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104136 (A006324 (n + 1) + 1).toNat

end

end A228186.P6798222905193153266

namespace A228186

/-- `A104136(A006324(n+1)+1)` -/
def P6798222905193153266.Spec : Prop :=
  ∀ n, P6798222905193153266.a n = A228186 n

end A228186

/-! ## A228186.P4579382342801116211

`A257839(∑[A246171(3*(n+1))]+1)`
-/

namespace A228186.P4579382342801116211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246171 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A228186.P4579382342801116211

namespace A228186

/-- `A257839(∑[A246171(3*(n+1))]+1)` -/
def P4579382342801116211.Spec : Prop :=
  ∀ n, P4579382342801116211.a n = A228186 n

end A228186

/-! ## A228186.P7827460393146583832

`A347519(A299438(2*n+3))+A100967(n+1)`
-/

namespace A228186.P7827460393146583832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347519 (A299438 (2 * n + 3)).toNat + A100967 (n + 1)

end

end A228186.P7827460393146583832

namespace A228186

/-- `A347519(A299438(2*n+3))+A100967(n+1)` -/
def P7827460393146583832.Spec : Prop :=
  ∀ n, P7827460393146583832.a n = A228186 n

end A228186

/-!
# A228187: Positive numbers which when decremented by the product of their digits produce a square.

The programs for A228187, the canonical program `A228187.P1035965118323279461` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228187 has offset 1).

The definition of A228187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228187.P1035965118323279461

`eq[A000038(n), A053186(A070565(n))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228187

/-- `eq[A000038(n), A053186(A070565(n))]` -/
def P1035965118323279461.Spec : Prop :=
  ∀ n, (P1035965118323279461.a n : ℤ) = A228187 (n + 1)

theorem P1035965118323279461.correct : P1035965118323279461.Spec := by
  intro n
  simp only [A228187, Nat.add_sub_cancel]

end A228187

/-! ## A228187.P13211571650442313839

`record[A010052(A070565(n))*A028310(n)]`
-/

namespace A228187.P13211571650442313839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A070565 n).toNat * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228187.P13211571650442313839

namespace A228187

/-- `record[A010052(A070565(n))*A028310(n)]` -/
def P13211571650442313839.Spec : Prop :=
  ∀ n, P13211571650442313839.a n = A228187 (n + 1)

end A228187

/-! ## A228187.P3481804755090990070

`eq[A010052(A070565(n)), A057427(n)]`
-/

namespace A228187.P3481804755090990070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228187.P3481804755090990070

namespace A228187

/-- `eq[A010052(A070565(n)), A057427(n)]` -/
def P3481804755090990070.Spec : Prop :=
  ∀ n, (P3481804755090990070.a n : ℤ) = A228187 (n + 1)

end A228187

/-! ## A228187.P13733406514054407648

`record[(A000007(n)+n)*A010052(A070565(n))]`
-/

namespace A228187.P13733406514054407648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A010052 (A070565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228187.P13733406514054407648

namespace A228187

/-- `record[(A000007(n)+n)*A010052(A070565(n))]` -/
def P13733406514054407648.Spec : Prop :=
  ∀ n, P13733406514054407648.a n = A228187 (n + 1)

end A228187

/-! ## A228187.P8808814144579028483

`record[A010052(A070565(n))*A065033(2*n)]`
-/

namespace A228187.P8808814144579028483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A070565 n).toNat * A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228187.P8808814144579028483

namespace A228187

/-- `record[A010052(A070565(n))*A065033(2*n)]` -/
def P8808814144579028483.Spec : Prop :=
  ∀ n, P8808814144579028483.a n = A228187 (n + 1)

end A228187

/-!
# A228188: Smallest triangular number divisible by 10^n.

The programs for A228188, there is no canonical definition to state claims against.
-/

/-! ## A228188.P17223705052684345547

`A228191(n+1)*(A228191(n+1)+1)/2`
-/

namespace A228188.P17223705052684345547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228191 (n + 1) * (A228191 (n + 1) + 1) : ℚ) / 2

end

end A228188.P17223705052684345547

/-! ## A228188.P13473397630139470944

`C(A228191(n+1)+1, 2)`
-/

namespace A228188.P13473397630139470944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228191 (n + 1) + 1).toNat 2

end

end A228188.P13473397630139470944

/-! ## A228188.P1921686347638013039

`C(∩[A179782(n+1), A046831(n+2)], 2)`
-/

namespace A228188.P1921686347638013039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046831 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) 2

end

end A228188.P1921686347638013039

/-! ## A228188.P6792542748328503569

`C(A067270(n+3), A067293(A067284(n+3)))`
-/

namespace A228188.P6792542748328503569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067270 (n + 3)).toNat (A067293 (A067284 (n + 3)).toNat).toNat

end

end A228188.P6792542748328503569

/-!
# A228189: Volume of right circular cone (rounded down) with the diameter of base and height equal to n.

The programs for A228189, the canonical program `A228189.P3518099185761291124` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228189 has offset 1).

The definition of A228189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228189.P3518099185761291124

`floor(π*(n+1)^3/12)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228189

/-- `floor(π*(n+1)^3/12)` -/
def P3518099185761291124.Spec : Prop :=
  ∀ n, P3518099185761291124.a n = A228189 (n + 1)

theorem P3518099185761291124.correct : P3518099185761291124.Spec := by
  intro n
  simp only [A228189, Nat.add_sub_cancel]

end A228189

/-! ## A228189.P417012247797981627

`and(-A010693(2*(n+2)), A228272(n+1))/2`
-/

namespace A228189.P417012247797981627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A010693 (2 * (n + 2))) (A228272 (n + 1)) : ℚ) / 2

end

end A228189.P417012247797981627

namespace A228189

/-- `and(-A010693(2*(n+2)), A228272(n+1))/2` -/
def P417012247797981627.Spec : Prop :=
  ∀ n, P417012247797981627.a n = (A228189 (n + 1) : ℚ)

end A228189

/-! ## A228189.P4293051835542295286

`and(-2, A228272(n+1))/A272800(2*(n+1))`
-/

namespace A228189.P4293051835542295286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A228272 (n + 1)) : ℚ) / (A272800 (2 * (n + 1)) : ℚ)

end

end A228189.P4293051835542295286

namespace A228189

/-- `and(-2, A228272(n+1))/A272800(2*(n+1))` -/
def P4293051835542295286.Spec : Prop :=
  ∀ n, P4293051835542295286.a n = (A228189 (n + 1) : ℚ)

end A228189

/-! ## A228189.P14685869952987084960

`and(-2, A228272(n+1))/A000005(A089894(n))`
-/

namespace A228189.P14685869952987084960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A228272 (n + 1)) : ℚ) / (A000005 (A089894 n).toNat : ℚ)

end

end A228189.P14685869952987084960

namespace A228189

/-- `and(-2, A228272(n+1))/A000005(A089894(n))` -/
def P14685869952987084960.Spec : Prop :=
  ∀ n, P14685869952987084960.a n = (A228189 (n + 1) : ℚ)

end A228189

/-! ## A228189.P1761653479199268010

`and(-2, A228272(n+1))/A083952(A053411(n))`
-/

namespace A228189.P1761653479199268010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A228272 (n + 1)) : ℚ) / (A083952 (A053411 n).toNat : ℚ)

end

end A228189.P1761653479199268010

namespace A228189

/-- `and(-2, A228272(n+1))/A083952(A053411(n))` -/
def P1761653479199268010.Spec : Prop :=
  ∀ n, P1761653479199268010.a n = (A228189 (n + 1) : ℚ)

end A228189

/-!
# A228190: a(n) = sum_{i=1..n} prime(i) + product_{i=1..n} prime(i).

The programs for A228190, there is no canonical definition to state claims against.
-/

/-! ## A228190.P18379951536236503953

`A352002(n+1)+A007504(n)`
-/

namespace A228190.P18379951536236503953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352002 (n + 1) + A007504 n

end

end A228190.P18379951536236503953

/-! ## A228190.P5489886155437301345

`A002110(n+1)+A007504(n+1)`
-/

namespace A228190.P5489886155437301345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) + A007504 (n + 1)

end

end A228190.P5489886155437301345

/-! ## A228190.P1704143083120701649

`A007504(n+1)+∏[Δ[A007504(n)]]`
-/

namespace A228190.P1704143083120701649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228190.P1704143083120701649

/-! ## A228190.P17603845798453163080

`A002110(n+1)+∑[p?[A001057(n)]]`
-/

namespace A228190.P17603845798453163080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228190.P17603845798453163080

/-! ## A228190.P12403828886855250120

`A002110(n+1)+∑[A000040(n+1)]`
-/

namespace A228190.P12403828886855250120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228190.P12403828886855250120

/-! ## A228190.P3769001328519739024

`A002110(n+1)+∑[A008578(n+2)]`
-/

namespace A228190.P3769001328519739024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228190.P3769001328519739024

/-! ## A228190.P4128246332843783183

`A007504(n+1)+∏[A000040(n+1)]`
-/

namespace A228190.P4128246332843783183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228190.P4128246332843783183

/-! ## A228190.P3427742795259482960

`A002110(n+1)+record[A160793(n+2)]`
-/

namespace A228190.P3427742795259482960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228190.P3427742795259482960

/-! ## A228190.P5031745005256810367

`A160793(2*(n+1))+A002110(n+1)`
-/

namespace A228190.P5031745005256810367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * (n + 1)) + A002110 (n + 1)

end

end A228190.P5031745005256810367

/-! ## A228190.P433412813053531657

`∏[A095320(n+1)]+∑[A095320(n+1)]`
-/

namespace A228190.P433412813053531657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A228190.P433412813053531657

/-!
# A228191: a(n) is the smallest number m such that the m-th triangular number ends in n zeros.

The programs for A228191, there is no canonical definition to state claims against.
-/

/-! ## A228191.P15126823677302663397

`A067270(n+3)-A051953(A033844(n))`
-/

namespace A228191.P15126823677302663397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067270 (n + 3) - A051953 (A033844 n).toNat

end

end A228191.P15126823677302663397

/-! ## A228191.P5990192119272185193

`A067270(n+3)-A053865(A067260(n+1))`
-/

namespace A228191.P5990192119272185193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067270 (n + 3) - A053865 (A067260 (n + 1)).toNat

end

end A228191.P5990192119272185193

/-! ## A228191.P9593238222590934402

`A067270(n+3)-A069288(A362957(n+1))`
-/

namespace A228191.P9593238222590934402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067270 (n + 3) - A069288 (A362957 (n + 1)).toNat

end

end A228191.P9593238222590934402

/-! ## A228191.P17748967588931579211

`A067270(n+3)-A318360(A349461(n+2))`
-/

namespace A228191.P17748967588931579211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067270 (n + 3) - A318360 (A349461 (n + 2)).toNat

end

end A228191.P17748967588931579211

/-! ## A228191.P7904239294115210788

`A067270(n+3)-A063994(A000079(n+3))`
-/

namespace A228191.P7904239294115210788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067270 (n + 3) - A063994 (A000079 (n + 3)).toNat

end

end A228191.P7904239294115210788

/-!
# A228192: a(n) = A001850(n^2), where A001850 forms the central Delannoy numbers.

The programs for A228192, the canonical program `A228192.P1282458228068176169` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228192 has offset 0).

The definition of A228192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228192.P1282458228068176169

`A001850(n²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A228192

/-- `A001850(n²)` -/
def P1282458228068176169.Spec : Prop :=
  ∀ n, P1282458228068176169.a n = A228192 n

theorem P1282458228068176169.correct : P1282458228068176169.Spec := by
  intro n
  simp only [A228192]

end A228192

/-! ## A228192.P12570954948102256295

`A026003(2*n²)`
-/

namespace A228192.P12570954948102256295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n ^ 2)

end

end A228192.P12570954948102256295

namespace A228192

/-- `A026003(2*n²)` -/
def P12570954948102256295.Spec : Prop :=
  ∀ n, P12570954948102256295.a n = A228192 n

end A228192

/-! ## A228192.P11915798390684143400

`or(1, A001850(A000290(n)))`
-/

namespace A228192.P11915798390684143400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001850 (A000290 n).toNat)

end

end A228192.P11915798390684143400

namespace A228192

/-- `or(1, A001850(A000290(n)))` -/
def P11915798390684143400.Spec : Prop :=
  ∀ n, P11915798390684143400.a n = A228192 n

end A228192

/-! ## A228192.P14472773070303848946

`or(1, A026003(A001105(n)))`
-/

namespace A228192.P14472773070303848946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026003 (A001105 n).toNat)

end

end A228192.P14472773070303848946

namespace A228192

/-- `or(1, A026003(A001105(n)))` -/
def P14472773070303848946.Spec : Prop :=
  ∀ n, P14472773070303848946.a n = A228192 n

end A228192

/-! ## A228192.P5291956420494310445

`A297191(A002378(n²))`
-/

namespace A228192.P5291956420494310445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A002378 (n ^ 2)).toNat

end

end A228192.P5291956420494310445

namespace A228192

/-- `A297191(A002378(n²))` -/
def P5291956420494310445.Spec : Prop :=
  ∀ n, P5291956420494310445.a n = A228192 n

end A228192

/-!
# A228194: Sum of lengths of longest contiguous subsequences with the same value over all s in {1,...,n}^n.

The programs for A228194, there is no canonical definition to state claims against.
-/

/-! ## A228194.P12007646527236742443

`A228250(∑[4*n])`
-/

namespace A228194.P12007646527236742443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228194.P12007646527236742443

/-! ## A228194.P5572620332397226751

`lcm(n, A228250(A046092(n)))`
-/

namespace A228194.P5572620332397226751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A228250 (A046092 n).toNat)

end

end A228194.P5572620332397226751

/-! ## A228194.P15110904700526300518

`record[A228250(xor(1, A008818(n)))]`
-/

namespace A228194.P15110904700526300518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228250 (Int.xor 1 (A008818 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228194.P15110904700526300518

/-! ## A228194.P18416615873701243868

`record[A228250(n*A003982(n))]`
-/

namespace A228194.P18416615873701243868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228250 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228194.P18416615873701243868

/-! ## A228194.P3970742535309836579

`record[A228250(n*A008619(n))]`
-/

namespace A228194.P3970742535309836579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228250 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228194.P3970742535309836579

/-!
# A228195: Primes with the property that the sum of the cubes of their digits plus the prime equals another prime squared.

The programs for A228195, there is no canonical definition to state claims against.
-/

/-! ## A228195.P15877288315844930385

`p?[A329386(A330113(n+1))]`
-/

namespace A228195.P15877288315844930385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329386 (A330113 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228195.P15877288315844930385

/-!
# A228197: Number of n-edge ordered trees with bicolored boundary edges.

The programs for A228197, the canonical program `A228197.P17697013685017105407` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228197 has offset 0).

The definition of A228197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228197.P17697013685017105407

`A126966(n)+A068551(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228197

/-- `A126966(n)+A068551(n)` -/
def P17697013685017105407.Spec : Prop :=
  ∀ n, P17697013685017105407.a n = A228197 n

theorem P17697013685017105407.correct : P17697013685017105407.Spec := by
  intro n
  simp only [A228197]

end A228197

/-! ## A228197.P15803415780176362404

`A000302(n)+A000984(n)-A082590(n)`
-/

namespace A228197.P15803415780176362404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + (A000984 n - A082590 n)

end

end A228197.P15803415780176362404

namespace A228197

/-- `A000302(n)+A000984(n)-A082590(n)` -/
def P15803415780176362404.Spec : Prop :=
  ∀ n, P15803415780176362404.a n = A228197 n

end A228197

/-! ## A228197.P7326782964451412240

`A000079(n)²+A000984(n)-A082590(n)`
-/

namespace A228197.P7326782964451412240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (A000984 n - A082590 n)

end

end A228197.P7326782964451412240

namespace A228197

/-- `A000079(n)²+A000984(n)-A082590(n)` -/
def P7326782964451412240.Spec : Prop :=
  ∀ n, P7326782964451412240.a n = A228197 n

end A228197

/-! ## A228197.P4340125135167734970

`A000079(2*n)+A000984(n)-A082590(n)`
-/

namespace A228197.P4340125135167734970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) + (A000984 n - A082590 n)

end

end A228197.P4340125135167734970

namespace A228197

/-- `A000079(2*n)+A000984(n)-A082590(n)` -/
def P4340125135167734970.Spec : Prop :=
  ∀ n, P4340125135167734970.a n = A228197 n

end A228197

/-! ## A228197.P13833971834209097735

`A000079(n)²+A001405(2*n)-A082590(n)`
-/

namespace A228197.P13833971834209097735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (A001405 (2 * n) - A082590 n)

end

end A228197.P13833971834209097735

namespace A228197

/-- `A000079(n)²+A001405(2*n)-A082590(n)` -/
def P13833971834209097735.Spec : Prop :=
  ∀ n, P13833971834209097735.a n = A228197 n

end A228197

/-! ## A228197.P9617218441745546825

`A000079(2*n)+A001405(2*n)-A082590(n)`
-/

namespace A228197.P9617218441745546825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) + (A001405 (2 * n) - A082590 n)

end

end A228197.P9617218441745546825

namespace A228197

/-- `A000079(2*n)+A001405(2*n)-A082590(n)` -/
def P9617218441745546825.Spec : Prop :=
  ∀ n, P9617218441745546825.a n = A228197 n

end A228197

/-!
# A228198: Smallest of five consecutive primes whose sum is not a prime.

The programs for A228198, the canonical program `A228198.P4684972850257953238` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228198 has offset 1).

The definition of A228198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228198.P4684972850257953238

`p?[A006093(n+1)+A005171(A034964(n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A228198

/-- `p?[A006093(n+1)+A005171(A034964(n+1))]` -/
def P4684972850257953238.Spec : Prop :=
  ∀ n, P4684972850257953238.a n = A228198 (n + 1)

theorem P4684972850257953238.correct : P4684972850257953238.Spec := by
  intro n
  simp only [A228198, Nat.add_sub_cancel]

end A228198

/-! ## A228198.P16195787474581412151

`A000040(record[(n+1)*A005171(A034964(n+1))])`
-/

namespace A228198.P16195787474581412151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A034964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228198.P16195787474581412151

namespace A228198

/-- `A000040(record[(n+1)*A005171(A034964(n+1))])` -/
def P16195787474581412151.Spec : Prop :=
  ∀ n, P16195787474581412151.a n = A228198 (n + 1)

end A228198

/-! ## A228198.P745035547736134015

`p?[A008864(n+1)-A005171(A034964(n+1))]`
-/

namespace A228198.P745035547736134015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A005171 (A034964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228198.P745035547736134015

namespace A228198

/-- `p?[A008864(n+1)-A005171(A034964(n+1))]` -/
def P745035547736134015.Spec : Prop :=
  ∀ n, P745035547736134015.a n = A228198 (n + 1)

end A228198

/-! ## A228198.P3674304952174108312

`p?[A000040(n+1)*A005171(A034964(n+1))]`
-/

namespace A228198.P3674304952174108312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A005171 (A034964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228198.P3674304952174108312

namespace A228198

/-- `p?[A000040(n+1)*A005171(A034964(n+1))]` -/
def P3674304952174108312.Spec : Prop :=
  ∀ n, P3674304952174108312.a n = A228198 (n + 1)

end A228198

/-! ## A228198.P8857868095880301798

`record[A005171(A034964(n+1))*A008578(n+2)]`
-/

namespace A228198.P8857868095880301798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A034964 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228198.P8857868095880301798

namespace A228198

/-- `record[A005171(A034964(n+1))*A008578(n+2)]` -/
def P8857868095880301798.Spec : Prop :=
  ∀ n, P8857868095880301798.a n = A228198 (n + 1)

end A228198

/-!
# A228199: Smallest of 7 consecutive primes whose sum is not a prime.

The programs for A228199, there is no canonical definition to state claims against.
-/

/-! ## A228199.P10665258172965803611

`eq[A018783(n), A136762(A023895(n))]`
-/

namespace A228199.P10665258172965803611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136762 (A023895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228199.P10665258172965803611

/-! ## A228199.P11787474582261580825

`eq[A074206(n), A088534(A331913(n+1))]`
-/

namespace A228199.P11787474582261580825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A331913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228199.P11787474582261580825

/-! ## A228199.P310641493076017337

`eq[A117677(n+1), A219347(A019565(n))]+1`
-/

namespace A228199.P310641493076017337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A228199.P310641493076017337

/-! ## A228199.P17008589012382955110

`lt[A003415(n), A212172(A373329(2*(n+1)))]`
-/

namespace A228199.P17008589012382955110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212172 (A373329 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228199.P17008589012382955110

/-! ## A228199.P8166160687847339635

`A000040(lt[A239537(2*(n+2)), A144677(2*n+3)])`
-/

namespace A228199.P8166160687847339635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228199.P8166160687847339635

