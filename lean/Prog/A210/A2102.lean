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
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A210200: Triangle of coefficients of polynomials v(n,x) jointly generated with A210199; see the Formula section.

The programs for A210200, there is no canonical definition to state claims against.
-/

/-! ## A210200.P13673094195992924329

`A209145(n+1)+A155161(A028310(n))`
-/

namespace A210200.P13673094195992924329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209145 (n + 1) + A155161 (A028310 n).toNat

end

end A210200.P13673094195992924329

/-! ## A210200.P4510296174286418606

`A037027(n)+A122075(n)-A010054(n)`
-/

namespace A210200.P4510296174286418606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + (A122075 n - A010054 n)

end

end A210200.P4510296174286418606

/-! ## A210200.P13824139449036528382

`A209145(n+1)+A037027(n)-A055830(n)`
-/

namespace A210200.P13824139449036528382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209145 (n + 1) + (A037027 n - A055830 n)

end

end A210200.P13824139449036528382

/-! ## A210200.P15538784892937625455

`A209747(n+1)+A122075(n)-A037027(n)`
-/

namespace A210200.P15538784892937625455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209747 (n + 1) + (A122075 n - A037027 n)

end

end A210200.P15538784892937625455

/-! ## A210200.P9865970700520825941

`A209747(n+1)+A155161(n+1)`
-/

namespace A210200.P9865970700520825941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209747 (n + 1) + A155161 (n + 1)

end

end A210200.P9865970700520825941

/-! ## A210200.P3978280899826980040

`A209145(n+1)+A155161(A066182(n+1))`
-/

namespace A210200.P3978280899826980040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209145 (n + 1) + A155161 (A066182 (n + 1)).toNat

end

end A210200.P3978280899826980040

/-! ## A210200.P13671426384538587472

`A122075(A007401(n+1))-A038137(A038722(n+1))`
-/

namespace A210200.P13671426384538587472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A007401 (n + 1)).toNat - A038137 (A038722 (n + 1)).toNat

end

end A210200.P13671426384538587472

/-!
# A210204: Triangle of coefficients of polynomials v(n,x) jointly generated with A210203; see the Formula section.

The programs for A210204, the canonical program `A210204.P16826536876454018621` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210204 has offset 1).

The definition of A210204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210204.P16826536876454018621

`2*A038207(n)-A010054(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A210204

/-- `2*A038207(n)-A010054(n)` -/
def P16826536876454018621.Spec : Prop :=
  ∀ n, P16826536876454018621.a n = A210204 (n + 1)

theorem P16826536876454018621.correct : P16826536876454018621.Spec := by
  intro n
  simp only [A210204, Nat.add_sub_cancel]

end A210204

/-! ## A210204.P5447402810228951510

`abs(2*A065109(n)-A010054(n))`
-/

namespace A210204.P5447402810228951510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A065109 n - A010054 n|

end

end A210204.P5447402810228951510

namespace A210204

/-- `abs(2*A065109(n)-A010054(n))` -/
def P5447402810228951510.Spec : Prop :=
  ∀ n, P5447402810228951510.a n = A210204 (n + 1)

end A210204

/-! ## A210204.P12368759240864165945

`2*A038207(n)-char[A000217(n)]`
-/

namespace A210204.P12368759240864165945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A210204.P12368759240864165945

namespace A210204

/-- `2*A038207(n)-char[A000217(n)]` -/
def P12368759240864165945.Spec : Prop :=
  ∀ n, P12368759240864165945.a n = A210204 (n + 1)

end A210204

/-! ## A210204.P14124812330608142448

`abs(2*A065109(n))-char[A000217(n)]`
-/

namespace A210204.P14124812330608142448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A065109 n| - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A210204.P14124812330608142448

namespace A210204

/-- `abs(2*A065109(n))-char[A000217(n)]` -/
def P14124812330608142448.Spec : Prop :=
  ∀ n, P14124812330608142448.a n = A210204 (n + 1)

end A210204

/-! ## A210204.P12267777508469672178

`A028326(n)*A130321(n)-A010054(n)`
-/

namespace A210204.P12267777508469672178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n * A130321 n - A010054 n

end

end A210204.P12267777508469672178

namespace A210204

/-- `A028326(n)*A130321(n)-A010054(n)` -/
def P12267777508469672178.Spec : Prop :=
  ∀ n, P12267777508469672178.a n = A210204 (n + 1)

end A210204

/-! ## A210204.P17879046396065191825

`2*A038207(n)-A008683(A133819(n+1))`
-/

namespace A210204.P17879046396065191825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A008683 (A133819 (n + 1)).toNat

end

end A210204.P17879046396065191825

namespace A210204

/-- `2*A038207(n)-A008683(A133819(n+1))` -/
def P17879046396065191825.Spec : Prop :=
  ∀ n, P17879046396065191825.a n = A210204 (n + 1)

end A210204

/-! ## A210204.P2681855446625191975

`A134347(A061579(n))`
-/

namespace A210204.P2681855446625191975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134347 (A061579 n).toNat

end

end A210204.P2681855446625191975

namespace A210204

/-- `A134347(A061579(n))` -/
def P2681855446625191975.Spec : Prop :=
  ∀ n, P2681855446625191975.a n = A210204 (n + 1)

end A210204

/-! ## A210204.P3476934381377534039

`2*A038207(n)-A256311(A112367(n))`
-/

namespace A210204.P3476934381377534039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A256311 (A112367 n).toNat

end

end A210204.P3476934381377534039

namespace A210204

/-- `2*A038207(n)-A256311(A112367(n))` -/
def P3476934381377534039.Spec : Prop :=
  ∀ n, P3476934381377534039.a n = A210204 (n + 1)

end A210204

/-! ## A210204.P671806986386942594

`A005843(A038207(n))-A010054(n)`
-/

namespace A210204.P671806986386942594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A038207 n).toNat - A010054 n

end

end A210204.P671806986386942594

namespace A210204

/-- `A005843(A038207(n))-A010054(n)` -/
def P671806986386942594.Spec : Prop :=
  ∀ n, P671806986386942594.a n = A210204 (n + 1)

end A210204

/-!
# A210206: Maximal number of 1s in a Hadamard matrix of order 4n.

The programs for A210206, there is no canonical definition to state claims against.
-/

/-! ## A210206.P16034955028060614188

`A007814(A000949(n))+A002378(3*(n+1))`
-/

namespace A210206.P16034955028060614188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000949 n).toNat + A002378 (3 * (n + 1))

end

end A210206.P16034955028060614188

/-! ## A210206.P4272199120665909172

`A002378(3*(n+1))+A001222(A157149(3*(n+1)))`
-/

namespace A210206.P4272199120665909172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (3 * (n + 1)) + A001222 (A157149 (3 * (n + 1))).toNat

end

end A210206.P4272199120665909172

/-! ## A210206.P10283869371196414331

`A249695(A267222(3*n+5))+A002378(3*(n+1))`
-/

namespace A210206.P10283869371196414331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249695 (A267222 (3 * n + 5)).toNat + A002378 (3 * (n + 1))

end

end A210206.P10283869371196414331

/-!
# A210207: Area A of the non-right triangles such that A, the sides, and the circumradius are integers.

The programs for A210207, there is no canonical definition to state claims against.
-/

/-! ## A210207.P7211916258792338556

`A018935(n+3)*A040552(A098301(n))`
-/

namespace A210207.P7211916258792338556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018935 (n + 3) * A040552 (A098301 n).toNat

end

end A210207.P7211916258792338556

/-!
# A210208: Triangle read by rows in which row n lists the divisors of n that are prime powers, A000961.

The programs for A210208, there is no canonical definition to state claims against.
-/

/-! ## A210208.P14623821432789785974

`filter[A027750(n+1), A010055(#)]`
-/

namespace A210208.P14623821432789785974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A210208.P14623821432789785974

/-! ## A210208.P8267529535896943790

`A027750(comp[A351350(3*(n+3))-A329573(n+1)])`
-/

namespace A210208.P8267529535896943790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351350 (3 * (n + 3)) - A329573 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A210208.P8267529535896943790

/-! ## A210208.P16720387255036950811

`A027750(A291442(n+1))%A194435(3*n+4)`
-/

namespace A210208.P16720387255036950811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027750 (A291442 (n + 1)).toNat) (A194435 (3 * n + 4))

end

end A210208.P16720387255036950811

/-!
# A210209: GCD of all sums of n consecutive Fibonacci numbers.

The programs for A210209, the canonical program `A210209.P12905943660189559259` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210209 has offset 0).

The definition of A210209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210209.P12905943660189559259

