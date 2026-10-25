import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A074200: a(n) = m, the smallest number such that (m+k)/k is prime for k=1, 2, ..., n.

The programs for A074200, there is no canonical definition to state claims against.
-/

/-! ## A074200.P993973925048386911

`A093553(n+1)-1`
-/

namespace A074200.P993973925048386911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093553 (n + 1) - 1

end

end A074200.P993973925048386911

/-! ## A074200.P3570661142851412791

`A260196(n+2)+A093553(n+1)`
-/

namespace A074200.P3570661142851412791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A093553 (n + 1)

end

end A074200.P3570661142851412791

/-! ## A074200.P3729193962659929955

`A135694(A158558(n))+A093553(n+1)`
-/

namespace A074200.P3729193962659929955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135694 (A158558 n).toNat + A093553 (n + 1)

end

end A074200.P3729193962659929955

/-! ## A074200.P12091522558726835044

`A321804(A001222(n+1))+A093553(n+1)`
-/

namespace A074200.P12091522558726835044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A001222 (n + 1)).toNat + A093553 (n + 1)

end

end A074200.P12091522558726835044

/-! ## A074200.P11149631364027117145

`A317531(10*A000040(n+1))+A093553(n+1)`
-/

namespace A074200.P11149631364027117145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (10 * A000040 (n + 1)).toNat + A093553 (n + 1)

end

end A074200.P11149631364027117145

/-!
# A074201: Let b(1) = 1, b(2) = 2, b(n+2) = (b(n+1)+1)/(b(n)+1); then a(n) = 1 if b(n) >= 1 and a(n) = 0 otherwise (also a(n) = floor(b(n)) for n > 2).

The programs for A074201, there is no canonical definition to state claims against.
-/

/-! ## A074201.P3224605099476779730

`(A292665(3*n+2)%2)^n`
-/

namespace A074201.P3224605099476779730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292665 (3 * n + 2)) 2 ^ n

end

end A074201.P3224605099476779730

/-! ## A074201.P10675466703986791788

`A292665(3*floor(acot(n)+n)+2)%2`
-/

namespace A074201.P10675466703986791788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292665 (3 * ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 2).toNat) 2

end

end A074201.P10675466703986791788

/-! ## A074201.P13462050846087103578

`A292665(3*round(acot(n)+n)+2)%2`
-/

namespace A074201.P13462050846087103578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292665 (3 * SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 2).toNat) 2

end

end A074201.P13462050846087103578

/-! ## A074201.P3996296087191874166

`A292665(3*(abs(1-n)+1)+2)%2`
-/

namespace A074201.P3996296087191874166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292665 (3 * (|1 - (n : ℤ)| + 1) + 2).toNat) 2

end

end A074201.P3996296087191874166

/-! ## A074201.P6913748385938784365

`A057211(A001955((n+1)²))`
-/

namespace A074201.P6913748385938784365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (A001955 ((n + 1) ^ 2)).toNat

end

end A074201.P6913748385938784365

/-! ## A074201.P6215754717727407086

`A219699(A140100(n+1))%2`
-/

namespace A074201.P6215754717727407086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219699 (A140100 (n + 1)).toNat) 2

end

end A074201.P6215754717727407086

/-! ## A074201.P15094081838923190597

`A053000(A034888(5*n+2))%2`
-/

namespace A074201.P15094081838923190597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053000 (A034888 (5 * n + 2)).toNat) 2

end

end A074201.P15094081838923190597

/-! ## A074201.P358755823514452192

`and(1, A292665(3*n+2)+A008458(n))`
-/

namespace A074201.P358755823514452192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A292665 (3 * n + 2) + A008458 n)

end

end A074201.P358755823514452192

/-! ## A074201.P15582260681119145242

`and(1, A292665(3*n+2)+Δ[A000040(n+1)])`
-/

namespace A074201.P15582260681119145242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A292665 (3 * n + 2) + (f1 (n + 1) - f1 n))

end

end A074201.P15582260681119145242

/-! ## A074201.P16954604330892460417

`(A034888(5*n+2)+A000040(n+1)%2)%2`
-/

namespace A074201.P16954604330892460417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034888 (5 * n + 2) + Int.tmod (A000040 (n + 1)) 2) 2

end

end A074201.P16954604330892460417

/-!
# A074202: Numbers k such that the number of 1's in the binary expansion of k divides 2^k-1.

The programs for A074202, there is no canonical definition to state claims against.
-/

/-! ## A074202.P6750020485772995325

`eq[A000038(n), A000989(A162956(2*n))]`
-/

namespace A074202.P6750020485772995325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A162956 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074202.P6750020485772995325

/-! ## A074202.P17653203808969084889

`eq[A160552(2*n+1), A160552(A151548(4*n+2))]`
-/

namespace A074202.P17653203808969084889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A151548 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074202.P17653203808969084889

/-! ## A074202.P16794129711753035292

`eq[A162956(2*n+1), A162956(A151548(4*n+2))]`
-/

namespace A074202.P16794129711753035292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A151548 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074202.P16794129711753035292

/-! ## A074202.P17414317035638623773

`eq[1, A157458(A170856(n))]`
-/

namespace A074202.P17414317035638623773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 (A170856 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074202.P17414317035638623773

/-! ## A074202.P16593795780940850689

`eq[2, A306227(A213178(n))]`
-/

namespace A074202.P16593795780940850689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306227 (A213178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074202.P16593795780940850689

/-!
# A074203: Odd numbers k such that the number of 1's in the binary representation of k divides 2^k-1.

The programs for A074203, there is no canonical definition to state claims against.
-/

/-! ## A074203.P1458332572045798950

`∩[2*n+1, A074202(n+1)]`
-/

namespace A074203.P1458332572045798950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074203.P1458332572045798950

/-! ## A074203.P58959138138179900

`∩[A074202(n+1), A357779(n+1)]`
-/

namespace A074203.P58959138138179900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074203.P58959138138179900

/-! ## A074203.P5779429038631545420

`∩[A074202(n+1), A092246(n+1)]`
-/

namespace A074203.P5779429038631545420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074203.P5779429038631545420

/-! ## A074203.P8998826301278811617

`∩[A074202(n+1), A195608(n+1)]`
-/

namespace A074203.P8998826301278811617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074203.P8998826301278811617

/-! ## A074203.P17241912020726630884

`∩[A074202(n+1), A255763(n+1)]`
-/

namespace A074203.P17241912020726630884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074203.P17241912020726630884

/-! ## A074203.P5825113077333089850

`∩[A074202(n+1), A193071(n+1)]`
-/

namespace A074203.P5825113077333089850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074203.P5825113077333089850

/-! ## A074203.P5075082317696728515

`record[A093178(A074202(n+1))]`
-/

namespace A074203.P5075082317696728515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A074202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074203.P5075082317696728515

/-! ## A074203.P15658329305064905172

`∩[A074202(n+1), A004273(n)]`
-/

namespace A074203.P15658329305064905172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074203.P15658329305064905172

/-! ## A074203.P2219437146283100821

`eq[A010144(n), A022998(A000120(n))]`
-/

namespace A074203.P2219437146283100821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074203.P2219437146283100821

/-! ## A074203.P7369001097356607867

`eq[A007953(A060632(n)), A040256(n)]`
-/

namespace A074203.P7369001097356607867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A060632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074203.P7369001097356607867

/-! ## A074203.P12238772306189210984

`record[A321129(A005408(A023688(n+1)))]`
-/

namespace A074203.P12238772306189210984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321129 (A005408 (A023688 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074203.P12238772306189210984

/-!
# A074204: Numbers k such that the number of 1's in the binary representation of k divides 2^k+1.

The programs for A074204, the canonical program `A074204.P9056987276116765249` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074204 has offset 1).

The definition of A074204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074204.P9056987276116765249

`eq[A000120(n), A133179(A061338(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074204

/-- `eq[A000120(n), A133179(A061338(n))]` -/
def P9056987276116765249.Spec : Prop :=
  ∀ n, (P9056987276116765249.a n : ℤ) = A074204 (n + 1)

theorem P9056987276116765249.correct : P9056987276116765249.Spec := by
  intro n
  simp only [A074204, Nat.add_sub_cancel]

end A074204

/-! ## A074204.P11566353707625855486

`eq[32-A131762(n), A133179(A061338(n))]`
-/

namespace A074204.P11566353707625855486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A131762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A061338 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074204.P11566353707625855486

namespace A074204

/-- `eq[32-A131762(n), A133179(A061338(n))]` -/
def P11566353707625855486.Spec : Prop :=
  ∀ n, (P11566353707625855486.a n : ℤ) = A074204 (n + 1)

theorem P11566353707625855486.correct : P11566353707625855486.Spec := by
  intro n
  simp only [A074204, Nat.add_sub_cancel, A074204.P11566353707625855486.f1, A074204.P11566353707625855486.f2, A074204.P11566353707625855486.a, A074204.P9056987276116765249.f1, A074204.P9056987276116765249.f2, A074204.P9056987276116765249.a, A000120, A000120.P2816527436160941581.a, A061338, A061338.P1052418466639521221.a, A131762, A131762.P2142285092514220910.a, A133179, A133179.P3707293303286959824.a, A005187, A005187.P3874015513960485494.a, A006257, A006257.P8910165504183276925.a, A011371, A011371.P8892659874704383252.a, A087745, A087745.P15266154555943106725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074204

/-! ## A074204.P2842388661666949526

`eq[A136702(2*n+1), A329513(n²+1)]`
-/

namespace A074204.P2842388661666949526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136702 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074204.P2842388661666949526

namespace A074204

/-- `eq[A136702(2*n+1), A329513(n²+1)]` -/
def P2842388661666949526.Spec : Prop :=
  ∀ n, (P2842388661666949526.a n : ℤ) = A074204 (n + 1)

end A074204

/-! ## A074204.P9017693522878841196

`lt[A001412(A324288(n)), A062361(n+4)]`
-/

namespace A074204.P9017693522878841196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001412 (A324288 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062361 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074204.P9017693522878841196

namespace A074204

/-- `lt[A001412(A324288(n)), A062361(n+4)]` -/
def P9017693522878841196.Spec : Prop :=
  ∀ n, (P9017693522878841196.a n : ℤ) = A074204 (n + 1)

end A074204

/-! ## A074204.P3429772234551191354

`lt[A105544(A324288(n)), A016873(n)]`
-/

namespace A074204.P3429772234551191354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105544 (A324288 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074204.P3429772234551191354

namespace A074204

/-- `lt[A105544(A324288(n)), A016873(n)]` -/
def P3429772234551191354.Spec : Prop :=
  ∀ n, (P3429772234551191354.a n : ℤ) = A074204 (n + 1)

end A074204

/-!
# A074206: Kalmár's [Kalmar's] problem: number of ordered factorizations of n.

The programs for A074206, there is no canonical definition to state claims against.
-/

/-! ## A074206.P4348886758579413055

`∑{d}[n, A174725(#)]`
-/

namespace A074206.P4348886758579413055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d

end

end A074206.P4348886758579413055

/-! ## A074206.P15353533140298002789

`A002033(n-a(2%n))` with `a(0)=0`
-/

namespace A074206.P15353533140298002789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002033 ((n : ℤ) - a (2 % n)).toNat

end

end A074206.P15353533140298002789

/-! ## A074206.P16970979151962554401

`A002033(abs(1-n))%∑[n+1]`
-/

namespace A074206.P16970979151962554401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 |1 - (n : ℤ)|.toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074206.P16970979151962554401

/-! ## A074206.P3377830547061097060

`A104725(n)-A160086(n)`
-/

namespace A074206.P3377830547061097060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n - A160086 n

end

end A074206.P3377830547061097060

/-! ## A074206.P8200966263136087549

`A002033(n-a(a(A001221(n))))` with `a(0)=0`
-/

namespace A074206.P8200966263136087549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002033 ((n : ℤ) - a (a (A001221 n).toNat).toNat).toNat

end

end A074206.P8200966263136087549

/-! ## A074206.P13247132718615461744

`∑{e}[A006530(n+1), A002033(n-#)]`
-/

namespace A074206.P13247132718615461744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002033 (n - Nat.factorization (f1 n).natAbs p)

end

end A074206.P13247132718615461744

/-! ## A074206.P17417675219225662532

`∑{e}[A020639(n+1), A002033(n-#)]`
-/

namespace A074206.P17417675219225662532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002033 (n - Nat.factorization (f1 n).natAbs p)

end

end A074206.P17417675219225662532

/-! ## A074206.P16579708866966099259

`A173382(n)-A173382(A004273(n)-n)`
-/

namespace A074206.P16579708866966099259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n - A173382 (A004273 n - (n : ℤ)).toNat

end

end A074206.P16579708866966099259

/-! ## A074206.P1533587043296527325

`A002033(n-A057427(n))*A057427(n)`
-/

namespace A074206.P1533587043296527325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 ((n : ℤ) - A057427 n).toNat * A057427 n

end

end A074206.P1533587043296527325

/-!
# A074209: a(n) = Sum_{i=n+1..2n} i^n.

The programs for A074209, there is no canonical definition to state claims against.
-/

/-! ## A074209.P7570905338961493525

`A391310(A184636(n+2))`
-/

namespace A074209.P7570905338961493525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391310 (A184636 (n + 2)).toNat

end

end A074209.P7570905338961493525

/-!
# A074210: Numbers k such that the number of primes <= k is equal to the sum of primes from the smallest prime factor of k to the largest prime factor of k.

The programs for A074210, there is no canonical definition to state claims against.
-/

/-! ## A074210.P4617962380664645007

`A055035(∑[6*n^n])`
-/

namespace A074210.P4617962380664645007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074210.P4617962380664645007

/-!
# A074214: Integers m such that F(m) and F(2m) have the same largest prime factor where F(k) denotes the k-th Fibonacci number.

The programs for A074214, there is no canonical definition to state claims against.
-/

/-! ## A074214.P7496297413236164137

`A195770(A226971(n+2)+A052928(n))`
-/

namespace A074214.P7496297413236164137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195770 (A226971 (n + 2) + A052928 n).toNat

end

end A074214.P7496297413236164137

/-!
# A074215: Numbers m such that m and F(m) are relatively prime, where F(m) denotes the m-th Fibonacci number.

The programs for A074215, the canonical program `A074215.P3734655287074817867` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074215 has offset 1).

The definition of A074215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074215.P17773777392216354699

`eq[1, A104714(n)]`
-/

namespace A074215.P17773777392216354699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074215.P17773777392216354699

namespace A074215

/-- `eq[1, A104714(n)]` -/
def P17773777392216354699.Spec : Prop :=
  ∀ n, (P17773777392216354699.a n : ℤ) = A074215 (n + 1)

end A074215

/-! ## A074215.P9123139343905008263

`lt[A104714(n+1), 2]+1`
-/

namespace A074215.P9123139343905008263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A074215.P9123139343905008263

namespace A074215

/-- `lt[A104714(n+1), 2]+1` -/
def P9123139343905008263.Spec : Prop :=
  ∀ n, (P9123139343905008263.a n : ℤ) = A074215 (n + 1)

end A074215

/-! ## A074215.P6889582949752283943

`lt[A104714(xor(1, A104714(n))), 1]`
-/

namespace A074215.P6889582949752283943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (Int.xor 1 (A104714 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074215.P6889582949752283943

namespace A074215

/-- `lt[A104714(xor(1, A104714(n))), 1]` -/
def P6889582949752283943.Spec : Prop :=
  ∀ n, (P6889582949752283943.a n : ℤ) = A074215 (n + 1)

end A074215

/-! ## A074215.P8961875696750971506

`record[A270313(n+1)]`
-/

namespace A074215.P8961875696750971506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074215.P8961875696750971506

namespace A074215

/-- `record[A270313(n+1)]` -/
def P8961875696750971506.Spec : Prop :=
  ∀ n, P8961875696750971506.a n = A074215 (n + 1)

end A074215

/-! ## A074215.P3734655287074817867

`eq[1, A083019(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074215

/-- `eq[1, A083019(n+1)]+1` -/
def P3734655287074817867.Spec : Prop :=
  ∀ n, (P3734655287074817867.a n : ℤ) = A074215 (n + 1)

theorem P3734655287074817867.correct : P3734655287074817867.Spec := by
  intro n
  simp only [A074215, Nat.add_sub_cancel]

end A074215

/-! ## A074215.P2962528263498342273

`lt[A104714(n), A158388(n)+1]`
-/

namespace A074215.P2962528263498342273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074215.P2962528263498342273

namespace A074215

/-- `lt[A104714(n), A158388(n)+1]` -/
def P2962528263498342273.Spec : Prop :=
  ∀ n, (P2962528263498342273.a n : ℤ) = A074215 (n + 1)

end A074215

/-! ## A074215.P5476935329639177435

`record[A028310(n+1)/A104714(n+1)]`
-/

namespace A074215.P5476935329639177435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A104714 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074215.P5476935329639177435

namespace A074215

/-- `record[A028310(n+1)/A104714(n+1)]` -/
def P5476935329639177435.Spec : Prop :=
  ∀ n, P5476935329639177435.a n = (A074215 (n + 1) : ℚ)

end A074215

/-! ## A074215.P3647077195970215164

`record[A008458(n)/A008458(A104714(n))]`
-/

namespace A074215.P3647077195970215164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008458 (A104714 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074215.P3647077195970215164

namespace A074215

/-- `record[A008458(n)/A008458(A104714(n))]` -/
def P3647077195970215164.Spec : Prop :=
  ∀ n, P3647077195970215164.a n = (A074215 (n + 1) : ℚ)

end A074215

/-! ## A074215.P17111181130435677697

`record[A008486(n)/A008486(A104714(n))]`
-/

namespace A074215.P17111181130435677697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A008486 (A104714 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074215.P17111181130435677697

namespace A074215

/-- `record[A008486(n)/A008486(A104714(n))]` -/
def P17111181130435677697.Spec : Prop :=
  ∀ n, P17111181130435677697.a n = (A074215 (n + 1) : ℚ)

end A074215

/-! ## A074215.P8848596655213656530

`record[A008574(n)/A008574(A104714(n))]`
-/

namespace A074215.P8848596655213656530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℚ) / (A008574 (A104714 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074215.P8848596655213656530

namespace A074215

/-- `record[A008574(n)/A008574(A104714(n))]` -/
def P8848596655213656530.Spec : Prop :=
  ∀ n, P8848596655213656530.a n = (A074215 (n + 1) : ℚ)

end A074215

/-! ## A074215.P7536831502876041417

`record[A028310(n/A104714(A028310(n)))]`
-/

namespace A074215.P7536831502876041417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (A104714 (A028310 n).toNat : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074215.P7536831502876041417

namespace A074215

/-- `record[A028310(n/A104714(A028310(n)))]` -/
def P7536831502876041417.Spec : Prop :=
  ∀ n, P7536831502876041417.a n = A074215 (n + 1)

end A074215

/-! ## A074215.P13363617647899611654

`record[A065033(2*n+1)/A104714(n+1)]`
-/

namespace A074215.P13363617647899611654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n + 1) : ℚ) / (A104714 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074215.P13363617647899611654

namespace A074215

/-- `record[A065033(2*n+1)/A104714(n+1)]` -/
def P13363617647899611654.Spec : Prop :=
  ∀ n, P13363617647899611654.a n = (A074215 (n + 1) : ℚ)

end A074215

/-! ## A074215.P271728875542551590

`filter[A037918(n+1), A011558(#)]`
-/

namespace A074215.P271728875542551590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A074215.P271728875542551590

namespace A074215

/-- `filter[A037918(n+1), A011558(#)]` -/
def P271728875542551590.Spec : Prop :=
  ∀ n, P271728875542551590.a n = A074215 (n + 1)

end A074215

/-! ## A074215.P9284509626906168363

`∩[A037918(n+1), A047201(n+1)]`
-/

namespace A074215.P9284509626906168363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074215.P9284509626906168363

namespace A074215

/-- `∩[A037918(n+1), A047201(n+1)]` -/
def P9284509626906168363.Spec : Prop :=
  ∀ n, (P9284509626906168363.a n : ℤ) = A074215 (n + 1)

end A074215

/-! ## A074215.P12814407628465842819

`∩[A037918(n+1), A382744(n+1)]`
-/

namespace A074215.P12814407628465842819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074215.P12814407628465842819

namespace A074215

/-- `∩[A037918(n+1), A382744(n+1)]` -/
def P12814407628465842819.Spec : Prop :=
  ∀ n, (P12814407628465842819.a n : ℤ) = A074215 (n + 1)

end A074215

/-! ## A074215.P282412875903472549

`eq[1, gcd(n, A000045(n))]`
-/

namespace A074215.P282412875903472549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000045 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074215.P282412875903472549

namespace A074215

/-- `eq[1, gcd(n, A000045(n))]` -/
def P282412875903472549.Spec : Prop :=
  ∀ n, (P282412875903472549.a n : ℤ) = A074215 (n + 1)

end A074215

/-! ## A074215.P2045545245153661021

`record[(n+1)/gcd(n+1, A000045(n+1))]`
-/

namespace A074215.P2045545245153661021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000045 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074215.P2045545245153661021

namespace A074215

/-- `record[(n+1)/gcd(n+1, A000045(n+1))]` -/
def P2045545245153661021.Spec : Prop :=
  ∀ n, P2045545245153661021.a n = (A074215 (n + 1) : ℚ)

end A074215

/-! ## A074215.P1945352357279055288

`comp[A353280(n+1)]`
-/

namespace A074215.P1945352357279055288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A074215.P1945352357279055288

namespace A074215

/-- `comp[A353280(n+1)]` -/
def P1945352357279055288.Spec : Prop :=
  ∀ n, (P1945352357279055288.a n : ℤ) = A074215 (n + 1)

end A074215

/-!
# A074216: Squares satisfying sigma(n)==0 (mod 3).

The programs for A074216, the canonical program `A074216.P13813814254964927906` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074216 has offset 1).

The definition of A074216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074216.P13813814254964927906

`A072864(n+1)²`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074216

/-- `A072864(n+1)²` -/
def P13813814254964927906.Spec : Prop :=
  ∀ n, P13813814254964927906.a n = A074216 (n + 1)

theorem P13813814254964927906.correct : P13813814254964927906.Spec := by
  intro n
  simp only [A074216, Nat.add_sub_cancel]

end A074216

/-! ## A074216.P1021114551849819604

`(eq[3, gcd(3, A035109(n))]+1)²`
-/

namespace A074216.P1021114551849819604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A035109 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 2

end

end A074216.P1021114551849819604

namespace A074216

/-- `(eq[3, gcd(3, A035109(n))]+1)²` -/
def P1021114551849819604.Spec : Prop :=
  ∀ n, (P1021114551849819604.a n : ℤ) = A074216 (n + 1)

end A074216

/-! ## A074216.P6130695553293593807

`A072864(n+1)^A001227(A020639(2*n+3))`
-/

namespace A074216.P6130695553293593807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072864 (n + 1) : ℚ) ^ (A001227 (A020639 (2 * n + 3)).toNat : ℤ)

end

end A074216.P6130695553293593807

namespace A074216

/-- `A072864(n+1)^A001227(A020639(2*n+3))` -/
def P6130695553293593807.Spec : Prop :=
  ∀ n, P6130695553293593807.a n = (A074216 (n + 1) : ℚ)

end A074216

/-! ## A074216.P9066441753997364251

`∩[A067051(n+1), n²]`
-/

namespace A074216.P9066441753997364251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A074216.P9066441753997364251

namespace A074216

/-- `∩[A067051(n+1), n²]` -/
def P9066441753997364251.Spec : Prop :=
  ∀ n, (P9066441753997364251.a n : ℤ) = A074216 (n + 1)

end A074216

/-! ## A074216.P5356653068752997160

`∩[n*n, A067051(n+2)]`
-/

namespace A074216.P5356653068752997160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074216.P5356653068752997160

namespace A074216

/-- `∩[n*n, A067051(n+2)]` -/
def P5356653068752997160.Spec : Prop :=
  ∀ n, (P5356653068752997160.a n : ℤ) = A074216 (n + 1)

end A074216

/-! ## A074216.P17640170434052762435

`A072864(n+1)^A001227(A002145(n+1))`
-/

namespace A074216.P17640170434052762435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072864 (n + 1) : ℚ) ^ (A001227 (A002145 (n + 1)).toNat : ℤ)

end

end A074216.P17640170434052762435

namespace A074216

/-- `A072864(n+1)^A001227(A002145(n+1))` -/
def P17640170434052762435.Spec : Prop :=
  ∀ n, P17640170434052762435.a n = (A074216 (n + 1) : ℚ)

end A074216

/-! ## A074216.P1960204725967838888

`(lt[A000203((n+1)²)%3, 1]+1)²`
-/

namespace A074216.P1960204725967838888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 1) ^ 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A074216.P1960204725967838888

namespace A074216

/-- `(lt[A000203((n+1)²)%3, 1]+1)²` -/
def P1960204725967838888.Spec : Prop :=
  ∀ n, (P1960204725967838888.a n : ℤ) = A074216 (n + 1)

end A074216

/-! ## A074216.P6166951734780628303

`lt[A000203((n-floor(acot(n)))²)%3, 1]²`
-/

namespace A074216.P6166951734780628303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (((n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ 2).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A074216.P6166951734780628303

namespace A074216

/-- `lt[A000203((n-floor(acot(n)))²)%3, 1]²` -/
def P6166951734780628303.Spec : Prop :=
  ∀ n, (P6166951734780628303.a n : ℤ) = A074216 (n + 1)

end A074216

/-! ## A074216.P12133478652811908500

`lt[A000203((C(2, n²)-n)²)%3, 1]²`
-/

namespace A074216.P12133478652811908500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (((Nat.choose 2 (n ^ 2) : ℤ) - (n : ℤ)) ^ 2).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A074216.P12133478652811908500

namespace A074216

/-- `lt[A000203((C(2, n²)-n)²)%3, 1]²` -/
def P12133478652811908500.Spec : Prop :=
  ∀ n, (P12133478652811908500.a n : ℤ) = A074216 (n + 1)

end A074216

/-! ## A074216.P9757767621565521694

`filter[A067051(n+1), A353816(#)]`
-/

namespace A074216.P9757767621565521694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A074216.P9757767621565521694

namespace A074216

/-- `filter[A067051(n+1), A353816(#)]` -/
def P9757767621565521694.Spec : Prop :=
  ∀ n, P9757767621565521694.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P6505486635090894732

`filter[A067051(n+1), A372574(#)]`
-/

namespace A074216.P6505486635090894732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A074216.P6505486635090894732

namespace A074216

/-- `filter[A067051(n+1), A372574(#)]` -/
def P6505486635090894732.Spec : Prop :=
  ∀ n, P6505486635090894732.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P6639356427526963649

`filter[A067051(n+1), A373136(#)]`
-/

namespace A074216.P6639356427526963649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A074216.P6639356427526963649

namespace A074216

/-- `filter[A067051(n+1), A373136(#)]` -/
def P6639356427526963649.Spec : Prop :=
  ∀ n, P6639356427526963649.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P18164787908594498338

`filter[A067051(n+1), A373585(#)]`
-/

namespace A074216.P18164787908594498338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A074216.P18164787908594498338

namespace A074216

/-- `filter[A067051(n+1), A373585(#)]` -/
def P18164787908594498338.Spec : Prop :=
  ∀ n, P18164787908594498338.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P11943364817776292680

`filter[A067051(n+1), A374107(#)]`
-/

namespace A074216.P11943364817776292680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A074216.P11943364817776292680

namespace A074216

/-- `filter[A067051(n+1), A374107(#)]` -/
def P11943364817776292680.Spec : Prop :=
  ∀ n, P11943364817776292680.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P3716379049553229987

`filter[A067051(n+1), A374113(#)]`
-/

namespace A074216.P3716379049553229987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A074216.P3716379049553229987

namespace A074216

/-- `filter[A067051(n+1), A374113(#)]` -/
def P3716379049553229987.Spec : Prop :=
  ∀ n, P3716379049553229987.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P15726257609719509528

`filter[A067051(n+1), A379952(#)]`
-/

namespace A074216.P15726257609719509528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A074216.P15726257609719509528

namespace A074216

/-- `filter[A067051(n+1), A379952(#)]` -/
def P15726257609719509528.Spec : Prop :=
  ∀ n, P15726257609719509528.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P6835303831813072557

`lt[A000203(A233583(n+1)²)%3, 1]²`
-/

namespace A074216.P6835303831813072557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A233583 (n + 1) ^ 2).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A074216.P6835303831813072557

namespace A074216

/-- `lt[A000203(A233583(n+1)²)%3, 1]²` -/
def P6835303831813072557.Spec : Prop :=
  ∀ n, (P6835303831813072557.a n : ℤ) = A074216 (n + 1)

end A074216

/-! ## A074216.P12005282446141117220

`filter[A067051(n+1), A035263(#)]`
-/

namespace A074216.P12005282446141117220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A074216.P12005282446141117220

namespace A074216

/-- `filter[A067051(n+1), A035263(#)]` -/
def P12005282446141117220.Spec : Prop :=
  ∀ n, P12005282446141117220.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P11270714331022602850

`filter[A067051(n+1), A065043(#)]`
-/

namespace A074216.P11270714331022602850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A074216.P11270714331022602850

namespace A074216

/-- `filter[A067051(n+1), A065043(#)]` -/
def P11270714331022602850.Spec : Prop :=
  ∀ n, P11270714331022602850.a n = A074216 (n + 1)

end A074216

/-! ## A074216.P16317732864406688174

`filter[A067051(n+1), A145377(#)]`
-/

namespace A074216.P16317732864406688174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145377 (f1 j).toNat = 1) n)

end

end A074216.P16317732864406688174

namespace A074216

/-- `filter[A067051(n+1), A145377(#)]` -/
def P16317732864406688174.Spec : Prop :=
  ∀ n, P16317732864406688174.a n = A074216 (n + 1)

end A074216

/-!
# A074217: Numbers k such that floor(k^Pi) is a prime.

The programs for A074217, there is no canonical definition to state claims against.
-/

/-! ## A074217.P13054754481637800251

`ceil(root(A074218(n+1), π))`
-/

namespace A074217.P13054754481637800251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074218 (n + 1) : ℝ) ^ (1 / Real.pi)⌉

end

end A074217.P13054754481637800251

/-! ## A074217.P11696479287603088706

`round(root(A074218(C(n+1, n)), π))`
-/

namespace A074217.P11696479287603088706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074218 (Nat.choose (n + 1) n) : ℝ) ^ (1 / Real.pi))

end

end A074217.P11696479287603088706

/-! ## A074217.P10916796057355812452

`round(root(A074218(((-1)^n)²+n), π))`
-/

namespace A074217.P10916796057355812452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074218 (((-1) ^ n) ^ 2 + (n : ℤ)).toNat : ℝ) ^ (1 / Real.pi))

end

end A074217.P10916796057355812452

/-! ## A074217.P5001805106783662857

`A000027(round(root(A074218(n+1), π)))`
-/

namespace A074217.P5001805106783662857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A074218 (n + 1) : ℝ) ^ (1 / Real.pi))).toNat

end

end A074217.P5001805106783662857

/-! ## A074217.P13472495360936616136

`A008683(4*(n+1))+round(root(A074218(n+1), π))`
-/

namespace A074217.P13472495360936616136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A074218 (n + 1) : ℝ) ^ (1 / Real.pi))

end

end A074217.P13472495360936616136

/-! ## A074217.P11396842932866977739

`A000041((n%2)^n)*round(root(A074218(n+1), π))`
-/

namespace A074217.P11396842932866977739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n % 2) ^ n) * SequenceMachineLib.roundAway ((A074218 (n + 1) : ℝ) ^ (1 / Real.pi))

end

end A074217.P11396842932866977739

/-! ## A074217.P3072128075671727862

`round(root(A074218(n+1), π))/A007318((n+2)%(n+1))`
-/

namespace A074217.P3072128075671727862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A074218 (n + 1) : ℝ) ^ (1 / Real.pi)) : ℚ) / (A007318 ((n + 2) % (n + 1)) : ℚ)

end

end A074217.P3072128075671727862

/-! ## A074217.P17116772157699665193

`round(root(A074218(n+1), π))*A014963(6*(n+1))`
-/

namespace A074217.P17116772157699665193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074218 (n + 1) : ℝ) ^ (1 / Real.pi)) * A014963 (6 * (n + 1))

end

end A074217.P17116772157699665193

/-! ## A074217.P945197218979282136

`round(root(A074218(n+1), π))%A000045(n+15)`
-/

namespace A074217.P945197218979282136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A074218 (n + 1) : ℝ) ^ (1 / Real.pi))) (A000045 (n + 15))

end

end A074217.P945197218979282136

/-! ## A074217.P14528688615727234278

`-A001478(round(root(A074218(n+1), π)))`
-/

namespace A074217.P14528688615727234278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001478 (SequenceMachineLib.roundAway ((A074218 (n + 1) : ℝ) ^ (1 / Real.pi))).toNat

end

end A074217.P14528688615727234278

/-!
# A074218: Primes of the form floor(k^Pi).

The programs for A074218, there is no canonical definition to state claims against.
-/

/-! ## A074218.P7294800252477579133

`A061294(A074217(n+1))`
-/

namespace A074218.P7294800252477579133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061294 (A074217 (n + 1)).toNat

end

end A074218.P7294800252477579133

/-! ## A074218.P13735284040751181279

`p?[floor(n^π)]`
-/

namespace A074218.P13735284040751181279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074218.P13735284040751181279

/-!
# A074219: Numbers k such that ceiling(k^Pi) is prime.

The programs for A074219, there is no canonical definition to state claims against.
-/

/-! ## A074219.P17679318504477787883

`floor(root(A074220(n+1), π))`
-/

namespace A074219.P17679318504477787883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074220 (n + 1) : ℝ) ^ (1 / Real.pi)⌋

end

end A074219.P17679318504477787883

/-! ## A074219.P640294296458774196

`round(root(A074220(2*n-n+1), π))`
-/

namespace A074219.P640294296458774196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074220 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℝ) ^ (1 / Real.pi))

end

end A074219.P640294296458774196

/-! ## A074219.P17504089077649932843

`A000027(round(root(A074220(n+1), π)))`
-/

namespace A074219.P17504089077649932843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A074220 (n + 1) : ℝ) ^ (1 / Real.pi))).toNat

end

end A074219.P17504089077649932843

/-! ## A074219.P3044880742155220130

`A008683(8*(n+1))+round(root(A074220(n+1), π))`
-/

namespace A074219.P3044880742155220130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + SequenceMachineLib.roundAway ((A074220 (n + 1) : ℝ) ^ (1 / Real.pi))

end

end A074219.P3044880742155220130

/-! ## A074219.P3473328359178032427

`round(root(A074220(n+1), π))%A000040(n+2)²`
-/

namespace A074219.P3473328359178032427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A074220 (n + 1) : ℝ) ^ (1 / Real.pi))) (A000040 (n + 2) ^ 2)

end

end A074219.P3473328359178032427

/-!
# A074220: Primes of the form ceiling(n^Pi).

The programs for A074220, there is no canonical definition to state claims against.
-/

/-! ## A074220.P565307014925649648

`ceil(A074219(n)^π)`
-/

namespace A074220.P565307014925649648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074219 n : ℝ) ^ Real.pi⌉

end

end A074220.P565307014925649648

/-! ## A074220.P12055034632105585613

`floor(A074219(n)^π-A008683(A084331(n+1)))`
-/

