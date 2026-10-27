import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A394301: a(n) is the number of unit squares in the square lattice, divided by 4, that have 1 vertex strictly inside and 3 vertices strictly outside the circle (x-1/2)^2 + (y-1/2)^2 = n, i.e., the circle centered at the deep hole.

The programs for A394301, there is no canonical definition to state claims against.
-/

/-! ## A394301.P8775934312492886926

`A394303(n)+A057427(n)`
-/

namespace A394301.P8775934312492886926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A057427 n

end

end A394301.P8775934312492886926

/-! ## A394301.P3033881622382429454

`A394303(n)-A057428(n)`
-/

namespace A394301.P3033881622382429454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n - A057428 n

end

end A394301.P3033881622382429454

/-! ## A394301.P15721483511714892592

`A394303(n)+A301471(A001316(n))`
-/

namespace A394301.P15721483511714892592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A301471 (A001316 n).toNat

end

end A394301.P15721483511714892592

/-! ## A394301.P17822344826968333395

`A394303(n)+A071625(A000961(n+1))`
-/

namespace A394301.P17822344826968333395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A071625 (A000961 (n + 1)).toNat

end

end A394301.P17822344826968333395

/-! ## A394301.P16552366078909595843

`A394303(n)+A000035(A061802(n))`
-/

namespace A394301.P16552366078909595843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A000035 (A061802 n).toNat

end

end A394301.P16552366078909595843

/-!
# A394303: a(n) is the number of unit squares in the square lattice, divided by 4, that have 3 vertices strictly inside and 1 vertex strictly outside the circle (x-1/2)^2 + (y-1/2)^2 = n, i.e., the circle centered at the deep hole.

The programs for A394303, there is no canonical definition to state claims against.
-/

/-! ## A394303.P6802427003329767371

`A394301(n)+A057428(n)`
-/

namespace A394303.P6802427003329767371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n + A057428 n

end

end A394303.P6802427003329767371

/-! ## A394303.P2221286922009918750

`A394301(n)-A057427(n)`
-/

namespace A394303.P2221286922009918750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A057427 n

end

end A394303.P2221286922009918750

/-! ## A394303.P16741351133678035645

`A393696(A393698(A394301(n)))`
-/

namespace A394303.P16741351133678035645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393696 (A393698 (A394301 n).toNat).toNat

end

end A394303.P16741351133678035645

/-! ## A394303.P10498771853958398274

`A394301(n)-A068494(A000040(n+1))`
-/

namespace A394303.P10498771853958398274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A068494 (A000040 (n + 1)).toNat

end

end A394303.P10498771853958398274

/-!
# A394308: a(n) is the number of n-digit numbers that are primes or squares of primes.

The programs for A394308, there is no canonical definition to state claims against.
-/

/-! ## A394308.P17378724713672807716

`A006879(n+1)+A379566(n+1)`
-/

namespace A394308.P17378724713672807716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) + A379566 (n + 1)

end

end A394308.P17378724713672807716

/-! ## A394308.P17923129084937883269

`Δ[A122121(n)+∑[A006879(n)]]`
-/

namespace A394308.P17923129084937883269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394308.P17923129084937883269

/-! ## A394308.P17979139896282504008

`Δ[A122121(n)+A090226(n+1)]`
-/

namespace A394308.P17979139896282504008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 n + A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394308.P17979139896282504008

/-! ## A394308.P16988046635358746872

`Δ[A122121(2*n)+A122121(n)]`
-/

namespace A394308.P16988046635358746872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * n) + A122121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394308.P16988046635358746872

/-! ## A394308.P10334117151370616547

`Δ[A122121(n)+A238815(n)-A076048(n)]`
-/

namespace A394308.P10334117151370616547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 n + (A238815 n - A076048 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394308.P10334117151370616547

/-!
# A394309: Number of peakless Motzkin paths of length n with up steps in n colors.

The programs for A394309, there is no canonical definition to state claims against.
-/

/-! ## A394309.P7004117936275716157

`A127242(A127218(3*n)*A238824(n+1))`
-/

namespace A394309.P7004117936275716157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127242 (A127218 (3 * n) * A238824 (n + 1)).toNat

end

end A394309.P7004117936275716157

/-!
# A394314: a(n) = 2^(2*n-1) - 3^n + 2^n - 1, n > 0; a(0)=0.

The programs for A394314, the canonical program `A394314.P7002470424039581728` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394314 has offset 0).