`A115311(n+1)/A131534(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A210209

/-- `A115311(n+1)/A131534(n)` -/
def P12905943660189559259.Spec : Prop :=
  ∀ n, P12905943660189559259.a n = (A210209 n : ℚ)

end A210209

/-! ## A210209.P10849759545082763076

`gcd(A119282(n), A236191(n))`
-/

namespace A210209.P10849759545082763076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119282 n) (A236191 n)

end

end A210209.P10849759545082763076

namespace A210209

/-- `gcd(A119282(n), A236191(n))` -/
def P10849759545082763076.Spec : Prop :=
  ∀ n, (P10849759545082763076.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P10185478508943250510

`gcd(A000045(n), A000071(n+1))`
-/

namespace A210209.P10185478508943250510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A000071 (n + 1))

end

end A210209.P10185478508943250510

namespace A210209

/-- `gcd(A000045(n), A000071(n+1))` -/
def P10185478508943250510.Spec : Prop :=
  ∀ n, (P10185478508943250510.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P354231771303891155

`gcd(2-A001611(n+1), A212804(n+1))`
-/

namespace A210209.P354231771303891155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A001611 (n + 1)) (A212804 (n + 1))

end

end A210209.P354231771303891155

namespace A210209

/-- `gcd(2-A001611(n+1), A212804(n+1))` -/
def P354231771303891155.Spec : Prop :=
  ∀ n, (P354231771303891155.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P6467973912125319899

`gcd(A000045(n), ∑[A000045(n)])`
-/

namespace A210209.P6467973912125319899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210209.P6467973912125319899

namespace A210209

/-- `gcd(A000045(n), ∑[A000045(n)])` -/
def P6467973912125319899.Spec : Prop :=
  ∀ n, (P6467973912125319899.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P4276228644925435513

`gcd(A181716(n), A187890(n+1))`
-/

namespace A210209.P4276228644925435513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181716 n) (A187890 (n + 1))

end

end A210209.P4276228644925435513

namespace A210209

/-- `gcd(A181716(n), A187890(n+1))` -/
def P4276228644925435513.Spec : Prop :=
  ∀ n, (P4276228644925435513.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P3495112053817814863

`gcd(∑[A212804(n+1)], A212804(n+1))`
-/

namespace A210209.P3495112053817814863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A212804 (n + 1))

end

end A210209.P3495112053817814863

namespace A210209

/-- `gcd(∑[A212804(n+1)], A212804(n+1))` -/
def P3495112053817814863.Spec : Prop :=
  ∀ n, (P3495112053817814863.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P3812387224719075672

`gcd(A001611(n)-1, ∑[A001611(n)-1])`
-/

namespace A210209.P3812387224719075672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001611 n - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210209.P3812387224719075672

namespace A210209

/-- `gcd(A001611(n)-1, ∑[A001611(n)-1])` -/
def P3812387224719075672.Spec : Prop :=
  ∀ n, (P3812387224719075672.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P2805195054430253019

`gcd(∑[A103609(2*n)], A103609(2*n))`
-/

namespace A210209.P2805195054430253019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A103609 (2 * n))

end

end A210209.P2805195054430253019

namespace A210209

/-- `gcd(∑[A103609(2*n)], A103609(2*n))` -/
def P2805195054430253019.Spec : Prop :=
  ∀ n, (P2805195054430253019.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P521083707183602184

`gcd(1-A000045(n+1), 2-A000032(n))`
-/

namespace A210209.P521083707183602184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000045 (n + 1)) (2 - A000032 n)

end

end A210209.P521083707183602184

namespace A210209

/-- `gcd(1-A000045(n+1), 2-A000032(n))` -/
def P521083707183602184.Spec : Prop :=
  ∀ n, (P521083707183602184.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P8612680249596961402

`gcd(1-A096748(2*n), A226649(2*n))`
-/

namespace A210209.P8612680249596961402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A096748 (2 * n)) (A226649 (2 * n))

end

end A210209.P8612680249596961402

namespace A210209

/-- `gcd(1-A096748(2*n), A226649(2*n))` -/
def P8612680249596961402.Spec : Prop :=
  ∀ n, (P8612680249596961402.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P6007929313440021572

`gcd(1-A000045(n+2), A000045(n+1)-1)`
-/

namespace A210209.P6007929313440021572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000045 (n + 2)) (A000045 (n + 1) - 1)

end

end A210209.P6007929313440021572

namespace A210209

/-- `gcd(1-A000045(n+2), A000045(n+1)-1)` -/
def P6007929313440021572.Spec : Prop :=
  ∀ n, (P6007929313440021572.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P11404097957281626384

`gcd(1-A053602(2*n+1), A053602(2*n))`
-/

namespace A210209.P11404097957281626384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A053602 (2 * n + 1)) (A053602 (2 * n))

end

end A210209.P11404097957281626384

namespace A210209

/-- `gcd(1-A053602(2*n+1), A053602(2*n))` -/
def P11404097957281626384.Spec : Prop :=
  ∀ n, (P11404097957281626384.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P11192451829668454888

`gcd(∑[A327035(3*n+2)], A327035(3*n+2))`
-/

namespace A210209.P11192451829668454888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A327035 (3 * n + 2))

end

end A210209.P11192451829668454888

namespace A210209

/-- `gcd(∑[A327035(3*n+2)], A327035(3*n+2))` -/
def P11192451829668454888.Spec : Prop :=
  ∀ n, (P11192451829668454888.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P8088638545613098255

`gcd(A001350(n)-A119282(n), A001350(n))`
-/

namespace A210209.P8088638545613098255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001350 n - A119282 n) (A001350 n)

end

end A210209.P8088638545613098255

namespace A210209

/-- `gcd(A001350(n)-A119282(n), A001350(n))` -/
def P8088638545613098255.Spec : Prop :=
  ∀ n, (P8088638545613098255.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P9781782842256502752

`gcd(A000071(A028310(n+1)), A000071(n+2))`
-/

namespace A210209.P9781782842256502752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000071 (A028310 (n + 1)).toNat) (A000071 (n + 2))

end

end A210209.P9781782842256502752

namespace A210209

/-- `gcd(A000071(A028310(n+1)), A000071(n+2))` -/
def P9781782842256502752.Spec : Prop :=
  ∀ n, (P9781782842256502752.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P4051632527739905214

`gcd(A000045(n), A001610(n))`
-/

namespace A210209.P4051632527739905214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A001610 n)

end

end A210209.P4051632527739905214

namespace A210209

/-- `gcd(A000045(n), A001610(n))` -/
def P4051632527739905214.Spec : Prop :=
  ∀ n, (P4051632527739905214.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P4172462352559450212

`gcd(A187891(n), A187892(n))`
-/

namespace A210209.P4172462352559450212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187891 n) (A187892 n)

end

end A210209.P4172462352559450212

namespace A210209

/-- `gcd(A187891(n), A187892(n))` -/
def P4172462352559450212.Spec : Prop :=
  ∀ n, (P4172462352559450212.a n : ℤ) = A210209 n

end A210209

/-! ## A210209.P8065131202153697598

`gcd(A001911(n), A115311(n+1))`
-/

namespace A210209.P8065131202153697598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001911 n) (A115311 (n + 1))

end

end A210209.P8065131202153697598

namespace A210209

/-- `gcd(A001911(n), A115311(n+1))` -/
def P8065131202153697598.Spec : Prop :=
  ∀ n, (P8065131202153697598.a n : ℤ) = A210209 n

end A210209

/-!
# A210211: Triangle of coefficients of polynomials u(n,x) jointly generated with A210212; see the Formula section.

The programs for A210211, there is no canonical definition to state claims against.
-/

/-! ## A210211.P3167307180955466476

`A284873(n+1)-A104245(A347811(n))`
-/

namespace A210211.P3167307180955466476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (n + 1) - A104245 (A347811 n).toNat

end

end A210211.P3167307180955466476

/-! ## A210211.P4089121959786137723

`A284873(n+1)-A130633(A337506(n))`
-/

namespace A210211.P4089121959786137723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (n + 1) - A130633 (A337506 n).toNat

end

end A210211.P4089121959786137723

/-! ## A210211.P142766896560709599

`A208341(n+1)+Δ[A011695(A347811(n))]`
-/

namespace A210211.P142766896560709599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011695 (A347811 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210211.P142766896560709599

/-! ## A210211.P14640207508494030762

`A208341(n+1)+Δ[A325616(A008277(n+1))]`
-/

namespace A210211.P14640207508494030762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325616 (A008277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210211.P14640207508494030762

/-! ## A210211.P3892208798997715808

`A086623(lt[A086642(n+3), A086646(n)])`
-/

namespace A210211.P3892208798997715808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086642 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086623 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210211.P3892208798997715808

/-!
# A210212: Triangle of coefficients of polynomials v(n,x) jointly generated with A210211; see the Formula section.

The programs for A210212, there is no canonical definition to state claims against.
-/

/-! ## A210212.P4442524677018173317

`A209762(n+1)-A180649(A209774(n+1))`
-/

namespace A210212.P4442524677018173317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209762 (n + 1) - A180649 (A209774 (n + 1)).toNat

end

end A210212.P4442524677018173317

/-! ## A210212.P256966257623247178

`A048766(A050796(n+1)*A199673(n+1))`
-/

namespace A210212.P256966257623247178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A050796 (n + 1) * A199673 (n + 1)).toNat

end

end A210212.P256966257623247178

/-!
# A210213: Triangle of coefficients of polynomials u(n,x) jointly generated with A210214; see the Formula section.

The programs for A210213, there is no canonical definition to state claims against.
-/

/-! ## A210213.P15660529160645065009

`A209560(n+1)-A171731(n)`
-/

namespace A210213.P15660529160645065009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209560 (n + 1) - A171731 n

end

end A210213.P15660529160645065009

/-! ## A210213.P10884269196227415621

`A209560(n+1)+A094441(n)-A094442(n)`
-/

namespace A210213.P10884269196227415621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209560 (n + 1) + (A094441 n - A094442 n)

end

end A210213.P10884269196227415621

/-! ## A210213.P2948838842812167782

`A210214(n+1)+A094441(n)-A209559(n+1)-A171731(n)`
-/

namespace A210213.P2948838842812167782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210214 (n + 1) + (A094441 n - A209559 (n + 1)) - A171731 n

end

end A210213.P2948838842812167782

/-! ## A210213.P17581542568406375674

`A261133(A210214(n+1))`
-/

namespace A210213.P17581542568406375674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261133 (A210214 (n + 1)).toNat

end

end A210213.P17581542568406375674

/-!
# A210214: Triangle of coefficients of polynomials v(n,x) jointly generated with A210213; see the Formula section.

The programs for A210214, there is no canonical definition to state claims against.
-/

/-! ## A210214.P3393755368098229915

`A209559(n+1)+A209560(n+1)-A094441(n)`
-/

namespace A210214.P3393755368098229915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209559 (n + 1) + (A209560 (n + 1) - A094441 n)

end

end A210214.P3393755368098229915

/-!
# A210215: Triangle of coefficients of polynomials u(n,x) jointly generated with A210216; see the Formula section.

The programs for A210215, there is no canonical definition to state claims against.
-/

/-! ## A210215.P1556029202267792566

`A027935(comp[∑[n]])`
-/

namespace A210215.P1556029202267792566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A210215.P1556029202267792566

/-! ## A210215.P4450098949721581383

`A027926(A118011(n+1))`
-/

namespace A210215.P4450098949721581383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A118011 (n + 1)).toNat

end

end A210215.P4450098949721581383

/-! ## A210215.P5789218110183139380

`A027926(A195437(n)+1)`
-/

namespace A210215.P5789218110183139380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A195437 n + 1).toNat

end

end A210215.P5789218110183139380

/-! ## A210215.P11647772316825095392

`A027926(∑[A035214(n)+1])`
-/

namespace A210215.P11647772316825095392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210215.P11647772316825095392

/-! ## A210215.P4504440944610606700

`A027926(∑[A010054(n)+2])`
-/

namespace A210215.P4504440944610606700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210215.P4504440944610606700

/-! ## A210215.P12561392237479792851

`A027926(∑[or(2, A010054(n))])`
-/

namespace A210215.P12561392237479792851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A010054 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210215.P12561392237479792851

/-! ## A210215.P4327477908098194769

`A027926(A003056(n)+2*n+3)`
-/

namespace A210215.P4327477908098194769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A003056 n + (2 * n + 3 : ℤ)).toNat

end

end A210215.P4327477908098194769

/-! ## A210215.P17749181866172414440

`A027926(A002024(n+1)+2*(n+1))`
-/

namespace A210215.P17749181866172414440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A002024 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A210215.P17749181866172414440

/-! ## A210215.P13439739360788013547

`A027926(A062545(n)+A003056(n))`
-/

namespace A210215.P13439739360788013547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A062545 n + A003056 n).toNat

end

end A210215.P13439739360788013547

/-! ## A210215.P13697156665307669931

`A027926(A000037(2*(n+1)))`
-/

namespace A210215.P13697156665307669931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A000037 (2 * (n + 1))).toNat

end

end A210215.P13697156665307669931

/-! ## A210215.P15578188006011673745

`A027926(A000194(2*(n+1))+2*(n+1))`
-/

namespace A210215.P15578188006011673745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A000194 (2 * (n + 1)) + (2 * (n + 1) : ℤ)).toNat

end

end A210215.P15578188006011673745

/-! ## A210215.P18272376248175515078

`A027926(eq[0, A004173(n)])`
-/

namespace A210215.P18272376248175515078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210215.P18272376248175515078

/-!
# A210216: Triangle of coefficients of polynomials v(n,x) jointly generated with A210215; see the Formula section.

The programs for A210216, there is no canonical definition to state claims against.
-/

/-! ## A210216.P15242791385937066791

`A027948(A007401(n+1))`
-/

namespace A210216.P15242791385937066791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 (A007401 (n + 1)).toNat

end

end A210216.P15242791385937066791

/-! ## A210216.P15950087100922049816

`A027948(A080036(n)-1)`
-/

namespace A210216.P15950087100922049816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 (A080036 n - 1).toNat

end

end A210216.P15950087100922049816

/-! ## A210216.P11866315028402401623

`A027948(eq[0, A023531(n)])`
-/

namespace A210216.P11866315028402401623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210216.P11866315028402401623

/-! ## A210216.P5177938108094735423

`A027948(eq[1, A023532(n)])`
-/

namespace A210216.P5177938108094735423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210216.P5177938108094735423

/-! ## A210216.P8058401715081830979

`A027948(A002024(n+1)+n)`
-/

namespace A210216.P8058401715081830979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A210216.P8058401715081830979

/-! ## A210216.P14951627682128366090

`A027926(∑[char[∑[n]]]+2*n+1)`
-/

namespace A210216.P14951627682128366090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1))

end

end A210216.P14951627682128366090

/-! ## A210216.P5000722835868446306

`A027948(A349520(2*(n+1))+n)`
-/

namespace A210216.P5000722835868446306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 (A349520 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A210216.P5000722835868446306

/-! ## A210216.P11840763770259538988

`A027948(A000194(2*n)+n)`
-/

namespace A210216.P11840763770259538988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 (A000194 (2 * n) + (n : ℤ)).toNat

end

end A210216.P11840763770259538988

/-!
# A210217: Triangle of coefficients of polynomials u(n,x) jointly generated with A210218; see the Formula section.

The programs for A210217, there is no canonical definition to state claims against.
-/

/-! ## A210217.P7486161469357332044

`A058224(A210228(n+1))+Δ[A203647(n+1)]`
-/

namespace A210217.P7486161469357332044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058224 (A210228 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A210217.P7486161469357332044

/-! ## A210217.P6337455860813026261

`A137512(A208910(n+2))`
-/

namespace A210217.P6337455860813026261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A208910 (n + 2)).toNat

end

end A210217.P6337455860813026261

/-! ## A210217.P9353494043805254048

`A231351(A215083(n+1)+1)`
-/

namespace A210217.P9353494043805254048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231351 (A215083 (n + 1) + 1).toNat

end

end A210217.P9353494043805254048

/-!
# A210218: Triangle of coefficients of polynomials v(n,x) jointly generated with A210217; see the Formula section.

The programs for A210218, there is no canonical definition to state claims against.
-/

/-! ## A210218.P16562867532993292747

`A209691(n+1)+A210550(n+1)-A209565(n+1)`
-/

namespace A210218.P16562867532993292747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209691 (n + 1) + (A210550 (n + 1) - A209565 (n + 1))

end

end A210218.P16562867532993292747

/-! ## A210218.P15117413193688887733

`A210550(n+1)+Δ[A210217(n+1)-A210550(n+1)]`
-/

namespace A210218.P15117413193688887733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210217 (n + 1) - A210550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210550 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210218.P15117413193688887733

/-! ## A210218.P6519445139577396776

`A055570(A210549(n+1)+A112367(n))`
-/

namespace A210218.P6519445139577396776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A210549 (n + 1) + A112367 n).toNat

end

end A210218.P6519445139577396776

/-! ## A210218.P14521340638699273913

`A203647(n+1)+A058224(A210228(n+1))-1`
-/

namespace A210218.P14521340638699273913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1) + (A058224 (A210228 (n + 1)).toNat - 1)

end

end A210218.P14521340638699273913

/-! ## A210218.P18020951228639665729

`A137512(A243641(n+1)-3)+A001221(A226234(n))`
-/

namespace A210218.P18020951228639665729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A243641 (n + 1) - 3).toNat + A001221 (A226234 n).toNat

end

end A210218.P18020951228639665729

/-!
# A210219: Triangle of coefficients of polynomials u(n,x) jointly generated with A210220; see the Formula section.

The programs for A210219, there is no canonical definition to state claims against.
-/

/-! ## A210219.P16934268502749201918

`A071922(comp[∑[n]])`
-/

namespace A210219.P16934268502749201918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A210219.P16934268502749201918

/-! ## A210219.P16619838323272214069

`A008683(gcd(n, n+2))²*A071922(A014132(n+1))`
-/

namespace A210219.P16619838323272214069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 2)) ^ 2 * A071922 (A014132 (n + 1)).toNat

end

end A210219.P16619838323272214069

/-! ## A210219.P9584758720935260930

`2*A071922(A014132(n+1))/A000005(A104946(n+1))`
-/

namespace A210219.P9584758720935260930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A071922 (A014132 (n + 1)).toNat : ℚ) / (A000005 (A104946 (n + 1)).toNat : ℚ)

end

end A210219.P9584758720935260930

/-! ## A210219.P5180424863212506554

`A071920(eq[0, A103451(n)])`
-/

namespace A210219.P5180424863212506554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210219.P5180424863212506554

/-! ## A210219.P4329176285812995919

`A071921(eq[0, A103451(n)])`
-/

namespace A210219.P4329176285812995919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210219.P4329176285812995919

/-! ## A210219.P12998731296158081540

`A071920(lt[0, A071920(n)])`
-/

namespace A210219.P12998731296158081540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210219.P12998731296158081540

/-! ## A210219.P7326084726984148712

`A071921(lt[1, A046688(n)])`
-/

namespace A210219.P7326084726984148712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210219.P7326084726984148712

/-! ## A210219.P9250915779349268372

`A071921(lt[1, A071922(n)])`
-/

namespace A210219.P9250915779349268372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210219.P9250915779349268372

/-! ## A210219.P1341493924277327355

`A071921(lt[1, A106597(n)])`
-/

namespace A210219.P1341493924277327355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210219.P1341493924277327355

/-! ## A210219.P11210528280160603719

`A071921(lt[3, A134059(n)])`
-/

namespace A210219.P11210528280160603719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210219.P11210528280160603719

/-! ## A210219.P6060954955890922726

`A071922(A014132(n+1))%A000041(n+2)`
-/

namespace A210219.P6060954955890922726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071922 (A014132 (n + 1)).toNat) (A000041 (n + 2))

end

end A210219.P6060954955890922726

/-! ## A210219.P10418966477196086480

`A088917(9*n+5)+A071922(A014132(n+1))`
-/

namespace A210219.P10418966477196086480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (9 * n + 5) + A071922 (A014132 (n + 1)).toNat

end

end A210219.P10418966477196086480

/-! ## A210219.P2807416675125100341

`2*A071922(A014132(n+1))/A000005(A104936(n+1))`
-/

namespace A210219.P2807416675125100341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A071922 (A014132 (n + 1)).toNat : ℚ) / (A000005 (A104936 (n + 1)).toNat : ℚ)

end

end A210219.P2807416675125100341

/-! ## A210219.P4437514420341281764

`2*A071922(A014132(n+1))/A000005(A002144(n+1))`
-/

namespace A210219.P4437514420341281764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A071922 (A014132 (n + 1)).toNat : ℚ) / (A000005 (A002144 (n + 1)).toNat : ℚ)

end

end A210219.P4437514420341281764

/-! ## A210219.P10989657578923984929

`2*A071922(A014132(n+1))/A000005(A104937(n+1))`
-/

namespace A210219.P10989657578923984929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A071922 (A014132 (n + 1)).toNat : ℚ) / (A000005 (A104937 (n + 1)).toNat : ℚ)

end

end A210219.P10989657578923984929

/-! ## A210219.P10600827857425800743

`2*A071922(A014132(n+1))/A000005(A104938(n+1))`
-/

namespace A210219.P10600827857425800743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A071922 (A014132 (n + 1)).toNat : ℚ) / (A000005 (A104938 (n + 1)).toNat : ℚ)

end

end A210219.P10600827857425800743

/-! ## A210219.P15867334840754059509

`A071922(A014132(n+1))%A017330(A052905(n))`
-/

namespace A210219.P15867334840754059509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071922 (A014132 (n + 1)).toNat) (A017330 (A052905 n).toNat)

end

end A210219.P15867334840754059509

/-! ## A210219.P17201298129523891771

`A071922(A014132(n+1))%A198277(n)`
-/

namespace A210219.P17201298129523891771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071922 (A014132 (n + 1)).toNat) (A198277 n)

end

end A210219.P17201298129523891771

/-!
# A210220: T(n, k) = -binomial(2*n-k+2, k+1)*hypergeom([2*n-k+3, 1], [k+2], 2). Triangle read by rows, T(n, k) for 1 <= k <= n.

The programs for A210220, there is no canonical definition to state claims against.
-/

/-! ## A210220.P2196599475652039546

`A210219(A014132(n+1))-A210219(A028310(n))`
-/

namespace A210220.P2196599475652039546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A014132 (n + 1)).toNat - A210219 (A028310 n).toNat

end

end A210220.P2196599475652039546

/-! ## A210220.P1861397740637212337

`A286558(2*A130329(n)-1)`
-/

namespace A210220.P1861397740637212337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286558 (2 * A130329 n - 1).toNat

end

end A210220.P1861397740637212337

/-! ## A210220.P6667097117813991856

`A286558(A130329(n)+A130329(n)-1)`
-/

namespace A210220.P6667097117813991856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286558 (A130329 n + (A130329 n - 1)).toNat

end

end A210220.P6667097117813991856

/-! ## A210220.P10349961752578671983

`A286558(A130329(n)-(1-A130329(n)))`
-/

namespace A210220.P10349961752578671983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286558 (A130329 n - (1 - A130329 n)).toNat

end

end A210220.P10349961752578671983

/-! ## A210220.P6684214479748046998

`A248944(n+1)-A327425(A097805(n))`
-/

namespace A210220.P6684214479748046998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (n + 1) - A327425 (A097805 n).toNat

end

end A210220.P6684214479748046998

/-!
# A210221: Triangle of coefficients of polynomials u(n,x) jointly generated with A210596; see the Formula section.

The programs for A210221, there is no canonical definition to state claims against.
-/

/-! ## A210221.P12633554773065675726

`A059268(abs(1-n))*A076791(n)`
-/

namespace A210221.P12633554773065675726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 |1 - (n : ℤ)|.toNat * A076791 n

end

end A210221.P12633554773065675726

/-! ## A210221.P5866282480867799905

`A076791(n)*A130321(A056943(n))`
-/

namespace A210221.P5866282480867799905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076791 n * A130321 (A056943 n).toNat

end

end A210221.P5866282480867799905

/-!
# A210222: Triangle of coefficients of polynomials v(n,x) jointly generated with A104698; see the Formula section.

The programs for A210222, there is no canonical definition to state claims against.
-/

/-! ## A210222.P4861348164495391468

`A209570(n+1)+A052928(A266213(n))`
-/

namespace A210222.P4861348164495391468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209570 (n + 1) + A052928 (A266213 n).toNat

end

end A210222.P4861348164495391468

/-! ## A210222.P17253431476494938528

`A101603(A014132(n+1))+A029578(A035607(n))`
-/

namespace A210222.P17253431476494938528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101603 (A014132 (n + 1)).toNat + A029578 (A035607 n).toNat

end

end A210222.P17253431476494938528

/-! ## A210222.P2001694384797081562

`A142978(A038722(n+1))+A029578(A035607(n))`
-/

namespace A210222.P2001694384797081562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (A038722 (n + 1)).toNat + A029578 (A035607 n).toNat

end

end A210222.P2001694384797081562

/-!
# A210223: Triangle of coefficients of polynomials u(n,x) jointly generated with A210224; see the Formula section.

The programs for A210223, there is no canonical definition to state claims against.
-/

/-! ## A210223.P12839358107744175198

`A070939(3^A106683(n+2))`
-/

namespace A210223.P12839358107744175198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A106683 (n + 2) : ℤ))).toNat

end

end A210223.P12839358107744175198

/-! ## A210223.P3979672129899009659

`A225644(A212829(n+2)²-1)`
-/

namespace A210223.P3979672129899009659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A212829 (n + 2) ^ 2 - 1).toNat

end

end A210223.P3979672129899009659

/-! ## A210223.P12782495542747207112

`A356224(A022818(n+1)*A134347(n))`
-/

namespace A210223.P12782495542747207112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (A022818 (n + 1) * A134347 n).toNat

end

end A210223.P12782495542747207112

/-! ## A210223.P17561709127417071370

`∑{d}[A210215(n+1), A112669(A000045(#))]`
-/

namespace A210223.P17561709127417071370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A112669 (A000045 d).toNat

end

end A210223.P17561709127417071370

/-! ## A210223.P11880833431541649207

`A130241(∑{d}[A212829(n+2), A212828(#)])`
-/

namespace A210223.P11880833431541649207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (∑ d ∈ Nat.divisors (f1 n).natAbs, A212828 d).toNat

end

end A210223.P11880833431541649207

/-!
# A210224: Triangle of coefficients of polynomials v(n,x) jointly generated with A210223; see the Formula section.

The programs for A210224, there is no canonical definition to state claims against.
-/

/-! ## A210224.P12532711600455966394

`or(1, A163352(A010026(n+2)))`
-/

namespace A210224.P12532711600455966394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A163352 (A010026 (n + 2)).toNat)

end

end A210224.P12532711600455966394

/-! ## A210224.P13343324328142249242

`A064289(A005408(n)^A048993(n))`
-/

namespace A210224.P13343324328142249242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (SequenceMachineLib.roundAway ((A005408 n : ℚ) ^ (A048993 n : ℤ))).toNat

end

end A210224.P13343324328142249242

/-! ## A210224.P14132873810615517634

`A166093(A278493(n^A331570(n)))`
-/

namespace A210224.P14132873810615517634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166093 (A278493 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A331570 n : ℤ))).toNat).toNat