namespace A074220.P12055034632105585613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074219 n : ℝ) ^ Real.pi - (A008683 (A084331 (n + 1)).toNat : ℝ)⌋

end

end A074220.P12055034632105585613

/-! ## A074220.P9331179258258474602

`floor(A074219(n)^π-A008683(A060503(n+1)))`
-/

namespace A074220.P9331179258258474602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074219 n : ℝ) ^ Real.pi - (A008683 (A060503 (n + 1)).toNat : ℝ)⌋

end

end A074220.P9331179258258474602

/-!
# A074221: Numbers k such that floor(k^e) is prime.

The programs for A074221, there is no canonical definition to state claims against.
-/

/-! ## A074221.P9964905321058451303

`ceil(root(A074222(n+1), e))`
-/

namespace A074221.P9964905321058451303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1)⌉

end

end A074221.P9964905321058451303

/-! ## A074221.P10748368421994114380

`round(root(A074222(2*n+1-n), e))`
-/

namespace A074221.P10748368421994114380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074222 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℝ) ^ (1 / Real.exp 1))

end

end A074221.P10748368421994114380

/-! ## A074221.P1594551959556890302

`A000027(round(root(A074222(n+1), e)))`
-/

namespace A074221.P1594551959556890302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1))).toNat

end

end A074221.P1594551959556890302

/-! ## A074221.P4084801594762360375

`floor(root(A074222(n+1), e)+1/A000005(n+1))`
-/

namespace A074221.P4084801594762360375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1) + (1 / (A000005 (n + 1) : ℚ) : ℝ)⌋

end

end A074221.P4084801594762360375

/-! ## A074221.P996445999807654375

`A008683(4*(n+2))+round(root(A074222(n+1), e))`
-/

namespace A074221.P996445999807654375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 2)) + SequenceMachineLib.roundAway ((A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1))

end

end A074221.P996445999807654375

/-! ## A074221.P17540425421883554176

`A000007(n+1)+round(root(A074222(n+1), e))`
-/

namespace A074221.P17540425421883554176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1))

end

end A074221.P17540425421883554176

/-! ## A074221.P4094851913632758398

`floor(root(A074222(n+1), e))+A000040(n+2)%2`
-/

namespace A074221.P4094851913632758398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1)⌋ + Int.tmod (A000040 (n + 2)) 2

end

end A074221.P4094851913632758398

/-! ## A074221.P4047922825312755208

`round(root(A074222(n+1), e))%A001126(n+3)`
-/

namespace A074221.P4047922825312755208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1))) (A001126 (n + 3))

end

end A074221.P4047922825312755208

/-! ## A074221.P8048415903878407669

`round(root(A074222(n+1), e))*A059841(2*n)`
-/

namespace A074221.P8048415903878407669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1)) * A059841 (2 * n)

end

end A074221.P8048415903878407669

/-! ## A074221.P15336546644998026679

`round(root(A074222(n+1), e))*A014963(6*(n+1))`
-/

namespace A074221.P15336546644998026679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1)) * A014963 (6 * (n + 1))

end

end A074221.P15336546644998026679

/-!
# A074222: Primes of the form floor(n^e).

The programs for A074222, there is no canonical definition to state claims against.
-/

/-! ## A074222.P12530204893759707971

`floor(A074221(n)^e)`
-/

namespace A074222.P12530204893759707971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074221 n : ℝ) ^ (Real.exp 1)⌋

end

end A074222.P12530204893759707971

/-! ## A074222.P8103557740438221886

`A061293(A074221(n))`
-/

namespace A074222.P8103557740438221886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061293 (A074221 n).toNat

end

end A074222.P8103557740438221886

/-! ## A074222.P16965472491375159577

`ceil(A057428(A000601(n))+A074221(n)^e)`
-/

namespace A074222.P16965472491375159577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 (A000601 n).toNat : ℝ) + (A074221 n : ℝ) ^ (Real.exp 1)⌉

end

end A074222.P16965472491375159577

/-! ## A074222.P6096955916402434841

`p?[floor(n^e)]`
-/

namespace A074222.P6096955916402434841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074222.P6096955916402434841

/-! ## A074222.P4738934655115972341

`or(1, p?[A061293(n+1)])`
-/

namespace A074222.P4738934655115972341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A074222.P4738934655115972341

/-!
# A074223: Numbers n such that ceiling(n^e) is prime.

The programs for A074223, there is no canonical definition to state claims against.
-/

/-! ## A074223.P8808108087147940452

`floor(root(A074224(n+1), e))`
-/

namespace A074223.P8808108087147940452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074224 (n + 1) : ℝ) ^ (1 / Real.exp 1)⌋

end

end A074223.P8808108087147940452

/-! ## A074223.P3680911638732274470

`A000027(round(root(A074224(n+1), e)))`
-/

namespace A074223.P3680911638732274470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A074224 (n + 1) : ℝ) ^ (1 / Real.exp 1))).toNat

end

end A074223.P3680911638732274470

/-! ## A074223.P10113083869979970529

`round(root(A074224(n+1), e))%A001513(n)`
-/

namespace A074223.P10113083869979970529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A074224 (n + 1) : ℝ) ^ (1 / Real.exp 1))) (A001513 n)

end

end A074223.P10113083869979970529

/-! ## A074223.P13769669805180403827

`A000038(n+1)+round(root(A074224(n+1), e))`
-/

namespace A074223.P13769669805180403827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway ((A074224 (n + 1) : ℝ) ^ (1 / Real.exp 1))

end

end A074223.P13769669805180403827

/-! ## A074223.P4074194054054726799

`(1-A000007(n))!*round(root(A074224(n+1), e))`
-/

namespace A074223.P4074194054054726799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A000007 n).toNat : ℤ) * SequenceMachineLib.roundAway ((A074224 (n + 1) : ℝ) ^ (1 / Real.exp 1))

end

end A074223.P4074194054054726799

/-!
# A074224: Primes of the form ceiling(n^e).

The programs for A074224, there is no canonical definition to state claims against.
-/

/-! ## A074224.P1585428845148022742

`ceil(A074223(n+1)^e)`
-/

namespace A074224.P1585428845148022742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074223 (n + 1) : ℝ) ^ (Real.exp 1)⌉

end

end A074224.P1585428845148022742

/-! ## A074224.P16762219164043303048

`floor(A074223(n+1)^e-A033999(A131507(n)))`
-/

namespace A074224.P16762219164043303048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074223 (n + 1) : ℝ) ^ (Real.exp 1) - (A033999 (A131507 n).toNat : ℝ)⌋

end

end A074224.P16762219164043303048

/-! ## A074224.P4704084294476756172

`floor(A074223(n+1)^e-A107393(A151800(n)))`
-/

namespace A074224.P4704084294476756172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074223 (n + 1) : ℝ) ^ (Real.exp 1) - (A107393 (A151800 n).toNat : ℝ)⌋

end

end A074224.P4704084294476756172

/-! ## A074224.P4644396953240076691

`floor(A000035(2*n+1)+A074223(n+1)^e)`
-/

namespace A074224.P4644396953240076691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000035 (2 * n + 1) : ℝ) + (A074223 (n + 1) : ℝ) ^ (Real.exp 1)⌋

end

end A074224.P4644396953240076691

/-! ## A074224.P5869195675978711417

`floor(A054977(2*(n+1))+A074223(n+1)^e)`
-/

namespace A074224.P5869195675978711417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054977 (2 * (n + 1)) : ℝ) + (A074223 (n + 1) : ℝ) ^ (Real.exp 1)⌋

end

end A074224.P5869195675978711417

/-! ## A074224.P10865466435594092376

`floor(A074223(n+1)^e-A121758(A243836(n)+1))`
-/

namespace A074224.P10865466435594092376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074223 (n + 1) : ℝ) ^ (Real.exp 1) - (A121758 (A243836 n + 1).toNat : ℝ)⌋

end

end A074224.P10865466435594092376

/-!
# A074225: a(n) = n * Sum_{d|n} d*2^(d-1).

The programs for A074225, the canonical program `A074225.P9428135394359906713` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074225 has offset 1).

The definition of A074225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074225.P9428135394359906713

`(n+1)*∑{d}[n+1, #*2^(#-1)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074225

/-- `(n+1)*∑{d}[n+1, #*2^(#-1)]` -/
def P9428135394359906713.Spec : Prop :=
  ∀ n, P9428135394359906713.a n = (A074225 (n + 1) : ℚ)

end A074225

/-! ## A074225.P10637606175719781616

`(n+1)*A083413(n+1)`
-/

namespace A074225.P10637606175719781616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083413 (n + 1)

end

end A074225.P10637606175719781616

namespace A074225

/-- `(n+1)*A083413(n+1)` -/
def P10637606175719781616.Spec : Prop :=
  ∀ n, P10637606175719781616.a n = A074225 (n + 1)

end A074225

/-! ## A074225.P17886510645734484239

`∑{d}[n+1, (n+1)*A139756(#+1)]`
-/

namespace A074225.P17886510645734484239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A139756 (d + 1)

end

end A074225.P17886510645734484239

namespace A074225

/-- `∑{d}[n+1, (n+1)*A139756(#+1)]` -/
def P17886510645734484239.Spec : Prop :=
  ∀ n, P17886510645734484239.a n = A074225 (n + 1)

end A074225

/-! ## A074225.P14809067699380279195

`∑{d}[n+1, (n+1)*#*A000079(#-1)]`
-/

namespace A074225.P14809067699380279195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * ((d : ℤ) * A000079 (d - 1))

end

end A074225.P14809067699380279195

namespace A074225

/-- `∑{d}[n+1, (n+1)*#*A000079(#-1)]` -/
def P14809067699380279195.Spec : Prop :=
  ∀ n, P14809067699380279195.a n = A074225 (n + 1)

end A074225

/-! ## A074225.P8601946878190163342

`∑{d}[n+1, #*A014477((n+1)/#-1)]`
-/

namespace A074225.P8601946878190163342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A014477 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A074225.P8601946878190163342

namespace A074225

/-- `∑{d}[n+1, #*A014477((n+1)/#-1)]` -/
def P8601946878190163342.Spec : Prop :=
  ∀ n, P8601946878190163342.a n = A074225 (n + 1)

end A074225

/-!
# A074226: Numbers n such that Kronecker(3,n) = 1.

The programs for A074226, the canonical program `A074226.P15430199150975512513` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074226 has offset 1).

The definition of A074226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074226.P15430199150975512513

`eq[1, A317331(n+1)%3]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074226

/-- `eq[1, A317331(n+1)%3]+1` -/
def P15430199150975512513.Spec : Prop :=
  ∀ n, (P15430199150975512513.a n : ℤ) = A074226 (n + 1)

theorem P15430199150975512513.correct : P15430199150975512513.Spec := by
  intro n
  simp only [A074226, Nat.add_sub_cancel]

end A074226

/-! ## A074226.P7036514877328079382

`eq[1, A091338(n+1)]+1`
-/

namespace A074226.P7036514877328079382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074226.P7036514877328079382

namespace A074226

/-- `eq[1, A091338(n+1)]+1` -/
def P7036514877328079382.Spec : Prop :=
  ∀ n, (P7036514877328079382.a n : ℤ) = A074226 (n + 1)

end A074226

/-! ## A074226.P3103716029562974795

`eq[(n+2)%3, A038189(n)]`
-/

namespace A074226.P3103716029562974795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074226.P3103716029562974795

namespace A074226

/-- `eq[(n+2)%3, A038189(n)]` -/
def P3103716029562974795.Spec : Prop :=
  ∀ n, (P3103716029562974795.a n : ℤ) = A074226 (n + 1)

end A074226

/-! ## A074226.P11099092008317495594

`eq[A014710(n), A133838(a(n-1))]+1` with `a(0)=2`
-/

namespace A074226.P11099092008317495594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A133838 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074226.P11099092008317495594

namespace A074226

/-- `eq[A014710(n), A133838(a(n-1))]+1` -/
def P11099092008317495594.Spec : Prop :=
  ∀ n, (P11099092008317495594.a n : ℤ) = A074226 (n + 1)

end A074226

/-! ## A074226.P12811045190287522212

`eq[A106510(n), A112347(n)]`
-/

namespace A074226.P12811045190287522212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074226.P12811045190287522212

namespace A074226

/-- `eq[A106510(n), A112347(n)]` -/
def P12811045190287522212.Spec : Prop :=
  ∀ n, (P12811045190287522212.a n : ℤ) = A074226 (n + 1)

end A074226

/-! ## A074226.P8197556864909168255

`eq[A102283(n), A121238(n)]`
-/

namespace A074226.P8197556864909168255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074226.P8197556864909168255

namespace A074226

/-- `eq[A102283(n), A121238(n)]` -/
def P8197556864909168255.Spec : Prop :=
  ∀ n, (P8197556864909168255.a n : ℤ) = A074226 (n + 1)

end A074226

/-! ## A074226.P8825688977105087115

`eq[A128214(n), A322016(n)]`
-/

namespace A074226.P8825688977105087115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074226.P8825688977105087115

namespace A074226

/-- `eq[A128214(n), A322016(n)]` -/
def P8825688977105087115.Spec : Prop :=
  ∀ n, (P8825688977105087115.a n : ℤ) = A074226 (n + 1)

end A074226

/-!
# A074228: Even bases k for which the smallest (Fermat) pseudoprime greater than k has Moebius function mu = -1.

The programs for A074228, there is no canonical definition to state claims against.
-/

/-! ## A074228.P13985222253057026931

`∩[2*n, A074485(n+1)]`
-/

namespace A074228.P13985222253057026931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P13985222253057026931

/-! ## A074228.P1322006143817625428

`∩[A074485(n+1), A392181(n+1)]`
-/

namespace A074228.P1322006143817625428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P1322006143817625428

/-! ## A074228.P9798674851816778564

`∩[A074485(n+1), A076772(n)]`
-/

namespace A074228.P9798674851816778564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P9798674851816778564

/-! ## A074228.P7905717086573816507

`∩[A074485(n+1), A024995(n+2)]`
-/

namespace A074228.P7905717086573816507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024995 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P7905717086573816507

/-! ## A074228.P6212688709263299321

`∩[A074485(n+1), A076770(n+1)]`
-/

namespace A074228.P6212688709263299321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P6212688709263299321

/-! ## A074228.P1328814648264875286

`∩[A074485(n+1), A004277(n)]`
-/

namespace A074228.P1328814648264875286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P1328814648264875286

/-! ## A074228.P6604482510345729982

`∩[A074485(n+1), A005843(n)]`
-/

namespace A074228.P6604482510345729982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P6604482510345729982

/-! ## A074228.P1847737255889766841

`∩[A074485(n+1), A020739(n)]`
-/

namespace A074228.P1847737255889766841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P1847737255889766841

/-! ## A074228.P1878419696445603825

`∩[A074485(n+1), A020744(n)]`
-/

namespace A074228.P1878419696445603825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P1878419696445603825

/-! ## A074228.P4034457798136054290

`∩[A074485(n+1), A103517(n)]`
-/

namespace A074228.P4034457798136054290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P4034457798136054290

/-! ## A074228.P16045624642978236472

`∩[A074485(n+1), A163300(n+1)]`
-/

namespace A074228.P16045624642978236472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P16045624642978236472

/-! ## A074228.P4097556559477802653

`∩[A074485(n+1), A257637(n+1)]`
-/

namespace A074228.P4097556559477802653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P4097556559477802653

/-! ## A074228.P14808356857174420877

`∩[A074485(n+1), A299232(n+1)]`
-/

namespace A074228.P14808356857174420877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P14808356857174420877

/-! ## A074228.P15375371194899815059

`∩[A074485(n+1), A004275(n)]`
-/

namespace A074228.P15375371194899815059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P15375371194899815059

/-! ## A074228.P9719842828698599817

`∩[A074485(n+1), A316571(n+1)]`
-/

namespace A074228.P9719842828698599817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P9719842828698599817

/-! ## A074228.P15607291115009379971

`∩[A074485(n+1), A004271(n)]`
-/

namespace A074228.P15607291115009379971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P15607291115009379971

/-! ## A074228.P1447828262435585799

`∩[A074485(n+1), A004272(n)]`
-/

namespace A074228.P1447828262435585799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P1447828262435585799

/-! ## A074228.P4884760491364595827

`∩[A074485(n+1), A004279(n)]`
-/

namespace A074228.P4884760491364595827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074228.P4884760491364595827

/-! ## A074228.P6173567571004830976

`filter[A074485(n+1), A059841(#)]`
-/

namespace A074228.P6173567571004830976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A074228.P6173567571004830976

/-! ## A074228.P6287119861717511138

`filter[A074485(n+1), A135528(#)]`
-/

namespace A074228.P6287119861717511138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A074228.P6287119861717511138

/-!
# A074229: Numbers n such that Kronecker(6,n)==mu(gcd(6,n)).

The programs for A074229, the canonical program `A074229.P5266389775193057917` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074229 has offset 1).

The definition of A074229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074229.P5266389775193057917

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=23, a(4)=25`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074229

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P5266389775193057917.Spec : Prop :=
  ∀ n, P5266389775193057917.a n = A074229 (n + 1)

theorem P5266389775193057917.correct : P5266389775193057917.Spec := by
  intro n
  simp only [A074229, Nat.add_sub_cancel]

end A074229

/-! ## A074229.P17185599772628204429

`record[n^A322796(n)]`
-/

namespace A074229.P17185599772628204429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A322796 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074229.P17185599772628204429

namespace A074229

/-- `record[n^A322796(n)]` -/
def P17185599772628204429.Spec : Prop :=
  ∀ n, P17185599772628204429.a n = (A074229 (n + 1) : ℚ)

end A074229

/-! ## A074229.P15658233903311721411

`2*A072065(n+1)+1`
-/

namespace A074229.P15658233903311721411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072065 (n + 1) + 1

end

end A074229.P15658233903311721411

namespace A074229

/-- `2*A072065(n+1)+1` -/
def P15658233903311721411.Spec : Prop :=
  ∀ n, P15658233903311721411.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P950512175834973229

`∑[A161942(a(n-2)+8)]+n` with `a(0)=1, a(1)=3`
-/

namespace A074229.P950512175834973229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A161942 (f1 (n - 2) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A074229.P950512175834973229

namespace A074229

/-- `∑[A161942(a(n-2)+8)]+n` -/
def P950512175834973229.Spec : Prop :=
  ∀ n, P950512175834973229.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P5783204188291122670

`A074837(n+1)-A143988(n+1)`
-/

namespace A074229.P5783204188291122670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074837 (n + 1) - A143988 (n + 1)

end

end A074229.P5783204188291122670

namespace A074229

/-- `A074837(n+1)-A143988(n+1)` -/
def P5783204188291122670.Spec : Prop :=
  ∀ n, P5783204188291122670.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P11248653130824320302

`A042964(n+1)+A214863(n+1)-A133894(n+1)`
-/

namespace A074229.P11248653130824320302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1) + (A214863 (n + 1) - A133894 (n + 1))

end

end A074229.P11248653130824320302

namespace A074229

/-- `A042964(n+1)+A214863(n+1)-A133894(n+1)` -/
def P11248653130824320302.Spec : Prop :=
  ∀ n, P11248653130824320302.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P4827243731025855804

`∑[2^a(A177704(n+1)-1)]-A109613(n)` with `a(0)=2`
-/

namespace A074229.P4827243731025855804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 ^ f1 (A177704 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A109613 n

end

end A074229.P4827243731025855804

namespace A074229

/-- `∑[2^a(A177704(n+1)-1)]-A109613(n)` -/
def P4827243731025855804.Spec : Prop :=
  ∀ n, P4827243731025855804.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P10201434288712310119

`eq[A123726(n), A322796(n)]`
-/

namespace A074229.P10201434288712310119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074229.P10201434288712310119

namespace A074229

/-- `eq[A123726(n), A322796(n)]` -/
def P10201434288712310119.Spec : Prop :=
  ∀ n, (P10201434288712310119.a n : ℤ) = A074229 (n + 1)

end A074229

/-! ## A074229.P15773347535054172202

`eq[A057237(n+1), A322796(n)]`
-/

namespace A074229.P15773347535054172202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074229.P15773347535054172202

namespace A074229

/-- `eq[A057237(n+1), A322796(n)]` -/
def P15773347535054172202.Spec : Prop :=
  ∀ n, (P15773347535054172202.a n : ℤ) = A074229 (n + 1)

end A074229

/-! ## A074229.P4274186122937639121

`eq[A116891(n+1), A322796(n)]`
-/

namespace A074229.P4274186122937639121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074229.P4274186122937639121

namespace A074229

/-- `eq[A116891(n+1), A322796(n)]` -/
def P4274186122937639121.Spec : Prop :=
  ∀ n, (P4274186122937639121.a n : ℤ) = A074229 (n + 1)

end A074229

/-! ## A074229.P8057871715269327009

`eq[A135521(n+1), A322796(n)]`
-/

namespace A074229.P8057871715269327009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074229.P8057871715269327009

namespace A074229

/-- `eq[A135521(n+1), A322796(n)]` -/
def P8057871715269327009.Spec : Prop :=
  ∀ n, (P8057871715269327009.a n : ℤ) = A074229 (n + 1)

end A074229

/-! ## A074229.P10361127220650143883

`eq[A160198(n+1), A322796(n)]`
-/

namespace A074229.P10361127220650143883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074229.P10361127220650143883

namespace A074229

/-- `eq[A160198(n+1), A322796(n)]` -/
def P10361127220650143883.Spec : Prop :=
  ∀ n, (P10361127220650143883.a n : ℤ) = A074229 (n + 1)

end A074229

/-! ## A074229.P13165076717444264103

`eq[A160267(n+1), A322796(n)]`
-/

namespace A074229.P13165076717444264103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074229.P13165076717444264103

namespace A074229

/-- `eq[A160267(n+1), A322796(n)]` -/
def P13165076717444264103.Spec : Prop :=
  ∀ n, (P13165076717444264103.a n : ℤ) = A074229 (n + 1)

end A074229

/-! ## A074229.P2229055029705925781

`eq[A322796(n), A328578(n)]`
-/

namespace A074229.P2229055029705925781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074229.P2229055029705925781

namespace A074229

/-- `eq[A322796(n), A328578(n)]` -/
def P2229055029705925781.Spec : Prop :=
  ∀ n, (P2229055029705925781.a n : ℤ) = A074229 (n + 1)

end A074229

/-! ## A074229.P3227718013339351356

`2*A007494(A047551(n+1))+1`
-/

namespace A074229.P3227718013339351356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007494 (A047551 (n + 1)).toNat + 1

end

end A074229.P3227718013339351356

namespace A074229

/-- `2*A007494(A047551(n+1))+1` -/
def P3227718013339351356.Spec : Prop :=
  ∀ n, P3227718013339351356.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P16995120960024322763

`A007310(A047527(n+2))`
-/

namespace A074229.P16995120960024322763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A047527 (n + 2)).toNat

end

end A074229.P16995120960024322763

namespace A074229

/-- `A007310(A047527(n+2))` -/
def P16995120960024322763.Spec : Prop :=
  ∀ n, P16995120960024322763.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P14943992577603590323

`A007310(A047551(n+1)+1)`
-/

namespace A074229.P14943992577603590323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A047551 (n + 1) + 1).toNat

end

end A074229.P14943992577603590323

namespace A074229

/-- `A007310(A047551(n+1)+1)` -/
def P14943992577603590323.Spec : Prop :=
  ∀ n, P14943992577603590323.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P12815628303357191867

`A007310(A158459(n+3)+2*n)`
-/

namespace A074229.P12815628303357191867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A158459 (n + 3) + (2 * n : ℤ)).toNat

end

end A074229.P12815628303357191867

namespace A074229

/-- `A007310(A158459(n+3)+2*n)` -/
def P12815628303357191867.Spec : Prop :=
  ∀ n, P12815628303357191867.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P2758866877841776122

`A007310(A010873(A273669(n+2))+2*n)`
-/

namespace A074229.P2758866877841776122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A010873 (A273669 (n + 2)).toNat + (2 * n : ℤ)).toNat

end

end A074229.P2758866877841776122

namespace A074229

/-- `A007310(A010873(A273669(n+2))+2*n)` -/
def P2758866877841776122.Spec : Prop :=
  ∀ n, P2758866877841776122.a n = A074229 (n + 1)

end A074229

/-! ## A074229.P9980651088121768300

`eq[A050932(n), A322796(n)]`
-/

namespace A074229.P9980651088121768300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074229.P9980651088121768300

namespace A074229

/-- `eq[A050932(n), A322796(n)]` -/
def P9980651088121768300.Spec : Prop :=
  ∀ n, (P9980651088121768300.a n : ℤ) = A074229 (n + 1)

end A074229

/-!
# A074230: Numbers n such that A089509(n)=1.

The programs for A074230, the canonical program `A074230.P11228100867499027670` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074230 has offset 1).

The definition of A074230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074230.P6966905127382105203

`eq[1, A089509(n+1)]+1`
-/

namespace A074230.P6966905127382105203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074230.P6966905127382105203

namespace A074230

/-- `eq[1, A089509(n+1)]+1` -/
def P6966905127382105203.Spec : Prop :=
  ∀ n, (P6966905127382105203.a n : ℤ) = A074230 (n + 1)

end A074230

/-! ## A074230.P5302645778737336156

`record[A000027(n+1)*A089509(n+1)]`
-/

namespace A074230.P5302645778737336156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A089509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074230.P5302645778737336156

namespace A074230

/-- `record[A000027(n+1)*A089509(n+1)]` -/
def P5302645778737336156.Spec : Prop :=
  ∀ n, P5302645778737336156.a n = A074230 (n + 1)

end A074230

/-! ## A074230.P16425447648345389928

`record[A089509(A323404(n+1))*A323404(n+1)]`
-/

namespace A074230.P16425447648345389928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089509 (A323404 (n + 1)).toNat * A323404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074230.P16425447648345389928

namespace A074230

/-- `record[A089509(A323404(n+1))*A323404(n+1)]` -/
def P16425447648345389928.Spec : Prop :=
  ∀ n, P16425447648345389928.a n = A074230 (n + 1)

end A074230

/-! ## A074230.P11228100867499027670

`eq[A121238(n), A175629(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074230

/-- `eq[A121238(n), A175629(n)]` -/
def P11228100867499027670.Spec : Prop :=
  ∀ n, (P11228100867499027670.a n : ℤ) = A074230 (n + 1)

theorem P11228100867499027670.correct : P11228100867499027670.Spec := by
  intro n
  simp only [A074230, Nat.add_sub_cancel]

end A074230

/-! ## A074230.P16776674267596683969

`record[(n+1)*A089509(2*(n+1))]`
-/

namespace A074230.P16776674267596683969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089509 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074230.P16776674267596683969

namespace A074230

/-- `record[(n+1)*A089509(2*(n+1))]` -/
def P16776674267596683969.Spec : Prop :=
  ∀ n, P16776674267596683969.a n = A074230 (n + 1)

end A074230

/-! ## A074230.P15626814008835643814

`record[(n+1)^A089509(lcm(2, n+1))]`
-/

namespace A074230.P15626814008835643814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A089509 (Nat.lcm 2 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074230.P15626814008835643814

namespace A074230

/-- `record[(n+1)^A089509(lcm(2, n+1))]` -/
def P15626814008835643814.Spec : Prop :=
  ∀ n, P15626814008835643814.a n = (A074230 (n + 1) : ℚ)

end A074230

/-! ## A074230.P11424636518022134214

`record[(n+1)%(A089509(A005843(n+1))+n+1)]`
-/

namespace A074230.P11424636518022134214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A089509 (A005843 (n + 1)).toNat + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074230.P11424636518022134214

namespace A074230

/-- `record[(n+1)%(A089509(A005843(n+1))+n+1)]` -/
def P11424636518022134214.Spec : Prop :=
  ∀ n, P11424636518022134214.a n = A074230 (n + 1)

end A074230

/-! ## A074230.P7847318062972773144

`record[A089509(A126759(n))*A126759(n)]`
-/

namespace A074230.P7847318062972773144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089509 (A126759 n).toNat * A126759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074230.P7847318062972773144

namespace A074230

/-- `record[A089509(A126759(n))*A126759(n)]` -/
def P7847318062972773144.Spec : Prop :=
  ∀ n, P7847318062972773144.a n = A074230 (n + 1)

end A074230

/-!
# A074231: Numbers k such that Kronecker(8,k) = mu(gcd(8,k)).

The programs for A074231, the canonical program `A074231.P996734351749341935` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074231 has offset 1).

The definition of A074231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074231.P9080699590572935469

`2*n+2-cos(π*n/2)`
-/

namespace A074231.P9080699590572935469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 2 : ℝ) - Real.cos (Real.pi * (n : ℝ) / 2)

end

end A074231.P9080699590572935469

namespace A074231

/-- `2*n+2-cos(π*n/2)` -/
def P9080699590572935469.Spec : Prop :=
  ∀ n, P9080699590572935469.a n = (A074231 (n + 1) : ℝ)

end A074231

/-! ## A074231.P996734351749341935

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074231

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P996734351749341935.Spec : Prop :=
  ∀ n, P996734351749341935.a n = A074231 (n + 1)

theorem P996734351749341935.correct : P996734351749341935.Spec := by
  intro n
  simp only [A074231, Nat.add_sub_cancel]

end A074231

/-! ## A074231.P14265083130379860387

`∑[C(3, n%4)]`
-/

namespace A074231.P14265083130379860387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074231.P14265083130379860387

namespace A074231

/-- `∑[C(3, n%4)]` -/
def P14265083130379860387.Spec : Prop :=
  ∀ n, (P14265083130379860387.a n : ℤ) = A074231 (n + 1)

end A074231

/-! ## A074231.P11123503250473915131

`∑[C(3, and(3, n))]`
-/

namespace A074231.P11123503250473915131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074231.P11123503250473915131

namespace A074231

/-- `∑[C(3, and(3, n))]` -/
def P11123503250473915131.Spec : Prop :=
  ∀ n, (P11123503250473915131.a n : ℤ) = A074231 (n + 1)

end A074231

/-! ## A074231.P16955067523822176695

`∑[and(2, -n)+1]`
-/

namespace A074231.P16955067523822176695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074231.P16955067523822176695

namespace A074231

/-- `∑[and(2, -n)+1]` -/
def P16955067523822176695.Spec : Prop :=
  ∀ n, P16955067523822176695.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P11504660747270494798

`∑[or(1, and(3, -n))]`
-/

namespace A074231.P11504660747270494798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.land 3 (-(n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074231.P11504660747270494798

namespace A074231

/-- `∑[or(1, and(3, -n))]` -/
def P11504660747270494798.Spec : Prop :=
  ∀ n, P11504660747270494798.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P2874503330850855314

`∑[3^(∑[n]%2)]`
-/

namespace A074231.P2874503330850855314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074231.P2874503330850855314

namespace A074231

/-- `∑[3^(∑[n]%2)]` -/
def P2874503330850855314.Spec : Prop :=
  ∀ n, (P2874503330850855314.a n : ℤ) = A074231 (n + 1)

end A074231

/-! ## A074231.P6173136263726791113

`∑[3^and(1, ∑[n])]`
-/

namespace A074231.P6173136263726791113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074231.P6173136263726791113

namespace A074231

/-- `∑[3^and(1, ∑[n])]` -/
def P6173136263726791113.Spec : Prop :=
  ∀ n, (P6173136263726791113.a n : ℤ) = A074231 (n + 1)

end A074231

/-! ## A074231.P8349635792476190841

`∑[2-(-1)^∑[n]]`
-/

namespace A074231.P8349635792476190841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074231.P8349635792476190841

namespace A074231

/-- `∑[2-(-1)^∑[n]]` -/
def P8349635792476190841.Spec : Prop :=
  ∀ n, P8349635792476190841.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P5592807596935843131

`-∑[or(n-1, -3)]`
-/

namespace A074231.P5592807596935843131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074231.P5592807596935843131

namespace A074231

/-- `-∑[or(n-1, -3)]` -/
def P5592807596935843131.Spec : Prop :=
  ∀ n, P5592807596935843131.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P16170466227384335672

`or(2*n, and(3, n))+1`
-/

namespace A074231.P16170466227384335672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.land 3 n) + 1

end

end A074231.P16170466227384335672

namespace A074231

/-- `or(2*n, and(3, n))+1` -/
def P16170466227384335672.Spec : Prop :=
  ∀ n, (P16170466227384335672.a n : ℤ) = A074231 (n + 1)

end A074231

/-! ## A074231.P8685961892219832048

`Δ[n²]+and(3, gcd(4, n))`
-/

namespace A074231.P8685961892219832048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.land 3 (Nat.gcd 4 n) : ℤ)

end

end A074231.P8685961892219832048

namespace A074231

/-- `Δ[n²]+and(3, gcd(4, n))` -/
def P8685961892219832048.Spec : Prop :=
  ∀ n, P8685961892219832048.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P3648828098578762922

`a(n-4)+8` with `a(0)=1, a(1)=4, a(2)=7, a(3)=8`
-/

namespace A074231.P3648828098578762922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 7, 8] fun n a =>
  a (n - 4) + 8

end

end A074231.P3648828098578762922

namespace A074231

/-- `a(n-4)+8` -/
def P3648828098578762922.Spec : Prop :=
  ∀ n, (P3648828098578762922.a n : ℤ) = A074231 (n + 1)

end A074231

/-! ## A074231.P7157036232909221027

`4*n-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A074231.P7157036232909221027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (4 * n : ℤ) - a (n - 2)

end

end A074231.P7157036232909221027

namespace A074231

/-- `4*n-a(n-2)` -/
def P7157036232909221027.Spec : Prop :=
  ∀ n, P7157036232909221027.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P8640837732224295236

`abs(∑[3/a(n-2)])` with `a(0)=1, a(1)=3`
-/

namespace A074231.P8640837732224295236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A074231.P8640837732224295236

namespace A074231

/-- `abs(∑[3/a(n-2)])` -/
def P8640837732224295236.Spec : Prop :=
  ∀ n, P8640837732224295236.a n = (A074231 (n + 1) : ℚ)

end A074231

/-! ## A074231.P14646637558914054393

`floor(∑[4-a(n-2)])` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A074231.P14646637558914054393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074231.P14646637558914054393

namespace A074231

/-- `floor(∑[4-a(n-2)])` -/
def P14646637558914054393.Spec : Prop :=
  ∀ n, P14646637558914054393.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P7370338029573905329

`ceil(∑[3/a(n-2)])` with `a(0)=1, a(1)=3`
-/

namespace A074231.P7370338029573905329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 / f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A074231.P7370338029573905329

namespace A074231

/-- `ceil(∑[3/a(n-2)])` -/
def P7370338029573905329.Spec : Prop :=
  ∀ n, P7370338029573905329.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P12083946360180216066

`round(∑[3/a(n-2)])` with `a(0)=1, a(1)=3`
-/

namespace A074231.P12083946360180216066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 / f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074231.P12083946360180216066

namespace A074231

/-- `round(∑[3/a(n-2)])` -/
def P12083946360180216066.Spec : Prop :=
  ∀ n, P12083946360180216066.a n = A074231 (n + 1)

end A074231

/-! ## A074231.P2592602012784413292

`∑[and(2, n+1)]+1+n`
-/

namespace A074231.P2592602012784413292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A074231.P2592602012784413292

namespace A074231

/-- `∑[and(2, n+1)]+1+n` -/
def P2592602012784413292.Spec : Prop :=
  ∀ n, (P2592602012784413292.a n : ℤ) = A074231 (n + 1)

end A074231

/-! ## A074231.P4103077466679187709

`ogf((1+2x+x^2)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A074231.P4103077466679187709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, 2, -2, 1] n

end

end A074231.P4103077466679187709

namespace A074231

/-- `ogf((1+2x+x^2)/(1-2x+2x^2-2x^3+x^4))` -/
def P4103077466679187709.Spec : Prop :=
  ∀ n, P4103077466679187709.a n = A074231 (n + 1)

end A074231

/-!
# A074232: Positive numbers that are not 3 or 6 (mod 9).

The programs for A074232, the canonical program `A074232.P14046966601635823854` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074232 has offset 1).

