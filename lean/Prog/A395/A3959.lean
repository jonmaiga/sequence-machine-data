import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A395900: Number of residue classes r (mod n) for which k = r + m*n, m >= 1, is such that gcd(k,n) > 1 but rad(k) does not divide n, and rad(n) does not divide k, where rad = A007947.

The programs for A395900, there is no canonical definition to state claims against.
-/

/-! ## A395900.P1613562999257971362

`A381803(n+1)-A395984(n+1)`
-/

namespace A395900.P1613562999257971362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (n + 1) - A395984 (n + 1)

end

end A395900.P1613562999257971362

/-! ## A395900.P5132840655142966963

`A381803(A290480(n+1))`
-/

namespace A395900.P5132840655142966963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (A290480 (n + 1)).toNat

end

end A395900.P5132840655142966963

/-!
# A395901: Numbers c that appear in more than one abc triple with rad(a*b*c) < c and gcd(a,b)=1.

The programs for A395901, there is no canonical definition to state claims against.
-/

/-! ## A395901.P1509892882965245145

`A088247(lt[A229192(2*(n+1)), A247566(n+2)])`
-/

namespace A395901.P1509892882965245145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229192 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247566 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A395901.P1509892882965245145

/-!
# A395908: Series expansion of (27*x - 14*x^2 + 2*x^3) / (1 - x)^7.

The programs for A395908, the canonical program `A395908.P13993909786748262097` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395908 has offset 0).

The definition of A395908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395908.P13993909786748262097

`n*(n+1)*(n+2)*(n+3)*(n+5)*(n+8)/48`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A395908

/-- `n*(n+1)*(n+2)*(n+3)*(n+5)*(n+8)/48` -/
def P13993909786748262097.Spec : Prop :=
  ∀ n, P13993909786748262097.a n = (A395908 n : ℚ)

end A395908

/-! ## A395908.P14679607092674794185

`A215863(n)+A162668(n)`
-/

namespace A395908.P14679607092674794185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215863 n + A162668 n

end

end A395908.P14679607092674794185

namespace A395908

/-- `A215863(n)+A162668(n)` -/
def P14679607092674794185.Spec : Prop :=
  ∀ n, P14679607092674794185.a n = A395908 n

end A395908

/-! ## A395908.P17236664170673704882

`A354794(A000096(n+2)+n+1)`
-/

namespace A395908.P17236664170673704882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 (A000096 (n + 2) + (n + 1 : ℤ)).toNat

end

end A395908.P17236664170673704882

namespace A395908

/-- `A354794(A000096(n+2)+n+1)` -/
def P17236664170673704882.Spec : Prop :=
  ∀ n, P17236664170673704882.a n = A395908 n

end A395908

/-! ## A395908.P17398961498101126962

`A354794(A005843(n)+(n+1)*(n+4)/2+4)`
-/

namespace A395908.P17398961498101126962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 (SequenceMachineLib.roundAway ((A005843 n : ℚ) + (((n + 1) * (n + 4) : ℚ) / 2 + 4))).toNat

end

end A395908.P17398961498101126962

namespace A395908

/-- `A354794(A005843(n)+(n+1)*(n+4)/2+4)` -/
def P17398961498101126962.Spec : Prop :=
  ∀ n, P17398961498101126962.a n = A395908 n

end A395908

/-!
# A395909: Triangle read by rows: row n gives marks on lexicographically earliest n-mark optimal ruler.

The programs for A395909, there is no canonical definition to state claims against.
-/

/-! ## A395909.P14931453722779863794

`and(A046051(A059306(n)), A213191(n))`
-/

namespace A395909.P14931453722779863794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046051 (A059306 n).toNat) (A213191 n)

end

end A395909.P14931453722779863794

/-! ## A395909.P11471117576146756813

`A106683(n+1)/A385886(A085158(n))`
-/

namespace A395909.P11471117576146756813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106683 (n + 1) : ℚ) / (A385886 (A085158 n).toNat : ℚ)

end

end A395909.P11471117576146756813

/-! ## A395909.P12088156314964732441

`A106683(n+1)/A392630(A264635(n+1))`
-/

namespace A395909.P12088156314964732441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106683 (n + 1) : ℚ) / (A392630 (A264635 (n + 1)).toNat : ℚ)

end

end A395909.P12088156314964732441

/-! ## A395909.P11523935489671806633

`A106683(n+1)/A124766(A320133(3*n))`
-/

namespace A395909.P11523935489671806633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106683 (n + 1) : ℚ) / (A124766 (A320133 (3 * n)).toNat : ℚ)

end

end A395909.P11523935489671806633

/-! ## A395909.P3252848776249797691

`gcd(A072137(A185213(n+1)), A106683(n+1))`
-/

namespace A395909.P3252848776249797691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072137 (A185213 (n + 1)).toNat) (A106683 (n + 1))

end

end A395909.P3252848776249797691

/-!
# A395915: Number of permutations p of [n] satisfying p(i+7)-p(i)<>7 for all 1<=i<=n-7.

The programs for A395915, there is no canonical definition to state claims against.
-/

/-! ## A395915.P13824595460881911127

`A265349(A287278(n))`
-/

namespace A395915.P13824595460881911127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265349 (A287278 n).toNat

end

end A395915.P13824595460881911127

/-!
# A395920: Number of relations R on an n-element set such that the transitive closure of R has exactly three elements more than R.

The programs for A395920, there is no canonical definition to state claims against.
-/

/-! ## A395920.P13204872996549747914

`A282791(A390479(n)+A001147(n))`
-/

namespace A395920.P13204872996549747914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A390479 n + A001147 n).toNat

end

end A395920.P13204872996549747914

/-!
# A395923: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is the number of rectangular plane partitions of n with exactly k rows.

The programs for A395923, there is no canonical definition to state claims against.
-/

/-! ## A395923.P16740619808191711063

`A282905(A143291(n+2))`
-/

namespace A395923.P16740619808191711063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282905 (A143291 (n + 2)).toNat

end

end A395923.P16740619808191711063

/-! ## A395923.P2461615750677920405

`A353840(A207031(n+1)%A386603(3*n+4))`
-/

namespace A395923.P2461615750677920405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (Int.tmod (A207031 (n + 1)) (A386603 (3 * n + 4))).toNat

end

end A395923.P2461615750677920405

/-! ## A395923.P16582224686186997587

`A353840(A207031(n+1))%A339063(2*n+1)`
-/

namespace A395923.P16582224686186997587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353840 (A207031 (n + 1)).toNat) (A339063 (2 * n + 1))

end

end A395923.P16582224686186997587

/-! ## A395923.P17497496383226966040

`A325765(A139116(n+1))`
-/

namespace A395923.P17497496383226966040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (A139116 (n + 1)).toNat

end

end A395923.P17497496383226966040

/-! ## A395923.P206355559371056321

`or(A147809(A300323(n)), A376682(n))`
-/

namespace A395923.P206355559371056321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147809 (A300323 n).toNat) (A376682 n)

end

end A395923.P206355559371056321

/-!
# A395927: a(n) is the number of different possible words of length n that can be found in a Boggle grid.

The programs for A395927, there is no canonical definition to state claims against.
-/

/-! ## A395927.P6305559714559946837

`A186861(A141214(n+1))`
-/

namespace A395927.P6305559714559946837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A141214 (n + 1)).toNat

end

end A395927.P6305559714559946837

/-!
# A395931: Primes p that are the least prime factor of 2^k - 1 for some k >= 1.

The programs for A395931, there is no canonical definition to state claims against.
-/

/-! ## A395931.P7460970396983815681

`record[A098867(n+1)]`
-/

namespace A395931.P7460970396983815681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395931.P7460970396983815681

/-! ## A395931.P16138429380068697594

`∩[A122094(n+1), A260124(n)]`
-/

namespace A395931.P16138429380068697594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395931.P16138429380068697594

/-! ## A395931.P17739935449874963169

`∩[A392845(n+1), A260124(n)]`
-/

namespace A395931.P17739935449874963169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395931.P17739935449874963169

/-! ## A395931.P6228946107701404252

`∩[A116959(n+1), A122094(n+1)]`
-/

namespace A395931.P6228946107701404252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395931.P6228946107701404252

/-! ## A395931.P8435495401795826189

`∩[A122094(n+1), A167773(n+1)]`
-/

namespace A395931.P8435495401795826189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395931.P8435495401795826189

/-!
# A395932: Main diagonal of A396981.

The programs for A395932, there is no canonical definition to state claims against.
-/

/-! ## A395932.P9985627744420426602

`A396981(∑[4*n])`
-/

namespace A395932.P9985627744420426602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396981 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395932.P9985627744420426602

/-!
# A395933: Number of fixed points of the longest-run operator with radius 2 on binary configurations of the cycle graph C_n.

The programs for A395933, the canonical program `A395933.P16884302019947846580` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395933 has offset 1).

The definition of A395933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395933.P16884302019947846580

`2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=4, a(2)=2, a(3)=8, a(4)=12, a(5)=22`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A395933

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P16884302019947846580.Spec : Prop :=
  ∀ n, P16884302019947846580.a n = A395933 (n + 1)

theorem P16884302019947846580.correct : P16884302019947846580.Spec := by
  intro n
  simp only [A395933, Nat.add_sub_cancel]

end A395933

/-! ## A395933.P9143340861964859229

`A010673(n)+A007039(n+1)`
-/

namespace A395933.P9143340861964859229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A007039 (n + 1)