end

end A210224.P14132873810615517634

/-! ## A210224.P2295947104356798646

`A111986(A277906(n+1)^A002262(n))`
-/

namespace A210224.P2295947104356798646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111986 (SequenceMachineLib.roundAway ((A277906 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A210224.P2295947104356798646

/-! ## A210224.P5843123829942744260

`A064289(A283002(n+1)^A081719(n))`
-/

namespace A210224.P5843123829942744260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (SequenceMachineLib.roundAway ((A283002 (n + 1) : ℚ) ^ (A081719 n : ℤ))).toNat

end

end A210224.P5843123829942744260

/-!
# A210225: Triangle of coefficients of polynomials u(n,x) jointly generated with A210226; see the Formula section.

The programs for A210225, there is no canonical definition to state claims against.
-/

/-! ## A210225.P11713842371572263182

`A209414(n+1)+A209574(n+1)-A112351(n)`
-/

namespace A210225.P11713842371572263182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209414 (n + 1) + (A209574 (n + 1) - A112351 n)

end

end A210225.P11713842371572263182

/-! ## A210225.P4560008956904567103

`A091863(A115597(n+3))`
-/

namespace A210225.P4560008956904567103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (A115597 (n + 3)).toNat

end

end A210225.P4560008956904567103

/-! ## A210225.P8920625235735438622

`A122286(n)+A005848(A022166(n))`
-/

namespace A210225.P8920625235735438622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 n + A005848 (A022166 n).toNat

end

end A210225.P8920625235735438622

/-! ## A210225.P17661247025524035652

`A268820(n)+A072649(A209330(n))`
-/

namespace A210225.P17661247025524035652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 n + A072649 (A209330 n).toNat

end

end A210225.P17661247025524035652

/-! ## A210225.P3445592048298476834

`A326291(A145901(n))+A134081(n)`
-/

namespace A210225.P3445592048298476834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A145901 n).toNat + A134081 n

end

end A210225.P3445592048298476834

/-!
# A210227: Triangle of coefficients of polynomials u(n,x) jointly generated with A210228; see the Formula section.

The programs for A210227, there is no canonical definition to state claims against.
-/

/-! ## A210227.P16476484539722816315

`A121600(A376499(n+2))`
-/

namespace A210227.P16476484539722816315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121600 (A376499 (n + 2)).toNat

end

end A210227.P16476484539722816315

/-! ## A210227.P9414928411293022254

`A332294(A208918(n+2))`
-/

namespace A210227.P9414928411293022254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (A208918 (n + 2)).toNat

end

end A210227.P9414928411293022254

/-! ## A210227.P6178573872106997077

`A113793(A187152(n+2))`
-/

namespace A210227.P6178573872106997077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113793 (A187152 (n + 2)).toNat

end

end A210227.P6178573872106997077

/-! ## A210227.P8896536403648177578

`A218879(A208918(n+2)+1)`
-/

namespace A210227.P8896536403648177578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218879 (A208918 (n + 2) + 1).toNat

end

end A210227.P8896536403648177578

/-! ## A210227.P14867057369541368106

`A108611(7*A210217(n+1))`
-/

namespace A210227.P14867057369541368106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (7 * A210217 (n + 1)).toNat

end

end A210227.P14867057369541368106

/-!
# A210229: Triangle of coefficients of polynomials u(n,x) jointly generated with A210230; see the Formula section.

The programs for A210229, there is no canonical definition to state claims against.
-/

/-! ## A210229.P8692718111447161782

`(A210230(n+1)+A037027(n))/2`
-/

namespace A210229.P8692718111447161782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210230 (n + 1) + A037027 n : ℚ) / 2

end

end A210229.P8692718111447161782

/-! ## A210229.P10312300681435103933

`floor(A209748(n+2)/2)`
-/

namespace A210229.P10312300681435103933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209748 (n + 2) : ℚ) / 2⌋

end

end A210229.P10312300681435103933

/-! ## A210229.P13202494985606397055

`A091186(comp[∑[n]])`
-/

namespace A210229.P13202494985606397055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091186 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A210229.P13202494985606397055

/-! ## A210229.P351116241143007363

`gcd(A000038(n), A091186(A014132(n+1)))`
-/

namespace A210229.P351116241143007363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A091186 (A014132 (n + 1)).toNat)

end

end A210229.P351116241143007363

/-! ## A210229.P18312212243085812780

`or(A000007(n), A091186(A014132(n+1)))`
-/

namespace A210229.P18312212243085812780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A091186 (A014132 (n + 1)).toNat)

end

end A210229.P18312212243085812780

/-! ## A210229.P14109609207703819280

`A000034(2*n)*A091186(A003056(n)+2+n)`
-/

namespace A210229.P14109609207703819280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A091186 (A003056 n + 2 + (n : ℤ)).toNat

end

end A210229.P14109609207703819280

/-! ## A210229.P779134947190760682

`A091186(A003056(n)+2+n)%A099256(n)`
-/

namespace A210229.P779134947190760682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091186 (A003056 n + 2 + (n : ℤ)).toNat) (A099256 n)

end

end A210229.P779134947190760682

/-! ## A210229.P5675581706243062844

`A091186(A014132(n+1))+A000007(A091186(n))`
-/

namespace A210229.P5675581706243062844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091186 (A014132 (n + 1)).toNat + A000007 (A091186 n).toNat

end

end A210229.P5675581706243062844

/-! ## A210229.P18361687323539661808

`A091186(A014132(n+1))+A000038(A014132(n+1)²)`
-/

namespace A210229.P18361687323539661808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091186 (A014132 (n + 1)).toNat + A000038 (A014132 (n + 1) ^ 2).toNat

end

end A210229.P18361687323539661808

/-! ## A210229.P15430099062951018809

`A037027(n)+A004525(A210230(n+1)-A037027(n))`
-/

namespace A210229.P15430099062951018809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + A004525 (A210230 (n + 1) - A037027 n).toNat

end

end A210229.P15430099062951018809

/-!
# A210230: Triangle of coefficients of polynomials v(n,x) jointly generated with A210229; see the Formula section.

The programs for A210230, there is no canonical definition to state claims against.
-/

/-! ## A210230.P7588211861830390088

`2*A210229(n+1)-A037027(n)`
-/

namespace A210230.P7588211861830390088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210229 (n + 1) - A037027 n

end

end A210230.P7588211861830390088

/-! ## A210230.P16879392070556497708

`2*A210229(n+1)-A038137(A061579(n))`
-/

namespace A210230.P16879392070556497708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210229 (n + 1) - A038137 (A061579 n).toNat

end

end A210230.P16879392070556497708

/-! ## A210230.P6845140606983566934

`A210229(A014132(n+1))-A210229(A028310(n))`
-/

namespace A210230.P6845140606983566934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (A014132 (n + 1)).toNat - A210229 (A028310 n).toNat

end

