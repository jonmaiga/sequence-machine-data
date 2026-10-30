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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A131400: A046854 + A065941 - I (Identity matrix).

The programs for A131400, the canonical program `A131400.P9116326732354589856` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131400 has offset 0).

The definition of A131400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131400.P9116326732354589856

`A131373(n)+A023532(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131400

/-- `A131373(n)+A023532(n)` -/
def P9116326732354589856.Spec : Prop :=
  ∀ n, P9116326732354589856.a n = A131400 n

theorem P9116326732354589856.correct : P9116326732354589856.Spec := by
  intro n
  simp only [A131400]

end A131400

/-! ## A131400.P12178954626130664865

`A131373(n)+Δ[A083920(n)]`
-/

namespace A131400.P12178954626130664865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131373 n + (f1 (n + 1) - f1 n)

end

end A131400.P12178954626130664865

namespace A131400

/-- `A131373(n)+Δ[A083920(n)]` -/
def P12178954626130664865.Spec : Prop :=
  ∀ n, P12178954626130664865.a n = A131400 n

end A131400

/-! ## A131400.P6226946180614398166

`A046854(n)+A023532(n)*A065941(n)`
-/

namespace A131400.P6226946180614398166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + A023532 n * A065941 n

end

end A131400.P6226946180614398166

namespace A131400

/-- `A046854(n)+A023532(n)*A065941(n)` -/
def P6226946180614398166.Spec : Prop :=
  ∀ n, P6226946180614398166.a n = A131400 n

end A131400

/-! ## A131400.P9335176008987383135

`A046854(n)+A065941(n)%A092392(n)`
-/

namespace A131400.P9335176008987383135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + Int.tmod (A065941 n) (A092392 n)

end

end A131400.P9335176008987383135

namespace A131400

/-- `A046854(n)+A065941(n)%A092392(n)` -/
def P9335176008987383135.Spec : Prop :=
  ∀ n, P9335176008987383135.a n = A131400 n

end A131400

/-! ## A131400.P7207595029994444753

`A065941(n)+A046854(n)%A117852(n)`
-/

namespace A131400.P7207595029994444753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + Int.tmod (A046854 n) (A117852 n)

end

end A131400.P7207595029994444753

namespace A131400

/-- `A065941(n)+A046854(n)%A117852(n)` -/
def P7207595029994444753.Spec : Prop :=
  ∀ n, P7207595029994444753.a n = A131400 n

end A131400

/-! ## A131400.P17801996624152007473

`A153764(A181133(n+1))+A065941(n)`
-/

namespace A131400.P17801996624152007473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A181133 (n + 1)).toNat + A065941 n

end

end A131400.P17801996624152007473

namespace A131400

/-- `A153764(A181133(n+1))+A065941(n)` -/
def P17801996624152007473.Spec : Prop :=
  ∀ n, P17801996624152007473.a n = A131400 n

end A131400

/-! ## A131400.P8826952566379547666

`A065941(n)+A131240(n)-A046854(n)`
-/

namespace A131400.P8826952566379547666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131240 n - A046854 n)

end

end A131400.P8826952566379547666

namespace A131400

/-- `A065941(n)+A131240(n)-A046854(n)` -/
def P8826952566379547666.Spec : Prop :=
  ∀ n, P8826952566379547666.a n = A131400 n

end A131400

/-! ## A131400.P7638838762703301872

`A065941(n)+A025480(A131240(n))`
-/

namespace A131400.P7638838762703301872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + A025480 (A131240 n).toNat

end

end A131400.P7638838762703301872

namespace A131400

/-- `A065941(n)+A025480(A131240(n))` -/
def P7638838762703301872.Spec : Prop :=
  ∀ n, P7638838762703301872.a n = A131400 n

end A131400

/-! ## A131400.P14719897830486703822

`A131373(n)+A001221(A130321(n))`
-/

namespace A131400.P14719897830486703822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131373 n + A001221 (A130321 n).toNat

end

end A131400.P14719897830486703822

namespace A131400

/-- `A131373(n)+A001221(A130321(n))` -/
def P14719897830486703822.Spec : Prop :=
  ∀ n, P14719897830486703822.a n = A131400 n

end A131400

/-! ## A131400.P8175624657120049414

`A133310(A131111(n))-A131402(n)`
-/

namespace A131400.P8175624657120049414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A131111 n).toNat - A131402 n

end

end A131400.P8175624657120049414

namespace A131400

/-- `A133310(A131111(n))-A131402(n)` -/
def P8175624657120049414.Spec : Prop :=
  ∀ n, P8175624657120049414.a n = A131400 n

end A131400

/-!
# A131401: Least number dividing Fibonacci(n) but not dividing Fibonacci(m) for m < n, or 0 if there is no such number.

The programs for A131401, there is no canonical definition to state claims against.
-/

/-! ## A131401.P11601441782568725982

`A061446(n+1)%A112468(A256381(3*n+5))`
-/

namespace A131401.P11601441782568725982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061446 (n + 1)) (A112468 (A256381 (3 * n + 5)).toNat)

end

end A131401.P11601441782568725982

/-! ## A131401.P11524158834690888929

`A061446(n+1)%A132077(3^A091598(n))`
-/

namespace A131401.P11524158834690888929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061446 (n + 1)) (A132077 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A091598 n : ℤ))).toNat)

end

end A131401.P11524158834690888929

/-! ## A131401.P17556377359694550332

`A061446(n+1)-A021913(2^n)`
-/

namespace A131401.P17556377359694550332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (n + 1) - A021913 (2 ^ n)

end

end A131401.P17556377359694550332

/-! ## A131401.P9585763800193404295

`A061446(n+1)-A049084(2^n)`
-/

namespace A131401.P9585763800193404295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (n + 1) - A049084 (2 ^ n)

end

end A131401.P9585763800193404295

/-! ## A131401.P547145985780810677

`A061446(n+1)*A075802(2^n)`
-/

namespace A131401.P547145985780810677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (n + 1) * A075802 (2 ^ n)

end

end A131401.P547145985780810677

/-!
# A131402: Triangle read by rows: 2*A007318 - (A046854 + A065941 - A000012) as infinite lower triangular matrices.

The programs for A131402, the canonical program `A131402.P8210763280089425655` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131402 has offset 0).

The definition of A131402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131402.P16183022925356047955

`ceil(A131404(n)/2)`
-/

namespace A131402.P16183022925356047955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131404 n : ℚ) / 2⌉

end

end A131402.P16183022925356047955

namespace A131402

/-- `ceil(A131404(n)/2)` -/
def P16183022925356047955.Spec : Prop :=
  ∀ n, P16183022925356047955.a n = A131402 n

end A131402

/-! ## A131402.P15016899134305664594

`A131399(n)-A014473(n)`
-/

namespace A131402.P15016899134305664594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131399 n - A014473 n

end

end A131402.P15016899134305664594

namespace A131402

/-- `A131399(n)-A014473(n)` -/
def P15016899134305664594.Spec : Prop :=
  ∀ n, P15016899134305664594.a n = A131402 n

theorem P15016899134305664594.correct : P15016899134305664594.Spec := by
  intro n
  simp only [A131402, Nat.add_sub_cancel, A131402.P15016899134305664594.a, A131402.P8210763280089425655.a, A014473, A014473.P14186955903002457323.a, A028326, A028326.P7676793339942299677.a, A131373, A131373.P5409400150504785590.a, A131399, A131399.P11219258702927112905.a, A007318, A007318.P11755526479805562006.a, A046854, A046854.P6321065027790251998.a, A065941, A065941.P15138820981250632951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131402

/-! ## A131402.P8210763280089425655

`A028326(n)-A131373(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131402

/-- `A028326(n)-A131373(n)` -/
def P8210763280089425655.Spec : Prop :=
  ∀ n, P8210763280089425655.a n = A131402 n

theorem P8210763280089425655.correct : P8210763280089425655.Spec := by
  intro n
  simp only [A131402]

end A131402

/-! ## A131402.P9711175553239317496

`round(A131404(n)/A040000(n))`
-/

namespace A131402.P9711175553239317496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131404 n : ℚ) / (A040000 n : ℚ))

end

end A131402.P9711175553239317496

namespace A131402

/-- `round(A131404(n)/A040000(n))` -/
def P9711175553239317496.Spec : Prop :=
  ∀ n, P9711175553239317496.a n = A131402 n

end A131402

/-! ## A131402.P49919538295897502

`A131399(n)+1-A007318(n)`
-/

namespace A131402.P49919538295897502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131399 n + (1 - A007318 n)

end

end A131402.P49919538295897502

namespace A131402

/-- `A131399(n)+1-A007318(n)` -/
def P49919538295897502.Spec : Prop :=
  ∀ n, P49919538295897502.a n = A131402 n

end A131402

/-! ## A131402.P17383107008284314256

`A131767(n)+1-A046854(n)`
-/

namespace A131402.P17383107008284314256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131767 n + (1 - A046854 n)

end

end A131402.P17383107008284314256

namespace A131402

/-- `A131767(n)+1-A046854(n)` -/
def P17383107008284314256.Spec : Prop :=
  ∀ n, P17383107008284314256.a n = A131402 n

end A131402

/-! ## A131402.P15125184344583237418

`A131350(n)+1-A131374(n)`
-/

namespace A131402.P15125184344583237418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131350 n + (1 - A131374 n)

end

end A131402.P15125184344583237418

namespace A131402

/-- `A131350(n)+1-A131374(n)` -/
def P15125184344583237418.Spec : Prop :=
  ∀ n, P15125184344583237418.a n = A131402 n

theorem P15125184344583237418.correct : P15125184344583237418.Spec := by
  intro n
  simp only [A131402, Nat.add_sub_cancel, A131402.P15125184344583237418.a, A131402.P8210763280089425655.a, A028326, A028326.P7676793339942299677.a, A131350, A131350.P11902932173127582114.a, A131373, A131373.P5409400150504785590.a, A131374, A131374.P1343424990653634680.a, A046854, A046854.P6321065027790251998.a, A065941, A065941.P15138820981250632951.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131402

/-! ## A131402.P3407792744515418738

`round(A131404(n)/A000040(gcd(n, n+1)))`
-/

namespace A131402.P3407792744515418738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131404 n : ℚ) / (A000040 (Nat.gcd n (n + 1)) : ℚ))

end

end A131402.P3407792744515418738

namespace A131402

/-- `round(A131404(n)/A000040(gcd(n, n+1)))` -/
def P3407792744515418738.Spec : Prop :=
  ∀ n, P3407792744515418738.a n = A131402 n

end A131402

/-! ## A131402.P1455062635259941810

`(A131404(n)+1)/A020639(2*(n+1))`
-/

namespace A131402.P1455062635259941810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131404 n + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A131402.P1455062635259941810

namespace A131402

/-- `(A131404(n)+1)/A020639(2*(n+1))` -/
def P1455062635259941810.Spec : Prop :=
  ∀ n, P1455062635259941810.a n = (A131402 n : ℚ)

end A131402

/-! ## A131402.P5040446930241814832

`(A131404(n)+1)/(A020725(n+1)-n)`
-/

namespace A131402.P5040446930241814832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131404 n + 1 : ℚ) / (A020725 (n + 1) - (n : ℤ) : ℚ)

end

end A131402.P5040446930241814832

namespace A131402

/-- `(A131404(n)+1)/(A020725(n+1)-n)` -/
def P5040446930241814832.Spec : Prop :=
  ∀ n, P5040446930241814832.a n = (A131402 n : ℚ)

theorem P5040446930241814832.correct : P5040446930241814832.Spec := by
  intro n
  simp only [A131402, Nat.add_sub_cancel, A131402.P5040446930241814832.a, A131402.P8210763280089425655.a, A020725, A020725.P9662279067013051637.a, A028326, A028326.P7676793339942299677.a, A131373, A131373.P5409400150504785590.a, A131404, A131404.P9939978111616985627.a, A046854, A046854.P6321065027790251998.a, A065941, A065941.P15138820981250632951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131402

/-! ## A131402.P7106643649357639200

`round(A131404(n)/A000005(A007918(n)))`
-/

namespace A131402.P7106643649357639200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131404 n : ℚ) / (A000005 (A007918 n).toNat : ℚ))

end

end A131402.P7106643649357639200

namespace A131402

/-- `round(A131404(n)/A000005(A007918(n)))` -/
def P7106643649357639200.Spec : Prop :=
  ∀ n, P7106643649357639200.a n = A131402 n

end A131402

/-! ## A131402.P763910009305023934

`round(A131404(n)/A074723(A304042(n)))`
-/

namespace A131402.P763910009305023934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131404 n : ℚ) / (A074723 (A304042 n).toNat : ℚ))

end

end A131402.P763910009305023934

namespace A131402

/-- `round(A131404(n)/A074723(A304042(n)))` -/
def P763910009305023934.Spec : Prop :=
  ∀ n, P763910009305023934.a n = A131402 n

end A131402

/-! ## A131402.P5929637262670770093

`(A131404(n)+1)/A010673(2*n+1)`
-/

namespace A131402.P5929637262670770093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131404 n + 1 : ℚ) / (A010673 (2 * n + 1) : ℚ)

end

end A131402.P5929637262670770093

namespace A131402

/-- `(A131404(n)+1)/A010673(2*n+1)` -/
def P5929637262670770093.Spec : Prop :=
  ∀ n, P5929637262670770093.a n = (A131402 n : ℚ)

end A131402

/-! ## A131402.P3987213193649742193

`(A131404(n)+1)/A000005(A059644(n+1))`
-/

namespace A131402.P3987213193649742193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131404 n + 1 : ℚ) / (A000005 (A059644 (n + 1)).toNat : ℚ)

end

end A131402.P3987213193649742193

namespace A131402

/-- `(A131404(n)+1)/A000005(A059644(n+1))` -/
def P3987213193649742193.Spec : Prop :=
  ∀ n, P3987213193649742193.a n = (A131402 n : ℚ)

end A131402

/-! ## A131402.P16546752949679240767

`(A131404(n)+A014963(6*(n+1)))/2`
-/

namespace A131402.P16546752949679240767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131404 n + A014963 (6 * (n + 1)) : ℚ) / 2

end

end A131402.P16546752949679240767

namespace A131402

/-- `(A131404(n)+A014963(6*(n+1)))/2` -/
def P16546752949679240767.Spec : Prop :=
  ∀ n, P16546752949679240767.a n = (A131402 n : ℚ)

end A131402

/-! ## A131402.P15634352031325914707

`A014682(A131404(n)+1)`
-/

namespace A131402.P15634352031325914707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A131404 n + 1).toNat

end

end A131402.P15634352031325914707

namespace A131402

/-- `A014682(A131404(n)+1)` -/
def P15634352031325914707.Spec : Prop :=
  ∀ n, P15634352031325914707.a n = A131402 n

end A131402

/-! ## A131402.P10671774486641063180

`A328399(A131404(n)-1)`
-/

namespace A131402.P10671774486641063180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A131404 n - 1).toNat

end

end A131402.P10671774486641063180

namespace A131402

/-- `A328399(A131404(n)-1)` -/
def P10671774486641063180.Spec : Prop :=
  ∀ n, P10671774486641063180.a n = A131402 n

end A131402

/-! ## A131402.P1718159051768499470

`A328399(xor(1, A131404(n)))`
-/

namespace A131402.P1718159051768499470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (Int.xor 1 (A131404 n)).toNat

end

end A131402.P1718159051768499470

namespace A131402

/-- `A328399(xor(1, A131404(n)))` -/
def P1718159051768499470.Spec : Prop :=
  ∀ n, P1718159051768499470.a n = A131402 n

end A131402

/-! ## A131402.P18040428734751177561

`A246425(A131404(n))`
-/

namespace A131402.P18040428734751177561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A131404 n).toNat

end

end A131402.P18040428734751177561

namespace A131402

/-- `A246425(A131404(n))` -/
def P18040428734751177561.Spec : Prop :=
  ∀ n, P18040428734751177561.a n = A131402 n

end A131402

/-! ## A131402.P13306672584730491266

`A175126(A131404(n)+1)`
-/

namespace A131402.P13306672584730491266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A131404 n + 1).toNat

end

end A131402.P13306672584730491266

namespace A131402

/-- `A175126(A131404(n)+1)` -/
def P13306672584730491266.Spec : Prop :=
  ∀ n, P13306672584730491266.a n = A131402 n

end A131402

/-!
# A131403: Row sums of triangle A131402.

The programs for A131403, the canonical program `A131403.P11515488335241019816` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131403 has offset 0).

The definition of A131403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131403.P11515488335241019816

`ogf((1-3x+3x^2-2x^3+2x^4)/(1-5x+8x^2-3x^3-3x^4+2x^5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131403

/-- `ogf((1-3x+3x^2-2x^3+2x^4)/(1-5x+8x^2-3x^3-3x^4+2x^5))` -/
def P11515488335241019816.Spec : Prop :=
  ∀ n, P11515488335241019816.a n = A131403 n

theorem P11515488335241019816.correct : P11515488335241019816.Spec := by
  intro n
  simp only [A131403]

end A131403

/-! ## A131403.P2178113084188319012

`A119587(n+1)+n`
-/

namespace A131403.P2178113084188319012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 (n + 1) + (n : ℤ)

end

end A131403.P2178113084188319012

namespace A131403

/-- `A119587(n+1)+n` -/
def P2178113084188319012.Spec : Prop :=
  ∀ n, P2178113084188319012.a n = A131403 n

end A131403

/-! ## A131403.P9814698521698163511

`∑[2^n]-A104161(n)`
-/

namespace A131403.P9814698521698163511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A104161 n

end

end A131403.P9814698521698163511

namespace A131403

/-- `∑[2^n]-A104161(n)` -/
def P9814698521698163511.Spec : Prop :=
  ∀ n, P9814698521698163511.a n = A131403 n

end A131403

/-! ## A131403.P15784263090365667327

`A167821(n+1)+1+n`
-/

namespace A131403.P15784263090365667327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 1) + 1 + (n : ℤ)

end

end A131403.P15784263090365667327

namespace A131403

/-- `A167821(n+1)+1+n` -/
def P15784263090365667327.Spec : Prop :=
  ∀ n, P15784263090365667327.a n = A131403 n

end A131403

/-! ## A131403.P3620124850651610395

`2*A008466(n)+n+1`
-/

namespace A131403.P3620124850651610395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008466 n + (n + 1 : ℤ)

end

end A131403.P3620124850651610395

namespace A131403

/-- `2*A008466(n)+n+1` -/
def P3620124850651610395.Spec : Prop :=
  ∀ n, P3620124850651610395.a n = A131403 n

end A131403

/-! ## A131403.P1260900997101174772

`2^(n+1)-A131269(n)`
-/

namespace A131403.P1260900997101174772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A131269 n

end

end A131403.P1260900997101174772

namespace A131403

/-- `2^(n+1)-A131269(n)` -/
def P1260900997101174772.Spec : Prop :=
  ∀ n, P1260900997101174772.a n = A131403 n

end A131403

/-! ## A131403.P12196079214270635961

`∑[2^n]-∑[2*A000045(n)]+n`
-/

namespace A131403.P12196079214270635961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

end

end A131403.P12196079214270635961

namespace A131403

/-- `∑[2^n]-∑[2*A000045(n)]+n` -/
def P12196079214270635961.Spec : Prop :=
  ∀ n, P12196079214270635961.a n = A131403 n

end A131403

/-! ## A131403.P14430814099227657121

`2*(2^n-A000045(n+2))+1+n`
-/

namespace A131403.P14430814099227657121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - A000045 (n + 2)) + 1 + (n : ℤ)

end

end A131403.P14430814099227657121

namespace A131403

/-- `2*(2^n-A000045(n+2))+1+n` -/
def P14430814099227657121.Spec : Prop :=
  ∀ n, P14430814099227657121.a n = A131403 n

end A131403

/-! ## A131403.P2555001445215193495

`2*(A000045(n-1)+a(n-1))+1-n` with `a(0)=1`
-/

namespace A131403.P2555001445215193495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A000045 (n - 1) + a (n - 1)) + (1 - (n : ℤ))

end

end A131403.P2555001445215193495

namespace A131403

/-- `2*(A000045(n-1)+a(n-1))+1-n` -/
def P2555001445215193495.Spec : Prop :=
  ∀ n, P2555001445215193495.a n = A131403 n

end A131403

/-! ## A131403.P3631244375243788420

`A234933(n)+A132736(n)`
-/

namespace A131403.P3631244375243788420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234933 n + A132736 n

end

end A131403.P3631244375243788420

namespace A131403

/-- `A234933(n)+A132736(n)` -/
def P3631244375243788420.Spec : Prop :=
  ∀ n, P3631244375243788420.a n = A131403 n

end A131403

/-! ## A131403.P9762504959825889638

`A377728(n)+A109613(n)`
-/

namespace A131403.P9762504959825889638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377728 n + A109613 n

end

end A131403.P9762504959825889638

namespace A131403

/-- `A377728(n)+A109613(n)` -/
def P9762504959825889638.Spec : Prop :=
  ∀ n, P9762504959825889638.a n = A131403 n

end A131403

/-! ## A131403.P15290275015436070137

`A101351(n+1)-A000126(n+1)`
-/

namespace A131403.P15290275015436070137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101351 (n + 1) - A000126 (n + 1)

end

end A131403.P15290275015436070137

namespace A131403

/-- `A101351(n+1)-A000126(n+1)` -/
def P15290275015436070137.Spec : Prop :=
  ∀ n, P15290275015436070137.a n = A131403 n

end A131403

/-! ## A131403.P2400523525695150046

`A005126(n+1)-A001588(n+2)`
-/

namespace A131403.P2400523525695150046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 (n + 1) - A001588 (n + 2)

end

end A131403.P2400523525695150046

namespace A131403

/-- `A005126(n+1)-A001588(n+2)` -/
def P2400523525695150046.Spec : Prop :=
  ∀ n, P2400523525695150046.a n = A131403 n

end A131403

/-! ## A131403.P16187559639975809991

`A000045(n+1)+A232580(n+1)+n`
-/

namespace A131403.P16187559639975809991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A232580 (n + 1) + (n : ℤ))

end

end A131403.P16187559639975809991

namespace A131403

/-- `A000045(n+1)+A232580(n+1)+n` -/
def P16187559639975809991.Spec : Prop :=
  ∀ n, P16187559639975809991.a n = A131403 n

end A131403

/-! ## A131403.P3985814923542072783

`A000079(n+1)-A001595(n+1)+n`
-/

namespace A131403.P3985814923542072783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A001595 (n + 1) + (n : ℤ)

end

end A131403.P3985814923542072783

namespace A131403

/-- `A000079(n+1)-A001595(n+1)+n` -/
def P3985814923542072783.Spec : Prop :=
  ∀ n, P3985814923542072783.a n = A131403 n

end A131403

/-! ## A131403.P7687842030842528640

`A000225(n+1)-A019274(n+2)+n`
-/

namespace A131403.P7687842030842528640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A019274 (n + 2) + (n : ℤ)

end

end A131403.P7687842030842528640

namespace A131403

/-- `A000225(n+1)-A019274(n+2)+n` -/
def P7687842030842528640.Spec : Prop :=
  ∀ n, P7687842030842528640.a n = A131403 n

end A131403

/-! ## A131403.P17880628978878931223

`A027934(n+1)-A000071(n+2)+n`
-/

namespace A131403.P17880628978878931223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 1) - A000071 (n + 2) + (n : ℤ)

end

end A131403.P17880628978878931223

namespace A131403

/-- `A027934(n+1)-A000071(n+2)+n` -/
def P17880628978878931223.Spec : Prop :=
  ∀ n, P17880628978878931223.a n = A131403 n

end A131403

/-! ## A131403.P9164581894854283356

`A083318(n+1)-A128588(n+2)+n`
-/

namespace A131403.P9164581894854283356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (n + 1) - A128588 (n + 2) + (n : ℤ)

end

end A131403.P9164581894854283356

namespace A131403

/-- `A083318(n+1)-A128588(n+2)+n` -/
def P9164581894854283356.Spec : Prop :=
  ∀ n, P9164581894854283356.a n = A131403 n

end A131403

/-! ## A131403.P117238800045483395

`and(n-A001595(n+1), A140253(n+1))`
-/

namespace A131403.P117238800045483395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A001595 (n + 1)) (A140253 (n + 1))

end

end A131403.P117238800045483395

namespace A131403

/-- `and(n-A001595(n+1), A140253(n+1))` -/
def P117238800045483395.Spec : Prop :=
  ∀ n, P117238800045483395.a n = A131403 n

end A131403

/-! ## A131403.P18232520097132528572

`(A131405(n)+n+1)/2`
-/

namespace A131403.P18232520097132528572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131405 n + (n + 1 : ℤ) : ℚ) / 2

end

end A131403.P18232520097132528572

namespace A131403

/-- `(A131405(n)+n+1)/2` -/
def P18232520097132528572.Spec : Prop :=
  ∀ n, P18232520097132528572.a n = (A131403 n : ℚ)

end A131403

/-!
# A131404: a(n) = 2*A131402(n) - 1.

The programs for A131404, the canonical program `A131404.P9939978111616985627` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131404 has offset 0).

The definition of A131404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131404.P9939978111616985627

`2*A131402(n)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131404

/-- `2*A131402(n)-1` -/
def P9939978111616985627.Spec : Prop :=
  ∀ n, P9939978111616985627.a n = A131404 n

theorem P9939978111616985627.correct : P9939978111616985627.Spec := by
  intro n
  simp only [A131404]

end A131404

/-! ## A131404.P1864619420208410477

`2*A131767(n)-A131270(n)`
-/

namespace A131404.P1864619420208410477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131767 n - A131270 n

end

end A131404.P1864619420208410477

namespace A131404

/-- `2*A131767(n)-A131270(n)` -/
def P1864619420208410477.Spec : Prop :=
  ∀ n, P1864619420208410477.a n = A131404 n

end A131404

/-! ## A131404.P3422105562388450627

`A131402(n)+A131402(n)-gcd(2, A005408(n))`
-/

namespace A131404.P3422105562388450627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131402 n + (A131402 n - (Int.gcd 2 (A005408 n) : ℤ))

end

end A131404.P3422105562388450627

namespace A131404

/-- `A131402(n)+A131402(n)-gcd(2, A005408(n))` -/
def P3422105562388450627.Spec : Prop :=
  ∀ n, P3422105562388450627.a n = A131404 n

end A131404

/-! ## A131404.P3401404364700014756

`∑{d}[A116895(n+2), A131402(n)-A001222(#)]`
-/

namespace A131404.P3401404364700014756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116895 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A131402 n - A001222 d)

end

end A131404.P3401404364700014756

namespace A131404

/-- `∑{d}[A116895(n+2), A131402(n)-A001222(#)]` -/
def P3401404364700014756.Spec : Prop :=
  ∀ n, P3401404364700014756.a n = A131404 n

end A131404

/-! ## A131404.P12106159939968156813

`abs(A000038(n)-(A131402(n)+A131402(n)-1))`
-/

namespace A131404.P12106159939968156813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - (A131402 n + (A131402 n - 1))|

end

end A131404.P12106159939968156813

namespace A131404

/-- `abs(A000038(n)-(A131402(n)+A131402(n)-1))` -/
def P12106159939968156813.Spec : Prop :=
  ∀ n, P12106159939968156813.a n = A131404 n

end A131404

/-! ## A131404.P15580467469828282798

`A045991(n)%2+A131402(n)+A131402(n)-1`
-/

namespace A131404.P15580467469828282798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045991 n) 2 + (A131402 n + (A131402 n - 1))

end

end A131404.P15580467469828282798

namespace A131404

/-- `A045991(n)%2+A131402(n)+A131402(n)-1` -/
def P15580467469828282798.Spec : Prop :=
  ∀ n, P15580467469828282798.a n = A131404 n

end A131404

/-! ## A131404.P14704923690900245910

`A131402(n)+A131402(n)-A001222(A058302(n+1))`
-/

namespace A131404.P14704923690900245910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131402 n + (A131402 n - A001222 (A058302 (n + 1)).toNat)

end

end A131404.P14704923690900245910

namespace A131404

/-- `A131402(n)+A131402(n)-A001222(A058302(n+1))` -/
def P14704923690900245910.Spec : Prop :=
  ∀ n, P14704923690900245910.a n = A131404 n

end A131404

/-! ## A131404.P13971366782542248692

`A000027(A131402(n)+A131402(n)-1)`
-/

namespace A131404.P13971366782542248692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A131402 n + (A131402 n - 1)).toNat

end

end A131404.P13971366782542248692

namespace A131404

/-- `A000027(A131402(n)+A131402(n)-1)` -/
def P13971366782542248692.Spec : Prop :=
  ∀ n, P13971366782542248692.a n = A131404 n

end A131404

/-! ## A131404.P12410999887917505254

`A000027(A131402(n)-(1-A131402(n)))`
-/

namespace A131404.P12410999887917505254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A131402 n - (1 - A131402 n)).toNat

end

end A131404.P12410999887917505254

namespace A131404

/-- `A000027(A131402(n)-(1-A131402(n)))` -/
def P12410999887917505254.Spec : Prop :=
  ∀ n, P12410999887917505254.a n = A131404 n

end A131404

/-! ## A131404.P4254798440264699757

`A131402(n)+A131402(n)-A347134(A006450(n+1))`
-/

namespace A131404.P4254798440264699757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131402 n + (A131402 n - A347134 (A006450 (n + 1)).toNat)

end

end A131404.P4254798440264699757

namespace A131404

/-- `A131402(n)+A131402(n)-A347134(A006450(n+1))` -/
def P4254798440264699757.Spec : Prop :=
  ∀ n, P4254798440264699757.a n = A131404 n

end A131404

/-! ## A131404.P9047083317460321542

`A000265(A131402(n)+A131402(n)-1)`
-/

namespace A131404.P9047083317460321542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A131402 n + (A131402 n - 1)).toNat

end

end A131404.P9047083317460321542

namespace A131404

/-- `A000265(A131402(n)+A131402(n)-1)` -/
def P9047083317460321542.Spec : Prop :=
  ∀ n, P9047083317460321542.a n = A131404 n

end A131404

/-! ## A131404.P255920063186823414

`A000265(A131402(n)-(1-A131402(n)))`
-/

namespace A131404.P255920063186823414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A131402 n - (1 - A131402 n)).toNat

end

end A131404.P255920063186823414

namespace A131404

/-- `A000265(A131402(n)-(1-A131402(n)))` -/
def P255920063186823414.Spec : Prop :=
  ∀ n, P255920063186823414.a n = A131404 n

end A131404

/-! ## A131404.P3080191472539934802

`A004273(A131402(n))`
-/

namespace A131404.P3080191472539934802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A131402 n).toNat

end

end A131404.P3080191472539934802

namespace A131404

/-- `A004273(A131402(n))` -/
def P3080191472539934802.Spec : Prop :=
  ∀ n, P3080191472539934802.a n = A131404 n

end A131404

/-! ## A131404.P4433403927658625848

`A005408(A131402(n)-1)`
-/

namespace A131404.P4433403927658625848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A131402 n - 1).toNat

end

end A131404.P4433403927658625848

namespace A131404

/-- `A005408(A131402(n)-1)` -/
def P4433403927658625848.Spec : Prop :=
  ∀ n, P4433403927658625848.a n = A131404 n

end A131404

/-! ## A131404.P16235651485700291375

`A026741(A131402(n)+A131402(n)-1)`
-/

namespace A131404.P16235651485700291375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A131402 n + (A131402 n - 1)).toNat

end

end A131404.P16235651485700291375

namespace A131404

/-- `A026741(A131402(n)+A131402(n)-1)` -/
def P16235651485700291375.Spec : Prop :=
  ∀ n, P16235651485700291375.a n = A131404 n

end A131404

/-! ## A131404.P13787014791102903161

`A026741(A131402(n)-(1-A131402(n)))`
-/

namespace A131404.P13787014791102903161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A131402 n - (1 - A131402 n)).toNat

end

end A131404.P13787014791102903161

namespace A131404

/-- `A026741(A131402(n)-(1-A131402(n)))` -/
def P13787014791102903161.Spec : Prop :=
  ∀ n, P13787014791102903161.a n = A131404 n

end A131404

/-!
# A131405: Row sums of triangle A131404.

The programs for A131405, the canonical program `A131405.P10882902974389603973` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131405 has offset 0).

The definition of A131405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131405.P10882902974389603973

`ogf((1-3x+5x^2-6x^3+4x^4)/(1-5x+8x^2-3x^3-3x^4+2x^5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131405

/-- `ogf((1-3x+5x^2-6x^3+4x^4)/(1-5x+8x^2-3x^3-3x^4+2x^5))` -/
def P10882902974389603973.Spec : Prop :=
  ∀ n, P10882902974389603973.a n = A131405 n

theorem P10882902974389603973.correct : P10882902974389603973.Spec := by
  intro n
  simp only [A131405]

end A131405

/-! ## A131405.P5052576782179336205

`2-n+2^n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A131405.P5052576782179336205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (n : ℤ) + ((2 ^ n : ℤ) + (a (n - 1) + a (n - 2)))

end

end A131405.P5052576782179336205

namespace A131405

/-- `2-n+2^n+a(n-1)+a(n-2)` -/
def P5052576782179336205.Spec : Prop :=
  ∀ n, P5052576782179336205.a n = A131405 n

end A131405

/-! ## A131405.P5958253658895241040

`2*A131403(n)-(n+1)`
-/

namespace A131405.P5958253658895241040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131403 n - (n + 1 : ℤ)

end

end A131405.P5958253658895241040

namespace A131405

/-- `2*A131403(n)-(n+1)` -/
def P5958253658895241040.Spec : Prop :=
  ∀ n, P5958253658895241040.a n = A131405 n

end A131405

/-! ## A131405.P5640982197137695948

`4*A008466(n)+1+n`
-/

namespace A131405.P5640982197137695948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008466 n + 1 + (n : ℤ)

end

end A131405.P5640982197137695948

namespace A131405

/-- `4*A008466(n)+1+n` -/
def P5640982197137695948.Spec : Prop :=
  ∀ n, P5640982197137695948.a n = A131405 n

end A131405

/-! ## A131405.P14087393830810254390

`2*A167821(n+1)+1+n`
-/

namespace A131405.P14087393830810254390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167821 (n + 1) + 1 + (n : ℤ)

end

end A131405.P14087393830810254390

namespace A131405

/-- `2*A167821(n+1)+1+n` -/
def P14087393830810254390.Spec : Prop :=
  ∀ n, P14087393830810254390.a n = A131405 n

end A131405

/-! ## A131405.P205069076713527340

`2*A119587(n+1)+n-1`
-/

namespace A131405.P205069076713527340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119587 (n + 1) + ((n : ℤ) - 1)

end

end A131405.P205069076713527340

namespace A131405

/-- `2*A119587(n+1)+n-1` -/
def P205069076713527340.Spec : Prop :=
  ∀ n, P205069076713527340.a n = A131405 n

end A131405

/-! ## A131405.P2042151617700356879

`A167821(n+1)+A131403(n)`
-/

namespace A131405.P2042151617700356879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 1) + A131403 n

end

end A131405.P2042151617700356879

namespace A131405

/-- `A167821(n+1)+A131403(n)` -/
def P2042151617700356879.Spec : Prop :=
  ∀ n, P2042151617700356879.a n = A131405 n

end A131405

/-! ## A131405.P14564122751108588875

`∑[A126646(n)]-(A192952(n)+n)`
-/

namespace A131405.P14564122751108588875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A192952 n + (n : ℤ))

end

end A131405.P14564122751108588875

namespace A131405

/-- `∑[A126646(n)]-(A192952(n)+n)` -/
def P14564122751108588875.Spec : Prop :=
  ∀ n, P14564122751108588875.a n = A131405 n

end A131405

/-! ## A131405.P10349546083091999531

`A001478(n+1)+2*A131403(n)`
-/

namespace A131405.P10349546083091999531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A131403 n

end

end A131405.P10349546083091999531

namespace A131405

/-- `A001478(n+1)+2*A131403(n)` -/
def P10349546083091999531.Spec : Prop :=
  ∀ n, P10349546083091999531.a n = A131405 n

end A131405

/-! ## A131405.P10447919138904528090

`and(n-A022403(n+1), A126646(n+1))`
-/

namespace A131405.P10447919138904528090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A022403 (n + 1)) (A126646 (n + 1))

end

end A131405.P10447919138904528090

namespace A131405

/-- `and(n-A022403(n+1), A126646(n+1))` -/
def P10447919138904528090.Spec : Prop :=
  ∀ n, P10447919138904528090.a n = A131405 n

end A131405

/-! ## A131405.P1142619371116033442

`∑[A027934(n+1)+1]-A000032(n+1)`
-/

namespace A131405.P1142619371116033442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000032 (n + 1)

end

end A131405.P1142619371116033442

namespace A131405

/-- `∑[A027934(n+1)+1]-A000032(n+1)` -/
def P1142619371116033442.Spec : Prop :=
  ∀ n, P1142619371116033442.a n = A131405 n

end A131405

/-! ## A131405.P12237960155464552533

`A074878(n+1)+A074878(n+1)-A000325(n+1)`
-/

namespace A131405.P12237960155464552533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 1) + (A074878 (n + 1) - A000325 (n + 1))

end

end A131405.P12237960155464552533

namespace A131405

/-- `A074878(n+1)+A074878(n+1)-A000325(n+1)` -/
def P12237960155464552533.Spec : Prop :=
  ∀ n, P12237960155464552533.a n = A131405 n

end A131405

/-!
# A131406: 3*A128174 - 2*A000012(signed).

The programs for A131406, the canonical program `A131406.P1022098595892384700` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131406 has offset 1).

The definition of A131406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131406.P1022098595892384700

