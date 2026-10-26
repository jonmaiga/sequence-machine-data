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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A066701: Triangle giving number of nonisomorphic minimal covering designs with parameters (n, k, k-1) (designs achieving the covering number C(n,k,k-1) given in A066010), for n >= 2, 2 <= k <= n.

The programs for A066701, there is no canonical definition to state claims against.
-/

/-! ## A066701.P7306905262189869975

`gcd(A041739(n+4), A046523(A225816(n)))`
-/

namespace A066701.P7306905262189869975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041739 (n + 4)) (A046523 (A225816 n).toNat)

end

end A066701.P7306905262189869975

/-! ## A066701.P11573522968132461943

`A114225(A136630(n+1)+A108731(n+2))`
-/

namespace A066701.P11573522968132461943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114225 (A136630 (n + 1) + A108731 (n + 2)).toNat

end

end A066701.P11573522968132461943

/-!
# A066704: Triangle with a(n,k) = C(n,floor(n/k)) with n>=k>=1.

The programs for A066704, the canonical program `A066704.P1685781860719568800` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066704 has offset 1).

The definition of A066704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+1, floor((row(n)+1)/(col(n)+1)))` (program `A066704.P1685781860719568800`, by `A066704.P1685781860719568800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066704.P1685781860719568800

`C(row(n)+1, floor((row(n)+1)/(col(n)+1)))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A066704

/-- `C(row(n)+1, floor((row(n)+1)/(col(n)+1)))` -/
def P1685781860719568800.Spec : Prop :=
  ∀ n, (P1685781860719568800.a n : ℤ) = A066704 (n + 1)

theorem P1685781860719568800.correct : P1685781860719568800.Spec := by
  intro n
  simp only [A066704, Nat.add_sub_cancel]

end A066704

/-! ## A066704.P6654563582576933091

`C(∑[char[∑[n]]], A010766(n+1))`
-/

namespace A066704.P6654563582576933091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A010766 (n + 1)).toNat

end

end A066704.P6654563582576933091

namespace A066704

/-- `C(∑[char[∑[n]]], A010766(n+1))` -/
def P6654563582576933091.Spec : Prop :=
  ∀ n, (P6654563582576933091.a n : ℤ) = A066704 (n + 1)

end A066704

/-! ## A066704.P3435953840487198497

`C(A002024(n+1), abs(A174557(n+1)))`
-/

namespace A066704.P3435953840487198497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat |A174557 (n + 1)|.toNat

end

end A066704.P3435953840487198497

namespace A066704

/-- `C(A002024(n+1), abs(A174557(n+1)))` -/
def P3435953840487198497.Spec : Prop :=
  ∀ n, (P3435953840487198497.a n : ℤ) = A066704 (n + 1)

end A066704

/-! ## A066704.P9851633682113676223

`C(∑[A010054(n)], A050206(n+2)-1)`
-/

namespace A066704.P9851633682113676223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A050206 (n + 2) - 1).toNat

end

end A066704.P9851633682113676223

namespace A066704

/-- `C(∑[A010054(n)], A050206(n+2)-1)` -/
def P9851633682113676223.Spec : Prop :=
  ∀ n, (P9851633682113676223.a n : ℤ) = A066704 (n + 1)

end A066704

/-! ## A066704.P5757912316133691238

`C(∑[char[∑[n]]], A004736(A286235(n+1)))`
-/

namespace A066704.P5757912316133691238
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A004736 (A286235 (n + 1)).toNat).toNat

end

end A066704.P5757912316133691238

namespace A066704

/-- `C(∑[char[∑[n]]], A004736(A286235(n+1)))` -/
def P5757912316133691238.Spec : Prop :=
  ∀ n, (P5757912316133691238.a n : ℤ) = A066704 (n + 1)

end A066704

/-! ## A066704.P17153789636582495650

`C(A002024(n+1), A050206(n+2)-1)`
-/

namespace A066704.P17153789636582495650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A050206 (n + 2) - 1).toNat

end

end A066704.P17153789636582495650

namespace A066704

/-- `C(A002024(n+1), A050206(n+2)-1)` -/
def P17153789636582495650.Spec : Prop :=
  ∀ n, (P17153789636582495650.a n : ℤ) = A066704 (n + 1)

end A066704

/-! ## A066704.P11428223406484666546

`A007318(A010766(n+1)+C(comp[∑[n]]-n, 2))`
-/

namespace A066704.P11428223406484666546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A010766 (n + 1) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)).toNat

end

end A066704.P11428223406484666546

namespace A066704

/-- `A007318(A010766(n+1)+C(comp[∑[n]]-n, 2))` -/
def P11428223406484666546.Spec : Prop :=
  ∀ n, P11428223406484666546.a n = A066704 (n + 1)

end A066704

/-! ## A066704.P3577662405528659973

`A074909(A057944(n)+A010766(n+1))`
-/

namespace A066704.P3577662405528659973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A057944 n + A010766 (n + 1)).toNat

end

end A066704.P3577662405528659973

namespace A066704

/-- `A074909(A057944(n)+A010766(n+1))` -/
def P3577662405528659973.Spec : Prop :=
  ∀ n, P3577662405528659973.a n = A066704 (n + 1)

end A066704

/-! ## A066704.P10270647537470192902

`A007318(A127739(n+1)+A010766(n+1))`
-/

namespace A066704.P10270647537470192902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A127739 (n + 1) + A010766 (n + 1)).toNat

end

end A066704.P10270647537470192902

namespace A066704

/-- `A007318(A127739(n+1)+A010766(n+1))` -/
def P10270647537470192902.Spec : Prop :=
  ∀ n, P10270647537470192902.a n = A066704 (n + 1)

end A066704

/-! ## A066704.P2837300268945708596

`A074909(A127739(n+1)-A010766(n+1))`
-/

namespace A066704.P2837300268945708596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A127739 (n + 1) - A010766 (n + 1)).toNat

end

end A066704.P2837300268945708596

namespace A066704

/-- `A074909(A127739(n+1)-A010766(n+1))` -/
def P2837300268945708596.Spec : Prop :=
  ∀ n, P2837300268945708596.a n = A066704 (n + 1)

end A066704

/-!
# A066705: Greatest k < n such that phi(k) = phi(n) if such k exists, otherwise 0.

The programs for A066705, there is no canonical definition to state claims against.
-/

/-! ## A066705.P130284581738430376

`(n*A171934(n+1))%(n+1)`
-/

namespace A066705.P130284581738430376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A171934 (n + 1)) (n + 1 : ℤ)

end

end A066705.P130284581738430376

/-! ## A066705.P15399667835279825819

`(A002378(n)-A171934(n+1))%(n+1)`
-/

namespace A066705.P15399667835279825819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 n - A171934 (n + 1)) (n + 1 : ℤ)

end

end A066705.P15399667835279825819

/-! ## A066705.P11658394286892531995

`(A106318(n+1)-A171934(n+1))%(n+1)`
-/

namespace A066705.P11658394286892531995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106318 (n + 1) - A171934 (n + 1)) (n + 1 : ℤ)

end

end A066705.P11658394286892531995

/-! ## A066705.P5042699523093860219

`n-n%A262603(n+1)`
-/

namespace A066705.P5042699523093860219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n : ℤ) (A262603 (n + 1))

end

end A066705.P5042699523093860219

/-! ## A066705.P3033512222777032129

`A262603(n+1)%A028476(n+1)`
-/

namespace A066705.P3033512222777032129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262603 (n + 1)) (A028476 (n + 1))

end

end A066705.P3033512222777032129

/-! ## A066705.P5278941099345452111

`A001489(n)%A262603(n+1)+n`
-/

namespace A066705.P5278941099345452111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001489 n) (A262603 (n + 1)) + (n : ℤ)

end

end A066705.P5278941099345452111

/-! ## A066705.P14260812405191808655

`A002262(A253145(n)-A171934(n+1))`
-/

namespace A066705.P14260812405191808655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A253145 n - A171934 (n + 1)).toNat

end

end A066705.P14260812405191808655

/-!
# A066706: Numbers k that divide the average of prime(k) and prime(k+1).

The programs for A066706, there is no canonical definition to state claims against.
-/

/-! ## A066706.P9402578686992475662

`lt[A024675(n+1)%(n+2), 1]+2`
-/

namespace A066706.P9402578686992475662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024675 (n + 1)) (n + 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A066706.P9402578686992475662

/-! ## A066706.P5780436344342353340

`eq[2*n, gcd(2*n, A011974(n+1))]`
-/

namespace A066706.P5780436344342353340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A011974 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066706.P5780436344342353340

/-! ## A066706.P8091878104901421771

`lt[n+1, gcd(2*(n+1), A001043(n+1))]+1`
-/

namespace A066706.P8091878104901421771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A001043 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066706.P8091878104901421771

/-!
# A066708: Least m such that n = m mod tau(m) if such m exists, otherwise 0.

The programs for A066708, there is no canonical definition to state claims against.
-/

/-! ## A066708.P9429934810277874539

`A090706(11*C(floor(n*ϕ²), n))`
-/

namespace A066708.P9429934810277874539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (11 * Nat.choose ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋.toNat n)

end

end A066708.P9429934810277874539

/-!
# A066710: RATS: Reverse Add Then Sort the digits applied to previous term, starting with 3.

The programs for A066710, there is no canonical definition to state claims against.
-/

/-! ## A066710.P11009606867351808776

`A036839(a(n-1))` with `a(0)=3`
-/

namespace A066710.P11009606867351808776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A036839 (a (n - 1)).toNat

end

end A066710.P11009606867351808776

/-!
# A066711: RATS: Reverse Add Then Sort the digits applied to previous term, starting with 9.

The programs for A066711, there is no canonical definition to state claims against.
-/

/-! ## A066711.P7276116810448411336

`A036839(a(n-1))` with `a(0)=9`
-/

namespace A066711.P7276116810448411336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A036839 (a (n - 1)).toNat

end

end A066711.P7276116810448411336

/-!
# A066713: RATS(2^n): Reverse Add the digits of 2^n, Then Sort: a(n) = A036839(2^n).

The programs for A066713, there is no canonical definition to state claims against.
-/

/-! ## A066713.P14225336862478289591

`A036839(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066713.P14225336862478289591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036839 (2 ^ n)

end

end A066713.P14225336862478289591

/-! ## A066713.P3354907526931207421

`and(-1, A036839(A000079(n)))`
-/

namespace A066713.P3354907526931207421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A036839 (A000079 n).toNat)

end

end A066713.P3354907526931207421

/-! ## A066713.P14206079987591830413

`A036839(∑[A011782(n)])-and(1, 2*n)`
-/

namespace A066713.P14206079987591830413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036839 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (Nat.land 1 (2 * n) : ℤ)

end

end A066713.P14206079987591830413

/-! ## A066713.P8702269472745488042

`A036839(A011782(n+1))-and(1, 2*n)`
-/

namespace A066713.P8702269472745488042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036839 (A011782 (n + 1)).toNat - (Nat.land 1 (2 * n) : ℤ)

end

end A066713.P8702269472745488042

/-! ## A066713.P13500190544669018495

`A036839(A000079(n))+A025443(n)`
-/

namespace A066713.P13500190544669018495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036839 (A000079 n).toNat + A025443 n

end

end A066713.P13500190544669018495

/-!
# A066714: Coordination sequence for ReO_3 net with respect to Re atom.

The programs for A066714, the canonical program `A066714.P4346487057166145415` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066714 has offset 0).

The definition of A066714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066714.P4346487057166145415

`dr(A009946(n))*A099392(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066714

/-- `dr(A009946(n))*A099392(n+1)` -/
def P4346487057166145415.Spec : Prop :=
  ∀ n, P4346487057166145415.a n = A066714 n

theorem P4346487057166145415.correct : P4346487057166145415.Spec := by
  intro n
  simp only [A066714]

end A066714

/-! ## A066714.P7889616597678052914

`(A040001(n)+n²)*A010684(n)`
-/

namespace A066714.P7889616597678052914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040001 n + (n ^ 2 : ℤ)) * A010684 n

end

end A066714.P7889616597678052914

namespace A066714

/-- `(A040001(n)+n²)*A010684(n)` -/
def P7889616597678052914.Spec : Prop :=
  ∀ n, P7889616597678052914.a n = A066714 n

end A066714

/-! ## A066714.P6210520926138466410

`A040426(n)%10*A099392(n+1)`
-/

namespace A066714.P6210520926138466410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040426 n) 10 * A099392 (n + 1)

end

end A066714.P6210520926138466410

namespace A066714

/-- `A040426(n)%10*A099392(n+1)` -/
def P6210520926138466410.Spec : Prop :=
  ∀ n, P6210520926138466410.a n = A066714 n

end A066714

/-! ## A066714.P17253756403061185228

`A020639(∑{d}[A020639(n+1), #])+(2-(-1)^n)*n²`
-/

namespace A066714.P17253756403061185228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) + (2 - (-1) ^ n) * (n ^ 2 : ℤ)

end

end A066714.P17253756403061185228

namespace A066714

/-- `A020639(∑{d}[A020639(n+1), #])+(2-(-1)^n)*n²` -/
def P17253756403061185228.Spec : Prop :=
  ∀ n, P17253756403061185228.a n = A066714 n

end A066714

/-! ## A066714.P4778320451337841648

`∑[A008574(A004526(n))]*A010684(n)`
-/

namespace A066714.P4778320451337841648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010684 n

end

end A066714.P4778320451337841648

namespace A066714

/-- `∑[A008574(A004526(n))]*A010684(n)` -/
def P4778320451337841648.Spec : Prop :=
  ∀ n, P4778320451337841648.a n = A066714 n

end A066714

/-! ## A066714.P2757797012509837540

`A020639(a(n-1))*A294178(A000982(n))` with `a(0)=1, a(1)=6`
-/

namespace A066714.P2757797012509837540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A020639 (a (n - 1)).toNat * A294178 (A000982 n).toNat

end

end A066714.P2757797012509837540

namespace A066714

/-- `A020639(a(n-1))*A294178(A000982(n))` -/
def P2757797012509837540.Spec : Prop :=
  ∀ n, P2757797012509837540.a n = A066714 n

end A066714

/-! ## A066714.P6050405877447085780

`A185452(n²)+A105343(n)`
-/

namespace A066714.P6050405877447085780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 (n ^ 2) + A105343 n

end

end A066714.P6050405877447085780

namespace A066714

/-- `A185452(n²)+A105343(n)` -/
def P6050405877447085780.Spec : Prop :=
  ∀ n, P6050405877447085780.a n = A066714 n

end A066714

/-! ## A066714.P10693452414358891839

`dr(A009946(n))*A008619(n²)`
-/

namespace A066714.P10693452414358891839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A009946 n) : ℤ) * A008619 (n ^ 2)

end

end A066714.P10693452414358891839

namespace A066714

/-- `dr(A009946(n))*A008619(n²)` -/
def P10693452414358891839.Spec : Prop :=
  ∀ n, P10693452414358891839.a n = A066714 n

end A066714

/-! ## A066714.P4066149921395174564

`A266256(A010000(n))+n²`
-/

namespace A066714.P4066149921395174564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A010000 n).toNat + (n ^ 2 : ℤ)

end

end A066714.P4066149921395174564

namespace A066714

/-- `A266256(A010000(n))+n²` -/
def P4066149921395174564.Spec : Prop :=
  ∀ n, P4066149921395174564.a n = A066714 n

end A066714

/-! ## A066714.P10785321197705517249

`A010687(n)*A186421(A010000(n))`
-/

namespace A066714.P10785321197705517249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n * A186421 (A010000 n).toNat

end

end A066714.P10785321197705517249

namespace A066714

/-- `A010687(n)*A186421(A010000(n))` -/
def P10785321197705517249.Spec : Prop :=
  ∀ n, P10785321197705517249.a n = A066714 n

end A066714

/-!
# A066715: a(n) = gcd(2n+1, sigma(2n+1)).

The programs for A066715, the canonical program `A066715.P15991651540595763635` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066715 has offset 0).

The definition of A066715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2*n+1, A000203(2*n+1))` (program `A066715.P15991651540595763635`, by `A066715.P15991651540595763635.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066715.P15991651540595763635

