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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A042901: Denominators of continued fraction convergents to sqrt(982).

The programs for A042901, there is no canonical definition to state claims against.
-/

/-! ## A042901.P11696451495122041056

`lcm(n+1, A032742(A134091(n)))`
-/

namespace A042901.P11696451495122041056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A032742 (A134091 n).toNat)

end

end A042901.P11696451495122041056

/-!
# A042905: Denominators of continued fraction convergents to sqrt(984).

The programs for A042905, there is no canonical definition to state claims against.
-/

/-! ## A042905.P6777084962047412853

`∑[A160000(A317444(n))]`
-/

namespace A042905.P6777084962047412853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160000 (A317444 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042905.P6777084962047412853

/-!
# A042907: Denominators of continued fraction convergents to sqrt(985).

The programs for A042907, there is no canonical definition to state claims against.
-/

/-! ## A042907.P5827959495403824425

`A103690(a(n-1))+1` with `a(0)=1`
-/

namespace A042907.P5827959495403824425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103690 (a (n - 1)).toNat + 1

end

end A042907.P5827959495403824425

/-!
# A042921: Denominators of continued fraction convergents to sqrt(992).

The programs for A042921, the canonical program `A042921.P10480164338277351648` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042921 has offset 0).

The definition of A042921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042921.P10480164338277351648

`126*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=125, a(3)=252`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042921

/-- `126*a(n-2)-a(n-4)` -/
def P10480164338277351648.Spec : Prop :=
  ∀ n, P10480164338277351648.a n = A042921 n

theorem P10480164338277351648.correct : P10480164338277351648.Spec := by
  intro n
  simp only [A042921]

end A042921

/-! ## A042921.P10796949568468717685

`∑[A041465(A042948(n))]`
-/

namespace A042921.P10796949568468717685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041465 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042921.P10796949568468717685

namespace A042921

/-- `∑[A041465(A042948(n))]` -/
def P10796949568468717685.Spec : Prop :=
  ∀ n, P10796949568468717685.a n = A042921 n

end A042921

/-! ## A042921.P12936558080313345096

`∑[A041465(A052928(n)+n)]`
-/

namespace A042921.P12936558080313345096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041465 (A052928 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042921.P12936558080313345096

namespace A042921

/-- `∑[A041465(A052928(n)+n)]` -/
def P12936558080313345096.Spec : Prop :=
  ∀ n, P12936558080313345096.a n = A042921 n

end A042921

/-!
# A042927: Denominators of continued fraction convergents to sqrt(995).

The programs for A042927, there is no canonical definition to state claims against.
-/

/-! ## A042927.P12846401933397117460

`∑[A337252(a(n-1)+a(n-2))+1]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A042927.P12846401933397117460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A337252 (f1 (n - 1) + f1 (n - 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042927.P12846401933397117460

/-!
# A042929: Denominators of continued fraction convergents to sqrt(996).

The programs for A042929, there is no canonical definition to state claims against.
-/

/-! ## A042929.P5026478653410246446

`a(n-2)+a(n-1)*A040964(n)` with `a(0)=1, a(1)=1`
-/

namespace A042929.P5026478653410246446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040964 n

end

end A042929.P5026478653410246446

/-!
# A042933: Denominators of continued fraction convergents to sqrt(998).

The programs for A042933, there is no canonical definition to state claims against.
-/

/-! ## A042933.P7705339404316164674

`A005100(A174475(n))*A128545(n)`
-/

namespace A042933.P7705339404316164674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A174475 n).toNat * A128545 n

end

end A042933.P7705339404316164674

/-!
# A042935: Denominators of continued fraction convergents to sqrt(999).

The programs for A042935, there is no canonical definition to state claims against.
-/

/-! ## A042935.P15739300766539363998

`A325391(A135568(n))`
-/

namespace A042935.P15739300766539363998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 (A135568 n).toNat

end

end A042935.P15739300766539363998

/-! ## A042935.P17942943847316548115

`A325391(A106357(n+2))`
-/

namespace A042935.P17942943847316548115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 (A106357 (n + 2)).toNat

end

end A042935.P17942943847316548115

/-!
# A042937: Denominators of continued fraction convergents to sqrt(1000).

The programs for A042937, there is no canonical definition to state claims against.
-/

/-! ## A042937.P1913728128803847987

`A020650(abs(A003221(n+1)-(A067538(n+1)+n)))`
-/

namespace A042937.P1913728128803847987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 |A003221 (n + 1) - (A067538 (n + 1) + (n : ℤ))|.toNat

end

end A042937.P1913728128803847987

/-!
# A042938: Reverse or triple: if reverse(a(n)) > a(n), a(n+1) = reverse(a(n)), else a(n+1) = 3*a(n).

The programs for A042938, there is no canonical definition to state claims against.
-/

/-! ## A042938.P1572907854480266270

`record[A004086(a(n-1))*A109007(n+1)]` with `a(0)=1`
-/

namespace A042938.P1572907854480266270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004086 (f1 (n - 1)).toNat * A109007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042938.P1572907854480266270

/-! ## A042938.P17227378641855721978

`A004166(A165878(3*n+1)+A000245(n))`
-/

namespace A042938.P17227378641855721978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 (A165878 (3 * n + 1) + A000245 n).toNat

end

end A042938.P17227378641855721978

/-!
# A042939: Absolute values between digits of primes.

The programs for A042939, the canonical program `A042939.P563178382816472669` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042939 has offset 1).

The definition of A042939 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040997, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A042939.P563178382816472669

`A040997(A000040(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A042939

/-- `A040997(A000040(n+1))` -/
def P563178382816472669.Spec : Prop :=
  ∀ n, P563178382816472669.a n = A042939 (n + 1)

theorem P563178382816472669.correct : P563178382816472669.Spec := by
  intro n
  simp only [A042939, Nat.add_sub_cancel]

end A042939

/-! ## A042939.P8520938681109432315

`abs(A185107(n+1))`
-/

namespace A042939.P8520938681109432315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185107 (n + 1)|

end

end A042939.P8520938681109432315

namespace A042939

/-- `abs(A185107(n+1))` -/
def P8520938681109432315.Spec : Prop :=
  ∀ n, P8520938681109432315.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P1058810890069094236

`gcd(A000038(n), A185107(n+1))`
-/

namespace A042939.P1058810890069094236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A185107 (n + 1))

end

end A042939.P1058810890069094236

namespace A042939

/-- `gcd(A000038(n), A185107(n+1))` -/
def P1058810890069094236.Spec : Prop :=
  ∀ n, (P1058810890069094236.a n : ℤ) = A042939 (n + 1)

end A042939

/-! ## A042939.P17981081720251233248

`lcm(A020985(n), A185107(n+1))`
-/

namespace A042939.P17981081720251233248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A185107 (n + 1))

end

end A042939.P17981081720251233248

namespace A042939

/-- `lcm(A020985(n), A185107(n+1))` -/
def P17981081720251233248.Spec : Prop :=
  ∀ n, (P17981081720251233248.a n : ℤ) = A042939 (n + 1)

end A042939

/-! ## A042939.P11873284078565376702

`A040997(p?[comp[n²]])`
-/

namespace A042939.P11873284078565376702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A042939.P11873284078565376702

namespace A042939

/-- `A040997(p?[comp[n²]])` -/
def P11873284078565376702.Spec : Prop :=
  ∀ n, P11873284078565376702.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P10745060603436183167

`A040997(record[A051698(n)])`
-/

namespace A042939.P10745060603436183167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A042939.P10745060603436183167

namespace A042939

/-- `A040997(record[A051698(n)])` -/
def P10745060603436183167.Spec : Prop :=
  ∀ n, P10745060603436183167.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P16654378501315159296

`A040997(A008578(n+2))`
-/

namespace A042939.P16654378501315159296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A008578 (n + 2)).toNat

end

end A042939.P16654378501315159296

namespace A042939

/-- `A040997(A008578(n+2))` -/
def P16654378501315159296.Spec : Prop :=
  ∀ n, P16654378501315159296.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P14231128544046156391

`A040997(A182986(n+2))`
-/

namespace A042939.P14231128544046156391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A182986 (n + 2)).toNat

end

end A042939.P14231128544046156391

namespace A042939

/-- `A040997(A182986(n+2))` -/
def P14231128544046156391.Spec : Prop :=
  ∀ n, P14231128544046156391.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P15094544578252430030

`A040997(record[A006530(n+2)])`
-/

namespace A042939.P15094544578252430030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A042939.P15094544578252430030

namespace A042939

/-- `A040997(record[A006530(n+2)])` -/
def P15094544578252430030.Spec : Prop :=
  ∀ n, P15094544578252430030.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P3994620774602180408

`A040997(record[A014963(n+2)])`
-/

namespace A042939.P3994620774602180408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A042939.P3994620774602180408

namespace A042939

/-- `A040997(record[A014963(n+2)])` -/
def P3994620774602180408.Spec : Prop :=
  ∀ n, P3994620774602180408.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P8120017345454014223

`A040997(record[A020639(n+2)])`
-/

namespace A042939.P8120017345454014223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A042939.P8120017345454014223

namespace A042939

/-- `A040997(record[A020639(n+2)])` -/
def P8120017345454014223.Spec : Prop :=
  ∀ n, P8120017345454014223.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P14324628840570634743

`A040997(A006093(n+1)+1)`
-/

namespace A042939.P14324628840570634743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A006093 (n + 1) + 1).toNat

end

end A042939.P14324628840570634743

namespace A042939

/-- `A040997(A006093(n+1)+1)` -/
def P14324628840570634743.Spec : Prop :=
  ∀ n, P14324628840570634743.a n = A042939 (n + 1)

theorem P14324628840570634743.correct : P14324628840570634743.Spec := by
  intro n
  simp only [A042939, Nat.add_sub_cancel, A042939.P14324628840570634743.a, A042939.P563178382816472669.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A040997, A040997.P3657260690685809057.a, A000030, A000030.P4990867543733972260.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A042939

/-! ## A042939.P17437651491050799642

`A040997(A040976(n+1)+2)`
-/

namespace A042939.P17437651491050799642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A040976 (n + 1) + 2).toNat

end

end A042939.P17437651491050799642

namespace A042939

/-- `A040997(A040976(n+1)+2)` -/
def P17437651491050799642.Spec : Prop :=
  ∀ n, P17437651491050799642.a n = A042939 (n + 1)

theorem P17437651491050799642.correct : P17437651491050799642.Spec := by
  intro n
  simp only [A042939, Nat.add_sub_cancel, A042939.P17437651491050799642.a, A042939.P563178382816472669.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A040997, A040997.P3657260690685809057.a, A000030, A000030.P4990867543733972260.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A042939

/-! ## A042939.P9180138470047015307

`A040997(A065073(n+1)-A007605(n+1))`
-/

namespace A042939.P9180138470047015307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A065073 (n + 1) - A007605 (n + 1)).toNat

end

end A042939.P9180138470047015307

namespace A042939

/-- `A040997(A065073(n+1)-A007605(n+1))` -/
def P9180138470047015307.Spec : Prop :=
  ∀ n, P9180138470047015307.a n = A042939 (n + 1)

end A042939

/-! ## A042939.P17122628228290144710

`A040997(A142342(n+1))`
-/

namespace A042939.P17122628228290144710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A142342 (n + 1)).toNat

end

end A042939.P17122628228290144710

namespace A042939

/-- `A040997(A142342(n+1))` -/
def P17122628228290144710.Spec : Prop :=
  ∀ n, P17122628228290144710.a n = A042939 (n + 1)

end A042939

/-!
# A042940: Convolution of Catalan numbers A000108(n+1), n >= 0, with A038846.

The programs for A042940, the canonical program `A042940.P5946304399982424661` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042940 has offset 0).

The definition of A042940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042940.P9412711489352828532

`Δ[-∑[A038846(n)-A042985(n)]]`
-/

namespace A042940.P9412711489352828532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038846 n - A042985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A042940.P9412711489352828532

namespace A042940

/-- `Δ[-∑[A038846(n)-A042985(n)]]` -/
def P9412711489352828532.Spec : Prop :=
  ∀ n, P9412711489352828532.a n = A042940 n

end A042940

/-! ## A042940.P12525565416409501831

`A042985(n+1)-A038846(n+1)`
-/

namespace A042940.P12525565416409501831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042985 (n + 1) - A038846 (n + 1)

end

end A042940.P12525565416409501831

namespace A042940

/-- `A042985(n+1)-A038846(n+1)` -/
def P12525565416409501831.Spec : Prop :=
  ∀ n, P12525565416409501831.a n = A042940 n

theorem P12525565416409501831.correct : P12525565416409501831.Spec := by
  intro n
  simp only [A042940, Nat.add_sub_cancel, A042940.P12525565416409501831.a, A042940.P5946304399982424661.a, A038846, A038846.P5565282016912556467.a, A042985, A042985.P49255986044683829.a, A045724, A045724.P15810755882581896106.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A042940

/-! ## A042940.P5946304399982424661

`A038846(n+1)-A045724(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A042940

/-- `A038846(n+1)-A045724(n+1)` -/
def P5946304399982424661.Spec : Prop :=
  ∀ n, P5946304399982424661.a n = A042940 n

theorem P5946304399982424661.correct : P5946304399982424661.Spec := by
  intro n
  simp only [A042940]

end A042940

/-! ## A042940.P14543094207018427432

`A042985(A008619(2*n))%A038846(n+1)`
-/

namespace A042940.P14543094207018427432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042985 (A008619 (2 * n)).toNat) (A038846 (n + 1))

end

end A042940.P14543094207018427432

namespace A042940

/-- `A042985(A008619(2*n))%A038846(n+1)` -/
def P14543094207018427432.Spec : Prop :=
  ∀ n, P14543094207018427432.a n = A042940 n

end A042940

/-! ## A042940.P5761968959866808155

`A042985(A052938(2*n))%A038846(n+1)`
-/

namespace A042940.P5761968959866808155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042985 (A052938 (2 * n)).toNat) (A038846 (n + 1))

end

end A042940.P5761968959866808155

namespace A042940

/-- `A042985(A052938(2*n))%A038846(n+1)` -/
def P5761968959866808155.Spec : Prop :=
  ∀ n, P5761968959866808155.a n = A042940 n

end A042940

/-!
# A042941: Convolution of Catalan numbers A000108 with A038845.

The programs for A042941, the canonical program `A042941.P11785510614438003329` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042941 has offset 0).

The definition of A042941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042941.P11785510614438003329

`A052780(n+2)-A029887(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A042941

/-- `A052780(n+2)-A029887(n)` -/
def P11785510614438003329.Spec : Prop :=
  ∀ n, P11785510614438003329.a n = A042941 n

theorem P11785510614438003329.correct : P11785510614438003329.Spec := by
  intro n
  simp only [A042941]

end A042941

/-! ## A042941.P12081380633683000379

`(A041001(n)+A038836(n))/2`
-/

namespace A042941.P12081380633683000379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041001 n + A038836 n : ℚ) / 2

end

end A042941.P12081380633683000379

namespace A042941

/-- `(A041001(n)+A038836(n))/2` -/
def P12081380633683000379.Spec : Prop :=
  ∀ n, P12081380633683000379.a n = (A042941 n : ℚ)

end A042941

/-! ## A042941.P336818143869617912

`2*A020918(n)-A045724(n)`
-/

namespace A042941.P336818143869617912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020918 n - A045724 n

end

end A042941.P336818143869617912

namespace A042941

/-- `2*A020918(n)-A045724(n)` -/
def P336818143869617912.Spec : Prop :=
  ∀ n, P336818143869617912.a n = A042941 n

end A042941

/-! ## A042941.P5419470643340052008

`A046527(∑[n+2]+n+7)`
-/

namespace A042941.P5419470643340052008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A042941.P5419470643340052008

namespace A042941

/-- `A046527(∑[n+2]+n+7)` -/
def P5419470643340052008.Spec : Prop :=
  ∀ n, P5419470643340052008.a n = A042941 n

end A042941

/-! ## A042941.P14050958702321506517

`or(A036987(n), A046527(A052905(n)+8))`
-/

namespace A042941.P14050958702321506517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A046527 (A052905 n + 8).toNat)

end

end A042941.P14050958702321506517

namespace A042941

/-- `or(A036987(n), A046527(A052905(n)+8))` -/
def P14050958702321506517.Spec : Prop :=
  ∀ n, P14050958702321506517.a n = A042941 n

end A042941

/-!
# A042942: From substitutional generation of Kolakoski sequence (A000002).

The programs for A042942, the canonical program `A042942.P7773469861340243061` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042942 has offset 1).

The definition of A042942 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A042942.P7773469861340243061

`A001083(n+3)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A042942

/-- `A001083(n+3)-1` -/
def P7773469861340243061.Spec : Prop :=
  ∀ n, P7773469861340243061.a n = A042942 (n + 1)

theorem P7773469861340243061.correct : P7773469861340243061.Spec := by
  intro n
  simp only [A042942, Nat.add_sub_cancel]

end A042942

/-! ## A042942.P6690961559811355914

`A260196(n+2)+A001083(n+3)`
-/

namespace A042942.P6690961559811355914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A001083 (n + 3)

end

end A042942.P6690961559811355914

namespace A042942

/-- `A260196(n+2)+A001083(n+3)` -/
def P6690961559811355914.Spec : Prop :=
  ∀ n, P6690961559811355914.a n = A042942 (n + 1)

end A042942

/-! ## A042942.P2756060917793972272

`∑[A000007(n)+Δ[A001083(n+2)]]`
-/

namespace A042942.P2756060917793972272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042942.P2756060917793972272

namespace A042942

/-- `∑[A000007(n)+Δ[A001083(n+2)]]` -/
def P2756060917793972272.Spec : Prop :=
  ∀ n, P2756060917793972272.a n = A042942 (n + 1)

end A042942

/-! ## A042942.P9463428928476257039

`A033999(2*n+1)+A001083(n+3)`
-/

namespace A042942.P9463428928476257039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001083 (n + 3)

end

end A042942.P9463428928476257039

namespace A042942

/-- `A033999(2*n+1)+A001083(n+3)` -/
def P9463428928476257039.Spec : Prop :=
  ∀ n, P9463428928476257039.a n = A042942 (n + 1)

end A042942

/-! ## A042942.P4924337584588943240

`A057428(3*n+1)+A001083(n+3)`
-/

namespace A042942.P4924337584588943240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 1) + A001083 (n + 3)

end

end A042942.P4924337584588943240

namespace A042942

/-- `A057428(3*n+1)+A001083(n+3)` -/
def P4924337584588943240.Spec : Prop :=
  ∀ n, P4924337584588943240.a n = A042942 (n + 1)

end A042942

/-! ## A042942.P17653193439124463546

`record[A001083(A005041(n))-A057427(n)]`
-/

namespace A042942.P17653193439124463546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (A005041 n).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042942.P17653193439124463546

namespace A042942

/-- `record[A001083(A005041(n))-A057427(n)]` -/
def P17653193439124463546.Spec : Prop :=
  ∀ n, P17653193439124463546.a n = A042942 (n + 1)

end A042942

/-! ## A042942.P13998284777066475586

`record[A001083(A028310(n))-A057427(n)]`
-/

namespace A042942.P13998284777066475586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (A028310 n).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042942.P13998284777066475586

namespace A042942

/-- `record[A001083(A028310(n))-A057427(n)]` -/
def P13998284777066475586.Spec : Prop :=
  ∀ n, P13998284777066475586.a n = A042942 (n + 1)

end A042942

/-! ## A042942.P11351003938461083871

`∑[A111123(abs(1-n))]-1`
-/

namespace A042942.P11351003938461083871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A042942.P11351003938461083871

namespace A042942

/-- `∑[A111123(abs(1-n))]-1` -/
def P11351003938461083871.Spec : Prop :=
  ∀ n, P11351003938461083871.a n = A042942 (n + 1)

end A042942

/-! ## A042942.P6554620862965978336

`∑[A111123(n-ceil(sin(n)²))]`
-/

namespace A042942.P6554620862965978336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042942.P6554620862965978336

namespace A042942

/-- `∑[A111123(n-ceil(sin(n)²))]` -/
def P6554620862965978336.Spec : Prop :=
  ∀ n, P6554620862965978336.a n = A042942 (n + 1)

end A042942

/-! ## A042942.P10458237889776431656

`∑[A111123(n-a(C(n, 64)))]` with `a(0)=1`
-/

namespace A042942.P10458237889776431656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A111123 ((n : ℤ) - f1 (Nat.choose n 64)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042942.P10458237889776431656

namespace A042942

/-- `∑[A111123(n-a(C(n, 64)))]` -/
def P10458237889776431656.Spec : Prop :=
  ∀ n, P10458237889776431656.a n = A042942 (n + 1)

end A042942

/-!
# A042943: Numbers k such that binomial(2^k, k) is divisible by binomial(2^k, 2).

The programs for A042943, the canonical program `A042943.P1704432346025818466` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042943 has offset 1).

The definition of A042943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042943.P1704432346025818466

`eq[0, A060430(n+1)]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042943

/-- `eq[0, A060430(n+1)]+1` -/
def P1704432346025818466.Spec : Prop :=
  ∀ n, (P1704432346025818466.a n : ℤ) = A042943 (n + 1)

theorem P1704432346025818466.correct : P1704432346025818466.Spec := by
  intro n
  simp only [A042943, Nat.add_sub_cancel]

end A042943

/-! ## A042943.P13578320204104085869

`record[A000027(n+1)-A060430(n+1)]`
-/

namespace A042943.P13578320204104085869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A060430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042943.P13578320204104085869

namespace A042943

/-- `record[A000027(n+1)-A060430(n+1)]` -/
def P13578320204104085869.Spec : Prop :=
  ∀ n, P13578320204104085869.a n = A042943 (n + 1)

end A042943

/-! ## A042943.P14719620826563527574

`record[A008619(2*n)-A060430(n+1)]`
-/

namespace A042943.P14719620826563527574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A060430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042943.P14719620826563527574

namespace A042943

/-- `record[A008619(2*n)-A060430(n+1)]` -/
def P14719620826563527574.Spec : Prop :=
  ∀ n, P14719620826563527574.a n = A042943 (n + 1)

end A042943

/-! ## A042943.P9459168771490082593

`eq[A000007(n), A060430(A028310(n))]`
-/

namespace A042943.P9459168771490082593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060430 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042943.P9459168771490082593

namespace A042943

/-- `eq[A000007(n), A060430(A028310(n))]` -/
def P9459168771490082593.Spec : Prop :=
  ∀ n, (P9459168771490082593.a n : ℤ) = A042943 (n + 1)

end A042943

/-! ## A042943.P434412705269789001

`eq[A000038(n), A060430(A028310(n))]`
-/

namespace A042943.P434412705269789001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060430 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042943.P434412705269789001

namespace A042943

/-- `eq[A000038(n), A060430(A028310(n))]` -/
def P434412705269789001.Spec : Prop :=
  ∀ n, (P434412705269789001.a n : ℤ) = A042943 (n + 1)

end A042943

/-! ## A042943.P12870546977520570810

`eq[A000007(n), A060430(A065033(2*n))]`
-/

namespace A042943.P12870546977520570810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060430 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042943.P12870546977520570810

namespace A042943

/-- `eq[A000007(n), A060430(A065033(2*n))]` -/
def P12870546977520570810.Spec : Prop :=
  ∀ n, (P12870546977520570810.a n : ℤ) = A042943 (n + 1)

end A042943

/-!
# A042944: Curvatures in diagram constructed by inscribing 2 circles of curvature 2 inside circle of curvature -1, continuing indefinitely to inscribe circles wherever possible.

The programs for A042944, there is no canonical definition to state claims against.
-/

/-! ## A042944.P11245094646184753417

`3*n-A010873(A005902(n))`
-/

namespace A042944.P11245094646184753417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A010873 (A005902 n).toNat

end

end A042944.P11245094646184753417

/-! ## A042944.P13544260215385151762

`3*n+1-A040003(A081423(n))`
-/

namespace A042944.P13544260215385151762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A040003 (A081423 n).toNat

end

end A042944.P13544260215385151762

/-! ## A042944.P11979164798964614553

`A008585(n)-A161916(A286056(n+1))`
-/

namespace A042944.P11979164798964614553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - A161916 (A286056 (n + 1)).toNat

end

end A042944.P11979164798964614553

/-! ## A042944.P17418646880654030305

`A174398(n+1)-A000005(A082625(n+1))`
-/

namespace A042944.P17418646880654030305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (n + 1) - A000005 (A082625 (n + 1)).toNat

end

end A042944.P17418646880654030305

/-! ## A042944.P15323383560638336447

`or(A020639(A360589(n+5)), A023445(3*n))`
-/

namespace A042944.P15323383560638336447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A360589 (n + 5)).toNat) (A023445 (3 * n))

end

end A042944.P15323383560638336447

/-!
# A042947: Gilda's numbers: numbers k such that if a Fibonacci sequence is formed with first term = a certain absolute value between decimal digits in k (A007953) and second term = sum of decimal digits in k (A040997), then k itself occurs as a term in the sequence.

The programs for A042947, there is no canonical definition to state claims against.
-/

/-! ## A042947.P5310329226916351394

`A004261(or(A026020(n), A185438(n)))`
-/

namespace A042947.P5310329226916351394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004261 (Int.lor (A026020 n) (A185438 n)).toNat

end

end A042947.P5310329226916351394

/-!
# A042948: Numbers congruent to 0 or 1 (mod 4).

The programs for A042948, the canonical program `A042948.P9013836715611112494` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042948 has offset 0).

The definition of A042948 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A042948.anchor (n : ℕ) : A042948 n = (Nat.nth (fun k => k % 4 ∈ ({0, 1} : Finset ℕ)) (n) : ℤ)` in `Proof.A042.A042948`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A042948.P9013836715611112494

`2*n-n%2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042948

/-- `2*n-n%2` -/
def P9013836715611112494.Spec : Prop :=
  ∀ n, P9013836715611112494.a n = A042948 n

theorem P9013836715611112494.correct : P9013836715611112494.Spec := by
  intro n
  simp only [A042948]

end A042948

/-! ## A042948.P3529788579552882956

`a(n-2)+4` with `a(0)=0, a(1)=1`
-/

namespace A042948.P3529788579552882956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 4

end

end A042948.P3529788579552882956

namespace A042948