The definition of A074232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074232.P10445793309415464318

`comp[record[lcm(3, n)]]`
-/

namespace A074232.P10445793309415464318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A074232.P10445793309415464318

namespace A074232

/-- `comp[record[lcm(3, n)]]` -/
def P10445793309415464318.Spec : Prop :=
  ∀ n, (P10445793309415464318.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P14046966601635823854

`∑[(∑[n]²%7)!]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074232

/-- `∑[(∑[n]²%7)!]` -/
def P14046966601635823854.Spec : Prop :=
  ∀ n, (P14046966601635823854.a n : ℤ) = A074232 (n + 1)

theorem P14046966601635823854.correct : P14046966601635823854.Spec := by
  intro n
  simp only [A074232, Nat.add_sub_cancel]

end A074232

/-! ## A074232.P993923448837850996

`comp[3*comp[3*(n+1)]]`
-/

namespace A074232.P993923448837850996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A074232.P993923448837850996

namespace A074232

/-- `comp[3*comp[3*(n+1)]]` -/
def P993923448837850996.Spec : Prop :=
  ∀ n, (P993923448837850996.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P16878488744333298708

`∑[gcd(7, 3-∑[n])%5]`
-/

namespace A074232.P16878488744333298708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (3 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074232.P16878488744333298708

namespace A074232

/-- `∑[gcd(7, 3-∑[n])%5]` -/
def P16878488744333298708.Spec : Prop :=
  ∀ n, (P16878488744333298708.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P7812461228883589480

`∑[ceil((∑[n]+2)%7/3)]`
-/

namespace A074232.P7812461228883589480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f2 j + 2) % 7 : ℕ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074232.P7812461228883589480

namespace A074232

/-- `∑[ceil((∑[n]+2)%7/3)]` -/
def P7812461228883589480.Spec : Prop :=
  ∀ n, P7812461228883589480.a n = A074232 (n + 1)

end A074232

/-! ## A074232.P2083317626571516285

`record[(C(n+3, 3)²+n)%(n+1)]+1`
-/

namespace A074232.P2083317626571516285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 ^ 2 + n) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A074232.P2083317626571516285

namespace A074232

/-- `record[(C(n+3, 3)²+n)%(n+1)]+1` -/
def P2083317626571516285.Spec : Prop :=
  ∀ n, (P2083317626571516285.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P9280651561020716761

`∑[2-A131372(n)²]`
-/

namespace A074232.P9280651561020716761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131372 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074232.P9280651561020716761

namespace A074232

/-- `∑[2-A131372(n)²]` -/
def P9280651561020716761.Spec : Prop :=
  ∀ n, P9280651561020716761.a n = A074232 (n + 1)

end A074232

/-! ## A074232.P11042239138614382878

`∑[1-∑[A238468(n)]]`
-/

namespace A074232.P11042239138614382878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074232.P11042239138614382878

namespace A074232

/-- `∑[1-∑[A238468(n)]]` -/
def P11042239138614382878.Spec : Prop :=
  ∀ n, P11042239138614382878.a n = A074232 (n + 1)

end A074232

/-! ## A074232.P15805398276920929974

`∑[2-A098457(n+1)]`
-/

namespace A074232.P15805398276920929974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A098457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074232.P15805398276920929974

namespace A074232

/-- `∑[2-A098457(n+1)]` -/
def P15805398276920929974.Spec : Prop :=
  ∀ n, P15805398276920929974.a n = A074232 (n + 1)

end A074232

/-! ## A074232.P4944266390526124601

`∑[abs(∑[A234045(n)])+1]`
-/

namespace A074232.P4944266390526124601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074232.P4944266390526124601

namespace A074232

/-- `∑[abs(∑[A234045(n)])+1]` -/
def P4944266390526124601.Spec : Prop :=
  ∀ n, P4944266390526124601.a n = A074232 (n + 1)

end A074232

/-! ## A074232.P15904684650409491312

`comp[A047348(n+1)+n]+1`
-/

namespace A074232.P15904684650409491312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047348 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A074232.P15904684650409491312

namespace A074232

/-- `comp[A047348(n+1)+n]+1` -/
def P15904684650409491312.Spec : Prop :=
  ∀ n, (P15904684650409491312.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P16657074959844741279

`∑[A007318(∑[A175629(n)]²)]`
-/

namespace A074232.P16657074959844741279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074232.P16657074959844741279

namespace A074232

/-- `∑[A007318(∑[A175629(n)]²)]` -/
def P16657074959844741279.Spec : Prop :=
  ∀ n, P16657074959844741279.a n = A074232 (n + 1)

end A074232

/-! ## A074232.P9774844647550954803

`∑[A057359(∑[A175629(n)])+1]`
-/

namespace A074232.P9774844647550954803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074232.P9774844647550954803

namespace A074232

/-- `∑[A057359(∑[A175629(n)])+1]` -/
def P9774844647550954803.Spec : Prop :=
  ∀ n, P9774844647550954803.a n = A074232 (n + 1)

end A074232

/-! ## A074232.P10532696019738432614

`∪[A056991(n+1), A016789(n)]`
-/

namespace A074232.P10532696019738432614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074232.P10532696019738432614

namespace A074232

/-- `∪[A056991(n+1), A016789(n)]` -/
def P10532696019738432614.Spec : Prop :=
  ∀ n, (P10532696019738432614.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P6021930974852668910

`∪[A028837(n+1), A138671(n)]`
-/

namespace A074232.P6021930974852668910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074232.P6021930974852668910

namespace A074232

/-- `∪[A028837(n+1), A138671(n)]` -/
def P6021930974852668910.Spec : Prop :=
  ∀ n, (P6021930974852668910.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P17621075158917094762

`∪[A056991(n+1), A138671(n)]`
-/

namespace A074232.P17621075158917094762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074232.P17621075158917094762

namespace A074232

/-- `∪[A056991(n+1), A138671(n)]` -/
def P17621075158917094762.Spec : Prop :=
  ∀ n, (P17621075158917094762.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P2461703226401639472

`∪[A001651(n+1), A301291(n)]`
-/

namespace A074232.P2461703226401639472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074232.P2461703226401639472

namespace A074232

/-- `∪[A001651(n+1), A301291(n)]` -/
def P2461703226401639472.Spec : Prop :=
  ∀ n, (P2461703226401639472.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P15150575146604600200

`∪[A001651(n+1), A301293(n)]`
-/

namespace A074232.P15150575146604600200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074232.P15150575146604600200

namespace A074232

/-- `∪[A001651(n+1), A301293(n)]` -/
def P15150575146604600200.Spec : Prop :=
  ∀ n, (P15150575146604600200.a n : ℤ) = A074232 (n + 1)

end A074232

/-! ## A074232.P4392821064158895167

`∪[A007417(n+1), A301291(n)]`
-/

namespace A074232.P4392821064158895167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074232.P4392821064158895167

namespace A074232

/-- `∪[A007417(n+1), A301291(n)]` -/
def P4392821064158895167.Spec : Prop :=
  ∀ n, (P4392821064158895167.a n : ℤ) = A074232 (n + 1)

end A074232

/-!
# A074233: Numbers whose base-4 and base-5 representations are permutations of the same multiset of digits.

The programs for A074233, there is no canonical definition to state claims against.
-/

/-! ## A074233.P6283182044918442068

`eq[A319722(A020654(n+1)), A319722(n)]`
-/

namespace A074233.P6283182044918442068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 (A020654 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074233.P6283182044918442068

/-! ## A074233.P9239760858757668246

`eq[A319722(A020655(n+1)-1), A319722(n)]`
-/

namespace A074233.P9239760858757668246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 (A020655 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074233.P9239760858757668246

/-!
# A074235: Numbers that cannot be a long leg of an integer right triangle.

The programs for A074235, there is no canonical definition to state claims against.
-/

/-! ## A074235.P5583912426744641795

`lt[A056137(n+1), 1]+1`
-/

namespace A074235.P5583912426744641795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056137 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A074235.P5583912426744641795

/-! ## A074235.P923401443316198692

`eq[1, A227481(n+1)]+1`
-/

namespace A074235.P923401443316198692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074235.P923401443316198692

/-! ## A074235.P9376440934988134843

`eq[A010153(n), A227481(n)]`
-/

namespace A074235.P9376440934988134843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P9376440934988134843

/-! ## A074235.P17707392340692597767

`eq[A010194(n), A227481(n)]`
-/

namespace A074235.P17707392340692597767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P17707392340692597767

/-! ## A074235.P15256921963500280567

`eq[A010195(n), A227481(n)]`
-/

namespace A074235.P15256921963500280567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P15256921963500280567

/-! ## A074235.P570072464482205216

`eq[A040200(n), A227481(n)]`
-/

namespace A074235.P570072464482205216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P570072464482205216

/-! ## A074235.P7577882815746768825

`eq[A040294(n), A227481(n)]`
-/

namespace A074235.P7577882815746768825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040294 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P7577882815746768825

/-! ## A074235.P11146950092853309342

`eq[A040406(n), A227481(n)]`
-/

namespace A074235.P11146950092853309342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040406 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P11146950092853309342

/-! ## A074235.P11001579670551443560

`eq[A040536(n), A227481(n)]`
-/

namespace A074235.P11001579670551443560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P11001579670551443560

/-! ## A074235.P1962630464315512371

`eq[A040684(n), A227481(n)]`
-/

namespace A074235.P1962630464315512371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P1962630464315512371

/-! ## A074235.P15757680243971902625

`eq[A040850(n), A227481(n)]`
-/

namespace A074235.P15757680243971902625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P15757680243971902625

/-! ## A074235.P5544762924925642763

`eq[A040909(n), A227481(n)]`
-/

namespace A074235.P5544762924925642763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P5544762924925642763

/-! ## A074235.P14854955681437113906

`eq[A054977(n), A227481(n)]`
-/

namespace A074235.P14854955681437113906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P14854955681437113906

/-! ## A074235.P14246288039107293223

`eq[A057427(n), A227481(n)]`
-/

namespace A074235.P14246288039107293223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P14246288039107293223

/-! ## A074235.P2751334455387809065

`eq[A088440(n), A227481(n)]`
-/

namespace A074235.P2751334455387809065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P2751334455387809065

/-! ## A074235.P9248263452849572674

`eq[A158388(n), A227481(n)]`
-/

namespace A074235.P9248263452849572674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P9248263452849572674

/-! ## A074235.P10119828858646604803

`eq[A166486(n), A227481(n)]`
-/

namespace A074235.P10119828858646604803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P10119828858646604803

/-! ## A074235.P11594128681354806783

`eq[A168185(n), A227481(n)]`
-/

namespace A074235.P11594128681354806783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P11594128681354806783

/-! ## A074235.P7406317462663686089

`eq[A010130(n)², A227481(n)]`
-/

namespace A074235.P7406317462663686089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P7406317462663686089

/-! ## A074235.P10648533179653975839

`eq[A040329(n)², A227481(n)]`
-/

namespace A074235.P10648533179653975839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040329 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074235.P10648533179653975839

/-!
# A074236: Numbers that are the long leg of some integer right triangle and the hypotenuse of some other integer right triangle.

The programs for A074236, there is no canonical definition to state claims against.
-/

/-! ## A074236.P13019107260803050972

`∩[lt[0, A056137(n+1)]+1, A009003(n+1)]`
-/

namespace A074236.P13019107260803050972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056137 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A074236.P13019107260803050972

/-! ## A074236.P12040446032042790510

`∩[A009003(n+1), A009023(n+1)]`
-/

namespace A074236.P12040446032042790510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074236.P12040446032042790510

/-! ## A074236.P8618340479781525752

`∩[lt[1, A227481(n)], A009003(n+1)]`
-/

namespace A074236.P8618340479781525752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A074236.P8618340479781525752

/-! ## A074236.P6933058447714562412

`A092671(lt[A179162(n+1), A093305(n+1)])`
-/

namespace A074236.P6933058447714562412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074236.P6933058447714562412

/-!
# A074239: Related to cumulative number of non-twin primes.

The programs for A074239, the canonical program `A074239.P15542470158088435368` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074239 has offset 0).

The definition of A074239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074239.P15542470158088435368

`∑[A106002(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074239

/-- `∑[A106002(n+1)]` -/
def P15542470158088435368.Spec : Prop :=
  ∀ n, P15542470158088435368.a n = A074239 n

theorem P15542470158088435368.correct : P15542470158088435368.Spec := by
  intro n
  simp only [A074239]

end A074239

/-! ## A074239.P16376118709093926361

`n-A082462(n+1)`
-/

namespace A074239.P16376118709093926361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082462 (n + 1)

end

end A074239.P16376118709093926361

namespace A074239

/-- `n-A082462(n+1)` -/
def P16376118709093926361.Spec : Prop :=
  ∀ n, P16376118709093926361.a n = A074239 n

end A074239

/-! ## A074239.P915628361054569380

`∑[floor(atan(A046933(n+1)))]`
-/

namespace A074239.P915628361054569380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A046933 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P915628361054569380

namespace A074239

/-- `∑[floor(atan(A046933(n+1)))]` -/
def P915628361054569380.Spec : Prop :=
  ∀ n, P915628361054569380.a n = A074239 n

end A074239

/-! ## A074239.P1746517269402267339

`∑[floor(atan(A339270(n+1)))]`
-/

namespace A074239.P1746517269402267339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A339270 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P1746517269402267339

namespace A074239

/-- `∑[floor(atan(A339270(n+1)))]` -/
def P1746517269402267339.Spec : Prop :=
  ∀ n, P1746517269402267339.a n = A074239 n

end A074239

/-! ## A074239.P8592086520164440132

`∑[char[A049579(n+1)-1]]`
-/

namespace A074239.P8592086520164440132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049579 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P8592086520164440132

namespace A074239

/-- `∑[char[A049579(n+1)-1]]` -/
def P8592086520164440132.Spec : Prop :=
  ∀ n, (P8592086520164440132.a n : ℤ) = A074239 n

end A074239

/-! ## A074239.P317866639496400589

`∑[char[lt[2, A001223(n+1)]]]`
-/

namespace A074239.P317866639496400589
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P317866639496400589

namespace A074239

/-- `∑[char[lt[2, A001223(n+1)]]]` -/
def P317866639496400589.Spec : Prop :=
  ∀ n, (P317866639496400589.a n : ℤ) = A074239 n

end A074239

/-! ## A074239.P14847188251471279105

`∑[char[lt[4, A167770(n+1)]]]`
-/

namespace A074239.P14847188251471279105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167770 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P14847188251471279105

namespace A074239

/-- `∑[char[lt[4, A167770(n+1)]]]` -/
def P14847188251471279105.Spec : Prop :=
  ∀ n, (P14847188251471279105.a n : ℤ) = A074239 n

end A074239

/-! ## A074239.P10288450868810286867

`n-∑[char[A155752(n+1)]]`
-/

namespace A074239.P10288450868810286867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074239.P10288450868810286867

namespace A074239

/-- `n-∑[char[A155752(n+1)]]` -/
def P10288450868810286867.Spec : Prop :=
  ∀ n, P10288450868810286867.a n = A074239 n

end A074239

/-! ## A074239.P5016671678305049321

`∑[A091247(A001223(n+1))]`
-/

namespace A074239.P5016671678305049321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P5016671678305049321

namespace A074239

/-- `∑[A091247(A001223(n+1))]` -/
def P5016671678305049321.Spec : Prop :=
  ∀ n, P5016671678305049321.a n = A074239 n

end A074239

/-! ## A074239.P1903849940125884777

`∑[A014306(A038702(n+2))]`
-/

namespace A074239.P1903849940125884777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A038702 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P1903849940125884777

namespace A074239

/-- `∑[A014306(A038702(n+2))]` -/
def P1903849940125884777.Spec : Prop :=
  ∀ n, P1903849940125884777.a n = A074239 n

end A074239

/-! ## A074239.P8980523230006622676

`A005171(A046933(n+1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A074239.P8980523230006622676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005171 (A046933 (n + 1) + 1).toNat + a (n - 1)

end

end A074239.P8980523230006622676

namespace A074239

/-- `A005171(A046933(n+1)+1)+a(n-1)` -/
def P8980523230006622676.Spec : Prop :=
  ∀ n, P8980523230006622676.a n = A074239 n

end A074239

/-! ## A074239.P6207556440253531230

`n-∑[A062301(n+2)]`
-/

namespace A074239.P6207556440253531230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P6207556440253531230

namespace A074239

/-- `n-∑[A062301(n+2)]` -/
def P6207556440253531230.Spec : Prop :=
  ∀ n, P6207556440253531230.a n = A074239 n

end A074239

/-! ## A074239.P13728246608772475742

`∑[1-A080339(Δ[A000040(n+1)])]`
-/

namespace A074239.P13728246608772475742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080339 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P13728246608772475742

namespace A074239

/-- `∑[1-A080339(Δ[A000040(n+1)])]` -/
def P13728246608772475742.Spec : Prop :=
  ∀ n, P13728246608772475742.a n = A074239 n

end A074239

/-! ## A074239.P16511175295146306191

`n-∑[A010051(Δ[A000040(n+1)])]`
-/

namespace A074239.P16511175295146306191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P16511175295146306191

namespace A074239

/-- `n-∑[A010051(Δ[A000040(n+1)])]` -/
def P16511175295146306191.Spec : Prop :=
  ∀ n, P16511175295146306191.a n = A074239 n

end A074239

/-! ## A074239.P13903932079021725606

`n-∑[val(A000040(Δ[A000040(n+1)]), 3)]`
-/

namespace A074239.P13903932079021725606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (f2 (n + 1) - f2 n).toNat).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074239.P13903932079021725606

namespace A074239

/-- `n-∑[val(A000040(Δ[A000040(n+1)]), 3)]` -/
def P13903932079021725606.Spec : Prop :=
  ∀ n, P13903932079021725606.a n = A074239 n

end A074239

/-! ## A074239.P6029545945534792953

`n-A071538(Δ[A007504(n)])`
-/

namespace A074239.P6029545945534792953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071538 (f1 (n + 1) - f1 n).toNat

end

end A074239.P6029545945534792953

namespace A074239

/-- `n-A071538(Δ[A007504(n)])` -/
def P6029545945534792953.Spec : Prop :=
  ∀ n, P6029545945534792953.a n = A074239 n

end A074239

/-! ## A074239.P3680405240448404815

`n-A071538(A000040(n+1))`
-/

namespace A074239.P3680405240448404815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071538 (A000040 (n + 1)).toNat

end

end A074239.P3680405240448404815

namespace A074239

/-- `n-A071538(A000040(n+1))` -/
def P3680405240448404815.Spec : Prop :=
  ∀ n, P3680405240448404815.a n = A074239 n

end A074239

/-! ## A074239.P13504737262676589396

`n-A071538(A006005(n+1))`
-/

namespace A074239.P13504737262676589396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071538 (A006005 (n + 1)).toNat

end

end A074239.P13504737262676589396

namespace A074239

/-- `n-A071538(A006005(n+1))` -/
def P13504737262676589396.Spec : Prop :=
  ∀ n, P13504737262676589396.a n = A074239 n

end A074239

/-! ## A074239.P843608212988916055

`n-A071538(A055670(n+1))`
-/

namespace A074239.P843608212988916055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071538 (A055670 (n + 1)).toNat

end

end A074239.P843608212988916055

namespace A074239

/-- `n-A071538(A055670(n+1))` -/
def P843608212988916055.Spec : Prop :=
  ∀ n, P843608212988916055.a n = A074239 n

end A074239

/-! ## A074239.P2672036788511274531

`n-A071538(A078444(n+1))`
-/

namespace A074239.P2672036788511274531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071538 (A078444 (n + 1)).toNat

end

end A074239.P2672036788511274531

namespace A074239

/-- `n-A071538(A078444(n+1))` -/
def P2672036788511274531.Spec : Prop :=
  ∀ n, P2672036788511274531.a n = A074239 n

end A074239

/-!
# A074241: Numbers n such that phi(n+1) = reverse(phi(n)).

The programs for A074241, there is no canonical definition to state claims against.
-/

/-! ## A074241.P2819673267279693884

`A075475(∑[A009998(n)!])`
-/

namespace A074241.P2819673267279693884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A009998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075475 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074241.P2819673267279693884

/-! ## A074241.P14467584092035211852

`A075475(∑[A137570(n)!])`
-/

namespace A074241.P14467584092035211852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A137570 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075475 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074241.P14467584092035211852

/-! ## A074241.P8702065254857525935

`A075475(∑[A176129(n)!])`
-/

namespace A074241.P8702065254857525935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A176129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075475 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074241.P8702065254857525935

/-!
# A074243: Numbers n such that every integer has a cube root mod n.

The programs for A074243, the canonical program `A074243.P6098293746356971239` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074243 has offset 1).

The definition of A074243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074243.P2355101721217336840

`filter[A088232(n+1), A008966(#)]`
-/

namespace A074243.P2355101721217336840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A074243.P2355101721217336840

namespace A074243

/-- `filter[A088232(n+1), A008966(#)]` -/
def P2355101721217336840.Spec : Prop :=
  ∀ n, P2355101721217336840.a n = A074243 (n + 1)

end A074243

/-! ## A074243.P6098293746356971239

`filter[A088232(n+1), A353559(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A074243

/-- `filter[A088232(n+1), A353559(#)]` -/
def P6098293746356971239.Spec : Prop :=
  ∀ n, P6098293746356971239.a n = A074243 (n + 1)

theorem P6098293746356971239.correct : P6098293746356971239.Spec := by
  intro n
  simp only [A074243, Nat.add_sub_cancel]

end A074243

/-! ## A074243.P3392178517079957681

`∩[A005117(n+1), A088232(n+1)]`
-/

namespace A074243.P3392178517079957681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074243.P3392178517079957681

namespace A074243

/-- `∩[A005117(n+1), A088232(n+1)]` -/
def P3392178517079957681.Spec : Prop :=
  ∀ n, (P3392178517079957681.a n : ℤ) = A074243 (n + 1)

end A074243

/-! ## A074243.P17421424877727352005

`∩[A088232(n+1), A348499(n+1)]`
-/

namespace A074243.P17421424877727352005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074243.P17421424877727352005

namespace A074243

/-- `∩[A088232(n+1), A348499(n+1)]` -/
def P17421424877727352005.Spec : Prop :=
  ∀ n, (P17421424877727352005.a n : ℤ) = A074243 (n + 1)

end A074243

/-! ## A074243.P191341690408322919

`∩[A088232(n+1), A348506(n+1)]`
-/

namespace A074243.P191341690408322919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074243.P191341690408322919

namespace A074243

/-- `∩[A088232(n+1), A348506(n+1)]` -/
def P191341690408322919.Spec : Prop :=
  ∀ n, (P191341690408322919.a n : ℤ) = A074243 (n + 1)

end A074243

/-! ## A074243.P17533886087963732260

`filter[A230780(n+1), A008966(#)]`
-/

namespace A074243.P17533886087963732260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A074243.P17533886087963732260

namespace A074243

/-- `filter[A230780(n+1), A008966(#)]` -/
def P17533886087963732260.Spec : Prop :=
  ∀ n, P17533886087963732260.a n = A074243 (n + 1)

end A074243

/-! ## A074243.P13161726213371392598

`∩[A005117(n+1), A230780(n+1)]`
-/

namespace A074243.P13161726213371392598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074243.P13161726213371392598

namespace A074243

/-- `∩[A005117(n+1), A230780(n+1)]` -/
def P13161726213371392598.Spec : Prop :=
  ∀ n, (P13161726213371392598.a n : ℤ) = A074243 (n + 1)

end A074243

/-! ## A074243.P704446347933011238

`∩[A088232(n+1), A193303(n+1)]`
-/

namespace A074243.P704446347933011238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074243.P704446347933011238

namespace A074243

/-- `∩[A088232(n+1), A193303(n+1)]` -/
def P704446347933011238.Spec : Prop :=
  ∀ n, (P704446347933011238.a n : ℤ) = A074243 (n + 1)

end A074243

/-! ## A074243.P13684404971890508919

`record[A046530(n+1)]`
-/

namespace A074243.P13684404971890508919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074243.P13684404971890508919

namespace A074243

/-- `record[A046530(n+1)]` -/
def P13684404971890508919.Spec : Prop :=
  ∀ n, P13684404971890508919.a n = A074243 (n + 1)

end A074243

/-! ## A074243.P4459230706557126979

`record[A085312(n+1)]`
-/

namespace A074243.P4459230706557126979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074243.P4459230706557126979

namespace A074243

/-- `record[A085312(n+1)]` -/
def P4459230706557126979.Spec : Prop :=
  ∀ n, P4459230706557126979.a n = A074243 (n + 1)

end A074243

/-! ## A074243.P14708104622830909882

`record[1-A257301(n+1)+n]`
-/

namespace A074243.P14708104622830909882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A257301 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074243.P14708104622830909882

namespace A074243

/-- `record[1-A257301(n+1)+n]` -/
def P14708104622830909882.Spec : Prop :=
  ∀ n, P14708104622830909882.a n = A074243 (n + 1)

end A074243

/-! ## A074243.P18013679581472748305

`record[A007947(lt[A170824(n+1), 2]+1)]`
-/

namespace A074243.P18013679581472748305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074243.P18013679581472748305

namespace A074243

/-- `record[A007947(lt[A170824(n+1), 2]+1)]` -/
def P18013679581472748305.Spec : Prop :=
  ∀ n, P18013679581472748305.a n = A074243 (n + 1)

end A074243

/-! ## A074243.P15631406649217928969

`record[A007947(n+1)/A170824(n+1)]`
-/

namespace A074243.P15631406649217928969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A170824 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074243.P15631406649217928969

namespace A074243

/-- `record[A007947(n+1)/A170824(n+1)]` -/
def P15631406649217928969.Spec : Prop :=
  ∀ n, P15631406649217928969.a n = (A074243 (n + 1) : ℚ)

end A074243

/-! ## A074243.P12186026681689151632

`A192419(a(n-1)+1)` with `a(0)=1`
-/

namespace A074243.P12186026681689151632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192419 (a (n - 1) + 1).toNat

end

end A074243.P12186026681689151632

namespace A074243

/-- `A192419(a(n-1)+1)` -/
def P12186026681689151632.Spec : Prop :=
  ∀ n, P12186026681689151632.a n = A074243 (n + 1)

end A074243

/-!
# A074244: Numbers k such that phi(k) is a harmonic number.

The programs for A074244, there is no canonical definition to state claims against.
-/

/-! ## A074244.P15971093721484895779

`eq[1, A349474(A000010(n+1))]+1`
-/

namespace A074244.P15971093721484895779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074244.P15971093721484895779

/-!
# A074245: Numbers k such that sigma(k) is a harmonic number.

The programs for A074245, there is no canonical definition to state claims against.
-/

/-! ## A074245.P3717147326056536350

`lt[A324122(A000203(n+1)), 1]+1`
-/

namespace A074245.P3717147326056536350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A074245.P3717147326056536350

/-!
# A074246: Triangle of coefficients, read by rows, where the n-th row forms the polynomial P(n,x) = {Sum_{k=1..n} 1/(k+x)}*{Product_{k=1..n} (k+x)}.

The programs for A074246, there is no canonical definition to state claims against.
-/

/-! ## A074246.P670033226258663426

`A002260(n+1)*A130534(∑[A035214(n)])`
-/

namespace A074246.P670033226258663426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130534 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074246.P670033226258663426

/-! ## A074246.P12092491172862495829

`A002260(n+1)*A130534(A014132(n+1))`
-/

namespace A074246.P12092491172862495829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130534 (A014132 (n + 1)).toNat

end

end A074246.P12092491172862495829

/-! ## A074246.P10250976048428720125

`abs(A130534(A014132(n+1))*A140756(n+1))`
-/

namespace A074246.P10250976048428720125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130534 (A014132 (n + 1)).toNat * A140756 (n + 1)|

end

end A074246.P10250976048428720125

/-! ## A074246.P15292230283815738533

`A130534(A014132(n+1))*A141539(A245300(n))`
-/

namespace A074246.P15292230283815738533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A014132 (n + 1)).toNat * A141539 (A245300 n).toNat

end

end A074246.P15292230283815738533

/-! ## A074246.P12952846126187860958

`A004736(A038722(n+1))*A130534(A014132(n+1))`
-/

namespace A074246.P12952846126187860958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A130534 (A014132 (n + 1)).toNat

end

end A074246.P12952846126187860958

/-! ## A074246.P5038860221736632949

`A130534(A014132(n+1))*A193738(A007401(n+1))`
-/

namespace A074246.P5038860221736632949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A014132 (n + 1)).toNat * A193738 (A007401 (n + 1)).toNat

end

end A074246.P5038860221736632949

/-! ## A074246.P1552326350753520742

`abs(A196837(A038722(n+1)))`
-/

namespace A074246.P1552326350753520742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A196837 (A038722 (n + 1)).toNat|

end

end A074246.P1552326350753520742

/-! ## A074246.P15892224502385452705

`A097807(n)*A196837(A038722(n+1))`
-/

namespace A074246.P15892224502385452705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A196837 (A038722 (n + 1)).toNat

end

end A074246.P15892224502385452705

/-! ## A074246.P14975045422042472908

`gcd(A000038(n), A196837(A038722(n+1)))`
-/

namespace A074246.P14975045422042472908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196837 (A038722 (n + 1)).toNat)

end

end A074246.P14975045422042472908

/-! ## A074246.P9469121447798456444

`A188881(A014132(n+1)+1)/A233543(n)`
-/

namespace A074246.P9469121447798456444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188881 (A014132 (n + 1) + 1).toNat : ℚ) / (A233543 n : ℚ)

end

end A074246.P9469121447798456444

/-!
# A074247: Numbers n such that harmonic mean of the divisors of n is a prime.

The programs for A074247, there is no canonical definition to state claims against.
-/

/-! ## A074247.P10027929902160122722

`A001599(C(A048249(n+2), A028234(n+4)))`
-/

namespace A074247.P10027929902160122722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (Nat.choose (A048249 (n + 2)).toNat (A028234 (n + 4)).toNat)

end

end A074247.P10027929902160122722

/-! ## A074247.P15177002164057414122

`A001599(lt[A079641(3*n+1), A357612(n+1)])`
-/

namespace A074247.P15177002164057414122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079641 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074247.P15177002164057414122

/-!
# A074249: a(n) = largest prime factor of 7^n-1.

The programs for A074249, the canonical program `A074249.P5424559262920802764` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074249 has offset 1).

The definition of A074249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074249.P5424559262920802764

`A006530(A024075(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074249

/-- `A006530(A024075(n+1))` -/
def P5424559262920802764.Spec : Prop :=
  ∀ n, P5424559262920802764.a n = A074249 (n + 1)

theorem P5424559262920802764.correct : P5424559262920802764.Spec := by
  intro n
  simp only [A074249, Nat.add_sub_cancel]

end A074249

/-!
# A074251: Sum of the squarefree numbers from the smallest prime factor of n to the largest prime factor of n.

The programs for A074251, there is no canonical definition to state claims against.
-/

/-! ## A074251.P1129437999494230224

`A112367(A185213(n))+A074036(n+1)`
-/

namespace A074251.P1129437999494230224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 (A185213 n).toNat + A074036 (n + 1)

end

end A074251.P1129437999494230224

/-! ## A074251.P13149343756995227534

`A004525(A185213(n)+2*A074036(n+1))`
-/

namespace A074251.P13149343756995227534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A185213 n + 2 * A074036 (n + 1)).toNat

end

end A074251.P13149343756995227534

/-! ## A074251.P17413648400364391915

`A332671(A319254(n+5))+A074036(n+1)`
-/

namespace A074251.P17413648400364391915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A319254 (n + 5)).toNat + A074036 (n + 1)

end

end A074251.P17413648400364391915

/-! ## A074251.P5937501938414580391

`A004525(A074036(n+1)+A185213(n)+A074036(n+1))`
-/

namespace A074251.P5937501938414580391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074036 (n + 1) + (A185213 n + A074036 (n + 1))).toNat

end

end A074251.P5937501938414580391

/-!
# A074258: Gaps between primes p such that 2p-1 is also prime.

The programs for A074258, the canonical program `A074258.P14581319110537256631` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074258 has offset 1).

The definition of A074258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074258.P14581319110537256631

`Δ[A005382(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A074258

/-- `Δ[A005382(n+1)]` -/
def P14581319110537256631.Spec : Prop :=
  ∀ n, P14581319110537256631.a n = A074258 (n + 1)

theorem P14581319110537256631.correct : P14581319110537256631.Spec := by
  intro n
  simp only [A074258, Nat.add_sub_cancel]

end A074258

/-! ## A074258.P11814637450764749069

`Δ[A351875(n+1)]`
-/

namespace A074258.P11814637450764749069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P11814637450764749069

namespace A074258

/-- `Δ[A351875(n+1)]` -/
def P11814637450764749069.Spec : Prop :=
  ∀ n, P11814637450764749069.a n = A074258 (n + 1)

theorem P11814637450764749069.correct : P11814637450764749069.Spec := by
  intro n
  simp only [A074258, Nat.add_sub_cancel, A074258.P11814637450764749069.f1, A074258.P11814637450764749069.a, A074258.P14581319110537256631.f1, A074258.P14581319110537256631.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074258

/-! ## A074258.P9122412180197673318

`Δ[A005383(n+1)/2]`
-/

namespace A074258.P9122412180197673318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005383 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P9122412180197673318

namespace A074258

/-- `Δ[A005383(n+1)/2]` -/
def P9122412180197673318.Spec : Prop :=
  ∀ n, P9122412180197673318.a n = (A074258 (n + 1) : ℚ)

theorem P9122412180197673318.correct : P9122412180197673318.Spec := by
  intro n
  simp only [A074258, Nat.add_sub_cancel, A074258.P9122412180197673318.f1, A074258.P9122412180197673318.a, A074258.P14581319110537256631.f1, A074258.P14581319110537256631.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074258

/-! ## A074258.P14297934247410502687

`Δ[A077068(n+1)/2]`
-/

namespace A074258.P14297934247410502687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077068 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P14297934247410502687

namespace A074258

/-- `Δ[A077068(n+1)/2]` -/
def P14297934247410502687.Spec : Prop :=
  ∀ n, P14297934247410502687.a n = (A074258 (n + 1) : ℚ)

theorem P14297934247410502687.correct : P14297934247410502687.Spec := by
  intro n
  simp only [A074258, Nat.add_sub_cancel, A074258.P14297934247410502687.f1, A074258.P14297934247410502687.a, A074258.P14581319110537256631.f1, A074258.P14581319110537256631.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A077068, A077068.P14869786235870196485.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074258

/-! ## A074258.P14681289157831766994

`Δ[A089965(n+1)/2]`
-/

namespace A074258.P14681289157831766994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089965 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P14681289157831766994

namespace A074258

/-- `Δ[A089965(n+1)/2]` -/
def P14681289157831766994.Spec : Prop :=
  ∀ n, P14681289157831766994.a n = (A074258 (n + 1) : ℚ)

theorem P14681289157831766994.correct : P14681289157831766994.Spec := by
  intro n
  simp only [A074258, Nat.add_sub_cancel, A074258.P14681289157831766994.f1, A074258.P14681289157831766994.a, A074258.P14581319110537256631.f1, A074258.P14581319110537256631.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A089965, A089965.P14211704364200362511.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074258

/-! ## A074258.P317514285107203543

`Δ[A340509(n+1)/3]`
-/

namespace A074258.P317514285107203543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340509 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P317514285107203543

namespace A074258

/-- `Δ[A340509(n+1)/3]` -/
def P317514285107203543.Spec : Prop :=
  ∀ n, P317514285107203543.a n = (A074258 (n + 1) : ℚ)

theorem P317514285107203543.correct : P317514285107203543.Spec := by
  intro n
  simp only [A074258, Nat.add_sub_cancel, A074258.P317514285107203543.f1, A074258.P317514285107203543.a, A074258.P14581319110537256631.f1, A074258.P14581319110537256631.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A340509, A340509.P8307359629526885014.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074258

/-! ## A074258.P16559891137665246349

`A025480(Δ[A005383(n+1)])`
-/

namespace A074258.P16559891137665246349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A074258.P16559891137665246349

namespace A074258

/-- `A025480(Δ[A005383(n+1)])` -/
def P16559891137665246349.Spec : Prop :=
  ∀ n, P16559891137665246349.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P7407520096116644148

`A002265(Δ[2*A005383(n+1)])`
-/

namespace A074258.P7407520096116644148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A074258.P7407520096116644148

namespace A074258

/-- `A002265(Δ[2*A005383(n+1)])` -/
def P7407520096116644148.Spec : Prop :=
  ∀ n, P7407520096116644148.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P6180942190221032181

`A005382(n+2)-A005382(n+1)`
-/

namespace A074258.P6180942190221032181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 2) - A005382 (n + 1)

end

end A074258.P6180942190221032181

namespace A074258

/-- `A005382(n+2)-A005382(n+1)` -/
def P6180942190221032181.Spec : Prop :=
  ∀ n, P6180942190221032181.a n = A074258 (n + 1)

theorem P6180942190221032181.correct : P6180942190221032181.Spec := by
  intro n
  simp only [A074258, Nat.add_sub_cancel, A074258.P6180942190221032181.a, A074258.P14581319110537256631.f1, A074258.P14581319110537256631.a, SequenceMachineLib.memo_apply]

end A074258

/-! ## A074258.P1332362471696127113

`A351875(n+2)-A351875(n+1)`
-/

namespace A074258.P1332362471696127113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 2) - A351875 (n + 1)

end

end A074258.P1332362471696127113

namespace A074258

/-- `A351875(n+2)-A351875(n+1)` -/
def P1332362471696127113.Spec : Prop :=
  ∀ n, P1332362471696127113.a n = A074258 (n + 1)

theorem P1332362471696127113.correct : P1332362471696127113.Spec := by
  intro n
  simp only [A074258, Nat.add_sub_cancel, A074258.P1332362471696127113.a, A074258.P14581319110537256631.f1, A074258.P14581319110537256631.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P11318177267732088261.a, A027698, A027698.P7192177815924648084.f1, A027698.P7192177815924648084.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074258

/-! ## A074258.P5975802103499433139

`Δ[A129521(n+1)%A077068(n+1)]`
-/

namespace A074258.P5975802103499433139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129521 (n + 1)) (A077068 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P5975802103499433139

namespace A074258

/-- `Δ[A129521(n+1)%A077068(n+1)]` -/
def P5975802103499433139.Spec : Prop :=
  ∀ n, P5975802103499433139.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P14558576005675142768

`Δ[p?[A174568(n+1)]]`
-/

namespace A074258.P14558576005675142768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P14558576005675142768

namespace A074258

/-- `Δ[p?[A174568(n+1)]]` -/
def P14558576005675142768.Spec : Prop :=
  ∀ n, P14558576005675142768.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P4664971370280795921

`Δ[p?[A265394(n+1)]]`
-/

namespace A074258.P4664971370280795921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P4664971370280795921

namespace A074258

/-- `Δ[p?[A265394(n+1)]]` -/
def P4664971370280795921.Spec : Prop :=
  ∀ n, P4664971370280795921.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P17862075852000272766

`Δ[p?[A384020(n+1)]]`
-/

namespace A074258.P17862075852000272766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P17862075852000272766

namespace A074258

/-- `Δ[p?[A384020(n+1)]]` -/
def P17862075852000272766.Spec : Prop :=
  ∀ n, P17862075852000272766.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P1509123644425507852

`Δ[p?[A068080(n+1)]]`
-/

namespace A074258.P1509123644425507852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P1509123644425507852

namespace A074258

/-- `Δ[p?[A068080(n+1)]]` -/
def P1509123644425507852.Spec : Prop :=
  ∀ n, P1509123644425507852.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P10801733162836005949

`Δ[A000040(A137288(n+1))]`
-/

namespace A074258.P10801733162836005949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A137288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P10801733162836005949

namespace A074258

/-- `Δ[A000040(A137288(n+1))]` -/
def P10801733162836005949.Spec : Prop :=
  ∀ n, P10801733162836005949.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P17206359419235578659

`Δ[p?[A006254(n+1)]]`
-/

namespace A074258.P17206359419235578659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P17206359419235578659

namespace A074258

/-- `Δ[p?[A006254(n+1)]]` -/
def P17206359419235578659.Spec : Prop :=
  ∀ n, P17206359419235578659.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P1309852449130715836

`Δ[record[A023509(n+2)]]`
-/

namespace A074258.P1309852449130715836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023509 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P1309852449130715836

namespace A074258

/-- `Δ[record[A023509(n+2)]]` -/
def P1309852449130715836.Spec : Prop :=
  ∀ n, P1309852449130715836.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P7822567380862360691

`Δ[record[A039639(n+2)]]`
-/

namespace A074258.P7822567380862360691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P7822567380862360691

namespace A074258

/-- `Δ[record[A039639(n+2)]]` -/
def P7822567380862360691.Spec : Prop :=
  ∀ n, P7822567380862360691.a n = A074258 (n + 1)

end A074258

/-! ## A074258.P16557156425291242597

`Δ[record[A039641(n+2)]]`
-/

namespace A074258.P16557156425291242597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039641 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074258.P16557156425291242597

namespace A074258

/-- `Δ[record[A039641(n+2)]]` -/
def P16557156425291242597.Spec : Prop :=
  ∀ n, P16557156425291242597.a n = A074258 (n + 1)

end A074258

/-!
# A074259: Gaps between primes p such that 2p+1 is also prime, i.e., Sophie-Germain primes A005384.

The programs for A074259, the canonical program `A074259.P4240467162712027144` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074259 has offset 1).

The definition of A074259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074259.P4240467162712027144

`Δ[A005384(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A074259

/-- `Δ[A005384(n+1)]` -/
def P4240467162712027144.Spec : Prop :=
  ∀ n, P4240467162712027144.a n = A074259 (n + 1)

theorem P4240467162712027144.correct : P4240467162712027144.Spec := by
  intro n
  simp only [A074259, Nat.add_sub_cancel]

end A074259

/-! ## A074259.P1112678030034454462

`A059322(n+1)/2`
-/

namespace A074259.P1112678030034454462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059322 (n + 1) : ℚ) / 2

end

end A074259.P1112678030034454462

namespace A074259

/-- `A059322(n+1)/2` -/
def P1112678030034454462.Spec : Prop :=
  ∀ n, P1112678030034454462.a n = (A074259 (n + 1) : ℚ)

theorem P1112678030034454462.correct : P1112678030034454462.Spec := by
  intro n
  simp only [A074259, Nat.add_sub_cancel, A074259.P1112678030034454462.a, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A059322, A059322.P13542755186840824603.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074259

/-! ## A074259.P5578641448891084359

`A001281(A059322(n+1))`
-/

namespace A074259.P5578641448891084359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A059322 (n + 1)).toNat

end

end A074259.P5578641448891084359

namespace A074259

/-- `A001281(A059322(n+1))` -/
def P5578641448891084359.Spec : Prop :=
  ∀ n, P5578641448891084359.a n = A074259 (n + 1)

end A074259

/-! ## A074259.P17997457443924475067

`A005384(n+2)-A005384(n+1)`
-/

namespace A074259.P17997457443924475067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 2) - A005384 (n + 1)

end

end A074259.P17997457443924475067

namespace A074259

/-- `A005384(n+2)-A005384(n+1)` -/
def P17997457443924475067.Spec : Prop :=
  ∀ n, P17997457443924475067.a n = A074259 (n + 1)

theorem P17997457443924475067.correct : P17997457443924475067.Spec := by
  intro n
  simp only [A074259, Nat.add_sub_cancel, A074259.P17997457443924475067.a, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, SequenceMachineLib.memo_apply]

end A074259

/-! ## A074259.P7988489244661604998

`Δ[A176045(n+1)]`
-/

namespace A074259.P7988489244661604998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P7988489244661604998

namespace A074259

/-- `Δ[A176045(n+1)]` -/
def P7988489244661604998.Spec : Prop :=
  ∀ n, P7988489244661604998.a n = A074259 (n + 1)

theorem P7988489244661604998.correct : P7988489244661604998.Spec := by
  intro n
  simp only [A074259, Nat.add_sub_cancel, A074259.P7988489244661604998.f1, A074259.P7988489244661604998.a, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074259

/-! ## A074259.P7006032696041952314

`Δ[A005385(n+1)/2]`
-/

namespace A074259.P7006032696041952314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005385 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P7006032696041952314

namespace A074259

/-- `Δ[A005385(n+1)/2]` -/
def P7006032696041952314.Spec : Prop :=
  ∀ n, P7006032696041952314.a n = (A074259 (n + 1) : ℚ)

theorem P7006032696041952314.correct : P7006032696041952314.Spec := by
  intro n
  simp only [A074259, Nat.add_sub_cancel, A074259.P7006032696041952314.f1, A074259.P7006032696041952314.a, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074259

/-! ## A074259.P8702080241343789628

`Δ[A077065(n+1)/2]`
-/

namespace A074259.P8702080241343789628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077065 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P8702080241343789628

namespace A074259

/-- `Δ[A077065(n+1)/2]` -/
def P8702080241343789628.Spec : Prop :=
  ∀ n, P8702080241343789628.a n = (A074259 (n + 1) : ℚ)

theorem P8702080241343789628.correct : P8702080241343789628.Spec := by
  intro n
  simp only [A074259, Nat.add_sub_cancel, A074259.P8702080241343789628.f1, A074259.P8702080241343789628.a, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074259

/-! ## A074259.P5577985184800381427

`Δ[A175666(n+1)/3]`
-/

namespace A074259.P5577985184800381427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175666 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P5577985184800381427

namespace A074259

/-- `Δ[A175666(n+1)/3]` -/
def P5577985184800381427.Spec : Prop :=
  ∀ n, P5577985184800381427.a n = (A074259 (n + 1) : ℚ)

theorem P5577985184800381427.correct : P5577985184800381427.Spec := by
  intro n
  simp only [A074259, Nat.add_sub_cancel, A074259.P5577985184800381427.f1, A074259.P5577985184800381427.a, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A175666, A175666.P11802829545752177848.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074259

/-! ## A074259.P15206360400054403420

`A176045(n+2)-A176045(n+1)`
-/

namespace A074259.P15206360400054403420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 2) - A176045 (n + 1)

end

end A074259.P15206360400054403420

namespace A074259

/-- `A176045(n+2)-A176045(n+1)` -/
def P15206360400054403420.Spec : Prop :=
  ∀ n, P15206360400054403420.a n = A074259 (n + 1)

theorem P15206360400054403420.correct : P15206360400054403420.Spec := by
  intro n
  simp only [A074259, Nat.add_sub_cancel, A074259.P15206360400054403420.a, A074259.P4240467162712027144.f1, A074259.P4240467162712027144.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074259

/-! ## A074259.P2905697599415696214

`A004526(A005385(n+2)-A005385(n+1))`
-/

namespace A074259.P2905697599415696214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005385 (n + 2) - A005385 (n + 1)).toNat

end

end A074259.P2905697599415696214

namespace A074259

/-- `A004526(A005385(n+2)-A005385(n+1))` -/
def P2905697599415696214.Spec : Prop :=
  ∀ n, P2905697599415696214.a n = A074259 (n + 1)

end A074259

/-! ## A074259.P4498270053078366051

`Δ[A194593(n+2)/4]`
-/

namespace A074259.P4498270053078366051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194593 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P4498270053078366051

namespace A074259

/-- `Δ[A194593(n+2)/4]` -/
def P4498270053078366051.Spec : Prop :=
  ∀ n, P4498270053078366051.a n = (A074259 (n + 1) : ℚ)

end A074259

/-! ## A074259.P4111423781845460031

`Δ[p?[A065966(n+1)]/2]`
-/

namespace A074259.P4111423781845460031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P4111423781845460031

namespace A074259

/-- `Δ[p?[A065966(n+1)]/2]` -/
def P4111423781845460031.Spec : Prop :=
  ∀ n, P4111423781845460031.a n = (A074259 (n + 1) : ℚ)

end A074259

/-! ## A074259.P7333664131448742838

`Δ[record[A112037(n+2)]]`
-/

namespace A074259.P7333664131448742838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112037 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P7333664131448742838

namespace A074259

/-- `Δ[record[A112037(n+2)]]` -/
def P7333664131448742838.Spec : Prop :=
  ∀ n, P7333664131448742838.a n = A074259 (n + 1)

end A074259

/-! ## A074259.P4214292005480730176

`Δ[p?[A259973(n+1)]]`
-/

namespace A074259.P4214292005480730176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P4214292005480730176

namespace A074259

/-- `Δ[p?[A259973(n+1)]]` -/
def P4214292005480730176.Spec : Prop :=
  ∀ n, P4214292005480730176.a n = A074259 (n + 1)

end A074259

/-! ## A074259.P6855667616034271335

`Δ[p?[A078762(n+1)]]`
-/

namespace A074259.P6855667616034271335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P6855667616034271335

namespace A074259

/-- `Δ[p?[A078762(n+1)]]` -/
def P6855667616034271335.Spec : Prop :=
  ∀ n, P6855667616034271335.a n = A074259 (n + 1)

end A074259

/-! ## A074259.P3779334559860432076

`Δ[record[A023590(n+1)/2]]`
-/

namespace A074259.P3779334559860432076
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023590 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P3779334559860432076

namespace A074259

/-- `Δ[record[A023590(n+1)/2]]` -/
def P3779334559860432076.Spec : Prop :=
  ∀ n, P3779334559860432076.a n = (A074259 (n + 1) : ℚ)

end A074259

/-! ## A074259.P13829252223497321955

`Δ[record[A023592(n+1)/2]]`
-/

namespace A074259.P13829252223497321955
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023592 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P13829252223497321955

namespace A074259

/-- `Δ[record[A023592(n+1)/2]]` -/
def P13829252223497321955.Spec : Prop :=
  ∀ n, P13829252223497321955.a n = (A074259 (n + 1) : ℚ)

end A074259

/-! ## A074259.P16474721235139031163

`Δ[record[A023594(n+1)/2]]`
-/

namespace A074259.P16474721235139031163
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023594 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P16474721235139031163

namespace A074259

/-- `Δ[record[A023594(n+1)/2]]` -/
def P16474721235139031163.Spec : Prop :=
  ∀ n, P16474721235139031163.a n = (A074259 (n + 1) : ℚ)

end A074259

/-! ## A074259.P9894437235749702141

`Δ[p?[A072055(n+1)]/2]`
-/

namespace A074259.P9894437235749702141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P9894437235749702141

namespace A074259

/-- `Δ[p?[A072055(n+1)]/2]` -/
def P9894437235749702141.Spec : Prop :=
  ∀ n, P9894437235749702141.a n = (A074259 (n + 1) : ℚ)

end A074259

/-! ## A074259.P10703015166237908501

`Δ[p?[A054639(n+1)]]`
-/

namespace A074259.P10703015166237908501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074259.P10703015166237908501

namespace A074259

/-- `Δ[p?[A054639(n+1)]]` -/
def P10703015166237908501.Spec : Prop :=
  ∀ n, P10703015166237908501.a n = A074259 (n + 1)

end A074259

/-!
# A074260: Number of labeled cyclic subgroups of S_n having the maximum possible order.

The programs for A074260, there is no canonical definition to state claims against.
-/

/-! ## A074260.P10167573260866851759

`A074859(n)/A000010(A000793(n))`
-/

namespace A074260.P10167573260866851759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074859 n : ℚ) / (A000010 (A000793 n).toNat : ℚ)

end

end A074260.P10167573260866851759

/-! ## A074260.P17420155220205692128

`A074859(n)/A000010(n!/A074115(n))`
-/

namespace A074260.P17420155220205692128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074859 n : ℚ) / (A000010 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A074115 n : ℚ))).toNat : ℚ)

end

end A074260.P17420155220205692128

/-! ## A074260.P7671941891820329325

`A074859(n)/A000010(A003418(n)/A225558(n))`
-/

namespace A074260.P7671941891820329325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074859 n : ℚ) / (A000010 (SequenceMachineLib.roundAway ((A003418 n : ℚ) / (A225558 n : ℚ))).toNat : ℚ)

end

end A074260.P7671941891820329325

/-! ## A074260.P15569100645270647152

`A074859(n)/A000010((A075059(n)-1)/A225558(n))`
-/

namespace A074260.P15569100645270647152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074859 n : ℚ) / (A000010 (SequenceMachineLib.roundAway ((A075059 n - 1 : ℚ) / (A225558 n : ℚ))).toNat : ℚ)

end

end A074260.P15569100645270647152

/-! ## A074260.P9238726441270327004

`A074859(n)/A000010(A225627(n)/A225636(n))`
-/

namespace A074260.P9238726441270327004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074859 n : ℚ) / (A000010 (SequenceMachineLib.roundAway ((A225627 n : ℚ) / (A225636 n : ℚ))).toNat : ℚ)

end

end A074260.P9238726441270327004

/-!
# A074261: Positions in the Kolakoski sequence (A000002) when the number of 2's is greater than the number of 1's.

The programs for A074261, the canonical program `A074261.P16825806500781685750` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074261 has offset 1).

The definition of A074261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074261.P8302563842563412918

`lt[A088568(n+1), 0]+1`
-/

namespace A074261.P8302563842563412918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A074261.P8302563842563412918

namespace A074261

/-- `lt[A088568(n+1), 0]+1` -/
def P8302563842563412918.Spec : Prop :=
  ∀ n, (P8302563842563412918.a n : ℤ) = A074261 (n + 1)

end A074261

/-! ## A074261.P16825806500781685750

`lt[0, A294448(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074261

/-- `lt[0, A294448(n+1)]+1` -/
def P16825806500781685750.Spec : Prop :=
  ∀ n, (P16825806500781685750.a n : ℤ) = A074261 (n + 1)

theorem P16825806500781685750.correct : P16825806500781685750.Spec := by
  intro n
  simp only [A074261, Nat.add_sub_cancel]

end A074261

/-! ## A074261.P16159976980939811461

`lt[A088568(A028310(n)), 0]`
-/

namespace A074261.P16159976980939811461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074261.P16159976980939811461

namespace A074261

/-- `lt[A088568(A028310(n)), 0]` -/
def P16159976980939811461.Spec : Prop :=
  ∀ n, (P16159976980939811461.a n : ℤ) = A074261 (n + 1)

end A074261

/-! ## A074261.P13856684390619851844

`A065475(lt[A088568(n+1), 0])`
-/

namespace A074261.P13856684390619851844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A074261.P13856684390619851844

namespace A074261

/-- `A065475(lt[A088568(n+1), 0])` -/
def P13856684390619851844.Spec : Prop :=
  ∀ n, P13856684390619851844.a n = A074261 (n + 1)

end A074261

/-! ## A074261.P2457426742483024266

`A065475(lt[0, A294448(n+1)])`
-/

namespace A074261.P2457426742483024266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074261.P2457426742483024266

namespace A074261

/-- `A065475(lt[0, A294448(n+1)])` -/
def P2457426742483024266.Spec : Prop :=
  ∀ n, P2457426742483024266.a n = A074261 (n + 1)

end A074261

/-! ## A074261.P9829379578660371188

`eq[2, round(A216345(n+1)/(n+1))]`
-/

namespace A074261.P9829379578660371188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216345 (n + 1) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074261.P9829379578660371188

namespace A074261

/-- `eq[2, round(A216345(n+1)/(n+1))]` -/
def P9829379578660371188.Spec : Prop :=
  ∀ n, (P9829379578660371188.a n : ℤ) = A074261 (n + 1)

end A074261

/-! ## A074261.P11215774232132723091

`lt[n+1-2*A074286(n+1), -A074290(n+1)]`
-/

namespace A074261.P11215774232132723091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A074286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A074290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074261.P11215774232132723091

namespace A074261

/-- `lt[n+1-2*A074286(n+1), -A074290(n+1)]` -/
def P11215774232132723091.Spec : Prop :=
  ∀ n, (P11215774232132723091.a n : ℤ) = A074261 (n + 1)

end A074261

/-! ## A074261.P15088706228253086812

`lt[A000007(n), A294448(A028310(n))]`
-/

namespace A074261.P15088706228253086812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074261.P15088706228253086812

namespace A074261

/-- `lt[A000007(n), A294448(A028310(n))]` -/
def P15088706228253086812.Spec : Prop :=
  ∀ n, (P15088706228253086812.a n : ℤ) = A074261 (n + 1)

end A074261

/-! ## A074261.P721293107744367352

`eq[A001651(n+1)%A216345(n+1), A001651(n+1)]`
-/

namespace A074261.P721293107744367352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001651 (n + 1)) (A216345 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074261.P721293107744367352

namespace A074261

/-- `eq[A001651(n+1)%A216345(n+1), A001651(n+1)]` -/
def P721293107744367352.Spec : Prop :=
  ∀ n, (P721293107744367352.a n : ℤ) = A074261 (n + 1)

end A074261

/-!
# A074262: Positions of '11' in Kolakoski sequence A000002.

The programs for A074262, the canonical program `A074262.P11865346292723131209` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074262 has offset 1).

The definition of A074262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074262.P469707871488746972

`eq[1, A249093(n+2)]+2`
-/

namespace A074262.P469707871488746972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A074262.P469707871488746972

namespace A074262

/-- `eq[1, A249093(n+2)]+2` -/
def P469707871488746972.Spec : Prop :=
  ∀ n, (P469707871488746972.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P4270750247710600461

`eq[1, A249094(n+3)]+2`
-/

namespace A074262.P4270750247710600461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A074262.P4270750247710600461

namespace A074262

/-- `eq[1, A249094(n+3)]+2` -/
def P4270750247710600461.Spec : Prop :=
  ∀ n, (P4270750247710600461.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P11865346292723131209

`A156242(lt[1, A100428(n+1)])+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A074262

/-- `A156242(lt[1, A100428(n+1)])+1` -/
def P11865346292723131209.Spec : Prop :=
  ∀ n, P11865346292723131209.a n = A074262 (n + 1)

theorem P11865346292723131209.correct : P11865346292723131209.Spec := by
  intro n
  simp only [A074262, Nat.add_sub_cancel]

end A074262

/-! ## A074262.P11299336081209085953

`∩[A078649(n+1), A156242(n+1)+1]`
-/

namespace A074262.P11299336081209085953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P11299336081209085953

namespace A074262

/-- `∩[A078649(n+1), A156242(n+1)+1]` -/
def P11299336081209085953.Spec : Prop :=
  ∀ n, (P11299336081209085953.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P10791488648390823877

`∩[A078649(n+1), A156243(n+1)-1]`
-/

namespace A074262.P10791488648390823877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P10791488648390823877

namespace A074262

/-- `∩[A078649(n+1), A156243(n+1)-1]` -/
def P10791488648390823877.Spec : Prop :=
  ∀ n, (P10791488648390823877.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P11371301182785909205

`∩[A013947(n+1), A078649(n+1)]`
-/

namespace A074262.P11371301182785909205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P11371301182785909205

namespace A074262

/-- `∩[A013947(n+1), A078649(n+1)]` -/
def P11371301182785909205.Spec : Prop :=
  ∀ n, (P11371301182785909205.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P7389695864058722449

`∩[A013947(n+1), A156243(n+1)-1]`
-/

namespace A074262.P7389695864058722449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P7389695864058722449

namespace A074262

/-- `∩[A013947(n+1), A156243(n+1)-1]` -/
def P7389695864058722449.Spec : Prop :=
  ∀ n, (P7389695864058722449.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P4716749733664166822

`∩[A013947(n+1), A013948(n+1)+n]`
-/

namespace A074262.P4716749733664166822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P4716749733664166822

namespace A074262

/-- `∩[A013947(n+1), A013948(n+1)+n]` -/
def P4716749733664166822.Spec : Prop :=
  ∀ n, (P4716749733664166822.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P2688344961638863830

`∩[A022297(n+1), A078649(n+1)]`
-/

namespace A074262.P2688344961638863830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P2688344961638863830

namespace A074262

/-- `∩[A022297(n+1), A078649(n+1)]` -/
def P2688344961638863830.Spec : Prop :=
  ∀ n, (P2688344961638863830.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P15143624704874890462

`∩[A013947(n+2), A022297(n+2)]`
-/

namespace A074262.P15143624704874890462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P15143624704874890462

namespace A074262

/-- `∩[A013947(n+2), A022297(n+2)]` -/
def P15143624704874890462.Spec : Prop :=
  ∀ n, (P15143624704874890462.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P3488523661218566587

`∩[A022297(n+1), A156242(n+1)+1]`
-/

namespace A074262.P3488523661218566587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P3488523661218566587

namespace A074262

/-- `∩[A022297(n+1), A156242(n+1)+1]` -/
def P3488523661218566587.Spec : Prop :=
  ∀ n, (P3488523661218566587.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P3157873213840383167

`∩[A013948(n+1)+n, A022297(n+1)]`
-/

namespace A074262.P3157873213840383167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P3157873213840383167

namespace A074262

/-- `∩[A013948(n+1)+n, A022297(n+1)]` -/
def P3157873213840383167.Spec : Prop :=
  ∀ n, (P3157873213840383167.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P12774036016245393296

`∩[A013948(n+1)+1, A078649(n+1)]`
-/

namespace A074262.P12774036016245393296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P12774036016245393296

namespace A074262

/-- `∩[A013948(n+1)+1, A078649(n+1)]` -/
def P12774036016245393296.Spec : Prop :=
  ∀ n, (P12774036016245393296.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P5013496849071016009

`∩[A025505(n+1)-1, A078649(n+1)]`
-/

namespace A074262.P5013496849071016009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025505 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P5013496849071016009

namespace A074262

/-- `∩[A025505(n+1)-1, A078649(n+1)]` -/
def P5013496849071016009.Spec : Prop :=
  ∀ n, (P5013496849071016009.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P10956807849265406164

`∩[A078649(n+2), A078649(n+2)-n]`
-/

namespace A074262.P10956807849265406164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 2) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074262.P10956807849265406164

namespace A074262

/-- `∩[A078649(n+2), A078649(n+2)-n]` -/
def P10956807849265406164.Spec : Prop :=
  ∀ n, (P10956807849265406164.a n : ℤ) = A074262 (n + 1)

end A074262

/-! ## A074262.P15657055774719625643

`A054353(eq[1, A074290(n+1)])+1`
-/

namespace A074262.P15657055774719625643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A074262.P15657055774719625643

namespace A074262

/-- `A054353(eq[1, A074290(n+1)])+1` -/
def P15657055774719625643.Spec : Prop :=
  ∀ n, P15657055774719625643.a n = A074262 (n + 1)

end A074262

/-! ## A074262.P3865857439690614963

`A216345(lt[1, A074290(n+1)+1]+1)`
-/

namespace A074262.P3865857439690614963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074262.P3865857439690614963

namespace A074262

/-- `A216345(lt[1, A074290(n+1)+1]+1)` -/
def P3865857439690614963.Spec : Prop :=
  ∀ n, P3865857439690614963.a n = A074262 (n + 1)

end A074262

/-! ## A074262.P4648502701255611934

`A216345(eq[1, (n+1)%A000002(n+1)]+1)`
-/

namespace A074262.P4648502701255611934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000002 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074262.P4648502701255611934

namespace A074262

/-- `A216345(eq[1, (n+1)%A000002(n+1)]+1)` -/
def P4648502701255611934.Spec : Prop :=
  ∀ n, P4648502701255611934.a n = A074262 (n + 1)

end A074262

/-! ## A074262.P3404207826637595395

`record[A074290(2*n+3)*A216345(2*n+3)]`
-/

namespace A074262.P3404207826637595395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (2 * n + 3) * A216345 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074262.P3404207826637595395

namespace A074262

/-- `record[A074290(2*n+3)*A216345(2*n+3)]` -/
def P3404207826637595395.Spec : Prop :=
  ∀ n, P3404207826637595395.a n = A074262 (n + 1)

end A074262

/-! ## A074262.P14925563439637093229

`A216345(record[(n+1)*and(2, A100428(n+2))]+1)`
-/

namespace A074262.P14925563439637093229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 2 (A100428 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A074262.P14925563439637093229

namespace A074262

/-- `A216345(record[(n+1)*and(2, A100428(n+2))]+1)` -/
def P14925563439637093229.Spec : Prop :=
  ∀ n, P14925563439637093229.a n = A074262 (n + 1)

end A074262

/-!
# A074263: Positions of '22' in Kolakoski sequence A000002.

The programs for A074263, the canonical program `A074263.P1367974971333941862` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074263 has offset 1).

The definition of A074263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074263.P3972933929750304276

`lt[2, A249094(n+2)]`
-/

namespace A074263.P3972933929750304276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074263.P3972933929750304276

namespace A074263

/-- `lt[2, A249094(n+2)]` -/
def P3972933929750304276.Spec : Prop :=
  ∀ n, (P3972933929750304276.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P918709452552886397

`comp[A249093(n+2)+n]`
-/

namespace A074263.P918709452552886397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A074263.P918709452552886397

namespace A074263

/-- `comp[A249093(n+2)+n]` -/
def P918709452552886397.Spec : Prop :=
  ∀ n, (P918709452552886397.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P1367974971333941862

`∩[A078649(n+1), A156243(n+1)+1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074263

/-- `∩[A078649(n+1), A156243(n+1)+1]` -/
def P1367974971333941862.Spec : Prop :=
  ∀ n, (P1367974971333941862.a n : ℤ) = A074263 (n + 1)

theorem P1367974971333941862.correct : P1367974971333941862.Spec := by
  intro n
  simp only [A074263, Nat.add_sub_cancel]

end A074263

/-! ## A074263.P14314012650989943231

`∩[A078649(n+1), A156242(n+1)-1]`
-/

namespace A074263.P14314012650989943231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P14314012650989943231

namespace A074263

/-- `∩[A078649(n+1), A156242(n+1)-1]` -/
def P14314012650989943231.Spec : Prop :=
  ∀ n, (P14314012650989943231.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P10912602383742665620

`∩[A013947(n+1)+1, A078649(n+1)]`
-/

namespace A074263.P10912602383742665620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P10912602383742665620

namespace A074263

/-- `∩[A013947(n+1)+1, A078649(n+1)]` -/
def P10912602383742665620.Spec : Prop :=
  ∀ n, (P10912602383742665620.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P17946446965707349593

`∩[A022297(n+1)-1, A078649(n+1)]`
-/

namespace A074263.P17946446965707349593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P17946446965707349593

namespace A074263

/-- `∩[A022297(n+1)-1, A078649(n+1)]` -/
def P17946446965707349593.Spec : Prop :=
  ∀ n, (P17946446965707349593.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P4963055630784487274

`∩[A013948(n+1), A025505(n+1)]`
-/

namespace A074263.P4963055630784487274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P4963055630784487274

namespace A074263

/-- `∩[A013948(n+1), A025505(n+1)]` -/
def P4963055630784487274.Spec : Prop :=
  ∀ n, (P4963055630784487274.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P12878378814638047759

`∩[A013948(n+1), A078649(n+1)]`
-/

namespace A074263.P12878378814638047759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P12878378814638047759

namespace A074263

/-- `∩[A013948(n+1), A078649(n+1)]` -/
def P12878378814638047759.Spec : Prop :=
  ∀ n, (P12878378814638047759.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P5094665266198492805

`∩[A025505(n+1), A078649(n+1)]`
-/

namespace A074263.P5094665266198492805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P5094665266198492805

namespace A074263

/-- `∩[A025505(n+1), A078649(n+1)]` -/
def P5094665266198492805.Spec : Prop :=
  ∀ n, (P5094665266198492805.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P3046129346783102128

`A054353(lt[2, A088570(n+1)])+1`
-/

namespace A074263.P3046129346783102128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A074263.P3046129346783102128

namespace A074263

/-- `A054353(lt[2, A088570(n+1)])+1` -/
def P3046129346783102128.Spec : Prop :=
  ∀ n, P3046129346783102128.a n = A074263 (n + 1)

end A074263

/-! ## A074263.P14147030949642889246

`A216345(record[(n+1)*A100429(n+1)])`
-/

namespace A074263.P14147030949642889246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A100429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074263.P14147030949642889246

namespace A074263

/-- `A216345(record[(n+1)*A100429(n+1)])` -/
def P14147030949642889246.Spec : Prop :=
  ∀ n, P14147030949642889246.a n = A074263 (n + 1)

end A074263

/-! ## A074263.P16908769552090785039

`A216345(eq[1, n%A000002(n+1)]+1)`
-/

namespace A074263.P16908769552090785039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000002 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074263.P16908769552090785039

namespace A074263

/-- `A216345(eq[1, n%A000002(n+1)]+1)` -/
def P16908769552090785039.Spec : Prop :=
  ∀ n, P16908769552090785039.a n = A074263 (n + 1)

end A074263

/-! ## A074263.P5861410882786182961

`∩[A216345(2*n+1)-2, A216345(2*(n+1))]`
-/

namespace A074263.P5861410882786182961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P5861410882786182961

namespace A074263

/-- `∩[A216345(2*n+1)-2, A216345(2*(n+1))]` -/
def P5861410882786182961.Spec : Prop :=
  ∀ n, (P5861410882786182961.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P18044955550069317309

`record[A216345(2*(n+1))/A088569(2*n+1)²]`
-/

namespace A074263.P18044955550069317309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216345 (2 * (n + 1)) : ℚ) / (A088569 (2 * n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074263.P18044955550069317309

namespace A074263

/-- `record[A216345(2*(n+1))/A088569(2*n+1)²]` -/
def P18044955550069317309.Spec : Prop :=
  ∀ n, P18044955550069317309.a n = (A074263 (n + 1) : ℚ)

end A074263

/-! ## A074263.P1070647812372595149

`A216345(record[(n+1)*(n+1)%A000002(n+2)]+1)`
-/

namespace A074263.P1070647812372595149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (n + 1 : ℤ) (A000002 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A074263.P1070647812372595149

namespace A074263

/-- `A216345(record[(n+1)*(n+1)%A000002(n+2)]+1)` -/
def P1070647812372595149.Spec : Prop :=
  ∀ n, P1070647812372595149.a n = A074263 (n + 1)

end A074263

/-! ## A074263.P4575335100401169237

`eq[2, A000002(A000002(n+1)+n)]+1`
-/

namespace A074263.P4575335100401169237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A000002 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074263.P4575335100401169237

namespace A074263

/-- `eq[2, A000002(A000002(n+1)+n)]+1` -/
def P4575335100401169237.Spec : Prop :=
  ∀ n, (P4575335100401169237.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P17656740526684578002

`lt[2, A100808(n+1)]+1`
-/

namespace A074263.P17656740526684578002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074263.P17656740526684578002

namespace A074263

/-- `lt[2, A100808(n+1)]+1` -/
def P17656740526684578002.Spec : Prop :=
  ∀ n, (P17656740526684578002.a n : ℤ) = A074263 (n + 1)

end A074263

/-! ## A074263.P16963712831601627596

`filter[A013948(n+1), A157686(#)]`
-/

namespace A074263.P16963712831601627596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A157686 (f1 j).toNat = 1) n)

end

end A074263.P16963712831601627596

namespace A074263

/-- `filter[A013948(n+1), A157686(#)]` -/
def P16963712831601627596.Spec : Prop :=
  ∀ n, P16963712831601627596.a n = A074263 (n + 1)

end A074263

/-! ## A074263.P481584314115571633

`filter[A013948(n+1), A157687(#)]`
-/

namespace A074263.P481584314115571633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A157687 (f1 j).toNat = 1) n)

end

end A074263.P481584314115571633

namespace A074263

/-- `filter[A013948(n+1), A157687(#)]` -/
def P481584314115571633.Spec : Prop :=
  ∀ n, P481584314115571633.a n = A074263 (n + 1)

end A074263

/-! ## A074263.P3166350887407487415

`filter[A025505(n+1), A157687(#)]`
-/

namespace A074263.P3166350887407487415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A157687 (f1 j).toNat = 1) n)

end

end A074263.P3166350887407487415

namespace A074263

/-- `filter[A025505(n+1), A157687(#)]` -/
def P3166350887407487415.Spec : Prop :=
  ∀ n, P3166350887407487415.a n = A074263 (n + 1)

end A074263

/-!
# A074264: Values of Kolakoski sequence A000002 at positions n = 0 mod 3.

The programs for A074264, the canonical program `A074264.P4841527662898586304` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074264 has offset 1).

The definition of A074264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074264.P1288343374570255903

`A054977(A249093(3*(n+1)))`
-/

namespace A074264.P1288343374570255903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249093 (3 * (n + 1))).toNat

end

end A074264.P1288343374570255903

namespace A074264

/-- `A054977(A249093(3*(n+1)))` -/
def P1288343374570255903.Spec : Prop :=
  ∀ n, P1288343374570255903.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P13143892135120339050

`A054977(A249094(3*(n+1)))`
-/

namespace A074264.P13143892135120339050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249094 (3 * (n + 1))).toNat

end

end A074264.P13143892135120339050

namespace A074264

/-- `A054977(A249094(3*(n+1)))` -/
def P13143892135120339050.Spec : Prop :=
  ∀ n, P13143892135120339050.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P3909864257909748639

`A087890(A249094(3*(n+1))+1)`
-/

namespace A074264.P3909864257909748639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (A249094 (3 * (n + 1)) + 1).toNat

end

end A074264.P3909864257909748639

namespace A074264

/-- `A087890(A249094(3*(n+1))+1)` -/
def P3909864257909748639.Spec : Prop :=
  ∀ n, P3909864257909748639.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P15517303446753307168

`A057550(A249094(3*(n+1))+5)`
-/

namespace A074264.P15517303446753307168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 (A249094 (3 * (n + 1)) + 5).toNat

end

end A074264.P15517303446753307168

namespace A074264

/-- `A057550(A249094(3*(n+1))+5)` -/
def P15517303446753307168.Spec : Prop :=
  ∀ n, P15517303446753307168.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P8368656127040138689

`A244226(A249094(3*(n+1))+8)`
-/

namespace A074264.P8368656127040138689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (A249094 (3 * (n + 1)) + 8).toNat

end

end A074264.P8368656127040138689

namespace A074264

/-- `A244226(A249094(3*(n+1))+8)` -/
def P8368656127040138689.Spec : Prop :=
  ∀ n, P8368656127040138689.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P2105298698001027907

`A054582(A000038(n)^A249094(3*(n+1)))`
-/

namespace A074264.P2105298698001027907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (SequenceMachineLib.roundAway ((A000038 n : ℚ) ^ (A249094 (3 * (n + 1)) : ℤ))).toNat

end

end A074264.P2105298698001027907

namespace A074264

/-- `A054582(A000038(n)^A249094(3*(n+1)))` -/
def P2105298698001027907.Spec : Prop :=
  ∀ n, P2105298698001027907.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P944386914807908637

`A097325(3*n+1)+A000007(A249093(3*(n+1)))`
-/

namespace A074264.P944386914807908637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (3 * n + 1) + A000007 (A249093 (3 * (n + 1))).toNat

end

end A074264.P944386914807908637

namespace A074264

/-- `A097325(3*n+1)+A000007(A249093(3*(n+1)))` -/
def P944386914807908637.Spec : Prop :=
  ∀ n, P944386914807908637.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P4841527662898586304

`A022303(A016789(abs(2-n)+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074264

/-- `A022303(A016789(abs(2-n)+1))` -/
def P4841527662898586304.Spec : Prop :=
  ∀ n, P4841527662898586304.a n = A074264 (n + 1)

theorem P4841527662898586304.correct : P4841527662898586304.Spec := by
  intro n
  simp only [A074264, Nat.add_sub_cancel]

end A074264

/-! ## A074264.P13754158553323749663

`A000002(3*(n+1))`
-/

namespace A074264.P13754158553323749663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * (n + 1))

end

end A074264.P13754158553323749663

namespace A074264

/-- `A000002(3*(n+1))` -/
def P13754158553323749663.Spec : Prop :=
  ∀ n, P13754158553323749663.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P1417952914079668032

`gcd(2, A000002(Δ[(n+1)²]+n))`
-/

namespace A074264.P1417952914079668032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat)

end

end A074264.P1417952914079668032

namespace A074264

/-- `gcd(2, A000002(Δ[(n+1)²]+n))` -/
def P1417952914079668032.Spec : Prop :=
  ∀ n, (P1417952914079668032.a n : ℤ) = A074264 (n + 1)

end A074264

/-! ## A074264.P16662661058831312342

`A000002(A008486(n+1))!`
-/

namespace A074264.P16662661058831312342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (A008486 (n + 1)).toNat).toNat

end

end A074264.P16662661058831312342

namespace A074264

/-- `A000002(A008486(n+1))!` -/
def P16662661058831312342.Spec : Prop :=
  ∀ n, (P16662661058831312342.a n : ℤ) = A074264 (n + 1)

end A074264

/-! ## A074264.P3231412986002534894

`A000002(Δ[A290768(n+1)])!`
-/

namespace A074264.P3231412986002534894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (f1 (n + 1) - f1 n).toNat).toNat

end

end A074264.P3231412986002534894

namespace A074264

/-- `A000002(Δ[A290768(n+1)])!` -/
def P3231412986002534894.Spec : Prop :=
  ∀ n, (P3231412986002534894.a n : ℤ) = A074264 (n + 1)

end A074264

/-! ## A074264.P9541657126329025949

`A006928(3*n+2)`
-/

namespace A074264.P9541657126329025949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (3 * n + 2)

end

end A074264.P9541657126329025949

namespace A074264

/-- `A006928(3*n+2)` -/
def P9541657126329025949.Spec : Prop :=
  ∀ n, P9541657126329025949.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P2533126089481205206

`A078880(3*n+2)`
-/

namespace A074264.P2533126089481205206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (3 * n + 2)

end

end A074264.P2533126089481205206

namespace A074264

/-- `A078880(3*n+2)` -/
def P2533126089481205206.Spec : Prop :=
  ∀ n, P2533126089481205206.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P4896697051935670893

`2-A078650(3*(n+1))`
-/

namespace A074264.P4896697051935670893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A078650 (3 * (n + 1))

end

end A074264.P4896697051935670893

namespace A074264

/-- `2-A078650(3*(n+1))` -/
def P4896697051935670893.Spec : Prop :=
  ∀ n, P4896697051935670893.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P6018576276019930886

`3-A049705(3*(n+1))`
-/

namespace A074264.P6018576276019930886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (3 * (n + 1))

end

end A074264.P6018576276019930886

namespace A074264

/-- `3-A049705(3*(n+1))` -/
def P6018576276019930886.Spec : Prop :=
  ∀ n, P6018576276019930886.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P11311285466159064975

`A123594(3*n+5)+1`
-/

namespace A074264.P11311285466159064975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (3 * n + 5) + 1

end

end A074264.P11311285466159064975

namespace A074264

/-- `A123594(3*n+5)+1` -/
def P11311285466159064975.Spec : Prop :=
  ∀ n, P11311285466159064975.a n = A074264 (n + 1)

end A074264

/-! ## A074264.P219282958619178701

`and(1, A216637(n+1))+1`
-/

namespace A074264.P219282958619178701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A216637 (n + 1)) + 1

end

end A074264.P219282958619178701

namespace A074264

/-- `and(1, A216637(n+1))+1` -/
def P219282958619178701.Spec : Prop :=
  ∀ n, P219282958619178701.a n = A074264 (n + 1)

end A074264

/-!
# A074265: Values of Kolakoski sequence A000002 at positions n = 0 mod 5.

The programs for A074265, the canonical program `A074265.P15367670436916694011` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074265 has offset 1).

The definition of A074265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074265.P15367670436916694011

`A000002(5*(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074265

/-- `A000002(5*(n+1))` -/
def P15367670436916694011.Spec : Prop :=
  ∀ n, P15367670436916694011.a n = A074265 (n + 1)

theorem P15367670436916694011.correct : P15367670436916694011.Spec := by
  intro n
  simp only [A074265, Nat.add_sub_cancel]

end A074265

/-! ## A074265.P13288545714084020054

`A022303(5*n+1)`
-/

namespace A074265.P13288545714084020054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (5 * n + 1)

end

end A074265.P13288545714084020054

namespace A074265

/-- `A022303(5*n+1)` -/
def P13288545714084020054.Spec : Prop :=
  ∀ n, P13288545714084020054.a n = A074265 (n + 1)

end A074265

/-! ## A074265.P939798048230768927

`and(3, A022303(A016861(n)))`
-/

namespace A074265.P939798048230768927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A022303 (A016861 n).toNat)

end

end A074265.P939798048230768927

namespace A074265

/-- `and(3, A022303(A016861(n)))` -/
def P939798048230768927.Spec : Prop :=
  ∀ n, P939798048230768927.a n = A074265 (n + 1)

end A074265

/-! ## A074265.P2117239014358253536

`A000002(Δ[A005891(n)])!`
-/

namespace A074265.P2117239014358253536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (f1 (n + 1) - f1 n).toNat).toNat

end

end A074265.P2117239014358253536

namespace A074265

/-- `A000002(Δ[A005891(n)])!` -/
def P2117239014358253536.Spec : Prop :=
  ∀ n, (P2117239014358253536.a n : ℤ) = A074265 (n + 1)

end A074265

/-! ## A074265.P5830157170264855504

`A000002(A135042(n+2))!`
-/

namespace A074265.P5830157170264855504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (A135042 (n + 2)).toNat).toNat

end

end A074265.P5830157170264855504

namespace A074265

/-- `A000002(A135042(n+2))!` -/
def P5830157170264855504.Spec : Prop :=
  ∀ n, (P5830157170264855504.a n : ℤ) = A074265 (n + 1)

end A074265

/-! ## A074265.P8814500733895106135

`A000002(record[A195140(n+2)])%4`
-/

namespace A074265.P8814500733895106135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 4

end

end A074265.P8814500733895106135

namespace A074265

/-- `A000002(record[A195140(n+2)])%4` -/
def P8814500733895106135.Spec : Prop :=
  ∀ n, P8814500733895106135.a n = A074265 (n + 1)

end A074265

/-! ## A074265.P12457722618416730947

`A078880(5*n+4)`
-/

namespace A074265.P12457722618416730947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (5 * n + 4)

end

end A074265.P12457722618416730947

namespace A074265

/-- `A078880(5*n+4)` -/
def P12457722618416730947.Spec : Prop :=
  ∀ n, P12457722618416730947.a n = A074265 (n + 1)

theorem P12457722618416730947.correct : P12457722618416730947.Spec := by
  intro n
  simp only [A074265, Nat.add_sub_cancel, A074265.P12457722618416730947.a, A074265.P15367670436916694011.a, A000002, A000002.P13330532946811820297.a, A078880, A078880.P10962953249147653079.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074265

/-! ## A074265.P6232169360603895245

`A006928(3*(n+1)+2*n+1)`
-/

namespace A074265.P6232169360603895245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (3 * (n + 1) + (2 * n + 1))

end

end A074265.P6232169360603895245

namespace A074265

/-- `A006928(3*(n+1)+2*n+1)` -/
def P6232169360603895245.Spec : Prop :=
  ∀ n, P6232169360603895245.a n = A074265 (n + 1)

end A074265

/-! ## A074265.P4554383001501263527

`A123594(5*n+7)+1`
-/

namespace A074265.P4554383001501263527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (5 * n + 7) + 1

end

end A074265.P4554383001501263527

namespace A074265

/-- `A123594(5*n+7)+1` -/
def P4554383001501263527.Spec : Prop :=
  ∀ n, P4554383001501263527.a n = A074265 (n + 1)

end A074265

/-!
# A074267: Primes of form p^n + k, where p is prime, n>1 and 0

The programs for A074267, there is no canonical definition to state claims against.
-/

/-! ## A074267.P13777979799488740373

`A000040(lt[A000007(n), A138363(n+1)]+1)`
-/

namespace A074267.P13777979799488740373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A074267.P13777979799488740373

/-! ## A074267.P3580965951755746887

`A008578(lt[A000007(n), A138363(n+1)]+2)`
-/

namespace A074267.P3580965951755746887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A074267.P3580965951755746887

/-! ## A074267.P11711086446060638231

`A060846(lt[A113389(3*n+2), A069008(n)])`
-/

namespace A074267.P11711086446060638231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074267.P11711086446060638231

/-! ## A074267.P3137652474745095775

`A060846(lt[A113389(3*n+2), A113350(3*n)])`
-/

namespace A074267.P3137652474745095775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113350 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074267.P3137652474745095775

/-!
# A074268: Primes of the form p^2 - p + 1 where p is prime.

The programs for A074268, there is no canonical definition to state claims against.
-/

/-! ## A074268.P13937130464773233078

`A190275(n+1)/A065508(n+1)`
-/

namespace A074268.P13937130464773233078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190275 (n + 1) : ℚ) / (A065508 (n + 1) : ℚ)

end

end A074268.P13937130464773233078

/-! ## A074268.P10684076766153217839

`A065508(n+1)+A136240(n+1)²`
-/

namespace A074268.P10684076766153217839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1) + A136240 (n + 1) ^ 2

end

end A074268.P10684076766153217839

/-! ## A074268.P14493677994875679403

`∩[A034915(n+1), A127727(n+1)]`
-/

namespace A074268.P14493677994875679403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P14493677994875679403

/-! ## A074268.P2615295574862813245

`∩[A034915(n+1), A258435(n+1)]`
-/

namespace A074268.P2615295574862813245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P2615295574862813245

/-! ## A074268.P6154983358994688996

`∩[A127727(n+1), A258435(n+1)]`
-/

namespace A074268.P6154983358994688996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P6154983358994688996

/-! ## A074268.P8811813962705428513

`A190275(n+1)/p?[A259145(n+1)]`
-/

namespace A074268.P8811813962705428513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190275 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A074268.P8811813962705428513

/-! ## A074268.P7275073193772785783

`∩[A258435(n+1), A290817(n+1)]`
-/

namespace A074268.P7275073193772785783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P7275073193772785783

/-! ## A074268.P11438854233973552763

`∩[A034915(n+1), A087126(n+1)]`
-/

namespace A074268.P11438854233973552763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P11438854233973552763

/-! ## A074268.P16942399132856120267

`∩[A087126(n+1), A258435(n+1)]`
-/

namespace A074268.P16942399132856120267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P16942399132856120267

/-! ## A074268.P10953245146702969519

`∩[A034915(n+1), A079477(n+1)]`
-/

namespace A074268.P10953245146702969519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P10953245146702969519

/-! ## A074268.P3696598158387171684

`∩[A034915(n+1), A119959(n+1)]`
-/

namespace A074268.P3696598158387171684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P3696598158387171684

/-! ## A074268.P6602179763661394929

`∩[A079477(n+1), A087126(n+1)]`
-/

namespace A074268.P6602179763661394929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P6602179763661394929

/-! ## A074268.P16148994739217068082

`∩[A079477(n+1), A119959(n+1)]`
-/

namespace A074268.P16148994739217068082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P16148994739217068082

/-! ## A074268.P5841509280925626116

`∩[A087126(n+1), A119959(n+1)]`
-/

namespace A074268.P5841509280925626116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P5841509280925626116

/-! ## A074268.P6209637491089174716

`∩[A079477(n+1), A127727(n+1)]`
-/

namespace A074268.P6209637491089174716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P6209637491089174716

/-! ## A074268.P1686064645102457714

`∩[A119959(n+1), A127727(n+1)]`
-/

namespace A074268.P1686064645102457714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P1686064645102457714

/-! ## A074268.P13265889528847673363

`∩[A079477(n+1), A258435(n+1)]`
-/

namespace A074268.P13265889528847673363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P13265889528847673363

/-! ## A074268.P6112715422589385479

`∩[A079477(n+1), A290817(n+1)]`
-/

namespace A074268.P6112715422589385479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P6112715422589385479

/-! ## A074268.P9772409588893356246

`∩[A119959(n+1), A258435(n+1)]`
-/

namespace A074268.P9772409588893356246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P9772409588893356246

/-! ## A074268.P16331396937233914889

`∩[A119959(n+1), A290817(n+1)]`
-/

namespace A074268.P16331396937233914889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074268.P16331396937233914889

/-!
# A074270: a(n) = the least positive number X such that Cn(X) is X-smooth, where Cn is the n-th cyclotomic polynomial and "X-smooth" means "has no prime factor greater than X".

The programs for A074270, there is no canonical definition to state claims against.
-/

/-! ## A074270.P4816731817483887645

`A281113(A004251(2*(n+1)))+floor(2/acot(n))`
-/

namespace A074270.P4816731817483887645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281113 (A004251 (2 * (n + 1))).toNat + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A074270.P4816731817483887645

/-!
# A074271: a(1) = 1; a(n) = a(n-1) + prime(a(n-1)).

The programs for A074271, there is no canonical definition to state claims against.
-/

/-! ## A074271.P12457009547494325128

`A000720(A093502(n+1))`
-/

namespace A074271.P12457009547494325128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A093502 (n + 1)).toNat

end

end A074271.P12457009547494325128

/-! ## A074271.P14468124899673263110

`A093502(n)+a(n-1)` with `a(0)=1`
-/

namespace A074271.P14468124899673263110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093502 n + a (n - 1)

end

end A074271.P14468124899673263110

/-! ## A074271.P12741747324782609570

`∑[A093502(A028310(n))]-1`
-/

namespace A074271.P12741747324782609570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093502 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A074271.P12741747324782609570

/-! ## A074271.P6628742803057546257

`A260196(n+2)+∑[A093502(A028310(n))]`
-/

namespace A074271.P6628742803057546257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093502 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074271.P6628742803057546257

/-! ## A074271.P5881313378226526017

`A033999(2*n+1)+∑[A093502(A028310(n))]`
-/

namespace A074271.P5881313378226526017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093502 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074271.P5881313378226526017

/-!
# A074272: Partial alternating sums of the Kolakoski sequence A000002.

The programs for A074272, the canonical program `A074272.P2503447662547922239` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074272 has offset 1).

The definition of A074272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074272.P2503447662547922239

`∑[(-1)^n*A000002(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074272

/-- `∑[(-1)^n*A000002(n+1)]` -/
def P2503447662547922239.Spec : Prop :=
  ∀ n, P2503447662547922239.a n = A074272 (n + 1)

theorem P2503447662547922239.correct : P2503447662547922239.Spec := by
  intro n
  simp only [A074272, Nat.add_sub_cancel]

end A074272

/-! ## A074272.P13891813748388483874

`∑[(3-A049705(n+1))*(-1)^n]`
-/

namespace A074272.P13891813748388483874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P13891813748388483874

namespace A074272

/-- `∑[(3-A049705(n+1))*(-1)^n]` -/
def P13891813748388483874.Spec : Prop :=
  ∀ n, P13891813748388483874.a n = A074272 (n + 1)

theorem P13891813748388483874.correct : P13891813748388483874.Spec := by
  intro n
  simp only [A074272, Nat.add_sub_cancel, A074272.P13891813748388483874.f1, A074272.P13891813748388483874.a, A074272.P2503447662547922239.f1, A074272.P2503447662547922239.a, A000002, A000002.P13330532946811820297.a, A049705, A049705.P11002765941806409636.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074272

/-! ## A074272.P7951530818469974810

`∑[(-1)^n*gcd(2, A156253(n+1))]`
-/

namespace A074272.P7951530818469974810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Int.gcd 2 (A156253 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P7951530818469974810

namespace A074272

/-- `∑[(-1)^n*gcd(2, A156253(n+1))]` -/
def P7951530818469974810.Spec : Prop :=
  ∀ n, P7951530818469974810.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P10701073466744167142

`∑[(-1)^n*A006928(char[n^14]+n)]`
-/

namespace A074272.P10701073466744167142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A006928 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P10701073466744167142

namespace A074272

/-- `∑[(-1)^n*A006928(char[n^14]+n)]` -/
def P10701073466744167142.Spec : Prop :=
  ∀ n, P10701073466744167142.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P785007470174166727

`∑[(char[A013948(n+1)-1]+1)*(-1)^n]`
-/

namespace A074272.P785007470174166727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P785007470174166727

namespace A074272

/-- `∑[(char[A013948(n+1)-1]+1)*(-1)^n]` -/
def P785007470174166727.Spec : Prop :=
  ∀ n, P785007470174166727.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P14860113313609403443

`∑[(2-char[A013947(n+1)-1])*(-1)^n]`
-/

namespace A074272.P14860113313609403443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P14860113313609403443

namespace A074272

/-- `∑[(2-char[A013947(n+1)-1])*(-1)^n]` -/
def P14860113313609403443.Spec : Prop :=
  ∀ n, P14860113313609403443.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P15814977486329875623

`∑[(3-A049710(char[n^14]+n))*(-1)^n]`
-/

namespace A074272.P15814977486329875623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049710 ((if ∃ j, f2 j = n then 1 else 0) + n)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P15814977486329875623

namespace A074272

/-- `∑[(3-A049710(char[n^14]+n))*(-1)^n]` -/
def P15814977486329875623.Spec : Prop :=
  ∀ n, P15814977486329875623.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P12687154131856918578

`∑[(A074290(n+1)+n%2+1)*(-1)^n]`
-/

namespace A074272.P12687154131856918578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074290 (n + 1) + ((n % 2 + 1 : ℕ) : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P12687154131856918578

namespace A074272

/-- `∑[(A074290(n+1)+n%2+1)*(-1)^n]` -/
def P12687154131856918578.Spec : Prop :=
  ∀ n, P12687154131856918578.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P1423264989650023707

`∑[A000002(n+1)*A033999(n)]`
-/

namespace A074272.P1423264989650023707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P1423264989650023707

namespace A074272

/-- `∑[A000002(n+1)*A033999(n)]` -/
def P1423264989650023707.Spec : Prop :=
  ∀ n, P1423264989650023707.a n = A074272 (n + 1)

theorem P1423264989650023707.correct : P1423264989650023707.Spec := by
  intro n
  simp only [A074272, Nat.add_sub_cancel, A074272.P1423264989650023707.f1, A074272.P1423264989650023707.a, A074272.P2503447662547922239.f1, A074272.P2503447662547922239.a, A000002, A000002.P13330532946811820297.a, A033999, A033999.P17703899380244199787.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074272

/-! ## A074272.P14139244288125528108

`1-∑[A000002(n+1)*A062157(n)]`
-/

namespace A074272.P14139244288125528108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P14139244288125528108

namespace A074272

/-- `1-∑[A000002(n+1)*A062157(n)]` -/
def P14139244288125528108.Spec : Prop :=
  ∀ n, P14139244288125528108.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P12583674184906390895

`∑[gcd(2, A156253(n+1))*A033999(n)]`
-/

namespace A074272.P12583674184906390895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A156253 (n + 1)) : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P12583674184906390895

namespace A074272

/-- `∑[gcd(2, A156253(n+1))*A033999(n)]` -/
def P12583674184906390895.Spec : Prop :=
  ∀ n, P12583674184906390895.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P10069594985481181822

`∑[(-1)^n*A000034(n-A074290(n+1))]`
-/

namespace A074272.P10069594985481181822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000034 ((n : ℤ) - A074290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P10069594985481181822

namespace A074272

/-- `∑[(-1)^n*A000034(n-A074290(n+1))]` -/
def P10069594985481181822.Spec : Prop :=
  ∀ n, P10069594985481181822.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P7924059818896688523

`∑[(A078880(n+1)+Δ[A049705(n+1)])*(-1)^n]`
-/

namespace A074272.P7924059818896688523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078880 (n + 1) + (f2 (n + 1) - f2 n)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P7924059818896688523

namespace A074272

/-- `∑[(A078880(n+1)+Δ[A049705(n+1)])*(-1)^n]` -/
def P7924059818896688523.Spec : Prop :=
  ∀ n, P7924059818896688523.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P17122439572706333854

`A088568(A054353(n+1))`
-/

namespace A074272.P17122439572706333854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A054353 (n + 1)).toNat

end

end A074272.P17122439572706333854

namespace A074272

/-- `A088568(A054353(n+1))` -/
def P17122439572706333854.Spec : Prop :=
  ∀ n, P17122439572706333854.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P10627795733099967116

`A088568(∑[A000002(n+1)])`
-/

namespace A074272.P10627795733099967116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074272.P10627795733099967116

namespace A074272

/-- `A088568(∑[A000002(n+1)])` -/
def P10627795733099967116.Spec : Prop :=
  ∀ n, P10627795733099967116.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P8700350334536934360

`A088568(A216345(n+2)-1)`
-/

namespace A074272.P8700350334536934360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A216345 (n + 2) - 1).toNat

end

end A074272.P8700350334536934360

namespace A074272

/-- `A088568(A216345(n+2)-1)` -/
def P8700350334536934360.Spec : Prop :=
  ∀ n, P8700350334536934360.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P2428524812641304204

`A088568(A156250(n+1)+n)`
-/

namespace A074272.P2428524812641304204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A156250 (n + 1) + (n : ℤ)).toNat

end

end A074272.P2428524812641304204

namespace A074272

/-- `A088568(A156250(n+1)+n)` -/
def P2428524812641304204.Spec : Prop :=
  ∀ n, P2428524812641304204.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P14984069885006204955

`-A294448(∑[A000002(n+1)])`
-/

namespace A074272.P14984069885006204955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A294448 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074272.P14984069885006204955

namespace A074272

/-- `-A294448(∑[A000002(n+1)])` -/
def P14984069885006204955.Spec : Prop :=
  ∀ n, P14984069885006204955.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P15988806383224525390

`A088568(∑[3-A049705(n+1)])`
-/

namespace A074272.P15988806383224525390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074272.P15988806383224525390

namespace A074272

/-- `A088568(∑[3-A049705(n+1)])` -/
def P15988806383224525390.Spec : Prop :=
  ∀ n, P15988806383224525390.a n = A074272 (n + 1)

end A074272

/-! ## A074272.P18170339561962009570

`A088568(∑[2/A049705(n+1)])`
-/

namespace A074272.P18170339561962009570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A049705 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074272.P18170339561962009570

namespace A074272

/-- `A088568(∑[2/A049705(n+1)])` -/
def P18170339561962009570.Spec : Prop :=
  ∀ n, P18170339561962009570.a n = A074272 (n + 1)

end A074272

/-!
# A074273: Positions in the Kolakoski sequence (A000002) where there are an even number of 1's and the current term is 1.

The programs for A074273, the canonical program `A074273.P3483261039541089389` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074273 has offset 1).

The definition of A074273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074273.P1049287514791039761

`A074274(n)+a(n-1)` with `a(0)=4`
-/

namespace A074273.P1049287514791039761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A074274 n + a (n - 1)

end

end A074273.P1049287514791039761

namespace A074273

/-- `A074274(n)+a(n-1)` -/
def P1049287514791039761.Spec : Prop :=
  ∀ n, P1049287514791039761.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P13156716848417784675

`∑[A074274(A028310(n))]+1`
-/

namespace A074273.P13156716848417784675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074273.P13156716848417784675

namespace A074273

/-- `∑[A074274(A028310(n))]+1` -/
def P13156716848417784675.Spec : Prop :=
  ∀ n, P13156716848417784675.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P1330700165621265875

`∑[A074274(A000038(n)²+n)]`
-/

namespace A074273.P1330700165621265875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074274 (A000038 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074273.P1330700165621265875

namespace A074273

/-- `∑[A074274(A000038(n)²+n)]` -/
def P1330700165621265875.Spec : Prop :=
  ∀ n, P1330700165621265875.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P5288852683427235165

`∑[A074274(A004273(n)+1-n)]+1`
-/

namespace A074273.P5288852683427235165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074274 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074273.P5288852683427235165

namespace A074273

/-- `∑[A074274(A004273(n)+1-n)]+1` -/
def P5288852683427235165.Spec : Prop :=
  ∀ n, P5288852683427235165.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P5433694653746071730

`∑[A074274(n+1)]+4-A074274(n+1)`
-/

namespace A074273.P5433694653746071730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 - A074274 (n + 1))

end

end A074273.P5433694653746071730

namespace A074273

/-- `∑[A074274(n+1)]+4-A074274(n+1)` -/
def P5433694653746071730.Spec : Prop :=
  ∀ n, P5433694653746071730.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P3483261039541089389

`A013947(2*(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A074273

/-- `A013947(2*(n+1))` -/
def P3483261039541089389.Spec : Prop :=
  ∀ n, P3483261039541089389.a n = A074273 (n + 1)

theorem P3483261039541089389.correct : P3483261039541089389.Spec := by
  intro n
  simp only [A074273, Nat.add_sub_cancel]

end A074273

/-! ## A074273.P18361194736242097043

`A022297(2*(n+1))+1`
-/

namespace A074273.P18361194736242097043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (2 * (n + 1)) + 1

end

end A074273.P18361194736242097043

namespace A074273

/-- `A022297(2*(n+1))+1` -/
def P18361194736242097043.Spec : Prop :=
  ∀ n, P18361194736242097043.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P13826182497589056060

`record[A013947(n+2)/A000034(n)]`
-/

namespace A074273.P13826182497589056060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013947 (n + 2) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074273.P13826182497589056060

namespace A074273

/-- `record[A013947(n+2)/A000034(n)]` -/
def P13826182497589056060.Spec : Prop :=
  ∀ n, P13826182497589056060.a n = (A074273 (n + 1) : ℚ)

end A074273

/-! ## A074273.P11072426117143212766

`record[A013947(n+2)/A040001(n+1)]`
-/

namespace A074273.P11072426117143212766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013947 (n + 2) : ℚ) / (A040001 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074273.P11072426117143212766

namespace A074273

/-- `record[A013947(n+2)/A040001(n+1)]` -/
def P11072426117143212766.Spec : Prop :=
  ∀ n, P11072426117143212766.a n = (A074273 (n + 1) : ℚ)

end A074273

/-! ## A074273.P15577326054061740222

`record[root(A013947(n+2), A000034(n+2))]`
-/

namespace A074273.P15577326054061740222
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A013947 (n + 2) : ℝ) ^ (1 / (A000034 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074273.P15577326054061740222

namespace A074273

/-- `record[root(A013947(n+2), A000034(n+2))]` -/
def P15577326054061740222.Spec : Prop :=
  ∀ n, P15577326054061740222.a n = (A074273 (n + 1) : ℝ)

end A074273

/-! ## A074273.P16620568618884367784

`A065475(A022297(2*(n+1)))`
-/

namespace A074273.P16620568618884367784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A022297 (2 * (n + 1))).toNat

end

end A074273.P16620568618884367784

namespace A074273

/-- `A065475(A022297(2*(n+1)))` -/
def P16620568618884367784.Spec : Prop :=
  ∀ n, P16620568618884367784.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P3959897124542665477

`n+2+eq[A000002(2*n+1), A000002(2*n+3)]`
-/

namespace A074273.P3959897124542665477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074273.P3959897124542665477

namespace A074273

/-- `n+2+eq[A000002(2*n+1), A000002(2*n+3)]` -/
def P3959897124542665477.Spec : Prop :=
  ∀ n, (P3959897124542665477.a n : ℤ) = A074273 (n + 1)

end A074273

/-! ## A074273.P12851371702233206753

`filter[A156253(2*(n+1)), A078650(#)]`
-/

namespace A074273.P12851371702233206753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078650 (f1 j).toNat = 1) n)

end

end A074273.P12851371702233206753

namespace A074273

/-- `filter[A156253(2*(n+1)), A078650(#)]` -/
def P12851371702233206753.Spec : Prop :=
  ∀ n, P12851371702233206753.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P11718496667778873967

`lt[A088570(n+1), A088570(A054353(n+1))]+1`
-/

namespace A074273.P11718496667778873967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (A054353 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074273.P11718496667778873967

namespace A074273

/-- `lt[A088570(n+1), A088570(A054353(n+1))]+1` -/
def P11718496667778873967.Spec : Prop :=
  ∀ n, (P11718496667778873967.a n : ℤ) = A074273 (n + 1)

end A074273

/-! ## A074273.P1859375038052143739

`A306229(A013948(2*(n+1)))`
-/

namespace A074273.P1859375038052143739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A013948 (2 * (n + 1))).toNat

end

end A074273.P1859375038052143739

namespace A074273

/-- `A306229(A013948(2*(n+1)))` -/
def P1859375038052143739.Spec : Prop :=
  ∀ n, P1859375038052143739.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P13526667671258779853

`A306229(A306229(A013947(n+2+n)))`
-/

namespace A074273.P13526667671258779853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A306229 (A013947 (n + 2 + n)).toNat).toNat

end

end A074273.P13526667671258779853

namespace A074273

/-- `A306229(A306229(A013947(n+2+n)))` -/
def P13526667671258779853.Spec : Prop :=
  ∀ n, P13526667671258779853.a n = A074273 (n + 1)

end A074273

/-! ## A074273.P9503890712844548974

`lt[A123594(n+2), char[A156253(2*(n+2))]]`
-/

namespace A074273.P9503890712844548974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * (n + 2))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074273.P9503890712844548974

namespace A074273

/-- `lt[A123594(n+2), char[A156253(2*(n+2))]]` -/
def P9503890712844548974.Spec : Prop :=
  ∀ n, (P9503890712844548974.a n : ℤ) = A074273 (n + 1)

end A074273

/-!
# A074274: Gaps between even number of 1's in the Kolakoski sequence A000002.

The programs for A074274, the canonical program `A074274.P5256342783301417173` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074274 has offset 1).

The definition of A074274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074274.P5256342783301417173

`Δ[A074273(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074274

/-- `Δ[A074273(n+1)]` -/
def P5256342783301417173.Spec : Prop :=
  ∀ n, P5256342783301417173.a n = A074274 (n + 1)

theorem P5256342783301417173.correct : P5256342783301417173.Spec := by
  intro n
  simp only [A074274, Nat.add_sub_cancel]

end A074274

/-! ## A074274.P6946913748110984108

`A074273(n+2)-A074273(n+1)`
-/

namespace A074274.P6946913748110984108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074273 (n + 2) - A074273 (n + 1)

end

end A074274.P6946913748110984108

namespace A074274

/-- `A074273(n+2)-A074273(n+1)` -/
def P6946913748110984108.Spec : Prop :=
  ∀ n, P6946913748110984108.a n = A074274 (n + 1)

theorem P6946913748110984108.correct : P6946913748110984108.Spec := by
  intro n
  simp only [A074274, Nat.add_sub_cancel, A074274.P6946913748110984108.a, A074274.P5256342783301417173.f1, A074274.P5256342783301417173.a, SequenceMachineLib.memo_apply]

end A074274

/-! ## A074274.P2704288404479272272

`A074273(A000027(n+2))%A074273(n+1)`
-/

namespace A074274.P2704288404479272272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074273 (A000027 (n + 2)).toNat) (A074273 (n + 1))

end

end A074274.P2704288404479272272

namespace A074274

/-- `A074273(A000027(n+2))%A074273(n+1)` -/
def P2704288404479272272.Spec : Prop :=
  ∀ n, P2704288404479272272.a n = A074274 (n + 1)

end A074274

/-! ## A074274.P12372926054856458680

`A028310(A074273(n+2)%A074273(n+1))`
-/

namespace A074274.P12372926054856458680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A074273 (n + 2)) (A074273 (n + 1))).toNat

end

end A074274.P12372926054856458680

namespace A074274

/-- `A028310(A074273(n+2)%A074273(n+1))` -/
def P12372926054856458680.Spec : Prop :=
  ∀ n, P12372926054856458680.a n = A074274 (n + 1)

end A074274

/-! ## A074274.P11886365999621540614

`Δ[A013947(2*(n+1))]`
-/

namespace A074274.P11886365999621540614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074274.P11886365999621540614

namespace A074274

/-- `Δ[A013947(2*(n+1))]` -/
def P11886365999621540614.Spec : Prop :=
  ∀ n, P11886365999621540614.a n = A074274 (n + 1)

end A074274

/-! ## A074274.P1545965993065406867

`Δ[A022297(2*(n+1))]`
-/

namespace A074274.P1545965993065406867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074274.P1545965993065406867

namespace A074274

/-- `Δ[A022297(2*(n+1))]` -/
def P1545965993065406867.Spec : Prop :=
  ∀ n, P1545965993065406867.a n = A074274 (n + 1)

end A074274

/-! ## A074274.P14269098746126515116

`A013947(2*(n+2))-A013947(2*(n+1))`
-/

namespace A074274.P14269098746126515116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (2 * (n + 2)) - A013947 (2 * (n + 1))

end

end A074274.P14269098746126515116

namespace A074274

/-- `A013947(2*(n+2))-A013947(2*(n+1))` -/
def P14269098746126515116.Spec : Prop :=
  ∀ n, P14269098746126515116.a n = A074274 (n + 1)

end A074274

/-! ## A074274.P9060926297381201226

`A022297(2*(n+2))-A022297(2*(n+1))`
-/

namespace A074274.P9060926297381201226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (2 * (n + 2)) - A022297 (2 * (n + 1))

end

end A074274.P9060926297381201226

namespace A074274

/-- `A022297(2*(n+2))-A022297(2*(n+1))` -/
def P9060926297381201226.Spec : Prop :=
  ∀ n, P9060926297381201226.a n = A074274 (n + 1)

end A074274

/-! ## A074274.P17587981569754314397

`Δ[eq[A100428(n+2), A100428(n+1)]]+1`
-/

namespace A074274.P17587981569754314397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A074274.P17587981569754314397

namespace A074274

/-- `Δ[eq[A100428(n+2), A100428(n+1)]]+1` -/
def P17587981569754314397.Spec : Prop :=
  ∀ n, P17587981569754314397.a n = A074274 (n + 1)

end A074274

/-! ## A074274.P13797655520698199007

`Δ[A306229(A013948(2*(n+1)))]`
-/

namespace A074274.P13797655520698199007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A013948 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074274.P13797655520698199007

namespace A074274

/-- `Δ[A306229(A013948(2*(n+1)))]` -/
def P13797655520698199007.Spec : Prop :=
  ∀ n, P13797655520698199007.a n = A074274 (n + 1)

end A074274

/-!
# A074275: Positions of occurrences of 1,2,2,1,2 in the Kolakoski sequence A000002.

The programs for A074275, there is no canonical definition to state claims against.
-/

/-! ## A074275.P2372057160097838783

`eq[4, A249093(n+2)]+2`
-/

namespace A074275.P2372057160097838783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A074275.P2372057160097838783

/-! ## A074275.P10093385776248511793

`A054353(eq[-A054354(n+1), A040001(n)])`
-/

namespace A074275.P10093385776248511793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A054354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074275.P10093385776248511793

/-! ## A074275.P8101447079424724157

`A054353(eq[A088570(n+2), A156728(n+1)])`
-/

namespace A074275.P8101447079424724157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074275.P8101447079424724157

/-! ## A074275.P10144278929677937075

`A054353(lt[A088570(n+2), A000002(n+1)])`
-/

namespace A074275.P10144278929677937075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074275.P10144278929677937075

/-! ## A074275.P58193260120966992

`A054353(lt[A088570(n+2), 3-A049705(n+1)])`
-/

namespace A074275.P58193260120966992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074275.P58193260120966992

/-! ## A074275.P10187175933928917469

`A009056(eq[4, A249093(n+2)])`
-/

namespace A074275.P10187175933928917469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074275.P10187175933928917469

/-! ## A074275.P9061203445783958687

`lt[A156728(n+1), A054354(n+3)]`
-/

namespace A074275.P9061203445783958687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074275.P9061203445783958687

/-! ## A074275.P7791854606401164854

`lt[abs(A054354(n+1)), A054354(n+3)]`
-/

namespace A074275.P7791854606401164854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054354 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074275.P7791854606401164854

/-! ## A074275.P14647747801484942526

`eq[A054354(n+1)+A000002(n+3), A054354(n+3)]`
-/

namespace A074275.P14647747801484942526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1) + A000002 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074275.P14647747801484942526

/-! ## A074275.P10631446644998548310

`eq[4, A249093(A233583(n+1))]`
-/

namespace A074275.P10631446644998548310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074275.P10631446644998548310

/-!
# A074276: Positions of occurrences of 2,1,1,2,1 in the Kolakoski sequence A000002.

The programs for A074276, the canonical program `A074276.P923500997283116459` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074276 has offset 1).

The definition of A074276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074276.P1109627569738574453

`eq[2, A249507(n+3)]+1`
-/

namespace A074276.P1109627569738574453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249507 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074276.P1109627569738574453

namespace A074276

/-- `eq[2, A249507(n+3)]+1` -/
def P1109627569738574453.Spec : Prop :=
  ∀ n, (P1109627569738574453.a n : ℤ) = A074276 (n + 1)

end A074276

/-! ## A074276.P15302778230595840639

`eq[A244226(A249093(n+3)), A249093(n+2)]+1`
-/

namespace A074276.P15302778230595840639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (A249093 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074276.P15302778230595840639

namespace A074276

/-- `eq[A244226(A249093(n+3)), A249093(n+2)]+1` -/
def P15302778230595840639.Spec : Prop :=
  ∀ n, (P15302778230595840639.a n : ℤ) = A074276 (n + 1)

end A074276

/-! ## A074276.P18439803208505735790

`eq[2, A249507(n+2)]`
-/

namespace A074276.P18439803208505735790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249507 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074276.P18439803208505735790

namespace A074276

/-- `eq[2, A249507(n+2)]` -/
def P18439803208505735790.Spec : Prop :=
  ∀ n, (P18439803208505735790.a n : ℤ) = A074276 (n + 1)

end A074276

/-! ## A074276.P7019779769514705710

`eq[A249094(n+2)+1, A249093(n+2)]`
-/

namespace A074276.P7019779769514705710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074276.P7019779769514705710

namespace A074276

/-- `eq[A249094(n+2)+1, A249093(n+2)]` -/
def P7019779769514705710.Spec : Prop :=
  ∀ n, (P7019779769514705710.a n : ℤ) = A074276 (n + 1)

end A074276

/-! ## A074276.P9064087596240561318

`eq[2, A201277(a(n-1)+1)*A249093(n+2)]` with `a(0)=1`
-/

namespace A074276.P9064087596240561318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A201277 (f2 (n - 1) + 1).toNat * A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074276.P9064087596240561318

namespace A074276

/-- `eq[2, A201277(a(n-1)+1)*A249093(n+2)]` -/
def P9064087596240561318.Spec : Prop :=
  ∀ n, (P9064087596240561318.a n : ℤ) = A074276 (n + 1)

end A074276

/-! ## A074276.P13692201013848405539

`eq[A249062(A249094(n+2)), A249093(n+2)]`
-/

namespace A074276.P13692201013848405539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249062 (A249094 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074276.P13692201013848405539

namespace A074276

/-- `eq[A249062(A249094(n+2)), A249093(n+2)]` -/
def P13692201013848405539.Spec : Prop :=
  ∀ n, (P13692201013848405539.a n : ℤ) = A074276 (n + 1)

end A074276

/-! ## A074276.P923500997283116459

`A156242(lt[A100429(n+1), A100428(n+1)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A074276

/-- `A156242(lt[A100429(n+1), A100428(n+1)])` -/
def P923500997283116459.Spec : Prop :=
  ∀ n, P923500997283116459.a n = A074276 (n + 1)

theorem P923500997283116459.correct : P923500997283116459.Spec := by
  intro n
  simp only [A074276, Nat.add_sub_cancel]

end A074276

/-! ## A074276.P5959346680371412096

`A156242(lt[A000002(2*(n+1)), A100428(n+1)])`
-/

namespace A074276.P5959346680371412096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P5959346680371412096

namespace A074276

/-- `A156242(lt[A000002(2*(n+1)), A100428(n+1)])` -/
def P5959346680371412096.Spec : Prop :=
  ∀ n, P5959346680371412096.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P15082314385968230180

`A156242(lt[A100429(n+1), A000002(2*n+1)!])`
-/

namespace A074276.P15082314385968230180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A074276.P15082314385968230180

namespace A074276

/-- `A156242(lt[A100429(n+1), A000002(2*n+1)!])` -/
def P15082314385968230180.Spec : Prop :=
  ∀ n, P15082314385968230180.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P16625439660081620177

`A156242(lt[A000002(2*(n+1)), A000002(2*n+1)])`
-/

namespace A074276.P16625439660081620177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P16625439660081620177

namespace A074276

/-- `A156242(lt[A000002(2*(n+1)), A000002(2*n+1)])` -/
def P16625439660081620177.Spec : Prop :=
  ∀ n, P16625439660081620177.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P17798411547255596227

`A054353(eq[A006928(n+1), A074290(n+1)])`
-/

namespace A074276.P17798411547255596227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074276.P17798411547255596227

namespace A074276

/-- `A054353(eq[A006928(n+1), A074290(n+1)])` -/
def P17798411547255596227.Spec : Prop :=
  ∀ n, P17798411547255596227.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P10861399758621274050

`A054353(eq[A074290(n+1), A078880(n+1)])`
-/

namespace A074276.P10861399758621274050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074276.P10861399758621274050

namespace A074276

/-- `A054353(eq[A074290(n+1), A078880(n+1)])` -/
def P10861399758621274050.Spec : Prop :=
  ∀ n, P10861399758621274050.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P2867386677970720077

`A054353(lt[1, A156728(n+1)+A074290(n+1)])`
-/

namespace A074276.P2867386677970720077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1) + A074290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074276.P2867386677970720077

namespace A074276

/-- `A054353(lt[1, A156728(n+1)+A074290(n+1)])` -/
def P2867386677970720077.Spec : Prop :=
  ∀ n, P2867386677970720077.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P8329628667338007864

`A156242(lt[A078880(2*n+1), A100428(n+1)])`
-/

namespace A074276.P8329628667338007864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P8329628667338007864

namespace A074276

/-- `A156242(lt[A078880(2*n+1), A100428(n+1)])` -/
def P8329628667338007864.Spec : Prop :=
  ∀ n, P8329628667338007864.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P6067501059963655297

`A156242(lt[A088570(2*(n+1)), A332875(n+1)])`
-/

namespace A074276.P6067501059963655297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P6067501059963655297

namespace A074276

/-- `A156242(lt[A088570(2*(n+1)), A332875(n+1)])` -/
def P6067501059963655297.Spec : Prop :=
  ∀ n, P6067501059963655297.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P16118278970974928291

`A156242(lt[A049705(2*n+1), A049705(2*(n+1))])`
-/

namespace A074276.P16118278970974928291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P16118278970974928291

namespace A074276

/-- `A156242(lt[A049705(2*n+1), A049705(2*(n+1))])` -/
def P16118278970974928291.Spec : Prop :=
  ∀ n, P16118278970974928291.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P1013284104792645120

`A156242(lt[A088570(2*(n+1)), A088570(2*n+1)²])`
-/

namespace A074276.P1013284104792645120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P1013284104792645120

namespace A074276

/-- `A156242(lt[A088570(2*(n+1)), A088570(2*n+1)²])` -/
def P1013284104792645120.Spec : Prop :=
  ∀ n, P1013284104792645120.a n = A074276 (n + 1)

end A074276

/-! ## A074276.P9526598575844418707

`eq[A249094(n+2)², A000002(n+4)]`
-/

namespace A074276.P9526598575844418707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074276.P9526598575844418707

namespace A074276

/-- `eq[A249094(n+2)², A000002(n+4)]` -/
def P9526598575844418707.Spec : Prop :=
  ∀ n, (P9526598575844418707.a n : ℤ) = A074276 (n + 1)

end A074276

/-! ## A074276.P16940672815999228729

`eq[A000002(n+1)+1, A249093(n+2)]`
-/

namespace A074276.P16940672815999228729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074276.P16940672815999228729

namespace A074276

/-- `eq[A000002(n+1)+1, A249093(n+2)]` -/
def P16940672815999228729.Spec : Prop :=
  ∀ n, (P16940672815999228729.a n : ℤ) = A074276 (n + 1)

end A074276

/-! ## A074276.P9807497658295263385

`eq[A000002(n+1), A000045(A249093(n+2))]`
-/

namespace A074276.P9807497658295263385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A249093 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074276.P9807497658295263385

namespace A074276

/-- `eq[A000002(n+1), A000045(A249093(n+2))]` -/
def P9807497658295263385.Spec : Prop :=
  ∀ n, (P9807497658295263385.a n : ℤ) = A074276 (n + 1)

end A074276

/-!
# A074277: Positions of occurrences of 1,1,2,1,2,2,1,1,2 in the Kolakoski sequence A000002.

The programs for A074277, there is no canonical definition to state claims against.
-/

/-! ## A074277.P6614275848428256558

`eq[8, A249507(n+3)]`
-/

namespace A074277.P6614275848428256558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249507 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074277.P6614275848428256558

/-! ## A074277.P16315383610550975442

`eq[7, A249093(A000002(n+1)+n+2)]`
-/

namespace A074277.P16315383610550975442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A000002 (n + 1) + (n : ℤ) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074277.P16315383610550975442

/-! ## A074277.P14479507088719569300

`eq[7, A249093(A054354(n+1)+n+2)]`
-/

namespace A074277.P14479507088719569300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A054354 (n + 1) + (n : ℤ) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074277.P14479507088719569300

/-! ## A074277.P8201905954412658199

`eq[A100808(n+2)+5, A249093(n+3)]`
-/

namespace A074277.P8201905954412658199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100808 (n + 2) + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074277.P8201905954412658199

/-! ## A074277.P15707321376893768033

`eq[7, A249093(A156728(n+1)+n+2)]`
-/

namespace A074277.P15707321376893768033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A156728 (n + 1) + (n : ℤ) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074277.P15707321376893768033

/-!
# A074278: Positions in the Kolakoski sequence A000002 when there are a multiple of 3 1's and the current term is 1.

The programs for A074278, the canonical program `A074278.P1830901965938384071` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074278 has offset 1).

The definition of A074278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074278.P1830901965938384071

`A022304(3*n)+4`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A074278

/-- `A022304(3*n)+4` -/
def P1830901965938384071.Spec : Prop :=
  ∀ n, P1830901965938384071.a n = A074278 (n + 1)

theorem P1830901965938384071.correct : P1830901965938384071.Spec := by
  intro n
  simp only [A074278, Nat.add_sub_cancel]

end A074278

/-! ## A074278.P10906790892088236205

`A013947(3*(n+1))`
-/

namespace A074278.P10906790892088236205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (3 * (n + 1))

end

end A074278.P10906790892088236205

namespace A074278

/-- `A013947(3*(n+1))` -/
def P10906790892088236205.Spec : Prop :=
  ∀ n, P10906790892088236205.a n = A074278 (n + 1)

end A074278

/-! ## A074278.P14086347173700309981

`A022297(3*(n+1))+1`
-/

namespace A074278.P14086347173700309981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (3 * (n + 1)) + 1

end

end A074278.P14086347173700309981

namespace A074278

/-- `A022297(3*(n+1))+1` -/
def P14086347173700309981.Spec : Prop :=
  ∀ n, P14086347173700309981.a n = A074278 (n + 1)

end A074278

/-! ## A074278.P15399590243134316188

`record[A013947(A113655(n+1))]`
-/

namespace A074278.P15399590243134316188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (A113655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074278.P15399590243134316188

namespace A074278

/-- `record[A013947(A113655(n+1))]` -/
def P15399590243134316188.Spec : Prop :=
  ∀ n, P15399590243134316188.a n = A074278 (n + 1)

end A074278

/-! ## A074278.P17821853847682484198

`record[A013947(A080512(n+2))]`
-/

namespace A074278.P17821853847682484198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (A080512 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074278.P17821853847682484198

namespace A074278

/-- `record[A013947(A080512(n+2))]` -/
def P17821853847682484198.Spec : Prop :=
  ∀ n, P17821853847682484198.a n = A074278 (n + 1)

end A074278

/-! ## A074278.P8411524976373905960

`A306229(A013948(3*(n+1)))`
-/

namespace A074278.P8411524976373905960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A013948 (3 * (n + 1))).toNat

end

end A074278.P8411524976373905960

namespace A074278

/-- `A306229(A013948(3*(n+1)))` -/
def P8411524976373905960.Spec : Prop :=
  ∀ n, P8411524976373905960.a n = A074278 (n + 1)

end A074278

/-! ## A074278.P3116141824690084709

`A306229(A078649(3*(n+1))-(3*n+2))`
-/

namespace A074278.P3116141824690084709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A078649 (3 * (n + 1)) - (3 * n + 2 : ℤ)).toNat

end

end A074278.P3116141824690084709

namespace A074278

/-- `A306229(A078649(3*(n+1))-(3*n+2))` -/
def P3116141824690084709.Spec : Prop :=
  ∀ n, P3116141824690084709.a n = A074278 (n + 1)

end A074278

/-! ## A074278.P2051850646837046914

`A306229(A013948(Δ[(n+1)²]+n))%A074273(n+1)²`
-/

namespace A074278.P2051850646837046914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306229 (A013948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat).toNat) (A074273 (n + 1) ^ 2)

end

end A074278.P2051850646837046914

namespace A074278

/-- `A306229(A013948(Δ[(n+1)²]+n))%A074273(n+1)²` -/
def P2051850646837046914.Spec : Prop :=
  ∀ n, P2051850646837046914.a n = A074278 (n + 1)

end A074278

/-!
# A074279: n appears n^2 times.

The programs for A074279, the canonical program `A074279.P14114170349531926327` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074279 has offset 1).

The definition of A074279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074279.P14114170349531926327

`∑[char[∑[n²]]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074279

/-- `∑[char[∑[n²]]]` -/
def P14114170349531926327.Spec : Prop :=
  ∀ n, (P14114170349531926327.a n : ℤ) = A074279 (n + 1)

theorem P14114170349531926327.correct : P14114170349531926327.Spec := by
  intro n
  simp only [A074279, Nat.add_sub_cancel]

end A074279

/-! ## A074279.P1831984000667478989

`∑[char[∑[n^2]]]%41`
-/

namespace A074279.P1831984000667478989
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 41

end

end A074279.P1831984000667478989

namespace A074279

/-- `∑[char[∑[n^2]]]%41` -/
def P1831984000667478989.Spec : Prop :=
  ∀ n, (P1831984000667478989.a n : ℤ) = A074279 (n + 1)

end A074279

/-! ## A074279.P3123213360866243863

`∑[char[∑[record[n*(n-2)]+1]]]+1`
-/

namespace A074279.P3123213360866243863
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074279.P3123213360866243863

namespace A074279

/-- `∑[char[∑[record[n*(n-2)]+1]]]+1` -/
def P3123213360866243863.Spec : Prop :=
  ∀ n, (P3123213360866243863.a n : ℤ) = A074279 (n + 1)

end A074279

/-! ## A074279.P4619732844239650454

`∑[char[∑[lcm(n, n+1)+n+1]]]+1`
-/

namespace A074279.P4619732844239650454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) + (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074279.P4619732844239650454

namespace A074279

/-- `∑[char[∑[lcm(n, n+1)+n+1]]]+1` -/
def P4619732844239650454.Spec : Prop :=
  ∀ n, (P4619732844239650454.a n : ℤ) = A074279 (n + 1)

end A074279

/-! ## A074279.P10264482990284295519

`∑[char[∑[∑[2*n+1]]]]%(n+1)+1`
-/

namespace A074279.P10264482990284295519
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 1

end

end A074279.P10264482990284295519

namespace A074279

/-- `∑[char[∑[∑[2*n+1]]]]%(n+1)+1` -/
def P10264482990284295519.Spec : Prop :=
  ∀ n, (P10264482990284295519.a n : ℤ) = A074279 (n + 1)

end A074279

/-! ## A074279.P362574881763751704

`char[a(n-1)+(n+1)²]+a(n-1)` with `a(0)=1`
-/

namespace A074279.P362574881763751704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A074279.P362574881763751704

namespace A074279

/-- `char[a(n-1)+(n+1)²]+a(n-1)` -/
def P362574881763751704.Spec : Prop :=
  ∀ n, (P362574881763751704.a n : ℤ) = A074279 (n + 1)

end A074279

/-! ## A074279.P13367890858560155409

`sqrt(A213083(n+1))`
-/

namespace A074279.P13367890858560155409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A213083 (n + 1) : ℝ)

end

end A074279.P13367890858560155409

namespace A074279

/-- `sqrt(A213083(n+1))` -/
def P13367890858560155409.Spec : Prop :=
  ∀ n, P13367890858560155409.a n = (A074279 (n + 1) : ℝ)

end A074279

/-! ## A074279.P13913689482102966368

`A377721(n+1)-n`
-/

namespace A074279.P13913689482102966368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377721 (n + 1) - (n : ℤ)

end

end A074279.P13913689482102966368

namespace A074279

/-- `A377721(n+1)-n` -/
def P13913689482102966368.Spec : Prop :=
  ∀ n, P13913689482102966368.a n = A074279 (n + 1)

theorem P13913689482102966368.correct : P13913689482102966368.Spec := by
  intro n
  simp only [A074279, Nat.add_sub_cancel, A074279.P13913689482102966368.a, A074279.P14114170349531926327.f3, A074279.P14114170349531926327.f2, A074279.P14114170349531926327.f1, A074279.P14114170349531926327.a, A377721, A377721.P13608278594952562135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074279

/-! ## A074279.P7315149510013299130

`A253903(n)+a(n-1)` with `a(0)=1`
-/

namespace A074279.P7315149510013299130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253903 n + a (n - 1)

end

end A074279.P7315149510013299130

namespace A074279

/-- `A253903(n)+a(n-1)` -/
def P7315149510013299130.Spec : Prop :=
  ∀ n, P7315149510013299130.a n = A074279 (n + 1)

end A074279

/-! ## A074279.P10130607556654410509

`∑[char[A000330(n+1)]]+1`
-/

namespace A074279.P10130607556654410509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074279.P10130607556654410509

namespace A074279

/-- `∑[char[A000330(n+1)]]+1` -/
def P10130607556654410509.Spec : Prop :=
  ∀ n, (P10130607556654410509.a n : ℤ) = A074279 (n + 1)

end A074279

/-! ## A074279.P5650258155866929805

`∑[char[A006918(2*n+1)]]+1`
-/

namespace A074279.P5650258155866929805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074279.P5650258155866929805

namespace A074279

/-- `∑[char[A006918(2*n+1)]]+1` -/
def P5650258155866929805.Spec : Prop :=
  ∀ n, (P5650258155866929805.a n : ℤ) = A074279 (n + 1)

end A074279

/-! ## A074279.P9526391498979051159

`A000027(∑[char[A000330(n)]])`
-/

namespace A074279.P9526391498979051159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074279.P9526391498979051159

namespace A074279

/-- `A000027(∑[char[A000330(n)]])` -/
def P9526391498979051159.Spec : Prop :=
  ∀ n, P9526391498979051159.a n = A074279 (n + 1)

end A074279

/-! ## A074279.P742110389833704756

`A002024(∑[char[A006463(n)+n]])`
-/

namespace A074279.P742110389833704756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074279.P742110389833704756

namespace A074279

/-- `A002024(∑[char[A006463(n)+n]])` -/
def P742110389833704756.Spec : Prop :=
  ∀ n, P742110389833704756.a n = A074279 (n + 1)

end A074279

/-! ## A074279.P7472986960001924594

`A345018(n+2-A064866(n+1))`
-/

namespace A074279.P7472986960001924594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345018 ((n + 2 : ℤ) - A064866 (n + 1)).toNat

end

end A074279.P7472986960001924594

namespace A074279

/-- `A345018(n+2-A064866(n+1))` -/
def P7472986960001924594.Spec : Prop :=
  ∀ n, P7472986960001924594.a n = A074279 (n + 1)

end A074279

/-! ## A074279.P6910753491920938825

`lt[1, A292781(n)²]-n`
-/

namespace A074279.P6910753491920938825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A074279.P6910753491920938825

namespace A074279

/-- `lt[1, A292781(n)²]-n` -/
def P6910753491920938825.Spec : Prop :=
  ∀ n, P6910753491920938825.a n = A074279 (n + 1)

end A074279

/-! ## A074279.P4369739804696407407

`A237451(n+1)+A214651(n+1)`
-/

namespace A074279.P4369739804696407407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1) + A214651 (n + 1)

end

end A074279.P4369739804696407407

namespace A074279

/-- `A237451(n+1)+A214651(n+1)` -/
def P4369739804696407407.Spec : Prop :=
  ∀ n, P4369739804696407407.a n = A074279 (n + 1)

end A074279

/-! ## A074279.P12427652198957342280

`A062153(A044995(n+1))`
-/

namespace A074279.P12427652198957342280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A044995 (n + 1)).toNat

end

end A074279.P12427652198957342280

namespace A074279

/-- `A062153(A044995(n+1))` -/
def P12427652198957342280.Spec : Prop :=
  ∀ n, P12427652198957342280.a n = A074279 (n + 1)

end A074279

/-! ## A074279.P12453817408800191454

`A062153(A044971(n+1))`
-/

namespace A074279.P12453817408800191454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A044971 (n + 1)).toNat

end

end A074279.P12453817408800191454

namespace A074279

/-- `A062153(A044971(n+1))` -/
def P12453817408800191454.Spec : Prop :=
  ∀ n, P12453817408800191454.a n = A074279 (n + 1)

end A074279

/-!
# A074281: Primes of the form Lucas(2*n)/3.

The programs for A074281, there is no canonical definition to state claims against.
-/

/-! ## A074281.P13328112491553451427

`A152119(A074304(n+1))`
-/

namespace A074281.P13328112491553451427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152119 (A074304 (n + 1)).toNat

end

end A074281.P13328112491553451427

/-! ## A074281.P8702827089984651867

`A049685(A355980(n+1))`
-/

namespace A074281.P8702827089984651867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049685 (A355980 (n + 1)).toNat

end

end A074281.P8702827089984651867

/-! ## A074281.P9518730970418078206

`A058036(2*A074304(n+1))`
-/

namespace A074281.P9518730970418078206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058036 (2 * A074304 (n + 1)).toNat

end

end A074281.P9518730970418078206

/-!
# A074283: Sum of the aliquot divisors of n-th Fibonacci number.

The programs for A074283, the canonical program `A074283.P13789611695152124336` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074283 has offset 1).

The definition of A074283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074283.P13789611695152124336

`A063477(n+1)-A000045(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074283

/-- `A063477(n+1)-A000045(n+1)` -/
def P13789611695152124336.Spec : Prop :=
  ∀ n, P13789611695152124336.a n = A074283 (n + 1)

theorem P13789611695152124336.correct : P13789611695152124336.Spec := by
  intro n
  simp only [A074283, Nat.add_sub_cancel]

end A074283

/-! ## A074283.P18268651014400722752

`A001065(A000045(n+1))`
-/

namespace A074283.P18268651014400722752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000045 (n + 1)).toNat

end

end A074283.P18268651014400722752

namespace A074283

/-- `A001065(A000045(n+1))` -/
def P18268651014400722752.Spec : Prop :=
  ∀ n, P18268651014400722752.a n = A074283 (n + 1)

end A074283

/-! ## A074283.P17762788299599306229

`A152990(n+1)+A152774(n+1)`
-/

namespace A074283.P17762788299599306229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152990 (n + 1) + A152774 (n + 1)

end

end A074283.P17762788299599306229

namespace A074283

/-- `A152990(n+1)+A152774(n+1)` -/
def P17762788299599306229.Spec : Prop :=
  ∀ n, P17762788299599306229.a n = A074283 (n + 1)

end A074283

/-! ## A074283.P3370938554637346527

`A063477(n+1)-(A000071(n+1)+1)`
-/

namespace A074283.P3370938554637346527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063477 (n + 1) - (A000071 (n + 1) + 1)

end

end A074283.P3370938554637346527

namespace A074283

/-- `A063477(n+1)-(A000071(n+1)+1)` -/
def P3370938554637346527.Spec : Prop :=
  ∀ n, P3370938554637346527.a n = A074283 (n + 1)

end A074283

/-! ## A074283.P14590370008603701825

`A063375(n+1)+A152990(n+1)-1`
-/

namespace A074283.P14590370008603701825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1) + (A152990 (n + 1) - 1)

end

end A074283.P14590370008603701825

namespace A074283

/-- `A063375(n+1)+A152990(n+1)-1` -/
def P14590370008603701825.Spec : Prop :=
  ∀ n, P14590370008603701825.a n = A074283 (n + 1)

end A074283

/-! ## A074283.P10928761253201635209

`A193293(n+1)+A193294(n+1)-A000045(n+1)`
-/

namespace A074283.P10928761253201635209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193293 (n + 1) + (A193294 (n + 1) - A000045 (n + 1))

end

end A074283.P10928761253201635209

namespace A074283

/-- `A193293(n+1)+A193294(n+1)-A000045(n+1)` -/
def P10928761253201635209.Spec : Prop :=
  ∀ n, P10928761253201635209.a n = A074283 (n + 1)

theorem P10928761253201635209.correct : P10928761253201635209.Spec := by
  intro n
  simp only [A074283, Nat.add_sub_cancel, A074283.P10928761253201635209.a, A074283.P13789611695152124336.a, A000045, A000045.P11838749114346432762.a, A063477, A063477.P7827917804109814506.a, A193293, A193293.P5334234728514628481.a, A193294, A193294.P17160305021971217046.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074283

/-! ## A074283.P12276172118089292499

`A063477(n+1)-(A278350(n+1)+A065449(n+1))`
-/

namespace A074283.P12276172118089292499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063477 (n + 1) - (A278350 (n + 1) + A065449 (n + 1))

end

end A074283.P12276172118089292499

namespace A074283

/-- `A063477(n+1)-(A278350(n+1)+A065449(n+1))` -/
def P12276172118089292499.Spec : Prop :=
  ∀ n, P12276172118089292499.a n = A074283 (n + 1)

end A074283

/-!
# A074284: Sum of the aliquot divisors of n-th triangular number.

The programs for A074284, the canonical program `A074284.P11772456317702970427` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074284 has offset 1).

The definition of A074284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074284.P11772456317702970427

`A074285(n+1)-∑[n+1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074284

/-- `A074285(n+1)-∑[n+1]` -/
def P11772456317702970427.Spec : Prop :=
  ∀ n, P11772456317702970427.a n = A074284 (n + 1)

theorem P11772456317702970427.correct : P11772456317702970427.Spec := by
  intro n
  simp only [A074284, Nat.add_sub_cancel]

end A074284

/-! ## A074284.P15499237682857925453

`abs(A000217(n+1)-A074285(n+1))`
-/

namespace A074284.P15499237682857925453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 1) - A074285 (n + 1)|

end

end A074284.P15499237682857925453

namespace A074284

/-- `abs(A000217(n+1)-A074285(n+1))` -/
def P15499237682857925453.Spec : Prop :=
  ∀ n, P15499237682857925453.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P9345702170741276713

`∑[Δ[∑{d}[∑[n], #]]-(n+1)]`
-/

namespace A074284.P9345702170741276713
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074284.P9345702170741276713

namespace A074284

/-- `∑[Δ[∑{d}[∑[n], #]]-(n+1)]` -/
def P9345702170741276713.Spec : Prop :=
  ∀ n, P9345702170741276713.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P16651241317396386079

`∑{d}[∑[n+1], #]-∑[n+1]`
-/

namespace A074284.P16651241317396386079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A074284.P16651241317396386079

namespace A074284

/-- `∑{d}[∑[n+1], #]-∑[n+1]` -/
def P16651241317396386079.Spec : Prop :=
  ∀ n, P16651241317396386079.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P3019938943043055832

`∑{d}[∑[n+1], #-A000010(#)]`
-/

namespace A074284.P3019938943043055832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000010 d)

end

end A074284.P3019938943043055832

namespace A074284

/-- `∑{d}[∑[n+1], #-A000010(#)]` -/
def P3019938943043055832.Spec : Prop :=
  ∀ n, P3019938943043055832.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P14295222509059725068

`A000203(∑[n+1])-∑[n+1]`
-/

namespace A074284.P14295222509059725068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A074284.P14295222509059725068

namespace A074284

/-- `A000203(∑[n+1])-∑[n+1]` -/
def P14295222509059725068.Spec : Prop :=
  ∀ n, P14295222509059725068.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P183460047870062892

`∑[n+1]-A033879(∑[n+1])`
-/

namespace A074284.P183460047870062892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033879 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A074284.P183460047870062892

namespace A074284

/-- `∑[n+1]-A033879(∑[n+1])` -/
def P183460047870062892.Spec : Prop :=
  ∀ n, P183460047870062892.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P4921591535805412281

`A091818(∑[n+1])/2`
-/

namespace A074284.P4921591535805412281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A074284.P4921591535805412281

namespace A074284

/-- `A091818(∑[n+1])/2` -/
def P4921591535805412281.Spec : Prop :=
  ∀ n, P4921591535805412281.a n = (A074284 (n + 1) : ℚ)

end A074284

/-! ## A074284.P14354853191339204310

`A344765(A000217(n+1))-A000217(n)`
-/

namespace A074284.P14354853191339204310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (A000217 (n + 1)).toNat - A000217 n

end

end A074284.P14354853191339204310

namespace A074284

/-- `A344765(A000217(n+1))-A000217(n)` -/
def P14354853191339204310.Spec : Prop :=
  ∀ n, P14354853191339204310.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P16128889266579499980

`A001065(∑[n+1])`
-/

namespace A074284.P16128889266579499980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074284.P16128889266579499980

namespace A074284

/-- `A001065(∑[n+1])` -/
def P16128889266579499980.Spec : Prop :=
  ∀ n, P16128889266579499980.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P15066023324042677321

`A001065(Δ[A000292(n)])%A002450(n+3)`
-/

namespace A074284.P15066023324042677321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (f1 (n + 1) - f1 n).toNat) (A002450 (n + 3))

end

end A074284.P15066023324042677321

namespace A074284

/-- `A001065(Δ[A000292(n)])%A002450(n+3)` -/
def P15066023324042677321.Spec : Prop :=
  ∀ n, P15066023324042677321.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P4470796516356351353

`A152989(n+1)+A032741(A000217(n+1))`
-/

namespace A074284.P4470796516356351353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152989 (n + 1) + A032741 (A000217 (n + 1)).toNat

end

end A074284.P4470796516356351353

namespace A074284

/-- `A152989(n+1)+A032741(A000217(n+1))` -/
def P4470796516356351353.Spec : Prop :=
  ∀ n, P4470796516356351353.a n = A074284 (n + 1)

end A074284

/-! ## A074284.P2314516821896173375

`A319699(∑[2*(n+1)])`
-/

namespace A074284.P2314516821896173375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074284.P2314516821896173375

namespace A074284

/-- `A319699(∑[2*(n+1)])` -/
def P2314516821896173375.Spec : Prop :=
  ∀ n, P2314516821896173375.a n = A074284 (n + 1)

end A074284

/-!
# A074285: Sum of the divisors of n-th triangular number.

The programs for A074285, the canonical program `A074285.P13038604939427256824` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074285 has offset 1).

The definition of A074285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074285.P13038604939427256824

`A000203(A000217(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074285

/-- `A000203(A000217(n+1))` -/
def P13038604939427256824.Spec : Prop :=
  ∀ n, P13038604939427256824.a n = A074285 (n + 1)

theorem P13038604939427256824.correct : P13038604939427256824.Spec := by
  intro n
  simp only [A074285, Nat.add_sub_cancel]

end A074285

/-! ## A074285.P13428336309933530975

`A074284(n+1)+∑[n+1]`
-/

namespace A074285.P13428336309933530975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074284 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074285.P13428336309933530975

namespace A074285

/-- `A074284(n+1)+∑[n+1]` -/
def P13428336309933530975.Spec : Prop :=
  ∀ n, P13428336309933530975.a n = A074285 (n + 1)

theorem P13428336309933530975.correct : P13428336309933530975.Spec := by
  intro n
  simp only [A074285, Nat.add_sub_cancel, A074285.P13428336309933530975.f1, A074285.P13428336309933530975.a, A074285.P13038604939427256824.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A074284, A074284.P11772456317702970427.f1, A074284.P11772456317702970427.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074285

/-! ## A074285.P15638588946296415284

`∑{d}[∑[n+1], #]`
-/

namespace A074285.P15638588946296415284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A074285.P15638588946296415284

namespace A074285

/-- `∑{d}[∑[n+1], #]` -/
def P15638588946296415284.Spec : Prop :=
  ∀ n, (P15638588946296415284.a n : ℤ) = A074285 (n + 1)

end A074285

/-! ## A074285.P17533210514236491038

`A000027(∑{d}[A000217(n+1), #])`
-/

namespace A074285.P17533210514236491038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A074285.P17533210514236491038

namespace A074285

/-- `A000027(∑{d}[A000217(n+1), #])` -/
def P17533210514236491038.Spec : Prop :=
  ∀ n, P17533210514236491038.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P11702164809425731342

`A000203(A000265(n+1))*A000203(A220466(n+1))`
-/

namespace A074285.P11702164809425731342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000265 (n + 1)).toNat * A000203 (A220466 (n + 1)).toNat

end

end A074285.P11702164809425731342

namespace A074285

/-- `A000203(A000265(n+1))*A000203(A220466(n+1))` -/
def P11702164809425731342.Spec : Prop :=
  ∀ n, P11702164809425731342.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P4956716152005001965

`A000203(∑[n+1])`
-/

namespace A074285.P4956716152005001965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074285.P4956716152005001965

namespace A074285

/-- `A000203(∑[n+1])` -/
def P4956716152005001965.Spec : Prop :=
  ∀ n, P4956716152005001965.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P5961925226332273760

`A000203(C(n+2, 2))+and(2, n²)`
-/

namespace A074285.P5961925226332273760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose (n + 2) 2) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A074285.P5961925226332273760

namespace A074285

/-- `A000203(C(n+2, 2))+and(2, n²)` -/
def P5961925226332273760.Spec : Prop :=
  ∀ n, P5961925226332273760.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P13707174877617831467

`A000203(C(n+2, n))/(ϕ²-ϕ)`
-/

namespace A074285.P13707174877617831467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (Nat.choose (n + 2) n) : ℝ) / (Real.goldenRatio ^ 2 - Real.goldenRatio)