`gcd(2*n+1, A000203(2*n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066715

/-- `gcd(2*n+1, A000203(2*n+1))` -/
def P15991651540595763635.Spec : Prop :=
  ∀ n, (P15991651540595763635.a n : ℤ) = A066715 n

theorem P15991651540595763635.correct : P15991651540595763635.Spec := by
  intro n
  simp only [A066715]

end A066715

/-! ## A066715.P7213721033754454497

`A353688(Δ[n²])`
-/

namespace A066715.P7213721033754454497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066715.P7213721033754454497

namespace A066715

/-- `A353688(Δ[n²])` -/
def P7213721033754454497.Spec : Prop :=
  ∀ n, P7213721033754454497.a n = A066715 n

end A066715

/-! ## A066715.P2417533173702688009

`A355931(Δ[n²])`
-/

namespace A066715.P2417533173702688009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066715.P2417533173702688009

namespace A066715

/-- `A355931(Δ[n²])` -/
def P2417533173702688009.Spec : Prop :=
  ∀ n, P2417533173702688009.a n = A066715 n

end A066715

/-! ## A066715.P12754766081080313021

`gcd(Δ[n²], A008438(n))`
-/

namespace A066715.P12754766081080313021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A008438 n)

end

end A066715.P12754766081080313021

namespace A066715

/-- `gcd(Δ[n²], A008438(n))` -/
def P12754766081080313021.Spec : Prop :=
  ∀ n, (P12754766081080313021.a n : ℤ) = A066715 n

end A066715

/-! ## A066715.P2210044513007599912

`gcd(2*n+1, A005879(n))`
-/

namespace A066715.P2210044513007599912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A005879 n)

end

end A066715.P2210044513007599912

namespace A066715

/-- `gcd(2*n+1, A005879(n))` -/
def P2210044513007599912.Spec : Prop :=
  ∀ n, (P2210044513007599912.a n : ℤ) = A066715 n

end A066715

/-! ## A066715.P9674633111243828078

`lcm(2, A325636(2*n+1))/2`
-/

namespace A066715.P9674633111243828078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A325636 (2 * n + 1)) : ℚ) / 2

end

end A066715.P9674633111243828078

namespace A066715

/-- `lcm(2, A325636(2*n+1))/2` -/
def P9674633111243828078.Spec : Prop :=
  ∀ n, P9674633111243828078.a n = (A066715 n : ℚ)

end A066715

/-! ## A066715.P12956436510674827677

`gcd(A008438(n), A157142(n))`
-/

namespace A066715.P12956436510674827677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008438 n) (A157142 n)

end

end A066715.P12956436510674827677

namespace A066715

/-- `gcd(A008438(n), A157142(n))` -/
def P12956436510674827677.Spec : Prop :=
  ∀ n, (P12956436510674827677.a n : ℤ) = A066715 n

end A066715

/-! ## A066715.P908738452174514462

`A000265(A325636(2*n+1))`
-/

namespace A066715.P908738452174514462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A325636 (2 * n + 1)).toNat

end

end A066715.P908738452174514462

namespace A066715

/-- `A000265(A325636(2*n+1))` -/
def P908738452174514462.Spec : Prop :=
  ∀ n, P908738452174514462.a n = A066715 n

end A066715

/-! ## A066715.P9652814731324888032

`A000265(A355931(2*n+1))`
-/

namespace A066715.P9652814731324888032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A355931 (2 * n + 1)).toNat

end

end A066715.P9652814731324888032

namespace A066715

/-- `A000265(A355931(2*n+1))` -/
def P9652814731324888032.Spec : Prop :=
  ∀ n, P9652814731324888032.a n = A066715 n

end A066715

/-! ## A066715.P10457483108270221729

`gcd(A223134(n), A346877(n+1))`
-/

namespace A066715.P10457483108270221729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223134 n) (A346877 (n + 1))

end

end A066715.P10457483108270221729

namespace A066715

/-- `gcd(A223134(n), A346877(n+1))` -/
def P10457483108270221729.Spec : Prop :=
  ∀ n, (P10457483108270221729.a n : ℤ) = A066715 n

end A066715

/-! ## A066715.P2612664483739392189

`A336850(A064216(n+1))`
-/

namespace A066715.P2612664483739392189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336850 (A064216 (n + 1)).toNat

end

end A066715.P2612664483739392189

namespace A066715

/-- `A336850(A064216(n+1))` -/
def P2612664483739392189.Spec : Prop :=
  ∀ n, P2612664483739392189.a n = A066715 n

end A066715

/-! ## A066715.P160672157416154439

`(2*n+1)/A098988(2*n+1)`
-/

namespace A066715.P160672157416154439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A098988 (2 * n + 1) : ℚ)

end

end A066715.P160672157416154439

namespace A066715

/-- `(2*n+1)/A098988(2*n+1)` -/
def P160672157416154439.Spec : Prop :=
  ∀ n, P160672157416154439.a n = (A066715 n : ℚ)

end A066715

/-! ## A066715.P14585884204982198620

`A009194(Δ[n²])`
-/

namespace A066715.P14585884204982198620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066715.P14585884204982198620

namespace A066715

/-- `A009194(Δ[n²])` -/
def P14585884204982198620.Spec : Prop :=
  ∀ n, P14585884204982198620.a n = A066715 n

end A066715

/-! ## A066715.P17014544777233815592

`A274382(Δ[n²])`
-/

namespace A066715.P17014544777233815592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274382 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066715.P17014544777233815592

namespace A066715

/-- `A274382(Δ[n²])` -/
def P17014544777233815592.Spec : Prop :=
  ∀ n, P17014544777233815592.a n = A066715 n

end A066715

/-! ## A066715.P9246750285736695411

`or(1, A009194(2*n+1))`
-/

namespace A066715.P9246750285736695411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009194 (2 * n + 1))

end

end A066715.P9246750285736695411

namespace A066715

/-- `or(1, A009194(2*n+1))` -/
def P9246750285736695411.Spec : Prop :=
  ∀ n, P9246750285736695411.a n = A066715 n

end A066715

/-! ## A066715.P12305019213171914590

`Δ[n²]/A017666(2*n+1)`
-/

namespace A066715.P12305019213171914590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A017666 (2 * n + 1) : ℚ)

end

end A066715.P12305019213171914590

namespace A066715

/-- `Δ[n²]/A017666(2*n+1)` -/
def P12305019213171914590.Spec : Prop :=
  ∀ n, P12305019213171914590.a n = (A066715 n : ℚ)

end A066715

/-! ## A066715.P17651685663504074637

`(2*n+1)/A098985(2*n+1)`
-/

namespace A066715.P17651685663504074637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A098985 (2 * n + 1) : ℚ)

end

end A066715.P17651685663504074637

namespace A066715

/-- `(2*n+1)/A098985(2*n+1)` -/
def P17651685663504074637.Spec : Prop :=
  ∀ n, P17651685663504074637.a n = (A066715 n : ℚ)

end A066715

/-! ## A066715.P2759043912068589478

`(2*n+1)/A305007(2*n+1)`
-/

namespace A066715.P2759043912068589478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A305007 (2 * n + 1) : ℚ)

end

end A066715.P2759043912068589478

namespace A066715

/-- `(2*n+1)/A305007(2*n+1)` -/
def P2759043912068589478.Spec : Prop :=
  ∀ n, P2759043912068589478.a n = (A066715 n : ℚ)

end A066715

/-! ## A066715.P14389575229609443126

`A336850(A064989(2*n+1))`
-/

namespace A066715.P14389575229609443126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336850 (A064989 (2 * n + 1)).toNat

end

end A066715.P14389575229609443126

namespace A066715

/-- `A336850(A064989(2*n+1))` -/
def P14389575229609443126.Spec : Prop :=
  ∀ n, P14389575229609443126.a n = A066715 n

end A066715

/-!
# A066716: Decimal expansion of the binary Champernowne constant 0.862240125868... whose binary expansion is the concatenation of 1, 2, 3, ... written in binary.

The programs for A066716, there is no canonical definition to state claims against.
-/

/-! ## A066716.P11699501720995362650

`A353962(∑[n]+2)`
-/

namespace A066716.P11699501720995362650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353962 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A066716.P11699501720995362650

/-!
# A066718: Incrementally largest terms in the continued fraction for the "binary" Champernowne constant.

The programs for A066718, there is no canonical definition to state claims against.
-/

/-! ## A066718.P11118551525666737504

`record[A066717(n)]`
-/

namespace A066718.P11118551525666737504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066718.P11118551525666737504

/-! ## A066718.P15938462500860649860

`A066717(A244330(n+1)-1)`
-/

namespace A066718.P15938462500860649860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066717 (A244330 (n + 1) - 1).toNat

end

end A066718.P15938462500860649860

/-!
# A066720: The greedy rational packing sequence: a(1) = 1; for n > 1, a(n) is smallest number such that the ratios a(i)/a(j) for 1 <= i < j <= n are all distinct.

The programs for A066720, there is no canonical definition to state claims against.
-/

/-! ## A066720.P13896072883800803587

`∪[A000040(n+1), A066721(n+1)]`
-/

namespace A066720.P13896072883800803587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066720.P13896072883800803587

/-! ## A066720.P16278994924791699443

`∪[A008578(n+1), A066721(n+1)]`
-/

namespace A066720.P16278994924791699443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066720.P16278994924791699443

/-! ## A066720.P18361216749168523429

`∪[A006093(n+1)+1, A066721(n+1)]`
-/

namespace A066720.P18361216749168523429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066720.P18361216749168523429

/-! ## A066720.P16252828096842038780

`record[A066658(n)]`
-/

namespace A066720.P16252828096842038780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066720.P16252828096842038780

/-! ## A066720.P1891152476453196523

`A066658(∑[n]-floor(n/4))`
-/

namespace A066720.P1891152476453196523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066658 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 4⌋).toNat

end

end A066720.P1891152476453196523

/-! ## A066720.P18304847540260570977

`and(-1, A066658(∑[n]))`
-/

namespace A066720.P18304847540260570977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A066658 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A066720.P18304847540260570977

/-! ## A066720.P4240950630071140651

`A000027(A066658(∑[n]))`
-/

namespace A066720.P4240950630071140651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A066658 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A066720.P4240950630071140651

/-! ## A066720.P1344863706206039724

`A066658(∑[n])%A000041(n+2)`
-/

namespace A066720.P1344863706206039724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066658 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000041 (n + 2))

end

end A066720.P1344863706206039724

/-! ## A066720.P16804398876574979206

`A066658(∑[n])/A007318(C(2, n))`
-/

namespace A066720.P16804398876574979206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066658 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A066720.P16804398876574979206

/-! ## A066720.P7676507135557856479

`A066658(A000217(n))%(5*(n+1))`
-/

namespace A066720.P7676507135557856479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066658 (A000217 n).toNat) (5 * (n + 1) : ℤ)

end

end A066720.P7676507135557856479

/-! ## A066720.P2533370939461296830

`record[A066657(n)]`
-/

namespace A066720.P2533370939461296830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066720.P2533370939461296830

/-! ## A066720.P15558753232154548917

`A066657(∑[n+1])`
-/

namespace A066720.P15558753232154548917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066720.P15558753232154548917

/-! ## A066720.P9088042833857893199

`A000027(A066657(∑[Δ[n²]-n]))`
-/

namespace A066720.P9088042833857893199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A066657 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A066720.P9088042833857893199

/-! ## A066720.P10378903167032718170

`A066657(C(n+2, 2))%A076941(n)`
-/

namespace A066720.P10378903167032718170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066657 (Nat.choose (n + 2) 2)) (A076941 n)

end

end A066720.P10378903167032718170

/-!
# A066721: Nonprimes in A066720.

The programs for A066721, there is no canonical definition to state claims against.
-/

/-! ## A066721.P1645972832483924928

`filter[A066720(n+1), A005171(#)]`
-/

namespace A066721.P1645972832483924928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066721.P1645972832483924928

/-! ## A066721.P17811236934030067840

`∩[A063539(n+1), A066720(n+1)]`
-/

namespace A066721.P17811236934030067840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P17811236934030067840

/-! ## A066721.P17018590166796823666

`∩[A048098(n+1), A066720(n+1)]`
-/

namespace A066721.P17018590166796823666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P17018590166796823666

/-! ## A066721.P16906598199896765719

`∩[A066720(n+1), A387941(n+1)]`
-/

namespace A066721.P16906598199896765719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P16906598199896765719

/-! ## A066721.P5335734742310247103

`∩[A066720(n+1), A264828(n+1)]`
-/

namespace A066721.P5335734742310247103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P5335734742310247103

/-! ## A066721.P10176716615646886517

`∩[A018252(n+1), A066720(n+1)]`
-/

namespace A066721.P10176716615646886517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P10176716615646886517

/-! ## A066721.P9885613155548073174

`∩[A066720(n+1), A141468(n+1)]`
-/

namespace A066721.P9885613155548073174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P9885613155548073174

/-! ## A066721.P17482390163296611048

`∩[A066720(n+1), A111087(n+1)]`
-/

namespace A066721.P17482390163296611048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P17482390163296611048

/-! ## A066721.P16278978494148988194

`∩[A066720(n+1), A289553(n+1)]`
-/

namespace A066721.P16278978494148988194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P16278978494148988194

/-! ## A066721.P12769951163926054245

`∩[A066720(n+1), A145190(n+1)]`
-/

namespace A066721.P12769951163926054245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P12769951163926054245

/-! ## A066721.P4511805659532799636

`∩[A066720(n+1), A257586(n+1)]`
-/

namespace A066721.P4511805659532799636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P4511805659532799636

/-! ## A066721.P14424001143250576689

`∩[A056653(n+1), A066720(n+1)]`
-/

namespace A066721.P14424001143250576689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066721.P14424001143250576689

/-! ## A066721.P2400987969020091723

`record[A191558(A066720(n+1))]`
-/

namespace A066721.P2400987969020091723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A066720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066721.P2400987969020091723

/-!
# A066722: Numbers that can be expressed as the sum of two primes in exactly six ways.

The programs for A066722, there is no canonical definition to state claims against.
-/

/-! ## A066722.P12310303619794742820

`eq[6, A061358(n)]`
-/

namespace A066722.P12310303619794742820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066722.P12310303619794742820

/-! ## A066722.P4758005670267973579

`2*(eq[6, A002375(n+1)]+1)`
-/

namespace A066722.P4758005670267973579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A066722.P4758005670267973579

/-! ## A066722.P14453050913966007781

`2*(eq[6, A045917(n+1)]+1)`
-/

namespace A066722.P14453050913966007781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A066722.P14453050913966007781

/-! ## A066722.P482663100408123831

`eq[2, A211524(A002126(n))]`
-/

namespace A066722.P482663100408123831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066722.P482663100408123831

/-! ## A066722.P6026951903234682042

`eq[2, A307968(A002126(n)+1)]`
-/

namespace A066722.P6026951903234682042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 (A002126 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066722.P6026951903234682042

/-!
# A066723: Number of distinct partitions of n-th triangular number which can be obtained by merging parts in the partition 1+2+...+n.

The programs for A066723, there is no canonical definition to state claims against.
-/

/-! ## A066723.P8797331728414067225

`∑[A023190(A148400(n))]-n`
-/

namespace A066723.P8797331728414067225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A148400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A066723.P8797331728414067225

/-! ## A066723.P15112837411225656477

`A264749(A215576(n)+A000984(n))`
-/

namespace A066723.P15112837411225656477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A215576 n + A000984 n).toNat

end

end A066723.P15112837411225656477

/-! ## A066723.P3234375364628506320

`A340285(A011782(n))+A166516(n)`
-/

namespace A066723.P3234375364628506320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340285 (A011782 n).toNat + A166516 n

end

end A066723.P3234375364628506320

/-! ## A066723.P3794070045454779892

`A193114(n)-A276034(A111459(n))`
-/

namespace A066723.P3794070045454779892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193114 n - A276034 (A111459 n).toNat

end

end A066723.P3794070045454779892

/-!
# A066724: a(1) = 1, a(2) = 2; for n > 1, a(n) is the least integer > a(n-1) such that the products a(i)*a(j) for 1 <= i < j <= n are all distinct.

The programs for A066724, there is no canonical definition to state claims against.
-/

/-! ## A066724.P1525084823718366175

`A080431(n+1)/2`
-/

namespace A066724.P1525084823718366175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080431 (n + 1) : ℚ) / 2

end

end A066724.P1525084823718366175

/-! ## A066724.P6769533396318864838

`A001281(A080431(n+1))`
-/

namespace A066724.P6769533396318864838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A080431 (n + 1)).toNat

end

end A066724.P6769533396318864838

/-! ## A066724.P734627849336975158

`A001057(A080431(n+1)-1)`
-/

namespace A066724.P734627849336975158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A080431 (n + 1) - 1).toNat

end

end A066724.P734627849336975158

/-! ## A066724.P17746348261045516704

`A225381(A080431(n+1)-1)`
-/

namespace A066724.P17746348261045516704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225381 (A080431 (n + 1) - 1).toNat

end

end A066724.P17746348261045516704

/-! ## A066724.P9869278158420533685

`A026741(∪[A062091(n+1), A080431(n+1)])`
-/

namespace A066724.P9869278158420533685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080431 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A066724.P9869278158420533685

/-!
# A066725: Primes whose product of digits + 1 is also prime.

The programs for A066725, there is no canonical definition to state claims against.
-/

/-! ## A066725.P11129998244749345787

`∩[A038618(n+1), A084354(n+1)]`
-/

namespace A066725.P11129998244749345787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P11129998244749345787

/-! ## A066725.P10515860798251587622

`∩[A084354(n+1), A195943(n+1)]`
-/

namespace A066725.P10515860798251587622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P10515860798251587622

/-! ## A066725.P14113643225831063168

`p?[A081988(n+1)]`
-/

namespace A066725.P14113643225831063168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066725.P14113643225831063168

/-! ## A066725.P8977480390497857213

`record[A020639(A081988(n+2))]`
-/

namespace A066725.P8977480390497857213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A081988 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066725.P8977480390497857213

/-! ## A066725.P8123490878137381898

`filter[A081988(n+1), A010051(#)]`
-/

namespace A066725.P8123490878137381898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066725.P8123490878137381898

/-! ## A066725.P14872898494011090913

`∩[A000040(n+1), A081988(n+1)]`
-/

namespace A066725.P14872898494011090913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P14872898494011090913

/-! ## A066725.P4781172697625931548

`∩[A038618(n+1), A081988(n+1)]`
-/

namespace A066725.P4781172697625931548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P4781172697625931548

/-! ## A066725.P14755968593769982028

`∩[A045319(n+1), A081988(n+1)]`
-/

namespace A066725.P14755968593769982028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P14755968593769982028

/-! ## A066725.P7693907949243283171

`∩[A045344(n+1), A081988(n+1)]`
-/

namespace A066725.P7693907949243283171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P7693907949243283171

/-! ## A066725.P13894952773303829988

`∩[A081988(n+1), A084354(n+1)]`
-/

namespace A066725.P13894952773303829988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P13894952773303829988

/-! ## A066725.P16023649092083377679

`∩[A081988(n+1), A182986(n+1)]`
-/

namespace A066725.P16023649092083377679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P16023649092083377679

/-! ## A066725.P16237342388708764420

`∩[A081988(n+1), A197636(n+1)]`
-/

namespace A066725.P16237342388708764420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P16237342388708764420

/-! ## A066725.P7785280529085592090

`∩[A006093(n+1)+1, A081988(n+1)]`
-/

namespace A066725.P7785280529085592090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P7785280529085592090

/-! ## A066725.P2137359189702531813

`filter[A084354(n+1), A209929(#)]`
-/

namespace A066725.P2137359189702531813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A066725.P2137359189702531813

/-! ## A066725.P2560427325575452846

`∩[A052382(n+1), A084354(n+1)]`
-/

namespace A066725.P2560427325575452846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066725.P2560427325575452846

/-! ## A066725.P8928174606024539432

`p?[n*A013632(A007954(n))]`
-/

namespace A066725.P8928174606024539432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013632 (A007954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066725.P8928174606024539432

/-! ## A066725.P9348252694894131939

`filter[A084354(n+1), A168046(#)]`
-/

namespace A066725.P9348252694894131939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A066725.P9348252694894131939

/-! ## A066725.P6373692069116790702

`filter[A081988(n+2), A080339(#)]`
-/

namespace A066725.P6373692069116790702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A066725.P6373692069116790702

/-! ## A066725.P5798900760185160724

`p?[eq[1, A054024(A007954(n)+1)]]`
-/

namespace A066725.P5798900760185160724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A007954 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A066725.P5798900760185160724

/-!
# A066726: Numbers n such that binomial(2n, n) - 1 is prime.

The programs for A066726, there is no canonical definition to state claims against.
-/

/-! ## A066726.P8214394823573404077

`record[A273943(A163078(n+1))]`
-/

namespace A066726.P8214394823573404077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A163078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066726.P8214394823573404077

/-! ## A066726.P13093606461417655213

`record[A025480(A163078(n+2))]`
-/

namespace A066726.P13093606461417655213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A163078 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066726.P13093606461417655213

/-! ## A066726.P8615916799083898852

`record[A152271(A163078(n+2)-1)]`
-/

namespace A066726.P8615916799083898852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A163078 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066726.P8615916799083898852

/-! ## A066726.P9454562827814788289

`A000720(p?[A141619(A163078(n+1))])`
-/

namespace A066726.P9454562827814788289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141619 (A163078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066726.P9454562827814788289

/-!
# A066727: Least factor of n^phi(n) - 1.

The programs for A066727, there is no canonical definition to state claims against.
-/

/-! ## A066727.P18029642899823813257

`A112047(n+1)%A096592(n)`
-/

namespace A066727.P18029642899823813257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112047 (n + 1)) (A096592 n)

end

end A066727.P18029642899823813257

/-! ## A066727.P5395871153171497954

`and(dr(A309901(n)), A112047(n+1))`
-/

namespace A066727.P5395871153171497954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.digitalRoot (A309901 n) : ℤ) (A112047 (n + 1))

end

end A066727.P5395871153171497954

/-! ## A066727.P16856340144656306187

`A112047(A065672(n+1))%(n+1)`
-/

namespace A066727.P16856340144656306187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112047 (A065672 (n + 1)).toNat) (n + 1 : ℤ)

end

end A066727.P16856340144656306187

/-! ## A066727.P915126004142216804

`A053761(A158000(n+1))%(n+1)`
-/

namespace A066727.P915126004142216804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053761 (A158000 (n + 1)).toNat) (n + 1 : ℤ)

end

end A066727.P915126004142216804

/-! ## A066727.P5829388395904041133

`and(A112047(n+1), A329868(n+1))`
-/

namespace A066727.P5829388395904041133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112047 (n + 1)) (A329868 (n + 1))

end

end A066727.P5829388395904041133

/-!
# A066728: a(n) is the number of integers of the form (n+k+n*k)/(n-k) for k = 1,2,...,n-1.

The programs for A066728, the canonical program `A066728.P7235498834417940186` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066728 has offset 1).

The definition of A066728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066728.P7235498834417940186

`A000005((n+1)*(n+3))/2-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066728

/-- `A000005((n+1)*(n+3))/2-1` -/
def P7235498834417940186.Spec : Prop :=
  ∀ n, P7235498834417940186.a n = (A066728 (n + 1) : ℚ)

end A066728

/-! ## A066728.P13980347082265404990

`A347191(n+2)/2-1`
-/

namespace A066728.P13980347082265404990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347191 (n + 2) : ℚ) / 2 - 1

end

end A066728.P13980347082265404990

namespace A066728

/-- `A347191(n+2)/2-1` -/
def P13980347082265404990.Spec : Prop :=
  ∀ n, P13980347082265404990.a n = (A066728 (n + 1) : ℚ)

end A066728

/-! ## A066728.P10009100055527382179

`A046667(A347191(n+2))`
-/

namespace A066728.P10009100055527382179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A347191 (n + 2)).toNat

end

end A066728.P10009100055527382179

namespace A066728

/-- `A046667(A347191(n+2))` -/
def P10009100055527382179.Spec : Prop :=
  ∀ n, P10009100055527382179.a n = A066728 (n + 1)

end A066728

/-! ## A066728.P5246203842492218540

`A129296(n+2)-1`
-/

namespace A066728.P5246203842492218540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (n + 2) - 1

end

end A066728.P5246203842492218540

namespace A066728

/-- `A129296(n+2)-1` -/
def P5246203842492218540.Spec : Prop :=
  ∀ n, P5246203842492218540.a n = A066728 (n + 1)

end A066728

/-! ## A066728.P10270608399049124457

`floor(sinh(log(∏{e}[1-(n+2)², #+1])))`
-/

namespace A066728.P10270608399049124457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℝ))⌋

end

end A066728.P10270608399049124457

namespace A066728

/-- `floor(sinh(log(∏{e}[1-(n+2)², #+1])))` -/
def P10270608399049124457.Spec : Prop :=
  ∀ n, P10270608399049124457.a n = A066728 (n + 1)

end A066728

/-! ## A066728.P3688350087445145309

`∏{e}[1-(n+2)², #+1]/2-1`
-/

namespace A066728.P3688350087445145309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2 - 1

end

end A066728.P3688350087445145309

namespace A066728

/-- `∏{e}[1-(n+2)², #+1]/2-1` -/
def P3688350087445145309.Spec : Prop :=
  ∀ n, P3688350087445145309.a n = (A066728 (n + 1) : ℚ)

end A066728

/-! ## A066728.P14101422185634148299

`floor(sinh(log(A000005((n+2)²-1))))`
-/

namespace A066728.P14101422185634148299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000005 ((n + 2) ^ 2 - 1) : ℝ))⌋

end

end A066728.P14101422185634148299

namespace A066728

/-- `floor(sinh(log(A000005((n+2)²-1))))` -/
def P14101422185634148299.Spec : Prop :=
  ∀ n, P14101422185634148299.a n = A066728 (n + 1)

end A066728

/-! ## A066728.P17272996467537106499

`(A000005(∑[n+3+n])-2)/2`
-/

namespace A066728.P17272996467537106499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (∑ j ∈ Finset.range (n + 1), f1 j) - 2 : ℚ) / 2

end

end A066728.P17272996467537106499

namespace A066728

/-- `(A000005(∑[n+3+n])-2)/2` -/
def P17272996467537106499.Spec : Prop :=
  ∀ n, P17272996467537106499.a n = (A066728 (n + 1) : ℚ)

end A066728

/-! ## A066728.P10291045086088813529

`A081757((n+2)²)`
-/

namespace A066728.P10291045086088813529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081757 ((n + 2) ^ 2)

end

end A066728.P10291045086088813529

namespace A066728

/-- `A081757((n+2)²)` -/
def P10291045086088813529.Spec : Prop :=
  ∀ n, P10291045086088813529.a n = A066728 (n + 1)

end A066728

/-!
# A066729: a(n) = Product_{d|n, d

The programs for A066729, the canonical program `A066729.P13452211407217008978` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066729 has offset 1).

The definition of A066729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066729.P13452211407217008978

`lcm(∏{d}[n+1, #]/(n+1), ∏{p}[n+1, #])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A066729

/-- `lcm(∏{d}[n+1, #]/(n+1), ∏{p}[n+1, #])` -/
def P13452211407217008978.Spec : Prop :=
  ∀ n, (P13452211407217008978.a n : ℤ) = A066729 (n + 1)

theorem P13452211407217008978.correct : P13452211407217008978.Spec := by
  intro n
  simp only [A066729, Nat.add_sub_cancel]

end A066729

/-! ## A066729.P14840770963541024288

`lcm(∏{d}[n+1, #]/(n+1), A014963(n+1))`
-/

namespace A066729.P14840770963541024288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (A014963 (n + 1))

end

end A066729.P14840770963541024288

namespace A066729

/-- `lcm(∏{d}[n+1, #]/(n+1), A014963(n+1))` -/
def P14840770963541024288.Spec : Prop :=
  ∀ n, (P14840770963541024288.a n : ℤ) = A066729 (n + 1)

end A066729

/-! ## A066729.P18209531554860663143

`A166260(n+1)+A007956(n+1)`
-/

namespace A066729.P18209531554860663143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1) + A007956 (n + 1)

end

end A066729.P18209531554860663143

namespace A066729

/-- `A166260(n+1)+A007956(n+1)` -/
def P18209531554860663143.Spec : Prop :=
  ∀ n, P18209531554860663143.a n = A066729 (n + 1)

end A066729

/-! ## A066729.P10258819542318299854

`A007956(n+1)*A089026(n+1)`
-/

namespace A066729.P10258819542318299854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A089026 (n + 1)

end

end A066729.P10258819542318299854

namespace A066729

/-- `A007956(n+1)*A089026(n+1)` -/
def P10258819542318299854.Spec : Prop :=
  ∀ n, P10258819542318299854.a n = A066729 (n + 1)

end A066729

/-! ## A066729.P10946170642816543341

`A007955(n+1)/A005451(n+1)`
-/

namespace A066729.P10946170642816543341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A005451 (n + 1) : ℚ)