end

end A395933.P9143340861964859229

namespace A395933

/-- `A010673(n)+A007039(n+1)` -/
def P9143340861964859229.Spec : Prop :=
  ∀ n, P9143340861964859229.a n = A395933 (n + 1)

end A395933

/-! ## A395933.P13893961557679212304

`A297661(n+1)-A004442(n)`
-/

namespace A395933.P13893961557679212304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 1) - A004442 n

end

end A395933.P13893961557679212304

namespace A395933

/-- `A297661(n+1)-A004442(n)` -/
def P13893961557679212304.Spec : Prop :=
  ∀ n, P13893961557679212304.a n = A395933 (n + 1)

end A395933

/-!
# A395941: Number of partitions of n^2 into prime parts not exceeding n.

The programs for A395941, there is no canonical definition to state claims against.
-/

/-! ## A395941.P1736304990845799884

`A368869(n²)`
-/

namespace A395941.P1736304990845799884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368869 (n ^ 2)

end

end A395941.P1736304990845799884

/-!
# A395942: Number of inequivalent tilings of an n X n grid by 1 X p rectangles using the prime partitions of n^2 into prime parts p <= n up to symmetry.

The programs for A395942, there is no canonical definition to state claims against.
-/

/-! ## A395942.P18340620545970268831

`A141387(A094223(n)-1)`
-/

namespace A395942.P18340620545970268831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 (A094223 n - 1).toNat

end

end A395942.P18340620545970268831

/-!
# A395947: Expansion of e.g.f.: x*sinh(x)^2*cosh(x) (odd powers only).

The programs for A395947, the canonical program `A395947.P7316245981973091337` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395947 has offset 1).

The definition of A395947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395947.P7316245981973091337

`(2*(n+1)-1)*(3^(2*(n+1)-2)-1)/4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A395947

/-- `(2*(n+1)-1)*(3^(2*(n+1)-2)-1)/4` -/
def P7316245981973091337.Spec : Prop :=
  ∀ n, P7316245981973091337.a n = (A395947 (n + 1) : ℚ)

end A395947

/-! ## A395947.P3741231526117545691

`A360035(Δ[n²])`
-/

namespace A395947.P3741231526117545691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A395947.P3741231526117545691

namespace A395947

/-- `A360035(Δ[n²])` -/
def P3741231526117545691.Spec : Prop :=
  ∀ n, P3741231526117545691.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P3303045432845185573

`A360036(Δ[n²])`
-/

namespace A395947.P3303045432845185573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360036 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A395947.P3303045432845185573

namespace A395947

/-- `A360036(Δ[n²])` -/
def P3303045432845185573.Spec : Prop :=
  ∀ n, P3303045432845185573.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P12280021234774411314

`lcm(2, A360035(2*n+1))`
-/

namespace A395947.P12280021234774411314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A360035 (2 * n + 1))

end

end A395947.P12280021234774411314

namespace A395947

/-- `lcm(2, A360035(2*n+1))` -/
def P12280021234774411314.Spec : Prop :=
  ∀ n, (P12280021234774411314.a n : ℤ) = A395947 (n + 1)

end A395947

/-! ## A395947.P17077326388590275915

`(2*n+1)*A125857(n+1)`
-/

namespace A395947.P17077326388590275915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A125857 (n + 1)

end

end A395947.P17077326388590275915

namespace A395947

/-- `(2*n+1)*A125857(n+1)` -/
def P17077326388590275915.Spec : Prop :=
  ∀ n, P17077326388590275915.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P11340271567786837029

`(2*n+1)*A015518(2*n)`
-/

namespace A395947.P11340271567786837029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A015518 (2 * n)

end

end A395947.P11340271567786837029

namespace A395947

/-- `(2*n+1)*A015518(2*n)` -/
def P11340271567786837029.Spec : Prop :=
  ∀ n, P11340271567786837029.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P897734276631798653

`A360023(2*n+1)-(2*n+1)`
-/

namespace A395947.P897734276631798653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360023 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A395947.P897734276631798653

namespace A395947

/-- `A360023(2*n+1)-(2*n+1)` -/
def P897734276631798653.Spec : Prop :=
  ∀ n, P897734276631798653.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P16400314390611626201

`A360715(2*n+1)-(2*n+1)`
-/

namespace A395947.P16400314390611626201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360715 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A395947.P16400314390611626201

namespace A395947

/-- `A360715(2*n+1)-(2*n+1)` -/
def P16400314390611626201.Spec : Prop :=
  ∀ n, P16400314390611626201.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P3198391591090152616

`lcm(2*n+1, A360036(2*n+1))`
-/

namespace A395947.P3198391591090152616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A360036 (2 * n + 1))

end

end A395947.P3198391591090152616

namespace A395947

/-- `lcm(2*n+1, A360036(2*n+1))` -/
def P3198391591090152616.Spec : Prop :=
  ∀ n, (P3198391591090152616.a n : ℤ) = A395947 (n + 1)

end A395947

/-! ## A395947.P10966386555611319145

`A372872(2*(n+1))-A007051(2*n+1)`
-/

namespace A395947.P10966386555611319145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372872 (2 * (n + 1)) - A007051 (2 * n + 1)

end

end A395947.P10966386555611319145

namespace A395947

/-- `A372872(2*(n+1))-A007051(2*n+1)` -/
def P10966386555611319145.Spec : Prop :=
  ∀ n, P10966386555611319145.a n = A395947 (n + 1)

end A395947

/-! ## A395947.P12785908896135690322

`A261064(2*n+1)-A392266(2*n+1)`
-/

namespace A395947.P12785908896135690322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (2 * n + 1) - A392266 (2 * n + 1)

end

end A395947.P12785908896135690322

namespace A395947

/-- `A261064(2*n+1)-A392266(2*n+1)` -/
def P12785908896135690322.Spec : Prop :=
  ∀ n, P12785908896135690322.a n = A395947 (n + 1)

end A395947

/-!
# A395948: Expansion of e.g.f. sinh(x)^2*cosh(x)*exp(x).

The programs for A395948, the canonical program `A395948.P12794132619196995956` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395948 has offset 0).

The definition of A395948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395948.P12794132619196995956

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A395948

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P12794132619196995956.Spec : Prop :=
  ∀ n, P12794132619196995956.a n = A395948 n

theorem P12794132619196995956.correct : P12794132619196995956.Spec := by
  intro n
  simp only [A395948]

end A395948

/-! ## A395948.P13090306900680733441

`A274497(n)+A000431(n)`
-/

namespace A395948.P13090306900680733441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 n + A000431 n

end

end A395948.P13090306900680733441

namespace A395948

/-- `A274497(n)+A000431(n)` -/
def P13090306900680733441.Spec : Prop :=
  ∀ n, P13090306900680733441.a n = A395948 n

end A395948

/-! ## A395948.P1953165026100089208

`and(A117110(n), A377855(n))`
-/

namespace A395948.P1953165026100089208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117110 n) (A377855 n)

end

end A395948.P1953165026100089208

namespace A395948

/-- `and(A117110(n), A377855(n))` -/
def P1953165026100089208.Spec : Prop :=
  ∀ n, P1953165026100089208.a n = A395948 n

end A395948

/-! ## A395948.P4808128213704427724

`A007590(2^n-n%2)/4`
-/

namespace A395948.P4808128213704427724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (2 ^ n - n % 2) : ℚ) / 4

end

end A395948.P4808128213704427724

namespace A395948

/-- `A007590(2^n-n%2)/4` -/
def P4808128213704427724.Spec : Prop :=
  ∀ n, P4808128213704427724.a n = (A395948 n : ℚ)

end A395948

/-! ## A395948.P11238353575177771957

`A001971(A051049(n))`
-/

namespace A395948.P11238353575177771957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A051049 n).toNat

end

end A395948.P11238353575177771957

namespace A395948

/-- `A001971(A051049(n))` -/
def P11238353575177771957.Spec : Prop :=
  ∀ n, P11238353575177771957.a n = A395948 n

end A395948

/-!
# A395952: a(n) is the largest integer k < 2^(n-1) for which the number of divisors is equal to n, or 0 if no such k exists.

The programs for A395952, there is no canonical definition to state claims against.
-/

/-! ## A395952.P6088778379181885919

`A039860(A061215(n+1))`
-/

namespace A395952.P6088778379181885919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039860 (A061215 (n + 1)).toNat

end

end A395952.P6088778379181885919

/-! ## A395952.P14632826519608166278

`Δ[or(1, n)]*A335525(A335473(n))`
-/

namespace A395952.P14632826519608166278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A335525 (A335473 n).toNat

end

end A395952.P14632826519608166278

/-! ## A395952.P13431583429775814082

`A296657(A271314(n+3))*A320080(3*(n+1))`
-/

namespace A395952.P13431583429775814082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (A271314 (n + 3)).toNat * A320080 (3 * (n + 1))

end

end A395952.P13431583429775814082

/-!
# A395955: Numerator of the n-th moment of the probability distribution of distances from the center of a unit disk to a line passing through two points independently and uniformly selected at random in the disk.

The programs for A395955, there is no canonical definition to state claims against.
-/

/-! ## A395955.P1517051933891915150

`A000034(n)^A070939(A220805(3*n+1))`
-/

namespace A395955.P1517051933891915150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) ^ (A070939 (A220805 (3 * n + 1)).toNat : ℤ)

end

end A395955.P1517051933891915150

/-! ## A395955.P5615157073841856563

`A051700(A000129(n+4))^A293226(n+5)`
-/

namespace A395955.P5615157073841856563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051700 (A000129 (n + 4)).toNat : ℚ) ^ (A293226 (n + 5) : ℤ)

end

end A395955.P5615157073841856563

/-!
# A395958: Third iterate of the Thue-Morse transform applied to A000035.

The programs for A395958, the canonical program `A395958.P5165968733303486376` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395958 has offset 0).

The definition of A395958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395958.P18046499552924003026

`char[A395960(n+1)]`
-/

namespace A395958.P18046499552924003026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A395958.P18046499552924003026

namespace A395958

/-- `char[A395960(n+1)]` -/
def P18046499552924003026.Spec : Prop :=
  ∀ n, (P18046499552924003026.a n : ℤ) = A395958 n

end A395958

/-! ## A395958.P5165968733303486376

`A010060(A064707(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A395958

/-- `A010060(A064707(n))` -/
def P5165968733303486376.Spec : Prop :=
  ∀ n, P5165968733303486376.a n = A395958 n

theorem P5165968733303486376.correct : P5165968733303486376.Spec := by
  intro n
  simp only [A395958]

end A395958

/-! ## A395958.P11994598469672935083

`A269927(A160700(n))`
-/

namespace A395958.P11994598469672935083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269927 (A160700 n).toNat

end

end A395958.P11994598469672935083

namespace A395958

/-- `A269927(A160700(n))` -/
def P11994598469672935083.Spec : Prop :=
  ∀ n, P11994598469672935083.a n = A395958 n

end A395958

/-! ## A395958.P10288834291908852516

`A341389(A006068(n))`
-/

namespace A395958.P10288834291908852516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A006068 n).toNat

end

end A395958.P10288834291908852516

namespace A395958

/-- `A341389(A006068(n))` -/
def P10288834291908852516.Spec : Prop :=
  ∀ n, P10288834291908852516.a n = A395958 n

end A395958

/-! ## A395958.P7540881541178737818

`A165211(A193231(n))`
-/

namespace A395958.P7540881541178737818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (A193231 n).toNat

end

end A395958.P7540881541178737818

namespace A395958

/-- `A165211(A193231(n))` -/
def P7540881541178737818.Spec : Prop :=
  ∀ n, P7540881541178737818.a n = A395958 n

end A395958

/-! ## A395958.P9464374076531810370

`A395961(A003188(n))`
-/

namespace A395958.P9464374076531810370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A003188 n).toNat