end A210230.P6845140606983566934

/-! ## A210230.P12105617583092290866

`A210229(A014132(n+1))-A210229(A066182(n+1))`
-/

namespace A210230.P12105617583092290866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210229 (A014132 (n + 1)).toNat - A210229 (A066182 (n + 1)).toNat

end

end A210230.P12105617583092290866

/-! ## A210230.P10896872892867295680

`2*A210229(n+1)-A155161(A014132(n+1))`
-/

namespace A210230.P10896872892867295680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210229 (n + 1) - A155161 (A014132 (n + 1)).toNat

end

end A210230.P10896872892867295680

/-! ## A210230.P2868720389126530404

`A004277(A210229(n+1))-A037027(n)`
-/

namespace A210230.P2868720389126530404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210229 (n + 1)).toNat - A037027 n

end

end A210230.P2868720389126530404

/-! ## A210230.P10128747539688089010

`2*A210229(n+1)-A110654(A209747(n+1))`
-/

namespace A210230.P10128747539688089010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210229 (n + 1) - A110654 (A209747 (n + 1)).toNat

end

end A210230.P10128747539688089010

/-! ## A210230.P18347925356151945338

`A005843(A210229(n+1))-A038137(A061579(n))`
-/

namespace A210230.P18347925356151945338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210229 (n + 1)).toNat - A038137 (A061579 n).toNat

end

end A210230.P18347925356151945338

/-! ## A210230.P6015587540145929335

`A005843(A210229(n+1))-A155161(A014132(n+1))`
-/

namespace A210230.P6015587540145929335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210229 (n + 1)).toNat - A155161 (A014132 (n + 1)).toNat

end

end A210230.P6015587540145929335

/-! ## A210230.P3426424811535248390

`A005843(A210229(n+1))-A110654(A209747(n+1))`
-/

namespace A210230.P3426424811535248390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210229 (n + 1)).toNat - A110654 (A209747 (n + 1)).toNat

end

end A210230.P3426424811535248390

/-!
# A210231: Triangle of coefficients of polynomials u(n,x) jointly generated with A210232; see the Formula section.

The programs for A210231, there is no canonical definition to state claims against.
-/

/-! ## A210231.P4003244790351425882

`A092422(comp[∑[n]]%A160724(n+1))`
-/

namespace A210231.P4003244790351425882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092422 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A160724 (n + 1))).toNat

end

end A210231.P4003244790351425882

/-! ## A210231.P653414946642980423

`A092422(lt[A092461(3*(n+1)), A092477(n+1)])`
-/

namespace A210231.P653414946642980423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092461 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092422 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210231.P653414946642980423

/-! ## A210231.P983997355300387140

`A092422(lt[A092422(3*n+2), A092477(n+1)])`
-/

namespace A210231.P983997355300387140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092422 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092422 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210231.P983997355300387140

/-! ## A210231.P3399720446047411562

`A092422(lt[A108052(n+1), A294685(n+1)])`
-/

namespace A210231.P3399720446047411562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092422 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210231.P3399720446047411562

/-! ## A210231.P1857348384300096364

`A121536(A347000(n+1))`
-/

namespace A210231.P1857348384300096364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121536 (A347000 (n + 1)).toNat

end

end A210231.P1857348384300096364

/-!
# A210232: Triangle of coefficients of polynomials v(n,x) jointly generated with A210231; see the Formula section.

The programs for A210232, there is no canonical definition to state claims against.
-/

/-! ## A210232.P10885583841928948469

`A285935(n)-A285936(A000225(n))`
-/

namespace A210232.P10885583841928948469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285935 n - A285936 ((A000225 n).toNat + 10)

end

end A210232.P10885583841928948469

/-! ## A210232.P17149218994003232007

`A047666(n+1)-A189628(A113155(2*(n+2)))`
-/

namespace A210232.P17149218994003232007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) - A189628 (A113155 (2 * (n + 2))).toNat

end

end A210232.P17149218994003232007

/-! ## A210232.P16422728615767815824

`A278044(A176190(n))`
-/

namespace A210232.P16422728615767815824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 (A176190 n).toNat

end

end A210232.P16422728615767815824

/-! ## A210232.P7529512601958612765

`A095791(A087783(n+1))`
-/

namespace A210232.P7529512601958612765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A087783 (n + 1)).toNat

end

end A210232.P7529512601958612765

/-! ## A210232.P3132326008305049436

`A271914(A132818(n+1))`
-/

namespace A210232.P3132326008305049436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271914 (A132818 (n + 1)).toNat

end

end A210232.P3132326008305049436

/-!
# A210233: Triangle of coefficients of polynomials u(n,x) jointly generated with A210234; see the Formula section.

The programs for A210233, there is no canonical definition to state claims against.
-/

/-! ## A210233.P982990144039144714

`A276985(n+1)-A210234(n+1)`
-/

namespace A210233.P982990144039144714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) - A210234 (n + 1)

end

end A210233.P982990144039144714

/-! ## A210233.P6810206078939567474

`2*A193862(n)-A210234(n+1)`
-/

namespace A210233.P6810206078939567474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193862 n - A210234 (n + 1)

end

end A210233.P6810206078939567474

/-! ## A210233.P13290402957895702937

`A013609(comp[∑[n]])-A210234(n+1)`
-/

namespace A210233.P13290402957895702937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A210234 (n + 1)

end

end A210233.P13290402957895702937

/-! ## A210233.P15761326940541740171

`abs(A185342(n))-A210234(n+1)`
-/

namespace A210233.P15761326940541740171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185342 n| - A210234 (n + 1)

end

end A210233.P15761326940541740171

/-! ## A210233.P6351518706293461656

`A188440(A063657(n+1))-A210234(n+1)`
-/

namespace A210233.P6351518706293461656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A063657 (n + 1)).toNat - A210234 (n + 1)

end

end A210233.P6351518706293461656

/-! ## A210233.P11920709109386470346

`A188440(A189151(n+1))-A210234(n+1)`
-/

namespace A210233.P11920709109386470346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A189151 (n + 1)).toNat - A210234 (n + 1)

end

end A210233.P11920709109386470346

/-! ## A210233.P4355146119633824320

`A005843(A193862(n))-A210234(n+1)`
-/

namespace A210233.P4355146119633824320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A193862 n).toNat - A210234 (n + 1)

end

end A210233.P4355146119633824320

/-!
# A210234: Triangle of coefficients of polynomials v(n,x) jointly generated with A210233; see the Formula section.

The programs for A210234, there is no canonical definition to state claims against.
-/

/-! ## A210234.P17575915796723327264

`A276985(n+1)-A210233(n+1)`
-/

namespace A210234.P17575915796723327264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) - A210233 (n + 1)

end

end A210234.P17575915796723327264

/-! ## A210234.P9100318524841766713

`2*A193862(n)-A210233(n+1)`
-/

namespace A210234.P9100318524841766713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193862 n - A210233 (n + 1)

end

end A210234.P9100318524841766713

/-! ## A210234.P1308801487405325341

`A209706(n+1)+A209761(n+1)-A210233(n+1)`
-/

namespace A210234.P1308801487405325341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209706 (n + 1) + (A209761 (n + 1) - A210233 (n + 1))

end

end A210234.P1308801487405325341

/-! ## A210234.P16080736631446553225

`A013609(A014132(n+1))-A210233(n+1)`
-/

namespace A210234.P16080736631446553225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A014132 (n + 1)).toNat - A210233 (n + 1)

end

end A210234.P16080736631446553225

/-! ## A210234.P17838939963622622057

`abs(A185342(n))-A210233(n+1)`
-/

namespace A210234.P17838939963622622057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185342 n| - A210233 (n + 1)

end

end A210234.P17838939963622622057

/-! ## A210234.P17646776591157275880

`A188440(A063657(n+1))-A210233(n+1)`
-/

namespace A210234.P17646776591157275880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A063657 (n + 1)).toNat - A210233 (n + 1)

end

end A210234.P17646776591157275880

/-! ## A210234.P12146322913035159495

`A188440(A189151(n+1))-A210233(n+1)`
-/

namespace A210234.P12146322913035159495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A189151 (n + 1)).toNat - A210233 (n + 1)

end

end A210234.P12146322913035159495

/-! ## A210234.P1983839679565071296

`A210233(n+1)+A005843(A193862(n)-A210233(n+1))`
-/

namespace A210234.P1983839679565071296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210233 (n + 1) + A005843 (A193862 n - A210233 (n + 1)).toNat

end

end A210234.P1983839679565071296

/-! ## A210234.P1755957308077322063

`A005843(A193862(n))-A210233(n+1)`
-/

namespace A210234.P1755957308077322063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A193862 n).toNat - A210233 (n + 1)

end

end A210234.P1755957308077322063

/-!
# A210235: Triangle of coefficients of polynomials u(n,x) jointly generated with A210236; see the Formula section.

The programs for A210235, there is no canonical definition to state claims against.
-/

/-! ## A210235.P10029125327927207772

`A209584(n+1)-A234713(n)`
-/

namespace A210235.P10029125327927207772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209584 (n + 1) - A234713 n

end

end A210235.P10029125327927207772

/-! ## A210235.P15617336719303055215

`A209419(n+1)+A209584(n+1)-A209420(n+1)`
-/

namespace A210235.P15617336719303055215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (n + 1) + (A209584 (n + 1) - A209420 (n + 1))

end

end A210235.P15617336719303055215

/-! ## A210235.P6105694312028872573

`A209583(n+1)+A209584(n+1)-A209999(n+1)`
-/

namespace A210235.P6105694312028872573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209583 (n + 1) + (A209584 (n + 1) - A209999 (n + 1))

end

end A210235.P6105694312028872573

/-! ## A210235.P4539905352442310105

`A209583(n+1)+A209999(n+1)-A209753(n+1)`
-/

namespace A210235.P4539905352442310105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209583 (n + 1) + (A209999 (n + 1) - A209753 (n + 1))

end

end A210235.P4539905352442310105

/-! ## A210235.P11636040900394684482

`A209584(n+1)+A202390(A061579(n))-A209420(n+1)`
-/

namespace A210235.P11636040900394684482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209584 (n + 1) + (A202390 (A061579 n).toNat - A209420 (n + 1))

end

end A210235.P11636040900394684482

/-!
# A210236: Triangle of coefficients of polynomials v(n,x) jointly generated with A210235; see the Formula section.

The programs for A210236, there is no canonical definition to state claims against.
-/

/-! ## A210236.P7090714618505055574

`A209999(n+1)+A209999(n+2)-A210235(n+2)`
-/

namespace A210236.P7090714618505055574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209999 (n + 1) + (A209999 (n + 2) - A210235 (n + 2))

end

end A210236.P7090714618505055574

/-!
# A210237: Triangle of distinct values M(n) of multinomial coefficients for partitions of n in increasing order of n and M(n).

The programs for A210237, there is no canonical definition to state claims against.
-/

/-! ## A210237.P6370086402797698450

`A036038(A178772(n+1)%A129470(n+1))`
-/

namespace A210237.P6370086402797698450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (Int.tmod (A178772 (n + 1)) (A129470 (n + 1))).toNat

end

end A210237.P6370086402797698450

/-! ## A210237.P1080721481338435449

`A036038(A178772(n+1))%A129471(n+1)`
-/

namespace A210237.P1080721481338435449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036038 (A178772 (n + 1)).toNat) (A129471 (n + 1))

end

end A210237.P1080721481338435449

/-!
# A210238: Triangle of multiplicities D(n) of multinomial coefficients corresponding to sequence A210237.

The programs for A210238, there is no canonical definition to state claims against.
-/

/-! ## A210238.P251054174320484115

`A035206(∑[A185284(n)!])`
-/

namespace A210238.P251054174320484115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210238.P251054174320484115

/-! ## A210238.P567972407964475591

`A035206(ceil(acot(A335997(n))+n))`
-/

namespace A210238.P567972407964475591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 ⌈SequenceMachineLib.acot (A335997 n : ℝ) + (n : ℝ)⌉.toNat

end

end A210238.P567972407964475591

/-! ## A210238.P13313643307194523768

`A035206(n+1)%A073523(n+1)`
-/

namespace A210238.P13313643307194523768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035206 (n + 1)) (A073523 (n + 1))

end

end A210238.P13313643307194523768

/-! ## A210238.P9446698211127122806

`A035206(n+1)+C(n, A270831(n+5))`
-/

namespace A210238.P9446698211127122806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (n + 1) + (Nat.choose n (A270831 (n + 5)).toNat : ℤ)

end

end A210238.P9446698211127122806

/-! ## A210238.P6122557520995560948

`A059841(A141459(n))+A035206(n+1)`
-/

namespace A210238.P6122557520995560948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A141459 n).toNat + A035206 (n + 1)

end

end A210238.P6122557520995560948

/-!
# A210239: Triangle, read by rows, given by (2, -1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (2, -1/2, -1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A210239, there is no canonical definition to state claims against.
-/

/-! ## A210239.P3824074973923309609

`A228720(A339890(n+1)+A156365(n+1))`
-/

namespace A210239.P3824074973923309609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228720 (A339890 (n + 1) + A156365 (n + 1)).toNat

end

end A210239.P3824074973923309609

/-!
# A210241: Partial sums of A073093.

The programs for A210241, the canonical program `A210241.P362842857671069038` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210241 has offset 1).

The definition of A210241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210241.P362842857671069038