/-- `a(n-2)+4` -/
def P3529788579552882956.Spec : Prop :=
  ∀ n, (P3529788579552882956.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P41228861053051609

`n+2*floor(n/2)`
-/

namespace A042948.P41228861053051609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + 2 * ⌊(n : ℚ) / 2⌋

end

end A042948.P41228861053051609

namespace A042948

/-- `n+2*floor(n/2)` -/
def P41228861053051609.Spec : Prop :=
  ∀ n, P41228861053051609.a n = A042948 n

end A042948

/-! ## A042948.P5778064164639477284

`ogf((x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A042948.P5778064164639477284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -1, -1, 1] n

end

end A042948.P5778064164639477284

namespace A042948

/-- `ogf((x+3x^2)/(1-x-x^2+x^3))` -/
def P5778064164639477284.Spec : Prop :=
  ∀ n, P5778064164639477284.a n = A042948 n

end A042948

/-! ## A042948.P16397855412961088816

`comp[or(2, n)]`
-/

namespace A042948.P16397855412961088816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042948.P16397855412961088816

namespace A042948

/-- `comp[or(2, n)]` -/
def P16397855412961088816.Spec : Prop :=
  ∀ n, (P16397855412961088816.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P8317475818665465779

`record[and(n, -3)]`
-/

namespace A042948.P8317475818665465779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042948.P8317475818665465779

namespace A042948

/-- `record[and(n, -3)]` -/
def P8317475818665465779.Spec : Prop :=
  ∀ n, P8317475818665465779.a n = A042948 n

end A042948

/-! ## A042948.P2844958823667709027

`lt[n, or(2, n)]`
-/

namespace A042948.P2844958823667709027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042948.P2844958823667709027

namespace A042948

/-- `lt[n, or(2, n)]` -/
def P2844958823667709027.Spec : Prop :=
  ∀ n, (P2844958823667709027.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P11565247531867119792

`lt[n, xor(2, n)]`
-/

namespace A042948.P11565247531867119792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042948.P11565247531867119792

namespace A042948

/-- `lt[n, xor(2, n)]` -/
def P11565247531867119792.Spec : Prop :=
  ∀ n, (P11565247531867119792.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P14472634748787220510

`comp[record[xor(2, n)]]`
-/

namespace A042948.P14472634748787220510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042948.P14472634748787220510

namespace A042948

/-- `comp[record[xor(2, n)]]` -/
def P14472634748787220510.Spec : Prop :=
  ∀ n, (P14472634748787220510.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P4645171412954318921

`record[or(2, n)-2]`
-/

namespace A042948.P4645171412954318921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042948.P4645171412954318921

namespace A042948

/-- `record[or(2, n)-2]` -/
def P4645171412954318921.Spec : Prop :=
  ∀ n, P4645171412954318921.a n = A042948 n

end A042948

/-! ## A042948.P11942946901064610543

`record[xor(2, n)-2]`
-/

namespace A042948.P11942946901064610543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042948.P11942946901064610543

namespace A042948

/-- `record[xor(2, n)-2]` -/
def P11942946901064610543.Spec : Prop :=
  ∀ n, P11942946901064610543.a n = A042948 n

end A042948

/-! ## A042948.P12754837819747135945

`record[xor(2, or(2, n))]`
-/

namespace A042948.P12754837819747135945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042948.P12754837819747135945

namespace A042948

/-- `record[xor(2, or(2, n))]` -/
def P12754837819747135945.Spec : Prop :=
  ∀ n, (P12754837819747135945.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P3861695154617264486

`xor(2, record[xor(2, n)])`
-/

namespace A042948.P3861695154617264486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A042948.P3861695154617264486

namespace A042948

/-- `xor(2, record[xor(2, n)])` -/
def P3861695154617264486.Spec : Prop :=
  ∀ n, (P3861695154617264486.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P12155790857011263560

`and(n, -2)+n`
-/

namespace A042948.P12155790857011263560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + (n : ℤ)

end

end A042948.P12155790857011263560

namespace A042948

/-- `and(n, -2)+n` -/
def P12155790857011263560.Spec : Prop :=
  ∀ n, P12155790857011263560.a n = A042948 n

end A042948

/-! ## A042948.P11132105021060604962

`eq[n, and(n, -3)]`
-/

namespace A042948.P11132105021060604962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042948.P11132105021060604962

namespace A042948

/-- `eq[n, and(n, -3)]` -/
def P11132105021060604962.Spec : Prop :=
  ∀ n, (P11132105021060604962.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P11790339849578462930

`record[n%or(2, n)]`
-/

namespace A042948.P11790339849578462930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042948.P11790339849578462930

namespace A042948

/-- `record[n%or(2, n)]` -/
def P11790339849578462930.Spec : Prop :=
  ∀ n, (P11790339849578462930.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P6141736403519665130

`or(1, n)-1+n`
-/

namespace A042948.P6141736403519665130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1 + (n : ℤ)

end

end A042948.P6141736403519665130

namespace A042948

/-- `or(1, n)-1+n` -/
def P6141736403519665130.Spec : Prop :=
  ∀ n, P6141736403519665130.a n = A042948 n

end A042948

/-! ## A042948.P8219205145531014831

`2*n-and(1, n)`
-/

namespace A042948.P8219205145531014831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 1 n : ℤ)

end

end A042948.P8219205145531014831

namespace A042948

/-- `2*n-and(1, n)` -/
def P8219205145531014831.Spec : Prop :=
  ∀ n, P8219205145531014831.a n = A042948 n

theorem P8219205145531014831.correct : P8219205145531014831.Spec := by
  intro n
  simp only [A042948, Nat.add_sub_cancel, A042948.P8219205145531014831.a, A042948.P9013836715611112494.a, SequenceMachineLib.memo_apply]
  try simp

end A042948

/-! ## A042948.P5322028440273662608

`xor(1, or(1, n))+n`
-/

namespace A042948.P5322028440273662608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n) + n

end

end A042948.P5322028440273662608

namespace A042948

/-- `xor(1, or(1, n))+n` -/
def P5322028440273662608.Spec : Prop :=
  ∀ n, (P5322028440273662608.a n : ℤ) = A042948 n

end A042948

/-! ## A042948.P15268894526553011123

`eq[0, n*and(2, n)]`
-/

namespace A042948.P15268894526553011123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042948.P15268894526553011123

namespace A042948

/-- `eq[0, n*and(2, n)]` -/
def P15268894526553011123.Spec : Prop :=
  ∀ n, (P15268894526553011123.a n : ℤ) = A042948 n

end A042948

/-!
# A042949: Configurations of linear chains in a 4-dimensional hypercubic lattice.

The programs for A042949, there is no canonical definition to state claims against.
-/

/-! ## A042949.P10252425843437632261

`and(A000032(2*n+1)², A000045((n²+n)²))`
-/

namespace A042949.P10252425843437632261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000032 (2 * n + 1) ^ 2) (A000045 ((n ^ 2 + n) ^ 2))

end

end A042949.P10252425843437632261

/-!
# A042950: Row sums of the Lucas triangle A029635.

The programs for A042950, the canonical program `A042950.P4347672096873643109` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042950 has offset 0).

The definition of A042950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042950.P12294258171157632875

`ogf((2-x)/(1-2x))`
-/

namespace A042950.P12294258171157632875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -2] n

end

end A042950.P12294258171157632875

namespace A042950

/-- `ogf((2-x)/(1-2x))` -/
def P12294258171157632875.Spec : Prop :=
  ∀ n, P12294258171157632875.a n = A042950 n

end A042950

/-! ## A042950.P4347672096873643109

`2*a(n-1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042950

/-- `2*a(n-1)` -/
def P4347672096873643109.Spec : Prop :=
  ∀ n, (P4347672096873643109.a n : ℤ) = A042950 n

theorem P4347672096873643109.correct : P4347672096873643109.Spec := by
  intro n
  simp only [A042950]

end A042950

/-! ## A042950.P2405495534381170530

`ceil(3*2^(n-1))`
-/

namespace A042950.P2405495534381170530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A042950.P2405495534381170530

namespace A042950

/-- `ceil(3*2^(n-1))` -/
def P2405495534381170530.Spec : Prop :=
  ∀ n, P2405495534381170530.a n = A042950 n

end A042950

/-! ## A042950.P4749779145718994119

`a(n-1)/sqrt(1/4)` with `a(0)=2, a(1)=3`
-/

namespace A042950.P4749779145718994119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A042950.P4749779145718994119

namespace A042950

/-- `a(n-1)/sqrt(1/4)` -/
def P4749779145718994119.Spec : Prop :=
  ∀ n, P4749779145718994119.a n = (A042950 n : ℝ)

end A042950

/-! ## A042950.P14248981575363357430

`a(n-1)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A042950.P14248981575363357430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + a (n - 1)

end

end A042950.P14248981575363357430

namespace A042950

/-- `a(n-1)+a(n-1)` -/
def P14248981575363357430.Spec : Prop :=
  ∀ n, (P14248981575363357430.a n : ℤ) = A042950 n

theorem P14248981575363357430.correct : P14248981575363357430.Spec := by
  intro n
  simp only [A042950, Nat.add_sub_cancel, A042950.P14248981575363357430.a, A042950.P4347672096873643109.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A042950

/-! ## A042950.P13451344632621675143

`lcm(2^(n-1), a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A042950.P13451344632621675143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A042950.P13451344632621675143

namespace A042950

/-- `lcm(2^(n-1), a(n-1))` -/
def P13451344632621675143.Spec : Prop :=
  ∀ n, (P13451344632621675143.a n : ℤ) = A042950 n

end A042950

/-! ## A042950.P8770514738416036278

`round(3*gcd(2, 2*n)^(n-1))`
-/

namespace A042950.P8770514738416036278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (Nat.gcd 2 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A042950.P8770514738416036278

namespace A042950

/-- `round(3*gcd(2, 2*n)^(n-1))` -/
def P8770514738416036278.Spec : Prop :=
  ∀ n, P8770514738416036278.a n = A042950 n

end A042950

/-! ## A042950.P13245033691510278725

`a(n-1)-(char[1]-a(n-1))` with `a(0)=2`
-/

namespace A042950.P13245033691510278725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A042950.P13245033691510278725

namespace A042950

/-- `a(n-1)-(char[1]-a(n-1))` -/
def P13245033691510278725.Spec : Prop :=
  ∀ n, P13245033691510278725.a n = A042950 n

end A042950

/-! ## A042950.P13142172783459341838

`a(n-1)-floor(1/n-a(n-1))` with `a(0)=2`
-/

namespace A042950.P13142172783459341838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ⌊1 / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A042950.P13142172783459341838

namespace A042950

/-- `a(n-1)-floor(1/n-a(n-1))` -/
def P13142172783459341838.Spec : Prop :=
  ∀ n, P13142172783459341838.a n = A042950 n

end A042950

/-! ## A042950.P9866259235597205869

`1-floor(1-a(n-1)-a(n-1))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A042950.P9866259235597205869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  1 - (1 - a (n - 1) - a (n - 1))

end

end A042950.P9866259235597205869

namespace A042950

/-- `1-floor(1-a(n-1)-a(n-1))` -/
def P9866259235597205869.Spec : Prop :=
  ∀ n, P9866259235597205869.a n = A042950 n

end A042950

/-! ## A042950.P9169035334042209176

`3-(gcd(3, a(n-1))-a(n-1)-a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A042950.P9169035334042209176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 - ((Int.gcd 3 (a (n - 1)) : ℤ) - a (n - 1) - a (n - 1))

end

end A042950.P9169035334042209176

namespace A042950

/-- `3-(gcd(3, a(n-1))-a(n-1)-a(n-1))` -/
def P9169035334042209176.Spec : Prop :=
  ∀ n, P9169035334042209176.a n = A042950 n

end A042950

/-! ## A042950.P9898753204601101074

`a(n-1)-a(n-1)/(a(n-1)%(a(n-1)-1)-2)` with `a(0)=2`
-/

namespace A042950.P9898753204601101074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - a (n - 1) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 1) - 1)) - 2 : ℚ)

end

end A042950.P9898753204601101074

namespace A042950

/-- `a(n-1)-a(n-1)/(a(n-1)%(a(n-1)-1)-2)` -/
def P9898753204601101074.Spec : Prop :=
  ∀ n, P9898753204601101074.a n = (A042950 n : ℚ)

end A042950

/-! ## A042950.P10383682950997814985

`A083329(n)+1`
-/

namespace A042950.P10383682950997814985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n + 1

end

end A042950.P10383682950997814985

namespace A042950

/-- `A083329(n)+1` -/
def P10383682950997814985.Spec : Prop :=
  ∀ n, P10383682950997814985.a n = A042950 n

end A042950

/-! ## A042950.P10397106817972757236

`A296953(n)+2`
-/

namespace A042950.P10397106817972757236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + 2

end

end A042950.P10397106817972757236

namespace A042950

/-- `A296953(n)+2` -/
def P10397106817972757236.Spec : Prop :=
  ∀ n, P10397106817972757236.a n = A042950 n

end A042950

/-! ## A042950.P5206741002267529112

`A098011(n+3)`
-/

namespace A042950.P5206741002267529112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 3)

end

end A042950.P5206741002267529112

namespace A042950

/-- `A098011(n+3)` -/
def P5206741002267529112.Spec : Prop :=
  ∀ n, P5206741002267529112.a n = A042950 n

end A042950

/-! ## A042950.P8700205659826013838

`A058764(n)-char[1]`
-/

namespace A042950.P8700205659826013838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A042950.P8700205659826013838

namespace A042950

/-- `A058764(n)-char[1]` -/
def P8700205659826013838.Spec : Prop :=
  ∀ n, P8700205659826013838.a n = A042950 n

end A042950

/-! ## A042950.P17306701545756705489

`A266550(n+2)+1`
-/

namespace A042950.P17306701545756705489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) + 1

end

end A042950.P17306701545756705489

namespace A042950

/-- `A266550(n+2)+1` -/
def P17306701545756705489.Spec : Prop :=
  ∀ n, P17306701545756705489.a n = A042950 n

end A042950

/-! ## A042950.P10810390617311984708

`A003073(3*n)+1`
-/

namespace A042950.P10810390617311984708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003073 (3 * n) + 1

end

end A042950.P10810390617311984708

namespace A042950

/-- `A003073(3*n)+1` -/
def P10810390617311984708.Spec : Prop :=
  ∀ n, P10810390617311984708.a n = A042950 n

end A042950

/-! ## A042950.P5396216701038915905

`A011782(n)+2^n`
-/

namespace A042950.P5396216701038915905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (2 ^ n : ℤ)

end

end A042950.P5396216701038915905

namespace A042950

/-- `A011782(n)+2^n` -/
def P5396216701038915905.Spec : Prop :=
  ∀ n, P5396216701038915905.a n = A042950 n

end A042950

/-! ## A042950.P10329324043983181867

`abs(Δ[A117575(2*n)])`
-/

namespace A042950.P10329324043983181867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A042950.P10329324043983181867

namespace A042950

/-- `abs(Δ[A117575(2*n)])` -/
def P10329324043983181867.Spec : Prop :=
  ∀ n, P10329324043983181867.a n = A042950 n

end A042950

/-!
# A042951: The sequence e when b=[ 0,1,1,1,1,... ].

The programs for A042951, the canonical program `A042951.P9394437617427627479` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042951 has offset 0).

The definition of A042951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042951.P9394437617427627479

`A018819(round(2*n/3))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042951

/-- `A018819(round(2*n/3))-a(n-1)` -/
def P9394437617427627479.Spec : Prop :=
  ∀ n, P9394437617427627479.a n = A042951 n

theorem P9394437617427627479.correct : P9394437617427627479.Spec := by
  intro n
  simp only [A042951]

end A042951

/-! ## A042951.P9640359422127936391

`A161206(A103221(n)%A161206(2*n+3))`
-/

namespace A042951.P9640359422127936391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161206 (Int.tmod (A103221 n) (A161206 (2 * n + 3))).toNat

end

end A042951.P9640359422127936391

namespace A042951

/-- `A161206(A103221(n)%A161206(2*n+3))` -/
def P9640359422127936391.Spec : Prop :=
  ∀ n, P9640359422127936391.a n = A042951 n

end A042951

/-! ## A042951.P17581387283258408468

`A299476(A103221(n))%A085902(A085902(n))`
-/

namespace A042951.P17581387283258408468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299476 (A103221 n).toNat) (A085902 (A085902 n).toNat)

end

end A042951.P17581387283258408468

namespace A042951

/-- `A299476(A103221(n))%A085902(A085902(n))` -/
def P17581387283258408468.Spec : Prop :=
  ∀ n, P17581387283258408468.a n = A042951 n

end A042951

/-!
# A042952: The sequence d when b=[ 1,0,1,1,1,... ].

The programs for A042952, there is no canonical definition to state claims against.
-/

/-! ## A042952.P15608459378170061500

`lt[Δ[A099866(n+1)], 3*n²]`
-/

namespace A042952.P15608459378170061500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099866 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A042952.P15608459378170061500

/-! ## A042952.P7995085947448160462

`eq[A110656(A133310(n+4)), A338731(2*n)]`
-/

namespace A042952.P7995085947448160462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A133310 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338731 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042952.P7995085947448160462

/-! ## A042952.P13328121007009077046

`eq[A110656(A274616(n+5)), A338731(2*n)]`
-/

namespace A042952.P13328121007009077046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A274616 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338731 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042952.P13328121007009077046

/-!
# A042953: The sequence e when b=[ 1,0,1,1,1,... ].

The programs for A042953, there is no canonical definition to state claims against.
-/

/-! ## A042953.P6416191253744037640

`or(A035969(n), A206499(7*n+10))`
-/

namespace A042953.P6416191253744037640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035969 n) (A206499 (7 * n + 10))

end

end A042953.P6416191253744037640

/-! ## A042953.P12146160975294339650

`A037825(A077168(n))+A035969(n)`
-/

namespace A042953.P12146160975294339650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A077168 n).toNat + A035969 n

end

end A042953.P12146160975294339650

/-! ## A042953.P17860492452507427764

`A206499(A167934(n))+A035969(n)`
-/

namespace A042953.P17860492452507427764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (A167934 n).toNat + A035969 n

end

end A042953.P17860492452507427764

/-! ## A042953.P8483350905799902737

`A326596(A077168(n))+A008636(n)`
-/

namespace A042953.P8483350905799902737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 (A077168 n).toNat + A008636 n

end

end A042953.P8483350905799902737

/-! ## A042953.P1577815253419800655

`or(A047999(A000079(n)), A325853(n))`
-/

namespace A042953.P1577815253419800655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047999 (A000079 n).toNat) (A325853 n)

end

end A042953.P1577815253419800655

/-!
# A042955: The sequence e when b=[ 1,1,0,1,1,... ].

The programs for A042955, there is no canonical definition to state claims against.
-/

/-! ## A042955.P9366835526100392252

`A105224(A051894(n)-A007089(n))`
-/

namespace A042955.P9366835526100392252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A051894 n - A007089 n).toNat

end

end A042955.P9366835526100392252

/-! ## A042955.P5397531690342136008

`or(A037825(A006906(n)), A238873(n))`
-/

namespace A042955.P5397531690342136008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037825 (A006906 n).toNat) (A238873 n)

end

end A042955.P5397531690342136008

/-! ## A042955.P10092745825641492292

`or(A000688(A015863(n+1)), A238873(n))`
-/

namespace A042955.P10092745825641492292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000688 (A015863 (n + 1)).toNat) (A238873 n)

end

end A042955.P10092745825641492292

/-! ## A042955.P1273336489128023246

`or(A238873(n), A292592(A002586(n+1)))`
-/

namespace A042955.P1273336489128023246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238873 n) (A292592 (A002586 (n + 1)).toNat)

end

end A042955.P1273336489128023246

/-! ## A042955.P5447453483181882511

`or(A238873(n), A382771(A293524(n+1)))`
-/

namespace A042955.P5447453483181882511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238873 n) (A382771 (A293524 (n + 1)).toNat)

end

end A042955.P5447453483181882511

/-!
# A042956: The sequence d when b=[ 1,1,1,0,1,1,.. ].

The programs for A042956, there is no canonical definition to state claims against.
-/

/-! ## A042956.P671206983716219331

`lt[A051700(A188481(n)), A350021(n+1)]`
-/

namespace A042956.P671206983716219331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A188481 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042956.P671206983716219331

/-! ## A042956.P12197779536911697310

`lt[A350026(A350063(3*(n+1))), A350021(n+1)]`
-/

namespace A042956.P12197779536911697310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350026 (A350063 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042956.P12197779536911697310

/-! ## A042956.P7782829720717759350

`lt[A264341(A007318(n+1)), A352533(3*n+7)]`
-/

namespace A042956.P7782829720717759350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264341 (A007318 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352533 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042956.P7782829720717759350

/-! ## A042956.P17677205554413951222

`∑[A228351(A056795(n+3)-n)]`
-/

namespace A042956.P17677205554413951222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A056795 (n + 3) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042956.P17677205554413951222

/-! ## A042956.P12715728030662430043

`lt[A002262(n+2), A090003(A113177(n+1))]`
-/

namespace A042956.P12715728030662430043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090003 (A113177 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042956.P12715728030662430043

/-!
# A042957: The sequence e when b=[ 1,1,1,0,1,1,... ].

The programs for A042957, there is no canonical definition to state claims against.
-/

/-! ## A042957.P16807397294377128410

`A042959(A001963(n)%A288655(n+1))`
-/

namespace A042957.P16807397294377128410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042959 (Int.tmod (A001963 n) (A288655 (n + 1))).toNat

end

end A042957.P16807397294377128410

/-! ## A042957.P9012459041812496317

`or(A042959(A001963(n)), A082503(n+1))`
-/

namespace A042957.P9012459041812496317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A042959 (A001963 n).toNat) (A082503 (n + 1))

end

end A042957.P9012459041812496317

/-! ## A042957.P1959801653547691289

`or(A042959(A171975(2*n+1)), A082503(n+1))`
-/

namespace A042957.P1959801653547691289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A042959 (A171975 (2 * n + 1)).toNat) (A082503 (n + 1))

end

end A042957.P1959801653547691289

/-!
# A042958: The sequence d when b=[ 1,1,1,1,0,1,1,1,.. ].

The programs for A042958, there is no canonical definition to state claims against.
-/

/-! ## A042958.P3892807690112454520

`∑[gcd(12, A210992(6*n+10))]`
-/

namespace A042958.P3892807690112454520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A210992 (6 * n + 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042958.P3892807690112454520

/-! ## A042958.P13783212961233265260

`lt[2*n+5, A315103(A322788(n+1))]`
-/

namespace A042958.P13783212961233265260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315103 (A322788 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A042958.P13783212961233265260

/-! ## A042958.P7682510667621881534

`lt[A035513(n+1), A004614(A322788(n+1))]`
-/

namespace A042958.P7682510667621881534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (A322788 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042958.P7682510667621881534

/-! ## A042958.P57530271704939

`lt[A162644(n+1), A004614(A322788(n+1))]`
-/

namespace A042958.P57530271704939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (A322788 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042958.P57530271704939

/-! ## A042958.P16364819357243048484

`lt[A127334(3*n+4), A229094(A322788(n+1))]`
-/

namespace A042958.P16364819357243048484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229094 (A322788 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042958.P16364819357243048484

/-!
# A042961: The sequence e when b is obtained by reversing the parity of Euler's partition function A000041.

The programs for A042961, there is no canonical definition to state claims against.
-/

/-! ## A042961.P1341621526446971120

`A000700(n)-A062157(A160724(n))`
-/

namespace A042961.P1341621526446971120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A062157 (A160724 n).toNat

end

end A042961.P1341621526446971120

/-! ## A042961.P13496216134855253756

`A000700(n)-A062157(A029966(n+1))`
-/

namespace A042961.P13496216134855253756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A062157 (A029966 (n + 1)).toNat

end

end A042961.P13496216134855253756

/-! ## A042961.P6966073139251790246

`A357457(n)+A059841(A276086(3*(n+1)))`
-/

namespace A042961.P6966073139251790246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357457 n + A059841 (A276086 (3 * (n + 1))).toNat

end

end A042961.P6966073139251790246

/-! ## A042961.P337577198895689648

`A000700(n)-A304438(2^n)`
-/

namespace A042961.P337577198895689648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A304438 (2 ^ n)

end

end A042961.P337577198895689648

/-! ## A042961.P6645171347167578340

`A056594(A068911(n))+A000700(n)`
-/

namespace A042961.P6645171347167578340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A068911 n).toNat + A000700 n

end

end A042961.P6645171347167578340

/-!
# A042962: The sequence e when b=[ 1,0,1,0,1,0,1,0,... ].

The programs for A042962, the canonical program `A042962.P10858511326811017970` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042962 has offset 0).

The definition of A042962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042962.P10858511326811017970

`∑[A042951(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A042962

/-- `∑[A042951(n)]` -/
def P10858511326811017970.Spec : Prop :=
  ∀ n, P10858511326811017970.a n = A042962 n

theorem P10858511326811017970.correct : P10858511326811017970.Spec := by
  intro n
  simp only [A042962]

end A042962

/-! ## A042962.P4108979040426851711

`A042951(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A042962.P4108979040426851711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A042951 n + a (A023443 n).toNat

end

end A042962.P4108979040426851711

namespace A042962

/-- `A042951(n)+a(A023443(n))` -/
def P4108979040426851711.Spec : Prop :=
  ∀ n, P4108979040426851711.a n = A042962 n

end A042962

/-! ## A042962.P1813982741089787072

`A042951(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A042962.P1813982741089787072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A042951 n + a (A028310 n - 1).toNat

end

end A042962.P1813982741089787072

namespace A042962

/-- `A042951(n)+a(A028310(n)-1)` -/
def P1813982741089787072.Spec : Prop :=
  ∀ n, P1813982741089787072.a n = A042962 n

end A042962

/-! ## A042962.P7143267429609394754

`a(n-1)+lcm(A042951(n), A057077(n+1))` with `a(0)=1`
-/

namespace A042962.P7143267429609394754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A042951 n) (A057077 (n + 1))

end

end A042962.P7143267429609394754

namespace A042962

/-- `a(n-1)+lcm(A042951(n), A057077(n+1))` -/
def P7143267429609394754.Spec : Prop :=
  ∀ n, (P7143267429609394754.a n : ℤ) = A042962 n

end A042962

/-! ## A042962.P3453150953032721017

`a(n-1)+A042951(n)/A010195(2*n+1)` with `a(0)=1`
-/

namespace A042962.P3453150953032721017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A042951 n : ℚ) / (A010195 (2 * n + 1) : ℚ)

end

end A042962.P3453150953032721017

namespace A042962

/-- `a(n-1)+A042951(n)/A010195(2*n+1)` -/
def P3453150953032721017.Spec : Prop :=
  ∀ n, P3453150953032721017.a n = (A042962 n : ℚ)

end A042962

/-!
# A042963: Numbers congruent to 1 or 2 mod 4.

The programs for A042963, the canonical program `A042963.P14067673700417363869` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042963 has offset 1).