The definition of A394314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394314.P7002470424039581728

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=12, a(4)=62`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394314

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P7002470424039581728.Spec : Prop :=
  ∀ n, P7002470424039581728.a n = A394314 n

theorem P7002470424039581728.correct : P7002470424039581728.Spec := by
  intro n
  simp only [A394314]

end A394314

/-! ## A394314.P18268251108581888250

`A134165(n)-A003945(n)`
-/

namespace A394314.P18268251108581888250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - A003945 n

end

end A394314.P18268251108581888250

namespace A394314

/-- `A134165(n)-A003945(n)` -/
def P18268251108581888250.Spec : Prop :=
  ∀ n, P18268251108581888250.a n = A394314 n

end A394314

/-! ## A394314.P15202767791278980568

`A081294(n)-A083323(n)`
-/

namespace A394314.P15202767791278980568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A083323 n

end

end A394314.P15202767791278980568

namespace A394314

/-- `A081294(n)-A083323(n)` -/
def P15202767791278980568.Spec : Prop :=
  ∀ n, P15202767791278980568.a n = A394314 n

end A394314

/-! ## A394314.P12083828030527941630

`A084869(n)-A094373(n)`
-/

namespace A394314.P12083828030527941630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - A094373 n

end

end A394314.P12083828030527941630

namespace A394314

/-- `A084869(n)-A094373(n)` -/
def P12083828030527941630.Spec : Prop :=
  ∀ n, P12083828030527941630.a n = A394314 n

end A394314

/-! ## A394314.P10802138316210311040

`A133789(n)-A131577(n)`
-/

namespace A394314.P10802138316210311040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n - A131577 n

end

end A394314.P10802138316210311040

namespace A394314

/-- `A133789(n)-A131577(n)` -/
def P10802138316210311040.Spec : Prop :=
  ∀ n, P10802138316210311040.a n = A394314 n

end A394314

/-! ## A394314.P9357984292164480276

`A011782(2*n)-A083323(n)`
-/

namespace A394314.P9357984292164480276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A083323 n

end

end A394314.P9357984292164480276

namespace A394314

/-- `A011782(2*n)-A083323(n)` -/
def P9357984292164480276.Spec : Prop :=
  ∀ n, P9357984292164480276.a n = A394314 n

end A394314

/-! ## A394314.P8532279375341015519

`A093356(n+1)-A074506(n)`
-/

namespace A394314.P8532279375341015519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093356 (n + 1) - A074506 n

end

end A394314.P8532279375341015519

namespace A394314

/-- `A093356(n+1)-A074506(n)` -/
def P8532279375341015519.Spec : Prop :=
  ∀ n, P8532279375341015519.a n = A394314 n

end A394314

/-!
# A394317: Concatenated permutations of integers in decimal.

The programs for A394317, there is no canonical definition to state claims against.
-/

/-! ## A394317.P8828999659317476008

`A235049(A030299(n+1))`
-/

namespace A394317.P8828999659317476008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A030299 (n + 1)).toNat

end

end A394317.P8828999659317476008

/-! ## A394317.P6379469404052598333

`∩[A031183(n+1), A215014(n+1)]`
-/

namespace A394317.P6379469404052598333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394317.P6379469404052598333

/-! ## A394317.P13278063757368477096

`∩[A031183(n+1), A376300(n+1)]`
-/

namespace A394317.P13278063757368477096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394317.P13278063757368477096

/-! ## A394317.P11462877478588945056

`∩[A281943(n+1), A376314(n+1)]`
-/

namespace A394317.P11462877478588945056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394317.P11462877478588945056

/-!
# A394318: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(0,0) = 1 and T(n,k) = 2*(k+1)*(2*k+1) * T(n-1,k+1) + (4*(4*k + 1)*n + 8*k^2 - 8*k - 3) * T(n-1,k) + 2*(4*n + 2*k - 5)*(2*n + k - 1) * T(n-1,k-1), with T(n,k) = 0 if k < 0 or k >= n+1.

The programs for A394318, there is no canonical definition to state claims against.
-/

/-! ## A394318.P16625090021776190938

`A001770(a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A394318.P16625090021776190938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001770 (a (n - 1)).toNat + (n : ℤ)

end

end A394318.P16625090021776190938

/-!
# A394321: Number of partitions p of n such that (maximal multiplicity of the parts of p) <= 2 * (maximal part of p).

The programs for A394321, there is no canonical definition to state claims against.
-/

/-! ## A394321.P17867673691685926716

`A025065(2*n)-A335523(A098613(n))`
-/

namespace A394321.P17867673691685926716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n) - A335523 (A098613 n).toNat

end

end A394321.P17867673691685926716

/-! ## A394321.P6633435193126776568

`A156251(A003318(n+1))+A143592(n+1)`
-/

namespace A394321.P6633435193126776568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A003318 (n + 1)).toNat + A143592 (n + 1)

end

end A394321.P6633435193126776568

/-! ## A394321.P12851637883529318165

`A238866(n+1)-A287170(A002216(n+1))`
-/

namespace A394321.P12851637883529318165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238866 (n + 1) - A287170 (A002216 (n + 1)).toNat

end

end A394321.P12851637883529318165

/-!
# A394325: Number of partitions p of n such that (minimal multiplicity of the parts of p) >= 2 * (maximal part of p).

The programs for A394325, there is no canonical definition to state claims against.
-/

/-! ## A394325.P7850767348720226933

`A334440(A274936(n))`
-/

namespace A394325.P7850767348720226933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A274936 n).toNat

end

end A394325.P7850767348720226933

/-! ## A394325.P2530551993118608435

`A102671(A049915(n+2))`
-/

namespace A394325.P2530551993118608435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A049915 (n + 2)).toNat

end

end A394325.P2530551993118608435

/-! ## A394325.P10791675263747714902

`A090046(A072646(n+2)^A176866(n))`
-/

namespace A394325.P10791675263747714902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090046 (SequenceMachineLib.roundAway ((A072646 (n + 2) : ℚ) ^ (A176866 n : ℤ))).toNat

end

end A394325.P10791675263747714902

/-!
# A394327: Indices corresponding to records in A393379.

The programs for A394327, there is no canonical definition to state claims against.
-/

/-! ## A394327.P4510081478539815680

`A134930(A291249(n))-A096869(n+1)`
-/

namespace A394327.P4510081478539815680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (A291249 n).toNat - A096869 (n + 1)