end

end A395958.P9464374076531810370

namespace A395958

/-- `A395961(A003188(n))` -/
def P9464374076531810370.Spec : Prop :=
  ∀ n, P9464374076531810370.a n = A395958 n

end A395958

/-! ## A395958.P3531644500725902041

`A269723(A268716(n))`
-/

namespace A395958.P3531644500725902041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A268716 n).toNat

end

end A395958.P3531644500725902041

namespace A395958

/-- `A269723(A268716(n))` -/
def P3531644500725902041.Spec : Prop :=
  ∀ n, P3531644500725902041.a n = A395958 n

end A395958

/-! ## A395958.P4074060363660343200

`A395961(A163241(n))`
-/

namespace A395958.P4074060363660343200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A163241 n).toNat

end

end A395958.P4074060363660343200

namespace A395958

/-- `A395961(A163241(n))` -/
def P4074060363660343200.Spec : Prop :=
  ∀ n, P4074060363660343200.a n = A395958 n

end A395958

/-! ## A395958.P2279157450248690415

`A395961(A163355(n))`
-/

namespace A395958.P2279157450248690415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A163355 n).toNat

end

end A395958.P2279157450248690415

namespace A395958

/-- `A395961(A163355(n))` -/
def P2279157450248690415.Spec : Prop :=
  ∀ n, P2279157450248690415.a n = A395958 n

end A395958

/-! ## A395958.P6081214358858636788

`A341389(A395959(n+1))`
-/

namespace A395958.P6081214358858636788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A395959 (n + 1)).toNat

end

end A395958.P6081214358858636788

namespace A395958

/-- `A341389(A395959(n+1))` -/
def P6081214358858636788.Spec : Prop :=
  ∀ n, P6081214358858636788.a n = A395958 n

end A395958

/-! ## A395958.P8117021355554883450

`A112539(A395960(n+1)+1)`
-/

namespace A395958.P8117021355554883450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112539 (A395960 (n + 1) + 1).toNat

end

end A395958.P8117021355554883450

namespace A395958

/-- `A112539(A395960(n+1)+1)` -/
def P8117021355554883450.Spec : Prop :=
  ∀ n, P8117021355554883450.a n = A395958 n

end A395958

/-! ## A395958.P17829144020965628155

`A010060(A004479(n))`
-/

namespace A395958.P17829144020965628155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004479 n).toNat

end

end A395958.P17829144020965628155

namespace A395958

/-- `A010060(A004479(n))` -/
def P17829144020965628155.Spec : Prop :=
  ∀ n, P17829144020965628155.a n = A395958 n

end A395958

/-! ## A395958.P6345348732046374214

`A269723(A004472(n))`
-/

namespace A395958.P6345348732046374214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A004472 n).toNat

end

end A395958.P6345348732046374214

namespace A395958

/-- `A269723(A004472(n))` -/
def P6345348732046374214.Spec : Prop :=
  ∀ n, P6345348732046374214.a n = A395958 n

end A395958

/-! ## A395958.P5309012516873560490

`A159637(A163234(n))`
-/

namespace A395958.P5309012516873560490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159637 (A163234 n).toNat

end

end A395958.P5309012516873560490

namespace A395958

/-- `A159637(A163234(n))` -/
def P5309012516873560490.Spec : Prop :=
  ∀ n, P5309012516873560490.a n = A395958 n

end A395958

/-! ## A395958.P3331353585700083977

`A159637(A163236(n))`
-/

namespace A395958.P3331353585700083977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159637 (A163236 n).toNat

end

end A395958.P3331353585700083977

namespace A395958

/-- `A159637(A163236(n))` -/
def P3331353585700083977.Spec : Prop :=
  ∀ n, P3331353585700083977.a n = A395958 n

end A395958

/-! ## A395958.P16882030369548860000

`A341389(A004474(n))`
-/

namespace A395958.P16882030369548860000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A004474 n).toNat

end

end A395958.P16882030369548860000

namespace A395958

/-- `A341389(A004474(n))` -/
def P16882030369548860000.Spec : Prop :=
  ∀ n, P16882030369548860000.a n = A395958 n

end A395958

/-! ## A395958.P4173061970489847925

`A395961(A004468(n))`
-/

namespace A395958.P4173061970489847925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A004468 n).toNat

end

end A395958.P4173061970489847925

namespace A395958

/-- `A395961(A004468(n))` -/
def P4173061970489847925.Spec : Prop :=
  ∀ n, P4173061970489847925.a n = A395958 n

end A395958

/-! ## A395958.P987131225642880522

`A010060(A395959(2*(n+1)))`
-/

namespace A395958.P987131225642880522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A395959 (2 * (n + 1))).toNat

end

end A395958.P987131225642880522

namespace A395958

/-- `A010060(A395959(2*(n+1)))` -/
def P987131225642880522.Spec : Prop :=
  ∀ n, P987131225642880522.a n = A395958 n

end A395958

/-! ## A395958.P12152299027760512158

`A269723(2*A395959(n+1))`
-/

namespace A395958.P12152299027760512158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (2 * A395959 (n + 1)).toNat

end

end A395958.P12152299027760512158

namespace A395958

/-- `A269723(2*A395959(n+1))` -/
def P12152299027760512158.Spec : Prop :=
  ∀ n, P12152299027760512158.a n = A395958 n

end A395958

/-! ## A395958.P6223245294478555215

`1-A010060(A395960(2*n+1))`
-/

namespace A395958.P6223245294478555215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A395960 (2 * n + 1)).toNat

end

end A395958.P6223245294478555215

namespace A395958

/-- `1-A010060(A395960(2*n+1))` -/
def P6223245294478555215.Spec : Prop :=
  ∀ n, P6223245294478555215.a n = A395958 n

end A395958

/-!
# A395959: Numbers k such that A395958(k) = 0.

The programs for A395959, the canonical program `A395959.P2730340011751273461` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395959 has offset 1).

The definition of A395959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395959.P2730340011751273461