`C(2, T(n-1,k))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131406

/-- `C(2, T(n-1,k))` -/
def P1022098595892384700.Spec : Prop :=
  ∀ n, (P1022098595892384700.a n : ℤ) = A131406 (n + 1)

theorem P1022098595892384700.correct : P1022098595892384700.Spec := by
  intro n
  simp only [A131406, Nat.add_sub_cancel]

end A131406

/-! ## A131406.P15433862681290323270

`a(T(n-1,k))` with `a(0)=1, a(1)=2`
-/

namespace A131406.P15433862681290323270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.triUp a n)

end

end A131406.P15433862681290323270

namespace A131406

/-- `a(T(n-1,k))` -/
def P15433862681290323270.Spec : Prop :=
  ∀ n, (P15433862681290323270.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P12027895381872544775

`gcd(T(n-1,k+1), T(n-1,k-1))` with `a(0)=1, a(1)=2`
-/

namespace A131406.P12027895381872544775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triUpLeft a n)

end

end A131406.P12027895381872544775

namespace A131406

/-- `gcd(T(n-1,k+1), T(n-1,k-1))` -/
def P12027895381872544775.Spec : Prop :=
  ∀ n, (P12027895381872544775.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P1820957176076082659

`or(T(n-1,k+1), T(n-1,k-1))` with `a(0)=1, a(1)=2`
-/

namespace A131406.P1820957176076082659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triUpLeft a n)

end

end A131406.P1820957176076082659

namespace A131406

/-- `or(T(n-1,k+1), T(n-1,k-1))` -/
def P1820957176076082659.Spec : Prop :=
  ∀ n, (P1820957176076082659.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P17946386469327962580

`T(n-1,k)%2+1` with `a(0)=1`
-/

namespace A131406.P17946386469327962580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n % 2 + 1

end

end A131406.P17946386469327962580

namespace A131406

/-- `T(n-1,k)%2+1` -/
def P17946386469327962580.Spec : Prop :=
  ∀ n, (P17946386469327962580.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P4551705737244822810

`gcd(2, 1-T(n-1,k))` with `a(0)=1`
-/

namespace A131406.P4551705737244822810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 2 (1 - ((SequenceMachineLib.triUp a n : ℕ) : ℤ))

end

end A131406.P4551705737244822810

namespace A131406

/-- `gcd(2, 1-T(n-1,k))` -/
def P4551705737244822810.Spec : Prop :=
  ∀ n, (P4551705737244822810.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P5732329768468556274

`and(1, T(n-1,k))+1` with `a(0)=1`
-/

namespace A131406.P5732329768468556274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (SequenceMachineLib.triUp a n) + 1

end

end A131406.P5732329768468556274

namespace A131406

/-- `and(1, T(n-1,k))+1` -/
def P5732329768468556274.Spec : Prop :=
  ∀ n, (P5732329768468556274.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P9535960541639804103

`1+col(3-T(n-1,k))` with `a(0)=1`
-/

namespace A131406.P9535960541639804103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + SequenceMachineLib.triCol (3 - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)).toNat

end

end A131406.P9535960541639804103

namespace A131406

/-- `1+col(3-T(n-1,k))` -/
def P9535960541639804103.Spec : Prop :=
  ∀ n, (P9535960541639804103.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P3800333156962576294

`val(T(n-1,k)+1, 2)+1` with `a(0)=1`
-/

namespace A131406.P3800333156962576294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (SequenceMachineLib.triUp a n + 1) 2 + 1

end

end A131406.P3800333156962576294

namespace A131406

/-- `val(T(n-1,k)+1, 2)+1` -/
def P3800333156962576294.Spec : Prop :=
  ∀ n, (P3800333156962576294.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P10555905545078027486

`abs(or(comp[∑[4*n]], -2))`
-/

namespace A131406.P10555905545078027486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-2)|

end

end A131406.P10555905545078027486

namespace A131406

/-- `abs(or(comp[∑[4*n]], -2))` -/
def P10555905545078027486.Spec : Prop :=
  ∀ n, P10555905545078027486.a n = A131406 (n + 1)

end A131406

/-! ## A131406.P16822395973955222610

`(2-T(n-1,k))*T(n-1,k)+1` with `a(0)=1`
-/

namespace A131406.P16822395973955222610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - SequenceMachineLib.triUp a n) * SequenceMachineLib.triUp a n + 1

end

end A131406.P16822395973955222610

namespace A131406

/-- `(2-T(n-1,k))*T(n-1,k)+1` -/
def P16822395973955222610.Spec : Prop :=
  ∀ n, P16822395973955222610.a n = A131406 (n + 1)

end A131406

/-! ## A131406.P15723040757419718770

`1-(T(n-1,k)-2)*T(n-1,k)` with `a(0)=1`
-/

namespace A131406.P15723040757419718770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.triUp a n - 2) * SequenceMachineLib.triUp a n

end

end A131406.P15723040757419718770

namespace A131406

/-- `1-(T(n-1,k)-2)*T(n-1,k)` -/
def P15723040757419718770.Spec : Prop :=
  ∀ n, P15723040757419718770.a n = A131406 (n + 1)

end A131406

/-! ## A131406.P11713620079918010840

`T(2, T(n-1,k))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A131406.P11713620079918010840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1, 2] fun n a =>
  SequenceMachineLib.triAt a 2 ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A131406.P11713620079918010840

namespace A131406

/-- `T(2, T(n-1,k))` -/
def P11713620079918010840.Spec : Prop :=
  ∀ n, (P11713620079918010840.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P10448059172049791473

`2-comp[∑[4*n]]%2`
-/

namespace A131406.P10448059172049791473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A131406.P10448059172049791473

namespace A131406

/-- `2-comp[∑[4*n]]%2` -/
def P10448059172049791473.Spec : Prop :=
  ∀ n, P10448059172049791473.a n = A131406 (n + 1)

end A131406

/-! ## A131406.P13912879925186281303

`2-and(1, comp[∑[4*n]])`
-/

namespace A131406.P13912879925186281303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A131406.P13912879925186281303

namespace A131406

/-- `2-and(1, comp[∑[4*n]])` -/
def P13912879925186281303.Spec : Prop :=
  ∀ n, P13912879925186281303.a n = A131406 (n + 1)

end A131406

/-! ## A131406.P7487403457727077374

`and(2, ∑[2-char[∑[n]]])!`
-/

namespace A131406.P7487403457727077374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A131406.P7487403457727077374

namespace A131406

/-- `and(2, ∑[2-char[∑[n]]])!` -/
def P7487403457727077374.Spec : Prop :=
  ∀ n, (P7487403457727077374.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P11247677439836804591

`(row(n)+col(n))%2+1`
-/

namespace A131406.P11247677439836804591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) % 2 + 1

end

end A131406.P11247677439836804591

namespace A131406

/-- `(row(n)+col(n))%2+1` -/
def P11247677439836804591.Spec : Prop :=
  ∀ n, (P11247677439836804591.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P8125353259601888380

`and(1, row(n)+col(n))+1`
-/

namespace A131406.P8125353259601888380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) + 1

end

end A131406.P8125353259601888380

namespace A131406

/-- `and(1, row(n)+col(n))+1` -/
def P8125353259601888380.Spec : Prop :=
  ∀ n, (P8125353259601888380.a n : ℤ) = A131406 (n + 1)

end A131406

/-! ## A131406.P14438105206058908036

`2^and(1, col(n)-row(n))`
-/

namespace A131406.P14438105206058908036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.land 1 ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) : ℤ)

end

end A131406.P14438105206058908036

namespace A131406

/-- `2^and(1, col(n)-row(n))` -/
def P14438105206058908036.Spec : Prop :=
  ∀ n, P14438105206058908036.a n = (A131406 (n + 1) : ℚ)

end A131406

/-! ## A131406.P3328214071423677335

`T(T(n-1,k-1)-1, T(n-1,k+1))+T(n-1,k+1)` with `a(0)=1, a(1)=2`
-/

namespace A131406.P3328214071423677335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triAt a (((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) - 1) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) + SequenceMachineLib.triUpRight a n

end

end A131406.P3328214071423677335

namespace A131406

/-- `T(T(n-1,k-1)-1, T(n-1,k+1))+T(n-1,k+1)` -/
def P3328214071423677335.Spec : Prop :=
  ∀ n, (P3328214071423677335.a n : ℤ) = A131406 (n + 1)

end A131406

/-!
# A131407: Repeated set partitions or nested set partitions. Possible coalitions among n persons.

The programs for A131407, there is no canonical definition to state claims against.
-/

/-! ## A131407.P12791060384152746961

`A001651(A331957(n))`
-/

namespace A131407.P12791060384152746961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A331957 n).toNat

end

end A131407.P12791060384152746961

/-! ## A131407.P4452886831114273416

`A006368(A330804(n))`
-/

namespace A131407.P4452886831114273416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A330804 n).toNat

end

end A131407.P4452886831114273416

/-!
# A131408: Repeated integer partitions or nested integer partitions.

The programs for A131408, there is no canonical definition to state claims against.
-/

/-! ## A131408.P15020699629479216689

`A253641(n)+A033182(∑[2^n*∑[n+1]])`
-/

namespace A131408.P15020699629479216689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n + A033182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131408.P15020699629479216689

/-! ## A131408.P11214925679677815872

`A100196(A149663(n))-A333601(n)`
-/

namespace A131408.P11214925679677815872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A149663 n).toNat - A333601 n

end

end A131408.P11214925679677815872

/-! ## A131408.P2843745884461878469

`or(A122286(A305552(n)), A293348(n+1))`
-/

namespace A131408.P2843745884461878469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122286 (A305552 n).toNat) (A293348 (n + 1))

end

end A131408.P2843745884461878469

/-!
# A131410: A127647 * A000012.

The programs for A131410, the canonical program `A131410.P12777045382077232831` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131410 has offset 1).

The definition of A131410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131410.P16849722501218709465

`A000045(∑[char[∑[n]]])`
-/

namespace A131410.P16849722501218709465
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131410.P16849722501218709465

namespace A131410

/-- `A000045(∑[char[∑[n]]])` -/
def P16849722501218709465.Spec : Prop :=
  ∀ n, P16849722501218709465.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P6055226534943525606

`A212804(row(n)+2)`
-/

namespace A131410.P6055226534943525606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.triRow n + 2)

end

end A131410.P6055226534943525606

namespace A131410

/-- `A212804(row(n)+2)` -/
def P6055226534943525606.Spec : Prop :=
  ∀ n, P6055226534943525606.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P8972312324006586336

`A324969(row(n)+2)`
-/

namespace A131410.P8972312324006586336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (SequenceMachineLib.triRow n + 2)

end

end A131410.P8972312324006586336

namespace A131410

/-- `A324969(row(n)+2)` -/
def P8972312324006586336.Spec : Prop :=
  ∀ n, P8972312324006586336.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P14669015013888179488

`A079977(2*row(n))`
-/

namespace A131410.P14669015013888179488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * SequenceMachineLib.triRow n)

end

end A131410.P14669015013888179488

namespace A131410

/-- `A079977(2*row(n))` -/
def P14669015013888179488.Spec : Prop :=
  ∀ n, P14669015013888179488.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P2695459801518115606

`A037027(n-col(n))`
-/

namespace A131410.P2695459801518115606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (n - SequenceMachineLib.triCol n)

end

end A131410.P2695459801518115606

namespace A131410

/-- `A037027(n-col(n))` -/
def P2695459801518115606.Spec : Prop :=
  ∀ n, P2695459801518115606.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P6923732238103334430

`A053538(n-col(n))`
-/

namespace A131410.P6923732238103334430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (n - SequenceMachineLib.triCol n)

end

end A131410.P6923732238103334430

namespace A131410

/-- `A053538(n-col(n))` -/
def P6923732238103334430.Spec : Prop :=
  ∀ n, P6923732238103334430.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P14779127283853291010

`A055830(n-col(n))`
-/

namespace A131410.P14779127283853291010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (n - SequenceMachineLib.triCol n)

end

end A131410.P14779127283853291010

namespace A131410

/-- `A055830(n-col(n))` -/
def P14779127283853291010.Spec : Prop :=
  ∀ n, P14779127283853291010.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P3299759550430095389

`A063967(n-col(n))`
-/

namespace A131410.P3299759550430095389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (n - SequenceMachineLib.triCol n)

end

end A131410.P3299759550430095389

namespace A131410

/-- `A063967(n-col(n))` -/
def P3299759550430095389.Spec : Prop :=
  ∀ n, P3299759550430095389.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P10921413946127689021

`A091533(n-col(n))`
-/

namespace A131410.P10921413946127689021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 (n - SequenceMachineLib.triCol n)

end

end A131410.P10921413946127689021

namespace A131410

/-- `A091533(n-col(n))` -/
def P10921413946127689021.Spec : Prop :=
  ∀ n, P10921413946127689021.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P8409089014017259580

`A122070(n-col(n))`
-/

namespace A131410.P8409089014017259580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (n - SequenceMachineLib.triCol n)

end

end A131410.P8409089014017259580

namespace A131410

/-- `A122070(n-col(n))` -/
def P8409089014017259580.Spec : Prop :=
  ∀ n, P8409089014017259580.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P17328799895112607056

`∑{#}[row(n), A212804(#)]`
-/

namespace A131410.P17328799895112607056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A212804 k

end

end A131410.P17328799895112607056

namespace A131410

/-- `∑{#}[row(n), A212804(#)]` -/
def P17328799895112607056.Spec : Prop :=
  ∀ n, P17328799895112607056.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P12625930952781053334

`A212804(comp[∑[n]]-n)`
-/

namespace A131410.P12625930952781053334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A131410.P12625930952781053334

namespace A131410

/-- `A212804(comp[∑[n]]-n)` -/
def P12625930952781053334.Spec : Prop :=
  ∀ n, P12625930952781053334.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P17672049784828118630

`A000071(∑[char[∑[n]]])+1`
-/

namespace A131410.P17672049784828118630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A131410.P17672049784828118630

namespace A131410

/-- `A000071(∑[char[∑[n]]])+1` -/
def P17672049784828118630.Spec : Prop :=
  ∀ n, P17672049784828118630.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P2337709489844617453

`A001611(∑[char[∑[n]]])-1`
-/

namespace A131410.P2337709489844617453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A131410.P2337709489844617453

namespace A131410

/-- `A001611(∑[char[∑[n]]])-1` -/
def P2337709489844617453.Spec : Prop :=
  ∀ n, P2337709489844617453.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P7541047402241712718

`A103609(∑[2*char[∑[n]]])`
-/

namespace A131410.P7541047402241712718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131410.P7541047402241712718

namespace A131410

/-- `A103609(∑[2*char[∑[n]]])` -/
def P7541047402241712718.Spec : Prop :=
  ∀ n, P7541047402241712718.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P1076835698893315787

`A016095(A057944(n))`
-/

namespace A131410.P1076835698893315787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 (A057944 n).toNat

end

end A131410.P1076835698893315787

namespace A131410

/-- `A016095(A057944(n))` -/
def P1076835698893315787.Spec : Prop :=
  ∀ n, P1076835698893315787.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P12777045382077232831

`A123231(A131507(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131410

/-- `A123231(A131507(n))` -/
def P12777045382077232831.Spec : Prop :=
  ∀ n, P12777045382077232831.a n = A131410 (n + 1)

theorem P12777045382077232831.correct : P12777045382077232831.Spec := by
  intro n
  simp only [A131410, Nat.add_sub_cancel]

end A131410

/-! ## A131410.P15923469331109436784

`A079977(A279891(n))`
-/

namespace A131410.P15923469331109436784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A279891 n).toNat

end

end A131410.P15923469331109436784

namespace A131410

/-- `A079977(A279891(n))` -/
def P15923469331109436784.Spec : Prop :=
  ∀ n, P15923469331109436784.a n = A131410 (n + 1)

end A131410

/-! ## A131410.P9650690849914444515

`A104726(A286098(n))`
-/

namespace A131410.P9650690849914444515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 (A286098 n).toNat

end

end A131410.P9650690849914444515

namespace A131410

/-- `A104726(A286098(n))` -/
def P9650690849914444515.Spec : Prop :=
  ∀ n, P9650690849914444515.a n = A131410 (n + 1)

end A131410

/-!
# A131411: Triangle read by rows: T(n,k) = Fibonacci(n) + Fibonacci(k) - 1.

The programs for A131411, the canonical program `A131411.P7145893404369510107` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131411 has offset 1).

The definition of A131411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(row(n)+1)+A000045(col(n)+1)-1` (program `A131411.P7145893404369510107`, by `A131411.P7145893404369510107.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131411.P7145893404369510107

`A000045(row(n)+1)+A000045(col(n)+1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131411

/-- `A000045(row(n)+1)+A000045(col(n)+1)-1` -/
def P7145893404369510107.Spec : Prop :=
  ∀ n, P7145893404369510107.a n = A131411 (n + 1)

theorem P7145893404369510107.correct : P7145893404369510107.Spec := by
  intro n
  simp only [A131411, Nat.add_sub_cancel]

end A131411

/-! ## A131411.P4113717599898364620

`A104763(n+1)+A131410(n+1)-1`
-/

namespace A131411.P4113717599898364620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (A131410 (n + 1) - 1)

end

end A131411.P4113717599898364620

namespace A131411

/-- `A104763(n+1)+A131410(n+1)-1` -/
def P4113717599898364620.Spec : Prop :=
  ∀ n, P4113717599898364620.a n = A131411 (n + 1)

end A131411

/-! ## A131411.P3915790113638923452

`A104763(n+1)+A000071(A002024(n+1))`
-/

namespace A131411.P3915790113638923452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + A000071 (A002024 (n + 1)).toNat

end

end A131411.P3915790113638923452

namespace A131411

/-- `A104763(n+1)+A000071(A002024(n+1))` -/
def P3915790113638923452.Spec : Prop :=
  ∀ n, P3915790113638923452.a n = A131411 (n + 1)

end A131411

/-! ## A131411.P15273269999305186655

`A131410(n+1)+A000071(A002260(n+1))`
-/

namespace A131411.P15273269999305186655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A000071 (A002260 (n + 1)).toNat

end

end A131411.P15273269999305186655

namespace A131411

/-- `A131410(n+1)+A000071(A002260(n+1))` -/
def P15273269999305186655.Spec : Prop :=
  ∀ n, P15273269999305186655.a n = A131411 (n + 1)

end A131411

/-! ## A131411.P10007368570239249617

`A132919(n+1)+A065220(A002260(n+1))`
-/

namespace A131411.P10007368570239249617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132919 (n + 1) + A065220 (A002260 (n + 1)).toNat

end

end A131411.P10007368570239249617

namespace A131411

/-- `A132919(n+1)+A065220(A002260(n+1))` -/
def P10007368570239249617.Spec : Prop :=
  ∀ n, P10007368570239249617.a n = A131411 (n + 1)

end A131411

/-! ## A131411.P5335926788415424751

`A131410(n+1)+A000071(A134868(n+1))`
-/

namespace A131411.P5335926788415424751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A000071 (A134868 (n + 1)).toNat

end

end A131411.P5335926788415424751

namespace A131411

/-- `A131410(n+1)+A000071(A134868(n+1))` -/
def P5335926788415424751.Spec : Prop :=
  ∀ n, P5335926788415424751.a n = A131411 (n + 1)

end A131411

/-! ## A131411.P17963935416917117461

`A104763(n+1)+A016095(A057944(n))-1`
-/

namespace A131411.P17963935416917117461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (A016095 (A057944 n).toNat - 1)

end

end A131411.P17963935416917117461

namespace A131411

/-- `A104763(n+1)+A016095(A057944(n))-1` -/
def P17963935416917117461.Spec : Prop :=
  ∀ n, P17963935416917117461.a n = A131411 (n + 1)

end A131411

/-! ## A131411.P1115395321632638653

`A104763(n+1)+A212804(A003057(n+2))-1`
-/

namespace A131411.P1115395321632638653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (A212804 (A003057 (n + 2)).toNat - 1)

end

end A131411.P1115395321632638653

namespace A131411

/-- `A104763(n+1)+A212804(A003057(n+2))-1` -/
def P1115395321632638653.Spec : Prop :=
  ∀ n, P1115395321632638653.a n = A131411 (n + 1)

end A131411

/-! ## A131411.P2941511363425899091

`A000071(A002024(n+1))+A000045(A002260(n+1))`
-/

namespace A131411.P2941511363425899091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A002024 (n + 1)).toNat + A000045 (A002260 (n + 1)).toNat

end

end A131411.P2941511363425899091

namespace A131411

/-- `A000071(A002024(n+1))+A000045(A002260(n+1))` -/
def P2941511363425899091.Spec : Prop :=
  ∀ n, P2941511363425899091.a n = A131411 (n + 1)

end A131411

/-! ## A131411.P11791954283078104791

`A059389(n+2)-A019446(A059389(n+1)+1)`
-/

namespace A131411.P11791954283078104791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 2) - A019446 (A059389 (n + 1) + 1).toNat

end

end A131411.P11791954283078104791

namespace A131411

/-- `A059389(n+2)-A019446(A059389(n+1)+1)` -/
def P11791954283078104791.Spec : Prop :=
  ∀ n, P11791954283078104791.a n = A131411 (n + 1)

end A131411

/-!
# A131412: a(n) = n*(Fibonacci(n) - 1) + Fibonacci(n + 2) - 1.

The programs for A131412, the canonical program `A131412.P16976447819185538246` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131412 has offset 1).

The definition of A131412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(A000045(n+1)-1)+A000045(n+3)-1` (program `A131412.P16976447819185538246`, by `A131412.P16976447819185538246.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131412.P16976447819185538246

`(n+1)*(A000045(n+1)-1)+A000045(n+3)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131412

/-- `(n+1)*(A000045(n+1)-1)+A000045(n+3)-1` -/
def P16976447819185538246.Spec : Prop :=
  ∀ n, P16976447819185538246.a n = A131412 (n + 1)

theorem P16976447819185538246.correct : P16976447819185538246.Spec := by
  intro n
  simp only [A131412, Nat.add_sub_cancel]

end A131412

/-! ## A131412.P4304469196616692530

`ogf((1-2x+3x^2-3x^3)/(1-4x+4x^2+2x^3-4x^4+x^6))`
-/

namespace A131412.P4304469196616692530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3, -3] [1, -4, 4, 2, -4, 0, 1] n

end

end A131412.P4304469196616692530

namespace A131412

/-- `ogf((1-2x+3x^2-3x^3)/(1-4x+4x^2+2x^3-4x^4+x^6))` -/
def P4304469196616692530.Spec : Prop :=
  ∀ n, P4304469196616692530.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P6591100153739442347

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=15, a(4)=32, a(5)=62`
-/

namespace A131412.P6591100153739442347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 15, 32, 62] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) - 2 * a (n - 3) + 4 * a (n - 4) - a (n - 6)

end

end A131412.P6591100153739442347

namespace A131412

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P6591100153739442347.Spec : Prop :=
  ∀ n, P6591100153739442347.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P17029806097916012739

`A094588(n+2)-(n+2)`
-/

namespace A131412.P17029806097916012739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 2) - (n + 2 : ℤ)

end

end A131412.P17029806097916012739

namespace A131412

/-- `A094588(n+2)-(n+2)` -/
def P17029806097916012739.Spec : Prop :=
  ∀ n, P17029806097916012739.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P9956823642084158919

`A000032(n)+n-1+a(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A131412.P9956823642084158919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000032 n + ((n : ℤ) - 1 + (a (n - 2) + a (n - 1)))

end

end A131412.P9956823642084158919

namespace A131412

/-- `A000032(n)+n-1+a(n-2)+a(n-1)` -/
def P9956823642084158919.Spec : Prop :=
  ∀ n, P9956823642084158919.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P1846709960434970378

`A354044(n)+A192967(n)`
-/

namespace A131412.P1846709960434970378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n + A192967 n

end

end A131412.P1846709960434970378

namespace A131412

/-- `A354044(n)+A192967(n)` -/
def P1846709960434970378.Spec : Prop :=
  ∀ n, P1846709960434970378.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P11141365710738448554

`A066982(n+1)+A023607(n)`
-/

namespace A131412.P11141365710738448554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1) + A023607 n

end

end A131412.P11141365710738448554

namespace A131412

/-- `A066982(n+1)+A023607(n)` -/
def P11141365710738448554.Spec : Prop :=
  ∀ n, P11141365710738448554.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P9906128562281757838

`A178521(n)+A000126(n+1)`
-/

namespace A131412.P9906128562281757838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 n + A000126 (n + 1)

end

end A131412.P9906128562281757838

namespace A131412

/-- `A178521(n)+A000126(n+1)` -/
def P9906128562281757838.Spec : Prop :=
  ∀ n, P9906128562281757838.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P12757243789532473465

`A099920(n+1)+A065220(n+2)`
-/

namespace A131412.P12757243789532473465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) + A065220 (n + 2)

end

end A131412.P12757243789532473465

namespace A131412

/-- `A099920(n+1)+A065220(n+2)` -/
def P12757243789532473465.Spec : Prop :=
  ∀ n, P12757243789532473465.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P7638996857689199854

`A134508(n+1)+2*A001629(n)`
-/

namespace A131412.P7638996857689199854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134508 (n + 1) + 2 * A001629 n

end

end A131412.P7638996857689199854

namespace A131412

/-- `A134508(n+1)+2*A001629(n)` -/
def P7638996857689199854.Spec : Prop :=
  ∀ n, P7638996857689199854.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P6714883216857263064

`A014739(n)+n*A000071(n+1)`
-/

namespace A131412.P6714883216857263064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + (n : ℤ) * A000071 (n + 1)

end

end A131412.P6714883216857263064

namespace A131412

/-- `A014739(n)+n*A000071(n+1)` -/
def P6714883216857263064.Spec : Prop :=
  ∀ n, P6714883216857263064.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P12505103624372062435

`∑[A006490(n+1)+∑[A000045(n)]]`
-/

namespace A131412.P12505103624372062435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131412.P12505103624372062435

namespace A131412

/-- `∑[A006490(n+1)+∑[A000045(n)]]` -/
def P12505103624372062435.Spec : Prop :=
  ∀ n, P12505103624372062435.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P3987893695949307517

`A000045(n+2)+(n+2)*(A000045(n+1)-1)`
-/

namespace A131412.P3987893695949307517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (n + 2 : ℤ) * (A000045 (n + 1) - 1)

end

end A131412.P3987893695949307517

namespace A131412

/-- `A000045(n+2)+(n+2)*(A000045(n+1)-1)` -/
def P3987893695949307517.Spec : Prop :=
  ∀ n, P3987893695949307517.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P5257410381976245322

`A000071(n+1)+A007574(n+1)-A000045(n)`
-/

namespace A131412.P5257410381976245322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A007574 (n + 1) - A000045 n)

end

end A131412.P5257410381976245322

namespace A131412

/-- `A000071(n+1)+A007574(n+1)-A000045(n)` -/
def P5257410381976245322.Spec : Prop :=
  ∀ n, P5257410381976245322.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P15753776432114963909

`A045925(n+1)+A001924(n)-A000071(n+2)`
-/

namespace A131412.P15753776432114963909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + (A001924 n - A000071 (n + 2))

end

end A131412.P15753776432114963909

namespace A131412

/-- `A045925(n+1)+A001924(n)-A000071(n+2)` -/
def P15753776432114963909.Spec : Prop :=
  ∀ n, P15753776432114963909.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P6282435977448486812

`A045925(n+1)+A065220(n+1)+A000071(n+2)`
-/

namespace A131412.P6282435977448486812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + (A065220 (n + 1) + A000071 (n + 2))

end

end A131412.P6282435977448486812

namespace A131412

/-- `A045925(n+1)+A065220(n+1)+A000071(n+2)` -/
def P6282435977448486812.Spec : Prop :=
  ∀ n, P6282435977448486812.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P11293502267599408228

`A113684(n+1)-2*A001629(n+1)`
-/

namespace A131412.P11293502267599408228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 (n + 1) - 2 * A001629 (n + 1)

end

end A131412.P11293502267599408228

namespace A131412

/-- `A113684(n+1)-2*A001629(n+1)` -/
def P11293502267599408228.Spec : Prop :=
  ∀ n, P11293502267599408228.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P5947808410246345736

`A113684(n+1)-(A099920(n)+A001629(n))`
-/

namespace A131412.P5947808410246345736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 (n + 1) - (A099920 n + A001629 n)

end

end A131412.P5947808410246345736

namespace A131412

/-- `A113684(n+1)-(A099920(n)+A001629(n))` -/
def P5947808410246345736.Spec : Prop :=
  ∀ n, P5947808410246345736.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P7336354683742501143

`A010049(n+1)+A113684(n+1)-A023610(n)`
-/

namespace A131412.P7336354683742501143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + (A113684 (n + 1) - A023610 n)

end

end A131412.P7336354683742501143

namespace A131412

/-- `A010049(n+1)+A113684(n+1)-A023610(n)` -/
def P7336354683742501143.Spec : Prop :=
  ∀ n, P7336354683742501143.a n = A131412 (n + 1)

end A131412

/-! ## A131412.P8248673044804810337

`Δ[A123194(n)]-(n+2)`
-/

namespace A131412.P8248673044804810337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A131412.P8248673044804810337

namespace A131412

/-- `Δ[A123194(n)]-(n+2)` -/
def P8248673044804810337.Spec : Prop :=
  ∀ n, P8248673044804810337.a n = A131412 (n + 1)

end A131412

/-!
# A131413: Triangle read by rows: A002024 + A128076 - A000012 as infinite lower triangular matrices.

The programs for A131413, the canonical program `A131413.P831149329462037329` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131413 has offset 0).

The definition of A131413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131413.P11659705161784232826

`3*row(n)+1-col(n)`
-/

namespace A131413.P11659705161784232826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A131413.P11659705161784232826

namespace A131413

/-- `3*row(n)+1-col(n)` -/
def P11659705161784232826.Spec : Prop :=
  ∀ n, P11659705161784232826.a n = A131413 n

end A131413

/-! ## A131413.P8735104087099095546

`∑[abs(T(n-1,k))]+row(n)-col(n)` with `a(0)=1, a(1)=2`
-/

namespace A131413.P8735104087099095546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A131413.P8735104087099095546

namespace A131413

/-- `∑[abs(T(n-1,k))]+row(n)-col(n)` -/
def P8735104087099095546.Spec : Prop :=
  ∀ n, P8735104087099095546.a n = A131413 n

end A131413

/-! ## A131413.P1927239394004674059

`row(n)-col(n)+1+row(n)+row(n)`
-/

namespace A131413.P1927239394004674059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triRow n : ℤ)

end

end A131413.P1927239394004674059

namespace A131413

/-- `row(n)-col(n)+1+row(n)+row(n)` -/
def P1927239394004674059.Spec : Prop :=
  ∀ n, P1927239394004674059.a n = A131413 n

end A131413

/-! ## A131413.P11201804417838030339

`A052905(row(n))-n`
-/

namespace A131413.P11201804417838030339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (SequenceMachineLib.triRow n) - (n : ℤ)

end

end A131413.P11201804417838030339

namespace A131413

/-- `A052905(row(n))-n` -/
def P11201804417838030339.Spec : Prop :=
  ∀ n, P11201804417838030339.a n = A131413 n

end A131413

/-! ## A131413.P8467498008373417441

`A016777(row(n))-col(n)`
-/

namespace A131413.P8467498008373417441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.triRow n) - (SequenceMachineLib.triCol n : ℤ)

end

end A131413.P8467498008373417441

namespace A131413

/-- `A016777(row(n))-col(n)` -/
def P8467498008373417441.Spec : Prop :=
  ∀ n, P8467498008373417441.a n = A131413 n

end A131413

/-! ## A131413.P2570673593646668525

`A131914(n+1)+col(n)`
-/

namespace A131413.P2570673593646668525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) + (SequenceMachineLib.triCol n : ℤ)

end

end A131413.P2570673593646668525

namespace A131413

/-- `A131914(n+1)+col(n)` -/
def P2570673593646668525.Spec : Prop :=
  ∀ n, P2570673593646668525.a n = A131413 n

end A131413

/-! ## A131413.P13268745091006047976

`A128076(n+1)+row(n)`
-/

namespace A131413.P13268745091006047976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + (SequenceMachineLib.triRow n : ℤ)

end

end A131413.P13268745091006047976

namespace A131413

/-- `A128076(n+1)+row(n)` -/
def P13268745091006047976.Spec : Prop :=
  ∀ n, P13268745091006047976.a n = A131413 n

end A131413

/-! ## A131413.P10700559108069093296

`A046691(row(n)+1)-(n+1)`
-/

namespace A131413.P10700559108069093296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (SequenceMachineLib.triRow n + 1) - (n + 1 : ℤ)

end

end A131413.P10700559108069093296

namespace A131413

/-- `A046691(row(n)+1)-(n+1)` -/
def P10700559108069093296.Spec : Prop :=
  ∀ n, P10700559108069093296.a n = A131413 n

end A131413

/-! ## A131413.P1973904570781122582

`A004736(n+1)+2*row(n)`
-/

namespace A131413.P1973904570781122582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (2 * SequenceMachineLib.triRow n : ℤ)

end

end A131413.P1973904570781122582

namespace A131413

/-- `A004736(n+1)+2*row(n)` -/
def P1973904570781122582.Spec : Prop :=
  ∀ n, P1973904570781122582.a n = A131413 n

end A131413

/-! ## A131413.P5487022202140614328

`3*A003056(n)+1-col(n)`
-/

namespace A131413.P5487022202140614328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003056 n + 1 - (SequenceMachineLib.triCol n : ℤ)

end

end A131413.P5487022202140614328

namespace A131413

/-- `3*A003056(n)+1-col(n)` -/
def P5487022202140614328.Spec : Prop :=
  ∀ n, P5487022202140614328.a n = A131413 n

end A131413

/-! ## A131413.P14303523524593849519

`A005408(row(n))+row(n)-col(n)`
-/

namespace A131413.P14303523524593849519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.triRow n) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A131413.P14303523524593849519

namespace A131413

/-- `A005408(row(n))+row(n)-col(n)` -/
def P14303523524593849519.Spec : Prop :=
  ∀ n, P14303523524593849519.a n = A131413 n

end A131413

/-! ## A131413.P17675796063858785090

`A016813(row(n))-(col(n)+row(n))`
-/

namespace A131413.P17675796063858785090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.triRow n) - (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n : ℤ)

end

end A131413.P17675796063858785090

namespace A131413

/-- `A016813(row(n))-(col(n)+row(n))` -/
def P17675796063858785090.Spec : Prop :=
  ∀ n, P17675796063858785090.a n = A131413 n

end A131413

/-! ## A131413.P17956202894509087103

`A189151(n+1)-2*(n+2)`
-/

namespace A131413.P17956202894509087103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189151 (n + 1) - (2 * (n + 2) : ℤ)

end

end A131413.P17956202894509087103

namespace A131413

/-- `A189151(n+1)-2*(n+2)` -/
def P17956202894509087103.Spec : Prop :=
  ∀ n, P17956202894509087103.a n = A131413 n

end A131413

/-! ## A131413.P11014400626107245814

`A025581(n)+2*floor(sqrt(2*n+1)+1/2)-1`
-/

namespace A131413.P11014400626107245814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (2 * ⌊Real.sqrt (2 * n + 1 : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ - 1)

end

end A131413.P11014400626107245814

namespace A131413

/-- `A025581(n)+2*floor(sqrt(2*n+1)+1/2)-1` -/
def P11014400626107245814.Spec : Prop :=
  ∀ n, P11014400626107245814.a n = A131413 n

end A131413

/-! ## A131413.P831149329462037329

`A099375(n)+A051162(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131413

/-- `A099375(n)+A051162(n)` -/
def P831149329462037329.Spec : Prop :=
  ∀ n, P831149329462037329.a n = A131413 n

theorem P831149329462037329.correct : P831149329462037329.Spec := by
  intro n
  simp only [A131413]

end A131413

/-! ## A131413.P7224931416426617949

`A131507(n)+A025581(n)`
-/

namespace A131413.P7224931416426617949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + A025581 n

end

end A131413.P7224931416426617949

namespace A131413

/-- `A131507(n)+A025581(n)` -/
def P7224931416426617949.Spec : Prop :=
  ∀ n, P7224931416426617949.a n = A131413 n

end A131413

/-! ## A131413.P1718000268402182373

`A052905(A003056(n))-n`
-/

namespace A131413.P1718000268402182373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A003056 n).toNat - (n : ℤ)

end

end A131413.P1718000268402182373

namespace A131413

/-- `A052905(A003056(n))-n` -/
def P1718000268402182373.Spec : Prop :=
  ∀ n, P1718000268402182373.a n = A131413 n

end A131413

/-! ## A131413.P6843136101852944309

`A294317(n)+∑[A010054(n)]`
-/

namespace A131413.P6843136101852944309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131413.P6843136101852944309

namespace A131413

/-- `A294317(n)+∑[A010054(n)]` -/
def P6843136101852944309.Spec : Prop :=
  ∀ n, P6843136101852944309.a n = A131413 n

end A131413

/-! ## A131413.P8552908134130399433

`A128076(n+1)+A003056(n)`
-/

namespace A131413.P8552908134130399433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + A003056 n

end

end A131413.P8552908134130399433

namespace A131413

/-- `A128076(n+1)+A003056(n)` -/
def P8552908134130399433.Spec : Prop :=
  ∀ n, P8552908134130399433.a n = A131413 n

end A131413

/-! ## A131413.P6741588979214037351

`A131914(n+1)+A002262(n)`
-/

namespace A131413.P6741588979214037351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) + A002262 n

end

end A131413.P6741588979214037351

namespace A131413

/-- `A131914(n+1)+A002262(n)` -/
def P6741588979214037351.Spec : Prop :=
  ∀ n, P6741588979214037351.a n = A131413 n

end A131413

/-!
# A131414: A130302 + A130303 - A000012.

The programs for A131414, the canonical program `A131414.P4412133685493980708` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131414 has offset 1).

The definition of A131414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131414.P2961419911010794099

`A130297(n+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A131414.P2961419911010794099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130297 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A131414.P2961419911010794099

namespace A131414

/-- `A130297(n+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P2961419911010794099.Spec : Prop :=
  ∀ n, P2961419911010794099.a n = A131414 (n + 1)

end A131414

/-! ## A131414.P4412133685493980708

`A130297(n+1)+A025581(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131414

/-- `A130297(n+1)+A025581(n)` -/
def P4412133685493980708.Spec : Prop :=
  ∀ n, P4412133685493980708.a n = A131414 (n + 1)

theorem P4412133685493980708.correct : P4412133685493980708.Spec := by
  intro n
  simp only [A131414, Nat.add_sub_cancel]

end A131414

/-! ## A131414.P17252079100441115856

`A130297(n+1)+log2(A130321(n))`
-/

namespace A131414.P17252079100441115856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130297 (n + 1) : ℝ) + Real.logb 2 (A130321 n : ℝ)

end

end A131414.P17252079100441115856

namespace A131414

/-- `A130297(n+1)+log2(A130321(n))` -/
def P17252079100441115856.Spec : Prop :=
  ∀ n, P17252079100441115856.a n = (A131414 (n + 1) : ℝ)

end A131414

/-! ## A131414.P2704041742902802850

`A130297(n+1)-∑[A167407(n)]`
-/

namespace A131414.P2704041742902802850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130297 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131414.P2704041742902802850

namespace A131414

/-- `A130297(n+1)-∑[A167407(n)]` -/
def P2704041742902802850.Spec : Prop :=
  ∀ n, P2704041742902802850.a n = A131414 (n + 1)

end A131414

/-! ## A131414.P6914647007760831221

`A130302(n+1)+A130303(n+1)-1`
-/

namespace A131414.P6914647007760831221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1) + (A130303 (n + 1) - 1)

end

end A131414.P6914647007760831221

namespace A131414

/-- `A130302(n+1)+A130303(n+1)-1` -/
def P6914647007760831221.Spec : Prop :=
  ∀ n, P6914647007760831221.a n = A131414 (n + 1)

end A131414

/-! ## A131414.P15530609393793768878

`A130302(n+1)+A158860(n+1)-A130296(n+1)`
-/

namespace A131414.P15530609393793768878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1) + (A158860 (n + 1) - A130296 (n + 1))

end

end A131414.P15530609393793768878

namespace A131414

/-- `A130302(n+1)+A158860(n+1)-A130296(n+1)` -/
def P15530609393793768878.Spec : Prop :=
  ∀ n, P15530609393793768878.a n = A131414 (n + 1)

end A131414

/-!
# A131415: (A007318 * A000012) + (A000012 * A007318) - A007318.

The programs for A131415, the canonical program `A131415.P7466821744159895081` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131415 has offset 0).

The definition of A131415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131415.P4880373540954707028

`A133545(n+1)-A014473(n)`
-/

namespace A131415.P4880373540954707028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133545 (n + 1) - A014473 n

end

end A131415.P4880373540954707028

namespace A131415

/-- `A133545(n+1)-A014473(n)` -/
def P4880373540954707028.Spec : Prop :=
  ∀ n, P4880373540954707028.a n = A131415 n

theorem P4880373540954707028.correct : P4880373540954707028.Spec := by
  intro n
  simp only [A131415, Nat.add_sub_cancel, A131415.P4880373540954707028.a, A131415.P7466821744159895081.a, A014473, A014473.P14186955903002457323.a, A051597, A051597.P4383731425265306086.a, A055248, A055248.P1398068972468981705.a, A074909, A074909.P6402560185863182536.a, A133545, A133545.P7259488329024112066.a, A007318, A007318.P11755526479805562006.a, A008949, A008949.P1107392530545470892.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131415

/-! ## A131415.P11862588210387265182

`(A110813(n)+A104709(n))/2`
-/

namespace A131415.P11862588210387265182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110813 n + A104709 n : ℚ) / 2

end

end A131415.P11862588210387265182

namespace A131415

/-- `(A110813(n)+A104709(n))/2` -/
def P11862588210387265182.Spec : Prop :=
  ∀ n, P11862588210387265182.a n = (A131415 n : ℚ)

end A131415

/-! ## A131415.P15562973174624877725

`A133545(n+1)+1-A007318(n)`
-/

namespace A131415.P15562973174624877725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133545 (n + 1) + (1 - A007318 n)

end

end A131415.P15562973174624877725

namespace A131415

/-- `A133545(n+1)+1-A007318(n)` -/
def P15562973174624877725.Spec : Prop :=
  ∀ n, P15562973174624877725.a n = A131415 n

end A131415

/-! ## A131415.P7466821744159895081

`A051597(n)+A055248(n)-A074909(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131415

/-- `A051597(n)+A055248(n)-A074909(n)` -/
def P7466821744159895081.Spec : Prop :=
  ∀ n, P7466821744159895081.a n = A131415 n

theorem P7466821744159895081.correct : P7466821744159895081.Spec := by
  intro n
  simp only [A131415]

end A131415

/-! ## A131415.P14949812721349031272

`A007318(n)+A055248(n)-A156644(n)`
-/

namespace A131415.P14949812721349031272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A055248 n - A156644 n)

end

end A131415.P14949812721349031272

namespace A131415

/-- `A007318(n)+A055248(n)-A156644(n)` -/
def P14949812721349031272.Spec : Prop :=
  ∀ n, P14949812721349031272.a n = A131415 n

end A131415

/-! ## A131415.P7013970673717378018

`A007318(n+1)+A135224(n)-A103451(n)`
-/

namespace A131415.P7013970673717378018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A135224 n - A103451 n)