end

end A394327.P4510081478539815680

/-!
# A394328: Irregular triangle read by rows: exponents of the primes in the prime factorization of A394167(n) (primes in increasing order).

The programs for A394328, there is no canonical definition to state claims against.
-/

/-! ## A394328.P9591316920321937257

`A279316(A168388(3*n+1))+A131371(n+1)`
-/

namespace A394328.P9591316920321937257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279316 (A168388 (3 * n + 1)).toNat + A131371 (n + 1)

end

end A394328.P9591316920321937257

/-!
# A394329: a(n) = A394328(2*n,1); that is, the bipartition of the first column of A394328.

The programs for A394329, there is no canonical definition to state claims against.
-/

/-! ## A394329.P18170157789159439996

`A187059(n)+A005187(n)`
-/

namespace A394329.P18170157789159439996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + A005187 n

end

end A394329.P18170157789159439996

/-! ## A394329.P11591819090777842548

`A187059(n)+A011371(2*n)`
-/

namespace A394329.P11591819090777842548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + A011371 (2 * n)

end

end A394329.P11591819090777842548

/-! ## A394329.P15812286465048214524

`A187059(2*n)-A187059(n)`
-/

namespace A394329.P15812286465048214524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 (2 * n) - A187059 n

end

end A394329.P15812286465048214524

/-!
# A394340: Number of self-avoiding walks on the cubic lattice with the first three orthogonal steps specified (see Comments).

The programs for A394340, there is no canonical definition to state claims against.
-/

/-! ## A394340.P6604656003231669422

`(A001412(n+1)+24*A046171(n+1)+18)/48`
-/

namespace A394340.P6604656003231669422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001412 (n + 1) + 24 * A046171 (n + 1) + 18 : ℚ) / 48

end

end A394340.P6604656003231669422

/-! ## A394340.P4545531362547254151

`A157271(A151102(n))`
-/

namespace A394340.P4545531362547254151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A151102 n).toNat

end

end A394340.P4545531362547254151

/-!
# A394342: a(n) = n*(3^n - 1) + 1.

The programs for A394342, the canonical program `A394342.P5072940989807657412` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394342 has offset 0).

The definition of A394342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3^n-1)+1` (program `A394342.P5072940989807657412`, by `A394342.P5072940989807657412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394342.P5072940989807657412