`2*n+A395958(2*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A395959

/-- `2*n+A395958(2*n)` -/
def P2730340011751273461.Spec : Prop :=
  ∀ n, P2730340011751273461.a n = A395959 (n + 1)

theorem P2730340011751273461.correct : P2730340011751273461.Spec := by
  intro n
  simp only [A395959, Nat.add_sub_cancel]

end A395959

/-! ## A395959.P10584220566956970502

`xor(1, A395960(n+1))`
-/

namespace A395959.P10584220566956970502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A395960 (n + 1))

end

end A395959.P10584220566956970502

namespace A395959

/-- `xor(1, A395960(n+1))` -/
def P10584220566956970502.Spec : Prop :=
  ∀ n, P10584220566956970502.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P7269277556593066112

`A016813(n)-A395960(n+1)`
-/

namespace A395959.P7269277556593066112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395960 (n + 1)

end

end A395959.P7269277556593066112

namespace A395959

/-- `A016813(n)-A395960(n+1)` -/
def P7269277556593066112.Spec : Prop :=
  ∀ n, P7269277556593066112.a n = A395959 (n + 1)

theorem P7269277556593066112.correct : P7269277556593066112.Spec := by
  intro n
  simp only [A395959, Nat.add_sub_cancel, A395959.P7269277556593066112.a, A395959.P2730340011751273461.a, A016813, A016813.P15626904835145642280.a, A395958, A395958.P5165968733303486376.a, A395960, A395960.P5958715908451391238.a, A010060, A010060.P3080921269106500717.a, A064707, A064707.P16779567911126322867.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, A003817, A003817.P16251594020616633079.a, A005187, A005187.P3874015513960485494.a, A006068, A006068.P16534033749009019403.a, A063946, A063946.P14831572246508618093.a, A292600, A292600.P3914548694480041296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395959

/-! ## A395959.P3493203959655040220

`A002943(n)/A395960(n+1)`
-/

namespace A395959.P3493203959655040220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A395960 (n + 1) : ℚ)

end

end A395959.P3493203959655040220

namespace A395959

/-- `A002943(n)/A395960(n+1)` -/
def P3493203959655040220.Spec : Prop :=
  ∀ n, P3493203959655040220.a n = (A395959 (n + 1) : ℚ)

end A395959

/-! ## A395959.P9714823752039904361

`xor(A158704(n+1), A395958(n))`
-/

namespace A395959.P9714823752039904361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158704 (n + 1)) (A395958 n)

end

end A395959.P9714823752039904361

namespace A395959

/-- `xor(A158704(n+1), A395958(n))` -/
def P9714823752039904361.Spec : Prop :=
  ∀ n, P9714823752039904361.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P7485574554681714467

`xor(A395961(n), A395962(n+1))`
-/

namespace A395959.P7485574554681714467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395961 n) (A395962 (n + 1))

end

end A395959.P7485574554681714467

namespace A395959

/-- `xor(A395961(n), A395962(n+1))` -/
def P7485574554681714467.Spec : Prop :=
  ∀ n, P7485574554681714467.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P5474870238635279113

`A000069(n+1)+A001969(n+1)-A395960(n+1)`
-/

namespace A395959.P5474870238635279113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A395960 (n + 1))

end

end A395959.P5474870238635279113

namespace A395959

/-- `A000069(n+1)+A001969(n+1)-A395960(n+1)` -/
def P5474870238635279113.Spec : Prop :=
  ∀ n, P5474870238635279113.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P9953028874553506893

`A158704(n+1)+A158705(n+1)-A395960(n+1)`
-/

namespace A395959.P9953028874553506893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + (A158705 (n + 1) - A395960 (n + 1))

end

end A395959.P9953028874553506893

namespace A395959

/-- `A158704(n+1)+A158705(n+1)-A395960(n+1)` -/
def P9953028874553506893.Spec : Prop :=
  ∀ n, P9953028874553506893.a n = A395959 (n + 1)

end A395959

/-! ## A395959.P7066820002874987282

`A395962(n+1)+A395963(n+1)-A395960(n+1)`
-/

namespace A395959.P7066820002874987282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395962 (n + 1) + (A395963 (n + 1) - A395960 (n + 1))

end

end A395959.P7066820002874987282

namespace A395959

/-- `A395962(n+1)+A395963(n+1)-A395960(n+1)` -/
def P7066820002874987282.Spec : Prop :=
  ∀ n, P7066820002874987282.a n = A395959 (n + 1)

theorem P7066820002874987282.correct : P7066820002874987282.Spec := by
  intro n
  simp only [A395959, Nat.add_sub_cancel, A395959.P7066820002874987282.a, A395959.P2730340011751273461.a, A395958, A395958.P5165968733303486376.a, A395960, A395960.P5958715908451391238.a, A395962, A395962.P3547014246278371736.a, A395963, A395963.P2013661775841027138.a, A010060, A010060.P3080921269106500717.a, A064707, A064707.P16779567911126322867.a, A395961, A395961.P9208801736051543594.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A053836, A053836.P6566921165131624833.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, A003817, A003817.P16251594020616633079.a, A005187, A005187.P3874015513960485494.a, A006068, A006068.P16534033749009019403.a, A054900, A054900.P10951327238473995848.a, A063946, A063946.P14831572246508618093.a, A292600, A292600.P3914548694480041296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395959

/-! ## A395959.P4396228982941411716

`comp[A395960(n+1)]`
-/

namespace A395959.P4396228982941411716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395959.P4396228982941411716

namespace A395959

/-- `comp[A395960(n+1)]` -/
def P4396228982941411716.Spec : Prop :=
  ∀ n, (P4396228982941411716.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P12524603400481249381

`eq[A181405(n+1), A395958(n)]`
-/

namespace A395959.P12524603400481249381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395959.P12524603400481249381

namespace A395959

/-- `eq[A181405(n+1), A395958(n)]` -/
def P12524603400481249381.Spec : Prop :=
  ∀ n, (P12524603400481249381.a n : ℤ) = A395959 (n + 1)

end A395959

/-! ## A395959.P10783490515935878079

`2*n+1-A341389(A395960(2*n+1))`
-/

namespace A395959.P10783490515935878079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A341389 (A395960 (2 * n + 1)).toNat

end

end A395959.P10783490515935878079

namespace A395959

/-- `2*n+1-A341389(A395960(2*n+1))` -/
def P10783490515935878079.Spec : Prop :=
  ∀ n, P10783490515935878079.a n = A395959 (n + 1)

end A395959

/-!
# A395960: Numbers k such that A395958(k) = 1.

The programs for A395960, the canonical program `A395960.P5958715908451391238` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395960 has offset 1).

The definition of A395960 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395960.P5958715908451391238

`2*n+1-A395958(2*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A395960

/-- `2*n+1-A395958(2*n)` -/
def P5958715908451391238.Spec : Prop :=
  ∀ n, P5958715908451391238.a n = A395960 (n + 1)

theorem P5958715908451391238.correct : P5958715908451391238.Spec := by
  intro n
  simp only [A395960, Nat.add_sub_cancel]

end A395960

/-! ## A395960.P13618724001751528675

`comp[A395959(n+1)]`
-/

namespace A395960.P13618724001751528675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395960.P13618724001751528675

namespace A395960

/-- `comp[A395959(n+1)]` -/
def P13618724001751528675.Spec : Prop :=
  ∀ n, (P13618724001751528675.a n : ℤ) = A395960 (n + 1)

end A395960

/-! ## A395960.P11498477628546384965

`A016813(n)-A395959(n+1)`
-/

namespace A395960.P11498477628546384965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395959 (n + 1)

end

end A395960.P11498477628546384965

namespace A395960

/-- `A016813(n)-A395959(n+1)` -/
def P11498477628546384965.Spec : Prop :=
  ∀ n, P11498477628546384965.a n = A395960 (n + 1)

theorem P11498477628546384965.correct : P11498477628546384965.Spec := by
  intro n
  simp only [A395960, Nat.add_sub_cancel, A395960.P11498477628546384965.a, A395960.P5958715908451391238.a, A016813, A016813.P15626904835145642280.a, A395958, A395958.P5165968733303486376.a, A395959, A395959.P2730340011751273461.a, A010060, A010060.P3080921269106500717.a, A064707, A064707.P16779567911126322867.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, A003817, A003817.P16251594020616633079.a, A005187, A005187.P3874015513960485494.a, A006068, A006068.P16534033749009019403.a, A063946, A063946.P14831572246508618093.a, A292600, A292600.P3914548694480041296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395960

/-! ## A395960.P17893372463751852632

`xor(A158705(n+1), A395958(n))`
-/

namespace A395960.P17893372463751852632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158705 (n + 1)) (A395958 n)

end

end A395960.P17893372463751852632

namespace A395960

/-- `xor(A158705(n+1), A395958(n))` -/
def P17893372463751852632.Spec : Prop :=
  ∀ n, P17893372463751852632.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P11286974273670211296

`xor(A395961(n), A395963(n+1))`
-/

namespace A395960.P11286974273670211296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395961 n) (A395963 (n + 1))

end

end A395960.P11286974273670211296

namespace A395960

/-- `xor(A395961(n), A395963(n+1))` -/
def P11286974273670211296.Spec : Prop :=
  ∀ n, P11286974273670211296.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P1378202431698301557

`A000069(n+1)+A001969(n+1)-A395959(n+1)`
-/

namespace A395960.P1378202431698301557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A395959 (n + 1))

end

end A395960.P1378202431698301557

namespace A395960

/-- `A000069(n+1)+A001969(n+1)-A395959(n+1)` -/
def P1378202431698301557.Spec : Prop :=
  ∀ n, P1378202431698301557.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P15921205474309839961

`A158704(n+1)+A158705(n+1)-A395959(n+1)`
-/

namespace A395960.P15921205474309839961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + (A158705 (n + 1) - A395959 (n + 1))

end

end A395960.P15921205474309839961

namespace A395960

/-- `A158704(n+1)+A158705(n+1)-A395959(n+1)` -/
def P15921205474309839961.Spec : Prop :=
  ∀ n, P15921205474309839961.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P1464641239969025867

`A395962(n+1)+A395963(n+1)-A395959(n+1)`
-/

namespace A395960.P1464641239969025867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395962 (n + 1) + (A395963 (n + 1) - A395959 (n + 1))

end

end A395960.P1464641239969025867

namespace A395960