The definition of A042963 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A042963.anchor (n : ℕ) (hn : 1 ≤ n) : A042963 n = (Nat.nth (fun k => k % 4 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A042.A042963`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A042963.P9490801852544592202

`ogf((1+x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A042963.P9490801852544592202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -1, -1, 1] n

end

end A042963.P9490801852544592202

namespace A042963

/-- `ogf((1+x+2x^2)/(1-x-x^2+x^3))` -/
def P9490801852544592202.Spec : Prop :=
  ∀ n, P9490801852544592202.a n = A042963 (n + 1)

end A042963

/-! ## A042963.P14067673700417363869

`2*(n+1)-1-n%2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042963

/-- `2*(n+1)-1-n%2` -/
def P14067673700417363869.Spec : Prop :=
  ∀ n, P14067673700417363869.a n = A042963 (n + 1)

theorem P14067673700417363869.correct : P14067673700417363869.Spec := by
  intro n
  simp only [A042963, Nat.add_sub_cancel]

end A042963

/-! ## A042963.P662100528713776678

`a(n-1)+2+(-1)^n` with `a(0)=1`
-/

namespace A042963.P662100528713776678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 + (-1) ^ n

end

end A042963.P662100528713776678

namespace A042963

/-- `a(n-1)+2+(-1)^n` -/
def P662100528713776678.Spec : Prop :=
  ∀ n, P662100528713776678.a n = A042963 (n + 1)

end A042963

/-! ## A042963.P15520278689866879341

`4*(n+1)-a(n-1)-5` with `a(0)=1`
-/

namespace A042963.P15520278689866879341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * (n + 1) : ℤ) - a (n - 1) - 5

end

end A042963.P15520278689866879341

namespace A042963

/-- `4*(n+1)-a(n-1)-5` -/
def P15520278689866879341.Spec : Prop :=
  ∀ n, P15520278689866879341.a n = A042963 (n + 1)

end A042963

/-! ## A042963.P13085804645677255711

`(4*(n+1)-3-(-1)^(n+1))/2`
-/

namespace A042963.P13085804645677255711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1) : ℚ) / 2

end

end A042963.P13085804645677255711

namespace A042963

/-- `(4*(n+1)-3-(-1)^(n+1))/2` -/
def P13085804645677255711.Spec : Prop :=
  ∀ n, P13085804645677255711.a n = (A042963 (n + 1) : ℚ)

end A042963

/-! ## A042963.P15641889609639875185

`1+A042948(n)`
-/

namespace A042963.P15641889609639875185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A042948 n

end

end A042963.P15641889609639875185

namespace A042963

/-- `1+A042948(n)` -/
def P15641889609639875185.Spec : Prop :=
  ∀ n, P15641889609639875185.a n = A042963 (n + 1)

theorem P15641889609639875185.correct : P15641889609639875185.Spec := by
  intro n
  simp only [A042963, Nat.add_sub_cancel, A042963.P15641889609639875185.a, A042963.P14067673700417363869.a, A042948, A042948.P9013836715611112494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A042963

/-! ## A042963.P1333418451794022602

`A005843(n)+A059841(n)`
-/

namespace A042963.P1333418451794022602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A059841 n

end

end A042963.P1333418451794022602

namespace A042963

/-- `A005843(n)+A059841(n)` -/
def P1333418451794022602.Spec : Prop :=
  ∀ n, P1333418451794022602.a n = A042963 (n + 1)

theorem P1333418451794022602.correct : P1333418451794022602.Spec := by
  intro n
  simp only [A042963, Nat.add_sub_cancel, A042963.P1333418451794022602.a, A042963.P14067673700417363869.a, A005843, A005843.P3167286115683555970.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A042963

/-! ## A042963.P1037607352140436468

`or(1, n)+n`
-/

namespace A042963.P1037607352140436468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

end

end A042963.P1037607352140436468

namespace A042963

/-- `or(1, n)+n` -/
def P1037607352140436468.Spec : Prop :=
  ∀ n, (P1037607352140436468.a n : ℤ) = A042963 (n + 1)

end A042963

/-! ## A042963.P134849578380910483

`record[or(2, n)-1]`
-/

namespace A042963.P134849578380910483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042963.P134849578380910483

namespace A042963

/-- `record[or(2, n)-1]` -/
def P134849578380910483.Spec : Prop :=
  ∀ n, P134849578380910483.a n = A042963 (n + 1)

end A042963

/-! ## A042963.P3095878517992467205

`record[xor(2, n)-1]`
-/

namespace A042963.P3095878517992467205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042963.P3095878517992467205

namespace A042963

/-- `record[xor(2, n)-1]` -/
def P3095878517992467205.Spec : Prop :=
  ∀ n, P3095878517992467205.a n = A042963 (n + 1)

end A042963

/-! ## A042963.P2036747582508500595

`comp[or(2, n)-3]`
-/

namespace A042963.P2036747582508500595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A042963.P2036747582508500595

namespace A042963

/-- `comp[or(2, n)-3]` -/
def P2036747582508500595.Spec : Prop :=
  ∀ n, (P2036747582508500595.a n : ℤ) = A042963 (n + 1)

end A042963

/-! ## A042963.P16361569294801816960

`eq[n, or(2, n)]-1`
-/

namespace A042963.P16361569294801816960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A042963.P16361569294801816960

namespace A042963

/-- `eq[n, or(2, n)]-1` -/
def P16361569294801816960.Spec : Prop :=
  ∀ n, P16361569294801816960.a n = A042963 (n + 1)

end A042963

/-! ## A042963.P7352147937569045244

`lt[xor(2, n+1), n]`
-/

namespace A042963.P7352147937569045244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042963.P7352147937569045244

namespace A042963

/-- `lt[xor(2, n+1), n]` -/
def P7352147937569045244.Spec : Prop :=
  ∀ n, (P7352147937569045244.a n : ℤ) = A042963 (n + 1)

end A042963

/-! ## A042963.P16752362932471369168

`lt[n, or(2, n-1)]`
-/

namespace A042963.P16752362932471369168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A042963.P16752362932471369168

namespace A042963

/-- `lt[n, or(2, n-1)]` -/
def P16752362932471369168.Spec : Prop :=
  ∀ n, (P16752362932471369168.a n : ℤ) = A042963 (n + 1)

end A042963

/-! ## A042963.P18327947822893200228

`lt[xor(2, n), n]-1`
-/

namespace A042963.P18327947822893200228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A042963.P18327947822893200228

namespace A042963

/-- `lt[xor(2, n), n]-1` -/
def P18327947822893200228.Spec : Prop :=
  ∀ n, P18327947822893200228.a n = A042963 (n + 1)

end A042963

/-! ## A042963.P3736799471092868509

`record[and(n, -3)+1]`
-/

namespace A042963.P3736799471092868509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042963.P3736799471092868509

namespace A042963

/-- `record[and(n, -3)+1]` -/
def P3736799471092868509.Spec : Prop :=
  ∀ n, P3736799471092868509.a n = A042963 (n + 1)

end A042963

/-! ## A042963.P13123549478693679811

`∑[runs[val(n+3, 4)]]`
-/

namespace A042963.P13123549478693679811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042963.P13123549478693679811

namespace A042963

/-- `∑[runs[val(n+3, 4)]]` -/
def P13123549478693679811.Spec : Prop :=
  ∀ n, (P13123549478693679811.a n : ℤ) = A042963 (n + 1)

end A042963

/-! ## A042963.P4857806315077038498

`Δ[n²]-and(1, n)`
-/

namespace A042963.P4857806315077038498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.land 1 n : ℤ)

end

end A042963.P4857806315077038498

namespace A042963

/-- `Δ[n²]-and(1, n)` -/
def P4857806315077038498.Spec : Prop :=
  ∀ n, P4857806315077038498.a n = A042963 (n + 1)

theorem P4857806315077038498.correct : P4857806315077038498.Spec := by
  intro n
  simp only [A042963, Nat.add_sub_cancel, A042963.P4857806315077038498.f1, A042963.P4857806315077038498.a, A042963.P14067673700417363869.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A042963

/-! ## A042963.P16811697124978224602

`a(n-2)+4` with `a(0)=1, a(1)=2`
-/

namespace A042963.P16811697124978224602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 4

end

end A042963.P16811697124978224602

namespace A042963

/-- `a(n-2)+4` -/
def P16811697124978224602.Spec : Prop :=
  ∀ n, (P16811697124978224602.a n : ℤ) = A042963 (n + 1)

end A042963

/-! ## A042963.P3256885127103865638

`∑[or(1, gcd(2, n))]-2`
-/

namespace A042963.P3256885127103865638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A042963.P3256885127103865638

namespace A042963

/-- `∑[or(1, gcd(2, n))]-2` -/
def P3256885127103865638.Spec : Prop :=
  ∀ n, P3256885127103865638.a n = A042963 (n + 1)

end A042963

/-!
# A042964: Numbers that are congruent to 2 or 3 mod 4.

The programs for A042964, the canonical program `A042964.P7499870354586639709` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042964 has offset 1).

The definition of A042964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042964.P4067199113685294423

`ogf((2+x+x^2)/(1-x-x^2+x^3))`
-/

namespace A042964.P4067199113685294423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 1] [1, -1, -1, 1] n

end

end A042964.P4067199113685294423

namespace A042964

/-- `ogf((2+x+x^2)/(1-x-x^2+x^3))` -/
def P4067199113685294423.Spec : Prop :=
  ∀ n, P4067199113685294423.a n = A042964 (n + 1)

end A042964

/-! ## A042964.P7499870354586639709

`(3+(-1)^n)/2+2*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042964

/-- `(3+(-1)^n)/2+2*n` -/
def P7499870354586639709.Spec : Prop :=
  ∀ n, P7499870354586639709.a n = (A042964 (n + 1) : ℚ)

end A042964

/-! ## A042964.P9514820293687360035

`A047406(n+1)/2`
-/

namespace A042964.P9514820293687360035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047406 (n + 1) : ℚ) / 2

end

end A042964.P9514820293687360035

namespace A042964

/-- `A047406(n+1)/2` -/
def P9514820293687360035.Spec : Prop :=
  ∀ n, P9514820293687360035.a n = (A042964 (n + 1) : ℚ)

end A042964

/-! ## A042964.P7207831795801230311

`record[or(2, n)]`
-/

namespace A042964.P7207831795801230311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042964.P7207831795801230311

namespace A042964

/-- `record[or(2, n)]` -/
def P7207831795801230311.Spec : Prop :=
  ∀ n, (P7207831795801230311.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P2410042144454785095

`record[xor(2, n)]`
-/

namespace A042964.P2410042144454785095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042964.P2410042144454785095

namespace A042964

/-- `record[xor(2, n)]` -/
def P2410042144454785095.Spec : Prop :=
  ∀ n, (P2410042144454785095.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P6267249969845979330

`comp[and(n, -3)]`
-/

namespace A042964.P6267249969845979330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A042964.P6267249969845979330

namespace A042964

/-- `comp[and(n, -3)]` -/
def P6267249969845979330.Spec : Prop :=
  ∀ n, (P6267249969845979330.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P3848857748041796461

`eq[n, or(2, n)]`
-/

namespace A042964.P3848857748041796461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042964.P3848857748041796461

namespace A042964

/-- `eq[n, or(2, n)]` -/
def P3848857748041796461.Spec : Prop :=
  ∀ n, (P3848857748041796461.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P5763936038139310522

`lt[xor(2, n), n]`
-/

namespace A042964.P5763936038139310522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042964.P5763936038139310522

namespace A042964

/-- `lt[xor(2, n), n]` -/
def P5763936038139310522.Spec : Prop :=
  ∀ n, (P5763936038139310522.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P11019212496335735462

`comp[or(2, n)]+2`
-/

namespace A042964.P11019212496335735462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A042964.P11019212496335735462

namespace A042964

/-- `comp[or(2, n)]+2` -/
def P11019212496335735462.Spec : Prop :=
  ∀ n, (P11019212496335735462.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P17890140776112067434

`comp[or(2, n)-2]`
-/

namespace A042964.P17890140776112067434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A042964.P17890140776112067434

namespace A042964

/-- `comp[or(2, n)-2]` -/
def P17890140776112067434.Spec : Prop :=
  ∀ n, (P17890140776112067434.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P238593368424237493

`or(2, comp[or(2, n)])`
-/

namespace A042964.P238593368424237493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A042964.P238593368424237493

namespace A042964

/-- `or(2, comp[or(2, n)])` -/
def P238593368424237493.Spec : Prop :=
  ∀ n, (P238593368424237493.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P6972247247792341091

`lt[and(n, -3), n]`
-/

namespace A042964.P6972247247792341091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A042964.P6972247247792341091

namespace A042964

/-- `lt[and(n, -3), n]` -/
def P6972247247792341091.Spec : Prop :=
  ∀ n, (P6972247247792341091.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P15060182826135889164

`gcd(2, n)+2*n`
-/

namespace A042964.P15060182826135889164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 2 * n

end

end A042964.P15060182826135889164

namespace A042964

/-- `gcd(2, n)+2*n` -/
def P15060182826135889164.Spec : Prop :=
  ∀ n, (P15060182826135889164.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P17566201742966493497

`or(1, n)+n+1`
-/

namespace A042964.P17566201742966493497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + (n + 1)

end

end A042964.P17566201742966493497

namespace A042964

/-- `or(1, n)+n+1` -/
def P17566201742966493497.Spec : Prop :=
  ∀ n, (P17566201742966493497.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P486913700927150300

`eq[2, and(n, 1-n)]`
-/

namespace A042964.P486913700927150300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042964.P486913700927150300

namespace A042964

/-- `eq[2, and(n, 1-n)]` -/
def P486913700927150300.Spec : Prop :=
  ∀ n, (P486913700927150300.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P10389645334668121920

`lt[0, n*and(2, n)]`
-/

namespace A042964.P10389645334668121920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042964.P10389645334668121920

namespace A042964

/-- `lt[0, n*and(2, n)]` -/
def P10389645334668121920.Spec : Prop :=
  ∀ n, (P10389645334668121920.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P2903917812520136071

`lt[or(2, n)-1, n]`
-/

namespace A042964.P2903917812520136071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A042964.P2903917812520136071

namespace A042964

/-- `lt[or(2, n)-1, n]` -/
def P2903917812520136071.Spec : Prop :=
  ∀ n, (P2903917812520136071.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P2220490019324021778

`eq[n, xor(2, n)+2]`
-/

namespace A042964.P2220490019324021778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042964.P2220490019324021778

namespace A042964

/-- `eq[n, xor(2, n)+2]` -/
def P2220490019324021778.Spec : Prop :=
  ∀ n, (P2220490019324021778.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P7023504155561683109

`eq[2, xor(n, n-2)]`
-/

namespace A042964.P7023504155561683109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042964.P7023504155561683109

namespace A042964

/-- `eq[2, xor(n, n-2)]` -/
def P7023504155561683109.Spec : Prop :=
  ∀ n, (P7023504155561683109.a n : ℤ) = A042964 (n + 1)

end A042964

/-! ## A042964.P13500873444585105111

`lt[1, n^and(2, n)]`
-/

namespace A042964.P13500873444585105111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042964.P13500873444585105111

namespace A042964

/-- `lt[1, n^and(2, n)]` -/
def P13500873444585105111.Spec : Prop :=
  ∀ n, (P13500873444585105111.a n : ℤ) = A042964 (n + 1)

end A042964

/-!
# A042965: Nonnegative integers not congruent to 2 mod 4.

The programs for A042965, the canonical program `A042965.P10256174339092268817` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042965 has offset 1).

The definition of A042965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042965.P17453590967267829419

`floor((4*(n+1)-3)/3)`
-/

namespace A042965.P17453590967267829419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 * (n + 1) : ℤ) - 3 : ℚ) / 3⌋

end

end A042965.P17453590967267829419

namespace A042965

/-- `floor((4*(n+1)-3)/3)` -/
def P17453590967267829419.Spec : Prop :=
  ∀ n, P17453590967267829419.a n = A042965 (n + 1)

end A042965

/-! ## A042965.P7906194088981813949

`ogf((x+2x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A042965.P7906194088981813949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1] [1, -1, 0, -1, 1] n

end

end A042965.P7906194088981813949

namespace A042965

/-- `ogf((x+2x^2+x^3)/(1-x-x^3+x^4))` -/
def P7906194088981813949.Spec : Prop :=
  ∀ n, P7906194088981813949.a n = A042965 (n + 1)

end A042965

/-! ## A042965.P10256174339092268817

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042965

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P10256174339092268817.Spec : Prop :=
  ∀ n, P10256174339092268817.a n = A042965 (n + 1)

theorem P10256174339092268817.correct : P10256174339092268817.Spec := by
  intro n
  simp only [A042965, Nat.add_sub_cancel]

end A042965

/-! ## A042965.P11171290940535648973

`(12*(n+1)-12+3*cos(2*(n+1)*π/3)+sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A042965.P11171290940535648973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((12 * (n + 1) : ℤ) - 12 : ℝ) + 3 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A042965.P11171290940535648973

namespace A042965

/-- `(12*(n+1)-12+3*cos(2*(n+1)*π/3)+sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P11171290940535648973.Spec : Prop :=
  ∀ n, P11171290940535648973.a n = (A042965 (n + 1) : ℝ)

end A042965

/-! ## A042965.P13704709247785290014

`comp[2+lcm(n, 4)]`
-/

namespace A042965.P13704709247785290014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + Nat.lcm n 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042965.P13704709247785290014

namespace A042965

/-- `comp[2+lcm(n, 4)]` -/
def P13704709247785290014.Spec : Prop :=
  ∀ n, (P13704709247785290014.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P15862671932417944179

`comp[2*or(1, n)]`
-/

namespace A042965.P15862671932417944179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042965.P15862671932417944179

namespace A042965

/-- `comp[2*or(1, n)]` -/
def P15862671932417944179.Spec : Prop :=
  ∀ n, (P15862671932417944179.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P17961227856354549437

`comp[or(3, n)-1]`
-/

namespace A042965.P17961227856354549437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A042965.P17961227856354549437

namespace A042965

/-- `comp[or(3, n)-1]` -/
def P17961227856354549437.Spec : Prop :=
  ∀ n, (P17961227856354549437.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P16818303640938295653

`comp[xor(2, 4*n)]`
-/

namespace A042965.P16818303640938295653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (4 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042965.P16818303640938295653

namespace A042965

/-- `comp[xor(2, 4*n)]` -/
def P16818303640938295653.Spec : Prop :=
  ∀ n, (P16818303640938295653.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P7124905881402657080

`comp[lcm(2, or(1, n))]`
-/

namespace A042965.P7124905881402657080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042965.P7124905881402657080

namespace A042965

/-- `comp[lcm(2, or(1, n))]` -/
def P7124905881402657080.Spec : Prop :=
  ∀ n, (P7124905881402657080.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P1887463641895036518

`lt[val(n+2, 2), 2]`
-/

namespace A042965.P1887463641895036518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042965.P1887463641895036518

namespace A042965

/-- `lt[val(n+2, 2), 2]` -/
def P1887463641895036518.Spec : Prop :=
  ∀ n, (P1887463641895036518.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P16149744984666528351

`∑[(n%3)!]-1`
-/

namespace A042965.P16149744984666528351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A042965.P16149744984666528351

namespace A042965

/-- `∑[(n%3)!]-1` -/
def P16149744984666528351.Spec : Prop :=
  ∀ n, P16149744984666528351.a n = A042965 (n + 1)

end A042965

/-! ## A042965.P14510328180393913946

`lt[xor(3, n-2), n]`
-/

namespace A042965.P14510328180393913946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A042965.P14510328180393913946

namespace A042965

/-- `lt[xor(3, n-2), n]` -/
def P14510328180393913946.Spec : Prop :=
  ∀ n, (P14510328180393913946.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P5456322904700415947

`record[n-and(4, n²)]`
-/

namespace A042965.P5456322904700415947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 4 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042965.P5456322904700415947

namespace A042965

/-- `record[n-and(4, n²)]` -/
def P5456322904700415947.Spec : Prop :=
  ∀ n, P5456322904700415947.a n = A042965 (n + 1)

end A042965

/-! ## A042965.P7980075331985257090

`lt[n², or(4, n²)]`
-/

namespace A042965.P7980075331985257090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042965.P7980075331985257090

namespace A042965

/-- `lt[n², or(4, n²)]` -/
def P7980075331985257090.Spec : Prop :=
  ∀ n, (P7980075331985257090.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P401266743462763748

`lt[n², xor(4, n²)]`
-/

namespace A042965.P401266743462763748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042965.P401266743462763748

namespace A042965

/-- `lt[n², xor(4, n²)]` -/
def P401266743462763748.Spec : Prop :=
  ∀ n, (P401266743462763748.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P278321306378921315

`∪[4*n, Δ[n²]]`
-/

namespace A042965.P278321306378921315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042965.P278321306378921315

namespace A042965

/-- `∪[4*n, Δ[n²]]` -/
def P278321306378921315.Spec : Prop :=
  ∀ n, (P278321306378921315.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P17635150091300713670

`floor(or(1, 4*n)/3)`
-/

namespace A042965.P17635150091300713670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (4 * n) : ℚ) / 3⌋

end

end A042965.P17635150091300713670

namespace A042965

/-- `floor(or(1, 4*n)/3)` -/
def P17635150091300713670.Spec : Prop :=
  ∀ n, P17635150091300713670.a n = A042965 (n + 1)

end A042965

/-! ## A042965.P3912885102407329956

`floor(xor(1, 4*n)/3)`
-/

namespace A042965.P3912885102407329956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (4 * n) : ℚ) / 3⌋

end

end A042965.P3912885102407329956

namespace A042965

/-- `floor(xor(1, 4*n)/3)` -/
def P3912885102407329956.Spec : Prop :=
  ∀ n, P3912885102407329956.a n = A042965 (n + 1)

end A042965

/-! ## A042965.P15423813967063187810

`comp[a(n-1)+4]` with `a(0)=2`
-/

namespace A042965.P15423813967063187810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042965.P15423813967063187810

namespace A042965

/-- `comp[a(n-1)+4]` -/
def P15423813967063187810.Spec : Prop :=
  ∀ n, (P15423813967063187810.a n : ℤ) = A042965 (n + 1)

end A042965

/-! ## A042965.P4233582299538469715

`comp[or(2, or(1, n)+1)]`
-/

namespace A042965.P4233582299538469715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.lor 1 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042965.P4233582299538469715

namespace A042965

/-- `comp[or(2, or(1, n)+1)]` -/
def P4233582299538469715.Spec : Prop :=
  ∀ n, (P4233582299538469715.a n : ℤ) = A042965 (n + 1)

end A042965

/-!
# A042966: Primes p such that x^7 = 2 has a solution mod p.

The programs for A042966, there is no canonical definition to state claims against.
-/

/-! ## A042966.P2561488421690911197

`A069188(A216881(n+1))`
-/

namespace A042966.P2561488421690911197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069188 (A216881 (n + 1)).toNat

end

end A042966.P2561488421690911197

/-! ## A042966.P15179899287831683573

`eq[A054251(n), A279061(n)]`
-/

namespace A042966.P15179899287831683573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042966.P15179899287831683573

/-! ## A042966.P4849680720889183284

`A006530(A216881(n+1)*A251391(n+1))`
-/

namespace A042966.P4849680720889183284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A216881 (n + 1) * A251391 (n + 1)).toNat

end

end A042966.P4849680720889183284

/-! ## A042966.P5040253320066954298

`A062379(A002061(n+4))*A216881(n+1)`
-/

namespace A042966.P5040253320066954298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (A002061 (n + 4)).toNat * A216881 (n + 1)

end

end A042966.P5040253320066954298

/-! ## A042966.P13322374361791612033

`A216881(n+1)%A005899(A020338(n+3))`
-/

namespace A042966.P13322374361791612033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216881 (n + 1)) (A005899 (A020338 (n + 3)).toNat)

end

end A042966.P13322374361791612033

/-! ## A042966.P6584600861157175446

`A062379(A348511(2*(n+1)))*A216881(n+1)`
-/

namespace A042966.P6584600861157175446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (A348511 (2 * (n + 1))).toNat * A216881 (n + 1)

end

end A042966.P6584600861157175446

/-! ## A042966.P7893098131733728513

`A216881(n+1)%A365257(n+1)`
-/

namespace A042966.P7893098131733728513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216881 (n + 1)) (A365257 (n + 1))

end

end A042966.P7893098131733728513

/-! ## A042966.P9356245503404965784

`A001511(A100032(n+1))+A216881(n+1)-1`
-/

namespace A042966.P9356245503404965784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A100032 (n + 1)).toNat + (A216881 (n + 1) - 1)

end

end A042966.P9356245503404965784

/-! ## A042966.P12282686428757737446

`A033273(A243896(n+4))*A216881(n+1)`
-/

namespace A042966.P12282686428757737446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A243896 (n + 4)).toNat * A216881 (n + 1)

end

end A042966.P12282686428757737446

/-! ## A042966.P12916894539436227402

`A216881(n+1)+A178225(A270700(3*n))`
-/

namespace A042966.P12916894539436227402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1) + A178225 (A270700 (3 * n)).toNat

end

end A042966.P12916894539436227402

/-!
# A042967: Primes p such that x^7 = 2 has no solution mod p.

The programs for A042967, there is no canonical definition to state claims against.
-/

/-! ## A042967.P5787044086448814932

`p?[7*n+9-A167965(n+1)]`
-/

namespace A042967.P5787044086448814932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 9 : ℤ) - A167965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042967.P5787044086448814932

/-! ## A042967.P12355469300793702229

`A042969(lt[A324381(n+1), A077016(n+1)])`
-/

namespace A042967.P12355469300793702229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A042967.P12355469300793702229

/-! ## A042967.P13295718813166794374

`A042969(lt[A228351(n+2), A077016(n+1)])`
-/

namespace A042967.P13295718813166794374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A042967.P13295718813166794374

/-! ## A042967.P3361458584578633930

`A042969(lt[A138151(2*(n+1)), A077016(n+1)])`
-/

namespace A042967.P3361458584578633930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138151 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A042967.P3361458584578633930

/-!
# A042968: Numbers not divisible by 4.

The programs for A042968, the canonical program `A042968.P6108724829749735077` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042968 has offset 1).

The definition of A042968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042968.P6108724829749735077

`floor((4*n+3)/3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042968

/-- `floor((4*n+3)/3)` -/
def P6108724829749735077.Spec : Prop :=
  ∀ n, P6108724829749735077.a n = A042968 (n + 1)

theorem P6108724829749735077.correct : P6108724829749735077.Spec := by
  intro n
  simp only [A042968, Nat.add_sub_cancel]

end A042968

/-! ## A042968.P11528345252952969832

`ogf((1+x+x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A042968.P11528345252952969832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -1, 0, -1, 1] n

end

end A042968.P11528345252952969832

namespace A042968

/-- `ogf((1+x+x^2+x^3)/(1-x-x^3+x^4))` -/
def P11528345252952969832.Spec : Prop :=
  ∀ n, P11528345252952969832.a n = A042968 (n + 1)

end A042968

/-! ## A042968.P17297675213029477020

`(12*n+6+3*cos(2*n*π/3)+sqrt(3)*sin(2*n*π/3))/9`
-/

namespace A042968.P17297675213029477020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((12 * n + 6 : ℝ) + 3 * Real.cos ((2 * n : ℝ) * Real.pi / 3) + Real.sqrt (3 : ℝ) * Real.sin ((2 * n : ℝ) * Real.pi / 3)) / 9

end

end A042968.P17297675213029477020

namespace A042968

/-- `(12*n+6+3*cos(2*n*π/3)+sqrt(3)*sin(2*n*π/3))/9` -/
def P17297675213029477020.Spec : Prop :=
  ∀ n, P17297675213029477020.a n = (A042968 (n + 1) : ℝ)

end A042968

/-! ## A042968.P16509822611008407053

`comp[lcm(4, n)]`
-/

namespace A042968.P16509822611008407053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A042968.P16509822611008407053

namespace A042968

/-- `comp[lcm(4, n)]` -/
def P16509822611008407053.Spec : Prop :=
  ∀ n, (P16509822611008407053.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P2642538363968984881

`comp[and(n, -4)]`
-/

namespace A042968.P2642538363968984881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A042968.P2642538363968984881

namespace A042968

/-- `comp[and(n, -4)]` -/
def P2642538363968984881.Spec : Prop :=
  ∀ n, (P2642538363968984881.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P2353079854789618562

`comp[or(3, n)]+1`
-/

namespace A042968.P2353079854789618562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A042968.P2353079854789618562

namespace A042968

/-- `comp[or(3, n)]+1` -/
def P2353079854789618562.Spec : Prop :=
  ∀ n, (P2353079854789618562.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P7709778685180913401

`lt[val(n+4, 2), 2]`
-/

namespace A042968.P7709778685180913401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 4) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042968.P7709778685180913401

namespace A042968

/-- `lt[val(n+4, 2), 2]` -/
def P7709778685180913401.Spec : Prop :=
  ∀ n, (P7709778685180913401.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P5800220362089265469

`lt[0, n*n%4]`
-/

namespace A042968.P5800220362089265469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042968.P5800220362089265469

namespace A042968

/-- `lt[0, n*n%4]` -/
def P5800220362089265469.Spec : Prop :=
  ∀ n, (P5800220362089265469.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P13759990625631171203

`lt[0, n*and(3, n)]`
-/

namespace A042968.P13759990625631171203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042968.P13759990625631171203

namespace A042968

/-- `lt[0, n*and(3, n)]` -/
def P13759990625631171203.Spec : Prop :=
  ∀ n, (P13759990625631171203.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P16684717603434331351

`lt[xor(3, n), n+2]`
-/

namespace A042968.P16684717603434331351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042968.P16684717603434331351

namespace A042968

/-- `lt[xor(3, n), n+2]` -/
def P16684717603434331351.Spec : Prop :=
  ∀ n, (P16684717603434331351.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P6193066745737120416

`lt[xor(3, n)-2, n]`
-/

namespace A042968.P6193066745737120416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A042968.P6193066745737120416

namespace A042968

/-- `lt[xor(3, n)-2, n]` -/
def P6193066745737120416.Spec : Prop :=
  ∀ n, (P6193066745737120416.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P6044655495104065633

`ceil(4/(3*acot(n)))`
-/

namespace A042968.P6044655495104065633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 / (3 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A042968.P6044655495104065633

namespace A042968

/-- `ceil(4/(3*acot(n)))` -/
def P6044655495104065633.Spec : Prop :=
  ∀ n, P6044655495104065633.a n = A042968 (n + 1)

end A042968

/-! ## A042968.P10897943690557091040

`lt[n, and(3, n)+n]`
-/

namespace A042968.P10897943690557091040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042968.P10897943690557091040

namespace A042968

/-- `lt[n, and(3, n)+n]` -/
def P10897943690557091040.Spec : Prop :=
  ∀ n, (P10897943690557091040.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P13000078466599808917

`ceil(or(1, 4*n)/3)`
-/

namespace A042968.P13000078466599808917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (4 * n) : ℚ) / 3⌉

end

end A042968.P13000078466599808917

namespace A042968

/-- `ceil(or(1, 4*n)/3)` -/
def P13000078466599808917.Spec : Prop :=
  ∀ n, P13000078466599808917.a n = A042968 (n + 1)

end A042968

/-! ## A042968.P18275025989985014623

`ceil(xor(1, 4*n)/3)`
-/

namespace A042968.P18275025989985014623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (4 * n) : ℚ) / 3⌉

end

end A042968.P18275025989985014623

namespace A042968

/-- `ceil(xor(1, 4*n)/3)` -/
def P18275025989985014623.Spec : Prop :=
  ∀ n, P18275025989985014623.a n = A042968 (n + 1)

end A042968

/-! ## A042968.P14943444055981913600

`round(or(2, 4*n)/3)`
-/

namespace A042968.P14943444055981913600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (4 * n) : ℚ) / 3)

end

end A042968.P14943444055981913600

namespace A042968

/-- `round(or(2, 4*n)/3)` -/
def P14943444055981913600.Spec : Prop :=
  ∀ n, P14943444055981913600.a n = A042968 (n + 1)

end A042968

/-! ## A042968.P11568285542323186176

`round(xor(2, 4*n)/3)`
-/

namespace A042968.P11568285542323186176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (4 * n) : ℚ) / 3)

end

end A042968.P11568285542323186176

namespace A042968

/-- `round(xor(2, 4*n)/3)` -/
def P11568285542323186176.Spec : Prop :=
  ∀ n, P11568285542323186176.a n = A042968 (n + 1)

end A042968

/-! ## A042968.P14955317061406966817

`record[xor(3, xor(3, n)-1)]`
-/

namespace A042968.P14955317061406966817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((Nat.xor 3 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042968.P14955317061406966817

namespace A042968

/-- `record[xor(3, xor(3, n)-1)]` -/
def P14955317061406966817.Spec : Prop :=
  ∀ n, P14955317061406966817.a n = A042968 (n + 1)

end A042968

/-! ## A042968.P18052924493320677281

`∑[val(gcd(3, n), 3)]+n`
-/

namespace A042968.P18052924493320677281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.gcd 3 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A042968.P18052924493320677281

namespace A042968

/-- `∑[val(gcd(3, n), 3)]+n` -/
def P18052924493320677281.Spec : Prop :=
  ∀ n, (P18052924493320677281.a n : ℤ) = A042968 (n + 1)

end A042968

/-! ## A042968.P10984953895279486607

`∑[abs((n-1)%3)!]`
-/

namespace A042968.P10984953895279486607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |Int.tmod ((n : ℤ) - 1) 3|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042968.P10984953895279486607

namespace A042968

/-- `∑[abs((n-1)%3)!]` -/
def P10984953895279486607.Spec : Prop :=
  ∀ n, (P10984953895279486607.a n : ℤ) = A042968 (n + 1)

end A042968

/-!
# A042969: Primes p such that x^7 = 3 has no solution mod p.

The programs for A042969, there is no canonical definition to state claims against.
-/

/-! ## A042969.P14921415925115850399

`∑{p}[p?[A016993(A064223(n+1))]², #]`
-/

namespace A042969.P14921415925115850399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A064223 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A042969.P14921415925115850399

/-! ## A042969.P222211016866792653

`p?[A016993(A064223(n+1))]%A181114(n+1)`
-/

namespace A042969.P222211016866792653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A064223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A181114 (n + 1))

end

end A042969.P222211016866792653

/-! ## A042969.P991639160125155471

`A140444(floor(A346161(n+1)/A002057(n+1))+n+1)`
-/

namespace A042969.P991639160125155471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (⌊(A346161 (n + 1) : ℚ) / (A002057 (n + 1) : ℚ)⌋ + (n + 1 : ℤ)).toNat

end

end A042969.P991639160125155471

/-!
# A042970: a(n) = binomial(n, floor(n/2)) mod n.

The programs for A042970, the canonical program `A042970.P13945139466454559487` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042970 has offset 1).

The definition of A042970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, floor((n+1)/2))%(n+1)` (program `A042970.P13945139466454559487`, by `A042970.P13945139466454559487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A042970.P13945139466454559487

`C(n+1, floor((n+1)/2))%(n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042970

/-- `C(n+1, floor((n+1)/2))%(n+1)` -/
def P13945139466454559487.Spec : Prop :=
  ∀ n, (P13945139466454559487.a n : ℤ) = A042970 (n + 1)

theorem P13945139466454559487.correct : P13945139466454559487.Spec := by
  intro n
  simp only [A042970, Nat.add_sub_cancel]

end A042970

/-! ## A042970.P3699232615766419027

`A053214(gcd(xor(1, n²), ∑[n]))`
-/

namespace A042970.P3699232615766419027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A042970.P3699232615766419027

namespace A042970

/-- `A053214(gcd(xor(1, n²), ∑[n]))` -/
def P3699232615766419027.Spec : Prop :=
  ∀ n, P3699232615766419027.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P9633835705189287210

`A053214(A152271(n))`
-/

namespace A042970.P9633835705189287210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (A152271 n).toNat

end

end A042970.P9633835705189287210

namespace A042970

/-- `A053214(A152271(n))` -/
def P9633835705189287210.Spec : Prop :=
  ∀ n, P9633835705189287210.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P9779156411237294544

`and((-1)^n, A053214(A252463(n+1)))`
-/

namespace A042970.P9779156411237294544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A053214 (A252463 (n + 1)).toNat)

end

end A042970.P9779156411237294544

namespace A042970

/-- `and((-1)^n, A053214(A252463(n+1)))` -/
def P9779156411237294544.Spec : Prop :=
  ∀ n, P9779156411237294544.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P16824972175132019130

`A126869(n+1)%(n+1)`
-/

namespace A042970.P16824972175132019130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126869 (n + 1)) (n + 1 : ℤ)

end

end A042970.P16824972175132019130

namespace A042970

/-- `A126869(n+1)%(n+1)` -/
def P16824972175132019130.Spec : Prop :=
  ∀ n, P16824972175132019130.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P5522577867980951436

`A001405(n+1)%(n+1)`
-/

namespace A042970.P5522577867980951436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (n + 1)) (n + 1 : ℤ)

end

end A042970.P5522577867980951436

namespace A042970

/-- `A001405(n+1)%(n+1)` -/
def P5522577867980951436.Spec : Prop :=
  ∀ n, P5522577867980951436.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P11249102678309735273

`A126930(n+1)%(n+1)`
-/

namespace A042970.P11249102678309735273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126930 (n + 1)) (n + 1 : ℤ)

end

end A042970.P11249102678309735273

namespace A042970

/-- `A126930(n+1)%(n+1)` -/
def P11249102678309735273.Spec : Prop :=
  ∀ n, P11249102678309735273.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P17508887880124341019

`A128014(n+2)%(n+1)`
-/

namespace A042970.P17508887880124341019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128014 (n + 2)) (n + 1 : ℤ)

end

end A042970.P17508887880124341019

namespace A042970

/-- `A128014(n+2)%(n+1)` -/
def P17508887880124341019.Spec : Prop :=
  ∀ n, P17508887880124341019.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P11064245035932264497

`A210736(n+2)%(n+1)`
-/

namespace A042970.P11064245035932264497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210736 (n + 2)) (n + 1 : ℤ)

end

end A042970.P11064245035932264497

namespace A042970

/-- `A210736(n+2)%(n+1)` -/
def P11064245035932264497.Spec : Prop :=
  ∀ n, P11064245035932264497.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P15338014958180462029

`(A014495(n+1)+1)%(n+1)`
-/

namespace A042970.P15338014958180462029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014495 (n + 1) + 1) (n + 1 : ℤ)

end

end A042970.P15338014958180462029

namespace A042970

/-- `(A014495(n+1)+1)%(n+1)` -/
def P15338014958180462029.Spec : Prop :=
  ∀ n, P15338014958180462029.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P11985813165057704752

`A000984(A004526(n)+1)%(n+1)`
-/

namespace A042970.P11985813165057704752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (A004526 n + 1).toNat) (n + 1 : ℤ)

end

end A042970.P11985813165057704752

namespace A042970

/-- `A000984(A004526(n)+1)%(n+1)` -/
def P11985813165057704752.Spec : Prop :=
  ∀ n, P11985813165057704752.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P12819367854559575035

`A337499(n+1)%(n+1)`
-/

namespace A042970.P12819367854559575035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337499 (n + 1)) (n + 1 : ℤ)

end

end A042970.P12819367854559575035

namespace A042970

/-- `A337499(n+1)%(n+1)` -/
def P12819367854559575035.Spec : Prop :=
  ∀ n, P12819367854559575035.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P5315782540182636595

`A202069(2*n+1)%(n+1)`
-/

namespace A042970.P5315782540182636595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202069 (2 * n + 1)) (n + 1 : ℤ)

end

end A042970.P5315782540182636595

namespace A042970

/-- `A202069(2*n+1)%(n+1)` -/
def P5315782540182636595.Spec : Prop :=
  ∀ n, P5315782540182636595.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P18134355713817623580

`A056040(n+1)%(n+1)`
-/

namespace A042970.P18134355713817623580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056040 (n + 1)) (n + 1 : ℤ)

end

end A042970.P18134355713817623580

namespace A042970

/-- `A056040(n+1)%(n+1)` -/
def P18134355713817623580.Spec : Prop :=
  ∀ n, P18134355713817623580.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P3671338700581416572

`A189911(n+1)%(n+1)`
-/

namespace A042970.P3671338700581416572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189911 (n + 1)) (n + 1 : ℤ)

end

end A042970.P3671338700581416572

namespace A042970

/-- `A189911(n+1)%(n+1)` -/
def P3671338700581416572.Spec : Prop :=
  ∀ n, P3671338700581416572.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P7008463937169369203

`A242172(n+1)%(n+1)`
-/

namespace A042970.P7008463937169369203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242172 (n + 1)) (n + 1 : ℤ)

end

end A042970.P7008463937169369203

namespace A042970

/-- `A242172(n+1)%(n+1)` -/
def P7008463937169369203.Spec : Prop :=
  ∀ n, P7008463937169369203.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P4716232820090947300

`A100071(n+2)%(n+1)`
-/

namespace A042970.P4716232820090947300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100071 (n + 2)) (n + 1 : ℤ)

end

end A042970.P4716232820090947300

namespace A042970

/-- `A100071(n+2)%(n+1)` -/
def P4716232820090947300.Spec : Prop :=
  ∀ n, P4716232820090947300.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P11494780294930200004

`A152548(n+1)%(n+1)`
-/

namespace A042970.P11494780294930200004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152548 (n + 1)) (n + 1 : ℤ)

end

end A042970.P11494780294930200004

namespace A042970

/-- `A152548(n+1)%(n+1)` -/
def P11494780294930200004.Spec : Prop :=
  ∀ n, P11494780294930200004.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P16311645047282416533

`A107231(n+1)%(n+1)`
-/

namespace A042970.P16311645047282416533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107231 (n + 1)) (n + 1 : ℤ)

end

end A042970.P16311645047282416533

namespace A042970

/-- `A107231(n+1)%(n+1)` -/
def P16311645047282416533.Spec : Prop :=
  ∀ n, P16311645047282416533.a n = A042970 (n + 1)

end A042970

/-! ## A042970.P16594067008701088974

`A107233(n+2)%(n+1)`
-/

namespace A042970.P16594067008701088974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107233 (n + 2)) (n + 1 : ℤ)

end

end A042970.P16594067008701088974

namespace A042970

/-- `A107233(n+2)%(n+1)` -/
def P16594067008701088974.Spec : Prop :=
  ∀ n, P16594067008701088974.a n = A042970 (n + 1)

end A042970

/-!
# A042971: a(n) = (C(2n, n)/2 - (2^(n-1) + ((n+1) mod 2)*C(n-1, n/2-1)))/2.

The programs for A042971, the canonical program `A042971.P10072078429808819715` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042971 has offset 1).

The definition of A042971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042971.P18024041731609640903

`A045723(n+1)-A027306(n+1)`
-/

namespace A042971.P18024041731609640903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045723 (n + 1) - A027306 (n + 1)

end

end A042971.P18024041731609640903

namespace A042971

/-- `A045723(n+1)-A027306(n+1)` -/
def P18024041731609640903.Spec : Prop :=
  ∀ n, P18024041731609640903.a n = A042971 (n + 1)

end A042971

/-! ## A042971.P10072078429808819715

`A005654(n+1)-A116406(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A042971

/-- `A005654(n+1)-A116406(n+1)` -/
def P10072078429808819715.Spec : Prop :=
  ∀ n, P10072078429808819715.a n = A042971 (n + 1)

theorem P10072078429808819715.correct : P10072078429808819715.Spec := by
  intro n
  simp only [A042971, Nat.add_sub_cancel]

end A042971

/-! ## A042971.P2773454343419931097

`A001700(n)-A045723(n+1)`
-/

namespace A042971.P2773454343419931097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A045723 (n + 1)

end

end A042971.P2773454343419931097

namespace A042971

/-- `A001700(n)-A045723(n+1)` -/
def P2773454343419931097.Spec : Prop :=
  ∀ n, P2773454343419931097.a n = A042971 (n + 1)

end A042971

/-! ## A042971.P11767135624003684179

`A088218(n+1)-A045723(n+1)`
-/

namespace A042971.P11767135624003684179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) - A045723 (n + 1)

end

end A042971.P11767135624003684179

namespace A042971

/-- `A088218(n+1)-A045723(n+1)` -/
def P11767135624003684179.Spec : Prop :=
  ∀ n, P11767135624003684179.a n = A042971 (n + 1)

end A042971

/-! ## A042971.P16115112738738904235

`(A108958(n+1)-A138364(n))/2`
-/

namespace A042971.P16115112738738904235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108958 (n + 1) - A138364 n : ℚ) / 2

end

end A042971.P16115112738738904235

namespace A042971

/-- `(A108958(n+1)-A138364(n))/2` -/
def P16115112738738904235.Spec : Prop :=
  ∀ n, P16115112738738904235.a n = (A042971 (n + 1) : ℚ)

end A042971

/-! ## A042971.P11870849995271064535

`A001405(2*n+1)-A045723(n+1)`
-/

namespace A042971.P11870849995271064535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) - A045723 (n + 1)

end

end A042971.P11870849995271064535

namespace A042971

/-- `A001405(2*n+1)-A045723(n+1)` -/
def P11870849995271064535.Spec : Prop :=
  ∀ n, P11870849995271064535.a n = A042971 (n + 1)

end A042971

/-! ## A042971.P4654626292453142150

`(A088218(n+1)-A027306(n+1))/2`
-/

namespace A042971.P4654626292453142150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088218 (n + 1) - A027306 (n + 1) : ℚ) / 2

end

end A042971.P4654626292453142150

namespace A042971

/-- `(A088218(n+1)-A027306(n+1))/2` -/
def P4654626292453142150.Spec : Prop :=
  ∀ n, P4654626292453142150.a n = (A042971 (n + 1) : ℚ)

end A042971

/-! ## A042971.P14613068460658349383

`(A001405(2*n+1)-A027306(n+1))/2`
-/

namespace A042971.P14613068460658349383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n + 1) - A027306 (n + 1) : ℚ) / 2

end

end A042971.P14613068460658349383

namespace A042971

/-- `(A001405(2*n+1)-A027306(n+1))/2` -/
def P14613068460658349383.Spec : Prop :=
  ∀ n, P14613068460658349383.a n = (A042971 (n + 1) : ℚ)

end A042971

/-! ## A042971.P6851785258487166687

`(A037952(2*n+1)-A027306(n+1))/2`
-/

namespace A042971.P6851785258487166687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037952 (2 * n + 1) - A027306 (n + 1) : ℚ) / 2

end

end A042971.P6851785258487166687

namespace A042971

/-- `(A037952(2*n+1)-A027306(n+1))/2` -/
def P6851785258487166687.Spec : Prop :=
  ∀ n, P6851785258487166687.a n = (A042971 (n + 1) : ℚ)

end A042971

/-! ## A042971.P17941111960494377027

`(A014495(2*n+1)-A226881(n+1))/2`
-/

namespace A042971.P17941111960494377027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014495 (2 * n + 1) - A226881 (n + 1) : ℚ) / 2

end

end A042971.P17941111960494377027

namespace A042971

/-- `(A014495(2*n+1)-A226881(n+1))/2` -/
def P17941111960494377027.Spec : Prop :=
  ∀ n, P17941111960494377027.a n = (A042971 (n + 1) : ℚ)

end A042971

/-!
# A042973: Primes p such that x^7 = 5 has no solution mod p.

The programs for A042973, there is no canonical definition to state claims against.
-/

/-! ## A042973.P15154185862980853424

`record[A045465(A064097(n+1)+1+A008683(n+1))]`
-/

namespace A042973.P15154185862980853424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (A064097 (n + 1) + 1 + A008683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042973.P15154185862980853424

/-! ## A042973.P18111916941168004511

`p?[A016993(n)*A131809(n)]`
-/

namespace A042973.P18111916941168004511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n * A131809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042973.P18111916941168004511

/-! ## A042973.P4276868092257981043

`p?[A016993(A014963(n+7)*A289207(n)+3)]`
-/

namespace A042973.P4276868092257981043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A014963 (n + 7) * A289207 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042973.P4276868092257981043

/-! ## A042973.P12375871798517737674

`∩[A000040(A088451(n+1)), A066502(n+1)]`
-/

namespace A042973.P12375871798517737674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A088451 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042973.P12375871798517737674

/-! ## A042973.P6267351230803314534

`∩[A016993(n), A178642(n+1)]`
-/

namespace A042973.P6267351230803314534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042973.P6267351230803314534

/-!
# A042974: n 1's followed by a 2.

The programs for A042974, the canonical program `A042974.P8983967838137525776` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042974 has offset 1).

The definition of A042974 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A042974.P8983967838137525776

`1+A010052(9+8*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042974

/-- `1+A010052(9+8*(n+1))` -/
def P8983967838137525776.Spec : Prop :=
  ∀ n, P8983967838137525776.a n = A042974 (n + 1)

theorem P8983967838137525776.correct : P8983967838137525776.Spec := by
  intro n
  simp only [A042974, Nat.add_sub_cancel]

end A042974

/-! ## A042974.P2523906686163926335

`T(n-1,k-1)!` with `a(0)=1, a(1)=2`
-/

namespace A042974.P2523906686163926335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.factorial (SequenceMachineLib.triUpLeft a n)

end

end A042974.P2523906686163926335

namespace A042974

/-- `T(n-1,k-1)!` -/
def P2523906686163926335.Spec : Prop :=
  ∀ n, (P2523906686163926335.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P12750435521256769272

`T(n-1,k-1)^T(n,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A042974.P12750435521256769272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUpLeft a n ^ SequenceMachineLib.triLeft a n

end

end A042974.P12750435521256769272

namespace A042974

/-- `T(n-1,k-1)^T(n,k-1)` -/
def P12750435521256769272.Spec : Prop :=
  ∀ n, (P12750435521256769272.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P12564058696969434720

`T(n-1,k-1)^T(n-2,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A042974.P12564058696969434720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUpLeft a n ^ SequenceMachineLib.triUp2Left a n

end

end A042974.P12564058696969434720

namespace A042974

/-- `T(n-1,k-1)^T(n-2,k-1)` -/
def P12564058696969434720.Spec : Prop :=
  ∀ n, (P12564058696969434720.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P4706615213363614490

`Δ[comp[∑[n-2]]]`
-/

namespace A042974.P4706615213363614490
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A042974.P4706615213363614490

namespace A042974

/-- `Δ[comp[∑[n-2]]]` -/
def P4706615213363614490.Spec : Prop :=
  ∀ n, P4706615213363614490.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P5845832293984094768

`char[C(n, 2)-2]+1`
-/

namespace A042974.P5845832293984094768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A042974.P5845832293984094768

namespace A042974

/-- `char[C(n, 2)-2]+1` -/
def P5845832293984094768.Spec : Prop :=
  ∀ n, (P5845832293984094768.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P10434303921734163921

`(char[∑[n]-2]+1)!`
-/

namespace A042974.P10434303921734163921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A042974.P10434303921734163921

namespace A042974

/-- `(char[∑[n]-2]+1)!` -/
def P10434303921734163921.Spec : Prop :=
  ∀ n, (P10434303921734163921.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P4842462457799831264

`dr(char[∑[n]-2]+1)`
-/

namespace A042974.P4842462457799831264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ)

end

end A042974.P4842462457799831264

namespace A042974

/-- `dr(char[∑[n]-2]+1)` -/
def P4842462457799831264.Spec : Prop :=
  ∀ n, (P4842462457799831264.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P6811113380889709750

`ceil(ratio[cosh(char[∑[n-1]])])`
-/

namespace A042974.P6811113380889709750
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A042974.P6811113380889709750

namespace A042974

/-- `ceil(ratio[cosh(char[∑[n-1]])])` -/
def P6811113380889709750.Spec : Prop :=
  ∀ n, P6811113380889709750.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P3260363047352041737

`round(ratio[cosh(char[∑[n-1]])])`
-/

namespace A042974.P3260363047352041737
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)

end

end A042974.P3260363047352041737

namespace A042974

/-- `round(ratio[cosh(char[∑[n-1]])])` -/
def P3260363047352041737.Spec : Prop :=
  ∀ n, P3260363047352041737.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P6021033352619680133

`a(n-∑[char[∑[n]]])` with `a(0)=1, a(1)=2`
-/

namespace A042974.P6021033352619680133
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A042974.P6021033352619680133

namespace A042974

/-- `a(n-∑[char[∑[n]]])` -/
def P6021033352619680133.Spec : Prop :=
  ∀ n, (P6021033352619680133.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P4380037041980271150

`(T(n-1,k-1)-1)*T(n,k-1)+1` with `a(0)=1, a(1)=2`
-/

namespace A042974.P4380037041980271150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (SequenceMachineLib.triUpLeft a n - 1) * SequenceMachineLib.triLeft a n + 1

end

end A042974.P4380037041980271150

namespace A042974

/-- `(T(n-1,k-1)-1)*T(n,k-1)+1` -/
def P4380037041980271150.Spec : Prop :=
  ∀ n, P4380037041980271150.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P12022833703098822065

`1-(1-T(n-1,k-1))*T(n,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A042974.P12022833703098822065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (1 - SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triLeft a n

end

end A042974.P12022833703098822065

namespace A042974

/-- `1-(1-T(n-1,k-1))*T(n,k-1)` -/
def P12022833703098822065.Spec : Prop :=
  ∀ n, P12022833703098822065.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P10434731099520838336

`(T(n-1,k-1)-1)*T(n-2,k-1)+1` with `a(0)=1, a(1)=2`
-/

namespace A042974.P10434731099520838336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (SequenceMachineLib.triUpLeft a n - 1) * SequenceMachineLib.triUp2Left a n + 1

end

end A042974.P10434731099520838336

namespace A042974

/-- `(T(n-1,k-1)-1)*T(n-2,k-1)+1` -/
def P10434731099520838336.Spec : Prop :=
  ∀ n, P10434731099520838336.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P2679528772591474896

`1-(1-T(n-1,k-1))*T(n-2,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A042974.P2679528772591474896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (1 - SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triUp2Left a n

end

end A042974.P2679528772591474896

namespace A042974

/-- `1-(1-T(n-1,k-1))*T(n-2,k-1)` -/
def P2679528772591474896.Spec : Prop :=
  ∀ n, P2679528772591474896.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P7698401676358897142

`Δ[row(n)+Δ[row(n)]]+1`
-/

namespace A042974.P7698401676358897142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A042974.P7698401676358897142

namespace A042974

/-- `Δ[row(n)+Δ[row(n)]]+1` -/
def P7698401676358897142.Spec : Prop :=
  ∀ n, P7698401676358897142.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P10373313343114716284

`T(T(n-1,k-1)-1, 1)+1` with `a(0)=1, a(1)=2`
-/

namespace A042974.P10373313343114716284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triAt a (((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) - 1) 1 + 1

end

end A042974.P10373313343114716284

namespace A042974

/-- `T(T(n-1,k-1)-1, 1)+1` -/
def P10373313343114716284.Spec : Prop :=
  ∀ n, (P10373313343114716284.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P5704204247263297022

`T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A042974.P5704204247263297022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n

end

end A042974.P5704204247263297022

namespace A042974

/-- `T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` -/
def P5704204247263297022.Spec : Prop :=
  ∀ n, P5704204247263297022.a n = A042974 (n + 1)

end A042974

/-! ## A042974.P12467985492503267683

`T(1, T(n-1,k-1)+1)+T(n-1,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A042974.P12467985492503267683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpLeft a n + 1 : ℤ) + SequenceMachineLib.triUpLeft a n

end

end A042974.P12467985492503267683

namespace A042974

/-- `T(1, T(n-1,k-1)+1)+T(n-1,k-1)` -/
def P12467985492503267683.Spec : Prop :=
  ∀ n, (P12467985492503267683.a n : ℤ) = A042974 (n + 1)

end A042974

/-! ## A042974.P14661110777560876918

`2/(2-char[C(n, 2)-2])`
-/

namespace A042974.P14661110777560876918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A042974.P14661110777560876918

namespace A042974

/-- `2/(2-char[C(n, 2)-2])` -/
def P14661110777560876918.Spec : Prop :=
  ∀ n, P14661110777560876918.a n = (A042974 (n + 1) : ℚ)

end A042974

/-!
# A042978: Stern primes: primes not of the form p + 2b^2 for p prime and b > 0.

The programs for A042978, there is no canonical definition to state claims against.
-/

/-! ## A042978.P14783769926769144427

`floor(A060003(n+1)+acot(n))`
-/

namespace A042978.P14783769926769144427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060003 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A042978.P14783769926769144427

/-! ## A042978.P14107556800459750709

`p?[(n+1)*A046922(n+1)]`
-/

namespace A042978.P14107556800459750709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042978.P14107556800459750709

/-! ## A042978.P7145582396685019747

`A007918(A060003(n+1))`
-/

namespace A042978.P7145582396685019747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A060003 (n + 1)).toNat

end

end A042978.P7145582396685019747

/-! ## A042978.P3061875753508249560

`A035031(A060003(n+1)+1)`
-/

namespace A042978.P3061875753508249560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A060003 (n + 1) + 1).toNat

end

end A042978.P3061875753508249560

/-!
# A042979: Number of degree-n irreducible polynomials over GF(2) with trace = 0 and subtrace = 1.

The programs for A042979, there is no canonical definition to state claims against.
-/

/-! ## A042979.P7596788733595458261

`A074027(n+1)+A074028(n+1)-A042980(n+1)`
-/

namespace A042979.P7596788733595458261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074027 (n + 1) + (A074028 (n + 1) - A042980 (n + 1))

end

end A042979.P7596788733595458261

/-! ## A042979.P15048132833914711568

`A051841(n+1)-A042980(n+1)`
-/

namespace A042979.P15048132833914711568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051841 (n + 1) - A042980 (n + 1)

end

end A042979.P15048132833914711568

/-! ## A042979.P15473979328187552887

`A000016(n+1)+A115118(n+1)-A066656(n+1)-A042980(n+1)`
-/

namespace A042979.P15473979328187552887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A115118 (n + 1) - A066656 (n + 1)) - A042980 (n + 1)

end

end A042979.P15473979328187552887

/-! ## A042979.P8443722625492546892

`A059966(n+1)-(A056303(n+1)+A042980(n+1))`
-/

namespace A042979.P8443722625492546892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - (A056303 (n + 1) + A042980 (n + 1))

end

end A042979.P8443722625492546892

/-! ## A042979.P8932561877405421515

`A001037(n+1)-A000048(n+1)-A042980(n+1)`
-/

namespace A042979.P8932561877405421515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A000048 (n + 1) - A042980 (n + 1)

end

end A042979.P8932561877405421515

/-! ## A042979.P14815354706948106370

`A001037(n+1)-(A056303(n+1)+A000007(n))-A042980(n+1)`
-/

namespace A042979.P14815354706948106370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - (A056303 (n + 1) + A000007 n) - A042980 (n + 1)

end

end A042979.P14815354706948106370

/-! ## A042979.P17230727722118479927

`A001037(n+1)+A173278(n)-A173278(n+1)-A042980(n+1)`
-/

namespace A042979.P17230727722118479927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A173278 n - A173278 (n + 1)) - A042980 (n + 1)

end

end A042979.P17230727722118479927

/-! ## A042979.P1872654324141855785

`A000031(n+1)-(A066656(n+1)+A000048(n+1))-A042980(n+1)`
-/

namespace A042979.P1872654324141855785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A066656 (n + 1) + A000048 (n + 1)) - A042980 (n + 1)

end

end A042979.P1872654324141855785

/-! ## A042979.P7937486595911544284

`A001037(n+1)+A115118(n+1)-A000013(n+1)-A042980(n+1)`
-/

namespace A042979.P7937486595911544284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A115118 (n + 1) - A000013 (n + 1)) - A042980 (n + 1)

end

end A042979.P7937486595911544284

/-! ## A042979.P5264012621965769347

`A327693(A133263(n))-A042980(n+1)`
-/

namespace A042979.P5264012621965769347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (A133263 n).toNat - A042980 (n + 1)

end

end A042979.P5264012621965769347

/-!
# A042980: Number of degree-n irreducible polynomials over GF(2) with trace = 0 and subtrace = 0.

The programs for A042980, there is no canonical definition to state claims against.
-/

/-! ## A042980.P16023157199007806935

`A074027(n+1)+A074028(n+1)-A042979(n+1)`
-/

namespace A042980.P16023157199007806935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074027 (n + 1) + (A074028 (n + 1) - A042979 (n + 1))

end

end A042980.P16023157199007806935

/-! ## A042980.P10168059159670355419

`A051841(n+1)-A042979(n+1)`
-/

namespace A042980.P10168059159670355419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051841 (n + 1) - A042979 (n + 1)

end

end A042980.P10168059159670355419

/-! ## A042980.P1023529904583290449

`A000016(n+1)+A115118(n+1)-A066656(n+1)-A042979(n+1)`
-/

namespace A042980.P1023529904583290449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A115118 (n + 1) - A066656 (n + 1)) - A042979 (n + 1)

end

end A042980.P1023529904583290449

/-! ## A042980.P9189009540945932875

`A059966(n+1)-(A056303(n+1)+A042979(n+1))`
-/

namespace A042980.P9189009540945932875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - (A056303 (n + 1) + A042979 (n + 1))

end

end A042980.P9189009540945932875

/-! ## A042980.P3369417954274360173

`A001037(n+1)-A000048(n+1)-A042979(n+1)`
-/

namespace A042980.P3369417954274360173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A000048 (n + 1) - A042979 (n + 1)

end

end A042980.P3369417954274360173

/-! ## A042980.P623610450864126255

`A001037(n+1)-(A056303(n+1)+A000007(n))-A042979(n+1)`
-/

namespace A042980.P623610450864126255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - (A056303 (n + 1) + A000007 n) - A042979 (n + 1)

end

end A042980.P623610450864126255

/-! ## A042980.P4869748153142616407

`A001037(n+1)+A173278(n)-A173278(n+1)-A042979(n+1)`
-/

namespace A042980.P4869748153142616407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A173278 n - A173278 (n + 1)) - A042979 (n + 1)

end

end A042980.P4869748153142616407

/-! ## A042980.P14871101947056886477

`A107847(n+1)+A110981(n+1)-A000048(n+1)-A042979(n+1)`
-/

namespace A042980.P14871101947056886477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107847 (n + 1) + (A110981 (n + 1) - A000048 (n + 1)) - A042979 (n + 1)

end

end A042980.P14871101947056886477

/-! ## A042980.P2974799546264345629

`A327693(A133263(n))-A042979(n+1)`
-/

namespace A042980.P2974799546264345629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (A133263 n).toNat - A042979 (n + 1)

end

end A042980.P2974799546264345629

/-!
# A042981: Number of degree-n irreducible polynomials over GF(2) with trace = 1 and subtrace = 0.

The programs for A042981, there is no canonical definition to state claims against.
-/

/-! ## A042981.P8089800003602379150

`A074029(n+1)+A074030(n+1)-A042982(n+1)`
-/

namespace A042981.P8089800003602379150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074029 (n + 1) + (A074030 (n + 1) - A042982 (n + 1))

end

end A042981.P8089800003602379150

/-! ## A042981.P2729483153627928084

`A000048(n+1)-A042982(n+1)`
-/

namespace A042981.P2729483153627928084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) - A042982 (n + 1)

end

end A042981.P2729483153627928084

/-! ## A042981.P4098572761896461509

`A056303(A233583(n+2))-A042982(n+1)`
-/

namespace A042981.P4098572761896461509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (A233583 (n + 2)).toNat - A042982 (n + 1)

end

end A042981.P4098572761896461509

/-! ## A042981.P14548278426442214965

`Δ[A173278(n)]-A042982(n+1)`
-/

namespace A042981.P14548278426442214965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A042982 (n + 1)

end

end A042981.P14548278426442214965

/-! ## A042981.P17171726246695381359

`A053633(A000124(n))-A042982(n+1)`
-/

namespace A042981.P17171726246695381359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A000124 n).toNat - A042982 (n + 1)

end

end A042981.P17171726246695381359

/-! ## A042981.P12691379492819712367

`A053633(A092530(n))-A042982(n+1)`
-/

namespace A042981.P12691379492819712367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A092530 n).toNat - A042982 (n + 1)

end

end A042981.P12691379492819712367

/-! ## A042981.P742091188519255124

`A053633(A000096(n))-A042982(n+1)`
-/

namespace A042981.P742091188519255124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A000096 n).toNat - A042982 (n + 1)

end

end A042981.P742091188519255124

/-! ## A042981.P17326614491239620411

`A053633(A266259(n))-A042982(n+1)`
-/

namespace A042981.P17326614491239620411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A266259 n).toNat - A042982 (n + 1)

end

end A042981.P17326614491239620411

/-!
# A042982: Number of degree-n irreducible polynomials over GF(2) with trace = 1 and subtrace = 1.

The programs for A042982, there is no canonical definition to state claims against.
-/

/-! ## A042982.P12577804386201161085

`A074029(n+1)+A074030(n+1)-A042981(n+1)`
-/

namespace A042982.P12577804386201161085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074029 (n + 1) + (A074030 (n + 1) - A042981 (n + 1))

end

end A042982.P12577804386201161085

/-! ## A042982.P18382806080611951058

`A000048(n+1)-A042981(n+1)`
-/

namespace A042982.P18382806080611951058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) - A042981 (n + 1)

end

end A042982.P18382806080611951058

/-! ## A042982.P12888451772171455250

`A056303(n+1)-A042981(A233583(n+2))`
-/

namespace A042982.P12888451772171455250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (n + 1) - A042981 (A233583 (n + 2)).toNat

end

end A042982.P12888451772171455250

/-! ## A042982.P8155775824001369826

`Δ[A173278(n)]-A042981(n+1)`
-/

namespace A042982.P8155775824001369826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A042981 (n + 1)

end

end A042982.P8155775824001369826

/-! ## A042982.P9180418715493712084

`A053633(∑[n]+1)-A042981(n+1)`
-/

namespace A042982.P9180418715493712084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A042981 (n + 1)

end

end A042982.P9180418715493712084

/-!
# A042984: Number of n-dimensional partitions of 6.

The programs for A042984, the canonical program `A042984.P3537868922700591161` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042984 has offset 0).

The definition of A042984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042984.P9358906362979879368

`ogf((1+5x-3x^2-3x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A042984.P9358906362979879368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -3, -3, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A042984.P9358906362979879368

namespace A042984

/-- `ogf((1+5x-3x^2-3x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P9358906362979879368.Spec : Prop :=
  ∀ n, P9358906362979879368.a n = A042984 n

end A042984

/-! ## A042984.P11444767765987166486

`(n+1)*(n+4)*(n^3+40*n²+61*n+30)/120`
-/

namespace A042984.P11444767765987166486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 4) * (n ^ 3 + 40 * n ^ 2 + 61 * n + 30) : ℚ) / 120

end

end A042984.P11444767765987166486

namespace A042984

/-- `(n+1)*(n+4)*(n^3+40*n²+61*n+30)/120` -/
def P11444767765987166486.Spec : Prop :=
  ∀ n, P11444767765987166486.a n = (A042984 n : ℚ)

theorem P11444767765987166486.correct : P11444767765987166486.Spec := by
  intro n
  simp only [A042984, Nat.add_sub_cancel, A042984.P11444767765987166486.a, A042984.P3537868922700591161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A042984

/-! ## A042984.P3537868922700591161

`1+10*n+27*C(n, 2)+28*C(n, 3)+11*C(n, 4)+C(n, 5)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042984

/-- `1+10*n+27*C(n, 2)+28*C(n, 3)+11*C(n, 4)+C(n, 5)` -/
def P3537868922700591161.Spec : Prop :=
  ∀ n, (P3537868922700591161.a n : ℤ) = A042984 n

theorem P3537868922700591161.correct : P3537868922700591161.Spec := by
  intro n
  simp only [A042984]

end A042984

/-! ## A042984.P13704801340980416106

`A008780(n)-C(n, 4)-C(n, 3)`
-/

namespace A042984.P13704801340980416106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008780 n - (Nat.choose n 4 : ℤ) - (Nat.choose n 3 : ℤ)

end

end A042984.P13704801340980416106

namespace A042984

/-- `A008780(n)-C(n, 4)-C(n, 3)` -/
def P13704801340980416106.Spec : Prop :=
  ∀ n, P13704801340980416106.a n = A042984 n

theorem P13704801340980416106.correct : P13704801340980416106.Spec := by
  intro n
  simp only [A042984, Nat.add_sub_cancel, A042984.P13704801340980416106.a, A042984.P3537868922700591161.a, A008780, A008780.P11539938353065647142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A042984

/-! ## A042984.P13010018279918827863

`A162668(n)+A027928(n+3)`
-/

namespace A042984.P13010018279918827863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n + A027928 (n + 3)

end

end A042984.P13010018279918827863

namespace A042984

/-- `A162668(n)+A027928(n+3)` -/
def P13010018279918827863.Spec : Prop :=
  ∀ n, P13010018279918827863.a n = A042984 n

end A042984

/-! ## A042984.P5546278767810463554

`A117066(n+1)+∑[A000332(n)]`
-/

namespace A042984.P5546278767810463554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042984.P5546278767810463554

namespace A042984

/-- `A117066(n+1)+∑[A000332(n)]` -/
def P5546278767810463554.Spec : Prop :=
  ∀ n, P5546278767810463554.a n = A042984 n

end A042984

/-! ## A042984.P6342575508141645304

`A162668(n)+∑[A027927(n+2)]`
-/

namespace A042984.P6342575508141645304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042984.P6342575508141645304

namespace A042984

/-- `A162668(n)+∑[A027927(n+2)]` -/
def P6342575508141645304.Spec : Prop :=
  ∀ n, P6342575508141645304.a n = A042984 n

end A042984

/-! ## A042984.P9464361900523385442

`A000389(n+1)+A004302(n+1)-A004302(n)`
-/

namespace A042984.P9464361900523385442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) + (A004302 (n + 1) - A004302 n)

end

end A042984.P9464361900523385442

namespace A042984

/-- `A000389(n+1)+A004302(n+1)-A004302(n)` -/
def P9464361900523385442.Spec : Prop :=
  ∀ n, P9464361900523385442.a n = A042984 n

theorem P9464361900523385442.correct : P9464361900523385442.Spec := by
  intro n
  simp only [A042984, Nat.add_sub_cancel, A042984.P9464361900523385442.a, A042984.P3537868922700591161.a, A000389, A000389.P15450220129395289428.a, A004302, A004302.P8108728009530160138.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A042984

/-!
# A042985: Convolution of A000108 (Catalan numbers) with A038846.

The programs for A042985, the canonical program `A042985.P49255986044683829` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042985 has offset 0).

The definition of A042985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042985.P49255986044683829

`A038846(n)+A038846(n)-A045724(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A042985

/-- `A038846(n)+A038846(n)-A045724(n)` -/
def P49255986044683829.Spec : Prop :=
  ∀ n, P49255986044683829.a n = A042985 n

theorem P49255986044683829.correct : P49255986044683829.Spec := by
  intro n
  simp only [A042985]

end A042985

/-! ## A042985.P4859000964745408344

`2*A038846(n)-A045724(n)`
-/

namespace A042985.P4859000964745408344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038846 n - A045724 n

end

end A042985.P4859000964745408344

namespace A042985

/-- `2*A038846(n)-A045724(n)` -/
def P4859000964745408344.Spec : Prop :=
  ∀ n, P4859000964745408344.a n = A042985 n

theorem P4859000964745408344.correct : P4859000964745408344.Spec := by
  intro n
  simp only [A042985, Nat.add_sub_cancel, A042985.P4859000964745408344.a, A042985.P49255986044683829.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A042985

/-! ## A042985.P11631633742156895066

`(A038846(n+1)-A020918(n+1))/2`
-/

namespace A042985.P11631633742156895066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038846 (n + 1) - A020918 (n + 1) : ℚ) / 2

end

end A042985.P11631633742156895066

namespace A042985

/-- `(A038846(n+1)-A020918(n+1))/2` -/
def P11631633742156895066.Spec : Prop :=
  ∀ n, P11631633742156895066.a n = (A042985 n : ℚ)

end A042985

/-! ## A042985.P16629196324824050882

`2*A020920(n)-A045492(n)`
-/

namespace A042985.P16629196324824050882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020920 n - A045492 n

end

end A042985.P16629196324824050882

namespace A042985

/-- `2*A020920(n)-A045492(n)` -/
def P16629196324824050882.Spec : Prop :=
  ∀ n, P16629196324824050882.a n = A042985 n

end A042985

/-! ## A042985.P5985763509642446064

`A046527(eq[4, A002262(n)])`
-/

namespace A042985.P5985763509642446064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A042985.P5985763509642446064

namespace A042985

/-- `A046527(eq[4, A002262(n)])` -/
def P5985763509642446064.Spec : Prop :=
  ∀ n, P5985763509642446064.a n = A042985 n

end A042985

/-! ## A042985.P13384687120293672826

`A046527(A000096(n+3)+5)`
-/

namespace A042985.P13384687120293672826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A000096 (n + 3) + 5).toNat

end

end A042985.P13384687120293672826

namespace A042985

/-- `A046527(A000096(n+3)+5)` -/
def P13384687120293672826.Spec : Prop :=
  ∀ n, P13384687120293672826.a n = A042985 n

end A042985

/-! ## A042985.P15330971253963458748

`A046527(eq[2, A144328(n+1)-2])`
-/

namespace A042985.P15330971253963458748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A042985.P15330971253963458748

namespace A042985

/-- `A046527(eq[2, A144328(n+1)-2])` -/
def P15330971253963458748.Spec : Prop :=
  ∀ n, P15330971253963458748.a n = A042985 n

end A042985

/-! ## A042985.P1133910765971283687

`A046527(eq[2, A144328(n+1)/2])`
-/

namespace A042985.P1133910765971283687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A042985.P1133910765971283687

namespace A042985

/-- `A046527(eq[2, A144328(n+1)/2])` -/
def P1133910765971283687.Spec : Prop :=
  ∀ n, P1133910765971283687.a n = A042985 n

end A042985

/-! ## A042985.P18219305398656402973

`A046527(Δ[A023551(n+1)-n²])`
-/

namespace A042985.P18219305398656402973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (f1 (n + 1) - f1 n).toNat

end

end A042985.P18219305398656402973

namespace A042985

/-- `A046527(Δ[A023551(n+1)-n²])` -/
def P18219305398656402973.Spec : Prop :=
  ∀ n, P18219305398656402973.a n = A042985 n

end A042985

/-! ## A042985.P15275585245475702453

`A046527(Δ[Δ[A006504(n+1)]]-2*(n+1))`
-/

namespace A042985.P15275585245475702453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ)).toNat

end

end A042985.P15275585245475702453

namespace A042985

/-- `A046527(Δ[Δ[A006504(n+1)]]-2*(n+1))` -/
def P15275585245475702453.Spec : Prop :=
  ∀ n, P15275585245475702453.a n = A042985 n

end A042985

/-!
# A042986: Primes congruent to {0, 1, 2, 3} mod 5.

The programs for A042986, the canonical program `A042986.P11013070106792504483` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042986 has offset 1).

The definition of A042986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042986.P94453875543490966

`∪[A002496(n+1), A045321(n+1)]`
-/

namespace A042986.P94453875543490966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P94453875543490966

namespace A042986

/-- `∪[A002496(n+1), A045321(n+1)]` -/
def P94453875543490966.Spec : Prop :=
  ∀ n, (P94453875543490966.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P14316741574274893937

`∪[A002649(n+1), A045321(n+1)]`
-/

namespace A042986.P14316741574274893937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P14316741574274893937

namespace A042986

/-- `∪[A002649(n+1), A045321(n+1)]` -/
def P14316741574274893937.Spec : Prop :=
  ∀ n, (P14316741574274893937.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P11013070106792504483

`∪[A003631(n+1), A045349(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A042986

/-- `∪[A003631(n+1), A045349(n+1)]` -/
def P11013070106792504483.Spec : Prop :=
  ∀ n, (P11013070106792504483.a n : ℤ) = A042986 (n + 1)

theorem P11013070106792504483.correct : P11013070106792504483.Spec := by
  intro n
  simp only [A042986, Nat.add_sub_cancel]

end A042986

/-! ## A042986.P17533582512195232095

`∪[A023241(n+1), A045321(n+1)]`
-/

namespace A042986.P17533582512195232095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P17533582512195232095

namespace A042986

/-- `∪[A023241(n+1), A045321(n+1)]` -/
def P17533582512195232095.Spec : Prop :=
  ∀ n, (P17533582512195232095.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P14310452345934261240

`∪[A045407(n+1), A042993(n+1)]`
-/

namespace A042986.P14310452345934261240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P14310452345934261240

namespace A042986

/-- `∪[A045407(n+1), A042993(n+1)]` -/
def P14310452345934261240.Spec : Prop :=
  ∀ n, (P14310452345934261240.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P8917666790175877153

`∪[A139889(n+1), A045321(n+1)]`
-/

namespace A042986.P8917666790175877153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P8917666790175877153

namespace A042986

/-- `∪[A139889(n+1), A045321(n+1)]` -/
def P8917666790175877153.Spec : Prop :=
  ∀ n, (P8917666790175877153.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P5648991482456683972

`p?[floor(5*n/4)]`
-/

namespace A042986.P5648991482456683972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 4)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042986.P5648991482456683972

namespace A042986

/-- `p?[floor(5*n/4)]` -/
def P5648991482456683972.Spec : Prop :=
  ∀ n, P5648991482456683972.a n = A042986 (n + 1)

end A042986

/-! ## A042986.P12270624947083783181

`filter[A001068(n+1), A010051(#)]`
-/

namespace A042986.P12270624947083783181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042986.P12270624947083783181

namespace A042986

/-- `filter[A001068(n+1), A010051(#)]` -/
def P12270624947083783181.Spec : Prop :=
  ∀ n, P12270624947083783181.a n = A042986 (n + 1)

end A042986

/-! ## A042986.P2872917014706913333

`filter[A272576(n+1), A010051(#)]`
-/

namespace A042986.P2872917014706913333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042986.P2872917014706913333

namespace A042986

/-- `filter[A272576(n+1), A010051(#)]` -/
def P2872917014706913333.Spec : Prop :=
  ∀ n, P2872917014706913333.a n = A042986 (n + 1)

end A042986

/-! ## A042986.P4604078759279011643

`∩[A000040(n+1), A001068(n)]`
-/

namespace A042986.P4604078759279011643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P4604078759279011643

namespace A042986

/-- `∩[A000040(n+1), A001068(n)]` -/
def P4604078759279011643.Spec : Prop :=
  ∀ n, (P4604078759279011643.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P17918990052630685857

`∩[A175787(n+1), A001068(n)]`
-/

namespace A042986.P17918990052630685857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P17918990052630685857

namespace A042986

/-- `∩[A175787(n+1), A001068(n)]` -/
def P17918990052630685857.Spec : Prop :=
  ∀ n, (P17918990052630685857.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P2037762994092692874

`∩[A000040(n+1), A272576(n)]`
-/

namespace A042986.P2037762994092692874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P2037762994092692874

namespace A042986

/-- `∩[A000040(n+1), A272576(n)]` -/
def P2037762994092692874.Spec : Prop :=
  ∀ n, (P2037762994092692874.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P6410648586270786625

`∩[A000040(n+1), A067251(n+1)-1]`
-/

namespace A042986.P6410648586270786625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P6410648586270786625

namespace A042986

/-- `∩[A000040(n+1), A067251(n+1)-1]` -/
def P6410648586270786625.Spec : Prop :=
  ∀ n, (P6410648586270786625.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P6309297216023236357

`record[p?[A291305(n+2)]]`
-/

namespace A042986.P6309297216023236357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291305 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042986.P6309297216023236357

namespace A042986

/-- `record[p?[A291305(n+2)]]` -/
def P6309297216023236357.Spec : Prop :=
  ∀ n, P6309297216023236357.a n = A042986 (n + 1)

end A042986

/-! ## A042986.P6857663794703842613

`record[p?[A004151(n+1)-1]]`
-/

namespace A042986.P6857663794703842613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042986.P6857663794703842613

namespace A042986

/-- `record[p?[A004151(n+1)-1]]` -/
def P6857663794703842613.Spec : Prop :=
  ∀ n, P6857663794703842613.a n = A042986 (n + 1)

end A042986

/-! ## A042986.P15763195153414503669

`record[p?[A060791(n+1)-1]]`
-/

namespace A042986.P15763195153414503669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042986.P15763195153414503669

namespace A042986

/-- `record[p?[A060791(n+1)-1]]` -/
def P15763195153414503669.Spec : Prop :=
  ∀ n, P15763195153414503669.a n = A042986 (n + 1)

end A042986

/-! ## A042986.P4269400358114862537

`filter[A001068(n), A003415(#)]`
-/

namespace A042986.P4269400358114862537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003415 (f1 j).toNat = 1) n)

end

end A042986.P4269400358114862537

namespace A042986

/-- `filter[A001068(n), A003415(#)]` -/
def P4269400358114862537.Spec : Prop :=
  ∀ n, P4269400358114862537.a n = A042986 (n + 1)

end A042986

/-! ## A042986.P2896574824682746416

`eq[A003415(n), A177706(n)]`
-/

namespace A042986.P2896574824682746416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042986.P2896574824682746416

namespace A042986

/-- `eq[A003415(n), A177706(n)]` -/
def P2896574824682746416.Spec : Prop :=
  ∀ n, (P2896574824682746416.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P17612316859815516180

`eq[n, A222260(A007918(n))]`
-/

namespace A042986.P17612316859815516180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222260 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042986.P17612316859815516180

namespace A042986

/-- `eq[n, A222260(A007918(n))]` -/
def P17612316859815516180.Spec : Prop :=
  ∀ n, (P17612316859815516180.a n : ℤ) = A042986 (n + 1)

end A042986

/-! ## A042986.P7159790592274294385

`eq[n, A222260(A051697(n))]`
-/

namespace A042986.P7159790592274294385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222260 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042986.P7159790592274294385

namespace A042986

/-- `eq[n, A222260(A051697(n))]` -/
def P7159790592274294385.Spec : Prop :=
  ∀ n, (P7159790592274294385.a n : ℤ) = A042986 (n + 1)

end A042986

/-!
# A042987: Primes congruent to {2, 3, 5, 7} mod 8.

The programs for A042987, the canonical program `A042987.P8364736035852377732` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042987 has offset 1).

The definition of A042987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042987.P8364736035852377732

`p?[a(n-3)+8]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042987

/-- `p?[a(n-3)+8]` -/
def P8364736035852377732.Spec : Prop :=
  ∀ n, (P8364736035852377732.a n : ℤ) = A042987 (n + 1)

theorem P8364736035852377732.correct : P8364736035852377732.Spec := by
  intro n
  simp only [A042987, Nat.add_sub_cancel]

end A042987

/-! ## A042987.P17090633601218597702

`∪[A014211(n), A045395(n+1)]`
-/

namespace A042987.P17090633601218597702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042987.P17090633601218597702

namespace A042987

/-- `∪[A014211(n), A045395(n+1)]` -/
def P17090633601218597702.Spec : Prop :=
  ∀ n, (P17090633601218597702.a n : ℤ) = A042987 (n + 1)

end A042987

/-! ## A042987.P14252135518796456926

`∪[A045395(n+1), A073609(n)]`
-/

namespace A042987.P14252135518796456926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042987.P14252135518796456926

namespace A042987

/-- `∪[A045395(n+1), A073609(n)]` -/
def P14252135518796456926.Spec : Prop :=
  ∀ n, (P14252135518796456926.a n : ℤ) = A042987 (n + 1)

end A042987

/-! ## A042987.P3926906705257749171

`∪[A045395(n+1), A074497(n)]`
-/

namespace A042987.P3926906705257749171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042987.P3926906705257749171

namespace A042987

/-- `∪[A045395(n+1), A074497(n)]` -/
def P3926906705257749171.Spec : Prop :=
  ∀ n, (P3926906705257749171.a n : ℤ) = A042987 (n + 1)

end A042987

/-! ## A042987.P16403668548646391927

`∪[A045395(n+1), A104081(n)]`
-/

namespace A042987.P16403668548646391927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042987.P16403668548646391927

namespace A042987

/-- `∪[A045395(n+1), A104081(n)]` -/
def P16403668548646391927.Spec : Prop :=
  ∀ n, (P16403668548646391927.a n : ℤ) = A042987 (n + 1)

end A042987

/-! ## A042987.P16264785560566905304

`∪[A042999(n+1), A002145(n+1)]`
-/

namespace A042987.P16264785560566905304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042987.P16264785560566905304

namespace A042987

/-- `∪[A042999(n+1), A002145(n+1)]` -/
def P16264785560566905304.Spec : Prop :=
  ∀ n, (P16264785560566905304.a n : ℤ) = A042987 (n + 1)

end A042987

/-! ## A042987.P15423387133811310307

`∪[A095282(n+1), A003628(n+1)]`
-/

namespace A042987.P15423387133811310307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042987.P15423387133811310307

namespace A042987

/-- `∪[A095282(n+1), A003628(n+1)]` -/
def P15423387133811310307.Spec : Prop :=
  ∀ n, (P15423387133811310307.a n : ℤ) = A042987 (n + 1)

end A042987

/-! ## A042987.P14577355423552486386

`p?[floor(or(1, n+1)/3+n)]`
-/

namespace A042987.P14577355423552486386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 1) : ℚ) / 3 + (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042987.P14577355423552486386

namespace A042987

/-- `p?[floor(or(1, n+1)/3+n)]` -/
def P14577355423552486386.Spec : Prop :=
  ∀ n, P14577355423552486386.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P13369982101602051907

`p?[ceil(8*n/7)]`
-/

namespace A042987.P13369982101602051907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈8 * ((n : ℚ) / 7)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042987.P13369982101602051907

namespace A042987

/-- `p?[ceil(8*n/7)]` -/
def P13369982101602051907.Spec : Prop :=
  ∀ n, P13369982101602051907.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P4087574906377226169

`record[A006530(or(2*n, and(4, n-3)))]`
-/

namespace A042987.P4087574906377226169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor (2 * n : ℤ) (Int.land 4 ((n : ℤ) - 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042987.P4087574906377226169

namespace A042987

/-- `record[A006530(or(2*n, and(4, n-3)))]` -/
def P4087574906377226169.Spec : Prop :=
  ∀ n, P4087574906377226169.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P12602346283199563332

`record[A006530(A343107(n+2))]`
-/

namespace A042987.P12602346283199563332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A343107 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042987.P12602346283199563332

namespace A042987

/-- `record[A006530(A343107(n+2))]` -/
def P12602346283199563332.Spec : Prop :=
  ∀ n, P12602346283199563332.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P13555718487507063306

`filter[A343107(n+1), A010051(#)]`
-/

namespace A042987.P13555718487507063306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042987.P13555718487507063306

namespace A042987

/-- `filter[A343107(n+1), A010051(#)]` -/
def P13555718487507063306.Spec : Prop :=
  ∀ n, P13555718487507063306.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P8163696873747486685

`∩[A000040(n+1), A343107(n+1)]`
-/

namespace A042987.P8163696873747486685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042987.P8163696873747486685

namespace A042987

/-- `∩[A000040(n+1), A343107(n+1)]` -/
def P8163696873747486685.Spec : Prop :=
  ∀ n, (P8163696873747486685.a n : ℤ) = A042987 (n + 1)

end A042987

/-! ## A042987.P14467878338590171629

`filter[A047487(n+1), A010051(#)]`
-/

namespace A042987.P14467878338590171629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042987.P14467878338590171629

namespace A042987

/-- `filter[A047487(n+1), A010051(#)]` -/
def P14467878338590171629.Spec : Prop :=
  ∀ n, P14467878338590171629.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P1599123133332855568

`filter[A047487(n+1), A302777(#)]`
-/

namespace A042987.P1599123133332855568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A042987.P1599123133332855568

namespace A042987

/-- `filter[A047487(n+1), A302777(#)]` -/
def P1599123133332855568.Spec : Prop :=
  ∀ n, P1599123133332855568.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P8728224779105289562

`filter[A047487(n+1), A323152(#)]`
-/

namespace A042987.P8728224779105289562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A042987.P8728224779105289562

namespace A042987

/-- `filter[A047487(n+1), A323152(#)]` -/
def P8728224779105289562.Spec : Prop :=
  ∀ n, P8728224779105289562.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P393978051812773506

`filter[A047487(n+1), A323153(#)]`
-/

namespace A042987.P393978051812773506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A042987.P393978051812773506

namespace A042987

/-- `filter[A047487(n+1), A323153(#)]` -/
def P393978051812773506.Spec : Prop :=
  ∀ n, P393978051812773506.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P938930886374924527

`filter[A047487(n+1), A355937(#)]`
-/

namespace A042987.P938930886374924527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A042987.P938930886374924527

namespace A042987

/-- `filter[A047487(n+1), A355937(#)]` -/
def P938930886374924527.Spec : Prop :=
  ∀ n, P938930886374924527.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P9833782865296620479

`record[A020639(A047411(n+1)+1)]`
-/

namespace A042987.P9833782865296620479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A047411 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042987.P9833782865296620479

namespace A042987

/-- `record[A020639(A047411(n+1)+1)]` -/
def P9833782865296620479.Spec : Prop :=
  ∀ n, P9833782865296620479.a n = A042987 (n + 1)

end A042987

/-! ## A042987.P4698293480464966675

`∩[A000040(n+1), A047487(n+1)]`
-/

namespace A042987.P4698293480464966675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042987.P4698293480464966675

namespace A042987

/-- `∩[A000040(n+1), A047487(n+1)]` -/
def P4698293480464966675.Spec : Prop :=
  ∀ n, (P4698293480464966675.a n : ℤ) = A042987 (n + 1)

end A042987

/-!
# A042988: Primes not congruent to -1 (mod 7).

The programs for A042988, the canonical program `A042988.P9376538551254334237` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042988 has offset 0).

The definition of A042988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042988.P8203548753898328643

`∪[A037028(n), A044042(n+1)]`
-/

namespace A042988.P8203548753898328643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P8203548753898328643

namespace A042988

/-- `∪[A037028(n), A044042(n+1)]` -/
def P8203548753898328643.Spec : Prop :=
  ∀ n, (P8203548753898328643.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P6074097936731461202

`∪[A044042(n+1), A359292(n)]`
-/

namespace A042988.P6074097936731461202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P6074097936731461202

namespace A042988

/-- `∪[A044042(n+1), A359292(n)]` -/
def P6074097936731461202.Spec : Prop :=
  ∀ n, (P6074097936731461202.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P3273758629620539346

`∪[A002407(n+1), A044042(n+1)]`
-/

namespace A042988.P3273758629620539346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P3273758629620539346

namespace A042988

/-- `∪[A002407(n+1), A044042(n+1)]` -/
def P3273758629620539346.Spec : Prop :=
  ∀ n, (P3273758629620539346.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P13414949514544328822

`∪[A020469(n+1), A044042(n+1)]`
-/

namespace A042988.P13414949514544328822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P13414949514544328822

namespace A042988

/-- `∪[A020469(n+1), A044042(n+1)]` -/
def P13414949514544328822.Spec : Prop :=
  ∀ n, (P13414949514544328822.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P9376538551254334237

`∪[A023207(n+1), A044042(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A042988

/-- `∪[A023207(n+1), A044042(n+1)]` -/
def P9376538551254334237.Spec : Prop :=
  ∀ n, (P9376538551254334237.a n : ℤ) = A042988 n

theorem P9376538551254334237.correct : P9376538551254334237.Spec := by
  intro n
  simp only [A042988]

end A042988

/-! ## A042988.P3250317127051061903

`∪[A023300(n+1), A044042(n+1)]`
-/

namespace A042988.P3250317127051061903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P3250317127051061903

namespace A042988

/-- `∪[A023300(n+1), A044042(n+1)]` -/
def P3250317127051061903.Spec : Prop :=
  ∀ n, (P3250317127051061903.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P13106526868940391503

`∪[A033938(n+1), A044042(n+1)]`
-/

namespace A042988.P13106526868940391503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P13106526868940391503

namespace A042988

/-- `∪[A033938(n+1), A044042(n+1)]` -/
def P13106526868940391503.Spec : Prop :=
  ∀ n, (P13106526868940391503.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P205768438650554702

`∪[A033207(n+1), A045313(n+1)]`
-/

namespace A042988.P205768438650554702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P205768438650554702

namespace A042988

/-- `∪[A033207(n+1), A045313(n+1)]` -/
def P205768438650554702.Spec : Prop :=
  ∀ n, (P205768438650554702.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P13991390750937739504

`∪[A045314(n+1), A033207(n+1)]`
-/

namespace A042988.P13991390750937739504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P13991390750937739504

namespace A042988

/-- `∪[A045314(n+1), A033207(n+1)]` -/
def P13991390750937739504.Spec : Prop :=
  ∀ n, (P13991390750937739504.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P2546987371949961952

`∪[A044042(n+1), A045324(n+1)]`
-/

namespace A042988.P2546987371949961952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P2546987371949961952

namespace A042988

/-- `∪[A044042(n+1), A045324(n+1)]` -/
def P2546987371949961952.Spec : Prop :=
  ∀ n, (P2546987371949961952.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P9130162218624840905

`∪[A044042(n+1), A045373(n+1)]`
-/

namespace A042988.P9130162218624840905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P9130162218624840905

namespace A042988

/-- `∪[A044042(n+1), A045373(n+1)]` -/
def P9130162218624840905.Spec : Prop :=
  ∀ n, (P9130162218624840905.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P247053333830706020

`∪[A044042(n+1), A049493(n+1)]`
-/

namespace A042988.P247053333830706020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P247053333830706020

namespace A042988

/-- `∪[A044042(n+1), A049493(n+1)]` -/
def P247053333830706020.Spec : Prop :=
  ∀ n, (P247053333830706020.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P2085174516649401550

`∪[A044042(n+1), A293194(n+1)]`
-/

namespace A042988.P2085174516649401550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042988.P2085174516649401550

namespace A042988

/-- `∪[A044042(n+1), A293194(n+1)]` -/
def P2085174516649401550.Spec : Prop :=
  ∀ n, (P2085174516649401550.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P1111500332395005758

`p?[floor(7*n/6)]`
-/

namespace A042988.P1111500332395005758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 6)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042988.P1111500332395005758

namespace A042988

/-- `p?[floor(7*n/6)]` -/
def P1111500332395005758.Spec : Prop :=
  ∀ n, P1111500332395005758.a n = A042988 n

end A042988

/-! ## A042988.P1648607029188841501

`record[p?[n-gcd(7, n)]]`
-/

namespace A042988.P1648607029188841501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 7 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042988.P1648607029188841501

namespace A042988

/-- `record[p?[n-gcd(7, n)]]` -/
def P1648607029188841501.Spec : Prop :=
  ∀ n, P1648607029188841501.a n = A042988 n

end A042988

/-! ## A042988.P6566159292316979242

`record[p?[n+1-7^val(n+1, 7)]]`
-/

namespace A042988.P6566159292316979242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042988.P6566159292316979242

namespace A042988

/-- `record[p?[n+1-7^val(n+1, 7)]]` -/
def P6566159292316979242.Spec : Prop :=
  ∀ n, P6566159292316979242.a n = A042988 n

end A042988

/-! ## A042988.P16100792470947206445

`record[A006530(lcm(7, n+1)-3+n)]`
-/

namespace A042988.P16100792470947206445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((Nat.lcm 7 (n + 1) : ℤ) - 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042988.P16100792470947206445

namespace A042988

/-- `record[A006530(lcm(7, n+1)-3+n)]` -/
def P16100792470947206445.Spec : Prop :=
  ∀ n, P16100792470947206445.a n = A042988 n

end A042988

/-! ## A042988.P3012040371427503471

`eq[A268354(n+1), A302055(n)]`
-/

namespace A042988.P3012040371427503471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042988.P3012040371427503471

namespace A042988

/-- `eq[A268354(n+1), A302055(n)]` -/
def P3012040371427503471.Spec : Prop :=
  ∀ n, (P3012040371427503471.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P13800027448608023795

`eq[A175126(n), A268354(n+1)]`
-/

namespace A042988.P13800027448608023795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042988.P13800027448608023795

namespace A042988

/-- `eq[A175126(n), A268354(n+1)]` -/
def P13800027448608023795.Spec : Prop :=
  ∀ n, (P13800027448608023795.a n : ℤ) = A042988 n

end A042988

/-! ## A042988.P16950837569068833963

`filter[A047368(n+2), A010051(#)]`
-/

namespace A042988.P16950837569068833963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042988.P16950837569068833963

namespace A042988

/-- `filter[A047368(n+2), A010051(#)]` -/
def P16950837569068833963.Spec : Prop :=
  ∀ n, P16950837569068833963.a n = A042988 n

end A042988

/-!
# A042989: Primes congruent to {0, 2, 3, 4, 5} mod 7.

The programs for A042989, the canonical program `A042989.P12066112418713372453` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042989 has offset 1).

The definition of A042989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042989.P7249984708816973615

`∪[A023249(n+1), A045308(n+1)]`
-/

namespace A042989.P7249984708816973615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P7249984708816973615

namespace A042989

/-- `∪[A023249(n+1), A045308(n+1)]` -/
def P7249984708816973615.Spec : Prop :=
  ∀ n, (P7249984708816973615.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P14659372073733791898

`∪[A023269(n+1), A045308(n+1)]`
-/

namespace A042989.P14659372073733791898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P14659372073733791898

namespace A042989

/-- `∪[A023269(n+1), A045308(n+1)]` -/
def P14659372073733791898.Spec : Prop :=
  ∀ n, (P14659372073733791898.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P9909073925555721376

`∪[A023300(n+1), A045308(n+1)]`
-/

namespace A042989.P9909073925555721376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P9909073925555721376

namespace A042989

/-- `∪[A023300(n+1), A045308(n+1)]` -/
def P9909073925555721376.Spec : Prop :=
  ∀ n, (P9909073925555721376.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P9454411366866227349

`∪[A023344(n+1), A045308(n+1)]`
-/

namespace A042989.P9454411366866227349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P9454411366866227349

namespace A042989

/-- `∪[A023344(n+1), A045308(n+1)]` -/
def P9454411366866227349.Spec : Prop :=
  ∀ n, (P9454411366866227349.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P7325991407205043895

`∪[A027755(n+1), A045308(n+1)]`
-/

namespace A042989.P7325991407205043895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P7325991407205043895

namespace A042989

/-- `∪[A027755(n+1), A045308(n+1)]` -/
def P7325991407205043895.Spec : Prop :=
  ∀ n, (P7325991407205043895.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P12066112418713372453

`∪[A045325(n+1), A042995(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A042989

/-- `∪[A045325(n+1), A042995(n+1)]` -/
def P12066112418713372453.Spec : Prop :=
  ∀ n, (P12066112418713372453.a n : ℤ) = A042989 (n + 1)

theorem P12066112418713372453.correct : P12066112418713372453.Spec := by
  intro n
  simp only [A042989, Nat.add_sub_cancel]

end A042989

/-! ## A042989.P1621975863559489347

`∪[A042995(n+1), A045397(n+1)]`
-/

namespace A042989.P1621975863559489347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P1621975863559489347

namespace A042989

/-- `∪[A042995(n+1), A045397(n+1)]` -/
def P1621975863559489347.Spec : Prop :=
  ∀ n, (P1621975863559489347.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P3235174869469615609

`∪[A042995(n+1), A045421(n+1)]`
-/

namespace A042989.P3235174869469615609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P3235174869469615609

namespace A042989

/-- `∪[A042995(n+1), A045421(n+1)]` -/
def P3235174869469615609.Spec : Prop :=
  ∀ n, (P3235174869469615609.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P14950929089266067194

`∪[A042995(n+1), A045471(n+1)]`
-/

namespace A042989.P14950929089266067194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P14950929089266067194

namespace A042989

/-- `∪[A042995(n+1), A045471(n+1)]` -/
def P14950929089266067194.Spec : Prop :=
  ∀ n, (P14950929089266067194.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P16838103678860853022

`∪[A045325(n+1), A045368(n+1)]`
-/

namespace A042989.P16838103678860853022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P16838103678860853022

namespace A042989

/-- `∪[A045325(n+1), A045368(n+1)]` -/
def P16838103678860853022.Spec : Prop :=
  ∀ n, (P16838103678860853022.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P3934441622538486434

`∪[A045351(n+1), A045437(n+1)]`
-/

namespace A042989.P3934441622538486434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P3934441622538486434

namespace A042989

/-- `∪[A045351(n+1), A045437(n+1)]` -/
def P3934441622538486434.Spec : Prop :=
  ∀ n, (P3934441622538486434.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P11657525264251392897

`p?[a(n-5)+7]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A042989.P11657525264251392897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 5] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042989.P11657525264251392897

namespace A042989

/-- `p?[a(n-5)+7]` -/
def P11657525264251392897.Spec : Prop :=
  ∀ n, (P11657525264251392897.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P6955743956371225014

`p?[n-C(2, (n+1)%14)]`
-/

namespace A042989.P6955743956371225014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 ((n + 1) % 14) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042989.P6955743956371225014

namespace A042989

/-- `p?[n-C(2, (n+1)%14)]` -/
def P6955743956371225014.Spec : Prop :=
  ∀ n, P6955743956371225014.a n = A042989 (n + 1)

end A042989

/-! ## A042989.P12745400710523610303

`p?[(n+1)*gcd(25, n%7)]`
-/

namespace A042989.P12745400710523610303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 25 (n % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042989.P12745400710523610303

namespace A042989

/-- `p?[(n+1)*gcd(25, n%7)]` -/
def P12745400710523610303.Spec : Prop :=
  ∀ n, (P12745400710523610303.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P12085861348635472797

`p?[A047564(n+1)+abs(1-n)]`
-/

namespace A042989.P12085861348635472797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047564 (n + 1) + |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042989.P12085861348635472797

namespace A042989

/-- `p?[A047564(n+1)+abs(1-n)]` -/
def P12085861348635472797.Spec : Prop :=
  ∀ n, P12085861348635472797.a n = A042989 (n + 1)

end A042989

/-! ## A042989.P2382980525816690193

`p?[∪[A047379(n+1)-2, A047379(n+1)]]`
-/

namespace A042989.P2382980525816690193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047379 (n + 1) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047379 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042989.P2382980525816690193

namespace A042989

/-- `p?[∪[A047379(n+1)-2, A047379(n+1)]]` -/
def P2382980525816690193.Spec : Prop :=
  ∀ n, (P2382980525816690193.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P7558043731167532423

`p?[comp[7*n-a(n-1)]]` with `a(0)=1`
-/

namespace A042989.P7558043731167532423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (7 * n : ℤ) - f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042989.P7558043731167532423

namespace A042989

/-- `p?[comp[7*n-a(n-1)]]` -/
def P7558043731167532423.Spec : Prop :=
  ∀ n, (P7558043731167532423.a n : ℤ) = A042989 (n + 1)

end A042989

/-! ## A042989.P5477680695406670363

`p?[A047363(n+1)]`
-/

namespace A042989.P5477680695406670363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042989.P5477680695406670363

namespace A042989

/-- `p?[A047363(n+1)]` -/
def P5477680695406670363.Spec : Prop :=
  ∀ n, P5477680695406670363.a n = A042989 (n + 1)

end A042989

/-! ## A042989.P14195531255849871881

`p?[∑[A077450(n+2)]]`
-/

namespace A042989.P14195531255849871881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077450 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042989.P14195531255849871881

namespace A042989

/-- `p?[∑[A077450(n+2)]]` -/
def P14195531255849871881.Spec : Prop :=
  ∀ n, P14195531255849871881.a n = A042989 (n + 1)

end A042989

/-! ## A042989.P16930574304060543324

`p?[comp[A166522(n+1)]]`
-/

namespace A042989.P16930574304060543324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042989.P16930574304060543324

namespace A042989

/-- `p?[comp[A166522(n+1)]]` -/
def P16930574304060543324.Spec : Prop :=
  ∀ n, (P16930574304060543324.a n : ℤ) = A042989 (n + 1)

end A042989

/-!
# A042990: Primes not congruent to 4 (mod 7).

The programs for A042990, the canonical program `A042990.P10404979310700425933` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042990 has offset 0).

The definition of A042990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042990.P8636316445311728481

`∪[A045311(n+1), A359292(n)]`
-/

namespace A042990.P8636316445311728481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P8636316445311728481

namespace A042990

/-- `∪[A045311(n+1), A359292(n)]` -/
def P8636316445311728481.Spec : Prop :=
  ∀ n, (P8636316445311728481.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P10404979310700425933

`∪[A003625(n+1), A042994(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A042990

/-- `∪[A003625(n+1), A042994(n+1)]` -/
def P10404979310700425933.Spec : Prop :=
  ∀ n, (P10404979310700425933.a n : ℤ) = A042990 n

theorem P10404979310700425933.correct : P10404979310700425933.Spec := by
  intro n
  simp only [A042990]

end A042990

/-! ## A042990.P11739378578513136514

`∪[A002383(n+1), A045311(n+1)]`
-/

namespace A042990.P11739378578513136514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P11739378578513136514

namespace A042990

/-- `∪[A002383(n+1), A045311(n+1)]` -/
def P11739378578513136514.Spec : Prop :=
  ∀ n, (P11739378578513136514.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P15059359746275314964

`∪[A002407(n+1), A045311(n+1)]`
-/

namespace A042990.P15059359746275314964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P15059359746275314964

namespace A042990

/-- `∪[A002407(n+1), A045311(n+1)]` -/
def P15059359746275314964.Spec : Prop :=
  ∀ n, (P15059359746275314964.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P3583788139954113767

`∪[A045376(n+1), A003625(n+1)]`
-/

namespace A042990.P3583788139954113767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P3583788139954113767

namespace A042990

/-- `∪[A045376(n+1), A003625(n+1)]` -/
def P3583788139954113767.Spec : Prop :=
  ∀ n, (P3583788139954113767.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P14540300699959660187

`∪[A005382(n+1), A045311(n+1)]`
-/

namespace A042990.P14540300699959660187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P14540300699959660187

namespace A042990

/-- `∪[A005382(n+1), A045311(n+1)]` -/
def P14540300699959660187.Spec : Prop :=
  ∀ n, (P14540300699959660187.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P12489170359288848276

`∪[A005471(n+1), A045311(n+1)]`
-/

namespace A042990.P12489170359288848276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P12489170359288848276

namespace A042990

/-- `∪[A005471(n+1), A045311(n+1)]` -/
def P12489170359288848276.Spec : Prop :=
  ∀ n, (P12489170359288848276.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P7909170808072719155

`∪[A020465(n+1), A045311(n+1)]`
-/

namespace A042990.P7909170808072719155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P7909170808072719155

namespace A042990

/-- `∪[A020465(n+1), A045311(n+1)]` -/
def P7909170808072719155.Spec : Prop :=
  ∀ n, (P7909170808072719155.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P12177472811361914566

`∪[A022008(n+1), A045311(n+1)]`
-/

namespace A042990.P12177472811361914566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P12177472811361914566

namespace A042990

/-- `∪[A022008(n+1), A045311(n+1)]` -/
def P12177472811361914566.Spec : Prop :=
  ∀ n, (P12177472811361914566.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P16172051673083128736

`∪[A023203(n+1), A045311(n+1)]`
-/

namespace A042990.P16172051673083128736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P16172051673083128736

namespace A042990

/-- `∪[A023203(n+1), A045311(n+1)]` -/
def P16172051673083128736.Spec : Prop :=
  ∀ n, (P16172051673083128736.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P5585066850025314764

`∪[A023344(n+1), A045311(n+1)]`
-/

namespace A042990.P5585066850025314764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P5585066850025314764

namespace A042990

/-- `∪[A023344(n+1), A045311(n+1)]` -/
def P5585066850025314764.Spec : Prop :=
  ∀ n, (P5585066850025314764.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P8441762206574213801

`∪[A153119(n+1), A045311(n+1)]`
-/

namespace A042990.P8441762206574213801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P8441762206574213801

namespace A042990

/-- `∪[A153119(n+1), A045311(n+1)]` -/
def P8441762206574213801.Spec : Prop :=
  ∀ n, (P8441762206574213801.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P10145839797050014326

`p?[n*gcd(7, n+3)]`
-/

namespace A042990.P10145839797050014326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 7 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042990.P10145839797050014326

namespace A042990

/-- `p?[n*gcd(7, n+3)]` -/
def P10145839797050014326.Spec : Prop :=
  ∀ n, (P10145839797050014326.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P8039791252141238237

`p?[gcd(14*n, C(2*n, 2))]`
-/

namespace A042990.P8039791252141238237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (14 * n) (Nat.choose (2 * n) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042990.P8039791252141238237

namespace A042990

/-- `p?[gcd(14*n, C(2*n, 2))]` -/
def P8039791252141238237.Spec : Prop :=
  ∀ n, (P8039791252141238237.a n : ℤ) = A042990 n

end A042990

/-! ## A042990.P15141088790404622944

`p?[abs(3-(char[7*n]+2*n))]`
-/

namespace A042990.P15141088790404622944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (((if ∃ j, f2 j = n then 1 else 0) + 2 * n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042990.P15141088790404622944

namespace A042990

/-- `p?[abs(3-(char[7*n]+2*n))]` -/
def P15141088790404622944.Spec : Prop :=
  ∀ n, P15141088790404622944.a n = A042990 n

end A042990

/-! ## A042990.P16848844885479196105

`record[A006530(A032775(n+3))]`
-/

namespace A042990.P16848844885479196105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032775 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042990.P16848844885479196105

namespace A042990

/-- `record[A006530(A032775(n+3))]` -/
def P16848844885479196105.Spec : Prop :=
  ∀ n, P16848844885479196105.a n = A042990 n

end A042990

/-! ## A042990.P9694115131022548251

`filter[A032775(n+2), A010051(#)]`
-/

namespace A042990.P9694115131022548251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032775 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042990.P9694115131022548251

namespace A042990

/-- `filter[A032775(n+2), A010051(#)]` -/
def P9694115131022548251.Spec : Prop :=
  ∀ n, P9694115131022548251.a n = A042990 n

end A042990

/-! ## A042990.P1185984202458057600

`record[A006530(A047310(n+1)+2)]`
-/

namespace A042990.P1185984202458057600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047310 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042990.P1185984202458057600

namespace A042990

/-- `record[A006530(A047310(n+1)+2)]` -/
def P1185984202458057600.Spec : Prop :=
  ∀ n, P1185984202458057600.a n = A042990 n

end A042990

/-! ## A042990.P5438972330454536159

`record[A006530(A047318(n+2)+1)]`
-/

namespace A042990.P5438972330454536159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047318 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042990.P5438972330454536159

namespace A042990

/-- `record[A006530(A047318(n+2)+1)]` -/
def P5438972330454536159.Spec : Prop :=
  ∀ n, P5438972330454536159.a n = A042990 n

end A042990

/-! ## A042990.P3110645782087371469

`∩[A000040(n+1), A032775(n+1)]`
-/

namespace A042990.P3110645782087371469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042990.P3110645782087371469

namespace A042990

/-- `∩[A000040(n+1), A032775(n+1)]` -/
def P3110645782087371469.Spec : Prop :=
  ∀ n, (P3110645782087371469.a n : ℤ) = A042990 n

end A042990

/-!
# A042991: Primes congruent to {0, 2, 3, 4} (mod 5).

The programs for A042991, the canonical program `A042991.P15411358122579330879` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042991 has offset 1).

The definition of A042991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8806 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042991.P1757839066011747529

`∪[A038833(n), A045327(n+1)]`
-/

namespace A042991.P1757839066011747529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042991.P1757839066011747529

namespace A042991

/-- `∪[A038833(n), A045327(n+1)]` -/
def P1757839066011747529.Spec : Prop :=
  ∀ n, (P1757839066011747529.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P2477270309987418205

`∪[A045327(n+1), A057999(n)]`
-/

namespace A042991.P2477270309987418205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042991.P2477270309987418205

namespace A042991

/-- `∪[A045327(n+1), A057999(n)]` -/
def P2477270309987418205.Spec : Prop :=
  ∀ n, (P2477270309987418205.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P12419224322020715414

`∪[A023275(n+1), A045327(n+1)]`
-/

namespace A042991.P12419224322020715414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042991.P12419224322020715414

namespace A042991

/-- `∪[A023275(n+1), A045327(n+1)]` -/
def P12419224322020715414.Spec : Prop :=
  ∀ n, (P12419224322020715414.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P1620785580088497190

`∪[A139889(n+1), A045327(n+1)]`
-/

namespace A042991.P1620785580088497190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042991.P1620785580088497190

namespace A042991

/-- `∪[A139889(n+1), A045327(n+1)]` -/
def P1620785580088497190.Spec : Prop :=
  ∀ n, (P1620785580088497190.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P15411358122579330879

`p?[ceil(5*n/4)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042991

/-- `p?[ceil(5*n/4)]` -/
def P15411358122579330879.Spec : Prop :=
  ∀ n, P15411358122579330879.a n = A042991 (n + 1)

theorem P15411358122579330879.correct : P15411358122579330879.Spec := by
  intro n
  simp only [A042991, Nat.add_sub_cancel]

end A042991

/-! ## A042991.P3472367576546830760

`record[lcm(5, A000010(n+1))/5]+1`
-/

namespace A042991.P3472367576546830760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A000010 (n + 1)) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A042991.P3472367576546830760

namespace A042991

/-- `record[lcm(5, A000010(n+1))/5]+1` -/
def P3472367576546830760.Spec : Prop :=
  ∀ n, P3472367576546830760.a n = (A042991 (n + 1) : ℚ)

end A042991

/-! ## A042991.P5714147713923844942

`p?[a(n-4)+5]%p?[p?[2*n+1]-6]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A042991.P5714147713923844942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A042991.P5714147713923844942

namespace A042991

/-- `p?[a(n-4)+5]%p?[p?[2*n+1]-6]` -/
def P5714147713923844942.Spec : Prop :=
  ∀ n, P5714147713923844942.a n = A042991 (n + 1)

end A042991

/-! ## A042991.P7743248495769596189

`record[A006530(A109046(n)+2-n)]`
-/

namespace A042991.P7743248495769596189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A109046 n + (2 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042991.P7743248495769596189

namespace A042991

/-- `record[A006530(A109046(n)+2-n)]` -/
def P7743248495769596189.Spec : Prop :=
  ∀ n, P7743248495769596189.a n = A042991 (n + 1)

end A042991

/-! ## A042991.P9893176092136236912

`eq[A011558(n), A074206(n+1)]+1`
-/

namespace A042991.P9893176092136236912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A042991.P9893176092136236912

namespace A042991

/-- `eq[A011558(n), A074206(n+1)]+1` -/
def P9893176092136236912.Spec : Prop :=
  ∀ n, (P9893176092136236912.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P10507838440153459311

`eq[A011558(n), A107286(n+1)]+1`
-/

namespace A042991.P10507838440153459311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A042991.P10507838440153459311

namespace A042991

/-- `eq[A011558(n), A107286(n+1)]+1` -/
def P10507838440153459311.Spec : Prop :=
  ∀ n, (P10507838440153459311.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P11781252467048122418

`record[A020639(A005408(n)+char[5*n])-1]+1`
-/

namespace A042991.P11781252467048122418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005408 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A042991.P11781252467048122418

namespace A042991

/-- `record[A020639(A005408(n)+char[5*n])-1]+1` -/
def P11781252467048122418.Spec : Prop :=
  ∀ n, P11781252467048122418.a n = A042991 (n + 1)

end A042991

/-! ## A042991.P16477017507234923541

`filter[A187332(n+1), A010051(#)]`
-/

namespace A042991.P16477017507234923541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042991.P16477017507234923541

namespace A042991

/-- `filter[A187332(n+1), A010051(#)]` -/
def P16477017507234923541.Spec : Prop :=
  ∀ n, P16477017507234923541.a n = A042991 (n + 1)

end A042991

/-! ## A042991.P12594510097174247838

`record[A006530(A063199(n+1)+1)]`
-/

namespace A042991.P12594510097174247838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063199 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042991.P12594510097174247838

namespace A042991

/-- `record[A006530(A063199(n+1)+1)]` -/
def P12594510097174247838.Spec : Prop :=
  ∀ n, P12594510097174247838.a n = A042991 (n + 1)

end A042991

/-! ## A042991.P5945200605448182171

`∩[A000040(n+1), A187332(n+1)]`
-/

namespace A042991.P5945200605448182171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042991.P5945200605448182171

namespace A042991

/-- `∩[A000040(n+1), A187332(n+1)]` -/
def P5945200605448182171.Spec : Prop :=
  ∀ n, (P5945200605448182171.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P9269745210970662006

`∩[A046022(n+1), A187332(n+1)]`
-/

namespace A042991.P9269745210970662006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042991.P9269745210970662006

namespace A042991

/-- `∩[A046022(n+1), A187332(n+1)]` -/
def P9269745210970662006.Spec : Prop :=
  ∀ n, (P9269745210970662006.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P9602372013065458573

`filter[A047203(n+2), A010051(#)]`
-/

namespace A042991.P9602372013065458573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042991.P9602372013065458573

namespace A042991

/-- `filter[A047203(n+2), A010051(#)]` -/
def P9602372013065458573.Spec : Prop :=
  ∀ n, P9602372013065458573.a n = A042991 (n + 1)

end A042991

/-! ## A042991.P18007782214235611484

`∩[A000040(n+1), A047203(n+1)]`
-/

namespace A042991.P18007782214235611484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042991.P18007782214235611484

namespace A042991

/-- `∩[A000040(n+1), A047203(n+1)]` -/
def P18007782214235611484.Spec : Prop :=
  ∀ n, (P18007782214235611484.a n : ℤ) = A042991 (n + 1)

end A042991

/-! ## A042991.P4037305631374382726

`∩[A008578(n+1), A047203(n+1)]`
-/

namespace A042991.P4037305631374382726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042991.P4037305631374382726

namespace A042991

/-- `∩[A008578(n+1), A047203(n+1)]` -/
def P4037305631374382726.Spec : Prop :=
  ∀ n, (P4037305631374382726.a n : ℤ) = A042991 (n + 1)

end A042991

/-!
# A042992: Primes congruent to {0, 2, 3, 5, 6} (mod 7).

The programs for A042992, the canonical program `A042992.P10370959306577035103` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042992 has offset 1).

The definition of A042992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042992.P11971836847737960924

`∪[A003625(n+1), A042995(n+1)]`
-/

namespace A042992.P11971836847737960924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P11971836847737960924

namespace A042992

/-- `∪[A003625(n+1), A042995(n+1)]` -/
def P11971836847737960924.Spec : Prop :=
  ∀ n, (P11971836847737960924.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P8548008842745604444

`∪[A003625(n+1), A045329(n+1)]`
-/

namespace A042992.P8548008842745604444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P8548008842745604444

namespace A042992

/-- `∪[A003625(n+1), A045329(n+1)]` -/
def P8548008842745604444.Spec : Prop :=
  ∀ n, (P8548008842745604444.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P8814656216520176769

`∪[A003625(n+1), A045333(n+1)]`
-/

namespace A042992.P8814656216520176769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P8814656216520176769

namespace A042992

/-- `∪[A003625(n+1), A045333(n+1)]` -/
def P8814656216520176769.Spec : Prop :=
  ∀ n, (P8814656216520176769.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P14910550189841292577

`∪[A003625(n+1), A045354(n+1)]`
-/

namespace A042992.P14910550189841292577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P14910550189841292577

namespace A042992

/-- `∪[A003625(n+1), A045354(n+1)]` -/
def P14910550189841292577.Spec : Prop :=
  ∀ n, (P14910550189841292577.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P14684795862437989182

`∪[A003625(n+1), A045359(n+1)]`
-/

namespace A042992.P14684795862437989182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P14684795862437989182

namespace A042992

/-- `∪[A003625(n+1), A045359(n+1)]` -/
def P14684795862437989182.Spec : Prop :=
  ∀ n, (P14684795862437989182.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P13166039545457497283

`∪[A003625(n+1), A045377(n+1)]`
-/

namespace A042992.P13166039545457497283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P13166039545457497283

namespace A042992

/-- `∪[A003625(n+1), A045377(n+1)]` -/
def P13166039545457497283.Spec : Prop :=
  ∀ n, (P13166039545457497283.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P10370959306577035103

`∪[A003625(n+1), A045383(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042992

/-- `∪[A003625(n+1), A045383(n+1)]` -/
def P10370959306577035103.Spec : Prop :=
  ∀ n, (P10370959306577035103.a n : ℤ) = A042992 (n + 1)

theorem P10370959306577035103.correct : P10370959306577035103.Spec := by
  intro n
  simp only [A042992, Nat.add_sub_cancel]

end A042992

/-! ## A042992.P16185775446424994801

`∪[A005471(n+1), A045312(n+1)]`
-/

namespace A042992.P16185775446424994801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P16185775446424994801

namespace A042992

/-- `∪[A005471(n+1), A045312(n+1)]` -/
def P16185775446424994801.Spec : Prop :=
  ∀ n, (P16185775446424994801.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P9162526267262935495

`∪[A022007(n+1), A045312(n+1)]`
-/

namespace A042992.P9162526267262935495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P9162526267262935495

namespace A042992

/-- `∪[A022007(n+1), A045312(n+1)]` -/
def P9162526267262935495.Spec : Prop :=
  ∀ n, (P9162526267262935495.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P1662381464483981154

`∪[A022008(n+1), A045312(n+1)]`
-/

namespace A042992.P1662381464483981154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P1662381464483981154

namespace A042992

/-- `∪[A022008(n+1), A045312(n+1)]` -/
def P1662381464483981154.Spec : Prop :=
  ∀ n, (P1662381464483981154.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P2506897005936748999

`∪[A023300(n+1), A045312(n+1)]`
-/

namespace A042992.P2506897005936748999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P2506897005936748999

namespace A042992

/-- `∪[A023300(n+1), A045312(n+1)]` -/
def P2506897005936748999.Spec : Prop :=
  ∀ n, (P2506897005936748999.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P16539708793573412481

`∪[A028871(n+1), A045312(n+1)]`
-/

namespace A042992.P16539708793573412481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P16539708793573412481

namespace A042992

/-- `∪[A028871(n+1), A045312(n+1)]` -/
def P16539708793573412481.Spec : Prop :=
  ∀ n, (P16539708793573412481.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P16357133682126166448

`∪[A042995(n+1), A045399(n+1)]`
-/

namespace A042992.P16357133682126166448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P16357133682126166448

namespace A042992

/-- `∪[A042995(n+1), A045399(n+1)]` -/
def P16357133682126166448.Spec : Prop :=
  ∀ n, (P16357133682126166448.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P9089940812800040965

`∪[A042995(n+1), A045455(n+1)]`
-/

namespace A042992.P9089940812800040965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P9089940812800040965

namespace A042992

/-- `∪[A042995(n+1), A045455(n+1)]` -/
def P9089940812800040965.Spec : Prop :=
  ∀ n, (P9089940812800040965.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P6807131935740731300

`∪[A045447(n+1), A045312(n+1)]`
-/

namespace A042992.P6807131935740731300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P6807131935740731300

namespace A042992

/-- `∪[A045447(n+1), A045312(n+1)]` -/
def P6807131935740731300.Spec : Prop :=
  ∀ n, (P6807131935740731300.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P5644636373135495404

`∪[A107140(n+1), A045312(n+1)]`
-/

namespace A042992.P5644636373135495404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P5644636373135495404

namespace A042992

/-- `∪[A107140(n+1), A045312(n+1)]` -/
def P5644636373135495404.Spec : Prop :=
  ∀ n, (P5644636373135495404.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P18441682420076744645

`p?[ceil(7*n/5)]`
-/

namespace A042992.P18441682420076744645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((n : ℚ) / 5)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042992.P18441682420076744645

namespace A042992

/-- `p?[ceil(7*n/5)]` -/
def P18441682420076744645.Spec : Prop :=
  ∀ n, P18441682420076744645.a n = A042992 (n + 1)

end A042992

/-! ## A042992.P14867684023974978729

`record[∑{p}[A047331(n+1), #]]`
-/

namespace A042992.P14867684023974978729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047331 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042992.P14867684023974978729

namespace A042992

/-- `record[∑{p}[A047331(n+1), #]]` -/
def P14867684023974978729.Spec : Prop :=
  ∀ n, (P14867684023974978729.a n : ℤ) = A042992 (n + 1)

end A042992

/-! ## A042992.P2236742031255860223

`record[A006530(A047332(n+2))]`
-/

namespace A042992.P2236742031255860223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047332 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042992.P2236742031255860223

namespace A042992

/-- `record[A006530(A047332(n+2))]` -/
def P2236742031255860223.Spec : Prop :=
  ∀ n, P2236742031255860223.a n = A042992 (n + 1)

end A042992

/-! ## A042992.P3350938637434861184

`filter[A047332(n+2), A010051(#)]`
-/

namespace A042992.P3350938637434861184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047332 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042992.P3350938637434861184

namespace A042992

/-- `filter[A047332(n+2), A010051(#)]` -/
def P3350938637434861184.Spec : Prop :=
  ∀ n, P3350938637434861184.a n = A042992 (n + 1)

end A042992

/-!
# A042993: Primes congruent to {0, 2, 3} mod 5.

The programs for A042993, the canonical program `A042993.P8504211087919636782` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042993 has offset 1).

The definition of A042993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042993.P7574551873469291536

`∪[A020467(n+1), A003631(n+1)]`
-/

namespace A042993.P7574551873469291536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P7574551873469291536

namespace A042993

/-- `∪[A020467(n+1), A003631(n+1)]` -/
def P7574551873469291536.Spec : Prop :=
  ∀ n, (P7574551873469291536.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P8504211087919636782

`p?[2*n+1-(n-1)%5]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042993

/-- `p?[2*n+1-(n-1)%5]` -/
def P8504211087919636782.Spec : Prop :=
  ∀ n, P8504211087919636782.a n = A042993 (n + 1)

theorem P8504211087919636782.correct : P8504211087919636782.Spec := by
  intro n
  simp only [A042993, Nat.add_sub_cancel]

end A042993

/-! ## A042993.P2986196200266564611

`p?[A140971(n+1)]`
-/

namespace A042993.P2986196200266564611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042993.P2986196200266564611

namespace A042993

/-- `p?[A140971(n+1)]` -/
def P2986196200266564611.Spec : Prop :=
  ∀ n, P2986196200266564611.a n = A042993 (n + 1)

end A042993

/-! ## A042993.P6971952518387643962

`p?[round(5*n/3)]`
-/

namespace A042993.P6971952518387643962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042993.P6971952518387643962

namespace A042993

/-- `p?[round(5*n/3)]` -/
def P6971952518387643962.Spec : Prop :=
  ∀ n, P6971952518387643962.a n = A042993 (n + 1)

end A042993

/-! ## A042993.P13633431398818399859

`∩[A042986(n+1), A042991(n+1)]`
-/

namespace A042993.P13633431398818399859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P13633431398818399859

namespace A042993

/-- `∩[A042986(n+1), A042991(n+1)]` -/
def P13633431398818399859.Spec : Prop :=
  ∀ n, (P13633431398818399859.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P3650391946521940619

`∩[A040179(n+1), A140971(n+1)]`
-/

namespace A042993.P3650391946521940619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P3650391946521940619

namespace A042993

/-- `∩[A040179(n+1), A140971(n+1)]` -/
def P3650391946521940619.Spec : Prop :=
  ∀ n, (P3650391946521940619.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P18071487334255250817

`∩[A040986(n+1), A140971(n+1)]`
-/

namespace A042993.P18071487334255250817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P18071487334255250817

namespace A042993

/-- `∩[A040986(n+1), A140971(n+1)]` -/
def P18071487334255250817.Spec : Prop :=
  ∀ n, (P18071487334255250817.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P17756460645246757928

`∩[A040990(n+1), A140971(n+1)]`
-/

namespace A042993.P17756460645246757928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P17756460645246757928

namespace A042993

/-- `∩[A040990(n+1), A140971(n+1)]` -/
def P17756460645246757928.Spec : Prop :=
  ∀ n, (P17756460645246757928.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P5009522960649916013

`∩[A040970(n+1), A140971(n+1)]`
-/

namespace A042993.P5009522960649916013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P5009522960649916013

namespace A042993

/-- `∩[A040970(n+1), A140971(n+1)]` -/
def P5009522960649916013.Spec : Prop :=
  ∀ n, (P5009522960649916013.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P16665477000757152266

`∩[A040972(n+1), A140971(n+1)]`
-/

namespace A042993.P16665477000757152266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P16665477000757152266

namespace A042993

/-- `∩[A040972(n+1), A140971(n+1)]` -/
def P16665477000757152266.Spec : Prop :=
  ∀ n, (P16665477000757152266.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P12387120047733884011

`∩[A040161(n+1), A140971(n+1)]`
-/

namespace A042993.P12387120047733884011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P12387120047733884011

namespace A042993

/-- `∩[A040161(n+1), A140971(n+1)]` -/
def P12387120047733884011.Spec : Prop :=
  ∀ n, (P12387120047733884011.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P7532194704059655861

`∩[A040169(n+1), A140971(n+1)]`
-/

namespace A042993.P7532194704059655861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P7532194704059655861

namespace A042993

/-- `∩[A040169(n+1), A140971(n+1)]` -/
def P7532194704059655861.Spec : Prop :=
  ∀ n, (P7532194704059655861.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P16220956622216585722

`∩[A040159(n+1), A140971(n+1)]`
-/

namespace A042993.P16220956622216585722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P16220956622216585722

namespace A042993

/-- `∩[A040159(n+1), A140971(n+1)]` -/
def P16220956622216585722.Spec : Prop :=
  ∀ n, (P16220956622216585722.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P13214767659848120074

`∩[A040980(n+1), A140971(n+1)]`
-/

namespace A042993.P13214767659848120074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P13214767659848120074

namespace A042993

/-- `∩[A040980(n+1), A140971(n+1)]` -/
def P13214767659848120074.Spec : Prop :=
  ∀ n, (P13214767659848120074.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P17311386104481347232

`∩[A040982(n+1), A140971(n+1)]`
-/

namespace A042993.P17311386104481347232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P17311386104481347232

namespace A042993

/-- `∩[A040982(n+1), A140971(n+1)]` -/
def P17311386104481347232.Spec : Prop :=
  ∀ n, (P17311386104481347232.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P6119013568079935198

`∩[A040171(n+1), A140971(n+1)]`
-/

namespace A042993.P6119013568079935198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P6119013568079935198

namespace A042993

/-- `∩[A040171(n+1), A140971(n+1)]` -/
def P6119013568079935198.Spec : Prop :=
  ∀ n, (P6119013568079935198.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P13992671377047669064

`∩[A040165(n+1), A140971(n+1)]`
-/

namespace A042993.P13992671377047669064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P13992671377047669064

namespace A042993

/-- `∩[A040165(n+1), A140971(n+1)]` -/
def P13992671377047669064.Spec : Prop :=
  ∀ n, (P13992671377047669064.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P4011746397613167589

`∩[A040184(n+1), A140971(n+1)]`
-/

namespace A042993.P4011746397613167589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P4011746397613167589

namespace A042993

/-- `∩[A040184(n+1), A140971(n+1)]` -/
def P4011746397613167589.Spec : Prop :=
  ∀ n, (P4011746397613167589.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P14523922903848485

`∩[A040177(n+1), A140971(n+1)]`
-/

namespace A042993.P14523922903848485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P14523922903848485

namespace A042993

/-- `∩[A040177(n+1), A140971(n+1)]` -/
def P14523922903848485.Spec : Prop :=
  ∀ n, (P14523922903848485.a n : ℤ) = A042993 (n + 1)

end A042993

/-! ## A042993.P4340302448643950901

`∩[A000040(n+1), A140971(n+1)]`
-/

namespace A042993.P4340302448643950901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042993.P4340302448643950901

namespace A042993

/-- `∩[A000040(n+1), A140971(n+1)]` -/
def P4340302448643950901.Spec : Prop :=
  ∀ n, (P4340302448643950901.a n : ℤ) = A042993 (n + 1)

end A042993

/-!
# A042994: Primes congruent to {0, 1, 2, 3, 5} (mod 7).

The programs for A042994, the canonical program `A042994.P13618748023607742261` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042994 has offset 1).

The definition of A042994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042994.P5386572304086448343

`∪[A045313(n+1), A359292(n)]`
-/

namespace A042994.P5386572304086448343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P5386572304086448343

namespace A042994

/-- `∪[A045313(n+1), A359292(n)]` -/
def P5386572304086448343.Spec : Prop :=
  ∀ n, (P5386572304086448343.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P16112821763473268796

`∪[A002407(n+1), A045313(n+1)]`
-/

namespace A042994.P16112821763473268796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P16112821763473268796

namespace A042994

/-- `∪[A002407(n+1), A045313(n+1)]` -/
def P16112821763473268796.Spec : Prop :=
  ∀ n, (P16112821763473268796.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P477722610525043704

`∪[A023300(n+1), A045313(n+1)]`
-/

namespace A042994.P477722610525043704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P477722610525043704

namespace A042994

/-- `∪[A023300(n+1), A045313(n+1)]` -/
def P477722610525043704.Spec : Prop :=
  ∀ n, (P477722610525043704.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P17478303461692318095

`∪[A023316(n+1), A045313(n+1)]`
-/

namespace A042994.P17478303461692318095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P17478303461692318095

namespace A042994

/-- `∪[A023316(n+1), A045313(n+1)]` -/
def P17478303461692318095.Spec : Prop :=
  ∀ n, (P17478303461692318095.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P13577748217602087119

`∪[A023344(n+1), A045313(n+1)]`
-/

namespace A042994.P13577748217602087119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P13577748217602087119

namespace A042994

/-- `∪[A023344(n+1), A045313(n+1)]` -/
def P13577748217602087119.Spec : Prop :=
  ∀ n, (P13577748217602087119.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P13618748023607742261

`∪[A042995(n+1), A045342(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A042994

/-- `∪[A042995(n+1), A045342(n+1)]` -/
def P13618748023607742261.Spec : Prop :=
  ∀ n, (P13618748023607742261.a n : ℤ) = A042994 (n + 1)

theorem P13618748023607742261.correct : P13618748023607742261.Spec := by
  intro n
  simp only [A042994, Nat.add_sub_cancel]

end A042994

/-! ## A042994.P2614896986800731734

`∪[A045381(n+1), A042995(n+1)]`
-/

namespace A042994.P2614896986800731734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P2614896986800731734

namespace A042994

/-- `∪[A045381(n+1), A042995(n+1)]` -/
def P2614896986800731734.Spec : Prop :=
  ∀ n, (P2614896986800731734.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P14581919153023288450

`∪[A042995(n+1), A045400(n+1)]`
-/

namespace A042994.P14581919153023288450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P14581919153023288450

namespace A042994

/-- `∪[A042995(n+1), A045400(n+1)]` -/
def P14581919153023288450.Spec : Prop :=
  ∀ n, (P14581919153023288450.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P17383529665096040166

`∪[A045424(n+1), A042995(n+1)]`
-/

namespace A042994.P17383529665096040166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P17383529665096040166

namespace A042994

/-- `∪[A045424(n+1), A042995(n+1)]` -/
def P17383529665096040166.Spec : Prop :=
  ∀ n, (P17383529665096040166.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P3034646875500063419

`∪[A042995(n+1), A045436(n+1)]`
-/

namespace A042994.P3034646875500063419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P3034646875500063419

namespace A042994

/-- `∪[A042995(n+1), A045436(n+1)]` -/
def P3034646875500063419.Spec : Prop :=
  ∀ n, (P3034646875500063419.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P14722306389631359514

`∪[A045314(n+1), A045332(n+1)]`
-/

namespace A042994.P14722306389631359514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P14722306389631359514

namespace A042994

/-- `∪[A045314(n+1), A045332(n+1)]` -/
def P14722306389631359514.Spec : Prop :=
  ∀ n, (P14722306389631359514.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P1388667716138457391

`∪[A045333(n+1), A045313(n+1)]`
-/

namespace A042994.P1388667716138457391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P1388667716138457391

namespace A042994

/-- `∪[A045333(n+1), A045313(n+1)]` -/
def P1388667716138457391.Spec : Prop :=
  ∀ n, (P1388667716138457391.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P13529679486452131773

`∪[A045313(n+1), A201301(n+1)]`
-/

namespace A042994.P13529679486452131773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P13529679486452131773

namespace A042994

/-- `∪[A045313(n+1), A201301(n+1)]` -/
def P13529679486452131773.Spec : Prop :=
  ∀ n, (P13529679486452131773.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P17107285187949433786

`p?[a(n-5)+7]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A042994.P17107285187949433786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 5] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042994.P17107285187949433786

namespace A042994

/-- `p?[a(n-5)+7]` -/
def P17107285187949433786.Spec : Prop :=
  ∀ n, (P17107285187949433786.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P6892328480670987693

`∩[A042988(n), A042990(n)]`
-/

namespace A042994.P6892328480670987693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P6892328480670987693

namespace A042994

/-- `∩[A042988(n), A042990(n)]` -/
def P6892328480670987693.Spec : Prop :=
  ∀ n, (P6892328480670987693.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P11999444928320300421

`p?[n*gcd(5, (n+1)%7)]`
-/

namespace A042994.P11999444928320300421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 5 ((n + 1) % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042994.P11999444928320300421

namespace A042994

/-- `p?[n*gcd(5, (n+1)%7)]` -/
def P11999444928320300421.Spec : Prop :=
  ∀ n, (P11999444928320300421.a n : ℤ) = A042994 (n + 1)

end A042994

/-! ## A042994.P16762829646762137213

`p?[A047255(A047255(n+1)-n)+n]`
-/

namespace A042994.P16762829646762137213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (A047255 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042994.P16762829646762137213

namespace A042994

/-- `p?[A047255(A047255(n+1)-n)+n]` -/
def P16762829646762137213.Spec : Prop :=
  ∀ n, P16762829646762137213.a n = A042994 (n + 1)

end A042994

/-! ## A042994.P57528777295852373

`p?[A047237(A047237(n+1)-n+1)+n+1]`
-/

namespace A042994.P57528777295852373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (A047237 (n + 1) - (n : ℤ) + 1).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042994.P57528777295852373

namespace A042994

/-- `p?[A047237(A047237(n+1)-n+1)+n+1]` -/
def P57528777295852373.Spec : Prop :=
  ∀ n, P57528777295852373.a n = A042994 (n + 1)

end A042994

/-! ## A042994.P136641548270747234

`p?[A047255(n+1)+A004524(A004524(n))]`
-/

namespace A042994.P136641548270747234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1) + A004524 (A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042994.P136641548270747234

namespace A042994

/-- `p?[A047255(n+1)+A004524(A004524(n))]` -/
def P136641548270747234.Spec : Prop :=
  ∀ n, P136641548270747234.a n = A042994 (n + 1)

end A042994

/-! ## A042994.P2912830401314433893

`p?[5*A002264(A002264(n))+n+1]`
-/

namespace A042994.P2912830401314433893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002264 (A002264 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042994.P2912830401314433893

namespace A042994

/-- `p?[5*A002264(A002264(n))+n+1]` -/
def P2912830401314433893.Spec : Prop :=
  ∀ n, P2912830401314433893.a n = A042994 (n + 1)

end A042994

/-!
# A042995: Primes congruent to {0, 2, 3, 5} (mod 7).

The programs for A042995, the canonical program `A042995.P914611389682524562` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042995 has offset 1).

The definition of A042995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042995.P11325362430742596919

`∪[A023300(n+1), A045314(n+1)]`
-/

namespace A042995.P11325362430742596919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P11325362430742596919

namespace A042995

/-- `∪[A023300(n+1), A045314(n+1)]` -/
def P11325362430742596919.Spec : Prop :=
  ∀ n, (P11325362430742596919.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P100791744957265170

`∪[A023344(n+1), A045314(n+1)]`
-/

namespace A042995.P100791744957265170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P100791744957265170

namespace A042995

/-- `∪[A023344(n+1), A045314(n+1)]` -/
def P100791744957265170.Spec : Prop :=
  ∀ n, (P100791744957265170.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P8726646820154784735

`∪[A045314(n+1), A045333(n+1)]`
-/

namespace A042995.P8726646820154784735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P8726646820154784735

namespace A042995

/-- `∪[A045314(n+1), A045333(n+1)]` -/
def P8726646820154784735.Spec : Prop :=
  ∀ n, (P8726646820154784735.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P12274321231851826555

`∪[A045314(n+1), A045359(n+1)]`
-/

namespace A042995.P12274321231851826555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P12274321231851826555

namespace A042995

/-- `∪[A045314(n+1), A045359(n+1)]` -/
def P12274321231851826555.Spec : Prop :=
  ∀ n, (P12274321231851826555.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P15618482890905909193

`∪[A045333(n+1), A045359(n+1)]`
-/

namespace A042995.P15618482890905909193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P15618482890905909193

namespace A042995

/-- `∪[A045333(n+1), A045359(n+1)]` -/
def P15618482890905909193.Spec : Prop :=
  ∀ n, (P15618482890905909193.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P914611389682524562

`∪[A045314(n+1), A045383(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042995

/-- `∪[A045314(n+1), A045383(n+1)]` -/
def P914611389682524562.Spec : Prop :=
  ∀ n, (P914611389682524562.a n : ℤ) = A042995 (n + 1)

theorem P914611389682524562.correct : P914611389682524562.Spec := by
  intro n
  simp only [A042995, Nat.add_sub_cancel]

end A042995

/-! ## A042995.P18109852907029848113

`∪[A045333(n+1), A045368(n+1)]`
-/

namespace A042995.P18109852907029848113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P18109852907029848113

namespace A042995

/-- `∪[A045333(n+1), A045368(n+1)]` -/
def P18109852907029848113.Spec : Prop :=
  ∀ n, (P18109852907029848113.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P17465510538995628740

`∪[A045314(n+1), A045401(n+1)]`
-/

namespace A042995.P17465510538995628740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P17465510538995628740

namespace A042995

/-- `∪[A045314(n+1), A045401(n+1)]` -/
def P17465510538995628740.Spec : Prop :=
  ∀ n, (P17465510538995628740.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P2378968624773616134

`∪[A045416(n+1), A045333(n+1)]`
-/

namespace A042995.P2378968624773616134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P2378968624773616134

namespace A042995

/-- `∪[A045416(n+1), A045333(n+1)]` -/
def P2378968624773616134.Spec : Prop :=
  ∀ n, (P2378968624773616134.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P2190387365206762581

`∪[A045447(n+1), A045314(n+1)]`
-/

namespace A042995.P2190387365206762581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P2190387365206762581

namespace A042995

/-- `∪[A045447(n+1), A045314(n+1)]` -/
def P2190387365206762581.Spec : Prop :=
  ∀ n, (P2190387365206762581.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P14732054740730698170

`∪[A045458(n+1), A045333(n+1)]`
-/

namespace A042995.P14732054740730698170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P14732054740730698170

namespace A042995

/-- `∪[A045458(n+1), A045333(n+1)]` -/
def P14732054740730698170.Spec : Prop :=
  ∀ n, (P14732054740730698170.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P12710543055686148657

`∪[A045392(n+1), A045401(n+1)]`
-/

namespace A042995.P12710543055686148657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P12710543055686148657

namespace A042995

/-- `∪[A045392(n+1), A045401(n+1)]` -/
def P12710543055686148657.Spec : Prop :=
  ∀ n, (P12710543055686148657.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P6114111618697996208

`p?[2*n+1-(n-1)%7]`
-/

namespace A042995.P6114111618697996208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042995.P6114111618697996208

namespace A042995

/-- `p?[2*n+1-(n-1)%7]` -/
def P6114111618697996208.Spec : Prop :=
  ∀ n, P6114111618697996208.a n = A042995 (n + 1)

end A042995

/-! ## A042995.P11289450067423441889

`p?[2*n-round(n/4)]`
-/

namespace A042995.P11289450067423441889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042995.P11289450067423441889

namespace A042995

/-- `p?[2*n-round(n/4)]` -/
def P11289450067423441889.Spec : Prop :=
  ∀ n, P11289450067423441889.a n = A042995 (n + 1)

end A042995

/-! ## A042995.P17509499416180408057

`∩[A042989(n+1), A042994(n+1)]`
-/

namespace A042995.P17509499416180408057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P17509499416180408057

namespace A042995

/-- `∩[A042989(n+1), A042994(n+1)]` -/
def P17509499416180408057.Spec : Prop :=
  ∀ n, (P17509499416180408057.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P16352155336513873838

`∩[A042989(n+1), A042992(n+1)]`
-/

namespace A042995.P16352155336513873838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P16352155336513873838

namespace A042995

/-- `∩[A042989(n+1), A042992(n+1)]` -/
def P16352155336513873838.Spec : Prop :=
  ∀ n, (P16352155336513873838.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P3226356544290303433

`∩[A042992(n+1), A042994(n+1)]`
-/

namespace A042995.P3226356544290303433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P3226356544290303433

namespace A042995

/-- `∩[A042992(n+1), A042994(n+1)]` -/
def P3226356544290303433.Spec : Prop :=
  ∀ n, (P3226356544290303433.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P4730418919020345401

`∩[A042992(n+1), A042988(n)]`
-/

namespace A042995.P4730418919020345401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P4730418919020345401

namespace A042995

/-- `∩[A042992(n+1), A042988(n)]` -/
def P4730418919020345401.Spec : Prop :=
  ∀ n, (P4730418919020345401.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P12201716762613155607

`∩[A042989(n+1), A042990(n)]`
-/

namespace A042995.P12201716762613155607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P12201716762613155607

namespace A042995

/-- `∩[A042989(n+1), A042990(n)]` -/
def P12201716762613155607.Spec : Prop :=
  ∀ n, (P12201716762613155607.a n : ℤ) = A042995 (n + 1)

end A042995

/-! ## A042995.P11270922480127711577

`record[A008472(or(2, A131452(n))+n)]`
-/

namespace A042995.P11270922480127711577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.lor 2 (A131452 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042995.P11270922480127711577

namespace A042995

/-- `record[A008472(or(2, A131452(n))+n)]` -/
def P11270922480127711577.Spec : Prop :=
  ∀ n, P11270922480127711577.a n = A042995 (n + 1)

end A042995

/-!
# A042996: Numbers k such that binomial(k, floor(k/2)) is divisible by k.

The programs for A042996, the canonical program `A042996.P442946035617412042` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042996 has offset 1).

The definition of A042996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042996.P7277989517289738804

`lt[A042970(n+1), 1]+1`
-/

namespace A042996.P7277989517289738804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A042996.P7277989517289738804

namespace A042996

/-- `lt[A042970(n+1), 1]+1` -/
def P7277989517289738804.Spec : Prop :=
  ∀ n, (P7277989517289738804.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P8079558428965607532

`∪[2*n+1, A067348(n+1)]`
-/

namespace A042996.P8079558428965607532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042996.P8079558428965607532

namespace A042996

/-- `∪[2*n+1, A067348(n+1)]` -/
def P8079558428965607532.Spec : Prop :=
  ∀ n, (P8079558428965607532.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P13008966284779117892

`eq[n, n-A042970(a(n-1)+1)]` with `a(0)=1`
-/

namespace A042996.P13008966284779117892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - A042970 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P13008966284779117892

namespace A042996

/-- `eq[n, n-A042970(a(n-1)+1)]` -/
def P13008966284779117892.Spec : Prop :=
  ∀ n, (P13008966284779117892.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P14251628919229150494

`∪[A067348(n+1), A317439(n+1)]`
-/

namespace A042996.P14251628919229150494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042996.P14251628919229150494

namespace A042996

/-- `∪[A067348(n+1), A317439(n+1)]` -/
def P14251628919229150494.Spec : Prop :=
  ∀ n, (P14251628919229150494.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P15930020649731734916

`eq[A042970(A042970(n+2)+1), A042970(n+1)]+1`
-/

namespace A042996.P15930020649731734916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A042970 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A042996.P15930020649731734916

namespace A042996

/-- `eq[A042970(A042970(n+2)+1), A042970(n+1)]+1` -/
def P15930020649731734916.Spec : Prop :=
  ∀ n, (P15930020649731734916.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P7969705579264387829

`record[n/A049077(a(n-1)+1)]` with `a(0)=1`
-/

namespace A042996.P7969705579264387829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / (A049077 (SequenceMachineLib.roundAway (f1 (n - 1) + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042996.P7969705579264387829

namespace A042996

/-- `record[n/A049077(a(n-1)+1)]` -/
def P7969705579264387829.Spec : Prop :=
  ∀ n, P7969705579264387829.a n = (A042996 (n + 1) : ℚ)

end A042996

/-! ## A042996.P442946035617412042

`record[A057815(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042996

/-- `record[A057815(n+1)]` -/
def P442946035617412042.Spec : Prop :=
  ∀ n, P442946035617412042.a n = A042996 (n + 1)

theorem P442946035617412042.correct : P442946035617412042.Spec := by
  intro n
  simp only [A042996, Nat.add_sub_cancel]

end A042996

/-! ## A042996.P17177057621936166822

`record[gcd(n, A181861(n))]`
-/

namespace A042996.P17177057621936166822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A181861 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042996.P17177057621936166822

namespace A042996

/-- `record[gcd(n, A181861(n))]` -/
def P17177057621936166822.Spec : Prop :=
  ∀ n, (P17177057621936166822.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P9503883894679403737

`eq[1, A049077(n+1)]+1`
-/

namespace A042996.P9503883894679403737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A042996.P9503883894679403737

namespace A042996

/-- `eq[1, A049077(n+1)]+1` -/
def P9503883894679403737.Spec : Prop :=
  ∀ n, (P9503883894679403737.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P7358444731852383920

`lt[A080383(A057428(n)+n), A080383(n)]`
-/

namespace A042996.P7358444731852383920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 (A057428 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A042996.P7358444731852383920

namespace A042996

/-- `lt[A080383(A057428(n)+n), A080383(n)]` -/
def P7358444731852383920.Spec : Prop :=
  ∀ n, (P7358444731852383920.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P15818137575080309988

`record[A046699(n+1)/A049077(A046699(n+1))]`
-/

namespace A042996.P15818137575080309988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046699 (n + 1) : ℚ) / (A049077 (A046699 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042996.P15818137575080309988

namespace A042996

/-- `record[A046699(n+1)/A049077(A046699(n+1))]` -/
def P15818137575080309988.Spec : Prop :=
  ∀ n, P15818137575080309988.a n = (A042996 (n + 1) : ℚ)

end A042996

/-! ## A042996.P4603230414157533553

`eq[2, gcd(2, A007012(n))]`
-/

namespace A042996.P4603230414157533553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007012 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042996.P4603230414157533553

namespace A042996

/-- `eq[2, gcd(2, A007012(n))]` -/
def P4603230414157533553.Spec : Prop :=
  ∀ n, (P4603230414157533553.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P17055744693229170218

`eq[0, A000035(A007012(n))]`
-/

namespace A042996.P17055744693229170218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P17055744693229170218

namespace A042996

/-- `eq[0, A000035(A007012(n))]` -/
def P17055744693229170218.Spec : Prop :=
  ∀ n, (P17055744693229170218.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P7220645354754361744

`eq[1, A010169(A007012(n)+1)]`
-/

namespace A042996.P7220645354754361744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 (A007012 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P7220645354754361744

namespace A042996

/-- `eq[1, A010169(A007012(n)+1)]` -/
def P7220645354754361744.Spec : Prop :=
  ∀ n, (P7220645354754361744.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P9652724427220628583

`eq[1, A019425(A007012(n)+2)]`
-/

namespace A042996.P9652724427220628583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A007012 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P9652724427220628583

namespace A042996

/-- `eq[1, A019425(A007012(n)+2)]` -/
def P9652724427220628583.Spec : Prop :=
  ∀ n, (P9652724427220628583.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P18196042339392609976

`eq[1, A019426(A007012(n)+2)]`
-/

namespace A042996.P18196042339392609976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A007012 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P18196042339392609976

namespace A042996

/-- `eq[1, A019426(A007012(n)+2)]` -/
def P18196042339392609976.Spec : Prop :=
  ∀ n, (P18196042339392609976.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P7006117828344420943

`eq[1, A019428(A007012(n)+2)]`
-/

namespace A042996.P7006117828344420943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A007012 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P7006117828344420943

namespace A042996

/-- `eq[1, A019428(A007012(n)+2)]` -/
def P7006117828344420943.Spec : Prop :=
  ∀ n, (P7006117828344420943.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P15543443100591917902

`eq[2, A055943(A007012(n)+1)]`
-/

namespace A042996.P15543443100591917902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055943 (A007012 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P15543443100591917902

namespace A042996

/-- `eq[2, A055943(A007012(n)+1)]` -/
def P15543443100591917902.Spec : Prop :=
  ∀ n, (P15543443100591917902.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P3212105659659601052

`eq[2, A061393(A007012(n)+1)]`
-/

namespace A042996.P3212105659659601052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A007012 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P3212105659659601052

namespace A042996

/-- `eq[2, A061393(A007012(n)+1)]` -/
def P3212105659659601052.Spec : Prop :=
  ∀ n, (P3212105659659601052.a n : ℤ) = A042996 (n + 1)

end A042996

/-! ## A042996.P12137541088068242049

`eq[1, A091090(A007012(n)+2)]`
-/

namespace A042996.P12137541088068242049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A007012 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042996.P12137541088068242049

namespace A042996

/-- `eq[1, A091090(A007012(n)+2)]` -/
def P12137541088068242049.Spec : Prop :=
  ∀ n, (P12137541088068242049.a n : ℤ) = A042996 (n + 1)

end A042996

/-!
# A042997: Primes congruent to {2, 3, 4, 5, 6} (mod 7).

The programs for A042997, the canonical program `A042997.P12240399101058951569` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042997 has offset 1).

The definition of A042997 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A042997.anchor (n : ℕ) (hn : 1 ≤ n) : A042997 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({2, 3, 4, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A042.A042997`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A042997.P12240399101058951569

`p?[a(n-5)+7]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042997

/-- `p?[a(n-5)+7]` -/
def P12240399101058951569.Spec : Prop :=
  ∀ n, (P12240399101058951569.a n : ℤ) = A042997 (n + 1)

theorem P12240399101058951569.correct : P12240399101058951569.Spec := by
  intro n
  simp only [A042997, Nat.add_sub_cancel]

end A042997

/-! ## A042997.P11910052329014601682

`∪[A003625(n+1), A045308(n+1)]`
-/

namespace A042997.P11910052329014601682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042997.P11910052329014601682

namespace A042997

/-- `∪[A003625(n+1), A045308(n+1)]` -/
def P11910052329014601682.Spec : Prop :=
  ∀ n, (P11910052329014601682.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P15348718954026819160

`∪[A003625(n+1), A045363(n+1)]`
-/

namespace A042997.P15348718954026819160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042997.P15348718954026819160

namespace A042997

/-- `∪[A003625(n+1), A045363(n+1)]` -/
def P15348718954026819160.Spec : Prop :=
  ∀ n, (P15348718954026819160.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P12219217725670221715

`∪[A003625(n+1), A045387(n+1)]`
-/

namespace A042997.P12219217725670221715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042997.P12219217725670221715

namespace A042997

/-- `∪[A003625(n+1), A045387(n+1)]` -/
def P12219217725670221715.Spec : Prop :=
  ∀ n, (P12219217725670221715.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P16151015723867961767

`∪[A045308(n+1), A045341(n+1)]`
-/

namespace A042997.P16151015723867961767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042997.P16151015723867961767

namespace A042997

/-- `∪[A045308(n+1), A045341(n+1)]` -/
def P16151015723867961767.Spec : Prop :=
  ∀ n, (P16151015723867961767.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P14503463258810449874

`∪[A045308(n+1), A045389(n+1)]`
-/

namespace A042997.P14503463258810449874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042997.P14503463258810449874

namespace A042997

/-- `∪[A045308(n+1), A045389(n+1)]` -/
def P14503463258810449874.Spec : Prop :=
  ∀ n, (P14503463258810449874.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P1260722008058532488

`∪[A045308(n+1), A045404(n+1)]`
-/

namespace A042997.P1260722008058532488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042997.P1260722008058532488

namespace A042997

/-- `∪[A045308(n+1), A045404(n+1)]` -/
def P1260722008058532488.Spec : Prop :=
  ∀ n, (P1260722008058532488.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P2401518428949936169

`∪[A045308(n+1), A045455(n+1)]`
-/

namespace A042997.P2401518428949936169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042997.P2401518428949936169

namespace A042997

/-- `∪[A045308(n+1), A045455(n+1)]` -/
def P2401518428949936169.Spec : Prop :=
  ∀ n, (P2401518428949936169.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P18304087250226615173

`p?[n%(n^(n%7))]`
-/

namespace A042997.P18304087250226615173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % n ^ (n % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042997.P18304087250226615173

namespace A042997

/-- `p?[n%(n^(n%7))]` -/
def P18304087250226615173.Spec : Prop :=
  ∀ n, (P18304087250226615173.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P16586191456928487403

`p?[(n+1)%((n+1)%7+n)]`
-/

namespace A042997.P16586191456928487403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((n + 1) % 7 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042997.P16586191456928487403

namespace A042997

/-- `p?[(n+1)%((n+1)%7+n)]` -/
def P16586191456928487403.Spec : Prop :=
  ∀ n, (P16586191456928487403.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P1198561710898807002

`p?[(n+1)*gcd(49, n²+n)]`
-/

namespace A042997.P1198561710898807002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 49 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042997.P1198561710898807002

namespace A042997

/-- `p?[(n+1)*gcd(49, n²+n)]` -/
def P1198561710898807002.Spec : Prop :=
  ∀ n, (P1198561710898807002.a n : ℤ) = A042997 (n + 1)

end A042997

/-! ## A042997.P13474320827607688924

`p?[A047305(n+1)]`
-/

namespace A042997.P13474320827607688924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042997.P13474320827607688924

namespace A042997

/-- `p?[A047305(n+1)]` -/
def P13474320827607688924.Spec : Prop :=
  ∀ n, P13474320827607688924.a n = A042997 (n + 1)

end A042997

/-! ## A042997.P17535251874682692120

`p?[A047369(n+1)+1]`
-/

namespace A042997.P17535251874682692120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047369 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042997.P17535251874682692120

namespace A042997

/-- `p?[A047369(n+1)+1]` -/
def P17535251874682692120.Spec : Prop :=
  ∀ n, P17535251874682692120.a n = A042997 (n + 1)

end A042997

/-! ## A042997.P3950573385811754589

`p?[A047337(n+1)+2]`
-/

namespace A042997.P3950573385811754589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047337 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042997.P3950573385811754589

namespace A042997

/-- `p?[A047337(n+1)+2]` -/
def P3950573385811754589.Spec : Prop :=
  ∀ n, P3950573385811754589.a n = A042997 (n + 1)

end A042997

/-! ## A042997.P1867046403566388771

`p?[A130497(n)+1+n]`
-/

namespace A042997.P1867046403566388771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042997.P1867046403566388771

namespace A042997

/-- `p?[A130497(n)+1+n]` -/
def P1867046403566388771.Spec : Prop :=
  ∀ n, P1867046403566388771.a n = A042997 (n + 1)

end A042997

/-! ## A042997.P17101062790615621772

`p?[2*A047253(n+1)-n]`
-/

namespace A042997.P17101062790615621772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047253 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042997.P17101062790615621772

namespace A042997

/-- `p?[2*A047253(n+1)-n]` -/
def P17101062790615621772.Spec : Prop :=
  ∀ n, P17101062790615621772.a n = A042997 (n + 1)

end A042997

/-! ## A042997.P7766231774614831865

`filter[A047305(n+1), A010051(#)]`
-/

namespace A042997.P7766231774614831865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042997.P7766231774614831865

namespace A042997

/-- `filter[A047305(n+1), A010051(#)]` -/
def P7766231774614831865.Spec : Prop :=
  ∀ n, P7766231774614831865.a n = A042997 (n + 1)

end A042997

/-! ## A042997.P6485858351673483707

`record[A006530(A047369(n+1)+1)]`
-/

namespace A042997.P6485858351673483707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047369 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042997.P6485858351673483707

namespace A042997

/-- `record[A006530(A047369(n+1)+1)]` -/
def P6485858351673483707.Spec : Prop :=
  ∀ n, P6485858351673483707.a n = A042997 (n + 1)

end A042997

/-! ## A042997.P13832829143102226526

`record[A006530(A047337(n+1)+2)]`
-/

namespace A042997.P13832829143102226526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047337 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042997.P13832829143102226526

namespace A042997

/-- `record[A006530(A047337(n+1)+2)]` -/
def P13832829143102226526.Spec : Prop :=
  ∀ n, P13832829143102226526.a n = A042997 (n + 1)

end A042997

/-! ## A042997.P5184929591514141357

`record[A006530(A130497(n)+1+n)]`
-/

namespace A042997.P5184929591514141357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A130497 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042997.P5184929591514141357

namespace A042997

/-- `record[A006530(A130497(n)+1+n)]` -/
def P5184929591514141357.Spec : Prop :=
  ∀ n, P5184929591514141357.a n = A042997 (n + 1)

end A042997

/-!
# A042998: Primes congruent to {1, 2, 3, 5} (mod 8).

The programs for A042998, the canonical program `A042998.P9124097597539170765` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042998 has offset 1).

The definition of A042998 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A042998.anchor (n : ℕ) (hn : 1 ≤ n) : A042998 n = (Nat.nth (fun p => p.Prime ∧ p % 8 ∈ ({1, 2, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A042.A042998`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A042998.P9124097597539170765

`p?[a(n-4)+8]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042998

/-- `p?[a(n-4)+8]` -/
def P9124097597539170765.Spec : Prop :=
  ∀ n, (P9124097597539170765.a n : ℤ) = A042998 (n + 1)

theorem P9124097597539170765.correct : P9124097597539170765.Spec := by
  intro n
  simp only [A042998, Nat.add_sub_cancel]

end A042998

/-! ## A042998.P94345478975278331

`p?[ogf((2+x+2x^2+2x^3+x^4)/(1-x-x^3+x^4))]`
-/

namespace A042998.P94345478975278331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2, 2, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042998.P94345478975278331

namespace A042998

/-- `p?[ogf((2+x+2x^2+2x^3+x^4)/(1-x-x^3+x^4))]` -/
def P94345478975278331.Spec : Prop :=
  ∀ n, P94345478975278331.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P15688786477397693243

`∪[A045403(n+1), A057999(n)]`
-/

namespace A042998.P15688786477397693243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P15688786477397693243

namespace A042998

/-- `∪[A045403(n+1), A057999(n)]` -/
def P15688786477397693243.Spec : Prop :=
  ∀ n, (P15688786477397693243.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P6957684434789757515

`∪[A045403(n+1), A061351(n)]`
-/

namespace A042998.P6957684434789757515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P6957684434789757515

namespace A042998

/-- `∪[A045403(n+1), A061351(n)]` -/
def P6957684434789757515.Spec : Prop :=
  ∀ n, (P6957684434789757515.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P1515381437841104142

`∪[A045403(n+1), A084161(n)]`
-/

namespace A042998.P1515381437841104142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P1515381437841104142

namespace A042998

/-- `∪[A045403(n+1), A084161(n)]` -/
def P1515381437841104142.Spec : Prop :=
  ∀ n, (P1515381437841104142.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P8620208412918073177

`∪[A057999(n), A085317(n+1)]`
-/

namespace A042998.P8620208412918073177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P8620208412918073177

namespace A042998

/-- `∪[A057999(n), A085317(n+1)]` -/
def P8620208412918073177.Spec : Prop :=
  ∀ n, (P8620208412918073177.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P9017837116315934151

`∪[A002144(n+1), A033203(n+1)]`
-/

namespace A042998.P9017837116315934151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P9017837116315934151

namespace A042998

/-- `∪[A002144(n+1), A033203(n+1)]` -/
def P9017837116315934151.Spec : Prop :=
  ∀ n, (P9017837116315934151.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P354837628934240725

`∪[A037896(n+1), A045403(n+1)]`
-/

namespace A042998.P354837628934240725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P354837628934240725

namespace A042998

/-- `∪[A037896(n+1), A045403(n+1)]` -/
def P354837628934240725.Spec : Prop :=
  ∀ n, (P354837628934240725.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P623874575570549180

`p?[or(1, floor(n/3))+n]`
-/

namespace A042998.P623874575570549180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 3⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042998.P623874575570549180

namespace A042998

/-- `p?[or(1, floor(n/3))+n]` -/
def P623874575570549180.Spec : Prop :=
  ∀ n, P623874575570549180.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P2530263586649148225

`p?[floor(8*(n+1)/7)]`
-/

namespace A042998.P2530263586649148225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((n + 1 : ℚ) / 7)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042998.P2530263586649148225

namespace A042998

/-- `p?[floor(8*(n+1)/7)]` -/
def P2530263586649148225.Spec : Prop :=
  ∀ n, P2530263586649148225.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P6233913185131748523

`p?[n%or(6, n)]`
-/

namespace A042998.P6233913185131748523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042998.P6233913185131748523

namespace A042998

/-- `p?[n%or(6, n)]` -/
def P6233913185131748523.Spec : Prop :=
  ∀ n, (P6233913185131748523.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P2026188311593978656

`record[A006530(2*and(n, n-3)+2)]`
-/

namespace A042998.P2026188311593978656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * Int.land (n : ℤ) ((n : ℤ) - 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042998.P2026188311593978656

namespace A042998

/-- `record[A006530(2*and(n, n-3)+2)]` -/
def P2026188311593978656.Spec : Prop :=
  ∀ n, P2026188311593978656.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P11820025011107457617

`filter[A343110(n+1), A010051(#)]`
-/

namespace A042998.P11820025011107457617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042998.P11820025011107457617

namespace A042998

/-- `filter[A343110(n+1), A010051(#)]` -/
def P11820025011107457617.Spec : Prop :=
  ∀ n, P11820025011107457617.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P8205098892164903449

`∩[A000040(n+1), A343110(n+1)]`
-/

namespace A042998.P8205098892164903449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P8205098892164903449

namespace A042998

/-- `∩[A000040(n+1), A343110(n+1)]` -/
def P8205098892164903449.Spec : Prop :=
  ∀ n, (P8205098892164903449.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P1357878939679149140

`record[A006530(A003485(n)+1)]`
-/

namespace A042998.P1357878939679149140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003485 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042998.P1357878939679149140

namespace A042998

/-- `record[A006530(A003485(n)+1)]` -/
def P1357878939679149140.Spec : Prop :=
  ∀ n, P1357878939679149140.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P2412229146699095396

`filter[A047606(n+1), A010051(#)]`
-/

namespace A042998.P2412229146699095396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A042998.P2412229146699095396

namespace A042998

/-- `filter[A047606(n+1), A010051(#)]` -/
def P2412229146699095396.Spec : Prop :=
  ∀ n, P2412229146699095396.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P2082352041074823574

`filter[A047606(n+1), A323153(#)]`
-/

namespace A042998.P2082352041074823574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A042998.P2082352041074823574

namespace A042998

/-- `filter[A047606(n+1), A323153(#)]` -/
def P2082352041074823574.Spec : Prop :=
  ∀ n, P2082352041074823574.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P2800656200434302565

`filter[A047606(n+2), A323152(#)]`
-/

namespace A042998.P2800656200434302565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A042998.P2800656200434302565

namespace A042998

/-- `filter[A047606(n+2), A323152(#)]` -/
def P2800656200434302565.Spec : Prop :=
  ∀ n, P2800656200434302565.a n = A042998 (n + 1)

end A042998

/-! ## A042998.P4152654086694293158

`∩[A000040(n+1), A047606(n+1)]`
-/

namespace A042998.P4152654086694293158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P4152654086694293158

namespace A042998

/-- `∩[A000040(n+1), A047606(n+1)]` -/
def P4152654086694293158.Spec : Prop :=
  ∀ n, (P4152654086694293158.a n : ℤ) = A042998 (n + 1)

end A042998

/-! ## A042998.P4024909426875584059

`∩[A051948(n+1), A047606(n+1)]`
-/

namespace A042998.P4024909426875584059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042998.P4024909426875584059

namespace A042998

/-- `∩[A051948(n+1), A047606(n+1)]` -/
def P4024909426875584059.Spec : Prop :=
  ∀ n, (P4024909426875584059.a n : ℤ) = A042998 (n + 1)

end A042998

/-!
# A042999: Primes congruent to {2, 3, 5} (mod 8).

The programs for A042999, the canonical program `A042999.P2391960015442067739` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042999 has offset 1).

The definition of A042999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042999.P2391960015442067739

`p?[a(n-2)+8]` with `a(0)=2, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042999

/-- `p?[a(n-2)+8]` -/
def P2391960015442067739.Spec : Prop :=
  ∀ n, (P2391960015442067739.a n : ℤ) = A042999 (n + 1)

theorem P2391960015442067739.correct : P2391960015442067739.Spec := by
  intro n
  simp only [A042999, Nat.add_sub_cancel]

end A042999

/-! ## A042999.P6665264105393080764

`p?[ogf((2+x+2x^2+3x^3)/(1-x-x^3+x^4))]`
-/

namespace A042999.P6665264105393080764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2, 3] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P6665264105393080764

namespace A042999

/-- `p?[ogf((2+x+2x^2+3x^3)/(1-x-x^3+x^4))]` -/
def P6665264105393080764.Spec : Prop :=
  ∀ n, P6665264105393080764.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P16358607540865560883

`A003629(n%a(n-1))` with `a(0)=2`
-/

namespace A042999.P16358607540865560883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003629 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A042999.P16358607540865560883

namespace A042999

/-- `A003629(n%a(n-1))` -/
def P16358607540865560883.Spec : Prop :=
  ∀ n, P16358607540865560883.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P15695952303822153208

`p?[or(3, n)-1+n]`
-/

namespace A042999.P15695952303822153208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P15695952303822153208

namespace A042999

/-- `p?[or(3, n)-1+n]` -/
def P15695952303822153208.Spec : Prop :=
  ∀ n, P15695952303822153208.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P16391273586948523058

`p?[or(3, n)-(1-n)]`
-/

namespace A042999.P16391273586948523058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P16391273586948523058

namespace A042999

/-- `p?[or(3, n)-(1-n)]` -/
def P16391273586948523058.Spec : Prop :=
  ∀ n, P16391273586948523058.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P3894476198385438308

`p?[floor(xor(4, 10*n)/5)]`
-/

namespace A042999.P3894476198385438308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 4 (10 * n) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P3894476198385438308

namespace A042999

/-- `p?[floor(xor(4, 10*n)/5)]` -/
def P3894476198385438308.Spec : Prop :=
  ∀ n, P3894476198385438308.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P5541184287319435955

`p?[ceil(or(6, 10*n)/5)]`
-/

namespace A042999.P5541184287319435955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 6 (10 * n) : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P5541184287319435955

namespace A042999

/-- `p?[ceil(or(6, 10*n)/5)]` -/
def P5541184287319435955.Spec : Prop :=
  ∀ n, P5541184287319435955.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P8011686042022381193

`p?[2*n+1-gcd(4, n)]`
-/

namespace A042999.P8011686042022381193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.gcd 4 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P8011686042022381193

namespace A042999

/-- `p?[2*n+1-gcd(4, n)]` -/
def P8011686042022381193.Spec : Prop :=
  ∀ n, P8011686042022381193.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P9862116825872702758

`p?[2*n-(n-1)%4]`
-/

namespace A042999.P9862116825872702758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod ((n : ℤ) - 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P9862116825872702758

namespace A042999

/-- `p?[2*n-(n-1)%4]` -/
def P9862116825872702758.Spec : Prop :=
  ∀ n, P9862116825872702758.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P16432660267214798827

`p?[2*(n+1)-and(3, n)]`
-/

namespace A042999.P16432660267214798827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Nat.land 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P16432660267214798827

namespace A042999

/-- `p?[2*(n+1)-and(3, n)]` -/
def P16432660267214798827.Spec : Prop :=
  ∀ n, P16432660267214798827.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P8837651615932055187

`p?[xor(2*n+1, (n+3)%4)]`
-/

namespace A042999.P8837651615932055187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) ((n + 3) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042999.P8837651615932055187

namespace A042999

/-- `p?[xor(2*n+1, (n+3)%4)]` -/
def P8837651615932055187.Spec : Prop :=
  ∀ n, (P8837651615932055187.a n : ℤ) = A042999 (n + 1)

end A042999

/-! ## A042999.P14751056788263203925

`p?[round(8*n/5)]`
-/

namespace A042999.P14751056788263203925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042999.P14751056788263203925

namespace A042999

/-- `p?[round(8*n/5)]` -/
def P14751056788263203925.Spec : Prop :=
  ∀ n, P14751056788263203925.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P370914586311970909

`record[A006530(or(3, n)-1+n)]`
-/

namespace A042999.P370914586311970909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((Nat.lor 3 n : ℤ) - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042999.P370914586311970909

namespace A042999

/-- `record[A006530(or(3, n)-1+n)]` -/
def P370914586311970909.Spec : Prop :=
  ∀ n, P370914586311970909.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P10892584169637471146

`record[A020639(or(3, n)-1+n)]`
-/

namespace A042999.P10892584169637471146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((Nat.lor 3 n : ℤ) - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042999.P10892584169637471146

namespace A042999

/-- `record[A020639(or(3, n)-1+n)]` -/
def P10892584169637471146.Spec : Prop :=
  ∀ n, P10892584169637471146.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P9590852773626900414

`record[A006530(ceil(or(6, 10*n)/5))]`
-/

namespace A042999.P9590852773626900414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈(Nat.lor 6 (10 * n) : ℚ) / 5⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042999.P9590852773626900414

namespace A042999

/-- `record[A006530(ceil(or(6, 10*n)/5))]` -/
def P9590852773626900414.Spec : Prop :=
  ∀ n, P9590852773626900414.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P14675713712718885632

`record[A020639(ceil(or(6, 10*n)/5))]`
-/

namespace A042999.P14675713712718885632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(Nat.lor 6 (10 * n) : ℚ) / 5⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042999.P14675713712718885632

namespace A042999

/-- `record[A020639(ceil(or(6, 10*n)/5))]` -/
def P14675713712718885632.Spec : Prop :=
  ∀ n, P14675713712718885632.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P12023506067945662390

`∩[A014657(n+1), A042987(n+1)]`
-/

namespace A042999.P12023506067945662390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A042999.P12023506067945662390

namespace A042999

/-- `∩[A014657(n+1), A042987(n+1)]` -/
def P12023506067945662390.Spec : Prop :=
  ∀ n, (P12023506067945662390.a n : ℤ) = A042999 (n + 1)

end A042999

/-! ## A042999.P2091467157011820897

`eq[n, A006530(and(n+2, n-2)+2)]`
-/

namespace A042999.P2091467157011820897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (n + 2 : ℤ) ((n : ℤ) - 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A042999.P2091467157011820897

namespace A042999

/-- `eq[n, A006530(and(n+2, n-2)+2)]` -/
def P2091467157011820897.Spec : Prop :=
  ∀ n, (P2091467157011820897.a n : ℤ) = A042999 (n + 1)

end A042999

/-! ## A042999.P3713717475997986888

`record[A006530(2*n*and(2, n+1)+2)]`
-/

namespace A042999.P3713717475997986888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n * Nat.land 2 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042999.P3713717475997986888

namespace A042999

/-- `record[A006530(2*n*and(2, n+1)+2)]` -/
def P3713717475997986888.Spec : Prop :=
  ∀ n, P3713717475997986888.a n = A042999 (n + 1)

end A042999

/-! ## A042999.P15479439901849595401

`eq[n-1, A000010(and(n+2, n-2)+2)]`
-/

namespace A042999.P15479439901849595401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.land (n + 2 : ℤ) ((n : ℤ) - 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042999.P15479439901849595401

namespace A042999

/-- `eq[n-1, A000010(and(n+2, n-2)+2)]` -/
def P15479439901849595401.Spec : Prop :=
  ∀ n, (P15479439901849595401.a n : ℤ) = A042999 (n + 1)

end A042999