end

end A066729.P10946170642816543341

namespace A066729

/-- `A007955(n+1)/A005451(n+1)` -/
def P10946170642816543341.Spec : Prop :=
  ∀ n, P10946170642816543341.a n = (A066729 (n + 1) : ℚ)

end A066729

/-! ## A066729.P15405618466101461682

`lcm(A006530(n+1), A007956(n+1))`
-/

namespace A066729.P15405618466101461682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 1)) (A007956 (n + 1))

end

end A066729.P15405618466101461682

namespace A066729

/-- `lcm(A006530(n+1), A007956(n+1))` -/
def P15405618466101461682.Spec : Prop :=
  ∀ n, (P15405618466101461682.a n : ℤ) = A066729 (n + 1)

end A066729

/-! ## A066729.P17383234780477827994

`A007956(n+1)+n*A010051(n+1)`
-/

namespace A066729.P17383234780477827994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) + (n : ℤ) * A010051 (n + 1)

end

end A066729.P17383234780477827994

namespace A066729

/-- `A007956(n+1)+n*A010051(n+1)` -/
def P17383234780477827994.Spec : Prop :=
  ∀ n, P17383234780477827994.a n = A066729 (n + 1)

end A066729

/-! ## A066729.P3437067210407595276

`A007956(n+1)+n*A080339(n+1)`
-/

namespace A066729.P3437067210407595276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) + (n : ℤ) * A080339 (n + 1)

end

end A066729.P3437067210407595276

namespace A066729

/-- `A007956(n+1)+n*A080339(n+1)` -/
def P3437067210407595276.Spec : Prop :=
  ∀ n, P3437067210407595276.a n = A066729 (n + 1)

end A066729

/-! ## A066729.P6661444527641108380

`A007956(n+1)+A014963(n+1)-A014963(A048671(n+1))`
-/

namespace A066729.P6661444527641108380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) + (A014963 (n + 1) - A014963 (A048671 (n + 1)).toNat)

end

end A066729.P6661444527641108380

namespace A066729

/-- `A007956(n+1)+A014963(n+1)-A014963(A048671(n+1))` -/
def P6661444527641108380.Spec : Prop :=
  ∀ n, P6661444527641108380.a n = A066729 (n + 1)

end A066729

/-! ## A066729.P16822797970929723485

`∏{d}[A103164(n+1), #]/A103164(n+1)`
-/

namespace A066729.P16822797970929723485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A103164 (n + 1) : ℚ)

end

end A066729.P16822797970929723485

namespace A066729

/-- `∏{d}[A103164(n+1), #]/A103164(n+1)` -/
def P16822797970929723485.Spec : Prop :=
  ∀ n, P16822797970929723485.a n = (A066729 (n + 1) : ℚ)

end A066729

/-!
# A066730: Numbers with ever-increasing minimal-square-deniers.

The programs for A066730, there is no canonical definition to state claims against.
-/

/-! ## A066730.P17534670061531294590

`record[A018883(A034699(n+2))]`
-/

namespace A066730.P17534670061531294590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018883 (A034699 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066730.P17534670061531294590

/-! ## A066730.P12543514707605327980

`record[A018883(A130722(n)+2)]`
-/

namespace A066730.P12543514707605327980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018883 (A130722 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066730.P12543514707605327980

/-! ## A066730.P11749098905953283371

`record[A018883(A056239(n+3))]`
-/

namespace A066730.P11749098905953283371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018883 (A056239 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066730.P11749098905953283371

/-! ## A066730.P16271011838373551526

`record[A018883(A003603(n+1)+1)]`
-/

namespace A066730.P16271011838373551526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018883 (A003603 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066730.P16271011838373551526

/-! ## A066730.P17166795292525743035

`record[A018883(A003963(n+1)+1)]`
-/

namespace A066730.P17166795292525743035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018883 (A003963 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066730.P17166795292525743035

/-!
# A066732: Least k such that the least factor of k^Phi(k) -1 is the n-th prime.

The programs for A066732, there is no canonical definition to state claims against.
-/

/-! ## A066732.P9572246071108636728

`p?[floor(log2(n+3))*a(n-1)-1]+1` with `a(0)=2`
-/

namespace A066732.P9572246071108636728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (Nat.log 2 (n + 3) : ℤ) * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A066732.P9572246071108636728

/-!
# A066733: Numbers such that the product of the digits of its square is a square > 0.

The programs for A066733, there is no canonical definition to state claims against.
-/

/-! ## A066733.P14194745078873839913

`sqrt(A053059(n+1))`
-/

namespace A066733.P14194745078873839913
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053059 (n + 1) : ℝ)

end

end A066733.P14194745078873839913

/-! ## A066733.P16562151444778894385

`A000027(root(A053059(n+1), 2))`
-/

namespace A066733.P16562151444778894385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A053059 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A066733.P16562151444778894385

/-! ## A066733.P12376341895571740190

`root(A053059(n+1), gcd(2, A000122(n)))`
-/

namespace A066733.P12376341895571740190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053059 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A000122 n) : ℝ))

end

end A066733.P12376341895571740190

/-! ## A066733.P4479736007228139754

`root(A053059(n+1), A001316(A001316(n)))`
-/

namespace A066733.P4479736007228139754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053059 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A066733.P4479736007228139754

/-! ## A066733.P11235807878668530103

`root(A053059(n+1), A078545(A078545(n+2)))`
-/

namespace A066733.P11235807878668530103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053059 (n + 1) : ℝ) ^ (1 / (A078545 (A078545 (n + 2)).toNat : ℝ))

end

end A066733.P11235807878668530103

/-! ## A066733.P1612905703606232271

`root(A053059(n+1), A000122(n²))`
-/

namespace A066733.P1612905703606232271
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053059 (n + 1) : ℝ) ^ (1 / (A000122 (n ^ 2) : ℝ))

end

end A066733.P1612905703606232271

/-!
# A066735: Primes p dividing 1 + the product of the primes less than p.

The programs for A066735, there is no canonical definition to state claims against.
-/

/-! ## A066735.P11644932081431481734

`A000040(A338543(n+1))`
-/

namespace A066735.P11644932081431481734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A338543 (n + 1)).toNat

end

end A066735.P11644932081431481734

/-!
# A066736: Least number > 1 such that the nonzero product of the digits of its n-th power is also an n-th power.

The programs for A066736, there is no canonical definition to state claims against.
-/

/-! ## A066736.P14553330445552287838

`A176095(9^n+13)`
-/

namespace A066736.P14553330445552287838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (9 ^ n + 13)

end

end A066736.P14553330445552287838

/-!
# A066737: Composite numbers that are concatenations of primes.

The programs for A066737, there is no canonical definition to state claims against.
-/

/-! ## A066737.P518700847375510470

`filter[A152242(n+1), A005171(#)]`
-/

namespace A066737.P518700847375510470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066737.P518700847375510470

/-! ## A066737.P10838499087130437926

`filter[A152242(n+1), A066247(#)]`
-/

namespace A066737.P10838499087130437926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A066737.P10838499087130437926

/-! ## A066737.P13709206382760456633

`∩[A002808(n+1), A152242(n+1)]`
-/

namespace A066737.P13709206382760456633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066737.P13709206382760456633

/-! ## A066737.P16857461795189550286

`∩[A018252(n+1), A152242(n+1)]`
-/

namespace A066737.P16857461795189550286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066737.P16857461795189550286

/-! ## A066737.P5722334432447902048

`∩[A141468(n+1), A152242(n+1)]`
-/

namespace A066737.P5722334432447902048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066737.P5722334432447902048

/-! ## A066737.P12664475724360487191

`∩[A062973(n+1), A152242(n+1)]`
-/

namespace A066737.P12664475724360487191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066737.P12664475724360487191

/-! ## A066737.P4212826128107798630

`∩[A056653(n+1), A152242(n+1)]`
-/

namespace A066737.P4212826128107798630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066737.P4212826128107798630

/-! ## A066737.P3918992848736496530

`∩[A152242(n+1), A065090(n+3)]`
-/

namespace A066737.P3918992848736496530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066737.P3918992848736496530

/-!
# A066738: Primes that are concatenations of nonprime numbers.

The programs for A066738, there is no canonical definition to state claims against.
-/

/-! ## A066738.P9242429898163096076

`A278799(n+1)%A034820(n)`
-/

namespace A066738.P9242429898163096076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278799 (n + 1)) (A034820 n)

end

end A066738.P9242429898163096076

/-! ## A066738.P15023185471484372901

`or(A057211(A032810(n+1)), A278799(n+1))`
-/

namespace A066738.P15023185471484372901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057211 (A032810 (n + 1)).toNat) (A278799 (n + 1))

end

end A066738.P15023185471484372901

/-! ## A066738.P10832815985726306750

`and(A278799(n+1), A359085(n+1))`
-/

namespace A066738.P10832815985726306750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278799 (n + 1)) (A359085 (n + 1))

end

end A066738.P10832815985726306750

/-! ## A066738.P13275216970926464809

`A278799(n+1)*A278817(A000290(2*n))`
-/

namespace A066738.P13275216970926464809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278799 (n + 1) * A278817 (A000290 (2 * n)).toNat

end

end A066738.P13275216970926464809

/-!
# A066739: Number of representations of n as a sum of products of positive integers. 1 is not allowed as a factor, unless it is the only factor. Representations which differ only in the order of terms or factors are considered equivalent.

The programs for A066739, there is no canonical definition to state claims against.
-/

/-! ## A066739.P8172716120165961300

`A321566(n)+A044941(A016116(n))`
-/

namespace A066739.P8172716120165961300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321566 n + A044941 (A016116 n).toNat

end

end A066739.P8172716120165961300

/-! ## A066739.P9259655790913170738

`A321566(n)+A185284(A087731(n))`
-/

namespace A066739.P9259655790913170738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321566 n + A185284 (A087731 n).toNat

end

end A066739.P9259655790913170738

/-! ## A066739.P12483983123708666805

`A321566(n)+A185284(A325132(n))`
-/

namespace A066739.P12483983123708666805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321566 n + A185284 (A325132 n).toNat

end

end A066739.P12483983123708666805

/-! ## A066739.P4397455449292692513

`or(A316341(A161409(n+4)), A321566(n))`
-/

namespace A066739.P4397455449292692513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316341 (A161409 (n + 4)).toNat) (A321566 n)

end

end A066739.P4397455449292692513

/-! ## A066739.P13009646969825644203

`A321566(n)%A033664(A271269(n+1))`
-/

namespace A066739.P13009646969825644203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321566 n) (A033664 (A271269 (n + 1)).toNat)

end

end A066739.P13009646969825644203

/-!
# A066740: Number of distinct partitions of A007504(n) which can be obtained by merging parts in the partition 2+3+5+...+prime(n), where prime(n) is the n-th prime.

The programs for A066740, there is no canonical definition to state claims against.
-/

/-! ## A066740.P6685430152845198731

`A325124(4*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A066740.P6685430152845198731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A325124 (4 * a (n - 2)).toNat

end

end A066740.P6685430152845198731

/-! ## A066740.P5932255386377958890

`A325124(A089976(n))`
-/

namespace A066740.P5932255386377958890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 (A089976 n).toNat

end

end A066740.P5932255386377958890

/-! ## A066740.P2572164324395372173

`A373074(A073679(n+1))`
-/

namespace A066740.P2572164324395372173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (A073679 (n + 1)).toNat

end

end A066740.P2572164324395372173

/-!
# A066741: Pentagonal numbers not divisible by 10 whose reverse is a square.

The programs for A066741, there is no canonical definition to state claims against.
-/

/-! ## A066741.P13153768652860844756

`∩[A356417(n+1), A000326(n)]`
-/

namespace A066741.P13153768652860844756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066741.P13153768652860844756

/-!
# A066742: Square numbers not divisible by 10 whose reverse is pentagonal.

The programs for A066742, there is no canonical definition to state claims against.
-/

/-! ## A066742.P16991419671180841073

`eq[A255553(n+1), A303314(n+1)]²`
-/

namespace A066742.P16991419671180841073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A066742.P16991419671180841073

/-!
# A066743: a(n) is the number of integers of the form (n^2+1)/(k^2+1), where k = 1,2,3,...,n.

The programs for A066743, there is no canonical definition to state claims against.
-/

/-! ## A066743.P17124306860004223083

`A359938(A002522(n+1))-1`
-/

namespace A066743.P17124306860004223083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359938 (A002522 (n + 1)).toNat - 1

end

end A066743.P17124306860004223083

/-! ## A066743.P9951350674058939699

`A261609(n+1)+A006466(A284573(n))`
-/

namespace A066743.P9951350674058939699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (n + 1) + A006466 (A284573 n).toNat

end

end A066743.P9951350674058939699

/-! ## A066743.P7687643236011856073

`A261609(n+1)+A135517(A242516(n+1))`
-/

namespace A066743.P7687643236011856073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (n + 1) + A135517 (A242516 (n + 1)).toNat

end

end A066743.P7687643236011856073

/-! ## A066743.P13014467468223481933

`A261609(n+1)+A014963(A348453(n+1))`
-/

namespace A066743.P13014467468223481933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (n + 1) + A014963 (A348453 (n + 1)).toNat

end

end A066743.P13014467468223481933

/-! ## A066743.P16831194389495433910

`A261609(n+1)+A049076(A011782(n))`
-/

namespace A066743.P16831194389495433910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (n + 1) + A049076 (A011782 n).toNat

end

end A066743.P16831194389495433910

/-!
# A066744: a(n) = either 4a(n-1)+1 or 4a(n-1)+3 depending on corresponding term of A005614, +3 for 0, +1 for 1.

The programs for A066744, the canonical program `A066744.P13027750496536240928` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066744 has offset 1).

The definition of A066744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066744.P4674667029710844834

`xor(∑[floor(4^n/2)], A028894(n+1))`
-/

namespace A066744.P4674667029710844834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A028894 (n + 1))

end

end A066744.P4674667029710844834

namespace A066744

/-- `xor(∑[floor(4^n/2)], A028894(n+1))` -/
def P4674667029710844834.Spec : Prop :=
  ∀ n, P4674667029710844834.a n = A066744 (n + 1)

end A066744

/-! ## A066744.P13027750496536240928

`or(4*a(n-1), Δ[A003623(n+1)])` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066744

/-- `or(4*a(n-1), Δ[A003623(n+1)])` -/
def P13027750496536240928.Spec : Prop :=
  ∀ n, P13027750496536240928.a n = A066744 (n + 1)

theorem P13027750496536240928.correct : P13027750496536240928.Spec := by
  intro n
  simp only [A066744, Nat.add_sub_cancel]

end A066744

/-! ## A066744.P14366589040730613693

`or(4*a(n-1), Δ[A035336(n+1)])` with `a(0)=1`
-/

namespace A066744.P14366589040730613693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A066744.P14366589040730613693

namespace A066744

/-- `or(4*a(n-1), Δ[A035336(n+1)])` -/
def P14366589040730613693.Spec : Prop :=
  ∀ n, P14366589040730613693.a n = A066744 (n + 1)

end A066744

/-! ## A066744.P11336169760602514925

`or(4*a(n-1), Δ[A089910(n+1)])` with `a(0)=1`
-/

namespace A066744.P11336169760602514925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A066744.P11336169760602514925

namespace A066744

/-- `or(4*a(n-1), Δ[A089910(n+1)])` -/
def P11336169760602514925.Spec : Prop :=
  ∀ n, P11336169760602514925.a n = A066744 (n + 1)

end A066744

/-! ## A066744.P6533573580520419325

`xor(2, A050141(n+1)+4*a(n-1))` with `a(0)=1`
-/

namespace A066744.P6533573580520419325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 2 (A050141 (n + 1) + 4 * a (n - 1))

end

end A066744.P6533573580520419325

namespace A066744

/-- `xor(2, A050141(n+1)+4*a(n-1))` -/
def P6533573580520419325.Spec : Prop :=
  ∀ n, P6533573580520419325.a n = A066744 (n + 1)

end A066744

/-! ## A066744.P5873015280280439969

`A080675(n+1)-A028894(n+1)`
-/

namespace A066744.P5873015280280439969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080675 (n + 1) - A028894 (n + 1)

end

end A066744.P5873015280280439969

namespace A066744

/-- `A080675(n+1)-A028894(n+1)` -/
def P5873015280280439969.Spec : Prop :=
  ∀ n, P5873015280280439969.a n = A066744 (n + 1)

end A066744

/-!
# A066745: Least number of applications of f(k) = k(k+1)+1 to n to yield a prime, if this number exists; -1 otherwise.

The programs for A066745, there is no canonical definition to state claims against.
-/

/-! ## A066745.P16660493666945445529

`A040081(∑[A083888(n+1)²])`
-/

namespace A066745.P16660493666945445529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066745.P16660493666945445529

/-! ## A066745.P2225657688429825059

`(A040079(n+1)*A040081(n+1))%4`
-/

namespace A066745.P2225657688429825059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040079 (n + 1) * A040081 (n + 1)) 4

end

end A066745.P2225657688429825059

/-! ## A066745.P169427192746835650

`A300454(A040081(n+1)*A319099(n+2))`
-/

namespace A066745.P169427192746835650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300454 (A040081 (n + 1) * A319099 (n + 2)).toNat

end

end A066745.P169427192746835650

/-! ## A066745.P11437425835855768081

`A227740(A144175(2*n+5)-A010892(n))`
-/

namespace A066745.P11437425835855768081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227740 (A144175 (2 * n + 5) - A010892 n).toNat

end

end A066745.P11437425835855768081

/-! ## A066745.P15715744284809611581

`A007814(A249802(n+1)+A158710(2*(n+1)))`
-/

namespace A066745.P15715744284809611581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A249802 (n + 1) + A158710 (2 * (n + 1))).toNat

end

end A066745.P15715744284809611581

/-!
# A066749: List of primes p which are equal to a central binomial coefficient C(n,floor(n/2)) plus 1.

The programs for A066749, there is no canonical definition to state claims against.
-/

/-! ## A066749.P3055784920100448346

`A051920(A067366(n+2))`
-/

namespace A066749.P3055784920100448346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (A067366 (n + 2)).toNat

end

end A066749.P3055784920100448346

/-! ## A066749.P6081356623283454584

`p?[C(n+1, ceil(n/2))+1]`
-/

namespace A066749.P6081356623283454584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) ⌈(n : ℚ) / 2⌉.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A066749.P6081356623283454584

/-! ## A066749.P8998631161800661563

`p?[record[A127159(n)]]`
-/

namespace A066749.P8998631161800661563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066749.P8998631161800661563

/-! ## A066749.P1360283995388492417

`p?[A051920(n+1)]`
-/

namespace A066749.P1360283995388492417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066749.P1360283995388492417

/-!
# A066750: Greatest common divisor of n and its digit sum.

The programs for A066750, the canonical program `A066750.P131990197536732529` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066750 has offset 1).

The definition of A066750 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066750.P131990197536732529

`gcd(n+1, A007953(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066750

/-- `gcd(n+1, A007953(n+1))` -/
def P131990197536732529.Spec : Prop :=
  ∀ n, (P131990197536732529.a n : ℤ) = A066750 (n + 1)

theorem P131990197536732529.correct : P131990197536732529.Spec := by
  intro n
  simp only [A066750, Nat.add_sub_cancel]

end A066750

/-! ## A066750.P13324548293706249589

`gcd(n+1, Δ[A037123(n)])`
-/

namespace A066750.P13324548293706249589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A066750.P13324548293706249589

namespace A066750

/-- `gcd(n+1, Δ[A037123(n)])` -/
def P13324548293706249589.Spec : Prop :=
  ∀ n, (P13324548293706249589.a n : ℤ) = A066750 (n + 1)

end A066750

/-! ## A066750.P15126362732081358972

`(n+1)/A065517(n+1)`
-/

namespace A066750.P15126362732081358972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065517 (n + 1) : ℚ)

end

end A066750.P15126362732081358972

namespace A066750

/-- `(n+1)/A065517(n+1)` -/
def P15126362732081358972.Spec : Prop :=
  ∀ n, P15126362732081358972.a n = (A066750 (n + 1) : ℚ)

end A066750

/-! ## A066750.P10018260882050463014

`A007953(n+1)/A065518(n+1)`
-/

namespace A066750.P10018260882050463014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (n + 1) : ℚ) / (A065518 (n + 1) : ℚ)

end

end A066750.P10018260882050463014

namespace A066750

/-- `A007953(n+1)/A065518(n+1)` -/
def P10018260882050463014.Spec : Prop :=
  ∀ n, P10018260882050463014.a n = (A066750 (n + 1) : ℚ)

end A066750

/-! ## A066750.P12390728596017908071

`gcd(A000027(n+1), A160942(n+2))`
-/

namespace A066750.P12390728596017908071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A160942 (n + 2))

end

end A066750.P12390728596017908071

namespace A066750

/-- `gcd(A000027(n+1), A160942(n+2))` -/
def P12390728596017908071.Spec : Prop :=
  ∀ n, (P12390728596017908071.a n : ℤ) = A066750 (n + 1)

end A066750

/-! ## A066750.P16152934752642544390

`(A061762(n+1)-A007954(n+1))/A065518(n+1)`
-/

namespace A066750.P16152934752642544390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061762 (n + 1) - A007954 (n + 1) : ℚ) / (A065518 (n + 1) : ℚ)

end

end A066750.P16152934752642544390

namespace A066750

/-- `(A061762(n+1)-A007954(n+1))/A065518(n+1)` -/
def P16152934752642544390.Spec : Prop :=
  ∀ n, P16152934752642544390.a n = (A066750 (n + 1) : ℚ)

end A066750

/-! ## A066750.P12135078868465125994

`gcd(∑{digits}[A008619(2*n), #], A008619(2*n))`
-/

namespace A066750.P12135078868465125994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A008619 (2 * n))

end

end A066750.P12135078868465125994

namespace A066750

/-- `gcd(∑{digits}[A008619(2*n), #], A008619(2*n))` -/
def P12135078868465125994.Spec : Prop :=
  ∀ n, (P12135078868465125994.a n : ℤ) = A066750 (n + 1)

end A066750

/-! ## A066750.P8766443180271917284

`A069652(A044332(n+1))`
-/

namespace A066750.P8766443180271917284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069652 (A044332 (n + 1)).toNat