/-- `A395962(n+1)+A395963(n+1)-A395959(n+1)` -/
def P1464641239969025867.Spec : Prop :=
  ∀ n, P1464641239969025867.a n = A395960 (n + 1)

theorem P1464641239969025867.correct : P1464641239969025867.Spec := by
  intro n
  simp only [A395960, Nat.add_sub_cancel, A395960.P1464641239969025867.a, A395960.P5958715908451391238.a, A395958, A395958.P5165968733303486376.a, A395959, A395959.P2730340011751273461.a, A395962, A395962.P3547014246278371736.a, A395963, A395963.P2013661775841027138.a, A010060, A010060.P3080921269106500717.a, A064707, A064707.P16779567911126322867.a, A395961, A395961.P9208801736051543594.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A053836, A053836.P6566921165131624833.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, A003817, A003817.P16251594020616633079.a, A005187, A005187.P3874015513960485494.a, A006068, A006068.P16534033749009019403.a, A054900, A054900.P10951327238473995848.a, A063946, A063946.P14831572246508618093.a, A292600, A292600.P3914548694480041296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395960

/-! ## A395960.P18195507512285487767

`A003188(A003188(A000069(A066194(A066194(n+1)))))`
-/

namespace A395960.P18195507512285487767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A000069 (A066194 (A066194 (n + 1)).toNat).toNat).toNat).toNat

end

end A395960.P18195507512285487767

namespace A395960

/-- `A003188(A003188(A000069(A066194(A066194(n+1)))))` -/
def P18195507512285487767.Spec : Prop :=
  ∀ n, P18195507512285487767.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P15516122156737004607

`A395958(2*n+1)+2*n`
-/

namespace A395960.P15516122156737004607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 (2 * n + 1) + (2 * n : ℤ)

end

end A395960.P15516122156737004607

namespace A395960

/-- `A395958(2*n+1)+2*n` -/
def P15516122156737004607.Spec : Prop :=
  ∀ n, P15516122156737004607.a n = A395960 (n + 1)

end A395960

/-! ## A395960.P14828299933662615966

`2*n+1-A341389(A395959(2*n+1))`
-/

namespace A395960.P14828299933662615966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A341389 (A395959 (2 * n + 1)).toNat

end

end A395960.P14828299933662615966

namespace A395960

/-- `2*n+1-A341389(A395959(2*n+1))` -/
def P14828299933662615966.Spec : Prop :=
  ∀ n, P14828299933662615966.a n = A395960 (n + 1)

end A395960

/-!
# A395961: Fourth iterate of the Thue-Morse transform applied to A000035.

The programs for A395961, the canonical program `A395961.P9208801736051543594` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395961 has offset 0).

The definition of A395961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395961.P9208801736051543594

`A053836(n)%2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A395961

/-- `A053836(n)%2` -/
def P9208801736051543594.Spec : Prop :=
  ∀ n, P9208801736051543594.a n = A395961 n

theorem P9208801736051543594.correct : P9208801736051543594.Spec := by
  intro n
  simp only [A395961]

end A395961

/-! ## A395961.P6111198385996075714

`A160700(n)%2`
-/

namespace A395961.P6111198385996075714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160700 n) 2

end

end A395961.P6111198385996075714

namespace A395961

/-- `A160700(n)%2` -/
def P6111198385996075714.Spec : Prop :=
  ∀ n, P6111198385996075714.a n = A395961 n

end A395961

/-! ## A395961.P17507604994995521225

`char[A395963(n+1)]`
-/

namespace A395961.P17507604994995521225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A395961.P17507604994995521225

namespace A395961

/-- `char[A395963(n+1)]` -/
def P17507604994995521225.Spec : Prop :=
  ∀ n, (P17507604994995521225.a n : ℤ) = A395961 n

end A395961

/-! ## A395961.P6038939166642292162

`A161440(n+1)%2`
-/

namespace A395961.P6038939166642292162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161440 (n + 1)) 2

end

end A395961.P6038939166642292162

namespace A395961

/-- `A161440(n+1)%2` -/
def P6038939166642292162.Spec : Prop :=
  ∀ n, P6038939166642292162.a n = A395961 n

end A395961

/-! ## A395961.P14596973488601683122

`A161442(n+1)%2`
-/

namespace A395961.P14596973488601683122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161442 (n + 1)) 2

end

end A395961.P14596973488601683122

namespace A395961

/-- `A161442(n+1)%2` -/
def P14596973488601683122.Spec : Prop :=
  ∀ n, P14596973488601683122.a n = A395961 n

end A395961

/-! ## A395961.P13963469156602708827

`A161444(n+1)%2`
-/

namespace A395961.P13963469156602708827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161444 (n + 1)) 2

end

end A395961.P13963469156602708827

namespace A395961

/-- `A161444(n+1)%2` -/
def P13963469156602708827.Spec : Prop :=
  ∀ n, P13963469156602708827.a n = A395961 n

end A395961

/-! ## A395961.P11397341610385480912

`A161446(n+1)%2`
-/

namespace A395961.P11397341610385480912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161446 (n + 1)) 2

end

end A395961.P11397341610385480912

namespace A395961

/-- `A161446(n+1)%2` -/
def P11397341610385480912.Spec : Prop :=
  ∀ n, P11397341610385480912.a n = A395961 n

end A395961

/-! ## A395961.P2851411582280525627

`A161448(n+1)%2`
-/

namespace A395961.P2851411582280525627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161448 (n + 1)) 2

end

end A395961.P2851411582280525627

namespace A395961

/-- `A161448(n+1)%2` -/
def P2851411582280525627.Spec : Prop :=
  ∀ n, P2851411582280525627.a n = A395961 n

end A395961

/-! ## A395961.P16954482704537067152

`A161450(n+1)%2`
-/

namespace A395961.P16954482704537067152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161450 (n + 1)) 2

end

end A395961.P16954482704537067152

namespace A395961

/-- `A161450(n+1)%2` -/
def P16954482704537067152.Spec : Prop :=
  ∀ n, P16954482704537067152.a n = A395961 n

end A395961

/-! ## A395961.P8797847212928800122

`A161452(n+1)%2`
-/

namespace A395961.P8797847212928800122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161452 (n + 1)) 2

end

end A395961.P8797847212928800122

namespace A395961

/-- `A161452(n+1)%2` -/
def P8797847212928800122.Spec : Prop :=
  ∀ n, P8797847212928800122.a n = A395961 n

end A395961

/-! ## A395961.P4811574139151443634

`A161454(n+1)%2`
-/

namespace A395961.P4811574139151443634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161454 (n + 1)) 2

end

end A395961.P4811574139151443634

namespace A395961

/-- `A161454(n+1)%2` -/
def P4811574139151443634.Spec : Prop :=
  ∀ n, P4811574139151443634.a n = A395961 n

end A395961

/-! ## A395961.P5217465268054682149

`A000035(A053836(n))`
-/

namespace A395961.P5217465268054682149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A053836 n).toNat

end

end A395961.P5217465268054682149

namespace A395961

/-- `A000035(A053836(n))` -/
def P5217465268054682149.Spec : Prop :=
  ∀ n, P5217465268054682149.a n = A395961 n

end A395961

/-! ## A395961.P469990935586357794

`A000035(A160700(n))`
-/

namespace A395961.P469990935586357794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A160700 n).toNat

end

end A395961.P469990935586357794

namespace A395961

/-- `A000035(A160700(n))` -/
def P469990935586357794.Spec : Prop :=
  ∀ n, P469990935586357794.a n = A395961 n

end A395961

/-! ## A395961.P1315113778028798124

`and(A016760(n), A160700(n))`
-/

namespace A395961.P1315113778028798124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A160700 n)

end

end A395961.P1315113778028798124

namespace A395961

/-- `and(A016760(n), A160700(n))` -/
def P1315113778028798124.Spec : Prop :=
  ∀ n, P1315113778028798124.a n = A395961 n

end A395961

/-! ## A395961.P13015728120225881800

`and(A016820(n), A160700(n))`
-/

namespace A395961.P13015728120225881800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A160700 n)

end

end A395961.P13015728120225881800

namespace A395961

/-- `and(A016820(n), A160700(n))` -/
def P13015728120225881800.Spec : Prop :=
  ∀ n, P13015728120225881800.a n = A395961 n

end A395961

/-! ## A395961.P7700400347138480407

`and(A160700(n), A282997(n+1))`
-/

namespace A395961.P7700400347138480407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160700 n) (A282997 (n + 1))

end

end A395961.P7700400347138480407

namespace A395961

/-- `and(A160700(n), A282997(n+1))` -/
def P7700400347138480407.Spec : Prop :=
  ∀ n, P7700400347138480407.a n = A395961 n

end A395961

/-! ## A395961.P1918862927542464862

`A341389(A064707(n))`
-/

namespace A395961.P1918862927542464862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A064707 n).toNat

end

end A395961.P1918862927542464862

namespace A395961

/-- `A341389(A064707(n))` -/
def P1918862927542464862.Spec : Prop :=
  ∀ n, P1918862927542464862.a n = A395961 n

end A395961

/-! ## A395961.P17194390575055435208

`A010060(A253315(A355340(2*n)))`
-/

namespace A395961.P17194390575055435208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A253315 (A355340 (2 * n)).toNat).toNat

end

end A395961.P17194390575055435208

namespace A395961

/-- `A010060(A253315(A355340(2*n)))` -/
def P17194390575055435208.Spec : Prop :=
  ∀ n, P17194390575055435208.a n = A395961 n

end A395961

/-! ## A395961.P17972479963474573015

`A269723(A261283(A355340(2*n+1)))`
-/

namespace A395961.P17972479963474573015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A261283 (A355340 (2 * n + 1)).toNat).toNat

end

end A395961.P17972479963474573015

namespace A395961

/-- `A269723(A261283(A355340(2*n+1)))` -/
def P17972479963474573015.Spec : Prop :=
  ∀ n, P17972479963474573015.a n = A395961 n

end A395961

/-! ## A395961.P1016001286139495539

`A395958(A395962(n+1))`
-/

namespace A395961.P1016001286139495539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 (A395962 (n + 1)).toNat

end

end A395961.P1016001286139495539

namespace A395961

/-- `A395958(A395962(n+1))` -/
def P1016001286139495539.Spec : Prop :=
  ∀ n, P1016001286139495539.a n = A395961 n

end A395961

/-!
# A395962: Numbers k such that A395961(k) = 0.

The programs for A395962, the canonical program `A395962.P3547014246278371736` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395962 has offset 1).

The definition of A395962 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395962.P3547014246278371736

`2*n+A395961(2*n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A395962

/-- `2*n+A395961(2*n)` -/
def P3547014246278371736.Spec : Prop :=
  ∀ n, P3547014246278371736.a n = A395962 (n + 1)

theorem P3547014246278371736.correct : P3547014246278371736.Spec := by
  intro n
  simp only [A395962, Nat.add_sub_cancel]

end A395962

/-! ## A395962.P9062228828724873820

`xor(1, A395963(n+1))`
-/

namespace A395962.P9062228828724873820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A395963 (n + 1))