`n*(3^n-1)+1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394342

/-- `n*(3^n-1)+1` -/
def P5072940989807657412.Spec : Prop :=
  ∀ n, P5072940989807657412.a n = A394342 n

theorem P5072940989807657412.correct : P5072940989807657412.Spec := by
  intro n
  simp only [A394342]

end A394342

/-! ## A394342.P12467903134450593420

`or(1, n*(3^n-1))`
-/

namespace A394342.P12467903134450593420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((3 ^ n : ℤ) - 1))

end

end A394342.P12467903134450593420

namespace A394342

/-- `or(1, n*(3^n-1))` -/
def P12467903134450593420.Spec : Prop :=
  ∀ n, P12467903134450593420.a n = A394342 n

end A394342

/-! ## A394342.P10160081840796135380

`∑[xor(1, A229277(n))]`
-/

namespace A394342.P10160081840796135380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A229277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394342.P10160081840796135380

namespace A394342

/-- `∑[xor(1, A229277(n))]` -/
def P10160081840796135380.Spec : Prop :=
  ∀ n, P10160081840796135380.a n = A394342 n

end A394342

/-! ## A394342.P14628631905228519532

`abs(n-A050914(n))`
-/

namespace A394342.P14628631905228519532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A050914 n|

end

end A394342.P14628631905228519532

namespace A394342

/-- `abs(n-A050914(n))` -/
def P14628631905228519532.Spec : Prop :=
  ∀ n, P14628631905228519532.a n = A394342 n

end A394342

/-! ## A394342.P979318759917915716

`xor(1, A036290(n)-n)`
-/

namespace A394342.P979318759917915716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A036290 n - (n : ℤ))

end

end A394342.P979318759917915716

namespace A394342

/-- `xor(1, A036290(n)-n)` -/
def P979318759917915716.Spec : Prop :=
  ∀ n, P979318759917915716.a n = A394342 n

end A394342

/-!
# A394345: a(n) is the smallest prime in the form of ((2n)^m - 1)/(2n - 1) - (2n)^(k - 1), where k < m are both positive integers.

The programs for A394345, there is no canonical definition to state claims against.
-/

/-! ## A394345.P17733650971049631838

`A007918(A335467(2*n+3)^∑{d}[n+1, ceil(1/#)])`
-/

namespace A394345.P17733650971049631838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((A335467 (2 * n + 3) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ : ℤ))).toNat

end

end A394345.P17733650971049631838

/-!
# A394346: a(n) = tau(n) * pod(n) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

The programs for A394346, the canonical program `A394346.P4603799114259171752` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394346 has offset 1).

The definition of A394346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394346.P219588846261258921

`A000005(n+1)*A007955(n+1)`
-/

namespace A394346.P219588846261258921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007955 (n + 1)

end

end A394346.P219588846261258921

namespace A394346

/-- `A000005(n+1)*A007955(n+1)` -/
def P219588846261258921.Spec : Prop :=
  ∀ n, P219588846261258921.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P4603799114259171752

`A324528(n+1)*A306671(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A394346

/-- `A324528(n+1)*A306671(n+1)` -/
def P4603799114259171752.Spec : Prop :=
  ∀ n, P4603799114259171752.a n = A394346 (n + 1)

theorem P4603799114259171752.correct : P4603799114259171752.Spec := by
  intro n
  simp only [A394346, Nat.add_sub_cancel]

end A394346

/-! ## A394346.P2529344097727588453

`A007956(n+1)*A038040(n+1)`
-/

namespace A394346.P2529344097727588453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A038040 (n + 1)

end

end A394346.P2529344097727588453

namespace A394346

/-- `A007956(n+1)*A038040(n+1)` -/
def P2529344097727588453.Spec : Prop :=
  ∀ n, P2529344097727588453.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P10470403499104395888

`A087652(n+1)*A304409(n+1)`
-/

namespace A394346.P10470403499104395888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (n + 1) * A304409 (n + 1)

end

end A394346.P10470403499104395888

namespace A394346

/-- `A087652(n+1)*A304409(n+1)` -/
def P10470403499104395888.Spec : Prop :=
  ∀ n, P10470403499104395888.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P2146337736243291503

`(A056924(n+1)+A038548(n+1))*A007955(n+1)`
-/

namespace A394346.P2146337736243291503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056924 (n + 1) + A038548 (n + 1)) * A007955 (n + 1)

end

end A394346.P2146337736243291503

namespace A394346

/-- `(A056924(n+1)+A038548(n+1))*A007955(n+1)` -/
def P2146337736243291503.Spec : Prop :=
  ∀ n, P2146337736243291503.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P4667094949333679466

`(A087991(n+1)+A087990(n+1))*A007955(n+1)`
-/

namespace A394346.P4667094949333679466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087991 (n + 1) + A087990 (n + 1)) * A007955 (n + 1)

end

end A394346.P4667094949333679466

namespace A394346

/-- `(A087991(n+1)+A087990(n+1))*A007955(n+1)` -/
def P4667094949333679466.Spec : Prop :=
  ∀ n, P4667094949333679466.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P2013679788461167799

`A000005(n+1)*A007947(n+1)*A087652(n+1)`
-/

namespace A394346.P2013679788461167799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007947 (n + 1) * A087652 (n + 1)

end

end A394346.P2013679788461167799

namespace A394346

/-- `A000005(n+1)*A007947(n+1)*A087652(n+1)` -/
def P2013679788461167799.Spec : Prop :=
  ∀ n, P2013679788461167799.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P1196888547441893622

`A000005(n+1)*A125911(n+1)*A136655(n+1)`
-/

namespace A394346.P1196888547441893622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A125911 (n + 1) * A136655 (n + 1)

end

end A394346.P1196888547441893622

namespace A394346

/-- `A000005(n+1)*A125911(n+1)*A136655(n+1)` -/
def P1196888547441893622.Spec : Prop :=
  ∀ n, P1196888547441893622.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P1161046889162684291

`A007955(n+1)/A000203(n+1)*A064840(n+1)`
-/

namespace A394346.P1161046889162684291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A064840 (n + 1) : ℚ)

end

end A394346.P1161046889162684291

namespace A394346

/-- `A007955(n+1)/A000203(n+1)*A064840(n+1)` -/
def P1161046889162684291.Spec : Prop :=
  ∀ n, P1161046889162684291.a n = (A394346 (n + 1) : ℚ)

end A394346

/-! ## A394346.P13924882515044744245

`A000005(n+1)/A000203(n+1)*A076722(n+1)`
-/

namespace A394346.P13924882515044744245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A076722 (n + 1) : ℚ)

end

end A394346.P13924882515044744245

namespace A394346

/-- `A000005(n+1)/A000203(n+1)*A076722(n+1)` -/
def P13924882515044744245.Spec : Prop :=
  ∀ n, P13924882515044744245.a n = (A394346 (n + 1) : ℚ)

end A394346

/-! ## A394346.P6792816151168357381

`A007955(n+1)*A183063(2*(n+1))`
-/

namespace A394346.P6792816151168357381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A183063 (2 * (n + 1))

end

end A394346.P6792816151168357381

namespace A394346

/-- `A007955(n+1)*A183063(2*(n+1))` -/
def P6792816151168357381.Spec : Prop :=
  ∀ n, P6792816151168357381.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P6468358597345875619

`A000005(n+1)/A211776(n+1)*A306705(n+1)`
-/

namespace A394346.P6468358597345875619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ) * (A306705 (n + 1) : ℚ)

end

end A394346.P6468358597345875619

namespace A394346

/-- `A000005(n+1)/A211776(n+1)*A306705(n+1)` -/
def P6468358597345875619.Spec : Prop :=
  ∀ n, P6468358597345875619.a n = (A394346 (n + 1) : ℚ)

end A394346

/-! ## A394346.P15604869671100004976

`A005361(A064549(n+1))*A007955(n+1)`
-/

namespace A394346.P15604869671100004976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A064549 (n + 1)).toNat * A007955 (n + 1)

end

end A394346.P15604869671100004976

namespace A394346

/-- `A005361(A064549(n+1))*A007955(n+1)` -/
def P15604869671100004976.Spec : Prop :=
  ∀ n, P15604869671100004976.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P971255529292598849

`A000005(n+1)/A076891(n+1)*A010786(n+1)`
-/

namespace A394346.P971255529292598849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A076891 (n + 1) : ℚ) * (A010786 (n + 1) : ℚ)

end

end A394346.P971255529292598849

namespace A394346

/-- `A000005(n+1)/A076891(n+1)*A010786(n+1)` -/
def P971255529292598849.Spec : Prop :=
  ∀ n, P971255529292598849.a n = (A394346 (n + 1) : ℚ)

end A394346

/-!
# A394348: Number of rectangular plane partitions of n with exactly 3 rows and with rows and columns strictly decreasing.

The programs for A394348, there is no canonical definition to state claims against.
-/

/-! ## A394348.P15674366521575132152

`A067659(n)-A359550(A191307(n+1))`
-/

namespace A394348.P15674366521575132152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - A359550 (A191307 (n + 1)).toNat

end

end A394348.P15674366521575132152

/-!
# A394352: a(n) is the least positive k such that n and 10^n - k are coprime.

The programs for A394352, there is no canonical definition to state claims against.
-/

/-! ## A394352.P11172486989819009870

`10^(n+1)-A108908(n+1)`
-/

namespace A394352.P11172486989819009870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A108908 (n + 1)

end

end A394352.P11172486989819009870

/-! ## A394352.P2530373362562640829

`A230404((n+1)^3)`
-/

namespace A394352.P2530373362562640829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 ((n + 1) ^ 3)

end

end A394352.P2530373362562640829

/-! ## A394352.P9314746784490371049

`A378914((n+1)^3)-1`
-/

namespace A394352.P9314746784490371049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378914 ((n + 1) ^ 3) - 1

end

end A394352.P9314746784490371049

/-! ## A394352.P10967405745718449009

`A089242(A022120(n))`
-/

namespace A394352.P10967405745718449009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (A022120 n).toNat

end

end A394352.P10967405745718449009

/-! ## A394352.P15768409746186237489

`A089242(A048584(n))`
-/

namespace A394352.P15768409746186237489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (A048584 n).toNat

end

end A394352.P15768409746186237489

/-!
# A394353: Number of distinct primes of the form x*y + x*z + y*z with integers 0 <= x <= y <= z <= n.

The programs for A394353, there is no canonical definition to state claims against.
-/

/-! ## A394353.P3671710284328586793

`∑[A396668(n+1)]-A396668(n+1)`
-/

namespace A394353.P3671710284328586793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A396668 (n + 1)

end

end A394353.P3671710284328586793

/-!
# A394361: Numbers k such that the values of d(k^2+1) set records, where d(k) is the number of divisors of k (A000005).

The programs for A394361, there is no canonical definition to state claims against.
-/

/-! ## A394361.P727233549239560661

`A208239(A343553(n+1))`
-/

namespace A394361.P727233549239560661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208239 (A343553 (n + 1)).toNat

end

end A394361.P727233549239560661

/-!
# A394362: Number of divisors d of n which also divide n/d + 1.

The programs for A394362, there is no canonical definition to state claims against.
-/

/-! ## A394362.P10919899939772348782

`A380656(n+1)+A059841(A033583(n))`
-/

namespace A394362.P10919899939772348782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380656 (n + 1) + A059841 (A033583 n).toNat

end

end A394362.P10919899939772348782

/-! ## A394362.P17274238265280375389

`A380656(n+1)+A001222(A165352(n+1))`
-/

namespace A394362.P17274238265280375389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380656 (n + 1) + A001222 (A165352 (n + 1)).toNat

end

end A394362.P17274238265280375389

/-! ## A394362.P7196213223384046547

`A371883(A028871(n+1))*A380656(n+1)+1`
-/

namespace A394362.P7196213223384046547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371883 (A028871 (n + 1)).toNat * A380656 (n + 1) + 1

end

end A394362.P7196213223384046547

/-! ## A394362.P3421250557823345310

`A380656(n+1)+A296134(A299279(3*(n+1)))`
-/

namespace A394362.P3421250557823345310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380656 (n + 1) + A296134 (A299279 (3 * (n + 1))).toNat

end

end A394362.P3421250557823345310

/-!
# A394370: A sequence constructed by greedily sampling the probability distribution given by log_2(1+1/i)^2 - log_2(1+1/(i+1))^2 to minimize ratio discrepancy.

The programs for A394370, there is no canonical definition to state claims against.
-/

/-! ## A394370.P9054894818349980117

`A030614(A233301(n+1))`
-/

namespace A394370.P9054894818349980117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030614 (A233301 (n + 1)).toNat

end

end A394370.P9054894818349980117

/-! ## A394370.P5712055654929236735

`A359233(A270641(2*n+3)+A116883(3*n+4))`
-/

namespace A394370.P5712055654929236735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359233 (A270641 (2 * n + 3) + A116883 (3 * n + 4)).toNat

end

end A394370.P5712055654929236735

/-! ## A394370.P9141228846475967026

`A305936(eq[A143201(n+1), A373387(n)])`
-/

namespace A394370.P9141228846475967026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A394370.P9141228846475967026

/-! ## A394370.P8762260892824751369

`A331910(gcd(A042400(n), A324694(3*(n+1))))`
-/

namespace A394370.P8762260892824751369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331910 (Int.gcd (A042400 n) (A324694 (3 * (n + 1))))

end

end A394370.P8762260892824751369

/-! ## A394370.P5296706078916098300

`A031246(A106818(n+1))`
-/

namespace A394370.P5296706078916098300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031246 (A106818 (n + 1)).toNat

end

end A394370.P5296706078916098300

/-!
# A394372: a(1)=1, a(2)=2, a(3)=3; for n > 3, a(n) = a(n-1) + gcd(n, a(n-2) * a(n-3)).

The programs for A394372, the canonical program `A394372.P2206490494112918782` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394372 has offset 1).

The definition of A394372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+1, a(n-2)*a(n-3))` (program `A394372.P2206490494112918782`, by `A394372.P2206490494112918782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394372.P2206490494112918782

`a(n-1)+gcd(n+1, a(n-2)*a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394372

/-- `a(n-1)+gcd(n+1, a(n-2)*a(n-3))` -/
def P2206490494112918782.Spec : Prop :=
  ∀ n, (P2206490494112918782.a n : ℤ) = A394372 (n + 1)

theorem P2206490494112918782.correct : P2206490494112918782.Spec := by
  intro n
  simp only [A394372, Nat.add_sub_cancel]

end A394372

/-!
# A394374: a(n) = Sum_{i=1..n} (2*i-1)^(2*i).

The programs for A394374, the canonical program `A394374.P11444638324699548566` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394374 has offset 1).

The definition of A394374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394374.P11444638324699548566

`a(n-1)+(2*(n+1)-1)^(2*(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394374

/-- `a(n-1)+(2*(n+1)-1)^(2*(n+1))` -/
def P11444638324699548566.Spec : Prop :=
  ∀ n, P11444638324699548566.a n = A394374 (n + 1)

theorem P11444638324699548566.correct : P11444638324699548566.Spec := by
  intro n
  simp only [A394374, Nat.add_sub_cancel]

end A394374

/-! ## A394374.P3036657529715965812

`∑[record[(1-n)^n]]`
-/

namespace A394374.P3036657529715965812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394374.P3036657529715965812

namespace A394374

/-- `∑[record[(1-n)^n]]` -/
def P3036657529715965812.Spec : Prop :=
  ∀ n, P3036657529715965812.a n = A394374 (n + 1)

end A394374

/-! ## A394374.P6387590621208969789

`∑[(Δ[n²]^(n+1))²]`
-/

namespace A394374.P6387590621208969789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394374.P6387590621208969789

namespace A394374

/-- `∑[(Δ[n²]^(n+1))²]` -/
def P6387590621208969789.Spec : Prop :=
  ∀ n, P6387590621208969789.a n = A394374 (n + 1)

end A394374

/-! ## A394374.P3687760443342738457

`-∑[-record[(-(n+1))^(n+2)]]`
-/

namespace A394374.P3687760443342738457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394374.P3687760443342738457

namespace A394374

/-- `-∑[-record[(-(n+1))^(n+2)]]` -/
def P3687760443342738457.Spec : Prop :=
  ∀ n, P3687760443342738457.a n = A394374 (n + 1)

end A394374

/-! ## A394374.P10462090581416533045

`record[(-(n+1))^(n+2)]+a(n-1)` with `a(0)=1`
-/

namespace A394374.P10462090581416533045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A394374.P10462090581416533045

namespace A394374

/-- `record[(-(n+1))^(n+2)]+a(n-1)` -/
def P10462090581416533045.Spec : Prop :=
  ∀ n, P10462090581416533045.a n = A394374 (n + 1)

end A394374

/-!
# A394380: Number of totients below 2^n.

The programs for A394380, the canonical program `A394380.P12740966740896101419` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394380 has offset 1).

The definition of A394380 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394380.P12740966740896101419

`A264810(2^(n+1)-1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A394380

/-- `A264810(2^(n+1)-1)` -/
def P12740966740896101419.Spec : Prop :=
  ∀ n, P12740966740896101419.a n = A394380 (n + 1)

theorem P12740966740896101419.correct : P12740966740896101419.Spec := by
  intro n
  simp only [A394380, Nat.add_sub_cancel]

end A394380

/-! ## A394380.P13849544222077789887

`2^n-A072077(n+1)`
-/

namespace A394380.P13849544222077789887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A072077 (n + 1)

end

end A394380.P13849544222077789887

namespace A394380

/-- `2^n-A072077(n+1)` -/
def P13849544222077789887.Spec : Prop :=
  ∀ n, P13849544222077789887.a n = A394380 (n + 1)

end A394380

/-! ## A394380.P10022490196262080513

`eq[1, A001221(A002202(n+1))]`
-/

namespace A394380.P10022490196262080513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A394380.P10022490196262080513

namespace A394380

/-- `eq[1, A001221(A002202(n+1))]` -/
def P10022490196262080513.Spec : Prop :=
  ∀ n, (P10022490196262080513.a n : ℤ) = A394380 (n + 1)

end A394380

/-! ## A394380.P13636793848882641214

`lt[A000961(n+1), A038712(A002202(n+1))]`
-/

namespace A394380.P13636793848882641214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A002202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394380.P13636793848882641214

namespace A394380

/-- `lt[A000961(n+1), A038712(A002202(n+1))]` -/
def P13636793848882641214.Spec : Prop :=
  ∀ n, (P13636793848882641214.a n : ℤ) = A394380 (n + 1)

end A394380

/-! ## A394380.P18213047366288109921

`A082447(A005726(n+1))`
-/

namespace A394380.P18213047366288109921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A005726 (n + 1)).toNat

end

end A394380.P18213047366288109921

namespace A394380

/-- `A082447(A005726(n+1))` -/
def P18213047366288109921.Spec : Prop :=
  ∀ n, P18213047366288109921.a n = A394380 (n + 1)

end A394380

/-!
# A394381: Number of totients below exp(n).

The programs for A394381, the canonical program `A394381.P15980332945039088340` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394381 has offset 1).

The definition of A394381 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394381.P15980332945039088340

`A264810(A000149(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A394381

/-- `A264810(A000149(n+1))` -/
def P15980332945039088340.Spec : Prop :=
  ∀ n, P15980332945039088340.a n = A394381 (n + 1)

theorem P15980332945039088340.correct : P15980332945039088340.Spec := by
  intro n
  simp only [A394381, Nat.add_sub_cancel]

end A394381

/-! ## A394381.P6595561684834118036

`A264810(floor(exp(n+1)))`
-/

namespace A394381.P6595561684834118036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 ⌊Real.exp (n + 1 : ℝ)⌋.toNat

end

end A394381.P6595561684834118036

namespace A394381

/-- `A264810(floor(exp(n+1)))` -/
def P6595561684834118036.Spec : Prop :=
  ∀ n, P6595561684834118036.a n = A394381 (n + 1)

end A394381

/-! ## A394381.P2059558304660540963

`A087817(A001551(n))`
-/

namespace A394381.P2059558304660540963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A001551 n).toNat

end

end A394381.P2059558304660540963

namespace A394381

/-- `A087817(A001551(n))` -/
def P2059558304660540963.Spec : Prop :=
  ∀ n, P2059558304660540963.a n = A394381 (n + 1)

end A394381

/-!
# A394383: a(n) = f^(n/f), where f is the largest prime factor of n.

The programs for A394383, the canonical program `A394383.P17827104241650237715` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394383 has offset 1).

The definition of A394383 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394383.P17827104241650237715

`A006530(n+1)^A052126(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A394383

/-- `A006530(n+1)^A052126(n+1)` -/
def P17827104241650237715.Spec : Prop :=
  ∀ n, P17827104241650237715.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P14920657214331970845

`A020639(A329044(n+1))^A052126(n+1)`
-/

namespace A394383.P14920657214331970845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A329044 (n + 1)).toNat : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P14920657214331970845

namespace A394383

/-- `A020639(A329044(n+1))^A052126(n+1)` -/
def P14920657214331970845.Spec : Prop :=
  ∀ n, P14920657214331970845.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P12901844986220735428

`A000015(A394384(n+1))`
-/

namespace A394383.P12901844986220735428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A394384 (n + 1)).toNat