end

end A074285.P13707174877617831467

namespace A074285

/-- `A000203(C(n+2, n))/(ϕ²-ϕ)` -/
def P13707174877617831467.Spec : Prop :=
  ∀ n, P13707174877617831467.a n = (A074285 (n + 1) : ℝ)

end A074285

/-! ## A074285.P15615978099709279566

`A000203(∑[2*n-(n-1)])-and(1, 2*n)`
-/

namespace A074285.P15615978099709279566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (Nat.land 1 (2 * n) : ℤ)

end

end A074285.P15615978099709279566

namespace A074285

/-- `A000203(∑[2*n-(n-1)])-and(1, 2*n)` -/
def P15615978099709279566.Spec : Prop :=
  ∀ n, P15615978099709279566.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P8902998906436203740

`A000203(C(n+2, 2))%A156636(n)`
-/

namespace A074285.P8902998906436203740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (Nat.choose (n + 2) 2)) (A156636 n)

end

end A074285.P8902998906436203740

namespace A074285

/-- `A000203(C(n+2, 2))%A156636(n)` -/
def P8902998906436203740.Spec : Prop :=
  ∀ n, P8902998906436203740.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P16020211803790277631

`gcd(A000203(C(n+2, 2)), A000038(n))`
-/

namespace A074285.P16020211803790277631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (Nat.choose (n + 2) 2)) (A000038 n)