`A022559(n+1)+n+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A210241

/-- `A022559(n+1)+n+1` -/
def P362842857671069038.Spec : Prop :=
  ∀ n, P362842857671069038.a n = A210241 (n + 1)

theorem P362842857671069038.correct : P362842857671069038.Spec := by
  intro n
  simp only [A210241, Nat.add_sub_cancel]

end A210241

/-! ## A210241.P7961557375848051260

`∑[∑{e}[n+1, #]+1]`
-/

namespace A210241.P7961557375848051260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P7961557375848051260

namespace A210241

/-- `∑[∑{e}[n+1, #]+1]` -/
def P7961557375848051260.Spec : Prop :=
  ∀ n, (P7961557375848051260.a n : ℤ) = A210241 (n + 1)

end A210241

/-! ## A210241.P9083798713182645822

`∑[∑{e}[n-2-3*n, #]]`
-/

namespace A210241.P9083798713182645822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 - (3 * n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P9083798713182645822

namespace A210241

/-- `∑[∑{e}[n-2-3*n, #]]` -/
def P9083798713182645822.Spec : Prop :=
  ∀ n, (P9083798713182645822.a n : ℤ) = A210241 (n + 1)

end A210241

/-! ## A210241.P14590770677049785033

`∑[∑{p}[n+1, val(n+1, #)]+1]`
-/

namespace A210241.P14590770677049785033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n + 1) p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P14590770677049785033

namespace A210241

/-- `∑[∑{p}[n+1, val(n+1, #)]+1]` -/
def P14590770677049785033.Spec : Prop :=
  ∀ n, (P14590770677049785033.a n : ℤ) = A210241 (n + 1)

end A210241

/-! ## A210241.P6427200045921345146

`∑{e}[n+1, #]+a(n-1)+1` with `a(0)=1`
-/

namespace A210241.P6427200045921345146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + (a (n - 1) + 1)

end

end A210241.P6427200045921345146

namespace A210241

/-- `∑{e}[n+1, #]+a(n-1)+1` -/
def P6427200045921345146.Spec : Prop :=
  ∀ n, (P6427200045921345146.a n : ℤ) = A210241 (n + 1)

end A210241

/-! ## A210241.P2298083104291767937

`∑[A073093(n+1)]`
-/

namespace A210241.P2298083104291767937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P2298083104291767937

namespace A210241

/-- `∑[A073093(n+1)]` -/
def P2298083104291767937.Spec : Prop :=
  ∀ n, P2298083104291767937.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P16773910417955166583

`∑[Δ[A022559(n)]+1]`
-/

namespace A210241.P16773910417955166583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P16773910417955166583

namespace A210241

/-- `∑[Δ[A022559(n)]+1]` -/
def P16773910417955166583.Spec : Prop :=
  ∀ n, P16773910417955166583.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P2206533794799885101

`∑[A001222(n+1)+1]`
-/

namespace A210241.P2206533794799885101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P2206533794799885101

namespace A210241

/-- `∑[A001222(n+1)+1]` -/
def P2206533794799885101.Spec : Prop :=
  ∀ n, P2206533794799885101.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P14258179553824914828

`∑[A086436(n+1)]+n`
-/

namespace A210241.P14258179553824914828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A210241.P14258179553824914828

namespace A210241

/-- `∑[A086436(n+1)]+n` -/
def P14258179553824914828.Spec : Prop :=
  ∀ n, P14258179553824914828.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P12198777299024204677

`∑[A064800(n+1)-n]`
-/

namespace A210241.P12198777299024204677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P12198777299024204677

namespace A210241

/-- `∑[A064800(n+1)-n]` -/
def P12198777299024204677.Spec : Prop :=
  ∀ n, P12198777299024204677.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P15555603824781757560

`∑[log2(A061142(n+1))+1]`
-/

namespace A210241.P15555603824781757560
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P15555603824781757560

namespace A210241

/-- `∑[log2(A061142(n+1))+1]` -/
def P15555603824781757560.Spec : Prop :=
  ∀ n, P15555603824781757560.a n = (A210241 (n + 1) : ℝ)

end A210241

/-! ## A210241.P12974493699902103830

`∑[A001222(ceil(Δ[cot(acot(n)²)]))]`
-/

namespace A210241.P12974493699902103830
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (SequenceMachineLib.acot (n : ℝ) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈f2 (n + 1) - f2 n⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P12974493699902103830

namespace A210241

/-- `∑[A001222(ceil(Δ[cot(acot(n)²)]))]` -/
def P12974493699902103830.Spec : Prop :=
  ∀ n, P12974493699902103830.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P5876993995273738833

`∑[2-A317531(2*(n+1))]`
-/

namespace A210241.P5876993995273738833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317531 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P5876993995273738833

namespace A210241

/-- `∑[2-A317531(2*(n+1))]` -/
def P5876993995273738833.Spec : Prop :=
  ∀ n, P5876993995273738833.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P12050125771816771848

`∑[1-A075795(n+1)+n]`
-/

namespace A210241.P12050125771816771848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A075795 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P12050125771816771848

namespace A210241

/-- `∑[1-A075795(n+1)+n]` -/
def P12050125771816771848.Spec : Prop :=
  ∀ n, P12050125771816771848.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P12664580908325463402

`∑[A222312(n+1)-(n-1)]`
-/

namespace A210241.P12664580908325463402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222312 (n + 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P12664580908325463402

namespace A210241

/-- `∑[A222312(n+1)-(n-1)]` -/
def P12664580908325463402.Spec : Prop :=
  ∀ n, P12664580908325463402.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P13162986545500631213

`∑[A001222(2-(n-3*n))]`
-/

namespace A210241.P13162986545500631213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - ((n : ℤ) - (3 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P13162986545500631213

namespace A210241

/-- `∑[A001222(2-(n-3*n))]` -/
def P13162986545500631213.Spec : Prop :=
  ∀ n, P13162986545500631213.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P14402255928555594878

`∑[A000005(∏{e}[n+1, 2^#])]`
-/

namespace A210241.P14402255928555594878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210241.P14402255928555594878

namespace A210241

/-- `∑[A000005(∏{e}[n+1, 2^#])]` -/
def P14402255928555594878.Spec : Prop :=
  ∀ n, P14402255928555594878.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P10026060361639048973

`A001222(2*(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A210241.P10026060361639048973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (2 * (n + 1)) + a (n - 1)

end

end A210241.P10026060361639048973

namespace A210241

/-- `A001222(2*(n+1))+a(n-1)` -/
def P10026060361639048973.Spec : Prop :=
  ∀ n, P10026060361639048973.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P17901671560963065947

`floor(A001222(n+2+n)+a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A210241.P17901671560963065947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (n + 2 + n) + a (n - 1)

end

end A210241.P17901671560963065947

namespace A210241

/-- `floor(A001222(n+2+n)+a(n-1))` -/
def P17901671560963065947.Spec : Prop :=
  ∀ n, P17901671560963065947.a n = A210241 (n + 1)

end A210241

/-! ## A210241.P5273455859913025098

`A001222(C(n+1, n))+a(n-1)+1` with `a(0)=1`
-/

namespace A210241.P5273455859913025098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (Nat.choose (n + 1) n) + (a (n - 1) + 1)

end

end A210241.P5273455859913025098

namespace A210241

/-- `A001222(C(n+1, n))+a(n-1)+1` -/
def P5273455859913025098.Spec : Prop :=
  ∀ n, P5273455859913025098.a n = A210241 (n + 1)

end A210241

/-!
# A210242: Pairs of consecutive primes {p,q} for which the numbers of distinct residues of all factorials mod p and mod q coincide.

The programs for A210242, there is no canonical definition to state claims against.
-/

/-! ## A210242.P13850611907281937147

`A097358(A032806(n+1)+1)`
-/

namespace A210242.P13850611907281937147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097358 (A032806 (n + 1) + 1).toNat

end

end A210242.P13850611907281937147

/-!
# A210243: Hanoi solutions (odd), the disks are moved from pillar 1 to pillar 3. For disks = 2k+1 use the first 2^(2k+2)-2 number pairs.

The programs for A210243, there is no canonical definition to state claims against.
-/

/-! ## A210243.P6413511853661872510

`A101608(record[or(2, n)+1])`
-/

namespace A210243.P6413511853661872510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A210243.P6413511853661872510

/-! ## A210243.P10034151574646639697

`A101608(∑[gcd(3, n%2)])`
-/

namespace A210243.P10034151574646639697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210243.P10034151574646639697

/-! ## A210243.P1743534884345778563

`7%(A101608(n+1)+2)`
-/

namespace A210243.P1743534884345778563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A101608 (n + 1) + 2)

end

end A210243.P1743534884345778563

/-! ## A210243.P17551329332740796574

`A101608(or(1, n)+n+2)`
-/

namespace A210243.P17551329332740796574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (Nat.lor 1 n + (n + 2))

end

end A210243.P17551329332740796574

/-! ## A210243.P13777067505506319234

`A101608(and(1, n+1)+2*(n+1))`
-/

namespace A210243.P13777067505506319234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (Nat.land 1 (n + 1) + 2 * (n + 1))

end

end A210243.P13777067505506319234

/-! ## A210243.P14711969426892632055

`or(2*n, A220779(n+1))%3+1`
-/

namespace A210243.P14711969426892632055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (2 * n : ℤ) (A220779 (n + 1))) 3 + 1

end

end A210243.P14711969426892632055

/-! ## A210243.P1017691547276387054

`A101608(∑[A176040(n)])`
-/

namespace A210243.P1017691547276387054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210243.P1017691547276387054

/-! ## A210243.P11376760823532533270

`A101608(A014601(n+1))`
-/

namespace A210243.P11376760823532533270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (A014601 (n + 1)).toNat

end

end A210243.P11376760823532533270

/-! ## A210243.P2544109809743502453

`A101608(A074231(n+1))`
-/

namespace A210243.P2544109809743502453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (A074231 (n + 1)).toNat

end

end A210243.P2544109809743502453

/-! ## A210243.P665248665184037101

`A101608(A084483(n+1))`
-/

namespace A210243.P665248665184037101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (A084483 (n + 1)).toNat

end

end A210243.P665248665184037101

/-!
# A210245: Signs of the polylogarithm li(-n,-1/2).

The programs for A210245, there is no canonical definition to state claims against.
-/

/-! ## A210245.P13239757575498464523

`A062157(A187342(n+2)²)`
-/

namespace A210245.P13239757575498464523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A187342 (n + 2) ^ 2).toNat

end

end A210245.P13239757575498464523

/-! ## A210245.P1379486327254130415

`A062157(A303590(n+2)²)`
-/

namespace A210245.P1379486327254130415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A303590 (n + 2) ^ 2).toNat

end

end A210245.P1379486327254130415

/-! ## A210245.P13043614402306114657

`A057077(lt[A034844(n+1), A126744(n+2)])`
-/

namespace A210245.P13043614402306114657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210245.P13043614402306114657

/-! ## A210245.P5830756380313451542

`A033999(A130485(n))^A329919(n+3)`
-/

namespace A210245.P5830756380313451542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (A130485 n).toNat : ℚ) ^ (A329919 (n + 3) : ℤ)

end

end A210245.P5830756380313451542

/-! ## A210245.P6660877881663342243

`A033999(A130485(n)%A193415(n+1))`
-/

namespace A210245.P6660877881663342243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.tmod (A130485 n) (A193415 (n + 1))).toNat

end

end A210245.P6660877881663342243

/-!
# A210246: Polylogarithm li(-n,-1/3) multiplied by (4^(n+1))/3.

The programs for A210246, there is no canonical definition to state claims against.
-/

/-! ## A210246.P16099091588209267571

`A202818(A175965(n+1))-2*n`
-/

namespace A210246.P16099091588209267571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202818 (A175965 (n + 1)).toNat - (2 * n : ℤ)

end

end A210246.P16099091588209267571

/-! ## A210246.P8184773479020275793

`A356955(A169973(2*n))-2*n`
-/

namespace A210246.P8184773479020275793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (A169973 (2 * n)).toNat - (2 * n : ℤ)

end

end A210246.P8184773479020275793

/-!
# A210247: a(n) = sign of the polylogarithm li(-n,-1/3) for n > 0, with a(0) = 1.

The programs for A210247, there is no canonical definition to state claims against.
-/

/-! ## A210247.P7321097016882937672

`A033999(round(A117412(n+3)/ϕ))`
-/

namespace A210247.P7321097016882937672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.roundAway ((A117412 (n + 3) : ℝ) / Real.goldenRatio)).toNat

end

end A210247.P7321097016882937672

/-! ## A210247.P5247791574276245912

`round(atan(atan(A210246(n))))`
-/

namespace A210247.P5247791574276245912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A210246 n : ℝ)))

end

end A210247.P5247791574276245912

/-! ## A210247.P2311206494584299258

`A033999(A194028(3*n+2)+A002378(2*n+1))`
-/

namespace A210247.P2311206494584299258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A194028 (3 * n + 2) + A002378 (2 * n + 1)).toNat

end

end A210247.P2311206494584299258

/-! ## A210247.P7580048411667716678

`A033999(A194028(3*n+2)%A110024(n+1))`
-/

namespace A210247.P7580048411667716678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Int.tmod (A194028 (3 * n + 2)) (A110024 (n + 1))).toNat

end

end A210247.P7580048411667716678

/-! ## A210247.P16528457881426383985

`A337004(A139617(n))`
-/

namespace A210247.P16528457881426383985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337004 (A139617 n).toNat

end

end A210247.P16528457881426383985

/-!
# A210249: Number of partitions of n in which all parts are less than n/2.

The programs for A210249, there is no canonical definition to state claims against.
-/

/-! ## A210249.P973977520499470849

`A000007(n)+A000041(n)-A025065(n)`
-/

namespace A210249.P973977520499470849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000041 n - A025065 n)

end

end A210249.P973977520499470849

/-! ## A210249.P396313145031639236

`A000041(n)+A008683(A008574(n))-A025065(n)`
-/

namespace A210249.P396313145031639236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A008683 (A008574 n).toNat - A025065 n)

end

end A210249.P396313145031639236

/-! ## A210249.P14507057103118399233

`A000041(n)-A025065(n)%A000070(n)`
-/

namespace A210249.P14507057103118399233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.tmod (A025065 n) (A000070 n)

end

end A210249.P14507057103118399233

/-! ## A210249.P13539264184512499708

`A000041(n)-A000070(A004526(n))%A000070(n)`
-/

namespace A210249.P13539264184512499708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.tmod (A000070 (A004526 n).toNat) (A000070 n)

end

end A210249.P13539264184512499708

/-! ## A210249.P3771545070364711825

`A000041(n)-A000070(n+1)%A225751(n+1)`
-/

namespace A210249.P3771545070364711825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.tmod (A000070 (n + 1)) (A225751 (n + 1))

end

end A210249.P3771545070364711825

/-! ## A210249.P10419120586457038230

`abs(A035363(A004277(n))-A025065(n))`
-/

namespace A210249.P10419120586457038230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035363 (A004277 n).toNat - A025065 n|

end

end A210249.P10419120586457038230

/-! ## A210249.P10308105890764526315

`A000038(n)+A035363(A004277(n))-A025065(n)`
-/