end

end A395962.P9062228828724873820

namespace A395962

/-- `xor(1, A395963(n+1))` -/
def P9062228828724873820.Spec : Prop :=
  ∀ n, P9062228828724873820.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P13023405340579524804

`A016813(n)-A395963(n+1)`
-/

namespace A395962.P13023405340579524804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395963 (n + 1)

end

end A395962.P13023405340579524804

namespace A395962

/-- `A016813(n)-A395963(n+1)` -/
def P13023405340579524804.Spec : Prop :=
  ∀ n, P13023405340579524804.a n = A395962 (n + 1)

theorem P13023405340579524804.correct : P13023405340579524804.Spec := by
  intro n
  simp only [A395962, Nat.add_sub_cancel, A395962.P13023405340579524804.a, A395962.P3547014246278371736.a, A016813, A016813.P15626904835145642280.a, A395961, A395961.P9208801736051543594.a, A395963, A395963.P2013661775841027138.a, A053836, A053836.P6566921165131624833.a, A054900, A054900.P10951327238473995848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395962

/-! ## A395962.P8061547621421497270

`A002943(n)/A395963(n+1)`
-/

namespace A395962.P8061547621421497270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A395963 (n + 1) : ℚ)

end

end A395962.P8061547621421497270

namespace A395962

/-- `A002943(n)/A395963(n+1)` -/
def P8061547621421497270.Spec : Prop :=
  ∀ n, P8061547621421497270.a n = (A395962 (n + 1) : ℚ)

end A395962

/-! ## A395962.P13989916355927260178

`xor(A395959(n+1), A395961(n))`
-/

namespace A395962.P13989916355927260178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395959 (n + 1)) (A395961 n)

end

end A395962.P13989916355927260178

namespace A395962

/-- `xor(A395959(n+1), A395961(n))` -/
def P13989916355927260178.Spec : Prop :=
  ∀ n, P13989916355927260178.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P595439239897668235

`A158704(n+1)+A158705(n+1)-A395963(n+1)`
-/

namespace A395962.P595439239897668235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + (A158705 (n + 1) - A395963 (n + 1))

end

end A395962.P595439239897668235

namespace A395962

/-- `A158704(n+1)+A158705(n+1)-A395963(n+1)` -/
def P595439239897668235.Spec : Prop :=
  ∀ n, P595439239897668235.a n = A395962 (n + 1)

end A395962

/-! ## A395962.P504876506253807869

`A395959(n+1)+A395960(n+1)-A395963(n+1)`
-/

namespace A395962.P504876506253807869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (n + 1) + (A395960 (n + 1) - A395963 (n + 1))

end

end A395962.P504876506253807869

namespace A395962

/-- `A395959(n+1)+A395960(n+1)-A395963(n+1)` -/
def P504876506253807869.Spec : Prop :=
  ∀ n, P504876506253807869.a n = A395962 (n + 1)

theorem P504876506253807869.correct : P504876506253807869.Spec := by
  intro n
  simp only [A395962, Nat.add_sub_cancel, A395962.P504876506253807869.a, A395962.P3547014246278371736.a, A395959, A395959.P2730340011751273461.a, A395960, A395960.P5958715908451391238.a, A395961, A395961.P9208801736051543594.a, A395963, A395963.P2013661775841027138.a, A053836, A053836.P6566921165131624833.a, A395958, A395958.P5165968733303486376.a, A010060, A010060.P3080921269106500717.a, A054900, A054900.P10951327238473995848.a, A064707, A064707.P16779567911126322867.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395962

/-! ## A395962.P17502150435626921683

`comp[A395963(n+1)]`
-/

namespace A395962.P17502150435626921683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395962.P17502150435626921683

namespace A395962

/-- `comp[A395963(n+1)]` -/
def P17502150435626921683.Spec : Prop :=
  ∀ n, (P17502150435626921683.a n : ℤ) = A395962 (n + 1)

end A395962

/-! ## A395962.P7162655601930537626

`eq[A053839(n), A287576(n+1)]`
-/

namespace A395962.P7162655601930537626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395962.P7162655601930537626

namespace A395962

/-- `eq[A053839(n), A287576(n+1)]` -/
def P7162655601930537626.Spec : Prop :=
  ∀ n, (P7162655601930537626.a n : ℤ) = A395962 (n + 1)

end A395962

/-! ## A395962.P9695645752665682375

`2*n+1-A395958(A395963(2*n+1))`
-/

namespace A395962.P9695645752665682375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395958 (A395963 (2 * n + 1)).toNat

end

end A395962.P9695645752665682375

namespace A395962

/-- `2*n+1-A395958(A395963(2*n+1))` -/
def P9695645752665682375.Spec : Prop :=
  ∀ n, P9695645752665682375.a n = A395962 (n + 1)

end A395962

/-!
# A395963: Numbers k such that A395961(k) = 1.

The programs for A395963, the canonical program `A395963.P2013661775841027138` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395963 has offset 1).

The definition of A395963 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395963.P2013661775841027138