end

end A066750.P8766443180271917284

namespace A066750

/-- `A069652(A044332(n+1))` -/
def P8766443180271917284.Spec : Prop :=
  ∀ n, P8766443180271917284.a n = A066750 (n + 1)

end A066750

/-! ## A066750.P17107650402266838694

`A069652(A051022(n+1))`
-/

namespace A066750.P17107650402266838694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069652 (A051022 (n + 1)).toNat

end

end A066750.P17107650402266838694

namespace A066750

/-- `A069652(A051022(n+1))` -/
def P17107650402266838694.Spec : Prop :=
  ∀ n, P17107650402266838694.a n = A066750 (n + 1)

end A066750

/-!
# A066751: Triangular numbers whose reverse is prime.

The programs for A066751, there is no canonical definition to state claims against.
-/

/-! ## A066751.P10902350092340870183

`record[A004086(p?[A004158(n)])]`
-/

namespace A066751.P10902350092340870183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066751.P10902350092340870183

/-! ## A066751.P15690271066256194204

`filter[A115704(n+1), A168184(#)]`
-/

namespace A066751.P15690271066256194204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A066751.P15690271066256194204

/-! ## A066751.P8047972513388300114

`A115704(lt[A243147(n+1), A055010(n)])`
-/

namespace A066751.P8047972513388300114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115704 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066751.P8047972513388300114

/-! ## A066751.P471037273147203172

`A115704(lt[A243147(n+1), A183324(n+1)])`
-/

namespace A066751.P471037273147203172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115704 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066751.P471037273147203172

/-!
# A066752: a(n) = gcd(prime(n)+1, n+1).

The programs for A066752, the canonical program `A066752.P7646017562823451997` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066752 has offset 1).

The definition of A066752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(n+1)+1, n+2)` (program `A066752.P7646017562823451997`, by `A066752.P7646017562823451997.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066752.P7646017562823451997

`gcd(A000040(n+1)+1, n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066752

/-- `gcd(A000040(n+1)+1, n+2)` -/
def P7646017562823451997.Spec : Prop :=
  ∀ n, (P7646017562823451997.a n : ℤ) = A066752 (n + 1)

theorem P7646017562823451997.correct : P7646017562823451997.Spec := by
  intro n
  simp only [A066752, Nat.add_sub_cancel]

end A066752

/-! ## A066752.P6338293398133632041

`gcd(n+2, A004232(n+1))`
-/

namespace A066752.P6338293398133632041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A004232 (n + 1))

end

end A066752.P6338293398133632041

namespace A066752

/-- `gcd(n+2, A004232(n+1))` -/
def P6338293398133632041.Spec : Prop :=
  ∀ n, (P6338293398133632041.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P3782362919578394135

`gcd(abs(1-n)+3, A008864(n+1))`
-/

namespace A066752.P3782362919578394135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 3) (A008864 (n + 1))

end

end A066752.P3782362919578394135

namespace A066752

/-- `gcd(abs(1-n)+3, A008864(n+1))` -/
def P3782362919578394135.Spec : Prop :=
  ∀ n, (P3782362919578394135.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P4076233445862092590

`gcd(A004232(n+1), A057544(n))`
-/

namespace A066752.P4076233445862092590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004232 (n + 1)) (A057544 n)

end

end A066752.P4076233445862092590

namespace A066752

/-- `gcd(A004232(n+1), A057544(n))` -/
def P4076233445862092590.Spec : Prop :=
  ∀ n, (P4076233445862092590.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P14403421319242133466

`gcd(A008864(n+1), A014689(n+1))`
-/

namespace A066752.P14403421319242133466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A014689 (n + 1))

end

end A066752.P14403421319242133466

namespace A066752

/-- `gcd(A008864(n+1), A014689(n+1))` -/
def P14403421319242133466.Spec : Prop :=
  ∀ n, (P14403421319242133466.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P8389404887878791454

`gcd(A020725(n+1), A055670(n+1))`
-/

namespace A066752.P8389404887878791454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A055670 (n + 1))

end

end A066752.P8389404887878791454

namespace A066752

/-- `gcd(A020725(n+1), A055670(n+1))` -/
def P8389404887878791454.Spec : Prop :=
  ∀ n, (P8389404887878791454.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P13586600015383701342

`gcd(A065475(n+1), A089621(n+1))`
-/

namespace A066752.P13586600015383701342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065475 (n + 1)) (A089621 (n + 1))

end

end A066752.P13586600015383701342

namespace A066752

/-- `gcd(A065475(n+1), A089621(n+1))` -/
def P13586600015383701342.Spec : Prop :=
  ∀ n, (P13586600015383701342.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P5694737182531211596

`gcd(A161522(n+1), A345727(n+1))`
-/

namespace A066752.P5694737182531211596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161522 (n + 1)) (A345727 (n + 1))

end

end A066752.P5694737182531211596

namespace A066752

/-- `gcd(A161522(n+1), A345727(n+1))` -/
def P5694737182531211596.Spec : Prop :=
  ∀ n, (P5694737182531211596.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P15278248547510876510

`gcd(A065890(n+1)+1, A040976(n+1)+3)`
-/

namespace A066752.P15278248547510876510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065890 (n + 1) + 1) (A040976 (n + 1) + 3)

end

end A066752.P15278248547510876510

namespace A066752

/-- `gcd(A065890(n+1)+1, A040976(n+1)+3)` -/
def P15278248547510876510.Spec : Prop :=
  ∀ n, (P15278248547510876510.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P10790802425677660443

`gcd(A103517(n+1)/2, A028815(n+1))`
-/

namespace A066752.P10790802425677660443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A103517 (n + 1) : ℚ) / 2)) (A028815 (n + 1))

end

end A066752.P10790802425677660443

namespace A066752

/-- `gcd(A103517(n+1)/2, A028815(n+1))` -/
def P10790802425677660443.Spec : Prop :=
  ∀ n, (P10790802425677660443.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P11485709426314994634

`gcd(n+1-A082500(2*(n+1)), A002378(n+1))`
-/

namespace A066752.P11485709426314994634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A082500 (2 * (n + 1))) (A002378 (n + 1))

end

end A066752.P11485709426314994634

namespace A066752

/-- `gcd(n+1-A082500(2*(n+1)), A002378(n+1))` -/
def P11485709426314994634.Spec : Prop :=
  ∀ n, (P11485709426314994634.a n : ℤ) = A066752 (n + 1)

end A066752

/-! ## A066752.P10640718776004402956

`A064814(A014689(n+1))`
-/

namespace A066752.P10640718776004402956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064814 (A014689 (n + 1)).toNat

end

end A066752.P10640718776004402956

namespace A066752

/-- `A064814(A014689(n+1))` -/
def P10640718776004402956.Spec : Prop :=
  ∀ n, P10640718776004402956.a n = A066752 (n + 1)

end A066752

/-! ## A066752.P18226324703772998249

`A064814(A065890(n+1)+1)`
-/

namespace A066752.P18226324703772998249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064814 (A065890 (n + 1) + 1).toNat

end

end A066752.P18226324703772998249

namespace A066752

/-- `A064814(A065890(n+1)+1)` -/
def P18226324703772998249.Spec : Prop :=
  ∀ n, P18226324703772998249.a n = A066752 (n + 1)

end A066752

/-! ## A066752.P6116844810541913472

`A064814(A006093(n+1)-n)`
-/

namespace A066752.P6116844810541913472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064814 (A006093 (n + 1) - (n : ℤ)).toNat

end

end A066752.P6116844810541913472

namespace A066752

/-- `A064814(A006093(n+1)-n)` -/
def P6116844810541913472.Spec : Prop :=
  ∀ n, P6116844810541913472.a n = A066752 (n + 1)

end A066752

/-! ## A066752.P6108510338617852815

`A064814(A000040(n+1)-(n+1))`
-/

namespace A066752.P6108510338617852815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064814 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

end

end A066752.P6108510338617852815

namespace A066752

/-- `A064814(A000040(n+1)-(n+1))` -/
def P6108510338617852815.Spec : Prop :=
  ∀ n, P6108510338617852815.a n = A066752 (n + 1)

end A066752

/-! ## A066752.P14256159378063122327

`A064814(A008578(n+2)-(n+1))`
-/

namespace A066752.P14256159378063122327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064814 (A008578 (n + 2) - (n + 1 : ℤ)).toNat

end

end A066752.P14256159378063122327

namespace A066752

/-- `A064814(A008578(n+2)-(n+1))` -/
def P14256159378063122327.Spec : Prop :=
  ∀ n, P14256159378063122327.a n = A066752 (n + 1)

end A066752

/-!
# A066753: a(n) = least natural number k such that n + Sum_{i=1..k} prime(i) is prime if such k exists; = 0 otherwise.

The programs for A066753, there is no canonical definition to state claims against.
-/

/-! ## A066753.P2673469898341198342

`gcd(A007088(A288663(n)), A348227(n))`
-/

namespace A066753.P2673469898341198342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (A288663 n).toNat) (A348227 n)

end

end A066753.P2673469898341198342

/-!
# A066754: Incrementally largest terms in the continued fraction for the "binary" Copeland-Erdos constant.

The programs for A066754, there is no canonical definition to state claims against.
-/

/-! ## A066754.P9225109426123988283

`record[A066748(n)]`
-/

namespace A066754.P9225109426123988283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066754.P9225109426123988283

/-!
# A066755: Numbers m such that m^2 + 1 is not divisible by k^2 + 1 for any k in [1,m-1].

The programs for A066755, there is no canonical definition to state claims against.
-/

/-! ## A066755.P16467395477731871401

`eq[1, A066743(n+1)]+1`
-/

namespace A066755.P16467395477731871401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066755.P16467395477731871401

/-! ## A066755.P15939540992202043140

`record[(n+1)/A000010(A066743(n+1)²)]`
-/

namespace A066755.P15939540992202043140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (A066743 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066755.P15939540992202043140

/-! ## A066755.P9081147472379713193

`record[(n+1)/A000041(A066743(n+1)²)]`
-/

namespace A066755.P9081147472379713193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000041 (A066743 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066755.P9081147472379713193

/-! ## A066755.P8225026570539278550

`record[(n+1)/A066743(n+1)^A000005(n+1)]`
-/

namespace A066755.P8225026570539278550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066743 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066755.P8225026570539278550

/-! ## A066755.P2324321797925646115

`record[(n+1)/A066743(n+1)^A001221(n+1)]`
-/

namespace A066755.P2324321797925646115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066743 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066755.P2324321797925646115

/-! ## A066755.P377373481873987164

`record[(n+1)/A066743(n+1)^A066660(n+1)]`
-/

namespace A066755.P377373481873987164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066743 (n + 1) : ℚ) ^ (A066660 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066755.P377373481873987164

/-! ## A066755.P12645085600052847672

`record[(n+1)/A066743(n+1)^A069930(n+1)]`
-/

namespace A066755.P12645085600052847672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066743 (n + 1) : ℚ) ^ (A069930 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066755.P12645085600052847672

/-!
# A066756: Smallest number that requires n^3 steps to reach 1 in its Collatz trajectory (counting x/2 and 3x+1 steps).

The programs for A066756, there is no canonical definition to state claims against.
-/

/-! ## A066756.P5798705450381050017

`A033491(n^3)`
-/

namespace A066756.P5798705450381050017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (n ^ 3)

end

end A066756.P5798705450381050017

/-! ## A066756.P4353162712992007871

`A107846(n)+A033491(A000578(n))`
-/

namespace A066756.P4353162712992007871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + A033491 (A000578 n).toNat

end

end A066756.P4353162712992007871

/-! ## A066756.P8199982095079479196

`A211020(n)+A033491(A000578(n))`
-/

namespace A066756.P8199982095079479196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211020 n + A033491 (A000578 n).toNat

end

end A066756.P8199982095079479196

/-! ## A066756.P18014660271409711007

`A326544(n)+A033491(A000578(n))`
-/

namespace A066756.P18014660271409711007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n + A033491 (A000578 n).toNat

end

end A066756.P18014660271409711007

/-! ## A066756.P12013792677655285282

`A015012(n)*A033491(A000578(n))`
-/

namespace A066756.P12013792677655285282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 n * A033491 (A000578 n).toNat

end

end A066756.P12013792677655285282

/-!
# A066757: Pentagonal numbers not divisible by 10 whose reverse is triangular.

The programs for A066757, there is no canonical definition to state claims against.
-/

/-! ## A066757.P9381468848774431896

`A000326(A129661(n)-A001055(n+1))`
-/

namespace A066757.P9381468848774431896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A129661 n - A001055 (n + 1)).toNat

end

end A066757.P9381468848774431896

/-!
# A066758: Triangular numbers not divisible by 10 whose reverse is pentagonal.

The programs for A066758, there is no canonical definition to state claims against.
-/

/-! ## A066758.P5005198412371368650

`C(∑[A321661(A321697(n+1))], 2)`
-/

namespace A066758.P5005198412371368650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321661 (A321697 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A066758.P5005198412371368650

/-!
# A066759: a(n) = least multiple of n differing from a prime by at most 1, if such a multiple exists; = 0 otherwise.

The programs for A066759, there is no canonical definition to state claims against.
-/

/-! ## A066759.P907123647995870104

`(n+1)*A103689(A014683(n+1))`
-/

namespace A066759.P907123647995870104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103689 (A014683 (n + 1)).toNat

end

end A066759.P907123647995870104

/-! ## A066759.P17923038483086208231

`(n+1)*A103689(A014684(n+1))`
-/

namespace A066759.P17923038483086208231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103689 (A014684 (n + 1)).toNat

end

end A066759.P17923038483086208231

/-! ## A066759.P3569486669950223466

`(n+1)*A103689(A113646(n+1))`
-/

namespace A066759.P3569486669950223466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103689 (A113646 (n + 1)).toNat

end

end A066759.P3569486669950223466

/-! ## A066759.P11776909845041254518

`(n+1)*A250068(A081589(n))`
-/

namespace A066759.P11776909845041254518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A250068 (A081589 n).toNat

end

end A066759.P11776909845041254518

/-! ## A066759.P8172709929532322564

`lcm(n+1, A345164(A329369(n)))`
-/

namespace A066759.P8172709929532322564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A345164 (A329369 n).toNat)

end

end A066759.P8172709929532322564

/-!
# A066760: a(n) = Sum_{1<=k<=n, k is not a divisor of n and k is not coprime to n} k.

The programs for A066760, the canonical program `A066760.P15906391362368166906` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066760 has offset 1).

The definition of A066760 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067392, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066760.P15906391362368166906

`1+A067392(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066760

/-- `1+A067392(n+1)-A000203(n+1)` -/
def P15906391362368166906.Spec : Prop :=
  ∀ n, P15906391362368166906.a n = A066760 (n + 1)

theorem P15906391362368166906.correct : P15906391362368166906.Spec := by
  intro n
  simp only [A066760, Nat.add_sub_cancel]

end A066760

/-! ## A066760.P11965815903159318175

`∑[n+1]-A083266(n+1)`
-/

namespace A066760.P11965815903159318175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A083266 (n + 1)

end

end A066760.P11965815903159318175

namespace A066760

/-- `∑[n+1]-A083266(n+1)` -/
def P11965815903159318175.Spec : Prop :=
  ∀ n, P11965815903159318175.a n = A066760 (n + 1)

end A066760

/-! ## A066760.P3210996477560948526

`A395300(n+1)+A381499(n+1)`
-/

namespace A066760.P3210996477560948526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395300 (n + 1) + A381499 (n + 1)

end

end A066760.P3210996477560948526

namespace A066760

/-- `A395300(n+1)+A381499(n+1)` -/
def P3210996477560948526.Spec : Prop :=
  ∀ n, P3210996477560948526.a n = A066760 (n + 1)

end A066760

/-! ## A066760.P722250316176353587

`A024816(n+1)-A109607(n+1)`
-/

namespace A066760.P722250316176353587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - A109607 (n + 1)

end

end A066760.P722250316176353587

namespace A066760

/-- `A024816(n+1)-A109607(n+1)` -/
def P722250316176353587.Spec : Prop :=
  ∀ n, P722250316176353587.a n = A066760 (n + 1)

end A066760

/-! ## A066760.P4995654444659328339

`A308473(n+1)-A048050(n+1)`
-/

namespace A066760.P4995654444659328339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308473 (n + 1) - A048050 (n + 1)

end

end A066760.P4995654444659328339

namespace A066760

/-- `A308473(n+1)-A048050(n+1)` -/
def P4995654444659328339.Spec : Prop :=
  ∀ n, P4995654444659328339.a n = A066760 (n + 1)

end A066760

/-! ## A066760.P10131708924174922896

`A024816(n+1)+1-A023896(n+1)`
-/

namespace A066760.P10131708924174922896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + (1 - A023896 (n + 1))

end

end A066760.P10131708924174922896

namespace A066760

/-- `A024816(n+1)+1-A023896(n+1)` -/
def P10131708924174922896.Spec : Prop :=
  ∀ n, P10131708924174922896.a n = A066760 (n + 1)

end A066760

/-! ## A066760.P18187349644845729028

`A067392(n+1)-(A001065(n+1)+n)`
-/

namespace A066760.P18187349644845729028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067392 (n + 1) - (A001065 (n + 1) + (n : ℤ))

end

end A066760.P18187349644845729028

namespace A066760

/-- `A067392(n+1)-(A001065(n+1)+n)` -/
def P18187349644845729028.Spec : Prop :=
  ∀ n, P18187349644845729028.a n = A066760 (n + 1)

theorem P18187349644845729028.correct : P18187349644845729028.Spec := by
  intro n
  simp only [A066760, Nat.add_sub_cancel, A066760.P18187349644845729028.a, A066760.P15906391362368166906.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A067392, A067392.P7533820900183805373.a, A000217, A000217.P10269402890581615239.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066760

/-! ## A066760.P4267030506091288858

`A024816(n+1)+A067392(n+1)-A000096(n)`
-/

namespace A066760.P4267030506091288858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + (A067392 (n + 1) - A000096 n)

end

end A066760.P4267030506091288858

namespace A066760

/-- `A024816(n+1)+A067392(n+1)-A000096(n)` -/
def P4267030506091288858.Spec : Prop :=
  ∀ n, P4267030506091288858.a n = A066760 (n + 1)

end A066760

/-! ## A066760.P15398387674101161506

`A000217(n)-(A109607(n+1)+A001065(n+1))`
-/

namespace A066760.P15398387674101161506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A109607 (n + 1) + A001065 (n + 1))

end

end A066760.P15398387674101161506

namespace A066760

/-- `A000217(n)-(A109607(n+1)+A001065(n+1))` -/
def P15398387674101161506.Spec : Prop :=
  ∀ n, P15398387674101161506.a n = A066760 (n + 1)

end A066760

/-! ## A066760.P9799327865179905506

`A000217(n+1)-(A109607(n+1)+A000203(n+1))`
-/

namespace A066760.P9799327865179905506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A109607 (n + 1) + A000203 (n + 1))

end

end A066760.P9799327865179905506

namespace A066760

/-- `A000217(n+1)-(A109607(n+1)+A000203(n+1))` -/
def P9799327865179905506.Spec : Prop :=
  ∀ n, P9799327865179905506.a n = A066760 (n + 1)

end A066760

/-! ## A066760.P15945994734627714600

`A023896(n+2)+A308473(n+2)-A083266(n+1)`
-/

namespace A066760.P15945994734627714600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 2) + (A308473 (n + 2) - A083266 (n + 1))

end

end A066760.P15945994734627714600

namespace A066760

/-- `A023896(n+2)+A308473(n+2)-A083266(n+1)` -/
def P15945994734627714600.Spec : Prop :=
  ∀ n, P15945994734627714600.a n = A066760 (n + 1)

end A066760

/-!
# A066761: Number of positive integers of the form (n^2+k^2)/(n-k) for k=1,2,3,4,....,n-1.

The programs for A066761, there is no canonical definition to state claims against.
-/

/-! ## A066761.P2933592092542246054

`A078644(n+2)-(A270417(n+2)+1)`
-/

namespace A066761.P2933592092542246054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 2) - (A270417 (n + 2) + 1)

end

end A066761.P2933592092542246054

/-! ## A066761.P14759148786302013692

`A004273(A078644(n+2))-A055081(n+2)`
-/

namespace A066761.P14759148786302013692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A078644 (n + 2)).toNat - A055081 (n + 2)

end

end A066761.P14759148786302013692

/-! ## A066761.P10858086437187497298

`A055081(n+2)-A005408(A270417(n+2))`
-/

namespace A066761.P10858086437187497298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 2) - A005408 (A270417 (n + 2)).toNat

end

end A066761.P10858086437187497298

/-! ## A066761.P16946122141925457126

`A108920(n+2)`
-/

namespace A066761.P16946122141925457126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108920 (n + 2)

end

end A066761.P16946122141925457126

/-! ## A066761.P2793406570050948088

`A361687(n+2)-1`
-/

namespace A066761.P2793406570050948088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361687 (n + 2) - 1

end

end A066761.P2793406570050948088

/-! ## A066761.P12659884054247822153

`A002837(A361687(n+2))`
-/

namespace A066761.P12659884054247822153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A361687 (n + 2)).toNat

end

end A066761.P12659884054247822153

/-! ## A066761.P2334015357408618897

`A334461(∑[a(n-1)+4])-1` with `a(0)=8, a(1)=10`
-/

namespace A066761.P2334015357408618897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 10] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A066761.P2334015357408618897

/-!
# A066763: Numbers k such that (k, phi(k)) lies on a circle with integral radius centered at the origin, i.e., k^2 + phi(k)^2 is a square.

The programs for A066763, there is no canonical definition to state claims against.
-/

/-! ## A066763.P7152475865654209196

`∩[A124455(n+1), A358219(n+1)]`
-/

namespace A066763.P7152475865654209196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066763.P7152475865654209196

/-!
# A066764: Numbers k such that (k, sigma(k)) lies on a circle with integral radius centered at the origin, i.e., k^2 + sigma(k)^2 is a square.

The programs for A066764, there is no canonical definition to state claims against.
-/

/-! ## A066764.P10555574791412466323

`A178862(A215208(n+1)+1)`
-/

namespace A066764.P10555574791412466323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178862 (A215208 (n + 1) + 1).toNat

end

end A066764.P10555574791412466323

/-!
# A066765: Numbers k such that phi(k) < k/5.

The programs for A066765, there is no canonical definition to state claims against.
-/

/-! ## A066765.P11539511480721156374

`A244052(A327894(n+1))`
-/