end

end A074285.P16020211803790277631

namespace A074285

/-- `gcd(A000203(C(n+2, 2)), A000038(n))` -/
def P16020211803790277631.Spec : Prop :=
  ∀ n, (P16020211803790277631.a n : ℤ) = A074285 (n + 1)

end A074285

/-! ## A074285.P8105071797402921478

`A000007(n+1)+A000203(C(n+2, 2))`
-/

namespace A074285.P8105071797402921478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A000203 (Nat.choose (n + 2) 2)

end

end A074285.P8105071797402921478

namespace A074285

/-- `A000007(n+1)+A000203(C(n+2, 2))` -/
def P8105071797402921478.Spec : Prop :=
  ∀ n, P8105071797402921478.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P8991709860040268834

`A000038(n+1)+A000203(C(n+2, 2))`
-/

namespace A074285.P8991709860040268834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + A000203 (Nat.choose (n + 2) 2)

end

end A074285.P8991709860040268834

namespace A074285

/-- `A000038(n+1)+A000203(C(n+2, 2))` -/
def P8991709860040268834.Spec : Prop :=
  ∀ n, P8991709860040268834.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P15363062219178731502

`A008683(4*(n+1))+A000203(C(n+2, 2))`
-/

namespace A074285.P15363062219178731502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + A000203 (Nat.choose (n + 2) 2)