end

end A394383.P12901844986220735428

namespace A394383

/-- `A000015(A394384(n+1))` -/
def P12901844986220735428.Spec : Prop :=
  ∀ n, P12901844986220735428.a n = A394383 (n + 1)

end A394383

/-! ## A394383.P414221824081837409

`A394384(A043320(n+1))`
-/

namespace A394383.P414221824081837409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394384 (A043320 (n + 1)).toNat

end

end A394383.P414221824081837409

namespace A394383

/-- `A394384(A043320(n+1))` -/
def P414221824081837409.Spec : Prop :=
  ∀ n, P414221824081837409.a n = A394383 (n + 1)

end A394383

/-! ## A394383.P5873056800220559113

`A394384(A044917(n+1))`
-/

namespace A394383.P5873056800220559113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394384 (A044917 (n + 1)).toNat

end

end A394383.P5873056800220559113

namespace A394383

/-- `A394384(A044917(n+1))` -/
def P5873056800220559113.Spec : Prop :=
  ∀ n, P5873056800220559113.a n = A394383 (n + 1)

end A394383

/-!
# A394385: Triangle read by rows: T(n,k) is the number of ordered rooted trees with node weights summing to n that have k leaf nodes; where the root has weight 0 and non-root nodes have positive integer weights.

The programs for A394385, there is no canonical definition to state claims against.
-/