namespace A066765.P11539511480721156374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244052 (A327894 (n + 1)).toNat

end

end A066765.P11539511480721156374

/-! ## A066765.P17293292533951021609

`A074969(∑[A007326(n)!])`
-/

namespace A066765.P17293292533951021609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074969 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066765.P17293292533951021609

/-!
# A066767: a(n) = Sum_{k=1..n} sigma(k)*2^(n-k) where sigma(k) = A000203(k) is the sum of divisors of k.

The programs for A066767, the canonical program `A066767.P4691301214717271049` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066767 has offset 1).

The definition of A066767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066767.P4691301214717271049

`∑{d}[n+1, #]+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A066767

/-- `∑{d}[n+1, #]+2*a(n-1)` -/
def P4691301214717271049.Spec : Prop :=
  ∀ n, (P4691301214717271049.a n : ℤ) = A066767 (n + 1)

theorem P4691301214717271049.correct : P4691301214717271049.Spec := by
  intro n
  simp only [A066767, Nat.add_sub_cancel]

end A066767

/-! ## A066767.P15869844439556955137

`2^n*∑[∑{d}[n+1, #]/2^n]`
-/

namespace A066767.P15869844439556955137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066767.P15869844439556955137

namespace A066767

/-- `2^n*∑[∑{d}[n+1, #]/2^n]` -/
def P15869844439556955137.Spec : Prop :=
  ∀ n, P15869844439556955137.a n = (A066767 (n + 1) : ℚ)

end A066767

/-! ## A066767.P5431699970251358

`∑{d}[n+1, #]+a(n-1)/sqrt(1/4)` with `a(0)=1`
-/

namespace A066767.P5431699970251358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) + a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A066767.P5431699970251358

namespace A066767

/-- `∑{d}[n+1, #]+a(n-1)/sqrt(1/4)` -/
def P5431699970251358.Spec : Prop :=
  ∀ n, P5431699970251358.a n = (A066767 (n + 1) : ℝ)

end A066767

/-! ## A066767.P3075995824283342410

`∑{d}[n+1, #]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A066767.P3075995824283342410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + (a (n - 1) + a (n - 1))

end

end A066767.P3075995824283342410

namespace A066767

/-- `∑{d}[n+1, #]+a(n-1)+a(n-1)` -/
def P3075995824283342410.Spec : Prop :=
  ∀ n, (P3075995824283342410.a n : ℤ) = A066767 (n + 1)

theorem P3075995824283342410.correct : P3075995824283342410.Spec := by
  intro n
  simp only [A066767, Nat.add_sub_cancel, A066767.P3075995824283342410.f1, A066767.P3075995824283342410.a, A066767.P4691301214717271049.f1, A066767.P4691301214717271049.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066767

/-! ## A066767.P6021776262734728585

`Δ[A160664(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A066767.P6021776262734728585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A066767.P6021776262734728585

namespace A066767

/-- `Δ[A160664(n)]+2*a(n-1)` -/
def P6021776262734728585.Spec : Prop :=
  ∀ n, P6021776262734728585.a n = A066767 (n + 1)

end A066767

/-!
# A066768: a(n) = Sum_{d|n} binomial(2*d-2,d-1).

The programs for A066768, the canonical program `A066768.P10388036879488056357` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066768 has offset 1).

The definition of A066768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066768.P10388036879488056357

`∑{d}[n+1, A000984(#-1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066768

/-- `∑{d}[n+1, A000984(#-1)]` -/
def P10388036879488056357.Spec : Prop :=
  ∀ n, P10388036879488056357.a n = A066768 (n + 1)

theorem P10388036879488056357.correct : P10388036879488056357.Spec := by
  intro n
  simp only [A066768, Nat.add_sub_cancel]

end A066768

/-! ## A066768.P13741433591281480926

`∑{d}[n+1, A323230(#)-1]`
-/

namespace A066768.P13741433591281480926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A323230 d - 1)

end

end A066768.P13741433591281480926

namespace A066768

/-- `∑{d}[n+1, A323230(#)-1]` -/
def P13741433591281480926.Spec : Prop :=
  ∀ n, P13741433591281480926.a n = A066768 (n + 1)

end A066768

/-! ## A066768.P8162924388225460840

`∑{d}[n+1, #*A120588(#)]`
-/

namespace A066768.P8162924388225460840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A120588 d

end

end A066768.P8162924388225460840

namespace A066768

/-- `∑{d}[n+1, #*A120588(#)]` -/
def P8162924388225460840.Spec : Prop :=
  ∀ n, P8162924388225460840.a n = A066768 (n + 1)

end A066768

/-! ## A066768.P2233723831822886449

`∑{d}[n+1, #*A000108(#-1)]`
-/

namespace A066768.P2233723831822886449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000108 (d - 1)

end

end A066768.P2233723831822886449

namespace A066768

/-- `∑{d}[n+1, #*A000108(#-1)]` -/
def P2233723831822886449.Spec : Prop :=
  ∀ n, P2233723831822886449.a n = A066768 (n + 1)

end A066768

/-! ## A066768.P9186696867608744233

`∑{d}[n+1, A000005(#)*A134764((n+1)/#)]`
-/

namespace A066768.P9186696867608744233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A134764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066768.P9186696867608744233

namespace A066768

/-- `∑{d}[n+1, A000005(#)*A134764((n+1)/#)]` -/
def P9186696867608744233.Spec : Prop :=
  ∀ n, P9186696867608744233.a n = A066768 (n + 1)

end A066768

/-! ## A066768.P8165532257315717775

`∑{d}[n+1, A001511(#)*A129369((n+1)/#-1)]`
-/

namespace A066768.P8165532257315717775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A129369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A066768.P8165532257315717775

namespace A066768

/-- `∑{d}[n+1, A001511(#)*A129369((n+1)/#-1)]` -/
def P8165532257315717775.Spec : Prop :=
  ∀ n, P8165532257315717775.a n = A066768 (n + 1)

end A066768

/-! ## A066768.P3959894515431336519

`∑{d}[n+1, A007318(4*C(#, 2))]`
-/

namespace A066768.P3959894515431336519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (4 * Nat.choose d 2)

end

end A066768.P3959894515431336519

namespace A066768

/-- `∑{d}[n+1, A007318(4*C(#, 2))]` -/
def P3959894515431336519.Spec : Prop :=
  ∀ n, P3959894515431336519.a n = A066768 (n + 1)

end A066768

/-! ## A066768.P6274505920080734793

`∑{d}[n+1, A191528(#²)]`
-/

namespace A066768.P6274505920080734793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191528 (d ^ 2)

end

end A066768.P6274505920080734793

namespace A066768

/-- `∑{d}[n+1, A191528(#²)]` -/
def P6274505920080734793.Spec : Prop :=
  ∀ n, P6274505920080734793.a n = A066768 (n + 1)

end A066768

/-!
# A066769: a(n) = Sum_{d|n} d*Fibonacci(n/d).

The programs for A066769, the canonical program `A066769.P16027546148527839639` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066769 has offset 1).

The definition of A066769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066769.P16027546148527839639

`∑{d}[n+1, #*A000045((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066769

/-- `∑{d}[n+1, #*A000045((n+1)/#)]` -/
def P16027546148527839639.Spec : Prop :=
  ∀ n, P16027546148527839639.a n = A066769 (n + 1)

theorem P16027546148527839639.correct : P16027546148527839639.Spec := by
  intro n
  simp only [A066769, Nat.add_sub_cancel]

end A066769

/-! ## A066769.P5759767954518866715

`∑{d}[n+1, A034748(#)]`
-/

namespace A066769.P5759767954518866715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034748 d

end

end A066769.P5759767954518866715

namespace A066769

/-- `∑{d}[n+1, A034748(#)]` -/
def P5759767954518866715.Spec : Prop :=
  ∀ n, P5759767954518866715.a n = A066769 (n + 1)

end A066769

/-! ## A066769.P16313904725546825137

`∑{d}[n+1, A000010(#)*A007435((n+1)/#)]`
-/

namespace A066769.P16313904725546825137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066769.P16313904725546825137

namespace A066769

/-- `∑{d}[n+1, A000010(#)*A007435((n+1)/#)]` -/
def P16313904725546825137.Spec : Prop :=
  ∀ n, P16313904725546825137.a n = A066769 (n + 1)

end A066769

/-! ## A066769.P10207003988654233608

`∑{d}[n+1, A000203(#)*A007436((n+1)/#)]`
-/

namespace A066769.P10207003988654233608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A007436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066769.P10207003988654233608

namespace A066769

/-- `∑{d}[n+1, A000203(#)*A007436((n+1)/#)]` -/
def P10207003988654233608.Spec : Prop :=
  ∀ n, P10207003988654233608.a n = A066769 (n + 1)

end A066769

/-! ## A066769.P18073916967398809695

`∑{d}[n+1, A008683(#)*A034747((n+1)/#)]`
-/

namespace A066769.P18073916967398809695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066769.P18073916967398809695

namespace A066769

/-- `∑{d}[n+1, A008683(#)*A034747((n+1)/#)]` -/
def P18073916967398809695.Spec : Prop :=
  ∀ n, P18073916967398809695.a n = A066769 (n + 1)

end A066769

/-! ## A066769.P12882522511502687793

`∑{d}[n+1, A002131(#)*A108700((n+1)/#)]`
-/

namespace A066769.P12882522511502687793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A108700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066769.P12882522511502687793

namespace A066769

/-- `∑{d}[n+1, A002131(#)*A108700((n+1)/#)]` -/
def P12882522511502687793.Spec : Prop :=
  ∀ n, P12882522511502687793.a n = A066769 (n + 1)

end A066769

/-! ## A066769.P11620205298853289025

`∑{d}[n+1, A034734(#)*A349569((n+1)/#)]`
-/

namespace A066769.P11620205298853289025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034734 d * A349569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066769.P11620205298853289025

namespace A066769

/-- `∑{d}[n+1, A034734(#)*A349569((n+1)/#)]` -/
def P11620205298853289025.Spec : Prop :=
  ∀ n, P11620205298853289025.a n = A066769 (n + 1)

end A066769

/-!
# A066770: a(n) = 5^n*sin(2n*arctan(1/2)) or numerator of tan(2n*arctan(1/2)).

The programs for A066770, the canonical program `A066770.P15272350832997921281` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066770 has offset 1).

The definition of A066770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066770.P15272350832997921281

`6*a(n-1)-25*a(n-2)` with `a(0)=4, a(1)=24`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A066770

/-- `6*a(n-1)-25*a(n-2)` -/
def P15272350832997921281.Spec : Prop :=
  ∀ n, P15272350832997921281.a n = A066770 (n + 1)

theorem P15272350832997921281.correct : P15272350832997921281.Spec := by
  intro n
  simp only [A066770, Nat.add_sub_cancel]

end A066770

/-! ## A066770.P10119170555332801177

`ogf(4/(1-6x+25x^2))`
-/

namespace A066770.P10119170555332801177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -6, 25] n

end

end A066770.P10119170555332801177

namespace A066770

/-- `ogf(4/(1-6x+25x^2))` -/
def P10119170555332801177.Spec : Prop :=
  ∀ n, P10119170555332801177.a n = A066770 (n + 1)

end A066770

/-! ## A066770.P6623085671463740418

`A099456(Δ[n²])`
-/

namespace A066770.P6623085671463740418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066770.P6623085671463740418

namespace A066770

/-- `A099456(Δ[n²])` -/
def P6623085671463740418.Spec : Prop :=
  ∀ n, P6623085671463740418.a n = A066770 (n + 1)

end A066770

/-! ## A066770.P816564615903993453

`4*A188599(n+1)`
-/

namespace A066770.P816564615903993453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A188599 (n + 1)

end

end A066770.P816564615903993453

namespace A066770

/-- `4*A188599(n+1)` -/
def P816564615903993453.Spec : Prop :=
  ∀ n, P816564615903993453.a n = A066770 (n + 1)

end A066770

/-! ## A066770.P3897302956894006062

`∑[4*Δ[A188599(n)]]`
-/

namespace A066770.P3897302956894006062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188599 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066770.P3897302956894006062

namespace A066770

/-- `∑[4*Δ[A188599(n)]]` -/
def P3897302956894006062.Spec : Prop :=
  ∀ n, P3897302956894006062.a n = A066770 (n + 1)

end A066770

/-! ## A066770.P18249032595438273630

`Δ[Δ[A099456(n)]]*A099456(n)`
-/

namespace A066770.P18249032595438273630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A099456 n

end

end A066770.P18249032595438273630

namespace A066770

/-- `Δ[Δ[A099456(n)]]*A099456(n)` -/
def P18249032595438273630.Spec : Prop :=
  ∀ n, P18249032595438273630.a n = A066770 (n + 1)

end A066770

/-! ## A066770.P11913561183268815171

`A006496(2*(n+1))*A033999(n)`
-/

namespace A066770.P11913561183268815171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 (2 * (n + 1)) * A033999 n

end

end A066770.P11913561183268815171

namespace A066770

/-- `A006496(2*(n+1))*A033999(n)` -/
def P11913561183268815171.Spec : Prop :=
  ∀ n, P11913561183268815171.a n = A066770 (n + 1)

end A066770

/-! ## A066770.P12107558946491565909

`2*A099456(n)*A139011(n+1)`
-/

namespace A066770.P12107558946491565909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099456 n * A139011 (n + 1)

end

end A066770.P12107558946491565909

namespace A066770

/-- `2*A099456(n)*A139011(n+1)` -/
def P12107558946491565909.Spec : Prop :=
  ∀ n, P12107558946491565909.a n = A066770 (n + 1)

end A066770

/-! ## A066770.P14453697203923831855

`A006496(2*(n+1))*A056594(2*n)`
-/

namespace A066770.P14453697203923831855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 (2 * (n + 1)) * A056594 (2 * n)

end

end A066770.P14453697203923831855

namespace A066770

/-- `A006496(2*(n+1))*A056594(2*n)` -/
def P14453697203923831855.Spec : Prop :=
  ∀ n, P14453697203923831855.a n = A066770 (n + 1)

end A066770

/-! ## A066770.P5552205022726977366

`A102486(2*n+1)-A139011(2*n+1)`
-/

namespace A066770.P5552205022726977366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102486 (2 * n + 1) - A139011 (2 * n + 1)

end

end A066770.P5552205022726977366

namespace A066770

/-- `A102486(2*n+1)-A139011(2*n+1)` -/
def P5552205022726977366.Spec : Prop :=
  ∀ n, P5552205022726977366.a n = A066770 (n + 1)

end A066770

/-!
# A066771: a(n) = 5^n*cos(2*n*arctan(1/2)) or denominator of tan(2*n*arctan(1/2)).

The programs for A066771, the canonical program `A066771.P3131167813611666749` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066771 has offset 0).

The definition of A066771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066771.P3131167813611666749

`6*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A066771

/-- `6*a(n-1)-25*a(n-2)` -/
def P3131167813611666749.Spec : Prop :=
  ∀ n, P3131167813611666749.a n = A066771 n

theorem P3131167813611666749.correct : P3131167813611666749.Spec := by
  intro n
  simp only [A066771]

end A066771

/-! ## A066771.P10985083663486788517

`A139011(2*n)`
-/

namespace A066771.P10985083663486788517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 (2 * n)

end

end A066771.P10985083663486788517

namespace A066771

/-- `A139011(2*n)` -/
def P10985083663486788517.Spec : Prop :=
  ∀ n, P10985083663486788517.a n = A066771 n

end A066771

/-! ## A066771.P17479854755325307418

`A139011(A005843(n))^A000038(n)!`
-/

namespace A066771.P17479854755325307418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 (A005843 n).toNat ^ Nat.factorial (A000038 n).toNat

end

end A066771.P17479854755325307418

namespace A066771

/-- `A139011(A005843(n))^A000038(n)!` -/
def P17479854755325307418.Spec : Prop :=
  ∀ n, P17479854755325307418.a n = A066771 n

end A066771

/-! ## A066771.P8273383083335003363

`A139011(A005843(n))+A000038(n+1)`
-/

namespace A066771.P8273383083335003363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 (A005843 n).toNat + A000038 (n + 1)

end

end A066771.P8273383083335003363

namespace A066771

/-- `A139011(A005843(n))+A000038(n+1)` -/
def P8273383083335003363.Spec : Prop :=
  ∀ n, P8273383083335003363.a n = A066771 n

end A066771

/-! ## A066771.P11736214177330261087

`A139011(A005843(n))+C(2, A000203(n+2))`
-/

namespace A066771.P11736214177330261087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 (A005843 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A066771.P11736214177330261087

namespace A066771

/-- `A139011(A005843(n))+C(2, A000203(n+2))` -/
def P11736214177330261087.Spec : Prop :=
  ∀ n, P11736214177330261087.a n = A066771 n

end A066771

/-! ## A066771.P17830953495158131860

`A139011(A005843(n))+A077896(A046555(n+1))`
-/

namespace A066771.P17830953495158131860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 (A005843 n).toNat + A077896 (A046555 (n + 1)).toNat

end

end A066771.P17830953495158131860

namespace A066771

/-- `A139011(A005843(n))+A077896(A046555(n+1))` -/
def P17830953495158131860.Spec : Prop :=
  ∀ n, P17830953495158131860.a n = A066771 n

end A066771

/-! ## A066771.P5740997685271243046

`ogf((1-3x)/(1-6x+25x^2))`
-/

namespace A066771.P5740997685271243046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, 25] n

end

end A066771.P5740997685271243046

namespace A066771

/-- `ogf((1-3x)/(1-6x+25x^2))` -/
def P5740997685271243046.Spec : Prop :=
  ∀ n, P5740997685271243046.a n = A066771 n

end A066771

/-! ## A066771.P10673106489504806068

`5^n*cos(n*acos(3/5))`
-/

namespace A066771.P10673106489504806068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℝ) * Real.cos ((n : ℝ) * Real.arccos ((3 : ℚ) / 5 : ℝ))

end

end A066771.P10673106489504806068

namespace A066771

/-- `5^n*cos(n*acos(3/5))` -/
def P10673106489504806068.Spec : Prop :=
  ∀ n, P10673106489504806068.a n = (A066771 n : ℝ)

end A066771

/-! ## A066771.P10231445847864723170

`A006495(2*n)*A033999(n)`
-/

namespace A066771.P10231445847864723170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 (2 * n) * A033999 n

end

end A066771.P10231445847864723170

namespace A066771

/-- `A006495(2*n)*A033999(n)` -/
def P10231445847864723170.Spec : Prop :=
  ∀ n, P10231445847864723170.a n = A066771 n

end A066771

/-! ## A066771.P5028317422025759579

`(1-A010673(n))*A006495(2*n)`
-/

namespace A066771.P5028317422025759579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A006495 (2 * n)

end

end A066771.P5028317422025759579

namespace A066771

/-- `(1-A010673(n))*A006495(2*n)` -/
def P5028317422025759579.Spec : Prop :=
  ∀ n, P5028317422025759579.a n = A066771 n

end A066771

/-! ## A066771.P9713992721852771965

`A006495(2*n)*A056594(2*n)`
-/

namespace A066771.P9713992721852771965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 (2 * n) * A056594 (2 * n)

end

end A066771.P9713992721852771965

namespace A066771

/-- `A006495(2*n)*A056594(2*n)` -/
def P9713992721852771965.Spec : Prop :=
  ∀ n, P9713992721852771965.a n = A066771 n

end A066771

/-! ## A066771.P2212289983231575494

`Δ[A188599(n)]-2*A188599(n)`
-/

namespace A066771.P2212289983231575494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A188599 n

end

end A066771.P2212289983231575494

namespace A066771

/-- `Δ[A188599(n)]-2*A188599(n)` -/
def P2212289983231575494.Spec : Prop :=
  ∀ n, P2212289983231575494.a n = A066771 n

end A066771

/-! ## A066771.P18225600866493205494

`A102486(2*n)-A099456(2*n)`
-/

namespace A066771.P18225600866493205494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102486 (2 * n) - A099456 (2 * n)

end

end A066771.P18225600866493205494

namespace A066771

/-- `A102486(2*n)-A099456(2*n)` -/
def P18225600866493205494.Spec : Prop :=
  ∀ n, P18225600866493205494.a n = A066771 n

end A066771

/-!
# A066773: Smallest number which requires n^2 steps in the 3x+1 problem.

The programs for A066773, there is no canonical definition to state claims against.
-/

/-! ## A066773.P7017877612365175145

`A033491(n²)`
-/

namespace A066773.P7017877612365175145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (n ^ 2)

end

end A066773.P7017877612365175145

/-! ## A066773.P5481153922085844043

`and(-1, A033491(A000290(n)))`
-/

namespace A066773.P5481153922085844043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A033491 (A000290 n).toNat)

end

end A066773.P5481153922085844043

/-! ## A066773.P8529676458943590915

`A033491(A253909(n))-floor(acot(n))`
-/

namespace A066773.P8529676458943590915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A253909 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A066773.P8529676458943590915

/-! ## A066773.P14179871770981771895

`A033491(A000290(n)/gcd(n, n+1))/gcd(n, n+1)`
-/

namespace A066773.P14179871770981771895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033491 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (Nat.gcd n (n + 1) : ℚ))).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A066773.P14179871770981771895

/-! ## A066773.P484739001164759389

`A033491(A000290(n))*A304042(n)`
-/

namespace A066773.P484739001164759389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A000290 n).toNat * A304042 n

end

end A066773.P484739001164759389

/-!
# A066774: A066728(a(n))=3.

The programs for A066774, the canonical program `A066774.P15152739577050822243` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066774 has offset 1).

The definition of A066774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066774.P633885888862250218

`eq[4, A129296(n+1)]`
-/

namespace A066774.P633885888862250218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066774.P633885888862250218

namespace A066774

/-- `eq[4, A129296(n+1)]` -/
def P633885888862250218.Spec : Prop :=
  ∀ n, (P633885888862250218.a n : ℤ) = A066774 (n + 1)

end A066774

/-! ## A066774.P15152739577050822243

`eq[4, A032741(n)+A023645(n+2)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066774

/-- `eq[4, A032741(n)+A023645(n+2)]` -/
def P15152739577050822243.Spec : Prop :=
  ∀ n, (P15152739577050822243.a n : ℤ) = A066774 (n + 1)

theorem P15152739577050822243.correct : P15152739577050822243.Spec := by
  intro n
  simp only [A066774, Nat.add_sub_cancel]

end A066774

/-! ## A066774.P17607194780896903782

`eq[9, ∏{e}[A005563(n), #+1]+1]`
-/

namespace A066774.P17607194780896903782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066774.P17607194780896903782

namespace A066774

/-- `eq[9, ∏{e}[A005563(n), #+1]+1]` -/
def P17607194780896903782.Spec : Prop :=
  ∀ n, (P17607194780896903782.a n : ℤ) = A066774 (n + 1)

end A066774

/-! ## A066774.P4468306536289295452

`eq[8, A000005(abs(2-(n+1)²)+1)]`
-/

namespace A066774.P4468306536289295452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|2 - ((n + 1) ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066774.P4468306536289295452

namespace A066774

/-- `eq[8, A000005(abs(2-(n+1)²)+1)]` -/
def P4468306536289295452.Spec : Prop :=
  ∀ n, (P4468306536289295452.a n : ℤ) = A066774 (n + 1)

end A066774

/-! ## A066774.P16784356004103936970

`eq[4, A000005(A132411(n+1))/2]`
-/

namespace A066774.P16784356004103936970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A132411 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A066774.P16784356004103936970

namespace A066774

/-- `eq[4, A000005(A132411(n+1))/2]` -/
def P16784356004103936970.Spec : Prop :=
  ∀ n, (P16784356004103936970.a n : ℤ) = A066774 (n + 1)

end A066774

/-! ## A066774.P11392372934695177291

`eq[1, A000005(A106230(n+2))-7]`
-/

namespace A066774.P11392372934695177291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A106230 (n + 2)).toNat - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066774.P11392372934695177291

namespace A066774

/-- `eq[1, A000005(A106230(n+2))-7]` -/
def P11392372934695177291.Spec : Prop :=
  ∀ n, (P11392372934695177291.a n : ℤ) = A066774 (n + 1)

end A066774

/-!
# A066775: Primes p such that 2*p^2 is not in A066721.

The programs for A066775, there is no canonical definition to state claims against.
-/

/-! ## A066775.P1491420377728489543

`A133954(A299988(n+2)-2)`
-/

namespace A066775.P1491420377728489543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133954 (A299988 (n + 2) - 2).toNat

end

end A066775.P1491420377728489543

/-!
# A066776: Numbers k such that A043347(k) is a prime.

The programs for A066776, there is no canonical definition to state claims against.
-/

/-! ## A066776.P16542411067127077497

`((n+1)*∑[or(1, n)])^floor(n/4)+n`
-/

namespace A066776.P16542411067127077497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) + (n : ℚ)