end

end A074285.P15363062219178731502

namespace A074285

/-- `A008683(4*(n+1))+A000203(C(n+2, 2))` -/
def P15363062219178731502.Spec : Prop :=
  ∀ n, P15363062219178731502.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P2867014742655414255

`lcm(A000203(A000096(n)+1), A014695(n))`
-/

namespace A074285.P2867014742655414255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (A000096 n + 1).toNat) (A014695 n)

end

end A074285.P2867014742655414255

namespace A074285

/-- `lcm(A000203(A000096(n)+1), A014695(n))` -/
def P2867014742655414255.Spec : Prop :=
  ∀ n, (P2867014742655414255.a n : ℤ) = A074285 (n + 1)

end A074285

/-! ## A074285.P15940803751384289192

`A000203(C(n+2, 2))*A001222(A001359(n+1))`
-/

namespace A074285.P15940803751384289192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose (n + 2) 2) * A001222 (A001359 (n + 1)).toNat

end

end A074285.P15940803751384289192

namespace A074285

/-- `A000203(C(n+2, 2))*A001222(A001359(n+1))` -/
def P15940803751384289192.Spec : Prop :=
  ∀ n, P15940803751384289192.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P5983386592009545441

`A074400(∑[n+1])/2`
-/

namespace A074285.P5983386592009545441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A074285.P5983386592009545441