end

end A131415.P7013970673717378018

namespace A131415

/-- `A007318(n+1)+A135224(n)-A103451(n)` -/
def P7013970673717378018.Spec : Prop :=
  ∀ n, P7013970673717378018.a n = A131415 n

end A131415

/-! ## A131415.P16569550421593552801

`A206735(n+1)+A055248(n)`
-/

namespace A131415.P16569550421593552801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A055248 n

end

end A131415.P16569550421593552801

namespace A131415

/-- `A206735(n+1)+A055248(n)` -/
def P16569550421593552801.Spec : Prop :=
  ∀ n, P16569550421593552801.a n = A131415 n

end A131415

/-! ## A131415.P18410871677817846276

`A097805(A080036(n+1))+A055248(n)`
-/

namespace A131415.P18410871677817846276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A080036 (n + 1)).toNat + A055248 n

end

end A131415.P18410871677817846276

namespace A131415

/-- `A097805(A080036(n+1))+A055248(n)` -/
def P18410871677817846276.Spec : Prop :=
  ∀ n, P18410871677817846276.a n = A131415 n

end A131415

/-! ## A131415.P3229261042375015677

`A071919(A014132(n+1))+A055248(n)`
-/

namespace A131415.P3229261042375015677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A014132 (n + 1)).toNat + A055248 n

end

end A131415.P3229261042375015677

namespace A131415

/-- `A071919(A014132(n+1))+A055248(n)` -/
def P3229261042375015677.Spec : Prop :=
  ∀ n, P3229261042375015677.a n = A131415 n

end A131415

/-! ## A131415.P12357430049599904333

`A014473(A014132(n+1))+A055248(n)-A014473(n)`
-/

namespace A131415.P12357430049599904333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A014132 (n + 1)).toNat + (A055248 n - A014473 n)

end

end A131415.P12357430049599904333

namespace A131415

/-- `A014473(A014132(n+1))+A055248(n)-A014473(n)` -/
def P12357430049599904333.Spec : Prop :=
  ∀ n, P12357430049599904333.a n = A131415 n

end A131415

/-! ## A131415.P15772658751780809055

`A133545(n+1)+A024000(A007318(n))`
-/

namespace A131415.P15772658751780809055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133545 (n + 1) + A024000 (A007318 n).toNat

end

end A131415.P15772658751780809055

namespace A131415

/-- `A133545(n+1)+A024000(A007318(n))` -/
def P15772658751780809055.Spec : Prop :=
  ∀ n, P15772658751780809055.a n = A131415 n

end A131415

/-!
# A131416: (A000012 * A002260) + (A002260 * A000012) - A000012.

The programs for A131416, the canonical program `A131416.P5420476087701445700` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131416 has offset 1).

The definition of A131416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131416.P1950806304826256936

`A104587(n)-(n+1-C(comp[∑[n]]-n, 2))²`
-/

namespace A131416.P1950806304826256936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2

end

end A131416.P1950806304826256936

namespace A131416

/-- `A104587(n)-(n+1-C(comp[∑[n]]-n, 2))²` -/
def P1950806304826256936.Spec : Prop :=
  ∀ n, P1950806304826256936.a n = A131416 (n + 1)

end A131416

/-! ## A131416.P17607829326344602994

`A271668(n)+∑[round(sqrt(2*(n+1)))²-(2*n+1)]`
-/

namespace A131416.P17607829326344602994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131416.P17607829326344602994

namespace A131416

/-- `A271668(n)+∑[round(sqrt(2*(n+1)))²-(2*n+1)]` -/
def P17607829326344602994.Spec : Prop :=
  ∀ n, P17607829326344602994.a n = A131416 (n + 1)

end A131416

/-! ## A131416.P5420476087701445700

`A104587(n)-A025581(n)²`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131416

/-- `A104587(n)-A025581(n)²` -/
def P5420476087701445700.Spec : Prop :=
  ∀ n, P5420476087701445700.a n = A131416 (n + 1)

theorem P5420476087701445700.correct : P5420476087701445700.Spec := by
  intro n
  simp only [A131416, Nat.add_sub_cancel]

end A131416

/-! ## A131416.P848419149943077304

`A059036(n)+A049777(n+1)`
-/

namespace A131416.P848419149943077304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A049777 (n + 1)

end

end A131416.P848419149943077304

namespace A131416

/-- `A059036(n)+A049777(n+1)` -/
def P848419149943077304.Spec : Prop :=
  ∀ n, P848419149943077304.a n = A131416 (n + 1)

end A131416

/-! ## A131416.P14731294733449966834

`A204250(n+1)+A049780(n)`
-/

namespace A131416.P14731294733449966834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + A049780 n

end

end A131416.P14731294733449966834

namespace A131416

/-- `A204250(n+1)+A049780(n)` -/
def P14731294733449966834.Spec : Prop :=
  ∀ n, P14731294733449966834.a n = A131416 (n + 1)

end A131416

/-! ## A131416.P930837462193527774

`A104587(n)-A095831(n+1)`
-/

namespace A131416.P930837462193527774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - A095831 (n + 1)

end

end A131416.P930837462193527774

namespace A131416

/-- `A104587(n)-A095831(n+1)` -/
def P930837462193527774.Spec : Prop :=
  ∀ n, P930837462193527774.a n = A131416 (n + 1)

end A131416

/-! ## A131416.P5727599390952038382

`A096037(n+1)-A128140(n+1)`
-/

namespace A131416.P5727599390952038382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A128140 (n + 1)

end

end A131416.P5727599390952038382

namespace A131416

/-- `A096037(n+1)-A128140(n+1)` -/
def P5727599390952038382.Spec : Prop :=
  ∀ n, P5727599390952038382.a n = A131416 (n + 1)

end A131416

/-! ## A131416.P11862253260710487223

`A104587(n)-(1-A004736(n+1))²`
-/

namespace A131416.P11862253260710487223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - (1 - A004736 (n + 1)) ^ 2

end

end A131416.P11862253260710487223

namespace A131416

/-- `A104587(n)-(1-A004736(n+1))²` -/
def P11862253260710487223.Spec : Prop :=
  ∀ n, P11862253260710487223.a n = A131416 (n + 1)

end A131416

/-! ## A131416.P17965713575063144699

`A003991(n+1)+A049777(n+1)-1`
-/

namespace A131416.P17965713575063144699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A049777 (n + 1) - 1)

end

end A131416.P17965713575063144699

namespace A131416

/-- `A003991(n+1)+A049777(n+1)-1` -/
def P17965713575063144699.Spec : Prop :=
  ∀ n, P17965713575063144699.a n = A131416 (n + 1)

end A131416

/-! ## A131416.P17619764955119685071

`A284551(n+1)-A073254(n)`
-/

namespace A131416.P17619764955119685071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284551 (n + 1) - A073254 n

end

end A131416.P17619764955119685071

namespace A131416

/-- `A284551(n+1)-A073254(n)` -/
def P17619764955119685071.Spec : Prop :=
  ∀ n, P17619764955119685071.a n = A131416 (n + 1)

end A131416

/-!
# A131417: Numbers n such that Sum_digits(n)=Sum_digits[n*Sum_digits(n)].

The programs for A131417, there is no canonical definition to state claims against.
-/

/-! ## A131417.P17962720207537278455

`eq[A007953(n), A007953(A057147(n))]`
-/

namespace A131417.P17962720207537278455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A057147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P17962720207537278455

/-! ## A131417.P1084534217140889319

`eq[A053837(n), A053837(A057147(n))]`
-/

namespace A131417.P1084534217140889319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (A057147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P1084534217140889319

/-! ## A131417.P11385391224625187671

`eq[A118880(A057147(n)), A118880(n)]`
-/

namespace A131417.P11385391224625187671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P11385391224625187671

/-! ## A131417.P7955601095069107625

`eq[A118881(A057147(n)), A118881(n)]`
-/

namespace A131417.P7955601095069107625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P7955601095069107625

/-! ## A131417.P7751875958516809574

`eq[A136614(A057147(n)), A136614(n)]`
-/

namespace A131417.P7751875958516809574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P7751875958516809574

/-! ## A131417.P525299550336700750

`eq[A169805(A057147(n)), A169805(n)]`
-/

namespace A131417.P525299550336700750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P525299550336700750

/-! ## A131417.P7771042690796101228

`eq[A329562(A057147(n)), A329562(n)]`
-/

namespace A131417.P7771042690796101228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P7771042690796101228

/-! ## A131417.P1855829125616714487

`eq[A062028(A057147(n)), A160942(n+1)]`
-/

namespace A131417.P1855829125616714487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P1855829125616714487

/-! ## A131417.P2984782795335213888

`eq[A007953(n*A007953(n)), A007953(n)]`
-/

namespace A131417.P2984782795335213888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((n : ℤ) * A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P2984782795335213888

/-! ## A131417.P11772113303825753991

`eq[A053837(n*A010888(n)), A053837(n)]`
-/

namespace A131417.P11772113303825753991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 ((n : ℤ) * A010888 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131417.P11772113303825753991

/-!
# A131418: Numbers n such that Sum_digits(n)=Sum_digits[n+Sum_digits(n)], with n>=0.

The programs for A131418, there is no canonical definition to state claims against.
-/

/-! ## A131418.P13540954866106644159

`eq[n, A066568(A062028(n))]`
-/

namespace A131418.P13540954866106644159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131418.P13540954866106644159

/-! ## A131418.P17015450577006586091

`eq[n, A066568(sqrt(A118881(n))+n)]`
-/

namespace A131418.P17015450577006586091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.roundAway (Real.sqrt (A118881 n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131418.P17015450577006586091

/-! ## A131418.P5709117317830930640

`eq[n, A066568(A160939(n+1)-1)]`
-/

namespace A131418.P5709117317830930640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A160939 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131418.P5709117317830930640

/-! ## A131418.P2282726904175499009

`eq[n, A066568(2*n-A066568(n))]`
-/

namespace A131418.P2282726904175499009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 ((2 * n : ℤ) - A066568 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131418.P2282726904175499009

/-! ## A131418.P3923777600229368990

`eq[n, A066568(A160942(n+1)/(n+1)+n)]`
-/

namespace A131418.P3923777600229368990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.roundAway ((A160942 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131418.P3923777600229368990

/-! ## A131418.P15515717000283434201

`eq[A007953(n), A007953(A062028(n))]`
-/

namespace A131418.P15515717000283434201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131418.P15515717000283434201

/-! ## A131418.P7617872768412381101

`eq[A033930(n), A033930(A062028(n))]`
-/

namespace A131418.P7617872768412381101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131418.P7617872768412381101

/-! ## A131418.P2014448418877464450

`eq[A118880(A062028(n)), A118880(n)]`
-/

namespace A131418.P2014448418877464450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131418.P2014448418877464450

/-! ## A131418.P15308880979231985745

`eq[A118881(A062028(n)), A118881(n)]`
-/

namespace A131418.P15308880979231985745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131418.P15308880979231985745

/-! ## A131418.P13894712216052029490

`eq[A136614(A062028(n)), A136614(n)]`
-/

namespace A131418.P13894712216052029490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131418.P13894712216052029490

/-!
# A131419: Central diagonal and left half of table A054225 which counts the partitions of n objects of 2 colors.

The programs for A131419, there is no canonical definition to state claims against.
-/

/-! ## A131419.P7750143098486238791

`A054225(eq[1, floor(sqrt(8*n+1))%2])`
-/

namespace A131419.P7750143098486238791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131419.P7750143098486238791

/-! ## A131419.P8696638036011329283

`A201376(A091018(n))`
-/

namespace A131419.P8696638036011329283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201376 (A091018 n).toNat

end

end A131419.P8696638036011329283

/-! ## A131419.P3088571153289299290

`A054225(record[A116942(n)])`
-/

namespace A131419.P3088571153289299290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131419.P3088571153289299290

/-! ## A131419.P3353398104449149874

`A054225(eq[0, A072785(n)])`
-/

namespace A131419.P3353398104449149874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131419.P3353398104449149874

/-! ## A131419.P14693103384341330359

`A054225(eq[0, A340507(n)])`
-/

namespace A131419.P14693103384341330359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131419.P14693103384341330359

/-! ## A131419.P1986934818034636679

`A054225(eq[1, A306680(n)])`
-/

namespace A131419.P1986934818034636679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131419.P1986934818034636679

/-! ## A131419.P12607307475763361620

`A054225(eq[1, A306846(n)])`
-/

namespace A131419.P12607307475763361620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131419.P12607307475763361620

/-! ## A131419.P5164845272705673955

`A054225(eq[1, A307039(n)])`
-/

namespace A131419.P5164845272705673955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131419.P5164845272705673955

/-! ## A131419.P12385784547983117614

`A054225(A206224(n)+n)`
-/

namespace A131419.P12385784547983117614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A206224 n + (n : ℤ)).toNat

end

end A131419.P12385784547983117614

/-! ## A131419.P12701608342528108516

`A054225(eq[1, A010783(n+1)])`
-/

namespace A131419.P12701608342528108516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131419.P12701608342528108516

/-!
# A131420: A tabular sequence of arrays counting ordered factorizations over least prime signatures. The unordered version is described by sequence A129306.

The programs for A131420, there is no canonical definition to state claims against.
-/

/-! ## A131420.P6707956470136687990

`A074206(A136101(n+1))`
-/

namespace A131420.P6707956470136687990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A136101 (n + 1)).toNat

end

end A131420.P6707956470136687990

/-! ## A131420.P11885263127308041746

`A002033(A136101(n+1)-1)`
-/

namespace A131420.P11885263127308041746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A136101 (n + 1) - 1).toNat

end

end A131420.P11885263127308041746

/-!
# A131421: Triangle read by rows (n>=1, 1<=k<=n): T(n,k) = 2*(n+k) - 3.

The programs for A131421, the canonical program `A131421.P16745487656165401881` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131421 has offset 1).

The definition of A131421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(row(n)+1+col(n)+1)-3` (program `A131421.P16745487656165401881`, by `A131421.P16745487656165401881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131421.P16745487656165401881

`2*(row(n)+1+col(n)+1)-3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131421

/-- `2*(row(n)+1+col(n)+1)-3` -/
def P16745487656165401881.Spec : Prop :=
  ∀ n, P16745487656165401881.a n = A131421 (n + 1)

theorem P16745487656165401881.correct : P16745487656165401881.Spec := by
  intro n
  simp only [A131421, Nat.add_sub_cancel]

end A131421

/-! ## A131421.P15811798410005809595

`or(1, 1+gcd(T(n-1,k), T(n,k-1)))` with `a(0)=1`
-/

namespace A131421.P15811798410005809595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (1 + Nat.gcd (SequenceMachineLib.triUp a n) (SequenceMachineLib.triLeft a n))

end

end A131421.P15811798410005809595

namespace A131421

/-- `or(1, 1+gcd(T(n-1,k), T(n,k-1)))` -/
def P15811798410005809595.Spec : Prop :=
  ∀ n, (P15811798410005809595.a n : ℤ) = A131421 (n + 1)

end A131421

/-! ## A131421.P1628395815648985802

`1+2*(row(n)+col(n))`
-/

namespace A131421.P1628395815648985802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n)

end

end A131421.P1628395815648985802

namespace A131421

/-- `1+2*(row(n)+col(n))` -/
def P1628395815648985802.Spec : Prop :=
  ∀ n, (P1628395815648985802.a n : ℤ) = A131421 (n + 1)

theorem P1628395815648985802.correct : P1628395815648985802.Spec := by
  intro n
  simp only [A131421, Nat.add_sub_cancel, A131421.P1628395815648985802.a, A131421.P16745487656165401881.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A131421

/-! ## A131421.P12332233732806013422

`2*n+1-(row(n)-1)*row(n)`
-/

namespace A131421.P12332233732806013422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - 1) * (SequenceMachineLib.triRow n : ℤ)

end

end A131421.P12332233732806013422

namespace A131421

/-- `2*n+1-(row(n)-1)*row(n)` -/
def P12332233732806013422.Spec : Prop :=
  ∀ n, P12332233732806013422.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P17644592685225618950

`col(n)+row(n)+col(n)+1+row(n)`
-/

namespace A131421.P17644592685225618950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triRow n + (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n)

end

end A131421.P17644592685225618950

namespace A131421

/-- `col(n)+row(n)+col(n)+1+row(n)` -/
def P17644592685225618950.Spec : Prop :=
  ∀ n, (P17644592685225618950.a n : ℤ) = A131421 (n + 1)

theorem P17644592685225618950.correct : P17644592685225618950.Spec := by
  intro n
  simp only [A131421, Nat.add_sub_cancel, A131421.P17644592685225618950.a, A131421.P16745487656165401881.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A131421

/-! ## A131421.P7051964150213390347

`2*(n-C(∑[char[∑[n+1]]], 2))+1`
-/

namespace A131421.P7051964150213390347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1

end

end A131421.P7051964150213390347

namespace A131421

/-- `2*(n-C(∑[char[∑[n+1]]], 2))+1` -/
def P7051964150213390347.Spec : Prop :=
  ∀ n, P7051964150213390347.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P11873808397425239443

`T(col(n), col(n)-(T(n-1,k)+1))+T(n-1,k)+2` with `a(0)=1`
-/

namespace A131421.P11873808397425239443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triUp a n + 1 : ℤ)) + SequenceMachineLib.triUp a n + 2

end

end A131421.P11873808397425239443

namespace A131421

/-- `T(col(n), col(n)-(T(n-1,k)+1))+T(n-1,k)+2` -/
def P11873808397425239443.Spec : Prop :=
  ∀ n, (P11873808397425239443.a n : ℤ) = A131421 (n + 1)

end A131421

/-! ## A131421.P12509465466401726944

`T(row(n), row(n)-(T(n-1,k)+1))+T(n-1,k)+2` with `a(0)=1`
-/

namespace A131421.P12509465466401726944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triRow n : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triUp a n + 1 : ℤ)) + SequenceMachineLib.triUp a n + 2

end

end A131421.P12509465466401726944

namespace A131421

/-- `T(row(n), row(n)-(T(n-1,k)+1))+T(n-1,k)+2` -/
def P12509465466401726944.Spec : Prop :=
  ∀ n, (P12509465466401726944.a n : ℤ) = A131421 (n + 1)

end A131421

/-! ## A131421.P18127152066384474577

`2*A051162(n)+1`
-/

namespace A131421.P18127152066384474577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051162 n + 1

end

end A131421.P18127152066384474577

namespace A131421

/-- `2*A051162(n)+1` -/
def P18127152066384474577.Spec : Prop :=
  ∀ n, P18127152066384474577.a n = A131421 (n + 1)

theorem P18127152066384474577.correct : P18127152066384474577.Spec := by
  intro n
  simp only [A131421, Nat.add_sub_cancel, A131421.P18127152066384474577.a, A131421.P16745487656165401881.a, A051162, A051162.P4484969187050632534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131421

/-! ## A131421.P8301849985221963323

`A005408(row(n)+col(n))`
-/

namespace A131421.P8301849985221963323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n)

end

end A131421.P8301849985221963323

namespace A131421

/-- `A005408(row(n)+col(n))` -/
def P8301849985221963323.Spec : Prop :=
  ∀ n, P8301849985221963323.a n = A131421 (n + 1)

theorem P8301849985221963323.correct : P8301849985221963323.Spec := by
  intro n
  simp only [A131421, Nat.add_sub_cancel, A131421.P8301849985221963323.a, A131421.P16745487656165401881.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131421

/-! ## A131421.P4266793184144146894

`2*A094727(n+1)-1`
-/

namespace A131421.P4266793184144146894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094727 (n + 1) - 1

end

end A131421.P4266793184144146894

namespace A131421

/-- `2*A094727(n+1)-1` -/
def P4266793184144146894.Spec : Prop :=
  ∀ n, P4266793184144146894.a n = A131421 (n + 1)

theorem P4266793184144146894.correct : P4266793184144146894.Spec := by
  intro n
  simp only [A131421, Nat.add_sub_cancel, A131421.P4266793184144146894.a, A131421.P16745487656165401881.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131421

/-! ## A131421.P2354255194547317784

`2*A108872(n+1)-3`
-/

namespace A131421.P2354255194547317784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108872 (n + 1) - 3

end

end A131421.P2354255194547317784

namespace A131421

/-- `2*A108872(n+1)-3` -/
def P2354255194547317784.Spec : Prop :=
  ∀ n, P2354255194547317784.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P1016487519116237473

`A176271(col(n)+1+row(n))`
-/

namespace A131421.P1016487519116237473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176271 (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n)

end

end A131421.P1016487519116237473

namespace A131421

/-- `A176271(col(n)+1+row(n))` -/
def P1016487519116237473.Spec : Prop :=
  ∀ n, P1016487519116237473.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P12183014525702437696

`1-2*(C(A003056(n), 2)-n)`
-/

namespace A131421.P12183014525702437696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * ((Nat.choose (A003056 n).toNat 2 : ℤ) - (n : ℤ))

end

end A131421.P12183014525702437696

namespace A131421

/-- `1-2*(C(A003056(n), 2)-n)` -/
def P12183014525702437696.Spec : Prop :=
  ∀ n, P12183014525702437696.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P5367369752390553727

`A005408(A051162(n))`
-/

namespace A131421.P5367369752390553727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A051162 n).toNat

end

end A131421.P5367369752390553727

namespace A131421

/-- `A005408(A051162(n))` -/
def P5367369752390553727.Spec : Prop :=
  ∀ n, P5367369752390553727.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P17530616863365804844

`A004396(A131432(n))`
-/

namespace A131421.P17530616863365804844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131432 n).toNat

end

end A131421.P17530616863365804844

namespace A131421

/-- `A004396(A131432(n))` -/
def P17530616863365804844.Spec : Prop :=
  ∀ n, P17530616863365804844.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P4350192691236023169

`A004273(A051162(n)+1)`
-/

namespace A131421.P4350192691236023169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A051162 n + 1).toNat

end

end A131421.P4350192691236023169

namespace A131421

/-- `A004273(A051162(n)+1)` -/
def P4350192691236023169.Spec : Prop :=
  ∀ n, P4350192691236023169.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P5869748380196452088

`A004273(A094727(n+1))`
-/

namespace A131421.P5869748380196452088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A094727 (n + 1)).toNat

end

end A131421.P5869748380196452088

namespace A131421

/-- `A004273(A094727(n+1))` -/
def P5869748380196452088.Spec : Prop :=
  ∀ n, P5869748380196452088.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P6257939358343216514

`A008620(2*A131432(n))`
-/

namespace A131421.P6257939358343216514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A131432 n).toNat

end

end A131421.P6257939358343216514

namespace A131421

/-- `A008620(2*A131432(n))` -/
def P6257939358343216514.Spec : Prop :=
  ∀ n, P6257939358343216514.a n = A131421 (n + 1)

end A131421

/-! ## A131421.P14646843050309221725

`A087507(2*A131432(n))`
-/

namespace A131421.P14646843050309221725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 (2 * A131432 n).toNat

end

end A131421.P14646843050309221725

namespace A131421

/-- `A087507(2*A131432(n))` -/
def P14646843050309221725.Spec : Prop :=
  ∀ n, P14646843050309221725.a n = A131421 (n + 1)

end A131421

/-!
# A131422: (A000012 * A127773) + (A127773 * A000012) - A000012.

The programs for A131422, the canonical program `A131422.P7219812161266444625` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131422 has offset 1).

The definition of A131422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131422.P11662016858204748809

`col(n)+row(n)+C(col(n), 2)+n+1`
-/

namespace A131422.P11662016858204748809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + (SequenceMachineLib.triRow n + Nat.choose (SequenceMachineLib.triCol n) 2 + (n + 1))

end

end A131422.P11662016858204748809

namespace A131422

/-- `col(n)+row(n)+C(col(n), 2)+n+1` -/
def P11662016858204748809.Spec : Prop :=
  ∀ n, (P11662016858204748809.a n : ℤ) = A131422 (n + 1)

end A131422

/-! ## A131422.P1134560847733662532

`comp[∑[n-1]]+C(1-C(∑[char[∑[n]]], 2)+n, 2)`
-/

namespace A131422.P1134560847733662532
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
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat 2

end

end A131422.P1134560847733662532

namespace A131422

/-- `comp[∑[n-1]]+C(1-C(∑[char[∑[n]]], 2)+n, 2)` -/
def P1134560847733662532.Spec : Prop :=
  ∀ n, (P1134560847733662532.a n : ℤ) = A131422 (n + 1)

end A131422

/-! ## A131422.P5883111767280759786

`∑{#}[col(n), #]+n+1+floor(sqrt(2*(n+1))-1/2)`
-/

namespace A131422.P5883111767280759786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), k : ℕ) : ℤ) + ((n + 1 : ℤ) + ⌊Real.sqrt (2 * (n + 1) : ℝ) - ((1 : ℚ) / 2 : ℝ)⌋)

end

end A131422.P5883111767280759786

namespace A131422

/-- `∑{#}[col(n), #]+n+1+floor(sqrt(2*(n+1))-1/2)` -/
def P5883111767280759786.Spec : Prop :=
  ∀ n, P5883111767280759786.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P4006577328114625843

`A130269(n+1)+col(n)`
-/

namespace A131422.P4006577328114625843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130269 (n + 1) + (SequenceMachineLib.triCol n : ℤ)

end

end A131422.P4006577328114625843

namespace A131422

/-- `A130269(n+1)+col(n)` -/
def P4006577328114625843.Spec : Prop :=
  ∀ n, P4006577328114625843.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P270116646793128284

`2*(n+1)-A329854(n)`
-/

namespace A131422.P270116646793128284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A329854 n

end

end A131422.P270116646793128284

namespace A131422

/-- `2*(n+1)-A329854(n)` -/
def P270116646793128284.Spec : Prop :=
  ∀ n, P270116646793128284.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P6220960634522951033

`A134464(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A131422.P6220960634522951033
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A131422.P6220960634522951033

namespace A131422

/-- `A134464(n+1)+C(∑[char[∑[n]]], 2)` -/
def P6220960634522951033.Spec : Prop :=
  ∀ n, P6220960634522951033.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P14591409888117081466

`comp[∑[n-1]]+C(A002260(n+1), 2)`
-/

namespace A131422.P14591409888117081466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.choose (A002260 (n + 1)).toNat 2

end

end A131422.P14591409888117081466

namespace A131422

/-- `comp[∑[n-1]]+C(A002260(n+1), 2)` -/
def P14591409888117081466.Spec : Prop :=
  ∀ n, (P14591409888117081466.a n : ℤ) = A131422 (n + 1)

end A131422

/-! ## A131422.P7219812161266444625

`A112367(n)+A007401(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131422

/-- `A112367(n)+A007401(n+1)` -/
def P7219812161266444625.Spec : Prop :=
  ∀ n, P7219812161266444625.a n = A131422 (n + 1)

theorem P7219812161266444625.correct : P7219812161266444625.Spec := by
  intro n
  simp only [A131422, Nat.add_sub_cancel]

end A131422

/-! ## A131422.P540271474560313058

`A130269(n+1)+A002262(n)`
-/

namespace A131422.P540271474560313058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130269 (n + 1) + A002262 n

end

end A131422.P540271474560313058

namespace A131422

/-- `A130269(n+1)+A002262(n)` -/
def P540271474560313058.Spec : Prop :=
  ∀ n, P540271474560313058.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P5002387093311403926

`A134464(n+1)+A057944(n)`
-/

namespace A131422.P5002387093311403926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1) + A057944 n

end

end A131422.P5002387093311403926

namespace A131422

/-- `A134464(n+1)+A057944(n)` -/
def P5002387093311403926.Spec : Prop :=
  ∀ n, P5002387093311403926.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P4827405132354350131

`A367964(n)+A094727(n+1)`
-/

namespace A131422.P4827405132354350131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 n + A094727 (n + 1)

end

end A131422.P4827405132354350131

namespace A131422

/-- `A367964(n)+A094727(n+1)` -/
def P4827405132354350131.Spec : Prop :=
  ∀ n, P4827405132354350131.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P12392946872675402378

`A064801(n+1)-A049780(n)`
-/

namespace A131422.P12392946872675402378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A049780 n

end

end A131422.P12392946872675402378

namespace A131422

/-- `A064801(n+1)-A049780(n)` -/
def P12392946872675402378.Spec : Prop :=
  ∀ n, P12392946872675402378.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P7648822322193210522

`A014132(n+1)+A112367(n)-1`
-/

namespace A131422.P7648822322193210522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + (A112367 n - 1)

end

end A131422.P7648822322193210522

namespace A131422

/-- `A014132(n+1)+A112367(n)-1` -/
def P7648822322193210522.Spec : Prop :=
  ∀ n, P7648822322193210522.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P575761497172884690

`A217575(n+1)-A049777(n+1)`
-/

namespace A131422.P575761497172884690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - A049777 (n + 1)

end

end A131422.P575761497172884690

namespace A131422

/-- `A217575(n+1)-A049777(n+1)` -/
def P575761497172884690.Spec : Prop :=
  ∀ n, P575761497172884690.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P6023515611193912977

`A002024(n+1)+A112367(n)+n`
-/

namespace A131422.P6023515611193912977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A112367 n + (n : ℤ))

end

end A131422.P6023515611193912977

namespace A131422

/-- `A002024(n+1)+A112367(n)+n` -/
def P6023515611193912977.Spec : Prop :=
  ∀ n, P6023515611193912977.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P10343158752404519862

`A127739(n+1)+n-A049780(n)`
-/

namespace A131422.P10343158752404519862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + ((n : ℤ) - A049780 n)

end

end A131422.P10343158752404519862

namespace A131422

/-- `A127739(n+1)+n-A049780(n)` -/
def P10343158752404519862.Spec : Prop :=
  ∀ n, P10343158752404519862.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P9842809537237099830

`A007401(n+1)+A000217(A002262(n))`
-/

namespace A131422.P9842809537237099830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) + A000217 (A002262 n).toNat

end

end A131422.P9842809537237099830

namespace A131422

/-- `A007401(n+1)+A000217(A002262(n))` -/
def P9842809537237099830.Spec : Prop :=
  ∀ n, P9842809537237099830.a n = A131422 (n + 1)

end A131422

/-! ## A131422.P13521275234135243582

`A029931(A099627(n))+n`
-/

namespace A131422.P13521275234135243582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A099627 n).toNat + (n : ℤ)

end

end A131422.P13521275234135243582

namespace A131422

/-- `A029931(A099627(n))+n` -/
def P13521275234135243582.Spec : Prop :=
  ∀ n, P13521275234135243582.a n = A131422 (n + 1)

end A131422

/-!
# A131423: a(n) = n*(n+2)*(2*n-1)/3. Also, row sums of triangle A131422.

The programs for A131423, the canonical program `A131423.P16389081298767178293` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131423 has offset 1).

The definition of A131423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+3)*(2*(n+1)-1)/3` (program `A131423.P7072846571683643403`, by `A131423.P7072846571683643403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131423.P7187111169879879560

`ogf((1+4x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A131423.P7187111169879879560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, -4, 6, -4, 1] n

end

end A131423.P7187111169879879560

namespace A131423

/-- `ogf((1+4x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7187111169879879560.Spec : Prop :=
  ∀ n, P7187111169879879560.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P10614697604047116290

`a(n-1)+2*(n+1)²-1` with `a(0)=1`
-/

namespace A131423.P10614697604047116290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * (n + 1) ^ 2 : ℤ) - 1

end

end A131423.P10614697604047116290

namespace A131423

/-- `a(n-1)+2*(n+1)²-1` -/
def P10614697604047116290.Spec : Prop :=
  ∀ n, P10614697604047116290.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P7072846571683643403

`(n+1)*(n+3)*(2*(n+1)-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131423.P7072846571683643403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 3) : ℤ) * ((2 * (n + 1) : ℤ) - 1) : ℚ) / 3

end

end A131423.P7072846571683643403

namespace A131423

/-- `(n+1)*(n+3)*(2*(n+1)-1)/3` -/
def P7072846571683643403.Spec : Prop :=
  ∀ n, P7072846571683643403.a n = (A131423 (n + 1) : ℚ)

theorem P7072846571683643403.correct : P7072846571683643403.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A131423, Nat.add_sub_cancel, A131423.P7072846571683643403.a, A131423.P16389081298767178293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A131423, Nat.add_sub_cancel, A131423.P7072846571683643403.a, A131423.P16389081298767178293.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A131423

/-! ## A131423.P16389081298767178293

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=25, a(3)=56`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131423

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16389081298767178293.Spec : Prop :=
  ∀ n, P16389081298767178293.a n = A131423 (n + 1)

theorem P16389081298767178293.correct : P16389081298767178293.Spec := by
  intro n
  simp only [A131423, Nat.add_sub_cancel]

end A131423

/-! ## A131423.P36176759117551714

`∑{#}[n, (#+1)*A143370(C(n+1, 2)+#+1)]`
-/

namespace A131423.P36176759117551714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A143370 (Nat.choose (n + 1) 2 + (k + 1))

end

end A131423.P36176759117551714

namespace A131423

/-- `∑{#}[n, (#+1)*A143370(C(n+1, 2)+#+1)]` -/
def P36176759117551714.Spec : Prop :=
  ∀ n, P36176759117551714.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P5089907109556897564

`∑[∑[ceil(cot(Δ[sqrt(n)]²))]]`
-/

namespace A131423.P5089907109556897564
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot ((f3 (n + 1) - f3 n) ^ 2)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131423.P5089907109556897564

namespace A131423

/-- `∑[∑[ceil(cot(Δ[sqrt(n)]²))]]` -/
def P5089907109556897564.Spec : Prop :=
  ∀ n, P5089907109556897564.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P7295013914878306144

`∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=6`
-/

namespace A131423.P7295013914878306144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131423.P7295013914878306144

namespace A131423

/-- `∑[∑[a(n-1)+4]]` -/
def P7295013914878306144.Spec : Prop :=
  ∀ n, (P7295013914878306144.a n : ℤ) = A131423 (n + 1)

end A131423

/-! ## A131423.P3653185305014647491

`∑[∑[ogf((1+4x-x^2)/(1-2x+x^2))]]`
-/

namespace A131423.P3653185305014647491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131423.P3653185305014647491

namespace A131423

/-- `∑[∑[ogf((1+4x-x^2)/(1-2x+x^2))]]` -/
def P3653185305014647491.Spec : Prop :=
  ∀ n, P3653185305014647491.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P14976524809444984978

`∑[C(2*(n+1), 2)]+∑[n]`
-/

namespace A131423.P14976524809444984978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A131423.P14976524809444984978

namespace A131423

/-- `∑[C(2*(n+1), 2)]+∑[n]` -/
def P14976524809444984978.Spec : Prop :=
  ∀ n, (P14976524809444984978.a n : ℤ) = A131423 (n + 1)

end A131423

/-! ## A131423.P11706619309898685871

`∑[∑[8*n]-a(n-1)]` with `a(0)=1`
-/

namespace A131423.P11706619309898685871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131423.P11706619309898685871

namespace A131423

/-- `∑[∑[8*n]-a(n-1)]` -/
def P11706619309898685871.Spec : Prop :=
  ∀ n, P11706619309898685871.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P3246786710257158499

`∑[n]+∑[C(n+2+n, 2)]`
-/

namespace A131423.P3246786710257158499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2 + n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A131423.P3246786710257158499

namespace A131423

/-- `∑[n]+∑[C(n+2+n, 2)]` -/
def P3246786710257158499.Spec : Prop :=
  ∀ n, (P3246786710257158499.a n : ℤ) = A131423 (n + 1)

end A131423

/-! ## A131423.P1520003324253530795

`∑[n-∑[a(n-1)-4]]` with `a(0)=-1`
-/

namespace A131423.P1520003324253530795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131423.P1520003324253530795

namespace A131423

/-- `∑[n-∑[a(n-1)-4]]` -/
def P1520003324253530795.Spec : Prop :=
  ∀ n, P1520003324253530795.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P8838551543413092180

`(n+1)²+4*C(n+2, 3)`
-/

namespace A131423.P8838551543413092180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 4 * Nat.choose (n + 2) 3

end

end A131423.P8838551543413092180

namespace A131423

/-- `(n+1)²+4*C(n+2, 3)` -/
def P8838551543413092180.Spec : Prop :=
  ∀ n, (P8838551543413092180.a n : ℤ) = A131423 (n + 1)

end A131423

/-! ## A131423.P13982508712686722657

`record[C(2*n, 3)/2-n]+1`
-/

namespace A131423.P13982508712686722657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A131423.P13982508712686722657

namespace A131423

/-- `record[C(2*n, 3)/2-n]+1` -/
def P13982508712686722657.Spec : Prop :=
  ∀ n, P13982508712686722657.a n = (A131423 (n + 1) : ℚ)

end A131423

/-! ## A131423.P2565922204509840205

`record[C(2*n, 3)/2-(n-1)]`
-/

namespace A131423.P2565922204509840205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℚ) / 2 - ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131423.P2565922204509840205

namespace A131423