/-! ## A394385.P12939743036254701103

`A131469(A143395(n))`
-/

namespace A394385.P12939743036254701103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A143395 n).toNat

end

end A394385.P12939743036254701103

/-! ## A394385.P6080773015892350548

`A324662(A245667(n))`
-/

namespace A394385.P6080773015892350548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (A245667 n).toNat

end

end A394385.P6080773015892350548

/-! ## A394385.P1042101684897202270

`A269952(n)^A014963(ceil(1/4*2^n*(n+3)))`
-/

namespace A394385.P1042101684897202270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269952 n : ℚ) ^ (A014963 ⌈(1 : ℚ) / 4 * (2 ^ n : ℚ) * (n + 3 : ℚ)⌉.toNat : ℤ)

end

end A394385.P1042101684897202270

/-! ## A394385.P10365281870084938094

`A330463(n)+A124763(A124753(n))`
-/

namespace A394385.P10365281870084938094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330463 n + A124763 (A124753 n).toNat

end

end A394385.P10365281870084938094

/-! ## A394385.P2224506517625044805

`A269952(n)*A321650(A027642(n))`
-/

namespace A394385.P2224506517625044805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269952 n * A321650 (A027642 n).toNat

end

end A394385.P2224506517625044805

/-!
# A394390: Number of nonisomorphic abelian groups of order n which do not appear as the group of units of the ring Z/kZ taken over every k such that phi(k) = n.