namespace A074285

/-- `A074400(∑[n+1])/2` -/
def P5983386592009545441.Spec : Prop :=
  ∀ n, P5983386592009545441.a n = (A074285 (n + 1) : ℚ)

end A074285

/-! ## A074285.P6774990757974100685

`A344765(∑[n+1])+n+1`
-/

namespace A074285.P6774990757974100685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A074285.P6774990757974100685

namespace A074285

/-- `A344765(∑[n+1])+n+1` -/
def P6774990757974100685.Spec : Prop :=
  ∀ n, P6774990757974100685.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P3341057307887794739

`A143237(A266725(n+1))`
-/

namespace A074285.P3341057307887794739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143237 (A266725 (n + 1)).toNat

end

end A074285.P3341057307887794739

namespace A074285

/-- `A143237(A266725(n+1))` -/
def P3341057307887794739.Spec : Prop :=
  ∀ n, P3341057307887794739.a n = A074285 (n + 1)

end A074285

/-! ## A074285.P18211443210476480318

`abs(A143348(∑[n+1]))`
-/

namespace A074285.P18211443210476480318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A074285.P18211443210476480318

namespace A074285

/-- `abs(A143348(∑[n+1]))` -/
def P18211443210476480318.Spec : Prop :=
  ∀ n, P18211443210476480318.a n = A074285 (n + 1)

end A074285

/-!
# A074286: Partial sum of the Kolakoski sequence (A000002) minus n.

The programs for A074286, the canonical program `A074286.P6856108592712522312` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074286 has offset 1).

The definition of A074286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074286.P6856108592712522312

`A054353(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074286

/-- `A054353(n+1)-(n+1)` -/
def P6856108592712522312.Spec : Prop :=
  ∀ n, P6856108592712522312.a n = A074286 (n + 1)

theorem P6856108592712522312.correct : P6856108592712522312.Spec := by
  intro n
  simp only [A074286, Nat.add_sub_cancel]

end A074286

/-! ## A074286.P8199636960513874249

`n+1-A156077(n+1)`
-/

namespace A074286.P8199636960513874249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A156077 (n + 1)

end

end A074286.P8199636960513874249

namespace A074286

/-- `n+1-A156077(n+1)` -/
def P8199636960513874249.Spec : Prop :=
  ∀ n, P8199636960513874249.a n = A074286 (n + 1)

theorem P8199636960513874249.correct : P8199636960513874249.Spec := by
  intro n
  simp only [A074286, Nat.add_sub_cancel, A074286.P8199636960513874249.a, A074286.P6856108592712522312.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156077, A156077.P10312704143839705778.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074286

/-! ## A074286.P11837882571948392605

`A156250(n+1)-1`
-/

namespace A074286.P11837882571948392605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (n + 1) - 1

end

end A074286.P11837882571948392605

namespace A074286

/-- `A156250(n+1)-1` -/
def P11837882571948392605.Spec : Prop :=
  ∀ n, P11837882571948392605.a n = A074286 (n + 1)

theorem P11837882571948392605.correct : P11837882571948392605.Spec := by
  intro n
  simp only [A074286, Nat.add_sub_cancel, A074286.P11837882571948392605.a, A074286.P6856108592712522312.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156250, A156250.P8857404366207384535.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074286

/-! ## A074286.P12117223036729098415

`∑[log2(A000002(n+1))]`
-/

namespace A074286.P12117223036729098415
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000002 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074286.P12117223036729098415

namespace A074286

/-- `∑[log2(A000002(n+1))]` -/
def P12117223036729098415.Spec : Prop :=
  ∀ n, P12117223036729098415.a n = (A074286 (n + 1) : ℝ)

end A074286

/-! ## A074286.P5078225054753629068

`∑[1-A078650(n+1)]`
-/

namespace A074286.P5078225054753629068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A078650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074286.P5078225054753629068

namespace A074286

/-- `∑[1-A078650(n+1)]` -/
def P5078225054753629068.Spec : Prop :=
  ∀ n, P5078225054753629068.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P18124953624771760881

`∑[2-A049705(n+1)]`
-/

namespace A074286.P18124953624771760881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074286.P18124953624771760881

namespace A074286

/-- `∑[2-A049705(n+1)]` -/
def P18124953624771760881.Spec : Prop :=
  ∀ n, P18124953624771760881.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P866613289833107467

`A157686(n)+a(n-1)` with `a(0)=0`
-/

namespace A074286.P866613289833107467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A157686 n + a (n - 1)

end

end A074286.P866613289833107467

namespace A074286

/-- `A157686(n)+a(n-1)` -/
def P866613289833107467.Spec : Prop :=
  ∀ n, P866613289833107467.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P15472159736168841054

`∑[char[A013948(n+1)-1]]`
-/

namespace A074286.P15472159736168841054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074286.P15472159736168841054

namespace A074286

/-- `∑[char[A013948(n+1)-1]]` -/
def P15472159736168841054.Spec : Prop :=
  ∀ n, (P15472159736168841054.a n : ℤ) = A074286 (n + 1)

end A074286

/-! ## A074286.P6539433350883577461

`n-∑[char[A022297(n+2)]]`
-/

namespace A074286.P6539433350883577461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074286.P6539433350883577461

namespace A074286

/-- `n-∑[char[A022297(n+2)]]` -/
def P6539433350883577461.Spec : Prop :=
  ∀ n, P6539433350883577461.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P16217491911620613929

`ceil((n-A088568(n+1))/2)`
-/

namespace A074286.P16217491911620613929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A088568 (n + 1) : ℚ) / 2⌉

end

end A074286.P16217491911620613929

namespace A074286

/-- `ceil((n-A088568(n+1))/2)` -/
def P16217491911620613929.Spec : Prop :=
  ∀ n, P16217491911620613929.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P2500354298079676008

`comp[A078649(n+1)-1]-n`
-/

namespace A074286.P2500354298079676008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A074286.P2500354298079676008

namespace A074286

/-- `comp[A078649(n+1)-1]-n` -/
def P2500354298079676008.Spec : Prop :=
  ∀ n, P2500354298079676008.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P13726359651162194241

`(A294448(n+1)+n+1)/2`
-/

namespace A074286.P13726359651162194241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294448 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A074286.P13726359651162194241

namespace A074286

/-- `(A294448(n+1)+n+1)/2` -/
def P13726359651162194241.Spec : Prop :=
  ∀ n, P13726359651162194241.a n = (A074286 (n + 1) : ℚ)

end A074286

/-! ## A074286.P14587830440342866285

`(A111102(n+1)-(n+1))/3`
-/

namespace A074286.P14587830440342866285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111102 (n + 1) - (n + 1 : ℤ) : ℚ) / 3

end

end A074286.P14587830440342866285

namespace A074286

/-- `(A111102(n+1)-(n+1))/3` -/
def P14587830440342866285.Spec : Prop :=
  ∀ n, P14587830440342866285.a n = (A074286 (n + 1) : ℚ)

end A074286

/-! ## A074286.P15344572830587694302

`∑[A000035(A156253(n+1)+1)]`
-/

namespace A074286.P15344572830587694302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A156253 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074286.P15344572830587694302

namespace A074286

/-- `∑[A000035(A156253(n+1)+1)]` -/
def P15344572830587694302.Spec : Prop :=
  ∀ n, P15344572830587694302.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P11722348187837677052

`∑[A305989(n)%A000002(n+1)]`
-/

namespace A074286.P11722348187837677052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305989 n) (A000002 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074286.P11722348187837677052

namespace A074286

/-- `∑[A305989(n)%A000002(n+1)]` -/
def P11722348187837677052.Spec : Prop :=
  ∀ n, P11722348187837677052.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P10901868674086991444

`A054353(n+1)%A000027(n+1)`
-/

namespace A074286.P10901868674086991444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054353 (n + 1)) (A000027 (n + 1))

end

end A074286.P10901868674086991444

namespace A074286

/-- `A054353(n+1)%A000027(n+1)` -/
def P10901868674086991444.Spec : Prop :=
  ∀ n, P10901868674086991444.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P7135030610956907115

`∑[A157686(n+1)]-A157686(n+1)`
-/

namespace A074286.P7135030610956907115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A157686 (n + 1)

end

end A074286.P7135030610956907115

namespace A074286

/-- `∑[A157686(n+1)]-A157686(n+1)` -/
def P7135030610956907115.Spec : Prop :=
  ∀ n, P7135030610956907115.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P15678392491290295680

`∑[A000002(n+1)]%A000027(n+1)`
-/

namespace A074286.P15678392491290295680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000027 (n + 1))

end

end A074286.P15678392491290295680

namespace A074286

/-- `∑[A000002(n+1)]%A000027(n+1)` -/
def P15678392491290295680.Spec : Prop :=
  ∀ n, P15678392491290295680.a n = A074286 (n + 1)

end A074286

/-! ## A074286.P3099476126059788228

`A216345(n+2)-(n+2)`
-/

namespace A074286.P3099476126059788228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 2) - (n + 2 : ℤ)

end

end A074286.P3099476126059788228

namespace A074286

/-- `A216345(n+2)-(n+2)` -/
def P3099476126059788228.Spec : Prop :=
  ∀ n, P3099476126059788228.a n = A074286 (n + 1)

end A074286

/-!
# A074287: Even numbers n such that the partial sum of the Kolakoski sequence (A000002) at n is less than 3n/2.

The programs for A074287, the canonical program `A074287.P17554689060709443169` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074287 has offset 1).

The definition of A074287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074287.P17082046417231353443

`lt[A022297(lcm(2, xor(n, -2))/2), n]`
-/

namespace A074287.P17082046417231353443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (SequenceMachineLib.roundAway ((Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074287.P17082046417231353443

namespace A074287

/-- `lt[A022297(lcm(2, xor(n, -2))/2), n]` -/
def P17082046417231353443.Spec : Prop :=
  ∀ n, (P17082046417231353443.a n : ℤ) = A074287 (n + 1)

end A074287

/-! ## A074287.P17554689060709443169

`2*(lt[A294448(2*(n+1)), 0]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074287

/-- `2*(lt[A294448(2*(n+1)), 0]+1)` -/
def P17554689060709443169.Spec : Prop :=
  ∀ n, (P17554689060709443169.a n : ℤ) = A074287 (n + 1)

theorem P17554689060709443169.correct : P17554689060709443169.Spec := by
  intro n
  simp only [A074287, Nat.add_sub_cancel]

end A074287

/-! ## A074287.P4842789717433983884

`2*(lt[1, A088568(2*(n+1))]+1)`
-/

namespace A074287.P4842789717433983884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074287.P4842789717433983884

namespace A074287

/-- `2*(lt[1, A088568(2*(n+1))]+1)` -/
def P4842789717433983884.Spec : Prop :=
  ∀ n, (P4842789717433983884.a n : ℤ) = A074287 (n + 1)

end A074287

/-! ## A074287.P16795481154919490987

`lt[n^(n%2), A088568(round(acot(n)+n))]`
-/

namespace A074287.P16795481154919490987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074287.P16795481154919490987

namespace A074287

/-- `lt[n^(n%2), A088568(round(acot(n)+n))]` -/
def P16795481154919490987.Spec : Prop :=
  ∀ n, (P16795481154919490987.a n : ℤ) = A074287 (n + 1)

end A074287

/-! ## A074287.P3075633180286340406

`lt[A216345(n+1), xor(1, n)-a(n-1)]` with `a(0)=1`
-/

namespace A074287.P3075633180286340406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (Nat.xor 1 n : ℤ) - f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074287.P3075633180286340406

namespace A074287

/-- `lt[A216345(n+1), xor(1, n)-a(n-1)]` -/
def P3075633180286340406.Spec : Prop :=
  ∀ n, (P3075633180286340406.a n : ℤ) = A074287 (n + 1)

end A074287

/-! ## A074287.P10790281510717615093

`2*lt[1, A088568(A013947(n+1))]`
-/

namespace A074287.P10790281510717615093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A013947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074287.P10790281510717615093

namespace A074287

/-- `2*lt[1, A088568(A013947(n+1))]` -/
def P10790281510717615093.Spec : Prop :=
  ∀ n, (P10790281510717615093.a n : ℤ) = A074287 (n + 1)

end A074287

/-! ## A074287.P10790260332597515507

`lt[A216345(n+1), A123684(n+1)]`
-/

namespace A074287.P10790260332597515507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074287.P10790260332597515507

namespace A074287

/-- `lt[A216345(n+1), A123684(n+1)]` -/
def P10790260332597515507.Spec : Prop :=
  ∀ n, (P10790260332597515507.a n : ℤ) = A074287 (n + 1)

end A074287

/-!
# A074288: n-th term of the Kolakoski sequence (A000002) multiplied by the n-th partial sum.

The programs for A074288, the canonical program `A074288.P1649072758291598360` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074288 has offset 1).

The definition of A074288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074288.P13340255620003099623

`A000002(n+1)*A054353(n+1)`
-/

namespace A074288.P13340255620003099623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A054353 (n + 1)

end

end A074288.P13340255620003099623

namespace A074288

/-- `A000002(n+1)*A054353(n+1)` -/
def P13340255620003099623.Spec : Prop :=
  ∀ n, P13340255620003099623.a n = A074288 (n + 1)

theorem P13340255620003099623.correct : P13340255620003099623.Spec := by
  intro n
  simp only [A074288, Nat.add_sub_cancel, A074288.P13340255620003099623.a, A074288.P1649072758291598360.f1, A074288.P1649072758291598360.a, A000002, A000002.P13330532946811820297.a, A049705, A049705.P11002765941806409636.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074288

/-! ## A074288.P2265704114939781379

`(3-A049705(n+1))*A054353(n+1)`
-/

namespace A074288.P2265704114939781379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * A054353 (n + 1)

end

end A074288.P2265704114939781379

namespace A074288

/-- `(3-A049705(n+1))*A054353(n+1)` -/
def P2265704114939781379.Spec : Prop :=
  ∀ n, P2265704114939781379.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P3637428586353122373

`gcd(2, A156253(n+1))*A054353(n+1)`
-/

namespace A074288.P3637428586353122373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A156253 (n + 1)) : ℤ) * A054353 (n + 1)

end

end A074288.P3637428586353122373

namespace A074288

/-- `gcd(2, A156253(n+1))*A054353(n+1)` -/
def P3637428586353122373.Spec : Prop :=
  ∀ n, P3637428586353122373.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P71211771672575136

`(A156250(n+1)+n)*A000002(n+1)`
-/

namespace A074288.P71211771672575136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156250 (n + 1) + (n : ℤ)) * A000002 (n + 1)

end

end A074288.P71211771672575136

namespace A074288

/-- `(A156250(n+1)+n)*A000002(n+1)` -/
def P71211771672575136.Spec : Prop :=
  ∀ n, P71211771672575136.a n = A074288 (n + 1)