namespace A210249.P10308105890764526315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A035363 (A004277 n).toNat - A025065 n)

end

end A210249.P10308105890764526315

/-! ## A210249.P17195737610568139819

`A008683((n+1)²)+A000041(n)-A025065(n)`
-/

namespace A210249.P17195737610568139819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A000041 n - A025065 n)

end

end A210249.P17195737610568139819

/-! ## A210249.P11450754402266289157

`A000045(A151909(n))+A000041(n)-A025065(n)`
-/

namespace A210249.P11450754402266289157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A151909 n).toNat + (A000041 n - A025065 n)

end

end A210249.P11450754402266289157

/-! ## A210249.P9930619873100112166

`A000045(A151933(n))+A000041(n)-A025065(n)`
-/

namespace A210249.P9930619873100112166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A151933 n).toNat + (A000041 n - A025065 n)

end

end A210249.P9930619873100112166

/-!
# A210250: Area A of the cyclic quadrilaterals such that A, the sides and the radius of the circumcircle are integers.

The programs for A210250, there is no canonical definition to state claims against.
-/

/-! ## A210250.P8732117982905670908

`2*A103251(A141769(n+1))`
-/

namespace A210250.P8732117982905670908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103251 (A141769 (n + 1)).toNat

end

end A210250.P8732117982905670908

/-! ## A210250.P16886753154722387857

`8*A118759(A009111(n+1))`
-/

namespace A210250.P16886753154722387857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A118759 (A009111 (n + 1)).toNat

end

end A210250.P16886753154722387857

/-! ## A210250.P14919191789151236635

`8*A118759(A009112(n+1))`
-/

namespace A210250.P14919191789151236635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A118759 (A009112 (n + 1)).toNat

end

end A210250.P14919191789151236635

/-!
# A210251: Residues modulo 100 of odd squares.

The programs for A210251, there is no canonical definition to state claims against.
-/

/-! ## A210251.P16930536284269559676

`A228642(ceil(cosh(sin(n))+n))`
-/

namespace A210251.P16930536284269559676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228642 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A210251.P16930536284269559676

/-! ## A210251.P17971354600564818592

`gcd(floor(acot(n)), A228642(n+2))`
-/

namespace A210251.P17971354600564818592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A228642 (n + 2))

end

end A210251.P17971354600564818592

/-! ## A210251.P6191452357545900508

`A228642(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A210251.P6191452357545900508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228642 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A210251.P6191452357545900508

/-! ## A210251.P7430110185910972716

`∩[∪[A238712(n+6), n²], Δ[n²]]`
-/

namespace A210251.P7430110185910972716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 6)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℤ) - (f5 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A210251.P7430110185910972716

/-! ## A210251.P5388484955011533247

`A010461(A003144(n+1)+1)`
-/

namespace A210251.P5388484955011533247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010461 (A003144 (n + 1) + 1).toNat

end

end A210251.P5388484955011533247

/-!
# A210253: Number of distinct residues of all factorials mod 2^n.

The programs for A210253, there is no canonical definition to state claims against.
-/

/-! ## A210253.P12200440981507300245

`A007843(n)-A210255(A028310(n))`
-/

namespace A210253.P12200440981507300245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n - A210255 (A028310 n).toNat

end

end A210253.P12200440981507300245

/-! ## A210253.P15221432071550603466

`A046699(A080578(n+1))-A210255(A028310(n))`
-/

namespace A210253.P15221432071550603466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A080578 (n + 1)).toNat - A210255 (A028310 n).toNat

end

end A210253.P15221432071550603466

/-! ## A210253.P6165309085594488821

`A080578(n+1)-(A210255(A028310(n))+A087156(n+1))`
-/

namespace A210253.P6165309085594488821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 1) - (A210255 (A028310 n).toNat + A087156 (n + 1))

end

end A210253.P6165309085594488821

/-! ## A210253.P12461723186344090773

`(A057427(n)+1)*A046699(n+1)-A210255(A028310(n))`
-/

namespace A210253.P12461723186344090773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A046699 (n + 1) - A210255 (A028310 n).toNat

end

end A210253.P12461723186344090773

/-! ## A210253.P6764049635306640678

`A046699(2*A046699(n+1)+n)-A210255(A028310(n))`
-/

namespace A210253.P6764049635306640678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (2 * A046699 (n + 1) + (n : ℤ)).toNat - A210255 (A028310 n).toNat

end

end A210253.P6764049635306640678

/-!
# A210254: Complement of A210253.

The programs for A210254, there is no canonical definition to state claims against.
-/

/-! ## A210254.P10181690439281931279

`comp[A210253(n)]`
-/

namespace A210254.P10181690439281931279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210253 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A210254.P10181690439281931279

/-! ## A210254.P7401766856439427288

`comp[A007843(n)-A210255(A028310(n))]`
-/

namespace A210254.P7401766856439427288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n - A210255 (A028310 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A210254.P7401766856439427288

/-! ## A210254.P9583299632955859947

`∑{e}[xor(n, -n), #]+(4*n+2)%A272925(n)`
-/

namespace A210254.P9583299632955859947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + Int.tmod (4 * n + 2 : ℤ) (A272925 n)

end

end A210254.P9583299632955859947

/-! ## A210254.P8037341710309015985

`A001222(A120271(n+1))+8*n-a(n-1)+2` with `a(0)=0, a(1)=7`
-/

namespace A210254.P8037341710309015985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  A001222 (A120271 (n + 1)).toNat + ((8 * n : ℤ) - a (n - 1) + 2)

end

end A210254.P8037341710309015985

/-!
# A210255: a(n) is the number of numbers m for which n is in interval (A007814(m!), A007814(m!) + A007814(m)].

The programs for A210255, there is no canonical definition to state claims against.
-/

/-! ## A210255.P10566117291925391525

`A007843(n+1)-A210253(n+1)`
-/

namespace A210255.P10566117291925391525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (n + 1) - A210253 (n + 1)

end

end A210255.P10566117291925391525

/-! ## A210255.P14004660004559447945

`2*A046699(n+2)-A210253(n+1)`
-/

namespace A210255.P14004660004559447945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046699 (n + 2) - A210253 (n + 1)

end

end A210255.P14004660004559447945

/-! ## A210255.P17986440810632432410

`A007843(char[1]+1+n)%A210253(n+1)`
-/

namespace A210255.P17986440810632432410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007843 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A210253 (n + 1))

end

end A210255.P17986440810632432410

/-! ## A210255.P11767489369001752326

`A080425(and(A131380(n), A139447(n+1)))`
-/

namespace A210255.P11767489369001752326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (Int.land (A131380 n) (A139447 (n + 1))).toNat

end

end A210255.P11767489369001752326

/-! ## A210255.P11244489046913348976

`A151692(n)-A008683(A008999(n))`
-/

namespace A210255.P11244489046913348976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 n - A008683 (A008999 n).toNat

end

end A210255.P11244489046913348976

/-!
# A210256: Differences of the sum of distinct values of {floor(n/k), k=1,...,n}.

The programs for A210256, the canonical program `A210256.P198618298556542039` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210256 has offset 1).

The definition of A210256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210256.P198618298556542039