/-- `record[C(2*n, 3)/2-(n-1)]` -/
def P2565922204509840205.Spec : Prop :=
  ∀ n, P2565922204509840205.a n = (A131423 (n + 1) : ℚ)

end A131423

/-! ## A131423.P15093574241319757958

`or(1, ∑[(n+2)*2*n])+n`
-/

namespace A131423.P15093574241319757958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A131423.P15093574241319757958

namespace A131423

/-- `or(1, ∑[(n+2)*2*n])+n` -/
def P15093574241319757958.Spec : Prop :=
  ∀ n, (P15093574241319757958.a n : ℤ) = A131423 (n + 1)

end A131423

/-! ## A131423.P7024564464925366481

`xor(1, ∑[(n+2)*2*n])+n`
-/

namespace A131423.P7024564464925366481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A131423.P7024564464925366481

namespace A131423

/-- `xor(1, ∑[(n+2)*2*n])+n` -/
def P7024564464925366481.Spec : Prop :=
  ∀ n, (P7024564464925366481.a n : ℤ) = A131423 (n + 1)

end A131423

/-! ## A131423.P14548442497386288575

`(n+1)^3-∑[lcm(n, n-1)]`
-/

namespace A131423.P14548442497386288575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A131423.P14548442497386288575

namespace A131423

/-- `(n+1)^3-∑[lcm(n, n-1)]` -/
def P14548442497386288575.Spec : Prop :=
  ∀ n, P14548442497386288575.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P11801505911782208948

`∑[∑[record[lcm(2, n+1)]]]-(n+1)`
-/

namespace A131423.P11801505911782208948
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A131423.P11801505911782208948

namespace A131423

/-- `∑[∑[record[lcm(2, n+1)]]]-(n+1)` -/
def P11801505911782208948.Spec : Prop :=
  ∀ n, P11801505911782208948.a n = A131423 (n + 1)

end A131423

/-! ## A131423.P18056668504711052845

`(3/n+1)*(a(n-1)+n)` with `a(0)=1`
-/

namespace A131423.P18056668504711052845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 / (n : ℚ) + 1) * (a (n - 1) + (n : ℚ))

end

end A131423.P18056668504711052845

namespace A131423

/-- `(3/n+1)*(a(n-1)+n)` -/
def P18056668504711052845.Spec : Prop :=
  ∀ n, P18056668504711052845.a n = (A131423 (n + 1) : ℚ)

end A131423

/-!
# A131424: Triangle read by rows: T(n,k) = prime(n) + prime(k) - 3, 1 <= k <= n.

The programs for A131424, the canonical program `A131424.P6670310571376508693` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131424 has offset 1).

The definition of A131424 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)+1)+A000040(col(n)+1)-3` (program `A131424.P6670310571376508693`, by `A131424.P6670310571376508693.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131424.P6670310571376508693

`A000040(row(n)+1)+A000040(col(n)+1)-3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131424

/-- `A000040(row(n)+1)+A000040(col(n)+1)-3` -/
def P6670310571376508693.Spec : Prop :=
  ∀ n, P6670310571376508693.a n = A131424 (n + 1)

theorem P6670310571376508693.correct : P6670310571376508693.Spec := by
  intro n
  simp only [A131424, Nat.add_sub_cancel]

end A131424

/-! ## A131424.P17669663160292499663

`A065342(1+n)-3`
-/

namespace A131424.P17669663160292499663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (1 + n) - 3

end

end A131424.P17669663160292499663

namespace A131424

/-- `A065342(1+n)-3` -/
def P17669663160292499663.Spec : Prop :=
  ∀ n, P17669663160292499663.a n = A131424 (n + 1)

end A131424

/-! ## A131424.P8722260841138427742

`A023445(A065342(n+1))`
-/

namespace A131424.P8722260841138427742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A065342 (n + 1)).toNat

end

end A131424.P8722260841138427742

namespace A131424

/-- `A023445(A065342(n+1))` -/
def P8722260841138427742.Spec : Prop :=
  ∀ n, P8722260841138427742.a n = A131424 (n + 1)

end A131424

/-! ## A131424.P17744422626299680504

`A001414(A087112(n+1))-3`
-/

namespace A131424.P17744422626299680504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A087112 (n + 1)).toNat - 3

end

end A131424.P17744422626299680504

namespace A131424

/-- `A001414(A087112(n+1))-3` -/
def P17744422626299680504.Spec : Prop :=
  ∀ n, P17744422626299680504.a n = A131424 (n + 1)

end A131424

/-! ## A131424.P9691650326845836242

`A037126(n+1)+A005145(n+1)-3`
-/

namespace A131424.P9691650326845836242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A005145 (n + 1) - 3

end

end A131424.P9691650326845836242

namespace A131424

/-- `A037126(n+1)+A005145(n+1)-3` -/
def P9691650326845836242.Spec : Prop :=
  ∀ n, P9691650326845836242.a n = A131424 (n + 1)

theorem P9691650326845836242.correct : P9691650326845836242.Spec := by
  intro n
  simp only [A131424, Nat.add_sub_cancel, A131424.P9691650326845836242.a, A131424.P6670310571376508693.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005145, A005145.P7903299518883907964.a, A037126, A037126.P12409953000028740775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131424

/-! ## A131424.P7394871705675484672

`A006093(A002024(n+1))+A037126(n+1)-2`
-/

namespace A131424.P7394871705675484672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A002024 (n + 1)).toNat + (A037126 (n + 1) - 2)

end

end A131424.P7394871705675484672

namespace A131424

/-- `A006093(A002024(n+1))+A037126(n+1)-2` -/
def P7394871705675484672.Spec : Prop :=
  ∀ n, P7394871705675484672.a n = A131424 (n + 1)

end A131424

/-! ## A131424.P6919601413067373388

`(A065342(n+1)+A065091(n+1))%A098090(n+1)`
-/

namespace A131424.P6919601413067373388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065342 (n + 1) + A065091 (n + 1)) (A098090 (n + 1))

end

end A131424.P6919601413067373388

namespace A131424

/-- `(A065342(n+1)+A065091(n+1))%A098090(n+1)` -/
def P6919601413067373388.Spec : Prop :=
  ∀ n, P6919601413067373388.a n = A131424 (n + 1)

end A131424

/-! ## A131424.P2998796149225619335

`(A065342(n+1)+A000040(n+2))%A098090(n+1)`
-/

namespace A131424.P2998796149225619335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065342 (n + 1) + A000040 (n + 2)) (A098090 (n + 1))

end

end A131424.P2998796149225619335

namespace A131424

/-- `(A065342(n+1)+A000040(n+2))%A098090(n+1)` -/
def P2998796149225619335.Spec : Prop :=
  ∀ n, P2998796149225619335.a n = A131424 (n + 1)

end A131424

/-! ## A131424.P16721753600786834728

`A064916(A087112(n+1))-2`
-/

namespace A131424.P16721753600786834728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064916 (A087112 (n + 1)).toNat - 2

end

end A131424.P16721753600786834728

namespace A131424

/-- `A064916(A087112(n+1))-2` -/
def P16721753600786834728.Spec : Prop :=
  ∀ n, P16721753600786834728.a n = A131424 (n + 1)

end A131424

/-! ## A131424.P17726299385877926458

`A037126(n+1)+A246676(A137688(n))-2`
-/

namespace A131424.P17726299385877926458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + (A246676 (A137688 n).toNat - 2)

end

end A131424.P17726299385877926458

namespace A131424

/-- `A037126(n+1)+A246676(A137688(n))-2` -/
def P17726299385877926458.Spec : Prop :=
  ∀ n, P17726299385877926458.a n = A131424 (n + 1)

end A131424

/-!
# A131425: Row sums of triangle A131424.

The programs for A131425, the canonical program `A131425.P7307706375564196497` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131425 has offset 1).

The definition of A131425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131425.P7431530403771737277

`A033286(n+1)+∑[A086801(n+1)]`
-/

namespace A131425.P7431530403771737277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131425.P7431530403771737277

namespace A131425

/-- `A033286(n+1)+∑[A086801(n+1)]` -/
def P7431530403771737277.Spec : Prop :=
  ∀ n, P7431530403771737277.a n = A131425 (n + 1)

end A131425

/-! ## A131425.P7307706375564196497

`∑[A090942(n+1)+A086801(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131425

/-- `∑[A090942(n+1)+A086801(n+1)]` -/
def P7307706375564196497.Spec : Prop :=
  ∀ n, P7307706375564196497.a n = A131425 (n + 1)

theorem P7307706375564196497.correct : P7307706375564196497.Spec := by
  intro n
  simp only [A131425, Nat.add_sub_cancel]

end A131425

/-! ## A131425.P7780597967250592966

`A033286(n+1)+∑[A006093(n+1)-2]`
-/

namespace A131425.P7780597967250592966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131425.P7780597967250592966

namespace A131425

/-- `A033286(n+1)+∑[A006093(n+1)-2]` -/
def P7780597967250592966.Spec : Prop :=
  ∀ n, P7780597967250592966.a n = A131425 (n + 1)

end A131425

/-! ## A131425.P8845660529986159885

`A033286(n+1)+∑[A000040(n+1)-3]`
-/

namespace A131425.P8845660529986159885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131425.P8845660529986159885

namespace A131425

/-- `A033286(n+1)+∑[A000040(n+1)-3]` -/
def P8845660529986159885.Spec : Prop :=
  ∀ n, P8845660529986159885.a n = A131425 (n + 1)

end A131425

/-! ## A131425.P10228880316355983815

`A033286(n+1)+∑[A008864(n+1)-4]`
-/

namespace A131425.P10228880316355983815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131425.P10228880316355983815

namespace A131425

/-- `A033286(n+1)+∑[A008864(n+1)-4]` -/
def P10228880316355983815.Spec : Prop :=
  ∀ n, P10228880316355983815.a n = A131425 (n + 1)

end A131425

/-! ## A131425.P16535811034104508661

`A103976(n+1)+(n+1)*A006093(n+1)`
-/

namespace A131425.P16535811034104508661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103976 (n + 1) + (n + 1 : ℤ) * A006093 (n + 1)

end

end A131425.P16535811034104508661

namespace A131425

/-- `A103976(n+1)+(n+1)*A006093(n+1)` -/
def P16535811034104508661.Spec : Prop :=
  ∀ n, P16535811034104508661.a n = A131425 (n + 1)

end A131425

/-! ## A131425.P2115000729658716608

`A101301(n+1)+(n+1)*A040976(n+1)`
-/

namespace A131425.P2115000729658716608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) + (n + 1 : ℤ) * A040976 (n + 1)

end

end A131425.P2115000729658716608

namespace A131425

/-- `A101301(n+1)+(n+1)*A040976(n+1)` -/
def P2115000729658716608.Spec : Prop :=
  ∀ n, P2115000729658716608.a n = A131425 (n + 1)

end A131425

/-! ## A131425.P6669030425624063460

`A033286(n+1)+∑[A008578(n+2)-3]`
-/

namespace A131425.P6669030425624063460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131425.P6669030425624063460

namespace A131425

/-- `A033286(n+1)+∑[A008578(n+2)-3]` -/
def P6669030425624063460.Spec : Prop :=
  ∀ n, P6669030425624063460.a n = A131425 (n + 1)

end A131425

/-!
# A131426: a(n) = 2*prime(n) - 3.

The programs for A131426, the canonical program `A131426.P1992533446428371945` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131426 has offset 1).

The definition of A131426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+1)-3` (program `A131426.P1992533446428371945`, by `A131426.P1992533446428371945.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131426.P1992533446428371945

`2*A000040(n+1)-3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131426

/-- `2*A000040(n+1)-3` -/
def P1992533446428371945.Spec : Prop :=
  ∀ n, P1992533446428371945.a n = A131426 (n + 1)

theorem P1992533446428371945.correct : P1992533446428371945.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel]

end A131426

/-! ## A131426.P4614360900386909277

`A140777(n+1)+1`
-/

namespace A131426.P4614360900386909277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) + 1

end

end A131426.P4614360900386909277

namespace A131426

/-- `A140777(n+1)+1` -/
def P4614360900386909277.Spec : Prop :=
  ∀ n, P4614360900386909277.a n = A131426 (n + 1)

theorem P4614360900386909277.correct : P4614360900386909277.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P4614360900386909277.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140777, A140777.P12433789027448162273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P8610543647895856610

`A037168(n+1)-1`
-/

namespace A131426.P8610543647895856610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - 1

end

end A131426.P8610543647895856610

namespace A131426

/-- `A037168(n+1)-1` -/
def P8610543647895856610.Spec : Prop :=
  ∀ n, P8610543647895856610.a n = A131426 (n + 1)

theorem P8610543647895856610.correct : P8610543647895856610.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P8610543647895856610.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P8775866801680065537

`A100484(n+1)-3`
-/

namespace A131426.P8775866801680065537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 3

end

end A131426.P8775866801680065537

namespace A131426

/-- `A100484(n+1)-3` -/
def P8775866801680065537.Spec : Prop :=
  ∀ n, P8775866801680065537.a n = A131426 (n + 1)

end A131426

/-! ## A131426.P8177593562247685491

`A072055(n+1)-4`
-/

namespace A131426.P8177593562247685491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 4

end

end A131426.P8177593562247685491

namespace A131426

/-- `A072055(n+1)-4` -/
def P8177593562247685491.Spec : Prop :=
  ∀ n, P8177593562247685491.a n = A131426 (n + 1)

theorem P8177593562247685491.correct : P8177593562247685491.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P8177593562247685491.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P13549871804056690069

`A089241(n+1)-5`
-/

namespace A131426.P13549871804056690069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - 5

end

end A131426.P13549871804056690069

namespace A131426

/-- `A089241(n+1)-5` -/
def P13549871804056690069.Spec : Prop :=
  ∀ n, P13549871804056690069.a n = A131426 (n + 1)

theorem P13549871804056690069.correct : P13549871804056690069.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P13549871804056690069.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P2920849032673084801

`A129069(n+1)-6`
-/

namespace A131426.P2920849032673084801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) - 6

end

end A131426.P2920849032673084801

namespace A131426

/-- `A129069(n+1)-6` -/
def P2920849032673084801.Spec : Prop :=
  ∀ n, P2920849032673084801.a n = A131426 (n + 1)

theorem P2920849032673084801.correct : P2920849032673084801.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P2920849032673084801.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129069, A129069.P1730810587281407252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P16566747370631167401

`sqrt(A069262(n+1))-3`
-/

namespace A131426.P16566747370631167401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ) - 3

end

end A131426.P16566747370631167401

namespace A131426

/-- `sqrt(A069262(n+1))-3` -/
def P16566747370631167401.Spec : Prop :=
  ∀ n, P16566747370631167401.a n = (A131426 (n + 1) : ℝ)

end A131426

/-! ## A131426.P8697824126090609113

`2*A040976(n+1)+1`
-/

namespace A131426.P8697824126090609113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1) + 1

end

end A131426.P8697824126090609113

namespace A131426

/-- `2*A040976(n+1)+1` -/
def P8697824126090609113.Spec : Prop :=
  ∀ n, P8697824126090609113.a n = A131426 (n + 1)

theorem P8697824126090609113.correct : P8697824126090609113.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P8697824126090609113.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P5720799946741359568

`2*A006093(n+1)-1`
-/

namespace A131426.P5720799946741359568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - 1

end

end A131426.P5720799946741359568

namespace A131426

/-- `2*A006093(n+1)-1` -/
def P5720799946741359568.Spec : Prop :=
  ∀ n, P5720799946741359568.a n = A131426 (n + 1)

theorem P5720799946741359568.correct : P5720799946741359568.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P5720799946741359568.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P3751233373728690182

`2*A086801(n+1)+3`
-/

namespace A131426.P3751233373728690182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086801 (n + 1) + 3

end

end A131426.P3751233373728690182

namespace A131426

/-- `2*A086801(n+1)+3` -/
def P3751233373728690182.Spec : Prop :=
  ∀ n, P3751233373728690182.a n = A131426 (n + 1)

theorem P3751233373728690182.correct : P3751233373728690182.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P3751233373728690182.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P6345155716436584591

`A001749(n+1)/2-3`
-/

namespace A131426.P6345155716436584591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 - 3

end

end A131426.P6345155716436584591

namespace A131426

/-- `A001749(n+1)/2-3` -/
def P6345155716436584591.Spec : Prop :=
  ∀ n, P6345155716436584591.a n = (A131426 (n + 1) : ℚ)

theorem P6345155716436584591.correct : P6345155716436584591.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P6345155716436584591.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P10999359039127065780

`2*A008864(n+1)-5`
-/

namespace A131426.P10999359039127065780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008864 (n + 1) - 5

end

end A131426.P10999359039127065780

namespace A131426

/-- `2*A008864(n+1)-5` -/
def P10999359039127065780.Spec : Prop :=
  ∀ n, P10999359039127065780.a n = A131426 (n + 1)

theorem P10999359039127065780.correct : P10999359039127065780.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P10999359039127065780.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P6714018895016633775

`A138636(n+1)/3-3`
-/

namespace A131426.P6714018895016633775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 3 - 3

end

end A131426.P6714018895016633775

namespace A131426

/-- `A138636(n+1)/3-3` -/
def P6714018895016633775.Spec : Prop :=
  ∀ n, P6714018895016633775.a n = (A131426 (n + 1) : ℚ)

theorem P6714018895016633775.correct : P6714018895016633775.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P6714018895016633775.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A138636, A138636.P18275506092715506513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P4774419463690095224

`A142342(n+1)/5-3`
-/

namespace A131426.P4774419463690095224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142342 (n + 1) : ℚ) / 5 - 3

end

end A131426.P4774419463690095224

namespace A131426

/-- `A142342(n+1)/5-3` -/
def P4774419463690095224.Spec : Prop :=
  ∀ n, P4774419463690095224.a n = (A131426 (n + 1) : ℚ)

theorem P4774419463690095224.correct : P4774419463690095224.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P4774419463690095224.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A142342, A142342.P5141650117013135676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P4219481116637425230

`A239636(n+1)+2*n`
-/

namespace A131426.P4219481116637425230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239636 (n + 1) + (2 * n : ℤ)

end

end A131426.P4219481116637425230

namespace A131426

/-- `A239636(n+1)+2*n` -/
def P4219481116637425230.Spec : Prop :=
  ∀ n, P4219481116637425230.a n = A131426 (n + 1)

theorem P4219481116637425230.correct : P4219481116637425230.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P4219481116637425230.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A239636, A239636.P9315992942707104834.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P11412045083577001264

`2*sqrt(A005722(n+1))-1`
-/

namespace A131426.P11412045083577001264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A005722 (n + 1) : ℝ) - 1

end

end A131426.P11412045083577001264

namespace A131426

/-- `2*sqrt(A005722(n+1))-1` -/
def P11412045083577001264.Spec : Prop :=
  ∀ n, P11412045083577001264.a n = (A131426 (n + 1) : ℝ)

end A131426

/-! ## A131426.P11108653465194660652

`a(n-1)+A100803(n)+1` with `a(0)=1`
-/

namespace A131426.P11108653465194660652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A100803 n + 1)

end

end A131426.P11108653465194660652

namespace A131426

/-- `a(n-1)+A100803(n)+1` -/
def P11108653465194660652.Spec : Prop :=
  ∀ n, P11108653465194660652.a n = A131426 (n + 1)

end A131426

/-! ## A131426.P18343036796810355148

`a(n-1)+2*A001223(n)` with `a(0)=1`
-/

namespace A131426.P18343036796810355148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A001223 n

end

end A131426.P18343036796810355148

namespace A131426

/-- `a(n-1)+2*A001223(n)` -/
def P18343036796810355148.Spec : Prop :=
  ∀ n, P18343036796810355148.a n = A131426 (n + 1)

end A131426

/-! ## A131426.P16982121344694440269

`A134591(n+1)+A023444(n)`
-/

namespace A131426.P16982121344694440269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + A023444 n

end

end A131426.P16982121344694440269

namespace A131426

/-- `A134591(n+1)+A023444(n)` -/
def P16982121344694440269.Spec : Prop :=
  ∀ n, P16982121344694440269.a n = A131426 (n + 1)

theorem P16982121344694440269.correct : P16982121344694440269.Spec := by
  intro n
  simp only [A131426, Nat.add_sub_cancel, A131426.P16982121344694440269.a, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023444, A023444.P8712163668128210297.a, A134591, A134591.P13784663667261059065.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131426

/-! ## A131426.P10884005746564193662

`record[∏{p}[2*n+1, #-2]+2*n]`
-/

namespace A131426.P10884005746564193662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131426.P10884005746564193662

namespace A131426

/-- `record[∏{p}[2*n+1, #-2]+2*n]` -/
def P10884005746564193662.Spec : Prop :=
  ∀ n, P10884005746564193662.a n = A131426 (n + 1)

end A131426

/-!
# A131427: A000108(n) preceded by n zeros.

The programs for A131427, the canonical program `A131427.P4576439200903195274` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131427 has offset 0).

The definition of A131427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131427.P11076429754665174517

`2*((row(n)-col(n))*col(n)+1)*(2*col(n)-1)*T(n-1,k-1)/(col(n)+1)` with `a(0)=1`
-/

namespace A131427.P11076429754665174517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) + 1) * ((2 * SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) * SequenceMachineLib.triUpLeft a n / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A131427.P11076429754665174517

namespace A131427

/-- `2*((row(n)-col(n))*col(n)+1)*(2*col(n)-1)*T(n-1,k-1)/(col(n)+1)` -/
def P11076429754665174517.Spec : Prop :=
  ∀ n, P11076429754665174517.a n = (A131427 n : ℚ)

end A131427

/-! ## A131427.P11971290617575801479

`Δ[row(n)]*A009766(n)`
-/

namespace A131427.P11971290617575801479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A009766 n

end

end A131427.P11971290617575801479

namespace A131427

/-- `Δ[row(n)]*A009766(n)` -/
def P11971290617575801479.Spec : Prop :=
  ∀ n, P11971290617575801479.a n = A131427 n

end A131427

/-! ## A131427.P1496033172482577803

`A050144(A127773(n+1))`
-/

namespace A131427.P1496033172482577803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050144 (A127773 (n + 1)).toNat

end

end A131427.P1496033172482577803

namespace A131427

/-- `A050144(A127773(n+1))` -/
def P1496033172482577803.Spec : Prop :=
  ∀ n, P1496033172482577803.a n = A131427 n

end A131427

/-! ## A131427.P572978679661897583

`A009766(n)*A023531(n)`
-/

namespace A131427.P572978679661897583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A023531 n

end

end A131427.P572978679661897583

namespace A131427

/-- `A009766(n)*A023531(n)` -/
def P572978679661897583.Spec : Prop :=
  ∀ n, P572978679661897583.a n = A131427 n

end A131427

/-! ## A131427.P10625198913663718705

`A023531(n)*A050165(n)`
-/

namespace A131427.P10625198913663718705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A050165 n

end

end A131427.P10625198913663718705

namespace A131427

/-- `A023531(n)*A050165(n)` -/
def P10625198913663718705.Spec : Prop :=
  ∀ n, P10625198913663718705.a n = A131427 n

end A131427

/-! ## A131427.P12237572488718079413

`A023531(n)*A059346(n)`
-/

namespace A131427.P12237572488718079413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A059346 n

end

end A131427.P12237572488718079413

namespace A131427

/-- `A023531(n)*A059346(n)` -/
def P12237572488718079413.Spec : Prop :=
  ∀ n, P12237572488718079413.a n = A131427 n

end A131427

/-! ## A131427.P6535732790833554465

`A023531(n)*A067310(n)`
-/

namespace A131427.P6535732790833554465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A067310 n

end

end A131427.P6535732790833554465

namespace A131427

/-- `A023531(n)*A067310(n)` -/
def P6535732790833554465.Spec : Prop :=
  ∀ n, P6535732790833554465.a n = A131427 n

end A131427

/-! ## A131427.P15494262892318961571

`A023531(n)*A067323(n)`
-/

namespace A131427.P15494262892318961571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A067323 n

end

end A131427.P15494262892318961571

namespace A131427

/-- `A023531(n)*A067323(n)` -/
def P15494262892318961571.Spec : Prop :=
  ∀ n, P15494262892318961571.a n = A131427 n

end A131427

/-! ## A131427.P1144688519219198739

`A023531(n)*A078391(n)`
-/

namespace A131427.P1144688519219198739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A078391 n

end

end A131427.P1144688519219198739

namespace A131427

/-- `A023531(n)*A078391(n)` -/
def P1144688519219198739.Spec : Prop :=
  ∀ n, P1144688519219198739.a n = A131427 n

end A131427

/-! ## A131427.P6761952709978371035

`A023531(n)*A078817(n)`
-/

namespace A131427.P6761952709978371035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A078817 n

end

end A131427.P6761952709978371035

namespace A131427

/-- `A023531(n)*A078817(n)` -/
def P6761952709978371035.Spec : Prop :=
  ∀ n, P6761952709978371035.a n = A131427 n

end A131427

/-! ## A131427.P12566382642606012545

`A023531(n)*A086610(n)`
-/

namespace A131427.P12566382642606012545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A086610 n

end

end A131427.P12566382642606012545

namespace A131427

/-- `A023531(n)*A086610(n)` -/
def P12566382642606012545.Spec : Prop :=
  ∀ n, P12566382642606012545.a n = A131427 n

end A131427

/-! ## A131427.P5178763068496491832

`A023531(n)*A086612(n)`
-/

namespace A131427.P5178763068496491832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A086612 n

end

end A131427.P5178763068496491832

namespace A131427

/-- `A023531(n)*A086612(n)` -/
def P5178763068496491832.Spec : Prop :=
  ∀ n, P5178763068496491832.a n = A131427 n

end A131427

/-! ## A131427.P4576439200903195274

`A023531(n)*A098474(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131427

/-- `A023531(n)*A098474(n)` -/
def P4576439200903195274.Spec : Prop :=
  ∀ n, P4576439200903195274.a n = A131427 n

theorem P4576439200903195274.correct : P4576439200903195274.Spec := by
  intro n
  simp only [A131427]

end A131427

/-! ## A131427.P8903572853726523848

`A023531(n)*A106534(n)`
-/

namespace A131427.P8903572853726523848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A106534 n

end

end A131427.P8903572853726523848

namespace A131427

/-- `A023531(n)*A106534(n)` -/
def P8903572853726523848.Spec : Prop :=
  ∀ n, P8903572853726523848.a n = A131427 n

end A131427

/-! ## A131427.P16111837611443643273

`A067310(n)*A103452(n)`
-/

namespace A131427.P16111837611443643273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067310 n * A103452 n

end

end A131427.P16111837611443643273

namespace A131427

/-- `A067310(n)*A103452(n)` -/
def P16111837611443643273.Spec : Prop :=
  ∀ n, P16111837611443643273.a n = A131427 n

end A131427

/-! ## A131427.P11970080570835695256

`A009766(n)*A010054(n+1)`
-/

namespace A131427.P11970080570835695256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A010054 (n + 1)

end

end A131427.P11970080570835695256

namespace A131427

/-- `A009766(n)*A010054(n+1)` -/
def P11970080570835695256.Spec : Prop :=
  ∀ n, P11970080570835695256.a n = A131427 n

end A131427

/-! ## A131427.P8396608351447213239

`A010054(n+1)*A059346(n)`
-/

namespace A131427.P8396608351447213239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A059346 n

end

end A131427.P8396608351447213239

namespace A131427

/-- `A010054(n+1)*A059346(n)` -/
def P8396608351447213239.Spec : Prop :=
  ∀ n, P8396608351447213239.a n = A131427 n

end A131427

/-! ## A131427.P11404245433166831397

`A009766(n)*A073424(n+1)`
-/

namespace A131427.P11404245433166831397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A073424 (n + 1)

end

end A131427.P11404245433166831397

namespace A131427

/-- `A009766(n)*A073424(n+1)` -/
def P11404245433166831397.Spec : Prop :=
  ∀ n, P11404245433166831397.a n = A131427 n

end A131427

/-! ## A131427.P3858197217637085711

`A059346(n)*A073423(n+1)`
-/

namespace A131427.P3858197217637085711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 n * A073423 (n + 1)

end

end A131427.P3858197217637085711

namespace A131427

/-- `A059346(n)*A073423(n+1)` -/
def P3858197217637085711.Spec : Prop :=
  ∀ n, P3858197217637085711.a n = A131427 n

end A131427

/-! ## A131427.P10624968119258014239

`A010054(n+1)*A355173(n)`
-/

namespace A131427.P10624968119258014239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A355173 n

end

end A131427.P10624968119258014239

namespace A131427

/-- `A010054(n+1)*A355173(n)` -/
def P10624968119258014239.Spec : Prop :=
  ∀ n, P10624968119258014239.a n = A131427 n

end A131427

/-!
# A131428: a(n) = 2*C(n) - 1, where C(n) = A000108(n) are the Catalan numbers.

The programs for A131428, the canonical program `A131428.P4069501737388435408` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131428 has offset 0).

The definition of A131428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131428.P10270433310682981684

`2*A000108(n)-1`
-/

namespace A131428.P10270433310682981684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - 1

end

end A131428.P10270433310682981684

namespace A131428

/-- `2*A000108(n)-1` -/
def P10270433310682981684.Spec : Prop :=
  ∀ n, P10270433310682981684.a n = A131428 n

end A131428

/-! ## A131428.P16170807905760315080

`∑{#}[n, A080233(C(n+1, 2)+#)²]`
-/

namespace A131428.P16170807905760315080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A080233 (Nat.choose (n + 1) 2 + k) ^ 2

end

end A131428.P16170807905760315080

namespace A131428

/-- `∑{#}[n, A080233(C(n+1, 2)+#)²]` -/
def P16170807905760315080.Spec : Prop :=
  ∀ n, P16170807905760315080.a n = A131428 n

end A131428

/-! ## A131428.P10606300158454134846

`∑{#}[n, A156644(C(n+1, 2)+#)²]`
-/

namespace A131428.P10606300158454134846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A156644 (Nat.choose (n + 1) 2 + k) ^ 2

end

end A131428.P10606300158454134846

namespace A131428

/-- `∑{#}[n, A156644(C(n+1, 2)+#)²]` -/
def P10606300158454134846.Spec : Prop :=
  ∀ n, P10606300158454134846.a n = A131428 n

end A131428

/-! ## A131428.P4069501737388435408

`2*C(2*n, n)/(n+1)-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131428

/-- `2*C(2*n, n)/(n+1)-1` -/
def P4069501737388435408.Spec : Prop :=
  ∀ n, P4069501737388435408.a n = (A131428 n : ℚ)

end A131428

/-! ## A131428.P9432219154056895874

`A383251(n)-2`
-/

namespace A131428.P9432219154056895874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383251 n - 2

end

end A131428.P9432219154056895874

namespace A131428

/-- `A383251(n)-2` -/
def P9432219154056895874.Spec : Prop :=
  ∀ n, P9432219154056895874.a n = A131428 n

end A131428

/-! ## A131428.P4163287622556452191

`2*A120304(n)+3`
-/

namespace A131428.P4163287622556452191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120304 n + 3

end

end A131428.P4163287622556452191

namespace A131428

/-- `2*A120304(n)+3` -/
def P4163287622556452191.Spec : Prop :=
  ∀ n, P4163287622556452191.a n = A131428 n

end A131428

/-! ## A131428.P14601420157091329982

`lcm(2, A068875(n))-1`
-/

namespace A131428.P14601420157091329982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A068875 n) : ℤ) - 1

end

end A131428.P14601420157091329982

namespace A131428

/-- `lcm(2, A068875(n))-1` -/
def P14601420157091329982.Spec : Prop :=
  ∀ n, P14601420157091329982.a n = A131428 n

end A131428

/-! ## A131428.P794140175821029117

`abs(A002420(n+1)+1)`
-/

namespace A131428.P794140175821029117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002420 (n + 1) + 1|

end

end A131428.P794140175821029117

namespace A131428

/-- `abs(A002420(n+1)+1)` -/
def P794140175821029117.Spec : Prop :=
  ∀ n, P794140175821029117.a n = A131428 n

end A131428

/-! ## A131428.P4656589702675350467

`abs(2*A168491(n))-1`
-/

namespace A131428.P4656589702675350467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A168491 n| - 1

end

end A131428.P4656589702675350467

namespace A131428

/-- `abs(2*A168491(n))-1` -/
def P4656589702675350467.Spec : Prop :=
  ∀ n, P4656589702675350467.a n = A131428 n

end A131428

/-! ## A131428.P12829243417010498799

`Δ[2*A155587(n)]-1`
-/

namespace A131428.P12829243417010498799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A131428.P12829243417010498799

namespace A131428

/-- `Δ[2*A155587(n)]-1` -/
def P12829243417010498799.Spec : Prop :=
  ∀ n, P12829243417010498799.a n = A131428 n

end A131428

/-! ## A131428.P16799175932686277221

`A089408(2*(n+1))-1`
-/

namespace A131428.P16799175932686277221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * (n + 1)) - 1

end

end A131428.P16799175932686277221

namespace A131428

/-- `A089408(2*(n+1))-1` -/
def P16799175932686277221.Spec : Prop :=
  ∀ n, P16799175932686277221.a n = A131428 n

end A131428

/-! ## A131428.P5867290324193995462

`2*A120588(n+1)-1`
-/

namespace A131428.P5867290324193995462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120588 (n + 1) - 1

end

end A131428.P5867290324193995462

namespace A131428

/-- `2*A120588(n+1)-1` -/
def P5867290324193995462.Spec : Prop :=
  ∀ n, P5867290324193995462.a n = A131428 n

end A131428

/-! ## A131428.P11764628873553215117

`2*A028303(2*n)-1`
-/

namespace A131428.P11764628873553215117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028303 (2 * n) - 1

end

end A131428.P11764628873553215117

namespace A131428

/-- `2*A028303(2*n)-1` -/
def P11764628873553215117.Spec : Prop :=
  ∀ n, P11764628873553215117.a n = A131428 n

end A131428

/-! ## A131428.P11641777334555116094

`2*A028304(2*n)-1`
-/

namespace A131428.P11641777334555116094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028304 (2 * n) - 1

end

end A131428.P11641777334555116094

namespace A131428

/-- `2*A028304(2*n)-1` -/
def P11641777334555116094.Spec : Prop :=
  ∀ n, P11641777334555116094.a n = A131428 n

end A131428

/-! ## A131428.P6716118406688705349

`2*A126120(2*n)-1`
-/

namespace A131428.P6716118406688705349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126120 (2 * n) - 1

end

end A131428.P6716118406688705349

namespace A131428

/-- `2*A126120(2*n)-1` -/
def P6716118406688705349.Spec : Prop :=
  ∀ n, P6716118406688705349.a n = A131428 n

end A131428

/-! ## A131428.P12870177036490699395

`2*A126324(2*n)-1`
-/

namespace A131428.P12870177036490699395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126324 (2 * n) - 1

end

end A131428.P12870177036490699395

namespace A131428

/-- `2*A126324(2*n)-1` -/
def P12870177036490699395.Spec : Prop :=
  ∀ n, P12870177036490699395.a n = A131428 n

end A131428

/-! ## A131428.P3747906956352605078

`2*A208355(2*n)-1`
-/

namespace A131428.P3747906956352605078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208355 (2 * n) - 1

end

end A131428.P3747906956352605078

namespace A131428

/-- `2*A208355(2*n)-1` -/
def P3747906956352605078.Spec : Prop :=
  ∀ n, P3747906956352605078.a n = A131428 n

end A131428

/-! ## A131428.P5153783213358565722

`Δ[∑[A089408(2*n)]-n]`
-/

namespace A131428.P5153783213358565722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131428.P5153783213358565722

namespace A131428

/-- `Δ[∑[A089408(2*n)]-n]` -/
def P5153783213358565722.Spec : Prop :=
  ∀ n, P5153783213358565722.a n = A131428 n

end A131428

/-! ## A131428.P18085410504260277109

`2*A097331(2*n+1)-1`
-/

namespace A131428.P18085410504260277109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097331 (2 * n + 1) - 1

end

end A131428.P18085410504260277109

namespace A131428

/-- `2*A097331(2*n+1)-1` -/
def P18085410504260277109.Spec : Prop :=
  ∀ n, P18085410504260277109.a n = A131428 n

end A131428

/-!
# A131429: Triangle read by rows: T(n,k) = C(n) + C(k) - 1 where C(n) = A000108(n) are the Catalan numbers, 0 <= k <= n.

The programs for A131429, there is no canonical definition to state claims against.
-/

/-! ## A131429.P12324831680393062559

`ceil(eq[1, A000045(A126792(n))]/3)`
-/

namespace A131429.P12324831680393062559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A126792 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 3⌉

end

end A131429.P12324831680393062559

/-! ## A131429.P7480763582072874671

`A008620(A118759(record[A038574(n)]))`
-/

namespace A131429.P7480763582072874671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A118759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A131429.P7480763582072874671

/-! ## A131429.P6343990959101368826

`A065033(eq[1, A065033(A269223(n))])`
-/

namespace A131429.P6343990959101368826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A269223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131429.P6343990959101368826

/-! ## A131429.P10024349247882596144

`A111660(A134634(n)+A028364(n))`
-/

namespace A131429.P10024349247882596144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A134634 n + A028364 n).toNat

end

end A131429.P10024349247882596144

/-! ## A131429.P1943298320387633625

`A008620(eq[A038574(n), A118759(n)])`
-/

namespace A131429.P1943298320387633625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131429.P1943298320387633625

/-!
# A131430: Row sums of triangle A131429.

The programs for A131430, the canonical program `A131430.P12639990675613689132` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131430 has offset 0).

The definition of A131430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131430.P12639990675613689132

`A045992(n)+A014138(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131430

/-- `A045992(n)+A014138(n)` -/
def P12639990675613689132.Spec : Prop :=
  ∀ n, P12639990675613689132.a n = A131430 n

theorem P12639990675613689132.correct : P12639990675613689132.Spec := by
  intro n
  simp only [A131430]

end A131430

/-! ## A131430.P10770500960446966927

`A359176(n+1)+A014137(n)`
-/

namespace A131430.P10770500960446966927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359176 (n + 1) + A014137 n

end

end A131430.P10770500960446966927

namespace A131430

/-- `A359176(n+1)+A014137(n)` -/
def P10770500960446966927.Spec : Prop :=
  ∀ n, P10770500960446966927.a n = A131430 n

end A131430

/-! ## A131430.P8145467094409647290

`A000984(n)+A014138(n)-n`
-/

namespace A131430.P8145467094409647290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A014138 n - (n : ℤ))

end

end A131430.P8145467094409647290

namespace A131430

/-- `A000984(n)+A014138(n)-n` -/
def P8145467094409647290.Spec : Prop :=
  ∀ n, P8145467094409647290.a n = A131430 n

theorem P8145467094409647290.correct : P8145467094409647290.Spec := by
  intro n
  simp only [A131430, Nat.add_sub_cancel, A131430.P8145467094409647290.a, A131430.P12639990675613689132.a, A000984, A000984.P7946844122574426130.a, A014138, A014138.P8012092781455815566.a, A045992, A045992.P603582236385676472.a, A014137, A014137.P1978746088953100721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131430

/-! ## A131430.P8074220492412214134

`A000984(n)+∑[A000108(n)-1]`
-/

namespace A131430.P8074220492412214134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131430.P8074220492412214134

namespace A131430

/-- `A000984(n)+∑[A000108(n)-1]` -/
def P8074220492412214134.Spec : Prop :=
  ∀ n, P8074220492412214134.a n = A131430 n

end A131430

/-! ## A131430.P3406731262237129857

`A000984(n)+A014137(n)-(n+1)`
-/

namespace A131430.P3406731262237129857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A014137 n - (n + 1 : ℤ))

end

end A131430.P3406731262237129857

namespace A131430

/-- `A000984(n)+A014137(n)-(n+1)` -/
def P3406731262237129857.Spec : Prop :=
  ∀ n, P3406731262237129857.a n = A131430 n

theorem P3406731262237129857.correct : P3406731262237129857.Spec := by
  intro n
  simp only [A131430, Nat.add_sub_cancel, A131430.P3406731262237129857.a, A131430.P12639990675613689132.a, A000984, A000984.P7946844122574426130.a, A014137, A014137.P1978746088953100721.a, A014138, A014138.P8012092781455815566.a, A045992, A045992.P603582236385676472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131430

/-! ## A131430.P680983229081087524

`A155587(n+1)+A000984(n)-(n+2)`
-/

namespace A131430.P680983229081087524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (n + 1) + (A000984 n - (n + 2 : ℤ))

end

end A131430.P680983229081087524

namespace A131430

/-- `A155587(n+1)+A000984(n)-(n+2)` -/
def P680983229081087524.Spec : Prop :=
  ∀ n, P680983229081087524.a n = A131430 n

end A131430

/-! ## A131430.P6599351258625991998

`A036256(2*n)-(A037952(2*n)+n)`
-/

namespace A131430.P6599351258625991998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 (2 * n) - (A037952 (2 * n) + (n : ℤ))

end

end A131430.P6599351258625991998

namespace A131430

/-- `A036256(2*n)-(A037952(2*n)+n)` -/
def P6599351258625991998.Spec : Prop :=
  ∀ n, P6599351258625991998.a n = A131430 n

end A131430

/-! ## A131430.P12863920972701346385

`A007318(A046092(n))-n+∑[A000108(n)]-1`
-/

namespace A131430.P12863920972701346385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A131430.P12863920972701346385

namespace A131430

/-- `A007318(A046092(n))-n+∑[A000108(n)]-1` -/
def P12863920972701346385.Spec : Prop :=
  ∀ n, P12863920972701346385.a n = A131430 n

end A131430

/-!
# A131431: 3n + 1 preceded by n zeros.

The programs for A131431, the canonical program `A131431.P7984083110409422878` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131431 has offset 0).

The definition of A131431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131431.P4111177282418402168

`Δ[A000326(row(n))]`
-/

namespace A131431.P4111177282418402168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.triRow n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131431.P4111177282418402168

namespace A131431

/-- `Δ[A000326(row(n))]` -/
def P4111177282418402168.Spec : Prop :=
  ∀ n, P4111177282418402168.a n = A131431 n

end A131431

/-! ## A131431.P16869609729459523969

`Δ[A143689(row(n))]`
-/

namespace A131431.P16869609729459523969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (SequenceMachineLib.triRow n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131431.P16869609729459523969

namespace A131431

/-- `Δ[A143689(row(n))]` -/
def P16869609729459523969.Spec : Prop :=
  ∀ n, P16869609729459523969.a n = A131431 n

end A131431

/-! ## A131431.P16959875818921444914

`A032766(Δ[row(n)²])`
-/

namespace A131431.P16959875818921444914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131431.P16959875818921444914

namespace A131431

/-- `A032766(Δ[row(n)²])` -/
def P16959875818921444914.Spec : Prop :=
  ∀ n, P16959875818921444914.a n = A131431 n

end A131431

/-! ## A131431.P9561809092668716956

`char[∑[n-1]]*A134483(n+1)`
-/

namespace A131431.P9561809092668716956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A134483 (n + 1)

end

end A131431.P9561809092668716956

namespace A131431

/-- `char[∑[n-1]]*A134483(n+1)` -/
def P9561809092668716956.Spec : Prop :=
  ∀ n, P9561809092668716956.a n = A131431 n

end A131431

/-! ## A131431.P17893333028051348369

`char[∑[n-1]]*A141387(n+2)`
-/

namespace A131431.P17893333028051348369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A141387 (n + 2)

end

end A131431.P17893333028051348369

namespace A131431

/-- `char[∑[n-1]]*A141387(n+2)` -/
def P17893333028051348369.Spec : Prop :=
  ∀ n, P17893333028051348369.a n = A131431 n

end A131431

/-! ## A131431.P7984083110409422878

`Δ[A000326(A003056(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131431

/-- `Δ[A000326(A003056(n))]` -/
def P7984083110409422878.Spec : Prop :=
  ∀ n, P7984083110409422878.a n = A131431 n

theorem P7984083110409422878.correct : P7984083110409422878.Spec := by
  intro n
  simp only [A131431]

end A131431

/-! ## A131431.P15127973661577593480

`A032766(A127775(n+1))`
-/

namespace A131431.P15127973661577593480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A127775 (n + 1)).toNat

end

end A131431.P15127973661577593480

namespace A131431

/-- `A032766(A127775(n+1))` -/
def P15127973661577593480.Spec : Prop :=
  ∀ n, P15127973661577593480.a n = A131431 n

end A131431

/-! ## A131431.P2417472132191827719

`A289207(3*A127648(n))`
-/

namespace A131431.P2417472132191827719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (3 * A127648 n).toNat

end

end A131431.P2417472132191827719

namespace A131431

/-- `A289207(3*A127648(n))` -/
def P2417472132191827719.Spec : Prop :=
  ∀ n, P2417472132191827719.a n = A131431 n

end A131431

/-! ## A131431.P4995754936962577750

`A023531(n)*A101468(n)`
-/

namespace A131431.P4995754936962577750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A101468 n

end

end A131431.P4995754936962577750

namespace A131431

/-- `A023531(n)*A101468(n)` -/
def P4995754936962577750.Spec : Prop :=
  ∀ n, P4995754936962577750.a n = A131431 n

end A131431

/-! ## A131431.P17332149064816802766

`A023531(n)*A131844(n)`
-/

namespace A131431.P17332149064816802766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A131844 n

end

end A131431.P17332149064816802766

namespace A131431

/-- `A023531(n)*A131844(n)` -/
def P17332149064816802766.Spec : Prop :=
  ∀ n, P17332149064816802766.a n = A131431 n

end A131431

/-! ## A131431.P17192040616771440752

`A023531(n)*A131875(n)`
-/

namespace A131431.P17192040616771440752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A131875 n

end

end A131431.P17192040616771440752

namespace A131431

/-- `A023531(n)*A131875(n)` -/
def P17192040616771440752.Spec : Prop :=
  ∀ n, P17192040616771440752.a n = A131431 n

end A131431

/-! ## A131431.P16929961221844753342

`A023531(n)*A332790(n)`
-/

namespace A131431.P16929961221844753342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A332790 n

end

end A131431.P16929961221844753342

namespace A131431

/-- `A023531(n)*A332790(n)` -/
def P16929961221844753342.Spec : Prop :=
  ∀ n, P16929961221844753342.a n = A131431 n

end A131431

/-! ## A131431.P671984540774335780

`A032766(Δ[A003056(n)²])`
-/

namespace A131431.P671984540774335780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (f1 (n + 1) - f1 n).toNat

end

end A131431.P671984540774335780

namespace A131431

/-- `A032766(Δ[A003056(n)²])` -/
def P671984540774335780.Spec : Prop :=
  ∀ n, P671984540774335780.a n = A131431 n

end A131431

/-! ## A131431.P3001171060369801715

`A084056(Δ[A003056(n)²])`
-/

namespace A131431.P3001171060369801715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084056 (f1 (n + 1) - f1 n).toNat

end

end A131431.P3001171060369801715

namespace A131431

/-- `A084056(Δ[A003056(n)²])` -/
def P3001171060369801715.Spec : Prop :=
  ∀ n, P3001171060369801715.a n = A131431 n

end A131431

/-! ## A131431.P11707667819390640604

`A023531(n)*A095871(n+1)`
-/

namespace A131431.P11707667819390640604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A095871 (n + 1)

end

end A131431.P11707667819390640604

namespace A131431

/-- `A023531(n)*A095871(n+1)` -/
def P11707667819390640604.Spec : Prop :=
  ∀ n, P11707667819390640604.a n = A131431 n

end A131431

/-! ## A131431.P876833848977662204

`A023531(n)*A096038(n+1)`
-/

namespace A131431.P876833848977662204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A096038 (n + 1)

end

end A131431.P876833848977662204

namespace A131431

/-- `A023531(n)*A096038(n+1)` -/
def P876833848977662204.Spec : Prop :=
  ∀ n, P876833848977662204.a n = A131431 n

end A131431

/-! ## A131431.P2141805493471459291

`A023531(n)*A104728(n+1)`
-/

namespace A131431.P2141805493471459291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A104728 (n + 1)

end

end A131431.P2141805493471459291

namespace A131431

/-- `A023531(n)*A104728(n+1)` -/
def P2141805493471459291.Spec : Prop :=
  ∀ n, P2141805493471459291.a n = A131431 n

end A131431

/-! ## A131431.P7588864061827168137

`A023531(n)*A131226(n+1)`
-/

namespace A131431.P7588864061827168137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A131226 (n + 1)

end

end A131431.P7588864061827168137

namespace A131431

/-- `A023531(n)*A131226(n+1)` -/
def P7588864061827168137.Spec : Prop :=
  ∀ n, P7588864061827168137.a n = A131431 n

end A131431

/-! ## A131431.P10182230818848656326

`A023531(n)*A182828(n+1)`
-/

namespace A131431.P10182230818848656326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A182828 (n + 1)

end

end A131431.P10182230818848656326

namespace A131431

/-- `A023531(n)*A182828(n+1)` -/
def P10182230818848656326.Spec : Prop :=
  ∀ n, P10182230818848656326.a n = A131431 n

end A131431

/-! ## A131431.P17783561152903844755

`A023531(n)*A202676(n+1)`
-/

namespace A131431.P17783561152903844755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A202676 (n + 1)

end

end A131431.P17783561152903844755

namespace A131431

/-- `A023531(n)*A202676(n+1)` -/
def P17783561152903844755.Spec : Prop :=
  ∀ n, P17783561152903844755.a n = A131431 n

end A131431

/-!
# A131432: Triangle read by rows: T(n,k) = 3*(n + k) + 1, 0 <= k <= n.

The programs for A131432, the canonical program `A131432.P5023621243934961966` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131432 has offset 0).

The definition of A131432 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(row(n)+col(n))+1` (program `A131432.P5023621243934961966`, by `A131432.P5023621243934961966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131432.P5023621243934961966

`3*(row(n)+col(n))+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131432

/-- `3*(row(n)+col(n))+1` -/
def P5023621243934961966.Spec : Prop :=
  ∀ n, (P5023621243934961966.a n : ℤ) = A131432 n

theorem P5023621243934961966.correct : P5023621243934961966.Spec := by
  intro n
  simp only [A131432]

end A131432

/-! ## A131432.P8984906830372394338

`1+3*(col(n)+row(n))`
-/

namespace A131432.P8984906830372394338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n)

end

end A131432.P8984906830372394338

namespace A131432

/-- `1+3*(col(n)+row(n))` -/
def P8984906830372394338.Spec : Prop :=
  ∀ n, (P8984906830372394338.a n : ℤ) = A131432 n

theorem P8984906830372394338.correct : P8984906830372394338.Spec := by
  intro n
  simp only [A131432, Nat.add_sub_cancel, A131432.P8984906830372394338.a, A131432.P5023621243934961966.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A131432

/-! ## A131432.P12472171556348341136

`3*(n-C(∑[char[∑[n+1]]], 2))+1`
-/

namespace A131432.P12472171556348341136
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1

end

end A131432.P12472171556348341136

namespace A131432

/-- `3*(n-C(∑[char[∑[n+1]]], 2))+1` -/
def P12472171556348341136.Spec : Prop :=
  ∀ n, P12472171556348341136.a n = A131432 n

end A131432

/-! ## A131432.P3587279878209519422

`1+3*A051162(n)`
-/

namespace A131432.P3587279878209519422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 3 * A051162 n

end

end A131432.P3587279878209519422

namespace A131432

/-- `1+3*A051162(n)` -/
def P3587279878209519422.Spec : Prop :=
  ∀ n, P3587279878209519422.a n = A131432 n

theorem P3587279878209519422.correct : P3587279878209519422.Spec := by
  intro n
  simp only [A131432, Nat.add_sub_cancel, A131432.P3587279878209519422.a, A131432.P5023621243934961966.a, A051162, A051162.P4484969187050632534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131432

/-! ## A131432.P11487863795436908183

`A016777(row(n)+col(n))`
-/

namespace A131432.P11487863795436908183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n)

end

end A131432.P11487863795436908183

namespace A131432

/-- `A016777(row(n)+col(n))` -/
def P11487863795436908183.Spec : Prop :=
  ∀ n, P11487863795436908183.a n = A131432 n

end A131432

/-! ## A131432.P15685005182810951147

`3*A094727(n+1)-2`
-/

namespace A131432.P15685005182810951147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A094727 (n + 1) - 2

end

end A131432.P15685005182810951147

namespace A131432

/-- `3*A094727(n+1)-2` -/
def P15685005182810951147.Spec : Prop :=
  ∀ n, P15685005182810951147.a n = A131432 n

theorem P15685005182810951147.correct : P15685005182810951147.Spec := by
  intro n
  simp only [A131432, Nat.add_sub_cancel, A131432.P15685005182810951147.a, A131432.P5023621243934961966.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131432

/-! ## A131432.P4171748855984617647

`3*A108872(n+1)-5`
-/

namespace A131432.P4171748855984617647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108872 (n + 1) - 5

end

end A131432.P4171748855984617647

namespace A131432

/-- `3*A108872(n+1)-5` -/
def P4171748855984617647.Spec : Prop :=
  ∀ n, P4171748855984617647.a n = A131432 n

end A131432

/-! ## A131432.P3913253702771455323

`A016777(A051162(n))`
-/

namespace A131432.P3913253702771455323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A051162 n).toNat

end

end A131432.P3913253702771455323

namespace A131432

/-- `A016777(A051162(n))` -/
def P3913253702771455323.Spec : Prop :=
  ∀ n, P3913253702771455323.a n = A131432 n

end A131432

/-! ## A131432.P6930498767801201452

`A001651(A131421(n+1))`
-/

namespace A131432.P6930498767801201452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A131421 (n + 1)).toNat

end

end A131432.P6930498767801201452

namespace A131432

/-- `A001651(A131421(n+1))` -/
def P6930498767801201452.Spec : Prop :=
  ∀ n, P6930498767801201452.a n = A131432 n

end A131432

/-! ## A131432.P2896558067106603902

`A016777(A094727(n+1)-1)`
-/

namespace A131432.P2896558067106603902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A094727 (n + 1) - 1).toNat

end

end A131432.P2896558067106603902

namespace A131432

/-- `A016777(A094727(n+1)-1)` -/
def P2896558067106603902.Spec : Prop :=
  ∀ n, P2896558067106603902.a n = A131432 n

end A131432

/-! ## A131432.P16520679129095679108

`A131421(n+1)+A051162(n)`
-/

namespace A131432.P16520679129095679108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131421 (n + 1) + A051162 n

end

end A131432.P16520679129095679108

namespace A131432

/-- `A131421(n+1)+A051162(n)` -/
def P16520679129095679108.Spec : Prop :=
  ∀ n, P16520679129095679108.a n = A131432 n

theorem P16520679129095679108.correct : P16520679129095679108.Spec := by
  intro n
  simp only [A131432, Nat.add_sub_cancel, A131432.P16520679129095679108.a, A131432.P5023621243934961966.a, A051162, A051162.P4484969187050632534.a, A131421, A131421.P16745487656165401881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131432

/-! ## A131432.P12992497352491473467

`2*A134483(n+1)-A004736(n+1)`
-/

namespace A131432.P12992497352491473467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134483 (n + 1) - A004736 (n + 1)

end

end A131432.P12992497352491473467

namespace A131432

/-- `2*A134483(n+1)-A004736(n+1)` -/
def P12992497352491473467.Spec : Prop :=
  ∀ n, P12992497352491473467.a n = A131432 n

end A131432

/-! ## A131432.P11508239972978631206

`A094727(n+1)+A005843(A051162(n))`
-/

namespace A131432.P11508239972978631206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A005843 (A051162 n).toNat

end

end A131432.P11508239972978631206

namespace A131432

/-- `A094727(n+1)+A005843(A051162(n))` -/
def P11508239972978631206.Spec : Prop :=
  ∀ n, P11508239972978631206.a n = A131432 n

end A131432

/-! ## A131432.P13244355557515862426

`∑{digits}[A237424(n+1), #]`
-/

namespace A131432.P13244355557515862426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A131432.P13244355557515862426

namespace A131432

/-- `∑{digits}[A237424(n+1), #]` -/
def P13244355557515862426.Spec : Prop :=
  ∀ n, (P13244355557515862426.a n : ℤ) = A131432 n

end A131432

/-!
# A131433: Number of prime knots on n crossings having Arf invariant 0.

The programs for A131433, there is no canonical definition to state claims against.
-/

/-! ## A131433.P17635069421796872476

`A002863(n+1)-A131434(n+1)`
-/

namespace A131433.P17635069421796872476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A131434 (n + 1)

end

end A131433.P17635069421796872476

/-! ## A131433.P13420420566003597058

`Δ[A116584(abs(1-n)+1)]-A131434(n+1)`
-/

namespace A131433.P13420420566003597058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131434 (n + 1)

end

end A131433.P13420420566003597058

/-! ## A131433.P3129310469080634239

`A002864(n+1)+A051763(n+1)-A131434(n+1)`
-/

namespace A131433.P3129310469080634239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (n + 1) + (A051763 (n + 1) - A131434 (n + 1))

end

end A131433.P3129310469080634239

/-! ## A131433.P14023889875054797301

`A052403(n+1)+A052402(n+1)-A131434(n+1)`
-/

namespace A131433.P14023889875054797301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052403 (n + 1) + A052402 (n + 1) - A131434 (n + 1)

end

end A131433.P14023889875054797301

/-! ## A131433.P5246284510542741628

`A025428(A364594(n)+A289438(n+2))`
-/

namespace A131433.P5246284510542741628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A364594 n + A289438 (n + 2)).toNat

end

end A131433.P5246284510542741628

/-!
# A131434: Number of prime knots on n crossings having Arf invariant 1.

The programs for A131434, there is no canonical definition to state claims against.
-/

/-! ## A131434.P359077621557982477

`A002863(n+1)-A131433(n+1)`
-/

namespace A131434.P359077621557982477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A131433 (n + 1)

end

end A131434.P359077621557982477

/-! ## A131434.P15168360105288588281

`Δ[A116584(abs(1-n)+1)]-A131433(n+1)`
-/

namespace A131434.P15168360105288588281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131433 (n + 1)

end

end A131434.P15168360105288588281

/-! ## A131434.P12654093286897785732

`A002864(n+1)+A051763(n+1)-A131433(n+1)`
-/

namespace A131434.P12654093286897785732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (n + 1) + (A051763 (n + 1) - A131433 (n + 1))

end

end A131434.P12654093286897785732

/-! ## A131434.P10979311170423979333

`A052403(n+1)+A052402(n+1)-A131433(n+1)`
-/

namespace A131434.P10979311170423979333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052403 (n + 1) + A052402 (n + 1) - A131433 (n + 1)

end

end A131434.P10979311170423979333

/-! ## A131434.P4641369615084592510

`A052407(n+1)+A052408(n+1)-A131433(n+1)`
-/

namespace A131434.P4641369615084592510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052407 (n + 1) + (A052408 (n + 1) - A131433 (n + 1))

end

end A131434.P4641369615084592510

/-!
# A131435: Recursive sequence generated from a Petersen graph.

The programs for A131435, the canonical program `A131435.P7120963218922850692` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131435 has offset 1).

The definition of A131435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131435.P7120963218922850692

`ogf((1+3x+2x^2)/(1-3x-15x^2-3x^3+13x^4-4x^5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131435

/-- `ogf((1+3x+2x^2)/(1-3x-15x^2-3x^3+13x^4-4x^5))` -/
def P7120963218922850692.Spec : Prop :=
  ∀ n, P7120963218922850692.a n = A131435 (n + 1)

theorem P7120963218922850692.correct : P7120963218922850692.Spec := by
  intro n
  simp only [A131435, Nat.add_sub_cancel]

end A131435

/-!
# A131436: Triangle read by rows, (n-1) zeros followed by 2^n - 1.

The programs for A131436, the canonical program `A131436.P15112547624394738453` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131436 has offset 1).

The definition of A131436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131436.P15112547624394738453

`2*A059268(n)-A059268(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131436

/-- `2*A059268(n)-A059268(n+1)` -/
def P15112547624394738453.Spec : Prop :=
  ∀ n, P15112547624394738453.a n = A131436 (n + 1)

theorem P15112547624394738453.correct : P15112547624394738453.Spec := by
  intro n
  simp only [A131436, Nat.add_sub_cancel]

end A131436

/-! ## A131436.P10090054206864837082

`or(2*T(n-1,k-1), T(n-1,k-1))` with `a(0)=1`
-/

namespace A131436.P10090054206864837082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * SequenceMachineLib.triUpLeft a n) (SequenceMachineLib.triUpLeft a n)

end

end A131436.P10090054206864837082

namespace A131436

/-- `or(2*T(n-1,k-1), T(n-1,k-1))` -/
def P10090054206864837082.Spec : Prop :=
  ∀ n, (P10090054206864837082.a n : ℤ) = A131436 (n + 1)

end A131436

/-! ## A131436.P4453589309810105951

`char[∑[n-1]]+2*T(n-1,k-1)` with `a(0)=1`
-/

namespace A131436.P4453589309810105951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * SequenceMachineLib.triUpLeft a n

end

end A131436.P4453589309810105951

namespace A131436

/-- `char[∑[n-1]]+2*T(n-1,k-1)` -/
def P4453589309810105951.Spec : Prop :=
  ∀ n, (P4453589309810105951.a n : ℤ) = A131436 (n + 1)

end A131436

/-! ## A131436.P9138372836348619891

`Δ[2^(row(n)+1)-row(n)]`
-/

namespace A131436.P9138372836348619891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triRow n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131436.P9138372836348619891

namespace A131436

/-- `Δ[2^(row(n)+1)-row(n)]` -/
def P9138372836348619891.Spec : Prop :=
  ∀ n, P9138372836348619891.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P17492792591121151185

`2^col(n)-Δ[2^col(n)]`
-/

namespace A131436.P17492792591121151185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A131436.P17492792591121151185

namespace A131436

/-- `2^col(n)-Δ[2^col(n)]` -/
def P17492792591121151185.Spec : Prop :=
  ∀ n, P17492792591121151185.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P17902004825440898536

`2*T(n-1,k-1)+1-T(T(n-1,k-1), 2*T(n-1,k-1))` with `a(0)=1`
-/

namespace A131436.P17902004825440898536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n + 1 - SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n) (2 * SequenceMachineLib.triUpLeft a n)