end

end A066776.P16542411067127077497

/-!
# A066777: First differences of Stern's sequence A005230.

The programs for A066777, the canonical program `A066777.P8976218830756872695` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066777 has offset 0).

The definition of A066777 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005230, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066777.P8976218830756872695

`A005230(n+2)-A005230(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066777

/-- `A005230(n+2)-A005230(n+1)` -/
def P8976218830756872695.Spec : Prop :=
  ∀ n, P8976218830756872695.a n = A066777 n

theorem P8976218830756872695.correct : P8976218830756872695.Spec := by
  intro n
  simp only [A066777]

end A066777

/-! ## A066777.P15046418607955170836

`A005318(n)-A005318(A083920(n))`
-/

namespace A066777.P15046418607955170836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n - A005318 (A083920 n).toNat

end

end A066777.P15046418607955170836

namespace A066777

/-- `A005318(n)-A005318(A083920(n))` -/
def P15046418607955170836.Spec : Prop :=
  ∀ n, P15046418607955170836.a n = A066777 n

end A066777

/-! ## A066777.P1784936531937031054

`A005318(n)-A005318(n-A003056(n))`
-/

namespace A066777.P1784936531937031054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n - A005318 ((n : ℤ) - A003056 n).toNat

end

end A066777.P1784936531937031054

namespace A066777

/-- `A005318(n)-A005318(n-A003056(n))` -/
def P1784936531937031054.Spec : Prop :=
  ∀ n, P1784936531937031054.a n = A066777 n

end A066777

/-! ## A066777.P544560787708571158

`A005318(n)-A005318(A122797(n+1)-1)`
-/

namespace A066777.P544560787708571158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n - A005318 (A122797 (n + 1) - 1).toNat

end

end A066777.P544560787708571158

namespace A066777

/-- `A005318(n)-A005318(A122797(n+1)-1)` -/
def P544560787708571158.Spec : Prop :=
  ∀ n, P544560787708571158.a n = A066777 n

end A066777

/-! ## A066777.P6526412225646284829

`Δ[A005230(n+1)]`
-/

namespace A066777.P6526412225646284829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066777.P6526412225646284829

namespace A066777

/-- `Δ[A005230(n+1)]` -/
def P6526412225646284829.Spec : Prop :=
  ∀ n, P6526412225646284829.a n = A066777 n

theorem P6526412225646284829.correct : P6526412225646284829.Spec := by
  intro n
  simp only [A066777, Nat.add_sub_cancel, A066777.P6526412225646284829.f1, A066777.P6526412225646284829.a, A066777.P8976218830756872695.a, SequenceMachineLib.memo_apply]

end A066777

/-! ## A066777.P13596725531064417359

`Δ[Δ[A005318(n)]]`
-/

namespace A066777.P13596725531064417359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066777.P13596725531064417359

namespace A066777

/-- `Δ[Δ[A005318(n)]]` -/
def P13596725531064417359.Spec : Prop :=
  ∀ n, P13596725531064417359.a n = A066777 n

theorem P13596725531064417359.correct : P13596725531064417359.Spec := by
  intro n
  simp only [A066777, Nat.add_sub_cancel, A066777.P13596725531064417359.f2, A066777.P13596725531064417359.f1, A066777.P13596725531064417359.a, A066777.P8976218830756872695.a, A005230, A005230.P10896589318031929858.f1, A005230.P10896589318031929858.a, A005318, A005318.P4026112082600084822.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A066777

/-! ## A066777.P5621133034676847457

`A005230(n+2)-A096858(A000124(n))`
-/

namespace A066777.P5621133034676847457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 2) - A096858 (A000124 n).toNat

end

end A066777.P5621133034676847457

namespace A066777

/-- `A005230(n+2)-A096858(A000124(n))` -/
def P5621133034676847457.Spec : Prop :=
  ∀ n, P5621133034676847457.a n = A066777 n

end A066777

/-! ## A066777.P4629301093286762119

`Δ[A096858(∑[n]+1)]`
-/

namespace A066777.P4629301093286762119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066777.P4629301093286762119

namespace A066777

/-- `Δ[A096858(∑[n]+1)]` -/
def P4629301093286762119.Spec : Prop :=
  ∀ n, P4629301093286762119.a n = A066777 n

end A066777

/-!
# A066778: a(n) = Sum_{i=1..n} floor((3/2)^i).

The programs for A066778, the canonical program `A066778.P6510944497203602289` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066778 has offset 1).

The definition of A066778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066778.P6510944497203602289

`∑[floor((3/2)^(n+1))]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A066778

/-- `∑[floor((3/2)^(n+1))]` -/
def P6510944497203602289.Spec : Prop :=
  ∀ n, P6510944497203602289.a n = A066778 (n + 1)

theorem P6510944497203602289.correct : P6510944497203602289.Spec := by
  intro n
  simp only [A066778, Nat.add_sub_cancel]

end A066778

/-! ## A066778.P7866793134509350816

`floor(a(n-1)+(3/2)^(n+1))` with `a(0)=1`
-/

namespace A066778.P7866793134509350816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((3 : ℚ) / 2) ^ (n + 1)⌋

end

end A066778.P7866793134509350816

namespace A066778

/-- `floor(a(n-1)+(3/2)^(n+1))` -/
def P7866793134509350816.Spec : Prop :=
  ∀ n, P7866793134509350816.a n = A066778 (n + 1)

end A066778

/-! ## A066778.P9931049808552402812

`∑[A259796(n+1)]-2*(n+1)`
-/

namespace A066778.P9931049808552402812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * (n + 1) : ℤ)

end

end A066778.P9931049808552402812

namespace A066778

/-- `∑[A259796(n+1)]-2*(n+1)` -/
def P9931049808552402812.Spec : Prop :=
  ∀ n, P9931049808552402812.a n = A066778 (n + 1)

end A066778

/-! ## A066778.P4577592270125013304

`lcm(∑[A002379(n+1)], A033999(n))`
-/

namespace A066778.P4577592270125013304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A066778.P4577592270125013304

namespace A066778

/-- `lcm(∑[A002379(n+1)], A033999(n))` -/
def P4577592270125013304.Spec : Prop :=
  ∀ n, (P4577592270125013304.a n : ℤ) = A066778 (n + 1)

end A066778

/-! ## A066778.P559592159000522778

`∑[A242738(n+1)]-∑[A242734(n+1)]`
-/

namespace A066778.P559592159000522778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A066778.P559592159000522778

namespace A066778

/-- `∑[A242738(n+1)]-∑[A242734(n+1)]` -/
def P559592159000522778.Spec : Prop :=
  ∀ n, P559592159000522778.a n = A066778 (n + 1)

end A066778

/-! ## A066778.P6704738537625686043

`A146076(2*n+1)+∑[A002379(n+1)]`
-/

namespace A066778.P6704738537625686043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066778.P6704738537625686043

namespace A066778

/-- `A146076(2*n+1)+∑[A002379(n+1)]` -/
def P6704738537625686043.Spec : Prop :=
  ∀ n, P6704738537625686043.a n = A066778 (n + 1)

end A066778

/-! ## A066778.P166800601375782920

`∑[A060692(n+1)]-∑[A002380(n+1)]`
-/

namespace A066778.P166800601375782920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A066778.P166800601375782920

namespace A066778

/-- `∑[A060692(n+1)]-∑[A002380(n+1)]` -/
def P166800601375782920.Spec : Prop :=
  ∀ n, P166800601375782920.a n = A066778 (n + 1)

end A066778

/-! ## A066778.P2727046254493780056

`∑[A002379(n+1)]%A344100(n+2)`
-/

namespace A066778.P2727046254493780056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A344100 (n + 2))

end

end A066778.P2727046254493780056

namespace A066778

/-- `∑[A002379(n+1)]%A344100(n+2)` -/
def P2727046254493780056.Spec : Prop :=
  ∀ n, P2727046254493780056.a n = A066778 (n + 1)

end A066778

/-!
# A066779: Sum of squarefree numbers <= n.

The programs for A066779, the canonical program `A066779.P3857775328897892843` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066779 has offset 1).

The definition of A066779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066779.P3857775328897892843