`Δ[A051201(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A210256

/-- `Δ[A051201(n+1)]` -/
def P198618298556542039.Spec : Prop :=
  ∀ n, P198618298556542039.a n = A210256 (n + 1)

theorem P198618298556542039.correct : P198618298556542039.Spec := by
  intro n
  simp only [A210256, Nat.add_sub_cancel]

end A210256

/-! ## A210256.P10337824594785184257

`A051201(n+2)-A051201(n+1)`
-/

namespace A210256.P10337824594785184257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 2) - A051201 (n + 1)

end

end A210256.P10337824594785184257

namespace A210256

/-- `A051201(n+2)-A051201(n+1)` -/
def P10337824594785184257.Spec : Prop :=
  ∀ n, P10337824594785184257.a n = A210256 (n + 1)

theorem P10337824594785184257.correct : P10337824594785184257.Spec := by
  intro n
  simp only [A210256, Nat.add_sub_cancel, A210256.P10337824594785184257.a, A210256.P198618298556542039.f1, A210256.P198618298556542039.a, SequenceMachineLib.memo_apply]

end A210256

/-! ## A210256.P10086820544992283175

`Δ[A078153(n+1)+Δ[A160664(n)]]`
-/

namespace A210256.P10086820544992283175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210256.P10086820544992283175

namespace A210256

/-- `Δ[A078153(n+1)+Δ[A160664(n)]]` -/
def P10086820544992283175.Spec : Prop :=
  ∀ n, P10086820544992283175.a n = A210256 (n + 1)

end A210256

/-! ## A210256.P6920898747418688127

`Δ[A078153(n+1)+A000203(n+1)]`
-/

namespace A210256.P6920898747418688127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (n + 1) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210256.P6920898747418688127

namespace A210256

/-- `Δ[A078153(n+1)+A000203(n+1)]` -/
def P6920898747418688127.Spec : Prop :=
  ∀ n, P6920898747418688127.a n = A210256 (n + 1)

end A210256

/-! ## A210256.P4259009509595912534

`A053222(n+1)+Δ[A078153(n+1)]`
-/

namespace A210256.P4259009509595912534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210256.P4259009509595912534

namespace A210256

/-- `A053222(n+1)+Δ[A078153(n+1)]` -/
def P4259009509595912534.Spec : Prop :=
  ∀ n, P4259009509595912534.a n = A210256 (n + 1)

end A210256

/-! ## A210256.P11568469604974888409

`Δ[A088580(n+1)+A078153(n+1)]`
-/

namespace A210256.P11568469604974888409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A078153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210256.P11568469604974888409

namespace A210256

/-- `Δ[A088580(n+1)+A078153(n+1)]` -/
def P11568469604974888409.Spec : Prop :=
  ∀ n, P11568469604974888409.a n = A210256 (n + 1)

end A210256

/-! ## A210256.P7076429526996944211

`Δ[A326065(A103517(n))+A078153(n+1)]`
-/

namespace A210256.P7076429526996944211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A103517 n).toNat + A078153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210256.P7076429526996944211

namespace A210256

/-- `Δ[A326065(A103517(n))+A078153(n+1)]` -/
def P7076429526996944211.Spec : Prop :=
  ∀ n, P7076429526996944211.a n = A210256 (n + 1)

end A210256

/-! ## A210256.P11495346642455497471

`A072670(n+1)+Δ[A274427(n+2)]`
-/

namespace A210256.P11495346642455497471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210256.P11495346642455497471

namespace A210256

/-- `A072670(n+1)+Δ[A274427(n+2)]` -/
def P11495346642455497471.Spec : Prop :=
  ∀ n, P11495346642455497471.a n = A210256 (n + 1)

end A210256

/-!
# A210257: Construct a triangle with centered rows in which row n contains n copies of n; form the componentwise sum of the first n rows and concatenate these decimal numbers to get a(n).

The programs for A210257, there is no canonical definition to state claims against.
-/

/-! ## A210257.P13422700208926010213

`∑[∑[A209644(A158879(n))]]`
-/

namespace A210257.P13422700208926010213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209644 (A158879 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210257.P13422700208926010213

/-!
# A210258: The coefficients of the Girard-Waring formula; irregular array T(n,k), read by rows, for n >= 1 and 1 <= k <= A000041(n).

The programs for A210258, there is no canonical definition to state claims against.
-/

/-! ## A210258.P10529643380327582242

`A330417(A334437(n+1))`
-/

namespace A210258.P10529643380327582242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330417 (A334437 (n + 1)).toNat

end

end A210258.P10529643380327582242

/-! ## A210258.P16744675387270709530

`A330417(ratio[A334437(n)]*A334437(n))`
-/

namespace A210258.P16744675387270709530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330417 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A334437 n : ℚ))).toNat

end

end A210258.P16744675387270709530

/-!
# A210259: Number of (n+1)X(n+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having three distinct values, and new values 0..3 introduced in row major order.

The programs for A210259, there is no canonical definition to state claims against.
-/

/-! ## A210259.P8745245853900630730

`A210267((n+1)²+n²)`
-/

namespace A210259.P8745245853900630730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 ((n + 1) ^ 2 + n ^ 2)

end

end A210259.P8745245853900630730

/-! ## A210259.P16921997878615139718

`A183585(n+1)-A183595(n+1)`
-/

namespace A210259.P16921997878615139718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183585 (n + 1) - A183595 (n + 1)

end

end A210259.P16921997878615139718

/-!
# A210260: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having three distinct values, and new values 0..3 introduced in row major order.

The programs for A210260, there is no canonical definition to state claims against.
-/

/-! ## A210260.P15087381233658562658

`A183586(n+1)-A183603(A000124(n))`
-/

namespace A210260.P15087381233658562658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183586 (n + 1) - A183603 (A000124 n).toNat

end

end A210260.P15087381233658562658

/-! ## A210260.P6431186718870465302

`A210267(∑[n]+1)`
-/

namespace A210260.P6431186718870465302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210260.P6431186718870465302

/-! ## A210260.P7079533389110766735

`record[A010054(n)*A210267(n+1)]`
-/

namespace A210260.P7079533389110766735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210260.P7079533389110766735

/-! ## A210260.P2869247333525986444

`record[A210267(n+1)/A172196(n)]`
-/

namespace A210260.P2869247333525986444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210267 (n + 1) : ℚ) / (A172196 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210260.P2869247333525986444

/-! ## A210260.P1370114252940866520

`record[gcd(A002262(n), A210267(n+1))]`
-/

namespace A210260.P1370114252940866520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210267 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210260.P1370114252940866520

/-!
# A210261: Number of (n+1)X3 0..3 arrays containing all values 0..3 with every 2X2 subblock having three distinct values, and new values 0..3 introduced in row major order.

The programs for A210261, there is no canonical definition to state claims against.
-/

/-! ## A210261.P12971419951452396909

`A183587(n+1)-A183596(n+1)`
-/

namespace A210261.P12971419951452396909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183587 (n + 1) - A183596 (n + 1)

end

end A210261.P12971419951452396909

/-! ## A210261.P630739842479035768

`A183587(n+1)-A183603(∑[n+1]+2)`
-/

namespace A210261.P630739842479035768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183587 (n + 1) - A183603 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210261.P630739842479035768

/-! ## A210261.P12343637508273441713

`A183587(n+1)-lcm(3, A183603(A000096(n)+3))`
-/

namespace A210261.P12343637508273441713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183587 (n + 1) - (Int.lcm 3 (A183603 (A000096 n + 3).toNat) : ℤ)

end

end A210261.P12343637508273441713

/-! ## A210261.P4544836648846954280

`A210267(∑[n+1]+2)`
-/

namespace A210261.P4544836648846954280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210261.P4544836648846954280

/-! ## A210261.P15296229609501524079

`record[A010054(n)*A210267(n+2)]`
-/

namespace A210261.P15296229609501524079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210267 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210261.P15296229609501524079

/-!
# A210262: Number of (n+1)X4 0..3 arrays containing all values 0..3 with every 2X2 subblock having three distinct values, and new values 0..3 introduced in row major order.

The programs for A210262, there is no canonical definition to state claims against.
-/

/-! ## A210262.P10894587523104666434

`A183588(n+1)-A183597(n+1)`
-/

namespace A210262.P10894587523104666434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183588 (n + 1) - A183597 (n + 1)

end

end A210262.P10894587523104666434

/-! ## A210262.P3259089847545898389

`A210267(∑[n+2]+4)`
-/

namespace A210262.P3259089847545898389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210262.P3259089847545898389

/-! ## A210262.P14538267974924253481

`or(char[1], A210267(A167614(n+1)))`
-/

namespace A210262.P14538267974924253481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A210267 (A167614 (n + 1)).toNat)

end

end A210262.P14538267974924253481

/-! ## A210262.P2086303147971300842

`record[A210267(A167614(val(n+1, 2)+1))]`
-/

namespace A210262.P2086303147971300842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210262.P2086303147971300842

/-! ## A210262.P2030062217972706876

`A210267(A167614(n+1))+A025466(n)`
-/

namespace A210262.P2030062217972706876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A167614 (n + 1)).toNat + A025466 n

end

end A210262.P2030062217972706876

/-!
# A210263: Number of (n+1)X5 0..3 arrays containing all values 0..3 with every 2X2 subblock having three distinct values, and new values 0..3 introduced in row major order.

The programs for A210263, there is no canonical definition to state claims against.
-/

/-! ## A210263.P5830930591609280002

`A183589(n+1)-A183598(n+1)`
-/

namespace A210263.P5830930591609280002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183589 (n + 1) - A183598 (n + 1)

end

end A210263.P5830930591609280002

/-! ## A210263.P18367756467984072781

`A210267(A167614(n+2)+1)`
-/

namespace A210263.P18367756467984072781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A167614 (n + 2) + 1).toNat

end

end A210263.P18367756467984072781

/-! ## A210263.P1938633915835182521

`A210267(abs(∑[n+5]+1-n)+1)`
-/

namespace A210263.P1938633915835182521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (|((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

end

end A210263.P1938633915835182521

/-!
# A210264: Number of (n+1)X6 0..3 arrays containing all values 0..3 with every 2X2 subblock having three distinct values, and new values 0..3 introduced in row major order.

The programs for A210264, there is no canonical definition to state claims against.
-/

/-! ## A210264.P11183810781009643618

`A183590(n+1)-A183599(n+1)`
-/

namespace A210264.P11183810781009643618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183590 (n + 1) - A183599 (n + 1)

end

end A210264.P11183810781009643618

/-! ## A210264.P533372382948838139

`A210267(A374005(n+1))`
-/

namespace A210264.P533372382948838139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A374005 (n + 1)).toNat

end

end A210264.P533372382948838139

/-! ## A210264.P9625530017045370688

`A210267(A167499(n+3))`
-/

namespace A210264.P9625530017045370688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A167499 (n + 3)).toNat

end

end A210264.P9625530017045370688

/-! ## A210264.P14372535388246328414

`A210267(A167614(n+3)+2)`
-/

namespace A210264.P14372535388246328414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A167614 (n + 3) + 2).toNat

end

end A210264.P14372535388246328414

/-! ## A210264.P16155816373245751195

`A210267(eq[2, A092921(n)])`
-/

namespace A210264.P16155816373245751195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210264.P16155816373245751195

/-!
# A210265: 

The programs for A210265, there is no canonical definition to state claims against.
-/

/-! ## A210265.P15494544100818006903

`A210267(A055999(n+2)+12)`
-/

namespace A210265.P15494544100818006903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A055999 (n + 2) + 12).toNat

end

end A210265.P15494544100818006903

/-! ## A210265.P12088030562157623152

`A210267(A000096(n+5)-n+1)`
-/

namespace A210265.P12088030562157623152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (A000096 (n + 5) - (n : ℤ) + 1).toNat

end

end A210265.P12088030562157623152

/-!
# A210266: 

The programs for A210266, there is no canonical definition to state claims against.
-/

/-! ## A210266.P9979847686144252804

`A210267(eq[7, A004736(n+1)]+1)`
-/

namespace A210266.P9979847686144252804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210266.P9979847686144252804

/-!
# A210267: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having three distinct values, and new values 0..3 introduced in row major order.

The programs for A210267, there is no canonical definition to state claims against.
-/

/-! ## A210267.P4564147382619851919

`A183594(n+1)-A183603(n+1)`
-/

namespace A210267.P4564147382619851919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (n + 1) - A183603 (n + 1)

end

end A210267.P4564147382619851919

/-! ## A210267.P1814658402014692465

`A183594(n+1)+A210183(n+1)-A210413(n+1)`
-/

namespace A210267.P1814658402014692465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183594 (n + 1) + (A210183 (n + 1) - A210413 (n + 1))

end

end A210267.P1814658402014692465

/-!
# A210268: Half the number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having two or three distinct clockwise edge differences.

The programs for A210268, there is no canonical definition to state claims against.
-/

/-! ## A210268.P18350799827459787679

`A210276((n+1)²+n²)`
-/

namespace A210268.P18350799827459787679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 ((n + 1) ^ 2 + n ^ 2)

end

end A210268.P18350799827459787679

/-! ## A210268.P4299271308390700090

`or(A198318(n), A210276(A001844(n)))`
-/

namespace A210268.P4299271308390700090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198318 n) (A210276 (A001844 n).toNat)

end

end A210268.P4299271308390700090

/-! ## A210268.P4779701607877055482

`A322358(n+1)+A210276(A001844(n))`
-/

namespace A210268.P4779701607877055482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (n + 1) + A210276 (A001844 n).toNat

end

end A210268.P4779701607877055482

/-!
# A210269: Half the number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having two or three distinct clockwise edge differences.

The programs for A210269, there is no canonical definition to state claims against.
-/

/-! ## A210269.P7517107710870590406

`A210276(∑[n]+1)`
-/

namespace A210269.P7517107710870590406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210269.P7517107710870590406

/-! ## A210269.P15867970894389425993

`record[root(A210276(n+1), A059268(n))]`
-/

namespace A210269.P15867970894389425993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210276 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210269.P15867970894389425993

/-! ## A210269.P18361657538682662438

`record[root(A210276(n+1), A193592(n))]`
-/

namespace A210269.P18361657538682662438
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210276 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210269.P18361657538682662438

/-! ## A210269.P5198861000837709424

`record[gcd(A002262(n), A210276(n+1))]`
-/

namespace A210269.P5198861000837709424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210276 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210269.P5198861000837709424

/-! ## A210269.P8377690728575243053

`record[root(A210276(n+1), A207619(n+1))]`
-/

namespace A210269.P8377690728575243053
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210276 (n + 1) : ℝ) ^ (1 / (A207619 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210269.P8377690728575243053

/-!
# A210270: Half the number of (n+1)X3 0..2 arrays with every 2X2 subblock having two or three distinct clockwise edge differences.

The programs for A210270, there is no canonical definition to state claims against.
-/

/-! ## A210270.P1364007556095371948

`A210276(∑[n+1]+2)`
-/

namespace A210270.P1364007556095371948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210270.P1364007556095371948

/-! ## A210270.P3959815081692419384

`record[root(A210276(n+2), A059268(n))]`
-/

namespace A210270.P3959815081692419384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210276 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210270.P3959815081692419384

/-! ## A210270.P956143565560364764

`record[gcd(A002262(n), A210276(n+2))]`
-/

namespace A210270.P956143565560364764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210276 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210270.P956143565560364764

/-! ## A210270.P13691242339073317248

`record[gcd(A025581(n), A210276(n+3))]`
-/

namespace A210270.P13691242339073317248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A210276 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210270.P13691242339073317248

/-! ## A210270.P995969478194406014

`record[A210276(Δ[A003453(n+5)])]`
-/

namespace A210270.P995969478194406014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210270.P995969478194406014

/-!
# A210271: Half the number of (n+1)X4 0..2 arrays with every 2X2 subblock having two or three distinct clockwise edge differences.

The programs for A210271, there is no canonical definition to state claims against.
-/

/-! ## A210271.P14534079864767781208

`A210276(∑[n+2]+4)`
-/

namespace A210271.P14534079864767781208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210271.P14534079864767781208

/-! ## A210271.P14860469843601196134

`A210276(A167614(n+1))+A185037(n)`
-/

namespace A210271.P14860469843601196134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A167614 (n + 1)).toNat + A185037 n

end

end A210271.P14860469843601196134

/-! ## A210271.P14112269274296918700

`A210276(A167614(n+1))+A185284(n)`
-/

namespace A210271.P14112269274296918700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A167614 (n + 1)).toNat + A185284 n

end

end A210271.P14112269274296918700

/-! ## A210271.P1322106357907411157

`A210276(A167614(n+1))*A280865(n)`
-/

namespace A210271.P1322106357907411157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A167614 (n + 1)).toNat * A280865 n

end

end A210271.P1322106357907411157

/-! ## A210271.P11755792661803489290

`lcm(A033999(n), A210276(A167614(n+1)))`
-/

namespace A210271.P11755792661803489290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A210276 (A167614 (n + 1)).toNat)

end

end A210271.P11755792661803489290

/-!
# A210272: Half the number of (n+1)X5 0..2 arrays with every 2X2 subblock having two or three distinct clockwise edge differences.

The programs for A210272, there is no canonical definition to state claims against.
-/

/-! ## A210272.P9295074304031508115

`A210276(A145018(n+4))`
-/

namespace A210272.P9295074304031508115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A145018 (n + 4)).toNat

end

end A210272.P9295074304031508115

/-! ## A210272.P6997202167922893989

`A210276(A141214(n)+7)`
-/

namespace A210272.P6997202167922893989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A141214 n + 7).toNat

end

end A210272.P6997202167922893989

/-! ## A210272.P318997073078759851

`A210276(A052905(n)+9)`
-/

namespace A210272.P318997073078759851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A052905 n + 9).toNat

end

end A210272.P318997073078759851

/-! ## A210272.P8583719834946892246

`A210276(A167614(n+2)+1)`
-/

namespace A210272.P8583719834946892246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A167614 (n + 2) + 1).toNat

end

end A210272.P8583719834946892246

/-! ## A210272.P15475566413306095071

`A210276(A155212(n)+5)`
-/

namespace A210272.P15475566413306095071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A155212 n + 5).toNat

end

end A210272.P15475566413306095071

/-!
# A210273: Half the number of (n+1)X6 0..2 arrays with every 2X2 subblock having two or three distinct clockwise edge differences.

The programs for A210273, there is no canonical definition to state claims against.
-/

/-! ## A210273.P3257445109578348123

`A210276(A374005(n+1))`
-/

namespace A210273.P3257445109578348123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A374005 (n + 1)).toNat

end

end A210273.P3257445109578348123

/-! ## A210273.P9655527278363591708

`A210276(A000217(n+4)+5)`
-/

namespace A210273.P9655527278363591708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A000217 (n + 4) + 5).toNat

end

end A210273.P9655527278363591708

/-! ## A210273.P5522815214785064195

`A210276(eq[5, A004736(n+1)]+1)`
-/

namespace A210273.P5522815214785064195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210273.P5522815214785064195

/-!
# A210274: 

The programs for A210274, there is no canonical definition to state claims against.
-/

/-! ## A210274.P7960200506093540558

`A210276(A000217(n+5)+6)`
-/

namespace A210274.P7960200506093540558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210276 (A000217 (n + 5) + 6).toNat

end

end A210274.P7960200506093540558

/-!
# A210277: a(n) = (3*n)!/3^n.

The programs for A210277, the canonical program `A210277.P15324001074780751722` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210277 has offset 0).

The definition of A210277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210277.P15324001074780751722

`(3*n)!/3^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210277

/-- `(3*n)!/3^n` -/
def P15324001074780751722.Spec : Prop :=
  ∀ n, P15324001074780751722.a n = (A210277 n : ℚ)

end A210277

/-! ## A210277.P18445249619852262599

`2*C(3*n, 3)*a(n-1)` with `a(0)=1`
-/

namespace A210277.P18445249619852262599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Nat.choose (3 * n) 3 * a (n - 1))

end

end A210277.P18445249619852262599

namespace A210277

/-- `2*C(3*n, 3)*a(n-1)` -/
def P18445249619852262599.Spec : Prop :=
  ∀ n, (P18445249619852262599.a n : ℤ) = A210277 n

end A210277

/-! ## A210277.P4970310707851960271