The programs for A394390, there is no canonical definition to state claims against.
-/

/-! ## A394390.P12747732775967908576

`A000688(n+1)-A380578(n+1)`
-/

namespace A394390.P12747732775967908576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A380578 (n + 1)

end

end A394390.P12747732775967908576

/-! ## A394390.P14237927152739804975

`A374253(A325042(n+1)/2)%A045778(2*(n+1))`
-/

namespace A394390.P14237927152739804975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374253 (SequenceMachineLib.roundAway ((A325042 (n + 1) : ℚ) / 2)).toNat) (A045778 (2 * (n + 1)))

end

end A394390.P14237927152739804975

/-! ## A394390.P1517464862373786430

`A328392(A328836(A328389(A276087(A328395(n)))))`
-/

namespace A394390.P1517464862373786430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328392 (A328836 (A328389 (A276087 (A328395 n).toNat).toNat).toNat).toNat

end

end A394390.P1517464862373786430

/-! ## A394390.P7545320581544284713

`A244415(A026736(n)*A059966(n+1))`
-/

namespace A394390.P7545320581544284713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A026736 n * A059966 (n + 1)).toNat

end

end A394390.P7545320581544284713

/-! ## A394390.P3282474563654636808

`A056563(A351350(n+9)+A056175(n+2))`
-/