`∑[C(∏{p}[n+1, #], n)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A066779

/-- `∑[C(∏{p}[n+1, #], n)]` -/
def P3857775328897892843.Spec : Prop :=
  ∀ n, (P3857775328897892843.a n : ℤ) = A066779 (n + 1)

theorem P3857775328897892843.correct : P3857775328897892843.Spec := by
  intro n
  simp only [A066779, Nat.add_sub_cancel]

end A066779

/-! ## A066779.P8270143512835926571

`∑[C(n+1, n*∏{e}[n+1, #])]`
-/

namespace A066779.P8270143512835926571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (n * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P8270143512835926571

namespace A066779

/-- `∑[C(n+1, n*∏{e}[n+1, #])]` -/
def P8270143512835926571.Spec : Prop :=
  ∀ n, (P8270143512835926571.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P18318783294986036276

`∑[C(n+1, n^∏{e}[n+1, #])]`
-/

namespace A066779.P18318783294986036276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (n ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P18318783294986036276

namespace A066779

/-- `∑[C(n+1, n^∏{e}[n+1, #])]` -/
def P18318783294986036276.Spec : Prop :=
  ∀ n, (P18318783294986036276.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P7977649637157925703

`∑[abs(A055615(n+1))]`
-/

namespace A066779.P7977649637157925703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P7977649637157925703

namespace A066779

/-- `∑[abs(A055615(n+1))]` -/
def P7977649637157925703.Spec : Prop :=
  ∀ n, P7977649637157925703.a n = A066779 (n + 1)

end A066779

/-! ## A066779.P18083414322898716407

`∑[abs(A140700(n+1))]`
-/

namespace A066779.P18083414322898716407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140700 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P18083414322898716407

namespace A066779

/-- `∑[abs(A140700(n+1))]` -/
def P18083414322898716407.Spec : Prop :=
  ∀ n, P18083414322898716407.a n = A066779 (n + 1)

end A066779

/-! ## A066779.P15991123615380282121

`∑[sqrt(abs(A334657(n+1)))]`
-/

namespace A066779.P15991123615380282121
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|A334657 (n + 1)| : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P15991123615380282121

namespace A066779

/-- `∑[sqrt(abs(A334657(n+1)))]` -/
def P15991123615380282121.Spec : Prop :=
  ∀ n, P15991123615380282121.a n = (A066779 (n + 1) : ℝ)

end A066779

/-! ## A066779.P15640300408553791855

`∑[C(A007913(n+1), n)]`
-/

namespace A066779.P15640300408553791855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007913 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P15640300408553791855

namespace A066779

/-- `∑[C(A007913(n+1), n)]` -/
def P15640300408553791855.Spec : Prop :=
  ∀ n, (P15640300408553791855.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P6352690449777111956

`∑[C(A007947(n+1), n)]`
-/

namespace A066779.P6352690449777111956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007947 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P6352690449777111956

namespace A066779

/-- `∑[C(A007947(n+1), n)]` -/
def P6352690449777111956.Spec : Prop :=
  ∀ n, (P6352690449777111956.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P2738373932342986246

`∑[C(A019530(n+1), n)]`
-/

namespace A066779.P2738373932342986246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A019530 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P2738373932342986246

namespace A066779

/-- `∑[C(A019530(n+1), n)]` -/
def P2738373932342986246.Spec : Prop :=
  ∀ n, (P2738373932342986246.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P11755737291368284963

`∑[C(A055231(n+1), n)]`
-/

namespace A066779.P11755737291368284963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055231 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P11755737291368284963

namespace A066779

/-- `∑[C(A055231(n+1), n)]` -/
def P11755737291368284963.Spec : Prop :=
  ∀ n, (P11755737291368284963.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P3513370637505953268

`∑[C(A182938(n+1), n)]`
-/

namespace A066779.P3513370637505953268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182938 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P3513370637505953268

namespace A066779

/-- `∑[C(A182938(n+1), n)]` -/
def P3513370637505953268.Spec : Prop :=
  ∀ n, (P3513370637505953268.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P10680677208575195384

`∑[C(A336965(n+1), n)]`
-/

namespace A066779.P10680677208575195384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336965 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P10680677208575195384

namespace A066779

/-- `∑[C(A336965(n+1), n)]` -/
def P10680677208575195384.Spec : Prop :=
  ∀ n, (P10680677208575195384.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P11774313349207762693

`∑[n+1-A105570(n+1)]`
-/

namespace A066779.P11774313349207762693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A105570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P11774313349207762693

namespace A066779

/-- `∑[n+1-A105570(n+1)]` -/
def P11774313349207762693.Spec : Prop :=
  ∀ n, P11774313349207762693.a n = A066779 (n + 1)

end A066779

/-! ## A066779.P403798819714992588

`∑[n+1]-A294246(n+1)`
-/

namespace A066779.P403798819714992588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294246 (n + 1)

end

end A066779.P403798819714992588

namespace A066779

/-- `∑[n+1]-A294246(n+1)` -/
def P403798819714992588.Spec : Prop :=
  ∀ n, P403798819714992588.a n = A066779 (n + 1)

end A066779

/-! ## A066779.P2939966044083510859

`∑[(n+1)*A008966(n+1)]`
-/

namespace A066779.P2939966044083510859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P2939966044083510859

namespace A066779

/-- `∑[(n+1)*A008966(n+1)]` -/
def P2939966044083510859.Spec : Prop :=
  ∀ n, P2939966044083510859.a n = A066779 (n + 1)

end A066779

/-! ## A066779.P129517871811402537

`∑[lcm(n+1, A008683(n+1))]`
-/

namespace A066779.P129517871811402537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A008683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P129517871811402537

namespace A066779

/-- `∑[lcm(n+1, A008683(n+1))]` -/
def P129517871811402537.Spec : Prop :=
  ∀ n, (P129517871811402537.a n : ℤ) = A066779 (n + 1)

end A066779

/-! ## A066779.P13398523817894253536

`∑[(n+1)*A069158(n+1)²]`
-/

namespace A066779.P13398523817894253536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069158 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P13398523817894253536

namespace A066779

/-- `∑[(n+1)*A069158(n+1)²]` -/
def P13398523817894253536.Spec : Prop :=
  ∀ n, P13398523817894253536.a n = A066779 (n + 1)

end A066779

/-! ## A066779.P4014163423076418333

`∑[(n+1)*A080323(n+1)²]`
-/

namespace A066779.P4014163423076418333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080323 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P4014163423076418333

namespace A066779

/-- `∑[(n+1)*A080323(n+1)²]` -/
def P4014163423076418333.Spec : Prop :=
  ∀ n, P4014163423076418333.a n = A066779 (n + 1)

end A066779

/-! ## A066779.P730795042191134575

`∑[(n+1)*A157657(n+1)²]`
-/

namespace A066779.P730795042191134575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A157657 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P730795042191134575

namespace A066779

/-- `∑[(n+1)*A157657(n+1)²]` -/
def P730795042191134575.Spec : Prop :=
  ∀ n, P730795042191134575.a n = A066779 (n + 1)

end A066779

/-! ## A066779.P5097253857199525524

`∑[(n+1)*A359155(n+1)²]`
-/

namespace A066779.P5097253857199525524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359155 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P5097253857199525524

namespace A066779

/-- `∑[(n+1)*A359155(n+1)²]` -/
def P5097253857199525524.Spec : Prop :=
  ∀ n, P5097253857199525524.a n = A066779 (n + 1)

end A066779

/-!
# A066780: a(n) = Product_{k=1..n} sigma(k); sigma(k) is the sum of the positive divisors of n.

The programs for A066780, the canonical program `A066780.P4697846330129271616` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066780 has offset 1).

The definition of A066780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066780.P4697846330129271616

`a(n-1)*A000203(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066780

/-- `a(n-1)*A000203(n+1)` -/
def P4697846330129271616.Spec : Prop :=
  ∀ n, P4697846330129271616.a n = A066780 (n + 1)

theorem P4697846330129271616.correct : P4697846330129271616.Spec := by
  intro n
  simp only [A066780, Nat.add_sub_cancel]

end A066780

/-! ## A066780.P11835715275821682285

`∏[∑{d}[n+1, #]]`
-/

namespace A066780.P11835715275821682285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066780.P11835715275821682285

namespace A066780

/-- `∏[∑{d}[n+1, #]]` -/
def P11835715275821682285.Spec : Prop :=
  ∀ n, (P11835715275821682285.a n : ℤ) = A066780 (n + 1)

end A066780

/-! ## A066780.P15682842643980795747

`exp(∑[log(∑{d}[n+1, #])])`
-/

namespace A066780.P15682842643980795747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066780.P15682842643980795747

namespace A066780

/-- `exp(∑[log(∑{d}[n+1, #])])` -/
def P15682842643980795747.Spec : Prop :=
  ∀ n, P15682842643980795747.a n = (A066780 (n + 1) : ℝ)

end A066780

/-! ## A066780.P5922802933873363566

`∏[log(∏{d}[n+1, exp(#)])]`
-/

namespace A066780.P5922802933873363566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ d ∈ Nat.divisors (f2 n), Real.exp (d : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066780.P5922802933873363566

namespace A066780

/-- `∏[log(∏{d}[n+1, exp(#)])]` -/
def P5922802933873363566.Spec : Prop :=
  ∀ n, P5922802933873363566.a n = (A066780 (n + 1) : ℝ)

end A066780

/-! ## A066780.P2970958326679756898

`2^∑[log2(∑{d}[n+1, #])]`
-/

namespace A066780.P2970958326679756898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066780.P2970958326679756898

namespace A066780

/-- `2^∑[log2(∑{d}[n+1, #])]` -/
def P2970958326679756898.Spec : Prop :=
  ∀ n, P2970958326679756898.a n = (A066780 (n + 1) : ℝ)

end A066780

/-! ## A066780.P9219887793250692321

`a(n-1)*∑{d}[n+1, #]` with `a(0)=1`
-/

namespace A066780.P9219887793250692321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A066780.P9219887793250692321

namespace A066780

/-- `a(n-1)*∑{d}[n+1, #]` -/
def P9219887793250692321.Spec : Prop :=
  ∀ n, (P9219887793250692321.a n : ℤ) = A066780 (n + 1)

end A066780

/-! ## A066780.P399357938330292382

`∏[A130307(∑[n])]`
-/

namespace A066780.P399357938330292382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130307 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066780.P399357938330292382

namespace A066780

/-- `∏[A130307(∑[n])]` -/
def P399357938330292382.Spec : Prop :=
  ∀ n, P399357938330292382.a n = A066780 (n + 1)

end A066780

/-! ## A066780.P9362621030576768713

`∏[Δ[A160664(n)]]`
-/

namespace A066780.P9362621030576768713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066780.P9362621030576768713

namespace A066780

/-- `∏[Δ[A160664(n)]]` -/
def P9362621030576768713.Spec : Prop :=
  ∀ n, P9362621030576768713.a n = A066780 (n + 1)

end A066780

/-! ## A066780.P16991634701322487109

`∏[A000203(n+1)]`
-/

namespace A066780.P16991634701322487109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066780.P16991634701322487109

namespace A066780

/-- `∏[A000203(n+1)]` -/
def P16991634701322487109.Spec : Prop :=
  ∀ n, P16991634701322487109.a n = A066780 (n + 1)

end A066780

/-! ## A066780.P18321644265904291375

`∏[A097012(n+1)]`
-/

namespace A066780.P18321644265904291375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066780.P18321644265904291375

namespace A066780

/-- `∏[A097012(n+1)]` -/
def P18321644265904291375.Spec : Prop :=
  ∀ n, P18321644265904291375.a n = A066780 (n + 1)

end A066780

/-!
# A066781: a(n) = 2^phi(n).

The programs for A066781, the canonical program `A066781.P13882244352398290553` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066781 has offset 1).

The definition of A066781 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066781.P13882244352398290553

`2^A000010(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066781

/-- `2^A000010(n+1)` -/
def P13882244352398290553.Spec : Prop :=
  ∀ n, P13882244352398290553.a n = (A066781 (n + 1) : ℚ)

end A066781

/-! ## A066781.P14615005471825806897

`2^Δ[A002088(n)]`
-/

namespace A066781.P14615005471825806897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A066781.P14615005471825806897

namespace A066781

/-- `2^Δ[A002088(n)]` -/
def P14615005471825806897.Spec : Prop :=
  ∀ n, P14615005471825806897.a n = (A066781 (n + 1) : ℚ)

end A066781

/-! ## A066781.P9161624041809833949

`2^Δ[A005728(n)]`
-/

namespace A066781.P9161624041809833949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A066781.P9161624041809833949

namespace A066781

/-- `2^Δ[A005728(n)]` -/
def P9161624041809833949.Spec : Prop :=
  ∀ n, P9161624041809833949.a n = (A066781 (n + 1) : ℚ)

end A066781

/-! ## A066781.P6314456824434739282

`A100371(n+1)+1`
-/

namespace A066781.P6314456824434739282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + 1

end

end A066781.P6314456824434739282

namespace A066781

/-- `A100371(n+1)+1` -/
def P6314456824434739282.Spec : Prop :=
  ∀ n, P6314456824434739282.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P11688711532747401578

`A243305(n+1)-1`
-/

namespace A066781.P11688711532747401578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) - 1

end

end A066781.P11688711532747401578

namespace A066781

/-- `A243305(n+1)-1` -/
def P11688711532747401578.Spec : Prop :=
  ∀ n, P11688711532747401578.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P14693279264211108489

`2^A067541(Δ[n²])`
-/

namespace A066781.P14693279264211108489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A067541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A066781.P14693279264211108489

namespace A066781

/-- `2^A067541(Δ[n²])` -/
def P14693279264211108489.Spec : Prop :=
  ∀ n, P14693279264211108489.a n = (A066781 (n + 1) : ℚ)

end A066781

/-! ## A066781.P6984071805351359552

`2^A309563(Δ[n²])`
-/

namespace A066781.P6984071805351359552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A309563 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A066781.P6984071805351359552

namespace A066781

/-- `2^A309563(Δ[n²])` -/
def P6984071805351359552.Spec : Prop :=
  ∀ n, P6984071805351359552.a n = (A066781 (n + 1) : ℚ)

end A066781

/-! ## A066781.P2197414356377428646

`2^A349137(Δ[n²])`
-/

namespace A066781.P2197414356377428646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A066781.P2197414356377428646

namespace A066781

/-- `2^A349137(Δ[n²])` -/
def P2197414356377428646.Spec : Prop :=
  ∀ n, P2197414356377428646.a n = (A066781 (n + 1) : ℚ)

end A066781

/-! ## A066781.P2324883729281146156

`2^sqrt(A127473(n+1))`
-/

namespace A066781.P2324883729281146156
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A127473 (n + 1) : ℝ))

end

end A066781.P2324883729281146156

namespace A066781

/-- `2^sqrt(A127473(n+1))` -/
def P2324883729281146156.Spec : Prop :=
  ∀ n, P2324883729281146156.a n = (A066781 (n + 1) : ℝ)

end A066781

/-! ## A066781.P146517077491273798

`4^(A000010(2*n-(n-1))/2)`
-/

namespace A066781.P146517077491273798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ ((A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2 : ℝ)

end

end A066781.P146517077491273798

namespace A066781

/-- `4^(A000010(2*n-(n-1))/2)` -/
def P146517077491273798.Spec : Prop :=
  ∀ n, P146517077491273798.a n = (A066781 (n + 1) : ℝ)

end A066781

/-! ## A066781.P7849879102049369735

`A000079(Δ[A002088(n)])`
-/

namespace A066781.P7849879102049369735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat

end

end A066781.P7849879102049369735

namespace A066781

/-- `A000079(Δ[A002088(n)])` -/
def P7849879102049369735.Spec : Prop :=
  ∀ n, P7849879102049369735.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P1310559231527739152

`A000079(A000010(n+1))`
-/

namespace A066781.P1310559231527739152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000010 (n + 1)).toNat

end

end A066781.P1310559231527739152

namespace A066781

/-- `A000079(A000010(n+1))` -/
def P1310559231527739152.Spec : Prop :=
  ∀ n, P1310559231527739152.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P575067594697095268

`A011782(A039649(n+1))`
-/

namespace A066781.P575067594697095268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A039649 (n + 1)).toNat

end

end A066781.P575067594697095268

namespace A066781

/-- `A011782(A039649(n+1))` -/
def P575067594697095268.Spec : Prop :=
  ∀ n, P575067594697095268.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P13200211002604222141

`A048656(A048848(n+1))`
-/

namespace A066781.P13200211002604222141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (A048848 (n + 1)).toNat

end

end A066781.P13200211002604222141

namespace A066781

/-- `A048656(A048848(n+1))` -/
def P13200211002604222141.Spec : Prop :=
  ∀ n, P13200211002604222141.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P4890880151611104517

`A017912(A140434(n+1))`
-/

namespace A066781.P4890880151611104517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (A140434 (n + 1)).toNat

end

end A066781.P4890880151611104517

namespace A066781

/-- `A017912(A140434(n+1))` -/
def P4890880151611104517.Spec : Prop :=
  ∀ n, P4890880151611104517.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P6172323783026539426

`A017979(A200905(n+1))`
-/

namespace A066781.P6172323783026539426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (A200905 (n + 1)).toNat

end

end A066781.P6172323783026539426

namespace A066781

/-- `A017979(A200905(n+1))` -/
def P6172323783026539426.Spec : Prop :=
  ∀ n, P6172323783026539426.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P12118403377319249513

`A000225(Δ[A002088(n)])+1`
-/

namespace A066781.P12118403377319249513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f1 (n + 1) - f1 n).toNat + 1

end

end A066781.P12118403377319249513

namespace A066781

/-- `A000225(Δ[A002088(n)])+1` -/
def P12118403377319249513.Spec : Prop :=
  ∀ n, P12118403377319249513.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P16408440277389442758

`A011782(A000010(n+1)+1)`
-/

namespace A066781.P16408440277389442758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000010 (n + 1) + 1).toNat

end

end A066781.P16408440277389442758

namespace A066781

/-- `A011782(A000010(n+1)+1)` -/
def P16408440277389442758.Spec : Prop :=
  ∀ n, P16408440277389442758.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P9479221565512000436

`A079102(A000010(n+1)+1)`
-/

namespace A066781.P9479221565512000436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079102 (A000010 (n + 1) + 1).toNat

end

end A066781.P9479221565512000436

namespace A066781

/-- `A079102(A000010(n+1)+1)` -/
def P9479221565512000436.Spec : Prop :=
  ∀ n, P9479221565512000436.a n = A066781 (n + 1)

end A066781

/-! ## A066781.P15312960813201482607

`A090129(A000010(n+1)+2)`
-/

namespace A066781.P15312960813201482607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (A000010 (n + 1) + 2).toNat

end

end A066781.P15312960813201482607

namespace A066781

/-- `A090129(A000010(n+1)+2)` -/
def P15312960813201482607.Spec : Prop :=
  ∀ n, P15312960813201482607.a n = A066781 (n + 1)

end A066781

/-!
# A066787: a(n) = gcd(2^n + 1, n^2 + 1).

The programs for A066787, the canonical program `A066787.P5311909586095374084` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066787 has offset 1).

The definition of A066787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2^(n+1)+1, (n+1)²+1)` (program `A066787.P5311909586095374084`, by `A066787.P5311909586095374084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066787.P5311909586095374084

`gcd(2^(n+1)+1, (n+1)²+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A066787

/-- `gcd(2^(n+1)+1, (n+1)²+1)` -/
def P5311909586095374084.Spec : Prop :=
  ∀ n, (P5311909586095374084.a n : ℤ) = A066787 (n + 1)

theorem P5311909586095374084.correct : P5311909586095374084.Spec := by
  intro n
  simp only [A066787, Nat.add_sub_cancel]

end A066787

/-! ## A066787.P17394662855345126492

`A071975(gcd(A005563(n)+2, A048578(n)))`
-/

namespace A066787.P17394662855345126492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (Int.gcd (A005563 n + 2) (A048578 n))

end

end A066787.P17394662855345126492

namespace A066787

/-- `A071975(gcd(A005563(n)+2, A048578(n)))` -/
def P17394662855345126492.Spec : Prop :=
  ∀ n, P17394662855345126492.a n = A066787 (n + 1)

end A066787

/-! ## A066787.P8514984679618733225

`A096861(gcd(A000051(n+1), A002522(n+1)))`
-/

namespace A066787.P8514984679618733225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096861 (Int.gcd (A000051 (n + 1)) (A002522 (n + 1)))

end

end A066787.P8514984679618733225

namespace A066787

/-- `A096861(gcd(A000051(n+1), A002522(n+1)))` -/
def P8514984679618733225.Spec : Prop :=
  ∀ n, P8514984679618733225.a n = A066787 (n + 1)

end A066787

/-!
# A066788: a(n) = gcd(phi(n), n^2 + 1).

The programs for A066788, the canonical program `A066788.P6021329462527854166` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066788 has offset 1).

The definition of A066788 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066788.P6021329462527854166

`gcd(A000010(n+1), (n+1)²+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066788

/-- `gcd(A000010(n+1), (n+1)²+1)` -/
def P6021329462527854166.Spec : Prop :=
  ∀ n, (P6021329462527854166.a n : ℤ) = A066788 (n + 1)

theorem P6021329462527854166.correct : P6021329462527854166.Spec := by
  intro n
  simp only [A066788, Nat.add_sub_cancel]

end A066788

/-! ## A066788.P5788608290378877642

`gcd(n²+2*(n+1), ∏{p}[n+1, #-1])`
-/

namespace A066788.P5788608290378877642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + 2 * (n + 1) : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))

end

end A066788.P5788608290378877642

namespace A066788

/-- `gcd(n²+2*(n+1), ∏{p}[n+1, #-1])` -/
def P5788608290378877642.Spec : Prop :=
  ∀ n, (P5788608290378877642.a n : ℤ) = A066788 (n + 1)

end A066788

/-! ## A066788.P9103719254734274488

`gcd(record[(n-1)²]+1, A126246(n+1))`
-/

namespace A066788.P9103719254734274488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) (A126246 (n + 1))

end

end A066788.P9103719254734274488

namespace A066788

/-- `gcd(record[(n-1)²]+1, A126246(n+1))` -/
def P9103719254734274488.Spec : Prop :=
  ∀ n, (P9103719254734274488.a n : ℤ) = A066788 (n + 1)

end A066788

/-! ## A066788.P14541054811707056074

`gcd(∑[2*n+1]+1, A002618(n+1))`
-/

namespace A066788.P14541054811707056074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A002618 (n + 1))

end

end A066788.P14541054811707056074

namespace A066788

/-- `gcd(∑[2*n+1]+1, A002618(n+1))` -/
def P14541054811707056074.Spec : Prop :=
  ∀ n, (P14541054811707056074.a n : ℤ) = A066788 (n + 1)

end A066788

/-! ## A066788.P646307633315879618

`gcd(A051953(n+1)²+1, A023900(n+1))`
-/

namespace A066788.P646307633315879618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 1) ^ 2 + 1) (A023900 (n + 1))

end

end A066788.P646307633315879618

namespace A066788

/-- `gcd(A051953(n+1)²+1, A023900(n+1))` -/
def P646307633315879618.Spec : Prop :=
  ∀ n, (P646307633315879618.a n : ℤ) = A066788 (n + 1)

end A066788

/-! ## A066788.P13018086917531924592

`gcd(A000027(n+1)²+1, A173557(n+1))`
-/

namespace A066788.P13018086917531924592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1) ^ 2 + 1) (A173557 (n + 1))

end

end A066788.P13018086917531924592

namespace A066788

/-- `gcd(A000027(n+1)²+1, A173557(n+1))` -/
def P13018086917531924592.Spec : Prop :=
  ∀ n, (P13018086917531924592.a n : ℤ) = A066788 (n + 1)

end A066788

/-! ## A066788.P16290802786119578671

`gcd(Δ[A002088(n)], A002522(n+1))`
-/

namespace A066788.P16290802786119578671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A002522 (n + 1))

end

end A066788.P16290802786119578671

namespace A066788

/-- `gcd(Δ[A002088(n)], A002522(n+1))` -/
def P16290802786119578671.Spec : Prop :=
  ∀ n, (P16290802786119578671.a n : ℤ) = A066788 (n + 1)

end A066788

/-! ## A066788.P18391427964209717493

`gcd(A002246(n+1), A002522(A000027(n+1)))`
-/

namespace A066788.P18391427964209717493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002246 (n + 1)) (A002522 (A000027 (n + 1)).toNat)

end

end A066788.P18391427964209717493

namespace A066788

/-- `gcd(A002246(n+1), A002522(A000027(n+1)))` -/
def P18391427964209717493.Spec : Prop :=
  ∀ n, (P18391427964209717493.a n : ℤ) = A066788 (n + 1)

end A066788

/-! ## A066788.P11432883130133138371

`gcd(A103390(n+2)+1, A093819(2*(n+1)))`
-/

namespace A066788.P11432883130133138371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103390 (n + 2) + 1) (A093819 (2 * (n + 1)))

end

end A066788.P11432883130133138371

namespace A066788

/-- `gcd(A103390(n+2)+1, A093819(2*(n+1)))` -/
def P11432883130133138371.Spec : Prop :=
  ∀ n, (P11432883130133138371.a n : ℤ) = A066788 (n + 1)

end A066788

/-! ## A066788.P10150336619961028991

`A058656(A140651(n+1))`
-/

namespace A066788.P10150336619961028991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058656 (A140651 (n + 1)).toNat

end

end A066788.P10150336619961028991

namespace A066788

/-- `A058656(A140651(n+1))` -/
def P10150336619961028991.Spec : Prop :=
  ∀ n, P10150336619961028991.a n = A066788 (n + 1)

end A066788

/-! ## A066788.P5005715820556956629

`A058656(A170826(n+1))`
-/

namespace A066788.P5005715820556956629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058656 (A170826 (n + 1)).toNat

end

end A066788.P5005715820556956629

namespace A066788

/-- `A058656(A170826(n+1))` -/
def P5005715820556956629.Spec : Prop :=
  ∀ n, P5005715820556956629.a n = A066788 (n + 1)

end A066788

/-! ## A066788.P11178377264930283469

`A058656(A103390(n+2))`
-/

namespace A066788.P11178377264930283469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058656 (A103390 (n + 2)).toNat

end

end A066788.P11178377264930283469

namespace A066788

/-- `A058656(A103390(n+2))` -/
def P11178377264930283469.Spec : Prop :=
  ∀ n, P11178377264930283469.a n = A066788 (n + 1)

end A066788

/-! ## A066788.P13678275838195368614

`A058656((n+1)²)`
-/

namespace A066788.P13678275838195368614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058656 ((n + 1) ^ 2)

end

end A066788.P13678275838195368614

namespace A066788

/-- `A058656((n+1)²)` -/
def P13678275838195368614.Spec : Prop :=
  ∀ n, P13678275838195368614.a n = A066788 (n + 1)

end A066788

/-! ## A066788.P758782396100227152

`gcd(A002618(n+1), A062830((n+1)²))`
-/

namespace A066788.P758782396100227152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002618 (n + 1)) (A062830 ((n + 1) ^ 2))

end

end A066788.P758782396100227152

namespace A066788

/-- `gcd(A002618(n+1), A062830((n+1)²))` -/
def P758782396100227152.Spec : Prop :=
  ∀ n, (P758782396100227152.a n : ℤ) = A066788 (n + 1)

end A066788

/-!
# A066789: 

The programs for A066789, there is no canonical definition to state claims against.
-/

/-! ## A066789.P2223209456075585877

`C(Δ[∑[n]²], (n+1)²)`
-/

namespace A066789.P2223209456075585877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ((n + 1) ^ 2)

end

end A066789.P2223209456075585877

/-! ## A066789.P6821656553091944444

`record[C(A126951(n+1), A000463(n+1))]`
-/

namespace A066789.P6821656553091944444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126951 (n + 1)).toNat (A000463 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066789.P6821656553091944444

/-! ## A066789.P4239608440060231842

`record[C(A109588(n+1), A109594(n+1))]`
-/

namespace A066789.P4239608440060231842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109588 (n + 1)).toNat (A109594 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066789.P4239608440060231842

/-! ## A066789.P11590639443881983836

`record[C(A109594(n+1), A109595(n+1))]`
-/

namespace A066789.P11590639443881983836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109594 (n + 1)).toNat (A109595 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066789.P11590639443881983836

/-!
# A066791: a(n) = phi(n^2 + n + 1).

The programs for A066791, the canonical program `A066791.P12754297316932138795` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066791 has offset 0).

The definition of A066791 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066791.P12754297316932138795

`A000010(n²+n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066791

/-- `A000010(n²+n+1)` -/
def P12754297316932138795.Spec : Prop :=
  ∀ n, P12754297316932138795.a n = A066791 n

theorem P12754297316932138795.correct : P12754297316932138795.Spec := by
  intro n
  simp only [A066791]

end A066791

/-! ## A066791.P2312341145059205530

`C(2, n%3)*A000010(lcm(3, ∑[2*n]+1)/3)`
-/

namespace A066791.P2312341145059205530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n % 3) : ℤ) * A000010 (SequenceMachineLib.roundAway ((Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3)).toNat

end

end A066791.P2312341145059205530

namespace A066791

/-- `C(2, n%3)*A000010(lcm(3, ∑[2*n]+1)/3)` -/
def P2312341145059205530.Spec : Prop :=
  ∀ n, P2312341145059205530.a n = A066791 n

end A066791

/-! ## A066791.P17967646494213711859

`A000027(A000010(∑[2*n]+1))`
-/

namespace A066791.P17967646494213711859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A066791.P17967646494213711859

namespace A066791

/-- `A000027(A000010(∑[2*n]+1))` -/
def P17967646494213711859.Spec : Prop :=
  ∀ n, P17967646494213711859.a n = A066791 n

end A066791

/-! ## A066791.P4351322536188925716

`A000010(A002378(n)+1)%A056213(n+1)`
-/

namespace A066791.P4351322536188925716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A002378 n + 1).toNat) (A056213 (n + 1))

end

end A066791.P4351322536188925716

namespace A066791

/-- `A000010(A002378(n)+1)%A056213(n+1)` -/
def P4351322536188925716.Spec : Prop :=
  ∀ n, P4351322536188925716.a n = A066791 n

end A066791

/-! ## A066791.P6329179735412639234

`A062570(n²+n+1)`
-/

namespace A066791.P6329179735412639234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n ^ 2 + (n + 1))

end

end A066791.P6329179735412639234

namespace A066791

/-- `A062570(n²+n+1)` -/
def P6329179735412639234.Spec : Prop :=
  ∀ n, P6329179735412639234.a n = A066791 n

end A066791

/-! ## A066791.P6942054910442402069

`A037225(∑[n])`
-/

namespace A066791.P6942054910442402069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066791.P6942054910442402069

namespace A066791

/-- `A037225(∑[n])` -/
def P6942054910442402069.Spec : Prop :=
  ∀ n, P6942054910442402069.a n = A066791 n

end A066791

/-! ## A066791.P17883200799047296344

`A319997(n²+n+1)`
-/

namespace A066791.P17883200799047296344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n ^ 2 + (n + 1))

end

end A066791.P17883200799047296344

namespace A066791

/-- `A319997(n²+n+1)` -/
def P17883200799047296344.Spec : Prop :=
  ∀ n, P17883200799047296344.a n = A066791 n

end A066791

/-! ## A066791.P17908324043835324797

`A378649(n²+n+1)`
-/

namespace A066791.P17908324043835324797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378649 (n ^ 2 + (n + 1))

end

end A066791.P17908324043835324797

namespace A066791

/-- `A378649(n²+n+1)` -/
def P17908324043835324797.Spec : Prop :=
  ∀ n, P17908324043835324797.a n = A066791 n

end A066791

/-! ## A066791.P13254978262281724443

`A300236(A112087(n+1))`
-/

namespace A066791.P13254978262281724443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (A112087 (n + 1)).toNat

end

end A066791.P13254978262281724443

namespace A066791

/-- `A300236(A112087(n+1))` -/
def P13254978262281724443.Spec : Prop :=
  ∀ n, P13254978262281724443.a n = A066791 n

end A066791

/-! ## A066791.P7509162598605390634

`A055035(n²+n+1)`
-/

namespace A066791.P7509162598605390634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (n ^ 2 + (n + 1))

end

end A066791.P7509162598605390634

namespace A066791

/-- `A055035(n²+n+1)` -/
def P7509162598605390634.Spec : Prop :=
  ∀ n, P7509162598605390634.a n = A066791 n

end A066791

/-! ## A066791.P14425773910234285071

`A062771(n²+n+1)`
-/

namespace A066791.P14425773910234285071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062771 (n ^ 2 + (n + 1))

end

end A066791.P14425773910234285071

namespace A066791

/-- `A062771(n²+n+1)` -/
def P14425773910234285071.Spec : Prop :=
  ∀ n, P14425773910234285071.a n = A066791 n

end A066791

/-! ## A066791.P4213587734304193778

`A080736(n²+n+1)`
-/

namespace A066791.P4213587734304193778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080736 (n ^ 2 + (n + 1))

end

end A066791.P4213587734304193778

namespace A066791

/-- `A080736(n²+n+1)` -/
def P4213587734304193778.Spec : Prop :=
  ∀ n, P4213587734304193778.a n = A066791 n

end A066791

/-! ## A066791.P7893040572116056143

`A126246(n²+n+1)`
-/

namespace A066791.P7893040572116056143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126246 (n ^ 2 + (n + 1))

end

end A066791.P7893040572116056143

namespace A066791

/-- `A126246(n²+n+1)` -/
def P7893040572116056143.Spec : Prop :=
  ∀ n, P7893040572116056143.a n = A066791 n

end A066791

/-! ## A066791.P1944017668042962355

`A162728(n²+n+1)`
-/

namespace A066791.P1944017668042962355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162728 (n ^ 2 + (n + 1))

end

end A066791.P1944017668042962355

namespace A066791

/-- `A162728(n²+n+1)` -/
def P1944017668042962355.Spec : Prop :=
  ∀ n, P1944017668042962355.a n = A066791 n

end A066791

/-! ## A066791.P17251631131109299787

`A232626(n²+n+1)`
-/

namespace A066791.P17251631131109299787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232626 (n ^ 2 + (n + 1))

end

end A066791.P17251631131109299787

namespace A066791

/-- `A232626(n²+n+1)` -/
def P17251631131109299787.Spec : Prop :=
  ∀ n, P17251631131109299787.a n = A066791 n

end A066791

/-! ## A066791.P8150700925022267877

`A325596(n²+n+1)`
-/

namespace A066791.P8150700925022267877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325596 (n ^ 2 + (n + 1))

end

end A066791.P8150700925022267877

namespace A066791

/-- `A325596(n²+n+1)` -/
def P8150700925022267877.Spec : Prop :=
  ∀ n, P8150700925022267877.a n = A066791 n

end A066791

/-! ## A066791.P16167796106371565719

`A326305(n²+n+1)`
-/

namespace A066791.P16167796106371565719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326305 (n ^ 2 + (n + 1))

end

end A066791.P16167796106371565719

namespace A066791

/-- `A326305(n²+n+1)` -/
def P16167796106371565719.Spec : Prop :=
  ∀ n, P16167796106371565719.a n = A066791 n

end A066791

/-! ## A066791.P3457539423398996478

`A345082(n²+n+1)`
-/

namespace A066791.P3457539423398996478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345082 (n ^ 2 + (n + 1))

end

end A066791.P3457539423398996478

namespace A066791

/-- `A345082(n²+n+1)` -/
def P3457539423398996478.Spec : Prop :=
  ∀ n, P3457539423398996478.a n = A066791 n

end A066791

/-! ## A066791.P6172005189636068954

`A354094(n²+n+1)`
-/

namespace A066791.P6172005189636068954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354094 (n ^ 2 + (n + 1))

end

end A066791.P6172005189636068954

namespace A066791

/-- `A354094(n²+n+1)` -/
def P6172005189636068954.Spec : Prop :=
  ∀ n, P6172005189636068954.a n = A066791 n

end A066791

/-!
# A066792: a(n) = phi(n^3 + n^2 + n + 1).

The programs for A066792, the canonical program `A066792.P9568497017398230621` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066792 has offset 0).

The definition of A066792 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066792.P9568497017398230621

`A000010(n^3+n²+n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066792

/-- `A000010(n^3+n²+n+1)` -/
def P9568497017398230621.Spec : Prop :=
  ∀ n, P9568497017398230621.a n = A066792 n

theorem P9568497017398230621.correct : P9568497017398230621.Spec := by
  intro n
  simp only [A066792]

end A066792

/-! ## A066792.P12379800448659127431

`A062570(n+1)*A333169(n)`
-/

namespace A066792.P12379800448659127431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) * A333169 n

end

end A066792.P12379800448659127431

namespace A066792

/-- `A062570(n+1)*A333169(n)` -/
def P12379800448659127431.Spec : Prop :=
  ∀ n, P12379800448659127431.a n = A066792 n

end A066792

/-! ## A066792.P17111863795521329817

`A000010(2*(n+1))*A333169(n)`
-/

namespace A066792.P17111863795521329817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A333169 n

end

end A066792.P17111863795521329817

namespace A066792

/-- `A000010(2*(n+1))*A333169(n)` -/
def P17111863795521329817.Spec : Prop :=
  ∀ n, P17111863795521329817.a n = A066792 n

end A066792

/-! ## A066792.P15702971905165626106

`A305804(4*(n+1))*A333169(n)`
-/

namespace A066792.P15702971905165626106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305804 (4 * (n + 1)) * A333169 n

end

end A066792.P15702971905165626106

namespace A066792

/-- `A305804(4*(n+1))*A333169(n)` -/
def P15702971905165626106.Spec : Prop :=
  ∀ n, P15702971905165626106.a n = A066792 n

end A066792

/-! ## A066792.P8404550253027268891

`(1-A176095(n+1)+n)*A333169(n)`
-/

namespace A066792.P8404550253027268891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176095 (n + 1) + (n : ℤ)) * A333169 n

end

end A066792.P8404550253027268891

namespace A066792

/-- `(1-A176095(n+1)+n)*A333169(n)` -/
def P8404550253027268891.Spec : Prop :=
  ∀ n, P8404550253027268891.a n = A066792 n

end A066792

/-! ## A066792.P3781440225255017221

`∑{d}[n+1, #*A087003((n+1)/#)]*A333169(n)`
-/

namespace A066792.P3781440225255017221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A333169 n

end

end A066792.P3781440225255017221

namespace A066792

/-- `∑{d}[n+1, #*A087003((n+1)/#)]*A333169(n)` -/
def P3781440225255017221.Spec : Prop :=
  ∀ n, P3781440225255017221.a n = A066792 n

end A066792

/-! ## A066792.P17847914707636176412

`gcd(2, n-1)*A000010(2*n-(n-1))*A333169(n)`
-/

namespace A066792.P17847914707636176412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 ((n : ℤ) - 1) : ℤ) * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat * A333169 n

end

end A066792.P17847914707636176412

namespace A066792

/-- `gcd(2, n-1)*A000010(2*n-(n-1))*A333169(n)` -/
def P17847914707636176412.Spec : Prop :=
  ∀ n, P17847914707636176412.a n = A066792 n

end A066792

/-! ## A066792.P1640257576628100418

`A000010(2*(n+1))*A000010(n²+1)`
-/

namespace A066792.P1640257576628100418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A000010 (n ^ 2 + 1)

end

end A066792.P1640257576628100418

namespace A066792

/-- `A000010(2*(n+1))*A000010(n²+1)` -/
def P1640257576628100418.Spec : Prop :=
  ∀ n, P1640257576628100418.a n = A066792 n

end A066792

/-! ## A066792.P3845794393959997018

`A000010(A002522(n))*A062570(n+1)`
-/

namespace A066792.P3845794393959997018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002522 n).toNat * A062570 (n + 1)

end

end A066792.P3845794393959997018

namespace A066792

/-- `A000010(A002522(n))*A062570(n+1)` -/
def P3845794393959997018.Spec : Prop :=
  ∀ n, P3845794393959997018.a n = A066792 n

end A066792

/-! ## A066792.P1947267576558355993

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A000010(A005893(n))`
-/

namespace A066792.P1947267576558355993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A000010 (A005893 n).toNat : ℚ)

end

end A066792.P1947267576558355993

namespace A066792

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A000010(A005893(n))` -/
def P1947267576558355993.Spec : Prop :=
  ∀ n, P1947267576558355993.a n = (A066792 n : ℚ)

end A066792

/-! ## A066792.P2859180304165013538

`Δ[A005728(n)]*A000010(A005893(n))`
-/

namespace A066792.P2859180304165013538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000010 (A005893 n).toNat

end

end A066792.P2859180304165013538

namespace A066792

/-- `Δ[A005728(n)]*A000010(A005893(n))` -/
def P2859180304165013538.Spec : Prop :=
  ∀ n, P2859180304165013538.a n = A066792 n

end A066792

/-! ## A066792.P13581666350901401456

`sqrt(A127473(n+1))*A000010(A005893(n))`
-/

namespace A066792.P13581666350901401456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) * (A000010 (A005893 n).toNat : ℝ)