end

end A131436.P17902004825440898536

namespace A131436

/-- `2*T(n-1,k-1)+1-T(T(n-1,k-1), 2*T(n-1,k-1))` -/
def P17902004825440898536.Spec : Prop :=
  ∀ n, P17902004825440898536.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P11179988979330120958

`(2^(col(n)+1)-1)*C(col(n), row(n))`
-/

namespace A131436.P11179988979330120958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (SequenceMachineLib.triCol n + 1) : ℤ) - 1) * (Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) : ℤ)

end

end A131436.P11179988979330120958

namespace A131436

/-- `(2^(col(n)+1)-1)*C(col(n), row(n))` -/
def P11179988979330120958.Spec : Prop :=
  ∀ n, P11179988979330120958.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P15475006250699503244

`3*T(n-1,k-1)-2*T(row(n)-2, col(n)-2)` with `a(0)=1`
-/

namespace A131436.P15475006250699503244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A131436.P15475006250699503244

namespace A131436

/-- `3*T(n-1,k-1)-2*T(row(n)-2, col(n)-2)` -/
def P15475006250699503244.Spec : Prop :=
  ∀ n, P15475006250699503244.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P2192469952514103967

`2^A127648(n)-1`
-/

namespace A131436.P2192469952514103967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127648 n : ℤ) - 1

end

end A131436.P2192469952514103967

namespace A131436

/-- `2^A127648(n)-1` -/
def P2192469952514103967.Spec : Prop :=
  ∀ n, P2192469952514103967.a n = (A131436 (n + 1) : ℚ)

end A131436

/-! ## A131436.P3456227515501090383

`A000079(1-Δ[col(n)])-1`
-/

namespace A131436.P3456227515501090383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat - 1

end

end A131436.P3456227515501090383

namespace A131436

/-- `A000079(1-Δ[col(n)])-1` -/
def P3456227515501090383.Spec : Prop :=
  ∀ n, P3456227515501090383.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P10968752600500026423

`A000225(A127648(n))`
-/

namespace A131436.P10968752600500026423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A127648 n).toNat

end

end A131436.P10968752600500026423

namespace A131436

/-- `A000225(A127648(n))` -/
def P10968752600500026423.Spec : Prop :=
  ∀ n, P10968752600500026423.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P13276372725263069584

`A075300(A127773(n+1))`
-/

namespace A131436.P13276372725263069584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A127773 (n + 1)).toNat

end

end A131436.P13276372725263069584

namespace A131436

/-- `A075300(A127773(n+1))` -/
def P13276372725263069584.Spec : Prop :=
  ∀ n, P13276372725263069584.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P4531023873737837975

`A087100(A127775(n+1))`
-/

namespace A131436.P4531023873737837975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 (A127775 (n + 1)).toNat

end

end A131436.P4531023873737837975

namespace A131436

/-- `A087100(A127775(n+1))` -/
def P4531023873737837975.Spec : Prop :=
  ∀ n, P4531023873737837975.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P18140782008445963894

`A023531(n)*A054143(n)`
-/

namespace A131436.P18140782008445963894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A054143 n

end

end A131436.P18140782008445963894

namespace A131436

/-- `A023531(n)*A054143(n)` -/
def P18140782008445963894.Spec : Prop :=
  ∀ n, P18140782008445963894.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P11021428436490519724

`A023531(n)*A099627(n)`
-/

namespace A131436.P11021428436490519724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A099627 n

end

end A131436.P11021428436490519724

namespace A131436

/-- `A023531(n)*A099627(n)` -/
def P11021428436490519724.Spec : Prop :=
  ∀ n, P11021428436490519724.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P6840200316102110698

`A023531(n)*A102363(n)`
-/

namespace A131436.P6840200316102110698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A102363 n

end

end A131436.P6840200316102110698

namespace A131436

/-- `A023531(n)*A102363(n)` -/
def P6840200316102110698.Spec : Prop :=
  ∀ n, P6840200316102110698.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P14314973505368548888

`A023531(n)*A134346(n)`
-/

namespace A131436.P14314973505368548888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A134346 n

end

end A131436.P14314973505368548888

namespace A131436

/-- `A023531(n)*A134346(n)` -/
def P14314973505368548888.Spec : Prop :=
  ∀ n, P14314973505368548888.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P2231708013082811593

`A023531(n)*A134347(n)`
-/

namespace A131436.P2231708013082811593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A134347 n

end

end A131436.P2231708013082811593

namespace A131436

/-- `A023531(n)*A134347(n)` -/
def P2231708013082811593.Spec : Prop :=
  ∀ n, P2231708013082811593.a n = A131436 (n + 1)

end A131436

/-! ## A131436.P10609170339424757279

`A023531(n)*A134348(n)`
-/

namespace A131436.P10609170339424757279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A134348 n

end

end A131436.P10609170339424757279

namespace A131436

/-- `A023531(n)*A134348(n)` -/
def P10609170339424757279.Spec : Prop :=
  ∀ n, P10609170339424757279.a n = A131436 (n + 1)

end A131436

/-!
# A131437: (A000012 * A131436) + (A131436 * A000012) - A000012.

The programs for A131437, the canonical program `A131437.P3175007424412188088` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131437 has offset 1).

The definition of A131437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131437.P456456874652758912

`row(n)+∑[2^col(n)]`
-/

namespace A131437.P456456874652758912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triCol n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131437.P456456874652758912

namespace A131437

/-- `row(n)+∑[2^col(n)]` -/
def P456456874652758912.Spec : Prop :=
  ∀ n, (P456456874652758912.a n : ℤ) = A131437 (n + 1)

end A131437

/-! ## A131437.P6461419956953615129

`2*(2^row(n)+2^col(n)-1)-1`
-/

namespace A131437.P6461419956953615129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ SequenceMachineLib.triRow n + 2 ^ SequenceMachineLib.triCol n : ℤ) - 1) - 1

end

end A131437.P6461419956953615129

namespace A131437

/-- `2*(2^row(n)+2^col(n)-1)-1` -/
def P6461419956953615129.Spec : Prop :=
  ∀ n, P6461419956953615129.a n = A131437 (n + 1)

end A131437

/-! ## A131437.P910906157988646620

`∑[char[∑[n+1]]+2^(n-C(∑[char[∑[n]]], 2))]`
-/

namespace A131437.P910906157988646620
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131437.P910906157988646620

namespace A131437

/-- `∑[char[∑[n+1]]+2^(n-C(∑[char[∑[n]]], 2))]` -/
def P910906157988646620.Spec : Prop :=
  ∀ n, P910906157988646620.a n = (A131437 (n + 1) : ℚ)

end A131437

/-! ## A131437.P919644972407907760

`∑[lcm(3*char[∑[n-1]]-2, 2^(n-C(∑[char[∑[n]]], 2)))]`
-/

namespace A131437.P919644972407907760
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((3 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131437.P919644972407907760

namespace A131437

/-- `∑[lcm(3*char[∑[n-1]]-2, 2^(n-C(∑[char[∑[n]]], 2)))]` -/
def P919644972407907760.Spec : Prop :=
  ∀ n, (P919644972407907760.a n : ℤ) = A131437 (n + 1)

end A131437

/-! ## A131437.P3175007424412188088

`2*A099627(n)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131437

/-- `2*A099627(n)-1` -/
def P3175007424412188088.Spec : Prop :=
  ∀ n, P3175007424412188088.a n = A131437 (n + 1)

theorem P3175007424412188088.correct : P3175007424412188088.Spec := by
  intro n
  simp only [A131437, Nat.add_sub_cancel]

end A131437

/-! ## A131437.P8421129094375382408

`2*A173786(n)-3`
-/

namespace A131437.P8421129094375382408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173786 n - 3

end

end A131437.P8421129094375382408

namespace A131437

/-- `2*A173786(n)-3` -/
def P8421129094375382408.Spec : Prop :=
  ∀ n, P8421129094375382408.a n = A131437 (n + 1)

theorem P8421129094375382408.correct : P8421129094375382408.Spec := by
  intro n
  simp only [A131437, Nat.add_sub_cancel, A131437.P8421129094375382408.a, A131437.P3175007424412188088.a, A099627, A099627.P2788997961149202424.a, A173786, A173786.P17698000632262255612.a, A048645, A048645.P13153933333519944865.f1, A048645.P13153933333519944865.a, A232089, A232089.P13658100046472038826.a, A011782, A011782.P7461078519819856082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131437

/-! ## A131437.P5359572058764513779

`∑[A059268(A010054(n)+n)]`
-/

namespace A131437.P5359572058764513779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A010054 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131437.P5359572058764513779

namespace A131437

/-- `∑[A059268(A010054(n)+n)]` -/
def P5359572058764513779.Spec : Prop :=
  ∀ n, P5359572058764513779.a n = A131437 (n + 1)

end A131437

/-! ## A131437.P2897064098833572844

`A288349(n+1)+A003056(n)`
-/

namespace A131437.P2897064098833572844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288349 (n + 1) + A003056 n

end

end A131437.P2897064098833572844

namespace A131437

/-- `A288349(n+1)+A003056(n)` -/
def P2897064098833572844.Spec : Prop :=
  ∀ n, P2897064098833572844.a n = A131437 (n + 1)

end A131437

/-! ## A131437.P207665846125950991

`A099627(comp[∑[n]])-2`
-/

namespace A131437.P207665846125950991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2

end

end A131437.P207665846125950991

namespace A131437

/-- `A099627(comp[∑[n]])-2` -/
def P207665846125950991.Spec : Prop :=
  ∀ n, P207665846125950991.a n = A131437 (n + 1)

end A131437

/-! ## A131437.P13810766814716741279

`A209492(n+1)-2`
-/

namespace A131437.P13810766814716741279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 (n + 1) - 2

end

end A131437.P13810766814716741279

namespace A131437

/-- `A209492(n+1)-2` -/
def P13810766814716741279.Spec : Prop :=
  ∀ n, P13810766814716741279.a n = A131437 (n + 1)

theorem P13810766814716741279.correct : P13810766814716741279.Spec := by
  intro n
  simp only [A131437, Nat.add_sub_cancel, A131437.P13810766814716741279.a, A131437.P3175007424412188088.a, A099627, A099627.P2788997961149202424.a, A209492, A209492.P3658957468068443564.a, A048645, A048645.P13153933333519944865.f1, A048645.P13153933333519944865.a, A232089, A232089.P13658100046472038826.a, A011782, A011782.P7461078519819856082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131437

/-! ## A131437.P17330271060501645205

`record[A126441(n)+n]`
-/

namespace A131437.P17330271060501645205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131437.P17330271060501645205

namespace A131437

/-- `record[A126441(n)+n]` -/
def P17330271060501645205.Spec : Prop :=
  ∀ n, P17330271060501645205.a n = A131437 (n + 1)

end A131437

/-! ## A131437.P11862636110262807754

`∑[A057335(A232089(n))]-1`
-/

namespace A131437.P11862636110262807754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A232089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A131437.P11862636110262807754

namespace A131437

/-- `∑[A057335(A232089(n))]-1` -/
def P11862636110262807754.Spec : Prop :=
  ∀ n, P11862636110262807754.a n = A131437 (n + 1)

end A131437

/-! ## A131437.P14502093220149744860

`A004273(A099627(n))`
-/

namespace A131437.P14502093220149744860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A099627 n).toNat

end

end A131437.P14502093220149744860

namespace A131437

/-- `A004273(A099627(n))` -/
def P14502093220149744860.Spec : Prop :=
  ∀ n, P14502093220149744860.a n = A131437 (n + 1)

end A131437

/-! ## A131437.P6849632536846827012

`A005408(A099627(n)-1)`
-/

namespace A131437.P6849632536846827012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A099627 n - 1).toNat

end

end A131437.P6849632536846827012

namespace A131437

/-- `A005408(A099627(n)-1)` -/
def P6849632536846827012.Spec : Prop :=
  ∀ n, P6849632536846827012.a n = A131437 (n + 1)

end A131437

/-!
# A131438: a(n) = (2+n)*2^n-2-3*n.

The programs for A131438, the canonical program `A131438.P11960610347211127072` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131438 has offset 1).

The definition of A131438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2+n+1)*2^(n+1)-2-3*(n+1)` (program `A131438.P11960610347211127072`, by `A131438.P11960610347211127072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131438.P11960610347211127072

`(2+n+1)*2^(n+1)-2-3*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131438

/-- `(2+n+1)*2^(n+1)-2-3*(n+1)` -/
def P11960610347211127072.Spec : Prop :=
  ∀ n, P11960610347211127072.a n = A131438 (n + 1)

theorem P11960610347211127072.correct : P11960610347211127072.Spec := by
  intro n
  simp only [A131438, Nat.add_sub_cancel]

end A131438

/-! ## A131438.P15341498312319270894

`ogf((1+2x-6x^2)/(1-6x+13x^2-12x^3+4x^4))`
-/

namespace A131438.P15341498312319270894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -6] [1, -6, 13, -12, 4] n

end

end A131438.P15341498312319270894

namespace A131438

/-- `ogf((1+2x-6x^2)/(1-6x+13x^2-12x^3+4x^4))` -/
def P15341498312319270894.Spec : Prop :=
  ∀ n, P15341498312319270894.a n = A131438 (n + 1)

end A131438

/-! ## A131438.P7124301900493843989

`∑[∑[ogf((1+2x-6x^2)/(1-4x+4x^2))]]`
-/

namespace A131438.P7124301900493843989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -6] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131438.P7124301900493843989

namespace A131438

/-- `∑[∑[ogf((1+2x-6x^2)/(1-4x+4x^2))]]` -/
def P7124301900493843989.Spec : Prop :=
  ∀ n, P7124301900493843989.a n = A131438 (n + 1)

end A131438

/-! ## A131438.P7465320257451764060

`∑[A087447(n+2)-3]`
-/

namespace A131438.P7465320257451764060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131438.P7465320257451764060

namespace A131438

/-- `∑[A087447(n+2)-3]` -/
def P7465320257451764060.Spec : Prop :=
  ∀ n, P7465320257451764060.a n = A131438 (n + 1)

end A131438

/-! ## A131438.P12467733662036479017

`∑[A079859(n+4)-3]`
-/

namespace A131438.P12467733662036479017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079859 (n + 4) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131438.P12467733662036479017

namespace A131438

/-- `∑[A079859(n+4)-3]` -/
def P12467733662036479017.Spec : Prop :=
  ∀ n, P12467733662036479017.a n = A131438 (n + 1)

end A131438

/-! ## A131438.P3751659679461614832

`∑[A000079(n)*(n+4)-3]`
-/

namespace A131438.P3751659679461614832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * (n + 4 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131438.P3751659679461614832

namespace A131438

/-- `∑[A000079(n)*(n+4)-3]` -/
def P3751659679461614832.Spec : Prop :=
  ∀ n, P3751659679461614832.a n = A131438 (n + 1)

end A131438

/-! ## A131438.P15238538191829988558

`record[A131056(n+1)-3*n]`
-/

namespace A131438.P15238538191829988558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131056 (n + 1) - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131438.P15238538191829988558

namespace A131438

/-- `record[A131056(n+1)-3*n]` -/
def P15238538191829988558.Spec : Prop :=
  ∀ n, P15238538191829988558.a n = A131438 (n + 1)

end A131438

/-! ## A131438.P15112546269723650985

`∑{#}[n, C(n, #)*A131439(#+1)]`
-/

namespace A131438.P15112546269723650985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A131439 (k + 1)

end

end A131438.P15112546269723650985

namespace A131438

/-- `∑{#}[n, C(n, #)*A131439(#+1)]` -/
def P15112546269723650985.Spec : Prop :=
  ∀ n, P15112546269723650985.a n = A131438 (n + 1)

end A131438

/-!
# A131439: Inverse binomial transform of A131438 (assuming zero offset in both sequences).

The programs for A131439, the canonical program `A131439.P705151129225232437` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131439 has offset 1).

The definition of A131439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131439.P705151129225232437

`ogf((1+5x+x^2-3x^3)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131439

/-- `ogf((1+5x+x^2-3x^3)/(1-2x+x^2))` -/
def P705151129225232437.Spec : Prop :=
  ∀ n, P705151129225232437.a n = A131439 (n + 1)

theorem P705151129225232437.correct : P705151129225232437.Spec := by
  intro n
  simp only [A131439, Nat.add_sub_cancel]

end A131439

/-!
# A131441: Row sums of triangle A130757 (coefficients of scaled Laguerre-Sonin polynomials n!(2^(n-m))*L(n,1/2,x)).

The programs for A131441, the canonical program `A131441.P12196727855203759606` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131441 has offset 0).

The definition of A131441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130757, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131441.P12196727855203759606

`∑{#}[n, A130757(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131441

/-- `∑{#}[n, A130757(C(n+1, 2)+#)]` -/
def P12196727855203759606.Spec : Prop :=
  ∀ n, P12196727855203759606.a n = A131441 n

theorem P12196727855203759606.correct : P12196727855203759606.Spec := by
  intro n
  simp only [A131441]

end A131441

/-! ## A131441.P11378811142989957684

`A001464(Δ[n²])*A033999(n+1)`
-/

namespace A131441.P11378811142989957684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 (n + 1)

end

end A131441.P11378811142989957684

namespace A131441

/-- `A001464(Δ[n²])*A033999(n+1)` -/
def P11378811142989957684.Spec : Prop :=
  ∀ n, P11378811142989957684.a n = A131441 n

end A131441

/-! ## A131441.P8946379063473655169

`-(A001464(2*n+1)*A033999(n))`
-/

namespace A131441.P8946379063473655169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001464 (2 * n + 1) * A033999 n)

end

end A131441.P8946379063473655169

namespace A131441

/-- `-(A001464(2*n+1)*A033999(n))` -/
def P8946379063473655169.Spec : Prop :=
  ∀ n, P8946379063473655169.a n = A131441 n

end A131441

/-! ## A131441.P11024892167612374067

`A001464(2*n+1)/A033999(n+1)`
-/

namespace A131441.P11024892167612374067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001464 (2 * n + 1) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A131441.P11024892167612374067

namespace A131441

/-- `A001464(2*n+1)/A033999(n+1)` -/
def P11024892167612374067.Spec : Prop :=
  ∀ n, P11024892167612374067.a n = (A131441 n : ℚ)

end A131441

/-! ## A131441.P12622818397501357644

`-(A001464(2*n+1)*A056594(2*n))`
-/

namespace A131441.P12622818397501357644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001464 (2 * n + 1) * A056594 (2 * n))