`2*n+1-A395961(2*n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A395963

/-- `2*n+1-A395961(2*n)` -/
def P2013661775841027138.Spec : Prop :=
  ∀ n, P2013661775841027138.a n = A395963 (n + 1)

theorem P2013661775841027138.correct : P2013661775841027138.Spec := by
  intro n
  simp only [A395963, Nat.add_sub_cancel]

end A395963

/-! ## A395963.P1177473714611375800

`comp[A395962(n+1)]`
-/

namespace A395963.P1177473714611375800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395963.P1177473714611375800

namespace A395963

/-- `comp[A395962(n+1)]` -/
def P1177473714611375800.Spec : Prop :=
  ∀ n, (P1177473714611375800.a n : ℤ) = A395963 (n + 1)

end A395963

/-! ## A395963.P10291464391889346565

`A016813(n)-A395962(n+1)`
-/

namespace A395963.P10291464391889346565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395962 (n + 1)

end

end A395963.P10291464391889346565

namespace A395963

/-- `A016813(n)-A395962(n+1)` -/
def P10291464391889346565.Spec : Prop :=
  ∀ n, P10291464391889346565.a n = A395963 (n + 1)

theorem P10291464391889346565.correct : P10291464391889346565.Spec := by
  intro n
  simp only [A395963, Nat.add_sub_cancel, A395963.P10291464391889346565.a, A395963.P2013661775841027138.a, A016813, A016813.P15626904835145642280.a, A395961, A395961.P9208801736051543594.a, A395962, A395962.P3547014246278371736.a, A053836, A053836.P6566921165131624833.a, A054900, A054900.P10951327238473995848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395963

/-! ## A395963.P14515872184336648535

`xor(A395960(n+1), A395961(n))`
-/

namespace A395963.P14515872184336648535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395960 (n + 1)) (A395961 n)

end

end A395963.P14515872184336648535

namespace A395963

/-- `xor(A395960(n+1), A395961(n))` -/
def P14515872184336648535.Spec : Prop :=
  ∀ n, P14515872184336648535.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P5707616934327735928

`A000069(n+1)+A001969(n+1)-A395962(n+1)`
-/

namespace A395963.P5707616934327735928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A395962 (n + 1))

end

end A395963.P5707616934327735928

namespace A395963

/-- `A000069(n+1)+A001969(n+1)-A395962(n+1)` -/
def P5707616934327735928.Spec : Prop :=
  ∀ n, P5707616934327735928.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P7575353757214265521

`A158704(n+1)+A158705(n+1)-A395962(n+1)`
-/

namespace A395963.P7575353757214265521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + (A158705 (n + 1) - A395962 (n + 1))

end

end A395963.P7575353757214265521

namespace A395963

/-- `A158704(n+1)+A158705(n+1)-A395962(n+1)` -/
def P7575353757214265521.Spec : Prop :=
  ∀ n, P7575353757214265521.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P2369903363610294967

`A395959(n+1)+A395960(n+1)-A395962(n+1)`
-/

namespace A395963.P2369903363610294967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (n + 1) + (A395960 (n + 1) - A395962 (n + 1))

end

end A395963.P2369903363610294967

namespace A395963

/-- `A395959(n+1)+A395960(n+1)-A395962(n+1)` -/
def P2369903363610294967.Spec : Prop :=
  ∀ n, P2369903363610294967.a n = A395963 (n + 1)

theorem P2369903363610294967.correct : P2369903363610294967.Spec := by
  intro n
  simp only [A395963, Nat.add_sub_cancel, A395963.P2369903363610294967.a, A395963.P2013661775841027138.a, A395959, A395959.P2730340011751273461.a, A395960, A395960.P5958715908451391238.a, A395961, A395961.P9208801736051543594.a, A395962, A395962.P3547014246278371736.a, A053836, A053836.P6566921165131624833.a, A395958, A395958.P5165968733303486376.a, A010060, A010060.P3080921269106500717.a, A054900, A054900.P10951327238473995848.a, A064707, A064707.P16779567911126322867.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A180200, A180200.P2958972076606443306.a, A233279, A233279.P10877154597455539139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395963

/-! ## A395963.P10892753996472946514

`A395961(2*n+1)+2*n`
-/

namespace A395963.P10892753996472946514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (2 * n + 1) + (2 * n : ℤ)

end

end A395963.P10892753996472946514

namespace A395963

/-- `A395961(2*n+1)+2*n` -/
def P10892753996472946514.Spec : Prop :=
  ∀ n, P10892753996472946514.a n = A395963 (n + 1)

end A395963

/-! ## A395963.P5532026611777474942

`eq[A329684(n), A395961(n)]`
-/

namespace A395963.P5532026611777474942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395963.P5532026611777474942

namespace A395963

/-- `eq[A329684(n), A395961(n)]` -/
def P5532026611777474942.Spec : Prop :=
  ∀ n, (P5532026611777474942.a n : ℤ) = A395963 (n + 1)

end A395963

/-! ## A395963.P7565714702337267188

`2*n+1-A395958(A395962(2*n+1))`
-/

namespace A395963.P7565714702337267188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395958 (A395962 (2 * n + 1)).toNat

end

end A395963.P7565714702337267188

namespace A395963

/-- `2*n+1-A395958(A395962(2*n+1))` -/
def P7565714702337267188.Spec : Prop :=
  ∀ n, P7565714702337267188.a n = A395963 (n + 1)

end A395963

/-!
# A395964: Second iterate of the Thue-Morse transform applied to the Fibonacci word A003849.

The programs for A395964, there is no canonical definition to state claims against.
-/

/-! ## A395964.P12983744396853946706

`char[A395966(n+1)]`
-/

namespace A395964.P12983744396853946706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A395964.P12983744396853946706

/-! ## A395964.P15772198485868826494

`char[comp[A395965(n+1)]]`
-/

namespace A395964.P15772198485868826494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395965 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A395964.P15772198485868826494

/-! ## A395964.P11623004558938470104

`A080887(A066880(n+1))`
-/

namespace A395964.P11623004558938470104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (A066880 (n + 1)).toNat

end

end A395964.P11623004558938470104

/-! ## A395964.P13106152891728703635

`A080887(A075427(n+1))`
-/

namespace A395964.P13106152891728703635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (A075427 (n + 1)).toNat

end

end A395964.P13106152891728703635

/-! ## A395964.P16918912074735319164

`A060584(A007331(n))`
-/

namespace A395964.P16918912074735319164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060584 (A007331 n).toNat

end

end A395964.P16918912074735319164

/-!
# A395965: Numbers k such that A395964(k) = 0.

The programs for A395965, there is no canonical definition to state claims against.
-/

/-! ## A395965.P17891902879307160033

`comp[A395966(n+1)]`
-/

namespace A395965.P17891902879307160033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395965.P17891902879307160033

/-! ## A395965.P18016772078804291702

`eq[0, A395964(n)]`
-/

namespace A395965.P18016772078804291702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395965.P18016772078804291702

/-! ## A395965.P17706386764962512167

`lt[A395964(n), A329684(n)]`
-/

namespace A395965.P17706386764962512167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P17706386764962512167

/-! ## A395965.P4825611753751883079

`lt[A395964(n), A010060(A000069(n+1))]`
-/

namespace A395965.P4825611753751883079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P4825611753751883079

/-! ## A395965.P13478169234810802339

`lt[A395964(n), A395958(A395960(n+1))]`
-/

namespace A395965.P13478169234810802339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 (A395960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P13478169234810802339

/-! ## A395965.P18056907927144432267

`lt[A395964(n), A395961(A395963(n+1))]`
-/

namespace A395965.P18056907927144432267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A395963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P18056907927144432267

/-! ## A395965.P2017030229251869757

`lt[A395964(n), A395964(A395966(n+1))]`
-/

namespace A395965.P2017030229251869757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 (A395966 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P2017030229251869757

/-! ## A395965.P12368072594442703809

`lt[A395964(n), A061347(3*n+1)]`
-/

namespace A395965.P12368072594442703809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P12368072594442703809

/-! ## A395965.P17833200309344294939

`lt[A395964(n), A001511(A004767(n))]`
-/

namespace A395965.P17833200309344294939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P17833200309344294939

/-! ## A395965.P18194300938933968274

`lt[A395964(n), A001511(A028870(n+1))]`
-/

namespace A395965.P18194300938933968274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A028870 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P18194300938933968274

/-! ## A395965.P9418508605182843920

`lt[A395964(n), A001222(A005385(n+1))]`
-/

namespace A395965.P9418508605182843920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395965.P9418508605182843920

/-!
# A395966: Numbers k such that A395964(k) = 1.

The programs for A395966, there is no canonical definition to state claims against.
-/

/-! ## A395966.P8645021359851441151

`comp[A395965(n+1)]`
-/

namespace A395966.P8645021359851441151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395966.P8645021359851441151

/-! ## A395966.P5688426010713886181

`lt[0, A395964(n)]`
-/

namespace A395966.P5688426010713886181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A395966.P5688426010713886181

/-! ## A395966.P15741007458940027448

`eq[A054977(n), A395964(n)]`
-/

namespace A395966.P15741007458940027448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395966.P15741007458940027448

/-! ## A395966.P4580938120491140379

`eq[A158388(n), A395964(n)]`
-/

namespace A395966.P4580938120491140379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395966.P4580938120491140379

/-! ## A395966.P6564328015017603944

`eq[A329684(n), A395964(n)]`
-/

namespace A395966.P6564328015017603944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395966.P6564328015017603944

/-! ## A395966.P4335448373126873903

`eq[A283149(n+1), A395964(n)]`
-/

namespace A395966.P4335448373126873903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395966.P4335448373126873903

/-!
# A395969: Numbers k such that 3*(k+1) divides the decimal concatenation [k, k+1, k+2].

The programs for A395969, there is no canonical definition to state claims against.
-/

/-! ## A395969.P11198187766530972536

`A396071(A069871(n+1))`
-/

namespace A395969.P11198187766530972536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396071 (A069871 (n + 1)).toNat

end

end A395969.P11198187766530972536

/-!
# A395972: Triangle read by rows: T(n, k) = 2^n * [x^k] hypergeom([-n, -n, 1], [1], x).

The programs for A395972, there is no canonical definition to state claims against.
-/

/-! ## A395972.P4124340170191024303

`A008279(n)*A038208(n)`
-/

namespace A395972.P4124340170191024303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A038208 n

end

end A395972.P4124340170191024303

/-! ## A395972.P14393045566546788226

`A013609(n)*A090802(n)`
-/

namespace A395972.P14393045566546788226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A090802 n

end

end A395972.P14393045566546788226

/-! ## A395972.P4827354699944260478

`A038207(n)*A161381(n)`
-/

namespace A395972.P4827354699944260478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A161381 n

end

end A395972.P4827354699944260478

/-! ## A395972.P1073405146706908968

`A137688(n)*A144084(n)`
-/

namespace A395972.P1073405146706908968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A144084 n

end

end A395972.P1073405146706908968

/-! ## A395972.P13602313847419373036

`A011782(A002024(n+1))*A144084(n)`
-/

namespace A395972.P13602313847419373036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002024 (n + 1)).toNat * A144084 n

end

end A395972.P13602313847419373036

/-!
# A395974: a(n) = A395975(n, 1), and a(0) = 0.

The programs for A395974, there is no canonical definition to state claims against.
-/

/-! ## A395974.P17233369313605929001

`A395975(∑[n]+1)`
-/

namespace A395974.P17233369313605929001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A395974.P17233369313605929001

/-!
# A395977: Denominators of rational coefficients related to asymptotic of A336293.

The programs for A395977, there is no canonical definition to state claims against.
-/

/-! ## A395977.P4106010907770814824

`A321940(n)/A000005(A326968(n))`
-/

namespace A395977.P4106010907770814824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321940 n : ℚ) / (A000005 (A326968 n).toNat : ℚ)

end

end A395977.P4106010907770814824

/-!
# A395979: Ultra-elite primes: elite primes p such that all their Fermat remainders are either primitive roots, or all nonprimitive roots, modulo p.

The programs for A395979, there is no canonical definition to state claims against.
-/

/-! ## A395979.P779161806215411342

`A102742(A340911(n))`
-/

namespace A395979.P779161806215411342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102742 (A340911 n).toNat

end

end A395979.P779161806215411342

/-!
# A395982: Primes p such that the Fermat quotient q = (2^(p-1) - 1)/p mod p satisfies 1 < q < p and q divides p - 1.

The programs for A395982, there is no canonical definition to state claims against.
-/

/-! ## A395982.P8934850992577193258

`∩[A101635(n+1), A186645(n+1)]`
-/

namespace A395982.P8934850992577193258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395982.P8934850992577193258

/-!
# A395983: Surviving primes in the strict greedy gap sieve.

The programs for A395983, there is no canonical definition to state claims against.
-/

/-! ## A395983.P4404095688923710993

`∩[A268343(n+1), A102821(n)]`
-/

namespace A395983.P4404095688923710993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102821 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395983.P4404095688923710993

/-!
# A395984: Number of residue classes r (mod n) for which k = r + m*n, m >= 1, is such that rad(n) | gcd(k,n) but rad(k) does not divide n, where rad = A007947.

The programs for A395984, there is no canonical definition to state claims against.
-/

/-! ## A395984.P4957358843669141940

`A381803(n+1)-A395900(n+1)`
-/

namespace A395984.P4957358843669141940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (n + 1) - A395900 (n + 1)

end

end A395984.P4957358843669141940

/-! ## A395984.P2176900626961649377

`A360543(n+1)%A378908(n+1)`
-/

namespace A395984.P2176900626961649377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360543 (n + 1)) (A378908 (n + 1))

end

end A395984.P2176900626961649377

/-! ## A395984.P14622702832768563719

`A360543(n+1)%A010960(n)`
-/

namespace A395984.P14622702832768563719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360543 (n + 1)) (A010960 n)

end

end A395984.P14622702832768563719

/-! ## A395984.P16706757081624640693

`A225595(n+1)*A360543(n+1)`
-/

namespace A395984.P16706757081624640693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225595 (n + 1) * A360543 (n + 1)

end

end A395984.P16706757081624640693

/-!
# A395986: Minimum transmission of a connected cubic graph on 2n vertices.

The programs for A395986, there is no canonical definition to state claims against.
-/

/-! ## A395986.P6371451027343674617

`(n+2)*A381812(3*(n+2))`
-/

namespace A395986.P6371451027343674617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A381812 (3 * (n + 2))

end

end A395986.P6371451027343674617

/-! ## A395986.P12555915630034348123

`A058654(3*n+1)*A081604(A048054(n+1))`
-/

namespace A395986.P12555915630034348123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (3 * n + 1) * A081604 (A048054 (n + 1)).toNat

end

end A395986.P12555915630034348123

/-!
# A395988: Minimum transmission of a connected quartic graph on n vertices.

The programs for A395988, there is no canonical definition to state claims against.
-/

/-! ## A395988.P2303824446316342932

`A196051(3*2^(n+1))`
-/

namespace A395988.P2303824446316342932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196051 (3 * 2 ^ (n + 1))

end

end A395988.P2303824446316342932

/-! ## A395988.P6318205187729697600

`record[A331145(n+4)+1]+n`
-/

namespace A395988.P6318205187729697600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331145 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A395988.P6318205187729697600

/-! ## A395988.P13120062484621025457

`A121663(A005010(n))`
-/

namespace A395988.P13120062484621025457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A005010 n).toNat

end

end A395988.P13120062484621025457

/-! ## A395988.P9343469260638707173

`A130819(A005565(n))`
-/

namespace A395988.P9343469260638707173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130819 (A005565 n).toNat

end

end A395988.P9343469260638707173

/-!
# A395990: a(n) = Sum_{d|n} d^(tau(n/d) mod 2).

The programs for A395990, the canonical program `A395990.P6546272165125092159` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395990 has offset 1).

The definition of A395990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076752, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395990.P6546272165125092159

`A000005(n+1)+A076752(n+1)-A046951(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A395990

/-- `A000005(n+1)+A076752(n+1)-A046951(n+1)` -/
def P6546272165125092159.Spec : Prop :=
  ∀ n, P6546272165125092159.a n = A395990 (n + 1)

theorem P6546272165125092159.correct : P6546272165125092159.Spec := by
  intro n
  simp only [A395990, Nat.add_sub_cancel]

end A395990

/-! ## A395990.P7427504613845280777

`A076752(n+1)+A056595(n+1)`
-/

namespace A395990.P7427504613845280777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (n + 1) + A056595 (n + 1)

end

end A395990.P7427504613845280777

namespace A395990

/-- `A076752(n+1)+A056595(n+1)` -/
def P7427504613845280777.Spec : Prop :=
  ∀ n, P7427504613845280777.a n = A395990 (n + 1)

theorem P7427504613845280777.correct : P7427504613845280777.Spec := by
  intro n
  simp only [A395990, Nat.add_sub_cancel, A395990.P7427504613845280777.a, A395990.P6546272165125092159.a, A000005, A000005.P16091521709108585461.a, A046951, A046951.P12586408086602964063.a, A056595, A056595.P14242287842452137538.a, A076752, A076752.P4228621196644119807.f1, A076752.P4228621196644119807.a, A000188, A000188.P7486858720566838181.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A074722, A074722.P16633389370037987810.f1, A074722.P16633389370037987810.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A008833, A008833.P18388074464065390543.a, A332844, A332844.P9529813075315632997.f1, A332844.P9529813075315632997.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A395990

/-! ## A395990.P11953899128541102516

`A339564(n+1)+A070939(A098588(n))`
-/

namespace A395990.P11953899128541102516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339564 (n + 1) + A070939 (A098588 n).toNat

end

end A395990.P11953899128541102516

namespace A395990

/-- `A339564(n+1)+A070939(A098588(n))` -/
def P11953899128541102516.Spec : Prop :=
  ∀ n, P11953899128541102516.a n = A395990 (n + 1)

end A395990

/-!
# A395991: First indices of zeta zeros corresponding to Lehmer Pairs.

The programs for A395991, there is no canonical definition to state claims against.
-/

/-! ## A395991.P16285438065641074310

`A326502(A058946(n+1))`
-/

namespace A395991.P16285438065641074310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (A058946 (n + 1)).toNat

end

end A395991.P16285438065641074310

/-! ## A395991.P3853156840962948705

`A326502(A057947(n))`
-/

namespace A395991.P3853156840962948705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (A057947 n).toNat

end

end A395991.P3853156840962948705

/-!
# A395994: Number of fractions k/n, with 1 <= k <= n and GCD(n,k) = 1, whose greedy Egyptian fraction representation has more terms than the shortest representation of k/n as a sum of unit fractions.

The programs for A395994, there is no canonical definition to state claims against.
-/

/-! ## A395994.P3798166751556909476

`A082501(A395996(n+1))`
-/

namespace A395994.P3798166751556909476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082501 (A395996 (n + 1)).toNat

end

end A395994.P3798166751556909476

/-!
# A395997: Numbers k > 3 such that the greedy Egyptian fraction representation of 3/k has more terms than the shortest representation of 3/k as a sum of unit fractions.

The programs for A395997, the canonical program `A395997.P3155127088775821677` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395997 has offset 1).

The definition of A395997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395997.P3155127088775821677

`A016921(A070799(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A395997

/-- `A016921(A070799(n+1))` -/
def P3155127088775821677.Spec : Prop :=
  ∀ n, P3155127088775821677.a n = A395997 (n + 1)

theorem P3155127088775821677.correct : P3155127088775821677.Spec := by
  intro n
  simp only [A395997, Nat.add_sub_cancel]

end A395997

/-! ## A395997.P679532991498129041

`∩[A226946(n+1), A016921(n)]`
-/

namespace A395997.P679532991498129041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395997.P679532991498129041

namespace A395997

/-- `∩[A226946(n+1), A016921(n)]` -/
def P679532991498129041.Spec : Prop :=
  ∀ n, (P679532991498129041.a n : ℤ) = A395997 (n + 1)

end A395997

/-! ## A395997.P18170291377079677657

`A016921(A199860(n+1)-1)`
-/

namespace A395997.P18170291377079677657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A199860 (n + 1) - 1).toNat

end

end A395997.P18170291377079677657

namespace A395997

/-- `A016921(A199860(n+1)-1)` -/
def P18170291377079677657.Spec : Prop :=
  ∀ n, P18170291377079677657.a n = A395997 (n + 1)

end A395997

/-! ## A395997.P2269794651452538441

`A176275(n+1)+A132440(A024784(n+1))`
-/

namespace A395997.P2269794651452538441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176275 (n + 1) + A132440 (A024784 (n + 1)).toNat

end

end A395997.P2269794651452538441

namespace A395997

/-- `A176275(n+1)+A132440(A024784(n+1))` -/
def P2269794651452538441.Spec : Prop :=
  ∀ n, P2269794651452538441.a n = A395997 (n + 1)

end A395997

/-! ## A395997.P8178953969444127631

`A176275(n+1)%A176275(A052222(n+1))`
-/

namespace A395997.P8178953969444127631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176275 (n + 1)) (A176275 (A052222 (n + 1)).toNat)

end

end A395997.P8178953969444127631

namespace A395997

/-- `A176275(n+1)%A176275(A052222(n+1))` -/
def P8178953969444127631.Spec : Prop :=
  ∀ n, P8178953969444127631.a n = A395997 (n + 1)

end A395997