end

end A066792.P13581666350901401456

namespace A066792

/-- `sqrt(A127473(n+1))*A000010(A005893(n))` -/
def P13581666350901401456.Spec : Prop :=
  ∀ n, P13581666350901401456.a n = (A066792 n : ℝ)

end A066792

/-! ## A066792.P10393428980865379146

`A225530(2*(n+1))*A333169(n)`
-/

namespace A066792.P10393428980865379146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (2 * (n + 1)) * A333169 n

end

end A066792.P10393428980865379146

namespace A066792

/-- `A225530(2*(n+1))*A333169(n)` -/
def P10393428980865379146.Spec : Prop :=
  ∀ n, P10393428980865379146.a n = A066792 n

end A066792

/-! ## A066792.P4474351547866097034

`A062570(n²+1)*A282634(∑[n]+1)`
-/

namespace A066792.P4474351547866097034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n ^ 2 + 1) * A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A066792.P4474351547866097034

namespace A066792

/-- `A062570(n²+1)*A282634(∑[n]+1)` -/
def P4474351547866097034.Spec : Prop :=
  ∀ n, P4474351547866097034.a n = A066792 n

end A066792

/-!
# A066793: The start of a record-breaking run of consecutive integers with an even number of prime factors.

The programs for A066793, there is no canonical definition to state claims against.
-/

/-! ## A066793.P10028378395950897664

`record[A175201(n+1)-char[6]]`
-/

namespace A066793.P10028378395950897664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175201 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066793.P10028378395950897664

/-! ## A066793.P16686023882028786268

`record[A175201(floor((xor(1, n)+1)/4)+1)]`
-/

namespace A066793.P16686023882028786268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175201 (⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066793.P16686023882028786268

/-! ## A066793.P14317711708942876834

`record[A175201(gcd(n²+n, ∏{p}[n+1, #²]))]`
-/

namespace A066793.P14317711708942876834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175201 (Nat.gcd (n ^ 2 + n) (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066793.P14317711708942876834

/-! ## A066793.P12133922522529194904

`record[A175201(floor((n+1)/(or(n, n+2)-n))+1)]`
-/

namespace A066793.P12133922522529194904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175201 (⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066793.P12133922522529194904

/-! ## A066793.P15952075893575301726

`record[A175201(A028920(n))]`
-/

namespace A066793.P15952075893575301726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175201 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066793.P15952075893575301726

/-!
# A066794: Start of a record-breaking run of consecutive integers with an odd number of prime factors.

The programs for A066794, there is no canonical definition to state claims against.
-/

/-! ## A066794.P8097851953727645227

`record[A175202(n+1)-char[1]]`
-/

namespace A066794.P8097851953727645227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175202 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066794.P8097851953727645227

/-! ## A066794.P6401860292573055013

`record[A175202(A052938(n))]`
-/

namespace A066794.P6401860292573055013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175202 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066794.P6401860292573055013

/-! ## A066794.P17028695573223142321

`record[A175202(A134478(n))]`
-/

namespace A066794.P17028695573223142321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175202 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066794.P17028695573223142321

/-! ## A066794.P12662885542548811805

`record[A175202(A152271(n))]`
-/

namespace A066794.P12662885542548811805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175202 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066794.P12662885542548811805

/-! ## A066794.P7335514346553013378

`record[A175202(A158416(n))]`
-/

namespace A066794.P7335514346553013378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175202 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066794.P7335514346553013378

/-!
# A066796: a(n) = Sum_{i=1..n} binomial(2*i,i).

The programs for A066796, the canonical program `A066796.P3261242548129466086` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066796 has offset 1).

The definition of A066796 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066796.P3261242548129466086

`A006134(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066796

/-- `A006134(n+1)-1` -/
def P3261242548129466086.Spec : Prop :=
  ∀ n, P3261242548129466086.a n = A066796 (n + 1)

theorem P3261242548129466086.correct : P3261242548129466086.Spec := by
  intro n
  simp only [A066796, Nat.add_sub_cancel]

end A066796

/-! ## A066796.P2508714250619453800

`∑[∏[4-2/(n+1)]]`
-/

namespace A066796.P2508714250619453800
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066796.P2508714250619453800

namespace A066796

/-- `∑[∏[4-2/(n+1)]]` -/
def P2508714250619453800.Spec : Prop :=
  ∀ n, P2508714250619453800.a n = (A066796 (n + 1) : ℚ)

end A066796

/-! ## A066796.P16172984382517252876

`abs(∑[(4-n/∑[n])*a(n-1)])` with `a(0)=2`
-/

namespace A066796.P16172984382517252876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A066796.P16172984382517252876

namespace A066796

/-- `abs(∑[(4-n/∑[n])*a(n-1)])` -/
def P16172984382517252876.Spec : Prop :=
  ∀ n, P16172984382517252876.a n = (A066796 (n + 1) : ℚ)

end A066796

/-! ## A066796.P8823692491007820429

`floor(∑[(4-n/∑[n])*a(n-1)])` with `a(0)=2`
-/

namespace A066796.P8823692491007820429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A066796.P8823692491007820429

namespace A066796

/-- `floor(∑[(4-n/∑[n])*a(n-1)])` -/
def P8823692491007820429.Spec : Prop :=
  ∀ n, P8823692491007820429.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P11349196702978457641

`ceil(∑[(4-n/∑[n])*a(n-1)])` with `a(0)=2`
-/

namespace A066796.P11349196702978457641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A066796.P11349196702978457641

namespace A066796

/-- `ceil(∑[(4-n/∑[n])*a(n-1)])` -/
def P11349196702978457641.Spec : Prop :=
  ∀ n, P11349196702978457641.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P17847111600457923922

`round(∑[(4-n/∑[n])*a(n-1)])` with `a(0)=2`
-/

namespace A066796.P17847111600457923922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066796.P17847111600457923922

namespace A066796

/-- `round(∑[(4-n/∑[n])*a(n-1)])` -/
def P17847111600457923922.Spec : Prop :=
  ∀ n, P17847111600457923922.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P18283214667956890102

`2*∑[(4-n/∑[n])*a(n-1)]` with `a(0)=1`
-/

namespace A066796.P18283214667956890102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066796.P18283214667956890102

namespace A066796

/-- `2*∑[(4-n/∑[n])*a(n-1)]` -/
def P18283214667956890102.Spec : Prop :=
  ∀ n, P18283214667956890102.a n = (A066796 (n + 1) : ℚ)

end A066796

/-! ## A066796.P9421145800805262383

`lcm(2, A054114(n))`
-/

namespace A066796.P9421145800805262383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A054114 n)

end

end A066796.P9421145800805262383

namespace A066796

/-- `lcm(2, A054114(n))` -/
def P9421145800805262383.Spec : Prop :=
  ∀ n, (P9421145800805262383.a n : ℤ) = A066796 (n + 1)

end A066796

/-! ## A066796.P2905469167131205857

`2*∑[A001700(n)]`
-/

namespace A066796.P2905469167131205857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066796.P2905469167131205857

namespace A066796

/-- `2*∑[A001700(n)]` -/
def P2905469167131205857.Spec : Prop :=
  ∀ n, P2905469167131205857.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P8929116998709849678

`2*A079309(n+1)`
-/

namespace A066796.P8929116998709849678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079309 (n + 1)

end

end A066796.P8929116998709849678

namespace A066796

/-- `2*A079309(n+1)` -/
def P8929116998709849678.Spec : Prop :=
  ∀ n, P8929116998709849678.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P1887495113339741621

`2*∑[A088218(n+1)]`
-/

namespace A066796.P1887495113339741621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066796.P1887495113339741621

namespace A066796

/-- `2*∑[A088218(n+1)]` -/
def P1887495113339741621.Spec : Prop :=
  ∀ n, P1887495113339741621.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P1128185624895637387

`2*(A024718(n+1)-1)`
-/

namespace A066796.P1128185624895637387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024718 (n + 1) - 1)

end

end A066796.P1128185624895637387

namespace A066796

/-- `2*(A024718(n+1)-1)` -/
def P1128185624895637387.Spec : Prop :=
  ∀ n, P1128185624895637387.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P5955856806110806570

`A100066(2*(n+2))-1`
-/

namespace A066796.P5955856806110806570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (2 * (n + 2)) - 1

end

end A066796.P5955856806110806570

namespace A066796

/-- `A100066(2*(n+2))-1` -/
def P5955856806110806570.Spec : Prop :=
  ∀ n, P5955856806110806570.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P2737169818841658133

`A078478(2*(n+3))-1`
-/

namespace A066796.P2737169818841658133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078478 (2 * (n + 3)) - 1

end

end A066796.P2737169818841658133

namespace A066796

/-- `A078478(2*(n+3))-1` -/
def P2737169818841658133.Spec : Prop :=
  ∀ n, P2737169818841658133.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P7962062619588333398

`A124642(2*n+3)-1`
-/

namespace A066796.P7962062619588333398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 (2 * n + 3) - 1

end

end A066796.P7962062619588333398

namespace A066796

/-- `A124642(2*n+3)-1` -/
def P7962062619588333398.Spec : Prop :=
  ∀ n, P7962062619588333398.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P12301381296549509581

`2*A174783(2*(n+1))`
-/

namespace A066796.P12301381296549509581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174783 (2 * (n + 1))

end

end A066796.P12301381296549509581

namespace A066796

/-- `2*A174783(2*(n+1))` -/
def P12301381296549509581.Spec : Prop :=
  ∀ n, P12301381296549509581.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P1955756971344834284

`A174783(Δ[(n+1)²])-1`
-/

namespace A066796.P1955756971344834284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A066796.P1955756971344834284

namespace A066796

/-- `A174783(Δ[(n+1)²])-1` -/
def P1955756971344834284.Spec : Prop :=
  ∀ n, P1955756971344834284.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P11921944263365681607

`2*∑[Δ[n²]*A000108(n)]`
-/

namespace A066796.P11921944263365681607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066796.P11921944263365681607

namespace A066796

/-- `2*∑[Δ[n²]*A000108(n)]` -/
def P11921944263365681607.Spec : Prop :=
  ∀ n, P11921944263365681607.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P16183120950527835028

`A000984(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A066796.P16183120950527835028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000984 (n + 1) + a (n - 1)

end

end A066796.P16183120950527835028

namespace A066796

/-- `A000984(n+1)+a(n-1)` -/
def P16183120950527835028.Spec : Prop :=
  ∀ n, P16183120950527835028.a n = A066796 (n + 1)

end A066796

/-! ## A066796.P11688802083033548671

`xor(1, ∑[(n+2)*A000108(n+1)]+1)`
-/

namespace A066796.P11688802083033548671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A066796.P11688802083033548671

namespace A066796

/-- `xor(1, ∑[(n+2)*A000108(n+1)]+1)` -/
def P11688802083033548671.Spec : Prop :=
  ∀ n, P11688802083033548671.a n = A066796 (n + 1)

end A066796

/-!
# A066797: a(n) = Sum_{i=1..n} binomial(4*i,2*i).

The programs for A066797, there is no canonical definition to state claims against.
-/

/-! ## A066797.P12255998100619960129

`∑[A001448(n+1)]`
-/

namespace A066797.P12255998100619960129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P12255998100619960129

/-! ## A066797.P2171080664455045919

`∑[2*A100033(n)]`
-/

namespace A066797.P2171080664455045919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P2171080664455045919

/-! ## A066797.P336554421669421239

`∑[A193633(∑[n+2])]`
-/

namespace A066797.P336554421669421239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193633 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P336554421669421239

/-! ## A066797.P12961841751443980868

`∑[A000984(2*(n+1))]`
-/

namespace A066797.P12961841751443980868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P12961841751443980868

/-! ## A066797.P2323910197869488961

`∑[A129369(2*(n+1))]`
-/

namespace A066797.P2323910197869488961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129369 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P2323910197869488961

/-! ## A066797.P124360494000668261

`∑[A001405(4*(n+1))]`
-/

namespace A066797.P124360494000668261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P124360494000668261

/-! ## A066797.P11335498821925603089

`∑[A063886(4*(n+1))]`
-/

namespace A066797.P11335498821925603089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P11335498821925603089

/-! ## A066797.P7722380634819729831

`∑[A081668(4*(n+1))]`
-/

namespace A066797.P7722380634819729831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P7722380634819729831

/-! ## A066797.P3812438950520134204

`∑[A089849(4*(n+1))]`
-/

namespace A066797.P3812438950520134204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P3812438950520134204

/-! ## A066797.P13910388887424293171

`∑[A126869(4*(n+1))]`
-/

namespace A066797.P13910388887424293171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066797.P13910388887424293171

/-!
# A066798: a(n) = Sum_{i=1..n} binomial(6*i,3*i).

The programs for A066798, there is no canonical definition to state claims against.
-/

/-! ## A066798.P16173628570981170584

`∑[A066802(n+1)]`
-/

namespace A066798.P16173628570981170584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066798.P16173628570981170584

/-! ## A066798.P3783395410512385474

`∑[4*A187366(n)]`
-/

namespace A066798.P3783395410512385474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A187366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066798.P3783395410512385474

/-! ## A066798.P6337155033419578494

`∑[A187442(2*(n+1))]`
-/

namespace A066798.P6337155033419578494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187442 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066798.P6337155033419578494

/-! ## A066798.P18438408654570842832

`∑[A000984(3*(n+1))]`
-/

namespace A066798.P18438408654570842832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066798.P18438408654570842832

/-! ## A066798.P5626791264223450106

`∑[A001405(6*(n+1))]`
-/

namespace A066798.P5626791264223450106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (6 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066798.P5626791264223450106

/-! ## A066798.P8781317173194164846

`A360153(3*(n+1))-1`
-/

namespace A066798.P8781317173194164846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360153 (3 * (n + 1)) - 1

end

end A066798.P8781317173194164846

/-! ## A066798.P13139356140524364060

`∑[record[A126869(3*(n+2))]]`
-/

namespace A066798.P13139356140524364060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (3 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066798.P13139356140524364060

/-! ## A066798.P16445791914615765111

`2*∑[A088218(3*(n+1))]`
-/

namespace A066798.P16445791914615765111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066798.P16445791914615765111

/-! ## A066798.P15642405208677205426

`∑[2*A001700(3*n+2)]`
-/

namespace A066798.P15642405208677205426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001700 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066798.P15642405208677205426

/-! ## A066798.P9691558940761261068

`∑[4*A187444(2*n+1)]`
-/

namespace A066798.P9691558940761261068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A187444 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066798.P9691558940761261068

/-!
# A066799: Square array read by antidiagonals of eventual period of powers of k mod n; period of repeating digits of 1/n in base k.

The programs for A066799, there is no canonical definition to state claims against.
-/

/-! ## A066799.P10467367729247947497

`gcd(A001316(n), A316311(A204201(n+1)))`
-/

namespace A066799.P10467367729247947497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 n) (A316311 (A204201 (n + 1)).toNat)

end

end A066799.P10467367729247947497

/-! ## A066799.P9021379498861525542

`A201384(A081412(n+2)^A144871(n+1))`
-/

namespace A066799.P9021379498861525542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (SequenceMachineLib.roundAway ((A081412 (n + 2) : ℚ) ^ (A144871 (n + 1) : ℤ))).toNat

end

end A066799.P9021379498861525542

/-! ## A066799.P8055899024887502735

`gcd(A035116(A065941(n)), A216631(n+1))`
-/

namespace A066799.P8055899024887502735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035116 (A065941 n).toNat) (A216631 (n + 1))

end

end A066799.P8055899024887502735

/-! ## A066799.P50344519612004044

`A000010(gcd(A092056(n), A161406(2*n+1)))`
-/

namespace A066799.P50344519612004044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (A092056 n) (A161406 (2 * n + 1)))

end

end A066799.P50344519612004044