end

end A131441.P12622818397501357644

namespace A131441

/-- `-(A001464(2*n+1)*A056594(2*n))` -/
def P12622818397501357644.Spec : Prop :=
  ∀ n, P12622818397501357644.a n = A131441 n

end A131441

/-! ## A131441.P2292029696797919369

`A001464(2*n+1)*A001464(∑[A056594(2*n)])`
-/

namespace A131441.P2292029696797919369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 (2 * n + 1) * A001464 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131441.P2292029696797919369

namespace A131441

/-- `A001464(2*n+1)*A001464(∑[A056594(2*n)])` -/
def P2292029696797919369.Spec : Prop :=
  ∀ n, P2292029696797919369.a n = A131441 n

end A131441

/-! ## A131441.P2957658660349027498

`A056594(2*n+1)-A001464(2*n+1)*A056594(2*n)`
-/

namespace A131441.P2957658660349027498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) - A001464 (2 * n + 1) * A056594 (2 * n)

end

end A131441.P2957658660349027498

namespace A131441

/-- `A056594(2*n+1)-A001464(2*n+1)*A056594(2*n)` -/
def P2957658660349027498.Spec : Prop :=
  ∀ n, P2957658660349027498.a n = A131441 n

end A131441

/-!
# A131442: Sixth column (m=5) of triangle A060524 without zeros.

The programs for A131442, there is no canonical definition to state claims against.
-/

/-! ## A131442.P14879700705744636311

`A060524(A100038(n+2))`
-/

namespace A131442.P14879700705744636311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A100038 (n + 2)).toNat

end

end A131442.P14879700705744636311

/-! ## A131442.P8493388964765633928

`A060524(eq[6, A140756(n+1)])`
-/

namespace A131442.P8493388964765633928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131442.P8493388964765633928

/-! ## A131442.P13301254553240067562

`record[A060524(A133263(n+5)+3)]`
-/

namespace A131442.P13301254553240067562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A133263 (n + 5) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131442.P13301254553240067562

/-! ## A131442.P1890013750267521438

`record[A060524(eq[6, A002260(n+1)])]`
-/

namespace A131442.P1890013750267521438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131442.P1890013750267521438

/-! ## A131442.P11633487663600835951

`A060524(A155212(2*n+1)+13)`
-/

namespace A131442.P11633487663600835951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A155212 (2 * n + 1) + 13).toNat

end

end A131442.P11633487663600835951

/-!
# A131443: Numerators of n-th approximation of factorial (also called harmonic) expansion of the golden section phi:=(1+sqrt(5))/2.

The programs for A131443, there is no canonical definition to state claims against.
-/

/-! ## A131443.P11922445652247070562

`floor(ϕ*A131444(n+1))`
-/

namespace A131443.P11922445652247070562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A131444 (n + 1) : ℝ)⌋

end

end A131443.P11922445652247070562

/-! ## A131443.P2554549806109094296

`ceil(ϕ*A131444(n+1)-A001222(A205701(n+5)))`
-/

namespace A131443.P2554549806109094296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A131444 (n + 1) : ℝ) - (A001222 (A205701 (n + 5)).toNat : ℝ)⌉

end

end A131443.P2554549806109094296

/-! ## A131443.P9455685973418725306

`ceil(ϕ*A131444(n+1)-A001222(A000043(n+1)))`
-/

namespace A131443.P9455685973418725306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A131444 (n + 1) : ℝ) - (A001222 (A000043 (n + 1)).toNat : ℝ)⌉

end

end A131443.P9455685973418725306

/-!
# A131444: Denominators of n-th approximation of factorial (also called harmonic) expansion of the golden ratio phi (A001622).

The programs for A131444, there is no canonical definition to state claims against.
-/

/-! ## A131444.P11371050768801455246

`ceil(A131443(1+n)/ϕ)`
-/

namespace A131444.P11371050768801455246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131443 (1 + n) : ℝ) / Real.goldenRatio⌉

end

end A131444.P11371050768801455246

/-! ## A131444.P10360572600930402427

`round(A131443(-A001478(n+1))/ϕ)`
-/

namespace A131444.P10360572600930402427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131443 (-A001478 (n + 1)).toNat : ℝ) / Real.goldenRatio)

end

end A131444.P10360572600930402427

/-! ## A131444.P2682548760828875881

`A007318(∑[n+1])*round(A131443(n+1)/ϕ)`
-/

namespace A131444.P2682548760828875881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A131443 (n + 1) : ℝ) / Real.goldenRatio)

end

end A131444.P2682548760828875881

/-! ## A131444.P4662656604600647208

`A008683(8*n+4)+round(A131443(n+1)/ϕ)`
-/

namespace A131444.P4662656604600647208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * n + 4) + SequenceMachineLib.roundAway ((A131443 (n + 1) : ℝ) / Real.goldenRatio)

end

end A131444.P4662656604600647208

/-!
# A131445: Numerators of n-th approximation of factorial (also called harmonic) expansion of Pi.

The programs for A131445, there is no canonical definition to state claims against.
-/

/-! ## A131445.P10895580441662026922

`floor(π*A131446(n+1))`
-/

namespace A131445.P10895580441662026922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A131446 (n + 1) : ℝ)⌋

end

end A131445.P10895580441662026922

/-! ## A131445.P16588436350053344685

`A022844(A131446(n+1))`
-/

namespace A131445.P16588436350053344685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A131446 (n + 1)).toNat

end

end A131445.P16588436350053344685

/-!
# A131446: Denominators of n-th approximation of factorial (also called harmonic) expansion of Pi.

The programs for A131446, there is no canonical definition to state claims against.
-/

/-! ## A131446.P5876313021554925357

`round(A131445(n+1)/π)`
-/

namespace A131446.P5876313021554925357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131445 (n + 1) : ℝ) / Real.pi)

end

end A131446.P5876313021554925357

/-! ## A131446.P16335427272620181661

`A228313(a(n-1)+n-1)` with `a(0)=1, a(1)=1`
-/

namespace A131446.P16335427272620181661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A228313 (a (n - 1) + ((n : ℤ) - 1)).toNat

end

end A131446.P16335427272620181661

/-!
# A131447: Numerators of n-th approximation of factorial (also called harmonic) expansion of Euler's constant gamma (A001620).

The programs for A131447, there is no canonical definition to state claims against.
-/

/-! ## A131447.P6501987070562434983

`floor(γ*A131448(n+1))`
-/

namespace A131447.P6501987070562434983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant * (A131448 (n + 1) : ℝ)⌋

end

end A131447.P6501987070562434983

/-! ## A131447.P2921780485200499202

`A038128(A131448(n+1))`
-/

namespace A131447.P2921780485200499202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 (A131448 (n + 1)).toNat

end

end A131447.P2921780485200499202

/-! ## A131447.P9134925578360717016

`floor(γ*A152709(n+1)/A131932(A128695(n)))`
-/

namespace A131447.P9134925578360717016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant * ((A152709 (n + 1) : ℚ) / (A131932 (A128695 n).toNat : ℚ) : ℝ)⌋

end

end A131447.P9134925578360717016

/-!
# A131448: Denominators of n-th approximation of factorial (also called harmonic) expansion of Euler's constant gamma (A001620).

The programs for A131448, there is no canonical definition to state claims against.
-/

/-! ## A131448.P6383387481177731394

`A152709(n+1)/A131932(A128695(n))`
-/

namespace A131448.P6383387481177731394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152709 (n + 1) : ℚ) / (A131932 (A128695 n).toNat : ℚ)

end

end A131448.P6383387481177731394

/-! ## A131448.P9679671600480346720

`gcd(A000142(n+1), A319998(A072605(n+1)))`
-/

namespace A131448.P9679671600480346720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 1)) (A319998 (A072605 (n + 1)).toNat)

end

end A131448.P9679671600480346720

/-! ## A131448.P2536402664690695484

`A103205(A319549(n+1)/A194437(n+1))`
-/

namespace A131448.P2536402664690695484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (SequenceMachineLib.roundAway ((A319549 (n + 1) : ℚ) / (A194437 (n + 1) : ℚ))).toNat

end

end A131448.P2536402664690695484

/-!
# A131450: a(n) is the number of integers x that can be written x = (2^c(1) - 2^c(2) - 3*2^c(3) - 3^2*2^c(4) - ... - 3^(m-2)*2^c(m) - 3^(m-1)) / 3^m for integers c(1), c(2), ..., c(m) such that n = c(1) > c(2) > ... > c(m) > 0 and c(1) - c(2) != 2 if m >= 2.

The programs for A131450, there is no canonical definition to state claims against.
-/

/-! ## A131450.P13910433301589141952

`char[1]+Δ[A060322(n+1)]`
-/

namespace A131450.P13910433301589141952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060322 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A131450.P13910433301589141952

/-! ## A131450.P2014957312437252467

`Δ[A157928(n)+A060322(n+1)]`
-/

namespace A131450.P2014957312437252467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A060322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131450.P2014957312437252467

/-! ## A131450.P8105597455957950777

`Δ[A060322(n+1)-A141044(n)]`
-/

namespace A131450.P8105597455957950777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060322 (n + 1) - A141044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131450.P8105597455957950777

/-! ## A131450.P17456483147873831320

`Δ[A060322(n+1)]-A159075(n)`
-/

namespace A131450.P17456483147873831320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A159075 n

end

end A131450.P17456483147873831320

/-! ## A131450.P1762367901931271091

`Δ[A060322(n+1)%A016116(n)]`
-/

namespace A131450.P1762367901931271091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060322 (n + 1)) (A016116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131450.P1762367901931271091

/-!
# A131451: Product of the nonzero digital products of all the numbers 1 to n (a 'total digital-product factorial' in base 10).

The programs for A131451, there is no canonical definition to state claims against.
-/

/-! ## A131451.P17964757569964124021

`∏[∏{digits}[(n+1)/10^val(n+1, 10), #]]`
-/

namespace A131451.P17964757569964124021
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f2 n)).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131451.P17964757569964124021

/-! ## A131451.P5869362589021829657

`∏[A051801(n+1)]`
-/

namespace A131451.P5869362589021829657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131451.P5869362589021829657

/-! ## A131451.P6842240522847366626

`∏[sqrt(A352598(n+1))]`
-/

namespace A131451.P6842240522847366626
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352598 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131451.P6842240522847366626

/-! ## A131451.P1627617551590408363

`∏[∏{digits}[A004086(n+1), #]]`
-/

namespace A131451.P1627617551590408363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131451.P1627617551590408363

/-! ## A131451.P11128237851979332543

`∏[∏{digits}[A004151(n+1), #]]`
-/

namespace A131451.P11128237851979332543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131451.P11128237851979332543

/-! ## A131451.P4235768098078871365

`∏[A063114(n+1)-(n+1)]`
-/

namespace A131451.P4235768098078871365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131451.P4235768098078871365

/-! ## A131451.P13771663292186958439

`∏[1-A063543(n+1)+n]`
-/

namespace A131451.P13771663292186958439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063543 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131451.P13771663292186958439

/-! ## A131451.P9435624000886055368

`a(n-1)*A051801(2*n+1-n)` with `a(0)=1, a(1)=2`
-/

namespace A131451.P9435624000886055368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A051801 (2 * n + 1 - n)

end

end A131451.P9435624000886055368

/-! ## A131451.P1445353378594828305

`∏[A007954(A004086(n+1))]`
-/

namespace A131451.P1445353378594828305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A004086 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131451.P1445353378594828305

/-! ## A131451.P13584169986146746843

`a(n-1)*A007954(A004719(n+1))` with `a(0)=1`
-/

namespace A131451.P13584169986146746843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007954 (A004719 (n + 1)).toNat

end

end A131451.P13584169986146746843

/-!
# A131452: a(3n)=4n, a(3n+1)=4n+2, a(3n+2)=4n+1.

The programs for A131452, the canonical program `A131452.P1215932315928028951` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131452 has offset 0).

The definition of A131452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131452.P1215932315928028951

`ogf((2x-x^2+3x^3)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131452

/-- `ogf((2x-x^2+3x^3)/(1-x-x^3+x^4))` -/
def P1215932315928028951.Spec : Prop :=
  ∀ n, P1215932315928028951.a n = A131452 n

theorem P1215932315928028951.correct : P1215932315928028951.Spec := by
  intro n
  simp only [A131452]

end A131452

/-! ## A131452.P2588136905738340326

`4+a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A131452.P2588136905738340326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  4 + a (n - 3)

end

end A131452.P2588136905738340326

namespace A131452

/-- `4+a(n-3)` -/
def P2588136905738340326.Spec : Prop :=
  ∀ n, (P2588136905738340326.a n : ℤ) = A131452 n

end A131452

/-! ## A131452.P12186899181043844346

`∑[3-(n%3)²]-3`
-/

namespace A131452.P12186899181043844346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n % 3) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A131452.P12186899181043844346

namespace A131452

/-- `∑[3-(n%3)²]-3` -/
def P12186899181043844346.Spec : Prop :=
  ∀ n, P12186899181043844346.a n = A131452 n

end A131452

/-! ## A131452.P810152344435842417

`xor(1, comp[4*n+1])-1`
-/

namespace A131452.P810152344435842417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - 1

end

end A131452.P810152344435842417

namespace A131452

/-- `xor(1, comp[4*n+1])-1` -/
def P810152344435842417.Spec : Prop :=
  ∀ n, P810152344435842417.a n = A131452 n

end A131452

/-! ## A131452.P18424551443648770716

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A131452.P18424551443648770716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131452.P18424551443648770716

namespace A131452

/-- `∑[floor(a(n-3))]` -/
def P18424551443648770716.Spec : Prop :=
  ∀ n, P18424551443648770716.a n = A131452 n

end A131452

/-! ## A131452.P8212432142103476094