`n*((n-1)*9*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A210277.P4970310707851960271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((((n : ℤ) - 1) * (9 * n : ℤ) + 2) * a (n - 1))

end

end A210277.P4970310707851960271

namespace A210277

/-- `n*((n-1)*9*n+2)*a(n-1)` -/
def P4970310707851960271.Spec : Prop :=
  ∀ n, P4970310707851960271.a n = A210277 n

end A210277

/-! ## A210277.P1028227862858366358

`n*(3*n-1)*(3*n-2)*a(n-1)` with `a(0)=1`
-/

namespace A210277.P1028227862858366358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (((3 * n : ℤ) - 1) * (((3 * n : ℤ) - 2) * a (n - 1)))

end

end A210277.P1028227862858366358

namespace A210277

/-- `n*(3*n-1)*(3*n-2)*a(n-1)` -/
def P1028227862858366358.Spec : Prop :=
  ∀ n, P1028227862858366358.a n = A210277 n

end A210277

/-! ## A210277.P9096696538278722889

`n!*A052502(n)`
-/

namespace A210277.P9096696538278722889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052502 n

end

end A210277.P9096696538278722889

namespace A210277

/-- `n!*A052502(n)` -/
def P9096696538278722889.Spec : Prop :=
  ∀ n, P9096696538278722889.a n = A210277 n

end A210277

/-!
# A210278: a(n) = (5n)!/5^n.

The programs for A210278, there is no canonical definition to state claims against.
-/

/-! ## A210278.P15319669604338646394

`n*(5*n-4)*(5*n-3)*(5*n-2)*(5*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A210278.P15319669604338646394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (((5 * n : ℤ) - 4) * (((5 * n : ℤ) - 3) * (((5 * n : ℤ) - 2) * (((5 * n : ℤ) - 1) * a (n - 1)))))

end

end A210278.P15319669604338646394

/-! ## A210278.P8779351274083317228

`n!*A052504(n)`
-/

namespace A210278.P8779351274083317228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052504 n

end

end A210278.P8779351274083317228

/-! ## A210278.P7750350515570014987

`A000142(n)*A052504(n)`
-/

namespace A210278.P7750350515570014987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052504 n

end

end A210278.P7750350515570014987

/-! ## A210278.P16883868712291309885

`∏[A158874(5*n+1)]/A158874(5*n+1)`
-/

namespace A210278.P16883868712291309885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158874 (5 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A158874 (5 * n + 1) : ℚ)

end

end A210278.P16883868712291309885

/-! ## A210278.P7785369059845559643

`(5*n)!/5^n`
-/

namespace A210278.P7785369059845559643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (5 * n) : ℚ) / (5 ^ n : ℚ)

end

end A210278.P7785369059845559643

/-!
# A210280: 

The programs for A210280, there is no canonical definition to state claims against.
-/

/-! ## A210280.P13030363847279690299

`(7*n)!/7^n`
-/

namespace A210280.P13030363847279690299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (7 * n) : ℚ) / (7 ^ n : ℚ)

end

end A210280.P13030363847279690299

/-!
# A210282: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant n.

The programs for A210282, there is no canonical definition to state claims against.
-/

/-! ## A210282.P15967705077721374263

`A210366(n)-A210291(n)`
-/

namespace A210282.P15967705077721374263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210366 n - A210291 n

end

end A210282.P15967705077721374263

/-! ## A210282.P6435532105440236243

`A210366(n)-(A210290(n)-(A211031(n)+A059306(n))/2)`
-/

namespace A210282.P6435532105440236243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210366 n : ℚ) - ((A210290 n : ℚ) - (A211031 n + A059306 n : ℚ) / 2)

end

end A210282.P6435532105440236243

/-! ## A210282.P16407913796410034666

`A209995(n)+A210366(n)-A210290(n)`
-/

namespace A210282.P16407913796410034666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209995 n + (A210366 n - A210290 n)

end

end A210282.P16407913796410034666

/-! ## A210282.P16847545925683721309

`A210366(n)-((A059306(n)+(n+1)²²)/2-A209995(n))`
-/

namespace A210282.P16847545925683721309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210366 n : ℚ) - ((A059306 n + (((n + 1) ^ 2) ^ 2 : ℤ) : ℚ) / 2 - (A209995 n : ℚ))

end

end A210282.P16847545925683721309

/-! ## A210282.P5678734507588943590

`A210366(n)-(A210371(n)+A210373(n)-A209995(n))`
-/

namespace A210282.P5678734507588943590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210366 n - (A210371 n + (A210373 n - A209995 n))

end

end A210282.P5678734507588943590

/-! ## A210282.P199691333657459439

`A210366(n)-(A210371(n)+A210370(n)/2-A209995(n))`
-/

namespace A210282.P199691333657459439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210366 n : ℚ) - ((A210371 n : ℚ) + (A210370 n : ℚ) / 2 - (A209995 n : ℚ))

end

end A210282.P199691333657459439

/-!
# A210286: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant = trace.

The programs for A210286, there is no canonical definition to state claims against.
-/

/-! ## A210286.P5222655145318196031

`A005843(n)+A004275(A049649(A004275(n)))`
-/

namespace A210286.P5222655145318196031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004275 (A049649 (A004275 n).toNat).toNat

end

end A210286.P5222655145318196031

/-! ## A210286.P14696256752500302314

`A055456(2*n+1)+A049702(2*n²)`
-/

namespace A210286.P14696256752500302314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (2 * n + 1) + A049702 (2 * n ^ 2)

end

end A210286.P14696256752500302314

/-!
# A210287: Triangle of coefficients of polynomials v(n,x) jointly generated with A209999; see the Formula section.

The programs for A210287, there is no canonical definition to state claims against.
-/

/-! ## A210287.P13926437630589035631

`A209583(n+1)+A210236(n+1)-A209753(n+1)`
-/

namespace A210287.P13926437630589035631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209583 (n + 1) + (A210236 (n + 1) - A209753 (n + 1))

end

end A210287.P13926437630589035631

/-! ## A210287.P13451109527952682967

`A210235(n+1)+A210236(n+1)-A209999(n+1)`
-/

namespace A210287.P13451109527952682967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210235 (n + 1) + (A210236 (n + 1) - A209999 (n + 1))

end

end A210287.P13451109527952682967

/-! ## A210287.P17585700460887522877

`A209999(n+2)-Δ[A210235(n+1)]`
-/

namespace A210287.P17585700460887522877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209999 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210287.P17585700460887522877

/-! ## A210287.P1970152622562132740

`A210235(n+1)+A209999(n+2)-A210235(n+2)`
-/

namespace A210287.P1970152622562132740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210235 (n + 1) + (A209999 (n + 2) - A210235 (n + 2))

end

end A210287.P1970152622562132740

/-!
# A210288: Number of 2 X 2 matrices with all elements in {0,1,...,n} and permanent = trace.

The programs for A210288, there is no canonical definition to state claims against.
-/

/-! ## A210288.P12062982736984169036

`A227586(n+1)+A132468(A000984(n))`
-/

namespace A210288.P12062982736984169036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227586 (n + 1) + A132468 (A000984 n).toNat

end

end A210288.P12062982736984169036

/-!
# A210290: Number of 2 X 2 matrices with all elements in {0,1,...,n} and nonnegative determinant.

The programs for A210290, there is no canonical definition to state claims against.
-/

/-! ## A210290.P3898616352994289630

`((n+1)^4+A059306(n))/2`
-/

namespace A210290.P3898616352994289630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 4 : ℤ) + A059306 n : ℚ) / 2

end

end A210290.P3898616352994289630

/-! ## A210290.P13888589528423505244

`A210373(n)+A210371(n)`
-/

namespace A210290.P13888589528423505244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210373 n + A210371 n

end

end A210290.P13888589528423505244

/-! ## A210290.P7217625337173615326

`A210371(n)+A210370(n)/2`
-/

namespace A210290.P7217625337173615326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210371 n : ℚ) + (A210370 n : ℚ) / 2

end

end A210290.P7217625337173615326

/-! ## A210290.P13856112978833292715

`A059306(n)+A210373(n)+A210372(n)`
-/

namespace A210290.P13856112978833292715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + (A210373 n + A210372 n)

end

end A210290.P13856112978833292715

/-! ## A210290.P14540311988661437071

`A210369(n)+A210373(n)-A210372(n)`
-/

namespace A210290.P14540311988661437071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n + (A210373 n - A210372 n)

end

end A210290.P14540311988661437071

/-! ## A210290.P10168778980923524742

`A210370(n)-(A210373(n)-A210371(n))`
-/

namespace A210290.P10168778980923524742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210370 n - (A210373 n - A210371 n)

end

end A210290.P10168778980923524742

/-! ## A210290.P17204544468105896651

`A210371(n)+(lt[1, A347633(n+1)]-(n+1))²*A014255(n)`
-/

namespace A210290.P17204544468105896651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210371 n + ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n + 1 : ℤ)) ^ 2 * A014255 n

end

end A210290.P17204544468105896651

/-! ## A210290.P6933357621641665383

`A059306(n)+A062801(n)/2`
-/

namespace A210290.P6933357621641665383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059306 n : ℚ) + (A062801 n : ℚ) / 2

end

end A210290.P6933357621641665383

/-! ## A210290.P2593763443477623136

`A210291(n)+A209995(n)`
-/

namespace A210290.P2593763443477623136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210291 n + A209995 n

end

end A210290.P2593763443477623136

/-!
# A210291: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant >n.

The programs for A210291, there is no canonical definition to state claims against.
-/

/-! ## A210291.P11615614410697265060

`A210290(n)-(A211031(n)+A059306(n))/2`
-/

namespace A210291.P11615614410697265060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210290 n : ℚ) - (A211031 n + A059306 n : ℚ) / 2

end

end A210291.P11615614410697265060

/-! ## A210291.P10501371701546542494

`A210366(n)-A210282(n)`
-/

namespace A210291.P10501371701546542494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210366 n - A210282 n

end

end A210291.P10501371701546542494

/-! ## A210291.P12691398172100496749

`A210290(n)-(A134506(n+1)+A183761(n+1)-A210366(n+1))`
-/

namespace A210291.P12691398172100496749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 n - (A134506 (n + 1) + (A183761 (n + 1) - A210366 (n + 1)))

end

end A210291.P12691398172100496749

/-! ## A210291.P5950800261871651860

`A210290(n)-A209995(n)`
-/

namespace A210291.P5950800261871651860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 n - A209995 n

end

end A210291.P5950800261871651860

/-! ## A210291.P8481343976374651733

`(A059306(n)+(n+1)²²)/2-A209995(n)`
-/

namespace A210291.P8481343976374651733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059306 n + (((n + 1) ^ 2) ^ 2 : ℤ) : ℚ) / 2 - (A209995 n : ℚ)

end

end A210291.P8481343976374651733

/-! ## A210291.P3095794108758172545

`A210371(n)+A210373(n)-A209995(n)`
-/

namespace A210291.P3095794108758172545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210371 n + (A210373 n - A209995 n)

end

end A210291.P3095794108758172545

/-! ## A210291.P18117489454422887368

`A210371(n)+A210370(n)/2-A209995(n)`
-/

namespace A210291.P18117489454422887368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210371 n : ℚ) + (A210370 n : ℚ) / 2 - (A209995 n : ℚ)

end

end A210291.P18117489454422887368

/-!
# A210292: 

The programs for A210292, there is no canonical definition to state claims against.
-/

/-! ## A210292.P5441831844293537893

`A210300((n+1)²+n²)`
-/

namespace A210292.P5441831844293537893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 ((n + 1) ^ 2 + n ^ 2)

end

end A210292.P5441831844293537893

/-! ## A210292.P3768089535971488150

`lcm(2, A210300(A001844(n)))`
-/

namespace A210292.P3768089535971488150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A210300 (A001844 n).toNat)

end

end A210292.P3768089535971488150

/-!
# A210293: Half the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having at most one duplicate clockwise edge difference.

The programs for A210293, there is no canonical definition to state claims against.
-/

/-! ## A210293.P6181180636806206050

`A210300(∑[n]+1)`
-/

namespace A210293.P6181180636806206050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210293.P6181180636806206050

/-! ## A210293.P1981717202836645895

`record[A103451(n)*A210300(n+1)]`
-/

namespace A210293.P1981717202836645895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A210300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210293.P1981717202836645895

/-! ## A210293.P11810351130434845953

`record[lcm(A197870(n), A210300(n+1))]`
-/

namespace A210293.P11810351130434845953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197870 n) (A210300 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210293.P11810351130434845953

/-! ## A210293.P15906930064180669292

`record[root(A210300(n+1), A002260(n+1))]`
-/

namespace A210293.P15906930064180669292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210300 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210293.P15906930064180669292

/-! ## A210293.P5527089167164638806

`record[gcd(A210300(n+1), A302528(n+1))]`
-/

namespace A210293.P5527089167164638806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210300 (n + 1)) (A302528 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210293.P5527089167164638806

/-!
# A210294: Half the number of (n+1)X3 0..3 arrays with every 2X2 subblock having at most one duplicate clockwise edge difference.

The programs for A210294, there is no canonical definition to state claims against.
-/

/-! ## A210294.P9239656532419565976

`A210300(∑[n+1]+2)`
-/

namespace A210294.P9239656532419565976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210294.P9239656532419565976

/-! ## A210294.P17222161707159694248

`record[lcm(A197870(n), A210300(n+2))]`
-/

namespace A210294.P17222161707159694248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197870 n) (A210300 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210294.P17222161707159694248

/-! ## A210294.P16475124198567488507

`record[gcd(A210300(n+3), A302528(n+1))]`
-/

namespace A210294.P16475124198567488507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210300 (n + 3)) (A302528 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210294.P16475124198567488507

/-! ## A210294.P6421861750174358705

`record[A210300(Δ[A003453(n+5)])]`
-/

namespace A210294.P6421861750174358705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210294.P6421861750174358705

/-! ## A210294.P7051180475624315457

`record[A210300(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A210294.P7051180475624315457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210294.P7051180475624315457

/-!
# A210295: Half the number of (n+1)X4 0..3 arrays with every 2X2 subblock having at most one duplicate clockwise edge difference.

The programs for A210295, there is no canonical definition to state claims against.
-/

/-! ## A210295.P11535466716191032241

`A210300(∑[n+2]+4)`
-/

namespace A210295.P11535466716191032241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210295.P11535466716191032241

/-!
# A210296: 

The programs for A210296, there is no canonical definition to state claims against.
-/

/-! ## A210296.P13727904445679016443

`A210300(A055999(n)+10)`
-/

namespace A210296.P13727904445679016443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (A055999 n + 10).toNat

end

end A210296.P13727904445679016443

/-! ## A210296.P10201632731950095966

`A210300(A027379(n+2))`
-/

namespace A210296.P10201632731950095966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (A027379 (n + 2)).toNat

end

end A210296.P10201632731950095966

/-! ## A210296.P1614523769829755674

`A210300(eq[4, A004736(n+1)]+1)`
-/

namespace A210296.P1614523769829755674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210296.P1614523769829755674

/-!
# A210297: 

The programs for A210297, there is no canonical definition to state claims against.
-/

/-! ## A210297.P4108127505771252748

`A210300(eq[5, A004736(n+1)]+1)`
-/

namespace A210297.P4108127505771252748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210297.P4108127505771252748