namespace A394390.P3282474563654636808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (A351350 (n + 9) + A056175 (n + 2)).toNat

end

end A394390.P3282474563654636808

/-!
# A394391: a(n) = tau(n)^2 + (n - tau(n))^2.

The programs for A394391, the canonical program `A394391.P4992548440944162986` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394391 has offset 1).

The definition of A394391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+(n+1-A000005(n+1))²` (program `A394391.P4992548440944162986`, by `A394391.P4992548440944162986.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394391.P4992548440944162986

`A000005(n+1)²+(n+1-A000005(n+1))²`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A394391

/-- `A000005(n+1)²+(n+1-A000005(n+1))²` -/
def P4992548440944162986.Spec : Prop :=
  ∀ n, P4992548440944162986.a n = A394391 (n + 1)

theorem P4992548440944162986.correct : P4992548440944162986.Spec := by
  intro n
  simp only [A394391, Nat.add_sub_cancel]

end A394391

/-! ## A394391.P1958648645545154792

`2*A349360(n+1)-(n+1)`
-/

namespace A394391.P1958648645545154792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349360 (n + 1) - (n + 1 : ℤ)

end

end A394391.P1958648645545154792

namespace A394391

/-- `2*A349360(n+1)-(n+1)` -/
def P1958648645545154792.Spec : Prop :=
  ∀ n, P1958648645545154792.a n = A394391 (n + 1)

end A394391

/-! ## A394391.P7109707925445807213

`∏{e}[n+1, (#+1)²]+A049820(n+1)²`
-/

namespace A394391.P7109707925445807213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) ^ 2 : ℕ) : ℤ) + A049820 (n + 1) ^ 2

end

end A394391.P7109707925445807213

namespace A394391

/-- `∏{e}[n+1, (#+1)²]+A049820(n+1)²` -/
def P7109707925445807213.Spec : Prop :=
  ∀ n, P7109707925445807213.a n = A394391 (n + 1)

end A394391

/-!
# A394394: Largest number of distinct lines determined by pairs of cell centers of a polycube with n cells.

The programs for A394394, there is no canonical definition to state claims against.
-/

/-! ## A394394.P10489367827822978888

`∑[n-A083915(A035607(3*(n+1)))]`
-/

namespace A394394.P10489367827822978888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A083915 (A035607 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394394.P10489367827822978888

/-! ## A394394.P8363657324794381799

`A000217(n)-A186734(A238279(n))`
-/

namespace A394394.P8363657324794381799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A186734 (A238279 n).toNat

end

end A394394.P8363657324794381799

/-! ## A394394.P11296682310706734111

`∪[A000217(n), A060747(A216355(n))]`
-/

namespace A394394.P11296682310706734111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A216355 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394394.P11296682310706734111

/-! ## A394394.P1498780357147495538

`∪[A000217(n), A160985(A160962(n+1))]`
-/

namespace A394394.P1498780357147495538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160985 (A160962 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394394.P1498780357147495538

/-! ## A394394.P7430450169538149944

`A000217(n)-A000122(A381488(2*(n+1)))`
-/

namespace A394394.P7430450169538149944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A000122 (A381488 (2 * (n + 1))).toNat

end

end A394394.P7430450169538149944

/-!
# A394399: Numbers k in A014574 (averages of twin prime pairs) such that gcd(k, sigma(k)) = 3.

The programs for A394399, there is no canonical definition to state claims against.
-/

/-! ## A394399.P2403568712365421314

`∩[A000982(n), A394757(n+1)]`
-/

namespace A394399.P2403568712365421314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P2403568712365421314

/-! ## A394399.P12828516323327878053

`∩[A394757(n+1), A001105(n)]`
-/

namespace A394399.P12828516323327878053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P12828516323327878053

/-! ## A394399.P13271353877638695489

`∩[A394757(n+1), A195147(n)]`
-/

namespace A394399.P13271353877638695489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P13271353877638695489

/-! ## A394399.P2448760389360822873

`∩[A394757(n+1), A195321(n)]`
-/

namespace A394399.P2448760389360822873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P2448760389360822873

/-! ## A394399.P12535087174365572566

`∩[A394757(n+1), A299256(n)]`
-/

namespace A394399.P12535087174365572566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299256 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P12535087174365572566