`4-floor(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131452.P8212432142103476094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  4 - (-a (n - 3))

end

end A131452.P8212432142103476094

namespace A131452

/-- `4-floor(-a(n-3))` -/
def P8212432142103476094.Spec : Prop :=
  ∀ n, P8212432142103476094.a n = A131452 n

end A131452

/-! ## A131452.P11628014452146644730

`4-ceil(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A131452.P11628014452146644730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  4 - (-a (n - 3))

end

end A131452.P11628014452146644730

namespace A131452

/-- `4-ceil(-a(n-3))` -/
def P11628014452146644730.Spec : Prop :=
  ∀ n, P11628014452146644730.a n = A131452 n

end A131452

/-! ## A131452.P1697703857585942970

`4-round(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A131452.P1697703857585942970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  4 - (-a (n - 3))

end

end A131452.P1697703857585942970

namespace A131452

/-- `4-round(-a(n-3))` -/
def P1697703857585942970.Spec : Prop :=
  ∀ n, P1697703857585942970.a n = A131452 n

end A131452

/-! ## A131452.P10307086458507442749

`∑[a(n-3)%5]-n` with `a(0)=0, a(1)=3, a(2)=0, a(3)=4`
-/

namespace A131452.P10307086458507442749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 0, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A131452.P10307086458507442749

namespace A131452

/-- `∑[a(n-3)%5]-n` -/
def P10307086458507442749.Spec : Prop :=
  ∀ n, P10307086458507442749.a n = A131452 n

end A131452

/-! ## A131452.P16591616638785006183

`∑[(1/a(n-3))^(-1)]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=3`
-/

namespace A131452.P16591616638785006183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2, -1, 3] fun n f1 =>
  (1 / f1 (n - 3)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131452.P16591616638785006183

namespace A131452

/-- `∑[(1/a(n-3))^(-1)]` -/
def P16591616638785006183.Spec : Prop :=
  ∀ n, P16591616638785006183.a n = (A131452 n : ℚ)

end A131452

/-! ## A131452.P17525198189116652727

`∑[(a(n-3)^(-1))^(-1)]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=3`
-/

namespace A131452.P17525198189116652727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2, -1, 3] fun n f1 =>
  (f1 (n - 3) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131452.P17525198189116652727

namespace A131452

/-- `∑[(a(n-3)^(-1))^(-1)]` -/
def P17525198189116652727.Spec : Prop :=
  ∀ n, P17525198189116652727.a n = (A131452 n : ℚ)

end A131452

/-! ## A131452.P8227612258547958012

`2*n-xor(1, ceil((2*n+1)/3))`
-/

namespace A131452.P8227612258547958012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.xor 1 ⌈(2 * n + 1 : ℚ) / 3⌉

end

end A131452.P8227612258547958012

namespace A131452

/-- `2*n-xor(1, ceil((2*n+1)/3))` -/
def P8227612258547958012.Spec : Prop :=
  ∀ n, P8227612258547958012.a n = A131452 n

end A131452

/-! ## A131452.P9814226381245244487

`n-Δ[a(n-3)-(n-3)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A131452.P9814226381245244487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 3) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A131452.P9814226381245244487

namespace A131452

/-- `n-Δ[a(n-3)-(n-3)]` -/
def P9814226381245244487.Spec : Prop :=
  ∀ n, P9814226381245244487.a n = A131452 n

end A131452

/-! ## A131452.P9384916468735687900

`∑[4-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A131452.P9384916468735687900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1] fun n f1 =>
  4 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131452.P9384916468735687900

namespace A131452

/-- `∑[4-a(n-1)-a(n-2)]` -/
def P9384916468735687900.Spec : Prop :=
  ∀ n, P9384916468735687900.a n = A131452 n

end A131452

/-! ## A131452.P17242690855849929402

`2*a(n-3)-(a(n-3)-4)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A131452.P17242690855849929402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 * a (n - 3) - (a (n - 3) - 4)

end

end A131452.P17242690855849929402

namespace A131452

/-- `2*a(n-3)-(a(n-3)-4)` -/
def P17242690855849929402.Spec : Prop :=
  ∀ n, P17242690855849929402.a n = A131452 n

end A131452

/-! ## A131452.P5479580531375730795

`floor(a(n-1)-(a(n-4)-a(n-3)))` with `a(0)=0, a(1)=2, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A131452.P5479580531375730795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 4] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 3))

end

end A131452.P5479580531375730795

namespace A131452

/-- `floor(a(n-1)-(a(n-4)-a(n-3)))` -/
def P5479580531375730795.Spec : Prop :=
  ∀ n, P5479580531375730795.a n = A131452 n

end A131452

/-! ## A131452.P6778859943763577710

`4*n-A047525(n+1)`
-/

namespace A131452.P6778859943763577710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A047525 (n + 1)

end

end A131452.P6778859943763577710

namespace A131452

/-- `4*n-A047525(n+1)` -/
def P6778859943763577710.Spec : Prop :=
  ∀ n, P6778859943763577710.a n = A131452 n

end A131452

/-! ## A131452.P11654370059708768559

`A004773(A064429(n))`
-/

namespace A131452.P11654370059708768559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A064429 n).toNat

end

end A131452.P11654370059708768559

namespace A131452

/-- `A004773(A064429(n))` -/
def P11654370059708768559.Spec : Prop :=
  ∀ n, P11654370059708768559.a n = A131452 n

end A131452

/-! ## A131452.P11483421186185397416

`A064429(n)+A002264(n)`
-/

namespace A131452.P11483421186185397416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n + A002264 n

end

end A131452.P11483421186185397416

namespace A131452

/-- `A064429(n)+A002264(n)` -/
def P11483421186185397416.Spec : Prop :=
  ∀ n, P11483421186185397416.a n = A131452 n

end A131452

/-! ## A131452.P13074931103370860359

`A004773(A102283(n)+n)`
-/

namespace A131452.P13074931103370860359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A102283 n + (n : ℤ)).toNat

end

end A131452.P13074931103370860359

namespace A131452

/-- `A004773(A102283(n)+n)` -/
def P13074931103370860359.Spec : Prop :=
  ∀ n, P13074931103370860359.a n = A131452 n

end A131452

/-!
# A131453: 2 up, 2 down, ..., 2 up, 2 down permutations of length 4n+1.

The programs for A131453, there is no canonical definition to state claims against.
-/

/-! ## A131453.P14535625944578566722

`A005981(2*n)`
-/

namespace A131453.P14535625944578566722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005981 (2 * n)

end

end A131453.P14535625944578566722

/-! ## A131453.P5987666687462399485

`A058258(2*n+2*n+1)`
-/

namespace A131453.P5987666687462399485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058258 (2 * n + (2 * n + 1))

end

end A131453.P5987666687462399485

/-! ## A131453.P16842511389047952616

`A058257(A139271(n+1))`
-/

namespace A131453.P16842511389047952616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058257 (A139271 (n + 1)).toNat

end

end A131453.P16842511389047952616

/-! ## A131453.P5993491841599912271

`A229892(A033816(2*n)+A000007(2*n))`
-/

namespace A131453.P5993491841599912271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A033816 (2 * n) + A000007 (2 * n)).toNat

end

end A131453.P5993491841599912271

/-!
# A131454: 2 up, 2 down, ..., 2 up, 2 down, 2 up permutations of length 4n+3.

The programs for A131454, there is no canonical definition to state claims against.
-/

/-! ## A131454.P5511084580174555678

`A005981(Δ[n²])`
-/

namespace A131454.P5511084580174555678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131454.P5511084580174555678

/-! ## A131454.P2210275233462373499

`A058257(A014635(n+1))`
-/

namespace A131454.P2210275233462373499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058257 (A014635 (n + 1)).toNat

end

end A131454.P2210275233462373499

/-! ## A131454.P8628371846681710357

`A058258(A016825(n)+1)`
-/

namespace A131454.P8628371846681710357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058258 (A016825 n + 1).toNat

end

end A131454.P8628371846681710357

/-! ## A131454.P8849541026190836724

`A058258(A016813(n)+2)`
-/

namespace A131454.P8849541026190836724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058258 (A016813 n + 2).toNat

end

end A131454.P8849541026190836724

/-! ## A131454.P6610991418533335343

`A058258(or(1, A016825(n)))`
-/

namespace A131454.P6610991418533335343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058258 (Int.lor 1 (A016825 n)).toNat

end

end A131454.P6610991418533335343

/-!
# A131455: Number of inequivalent properly oriented and labeled planar chord diagrams whose associated planar tree is a path on n + 1 vertices.

The programs for A131455, there is no canonical definition to state claims against.
-/

/-! ## A131455.P15236730811888861530

`(n+1)*A005981(n)`
-/

namespace A131455.P15236730811888861530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005981 n

end

end A131455.P15236730811888861530

/-! ## A131455.P12869904971572170995

`(n+1)*A058258(2*n+1)`
-/

namespace A131455.P12869904971572170995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058258 (2 * n + 1)

end

end A131455.P12869904971572170995

/-! ## A131455.P5118508826876396086

`A005981(n)*A008619(2*n)`
-/

namespace A131455.P5118508826876396086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005981 n * A008619 (2 * n)

end

end A131455.P5118508826876396086

/-! ## A131455.P9057503179445024659

`A005981(n)*A052938(2*n)`
-/

namespace A131455.P9057503179445024659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005981 n * A052938 (2 * n)

end

end A131455.P9057503179445024659

/-! ## A131455.P18399568310201181870

`A005981(n)*A008611(A016789(n))`
-/

namespace A131455.P18399568310201181870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005981 n * A008611 (A016789 n).toNat

end

end A131455.P18399568310201181870

/-!
# A131456: Number of q-partial fraction summands of the reciprocal of n-th cyclotomic polynomial.

The programs for A131456, there is no canonical definition to state claims against.
-/

/-! ## A131456.P1445723650084831686

`gcd(A151703(n), A286350(A326698(n+1)))`
-/

namespace A131456.P1445723650084831686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151703 n) (A286350 (A326698 (n + 1)).toNat)

end

end A131456.P1445723650084831686

/-! ## A131456.P3916304556031765934

`val(A006083(Δ[A169607(n)])+1, 2)`
-/

namespace A131456.P3916304556031765934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006083 (f1 (n + 1) - f1 n).toNat + 1).toNat 2

end

end A131456.P3916304556031765934

/-! ## A131456.P8290230910285941838

`A050603(A006083(Δ[A169607(n)]))`
-/

namespace A131456.P8290230910285941838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A006083 (f1 (n + 1) - f1 n).toNat).toNat

end

end A131456.P8290230910285941838

/-! ## A131456.P7056434180534856478

`val(A165342(∑[A173855(n+1)]), 2)`
-/

namespace A131456.P7056434180534856478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165342 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat 2

end

end A131456.P7056434180534856478

/-! ## A131456.P1910165868361279599

`gcd(A308904(n+1), A368777(n+1))`
-/

namespace A131456.P1910165868361279599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A308904 (n + 1)) (A368777 (n + 1))

end

end A131456.P1910165868361279599

/-!
# A131457: a(n+1) is the next semiprime such that a(n+1)-1 divides (a(1)...a(n))^2.

The programs for A131457, there is no canonical definition to state claims against.
-/

/-! ## A131457.P239246999194438624

`A001358(lt[A202819(n+1), A202691(2*(n+1))])`
-/

namespace A131457.P239246999194438624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202691 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A131457.P239246999194438624

/-! ## A131457.P10217506673270135717

`A001358(eq[A151668(2*n), A184945(n)])`
-/

namespace A131457.P10217506673270135717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131457.P10217506673270135717

/-!
# A131458: Residues of 3^(2^(p(n)-1)-1) for Mersenne numbers with prime indices.

The programs for A131458, there is no canonical definition to state claims against.
-/

/-! ## A131458.P5014602197495934717

`A008458(A141798(n+1))-A008622(n)`
-/

namespace A131458.P5014602197495934717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A141798 (n + 1)).toNat - A008622 n

end

end A131458.P5014602197495934717

/-!
# A131459: Residues of 3^(2^(p(n)-1)) for Mersenne numbers with prime indices.

The programs for A131459, there is no canonical definition to state claims against.
-/

/-! ## A131459.P8858422366303244393

`(3*A131458(n+1))%A001348(n+1)`
-/

namespace A131459.P8858422366303244393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A131458 (n + 1)) (A001348 (n + 1))

end

end A131459.P8858422366303244393

/-! ## A131459.P16216272857498862329

`A344767(A001348(n+1))-A027751(n+1)`
-/

namespace A131459.P16216272857498862329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344767 (A001348 (n + 1)).toNat - A027751 (n + 1)

end

end A131459.P16216272857498862329

/-!
# A131460: Residues of 3^(2^(p(n)-1)+1) for Mersenne numbers with prime indices.

The programs for A131460, there is no canonical definition to state claims against.
-/

/-! ## A131460.P13515129716500292851

`(3*A131459(n+1))%A001348(n+1)`
-/

namespace A131460.P13515129716500292851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A131459 (n + 1)) (A001348 (n + 1))

end

end A131460.P13515129716500292851

/-! ## A131460.P5620527760093044775

`(9*A131458(n+1))%A001348(n+1)`
-/

namespace A131460.P5620527760093044775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A131458 (n + 1)) (A001348 (n + 1))

end

end A131460.P5620527760093044775

/-!
# A131461: Residues of 3^(2^p(n)-2) for Mersenne numbers with prime indices.

The programs for A131461, there is no canonical definition to state claims against.
-/

/-! ## A131461.P15375246387682512091

`A131458(n+1)²%A001348(n+1)`
-/

namespace A131461.P15375246387682512091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131458 (n + 1) ^ 2) (A001348 (n + 1))

end

end A131461.P15375246387682512091

/-!
# A131462: Residues of 3^(2^p(n)-1) for Mersenne numbers with prime indices.

The programs for A131462, there is no canonical definition to state claims against.
-/

/-! ## A131462.P15106385341436075105

`(3*A131461(n+1))%A001348(n+1)`
-/

namespace A131462.P15106385341436075105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A131461 (n + 1)) (A001348 (n + 1))

end

end A131462.P15106385341436075105

/-! ## A131462.P17568515314578133233

`(A131458(n+1)*A131459(n+1))%A001348(n+1)`
-/

namespace A131462.P17568515314578133233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131458 (n + 1) * A131459 (n + 1)) (A001348 (n + 1))

end

end A131462.P17568515314578133233

/-!
# A131463: Residues of 3^(2^p(n)) for Mersenne numbers with prime indices.

The programs for A131463, there is no canonical definition to state claims against.
-/

/-! ## A131463.P11531828469768878076

`(3*A131462(n+1))%A001348(n+1)`
-/

namespace A131463.P11531828469768878076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A131462 (n + 1)) (A001348 (n + 1))

end

end A131463.P11531828469768878076

/-! ## A131463.P2079481088434192947

`(9*A131461(n+1))%A001348(n+1)`
-/

namespace A131463.P2079481088434192947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A131461 (n + 1)) (A001348 (n + 1))

end

end A131463.P2079481088434192947

/-! ## A131463.P2499562871692031259

`A131459(n+1)²%A001348(n+1)`
-/

namespace A131463.P2499562871692031259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131459 (n + 1) ^ 2) (A001348 (n + 1))

end

end A131463.P2499562871692031259

/-! ## A131463.P5029812783195368822

`(A131458(n+1)*A131460(n+1))%A001348(n+1)`
-/

namespace A131463.P5029812783195368822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131458 (n + 1) * A131460 (n + 1)) (A001348 (n + 1))

end

end A131463.P5029812783195368822

/-! ## A131463.P15505055091025410955

`((3*A131458(n+1))%A001348(n+1))²%(2^A000040(n+1)-1)`
-/

namespace A131463.P15505055091025410955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (3 * A131458 (n + 1)) (A001348 (n + 1)) ^ 2) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000040 (n + 1) : ℤ) - 1))

end

end A131463.P15505055091025410955

/-!
# A131464: a(n) = 4*n^3 - 3*n^2 + 2*n - 1.

The programs for A131464, the canonical program `A131464.P8425244943263735191` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131464 has offset 1).

The definition of A131464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)^3-3*(n+1)²+2*(n+1)-1` (program `A131464.P8425244943263735191`, by `A131464.P8425244943263735191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131464.P2740952024151150399

`ogf((2+15x+6x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A131464.P2740952024151150399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 15, 6, 1] [1, -4, 6, -4, 1] n

end

end A131464.P2740952024151150399

namespace A131464

/-- `ogf((2+15x+6x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P2740952024151150399.Spec : Prop :=
  ∀ n, P2740952024151150399.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P8425244943263735191

`4*(n+1)^3-3*(n+1)²+2*(n+1)-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131464

/-- `4*(n+1)^3-3*(n+1)²+2*(n+1)-1` -/
def P8425244943263735191.Spec : Prop :=
  ∀ n, P8425244943263735191.a n = A131464 (n + 1)

theorem P8425244943263735191.correct : P8425244943263735191.Spec := by
  intro n
  simp only [A131464, Nat.add_sub_cancel]

end A131464

/-! ## A131464.P10287735477524892253

`Δ[lcm(n, n²+n+1)*n]-(n+1)`
-/

namespace A131464.P10287735477524892253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n ^ 2 + n + 1) * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)

end

end A131464.P10287735477524892253

namespace A131464

/-- `Δ[lcm(n, n²+n+1)*n]-(n+1)` -/
def P10287735477524892253.Spec : Prop :=
  ∀ n, P10287735477524892253.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P9442163070844338867

`abs(A103532(n)+Δ[n²])`
-/

namespace A131464.P9442163070844338867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103532 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A131464.P9442163070844338867

namespace A131464

/-- `abs(A103532(n)+Δ[n²])` -/
def P9442163070844338867.Spec : Prop :=
  ∀ n, P9442163070844338867.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P2985780510925292197

`∑[A005897(n)+∑[12*n]+1]`
-/

namespace A131464.P2985780510925292197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131464.P2985780510925292197

namespace A131464

/-- `∑[A005897(n)+∑[12*n]+1]` -/
def P2985780510925292197.Spec : Prop :=
  ∀ n, P2985780510925292197.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P13582508564193574785

`∑[A016778(n)+A005918(n)]`
-/

namespace A131464.P13582508564193574785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n + A005918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131464.P13582508564193574785

namespace A131464

/-- `∑[A016778(n)+A005918(n)]` -/
def P13582508564193574785.Spec : Prop :=
  ∀ n, P13582508564193574785.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P2387854887577426343

`∑[A016921(n)+A005914(n)]`
-/

namespace A131464.P2387854887577426343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + A005914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131464.P2387854887577426343

namespace A131464

/-- `∑[A016921(n)+A005914(n)]` -/
def P2387854887577426343.Spec : Prop :=
  ∀ n, P2387854887577426343.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P9051526618771175354

`∑[A057427(n)+2*A085473(n)]`
-/

namespace A131464.P9051526618771175354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 2 * A085473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131464.P9051526618771175354

namespace A131464

/-- `∑[A057427(n)+2*A085473(n)]` -/
def P9051526618771175354.Spec : Prop :=
  ∀ n, P9051526618771175354.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P16514122465573622419

`(A131465(n+1)-1)/(n+1)`
-/

namespace A131464.P16514122465573622419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131465 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A131464.P16514122465573622419

namespace A131464

/-- `(A131465(n+1)-1)/(n+1)` -/
def P16514122465573622419.Spec : Prop :=
  ∀ n, P16514122465573622419.a n = (A131464 (n + 1) : ℚ)

theorem P16514122465573622419.correct : P16514122465573622419.Spec := by
  intro n
  simp only [A131464, Nat.add_sub_cancel, A131464.P16514122465573622419.a, A131464.P8425244943263735191.a, A131465, A131465.P9123495367249099783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131464

/-! ## A131464.P4694536245796798889

`Δ[A053699(n)-(∑[n+1]+2)]`
-/

namespace A131464.P4694536245796798889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n - ((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131464.P4694536245796798889

namespace A131464

/-- `Δ[A053699(n)-(∑[n+1]+2)]` -/
def P4694536245796798889.Spec : Prop :=
  ∀ n, P4694536245796798889.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P10516771482575465527

`Δ[A027445(n)-A000096(n)]`
-/

namespace A131464.P10516771482575465527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 n - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131464.P10516771482575465527

namespace A131464

/-- `Δ[A027445(n)-A000096(n)]` -/
def P10516771482575465527.Spec : Prop :=
  ∀ n, P10516771482575465527.a n = A131464 (n + 1)

theorem P10516771482575465527.correct : P10516771482575465527.Spec := by
  intro n
  simp only [A131464, Nat.add_sub_cancel, A131464.P10516771482575465527.f1, A131464.P10516771482575465527.a, A131464.P8425244943263735191.a, A000096, A000096.P6925830517264718723.a, A027445, A027445.P2062535294747488403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131464

/-! ## A131464.P11412465496533389491

`Δ[A100019(n)-A000124(n)]`
-/

namespace A131464.P11412465496533389491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131464.P11412465496533389491

namespace A131464

/-- `Δ[A100019(n)-A000124(n)]` -/
def P11412465496533389491.Spec : Prop :=
  ∀ n, P11412465496533389491.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P7419719902263642020

`Δ[A100019(n)-A000217(n)]`
-/

namespace A131464.P7419719902263642020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131464.P7419719902263642020

namespace A131464

/-- `Δ[A100019(n)-A000217(n)]` -/
def P7419719902263642020.Spec : Prop :=
  ∀ n, P7419719902263642020.a n = A131464 (n + 1)

theorem P7419719902263642020.correct : P7419719902263642020.Spec := by
  intro n
  simp only [A131464, Nat.add_sub_cancel, A131464.P7419719902263642020.f1, A131464.P7419719902263642020.a, A131464.P8425244943263735191.a, A000217, A000217.P10269402890581615239.a, A100019, A100019.P10475415265072854522.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131464

/-! ## A131464.P9138700054241307340

`Δ[A027445(n)-A000217(n+1)]`
-/

namespace A131464.P9138700054241307340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 n - A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131464.P9138700054241307340

namespace A131464

/-- `Δ[A027445(n)-A000217(n+1)]` -/
def P9138700054241307340.Spec : Prop :=
  ∀ n, P9138700054241307340.a n = A131464 (n + 1)

theorem P9138700054241307340.correct : P9138700054241307340.Spec := by
  intro n
  simp only [A131464, Nat.add_sub_cancel, A131464.P9138700054241307340.f1, A131464.P9138700054241307340.a, A131464.P8425244943263735191.a, A000217, A000217.P10269402890581615239.a, A027445, A027445.P2062535294747488403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131464

/-! ## A131464.P203388282266045450

`Δ[2*A071237(n)-A000096(n)]`
-/

namespace A131464.P203388282266045450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071237 n - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131464.P203388282266045450

namespace A131464

/-- `Δ[2*A071237(n)-A000096(n)]` -/
def P203388282266045450.Spec : Prop :=
  ∀ n, P203388282266045450.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P16419916287674339695

`floor(A047672(2*(n+1))/4)`
-/

namespace A131464.P16419916287674339695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047672 (2 * (n + 1)) : ℚ) / 4⌋

end

end A131464.P16419916287674339695

namespace A131464

/-- `floor(A047672(2*(n+1))/4)` -/
def P16419916287674339695.Spec : Prop :=
  ∀ n, P16419916287674339695.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P15838769982800774731

`record[n+1-A232599(n+1)]`
-/

namespace A131464.P15838769982800774731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A232599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131464.P15838769982800774731

namespace A131464

/-- `record[n+1-A232599(n+1)]` -/
def P15838769982800774731.Spec : Prop :=
  ∀ n, P15838769982800774731.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P13187180790896753991

`(A147656(2*n+1)+n)/2`
-/

namespace A131464.P13187180790896753991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147656 (2 * n + 1) + (n : ℤ) : ℚ) / 2

end

end A131464.P13187180790896753991

namespace A131464

/-- `(A147656(2*n+1)+n)/2` -/
def P13187180790896753991.Spec : Prop :=
  ∀ n, P13187180790896753991.a n = (A131464 (n + 1) : ℚ)

end A131464

/-! ## A131464.P11773984157148477791

`Δ[A111384(2*n+1)+n²²]`
-/

namespace A131464.P11773984157148477791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (2 * n + 1) + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131464.P11773984157148477791

namespace A131464

/-- `Δ[A111384(2*n+1)+n²²]` -/
def P11773984157148477791.Spec : Prop :=
  ∀ n, P11773984157148477791.a n = A131464 (n + 1)

end A131464

/-! ## A131464.P1569428049245632166

`∑[A184005(A004767(n))-A063130(n+1)]`
-/

namespace A131464.P1569428049245632166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184005 (A004767 n).toNat - A063130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131464.P1569428049245632166

namespace A131464

/-- `∑[A184005(A004767(n))-A063130(n+1)]` -/
def P1569428049245632166.Spec : Prop :=
  ∀ n, P1569428049245632166.a n = A131464 (n + 1)

end A131464

/-!
# A131465: a(n) = 4*n^4 - 3*n^3 + 2*n^2 - n + 1.

The programs for A131465, the canonical program `A131465.P9123495367249099783` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131465 has offset 0).

The definition of A131465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4-3*n^3+2*n²-n+1` (program `A131465.P9123495367249099783`, by `A131465.P9123495367249099783.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131465.P17140340187098983726

`ogf((1-2x+42x^2+44x^3+11x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A131465.P17140340187098983726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 42, 44, 11] [1, -5, 10, -10, 5, -1] n

end

end A131465.P17140340187098983726

namespace A131465

/-- `ogf((1-2x+42x^2+44x^3+11x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P17140340187098983726.Spec : Prop :=
  ∀ n, P17140340187098983726.a n = A131465 n

end A131465

/-! ## A131465.P9123495367249099783

`4*n^4-3*n^3+2*n²-n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131465

/-- `4*n^4-3*n^3+2*n²-n+1` -/
def P9123495367249099783.Spec : Prop :=
  ∀ n, P9123495367249099783.a n = A131465 n

theorem P9123495367249099783.correct : P9123495367249099783.Spec := by
  intro n
  simp only [A131465]

end A131465

/-!
# A131466: a(n) = 5n^4 - 4n^3 + 3n^2 - 2n + 1.

The programs for A131466, the canonical program `A131466.P10936025003940888238` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131466 has offset 0).

The definition of A131466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n^4-4*n^3+3*n²-2*n+1` (program `A131466.P10936025003940888238`, by `A131466.P10936025003940888238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131466.P14388802229492790936

`ogf((1-2x+52x^2+54x^3+15x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A131466.P14388802229492790936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 52, 54, 15] [1, -5, 10, -10, 5, -1] n

end

end A131466.P14388802229492790936

namespace A131466

/-- `ogf((1-2x+52x^2+54x^3+15x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14388802229492790936.Spec : Prop :=
  ∀ n, P14388802229492790936.a n = A131466 n

end A131466

/-! ## A131466.P10936025003940888238

`5*n^4-4*n^3+3*n²-2*n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131466

/-- `5*n^4-4*n^3+3*n²-2*n+1` -/
def P10936025003940888238.Spec : Prop :=
  ∀ n, P10936025003940888238.a n = A131466 n

theorem P10936025003940888238.correct : P10936025003940888238.Spec := by
  intro n
  simp only [A131466]

end A131466

/-!
# A131467: Number of planar polyhexes (A000228) with at most n cells.

The programs for A131467, there is no canonical definition to state claims against.
-/

/-! ## A131467.P10137459618929070785

`∑[A000228(n+1)]`
-/

namespace A131467.P10137459618929070785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131467.P10137459618929070785

/-! ## A131467.P7800825043622447394

`∑[A000228(-xor(n, -1))-char[40]]`
-/

namespace A131467.P7800825043622447394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (-Int.xor (n : ℤ) (-1)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131467.P7800825043622447394

/-! ## A131467.P17556031304532044894

`A000228(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A131467.P17556031304532044894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000228 (Nat.choose (n + 1) n) + a (n - 1)

end

end A131467.P17556031304532044894

/-! ## A131467.P12334219464059528372

`A000228(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A131467.P12334219464059528372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000228 (n + 1) + a (A023443 n).toNat

end

end A131467.P12334219464059528372

/-! ## A131467.P11599735319677518453

`∑[A038144(n+1)+A018190(n+1)]`
-/

namespace A131467.P11599735319677518453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038144 (n + 1) + A018190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131467.P11599735319677518453

/-!
# A131468: Sum of all n-digit Catalan numbers.

The programs for A131468, there is no canonical definition to state claims against.
-/

/-! ## A131468.P15734905196540422729

`Δ[A099975(n)%A099974(3*n)]`
-/

namespace A131468.P15734905196540422729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099975 n) (A099974 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131468.P15734905196540422729

/-! ## A131468.P18140798742842040550

`Δ[A014137(2*n+1)%A288779(3*n)]`
-/

namespace A131468.P18140798742842040550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014137 (2 * n + 1)) (A288779 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131468.P18140798742842040550

/-! ## A131468.P8903006336504185213

`A005807(2*(n+1))+A000122(A084480(n))`
-/

namespace A131468.P8903006336504185213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (2 * (n + 1)) + A000122 (A084480 n).toNat

end

end A131468.P8903006336504185213

/-!
# A131469: Grundy numbers of one pile short global nim.

The programs for A131469, there is no canonical definition to state claims against.
-/

/-! ## A131469.P8187143685330112240

`A339451(A000005(2^n)-A182105(n+1))`
-/

namespace A131469.P8187143685330112240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (A000005 (2 ^ n) - A182105 (n + 1)).toNat

end

end A131469.P8187143685330112240

/-! ## A131469.P15984544644484343088

`A004526(A108918(n+1))%A000203(2^n)`
-/

namespace A131469.P15984544644484343088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A108918 (n + 1)).toNat) (A000203 (2 ^ n))

end

end A131469.P15984544644484343088

/-! ## A131469.P1449192031885365818

`A004526(and(A000203(2^n), A108918(n+1)))`
-/

namespace A131469.P1449192031885365818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land (A000203 (2 ^ n)) (A108918 (n + 1))).toNat

end

end A131469.P1449192031885365818

/-! ## A131469.P9327731608113825827

`A004526(A108918(n+1)%A365142(3*n+4))`
-/

namespace A131469.P9327731608113825827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A108918 (n + 1)) (A365142 (3 * n + 4))).toNat

end

end A131469.P9327731608113825827

/-!
# A131470: a(n)=smallest number that gives a product with the sum of digits of n written in base 2 greater than n.

The programs for A131470, there is no canonical definition to state claims against.
-/

/-! ## A131470.P18254256748781406954

`floor((n+1)/∑[1-val(n+1, 2)])+1`
-/

namespace A131470.P18254256748781406954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋ + 1

end

end A131470.P18254256748781406954

/-! ## A131470.P16794969856185196809

`floor((n+1)/∑[2-log2(xor(n, n+1)+1)])+1`
-/

namespace A131470.P16794969856185196809
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (∑ j ∈ Finset.range (n + 1), f1 j)⌋ + 1

end

end A131470.P16794969856185196809

/-! ## A131470.P4069359579114335565

`floor((n+1)/∑[2-∏{e}[xor(n, n+1)+1, #]])+1`
-/

namespace A131470.P4069359579114335565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋ + 1

end

end A131470.P4069359579114335565

/-! ## A131470.P2915506651809946067

`A135941(n+1)+1`
-/

namespace A131470.P2915506651809946067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135941 (n + 1) + 1

end

end A131470.P2915506651809946067

/-! ## A131470.P4391752962945918169

`ceil((2+n)/A000120(n+1))`
-/

namespace A131470.P4391752962945918169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 + n : ℚ) / (A000120 (n + 1) : ℚ)⌉

end

end A131470.P4391752962945918169

/-! ## A131470.P9411865323483046164

`floor((n+1)/∑[2-A001222(xor(n, n+1)+1)])+1`
-/

namespace A131470.P9411865323483046164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 (Nat.xor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋ + 1

end

end A131470.P9411865323483046164

/-! ## A131470.P13319567099093869750

`floor((n+1)/∑[2-A000005(or(n, n+1)-n)])+1`
-/

namespace A131470.P13319567099093869750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (Nat.lor n (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋ + 1

end

end A131470.P13319567099093869750

/-! ## A131470.P8778143378730562737

`floor((n+1)/∑[2-A000005(1-and(n, n+1)+n)])+1`
-/

namespace A131470.P8778143378730562737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋ + 1

end

end A131470.P8778143378730562737

/-! ## A131470.P9359729423534852924

`A020725(A135941(n+1))`
-/

namespace A131470.P9359729423534852924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A135941 (n + 1)).toNat

end

end A131470.P9359729423534852924

/-! ## A131470.P14386739563404814295

`ceil((n+2)/A000005(A048896(n)))`
-/

namespace A131470.P14386739563404814295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / (A000005 (A048896 n).toNat : ℚ)⌉

end

end A131470.P14386739563404814295

/-!
# A131471: a(n) = n^5+n.

The programs for A131471, the canonical program `A131471.P12482115226042697987` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131471 has offset 0).

The definition of A131471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n` (program `A131471.P12482115226042697987`, by `A131471.P12482115226042697987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131471.P12482115226042697987

`n^5+n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131471

/-- `n^5+n` -/
def P12482115226042697987.Spec : Prop :=
  ∀ n, (P12482115226042697987.a n : ℤ) = A131471 n

theorem P12482115226042697987.correct : P12482115226042697987.Spec := by
  intro n
  simp only [A131471]

end A131471

/-!
# A131472: a(n) = n^6 + n.

The programs for A131472, the canonical program `A131472.P7274504250054804871` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131472 has offset 0).

The definition of A131472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+n` (program `A131472.P7274504250054804871`, by `A131472.P7274504250054804871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131472.P7274504250054804871

`n^6+n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131472

/-- `n^6+n` -/
def P7274504250054804871.Spec : Prop :=
  ∀ n, (P7274504250054804871.a n : ℤ) = A131472 n

theorem P7274504250054804871.correct : P7274504250054804871.Spec := by
  intro n
  simp only [A131472]

end A131472

/-!
# A131473: a(n) = n^6 - n.

The programs for A131473, the canonical program `A131473.P9501383633566754885` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131473 has offset 0).

The definition of A131473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-n` (program `A131473.P9501383633566754885`, by `A131473.P9501383633566754885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131473.P9501383633566754885

`n^6-n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131473

/-- `n^6-n` -/
def P9501383633566754885.Spec : Prop :=
  ∀ n, P9501383633566754885.a n = A131473 n

theorem P9501383633566754885.correct : P9501383633566754885.Spec := by
  intro n
  simp only [A131473]

end A131473

/-!
# A131474: a(n) = ceiling(n/2)*ceiling(n^2/2).

The programs for A131474, the canonical program `A131474.P1791060860128759572` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131474 has offset 0).

The definition of A131474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/2)*ceil(n²/2)` (program `A131474.P1791060860128759572`, by `A131474.P1791060860128759572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131474.P1791060860128759572

`ceil(n/2)*ceil(n²/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131474

/-- `ceil(n/2)*ceil(n²/2)` -/
def P1791060860128759572.Spec : Prop :=
  ∀ n, P1791060860128759572.a n = A131474 n

theorem P1791060860128759572.correct : P1791060860128759572.Spec := by
  intro n
  simp only [A131474]

end A131474

/-! ## A131474.P7412182588007894013

`ogf((x+x^2+5x^3+3x^4+2x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A131474.P7412182588007894013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 5, 3, 2] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A131474.P7412182588007894013

namespace A131474

/-- `ogf((x+x^2+5x^3+3x^4+2x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P7412182588007894013.Spec : Prop :=
  ∀ n, P7412182588007894013.a n = A131474 n

end A131474

/-! ## A131474.P11610498536572068056

`∑[(n*∑[n])%(n²+1)]`
-/

namespace A131474.P11610498536572068056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j) % (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131474.P11610498536572068056

namespace A131474

/-- `∑[(n*∑[n])%(n²+1)]` -/
def P11610498536572068056.Spec : Prop :=
  ∀ n, (P11610498536572068056.a n : ℤ) = A131474 n

end A131474

/-! ## A131474.P9796384061542140115

`∑[lcm(2, n²)/2-floor(n/2)]`
-/

namespace A131474.P9796384061542140115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n ^ 2) : ℚ) / 2 - (⌊(n : ℚ) / 2⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131474.P9796384061542140115

namespace A131474

/-- `∑[lcm(2, n²)/2-floor(n/2)]` -/
def P9796384061542140115.Spec : Prop :=
  ∀ n, P9796384061542140115.a n = (A131474 n : ℚ)

end A131474

/-! ## A131474.P16873101392846864480

`∑[A129194(n)-floor(n/2)]`
-/

namespace A131474.P16873101392846864480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 n - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131474.P16873101392846864480

namespace A131474

/-- `∑[A129194(n)-floor(n/2)]` -/
def P16873101392846864480.Spec : Prop :=
  ∀ n, P16873101392846864480.a n = A131474 n

end A131474

/-! ## A131474.P1354315959922582260

`abs(ceil(n²/2)*A001057(n))`
-/

namespace A131474.P1354315959922582260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n ^ 2 : ℚ) / 2⌉ * A001057 n|

end

end A131474.P1354315959922582260

namespace A131474

/-- `abs(ceil(n²/2)*A001057(n))` -/
def P1354315959922582260.Spec : Prop :=
  ∀ n, P1354315959922582260.a n = A131474 n

end A131474

/-! ## A131474.P6262530641359953148

`n*(∑[n]+1)+1-∑[A228564(n)]`
-/

namespace A131474.P6262530641359953148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A131474.P6262530641359953148

namespace A131474

/-- `n*(∑[n]+1)+1-∑[A228564(n)]` -/
def P6262530641359953148.Spec : Prop :=
  ∀ n, P6262530641359953148.a n = A131474 n

end A131474

/-! ## A131474.P3876762250175816701

`A178312(n)+A111384(n)`
-/

namespace A131474.P3876762250175816701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178312 n + A111384 n

end

end A131474.P3876762250175816701

namespace A131474

/-- `A178312(n)+A111384(n)` -/
def P3876762250175816701.Spec : Prop :=
  ∀ n, P3876762250175816701.a n = A131474 n

end A131474

/-! ## A131474.P15656121546528546394

`A212561(n)+A147685(n)`
-/

namespace A131474.P15656121546528546394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212561 n + A147685 n

end

end A131474.P15656121546528546394

namespace A131474

/-- `A212561(n)+A147685(n)` -/
def P15656121546528546394.Spec : Prop :=
  ∀ n, P15656121546528546394.a n = A131474 n

end A131474

/-! ## A131474.P5797715424651649021

`A036486(n)-A131475(n)`
-/

namespace A131474.P5797715424651649021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 n - A131475 n

end

end A131474.P5797715424651649021

namespace A131474

/-- `A036486(n)-A131475(n)` -/
def P5797715424651649021.Spec : Prop :=
  ∀ n, P5797715424651649021.a n = A131474 n

end A131474

/-! ## A131474.P14626012918345831856

`∪[A033431(n), A059722(n)]`
-/

namespace A131474.P14626012918345831856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131474.P14626012918345831856

namespace A131474

/-- `∪[A033431(n), A059722(n)]` -/
def P14626012918345831856.Spec : Prop :=
  ∀ n, (P14626012918345831856.a n : ℤ) = A131474 n

end A131474

/-! ## A131474.P6381964383055823868

`abs(A000982(n)*A130472(n))`
-/

namespace A131474.P6381964383055823868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000982 n * A130472 n|

end

end A131474.P6381964383055823868

namespace A131474

/-- `abs(A000982(n)*A130472(n))` -/
def P6381964383055823868.Spec : Prop :=
  ∀ n, P6381964383055823868.a n = A131474 n

end A131474

/-! ## A131474.P17852543648644029664

`Δ[A002620(n)²]-A002620(n)`
-/

namespace A131474.P17852543648644029664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002620 n

end

end A131474.P17852543648644029664

namespace A131474

/-- `Δ[A002620(n)²]-A002620(n)` -/
def P17852543648644029664.Spec : Prop :=
  ∀ n, P17852543648644029664.a n = A131474 n

end A131474

/-! ## A131474.P7200672542534197731

`∑[n]*A000982(n)/A109613(n)`
-/

namespace A131474.P7200672542534197731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000982 n : ℚ) / (A109613 n : ℚ)

end

end A131474.P7200672542534197731

namespace A131474

/-- `∑[n]*A000982(n)/A109613(n)` -/
def P7200672542534197731.Spec : Prop :=
  ∀ n, P7200672542534197731.a n = (A131474 n : ℚ)

end A131474

/-! ## A131474.P7350539830432218367

`∪[A005898(n)+n², A033431(n)]`
-/

namespace A131474.P7350539830432218367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n + (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131474.P7350539830432218367

namespace A131474

/-- `∪[A005898(n)+n², A033431(n)]` -/
def P7350539830432218367.Spec : Prop :=
  ∀ n, (P7350539830432218367.a n : ℤ) = A131474 n

end A131474

/-! ## A131474.P14863957011600720325

`A000217(n)*A065033(n)-A002620(n)`
-/

namespace A131474.P14863957011600720325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A065033 n - A002620 n

end

end A131474.P14863957011600720325

namespace A131474

/-- `A000217(n)*A065033(n)-A002620(n)` -/
def P14863957011600720325.Spec : Prop :=
  ∀ n, P14863957011600720325.a n = A131474 n

end A131474

/-! ## A131474.P299026549693463585

`A000217(n)*A110654(n)-A002620(n)`
-/

namespace A131474.P299026549693463585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A110654 n - A002620 n

end

end A131474.P299026549693463585

namespace A131474

/-- `A000217(n)*A110654(n)-A002620(n)` -/
def P299026549693463585.Spec : Prop :=
  ∀ n, P299026549693463585.a n = A131474 n

end A131474

/-! ## A131474.P15018468176713600600

`A061925(n)*A110654(n)-A110654(n)`
-/

namespace A131474.P15018468176713600600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n * A110654 n - A110654 n

end

end A131474.P15018468176713600600

namespace A131474

/-- `A061925(n)*A110654(n)-A110654(n)` -/
def P15018468176713600600.Spec : Prop :=
  ∀ n, P15018468176713600600.a n = A131474 n

theorem P15018468176713600600.correct : P15018468176713600600.Spec := by
  intro n
  simp only [A131474, Nat.add_sub_cancel, A131474.P15018468176713600600.a, A131474.P1791060860128759572.a, A061925, A061925.P12870392969338772725.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131474

/-! ## A131474.P14880172283749689456

`A235355(n)+A235355(n)-A002620(n+1)`
-/

namespace A131474.P14880172283749689456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n + (A235355 n - A002620 (n + 1))

end

end A131474.P14880172283749689456

namespace A131474

/-- `A235355(n)+A235355(n)-A002620(n+1)` -/
def P14880172283749689456.Spec : Prop :=
  ∀ n, P14880172283749689456.a n = A131474 n

end A131474

/-! ## A131474.P325623173032846063

`A000982(n)*A008619(n+1)-A000982(n)`
-/

namespace A131474.P325623173032846063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A008619 (n + 1) - A000982 n

end

end A131474.P325623173032846063

namespace A131474

/-- `A000982(n)*A008619(n+1)-A000982(n)` -/
def P325623173032846063.Spec : Prop :=
  ∀ n, P325623173032846063.a n = A131474 n

end A131474

/-!
# A131475: a(n) = floor(n/2) * floor(n^2/2).

The programs for A131475, the canonical program `A131475.P126280016283812934` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131475 has offset 0).

The definition of A131475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)*floor(n²/2)` (program `A131475.P126280016283812934`, by `A131475.P126280016283812934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131475.P126280016283812934

`floor(n/2)*floor(n²/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131475

/-- `floor(n/2)*floor(n²/2)` -/
def P126280016283812934.Spec : Prop :=
  ∀ n, P126280016283812934.a n = A131475 n

theorem P126280016283812934.correct : P126280016283812934.Spec := by
  intro n
  simp only [A131475]

end A131475

/-! ## A131475.P1778759827456296525

`ogf((2x^2+2x^3+6x^4+2x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A131475.P1778759827456296525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 2, 6, 2] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A131475.P1778759827456296525

namespace A131475

/-- `ogf((2x^2+2x^3+6x^4+2x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P1778759827456296525.Spec : Prop :=
  ∀ n, P1778759827456296525.a n = A131475 n

end A131475

/-! ## A131475.P10806145430018203321

`∑[lcm(2, 1-n)*floor(n/2)]`
-/

namespace A131475.P10806145430018203321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - (n : ℤ)) : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131475.P10806145430018203321

namespace A131475

/-- `∑[lcm(2, 1-n)*floor(n/2)]` -/
def P10806145430018203321.Spec : Prop :=
  ∀ n, P10806145430018203321.a n = A131475 n

end A131475

/-! ## A131475.P10188999610205305905

`∑[(n-1)*floor(n/(n%2+1))]`
-/

namespace A131475.P10188999610205305905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131475.P10188999610205305905

namespace A131475

/-- `∑[(n-1)*floor(n/(n%2+1))]` -/
def P10188999610205305905.Spec : Prop :=
  ∀ n, P10188999610205305905.a n = A131475 n

end A131475

/-! ## A131475.P5567423229170600837

`∑[(n-1)*floor(n/gcd(2, n+1))]`
-/

namespace A131475.P5567423229170600837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131475.P5567423229170600837

namespace A131475

/-- `∑[(n-1)*floor(n/gcd(2, n+1))]` -/
def P5567423229170600837.Spec : Prop :=
  ∀ n, P5567423229170600837.a n = A131475 n

end A131475

/-! ## A131475.P7108903405833443917

`∑[lcm(n+1, n-1)-(n-1)]-2`
-/

namespace A131475.P7108903405833443917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A131475.P7108903405833443917

namespace A131475

/-- `∑[lcm(n+1, n-1)-(n-1)]-2` -/
def P7108903405833443917.Spec : Prop :=
  ∀ n, P7108903405833443917.a n = A131475 n

end A131475

/-! ## A131475.P14487506491892596340

`n*(∑[or(1, n)]-2*n)-a(n-1)` with `a(0)=0`
-/

namespace A131475.P14487506491892596340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)) - a (n - 1)

end

end A131475.P14487506491892596340

namespace A131475

/-- `n*(∑[or(1, n)]-2*n)-a(n-1)` -/
def P14487506491892596340.Spec : Prop :=
  ∀ n, P14487506491892596340.a n = A131475 n

end A131475

/-! ## A131475.P13118003959568944713

`A323724(n)-a(n-1)` with `a(0)=0`
-/

namespace A131475.P13118003959568944713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A323724 n - a (n - 1)

end

end A131475.P13118003959568944713

namespace A131475

/-- `A323724(n)-a(n-1)` -/
def P13118003959568944713.Spec : Prop :=
  ∀ n, P13118003959568944713.a n = A131475 n

end A131475

/-! ## A131475.P6646985232663685966

`∑[(n-1)*A065423(n+1)]`
-/

namespace A131475.P6646985232663685966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A065423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131475.P6646985232663685966

namespace A131475

/-- `∑[(n-1)*A065423(n+1)]` -/
def P6646985232663685966.Spec : Prop :=
  ∀ n, P6646985232663685966.a n = A131475 n

end A131475

/-! ## A131475.P15692887829746958367

`∑[(n-1)*(A026741(n+1)-1)]`
-/

namespace A131475.P15692887829746958367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A026741 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131475.P15692887829746958367

namespace A131475

/-- `∑[(n-1)*(A026741(n+1)-1)]` -/
def P15692887829746958367.Spec : Prop :=
  ∀ n, P15692887829746958367.a n = A131475 n

end A131475

/-! ## A131475.P4401681240929512984

`A290168(n)+A111384(n)`
-/

namespace A131475.P4401681240929512984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290168 n + A111384 n

end

end A131475.P4401681240929512984

namespace A131475

/-- `A290168(n)+A111384(n)` -/
def P4401681240929512984.Spec : Prop :=
  ∀ n, P4401681240929512984.a n = A131475 n

end A131475

/-! ## A131475.P3584502960948970136

`A036486(n)-A131474(n)`
-/

namespace A131475.P3584502960948970136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 n - A131474 n

end

end A131475.P3584502960948970136

namespace A131475

/-- `A036486(n)-A131474(n)` -/
def P3584502960948970136.Spec : Prop :=
  ∀ n, P3584502960948970136.a n = A131475 n

end A131475

/-! ## A131475.P16038801810843441466

`A212892(n)/A065033(n)`
-/

namespace A131475.P16038801810843441466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212892 n : ℚ) / (A065033 n : ℚ)

end

end A131475.P16038801810843441466

namespace A131475

/-- `A212892(n)/A065033(n)` -/
def P16038801810843441466.Spec : Prop :=
  ∀ n, P16038801810843441466.a n = (A131475 n : ℚ)

end A131475

/-! ## A131475.P7403290584151579749

`lcm(2, A004526(n)*A007590(n))`
-/

namespace A131475.P7403290584151579749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A004526 n * A007590 n)

end

end A131475.P7403290584151579749

namespace A131475

/-- `lcm(2, A004526(n)*A007590(n))` -/
def P7403290584151579749.Spec : Prop :=
  ∀ n, (P7403290584151579749.a n : ℤ) = A131475 n

end A131475

/-! ## A131475.P201038766876458228

`A007590(n)²/A131055(n+1)`
-/

namespace A131475.P201038766876458228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 n ^ 2 : ℚ) / (A131055 (n + 1) : ℚ)

end

end A131475.P201038766876458228

namespace A131475

/-- `A007590(n)²/A131055(n+1)` -/
def P201038766876458228.Spec : Prop :=
  ∀ n, P201038766876458228.a n = (A131475 n : ℚ)

end A131475

/-! ## A131475.P1907002117570394449

`A000217(n)*A004526(n)-A002620(n)`
-/

namespace A131475.P1907002117570394449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A004526 n - A002620 n

end

end A131475.P1907002117570394449

namespace A131475

/-- `A000217(n)*A004526(n)-A002620(n)` -/
def P1907002117570394449.Spec : Prop :=
  ∀ n, P1907002117570394449.a n = A131475 n

end A131475

/-! ## A131475.P8522000109136578463

`A007590(n)*A008619(n)-A007590(n)`
-/

namespace A131475.P8522000109136578463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n * A008619 n - A007590 n

end

end A131475.P8522000109136578463

namespace A131475

/-- `A007590(n)*A008619(n)-A007590(n)` -/
def P8522000109136578463.Spec : Prop :=
  ∀ n, P8522000109136578463.a n = A131475 n

theorem P8522000109136578463.correct : P8522000109136578463.Spec := by
  intro n
  simp only [A131475, Nat.add_sub_cancel, A131475.P8522000109136578463.a, A131475.P126280016283812934.a, A007590, A007590.P9530274664467440414.a, A008619, A008619.P16053834178911111118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131475

/-! ## A131475.P7929314476014579054

`A002620(n)*A109613(n)-A002620(n)`
-/

namespace A131475.P7929314476014579054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A109613 n - A002620 n

end

end A131475.P7929314476014579054

namespace A131475

/-- `A002620(n)*A109613(n)-A002620(n)` -/
def P7929314476014579054.Spec : Prop :=
  ∀ n, P7929314476014579054.a n = A131475 n

end A131475

/-! ## A131475.P7686089492519283234

`A000217(n)*A007590(n)-A131479(n)`
-/

namespace A131475.P7686089492519283234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A007590 n - A131479 n

end

end A131475.P7686089492519283234

namespace A131475

/-- `A000217(n)*A007590(n)-A131479(n)` -/
def P7686089492519283234.Spec : Prop :=
  ∀ n, P7686089492519283234.a n = A131475 n

end A131475

/-! ## A131475.P18237343252729314280

`A008794(n)*A109613(n+1)-A008794(n)`
-/

namespace A131475.P18237343252729314280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n * A109613 (n + 1) - A008794 n

end

end A131475.P18237343252729314280

namespace A131475

/-- `A008794(n)*A109613(n+1)-A008794(n)` -/
def P18237343252729314280.Spec : Prop :=
  ∀ n, P18237343252729314280.a n = A131475 n

end A131475

/-!
# A131476: a(n) = floor(n^3/3).

The programs for A131476, the canonical program `A131476.P9969944578615817238` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131476 has offset 0).

The definition of A131476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/3)` (program `A131476.P9969944578615817238`, by `A131476.P9969944578615817238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131476.P9969944578615817238

`floor(n^3/3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131476

/-- `floor(n^3/3)` -/
def P9969944578615817238.Spec : Prop :=
  ∀ n, P9969944578615817238.a n = A131476 n

theorem P9969944578615817238.correct : P9969944578615817238.Spec := by
  intro n
  simp only [A131476]

end A131476

/-! ## A131476.P4390835602252795501

`ogf((2x^2+3x^3+x^5)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`
-/

namespace A131476.P4390835602252795501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 3, 0, 1] [1, -3, 3, -2, 3, -3, 1] n

end

end A131476.P4390835602252795501

namespace A131476

/-- `ogf((2x^2+3x^3+x^5)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P4390835602252795501.Spec : Prop :=
  ∀ n, P4390835602252795501.a n = A131476 n

end A131476

/-! ## A131476.P12859927388867210773

`(3*n^3+3*cos(2*π*n/3)+sqrt(3)*sin(2*π*n/3)-3)/9`
-/

namespace A131476.P12859927388867210773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 3 : ℝ) + 3 * Real.cos (2 * Real.pi * (n : ℝ) / 3) + Real.sqrt (3 : ℝ) * Real.sin (2 * Real.pi * (n : ℝ) / 3) - 3) / 9

end

end A131476.P12859927388867210773

namespace A131476

/-- `(3*n^3+3*cos(2*π*n/3)+sqrt(3)*sin(2*π*n/3)-3)/9` -/
def P12859927388867210773.Spec : Prop :=
  ∀ n, P12859927388867210773.a n = (A131476 n : ℝ)

end A131476

/-! ## A131476.P2048569964633711403

`(A057078(n)-A024001(n))/3`
-/

namespace A131476.P2048569964633711403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057078 n - A024001 n : ℚ) / 3

end

end A131476.P2048569964633711403

namespace A131476

/-- `(A057078(n)-A024001(n))/3` -/
def P2048569964633711403.Spec : Prop :=
  ∀ n, P2048569964633711403.a n = (A131476 n : ℚ)

end A131476

/-! ## A131476.P13819088324198947050

`(n^3-n%3)/3`
-/

namespace A131476.P13819088324198947050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) / 3

end

end A131476.P13819088324198947050

namespace A131476

/-- `(n^3-n%3)/3` -/
def P13819088324198947050.Spec : Prop :=
  ∀ n, P13819088324198947050.a n = (A131476 n : ℚ)

end A131476

/-! ## A131476.P13042377655593391878

`round((2*(n+1)*C(n, 2)+n-1)/3)`
-/

namespace A131476.P13042377655593391878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * (n + 1) * Nat.choose n 2 + n : ℤ) - 1 : ℚ) / 3)

end

end A131476.P13042377655593391878

namespace A131476

/-- `round((2*(n+1)*C(n, 2)+n-1)/3)` -/
def P13042377655593391878.Spec : Prop :=
  ∀ n, P13042377655593391878.a n = A131476 n

end A131476

/-! ## A131476.P6682022035694897412

`A393346(n)-n²`
-/

namespace A131476.P6682022035694897412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393346 n - (n ^ 2 : ℤ)

end

end A131476.P6682022035694897412

namespace A131476

/-- `A393346(n)-n²` -/
def P6682022035694897412.Spec : Prop :=
  ∀ n, P6682022035694897412.a n = A131476 n

end A131476

/-! ## A131476.P16463872855374868642

`Δ[A173707(abs(1-n))]`
-/

namespace A131476.P16463872855374868642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173707 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131476.P16463872855374868642

namespace A131476

/-- `Δ[A173707(abs(1-n))]` -/
def P16463872855374868642.Spec : Prop :=
  ∀ n, P16463872855374868642.a n = A131476 n

end A131476

/-! ## A131476.P1766587502818847943

`∑[n²]-A389143(n)`
-/

namespace A131476.P1766587502818847943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A389143 n

end

end A131476.P1766587502818847943

namespace A131476

/-- `∑[n²]-A389143(n)` -/
def P1766587502818847943.Spec : Prop :=
  ∀ n, P1766587502818847943.a n = A131476 n

end A131476

/-! ## A131476.P12520433134832250538

`round((A000578(n)-1)/3)`
-/

namespace A131476.P12520433134832250538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000578 n - 1 : ℚ) / 3)

end

end A131476.P12520433134832250538

namespace A131476

/-- `round((A000578(n)-1)/3)` -/
def P12520433134832250538.Spec : Prop :=
  ∀ n, P12520433134832250538.a n = A131476 n

end A131476

/-! ## A131476.P8891559589173126343

`∑[n²-A335129(n+3)]`
-/

namespace A131476.P8891559589173126343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A335129 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131476.P8891559589173126343

namespace A131476

/-- `∑[n²-A335129(n+3)]` -/
def P8891559589173126343.Spec : Prop :=
  ∀ n, P8891559589173126343.a n = A131476 n

end A131476

/-! ## A131476.P11620727852475279792

`A000447(n)-A002901(n)`
-/

namespace A131476.P11620727852475279792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n - A002901 n

end

end A131476.P11620727852475279792

namespace A131476

/-- `A000447(n)-A002901(n)` -/
def P11620727852475279792.Spec : Prop :=
  ∀ n, P11620727852475279792.a n = A131476 n

end A131476

/-! ## A131476.P1653485882200994336

`A131477(n)-A011655(n)`
-/

namespace A131476.P1653485882200994336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131477 n - A011655 n

end

end A131476.P1653485882200994336

namespace A131476

/-- `A131477(n)-A011655(n)` -/
def P1653485882200994336.Spec : Prop :=
  ∀ n, P1653485882200994336.a n = A131476 n

end A131476

/-! ## A131476.P13460594677489338601

`A101986(n)-A398837(n)`
-/

namespace A131476.P13460594677489338601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A398837 n

end

end A131476.P13460594677489338601

namespace A131476

/-- `A101986(n)-A398837(n)` -/
def P13460594677489338601.Spec : Prop :=
  ∀ n, P13460594677489338601.a n = A131476 n

end A131476

/-! ## A131476.P9891489917908677538

`A033547(n)-A047212(n+1)`
-/

namespace A131476.P9891489917908677538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n - A047212 (n + 1)

end

end A131476.P9891489917908677538

namespace A131476

/-- `A033547(n)-A047212(n+1)` -/
def P9891489917908677538.Spec : Prop :=
  ∀ n, P9891489917908677538.a n = A131476 n

end A131476

/-! ## A131476.P8514392511515966923

`A006527(n)-A322042(n+1)`
-/

namespace A131476.P8514392511515966923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n - A322042 (n + 1)

end

end A131476.P8514392511515966923

namespace A131476

/-- `A006527(n)-A322042(n+1)` -/
def P8514392511515966923.Spec : Prop :=
  ∀ n, P8514392511515966923.a n = A131476 n

end A131476

/-! ## A131476.P8976089465385760481

`A024401(n+1)-A179297(n+1)`
-/

namespace A131476.P8976089465385760481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024401 (n + 1) - A179297 (n + 1)

end

end A131476.P8976089465385760481

namespace A131476

/-- `A024401(n+1)-A179297(n+1)` -/
def P8976089465385760481.Spec : Prop :=
  ∀ n, P8976089465385760481.a n = A131476 n

end A131476

/-! ## A131476.P12957051335898441490

`A131477(n+1)-(A000982(n+1)+A000982(n))`
-/

namespace A131476.P12957051335898441490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131477 (n + 1) - (A000982 (n + 1) + A000982 n)

end

end A131476.P12957051335898441490

namespace A131476

/-- `A131477(n+1)-(A000982(n+1)+A000982(n))` -/
def P12957051335898441490.Spec : Prop :=
  ∀ n, P12957051335898441490.a n = A131476 n

end A131476

/-! ## A131476.P14564194233409955550

`A000578(n+1)-(A393347(n)+A393346(n+1))`
-/

namespace A131476.P14564194233409955550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - (A393347 n + A393346 (n + 1))

end

end A131476.P14564194233409955550

namespace A131476

/-- `A000578(n+1)-(A393347(n)+A393346(n+1))` -/
def P14564194233409955550.Spec : Prop :=
  ∀ n, P14564194233409955550.a n = A131476 n

end A131476

/-! ## A131476.P974818173988665222

`A131477(n+1)-A181385(2*n+1)`
-/

namespace A131476.P974818173988665222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131477 (n + 1) - A181385 (2 * n + 1)

end

end A131476.P974818173988665222

namespace A131476

/-- `A131477(n+1)-A181385(2*n+1)` -/
def P974818173988665222.Spec : Prop :=
  ∀ n, P974818173988665222.a n = A131476 n

end A131476

/-!
# A131477: a(n) = ceiling(n^3/3).

The programs for A131477, the canonical program `A131477.P9245405466854777941` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131477 has offset 0).

The definition of A131477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^3/3)` (program `A131477.P9245405466854777941`, by `A131477.P9245405466854777941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131477.P9245405466854777941

`ceil(n^3/3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131477

/-- `ceil(n^3/3)` -/
def P9245405466854777941.Spec : Prop :=
  ∀ n, P9245405466854777941.a n = A131477 n

theorem P9245405466854777941.correct : P9245405466854777941.Spec := by
  intro n
  simp only [A131477]

end A131477

/-! ## A131477.P4625612692552230781

`ogf((x+3x^3+2x^4)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`
-/

namespace A131477.P4625612692552230781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 3, 2] [1, -3, 3, -2, 3, -3, 1] n

end

end A131477.P4625612692552230781

namespace A131477

/-- `ogf((x+3x^3+2x^4)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P4625612692552230781.Spec : Prop :=
  ∀ n, P4625612692552230781.a n = A131477 n

end A131477

/-! ## A131477.P15632458306726084203

`floor((Δ[C(n, 2)²]+2)/3)`
-/

namespace A131477.P15632458306726084203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 : ℚ) / 3⌋

end

end A131477.P15632458306726084203

namespace A131477

/-- `floor((Δ[C(n, 2)²]+2)/3)` -/
def P15632458306726084203.Spec : Prop :=
  ∀ n, P15632458306726084203.a n = A131477 n

end A131477

/-! ## A131477.P16210560166763081285

`∑[n²+∑[n]%3-n]`
-/

namespace A131477.P16210560166763081285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131477.P16210560166763081285

namespace A131477

/-- `∑[n²+∑[n]%3-n]` -/
def P16210560166763081285.Spec : Prop :=
  ∀ n, P16210560166763081285.a n = A131477 n

end A131477

/-! ## A131477.P3069058118375526371

`floor(n^3/3)+n²%3`
-/

namespace A131477.P3069058118375526371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℚ) / 3⌋ + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A131477.P3069058118375526371

namespace A131477

/-- `floor(n^3/3)+n²%3` -/
def P3069058118375526371.Spec : Prop :=
  ∀ n, P3069058118375526371.a n = A131477 n

end A131477

/-! ## A131477.P13849780190980919705

`∑[∑[a(n-3)+6]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A131477.P13849780190980919705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f2 =>
  f2 (n - 3) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131477.P13849780190980919705

namespace A131477

/-- `∑[∑[a(n-3)+6]]` -/
def P13849780190980919705.Spec : Prop :=
  ∀ n, (P13849780190980919705.a n : ℤ) = A131477 n

end A131477

/-! ## A131477.P6024478079891401072

`∑[∑[∑[floor(a(n-3))]]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A131477.P6024478079891401072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 3, 3] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131477.P6024478079891401072

namespace A131477

/-- `∑[∑[∑[floor(a(n-3))]]]` -/
def P6024478079891401072.Spec : Prop :=
  ∀ n, (P6024478079891401072.a n : ℤ) = A131477 n

end A131477

/-! ## A131477.P14264325514767496834

`floor(A084380(n)/3)`
-/

namespace A131477.P14264325514767496834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084380 n : ℚ) / 3⌋

end

end A131477.P14264325514767496834

namespace A131477

/-- `floor(A084380(n)/3)` -/
def P14264325514767496834.Spec : Prop :=
  ∀ n, P14264325514767496834.a n = A131477 n

end A131477

/-! ## A131477.P13070905582854988064

`A393347(n)-n²`
-/

namespace A131477.P13070905582854988064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393347 n - (n ^ 2 : ℤ)

end

end A131477.P13070905582854988064

namespace A131477

/-- `A393347(n)-n²` -/
def P13070905582854988064.Spec : Prop :=
  ∀ n, P13070905582854988064.a n = A131477 n

end A131477

/-! ## A131477.P7466259505836223897

`∑[n²]-A389142(n)`
-/

namespace A131477.P7466259505836223897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A389142 n

end

end A131477.P7466259505836223897

namespace A131477

/-- `∑[n²]-A389142(n)` -/
def P7466259505836223897.Spec : Prop :=
  ∀ n, P7466259505836223897.a n = A131477 n

end A131477

/-! ## A131477.P12093812369767125452

`round((A000578(n)+1)/3)`
-/

namespace A131477.P12093812369767125452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000578 n + 1 : ℚ) / 3)

end

end A131477.P12093812369767125452

namespace A131477

/-- `round((A000578(n)+1)/3)` -/
def P12093812369767125452.Spec : Prop :=
  ∀ n, P12093812369767125452.a n = A131477 n

end A131477

/-! ## A131477.P17869715401219388731

`A213396(n)-∑[2*n]`
-/

namespace A131477.P17869715401219388731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213396 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A131477.P17869715401219388731

namespace A131477

/-- `A213396(n)-∑[2*n]` -/
def P17869715401219388731.Spec : Prop :=
  ∀ n, P17869715401219388731.a n = A131477 n

end A131477

/-! ## A131477.P11065544111078762750

`∑[A001222(gcd(n+2, n-1))+n²-n]`
-/

namespace A131477.P11065544111078762750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)) + ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131477.P11065544111078762750

namespace A131477

/-- `∑[A001222(gcd(n+2, n-1))+n²-n]` -/
def P11065544111078762750.Spec : Prop :=
  ∀ n, P11065544111078762750.a n = A131477 n

end A131477

/-! ## A131477.P10960338415199624997

`A131476(n)+A011655(n)`
-/

namespace A131477.P10960338415199624997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131476 n + A011655 n

end

end A131477.P10960338415199624997

namespace A131477

/-- `A131476(n)+A011655(n)` -/
def P10960338415199624997.Spec : Prop :=
  ∀ n, P10960338415199624997.a n = A131477 n

end A131477

/-! ## A131477.P2772580729804155557

`A006527(n)-A004523(n)`
-/

namespace A131477.P2772580729804155557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n - A004523 n

end

end A131477.P2772580729804155557

namespace A131477

/-- `A006527(n)-A004523(n)` -/
def P2772580729804155557.Spec : Prop :=
  ∀ n, P2772580729804155557.a n = A131477 n

end A131477

/-! ## A131477.P13646534660347922467

`A069778(n)-A213397(n)`
-/

namespace A131477.P13646534660347922467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n - A213397 n

end

end A131477.P13646534660347922467

namespace A131477

/-- `A069778(n)-A213397(n)` -/
def P13646534660347922467.Spec : Prop :=
  ∀ n, P13646534660347922467.a n = A131477 n

end A131477

/-! ## A131477.P3860920782526543193

`A101986(n)-A398836(n)`
-/

namespace A131477.P3860920782526543193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A398836 n

end

end A131477.P3860920782526543193

namespace A131477

/-- `A101986(n)-A398836(n)` -/
def P3860920782526543193.Spec : Prop :=
  ∀ n, P3860920782526543193.a n = A131477 n

end A131477

/-! ## A131477.P7215285232144820629

`A033547(n)-A047220(n+1)`
-/

namespace A131477.P7215285232144820629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n - A047220 (n + 1)

end

end A131477.P7215285232144820629

namespace A131477

/-- `A033547(n)-A047220(n+1)` -/
def P7215285232144820629.Spec : Prop :=
  ∀ n, P7215285232144820629.a n = A131477 n

end A131477

/-!
# A131478: a(n) = ceiling(n^4/4).

The programs for A131478, the canonical program `A131478.P800363534634140919` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131478 has offset 0).

The definition of A131478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^4/4)` (program `A131478.P800363534634140919`, by `A131478.P800363534634140919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131478.P800363534634140919

`ceil(n^4/4)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131478

/-- `ceil(n^4/4)` -/
def P800363534634140919.Spec : Prop :=
  ∀ n, P800363534634140919.a n = A131478 n

theorem P800363534634140919.correct : P800363534634140919.Spec := by
  intro n
  simp only [A131478]

end A131478

/-! ## A131478.P413715060890851952

`ogf((x+10x^3+x^5)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A131478.P413715060890851952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 10, 0, 1] [1, -4, 5, 0, -5, 4, -1] n

end

end A131478.P413715060890851952

namespace A131478

/-- `ogf((x+10x^3+x^5)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P413715060890851952.Spec : Prop :=
  ∀ n, P413715060890851952.a n = A131478 n

end A131478

/-! ## A131478.P9819552350853451410

`round(A002523(n)/4)`
-/

namespace A131478.P9819552350853451410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002523 n : ℚ) / 4)

end

end A131478.P9819552350853451410

namespace A131478

/-- `round(A002523(n)/4)` -/
def P9819552350853451410.Spec : Prop :=
  ∀ n, P9819552350853451410.a n = A131478 n

end A131478

/-! ## A131478.P11848682671206997361

`∑[A212963(n)]+n²`
-/

namespace A131478.P11848682671206997361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A131478.P11848682671206997361

namespace A131478

/-- `∑[A212963(n)]+n²` -/
def P11848682671206997361.Spec : Prop :=
  ∀ n, P11848682671206997361.a n = A131478 n

end A131478

/-! ## A131478.P17082494779115204983

`round((A000290(n)²+1)/4)`
-/

namespace A131478.P17082494779115204983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000290 n ^ 2 + 1 : ℚ) / 4)

end

end A131478.P17082494779115204983

namespace A131478

/-- `round((A000290(n)²+1)/4)` -/
def P17082494779115204983.Spec : Prop :=
  ∀ n, P17082494779115204983.a n = A131478 n

end A131478

/-! ## A131478.P1024080908349910318

`round(ceil(A000583(n)/2)/2)`
-/

namespace A131478.P1024080908349910318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈(A000583 n : ℚ) / 2⌉ : ℚ) / 2)

end

end A131478.P1024080908349910318

namespace A131478

/-- `round(ceil(A000583(n)/2)/2)` -/
def P1024080908349910318.Spec : Prop :=
  ∀ n, P1024080908349910318.a n = A131478 n

end A131478

/-! ## A131478.P8998126711529787074

`round((2*n*A000578(n)+2)/8)`
-/

namespace A131478.P8998126711529787074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) * A000578 n + 2 : ℚ) / 8)

end

end A131478.P8998126711529787074

namespace A131478

/-- `round((2*n*A000578(n)+2)/8)` -/
def P8998126711529787074.Spec : Prop :=
  ∀ n, P8998126711529787074.a n = A131478 n

end A131478

/-! ## A131478.P3925573487778814944

`A006011(n)+A004652(n)`
-/

namespace A131478.P3925573487778814944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + A004652 n

end

end A131478.P3925573487778814944

namespace A131478

/-- `A006011(n)+A004652(n)` -/
def P3925573487778814944.Spec : Prop :=
  ∀ n, P3925573487778814944.a n = A131478 n

end A131478

/-! ## A131478.P1421272894592148316

`A131479(n)+A000035(n)`
-/

namespace A131478.P1421272894592148316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 n + A000035 n

end

end A131478.P1421272894592148316

namespace A131478

/-- `A131479(n)+A000035(n)` -/
def P1421272894592148316.Spec : Prop :=
  ∀ n, P1421272894592148316.a n = A131478 n

end A131478

/-! ## A131478.P2737058582614168076

`A006528(n)-A198442(n+1)`
-/

namespace A131478.P2737058582614168076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - A198442 (n + 1)

end

end A131478.P2737058582614168076

namespace A131478

/-- `A006528(n)-A198442(n+1)` -/
def P2737058582614168076.Spec : Prop :=
  ∀ n, P2737058582614168076.a n = A131478 n

end A131478

/-! ## A131478.P2385804253883407298

`n%2+A212689(n)+A212688(n)`
-/

namespace A131478.P2385804253883407298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A212689 n + A212688 n)

end

end A131478.P2385804253883407298

namespace A131478

/-- `n%2+A212689(n)+A212688(n)` -/
def P2385804253883407298.Spec : Prop :=
  ∀ n, P2385804253883407298.a n = A131478 n

end A131478

/-! ## A131478.P7899427926484764960

`A000982(n)+A131479(n)-A007590(n)`
-/

namespace A131478.P7899427926484764960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + (A131479 n - A007590 n)

end

end A131478.P7899427926484764960

namespace A131478

/-- `A000982(n)+A131479(n)-A007590(n)` -/
def P7899427926484764960.Spec : Prop :=
  ∀ n, P7899427926484764960.a n = A131478 n

end A131478

/-! ## A131478.P4989797813421903505

`A036486(n)+A131479(n)-A036487(n)`
-/

namespace A131478.P4989797813421903505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 n + (A131479 n - A036487 n)

end

end A131478.P4989797813421903505

namespace A131478

/-- `A036486(n)+A131479(n)-A036487(n)` -/
def P4989797813421903505.Spec : Prop :=
  ∀ n, P4989797813421903505.a n = A131478 n

end A131478

/-! ## A131478.P2228879270818274905

`A008619(n+1)+A131479(n)-A008619(n)`
-/

namespace A131478.P2228879270818274905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + (A131479 n - A008619 n)

end

end A131478.P2228879270818274905

namespace A131478

/-- `A008619(n+1)+A131479(n)-A008619(n)` -/
def P2228879270818274905.Spec : Prop :=
  ∀ n, P2228879270818274905.a n = A131478 n

end A131478

/-! ## A131478.P3693296948432625394

`A000982(n)*A099392(n+1)-A007590(n)`
-/

namespace A131478.P3693296948432625394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A099392 (n + 1) - A007590 n

end

end A131478.P3693296948432625394

namespace A131478

/-- `A000982(n)*A099392(n+1)-A007590(n)` -/
def P3693296948432625394.Spec : Prop :=
  ∀ n, P3693296948432625394.a n = A131478 n

end A131478

/-! ## A131478.P6191232133062685468

`A004526(n+1)+A131479(n)-A004526(n)`
-/

namespace A131478.P6191232133062685468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A131479 n - A004526 n)

end

end A131478.P6191232133062685468

namespace A131478

/-- `A004526(n+1)+A131479(n)-A004526(n)` -/
def P6191232133062685468.Spec : Prop :=
  ∀ n, P6191232133062685468.a n = A131478 n

end A131478

/-! ## A131478.P3759764197209483525

`A080827(n+1)+A131479(n)-A000982(n+1)`
-/

namespace A131478.P3759764197209483525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1) + (A131479 n - A000982 (n + 1))