theorem P71211771672575136.correct : P71211771672575136.Spec := by
  intro n
  simp only [A074288, Nat.add_sub_cancel, A074288.P71211771672575136.a, A074288.P1649072758291598360.f1, A074288.P1649072758291598360.a, A000002, A000002.P13330532946811820297.a, A049705, A049705.P11002765941806409636.a, A156250, A156250.P8857404366207384535.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074288

/-! ## A074288.P1649072758291598360

`(3-A049705(n+1))*∑[A000002(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074288

/-- `(3-A049705(n+1))*∑[A000002(n+1)]` -/
def P1649072758291598360.Spec : Prop :=
  ∀ n, P1649072758291598360.a n = A074288 (n + 1)

theorem P1649072758291598360.correct : P1649072758291598360.Spec := by
  intro n
  simp only [A074288, Nat.add_sub_cancel]

end A074288

/-! ## A074288.P13609642905038286360

`(A074286(n+1)+n+1)*A000002(n+1)`
-/

namespace A074288.P13609642905038286360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074286 (n + 1) + (n + 1 : ℤ)) * A000002 (n + 1)

end

end A074288.P13609642905038286360

namespace A074288

/-- `(A074286(n+1)+n+1)*A000002(n+1)` -/
def P13609642905038286360.Spec : Prop :=
  ∀ n, P13609642905038286360.a n = A074288 (n + 1)

theorem P13609642905038286360.correct : P13609642905038286360.Spec := by
  intro n
  simp only [A074288, Nat.add_sub_cancel, A074288.P13609642905038286360.a, A074288.P1649072758291598360.f1, A074288.P1649072758291598360.a, A000002, A000002.P13330532946811820297.a, A049705, A049705.P11002765941806409636.a, A074286, A074286.P6856108592712522312.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074288

/-! ## A074288.P13793500446393250662

`(char[A013948(n+1)-1]+1)*A054353(n+1)`
-/

namespace A074288.P13793500446393250662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A054353 (n + 1)

end

end A074288.P13793500446393250662

namespace A074288

/-- `(char[A013948(n+1)-1]+1)*A054353(n+1)` -/
def P13793500446393250662.Spec : Prop :=
  ∀ n, P13793500446393250662.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P5289399232469213708

`∑[A054354(n)+a(n-1)]*A000002(n+1)` with `a(0)=1`
-/

namespace A074288.P5289399232469213708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A054354 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000002 (n + 1)

end

end A074288.P5289399232469213708

namespace A074288

/-- `∑[A054354(n)+a(n-1)]*A000002(n+1)` -/
def P5289399232469213708.Spec : Prop :=
  ∀ n, P5289399232469213708.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P11056857722199291469

`(2-char[A013947(n+1)-1])*∑[A000002(n+1)]`
-/

namespace A074288.P11056857722199291469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A074288.P11056857722199291469

namespace A074288

/-- `(2-char[A013947(n+1)-1])*∑[A000002(n+1)]` -/
def P11056857722199291469.Spec : Prop :=
  ∀ n, P11056857722199291469.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P15490063064188542660

`(3-A049705(n+1))*∑[char[A013948(n+1)-1]+1]`
-/

namespace A074288.P15490063064188542660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074288.P15490063064188542660

namespace A074288

/-- `(3-A049705(n+1))*∑[char[A013948(n+1)-1]+1]` -/
def P15490063064188542660.Spec : Prop :=
  ∀ n, P15490063064188542660.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P4204888767339558147

`A040001(A156253(n+1))*A054353(n+1)`
-/

namespace A074288.P4204888767339558147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A156253 (n + 1)).toNat * A054353 (n + 1)

end

end A074288.P4204888767339558147

namespace A074288

/-- `A040001(A156253(n+1))*A054353(n+1)` -/
def P4204888767339558147.Spec : Prop :=
  ∀ n, P4204888767339558147.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P12090002359751220292

`(3-A049705(n+1))*∑[A040001(A156253(n+1))]`
-/

namespace A074288.P12090002359751220292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A156253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074288.P12090002359751220292

namespace A074288

/-- `(3-A049705(n+1))*∑[A040001(A156253(n+1))]` -/
def P12090002359751220292.Spec : Prop :=
  ∀ n, P12090002359751220292.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P8949870207051471638

`(A078880(n+1)-A054354(n+1))*A054353(n+1)`
-/

namespace A074288.P8949870207051471638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078880 (n + 1) - A054354 (n + 1)) * A054353 (n + 1)

end

end A074288.P8949870207051471638

namespace A074288

/-- `(A078880(n+1)-A054354(n+1))*A054353(n+1)` -/
def P8949870207051471638.Spec : Prop :=
  ∀ n, P8949870207051471638.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P4387563119649851444

`(A054353(n+1)+∑[A000002(n+1)])/A049705(n+1)`
-/

namespace A074288.P4387563119649851444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A054353 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A049705 (n + 1) : ℚ)

end

end A074288.P4387563119649851444

namespace A074288

/-- `(A054353(n+1)+∑[A000002(n+1)])/A049705(n+1)` -/
def P4387563119649851444.Spec : Prop :=
  ∀ n, P4387563119649851444.a n = (A074288 (n + 1) : ℚ)

end A074288

/-! ## A074288.P17724121820959572651

`(A000002(n+1)+comp[A078649(n+1)])*A000002(n+1)`
-/

namespace A074288.P17724121820959572651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000002 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) * A000002 (n + 1)

end

end A074288.P17724121820959572651

namespace A074288

/-- `(A000002(n+1)+comp[A078649(n+1)])*A000002(n+1)` -/
def P17724121820959572651.Spec : Prop :=
  ∀ n, P17724121820959572651.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P9753283238587163115

`(A054353(n+1)-comp[A078649(n+1)])*A054353(n+1)`
-/

namespace A074288.P9753283238587163115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054353 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) * A054353 (n + 1)

end

end A074288.P9753283238587163115

namespace A074288

/-- `(A054353(n+1)-comp[A078649(n+1)])*A054353(n+1)` -/
def P9753283238587163115.Spec : Prop :=
  ∀ n, P9753283238587163115.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P16214122445138827249

`A054352(A054353(n+1)-A216345(n+1))*A054353(n+1)`
-/

namespace A074288.P16214122445138827249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054352 (A054353 (n + 1) - A216345 (n + 1)).toNat * A054353 (n + 1)

end

end A074288.P16214122445138827249

namespace A074288

/-- `A054352(A054353(n+1)-A216345(n+1))*A054353(n+1)` -/
def P16214122445138827249.Spec : Prop :=
  ∀ n, P16214122445138827249.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P12837933539667302499

`Δ[A216345(n+1)]*A054353(n+1)`
-/

namespace A074288.P12837933539667302499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054353 (n + 1)

end

end A074288.P12837933539667302499

namespace A074288

/-- `Δ[A216345(n+1)]*A054353(n+1)` -/
def P12837933539667302499.Spec : Prop :=
  ∀ n, P12837933539667302499.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P11541072390176373068

`Δ[comp[A078649(n+1)]]*A054353(n+1)`
-/

namespace A074288.P11541072390176373068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A054353 (n + 1)

end

end A074288.P11541072390176373068

namespace A074288

/-- `Δ[comp[A078649(n+1)]]*A054353(n+1)` -/
def P11541072390176373068.Spec : Prop :=
  ∀ n, P11541072390176373068.a n = A074288 (n + 1)

end A074288

/-! ## A074288.P1592501853685071170

`A000002(n+1)*A216345(n+2)-A000002(n+1)`
-/

namespace A074288.P1592501853685071170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A216345 (n + 2) - A000002 (n + 1)

end

end A074288.P1592501853685071170

namespace A074288

/-- `A000002(n+1)*A216345(n+2)-A000002(n+1)` -/
def P1592501853685071170.Spec : Prop :=
  ∀ n, P1592501853685071170.a n = A074288 (n + 1)

end A074288

/-!
# A074289: Values of A000002(n)*A054353(n) that are repeated.

The programs for A074289, the canonical program `A074289.P13643960160893623` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074289 has offset 1).

The definition of A074289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074289.P13643960160893623

`∩[2*A022297(n+2)-n, record[A074288(n+1)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074289

/-- `∩[2*A022297(n+2)-n, record[A074288(n+1)]]` -/
def P13643960160893623.Spec : Prop :=
  ∀ n, (P13643960160893623.a n : ℤ) = A074289 (n + 1)

theorem P13643960160893623.correct : P13643960160893623.Spec := by
  intro n
  simp only [A074289, Nat.add_sub_cancel]

end A074289

/-! ## A074289.P10831371160956710836

`∩[2*A013947(n+2)-(n+2), record[A074288(n+1)]]`
-/

namespace A074289.P10831371160956710836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013947 (n + 2) - (n + 2 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074289.P10831371160956710836

namespace A074289

/-- `∩[2*A013947(n+2)-(n+2), record[A074288(n+1)]]` -/
def P10831371160956710836.Spec : Prop :=
  ∀ n, (P10831371160956710836.a n : ℤ) = A074289 (n + 1)

end A074289

/-! ## A074289.P4753651315463801202

`∩[2*A022297(n+2)-n, A074288(A013948(n+1))]`
-/

namespace A074289.P4753651315463801202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022297 (n + 2) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (A013948 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074289.P4753651315463801202

namespace A074289

/-- `∩[2*A022297(n+2)-n, A074288(A013948(n+1))]` -/
def P4753651315463801202.Spec : Prop :=
  ∀ n, (P4753651315463801202.a n : ℤ) = A074289 (n + 1)

end A074289

/-! ## A074289.P95565773647489622

`∩[2*A013947(n+2)-(n+2), A074288(A013948(n+1))]`
-/

namespace A074289.P95565773647489622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013947 (n + 2) - (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (A013948 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074289.P95565773647489622

namespace A074289

/-- `∩[2*A013947(n+2)-(n+2), A074288(A013948(n+1))]` -/
def P95565773647489622.Spec : Prop :=
  ∀ n, (P95565773647489622.a n : ℤ) = A074289 (n + 1)

end A074289

/-! ## A074289.P1087842232175545084

`∩[record[A074288(n+1)], A216348(n+1)]`
-/

namespace A074289.P1087842232175545084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A074289.P1087842232175545084

namespace A074289

/-- `∩[record[A074288(n+1)], A216348(n+1)]` -/
def P1087842232175545084.Spec : Prop :=
  ∀ n, (P1087842232175545084.a n : ℤ) = A074289 (n + 1)

end A074289

/-!
# A074290: Difference between Kolakoski(n)=A000002(n) and 1 (n odd) or 2 (n even).

The programs for A074290, the canonical program `A074290.P6161570627795072217` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074290 has offset 1).

The definition of A074290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074290.P6161570627795072217

`gcd(2, n)-A049705(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074290

/-- `gcd(2, n)-A049705(n+1)` -/
def P6161570627795072217.Spec : Prop :=
  ∀ n, P6161570627795072217.a n = A074290 (n + 1)

theorem P6161570627795072217.correct : P6161570627795072217.Spec := by
  intro n
  simp only [A074290, Nat.add_sub_cancel]

end A074290

/-! ## A074290.P12285501011298447734

`log2(A000002(n+1))-n%2`
-/

namespace A074290.P12285501011298447734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000002 (n + 1) : ℝ) - ((n % 2 : ℕ) : ℝ)

end

end A074290.P12285501011298447734

namespace A074290

/-- `log2(A000002(n+1))-n%2` -/
def P12285501011298447734.Spec : Prop :=
  ∀ n, P12285501011298447734.a n = (A074290 (n + 1) : ℝ)

end A074290

/-! ## A074290.P13544569977050161507

`log2(A088570(n+1))-Δ[or(1, n)]`
-/

namespace A074290.P13544569977050161507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A088570 (n + 1) : ℝ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A074290.P13544569977050161507

namespace A074290

/-- `log2(A088570(n+1))-Δ[or(1, n)]` -/
def P13544569977050161507.Spec : Prop :=
  ∀ n, P13544569977050161507.a n = (A074290 (n + 1) : ℝ)

end A074290

/-! ## A074290.P9587059575724524006

`(-1)^n+A054354(n)+a(n-1)` with `a(0)=0`
-/

namespace A074290.P9587059575724524006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ n + (A054354 n + a (n - 1))

end

end A074290.P9587059575724524006

namespace A074290

/-- `(-1)^n+A054354(n)+a(n-1)` -/
def P9587059575724524006.Spec : Prop :=
  ∀ n, P9587059575724524006.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P4431711856599481819

`2-char[A013947(n+1)-1]-(or(1, n+1)-n)`
-/

namespace A074290.P4431711856599481819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ))

end

end A074290.P4431711856599481819

namespace A074290

/-- `2-char[A013947(n+1)-1]-(or(1, n+1)-n)` -/
def P4431711856599481819.Spec : Prop :=
  ∀ n, P4431711856599481819.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P270206759874652288

`2/(∑[char[A216345(n+1)-1]]%2+1)-(or(1, n+1)-n)`
-/

namespace A074290.P270206759874652288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1 : ℕ) : ℚ) - ((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ) : ℚ)

end

end A074290.P270206759874652288

namespace A074290

/-- `2/(∑[char[A216345(n+1)-1]]%2+1)-(or(1, n+1)-n)` -/
def P270206759874652288.Spec : Prop :=
  ∀ n, P270206759874652288.a n = (A074290 (n + 1) : ℚ)

end A074290

/-! ## A074290.P2581474006921448660

`A000002(n+1)-A000034(n)`
-/

namespace A074290.P2581474006921448660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - A000034 n

end

end A074290.P2581474006921448660

namespace A074290

/-- `A000002(n+1)-A000034(n)` -/
def P2581474006921448660.Spec : Prop :=
  ∀ n, P2581474006921448660.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P9541615812403957441

`A059841(n)-A078650(n+1)`
-/

namespace A074290.P9541615812403957441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A078650 (n + 1)

end

end A074290.P9541615812403957441

namespace A074290

/-- `A059841(n)-A078650(n+1)` -/
def P9541615812403957441.Spec : Prop :=
  ∀ n, P9541615812403957441.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P3140173670026136360

`abs(A228826(n))-A049705(n+1)`
-/

namespace A074290.P3140173670026136360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228826 n| - A049705 (n + 1)

end

end A074290.P3140173670026136360

namespace A074290

/-- `abs(A228826(n))-A049705(n+1)` -/
def P3140173670026136360.Spec : Prop :=
  ∀ n, P3140173670026136360.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P7545708011857609337

`A000002(n+1)-sqrt(A010685(n))`
-/

namespace A074290.P7545708011857609337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000002 (n + 1) : ℝ) - Real.sqrt (A010685 n : ℝ)

end

end A074290.P7545708011857609337

namespace A074290

/-- `A000002(n+1)-sqrt(A010685(n))` -/
def P7545708011857609337.Spec : Prop :=
  ∀ n, P7545708011857609337.a n = (A074290 (n + 1) : ℝ)

end A074290

/-! ## A074290.P1991474872735461683

`log2(A000002(n+1))-A000035(n)`
-/

namespace A074290.P1991474872735461683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000002 (n + 1) : ℝ) - (A000035 n : ℝ)

end

end A074290.P1991474872735461683

namespace A074290

/-- `log2(A000002(n+1))-A000035(n)` -/
def P1991474872735461683.Spec : Prop :=
  ∀ n, P1991474872735461683.a n = (A074290 (n + 1) : ℝ)

end A074290

/-! ## A074290.P5665775033184624450

`A000002(n+1)-log2(A010694(n))`
-/

namespace A074290.P5665775033184624450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000002 (n + 1) : ℝ) - Real.logb 2 (A010694 n : ℝ)

end

end A074290.P5665775033184624450

namespace A074290

/-- `A000002(n+1)-log2(A010694(n))` -/
def P5665775033184624450.Spec : Prop :=
  ∀ n, P5665775033184624450.a n = (A074290 (n + 1) : ℝ)

end A074290

/-! ## A074290.P7543576741122541458

`A000002(n+1)-Δ[A032766(n)]`
-/

namespace A074290.P7543576741122541458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - (f1 (n + 1) - f1 n)

end

end A074290.P7543576741122541458

namespace A074290

/-- `A000002(n+1)-Δ[A032766(n)]` -/
def P7543576741122541458.Spec : Prop :=
  ∀ n, P7543576741122541458.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P12442699148551953804

`A000002(n+1)-A040001(n+1)`
-/

namespace A074290.P12442699148551953804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - A040001 (n + 1)

end

end A074290.P12442699148551953804

namespace A074290

/-- `A000002(n+1)-A040001(n+1)` -/
def P12442699148551953804.Spec : Prop :=
  ∀ n, P12442699148551953804.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P11698235865285779807

`2-(A049705(n+1)+A000035(n))`
-/

namespace A074290.P11698235865285779807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A049705 (n + 1) + A000035 n)

end

end A074290.P11698235865285779807

namespace A074290

/-- `2-(A049705(n+1)+A000035(n))` -/
def P11698235865285779807.Spec : Prop :=
  ∀ n, P11698235865285779807.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P8000740501814208342

`A000002(n+1)+A059841(n)-2`
-/

namespace A074290.P8000740501814208342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + (A059841 n - 2)

end

end A074290.P8000740501814208342

namespace A074290

/-- `A000002(n+1)+A059841(n)-2` -/
def P8000740501814208342.Spec : Prop :=
  ∀ n, P8000740501814208342.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P17886744886968513832

`3-A049705(n+1)-A000034(n)`
-/

namespace A074290.P17886744886968513832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (n + 1) - A000034 n

end

end A074290.P17886744886968513832

namespace A074290

/-- `3-A049705(n+1)-A000034(n)` -/
def P17886744886968513832.Spec : Prop :=
  ∀ n, P17886744886968513832.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P14337828724786141169

`A000002(n+1)-(∑[A062157(n)]+1)`
-/

namespace A074290.P14337828724786141169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074290.P14337828724786141169

namespace A074290

/-- `A000002(n+1)-(∑[A062157(n)]+1)` -/
def P14337828724786141169.Spec : Prop :=
  ∀ n, P14337828724786141169.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P14620325821978532755

`A000002(n+1)-(Δ[A008619(n)]+1)`
-/

namespace A074290.P14620325821978532755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - (f1 (n + 1) - f1 n + 1)

end

end A074290.P14620325821978532755

namespace A074290

/-- `A000002(n+1)-(Δ[A008619(n)]+1)` -/
def P14620325821978532755.Spec : Prop :=
  ∀ n, P14620325821978532755.a n = A074290 (n + 1)

end A074290

/-! ## A074290.P7088169858964373621

`A000002(n+1)+∑[A033999(n)]-2`
-/

namespace A074290.P7088169858964373621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A074290.P7088169858964373621

namespace A074290

/-- `A000002(n+1)+∑[A033999(n)]-2` -/
def P7088169858964373621.Spec : Prop :=
  ∀ n, P7088169858964373621.a n = A074290 (n + 1)

end A074290

/-!
# A074291: Positions in the Kolakoski sequence where A000002(n) is 1 if n is odd, or 2 if n is even.

The programs for A074291, the canonical program `A074291.P12773255083296410343` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074291 has offset 1).

The definition of A074291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074291.P303666848034163798

`eq[A000002(n+1), A040001(n+1)]+1`
-/

namespace A074291.P303666848034163798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074291.P303666848034163798

namespace A074291

/-- `eq[A000002(n+1), A040001(n+1)]+1` -/
def P303666848034163798.Spec : Prop :=
  ∀ n, (P303666848034163798.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P12773255083296410343

`eq[A000002(n+1), A014681(a(n-1))]+1` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074291

/-- `eq[A000002(n+1), A014681(a(n-1))]+1` -/
def P12773255083296410343.Spec : Prop :=
  ∀ n, (P12773255083296410343.a n : ℤ) = A074291 (n + 1)

theorem P12773255083296410343.correct : P12773255083296410343.Spec := by
  intro n
  simp only [A074291, Nat.add_sub_cancel]

end A074291

/-! ## A074291.P4841023683128719529

`eq[0, A074290(n+1)]+1`
-/

namespace A074291.P4841023683128719529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074291.P4841023683128719529

namespace A074291

/-- `eq[0, A074290(n+1)]+1` -/
def P4841023683128719529.Spec : Prop :=
  ∀ n, (P4841023683128719529.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P8974337570357585427

`eq[A000002(n+1), A000034(n)]+1`
-/

namespace A074291.P8974337570357585427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074291.P8974337570357585427

namespace A074291

/-- `eq[A000002(n+1), A000034(n)]+1` -/
def P8974337570357585427.Spec : Prop :=
  ∀ n, (P8974337570357585427.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P10456581351331351483

`eq[gcd(2, A156253(n+1)), A000034(n)]+1`
-/

namespace A074291.P10456581351331351483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A156253 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074291.P10456581351331351483

namespace A074291

/-- `eq[gcd(2, A156253(n+1)), A000034(n)]+1` -/
def P10456581351331351483.Spec : Prop :=
  ∀ n, (P10456581351331351483.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P5476198651804049450

`eq[A000034(n), A049705(A028310(n))]`
-/

namespace A074291.P5476198651804049450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074291.P5476198651804049450

namespace A074291

/-- `eq[A000034(n), A049705(A028310(n))]` -/
def P5476198651804049450.Spec : Prop :=
  ∀ n, (P5476198651804049450.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P11432739576833697458

`eq[A000002(A028310(n)), A000034(n+1)]`
-/

namespace A074291.P11432739576833697458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074291.P11432739576833697458

namespace A074291

/-- `eq[A000002(A028310(n)), A000034(n+1)]` -/
def P11432739576833697458.Spec : Prop :=
  ∀ n, (P11432739576833697458.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P5465785324892895795

`eq[A000002(n+1), A000002(A054353(n+1))]+1`
-/

namespace A074291.P5465785324892895795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A054353 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074291.P5465785324892895795

namespace A074291

/-- `eq[A000002(n+1), A000002(A054353(n+1))]+1` -/
def P5465785324892895795.Spec : Prop :=
  ∀ n, (P5465785324892895795.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P5107214690825996681

`eq[A000002(n+1), A000002(A216345(n+1))]+1`
-/

namespace A074291.P5107214690825996681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A216345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074291.P5107214690825996681

namespace A074291

/-- `eq[A000002(n+1), A000002(A216345(n+1))]+1` -/
def P5107214690825996681.Spec : Prop :=
  ∀ n, (P5107214690825996681.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P12630369535467194755

`eq[2, A078880(A216345(n+1))]+1`
-/

namespace A074291.P12630369535467194755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (A216345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074291.P12630369535467194755

namespace A074291

/-- `eq[2, A078880(A216345(n+1))]+1` -/
def P12630369535467194755.Spec : Prop :=
  ∀ n, (P12630369535467194755.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P14152730606217311193

`abs(1-eq[(n-2)%2, A123594(n+1)])`
-/

namespace A074291.P14152730606217311193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)|

end

end A074291.P14152730606217311193

namespace A074291

/-- `abs(1-eq[(n-2)%2, A123594(n+1)])` -/
def P14152730606217311193.Spec : Prop :=
  ∀ n, P14152730606217311193.a n = A074291 (n + 1)

end A074291

/-! ## A074291.P7979356613823301370

`eq[log2(A040001(n)), A123594(n+2)]`
-/

namespace A074291.P7979356613823301370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040001 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A074291.P7979356613823301370

namespace A074291

/-- `eq[log2(A040001(n)), A123594(n+2)]` -/
def P7979356613823301370.Spec : Prop :=
  ∀ n, (P7979356613823301370.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P4289036551001949171

`eq[A123594(n+3)+1, A000034(n)]+1`
-/

namespace A074291.P4289036551001949171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074291.P4289036551001949171

namespace A074291

/-- `eq[A123594(n+3)+1, A000034(n)]+1` -/
def P4289036551001949171.Spec : Prop :=
  ∀ n, (P4289036551001949171.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P14920070915295130595

`eq[A123594(n+2), A284135(a(n-1))]` with `a(0)=3`
-/

namespace A074291.P14920070915295130595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A284135 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074291.P14920070915295130595

namespace A074291

/-- `eq[A123594(n+2), A284135(a(n-1))]` -/
def P14920070915295130595.Spec : Prop :=
  ∀ n, (P14920070915295130595.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P4635941326599841947

`eq[A123594(n+2)+A040001(n+1), A040001(2*n)]`
-/

namespace A074291.P4635941326599841947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2) + A040001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074291.P4635941326599841947

namespace A074291

/-- `eq[A123594(n+2)+A040001(n+1), A040001(2*n)]` -/
def P4635941326599841947.Spec : Prop :=
  ∀ n, (P4635941326599841947.a n : ℤ) = A074291 (n + 1)

end A074291

/-! ## A074291.P4424355680042170950

`eq[A123594(n+2), A123594(A084572(a(n-1)+1)+1)]` with `a(0)=2`
-/

namespace A074291.P4424355680042170950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A123594 (A084572 (f2 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074291.P4424355680042170950

namespace A074291

/-- `eq[A123594(n+2), A123594(A084572(a(n-1)+1)+1)]` -/
def P4424355680042170950.Spec : Prop :=
  ∀ n, (P4424355680042170950.a n : ℤ) = A074291 (n + 1)

end A074291

/-!
# A074292: Dominant digit in successive groups of 3 from the Kolakoski sequence (A000002).

The programs for A074292, the canonical program `A074292.P4626438801662741758` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074292 has offset 1).

The definition of A074292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074292.P4626438801662741758

`A000002(3*(n+1)-2)+A000002(3*(n+1)-1)+A000002(3*(n+1))-3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074292

/-- `A000002(3*(n+1)-2)+A000002(3*(n+1)-1)+A000002(3*(n+1))-3` -/
def P4626438801662741758.Spec : Prop :=
  ∀ n, P4626438801662741758.a n = A074292 (n + 1)

theorem P4626438801662741758.correct : P4626438801662741758.Spec := by
  intro n
  simp only [A074292, Nat.add_sub_cancel]

end A074292

/-! ## A074292.P16154273215140575493

`A156257(n+1)-A248805(n+1)`
-/

namespace A074292.P16154273215140575493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156257 (n + 1) - A248805 (n + 1)

end

end A074292.P16154273215140575493

namespace A074292

/-- `A156257(n+1)-A248805(n+1)` -/
def P16154273215140575493.Spec : Prop :=
  ∀ n, P16154273215140575493.a n = A074292 (n + 1)

theorem P16154273215140575493.correct : P16154273215140575493.Spec := by
  intro n
  simp only [A074292, Nat.add_sub_cancel, A074292.P16154273215140575493.a, A074292.P4626438801662741758.a, A000002, A000002.P13330532946811820297.a, A156257, A156257.P13237227130742340145.a, A248805, A248805.P1988173767871098279.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A156253, A156253.P16782691293242481478.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074292

/-! ## A074292.P1391430268289054719

`gcd(2, A248805(n+1)+A013948(n+1))`
-/

namespace A074292.P1391430268289054719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A248805 (n + 1) + A013948 (n + 1))

end

end A074292.P1391430268289054719

namespace A074292

/-- `gcd(2, A248805(n+1)+A013948(n+1))` -/
def P1391430268289054719.Spec : Prop :=
  ∀ n, (P1391430268289054719.a n : ℤ) = A074292 (n + 1)

end A074292

/-! ## A074292.P18084955048023614062

`2-comp[A022304(n+1)]%2-A248805(n+1)`
-/

namespace A074292.P18084955048023614062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022304 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2 : ℕ) : ℤ) - A248805 (n + 1)

end

end A074292.P18084955048023614062

namespace A074292

/-- `2-comp[A022304(n+1)]%2-A248805(n+1)` -/
def P18084955048023614062.Spec : Prop :=
  ∀ n, P18084955048023614062.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P3235486135139069516

`2-eq[1, A088569(n+1)]%2-A248805(n+1)`
-/

namespace A074292.P3235486135139069516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2 : ℕ) : ℤ) - A248805 (n + 1)

end

end A074292.P3235486135139069516

namespace A074292

/-- `2-eq[1, A088569(n+1)]%2-A248805(n+1)` -/
def P3235486135139069516.Spec : Prop :=
  ∀ n, P3235486135139069516.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P2219183266782844418

`2-lt[1, A078880(n+1)]%2-A248805(n+1)`
-/

namespace A074292.P2219183266782844418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2 : ℕ) : ℤ) - A248805 (n + 1)

end

end A074292.P2219183266782844418

namespace A074292

/-- `2-lt[1, A078880(n+1)]%2-A248805(n+1)` -/
def P2219183266782844418.Spec : Prop :=
  ∀ n, P2219183266782844418.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P8666685455298366521

`2-and(1, lt[1, A000002(n+1)]+1)-A248805(n+1)`
-/

namespace A074292.P8666685455298366521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℤ) - A248805 (n + 1)

end

end A074292.P8666685455298366521

namespace A074292

/-- `2-and(1, lt[1, A000002(n+1)]+1)-A248805(n+1)` -/
def P8666685455298366521.Spec : Prop :=
  ∀ n, P8666685455298366521.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P3812768426223102209

`A040001(A248805(n+1)+A013948(n+1))`
-/

namespace A074292.P3812768426223102209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A248805 (n + 1) + A013948 (n + 1)).toNat

end

end A074292.P3812768426223102209

namespace A074292

/-- `A040001(A248805(n+1)+A013948(n+1))` -/
def P3812768426223102209.Spec : Prop :=
  ∀ n, P3812768426223102209.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P17279342996452757207

`2-A249093(A078649(n+1))-A248805(n+1)`
-/

namespace A074292.P17279342996452757207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A249093 (A078649 (n + 1)).toNat - A248805 (n + 1)

end

end A074292.P17279342996452757207

namespace A074292

/-- `2-A249093(A078649(n+1))-A248805(n+1)` -/
def P17279342996452757207.Spec : Prop :=
  ∀ n, P17279342996452757207.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P9537383844330901529

`A001511(or(2, A013948(n+1)))-A248805(n+1)`
-/

namespace A074292.P9537383844330901529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor 2 (A013948 (n + 1))).toNat - A248805 (n + 1)

end

end A074292.P9537383844330901529

namespace A074292

/-- `A001511(or(2, A013948(n+1)))-A248805(n+1)` -/
def P9537383844330901529.Spec : Prop :=
  ∀ n, P9537383844330901529.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P7603682059245826363

`A000034(eq[1, A049705(n+1)])-A248805(n+1)`
-/

namespace A074292.P7603682059245826363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A248805 (n + 1)

end

end A074292.P7603682059245826363

namespace A074292

/-- `A000034(eq[1, A049705(n+1)])-A248805(n+1)` -/
def P7603682059245826363.Spec : Prop :=
  ∀ n, P7603682059245826363.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P33205261227957154

`A000034(lt[1, A000002(n+1)])-A248805(n+1)`
-/

namespace A074292.P33205261227957154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A248805 (n + 1)

end

end A074292.P33205261227957154

namespace A074292

/-- `A000034(lt[1, A000002(n+1)])-A248805(n+1)` -/
def P33205261227957154.Spec : Prop :=
  ∀ n, P33205261227957154.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P15816526378989596785

`A000034(eq[2, A000002(n+1)])-A248805(n+1)`
-/

namespace A074292.P15816526378989596785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A248805 (n + 1)

end

end A074292.P15816526378989596785

namespace A074292

/-- `A000034(eq[2, A000002(n+1)])-A248805(n+1)` -/
def P15816526378989596785.Spec : Prop :=
  ∀ n, P15816526378989596785.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P3058298114367619318

`A000002(A078649(n+1)-A248805(n+1)²)`
-/

namespace A074292.P3058298114367619318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1) - A248805 (n + 1) ^ 2).toNat

end

end A074292.P3058298114367619318

namespace A074292

/-- `A000002(A078649(n+1)-A248805(n+1)²)` -/
def P3058298114367619318.Spec : Prop :=
  ∀ n, P3058298114367619318.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P5986452730422411270

`A000002(A078649(n+1))-A248805(n+1)`
-/

namespace A074292.P5986452730422411270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1)).toNat - A248805 (n + 1)

end

end A074292.P5986452730422411270

namespace A074292

/-- `A000002(A078649(n+1))-A248805(n+1)` -/
def P5986452730422411270.Spec : Prop :=
  ∀ n, P5986452730422411270.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P2270128234605797679

`Δ[A216345(3*n+1)]-3`
-/

namespace A074292.P2270128234605797679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A074292.P2270128234605797679

namespace A074292

/-- `Δ[A216345(3*n+1)]-3` -/
def P2270128234605797679.Spec : Prop :=
  ∀ n, P2270128234605797679.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P11803719566063188035

`Δ[A074286(A008486(n))]`
-/

namespace A074292.P11803719566063188035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074292.P11803719566063188035

namespace A074292

/-- `Δ[A074286(A008486(n))]` -/
def P11803719566063188035.Spec : Prop :=
  ∀ n, P11803719566063188035.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P9790309084630914187

`Δ[A074286(A028310(3*n))]`
-/

namespace A074292.P9790309084630914187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A028310 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074292.P9790309084630914187

namespace A074292

/-- `Δ[A074286(A028310(3*n))]` -/
def P9790309084630914187.Spec : Prop :=
  ∀ n, P9790309084630914187.a n = A074292 (n + 1)

end A074292

/-! ## A074292.P6911217257209558093

`Δ[A074286(A004277(n)+n)]`
-/

namespace A074292.P6911217257209558093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A004277 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074292.P6911217257209558093

namespace A074292

/-- `Δ[A074286(A004277(n)+n)]` -/
def P6911217257209558093.Spec : Prop :=
  ∀ n, P6911217257209558093.a n = A074292 (n + 1)

end A074292

/-!
# A074293: Dominant (i.e., most populous) digit in Kolakoski sequence (A000002) when partitioned into groups of 5.

The programs for A074293, the canonical program `A074293.P13089180557891282767` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074293 has offset 0).

The definition of A074293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074293.P13089180557891282767

`A003983(Δ[A054353(A008706(n))])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A074293

/-- `A003983(Δ[A054353(A008706(n))])` -/
def P13089180557891282767.Spec : Prop :=
  ∀ n, P13089180557891282767.a n = A074293 n

theorem P13089180557891282767.correct : P13089180557891282767.Spec := by
  intro n
  simp only [A074293]

end A074293

/-! ## A074293.P15327214241366649246

`A000010(Δ[A074286(A008706(n))])`
-/

namespace A074293.P15327214241366649246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A074293.P15327214241366649246

namespace A074293

/-- `A000010(Δ[A074286(A008706(n))])` -/
def P15327214241366649246.Spec : Prop :=
  ∀ n, P15327214241366649246.a n = A074293 n

end A074293

/-! ## A074293.P15845186737379314367

`A037254(Δ[A074286(A008706(n))])`
-/

namespace A074293.P15845186737379314367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (f1 (n + 1) - f1 n).toNat

end

end A074293.P15845186737379314367

namespace A074293

/-- `A037254(Δ[A074286(A008706(n))])` -/
def P15845186737379314367.Spec : Prop :=
  ∀ n, P15845186737379314367.a n = A074293 n

end A074293

/-! ## A074293.P12383549295091396269

`A046951(Δ[A216345(A016861(n))])`
-/

namespace A074293.P12383549295091396269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A016861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (f1 (n + 1) - f1 n).toNat

end

end A074293.P12383549295091396269

namespace A074293

/-- `A046951(Δ[A216345(A016861(n))])` -/
def P12383549295091396269.Spec : Prop :=
  ∀ n, P12383549295091396269.a n = A074293 n

end A074293

/-! ## A074293.P16343693134158652

`A112689(Δ[A216345(A016861(n))])`
-/

namespace A074293.P16343693134158652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A016861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (f1 (n + 1) - f1 n).toNat

end

end A074293.P16343693134158652

namespace A074293

/-- `A112689(Δ[A216345(A016861(n))])` -/
def P16343693134158652.Spec : Prop :=
  ∀ n, P16343693134158652.a n = A074293 n

end A074293

/-!
# A074294: Integers 1 to 2*k followed by integers 1 to 2*k + 2 and so on.

The programs for A074294, the canonical program `A074294.P16051080302680940184` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074294 has offset 1).

The definition of A074294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074294.P16051080302680940184

`n+1-2*C(floor(1/2+sqrt(n+1)), 2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074294

/-- `n+1-2*C(floor(1/2+sqrt(n+1)), 2)` -/
def P16051080302680940184.Spec : Prop :=
  ∀ n, P16051080302680940184.a n = A074294 (n + 1)

theorem P16051080302680940184.correct : P16051080302680940184.Spec := by
  intro n
  simp only [A074294, Nat.add_sub_cancel]

end A074294

/-! ## A074294.P13981004764992429350

`n-1-floor(sqrt(n+1)+3/2)*floor(sqrt(n+1)-3/2)`
-/

namespace A074294.P13981004764992429350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ⌊Real.sqrt (n + 1 : ℝ) + ((3 : ℚ) / 2 : ℝ)⌋ * ⌊Real.sqrt (n + 1 : ℝ) - ((3 : ℚ) / 2 : ℝ)⌋

end

end A074294.P13981004764992429350

namespace A074294

/-- `n-1-floor(sqrt(n+1)+3/2)*floor(sqrt(n+1)-3/2)` -/
def P13981004764992429350.Spec : Prop :=
  ∀ n, P13981004764992429350.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P12630309152577837506

`A165776(n)%A130829(n+1)`
-/

namespace A074294.P12630309152577837506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165776 n) (A130829 (n + 1))

end

end A074294.P12630309152577837506

namespace A074294

/-- `A165776(n)%A130829(n+1)` -/
def P12630309152577837506.Spec : Prop :=
  ∀ n, P12630309152577837506.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P17264194118102749073

`A162917(n+1)%A130829(n+1)`
-/

namespace A074294.P17264194118102749073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162917 (n + 1)) (A130829 (n + 1))

end

end A074294.P17264194118102749073

namespace A074294

/-- `A162917(n+1)%A130829(n+1)` -/
def P17264194118102749073.Spec : Prop :=
  ∀ n, P17264194118102749073.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P3559964726892259565

`A053186(comp[n²])`
-/

namespace A074294.P3559964726892259565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A074294.P3559964726892259565

namespace A074294

/-- `A053186(comp[n²])` -/
def P3559964726892259565.Spec : Prop :=
  ∀ n, P3559964726892259565.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P3987384319689346228

`A071797(comp[n²])`
-/

namespace A074294.P3987384319689346228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A074294.P3987384319689346228

namespace A074294

/-- `A071797(comp[n²])` -/
def P3987384319689346228.Spec : Prop :=
  ∀ n, P3987384319689346228.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P2083227804993306563

`and(-1, A053186(A000037(n+1)))`
-/

namespace A074294.P2083227804993306563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A053186 (A000037 (n + 1)).toNat)

end

end A074294.P2083227804993306563

namespace A074294

/-- `and(-1, A053186(A000037(n+1)))` -/
def P2083227804993306563.Spec : Prop :=
  ∀ n, P2083227804993306563.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P13306714876197354153

`A253515(A005843(A053187(n+1))-n)`
-/

namespace A074294.P13306714876197354153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253515 (A005843 (A053187 (n + 1)).toNat - (n : ℤ)).toNat

end

end A074294.P13306714876197354153

namespace A074294

/-- `A253515(A005843(A053187(n+1))-n)` -/
def P13306714876197354153.Spec : Prop :=
  ∀ n, P13306714876197354153.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P973639534944523083

`A002260(floor(sqrt(n))²+1+n)`
-/

namespace A074294.P973639534944523083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.sqrt n ^ 2 + 1 + n)

end

end A074294.P973639534944523083

namespace A074294

/-- `A002260(floor(sqrt(n))²+1+n)` -/
def P973639534944523083.Spec : Prop :=
  ∀ n, P973639534944523083.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P13126679173732868288

`A000027(A002260(∑[char[n²-1]]²+n+1))`
-/

namespace A074294.P13126679173732868288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002260 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n + 1)).toNat

end

end A074294.P13126679173732868288

namespace A074294

/-- `A000027(A002260(∑[char[n²-1]]²+n+1))` -/
def P13126679173732868288.Spec : Prop :=
  ∀ n, P13126679173732868288.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P12725197644164020942

`∑[2-A204131(2*n+1)]`
-/

namespace A074294.P12725197644164020942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204131 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074294.P12725197644164020942

namespace A074294

/-- `∑[2-A204131(2*n+1)]` -/
def P12725197644164020942.Spec : Prop :=
  ∀ n, P12725197644164020942.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P10343786112319873748

`A211197(A007607(n+1))/2`
-/

namespace A074294.P10343786112319873748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211197 (A007607 (n + 1)).toNat : ℚ) / 2

end

end A074294.P10343786112319873748

namespace A074294

/-- `A211197(A007607(n+1))/2` -/
def P10343786112319873748.Spec : Prop :=
  ∀ n, P10343786112319873748.a n = (A074294 (n + 1) : ℚ)

end A074294

/-! ## A074294.P17552975794136299867

`A194258(2*A064788(n+1))`
-/

namespace A074294.P17552975794136299867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (2 * A064788 (n + 1)).toNat

end

end A074294.P17552975794136299867

namespace A074294

/-- `A194258(2*A064788(n+1))` -/
def P17552975794136299867.Spec : Prop :=
  ∀ n, P17552975794136299867.a n = A074294 (n + 1)

end A074294

/-! ## A074294.P13158362629096659679

`A194258(A064788(n+1)+A064788(n+1))`
-/

namespace A074294.P13158362629096659679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A064788 (n + 1) + A064788 (n + 1)).toNat

end

end A074294.P13158362629096659679

namespace A074294

/-- `A194258(A064788(n+1)+A064788(n+1))` -/
def P13158362629096659679.Spec : Prop :=
  ∀ n, P13158362629096659679.a n = A074294 (n + 1)

end A074294

/-!
# A074295: Dominant (i.e., most populous) digit in Kolakoski sequence (A000002) when partitioned into groups of 7.

The programs for A074295, the canonical program `A074295.P9350857613342188456` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074295 has offset 1).

The definition of A074295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074295.P9350857613342188456

`A089309(Δ[A216345(A016993(n))])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074295

/-- `A089309(Δ[A216345(A016993(n))])` -/
def P9350857613342188456.Spec : Prop :=
  ∀ n, P9350857613342188456.a n = A074295 (n + 1)

theorem P9350857613342188456.correct : P9350857613342188456.Spec := by
  intro n
  simp only [A074295, Nat.add_sub_cancel]

end A074295

/-! ## A074295.P11429161388623262418

`A136480(Δ[A216345(A016993(n))])`
-/

namespace A074295.P11429161388623262418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (f1 (n + 1) - f1 n).toNat

end

end A074295.P11429161388623262418

namespace A074295

/-- `A136480(Δ[A216345(A016993(n))])` -/
def P11429161388623262418.Spec : Prop :=
  ∀ n, P11429161388623262418.a n = A074295 (n + 1)

end A074295

/-! ## A074295.P6438253945517744831

`A227349(Δ[A216345(A016993(n))])`
-/

namespace A074295.P6438253945517744831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (f1 (n + 1) - f1 n).toNat

end

end A074295.P6438253945517744831

namespace A074295

/-- `A227349(Δ[A216345(A016993(n))])` -/
def P6438253945517744831.Spec : Prop :=
  ∀ n, P6438253945517744831.a n = A074295 (n + 1)

end A074295

/-! ## A074295.P4646959220684718958

`A326526(Δ[A216345(A016993(n))])`
-/

namespace A074295.P4646959220684718958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326526 (f1 (n + 1) - f1 n).toNat

end

end A074295.P4646959220684718958

namespace A074295

/-- `A326526(Δ[A216345(A016993(n))])` -/
def P4646959220684718958.Spec : Prop :=
  ∀ n, P4646959220684718958.a n = A074295 (n + 1)

end A074295

/-! ## A074295.P8314061606414401121

`A339047(Δ[A216345(A016993(n))])`
-/

namespace A074295.P8314061606414401121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339047 (f1 (n + 1) - f1 n).toNat

end

end A074295.P8314061606414401121

namespace A074295

/-- `A339047(Δ[A216345(A016993(n))])` -/
def P8314061606414401121.Spec : Prop :=
  ∀ n, P8314061606414401121.a n = A074295 (n + 1)

end A074295

/-!
# A074298: First occurrence of an 'average' valued sequence of length 2n in the Kolakoski sequence (A000002).

The programs for A074298, there is no canonical definition to state claims against.
-/

/-! ## A074298.P6021825747513133175

`A130784(A156242(n+1)%A258250(2*(n+1)))`
-/

namespace A074298.P6021825747513133175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (Int.tmod (A156242 (n + 1)) (A258250 (2 * (n + 1)))).toNat

end

end A074298.P6021825747513133175

/-! ## A074298.P10073854227459008161

`A130784(A024612(n+1)*A156242(n+1))`
-/

namespace A074298.P10073854227459008161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A024612 (n + 1) * A156242 (n + 1)).toNat

end

end A074298.P10073854227459008161

/-! ## A074298.P1411849534586550370

`A130784(A156242(n+1)*A262124(n+1))`
-/

namespace A074298.P1411849534586550370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A156242 (n + 1) * A262124 (n + 1)).toNat

end

end A074298.P1411849534586550370

/-! ## A074298.P9622004029134359042

`A130784(A156242(n+1)^A156264(n+3))`
-/

namespace A074298.P9622004029134359042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (SequenceMachineLib.roundAway ((A156242 (n + 1) : ℚ) ^ (A156264 (n + 3) : ℤ))).toNat

end

end A074298.P9622004029134359042

/-! ## A074298.P10624593022960758260

`A130784(A013947(n+3)*A156242(n+1))`
-/

namespace A074298.P10624593022960758260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A013947 (n + 3) * A156242 (n + 1)).toNat

end

end A074298.P10624593022960758260

/-!
# A074299: Lengths of subsequences such that the first 'average' value (a[n]*1.5) is not achieved from the starting position in the Kolakoski sequence (A000002).

The programs for A074299, there is no canonical definition to state claims against.
-/

/-! ## A074299.P11656602818922845058

`2*(lt[1, A074298(n+1)]+1)`
-/

namespace A074299.P11656602818922845058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074299.P11656602818922845058

/-! ## A074299.P13059885769796023227

`2*lt[1, A074298(gcd(n, C(2, n)))]`
-/

namespace A074299.P13059885769796023227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074299.P13059885769796023227

/-! ## A074299.P367097737369673042

`eq[2, A040001(A294448(n+2)²)]+2`
-/

namespace A074299.P367097737369673042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A294448 (n + 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A074299.P367097737369673042

/-! ## A074299.P7515964457808054549

`lt[2, A020639(A294448(n+2)²+1)]+2`
-/

namespace A074299.P7515964457808054549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A294448 (n + 2) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A074299.P7515964457808054549

/-! ## A074299.P6231230687518426806

`lt[3, A040001(A294448(n+1)²)+2]+1`
-/

namespace A074299.P6231230687518426806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A294448 (n + 1) ^ 2).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074299.P6231230687518426806