end

end A131478.P3759764197209483525

namespace A131478

/-- `A080827(n+1)+A131479(n)-A000982(n+1)` -/
def P3759764197209483525.Spec : Prop :=
  ∀ n, P3759764197209483525.a n = A131478 n

end A131478

/-! ## A131478.P4274044625430238920

`A059403(2*n)+A000035(n)`
-/

namespace A131478.P4274044625430238920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059403 (2 * n) + A000035 n

end

end A131478.P4274044625430238920

namespace A131478

/-- `A059403(2*n)+A000035(n)` -/
def P4274044625430238920.Spec : Prop :=
  ∀ n, P4274044625430238920.a n = A131478 n

end A131478

/-! ## A131478.P3454874828791810721

`A060494(2*n)+A000035(n)`
-/

namespace A131478.P3454874828791810721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060494 (2 * n) + A000035 n

end

end A131478.P3454874828791810721

namespace A131478

/-- `A060494(2*n)+A000035(n)` -/
def P3454874828791810721.Spec : Prop :=
  ∀ n, P3454874828791810721.a n = A131478 n

end A131478

/-! ## A131478.P5567486242846630865

`A176895(2*n)-1+A212689(n)+A212688(n)`
-/

namespace A131478.P5567486242846630865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n) - 1 + (A212689 n + A212688 n)

end

end A131478.P5567486242846630865

namespace A131478

/-- `A176895(2*n)-1+A212689(n)+A212688(n)` -/
def P5567486242846630865.Spec : Prop :=
  ∀ n, P5567486242846630865.a n = A131478 n

end A131478

/-!
# A131479: a(n) = floor(n^4/4).

The programs for A131479, the canonical program `A131479.P2960064825643267612` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131479 has offset 0).

The definition of A131479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^4/4)` (program `A131479.P2960064825643267612`, by `A131479.P2960064825643267612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131479.P2960064825643267612

`floor(n^4/4)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131479

/-- `floor(n^4/4)` -/
def P2960064825643267612.Spec : Prop :=
  ∀ n, P2960064825643267612.a n = A131479 n

theorem P2960064825643267612.correct : P2960064825643267612.Spec := by
  intro n
  simp only [A131479]

end A131479

/-! ## A131479.P15355810054103580021

`ogf((4x^2+4x^3+4x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A131479.P15355810054103580021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4, 4, 4] [1, -4, 5, 0, -5, 4, -1] n

end

end A131479.P15355810054103580021

namespace A131479

/-- `ogf((4x^2+4x^3+4x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P15355810054103580021.Spec : Prop :=
  ∀ n, P15355810054103580021.a n = A131479 n

end A131479

/-! ## A131479.P14831350435010475492

`4*A011863(n)`
-/

namespace A131479.P14831350435010475492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A011863 n

end

end A131479.P14831350435010475492

namespace A131479

/-- `4*A011863(n)` -/
def P14831350435010475492.Spec : Prop :=
  ∀ n, P14831350435010475492.a n = A131479 n

end A131479

/-! ## A131479.P1062414686209922202

`A007590(n)*A000982(n)`
-/

namespace A131479.P1062414686209922202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n * A000982 n

end

end A131479.P1062414686209922202

namespace A131479

/-- `A007590(n)*A000982(n)` -/
def P1062414686209922202.Spec : Prop :=
  ∀ n, P1062414686209922202.a n = A131479 n

end A131479

/-! ## A131479.P1459823478406302430

`and(-2, n^4)/4`
-/

namespace A131479.P1459823478406302430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (n ^ 4 : ℤ) : ℚ) / 4

end

end A131479.P1459823478406302430

namespace A131479

/-- `and(-2, n^4)/4` -/
def P1459823478406302430.Spec : Prop :=
  ∀ n, P1459823478406302430.a n = (A131479 n : ℚ)

end A131479

/-! ## A131479.P7973692046405219054

`lcm(2, round(n^4/4))`
-/

namespace A131479.P7973692046405219054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((n ^ 4 : ℚ) / 4))

end

end A131479.P7973692046405219054

namespace A131479

/-- `lcm(2, round(n^4/4))` -/
def P7973692046405219054.Spec : Prop :=
  ∀ n, (P7973692046405219054.a n : ℤ) = A131479 n

end A131479

/-! ## A131479.P10403900499062697290

`round(or(1, n^4)/4)`
-/

namespace A131479.P10403900499062697290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n ^ 4) : ℚ) / 4)

end

end A131479.P10403900499062697290

namespace A131479

/-- `round(or(1, n^4)/4)` -/
def P10403900499062697290.Spec : Prop :=
  ∀ n, P10403900499062697290.a n = A131479 n

end A131479

/-! ## A131479.P9754188667324315666

`round(xor(1, n^4)/4)`
-/

namespace A131479.P9754188667324315666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n ^ 4) : ℚ) / 4)

end

end A131479.P9754188667324315666

namespace A131479

/-- `round(xor(1, n^4)/4)` -/
def P9754188667324315666.Spec : Prop :=
  ∀ n, P9754188667324315666.a n = A131479 n

end A131479

/-! ## A131479.P6329589646899694869

`round(lcm(n, n²²)/4)`
-/

namespace A131479.P6329589646899694869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm n ((n ^ 2) ^ 2) : ℚ) / 4)

end

end A131479.P6329589646899694869

namespace A131479

/-- `round(lcm(n, n²²)/4)` -/
def P6329589646899694869.Spec : Prop :=
  ∀ n, P6329589646899694869.a n = A131479 n

end A131479

/-! ## A131479.P6283882443266535135

`(n^4-n%2)/4`
-/

namespace A131479.P6283882443266535135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) / 4

end

end A131479.P6283882443266535135

namespace A131479

/-- `(n^4-n%2)/4` -/
def P6283882443266535135.Spec : Prop :=
  ∀ n, P6283882443266535135.a n = (A131479 n : ℚ)

end A131479

/-! ## A131479.P10318387343803307725

`round(gcd(n, 2*n)^4/4)`
-/

namespace A131479.P10318387343803307725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd n (2 * n) ^ 4 : ℚ) / 4)

end

end A131479.P10318387343803307725

namespace A131479

/-- `round(gcd(n, 2*n)^4/4)` -/
def P10318387343803307725.Spec : Prop :=
  ∀ n, P10318387343803307725.a n = A131479 n

end A131479

/-! ## A131479.P886312444495390839

`2*A212714(n)`
-/

namespace A131479.P886312444495390839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212714 n

end

end A131479.P886312444495390839

namespace A131479

/-- `2*A212714(n)` -/
def P886312444495390839.Spec : Prop :=
  ∀ n, P886312444495390839.a n = A131479 n

end A131479

/-! ## A131479.P8338310160125280385

`∑[2*A212683(n)]`
-/

namespace A131479.P8338310160125280385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131479.P8338310160125280385

namespace A131479

/-- `∑[2*A212683(n)]` -/
def P8338310160125280385.Spec : Prop :=
  ∀ n, P8338310160125280385.a n = A131479 n

end A131479

/-! ## A131479.P9545622140699754681

`(A274323(n)-1)/2`
-/

namespace A131479.P9545622140699754681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274323 n - 1 : ℚ) / 2

end

end A131479.P9545622140699754681

namespace A131479

/-- `(A274323(n)-1)/2` -/
def P9545622140699754681.Spec : Prop :=
  ∀ n, P9545622140699754681.a n = (A131479 n : ℚ)

end A131479

/-! ## A131479.P13387632276470624723

`A131478(n)-and(1, n)`
-/

namespace A131479.P13387632276470624723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131478 n - (Nat.land 1 n : ℤ)

end

end A131479.P13387632276470624723

namespace A131479

/-- `A131478(n)-and(1, n)` -/
def P13387632276470624723.Spec : Prop :=
  ∀ n, P13387632276470624723.a n = A131479 n

end A131479

/-! ## A131479.P11890731733651174750

`round((A000290(n)/2)²)`
-/

namespace A131479.P11890731733651174750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000290 n : ℚ) / 2) ^ 2)

end

end A131479.P11890731733651174750

namespace A131479

/-- `round((A000290(n)/2)²)` -/
def P11890731733651174750.Spec : Prop :=
  ∀ n, P11890731733651174750.a n = A131479 n

end A131479

/-! ## A131479.P15005690603448261221

`round((A253909(n)/2)²)`
-/

namespace A131479.P15005690603448261221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A253909 n : ℚ) / 2) ^ 2)

end

end A131479.P15005690603448261221

namespace A131479

/-- `round((A253909(n)/2)²)` -/
def P15005690603448261221.Spec : Prop :=
  ∀ n, P15005690603448261221.a n = A131479 n

end A131479

/-! ## A131479.P11519844376413010954

`floor(A000583(n)/2)/2`
-/

namespace A131479.P11519844376413010954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A000583 n : ℚ) / 2⌋ : ℚ) / 2

end

end A131479.P11519844376413010954

namespace A131479

/-- `floor(A000583(n)/2)/2` -/
def P11519844376413010954.Spec : Prop :=
  ∀ n, P11519844376413010954.a n = (A131479 n : ℚ)

end A131479

/-! ## A131479.P8109920712123687039

`round((A001489(n)²/2)²)`
-/

namespace A131479.P8109920712123687039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A001489 n ^ 2 : ℚ) / 2) ^ 2)

end

end A131479.P8109920712123687039

namespace A131479

/-- `round((A001489(n)²/2)²)` -/
def P8109920712123687039.Spec : Prop :=
  ∀ n, P8109920712123687039.a n = A131479 n

end A131479

/-! ## A131479.P17483693410465757793

`round((A028310(n)²/2)²)`
-/

namespace A131479.P17483693410465757793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A028310 n ^ 2 : ℚ) / 2) ^ 2)

end

end A131479.P17483693410465757793

namespace A131479

/-- `round((A028310(n)²/2)²)` -/
def P17483693410465757793.Spec : Prop :=
  ∀ n, P17483693410465757793.a n = A131479 n

end A131479

/-!
# A131480: Minimal set of prime-strings in Roman numerals.

The programs for A131480, there is no canonical definition to state claims against.
-/

/-! ## A131480.P167722770272152672

`p?[A092306(2*(n+2))-n]`
-/

namespace A131480.P167722770272152672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092306 (2 * (n + 2)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131480.P167722770272152672

/-! ## A131480.P3360219876579695603

`record[A369690(A046031(2*(n+2)))]`
-/

namespace A131480.P3360219876579695603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369690 (A046031 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131480.P3360219876579695603

/-!
# A131481: a(n) is the number of n-cell polyiamonds (triangular polyominoes) with perimeter n+2.

The programs for A131481, there is no canonical definition to state claims against.
-/

/-! ## A131481.P701717645135290341

`A000577(n+1)-A137191(n+1)`
-/

namespace A131481.P701717645135290341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A137191 (n + 1)

end

end A131481.P701717645135290341

/-! ## A131481.P16771763378587608430

`A119532(n+1)-Δ[A173271(n)]-A137191(n+1)`
-/

namespace A131481.P16771763378587608430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119532 (n + 1) - (f1 (n + 1) - f1 n) - A137191 (n + 1)

end

end A131481.P16771763378587608430

/-! ## A131481.P1625341384689925883

`A006534(n+1)-(A137191(n+1)+A030224(n+1))`
-/

namespace A131481.P1625341384689925883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006534 (n + 1) - (A137191 (n + 1) + A030224 (n + 1))

end

end A131481.P1625341384689925883

/-! ## A131481.P5366846354989606038

`A030223(n+1)+A030224(n+1)-A137191(n+1)`
-/

namespace A131481.P5366846354989606038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030223 (n + 1) + (A030224 (n + 1) - A137191 (n + 1))

end

end A131481.P5366846354989606038

/-! ## A131481.P15363259802605130940

`A070764(n+1)+A070765(n+1)-A137191(n+1)`
-/

namespace A131481.P15363259802605130940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070764 (n + 1) + (A070765 (n + 1) - A137191 (n + 1))

end

end A131481.P15363259802605130940

/-!
# A131482: a(n) is the number of free n-celled tree-shaped polyominoes.

The programs for A131482, there is no canonical definition to state claims against.
-/

/-! ## A131482.P934865729555173435

`A342243(∑[n+1])`
-/

namespace A131482.P934865729555173435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131482.P934865729555173435

/-! ## A131482.P3854973603136583809

`A359522(n+1)+A350030(n+1)`
-/

namespace A131482.P3854973603136583809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359522 (n + 1) + A350030 (n + 1)

end

end A131482.P3854973603136583809

/-! ## A131482.P3835910694844402990

`A342243(A000217(n+1))+A326680(n)`
-/

namespace A131482.P3835910694844402990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (A000217 (n + 1)).toNat + A326680 n

end

end A131482.P3835910694844402990

/-! ## A131482.P7446624764118529482

`A342243(A025747(n))+A318715(n+4)`
-/

namespace A131482.P7446624764118529482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (A025747 n).toNat + A318715 (n + 4)

end

end A131482.P7446624764118529482

/-! ## A131482.P7582830369872931629

`A342243(A025747(n))%A073976(n+2)`
-/

namespace A131482.P7582830369872931629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342243 (A025747 n).toNat) (A073976 (n + 2))

end

end A131482.P7582830369872931629

/-!
# A131486: a(n) is the number of triangular polyominoes (polyiamonds) with n edges.

The programs for A131486, there is no canonical definition to state claims against.
-/

/-! ## A131486.P16072630489792486927

`A280593(n+1)%A000010(A077168(n))`
-/

namespace A131486.P16072630489792486927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280593 (n + 1)) (A000010 (A077168 n).toNat)

end

end A131486.P16072630489792486927

/-! ## A131486.P14438078718380344217

`A322511(n+1)%A000010(A077168(n))`
-/

namespace A131486.P14438078718380344217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322511 (n + 1)) (A000010 (A077168 n).toNat)

end

end A131486.P14438078718380344217

/-! ## A131486.P13153893068307032867

`∑[A243794(n+1)]%A000265(n+1)`
-/

namespace A131486.P13153893068307032867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000265 (n + 1))

end

end A131486.P13153893068307032867

/-! ## A131486.P3770358609005172130

`A206659(A018636(n+1))%A007733(n+1)`
-/

namespace A131486.P3770358609005172130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206659 (A018636 (n + 1)).toNat) (A007733 (n + 1))

end

end A131486.P3770358609005172130

/-! ## A131486.P9235386499042226369

`A151511(round((3/2)^(n+1)/2))%(floor(47*n/62)+1)`
-/

namespace A131486.P9235386499042226369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151511 (SequenceMachineLib.roundAway (((3 : ℚ) / 2) ^ (n + 1) / 2)).toNat) (⌊47 * ((n : ℚ) / 62)⌋ + 1)

end

end A131486.P9235386499042226369

/-!
# A131487: a(n) is the number of polyominoes with n edges, including inner edges.

The programs for A131487, there is no canonical definition to state claims against.
-/

/-! ## A131487.P2331333091124538865

`A227612(record[A081256(n+1)])%A034709(n+1)`
-/

namespace A131487.P2331333091124538865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A034709 (n + 1))

end

end A131487.P2331333091124538865

/-! ## A131487.P6124442832649380284

`A329312(A073576(n))-1`
-/

namespace A131487.P6124442832649380284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (A073576 n).toNat - 1

end

end A131487.P6124442832649380284

/-! ## A131487.P14765564991450602323

`val(A063569(A005195(n)), 2)`
-/

namespace A131487.P14765564991450602323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063569 (A005195 n).toNat).toNat 2

end

end A131487.P14765564991450602323

/-! ## A131487.P14682481150126819717

`val(A203814(A191307(n)), 3)`
-/

namespace A131487.P14682481150126819717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A203814 (A191307 n).toNat).toNat 3

end

end A131487.P14682481150126819717

/-! ## A131487.P3097625813702021240

`A173636(C(n, A025855(n)))`
-/

namespace A131487.P3097625813702021240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (Nat.choose n (A025855 n).toNat)

end

end A131487.P3097625813702021240

/-!
# A131490: Appears in Taylor series of powers of generalized Bessel functions.

The programs for A131490, there is no canonical definition to state claims against.
-/

/-! ## A131490.P3114983160793059402

`(n+1)/2*A188664(n+1)`
-/

namespace A131490.P3114983160793059402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A188664 (n + 1) : ℚ)

end

end A131490.P3114983160793059402

/-!
# A131491: a(n) = 2*prime(n)!.

The programs for A131491, the canonical program `A131491.P12926752906833834681` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131491 has offset 1).

The definition of A131491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+1)!` (program `A131491.P12926752906833834681`, by `A131491.P12926752906833834681.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131491.P5769807396979650766

`2*A039716(n+1)`
-/

namespace A131491.P5769807396979650766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039716 (n + 1)

end

end A131491.P5769807396979650766

namespace A131491

/-- `2*A039716(n+1)` -/
def P5769807396979650766.Spec : Prop :=
  ∀ n, P5769807396979650766.a n = A131491 (n + 1)

theorem P5769807396979650766.correct : P5769807396979650766.Spec := by
  intro n
  simp only [A131491, Nat.add_sub_cancel, A131491.P5769807396979650766.a, A131491.P12926752906833834681.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039716, A039716.P11033590145453247559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131491

/-! ## A131491.P12926752906833834681

`2*A000040(n+1)!`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131491

/-- `2*A000040(n+1)!` -/
def P12926752906833834681.Spec : Prop :=
  ∀ n, (P12926752906833834681.a n : ℤ) = A131491 (n + 1)

theorem P12926752906833834681.correct : P12926752906833834681.Spec := by
  intro n
  simp only [A131491, Nat.add_sub_cancel]

end A131491

/-! ## A131491.P2357744468615170579

`2*p?[comp[n²]]!`
-/

namespace A131491.P2357744468615170579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A131491.P2357744468615170579

namespace A131491

/-- `2*p?[comp[n²]]!` -/
def P2357744468615170579.Spec : Prop :=
  ∀ n, (P2357744468615170579.a n : ℤ) = A131491 (n + 1)

end A131491

/-! ## A131491.P73836701769604507

`2*eq[1, ∑{e}[n, #]]!`
-/

namespace A131491.P73836701769604507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131491.P73836701769604507

namespace A131491

/-- `2*eq[1, ∑{e}[n, #]]!` -/
def P73836701769604507.Spec : Prop :=
  ∀ n, (P73836701769604507.a n : ℤ) = A131491 (n + 1)

end A131491

/-! ## A131491.P734558821387573766

`record[2*∑{p}[n+2, #!]]`
-/

namespace A131491.P734558821387573766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131491.P734558821387573766

namespace A131491

/-- `record[2*∑{p}[n+2, #!]]` -/
def P734558821387573766.Spec : Prop :=
  ∀ n, (P734558821387573766.a n : ℤ) = A131491 (n + 1)

end A131491

/-!
# A131495: Values of n such that n^n starts with the digits of n.

The programs for A131495, there is no canonical definition to state claims against.
-/

/-! ## A131495.P12296838655666601926

`A127933(A279827(n))+A026781(n)`
-/

namespace A131495.P12296838655666601926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127933 (A279827 n).toNat + A026781 n

end

end A131495.P12296838655666601926

/-!
# A131497: Values of k such that k^e starts with the digits of k.

The programs for A131497, there is no canonical definition to state claims against.
-/

/-! ## A131497.P17189075661949026523

`A125145(n)-A173655(A088647(n))`
-/

namespace A131497.P17189075661949026523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 n - A173655 (A088647 n).toNat

end

end A131497.P17189075661949026523

/-! ## A131497.P4229970752964234394

`A229301(3*a(n-1))+n` with `a(0)=1`
-/

namespace A131497.P4229970752964234394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229301 (3 * a (n - 1)).toNat + (n : ℤ)

end

end A131497.P4229970752964234394

/-!
# A131498: For D_2 type groups as polyhedra: {F,V,E,dimension}->{n+2,2*n,3*n,2*n*(2*n-1)/2} such that Euler's equation is true: V=E-F+2.

The programs for A131498, the canonical program `A131498.P5409696794518560941` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131498 has offset 1).

The definition of A131498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131498.P5409696794518560941

`ogf((3+2x+3x^2+x^3-5x^4-2x^5-3x^6+3x^7+2x^8)/(1-3x^4+3x^8-x^12))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A131498

/-- `ogf((3+2x+3x^2+x^3-5x^4-2x^5-3x^6+3x^7+2x^8)/(1-3x^4+3x^8-x^12))` -/
def P5409696794518560941.Spec : Prop :=
  ∀ n, P5409696794518560941.a n = A131498 (n + 1)

theorem P5409696794518560941.correct : P5409696794518560941.Spec := by
  intro n
  simp only [A131498, Nat.add_sub_cancel]

end A131498

/-!
# A131499: Primes p such that nextprime(p)=p+4 and previousprime(p)<p-4.

The programs for A131499, the canonical program `A131499.P15973366500604930490` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131499 has offset 1).

The definition of A131499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131499.P9391575116193621754

`p?[A007510(n+1)+4]-4`
-/

namespace A131499.P9391575116193621754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A131499.P9391575116193621754

namespace A131499

/-- `p?[A007510(n+1)+4]-4` -/
def P9391575116193621754.Spec : Prop :=
  ∀ n, P9391575116193621754.a n = A131499 (n + 1)

end A131499

/-! ## A131499.P15973366500604930490

`p?[A136799(n+1)+5]-4`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131499

/-- `p?[A136799(n+1)+5]-4` -/
def P15973366500604930490.Spec : Prop :=
  ∀ n, P15973366500604930490.a n = A131499 (n + 1)

theorem P15973366500604930490.correct : P15973366500604930490.Spec := by
  intro n
  simp only [A131499, Nat.add_sub_cancel]

end A131499

/-! ## A131499.P14221844602088578044

`∩[A007510(n+1), A015913(n+1)]`
-/

namespace A131499.P14221844602088578044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P14221844602088578044

namespace A131499

/-- `∩[A007510(n+1), A015913(n+1)]` -/
def P14221844602088578044.Spec : Prop :=
  ∀ n, (P14221844602088578044.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P3321980337450365061

`∩[A007510(n+1), A029710(n+1)]`
-/

namespace A131499.P3321980337450365061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P3321980337450365061

namespace A131499

/-- `∩[A007510(n+1), A029710(n+1)]` -/
def P3321980337450365061.Spec : Prop :=
  ∀ n, (P3321980337450365061.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P5414096387363352084

`∩[A025584(n+1), A029710(n+1)]`
-/

namespace A131499.P5414096387363352084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P5414096387363352084

namespace A131499

/-- `∩[A025584(n+1), A029710(n+1)]` -/
def P5414096387363352084.Spec : Prop :=
  ∀ n, (P5414096387363352084.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P16308438457909067272

`∩[A015913(n+1), A046869(n+1)]`
-/

namespace A131499.P16308438457909067272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P16308438457909067272

namespace A131499

/-- `∩[A015913(n+1), A046869(n+1)]` -/
def P16308438457909067272.Spec : Prop :=
  ∀ n, (P16308438457909067272.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P1994867340144007717

`∩[A007510(n+1), A056772(n+1)]`
-/

namespace A131499.P1994867340144007717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P1994867340144007717

namespace A131499

/-- `∩[A007510(n+1), A056772(n+1)]` -/
def P1994867340144007717.Spec : Prop :=
  ∀ n, (P1994867340144007717.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P15767726538739274414

`∩[A015913(n+1), A051634(n+1)]`
-/

namespace A131499.P15767726538739274414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P15767726538739274414

namespace A131499

/-- `∩[A015913(n+1), A051634(n+1)]` -/
def P15767726538739274414.Spec : Prop :=
  ∀ n, (P15767726538739274414.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P17242457802764631334

`∩[A029710(n+1), A046869(n+1)]`
-/

namespace A131499.P17242457802764631334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P17242457802764631334

namespace A131499

/-- `∩[A029710(n+1), A046869(n+1)]` -/
def P17242457802764631334.Spec : Prop :=
  ∀ n, (P17242457802764631334.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P10686047435542496547

`∩[A029710(n+1), A051634(n+1)]`
-/

namespace A131499.P10686047435542496547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P10686047435542496547

namespace A131499

/-- `∩[A029710(n+1), A051634(n+1)]` -/
def P10686047435542496547.Spec : Prop :=
  ∀ n, (P10686047435542496547.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P7019291835027910382

`∩[A046869(n+1), A056772(n+1)]`
-/

namespace A131499.P7019291835027910382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P7019291835027910382

namespace A131499

/-- `∩[A046869(n+1), A056772(n+1)]` -/
def P7019291835027910382.Spec : Prop :=
  ∀ n, (P7019291835027910382.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P4291625696390813548

`∩[A051634(n+1), A056772(n+1)]`
-/

namespace A131499.P4291625696390813548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P4291625696390813548

namespace A131499

/-- `∩[A051634(n+1), A056772(n+1)]` -/
def P4291625696390813548.Spec : Prop :=
  ∀ n, (P4291625696390813548.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P7872045300268227031

`∩[A015913(n+1), A121764(n+1)]`
-/

namespace A131499.P7872045300268227031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P7872045300268227031

namespace A131499

/-- `∩[A015913(n+1), A121764(n+1)]` -/
def P7872045300268227031.Spec : Prop :=
  ∀ n, (P7872045300268227031.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P11107627143123548803

`∩[A015913(n+1), A134100(n+1)]`
-/

namespace A131499.P11107627143123548803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P11107627143123548803

namespace A131499

/-- `∩[A015913(n+1), A134100(n+1)]` -/
def P11107627143123548803.Spec : Prop :=
  ∀ n, (P11107627143123548803.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P13370854757104277406

`∩[A015913(n+1), A134797(n+1)]`
-/

namespace A131499.P13370854757104277406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P13370854757104277406

namespace A131499

/-- `∩[A015913(n+1), A134797(n+1)]` -/
def P13370854757104277406.Spec : Prop :=
  ∀ n, (P13370854757104277406.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P16949115998362343009

`∩[A029710(n+1), A121764(n+1)]`
-/

namespace A131499.P16949115998362343009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P16949115998362343009

namespace A131499

/-- `∩[A029710(n+1), A121764(n+1)]` -/
def P16949115998362343009.Spec : Prop :=
  ∀ n, (P16949115998362343009.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P12716592315595064987

`∩[A029710(n+1), A134100(n+1)]`
-/

namespace A131499.P12716592315595064987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P12716592315595064987

namespace A131499

/-- `∩[A029710(n+1), A134100(n+1)]` -/
def P12716592315595064987.Spec : Prop :=
  ∀ n, (P12716592315595064987.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P5901041813479711076

`∩[A029710(n+1), A134797(n+1)]`
-/

namespace A131499.P5901041813479711076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P5901041813479711076

namespace A131499

/-- `∩[A029710(n+1), A134797(n+1)]` -/
def P5901041813479711076.Spec : Prop :=
  ∀ n, (P5901041813479711076.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P5185810723312452499

`∩[A056772(n+1), A121764(n+1)]`
-/

namespace A131499.P5185810723312452499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P5185810723312452499

namespace A131499

/-- `∩[A056772(n+1), A121764(n+1)]` -/
def P5185810723312452499.Spec : Prop :=
  ∀ n, (P5185810723312452499.a n : ℤ) = A131499 (n + 1)

end A131499

/-! ## A131499.P1178696998000189986

`∩[A015913(n+1), A167706(n+1)]`
-/

namespace A131499.P1178696998000189986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131499.P1178696998000189986

namespace A131499

/-- `∩[A015913(n+1), A167706(n+1)]` -/
def P1178696998000189986.Spec : Prop :=
  ∀ n, (P1178696998000189986.a n : ℤ) = A131499 (n + 1)

end A131499

